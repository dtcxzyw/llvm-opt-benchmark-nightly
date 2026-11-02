Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.00?download=true
inline.NumInlined: 4785
inline.NumDeleted: 936
loop-unroll.NumRuntimeUnrolled: 745
loop-unroll.NumUnrolled: 745
begin_hunk_0_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2558: ; preds = %.noexc2563
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.0.copyload.i.i2544), "nonnull"(ptr %.sroa.3.0.copyload.i.i2546), "nonnull"(ptr %.sroa.716.0.copyload.i.i2550) ], !noalias !10093
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2559

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2559: ; preds = %bb.dn, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2558
  %.sroa.05.031.i.i2560 = phi i64 [ %i.acr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2558 ], [ %i.adp, %bb.dn ] ; 2 uses
  %.sroa.9.030.i.i2561 = phi i64 [ %.sroa.10.0.copyload.i.i2554, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2558 ], [ %i.adc, %bb.dn ]
  %i.adc = add i64 %.sroa.9.030.i.i2561, -1       ; 4 uses
  %i.add = add i64 %i.adc, %.sroa.514.0.copyload.i.i2548 ; 2 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.sroa.013.0.copyload.i.i2544, i64 %i.add ; 3 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.716.0.copyload.i.i2550, i64 %i.adc ; 2 uses
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload.i.i2546, i64 %i.add
  %i.adh = load i64, ptr %i.ade, align 8, !noalias !10099, !noundef !5 ; 2 uses
  %i.adi = add i64 %i.adh, 1                      ; 2 uses
  %i.adj = load i64, ptr %i.adg, align 8, !noalias !10099, !noundef !5
  %i.adk = icmp ult i64 %i.adi, %i.adj
  br i1 %i.adk, label %bb.do, label %bb.dn

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2555: ; preds = %bb.dn, %.noexc2563
  %i.adl = load i64, ptr %i.acq, align 8, !alias.scope !10100, !noalias !10093, !noundef !5
  %i.adm = add i64 %i.adl, -1
  store i64 %i.adm, ptr %i.acq, align 8, !alias.scope !10100, !noalias !10093
  br label %bb.dp

bb.dn:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2559
  %i.adn = load i64, ptr %i.adf, align 8, !noalias !10099, !noundef !5
  %i.ado = mul i64 %i.adn, %i.adh
  %i.adp = sub i64 %.sroa.05.031.i.i2560, %i.ado
  store i64 0, ptr %i.ade, align 8, !noalias !10099
  %i.adq = icmp ult i64 %.sroa.918.0.copyload.i.i2552, %i.adc
  br i1 %i.adq, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2559, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2555

bb.do:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2559
  store i64 %i.adi, ptr %i.ade, align 8, !noalias !10099
  %i.adr = load i64, ptr %i.adf, align 8, !noalias !10099, !noundef !5
  %i.ads = load i64, ptr %i.acq, align 8, !alias.scope !10100, !noalias !10093, !noundef !5
  %i.adt = add i64 %i.ads, -1
  store i64 %i.adt, ptr %i.acq, align 8, !alias.scope !10100, !noalias !10093
  %i.adu = add i64 %i.adr, %.sroa.05.031.i.i2560
  br label %bb.dp

.loopexit.split-lp8912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc2562, %bb.dm, %.invoke15878, %bb.dt
  %lpad.loopexit.split-lp17908 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.gx) #20
          to label %bb.dj unwind label %bb.ea, !noalias !10093

bb.dp:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2555, %bb.do
  %.sroa.6.0.i.i2556 = phi i64 [ %i.adu, %bb.do ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2555 ]
  %.sroa.08.0.i.i2557 = phi i64 [ 1, %bb.do ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2555 ]
  store i64 %.sroa.08.0.i.i2557, ptr %i.gx, align 8, !alias.scope !10100, !noalias !10093
  store i64 %.sroa.6.0.i.i2556, ptr %i.acg, align 8, !alias.scope !10100, !noalias !10093
  %i.adv = load i64, ptr %.sroa.233.0..sroa_idx.i188.i1391, align 8, !alias.scope !10097, !noalias !10093, !noundef !5 ; 4 uses
  %i.adw = add i64 %i.adv, 1
  store i64 %i.adw, ptr %.sroa.233.0..sroa_idx.i188.i1391, align 8, !alias.scope !10097, !noalias !10093
  %i.adx = icmp ugt i64 %i.acr, %i.om
  br i1 %i.adx, label %bb.dt, label %bb.ds, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2564: ; preds = %bb.dy, %bb.dl
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.gx)
          to label %bb.dq unwind label %bb.dk, !noalias !10093

bb.dq:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !noalias !10094
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ha)
          to label %bb.dr unwind label %bb.dd, !noalias !10093

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !10094
  br label %.loopexit8909

bb.ds:                                            ; preds = %bb.dp
  %i.ady = sub nuw nsw i64 %i.om, %i.acr          ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.acr ; 2 uses
  %.not84.i189.i1392 = icmp eq i64 %i.om, %i.acr
  br i1 %.not84.i189.i1392, label %.invoke15878, label %bb.du

bb.dt:                                            ; preds = %bb.dp
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.acr, i64 noundef range(i64 0, -9223372036854775808) %i.om, i64 noundef range(i64 0, -9223372036854775808) %i.om, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.dv unwind label %.loopexit.split-lp8912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10093

bb.du:                                            ; preds = %bb.ds
  %i.aea = load i8, ptr %i.adz, align 1, !alias.scope !10102, !noundef !5
  br label %bb.dw

bb.dv:                                            ; preds = %.split11126.us, %bb.dt
  unreachable

bb.dw:                                            ; preds = %bb.du, %bb.dz
  %.sroa.055.0.i192.i139511119 = phi i64 [ 0, %bb.du ], [ %i.aem, %bb.dz ] ; 3 uses
  %.sroa.035.0.i191.i139411118 = phi i8 [ %i.aea, %bb.du ], [ %spec.select95.i194.i1397, %bb.dz ] ; 2 uses
  %.sroa.034.0.i190.i139311117 = phi i64 [ 0, %bb.du ], [ %spec.select.i193.i1396, %bb.dz ]
  %i.aeb = mul i64 %.sroa.055.0.i192.i139511119, %i.abh ; 3 uses
  %i.aec = icmp ult i64 %i.aeb, %i.ady
  br i1 %i.aec, label %bb.dz, label %.invoke15878

bb.dx:                                            ; preds = %bb.dz
  %i.aed = icmp ult i64 %i.adv, %i.abo
  br i1 %i.aed, label %bb.dy, label %.invoke15878

bb.dy:                                            ; preds = %bb.dx
  %i.aee = trunc i64 %spec.select.i193.i1396 to i32
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %i.adv
  store i32 %i.aee, ptr %i.aef, align 4, !noalias !10093
  %i.aeg = load i64, ptr %i.gx, align 8, !range !8, !alias.scope !10103, !noalias !10093, !noundef !5
  %i.aeh = load i64, ptr %i.acg, align 8, !alias.scope !10103, !noalias !10093
  %i.aei = trunc nuw i64 %i.aeg to i1
  br i1 %i.aei, label %bb.dm, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2564

.invoke15878:                                     ; preds = %bb.dx, %bb.ds, %bb.dw
  %i.aej = phi i64 [ %i.aeb, %bb.dw ], [ 0, %bb.ds ], [ %i.adv, %bb.dx ]
  %i.aek = phi i64 [ %i.ady, %bb.dw ], [ 0, %bb.ds ], [ %i.abo, %bb.dx ]
  %i.ael = phi ptr [ @6, %bb.dw ], [ @4, %bb.ds ], [ @5, %bb.dx ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aej, i64 noundef %i.aek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ael) #22
          to label %.cont15879 unwind label %.loopexit.split-lp8912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10093

.cont15879:                                       ; preds = %.invoke15878
  unreachable

bb.dz:                                            ; preds = %bb.dw
  %i.aem = add nuw i64 %.sroa.055.0.i192.i139511119, 1 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.aeb
  %i.aeo = load i8, ptr %i.aen, align 1, !alias.scope !10102, !noundef !5 ; 2 uses
  %i.aep = icmp ult i8 %.sroa.035.0.i191.i139411118, %i.aeo
  %spec.select.i193.i1396 = select i1 %i.aep, i64 %.sroa.055.0.i192.i139511119, i64 %.sroa.034.0.i190.i139311117 ; 2 uses
  %spec.select95.i194.i1397 = call i8 @llvm.umax.i8(i8 %.sroa.035.0.i191.i139411118, i8 %i.aeo)
  %exitcond12925.not = icmp eq i64 %i.aem, %i.aba
  br i1 %exitcond12925.not, label %bb.dx, label %bb.dw

bb.ea:                                            ; preds = %.loopexit.split-lp8912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dj, %bb.dc
  %i.aeq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10095
  unreachable

bb.eb:                                            ; preds = %bb.df
  %i.aer = sub nuw i64 %i.acb, %i.abz             ; 7 uses
  %.not86.i195.i1398 = icmp ugt i64 %i.acb, %i.om
  br i1 %.not86.i195.i1398, label %.invoke15876, label %bb.ec, !prof !10

bb.ec:                                            ; preds = %bb.eb
  %i.aes = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.abz ; 2 uses
  %.idx11255 = shl nuw nsw i64 %i.abo, 2
  %i.aet = getelementptr inbounds nuw i8, ptr %i.abr, i64 %.idx11255 ; 3 uses
  switch i64 %i.abh, label %.split11124 [
    i64 1, label %bb.ed
    i64 0, label %.split11124.us
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.aeu = icmp eq i64 %i.abo, 0
  br i1 %i.aeu, label %.loopexit8909, label %.lr.ph11135.preheader

.lr.ph11135.preheader:                            ; preds = %bb.ed
  %xtraiter19534 = and i64 %i.aba, 3              ; 3 uses
  %i.aev = icmp ult i64 %i.aba, 4
  %unroll_iter19539 = and i64 %i.aba, -4
  %lcmp.mod19536.not = icmp eq i64 %xtraiter19534, 0
  %lcmp.mod19538 = icmp ne i64 %xtraiter19534, 0
  br label %.lr.ph11135

.split11124.us:                                   ; preds = %bb.ec
  %i.aew = icmp eq i64 %i.abo, 0
  br i1 %i.aew, label %.loopexit8909, label %.split11126.us

.lr.ph11135:                                      ; preds = %.lr.ph11135.preheader, %.thread7075
  %.sroa.75746.011134 = phi i64 [ %i.aey, %.thread7075 ], [ 0, %.lr.ph11135.preheader ] ; 2 uses
  %.sroa.05744.011133 = phi ptr [ %i.aex, %.thread7075 ], [ %i.abr, %.lr.ph11135.preheader ] ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.05744.011133, i64 4 ; 2 uses
  %i.aey = add nuw nsw i64 %.sroa.75746.011134, 1
  %i.aez = mul i64 %.sroa.75746.011134, %i.aba    ; 4 uses
  %i.afa = add i64 %i.aez, %i.aba                 ; 3 uses
  %i.afb = icmp ult i64 %i.afa, %i.aez
  %.not91.i209.i1412 = icmp ugt i64 %i.afa, %i.aer
  %or.cond.i210.i1413 = select i1 %i.afb, i1 true, i1 %.not91.i209.i1412, !prof !7
  br i1 %or.cond.i210.i1413, label %.invoke15876, label %.lr.ph11131.preheader, !prof !7

.lr.ph11131.preheader:                            ; preds = %.lr.ph11135
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.aez ; 3 uses
  %i.afd = load i8, ptr %i.afc, align 1, !alias.scope !10102, !noundef !5 ; 2 uses
  br i1 %i.aev, label %.lr.ph11131.epil.preheader, label %.lr.ph11131

.thread7075.unr-lcssa:                            ; preds = %.lr.ph11131
  br i1 %lcmp.mod19536.not, label %.thread7075, label %.lr.ph11131.epil.preheader

.lr.ph11131.epil.preheader:                       ; preds = %.thread7075.unr-lcssa, %.lr.ph11131.preheader
  %.sroa.04.0.i214.i141711130.epil.init = phi i32 [ 0, %.lr.ph11131.preheader ], [ %spec.select97.i217.i1420.3, %.thread7075.unr-lcssa ]
  %.sroa.05.0.i213.i141611129.epil.init = phi i8 [ %i.afd, %.lr.ph11131.preheader ], [ %spec.select96.i216.i1419.3, %.thread7075.unr-lcssa ]
  %.sroa.75749.011128.epil.init = phi i32 [ 0, %.lr.ph11131.preheader ], [ %i.afv, %.thread7075.unr-lcssa ]
  %.sroa.05747.011127.epil.init = phi ptr [ %i.afc, %.lr.ph11131.preheader ], [ %i.afw, %.thread7075.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19538)
  br label %.lr.ph11131.epil

.lr.ph11131.epil:                                 ; preds = %.lr.ph11131.epil, %.lr.ph11131.epil.preheader
  %.sroa.04.0.i214.i141711130.epil = phi i32 [ %spec.select97.i217.i1420.epil, %.lr.ph11131.epil ], [ %.sroa.04.0.i214.i141711130.epil.init, %.lr.ph11131.epil.preheader ]
  %.sroa.05.0.i213.i141611129.epil = phi i8 [ %spec.select96.i216.i1419.epil, %.lr.ph11131.epil ], [ %.sroa.05.0.i213.i141611129.epil.init, %.lr.ph11131.epil.preheader ] ; 2 uses
  %.sroa.75749.011128.epil = phi i32 [ %i.afe, %.lr.ph11131.epil ], [ %.sroa.75749.011128.epil.init, %.lr.ph11131.epil.preheader ] ; 2 uses
  %.sroa.05747.011127.epil = phi ptr [ %i.aff, %.lr.ph11131.epil ], [ %.sroa.05747.011127.epil.init, %.lr.ph11131.epil.preheader ] ; 2 uses
  %epil.iter19535 = phi i64 [ %epil.iter19535.next, %.lr.ph11131.epil ], [ 0, %.lr.ph11131.epil.preheader ]
  %i.afe = add nuw nsw i32 %.sroa.75749.011128.epil, 1
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.05747.011127.epil, i64 1
  %i.afg = load i8, ptr %.sroa.05747.011127.epil, align 1, !noalias !10095, !noundef !5 ; 2 uses
  %i.afh = icmp ult i8 %.sroa.05.0.i213.i141611129.epil, %i.afg
  %spec.select96.i216.i1419.epil = tail call i8 @llvm.umax.i8(i8 %.sroa.05.0.i213.i141611129.epil, i8 %i.afg)
  %spec.select97.i217.i1420.epil = select i1 %i.afh, i32 %.sroa.75749.011128.epil, i32 %.sroa.04.0.i214.i141711130.epil ; 2 uses
  %epil.iter19535.next = add i64 %epil.iter19535, 1 ; 2 uses
  %epil.iter19535.cmp.not = icmp eq i64 %epil.iter19535.next, %xtraiter19534
  br i1 %epil.iter19535.cmp.not, label %.thread7075, label %.lr.ph11131.epil, !llvm.loop !9200

.thread7075:                                      ; preds = %.lr.ph11131.epil, %.thread7075.unr-lcssa
  %spec.select97.i217.i1420.lcssa = phi i32 [ %spec.select97.i217.i1420.3, %.thread7075.unr-lcssa ], [ %spec.select97.i217.i1420.epil, %.lr.ph11131.epil ]
  store i32 %spec.select97.i217.i1420.lcssa, ptr %.sroa.05744.011133, align 4, !noalias !10095
  %i.afi = icmp eq ptr %i.aex, %i.aet
  br i1 %i.afi, label %.loopexit8909, label %.lr.ph11135

.lr.ph11131:                                      ; preds = %.lr.ph11131.preheader, %.lr.ph11131
  %.sroa.04.0.i214.i141711130 = phi i32 [ %spec.select97.i217.i1420.3, %.lr.ph11131 ], [ 0, %.lr.ph11131.preheader ]
  %.sroa.05.0.i213.i141611129 = phi i8 [ %spec.select96.i216.i1419.3, %.lr.ph11131 ], [ %i.afd, %.lr.ph11131.preheader ] ; 2 uses
  %.sroa.75749.011128 = phi i32 [ %i.afv, %.lr.ph11131 ], [ 0, %.lr.ph11131.preheader ] ; 5 uses
  %.sroa.05747.011127 = phi ptr [ %i.afw, %.lr.ph11131 ], [ %i.afc, %.lr.ph11131.preheader ] ; 5 uses
  %niter19540 = phi i64 [ %niter19540.next.3, %.lr.ph11131 ], [ 0, %.lr.ph11131.preheader ]
  %i.afj = or disjoint i32 %.sroa.75749.011128, 1
  %i.afk = getelementptr inbounds nuw i8, ptr %.sroa.05747.011127, i64 1
  %i.afl = load i8, ptr %.sroa.05747.011127, align 1, !noalias !10095, !noundef !5 ; 2 uses
  %i.afm = icmp ult i8 %.sroa.05.0.i213.i141611129, %i.afl
  %spec.select96.i216.i1419 = tail call i8 @llvm.umax.i8(i8 %.sroa.05.0.i213.i141611129, i8 %i.afl) ; 2 uses
  %spec.select97.i217.i1420 = select i1 %i.afm, i32 %.sroa.75749.011128, i32 %.sroa.04.0.i214.i141711130
  %i.afn = or disjoint i32 %.sroa.75749.011128, 2
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.05747.011127, i64 2
  %i.afp = load i8, ptr %i.afk, align 1, !noalias !10095, !noundef !5 ; 2 uses
  %i.afq = icmp ult i8 %spec.select96.i216.i1419, %i.afp
  %spec.select96.i216.i1419.1 = tail call i8 @llvm.umax.i8(i8 %spec.select96.i216.i1419, i8 %i.afp) ; 2 uses
  %spec.select97.i217.i1420.1 = select i1 %i.afq, i32 %i.afj, i32 %spec.select97.i217.i1420
  %i.afr = or disjoint i32 %.sroa.75749.011128, 3
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.05747.011127, i64 3
  %i.aft = load i8, ptr %i.afo, align 1, !noalias !10095, !noundef !5 ; 2 uses
  %i.afu = icmp ult i8 %spec.select96.i216.i1419.1, %i.aft
  %spec.select96.i216.i1419.2 = tail call i8 @llvm.umax.i8(i8 %spec.select96.i216.i1419.1, i8 %i.aft) ; 2 uses
  %spec.select97.i217.i1420.2 = select i1 %i.afu, i32 %i.afn, i32 %spec.select97.i217.i1420.1
  %i.afv = add nuw nsw i32 %.sroa.75749.011128, 4 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.05747.011127, i64 4 ; 2 uses
  %i.afx = load i8, ptr %i.afs, align 1, !noalias !10095, !noundef !5 ; 2 uses
  %i.afy = icmp ult i8 %spec.select96.i216.i1419.2, %i.afx
  %spec.select96.i216.i1419.3 = tail call i8 @llvm.umax.i8(i8 %spec.select96.i216.i1419.2, i8 %i.afx) ; 2 uses
  %spec.select97.i217.i1420.3 = select i1 %i.afy, i32 %i.afr, i32 %spec.select97.i217.i1420.2 ; 3 uses
  %niter19540.next.3 = add nuw i64 %niter19540, 4 ; 2 uses
  %niter19540.ncmp.3 = icmp eq i64 %niter19540.next.3, %unroll_iter19539
  br i1 %niter19540.ncmp.3, label %.thread7075.unr-lcssa, label %.lr.ph11131

.split11124:                                      ; preds = %bb.ec, %bb.ek
  %.sroa.05750.0 = phi ptr [ %.sroa.05750.1, %bb.ek ], [ %i.abr, %bb.ec ] ; 3 uses
  %.sroa.75752.0 = phi i64 [ %.sroa.75752.1, %bb.ek ], [ 0, %bb.ec ] ; 3 uses
  %i.afz = icmp eq ptr %.sroa.05750.0, %i.aet
  br i1 %i.afz, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %.split11124
  %i.aga = getelementptr inbounds nuw i8, ptr %.sroa.05750.0, i64 4
  %i.agb = add i64 %.sroa.75752.0, 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.split11124
  %.sroa.05750.1 = phi ptr [ %i.aet, %.split11124 ], [ %i.aga, %bb.ee ]
  %.sroa.75752.1 = phi i64 [ %.sroa.75752.0, %.split11124 ], [ %i.agb, %bb.ee ]
  %.sroa.2.0.i2570 = phi ptr [ null, %.split11124 ], [ %.sroa.05750.0, %bb.ee ]
  %.sroa.0.0.i2571 = phi i64 [ undef, %.split11124 ], [ %.sroa.75752.0, %bb.ee ]
  %i.agc = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2571, 0
  %i.agd = insertvalue { i64, ptr } %i.agc, ptr %.sroa.2.0.i2570, 1
  %.fr88.i198.i1401 = freeze { i64, ptr } %i.agd  ; 2 uses
  %i.age = extractvalue { i64, ptr } %.fr88.i198.i1401, 1 ; 2 uses
  %.not87.i199.i1402 = icmp eq ptr %i.age, null
  br i1 %.not87.i199.i1402, label %.loopexit8909, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.agf = extractvalue { i64, ptr } %.fr88.i198.i1401, 0 ; 2 uses
  %i.agg = urem i64 %i.agf, %i.abh                ; 2 uses
  %i.agh = sub nuw i64 %i.agf, %i.agg
  %i.agi = mul i64 %i.agh, %i.aba
  %i.agj = add i64 %i.agi, %i.agg                 ; 5 uses
  %i.agk = icmp ugt i64 %i.agj, %i.aer
  br i1 %i.agk, label %.invoke15876, label %bb.eh, !prof !10

.split11126.us:                                   ; preds = %.split11124.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.dv unwind label %bb.dd, !noalias !10093

bb.eh:                                            ; preds = %bb.eg
  %i.agl = sub nuw i64 %i.aer, %i.agj             ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.agj ; 2 uses
  %.not89.i200.i1403 = icmp eq i64 %i.aer, %i.agj
  br i1 %.not89.i200.i1403, label %.invoke15874, label %bb.ei

.invoke15876:                                     ; preds = %.lr.ph11135, %bb.eg, %bb.df, %bb.eb
  %i.agn = phi i64 [ %i.agj, %bb.eg ], [ %i.abz, %bb.df ], [ %i.abz, %bb.eb ], [ %i.aez, %.lr.ph11135 ]
  %i.ago = phi i64 [ %i.aer, %bb.eg ], [ %i.acb, %bb.df ], [ %i.acb, %bb.eb ], [ %i.afa, %.lr.ph11135 ]
  %i.agp = phi i64 [ %i.aer, %bb.eg ], [ %i.om, %bb.df ], [ %i.om, %bb.eb ], [ %i.aer, %.lr.ph11135 ]
  %i.agq = phi ptr [ @12, %bb.eg ], [ @13, %bb.df ], [ @13, %bb.eb ], [ @8, %.lr.ph11135 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.agn, i64 noundef %i.ago, i64 noundef %i.agp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agq) #22
          to label %.cont15877 unwind label %bb.dd, !noalias !10093

.cont15877:                                       ; preds = %.invoke15876
  unreachable

bb.ei:                                            ; preds = %bb.eh
  %i.agr = load i8, ptr %i.agm, align 1, !alias.scope !10102, !noundef !5
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.el
  %.sroa.044.0.i203.i140611123 = phi i64 [ 0, %bb.ei ], [ %i.agy, %bb.el ] ; 3 uses
  %.sroa.021.0.i202.i140511122 = phi i64 [ 0, %bb.ei ], [ %spec.select99.i205.i1408, %bb.el ]
  %.sroa.022.0.i201.i140411121 = phi i8 [ %i.agr, %bb.ei ], [ %spec.select98.i204.i1407, %bb.el ] ; 2 uses
  %i.ags = mul i64 %.sroa.044.0.i203.i140611123, %i.abh ; 3 uses
  %i.agt = icmp ult i64 %i.ags, %i.agl
  br i1 %i.agt, label %bb.el, label %.invoke15874

bb.ek:                                            ; preds = %bb.el
  %i.agu = trunc i64 %spec.select99.i205.i1408 to i32
  store i32 %i.agu, ptr %i.age, align 4, !noalias !10093
  br label %.split11124

.invoke15874:                                     ; preds = %bb.eh, %bb.ej
  %i.agv = phi i64 [ %i.ags, %bb.ej ], [ 0, %bb.eh ]
  %i.agw = phi i64 [ %i.agl, %bb.ej ], [ 0, %bb.eh ]
  %i.agx = phi ptr [ @11, %bb.ej ], [ @10, %bb.eh ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.agv, i64 noundef %i.agw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agx) #22
          to label %.cont15875 unwind label %bb.dd, !noalias !10093

.cont15875:                                       ; preds = %.invoke15874
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.agy = add nuw i64 %.sroa.044.0.i203.i140611123, 1 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.ags
  %i.aha = load i8, ptr %i.agz, align 1, !alias.scope !10102, !noundef !5 ; 2 uses
  %i.ahb = icmp ult i8 %.sroa.022.0.i201.i140411121, %i.aha
  %spec.select98.i204.i1407 = tail call i8 @llvm.umax.i8(i8 %.sroa.022.0.i201.i140411121, i8 %i.aha)
  %spec.select99.i205.i1408 = select i1 %i.ahb, i64 %.sroa.044.0.i203.i140611123, i64 %.sroa.021.0.i202.i140511122 ; 2 uses
  %exitcond12926.not = icmp eq i64 %i.agy, %i.aba
  br i1 %exitcond12926.not, label %bb.ek, label %bb.ej

bb.em:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10106)
  %i.ahc = load i64, ptr %i.ov, align 8, !alias.scope !10107, !noundef !5 ; 2 uses
  %i.ahd = load i64, ptr %1, align 8, !alias.scope !10108, !noundef !5 ; 7 uses
  %i.ahe = icmp ult i64 %i.ahd, %i.ahc
  br i1 %i.ahe, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ahf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ahg = load ptr, ptr %i.ahf, align 8, !alias.scope !10107, !nonnull !5, !noundef !5
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ahd
  %i.ahi = load i64, ptr %i.ahh, align 8, !noalias !10109, !noundef !5 ; 10 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ahk = load i64, ptr %i.ahj, align 8, !alias.scope !10107, !noundef !5 ; 2 uses
  %i.ahl = icmp ult i64 %i.ahd, %i.ahk
  br i1 %i.ahl, label %bb.ep, label %bb.eq

bb.eo:                                            ; preds = %bb.em
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ahd, i64 noundef %i.ahc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10109
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.ahm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ahn = load ptr, ptr %i.ahm, align 8, !alias.scope !10107, !nonnull !5, !noundef !5
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.ahn, i64 %i.ahd
  %i.ahp = load i64, ptr %i.aho, align 8, !noalias !10109, !noundef !5 ; 4 uses
  %i.ahq = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10109
  %i.ahr = icmp eq i64 %i.ahi, 0
  br i1 %i.ahr, label %bb.es, label %bb.er

bb.eq:                                            ; preds = %bb.en
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ahd, i64 noundef %i.ahk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10109
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.ahs = udiv i64 %i.ahq, %i.ahi                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj), !noalias !10110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !noalias !10110
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hd, i64 noundef %i.ahs, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10109
  %i.aht = load i64, ptr %i.hd, align 8, !range !8, !noalias !10110, !noundef !5
  %i.ahu = trunc nuw i64 %i.aht to i1
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.ahw = load i64, ptr %i.ahv, align 8, !range !12, !noalias !10110, !noundef !5 ; 8 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  br i1 %i.ahu, label %bb.et, label %bb.eu, !prof !10

bb.es:                                            ; preds = %bb.ep
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10109
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.ahy = load i64, ptr %i.ahx, align 8, !noalias !10110
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ahw, i64 %i.ahy) #22, !noalias !10109
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.ahz = load ptr, ptr %i.ahx, align 8, !noalias !10110, !nonnull !5, !noundef !5 ; 5 uses
  %i.aia = icmp ule i64 %i.ahs, %i.ahw
  tail call void @llvm.assume(i1 %i.aia)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !10110
  store i64 %i.ahw, ptr %i.hj, align 16, !noalias !10110
  %i.aib = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.ahz, ptr %i.aib, align 8, !noalias !10110
  %i.aic = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i64 0, ptr %i.aic, align 16, !noalias !10110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi), !noalias !10110
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.ex unwind label %bb.ew, !noalias !10109

bb.ev:                                            ; preds = %bb.fc, %bb.ew
  %.pn93.i131.i1421 = phi { ptr, i32 } [ %i.aid, %bb.ew ], [ %.pn.i138.i1434, %bb.fc ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hj) #20
          to label %common.resume unwind label %bb.ft, !noalias !10111

bb.ew:                                            ; preds = %.invoke15882, %.invoke15880, %.split11145.us, %bb.fj, %bb.ez, %bb.eu
  %i.aid = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.ex:                                            ; preds = %bb.eu
  %i.aie = load i64, ptr %i.hi, align 8, !range !8, !noalias !10110, !noundef !5
  %i.aif = trunc nuw i64 %i.aie to i1
  br i1 %i.aif, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.aig = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.aih = load i64, ptr %i.aig, align 8, !noalias !10110, !noundef !5 ; 5 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.aij = load i64, ptr %i.aii, align 8, !noalias !10110, !noundef !5 ; 5 uses
  %i.aik = icmp ult i64 %i.aij, %i.aih
  br i1 %i.aik, label %.invoke15882, label %bb.fu, !prof !10

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh), !noalias !10110
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.i129.i1225.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg), !noalias !10110
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.hg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.ahd, i64 noundef 0, i64 noundef 1)
          to label %bb.fa unwind label %bb.ew, !noalias !10109

end_hunk_0
begin_hunk_1_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2588: ; preds = %.noexc2593
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.0.copyload.i.i2574), "nonnull"(ptr %.sroa.3.0.copyload.i.i2576), "nonnull"(ptr %.sroa.716.0.copyload.i.i2580) ], !noalias !10109
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2589

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2589: ; preds = %bb.fg, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2588
  %.sroa.05.031.i.i2590 = phi i64 [ %i.aiz, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2588 ], [ %i.ajx, %bb.fg ] ; 2 uses
  %.sroa.9.030.i.i2591 = phi i64 [ %.sroa.10.0.copyload.i.i2584, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.lr.ph.i.i2588 ], [ %i.ajk, %bb.fg ]
  %i.ajk = add i64 %.sroa.9.030.i.i2591, -1       ; 4 uses
  %i.ajl = add i64 %i.ajk, %.sroa.514.0.copyload.i.i2578 ; 2 uses
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.013.0.copyload.i.i2574, i64 %i.ajl ; 3 uses
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.716.0.copyload.i.i2580, i64 %i.ajk ; 2 uses
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload.i.i2576, i64 %i.ajl
  %i.ajp = load i64, ptr %i.ajm, align 8, !noalias !10115, !noundef !5 ; 2 uses
  %i.ajq = add i64 %i.ajp, 1                      ; 2 uses
  %i.ajr = load i64, ptr %i.ajo, align 8, !noalias !10115, !noundef !5
  %i.ajs = icmp ult i64 %i.ajq, %i.ajr
  br i1 %i.ajs, label %bb.fh, label %bb.fg

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2585: ; preds = %bb.fg, %.noexc2593
  %i.ajt = load i64, ptr %i.aiy, align 8, !alias.scope !10116, !noalias !10109, !noundef !5
  %i.aju = add i64 %i.ajt, -1
  store i64 %i.aju, ptr %i.aiy, align 8, !alias.scope !10116, !noalias !10109
  br label %bb.fi

bb.fg:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2589
  %i.ajv = load i64, ptr %i.ajn, align 8, !noalias !10115, !noundef !5
  %i.ajw = mul i64 %i.ajv, %i.ajp
  %i.ajx = sub i64 %.sroa.05.031.i.i2590, %i.ajw
  store i64 0, ptr %i.ajm, align 8, !noalias !10115
  %i.ajy = icmp ult i64 %.sroa.918.0.copyload.i.i2582, %i.ajk
  br i1 %i.ajy, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2589, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2585

bb.fh:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i2589
  store i64 %i.ajq, ptr %i.ajm, align 8, !noalias !10115
  %i.ajz = load i64, ptr %i.ajn, align 8, !noalias !10115, !noundef !5
  %i.aka = load i64, ptr %i.aiy, align 8, !alias.scope !10116, !noalias !10109, !noundef !5
  %i.akb = add i64 %i.aka, -1
  store i64 %i.akb, ptr %i.aiy, align 8, !alias.scope !10116, !noalias !10109
  %i.akc = add i64 %i.ajz, %.sroa.05.031.i.i2590
  br label %bb.fi

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc2592, %bb.ff, %.invoke15884, %bb.fm
  %lpad.loopexit.split-lp17872 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.he) #20
          to label %bb.fc unwind label %bb.ft, !noalias !10109

bb.fi:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2585, %bb.fh
  %.sroa.6.0.i.i2586 = phi i64 [ %i.akc, %bb.fh ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2585 ]
  %.sroa.08.0.i.i2587 = phi i64 [ 1, %bb.fh ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2585 ]
  store i64 %.sroa.08.0.i.i2587, ptr %i.he, align 8, !alias.scope !10116, !noalias !10109
  store i64 %.sroa.6.0.i.i2586, ptr %i.aio, align 8, !alias.scope !10116, !noalias !10109
  %i.akd = load i64, ptr %.sroa.233.0..sroa_idx.i139.i1435, align 8, !alias.scope !10113, !noalias !10109, !noundef !5 ; 4 uses
  %i.ake = add i64 %i.akd, 1
  store i64 %i.ake, ptr %.sroa.233.0..sroa_idx.i139.i1435, align 8, !alias.scope !10113, !noalias !10109
  %i.akf = icmp ugt i64 %i.aiz, %i.om
  br i1 %i.akf, label %bb.fm, label %bb.fl, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2594: ; preds = %bb.fr, %bb.fe
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.he)
          to label %bb.fj unwind label %bb.fd, !noalias !10109

bb.fj:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !10110
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.hh)
          to label %bb.fk unwind label %bb.ew, !noalias !10109

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh), !noalias !10110
  br label %.loopexit

bb.fl:                                            ; preds = %bb.fi
  %i.akg = sub nuw nsw i64 %i.om, %i.aiz          ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.aiz ; 2 uses
  %.not84.i140.i1436 = icmp eq i64 %i.om, %i.aiz
  br i1 %.not84.i140.i1436, label %.invoke15884, label %bb.fn

bb.fm:                                            ; preds = %bb.fi
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.aiz, i64 noundef range(i64 0, -9223372036854775808) %i.om, i64 noundef range(i64 0, -9223372036854775808) %i.om, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10109

bb.fn:                                            ; preds = %bb.fl
  %i.aki = load i8, ptr %i.akh, align 1, !alias.scope !10118, !noundef !5
  br label %bb.fp

bb.fo:                                            ; preds = %.split11145.us, %bb.fm
  unreachable

bb.fp:                                            ; preds = %bb.fn, %bb.fs
  %.sroa.055.0.i143.i143911138 = phi i64 [ 0, %bb.fn ], [ %i.aku, %bb.fs ] ; 3 uses
  %.sroa.035.0.i142.i143811137 = phi i8 [ %i.aki, %bb.fn ], [ %spec.select95.i145.i1441, %bb.fs ] ; 2 uses
  %.sroa.034.0.i141.i143711136 = phi i64 [ 0, %bb.fn ], [ %spec.select.i144.i1440, %bb.fs ]
  %i.akj = mul i64 %.sroa.055.0.i143.i143911138, %i.ahp ; 3 uses
  %i.akk = icmp ult i64 %i.akj, %i.akg
  br i1 %i.akk, label %bb.fs, label %.invoke15884

bb.fq:                                            ; preds = %bb.fs
  %i.akl = icmp ult i64 %i.akd, %i.ahw
  br i1 %i.akl, label %bb.fr, label %.invoke15884

bb.fr:                                            ; preds = %bb.fq
  %i.akm = trunc i64 %spec.select.i144.i1440 to i32
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.akd
  store i32 %i.akm, ptr %i.akn, align 4, !noalias !10109
  %i.ako = load i64, ptr %i.he, align 8, !range !8, !alias.scope !10119, !noalias !10109, !noundef !5
  %i.akp = load i64, ptr %i.aio, align 8, !alias.scope !10119, !noalias !10109
  %i.akq = trunc nuw i64 %i.ako to i1
  br i1 %i.akq, label %bb.ff, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2594

.invoke15884:                                     ; preds = %bb.fq, %bb.fl, %bb.fp
  %i.akr = phi i64 [ %i.akj, %bb.fp ], [ 0, %bb.fl ], [ %i.akd, %bb.fq ]
  %i.aks = phi i64 [ %i.akg, %bb.fp ], [ 0, %bb.fl ], [ %i.ahw, %bb.fq ]
  %i.akt = phi ptr [ @6, %bb.fp ], [ @4, %bb.fl ], [ @5, %bb.fq ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.akr, i64 noundef %i.aks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akt) #22
          to label %.cont15885 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10109

.cont15885:                                       ; preds = %.invoke15884
  unreachable

bb.fs:                                            ; preds = %bb.fp
  %i.aku = add nuw i64 %.sroa.055.0.i143.i143911138, 1 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.akj
  %i.akw = load i8, ptr %i.akv, align 1, !alias.scope !10118, !noundef !5 ; 2 uses
  %i.akx = icmp ugt i8 %.sroa.035.0.i142.i143811137, %i.akw
  %spec.select.i144.i1440 = select i1 %i.akx, i64 %.sroa.055.0.i143.i143911138, i64 %.sroa.034.0.i141.i143711136 ; 2 uses
  %spec.select95.i145.i1441 = call i8 @llvm.umin.i8(i8 %.sroa.035.0.i142.i143811137, i8 %i.akw)
  %exitcond12927.not = icmp eq i64 %i.aku, %i.ahi
  br i1 %exitcond12927.not, label %bb.fq, label %bb.fp

bb.ft:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fc, %bb.ev
  %i.aky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10111
  unreachable

bb.fu:                                            ; preds = %bb.ey
  %i.akz = sub nuw i64 %i.aij, %i.aih             ; 7 uses
  %.not86.i146.i1442 = icmp ugt i64 %i.aij, %i.om
  br i1 %.not86.i146.i1442, label %.invoke15882, label %bb.fv, !prof !10

bb.fv:                                            ; preds = %bb.fu
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.aih ; 2 uses
  %.idx11257 = shl nuw nsw i64 %i.ahw, 2
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %.idx11257 ; 3 uses
  switch i64 %i.ahp, label %.split11143 [
    i64 1, label %bb.fw
    i64 0, label %.split11143.us
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.alc = icmp eq i64 %i.ahw, 0
  br i1 %i.alc, label %.loopexit, label %.lr.ph11154.preheader

.lr.ph11154.preheader:                            ; preds = %bb.fw
  %xtraiter19541 = and i64 %i.ahi, 3              ; 3 uses
  %i.ald = icmp ult i64 %i.ahi, 4
  %unroll_iter19546 = and i64 %i.ahi, -4
  %lcmp.mod19543.not = icmp eq i64 %xtraiter19541, 0
  %lcmp.mod19545 = icmp ne i64 %xtraiter19541, 0
  br label %.lr.ph11154

.split11143.us:                                   ; preds = %bb.fv
  %i.ale = icmp eq i64 %i.ahw, 0
  br i1 %i.ale, label %.loopexit, label %.split11145.us

.lr.ph11154:                                      ; preds = %.lr.ph11154.preheader, %.thread7101
  %.sroa.75709.011153 = phi i64 [ %i.alg, %.thread7101 ], [ 0, %.lr.ph11154.preheader ] ; 2 uses
  %.sroa.05707.011152 = phi ptr [ %i.alf, %.thread7101 ], [ %i.ahz, %.lr.ph11154.preheader ] ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.05707.011152, i64 4 ; 2 uses
  %i.alg = add nuw nsw i64 %.sroa.75709.011153, 1
  %i.alh = mul i64 %.sroa.75709.011153, %i.ahi    ; 4 uses
  %i.ali = add i64 %i.alh, %i.ahi                 ; 3 uses
  %i.alj = icmp ult i64 %i.ali, %i.alh
  %.not91.i160.i1456 = icmp ugt i64 %i.ali, %i.akz
  %or.cond.i161.i1457 = select i1 %i.alj, i1 true, i1 %.not91.i160.i1456, !prof !7
  br i1 %or.cond.i161.i1457, label %.invoke15882, label %.lr.ph11150.preheader, !prof !7

.lr.ph11150.preheader:                            ; preds = %.lr.ph11154
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.alh ; 3 uses
  %i.all = load i8, ptr %i.alk, align 1, !alias.scope !10118, !noundef !5 ; 2 uses
  br i1 %i.ald, label %.lr.ph11150.epil.preheader, label %.lr.ph11150

.thread7101.unr-lcssa:                            ; preds = %.lr.ph11150
  br i1 %lcmp.mod19543.not, label %.thread7101, label %.lr.ph11150.epil.preheader

.lr.ph11150.epil.preheader:                       ; preds = %.thread7101.unr-lcssa, %.lr.ph11150.preheader
  %.sroa.04.0.i165.i146111149.epil.init = phi i32 [ 0, %.lr.ph11150.preheader ], [ %spec.select97.i168.i1464.3, %.thread7101.unr-lcssa ]
  %.sroa.05.0.i164.i146011148.epil.init = phi i8 [ %i.all, %.lr.ph11150.preheader ], [ %spec.select96.i167.i1463.3, %.thread7101.unr-lcssa ]
  %.sroa.75712.011147.epil.init = phi i32 [ 0, %.lr.ph11150.preheader ], [ %i.amd, %.thread7101.unr-lcssa ]
  %.sroa.05710.011146.epil.init = phi ptr [ %i.alk, %.lr.ph11150.preheader ], [ %i.ame, %.thread7101.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19545)
  br label %.lr.ph11150.epil

.lr.ph11150.epil:                                 ; preds = %.lr.ph11150.epil, %.lr.ph11150.epil.preheader
  %.sroa.04.0.i165.i146111149.epil = phi i32 [ %spec.select97.i168.i1464.epil, %.lr.ph11150.epil ], [ %.sroa.04.0.i165.i146111149.epil.init, %.lr.ph11150.epil.preheader ]
  %.sroa.05.0.i164.i146011148.epil = phi i8 [ %spec.select96.i167.i1463.epil, %.lr.ph11150.epil ], [ %.sroa.05.0.i164.i146011148.epil.init, %.lr.ph11150.epil.preheader ] ; 2 uses
  %.sroa.75712.011147.epil = phi i32 [ %i.alm, %.lr.ph11150.epil ], [ %.sroa.75712.011147.epil.init, %.lr.ph11150.epil.preheader ] ; 2 uses
  %.sroa.05710.011146.epil = phi ptr [ %i.aln, %.lr.ph11150.epil ], [ %.sroa.05710.011146.epil.init, %.lr.ph11150.epil.preheader ] ; 2 uses
  %epil.iter19542 = phi i64 [ %epil.iter19542.next, %.lr.ph11150.epil ], [ 0, %.lr.ph11150.epil.preheader ]
  %i.alm = add nuw nsw i32 %.sroa.75712.011147.epil, 1
  %i.aln = getelementptr inbounds nuw i8, ptr %.sroa.05710.011146.epil, i64 1
  %i.alo = load i8, ptr %.sroa.05710.011146.epil, align 1, !noalias !10111, !noundef !5 ; 2 uses
  %i.alp = icmp ugt i8 %.sroa.05.0.i164.i146011148.epil, %i.alo
  %spec.select96.i167.i1463.epil = tail call i8 @llvm.umin.i8(i8 %.sroa.05.0.i164.i146011148.epil, i8 %i.alo)
  %spec.select97.i168.i1464.epil = select i1 %i.alp, i32 %.sroa.75712.011147.epil, i32 %.sroa.04.0.i165.i146111149.epil ; 2 uses
  %epil.iter19542.next = add i64 %epil.iter19542, 1 ; 2 uses
  %epil.iter19542.cmp.not = icmp eq i64 %epil.iter19542.next, %xtraiter19541
  br i1 %epil.iter19542.cmp.not, label %.thread7101, label %.lr.ph11150.epil, !llvm.loop !9222

.thread7101:                                      ; preds = %.lr.ph11150.epil, %.thread7101.unr-lcssa
  %spec.select97.i168.i1464.lcssa = phi i32 [ %spec.select97.i168.i1464.3, %.thread7101.unr-lcssa ], [ %spec.select97.i168.i1464.epil, %.lr.ph11150.epil ]
  store i32 %spec.select97.i168.i1464.lcssa, ptr %.sroa.05707.011152, align 4, !noalias !10111
  %i.alq = icmp eq ptr %i.alf, %i.alb
  br i1 %i.alq, label %.loopexit, label %.lr.ph11154

.lr.ph11150:                                      ; preds = %.lr.ph11150.preheader, %.lr.ph11150
  %.sroa.04.0.i165.i146111149 = phi i32 [ %spec.select97.i168.i1464.3, %.lr.ph11150 ], [ 0, %.lr.ph11150.preheader ]
  %.sroa.05.0.i164.i146011148 = phi i8 [ %spec.select96.i167.i1463.3, %.lr.ph11150 ], [ %i.all, %.lr.ph11150.preheader ] ; 2 uses
  %.sroa.75712.011147 = phi i32 [ %i.amd, %.lr.ph11150 ], [ 0, %.lr.ph11150.preheader ] ; 5 uses
  %.sroa.05710.011146 = phi ptr [ %i.ame, %.lr.ph11150 ], [ %i.alk, %.lr.ph11150.preheader ] ; 5 uses
  %niter19547 = phi i64 [ %niter19547.next.3, %.lr.ph11150 ], [ 0, %.lr.ph11150.preheader ]
  %i.alr = or disjoint i32 %.sroa.75712.011147, 1
  %i.als = getelementptr inbounds nuw i8, ptr %.sroa.05710.011146, i64 1
  %i.alt = load i8, ptr %.sroa.05710.011146, align 1, !noalias !10111, !noundef !5 ; 2 uses
  %i.alu = icmp ugt i8 %.sroa.05.0.i164.i146011148, %i.alt
  %spec.select96.i167.i1463 = tail call i8 @llvm.umin.i8(i8 %.sroa.05.0.i164.i146011148, i8 %i.alt) ; 2 uses
  %spec.select97.i168.i1464 = select i1 %i.alu, i32 %.sroa.75712.011147, i32 %.sroa.04.0.i165.i146111149
  %i.alv = or disjoint i32 %.sroa.75712.011147, 2
  %i.alw = getelementptr inbounds nuw i8, ptr %.sroa.05710.011146, i64 2
  %i.alx = load i8, ptr %i.als, align 1, !noalias !10111, !noundef !5 ; 2 uses
  %i.aly = icmp ugt i8 %spec.select96.i167.i1463, %i.alx
  %spec.select96.i167.i1463.1 = tail call i8 @llvm.umin.i8(i8 %spec.select96.i167.i1463, i8 %i.alx) ; 2 uses
  %spec.select97.i168.i1464.1 = select i1 %i.aly, i32 %i.alr, i32 %spec.select97.i168.i1464
  %i.alz = or disjoint i32 %.sroa.75712.011147, 3
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.05710.011146, i64 3
  %i.amb = load i8, ptr %i.alw, align 1, !noalias !10111, !noundef !5 ; 2 uses
  %i.amc = icmp ugt i8 %spec.select96.i167.i1463.1, %i.amb
  %spec.select96.i167.i1463.2 = tail call i8 @llvm.umin.i8(i8 %spec.select96.i167.i1463.1, i8 %i.amb) ; 2 uses
  %spec.select97.i168.i1464.2 = select i1 %i.amc, i32 %i.alv, i32 %spec.select97.i168.i1464.1
  %i.amd = add nuw nsw i32 %.sroa.75712.011147, 4 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %.sroa.05710.011146, i64 4 ; 2 uses
  %i.amf = load i8, ptr %i.ama, align 1, !noalias !10111, !noundef !5 ; 2 uses
  %i.amg = icmp ugt i8 %spec.select96.i167.i1463.2, %i.amf
  %spec.select96.i167.i1463.3 = tail call i8 @llvm.umin.i8(i8 %spec.select96.i167.i1463.2, i8 %i.amf) ; 2 uses
  %spec.select97.i168.i1464.3 = select i1 %i.amg, i32 %i.alz, i32 %spec.select97.i168.i1464.2 ; 3 uses
  %niter19547.next.3 = add nuw i64 %niter19547, 4 ; 2 uses
  %niter19547.ncmp.3 = icmp eq i64 %niter19547.next.3, %unroll_iter19546
  br i1 %niter19547.ncmp.3, label %.thread7101.unr-lcssa, label %.lr.ph11150

.split11143:                                      ; preds = %bb.fv, %bb.gd
  %.sroa.05713.0 = phi ptr [ %.sroa.05713.1, %bb.gd ], [ %i.ahz, %bb.fv ] ; 3 uses
  %.sroa.75715.0 = phi i64 [ %.sroa.75715.1, %bb.gd ], [ 0, %bb.fv ] ; 3 uses
  %i.amh = icmp eq ptr %.sroa.05713.0, %i.alb
  br i1 %i.amh, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.split11143
  %i.ami = getelementptr inbounds nuw i8, ptr %.sroa.05713.0, i64 4
  %i.amj = add i64 %.sroa.75715.0, 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %.split11143
  %.sroa.05713.1 = phi ptr [ %i.alb, %.split11143 ], [ %i.ami, %bb.fx ]
  %.sroa.75715.1 = phi i64 [ %.sroa.75715.0, %.split11143 ], [ %i.amj, %bb.fx ]
  %.sroa.2.0.i2601 = phi ptr [ null, %.split11143 ], [ %.sroa.05713.0, %bb.fx ]
  %.sroa.0.0.i2602 = phi i64 [ undef, %.split11143 ], [ %.sroa.75715.0, %bb.fx ]
  %i.amk = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2602, 0
  %i.aml = insertvalue { i64, ptr } %i.amk, ptr %.sroa.2.0.i2601, 1
  %.fr88.i149.i1445 = freeze { i64, ptr } %i.aml  ; 2 uses
  %i.amm = extractvalue { i64, ptr } %.fr88.i149.i1445, 1 ; 2 uses
  %.not87.i150.i1446 = icmp eq ptr %i.amm, null
  br i1 %.not87.i150.i1446, label %.loopexit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.amn = extractvalue { i64, ptr } %.fr88.i149.i1445, 0 ; 2 uses
  %i.amo = urem i64 %i.amn, %i.ahp                ; 2 uses
  %i.amp = sub nuw i64 %i.amn, %i.amo
  %i.amq = mul i64 %i.amp, %i.ahi
  %i.amr = add i64 %i.amq, %i.amo                 ; 5 uses
  %i.ams = icmp ugt i64 %i.amr, %i.akz
  br i1 %i.ams, label %.invoke15882, label %bb.ga, !prof !10

.split11145.us:                                   ; preds = %.split11143.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.fo unwind label %bb.ew, !noalias !10109

bb.ga:                                            ; preds = %bb.fz
  %i.amt = sub nuw i64 %i.akz, %i.amr             ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.amr ; 2 uses
  %.not89.i151.i1447 = icmp eq i64 %i.akz, %i.amr
  br i1 %.not89.i151.i1447, label %.invoke15880, label %bb.gb

.invoke15882:                                     ; preds = %.lr.ph11154, %bb.fz, %bb.ey, %bb.fu
  %i.amv = phi i64 [ %i.amr, %bb.fz ], [ %i.aih, %bb.ey ], [ %i.aih, %bb.fu ], [ %i.alh, %.lr.ph11154 ]
  %i.amw = phi i64 [ %i.akz, %bb.fz ], [ %i.aij, %bb.ey ], [ %i.aij, %bb.fu ], [ %i.ali, %.lr.ph11154 ]
  %i.amx = phi i64 [ %i.akz, %bb.fz ], [ %i.om, %bb.ey ], [ %i.om, %bb.fu ], [ %i.akz, %.lr.ph11154 ]
  %i.amy = phi ptr [ @12, %bb.fz ], [ @13, %bb.ey ], [ @13, %bb.fu ], [ @8, %.lr.ph11154 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.amv, i64 noundef %i.amw, i64 noundef %i.amx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.amy) #22
          to label %.cont15883 unwind label %bb.ew, !noalias !10109

.cont15883:                                       ; preds = %.invoke15882
  unreachable

bb.gb:                                            ; preds = %bb.ga
  %i.amz = load i8, ptr %i.amu, align 1, !alias.scope !10118, !noundef !5
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ge
  %.sroa.044.0.i154.i145011142 = phi i64 [ 0, %bb.gb ], [ %i.ang, %bb.ge ] ; 3 uses
  %.sroa.021.0.i153.i144911141 = phi i64 [ 0, %bb.gb ], [ %spec.select99.i156.i1452, %bb.ge ]
  %.sroa.022.0.i152.i144811140 = phi i8 [ %i.amz, %bb.gb ], [ %spec.select98.i155.i1451, %bb.ge ] ; 2 uses
  %i.ana = mul i64 %.sroa.044.0.i154.i145011142, %i.ahp ; 3 uses
  %i.anb = icmp ult i64 %i.ana, %i.amt
  br i1 %i.anb, label %bb.ge, label %.invoke15880

bb.gd:                                            ; preds = %bb.ge
  %i.anc = trunc i64 %spec.select99.i156.i1452 to i32
  store i32 %i.anc, ptr %i.amm, align 4, !noalias !10109
  br label %.split11143

.invoke15880:                                     ; preds = %bb.ga, %bb.gc
  %i.and = phi i64 [ %i.ana, %bb.gc ], [ 0, %bb.ga ]
  %i.ane = phi i64 [ %i.amt, %bb.gc ], [ 0, %bb.ga ]
  %i.anf = phi ptr [ @11, %bb.gc ], [ @10, %bb.ga ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.and, i64 noundef %i.ane, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.anf) #22
          to label %.cont15881 unwind label %bb.ew, !noalias !10109

.cont15881:                                       ; preds = %.invoke15880
  unreachable

bb.ge:                                            ; preds = %bb.gc
  %i.ang = add nuw i64 %.sroa.044.0.i154.i145011142, 1 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.ana
  %i.ani = load i8, ptr %i.anh, align 1, !alias.scope !10118, !noundef !5 ; 2 uses
  %i.anj = icmp ugt i8 %.sroa.022.0.i152.i144811140, %i.ani
  %spec.select98.i155.i1451 = tail call i8 @llvm.umin.i8(i8 %.sroa.022.0.i152.i144811140, i8 %i.ani)
  %spec.select99.i156.i1452 = select i1 %i.anj, i64 %.sroa.044.0.i154.i145011142, i64 %.sroa.021.0.i153.i144911141 ; 2 uses
  %exitcond12928.not = icmp eq i64 %i.ang, %i.ahi
  br i1 %exitcond12928.not, label %bb.gd, label %bb.gc

bb.gf:                                            ; preds = %bb.dh
  %.sroa.551.0..sroa_idx.i184.i1381 = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %.sroa.75502.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75502.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i184.i1381, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !10094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i178.i1214.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i178.i1214.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !10094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !10094
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hc), !noalias !10093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !10094
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread7131

.loopexit8909:                                    ; preds = %.thread7075, %bb.ef, %.split11124.us, %bb.ed, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !10094
  %i.ank = load <2 x i64>, ptr %i.hc, align 16, !noalias !10094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !10094
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread

bb.gg:                                            ; preds = %bb.fa
  %.sroa.551.0..sroa_idx.i135.i1425 = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %.sroa.75499.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75499.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i135.i1425, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg), !noalias !10110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i129.i1225.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i129.i1225.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh), !noalias !10110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi), !noalias !10110
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hj), !noalias !10109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj), !noalias !10110
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread7131

.loopexit:                                        ; preds = %.thread7101, %bb.fy, %.split11143.us, %bb.fw, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi), !noalias !10110
  %i.anl = load <2 x i64>, ptr %i.hj, align 16, !noalias !10110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj), !noalias !10110
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread

_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia), !noalias !10120
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr @42, ptr %i.anm, align 8, !noalias !10120
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store i64 6, ptr %i.ann, align 8, !noalias !10120
  store i64 -9223372036854775796, ptr %i.ia, align 8, !noalias !10120
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.hy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.ia)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !noalias !10120
  %.sroa.05512.0.copyload = load i64, ptr %i.hy, align 8 ; 2 uses
  %.sroa.45513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.45513.0.copyload = load i64, ptr %.sroa.45513.0..sroa_idx, align 8 ; 2 uses
  %.sroa.55514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ano = load <2 x i64>, ptr %.sroa.55514.0..sroa_idx, align 8 ; 3 uses
  %.sroa.55514.sroa.5.0..sroa.55514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %.sroa.55514.sroa.5.0.copyload = load i64, ptr %.sroa.55514.sroa.5.0..sroa.55514.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not188 = icmp eq i64 %.sroa.05512.0.copyload, -1
  %i.anp = extractelement <2 x i64> %i.ano, i64 0
  %i.anq = extractelement <2 x i64> %i.ano, i64 1
  br i1 %.not188, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fhNcNtNtB6_10CpuStorage2U80EB8_.exit.thread7131

bb.gh:                                            ; preds = %bb.a
  %i.anr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ans = load ptr, ptr %i.anr, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.anu = load i64, ptr %i.ant, align 8, !noundef !5 ; 32 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10123)
  %i.anv = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10124
  %i.anw = icmp eq i64 %i.anv, 0
  br i1 %i.anw, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.any = load i8, ptr %i.anx, align 1, !range !24, !alias.scope !10121, !noundef !5
  %i.anz = trunc nuw i8 %i.any to i1
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aob = load i8, ptr %i.aoa, align 8, !range !24, !alias.scope !10121, !noundef !5
  %i.aoc = trunc nuw i8 %i.aob to i1              ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %i.anz, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.aoc, label %bb.ie, label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  br i1 %i.aoc, label %bb.ls, label %bb.jz

bb.gl:                                            ; preds = %bb.gj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10127)
  %i.aoe = load i64, ptr %i.aod, align 8, !alias.scope !10128, !noundef !5 ; 2 uses
  %i.aof = load i64, ptr %1, align 8, !alias.scope !10129, !noundef !5 ; 7 uses
  %i.aog = icmp ult i64 %i.aof, %i.aoe
  br i1 %i.aog, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.aoh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aoi = load ptr, ptr %i.aoh, align 8, !alias.scope !10128, !nonnull !5, !noundef !5
  %i.aoj = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %i.aof
  %i.aok = load i64, ptr %i.aoj, align 8, !noalias !10130, !noundef !5 ; 8 uses
end_hunk_1
begin_hunk_2_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18067 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.en) #20
          to label %bb.kp unwind label %bb.lg, !noalias !10162

bb.kv:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2677, %bb.ku
  %.sroa.6.0.i.i2678 = phi i64 [ %i.bdc, %bb.ku ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2677 ]
  %.sroa.08.0.i.i2679 = phi i64 [ 1, %bb.ku ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2677 ]
  store i64 %.sroa.08.0.i.i2679, ptr %i.en, align 8, !alias.scope !10169, !noalias !10162
  store i64 %.sroa.6.0.i.i2678, ptr %i.bbo, align 8, !alias.scope !10169, !noalias !10162
  %i.bdd = load i64, ptr %.sroa.233.0..sroa_idx.i188.i1911, align 8, !alias.scope !10166, !noalias !10162, !noundef !5 ; 4 uses
  %i.bde = add i64 %i.bdd, 1
  store i64 %i.bde, ptr %.sroa.233.0..sroa_idx.i188.i1911, align 8, !alias.scope !10166, !noalias !10162
  %i.bdf = icmp ugt i64 %i.bbz, %i.anu
  br i1 %i.bdf, label %bb.kz, label %bb.ky, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2686: ; preds = %bb.le, %bb.kr
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.en)
          to label %bb.kw unwind label %bb.kq, !noalias !10162

bb.kw:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !10163
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.eq)
          to label %bb.kx unwind label %bb.kj, !noalias !10162

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !10163
  br label %.loopexit8937

bb.ky:                                            ; preds = %bb.kv
  %i.bdg = sub nuw nsw i64 %i.anu, %i.bbz         ; 2 uses
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.bbz ; 2 uses
  %.not84.i189.i1912 = icmp eq i64 %i.anu, %i.bbz
  br i1 %.not84.i189.i1912, label %.invoke15902, label %bb.la

bb.kz:                                            ; preds = %bb.kv
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bbz, i64 noundef range(i64 0, 2305843009213693952) %i.anu, i64 noundef range(i64 0, 2305843009213693952) %i.anu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.lb unwind label %.loopexit.split-lp8940.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10162

bb.la:                                            ; preds = %bb.ky
  %i.bdi = load i32, ptr %i.bdh, align 4, !alias.scope !10171, !noundef !5
  br label %bb.lc

bb.lb:                                            ; preds = %.split11050.us, %bb.kz
  unreachable

bb.lc:                                            ; preds = %bb.la, %bb.lf
  %.sroa.055.0.i192.i191511043 = phi i64 [ 0, %bb.la ], [ %i.bdu, %bb.lf ] ; 3 uses
  %.sroa.035.0.i191.i191411042 = phi i32 [ %i.bdi, %bb.la ], [ %spec.select95.i194.i1917, %bb.lf ] ; 2 uses
  %.sroa.034.0.i190.i191311041 = phi i64 [ 0, %bb.la ], [ %spec.select.i193.i1916, %bb.lf ]
  %i.bdj = mul i64 %.sroa.055.0.i192.i191511043, %i.bap ; 3 uses
  %i.bdk = icmp ult i64 %i.bdj, %i.bdg
  br i1 %i.bdk, label %bb.lf, label %.invoke15902

bb.ld:                                            ; preds = %bb.lf
  %i.bdl = icmp ult i64 %i.bdd, %i.baw
  br i1 %i.bdl, label %bb.le, label %.invoke15902

bb.le:                                            ; preds = %bb.ld
  %i.bdm = trunc i64 %spec.select.i193.i1916 to i32
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.baz, i64 %i.bdd
  store i32 %i.bdm, ptr %i.bdn, align 4, !noalias !10162
  %i.bdo = load i64, ptr %i.en, align 8, !range !8, !alias.scope !10172, !noalias !10162, !noundef !5
  %i.bdp = load i64, ptr %i.bbo, align 8, !alias.scope !10172, !noalias !10162
  %i.bdq = trunc nuw i64 %i.bdo to i1
  br i1 %i.bdq, label %bb.ks, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2686

.invoke15902:                                     ; preds = %bb.ld, %bb.ky, %bb.lc
  %i.bdr = phi i64 [ %i.bdj, %bb.lc ], [ 0, %bb.ky ], [ %i.bdd, %bb.ld ]
  %i.bds = phi i64 [ %i.bdg, %bb.lc ], [ 0, %bb.ky ], [ %i.baw, %bb.ld ]
  %i.bdt = phi ptr [ @6, %bb.lc ], [ @4, %bb.ky ], [ @5, %bb.ld ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bdr, i64 noundef %i.bds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdt) #22
          to label %.cont15903 unwind label %.loopexit.split-lp8940.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10162

.cont15903:                                       ; preds = %.invoke15902
  unreachable

bb.lf:                                            ; preds = %bb.lc
  %i.bdu = add nuw i64 %.sroa.055.0.i192.i191511043, 1 ; 2 uses
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %i.bdj
  %i.bdw = load i32, ptr %i.bdv, align 4, !alias.scope !10171, !noundef !5 ; 2 uses
  %i.bdx = icmp ult i32 %.sroa.035.0.i191.i191411042, %i.bdw
  %spec.select.i193.i1916 = select i1 %i.bdx, i64 %.sroa.055.0.i192.i191511043, i64 %.sroa.034.0.i190.i191311041 ; 2 uses
  %spec.select95.i194.i1917 = call i32 @llvm.umax.i32(i32 %.sroa.035.0.i191.i191411042, i32 %i.bdw)
  %exitcond12917.not = icmp eq i64 %i.bdu, %i.bai
  br i1 %exitcond12917.not, label %bb.ld, label %bb.lc

bb.lg:                                            ; preds = %.loopexit.split-lp8940.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.kp, %bb.ki
  %i.bdy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10164
  unreachable

bb.lh:                                            ; preds = %bb.kl
  %i.bdz = sub nuw i64 %i.bbj, %i.bbh             ; 7 uses
  %.not86.i195.i1918 = icmp ugt i64 %i.bbj, %i.anu
  br i1 %.not86.i195.i1918, label %.invoke15900, label %bb.li, !prof !10

bb.li:                                            ; preds = %bb.lh
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.bbh ; 2 uses
  %.idx11249 = shl nuw nsw i64 %i.baw, 2
  %i.beb = getelementptr inbounds nuw i8, ptr %i.baz, i64 %.idx11249 ; 3 uses
  switch i64 %i.bap, label %.split11048 [
    i64 1, label %bb.lj
    i64 0, label %.split11048.us
  ]

bb.lj:                                            ; preds = %bb.li
  %i.bec = icmp eq i64 %i.baw, 0
  br i1 %i.bec, label %.loopexit8937, label %.lr.ph11059.preheader

.lr.ph11059.preheader:                            ; preds = %bb.lj
  %i.bed = add i64 %i.bai, 4611686018427387903
  %i.bee = and i64 %i.bed, 4611686018427387903    ; 2 uses
  %i.bef = add nuw nsw i64 %i.bee, 1              ; 2 uses
  %xtraiter19520 = and i64 %i.bef, 3              ; 3 uses
  %i.beg = icmp samesign ult i64 %i.bee, 3
  %unroll_iter19525 = and i64 %i.bef, 9223372036854775804
  %lcmp.mod19522.not = icmp eq i64 %xtraiter19520, 0
  %lcmp.mod19524 = icmp ne i64 %xtraiter19520, 0
  br label %.lr.ph11059

.split11048.us:                                   ; preds = %bb.li
  %i.beh = icmp eq i64 %i.baw, 0
  br i1 %i.beh, label %.loopexit8937, label %.split11050.us

.lr.ph11059:                                      ; preds = %.lr.ph11059.preheader, %.thread7206
  %.sroa.76362.011058 = phi i64 [ %i.bej, %.thread7206 ], [ 0, %.lr.ph11059.preheader ] ; 2 uses
  %.sroa.06360.011057 = phi ptr [ %i.bei, %.thread7206 ], [ %i.baz, %.lr.ph11059.preheader ] ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %.sroa.06360.011057, i64 4 ; 2 uses
  %i.bej = add nuw nsw i64 %.sroa.76362.011058, 1
  %i.bek = mul i64 %.sroa.76362.011058, %i.bai    ; 4 uses
  %i.bel = add i64 %i.bek, %i.bai                 ; 3 uses
  %i.bem = icmp ult i64 %i.bel, %i.bek
  %.not91.i209.i1932 = icmp ugt i64 %i.bel, %i.bdz
  %or.cond.i210.i1933 = select i1 %i.bem, i1 true, i1 %.not91.i209.i1932, !prof !7
  br i1 %or.cond.i210.i1933, label %.invoke15900, label %.lr.ph11055.preheader, !prof !7

.lr.ph11055.preheader:                            ; preds = %.lr.ph11059
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %i.bea, i64 %i.bek ; 3 uses
  %i.beo = load i32, ptr %i.ben, align 4, !alias.scope !10171, !noundef !5 ; 2 uses
  br i1 %i.beg, label %.lr.ph11055.epil.preheader, label %.lr.ph11055

.thread7206.unr-lcssa:                            ; preds = %.lr.ph11055
  br i1 %lcmp.mod19522.not, label %.thread7206, label %.lr.ph11055.epil.preheader

.lr.ph11055.epil.preheader:                       ; preds = %.thread7206.unr-lcssa, %.lr.ph11055.preheader
  %.sroa.04.0.i214.i193711054.epil.init = phi i32 [ 0, %.lr.ph11055.preheader ], [ %spec.select97.i217.i1940.3, %.thread7206.unr-lcssa ]
  %.sroa.05.0.i213.i193611053.epil.init = phi i32 [ %i.beo, %.lr.ph11055.preheader ], [ %spec.select96.i216.i1939.3, %.thread7206.unr-lcssa ]
  %.sroa.76365.011052.epil.init = phi i32 [ 0, %.lr.ph11055.preheader ], [ %i.bfg, %.thread7206.unr-lcssa ]
  %.sroa.06363.011051.epil.init = phi ptr [ %i.ben, %.lr.ph11055.preheader ], [ %i.bfh, %.thread7206.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19524)
  br label %.lr.ph11055.epil

.lr.ph11055.epil:                                 ; preds = %.lr.ph11055.epil, %.lr.ph11055.epil.preheader
  %.sroa.04.0.i214.i193711054.epil = phi i32 [ %spec.select97.i217.i1940.epil, %.lr.ph11055.epil ], [ %.sroa.04.0.i214.i193711054.epil.init, %.lr.ph11055.epil.preheader ]
  %.sroa.05.0.i213.i193611053.epil = phi i32 [ %spec.select96.i216.i1939.epil, %.lr.ph11055.epil ], [ %.sroa.05.0.i213.i193611053.epil.init, %.lr.ph11055.epil.preheader ] ; 2 uses
  %.sroa.76365.011052.epil = phi i32 [ %i.bep, %.lr.ph11055.epil ], [ %.sroa.76365.011052.epil.init, %.lr.ph11055.epil.preheader ] ; 2 uses
  %.sroa.06363.011051.epil = phi ptr [ %i.beq, %.lr.ph11055.epil ], [ %.sroa.06363.011051.epil.init, %.lr.ph11055.epil.preheader ] ; 2 uses
  %epil.iter19521 = phi i64 [ %epil.iter19521.next, %.lr.ph11055.epil ], [ 0, %.lr.ph11055.epil.preheader ]
  %i.bep = add i32 %.sroa.76365.011052.epil, 1
  %i.beq = getelementptr inbounds nuw i8, ptr %.sroa.06363.011051.epil, i64 4
  %i.ber = load i32, ptr %.sroa.06363.011051.epil, align 4, !noalias !10164, !noundef !5 ; 2 uses
  %i.bes = icmp ult i32 %.sroa.05.0.i213.i193611053.epil, %i.ber
  %spec.select96.i216.i1939.epil = tail call i32 @llvm.umax.i32(i32 %.sroa.05.0.i213.i193611053.epil, i32 %i.ber)
  %spec.select97.i217.i1940.epil = select i1 %i.bes, i32 %.sroa.76365.011052.epil, i32 %.sroa.04.0.i214.i193711054.epil ; 2 uses
  %epil.iter19521.next = add i64 %epil.iter19521, 1 ; 2 uses
  %epil.iter19521.cmp.not = icmp eq i64 %epil.iter19521.next, %xtraiter19520
  br i1 %epil.iter19521.cmp.not, label %.thread7206, label %.lr.ph11055.epil, !llvm.loop !9295

.thread7206:                                      ; preds = %.lr.ph11055.epil, %.thread7206.unr-lcssa
  %spec.select97.i217.i1940.lcssa = phi i32 [ %spec.select97.i217.i1940.3, %.thread7206.unr-lcssa ], [ %spec.select97.i217.i1940.epil, %.lr.ph11055.epil ]
  store i32 %spec.select97.i217.i1940.lcssa, ptr %.sroa.06360.011057, align 4, !noalias !10164
  %i.bet = icmp eq ptr %i.bei, %i.beb
  br i1 %i.bet, label %.loopexit8937, label %.lr.ph11059

.lr.ph11055:                                      ; preds = %.lr.ph11055.preheader, %.lr.ph11055
  %.sroa.04.0.i214.i193711054 = phi i32 [ %spec.select97.i217.i1940.3, %.lr.ph11055 ], [ 0, %.lr.ph11055.preheader ]
  %.sroa.05.0.i213.i193611053 = phi i32 [ %spec.select96.i216.i1939.3, %.lr.ph11055 ], [ %i.beo, %.lr.ph11055.preheader ] ; 2 uses
  %.sroa.76365.011052 = phi i32 [ %i.bfg, %.lr.ph11055 ], [ 0, %.lr.ph11055.preheader ] ; 5 uses
  %.sroa.06363.011051 = phi ptr [ %i.bfh, %.lr.ph11055 ], [ %i.ben, %.lr.ph11055.preheader ] ; 5 uses
  %niter19526 = phi i64 [ %niter19526.next.3, %.lr.ph11055 ], [ 0, %.lr.ph11055.preheader ]
  %i.beu = or disjoint i32 %.sroa.76365.011052, 1
  %i.bev = getelementptr inbounds nuw i8, ptr %.sroa.06363.011051, i64 4
  %i.bew = load i32, ptr %.sroa.06363.011051, align 4, !noalias !10164, !noundef !5 ; 2 uses
  %i.bex = icmp ult i32 %.sroa.05.0.i213.i193611053, %i.bew
  %spec.select96.i216.i1939 = tail call i32 @llvm.umax.i32(i32 %.sroa.05.0.i213.i193611053, i32 %i.bew) ; 2 uses
  %spec.select97.i217.i1940 = select i1 %i.bex, i32 %.sroa.76365.011052, i32 %.sroa.04.0.i214.i193711054
  %i.bey = or disjoint i32 %.sroa.76365.011052, 2
  %i.bez = getelementptr inbounds nuw i8, ptr %.sroa.06363.011051, i64 8
  %i.bfa = load i32, ptr %i.bev, align 4, !noalias !10164, !noundef !5 ; 2 uses
  %i.bfb = icmp ult i32 %spec.select96.i216.i1939, %i.bfa
  %spec.select96.i216.i1939.1 = tail call i32 @llvm.umax.i32(i32 %spec.select96.i216.i1939, i32 %i.bfa) ; 2 uses
  %spec.select97.i217.i1940.1 = select i1 %i.bfb, i32 %i.beu, i32 %spec.select97.i217.i1940
  %i.bfc = or disjoint i32 %.sroa.76365.011052, 3
  %i.bfd = getelementptr inbounds nuw i8, ptr %.sroa.06363.011051, i64 12
  %i.bfe = load i32, ptr %i.bez, align 4, !noalias !10164, !noundef !5 ; 2 uses
  %i.bff = icmp ult i32 %spec.select96.i216.i1939.1, %i.bfe
  %spec.select96.i216.i1939.2 = tail call i32 @llvm.umax.i32(i32 %spec.select96.i216.i1939.1, i32 %i.bfe) ; 2 uses
  %spec.select97.i217.i1940.2 = select i1 %i.bff, i32 %i.bey, i32 %spec.select97.i217.i1940.1
  %i.bfg = add nuw nsw i32 %.sroa.76365.011052, 4 ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sroa.06363.011051, i64 16 ; 2 uses
  %i.bfi = load i32, ptr %i.bfd, align 4, !noalias !10164, !noundef !5 ; 2 uses
  %i.bfj = icmp ult i32 %spec.select96.i216.i1939.2, %i.bfi
  %spec.select96.i216.i1939.3 = tail call i32 @llvm.umax.i32(i32 %spec.select96.i216.i1939.2, i32 %i.bfi) ; 2 uses
  %spec.select97.i217.i1940.3 = select i1 %i.bfj, i32 %i.bfc, i32 %spec.select97.i217.i1940.2 ; 3 uses
  %niter19526.next.3 = add i64 %niter19526, 4     ; 2 uses
  %niter19526.ncmp.3 = icmp eq i64 %niter19526.next.3, %unroll_iter19525
  br i1 %niter19526.ncmp.3, label %.thread7206.unr-lcssa, label %.lr.ph11055

.split11048:                                      ; preds = %bb.li, %bb.lq
  %.sroa.06366.0 = phi ptr [ %.sroa.06366.1, %bb.lq ], [ %i.baz, %bb.li ] ; 3 uses
  %.sroa.76368.0 = phi i64 [ %.sroa.76368.1, %bb.lq ], [ 0, %bb.li ] ; 3 uses
  %i.bfk = icmp eq ptr %.sroa.06366.0, %i.beb
  br i1 %i.bfk, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %.split11048
  %i.bfl = getelementptr inbounds nuw i8, ptr %.sroa.06366.0, i64 4
  %i.bfm = add i64 %.sroa.76368.0, 1
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.split11048
  %.sroa.06366.1 = phi ptr [ %i.beb, %.split11048 ], [ %i.bfl, %bb.lk ]
  %.sroa.76368.1 = phi i64 [ %.sroa.76368.0, %.split11048 ], [ %i.bfm, %bb.lk ]
  %.sroa.2.0.i2693 = phi ptr [ null, %.split11048 ], [ %.sroa.06366.0, %bb.lk ]
  %.sroa.0.0.i2694 = phi i64 [ undef, %.split11048 ], [ %.sroa.76368.0, %bb.lk ]
  %i.bfn = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2694, 0
  %i.bfo = insertvalue { i64, ptr } %i.bfn, ptr %.sroa.2.0.i2693, 1
  %.fr88.i198.i1921 = freeze { i64, ptr } %i.bfo  ; 2 uses
  %i.bfp = extractvalue { i64, ptr } %.fr88.i198.i1921, 1 ; 2 uses
  %.not87.i199.i1922 = icmp eq ptr %i.bfp, null
  br i1 %.not87.i199.i1922, label %.loopexit8937, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bfq = extractvalue { i64, ptr } %.fr88.i198.i1921, 0 ; 2 uses
  %i.bfr = urem i64 %i.bfq, %i.bap                ; 2 uses
  %i.bfs = sub nuw i64 %i.bfq, %i.bfr
  %i.bft = mul i64 %i.bfs, %i.bai
  %i.bfu = add i64 %i.bft, %i.bfr                 ; 5 uses
  %i.bfv = icmp ugt i64 %i.bfu, %i.bdz
  br i1 %i.bfv, label %.invoke15900, label %bb.ln, !prof !10

.split11050.us:                                   ; preds = %.split11048.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.lb unwind label %bb.kj, !noalias !10162

bb.ln:                                            ; preds = %bb.lm
  %i.bfw = sub nuw i64 %i.bdz, %i.bfu             ; 2 uses
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bea, i64 %i.bfu ; 2 uses
  %.not89.i200.i1923 = icmp eq i64 %i.bdz, %i.bfu
  br i1 %.not89.i200.i1923, label %.invoke15898, label %bb.lo

.invoke15900:                                     ; preds = %.lr.ph11059, %bb.lm, %bb.kl, %bb.lh
  %i.bfy = phi i64 [ %i.bfu, %bb.lm ], [ %i.bbh, %bb.kl ], [ %i.bbh, %bb.lh ], [ %i.bek, %.lr.ph11059 ]
  %i.bfz = phi i64 [ %i.bdz, %bb.lm ], [ %i.bbj, %bb.kl ], [ %i.bbj, %bb.lh ], [ %i.bel, %.lr.ph11059 ]
  %i.bga = phi i64 [ %i.bdz, %bb.lm ], [ %i.anu, %bb.kl ], [ %i.anu, %bb.lh ], [ %i.bdz, %.lr.ph11059 ]
  %i.bgb = phi ptr [ @12, %bb.lm ], [ @13, %bb.kl ], [ @13, %bb.lh ], [ @8, %.lr.ph11059 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bfy, i64 noundef %i.bfz, i64 noundef %i.bga, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bgb) #22
          to label %.cont15901 unwind label %bb.kj, !noalias !10162

.cont15901:                                       ; preds = %.invoke15900
  unreachable

bb.lo:                                            ; preds = %bb.ln
  %i.bgc = load i32, ptr %i.bfx, align 4, !alias.scope !10171, !noundef !5
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.lr
  %.sroa.044.0.i203.i192611047 = phi i64 [ 0, %bb.lo ], [ %i.bgj, %bb.lr ] ; 3 uses
  %.sroa.021.0.i202.i192511046 = phi i64 [ 0, %bb.lo ], [ %spec.select99.i205.i1928, %bb.lr ]
  %.sroa.022.0.i201.i192411045 = phi i32 [ %i.bgc, %bb.lo ], [ %spec.select98.i204.i1927, %bb.lr ] ; 2 uses
  %i.bgd = mul i64 %.sroa.044.0.i203.i192611047, %i.bap ; 3 uses
  %i.bge = icmp ult i64 %i.bgd, %i.bfw
  br i1 %i.bge, label %bb.lr, label %.invoke15898

bb.lq:                                            ; preds = %bb.lr
  %i.bgf = trunc i64 %spec.select99.i205.i1928 to i32
  store i32 %i.bgf, ptr %i.bfp, align 4, !noalias !10162
  br label %.split11048

.invoke15898:                                     ; preds = %bb.ln, %bb.lp
  %i.bgg = phi i64 [ %i.bgd, %bb.lp ], [ 0, %bb.ln ]
  %i.bgh = phi i64 [ %i.bfw, %bb.lp ], [ 0, %bb.ln ]
  %i.bgi = phi ptr [ @11, %bb.lp ], [ @10, %bb.ln ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bgg, i64 noundef %i.bgh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bgi) #22
          to label %.cont15899 unwind label %bb.kj, !noalias !10162

.cont15899:                                       ; preds = %.invoke15898
  unreachable

bb.lr:                                            ; preds = %bb.lp
  %i.bgj = add nuw i64 %.sroa.044.0.i203.i192611047, 1 ; 2 uses
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %i.bgd
  %i.bgl = load i32, ptr %i.bgk, align 4, !alias.scope !10171, !noundef !5 ; 2 uses
  %i.bgm = icmp ult i32 %.sroa.022.0.i201.i192411045, %i.bgl
  %spec.select98.i204.i1927 = tail call i32 @llvm.umax.i32(i32 %.sroa.022.0.i201.i192411045, i32 %i.bgl)
  %spec.select99.i205.i1928 = select i1 %i.bgm, i64 %.sroa.044.0.i203.i192611047, i64 %.sroa.021.0.i202.i192511046 ; 2 uses
  %exitcond12918.not = icmp eq i64 %i.bgj, %i.bai
  br i1 %exitcond12918.not, label %bb.lq, label %bb.lp

bb.ls:                                            ; preds = %bb.gk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10175)
  %i.bgn = load i64, ptr %i.aod, align 8, !alias.scope !10176, !noundef !5 ; 2 uses
  %i.bgo = load i64, ptr %1, align 8, !alias.scope !10177, !noundef !5 ; 7 uses
  %i.bgp = icmp ult i64 %i.bgo, %i.bgn
  br i1 %i.bgp, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.bgq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bgr = load ptr, ptr %i.bgq, align 8, !alias.scope !10176, !nonnull !5, !noundef !5
  %i.bgs = getelementptr inbounds nuw [8 x i8], ptr %i.bgr, i64 %i.bgo
  %i.bgt = load i64, ptr %i.bgs, align 8, !noalias !10178, !noundef !5 ; 8 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bgv = load i64, ptr %i.bgu, align 8, !alias.scope !10176, !noundef !5 ; 2 uses
  %i.bgw = icmp ult i64 %i.bgo, %i.bgv
  br i1 %i.bgw, label %bb.lv, label %bb.lw

bb.lu:                                            ; preds = %bb.ls
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bgo, i64 noundef %i.bgn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10178
  unreachable

bb.lv:                                            ; preds = %bb.lt
  %i.bgx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bgy = load ptr, ptr %i.bgx, align 8, !alias.scope !10176, !nonnull !5, !noundef !5
  %i.bgz = getelementptr inbounds nuw [8 x i8], ptr %i.bgy, i64 %i.bgo
  %i.bha = load i64, ptr %i.bgz, align 8, !noalias !10178, !noundef !5 ; 4 uses
  %i.bhb = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10178
  %i.bhc = icmp eq i64 %i.bgt, 0
  br i1 %i.bhc, label %bb.ly, label %bb.lx

bb.lw:                                            ; preds = %bb.lt
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bgo, i64 noundef %i.bgv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10178
  unreachable

bb.lx:                                            ; preds = %bb.lv
  %i.bhd = udiv i64 %i.bhb, %i.bgt                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez), !noalias !10179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !10179
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.et, i64 noundef %i.bhd, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10178
  %i.bhe = load i64, ptr %i.et, align 8, !range !8, !noalias !10179, !noundef !5
  %i.bhf = trunc nuw i64 %i.bhe to i1
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.bhh = load i64, ptr %i.bhg, align 8, !range !12, !noalias !10179, !noundef !5 ; 8 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  br i1 %i.bhf, label %bb.lz, label %bb.ma, !prof !10

bb.ly:                                            ; preds = %bb.lv
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10178
  unreachable

bb.lz:                                            ; preds = %bb.lx
  %i.bhj = load i64, ptr %i.bhi, align 8, !noalias !10179
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bhh, i64 %i.bhj) #22, !noalias !10178
  unreachable

bb.ma:                                            ; preds = %bb.lx
  %i.bhk = load ptr, ptr %i.bhi, align 8, !noalias !10179, !nonnull !5, !noundef !5 ; 5 uses
  %i.bhl = icmp ule i64 %i.bhd, %i.bhh
  tail call void @llvm.assume(i1 %i.bhl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et), !noalias !10179
  store i64 %i.bhh, ptr %i.ez, align 16, !noalias !10179
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.bhk, ptr %i.bhm, align 8, !noalias !10179
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 0, ptr %i.bhn, align 16, !noalias !10179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !10179
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ey, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.md unwind label %bb.mc, !noalias !10178

bb.mb:                                            ; preds = %bb.mi, %bb.mc
  %.pn93.i131.i1941 = phi { ptr, i32 } [ %i.bho, %bb.mc ], [ %.pn.i138.i1954, %bb.mi ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ez) #20
          to label %common.resume unwind label %bb.mz, !noalias !10180

bb.mc:                                            ; preds = %.invoke15906, %.invoke15904, %.split11069.us, %bb.mp, %bb.mf, %bb.ma
  %i.bho = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.md:                                            ; preds = %bb.ma
  %i.bhp = load i64, ptr %i.ey, align 8, !range !8, !noalias !10179, !noundef !5
  %i.bhq = trunc nuw i64 %i.bhp to i1
  br i1 %i.bhq, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.bhs = load i64, ptr %i.bhr, align 8, !noalias !10179, !noundef !5 ; 5 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.bhu = load i64, ptr %i.bht, align 8, !noalias !10179, !noundef !5 ; 5 uses
  %i.bhv = icmp ult i64 %i.bhu, %i.bhs
  br i1 %i.bhv, label %.invoke15906, label %bb.na, !prof !10

bb.mf:                                            ; preds = %bb.md
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !10179
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.i129.i1745.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !10179
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ew, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.bgo, i64 noundef 0, i64 noundef 1)
          to label %bb.mg unwind label %bb.mc, !noalias !10178

end_hunk_2
begin_hunk_3_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18029 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.eu) #20
          to label %bb.mi unwind label %bb.mz, !noalias !10178

bb.mo:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2708, %bb.mn
  %.sroa.6.0.i.i2709 = phi i64 [ %i.bjn, %bb.mn ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2708 ]
  %.sroa.08.0.i.i2710 = phi i64 [ 1, %bb.mn ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2708 ]
  store i64 %.sroa.08.0.i.i2710, ptr %i.eu, align 8, !alias.scope !10185, !noalias !10178
  store i64 %.sroa.6.0.i.i2709, ptr %i.bhz, align 8, !alias.scope !10185, !noalias !10178
  %i.bjo = load i64, ptr %.sroa.233.0..sroa_idx.i139.i1955, align 8, !alias.scope !10182, !noalias !10178, !noundef !5 ; 4 uses
  %i.bjp = add i64 %i.bjo, 1
  store i64 %i.bjp, ptr %.sroa.233.0..sroa_idx.i139.i1955, align 8, !alias.scope !10182, !noalias !10178
  %i.bjq = icmp ugt i64 %i.bik, %i.anu
  br i1 %i.bjq, label %bb.ms, label %bb.mr, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2717: ; preds = %bb.mx, %bb.mk
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.eu)
          to label %bb.mp unwind label %bb.mj, !noalias !10178

bb.mp:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu), !noalias !10179
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ex)
          to label %bb.mq unwind label %bb.mc, !noalias !10178

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !10179
  br label %.loopexit8930

bb.mr:                                            ; preds = %bb.mo
  %i.bjr = sub nuw nsw i64 %i.anu, %i.bik         ; 2 uses
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.bik ; 2 uses
  %.not84.i140.i1956 = icmp eq i64 %i.anu, %i.bik
  br i1 %.not84.i140.i1956, label %.invoke15908, label %bb.mt

bb.ms:                                            ; preds = %bb.mo
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bik, i64 noundef range(i64 0, 2305843009213693952) %i.anu, i64 noundef range(i64 0, 2305843009213693952) %i.anu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.mu unwind label %.loopexit.split-lp8933.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10178

bb.mt:                                            ; preds = %bb.mr
  %i.bjt = load i32, ptr %i.bjs, align 4, !alias.scope !10187, !noundef !5
  br label %bb.mv

bb.mu:                                            ; preds = %.split11069.us, %bb.ms
  unreachable

bb.mv:                                            ; preds = %bb.mt, %bb.my
  %.sroa.055.0.i143.i195911062 = phi i64 [ 0, %bb.mt ], [ %i.bkf, %bb.my ] ; 3 uses
  %.sroa.035.0.i142.i195811061 = phi i32 [ %i.bjt, %bb.mt ], [ %spec.select95.i145.i1961, %bb.my ] ; 2 uses
  %.sroa.034.0.i141.i195711060 = phi i64 [ 0, %bb.mt ], [ %spec.select.i144.i1960, %bb.my ]
  %i.bju = mul i64 %.sroa.055.0.i143.i195911062, %i.bha ; 3 uses
  %i.bjv = icmp ult i64 %i.bju, %i.bjr
  br i1 %i.bjv, label %bb.my, label %.invoke15908

bb.mw:                                            ; preds = %bb.my
  %i.bjw = icmp ult i64 %i.bjo, %i.bhh
  br i1 %i.bjw, label %bb.mx, label %.invoke15908

bb.mx:                                            ; preds = %bb.mw
  %i.bjx = trunc i64 %spec.select.i144.i1960 to i32
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bhk, i64 %i.bjo
  store i32 %i.bjx, ptr %i.bjy, align 4, !noalias !10178
  %i.bjz = load i64, ptr %i.eu, align 8, !range !8, !alias.scope !10188, !noalias !10178, !noundef !5
  %i.bka = load i64, ptr %i.bhz, align 8, !alias.scope !10188, !noalias !10178
  %i.bkb = trunc nuw i64 %i.bjz to i1
  br i1 %i.bkb, label %bb.ml, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2717

.invoke15908:                                     ; preds = %bb.mw, %bb.mr, %bb.mv
  %i.bkc = phi i64 [ %i.bju, %bb.mv ], [ 0, %bb.mr ], [ %i.bjo, %bb.mw ]
  %i.bkd = phi i64 [ %i.bjr, %bb.mv ], [ 0, %bb.mr ], [ %i.bhh, %bb.mw ]
  %i.bke = phi ptr [ @6, %bb.mv ], [ @4, %bb.mr ], [ @5, %bb.mw ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bkc, i64 noundef %i.bkd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bke) #22
          to label %.cont15909 unwind label %.loopexit.split-lp8933.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10178

.cont15909:                                       ; preds = %.invoke15908
  unreachable

bb.my:                                            ; preds = %bb.mv
  %i.bkf = add nuw i64 %.sroa.055.0.i143.i195911062, 1 ; 2 uses
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.bju
  %i.bkh = load i32, ptr %i.bkg, align 4, !alias.scope !10187, !noundef !5 ; 2 uses
  %i.bki = icmp ugt i32 %.sroa.035.0.i142.i195811061, %i.bkh
  %spec.select.i144.i1960 = select i1 %i.bki, i64 %.sroa.055.0.i143.i195911062, i64 %.sroa.034.0.i141.i195711060 ; 2 uses
  %spec.select95.i145.i1961 = call i32 @llvm.umin.i32(i32 %.sroa.035.0.i142.i195811061, i32 %i.bkh)
  %exitcond12919.not = icmp eq i64 %i.bkf, %i.bgt
  br i1 %exitcond12919.not, label %bb.mw, label %bb.mv

bb.mz:                                            ; preds = %.loopexit.split-lp8933.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.mi, %bb.mb
  %i.bkj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10180
  unreachable

bb.na:                                            ; preds = %bb.me
  %i.bkk = sub nuw i64 %i.bhu, %i.bhs             ; 7 uses
  %.not86.i146.i1962 = icmp ugt i64 %i.bhu, %i.anu
  br i1 %.not86.i146.i1962, label %.invoke15906, label %bb.nb, !prof !10

bb.nb:                                            ; preds = %bb.na
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.bhs ; 2 uses
  %.idx11252 = shl nuw nsw i64 %i.bhh, 2
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bhk, i64 %.idx11252 ; 3 uses
  switch i64 %i.bha, label %.split11067 [
    i64 1, label %bb.nc
    i64 0, label %.split11067.us
  ]

bb.nc:                                            ; preds = %bb.nb
  %i.bkn = icmp eq i64 %i.bhh, 0
  br i1 %i.bkn, label %.loopexit8930, label %.lr.ph11078.preheader

.lr.ph11078.preheader:                            ; preds = %bb.nc
  %i.bko = add i64 %i.bgt, 4611686018427387903
  %i.bkp = and i64 %i.bko, 4611686018427387903    ; 2 uses
  %i.bkq = add nuw nsw i64 %i.bkp, 1              ; 2 uses
  %xtraiter19527 = and i64 %i.bkq, 3              ; 3 uses
  %i.bkr = icmp samesign ult i64 %i.bkp, 3
  %unroll_iter19532 = and i64 %i.bkq, 9223372036854775804
  %lcmp.mod19529.not = icmp eq i64 %xtraiter19527, 0
  %lcmp.mod19531 = icmp ne i64 %xtraiter19527, 0
  br label %.lr.ph11078

.split11067.us:                                   ; preds = %bb.nb
  %i.bks = icmp eq i64 %i.bhh, 0
  br i1 %i.bks, label %.loopexit8930, label %.split11069.us

.lr.ph11078:                                      ; preds = %.lr.ph11078.preheader, %.thread7232
  %.sroa.76325.011077 = phi i64 [ %i.bku, %.thread7232 ], [ 0, %.lr.ph11078.preheader ] ; 2 uses
  %.sroa.06323.011076 = phi ptr [ %i.bkt, %.thread7232 ], [ %i.bhk, %.lr.ph11078.preheader ] ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %.sroa.06323.011076, i64 4 ; 2 uses
  %i.bku = add nuw nsw i64 %.sroa.76325.011077, 1
  %i.bkv = mul i64 %.sroa.76325.011077, %i.bgt    ; 4 uses
  %i.bkw = add i64 %i.bkv, %i.bgt                 ; 3 uses
  %i.bkx = icmp ult i64 %i.bkw, %i.bkv
  %.not91.i160.i1976 = icmp ugt i64 %i.bkw, %i.bkk
  %or.cond.i161.i1977 = select i1 %i.bkx, i1 true, i1 %.not91.i160.i1976, !prof !7
  br i1 %or.cond.i161.i1977, label %.invoke15906, label %.lr.ph11074.preheader, !prof !7

.lr.ph11074.preheader:                            ; preds = %.lr.ph11078
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %i.bkv ; 3 uses
  %i.bkz = load i32, ptr %i.bky, align 4, !alias.scope !10187, !noundef !5 ; 2 uses
  br i1 %i.bkr, label %.lr.ph11074.epil.preheader, label %.lr.ph11074

.thread7232.unr-lcssa:                            ; preds = %.lr.ph11074
  br i1 %lcmp.mod19529.not, label %.thread7232, label %.lr.ph11074.epil.preheader

.lr.ph11074.epil.preheader:                       ; preds = %.thread7232.unr-lcssa, %.lr.ph11074.preheader
  %.sroa.04.0.i165.i198111073.epil.init = phi i32 [ 0, %.lr.ph11074.preheader ], [ %spec.select97.i168.i1984.3, %.thread7232.unr-lcssa ]
  %.sroa.05.0.i164.i198011072.epil.init = phi i32 [ %i.bkz, %.lr.ph11074.preheader ], [ %spec.select96.i167.i1983.3, %.thread7232.unr-lcssa ]
  %.sroa.76328.011071.epil.init = phi i32 [ 0, %.lr.ph11074.preheader ], [ %i.blr, %.thread7232.unr-lcssa ]
  %.sroa.06326.011070.epil.init = phi ptr [ %i.bky, %.lr.ph11074.preheader ], [ %i.bls, %.thread7232.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19531)
  br label %.lr.ph11074.epil

.lr.ph11074.epil:                                 ; preds = %.lr.ph11074.epil, %.lr.ph11074.epil.preheader
  %.sroa.04.0.i165.i198111073.epil = phi i32 [ %spec.select97.i168.i1984.epil, %.lr.ph11074.epil ], [ %.sroa.04.0.i165.i198111073.epil.init, %.lr.ph11074.epil.preheader ]
  %.sroa.05.0.i164.i198011072.epil = phi i32 [ %spec.select96.i167.i1983.epil, %.lr.ph11074.epil ], [ %.sroa.05.0.i164.i198011072.epil.init, %.lr.ph11074.epil.preheader ] ; 2 uses
  %.sroa.76328.011071.epil = phi i32 [ %i.bla, %.lr.ph11074.epil ], [ %.sroa.76328.011071.epil.init, %.lr.ph11074.epil.preheader ] ; 2 uses
  %.sroa.06326.011070.epil = phi ptr [ %i.blb, %.lr.ph11074.epil ], [ %.sroa.06326.011070.epil.init, %.lr.ph11074.epil.preheader ] ; 2 uses
  %epil.iter19528 = phi i64 [ %epil.iter19528.next, %.lr.ph11074.epil ], [ 0, %.lr.ph11074.epil.preheader ]
  %i.bla = add i32 %.sroa.76328.011071.epil, 1
  %i.blb = getelementptr inbounds nuw i8, ptr %.sroa.06326.011070.epil, i64 4
  %i.blc = load i32, ptr %.sroa.06326.011070.epil, align 4, !noalias !10180, !noundef !5 ; 2 uses
  %i.bld = icmp ugt i32 %.sroa.05.0.i164.i198011072.epil, %i.blc
  %spec.select96.i167.i1983.epil = tail call i32 @llvm.umin.i32(i32 %.sroa.05.0.i164.i198011072.epil, i32 %i.blc)
  %spec.select97.i168.i1984.epil = select i1 %i.bld, i32 %.sroa.76328.011071.epil, i32 %.sroa.04.0.i165.i198111073.epil ; 2 uses
  %epil.iter19528.next = add i64 %epil.iter19528, 1 ; 2 uses
  %epil.iter19528.cmp.not = icmp eq i64 %epil.iter19528.next, %xtraiter19527
  br i1 %epil.iter19528.cmp.not, label %.thread7232, label %.lr.ph11074.epil, !llvm.loop !9317

.thread7232:                                      ; preds = %.lr.ph11074.epil, %.thread7232.unr-lcssa
  %spec.select97.i168.i1984.lcssa = phi i32 [ %spec.select97.i168.i1984.3, %.thread7232.unr-lcssa ], [ %spec.select97.i168.i1984.epil, %.lr.ph11074.epil ]
  store i32 %spec.select97.i168.i1984.lcssa, ptr %.sroa.06323.011076, align 4, !noalias !10180
  %i.ble = icmp eq ptr %i.bkt, %i.bkm
  br i1 %i.ble, label %.loopexit8930, label %.lr.ph11078

.lr.ph11074:                                      ; preds = %.lr.ph11074.preheader, %.lr.ph11074
  %.sroa.04.0.i165.i198111073 = phi i32 [ %spec.select97.i168.i1984.3, %.lr.ph11074 ], [ 0, %.lr.ph11074.preheader ]
  %.sroa.05.0.i164.i198011072 = phi i32 [ %spec.select96.i167.i1983.3, %.lr.ph11074 ], [ %i.bkz, %.lr.ph11074.preheader ] ; 2 uses
  %.sroa.76328.011071 = phi i32 [ %i.blr, %.lr.ph11074 ], [ 0, %.lr.ph11074.preheader ] ; 5 uses
  %.sroa.06326.011070 = phi ptr [ %i.bls, %.lr.ph11074 ], [ %i.bky, %.lr.ph11074.preheader ] ; 5 uses
  %niter19533 = phi i64 [ %niter19533.next.3, %.lr.ph11074 ], [ 0, %.lr.ph11074.preheader ]
  %i.blf = or disjoint i32 %.sroa.76328.011071, 1
  %i.blg = getelementptr inbounds nuw i8, ptr %.sroa.06326.011070, i64 4
  %i.blh = load i32, ptr %.sroa.06326.011070, align 4, !noalias !10180, !noundef !5 ; 2 uses
  %i.bli = icmp ugt i32 %.sroa.05.0.i164.i198011072, %i.blh
  %spec.select96.i167.i1983 = tail call i32 @llvm.umin.i32(i32 %.sroa.05.0.i164.i198011072, i32 %i.blh) ; 2 uses
  %spec.select97.i168.i1984 = select i1 %i.bli, i32 %.sroa.76328.011071, i32 %.sroa.04.0.i165.i198111073
  %i.blj = or disjoint i32 %.sroa.76328.011071, 2
  %i.blk = getelementptr inbounds nuw i8, ptr %.sroa.06326.011070, i64 8
  %i.bll = load i32, ptr %i.blg, align 4, !noalias !10180, !noundef !5 ; 2 uses
  %i.blm = icmp ugt i32 %spec.select96.i167.i1983, %i.bll
  %spec.select96.i167.i1983.1 = tail call i32 @llvm.umin.i32(i32 %spec.select96.i167.i1983, i32 %i.bll) ; 2 uses
  %spec.select97.i168.i1984.1 = select i1 %i.blm, i32 %i.blf, i32 %spec.select97.i168.i1984
  %i.bln = or disjoint i32 %.sroa.76328.011071, 3
  %i.blo = getelementptr inbounds nuw i8, ptr %.sroa.06326.011070, i64 12
  %i.blp = load i32, ptr %i.blk, align 4, !noalias !10180, !noundef !5 ; 2 uses
  %i.blq = icmp ugt i32 %spec.select96.i167.i1983.1, %i.blp
  %spec.select96.i167.i1983.2 = tail call i32 @llvm.umin.i32(i32 %spec.select96.i167.i1983.1, i32 %i.blp) ; 2 uses
  %spec.select97.i168.i1984.2 = select i1 %i.blq, i32 %i.blj, i32 %spec.select97.i168.i1984.1
  %i.blr = add nuw nsw i32 %.sroa.76328.011071, 4 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %.sroa.06326.011070, i64 16 ; 2 uses
  %i.blt = load i32, ptr %i.blo, align 4, !noalias !10180, !noundef !5 ; 2 uses
  %i.blu = icmp ugt i32 %spec.select96.i167.i1983.2, %i.blt
  %spec.select96.i167.i1983.3 = tail call i32 @llvm.umin.i32(i32 %spec.select96.i167.i1983.2, i32 %i.blt) ; 2 uses
  %spec.select97.i168.i1984.3 = select i1 %i.blu, i32 %i.bln, i32 %spec.select97.i168.i1984.2 ; 3 uses
  %niter19533.next.3 = add i64 %niter19533, 4     ; 2 uses
  %niter19533.ncmp.3 = icmp eq i64 %niter19533.next.3, %unroll_iter19532
  br i1 %niter19533.ncmp.3, label %.thread7232.unr-lcssa, label %.lr.ph11074

.split11067:                                      ; preds = %bb.nb, %bb.nj
  %.sroa.06329.0 = phi ptr [ %.sroa.06329.1, %bb.nj ], [ %i.bhk, %bb.nb ] ; 3 uses
  %.sroa.76331.0 = phi i64 [ %.sroa.76331.1, %bb.nj ], [ 0, %bb.nb ] ; 3 uses
  %i.blv = icmp eq ptr %.sroa.06329.0, %i.bkm
  br i1 %i.blv, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %.split11067
  %i.blw = getelementptr inbounds nuw i8, ptr %.sroa.06329.0, i64 4
  %i.blx = add i64 %.sroa.76331.0, 1
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %.split11067
  %.sroa.06329.1 = phi ptr [ %i.bkm, %.split11067 ], [ %i.blw, %bb.nd ]
  %.sroa.76331.1 = phi i64 [ %.sroa.76331.0, %.split11067 ], [ %i.blx, %bb.nd ]
  %.sroa.2.0.i2724 = phi ptr [ null, %.split11067 ], [ %.sroa.06329.0, %bb.nd ]
  %.sroa.0.0.i2725 = phi i64 [ undef, %.split11067 ], [ %.sroa.76331.0, %bb.nd ]
  %i.bly = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2725, 0
  %i.blz = insertvalue { i64, ptr } %i.bly, ptr %.sroa.2.0.i2724, 1
  %.fr88.i149.i1965 = freeze { i64, ptr } %i.blz  ; 2 uses
  %i.bma = extractvalue { i64, ptr } %.fr88.i149.i1965, 1 ; 2 uses
  %.not87.i150.i1966 = icmp eq ptr %i.bma, null
  br i1 %.not87.i150.i1966, label %.loopexit8930, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.bmb = extractvalue { i64, ptr } %.fr88.i149.i1965, 0 ; 2 uses
  %i.bmc = urem i64 %i.bmb, %i.bha                ; 2 uses
  %i.bmd = sub nuw i64 %i.bmb, %i.bmc
  %i.bme = mul i64 %i.bmd, %i.bgt
  %i.bmf = add i64 %i.bme, %i.bmc                 ; 5 uses
  %i.bmg = icmp ugt i64 %i.bmf, %i.bkk
  br i1 %i.bmg, label %.invoke15906, label %bb.ng, !prof !10

.split11069.us:                                   ; preds = %.split11067.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.mu unwind label %bb.mc, !noalias !10178

bb.ng:                                            ; preds = %bb.nf
  %i.bmh = sub nuw i64 %i.bkk, %i.bmf             ; 2 uses
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %i.bmf ; 2 uses
  %.not89.i151.i1967 = icmp eq i64 %i.bkk, %i.bmf
  br i1 %.not89.i151.i1967, label %.invoke15904, label %bb.nh

.invoke15906:                                     ; preds = %.lr.ph11078, %bb.nf, %bb.me, %bb.na
  %i.bmj = phi i64 [ %i.bmf, %bb.nf ], [ %i.bhs, %bb.me ], [ %i.bhs, %bb.na ], [ %i.bkv, %.lr.ph11078 ]
  %i.bmk = phi i64 [ %i.bkk, %bb.nf ], [ %i.bhu, %bb.me ], [ %i.bhu, %bb.na ], [ %i.bkw, %.lr.ph11078 ]
  %i.bml = phi i64 [ %i.bkk, %bb.nf ], [ %i.anu, %bb.me ], [ %i.anu, %bb.na ], [ %i.bkk, %.lr.ph11078 ]
  %i.bmm = phi ptr [ @12, %bb.nf ], [ @13, %bb.me ], [ @13, %bb.na ], [ @8, %.lr.ph11078 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bmj, i64 noundef %i.bmk, i64 noundef %i.bml, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bmm) #22
          to label %.cont15907 unwind label %bb.mc, !noalias !10178

.cont15907:                                       ; preds = %.invoke15906
  unreachable

bb.nh:                                            ; preds = %bb.ng
  %i.bmn = load i32, ptr %i.bmi, align 4, !alias.scope !10187, !noundef !5
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.nk
  %.sroa.044.0.i154.i197011066 = phi i64 [ 0, %bb.nh ], [ %i.bmu, %bb.nk ] ; 3 uses
  %.sroa.021.0.i153.i196911065 = phi i64 [ 0, %bb.nh ], [ %spec.select99.i156.i1972, %bb.nk ]
  %.sroa.022.0.i152.i196811064 = phi i32 [ %i.bmn, %bb.nh ], [ %spec.select98.i155.i1971, %bb.nk ] ; 2 uses
  %i.bmo = mul i64 %.sroa.044.0.i154.i197011066, %i.bha ; 3 uses
  %i.bmp = icmp ult i64 %i.bmo, %i.bmh
  br i1 %i.bmp, label %bb.nk, label %.invoke15904

bb.nj:                                            ; preds = %bb.nk
  %i.bmq = trunc i64 %spec.select99.i156.i1972 to i32
  store i32 %i.bmq, ptr %i.bma, align 4, !noalias !10178
  br label %.split11067

.invoke15904:                                     ; preds = %bb.ng, %bb.ni
  %i.bmr = phi i64 [ %i.bmo, %bb.ni ], [ 0, %bb.ng ]
  %i.bms = phi i64 [ %i.bmh, %bb.ni ], [ 0, %bb.ng ]
  %i.bmt = phi ptr [ @11, %bb.ni ], [ @10, %bb.ng ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bmr, i64 noundef %i.bms, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bmt) #22
          to label %.cont15905 unwind label %bb.mc, !noalias !10178

.cont15905:                                       ; preds = %.invoke15904
  unreachable

bb.nk:                                            ; preds = %bb.ni
  %i.bmu = add nuw i64 %.sroa.044.0.i154.i197011066, 1 ; 2 uses
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.bmi, i64 %i.bmo
  %i.bmw = load i32, ptr %i.bmv, align 4, !alias.scope !10187, !noundef !5 ; 2 uses
  %i.bmx = icmp ugt i32 %.sroa.022.0.i152.i196811064, %i.bmw
  %spec.select98.i155.i1971 = tail call i32 @llvm.umin.i32(i32 %.sroa.022.0.i152.i196811064, i32 %i.bmw)
  %spec.select99.i156.i1972 = select i1 %i.bmx, i64 %.sroa.044.0.i154.i197011066, i64 %.sroa.021.0.i153.i196911065 ; 2 uses
  %exitcond12920.not = icmp eq i64 %i.bmu, %i.bgt
  br i1 %exitcond12920.not, label %bb.nj, label %bb.ni

bb.nl:                                            ; preds = %bb.kn
  %.sroa.551.0..sroa_idx.i184.i1901 = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %.sroa.76118.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76118.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i184.i1901, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !10163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i178.i1734.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i178.i1734.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !10163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !10163
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.es), !noalias !10162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !noalias !10163
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit.thread7261

.loopexit8937:                                    ; preds = %.thread7206, %bb.ll, %.split11048.us, %bb.lj, %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !10163
  %i.bmy = load <2 x i64>, ptr %i.es, align 16, !noalias !10163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !noalias !10163
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit.thread

bb.nm:                                            ; preds = %bb.mg
  %.sroa.551.0..sroa_idx.i135.i1945 = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %.sroa.76115.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76115.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i135.i1945, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !10179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i129.i1745.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i129.i1745.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !10179
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ez), !noalias !10178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !10179
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit.thread7261

.loopexit8930:                                    ; preds = %.thread7232, %bb.ne, %.split11067.us, %bb.nc, %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !10179
  %i.bmz = load <2 x i64>, ptr %i.ez, align 16, !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !10179
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit.thread

_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit: ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !10189
  %i.bna = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr @42, ptr %i.bna, align 8, !noalias !10189
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 6, ptr %i.bnb, align 8, !noalias !10189
  store i64 -9223372036854775796, ptr %i.fq, align 8, !noalias !10189
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.fo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !10189
  %.sroa.06128.0.copyload = load i64, ptr %i.fo, align 8 ; 2 uses
  %.sroa.46129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.46129.0.copyload = load i64, ptr %.sroa.46129.0..sroa_idx, align 8 ; 2 uses
  %.sroa.56130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.bnc = load <2 x i64>, ptr %.sroa.56130.0..sroa_idx, align 8 ; 3 uses
  %.sroa.56130.sroa.5.0..sroa.56130.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %.sroa.56130.sroa.5.0.copyload = load i64, ptr %.sroa.56130.sroa.5.0..sroa.56130.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not187 = icmp eq i64 %.sroa.06128.0.copyload, -1
  %i.bnd = extractelement <2 x i64> %i.bnc, i64 0
  %i.bne = extractelement <2 x i64> %i.bnc, i64 1
  br i1 %.not187, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit.thread, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fmNcNtNtB6_10CpuStorage3U320EB8_.exit.thread7261

bb.nn:                                            ; preds = %bb.a
  %i.bnf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bng = load ptr, ptr %i.bnf, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bni = load i64, ptr %i.bnh, align 8, !noundef !5 ; 32 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10192)
  %i.bnj = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10193
  %i.bnk = icmp eq i64 %i.bnj, 0
  br i1 %i.bnk, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bnl = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bnm = load i8, ptr %i.bnl, align 1, !range !24, !alias.scope !10190, !noundef !5
  %i.bnn = trunc nuw i8 %i.bnm to i1
  %i.bno = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bnp = load i8, ptr %i.bno, align 8, !range !24, !alias.scope !10190, !noundef !5
  %i.bnq = trunc nuw i8 %i.bnp to i1              ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %i.bnn, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  br i1 %i.bnq, label %bb.pk, label %bb.nr

bb.nq:                                            ; preds = %bb.no
  br i1 %i.bnq, label %bb.sy, label %bb.rf

bb.nr:                                            ; preds = %bb.np
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10196)
  %i.bns = load i64, ptr %i.bnr, align 8, !alias.scope !10197, !noundef !5 ; 2 uses
  %i.bnt = load i64, ptr %1, align 8, !alias.scope !10198, !noundef !5 ; 7 uses
  %i.bnu = icmp ult i64 %i.bnt, %i.bns
  br i1 %i.bnu, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  %i.bnv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bnw = load ptr, ptr %i.bnv, align 8, !alias.scope !10197, !nonnull !5, !noundef !5
  %i.bnx = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %i.bnt
  %i.bny = load i64, ptr %i.bnx, align 8, !noalias !10199, !noundef !5 ; 8 uses
end_hunk_3
begin_hunk_4_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18227 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.dw) #20
          to label %bb.rv unwind label %bb.sm, !noalias !10231

bb.sb:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2799, %bb.sa
  %.sroa.6.0.i.i2800 = phi i64 [ %i.cde, %bb.sa ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2799 ]
  %.sroa.08.0.i.i2801 = phi i64 [ 1, %bb.sa ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2799 ]
  store i64 %.sroa.08.0.i.i2801, ptr %i.dw, align 8, !alias.scope !10238, !noalias !10231
  store i64 %.sroa.6.0.i.i2800, ptr %i.cbq, align 8, !alias.scope !10238, !noalias !10231
  %i.cdf = load i64, ptr %.sroa.233.0..sroa_idx.i90.i2171, align 8, !alias.scope !10235, !noalias !10231, !noundef !5 ; 4 uses
  %i.cdg = add i64 %i.cdf, 1
  store i64 %i.cdg, ptr %.sroa.233.0..sroa_idx.i90.i2171, align 8, !alias.scope !10235, !noalias !10231
  %i.cdh = icmp ugt i64 %i.ccb, %i.bni
  br i1 %i.cdh, label %bb.sf, label %bb.se, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2808: ; preds = %bb.sk, %bb.rx
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.dw)
          to label %bb.sc unwind label %bb.rw, !noalias !10231

bb.sc:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !10232
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.dz)
          to label %bb.sd unwind label %bb.rp, !noalias !10231

bb.sd:                                            ; preds = %bb.sc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !10232
  br label %.loopexit8965

bb.se:                                            ; preds = %bb.sb
  %i.cdi = sub nuw nsw i64 %i.bni, %i.ccb         ; 2 uses
  %i.cdj = getelementptr inbounds nuw [2 x i8], ptr %i.bng, i64 %i.ccb ; 2 uses
  %.not84.i91.i2172 = icmp eq i64 %i.bni, %i.ccb
  br i1 %.not84.i91.i2172, label %.invoke15926, label %bb.sg

bb.sf:                                            ; preds = %bb.sb
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ccb, i64 noundef range(i64 0, 4611686018427387904) %i.bni, i64 noundef range(i64 0, 4611686018427387904) %i.bni, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.sh unwind label %.loopexit.split-lp8968.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10231

bb.sg:                                            ; preds = %bb.se
  %i.cdk = load i16, ptr %i.cdj, align 2, !alias.scope !10240, !noundef !5
  br label %bb.si

bb.sh:                                            ; preds = %.split10974.us, %bb.sf
  unreachable

bb.si:                                            ; preds = %bb.sg, %bb.sl
  %.sroa.055.0.i94.i217510967 = phi i64 [ 0, %bb.sg ], [ %i.cdw, %bb.sl ] ; 3 uses
  %.sroa.035.0.i93.i217410966 = phi i16 [ %i.cdk, %bb.sg ], [ %spec.select95.i96.i2177, %bb.sl ] ; 2 uses
  %.sroa.034.0.i92.i217310965 = phi i64 [ 0, %bb.sg ], [ %spec.select.i95.i2176, %bb.sl ]
  %i.cdl = mul i64 %.sroa.055.0.i94.i217510967, %i.car ; 3 uses
  %i.cdm = icmp ult i64 %i.cdl, %i.cdi
  br i1 %i.cdm, label %bb.sl, label %.invoke15926

bb.sj:                                            ; preds = %bb.sl
  %i.cdn = icmp ult i64 %i.cdf, %i.cay
  br i1 %i.cdn, label %bb.sk, label %.invoke15926

bb.sk:                                            ; preds = %bb.sj
  %i.cdo = trunc i64 %spec.select.i95.i2176 to i32
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.cbb, i64 %i.cdf
  store i32 %i.cdo, ptr %i.cdp, align 4, !noalias !10231
  %i.cdq = load i64, ptr %i.dw, align 8, !range !8, !alias.scope !10241, !noalias !10231, !noundef !5
  %i.cdr = load i64, ptr %i.cbq, align 8, !alias.scope !10241, !noalias !10231
  %i.cds = trunc nuw i64 %i.cdq to i1
  br i1 %i.cds, label %bb.ry, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2808

.invoke15926:                                     ; preds = %bb.sj, %bb.se, %bb.si
  %i.cdt = phi i64 [ %i.cdl, %bb.si ], [ 0, %bb.se ], [ %i.cdf, %bb.sj ]
  %i.cdu = phi i64 [ %i.cdi, %bb.si ], [ 0, %bb.se ], [ %i.cay, %bb.sj ]
  %i.cdv = phi ptr [ @6, %bb.si ], [ @4, %bb.se ], [ @5, %bb.sj ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cdt, i64 noundef %i.cdu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cdv) #22
          to label %.cont15927 unwind label %.loopexit.split-lp8968.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10231

.cont15927:                                       ; preds = %.invoke15926
  unreachable

bb.sl:                                            ; preds = %bb.si
  %i.cdw = add nuw i64 %.sroa.055.0.i94.i217510967, 1 ; 2 uses
  %i.cdx = getelementptr inbounds nuw [2 x i8], ptr %i.cdj, i64 %i.cdl
  %i.cdy = load i16, ptr %i.cdx, align 2, !alias.scope !10240, !noundef !5 ; 2 uses
  %i.cdz = icmp slt i16 %.sroa.035.0.i93.i217410966, %i.cdy
  %spec.select.i95.i2176 = select i1 %i.cdz, i64 %.sroa.055.0.i94.i217510967, i64 %.sroa.034.0.i92.i217310965 ; 2 uses
  %spec.select95.i96.i2177 = call i16 @llvm.smax.i16(i16 %.sroa.035.0.i93.i217410966, i16 %i.cdy)
  %exitcond12909.not = icmp eq i64 %i.cdw, %i.cak
  br i1 %exitcond12909.not, label %bb.sj, label %bb.si

bb.sm:                                            ; preds = %.loopexit.split-lp8968.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.rv, %bb.ro
  %i.cea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10233
  unreachable

bb.sn:                                            ; preds = %bb.rr
  %i.ceb = sub nuw i64 %i.cbl, %i.cbj             ; 7 uses
  %.not86.i97.i2178 = icmp ugt i64 %i.cbl, %i.bni
  br i1 %.not86.i97.i2178, label %.invoke15924, label %bb.so, !prof !10

bb.so:                                            ; preds = %bb.sn
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr %i.bng, i64 %i.cbj ; 2 uses
  %.idx11237 = shl nuw nsw i64 %i.cay, 2
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cbb, i64 %.idx11237 ; 3 uses
  switch i64 %i.car, label %.split10972 [
    i64 1, label %bb.sp
    i64 0, label %.split10972.us
  ]

bb.sp:                                            ; preds = %bb.so
  %i.cee = icmp eq i64 %i.cay, 0
  br i1 %i.cee, label %.loopexit8965, label %.lr.ph10983.preheader

.lr.ph10983.preheader:                            ; preds = %bb.sp
  %i.cef = add i64 %i.cak, 9223372036854775807
  %i.ceg = and i64 %i.cef, 9223372036854775807    ; 2 uses
  %i.ceh = add nuw i64 %i.ceg, 1                  ; 2 uses
  %xtraiter19506 = and i64 %i.ceh, 3              ; 3 uses
  %i.cei = icmp samesign ult i64 %i.ceg, 3
  %unroll_iter19511 = and i64 %i.ceh, -4
  %lcmp.mod19508.not = icmp eq i64 %xtraiter19506, 0
  %lcmp.mod19510 = icmp ne i64 %xtraiter19506, 0
  br label %.lr.ph10983

.split10972.us:                                   ; preds = %bb.so
  %i.cej = icmp eq i64 %i.cay, 0
  br i1 %i.cej, label %.loopexit8965, label %.split10974.us

.lr.ph10983:                                      ; preds = %.lr.ph10983.preheader, %.thread7336
  %.sroa.76596.010982 = phi i64 [ %i.cel, %.thread7336 ], [ 0, %.lr.ph10983.preheader ] ; 2 uses
  %.sroa.06594.010981 = phi ptr [ %i.cek, %.thread7336 ], [ %i.cbb, %.lr.ph10983.preheader ] ; 2 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %.sroa.06594.010981, i64 4 ; 2 uses
  %i.cel = add nuw nsw i64 %.sroa.76596.010982, 1
  %i.cem = mul i64 %.sroa.76596.010982, %i.cak    ; 4 uses
  %i.cen = add i64 %i.cem, %i.cak                 ; 3 uses
  %i.ceo = icmp ult i64 %i.cen, %i.cem
  %.not91.i111.i2192 = icmp ugt i64 %i.cen, %i.ceb
  %or.cond.i112.i2193 = select i1 %i.ceo, i1 true, i1 %.not91.i111.i2192, !prof !7
  br i1 %or.cond.i112.i2193, label %.invoke15924, label %.lr.ph10979.preheader, !prof !7

.lr.ph10979.preheader:                            ; preds = %.lr.ph10983
  %i.cep = getelementptr inbounds nuw [2 x i8], ptr %i.cec, i64 %i.cem ; 3 uses
  %i.ceq = load i16, ptr %i.cep, align 2, !alias.scope !10240, !noundef !5 ; 2 uses
  br i1 %i.cei, label %.lr.ph10979.epil.preheader, label %.lr.ph10979

.thread7336.unr-lcssa:                            ; preds = %.lr.ph10979
  br i1 %lcmp.mod19508.not, label %.thread7336, label %.lr.ph10979.epil.preheader

.lr.ph10979.epil.preheader:                       ; preds = %.thread7336.unr-lcssa, %.lr.ph10979.preheader
  %.sroa.04.0.i116.i219710978.epil.init = phi i32 [ 0, %.lr.ph10979.preheader ], [ %spec.select97.i119.i2200.3, %.thread7336.unr-lcssa ]
  %.sroa.05.0.i115.i219610977.epil.init = phi i16 [ %i.ceq, %.lr.ph10979.preheader ], [ %spec.select96.i118.i2199.3, %.thread7336.unr-lcssa ]
  %.sroa.76599.010976.epil.init = phi i32 [ 0, %.lr.ph10979.preheader ], [ %i.cfi, %.thread7336.unr-lcssa ]
  %.sroa.06597.010975.epil.init = phi ptr [ %i.cep, %.lr.ph10979.preheader ], [ %i.cfj, %.thread7336.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19510)
  br label %.lr.ph10979.epil

.lr.ph10979.epil:                                 ; preds = %.lr.ph10979.epil, %.lr.ph10979.epil.preheader
  %.sroa.04.0.i116.i219710978.epil = phi i32 [ %spec.select97.i119.i2200.epil, %.lr.ph10979.epil ], [ %.sroa.04.0.i116.i219710978.epil.init, %.lr.ph10979.epil.preheader ]
  %.sroa.05.0.i115.i219610977.epil = phi i16 [ %spec.select96.i118.i2199.epil, %.lr.ph10979.epil ], [ %.sroa.05.0.i115.i219610977.epil.init, %.lr.ph10979.epil.preheader ] ; 2 uses
  %.sroa.76599.010976.epil = phi i32 [ %i.cer, %.lr.ph10979.epil ], [ %.sroa.76599.010976.epil.init, %.lr.ph10979.epil.preheader ] ; 2 uses
  %.sroa.06597.010975.epil = phi ptr [ %i.ces, %.lr.ph10979.epil ], [ %.sroa.06597.010975.epil.init, %.lr.ph10979.epil.preheader ] ; 2 uses
  %epil.iter19507 = phi i64 [ %epil.iter19507.next, %.lr.ph10979.epil ], [ 0, %.lr.ph10979.epil.preheader ]
  %i.cer = add i32 %.sroa.76599.010976.epil, 1
  %i.ces = getelementptr inbounds nuw i8, ptr %.sroa.06597.010975.epil, i64 2
  %i.cet = load i16, ptr %.sroa.06597.010975.epil, align 2, !noalias !10233, !noundef !5 ; 2 uses
  %i.ceu = icmp slt i16 %.sroa.05.0.i115.i219610977.epil, %i.cet
  %spec.select96.i118.i2199.epil = tail call i16 @llvm.smax.i16(i16 %.sroa.05.0.i115.i219610977.epil, i16 %i.cet)
  %spec.select97.i119.i2200.epil = select i1 %i.ceu, i32 %.sroa.76599.010976.epil, i32 %.sroa.04.0.i116.i219710978.epil ; 2 uses
  %epil.iter19507.next = add i64 %epil.iter19507, 1 ; 2 uses
  %epil.iter19507.cmp.not = icmp eq i64 %epil.iter19507.next, %xtraiter19506
  br i1 %epil.iter19507.cmp.not, label %.thread7336, label %.lr.ph10979.epil, !llvm.loop !9392

.thread7336:                                      ; preds = %.lr.ph10979.epil, %.thread7336.unr-lcssa
  %spec.select97.i119.i2200.lcssa = phi i32 [ %spec.select97.i119.i2200.3, %.thread7336.unr-lcssa ], [ %spec.select97.i119.i2200.epil, %.lr.ph10979.epil ]
  store i32 %spec.select97.i119.i2200.lcssa, ptr %.sroa.06594.010981, align 4, !noalias !10233
  %i.cev = icmp eq ptr %i.cek, %i.ced
  br i1 %i.cev, label %.loopexit8965, label %.lr.ph10983

.lr.ph10979:                                      ; preds = %.lr.ph10979.preheader, %.lr.ph10979
  %.sroa.04.0.i116.i219710978 = phi i32 [ %spec.select97.i119.i2200.3, %.lr.ph10979 ], [ 0, %.lr.ph10979.preheader ]
  %.sroa.05.0.i115.i219610977 = phi i16 [ %spec.select96.i118.i2199.3, %.lr.ph10979 ], [ %i.ceq, %.lr.ph10979.preheader ] ; 2 uses
  %.sroa.76599.010976 = phi i32 [ %i.cfi, %.lr.ph10979 ], [ 0, %.lr.ph10979.preheader ] ; 5 uses
  %.sroa.06597.010975 = phi ptr [ %i.cfj, %.lr.ph10979 ], [ %i.cep, %.lr.ph10979.preheader ] ; 5 uses
  %niter19512 = phi i64 [ %niter19512.next.3, %.lr.ph10979 ], [ 0, %.lr.ph10979.preheader ]
  %i.cew = or disjoint i32 %.sroa.76599.010976, 1
  %i.cex = getelementptr inbounds nuw i8, ptr %.sroa.06597.010975, i64 2
  %i.cey = load i16, ptr %.sroa.06597.010975, align 2, !noalias !10233, !noundef !5 ; 2 uses
  %i.cez = icmp slt i16 %.sroa.05.0.i115.i219610977, %i.cey
  %spec.select96.i118.i2199 = tail call i16 @llvm.smax.i16(i16 %.sroa.05.0.i115.i219610977, i16 %i.cey) ; 2 uses
  %spec.select97.i119.i2200 = select i1 %i.cez, i32 %.sroa.76599.010976, i32 %.sroa.04.0.i116.i219710978
  %i.cfa = or disjoint i32 %.sroa.76599.010976, 2
  %i.cfb = getelementptr inbounds nuw i8, ptr %.sroa.06597.010975, i64 4
  %i.cfc = load i16, ptr %i.cex, align 2, !noalias !10233, !noundef !5 ; 2 uses
  %i.cfd = icmp slt i16 %spec.select96.i118.i2199, %i.cfc
  %spec.select96.i118.i2199.1 = tail call i16 @llvm.smax.i16(i16 %spec.select96.i118.i2199, i16 %i.cfc) ; 2 uses
  %spec.select97.i119.i2200.1 = select i1 %i.cfd, i32 %i.cew, i32 %spec.select97.i119.i2200
  %i.cfe = or disjoint i32 %.sroa.76599.010976, 3
  %i.cff = getelementptr inbounds nuw i8, ptr %.sroa.06597.010975, i64 6
  %i.cfg = load i16, ptr %i.cfb, align 2, !noalias !10233, !noundef !5 ; 2 uses
  %i.cfh = icmp slt i16 %spec.select96.i118.i2199.1, %i.cfg
  %spec.select96.i118.i2199.2 = tail call i16 @llvm.smax.i16(i16 %spec.select96.i118.i2199.1, i16 %i.cfg) ; 2 uses
  %spec.select97.i119.i2200.2 = select i1 %i.cfh, i32 %i.cfa, i32 %spec.select97.i119.i2200.1
  %i.cfi = add nuw nsw i32 %.sroa.76599.010976, 4 ; 2 uses
  %i.cfj = getelementptr inbounds nuw i8, ptr %.sroa.06597.010975, i64 8 ; 2 uses
  %i.cfk = load i16, ptr %i.cff, align 2, !noalias !10233, !noundef !5 ; 2 uses
  %i.cfl = icmp slt i16 %spec.select96.i118.i2199.2, %i.cfk
  %spec.select96.i118.i2199.3 = tail call i16 @llvm.smax.i16(i16 %spec.select96.i118.i2199.2, i16 %i.cfk) ; 2 uses
  %spec.select97.i119.i2200.3 = select i1 %i.cfl, i32 %i.cfe, i32 %spec.select97.i119.i2200.2 ; 3 uses
  %niter19512.next.3 = add i64 %niter19512, 4     ; 2 uses
  %niter19512.ncmp.3 = icmp eq i64 %niter19512.next.3, %unroll_iter19511
  br i1 %niter19512.ncmp.3, label %.thread7336.unr-lcssa, label %.lr.ph10979

.split10972:                                      ; preds = %bb.so, %bb.sw
  %.sroa.06600.0 = phi ptr [ %.sroa.06600.1, %bb.sw ], [ %i.cbb, %bb.so ] ; 3 uses
  %.sroa.76602.0 = phi i64 [ %.sroa.76602.1, %bb.sw ], [ 0, %bb.so ] ; 3 uses
  %i.cfm = icmp eq ptr %.sroa.06600.0, %i.ced
  br i1 %i.cfm, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %.split10972
  %i.cfn = getelementptr inbounds nuw i8, ptr %.sroa.06600.0, i64 4
  %i.cfo = add i64 %.sroa.76602.0, 1
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sq, %.split10972
  %.sroa.06600.1 = phi ptr [ %i.ced, %.split10972 ], [ %i.cfn, %bb.sq ]
  %.sroa.76602.1 = phi i64 [ %.sroa.76602.0, %.split10972 ], [ %i.cfo, %bb.sq ]
  %.sroa.2.0.i2815 = phi ptr [ null, %.split10972 ], [ %.sroa.06600.0, %bb.sq ]
  %.sroa.0.0.i2816 = phi i64 [ undef, %.split10972 ], [ %.sroa.76602.0, %bb.sq ]
  %i.cfp = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2816, 0
  %i.cfq = insertvalue { i64, ptr } %i.cfp, ptr %.sroa.2.0.i2815, 1
  %.fr88.i100.i2181 = freeze { i64, ptr } %i.cfq  ; 2 uses
  %i.cfr = extractvalue { i64, ptr } %.fr88.i100.i2181, 1 ; 2 uses
  %.not87.i101.i2182 = icmp eq ptr %i.cfr, null
  br i1 %.not87.i101.i2182, label %.loopexit8965, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.cfs = extractvalue { i64, ptr } %.fr88.i100.i2181, 0 ; 2 uses
  %i.cft = urem i64 %i.cfs, %i.car                ; 2 uses
  %i.cfu = sub nuw i64 %i.cfs, %i.cft
  %i.cfv = mul i64 %i.cfu, %i.cak
  %i.cfw = add i64 %i.cfv, %i.cft                 ; 5 uses
  %i.cfx = icmp ugt i64 %i.cfw, %i.ceb
  br i1 %i.cfx, label %.invoke15924, label %bb.st, !prof !10

.split10974.us:                                   ; preds = %.split10972.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.sh unwind label %bb.rp, !noalias !10231

bb.st:                                            ; preds = %bb.ss
  %i.cfy = sub nuw i64 %i.ceb, %i.cfw             ; 2 uses
  %i.cfz = getelementptr inbounds nuw [2 x i8], ptr %i.cec, i64 %i.cfw ; 2 uses
  %.not89.i102.i2183 = icmp eq i64 %i.ceb, %i.cfw
  br i1 %.not89.i102.i2183, label %.invoke15922, label %bb.su

.invoke15924:                                     ; preds = %.lr.ph10983, %bb.ss, %bb.rr, %bb.sn
  %i.cga = phi i64 [ %i.cfw, %bb.ss ], [ %i.cbj, %bb.rr ], [ %i.cbj, %bb.sn ], [ %i.cem, %.lr.ph10983 ]
  %i.cgb = phi i64 [ %i.ceb, %bb.ss ], [ %i.cbl, %bb.rr ], [ %i.cbl, %bb.sn ], [ %i.cen, %.lr.ph10983 ]
  %i.cgc = phi i64 [ %i.ceb, %bb.ss ], [ %i.bni, %bb.rr ], [ %i.bni, %bb.sn ], [ %i.ceb, %.lr.ph10983 ]
  %i.cgd = phi ptr [ @12, %bb.ss ], [ @13, %bb.rr ], [ @13, %bb.sn ], [ @8, %.lr.ph10983 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cga, i64 noundef %i.cgb, i64 noundef %i.cgc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cgd) #22
          to label %.cont15925 unwind label %bb.rp, !noalias !10231

.cont15925:                                       ; preds = %.invoke15924
  unreachable

bb.su:                                            ; preds = %bb.st
  %i.cge = load i16, ptr %i.cfz, align 2, !alias.scope !10240, !noundef !5
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.sx
  %.sroa.044.0.i105.i218610971 = phi i64 [ 0, %bb.su ], [ %i.cgl, %bb.sx ] ; 3 uses
  %.sroa.021.0.i104.i218510970 = phi i64 [ 0, %bb.su ], [ %spec.select99.i107.i2188, %bb.sx ]
  %.sroa.022.0.i103.i218410969 = phi i16 [ %i.cge, %bb.su ], [ %spec.select98.i106.i2187, %bb.sx ] ; 2 uses
  %i.cgf = mul i64 %.sroa.044.0.i105.i218610971, %i.car ; 3 uses
  %i.cgg = icmp ult i64 %i.cgf, %i.cfy
  br i1 %i.cgg, label %bb.sx, label %.invoke15922

bb.sw:                                            ; preds = %bb.sx
  %i.cgh = trunc i64 %spec.select99.i107.i2188 to i32
  store i32 %i.cgh, ptr %i.cfr, align 4, !noalias !10231
  br label %.split10972

.invoke15922:                                     ; preds = %bb.st, %bb.sv
  %i.cgi = phi i64 [ %i.cgf, %bb.sv ], [ 0, %bb.st ]
  %i.cgj = phi i64 [ %i.cfy, %bb.sv ], [ 0, %bb.st ]
  %i.cgk = phi ptr [ @11, %bb.sv ], [ @10, %bb.st ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cgi, i64 noundef %i.cgj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cgk) #22
          to label %.cont15923 unwind label %bb.rp, !noalias !10231

.cont15923:                                       ; preds = %.invoke15922
  unreachable

bb.sx:                                            ; preds = %bb.sv
  %i.cgl = add nuw i64 %.sroa.044.0.i105.i218610971, 1 ; 2 uses
  %i.cgm = getelementptr inbounds nuw [2 x i8], ptr %i.cfz, i64 %i.cgf
  %i.cgn = load i16, ptr %i.cgm, align 2, !alias.scope !10240, !noundef !5 ; 2 uses
  %i.cgo = icmp slt i16 %.sroa.022.0.i103.i218410969, %i.cgn
  %spec.select98.i106.i2187 = tail call i16 @llvm.smax.i16(i16 %.sroa.022.0.i103.i218410969, i16 %i.cgn)
  %spec.select99.i107.i2188 = select i1 %i.cgo, i64 %.sroa.044.0.i105.i218610971, i64 %.sroa.021.0.i104.i218510970 ; 2 uses
  %exitcond12910.not = icmp eq i64 %i.cgl, %i.cak
  br i1 %exitcond12910.not, label %bb.sw, label %bb.sv

bb.sy:                                            ; preds = %bb.nq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10244)
  %i.cgp = load i64, ptr %i.bnr, align 8, !alias.scope !10245, !noundef !5 ; 2 uses
  %i.cgq = load i64, ptr %1, align 8, !alias.scope !10246, !noundef !5 ; 7 uses
  %i.cgr = icmp ult i64 %i.cgq, %i.cgp
  br i1 %i.cgr, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  %i.cgs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cgt = load ptr, ptr %i.cgs, align 8, !alias.scope !10245, !nonnull !5, !noundef !5
  %i.cgu = getelementptr inbounds nuw [8 x i8], ptr %i.cgt, i64 %i.cgq
  %i.cgv = load i64, ptr %i.cgu, align 8, !noalias !10247, !noundef !5 ; 8 uses
  %i.cgw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cgx = load i64, ptr %i.cgw, align 8, !alias.scope !10245, !noundef !5 ; 2 uses
  %i.cgy = icmp ult i64 %i.cgq, %i.cgx
  br i1 %i.cgy, label %bb.tb, label %bb.tc

bb.ta:                                            ; preds = %bb.sy
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cgq, i64 noundef %i.cgp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10247
  unreachable

bb.tb:                                            ; preds = %bb.sz
  %i.cgz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cha = load ptr, ptr %i.cgz, align 8, !alias.scope !10245, !nonnull !5, !noundef !5
  %i.chb = getelementptr inbounds nuw [8 x i8], ptr %i.cha, i64 %i.cgq
  %i.chc = load i64, ptr %i.chb, align 8, !noalias !10247, !noundef !5 ; 4 uses
  %i.chd = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10247
  %i.che = icmp eq i64 %i.cgv, 0
  br i1 %i.che, label %bb.te, label %bb.td

bb.tc:                                            ; preds = %bb.sz
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cgq, i64 noundef %i.cgx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10247
  unreachable

bb.td:                                            ; preds = %bb.tb
  %i.chf = udiv i64 %i.chd, %i.cgv                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !10248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !10248
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ec, i64 noundef %i.chf, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10247
  %i.chg = load i64, ptr %i.ec, align 8, !range !8, !noalias !10248, !noundef !5
  %i.chh = trunc nuw i64 %i.chg to i1
  %i.chi = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.chj = load i64, ptr %i.chi, align 8, !range !12, !noalias !10248, !noundef !5 ; 8 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  br i1 %i.chh, label %bb.tf, label %bb.tg, !prof !10

bb.te:                                            ; preds = %bb.tb
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10247
  unreachable

bb.tf:                                            ; preds = %bb.td
  %i.chl = load i64, ptr %i.chk, align 8, !noalias !10248
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.chj, i64 %i.chl) #22, !noalias !10247
  unreachable

bb.tg:                                            ; preds = %bb.td
  %i.chm = load ptr, ptr %i.chk, align 8, !noalias !10248, !nonnull !5, !noundef !5 ; 5 uses
  %i.chn = icmp ule i64 %i.chf, %i.chj
  tail call void @llvm.assume(i1 %i.chn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !10248
  store i64 %i.chj, ptr %i.ei, align 16, !noalias !10248
  %i.cho = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.chm, ptr %i.cho, align 8, !noalias !10248
  %i.chp = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 0, ptr %i.chp, align 16, !noalias !10248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !10248
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.tj unwind label %bb.ti, !noalias !10247

bb.th:                                            ; preds = %bb.to, %bb.ti
  %.pn93.i.i2201 = phi { ptr, i32 } [ %i.chq, %bb.ti ], [ %.pn.i.i2214, %bb.to ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei) #20
          to label %common.resume unwind label %bb.uf, !noalias !10249

bb.ti:                                            ; preds = %.invoke15930, %.invoke15928, %.split10993.us, %bb.tv, %bb.tl, %bb.tg
  %i.chq = landingpad { ptr, i32 }
          cleanup
  br label %bb.th

bb.tj:                                            ; preds = %bb.tg
  %i.chr = load i64, ptr %i.eh, align 8, !range !8, !noalias !10248, !noundef !5
  %i.chs = trunc nuw i64 %i.chr to i1
  br i1 %i.chs, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  %i.cht = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.chu = load i64, ptr %i.cht, align 8, !noalias !10248, !noundef !5 ; 5 uses
  %i.chv = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.chw = load i64, ptr %i.chv, align 8, !noalias !10248, !noundef !5 ; 5 uses
  %i.chx = icmp ult i64 %i.chw, %i.chu
  br i1 %i.chx, label %.invoke15930, label %bb.ug, !prof !10

bb.tl:                                            ; preds = %bb.tj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !10248
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.i.i2027.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !10248
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.cgq, i64 noundef 0, i64 noundef 1)
          to label %bb.tm unwind label %bb.ti, !noalias !10247

end_hunk_4
begin_hunk_5_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18189 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ed) #20
          to label %bb.to unwind label %bb.uf, !noalias !10247

bb.tu:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2830, %bb.tt
  %.sroa.6.0.i.i2831 = phi i64 [ %i.cjp, %bb.tt ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2830 ]
  %.sroa.08.0.i.i2832 = phi i64 [ 1, %bb.tt ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2830 ]
  store i64 %.sroa.08.0.i.i2832, ptr %i.ed, align 8, !alias.scope !10254, !noalias !10247
  store i64 %.sroa.6.0.i.i2831, ptr %i.cib, align 8, !alias.scope !10254, !noalias !10247
  %i.cjq = load i64, ptr %.sroa.233.0..sroa_idx.i.i2215, align 8, !alias.scope !10251, !noalias !10247, !noundef !5 ; 4 uses
  %i.cjr = add i64 %i.cjq, 1
  store i64 %i.cjr, ptr %.sroa.233.0..sroa_idx.i.i2215, align 8, !alias.scope !10251, !noalias !10247
  %i.cjs = icmp ugt i64 %i.cim, %i.bni
  br i1 %i.cjs, label %bb.ty, label %bb.tx, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2839: ; preds = %bb.ud, %bb.tq
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ed)
          to label %bb.tv unwind label %bb.tp, !noalias !10247

bb.tv:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !10248
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.eg)
          to label %bb.tw unwind label %bb.ti, !noalias !10247

bb.tw:                                            ; preds = %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !10248
  br label %.loopexit8958

bb.tx:                                            ; preds = %bb.tu
  %i.cjt = sub nuw nsw i64 %i.bni, %i.cim         ; 2 uses
  %i.cju = getelementptr inbounds nuw [2 x i8], ptr %i.bng, i64 %i.cim ; 2 uses
  %.not84.i.i2216 = icmp eq i64 %i.bni, %i.cim
  br i1 %.not84.i.i2216, label %.invoke15932, label %bb.tz

bb.ty:                                            ; preds = %bb.tu
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cim, i64 noundef range(i64 0, 4611686018427387904) %i.bni, i64 noundef range(i64 0, 4611686018427387904) %i.bni, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.ua unwind label %.loopexit.split-lp8961.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10247

bb.tz:                                            ; preds = %bb.tx
  %i.cjv = load i16, ptr %i.cju, align 2, !alias.scope !10256, !noundef !5
  br label %bb.ub

bb.ua:                                            ; preds = %.split10993.us, %bb.ty
  unreachable

bb.ub:                                            ; preds = %bb.tz, %bb.ue
  %.sroa.055.0.i.i221910986 = phi i64 [ 0, %bb.tz ], [ %i.ckh, %bb.ue ] ; 3 uses
  %.sroa.035.0.i.i221810985 = phi i16 [ %i.cjv, %bb.tz ], [ %spec.select95.i.i2221, %bb.ue ] ; 2 uses
  %.sroa.034.0.i.i221710984 = phi i64 [ 0, %bb.tz ], [ %spec.select.i.i2220, %bb.ue ]
  %i.cjw = mul i64 %.sroa.055.0.i.i221910986, %i.chc ; 3 uses
  %i.cjx = icmp ult i64 %i.cjw, %i.cjt
  br i1 %i.cjx, label %bb.ue, label %.invoke15932

bb.uc:                                            ; preds = %bb.ue
  %i.cjy = icmp ult i64 %i.cjq, %i.chj
  br i1 %i.cjy, label %bb.ud, label %.invoke15932

bb.ud:                                            ; preds = %bb.uc
  %i.cjz = trunc i64 %spec.select.i.i2220 to i32
  %i.cka = getelementptr inbounds nuw [4 x i8], ptr %i.chm, i64 %i.cjq
  store i32 %i.cjz, ptr %i.cka, align 4, !noalias !10247
  %i.ckb = load i64, ptr %i.ed, align 8, !range !8, !alias.scope !10257, !noalias !10247, !noundef !5
  %i.ckc = load i64, ptr %i.cib, align 8, !alias.scope !10257, !noalias !10247
  %i.ckd = trunc nuw i64 %i.ckb to i1
  br i1 %i.ckd, label %bb.tr, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2839

.invoke15932:                                     ; preds = %bb.uc, %bb.tx, %bb.ub
  %i.cke = phi i64 [ %i.cjw, %bb.ub ], [ 0, %bb.tx ], [ %i.cjq, %bb.uc ]
  %i.ckf = phi i64 [ %i.cjt, %bb.ub ], [ 0, %bb.tx ], [ %i.chj, %bb.uc ]
  %i.ckg = phi ptr [ @6, %bb.ub ], [ @4, %bb.tx ], [ @5, %bb.uc ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cke, i64 noundef %i.ckf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ckg) #22
          to label %.cont15933 unwind label %.loopexit.split-lp8961.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10247

.cont15933:                                       ; preds = %.invoke15932
  unreachable

bb.ue:                                            ; preds = %bb.ub
  %i.ckh = add nuw i64 %.sroa.055.0.i.i221910986, 1 ; 2 uses
  %i.cki = getelementptr inbounds nuw [2 x i8], ptr %i.cju, i64 %i.cjw
  %i.ckj = load i16, ptr %i.cki, align 2, !alias.scope !10256, !noundef !5 ; 2 uses
  %i.ckk = icmp sgt i16 %.sroa.035.0.i.i221810985, %i.ckj
  %spec.select.i.i2220 = select i1 %i.ckk, i64 %.sroa.055.0.i.i221910986, i64 %.sroa.034.0.i.i221710984 ; 2 uses
  %spec.select95.i.i2221 = call i16 @llvm.smin.i16(i16 %.sroa.035.0.i.i221810985, i16 %i.ckj)
  %exitcond12911.not = icmp eq i64 %i.ckh, %i.cgv
  br i1 %exitcond12911.not, label %bb.uc, label %bb.ub

bb.uf:                                            ; preds = %.loopexit.split-lp8961.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.to, %bb.th
  %i.ckl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10249
  unreachable

bb.ug:                                            ; preds = %bb.tk
  %i.ckm = sub nuw i64 %i.chw, %i.chu             ; 7 uses
  %.not86.i.i2222 = icmp ugt i64 %i.chw, %i.bni
  br i1 %.not86.i.i2222, label %.invoke15930, label %bb.uh, !prof !10

bb.uh:                                            ; preds = %bb.ug
  %i.ckn = getelementptr inbounds nuw [2 x i8], ptr %i.bng, i64 %i.chu ; 2 uses
  %.idx11240 = shl nuw nsw i64 %i.chj, 2
  %i.cko = getelementptr inbounds nuw i8, ptr %i.chm, i64 %.idx11240 ; 3 uses
  switch i64 %i.chc, label %.split10991 [
    i64 1, label %bb.ui
    i64 0, label %.split10991.us
  ]

bb.ui:                                            ; preds = %bb.uh
  %i.ckp = icmp eq i64 %i.chj, 0
  br i1 %i.ckp, label %.loopexit8958, label %.lr.ph11002.preheader

.lr.ph11002.preheader:                            ; preds = %bb.ui
  %i.ckq = add i64 %i.cgv, 9223372036854775807
  %i.ckr = and i64 %i.ckq, 9223372036854775807    ; 2 uses
  %i.cks = add nuw i64 %i.ckr, 1                  ; 2 uses
  %xtraiter19513 = and i64 %i.cks, 3              ; 3 uses
  %i.ckt = icmp samesign ult i64 %i.ckr, 3
  %unroll_iter19518 = and i64 %i.cks, -4
  %lcmp.mod19515.not = icmp eq i64 %xtraiter19513, 0
  %lcmp.mod19517 = icmp ne i64 %xtraiter19513, 0
  br label %.lr.ph11002

.split10991.us:                                   ; preds = %bb.uh
  %i.cku = icmp eq i64 %i.chj, 0
  br i1 %i.cku, label %.loopexit8958, label %.split10993.us

.lr.ph11002:                                      ; preds = %.lr.ph11002.preheader, %.thread7362
  %.sroa.76559.011001 = phi i64 [ %i.ckw, %.thread7362 ], [ 0, %.lr.ph11002.preheader ] ; 2 uses
  %.sroa.06557.011000 = phi ptr [ %i.ckv, %.thread7362 ], [ %i.chm, %.lr.ph11002.preheader ] ; 2 uses
  %i.ckv = getelementptr inbounds nuw i8, ptr %.sroa.06557.011000, i64 4 ; 2 uses
  %i.ckw = add nuw nsw i64 %.sroa.76559.011001, 1
  %i.ckx = mul i64 %.sroa.76559.011001, %i.cgv    ; 4 uses
  %i.cky = add i64 %i.ckx, %i.cgv                 ; 3 uses
  %i.ckz = icmp ult i64 %i.cky, %i.ckx
  %.not91.i.i2236 = icmp ugt i64 %i.cky, %i.ckm
  %or.cond.i.i2237 = select i1 %i.ckz, i1 true, i1 %.not91.i.i2236, !prof !7
  br i1 %or.cond.i.i2237, label %.invoke15930, label %.lr.ph10998.preheader, !prof !7

.lr.ph10998.preheader:                            ; preds = %.lr.ph11002
  %i.cla = getelementptr inbounds nuw [2 x i8], ptr %i.ckn, i64 %i.ckx ; 3 uses
  %i.clb = load i16, ptr %i.cla, align 2, !alias.scope !10256, !noundef !5 ; 2 uses
  br i1 %i.ckt, label %.lr.ph10998.epil.preheader, label %.lr.ph10998

.thread7362.unr-lcssa:                            ; preds = %.lr.ph10998
  br i1 %lcmp.mod19515.not, label %.thread7362, label %.lr.ph10998.epil.preheader

.lr.ph10998.epil.preheader:                       ; preds = %.thread7362.unr-lcssa, %.lr.ph10998.preheader
  %.sroa.04.0.i.i224110997.epil.init = phi i32 [ 0, %.lr.ph10998.preheader ], [ %spec.select97.i.i2244.3, %.thread7362.unr-lcssa ]
  %.sroa.05.0.i.i224010996.epil.init = phi i16 [ %i.clb, %.lr.ph10998.preheader ], [ %spec.select96.i.i2243.3, %.thread7362.unr-lcssa ]
  %.sroa.76562.010995.epil.init = phi i32 [ 0, %.lr.ph10998.preheader ], [ %i.clt, %.thread7362.unr-lcssa ]
  %.sroa.06560.010994.epil.init = phi ptr [ %i.cla, %.lr.ph10998.preheader ], [ %i.clu, %.thread7362.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19517)
  br label %.lr.ph10998.epil

.lr.ph10998.epil:                                 ; preds = %.lr.ph10998.epil, %.lr.ph10998.epil.preheader
  %.sroa.04.0.i.i224110997.epil = phi i32 [ %spec.select97.i.i2244.epil, %.lr.ph10998.epil ], [ %.sroa.04.0.i.i224110997.epil.init, %.lr.ph10998.epil.preheader ]
  %.sroa.05.0.i.i224010996.epil = phi i16 [ %spec.select96.i.i2243.epil, %.lr.ph10998.epil ], [ %.sroa.05.0.i.i224010996.epil.init, %.lr.ph10998.epil.preheader ] ; 2 uses
  %.sroa.76562.010995.epil = phi i32 [ %i.clc, %.lr.ph10998.epil ], [ %.sroa.76562.010995.epil.init, %.lr.ph10998.epil.preheader ] ; 2 uses
  %.sroa.06560.010994.epil = phi ptr [ %i.cld, %.lr.ph10998.epil ], [ %.sroa.06560.010994.epil.init, %.lr.ph10998.epil.preheader ] ; 2 uses
  %epil.iter19514 = phi i64 [ %epil.iter19514.next, %.lr.ph10998.epil ], [ 0, %.lr.ph10998.epil.preheader ]
  %i.clc = add i32 %.sroa.76562.010995.epil, 1
  %i.cld = getelementptr inbounds nuw i8, ptr %.sroa.06560.010994.epil, i64 2
  %i.cle = load i16, ptr %.sroa.06560.010994.epil, align 2, !noalias !10249, !noundef !5 ; 2 uses
  %i.clf = icmp sgt i16 %.sroa.05.0.i.i224010996.epil, %i.cle
  %spec.select96.i.i2243.epil = tail call i16 @llvm.smin.i16(i16 %.sroa.05.0.i.i224010996.epil, i16 %i.cle)
  %spec.select97.i.i2244.epil = select i1 %i.clf, i32 %.sroa.76562.010995.epil, i32 %.sroa.04.0.i.i224110997.epil ; 2 uses
  %epil.iter19514.next = add i64 %epil.iter19514, 1 ; 2 uses
  %epil.iter19514.cmp.not = icmp eq i64 %epil.iter19514.next, %xtraiter19513
  br i1 %epil.iter19514.cmp.not, label %.thread7362, label %.lr.ph10998.epil, !llvm.loop !9414

.thread7362:                                      ; preds = %.lr.ph10998.epil, %.thread7362.unr-lcssa
  %spec.select97.i.i2244.lcssa = phi i32 [ %spec.select97.i.i2244.3, %.thread7362.unr-lcssa ], [ %spec.select97.i.i2244.epil, %.lr.ph10998.epil ]
  store i32 %spec.select97.i.i2244.lcssa, ptr %.sroa.06557.011000, align 4, !noalias !10249
  %i.clg = icmp eq ptr %i.ckv, %i.cko
  br i1 %i.clg, label %.loopexit8958, label %.lr.ph11002

.lr.ph10998:                                      ; preds = %.lr.ph10998.preheader, %.lr.ph10998
  %.sroa.04.0.i.i224110997 = phi i32 [ %spec.select97.i.i2244.3, %.lr.ph10998 ], [ 0, %.lr.ph10998.preheader ]
  %.sroa.05.0.i.i224010996 = phi i16 [ %spec.select96.i.i2243.3, %.lr.ph10998 ], [ %i.clb, %.lr.ph10998.preheader ] ; 2 uses
  %.sroa.76562.010995 = phi i32 [ %i.clt, %.lr.ph10998 ], [ 0, %.lr.ph10998.preheader ] ; 5 uses
  %.sroa.06560.010994 = phi ptr [ %i.clu, %.lr.ph10998 ], [ %i.cla, %.lr.ph10998.preheader ] ; 5 uses
  %niter19519 = phi i64 [ %niter19519.next.3, %.lr.ph10998 ], [ 0, %.lr.ph10998.preheader ]
  %i.clh = or disjoint i32 %.sroa.76562.010995, 1
  %i.cli = getelementptr inbounds nuw i8, ptr %.sroa.06560.010994, i64 2
  %i.clj = load i16, ptr %.sroa.06560.010994, align 2, !noalias !10249, !noundef !5 ; 2 uses
  %i.clk = icmp sgt i16 %.sroa.05.0.i.i224010996, %i.clj
  %spec.select96.i.i2243 = tail call i16 @llvm.smin.i16(i16 %.sroa.05.0.i.i224010996, i16 %i.clj) ; 2 uses
  %spec.select97.i.i2244 = select i1 %i.clk, i32 %.sroa.76562.010995, i32 %.sroa.04.0.i.i224110997
  %i.cll = or disjoint i32 %.sroa.76562.010995, 2
  %i.clm = getelementptr inbounds nuw i8, ptr %.sroa.06560.010994, i64 4
  %i.cln = load i16, ptr %i.cli, align 2, !noalias !10249, !noundef !5 ; 2 uses
  %i.clo = icmp sgt i16 %spec.select96.i.i2243, %i.cln
  %spec.select96.i.i2243.1 = tail call i16 @llvm.smin.i16(i16 %spec.select96.i.i2243, i16 %i.cln) ; 2 uses
  %spec.select97.i.i2244.1 = select i1 %i.clo, i32 %i.clh, i32 %spec.select97.i.i2244
  %i.clp = or disjoint i32 %.sroa.76562.010995, 3
  %i.clq = getelementptr inbounds nuw i8, ptr %.sroa.06560.010994, i64 6
  %i.clr = load i16, ptr %i.clm, align 2, !noalias !10249, !noundef !5 ; 2 uses
  %i.cls = icmp sgt i16 %spec.select96.i.i2243.1, %i.clr
  %spec.select96.i.i2243.2 = tail call i16 @llvm.smin.i16(i16 %spec.select96.i.i2243.1, i16 %i.clr) ; 2 uses
  %spec.select97.i.i2244.2 = select i1 %i.cls, i32 %i.cll, i32 %spec.select97.i.i2244.1
  %i.clt = add nuw nsw i32 %.sroa.76562.010995, 4 ; 2 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %.sroa.06560.010994, i64 8 ; 2 uses
  %i.clv = load i16, ptr %i.clq, align 2, !noalias !10249, !noundef !5 ; 2 uses
  %i.clw = icmp sgt i16 %spec.select96.i.i2243.2, %i.clv
  %spec.select96.i.i2243.3 = tail call i16 @llvm.smin.i16(i16 %spec.select96.i.i2243.2, i16 %i.clv) ; 2 uses
  %spec.select97.i.i2244.3 = select i1 %i.clw, i32 %i.clp, i32 %spec.select97.i.i2244.2 ; 3 uses
  %niter19519.next.3 = add i64 %niter19519, 4     ; 2 uses
  %niter19519.ncmp.3 = icmp eq i64 %niter19519.next.3, %unroll_iter19518
  br i1 %niter19519.ncmp.3, label %.thread7362.unr-lcssa, label %.lr.ph10998

.split10991:                                      ; preds = %bb.uh, %bb.up
  %.sroa.06563.0 = phi ptr [ %.sroa.06563.1, %bb.up ], [ %i.chm, %bb.uh ] ; 3 uses
  %.sroa.76565.0 = phi i64 [ %.sroa.76565.1, %bb.up ], [ 0, %bb.uh ] ; 3 uses
  %i.clx = icmp eq ptr %.sroa.06563.0, %i.cko
  br i1 %i.clx, label %bb.uk, label %bb.uj

bb.uj:                                            ; preds = %.split10991
  %i.cly = getelementptr inbounds nuw i8, ptr %.sroa.06563.0, i64 4
  %i.clz = add i64 %.sroa.76565.0, 1
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %.split10991
  %.sroa.06563.1 = phi ptr [ %i.cko, %.split10991 ], [ %i.cly, %bb.uj ]
  %.sroa.76565.1 = phi i64 [ %.sroa.76565.0, %.split10991 ], [ %i.clz, %bb.uj ]
  %.sroa.2.0.i2846 = phi ptr [ null, %.split10991 ], [ %.sroa.06563.0, %bb.uj ]
  %.sroa.0.0.i2847 = phi i64 [ undef, %.split10991 ], [ %.sroa.76565.0, %bb.uj ]
  %i.cma = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2847, 0
  %i.cmb = insertvalue { i64, ptr } %i.cma, ptr %.sroa.2.0.i2846, 1
  %.fr88.i.i2225 = freeze { i64, ptr } %i.cmb     ; 2 uses
  %i.cmc = extractvalue { i64, ptr } %.fr88.i.i2225, 1 ; 2 uses
  %.not87.i.i2226 = icmp eq ptr %i.cmc, null
  br i1 %.not87.i.i2226, label %.loopexit8958, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.cmd = extractvalue { i64, ptr } %.fr88.i.i2225, 0 ; 2 uses
  %i.cme = urem i64 %i.cmd, %i.chc                ; 2 uses
  %i.cmf = sub nuw i64 %i.cmd, %i.cme
  %i.cmg = mul i64 %i.cmf, %i.cgv
  %i.cmh = add i64 %i.cmg, %i.cme                 ; 5 uses
  %i.cmi = icmp ugt i64 %i.cmh, %i.ckm
  br i1 %i.cmi, label %.invoke15930, label %bb.um, !prof !10

.split10993.us:                                   ; preds = %.split10991.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.ua unwind label %bb.ti, !noalias !10247

bb.um:                                            ; preds = %bb.ul
  %i.cmj = sub nuw i64 %i.ckm, %i.cmh             ; 2 uses
  %i.cmk = getelementptr inbounds nuw [2 x i8], ptr %i.ckn, i64 %i.cmh ; 2 uses
  %.not89.i.i2227 = icmp eq i64 %i.ckm, %i.cmh
  br i1 %.not89.i.i2227, label %.invoke15928, label %bb.un

.invoke15930:                                     ; preds = %.lr.ph11002, %bb.ul, %bb.tk, %bb.ug
  %i.cml = phi i64 [ %i.cmh, %bb.ul ], [ %i.chu, %bb.tk ], [ %i.chu, %bb.ug ], [ %i.ckx, %.lr.ph11002 ]
  %i.cmm = phi i64 [ %i.ckm, %bb.ul ], [ %i.chw, %bb.tk ], [ %i.chw, %bb.ug ], [ %i.cky, %.lr.ph11002 ]
  %i.cmn = phi i64 [ %i.ckm, %bb.ul ], [ %i.bni, %bb.tk ], [ %i.bni, %bb.ug ], [ %i.ckm, %.lr.ph11002 ]
  %i.cmo = phi ptr [ @12, %bb.ul ], [ @13, %bb.tk ], [ @13, %bb.ug ], [ @8, %.lr.ph11002 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cml, i64 noundef %i.cmm, i64 noundef %i.cmn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cmo) #22
          to label %.cont15931 unwind label %bb.ti, !noalias !10247

.cont15931:                                       ; preds = %.invoke15930
  unreachable

bb.un:                                            ; preds = %bb.um
  %i.cmp = load i16, ptr %i.cmk, align 2, !alias.scope !10256, !noundef !5
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.uq
  %.sroa.044.0.i.i223010990 = phi i64 [ 0, %bb.un ], [ %i.cmw, %bb.uq ] ; 3 uses
  %.sroa.021.0.i.i222910989 = phi i64 [ 0, %bb.un ], [ %spec.select99.i.i2232, %bb.uq ]
  %.sroa.022.0.i.i222810988 = phi i16 [ %i.cmp, %bb.un ], [ %spec.select98.i.i2231, %bb.uq ] ; 2 uses
  %i.cmq = mul i64 %.sroa.044.0.i.i223010990, %i.chc ; 3 uses
  %i.cmr = icmp ult i64 %i.cmq, %i.cmj
  br i1 %i.cmr, label %bb.uq, label %.invoke15928

bb.up:                                            ; preds = %bb.uq
  %i.cms = trunc i64 %spec.select99.i.i2232 to i32
  store i32 %i.cms, ptr %i.cmc, align 4, !noalias !10247
  br label %.split10991

.invoke15928:                                     ; preds = %bb.um, %bb.uo
  %i.cmt = phi i64 [ %i.cmq, %bb.uo ], [ 0, %bb.um ]
  %i.cmu = phi i64 [ %i.cmj, %bb.uo ], [ 0, %bb.um ]
  %i.cmv = phi ptr [ @11, %bb.uo ], [ @10, %bb.um ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cmt, i64 noundef %i.cmu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cmv) #22
          to label %.cont15929 unwind label %bb.ti, !noalias !10247

.cont15929:                                       ; preds = %.invoke15928
  unreachable

bb.uq:                                            ; preds = %bb.uo
  %i.cmw = add nuw i64 %.sroa.044.0.i.i223010990, 1 ; 2 uses
  %i.cmx = getelementptr inbounds nuw [2 x i8], ptr %i.cmk, i64 %i.cmq
  %i.cmy = load i16, ptr %i.cmx, align 2, !alias.scope !10256, !noundef !5 ; 2 uses
  %i.cmz = icmp sgt i16 %.sroa.022.0.i.i222810988, %i.cmy
  %spec.select98.i.i2231 = tail call i16 @llvm.smin.i16(i16 %.sroa.022.0.i.i222810988, i16 %i.cmy)
  %spec.select99.i.i2232 = select i1 %i.cmz, i64 %.sroa.044.0.i.i223010990, i64 %.sroa.021.0.i.i222910989 ; 2 uses
  %exitcond12912.not = icmp eq i64 %i.cmw, %i.cgv
  br i1 %exitcond12912.not, label %bb.up, label %bb.uo

bb.ur:                                            ; preds = %bb.rt
  %.sroa.551.0..sroa_idx.i86.i2161 = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %.sroa.76426.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76426.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i86.i2161, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !10232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i80.i2016.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i80.i2016.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !10232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !10232
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb), !noalias !10231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !10232
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread7392

.loopexit8965:                                    ; preds = %.thread7336, %bb.sr, %.split10972.us, %bb.sp, %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !10232
  %i.cna = load <2 x i64>, ptr %i.eb, align 16, !noalias !10232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !10232
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread

bb.us:                                            ; preds = %bb.tm
  %.sroa.551.0..sroa_idx.i.i2205 = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %.sroa.76423.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76423.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i.i2205, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !10248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i.i2027.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i.i2027.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !10248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !10248
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei), !noalias !10247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !10248
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread7392

.loopexit8958:                                    ; preds = %.thread7362, %bb.uk, %.split10991.us, %bb.ui, %bb.tw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !10248
  %i.cnb = load <2 x i64>, ptr %i.ei, align 16, !noalias !10248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !10248
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread

_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit: ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !10258
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr @42, ptr %i.cnc, align 8, !noalias !10258
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 6, ptr %i.cnd, align 8, !noalias !10258
  store i64 -9223372036854775796, ptr %i.el, align 8, !noalias !10258
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ej, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !10258
  %.sroa.06436.0.copyload = load i64, ptr %i.ej, align 8 ; 2 uses
  %.sroa.46437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.46437.0.copyload = load i64, ptr %.sroa.46437.0..sroa_idx, align 8 ; 2 uses
  %.sroa.56438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.cne = load <2 x i64>, ptr %.sroa.56438.0..sroa_idx, align 8 ; 3 uses
  %.sroa.56438.sroa.5.0..sroa.56438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %.sroa.56438.sroa.5.0.copyload = load i64, ptr %.sroa.56438.sroa.5.0..sroa.56438.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not186 = icmp eq i64 %.sroa.06436.0.copyload, -1
  %i.cnf = extractelement <2 x i64> %i.cne, i64 0
  %i.cng = extractelement <2 x i64> %i.cne, i64 1
  br i1 %.not186, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fsNcNtNtB6_10CpuStorage3I160EB8_.exit.thread7392

bb.ut:                                            ; preds = %bb.a
  %i.cnh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cni = load ptr, ptr %i.cnh, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.cnj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cnk = load i64, ptr %i.cnj, align 8, !noundef !5 ; 32 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10261)
  %i.cnl = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10262
  %i.cnm = icmp eq i64 %i.cnl, 0
  br i1 %i.cnm, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.cnn = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cno = load i8, ptr %i.cnn, align 1, !range !24, !alias.scope !10259, !noundef !5
  %i.cnp = trunc nuw i8 %i.cno to i1
  %i.cnq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cnr = load i8, ptr %i.cnq, align 8, !range !24, !alias.scope !10259, !noundef !5
  %i.cns = trunc nuw i8 %i.cnr to i1              ; 2 uses
  %i.cnt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %i.cnp, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  br i1 %i.cns, label %bb.wq, label %bb.ux

bb.uw:                                            ; preds = %bb.uu
  br i1 %i.cns, label %bb.aae, label %bb.yl

bb.ux:                                            ; preds = %bb.uv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10265)
  %i.cnu = load i64, ptr %i.cnt, align 8, !alias.scope !10266, !noundef !5 ; 2 uses
  %i.cnv = load i64, ptr %1, align 8, !alias.scope !10267, !noundef !5 ; 7 uses
  %i.cnw = icmp ult i64 %i.cnv, %i.cnu
  br i1 %i.cnw, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.cnx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cny = load ptr, ptr %i.cnx, align 8, !alias.scope !10266, !nonnull !5, !noundef !5
  %i.cnz = getelementptr inbounds nuw [8 x i8], ptr %i.cny, i64 %i.cnv
  %i.coa = load i64, ptr %i.cnz, align 8, !noalias !10268, !noundef !5 ; 8 uses
end_hunk_5
begin_hunk_6_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18387 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.fs) #20
          to label %bb.zb unwind label %bb.zs, !noalias !10300

bb.zh:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2921, %bb.zg
  %.sroa.6.0.i.i2922 = phi i64 [ %i.dcs, %bb.zg ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2921 ]
  %.sroa.08.0.i.i2923 = phi i64 [ 1, %bb.zg ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2921 ]
  store i64 %.sroa.08.0.i.i2923, ptr %i.fs, align 8, !alias.scope !10307, !noalias !10300
  store i64 %.sroa.6.0.i.i2922, ptr %i.dbe, align 8, !alias.scope !10307, !noalias !10300
  %i.dct = load i64, ptr %.sroa.233.0..sroa_idx.i188.i1651, align 8, !alias.scope !10304, !noalias !10300, !noundef !5 ; 4 uses
  %i.dcu = add i64 %i.dct, 1
  store i64 %i.dcu, ptr %.sroa.233.0..sroa_idx.i188.i1651, align 8, !alias.scope !10304, !noalias !10300
  %i.dcv = icmp ugt i64 %i.dbp, %i.cnk
  br i1 %i.dcv, label %bb.zl, label %bb.zk, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2930: ; preds = %bb.zq, %bb.zd
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.fs)
          to label %bb.zi unwind label %bb.zc, !noalias !10300

bb.zi:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !10301
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.fv)
          to label %bb.zj unwind label %bb.yv, !noalias !10300

bb.zj:                                            ; preds = %bb.zi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !10301
  br label %.loopexit8993

bb.zk:                                            ; preds = %bb.zh
  %i.dcw = sub nuw nsw i64 %i.cnk, %i.dbp         ; 2 uses
  %i.dcx = getelementptr inbounds nuw [4 x i8], ptr %i.cni, i64 %i.dbp ; 2 uses
  %.not84.i189.i1652 = icmp eq i64 %i.cnk, %i.dbp
  br i1 %.not84.i189.i1652, label %.invoke15950, label %bb.zm

bb.zl:                                            ; preds = %bb.zh
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dbp, i64 noundef range(i64 0, 2305843009213693952) %i.cnk, i64 noundef range(i64 0, 2305843009213693952) %i.cnk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.zn unwind label %.loopexit.split-lp8996.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10300

bb.zm:                                            ; preds = %bb.zk
  %i.dcy = load i32, ptr %i.dcx, align 4, !alias.scope !10309, !noundef !5
  br label %bb.zo

bb.zn:                                            ; preds = %.split10898.us, %bb.zl
  unreachable

bb.zo:                                            ; preds = %bb.zm, %bb.zr
  %.sroa.055.0.i192.i165510891 = phi i64 [ 0, %bb.zm ], [ %i.ddk, %bb.zr ] ; 3 uses
  %.sroa.035.0.i191.i165410890 = phi i32 [ %i.dcy, %bb.zm ], [ %spec.select95.i194.i1657, %bb.zr ] ; 2 uses
  %.sroa.034.0.i190.i165310889 = phi i64 [ 0, %bb.zm ], [ %spec.select.i193.i1656, %bb.zr ]
  %i.dcz = mul i64 %.sroa.055.0.i192.i165510891, %i.daf ; 3 uses
  %i.dda = icmp ult i64 %i.dcz, %i.dcw
  br i1 %i.dda, label %bb.zr, label %.invoke15950

bb.zp:                                            ; preds = %bb.zr
  %i.ddb = icmp ult i64 %i.dct, %i.dam
  br i1 %i.ddb, label %bb.zq, label %.invoke15950

bb.zq:                                            ; preds = %bb.zp
  %i.ddc = trunc i64 %spec.select.i193.i1656 to i32
  %i.ddd = getelementptr inbounds nuw [4 x i8], ptr %i.dap, i64 %i.dct
  store i32 %i.ddc, ptr %i.ddd, align 4, !noalias !10300
  %i.dde = load i64, ptr %i.fs, align 8, !range !8, !alias.scope !10310, !noalias !10300, !noundef !5
  %i.ddf = load i64, ptr %i.dbe, align 8, !alias.scope !10310, !noalias !10300
  %i.ddg = trunc nuw i64 %i.dde to i1
  br i1 %i.ddg, label %bb.ze, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2930

.invoke15950:                                     ; preds = %bb.zp, %bb.zk, %bb.zo
  %i.ddh = phi i64 [ %i.dcz, %bb.zo ], [ 0, %bb.zk ], [ %i.dct, %bb.zp ]
  %i.ddi = phi i64 [ %i.dcw, %bb.zo ], [ 0, %bb.zk ], [ %i.dam, %bb.zp ]
  %i.ddj = phi ptr [ @6, %bb.zo ], [ @4, %bb.zk ], [ @5, %bb.zp ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ddh, i64 noundef %i.ddi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ddj) #22
          to label %.cont15951 unwind label %.loopexit.split-lp8996.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10300

.cont15951:                                       ; preds = %.invoke15950
  unreachable

bb.zr:                                            ; preds = %bb.zo
  %i.ddk = add nuw i64 %.sroa.055.0.i192.i165510891, 1 ; 2 uses
  %i.ddl = getelementptr inbounds nuw [4 x i8], ptr %i.dcx, i64 %i.dcz
  %i.ddm = load i32, ptr %i.ddl, align 4, !alias.scope !10309, !noundef !5 ; 2 uses
  %i.ddn = icmp slt i32 %.sroa.035.0.i191.i165410890, %i.ddm
  %spec.select.i193.i1656 = select i1 %i.ddn, i64 %.sroa.055.0.i192.i165510891, i64 %.sroa.034.0.i190.i165310889 ; 2 uses
  %spec.select95.i194.i1657 = call i32 @llvm.smax.i32(i32 %.sroa.035.0.i191.i165410890, i32 %i.ddm)
  %exitcond12901.not = icmp eq i64 %i.ddk, %i.czy
  br i1 %exitcond12901.not, label %bb.zp, label %bb.zo

bb.zs:                                            ; preds = %.loopexit.split-lp8996.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.zb, %bb.yu
  %i.ddo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10302
  unreachable

bb.zt:                                            ; preds = %bb.yx
  %i.ddp = sub nuw i64 %i.daz, %i.dax             ; 7 uses
  %.not86.i195.i1658 = icmp ugt i64 %i.daz, %i.cnk
  br i1 %.not86.i195.i1658, label %.invoke15948, label %bb.zu, !prof !10

bb.zu:                                            ; preds = %bb.zt
  %i.ddq = getelementptr inbounds nuw [4 x i8], ptr %i.cni, i64 %i.dax ; 2 uses
  %.idx11225 = shl nuw nsw i64 %i.dam, 2
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.dap, i64 %.idx11225 ; 3 uses
  switch i64 %i.daf, label %.split10896 [
    i64 1, label %bb.zv
    i64 0, label %.split10896.us
  ]

bb.zv:                                            ; preds = %bb.zu
  %i.dds = icmp eq i64 %i.dam, 0
  br i1 %i.dds, label %.loopexit8993, label %.lr.ph10907.preheader

.lr.ph10907.preheader:                            ; preds = %bb.zv
  %i.ddt = add i64 %i.czy, 4611686018427387903
  %i.ddu = and i64 %i.ddt, 4611686018427387903    ; 2 uses
  %i.ddv = add nuw nsw i64 %i.ddu, 1              ; 2 uses
  %xtraiter19492 = and i64 %i.ddv, 3              ; 3 uses
  %i.ddw = icmp samesign ult i64 %i.ddu, 3
  %unroll_iter19497 = and i64 %i.ddv, 9223372036854775804
  %lcmp.mod19494.not = icmp eq i64 %xtraiter19492, 0
  %lcmp.mod19496 = icmp ne i64 %xtraiter19492, 0
  br label %.lr.ph10907

.split10896.us:                                   ; preds = %bb.zu
  %i.ddx = icmp eq i64 %i.dam, 0
  br i1 %i.ddx, label %.loopexit8993, label %.split10898.us

.lr.ph10907:                                      ; preds = %.lr.ph10907.preheader, %.thread7467
  %.sroa.76054.010906 = phi i64 [ %i.ddz, %.thread7467 ], [ 0, %.lr.ph10907.preheader ] ; 2 uses
  %.sroa.06052.010905 = phi ptr [ %i.ddy, %.thread7467 ], [ %i.dap, %.lr.ph10907.preheader ] ; 2 uses
  %i.ddy = getelementptr inbounds nuw i8, ptr %.sroa.06052.010905, i64 4 ; 2 uses
  %i.ddz = add nuw nsw i64 %.sroa.76054.010906, 1
  %i.dea = mul i64 %.sroa.76054.010906, %i.czy    ; 4 uses
  %i.deb = add i64 %i.dea, %i.czy                 ; 3 uses
  %i.dec = icmp ult i64 %i.deb, %i.dea
  %.not91.i209.i1672 = icmp ugt i64 %i.deb, %i.ddp
  %or.cond.i210.i1673 = select i1 %i.dec, i1 true, i1 %.not91.i209.i1672, !prof !7
  br i1 %or.cond.i210.i1673, label %.invoke15948, label %.lr.ph10903.preheader, !prof !7

.lr.ph10903.preheader:                            ; preds = %.lr.ph10907
  %i.ded = getelementptr inbounds nuw [4 x i8], ptr %i.ddq, i64 %i.dea ; 3 uses
  %i.dee = load i32, ptr %i.ded, align 4, !alias.scope !10309, !noundef !5 ; 2 uses
  br i1 %i.ddw, label %.lr.ph10903.epil.preheader, label %.lr.ph10903

.thread7467.unr-lcssa:                            ; preds = %.lr.ph10903
  br i1 %lcmp.mod19494.not, label %.thread7467, label %.lr.ph10903.epil.preheader

.lr.ph10903.epil.preheader:                       ; preds = %.thread7467.unr-lcssa, %.lr.ph10903.preheader
  %.sroa.04.0.i214.i167710902.epil.init = phi i32 [ 0, %.lr.ph10903.preheader ], [ %spec.select97.i217.i1680.3, %.thread7467.unr-lcssa ]
  %.sroa.05.0.i213.i167610901.epil.init = phi i32 [ %i.dee, %.lr.ph10903.preheader ], [ %spec.select96.i216.i1679.3, %.thread7467.unr-lcssa ]
  %.sroa.76057.010900.epil.init = phi i32 [ 0, %.lr.ph10903.preheader ], [ %i.dew, %.thread7467.unr-lcssa ]
  %.sroa.06055.010899.epil.init = phi ptr [ %i.ded, %.lr.ph10903.preheader ], [ %i.dex, %.thread7467.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19496)
  br label %.lr.ph10903.epil

.lr.ph10903.epil:                                 ; preds = %.lr.ph10903.epil, %.lr.ph10903.epil.preheader
  %.sroa.04.0.i214.i167710902.epil = phi i32 [ %spec.select97.i217.i1680.epil, %.lr.ph10903.epil ], [ %.sroa.04.0.i214.i167710902.epil.init, %.lr.ph10903.epil.preheader ]
  %.sroa.05.0.i213.i167610901.epil = phi i32 [ %spec.select96.i216.i1679.epil, %.lr.ph10903.epil ], [ %.sroa.05.0.i213.i167610901.epil.init, %.lr.ph10903.epil.preheader ] ; 2 uses
  %.sroa.76057.010900.epil = phi i32 [ %i.def, %.lr.ph10903.epil ], [ %.sroa.76057.010900.epil.init, %.lr.ph10903.epil.preheader ] ; 2 uses
  %.sroa.06055.010899.epil = phi ptr [ %i.deg, %.lr.ph10903.epil ], [ %.sroa.06055.010899.epil.init, %.lr.ph10903.epil.preheader ] ; 2 uses
  %epil.iter19493 = phi i64 [ %epil.iter19493.next, %.lr.ph10903.epil ], [ 0, %.lr.ph10903.epil.preheader ]
  %i.def = add i32 %.sroa.76057.010900.epil, 1
  %i.deg = getelementptr inbounds nuw i8, ptr %.sroa.06055.010899.epil, i64 4
  %i.deh = load i32, ptr %.sroa.06055.010899.epil, align 4, !noalias !10302, !noundef !5 ; 2 uses
  %i.dei = icmp slt i32 %.sroa.05.0.i213.i167610901.epil, %i.deh
  %spec.select96.i216.i1679.epil = tail call i32 @llvm.smax.i32(i32 %.sroa.05.0.i213.i167610901.epil, i32 %i.deh)
  %spec.select97.i217.i1680.epil = select i1 %i.dei, i32 %.sroa.76057.010900.epil, i32 %.sroa.04.0.i214.i167710902.epil ; 2 uses
  %epil.iter19493.next = add i64 %epil.iter19493, 1 ; 2 uses
  %epil.iter19493.cmp.not = icmp eq i64 %epil.iter19493.next, %xtraiter19492
  br i1 %epil.iter19493.cmp.not, label %.thread7467, label %.lr.ph10903.epil, !llvm.loop !9487

.thread7467:                                      ; preds = %.lr.ph10903.epil, %.thread7467.unr-lcssa
  %spec.select97.i217.i1680.lcssa = phi i32 [ %spec.select97.i217.i1680.3, %.thread7467.unr-lcssa ], [ %spec.select97.i217.i1680.epil, %.lr.ph10903.epil ]
  store i32 %spec.select97.i217.i1680.lcssa, ptr %.sroa.06052.010905, align 4, !noalias !10302
  %i.dej = icmp eq ptr %i.ddy, %i.ddr
  br i1 %i.dej, label %.loopexit8993, label %.lr.ph10907

.lr.ph10903:                                      ; preds = %.lr.ph10903.preheader, %.lr.ph10903
  %.sroa.04.0.i214.i167710902 = phi i32 [ %spec.select97.i217.i1680.3, %.lr.ph10903 ], [ 0, %.lr.ph10903.preheader ]
  %.sroa.05.0.i213.i167610901 = phi i32 [ %spec.select96.i216.i1679.3, %.lr.ph10903 ], [ %i.dee, %.lr.ph10903.preheader ] ; 2 uses
  %.sroa.76057.010900 = phi i32 [ %i.dew, %.lr.ph10903 ], [ 0, %.lr.ph10903.preheader ] ; 5 uses
  %.sroa.06055.010899 = phi ptr [ %i.dex, %.lr.ph10903 ], [ %i.ded, %.lr.ph10903.preheader ] ; 5 uses
  %niter19498 = phi i64 [ %niter19498.next.3, %.lr.ph10903 ], [ 0, %.lr.ph10903.preheader ]
  %i.dek = or disjoint i32 %.sroa.76057.010900, 1
  %i.del = getelementptr inbounds nuw i8, ptr %.sroa.06055.010899, i64 4
  %i.dem = load i32, ptr %.sroa.06055.010899, align 4, !noalias !10302, !noundef !5 ; 2 uses
  %i.den = icmp slt i32 %.sroa.05.0.i213.i167610901, %i.dem
  %spec.select96.i216.i1679 = tail call i32 @llvm.smax.i32(i32 %.sroa.05.0.i213.i167610901, i32 %i.dem) ; 2 uses
  %spec.select97.i217.i1680 = select i1 %i.den, i32 %.sroa.76057.010900, i32 %.sroa.04.0.i214.i167710902
  %i.deo = or disjoint i32 %.sroa.76057.010900, 2
  %i.dep = getelementptr inbounds nuw i8, ptr %.sroa.06055.010899, i64 8
  %i.deq = load i32, ptr %i.del, align 4, !noalias !10302, !noundef !5 ; 2 uses
  %i.der = icmp slt i32 %spec.select96.i216.i1679, %i.deq
  %spec.select96.i216.i1679.1 = tail call i32 @llvm.smax.i32(i32 %spec.select96.i216.i1679, i32 %i.deq) ; 2 uses
  %spec.select97.i217.i1680.1 = select i1 %i.der, i32 %i.dek, i32 %spec.select97.i217.i1680
  %i.des = or disjoint i32 %.sroa.76057.010900, 3
  %i.det = getelementptr inbounds nuw i8, ptr %.sroa.06055.010899, i64 12
  %i.deu = load i32, ptr %i.dep, align 4, !noalias !10302, !noundef !5 ; 2 uses
  %i.dev = icmp slt i32 %spec.select96.i216.i1679.1, %i.deu
  %spec.select96.i216.i1679.2 = tail call i32 @llvm.smax.i32(i32 %spec.select96.i216.i1679.1, i32 %i.deu) ; 2 uses
  %spec.select97.i217.i1680.2 = select i1 %i.dev, i32 %i.deo, i32 %spec.select97.i217.i1680.1
  %i.dew = add nuw nsw i32 %.sroa.76057.010900, 4 ; 2 uses
  %i.dex = getelementptr inbounds nuw i8, ptr %.sroa.06055.010899, i64 16 ; 2 uses
  %i.dey = load i32, ptr %i.det, align 4, !noalias !10302, !noundef !5 ; 2 uses
  %i.dez = icmp slt i32 %spec.select96.i216.i1679.2, %i.dey
  %spec.select96.i216.i1679.3 = tail call i32 @llvm.smax.i32(i32 %spec.select96.i216.i1679.2, i32 %i.dey) ; 2 uses
  %spec.select97.i217.i1680.3 = select i1 %i.dez, i32 %i.des, i32 %spec.select97.i217.i1680.2 ; 3 uses
  %niter19498.next.3 = add i64 %niter19498, 4     ; 2 uses
  %niter19498.ncmp.3 = icmp eq i64 %niter19498.next.3, %unroll_iter19497
  br i1 %niter19498.ncmp.3, label %.thread7467.unr-lcssa, label %.lr.ph10903

.split10896:                                      ; preds = %bb.zu, %bb.aac
  %.sroa.06058.0 = phi ptr [ %.sroa.06058.1, %bb.aac ], [ %i.dap, %bb.zu ] ; 3 uses
  %.sroa.76060.0 = phi i64 [ %.sroa.76060.1, %bb.aac ], [ 0, %bb.zu ] ; 3 uses
  %i.dfa = icmp eq ptr %.sroa.06058.0, %i.ddr
  br i1 %i.dfa, label %bb.zx, label %bb.zw

bb.zw:                                            ; preds = %.split10896
  %i.dfb = getelementptr inbounds nuw i8, ptr %.sroa.06058.0, i64 4
  %i.dfc = add i64 %.sroa.76060.0, 1
  br label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %.split10896
  %.sroa.06058.1 = phi ptr [ %i.ddr, %.split10896 ], [ %i.dfb, %bb.zw ]
  %.sroa.76060.1 = phi i64 [ %.sroa.76060.0, %.split10896 ], [ %i.dfc, %bb.zw ]
  %.sroa.2.0.i2937 = phi ptr [ null, %.split10896 ], [ %.sroa.06058.0, %bb.zw ]
  %.sroa.0.0.i2938 = phi i64 [ undef, %.split10896 ], [ %.sroa.76060.0, %bb.zw ]
  %i.dfd = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2938, 0
  %i.dfe = insertvalue { i64, ptr } %i.dfd, ptr %.sroa.2.0.i2937, 1
  %.fr88.i198.i1661 = freeze { i64, ptr } %i.dfe  ; 2 uses
  %i.dff = extractvalue { i64, ptr } %.fr88.i198.i1661, 1 ; 2 uses
  %.not87.i199.i1662 = icmp eq ptr %i.dff, null
  br i1 %.not87.i199.i1662, label %.loopexit8993, label %bb.zy

bb.zy:                                            ; preds = %bb.zx
  %i.dfg = extractvalue { i64, ptr } %.fr88.i198.i1661, 0 ; 2 uses
  %i.dfh = urem i64 %i.dfg, %i.daf                ; 2 uses
  %i.dfi = sub nuw i64 %i.dfg, %i.dfh
  %i.dfj = mul i64 %i.dfi, %i.czy
  %i.dfk = add i64 %i.dfj, %i.dfh                 ; 5 uses
  %i.dfl = icmp ugt i64 %i.dfk, %i.ddp
  br i1 %i.dfl, label %.invoke15948, label %bb.zz, !prof !10

.split10898.us:                                   ; preds = %.split10896.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.zn unwind label %bb.yv, !noalias !10300

bb.zz:                                            ; preds = %bb.zy
  %i.dfm = sub nuw i64 %i.ddp, %i.dfk             ; 2 uses
  %i.dfn = getelementptr inbounds nuw [4 x i8], ptr %i.ddq, i64 %i.dfk ; 2 uses
  %.not89.i200.i1663 = icmp eq i64 %i.ddp, %i.dfk
  br i1 %.not89.i200.i1663, label %.invoke15946, label %bb.aaa

.invoke15948:                                     ; preds = %.lr.ph10907, %bb.zy, %bb.yx, %bb.zt
  %i.dfo = phi i64 [ %i.dfk, %bb.zy ], [ %i.dax, %bb.yx ], [ %i.dax, %bb.zt ], [ %i.dea, %.lr.ph10907 ]
  %i.dfp = phi i64 [ %i.ddp, %bb.zy ], [ %i.daz, %bb.yx ], [ %i.daz, %bb.zt ], [ %i.deb, %.lr.ph10907 ]
  %i.dfq = phi i64 [ %i.ddp, %bb.zy ], [ %i.cnk, %bb.yx ], [ %i.cnk, %bb.zt ], [ %i.ddp, %.lr.ph10907 ]
  %i.dfr = phi ptr [ @12, %bb.zy ], [ @13, %bb.yx ], [ @13, %bb.zt ], [ @8, %.lr.ph10907 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dfo, i64 noundef %i.dfp, i64 noundef %i.dfq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dfr) #22
          to label %.cont15949 unwind label %bb.yv, !noalias !10300

.cont15949:                                       ; preds = %.invoke15948
  unreachable

bb.aaa:                                           ; preds = %bb.zz
  %i.dfs = load i32, ptr %i.dfn, align 4, !alias.scope !10309, !noundef !5
  br label %bb.aab

bb.aab:                                           ; preds = %bb.aaa, %bb.aad
  %.sroa.044.0.i203.i166610895 = phi i64 [ 0, %bb.aaa ], [ %i.dfz, %bb.aad ] ; 3 uses
  %.sroa.021.0.i202.i166510894 = phi i64 [ 0, %bb.aaa ], [ %spec.select99.i205.i1668, %bb.aad ]
  %.sroa.022.0.i201.i166410893 = phi i32 [ %i.dfs, %bb.aaa ], [ %spec.select98.i204.i1667, %bb.aad ] ; 2 uses
  %i.dft = mul i64 %.sroa.044.0.i203.i166610895, %i.daf ; 3 uses
  %i.dfu = icmp ult i64 %i.dft, %i.dfm
  br i1 %i.dfu, label %bb.aad, label %.invoke15946

bb.aac:                                           ; preds = %bb.aad
  %i.dfv = trunc i64 %spec.select99.i205.i1668 to i32
  store i32 %i.dfv, ptr %i.dff, align 4, !noalias !10300
  br label %.split10896

.invoke15946:                                     ; preds = %bb.zz, %bb.aab
  %i.dfw = phi i64 [ %i.dft, %bb.aab ], [ 0, %bb.zz ]
  %i.dfx = phi i64 [ %i.dfm, %bb.aab ], [ 0, %bb.zz ]
  %i.dfy = phi ptr [ @11, %bb.aab ], [ @10, %bb.zz ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dfw, i64 noundef %i.dfx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dfy) #22
          to label %.cont15947 unwind label %bb.yv, !noalias !10300

.cont15947:                                       ; preds = %.invoke15946
  unreachable

bb.aad:                                           ; preds = %bb.aab
  %i.dfz = add nuw i64 %.sroa.044.0.i203.i166610895, 1 ; 2 uses
  %i.dga = getelementptr inbounds nuw [4 x i8], ptr %i.dfn, i64 %i.dft
  %i.dgb = load i32, ptr %i.dga, align 4, !alias.scope !10309, !noundef !5 ; 2 uses
  %i.dgc = icmp slt i32 %.sroa.022.0.i201.i166410893, %i.dgb
  %spec.select98.i204.i1667 = tail call i32 @llvm.smax.i32(i32 %.sroa.022.0.i201.i166410893, i32 %i.dgb)
  %spec.select99.i205.i1668 = select i1 %i.dgc, i64 %.sroa.044.0.i203.i166610895, i64 %.sroa.021.0.i202.i166510894 ; 2 uses
  %exitcond12902.not = icmp eq i64 %i.dfz, %i.czy
  br i1 %exitcond12902.not, label %bb.aac, label %bb.aab

bb.aae:                                           ; preds = %bb.uw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10313)
  %i.dgd = load i64, ptr %i.cnt, align 8, !alias.scope !10314, !noundef !5 ; 2 uses
  %i.dge = load i64, ptr %1, align 8, !alias.scope !10315, !noundef !5 ; 7 uses
  %i.dgf = icmp ult i64 %i.dge, %i.dgd
  br i1 %i.dgf, label %bb.aaf, label %bb.aag

bb.aaf:                                           ; preds = %bb.aae
  %i.dgg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dgh = load ptr, ptr %i.dgg, align 8, !alias.scope !10314, !nonnull !5, !noundef !5
  %i.dgi = getelementptr inbounds nuw [8 x i8], ptr %i.dgh, i64 %i.dge
  %i.dgj = load i64, ptr %i.dgi, align 8, !noalias !10316, !noundef !5 ; 8 uses
  %i.dgk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dgl = load i64, ptr %i.dgk, align 8, !alias.scope !10314, !noundef !5 ; 2 uses
  %i.dgm = icmp ult i64 %i.dge, %i.dgl
  br i1 %i.dgm, label %bb.aah, label %bb.aai

bb.aag:                                           ; preds = %bb.aae
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dge, i64 noundef %i.dgd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10316
  unreachable

bb.aah:                                           ; preds = %bb.aaf
  %i.dgn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dgo = load ptr, ptr %i.dgn, align 8, !alias.scope !10314, !nonnull !5, !noundef !5
  %i.dgp = getelementptr inbounds nuw [8 x i8], ptr %i.dgo, i64 %i.dge
  %i.dgq = load i64, ptr %i.dgp, align 8, !noalias !10316, !noundef !5 ; 4 uses
  %i.dgr = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10316
  %i.dgs = icmp eq i64 %i.dgj, 0
  br i1 %i.dgs, label %bb.aak, label %bb.aaj

bb.aai:                                           ; preds = %bb.aaf
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dge, i64 noundef %i.dgl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10316
  unreachable

bb.aaj:                                           ; preds = %bb.aah
  %i.dgt = udiv i64 %i.dgr, %i.dgj                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !10317
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fy, i64 noundef %i.dgt, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10316
  %i.dgu = load i64, ptr %i.fy, align 8, !range !8, !noalias !10317, !noundef !5
  %i.dgv = trunc nuw i64 %i.dgu to i1
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.dgx = load i64, ptr %i.dgw, align 8, !range !12, !noalias !10317, !noundef !5 ; 8 uses
  %i.dgy = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  br i1 %i.dgv, label %bb.aal, label %bb.aam, !prof !10

bb.aak:                                           ; preds = %bb.aah
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10316
  unreachable

bb.aal:                                           ; preds = %bb.aaj
  %i.dgz = load i64, ptr %i.dgy, align 8, !noalias !10317
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dgx, i64 %i.dgz) #22, !noalias !10316
  unreachable

bb.aam:                                           ; preds = %bb.aaj
  %i.dha = load ptr, ptr %i.dgy, align 8, !noalias !10317, !nonnull !5, !noundef !5 ; 5 uses
  %i.dhb = icmp ule i64 %i.dgt, %i.dgx
  tail call void @llvm.assume(i1 %i.dhb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !10317
  store i64 %i.dgx, ptr %i.ge, align 16, !noalias !10317
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.dha, ptr %i.dhc, align 8, !noalias !10317
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i64 0, ptr %i.dhd, align 16, !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !10317
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.aap unwind label %bb.aao, !noalias !10316

bb.aan:                                           ; preds = %bb.aau, %bb.aao
  %.pn93.i131.i1681 = phi { ptr, i32 } [ %i.dhe, %bb.aao ], [ %.pn.i138.i1694, %bb.aau ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ge) #20
          to label %common.resume unwind label %bb.abl, !noalias !10318

bb.aao:                                           ; preds = %.invoke15954, %.invoke15952, %.split10917.us, %bb.abb, %bb.aar, %bb.aam
  %i.dhe = landingpad { ptr, i32 }
          cleanup
  br label %bb.aan

bb.aap:                                           ; preds = %bb.aam
  %i.dhf = load i64, ptr %i.gd, align 8, !range !8, !noalias !10317, !noundef !5
  %i.dhg = trunc nuw i64 %i.dhf to i1
  br i1 %i.dhg, label %bb.aaq, label %bb.aar

bb.aaq:                                           ; preds = %bb.aap
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.dhi = load i64, ptr %i.dhh, align 8, !noalias !10317, !noundef !5 ; 5 uses
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.dhk = load i64, ptr %i.dhj, align 8, !noalias !10317, !noundef !5 ; 5 uses
  %i.dhl = icmp ult i64 %i.dhk, %i.dhi
  br i1 %i.dhl, label %.invoke15954, label %bb.abm, !prof !10

bb.aar:                                           ; preds = %bb.aap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.i129.i1485.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !noalias !10317
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.dge, i64 noundef 0, i64 noundef 1)
          to label %bb.aas unwind label %bb.aao, !noalias !10316

end_hunk_6
begin_hunk_7_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18349 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.fz) #20
          to label %bb.aau unwind label %bb.abl, !noalias !10316

bb.aba:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2952, %bb.aaz
  %.sroa.6.0.i.i2953 = phi i64 [ %i.djd, %bb.aaz ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2952 ]
  %.sroa.08.0.i.i2954 = phi i64 [ 1, %bb.aaz ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i2952 ]
  store i64 %.sroa.08.0.i.i2954, ptr %i.fz, align 8, !alias.scope !10323, !noalias !10316
  store i64 %.sroa.6.0.i.i2953, ptr %i.dhp, align 8, !alias.scope !10323, !noalias !10316
  %i.dje = load i64, ptr %.sroa.233.0..sroa_idx.i139.i1695, align 8, !alias.scope !10320, !noalias !10316, !noundef !5 ; 4 uses
  %i.djf = add i64 %i.dje, 1
  store i64 %i.djf, ptr %.sroa.233.0..sroa_idx.i139.i1695, align 8, !alias.scope !10320, !noalias !10316
  %i.djg = icmp ugt i64 %i.dia, %i.cnk
  br i1 %i.djg, label %bb.abe, label %bb.abd, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2961: ; preds = %bb.abj, %bb.aaw
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.fz)
          to label %bb.abb unwind label %bb.aav, !noalias !10316

bb.abb:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !10317
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.gc)
          to label %bb.abc unwind label %bb.aao, !noalias !10316

bb.abc:                                           ; preds = %bb.abb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !noalias !10317
  br label %.loopexit8986

bb.abd:                                           ; preds = %bb.aba
  %i.djh = sub nuw nsw i64 %i.cnk, %i.dia         ; 2 uses
  %i.dji = getelementptr inbounds nuw [4 x i8], ptr %i.cni, i64 %i.dia ; 2 uses
  %.not84.i140.i1696 = icmp eq i64 %i.cnk, %i.dia
  br i1 %.not84.i140.i1696, label %.invoke15956, label %bb.abf

bb.abe:                                           ; preds = %bb.aba
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dia, i64 noundef range(i64 0, 2305843009213693952) %i.cnk, i64 noundef range(i64 0, 2305843009213693952) %i.cnk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.abg unwind label %.loopexit.split-lp8989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10316

bb.abf:                                           ; preds = %bb.abd
  %i.djj = load i32, ptr %i.dji, align 4, !alias.scope !10325, !noundef !5
  br label %bb.abh

bb.abg:                                           ; preds = %.split10917.us, %bb.abe
  unreachable

bb.abh:                                           ; preds = %bb.abf, %bb.abk
  %.sroa.055.0.i143.i169910910 = phi i64 [ 0, %bb.abf ], [ %i.djv, %bb.abk ] ; 3 uses
  %.sroa.035.0.i142.i169810909 = phi i32 [ %i.djj, %bb.abf ], [ %spec.select95.i145.i1701, %bb.abk ] ; 2 uses
  %.sroa.034.0.i141.i169710908 = phi i64 [ 0, %bb.abf ], [ %spec.select.i144.i1700, %bb.abk ]
  %i.djk = mul i64 %.sroa.055.0.i143.i169910910, %i.dgq ; 3 uses
  %i.djl = icmp ult i64 %i.djk, %i.djh
  br i1 %i.djl, label %bb.abk, label %.invoke15956

bb.abi:                                           ; preds = %bb.abk
  %i.djm = icmp ult i64 %i.dje, %i.dgx
  br i1 %i.djm, label %bb.abj, label %.invoke15956

bb.abj:                                           ; preds = %bb.abi
  %i.djn = trunc i64 %spec.select.i144.i1700 to i32
  %i.djo = getelementptr inbounds nuw [4 x i8], ptr %i.dha, i64 %i.dje
  store i32 %i.djn, ptr %i.djo, align 4, !noalias !10316
  %i.djp = load i64, ptr %i.fz, align 8, !range !8, !alias.scope !10326, !noalias !10316, !noundef !5
  %i.djq = load i64, ptr %i.dhp, align 8, !alias.scope !10326, !noalias !10316
  %i.djr = trunc nuw i64 %i.djp to i1
  br i1 %i.djr, label %bb.aax, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit2961

.invoke15956:                                     ; preds = %bb.abi, %bb.abd, %bb.abh
  %i.djs = phi i64 [ %i.djk, %bb.abh ], [ 0, %bb.abd ], [ %i.dje, %bb.abi ]
  %i.djt = phi i64 [ %i.djh, %bb.abh ], [ 0, %bb.abd ], [ %i.dgx, %bb.abi ]
  %i.dju = phi ptr [ @6, %bb.abh ], [ @4, %bb.abd ], [ @5, %bb.abi ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.djs, i64 noundef %i.djt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dju) #22
          to label %.cont15957 unwind label %.loopexit.split-lp8989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10316

.cont15957:                                       ; preds = %.invoke15956
  unreachable

bb.abk:                                           ; preds = %bb.abh
  %i.djv = add nuw i64 %.sroa.055.0.i143.i169910910, 1 ; 2 uses
  %i.djw = getelementptr inbounds nuw [4 x i8], ptr %i.dji, i64 %i.djk
  %i.djx = load i32, ptr %i.djw, align 4, !alias.scope !10325, !noundef !5 ; 2 uses
  %i.djy = icmp sgt i32 %.sroa.035.0.i142.i169810909, %i.djx
  %spec.select.i144.i1700 = select i1 %i.djy, i64 %.sroa.055.0.i143.i169910910, i64 %.sroa.034.0.i141.i169710908 ; 2 uses
  %spec.select95.i145.i1701 = call i32 @llvm.smin.i32(i32 %.sroa.035.0.i142.i169810909, i32 %i.djx)
  %exitcond12903.not = icmp eq i64 %i.djv, %i.dgj
  br i1 %exitcond12903.not, label %bb.abi, label %bb.abh

bb.abl:                                           ; preds = %.loopexit.split-lp8989.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aau, %bb.aan
  %i.djz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10318
  unreachable

bb.abm:                                           ; preds = %bb.aaq
  %i.dka = sub nuw i64 %i.dhk, %i.dhi             ; 7 uses
  %.not86.i146.i1702 = icmp ugt i64 %i.dhk, %i.cnk
  br i1 %.not86.i146.i1702, label %.invoke15954, label %bb.abn, !prof !10

bb.abn:                                           ; preds = %bb.abm
  %i.dkb = getelementptr inbounds nuw [4 x i8], ptr %i.cni, i64 %i.dhi ; 2 uses
  %.idx11228 = shl nuw nsw i64 %i.dgx, 2
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.dha, i64 %.idx11228 ; 3 uses
  switch i64 %i.dgq, label %.split10915 [
    i64 1, label %bb.abo
    i64 0, label %.split10915.us
  ]

bb.abo:                                           ; preds = %bb.abn
  %i.dkd = icmp eq i64 %i.dgx, 0
  br i1 %i.dkd, label %.loopexit8986, label %.lr.ph10926.preheader

.lr.ph10926.preheader:                            ; preds = %bb.abo
  %i.dke = add i64 %i.dgj, 4611686018427387903
  %i.dkf = and i64 %i.dke, 4611686018427387903    ; 2 uses
  %i.dkg = add nuw nsw i64 %i.dkf, 1              ; 2 uses
  %xtraiter19499 = and i64 %i.dkg, 3              ; 3 uses
  %i.dkh = icmp samesign ult i64 %i.dkf, 3
  %unroll_iter19504 = and i64 %i.dkg, 9223372036854775804
  %lcmp.mod19501.not = icmp eq i64 %xtraiter19499, 0
  %lcmp.mod19503 = icmp ne i64 %xtraiter19499, 0
  br label %.lr.ph10926

.split10915.us:                                   ; preds = %bb.abn
  %i.dki = icmp eq i64 %i.dgx, 0
  br i1 %i.dki, label %.loopexit8986, label %.split10917.us

.lr.ph10926:                                      ; preds = %.lr.ph10926.preheader, %.thread7493
  %.sroa.76017.010925 = phi i64 [ %i.dkk, %.thread7493 ], [ 0, %.lr.ph10926.preheader ] ; 2 uses
  %.sroa.06015.010924 = phi ptr [ %i.dkj, %.thread7493 ], [ %i.dha, %.lr.ph10926.preheader ] ; 2 uses
  %i.dkj = getelementptr inbounds nuw i8, ptr %.sroa.06015.010924, i64 4 ; 2 uses
  %i.dkk = add nuw nsw i64 %.sroa.76017.010925, 1
  %i.dkl = mul i64 %.sroa.76017.010925, %i.dgj    ; 4 uses
  %i.dkm = add i64 %i.dkl, %i.dgj                 ; 3 uses
  %i.dkn = icmp ult i64 %i.dkm, %i.dkl
  %.not91.i160.i1716 = icmp ugt i64 %i.dkm, %i.dka
  %or.cond.i161.i1717 = select i1 %i.dkn, i1 true, i1 %.not91.i160.i1716, !prof !7
  br i1 %or.cond.i161.i1717, label %.invoke15954, label %.lr.ph10922.preheader, !prof !7

.lr.ph10922.preheader:                            ; preds = %.lr.ph10926
  %i.dko = getelementptr inbounds nuw [4 x i8], ptr %i.dkb, i64 %i.dkl ; 3 uses
  %i.dkp = load i32, ptr %i.dko, align 4, !alias.scope !10325, !noundef !5 ; 2 uses
  br i1 %i.dkh, label %.lr.ph10922.epil.preheader, label %.lr.ph10922

.thread7493.unr-lcssa:                            ; preds = %.lr.ph10922
  br i1 %lcmp.mod19501.not, label %.thread7493, label %.lr.ph10922.epil.preheader

.lr.ph10922.epil.preheader:                       ; preds = %.thread7493.unr-lcssa, %.lr.ph10922.preheader
  %.sroa.04.0.i165.i172110921.epil.init = phi i32 [ 0, %.lr.ph10922.preheader ], [ %spec.select97.i168.i1724.3, %.thread7493.unr-lcssa ]
  %.sroa.05.0.i164.i172010920.epil.init = phi i32 [ %i.dkp, %.lr.ph10922.preheader ], [ %spec.select96.i167.i1723.3, %.thread7493.unr-lcssa ]
  %.sroa.76020.010919.epil.init = phi i32 [ 0, %.lr.ph10922.preheader ], [ %i.dlh, %.thread7493.unr-lcssa ]
  %.sroa.06018.010918.epil.init = phi ptr [ %i.dko, %.lr.ph10922.preheader ], [ %i.dli, %.thread7493.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19503)
  br label %.lr.ph10922.epil

.lr.ph10922.epil:                                 ; preds = %.lr.ph10922.epil, %.lr.ph10922.epil.preheader
  %.sroa.04.0.i165.i172110921.epil = phi i32 [ %spec.select97.i168.i1724.epil, %.lr.ph10922.epil ], [ %.sroa.04.0.i165.i172110921.epil.init, %.lr.ph10922.epil.preheader ]
  %.sroa.05.0.i164.i172010920.epil = phi i32 [ %spec.select96.i167.i1723.epil, %.lr.ph10922.epil ], [ %.sroa.05.0.i164.i172010920.epil.init, %.lr.ph10922.epil.preheader ] ; 2 uses
  %.sroa.76020.010919.epil = phi i32 [ %i.dkq, %.lr.ph10922.epil ], [ %.sroa.76020.010919.epil.init, %.lr.ph10922.epil.preheader ] ; 2 uses
  %.sroa.06018.010918.epil = phi ptr [ %i.dkr, %.lr.ph10922.epil ], [ %.sroa.06018.010918.epil.init, %.lr.ph10922.epil.preheader ] ; 2 uses
  %epil.iter19500 = phi i64 [ %epil.iter19500.next, %.lr.ph10922.epil ], [ 0, %.lr.ph10922.epil.preheader ]
  %i.dkq = add i32 %.sroa.76020.010919.epil, 1
  %i.dkr = getelementptr inbounds nuw i8, ptr %.sroa.06018.010918.epil, i64 4
  %i.dks = load i32, ptr %.sroa.06018.010918.epil, align 4, !noalias !10318, !noundef !5 ; 2 uses
  %i.dkt = icmp sgt i32 %.sroa.05.0.i164.i172010920.epil, %i.dks
  %spec.select96.i167.i1723.epil = tail call i32 @llvm.smin.i32(i32 %.sroa.05.0.i164.i172010920.epil, i32 %i.dks)
  %spec.select97.i168.i1724.epil = select i1 %i.dkt, i32 %.sroa.76020.010919.epil, i32 %.sroa.04.0.i165.i172110921.epil ; 2 uses
  %epil.iter19500.next = add i64 %epil.iter19500, 1 ; 2 uses
  %epil.iter19500.cmp.not = icmp eq i64 %epil.iter19500.next, %xtraiter19499
  br i1 %epil.iter19500.cmp.not, label %.thread7493, label %.lr.ph10922.epil, !llvm.loop !9509

.thread7493:                                      ; preds = %.lr.ph10922.epil, %.thread7493.unr-lcssa
  %spec.select97.i168.i1724.lcssa = phi i32 [ %spec.select97.i168.i1724.3, %.thread7493.unr-lcssa ], [ %spec.select97.i168.i1724.epil, %.lr.ph10922.epil ]
  store i32 %spec.select97.i168.i1724.lcssa, ptr %.sroa.06015.010924, align 4, !noalias !10318
  %i.dku = icmp eq ptr %i.dkj, %i.dkc
  br i1 %i.dku, label %.loopexit8986, label %.lr.ph10926

.lr.ph10922:                                      ; preds = %.lr.ph10922.preheader, %.lr.ph10922
  %.sroa.04.0.i165.i172110921 = phi i32 [ %spec.select97.i168.i1724.3, %.lr.ph10922 ], [ 0, %.lr.ph10922.preheader ]
  %.sroa.05.0.i164.i172010920 = phi i32 [ %spec.select96.i167.i1723.3, %.lr.ph10922 ], [ %i.dkp, %.lr.ph10922.preheader ] ; 2 uses
  %.sroa.76020.010919 = phi i32 [ %i.dlh, %.lr.ph10922 ], [ 0, %.lr.ph10922.preheader ] ; 5 uses
  %.sroa.06018.010918 = phi ptr [ %i.dli, %.lr.ph10922 ], [ %i.dko, %.lr.ph10922.preheader ] ; 5 uses
  %niter19505 = phi i64 [ %niter19505.next.3, %.lr.ph10922 ], [ 0, %.lr.ph10922.preheader ]
  %i.dkv = or disjoint i32 %.sroa.76020.010919, 1
  %i.dkw = getelementptr inbounds nuw i8, ptr %.sroa.06018.010918, i64 4
  %i.dkx = load i32, ptr %.sroa.06018.010918, align 4, !noalias !10318, !noundef !5 ; 2 uses
  %i.dky = icmp sgt i32 %.sroa.05.0.i164.i172010920, %i.dkx
  %spec.select96.i167.i1723 = tail call i32 @llvm.smin.i32(i32 %.sroa.05.0.i164.i172010920, i32 %i.dkx) ; 2 uses
  %spec.select97.i168.i1724 = select i1 %i.dky, i32 %.sroa.76020.010919, i32 %.sroa.04.0.i165.i172110921
  %i.dkz = or disjoint i32 %.sroa.76020.010919, 2
  %i.dla = getelementptr inbounds nuw i8, ptr %.sroa.06018.010918, i64 8
  %i.dlb = load i32, ptr %i.dkw, align 4, !noalias !10318, !noundef !5 ; 2 uses
  %i.dlc = icmp sgt i32 %spec.select96.i167.i1723, %i.dlb
  %spec.select96.i167.i1723.1 = tail call i32 @llvm.smin.i32(i32 %spec.select96.i167.i1723, i32 %i.dlb) ; 2 uses
  %spec.select97.i168.i1724.1 = select i1 %i.dlc, i32 %i.dkv, i32 %spec.select97.i168.i1724
  %i.dld = or disjoint i32 %.sroa.76020.010919, 3
  %i.dle = getelementptr inbounds nuw i8, ptr %.sroa.06018.010918, i64 12
  %i.dlf = load i32, ptr %i.dla, align 4, !noalias !10318, !noundef !5 ; 2 uses
  %i.dlg = icmp sgt i32 %spec.select96.i167.i1723.1, %i.dlf
  %spec.select96.i167.i1723.2 = tail call i32 @llvm.smin.i32(i32 %spec.select96.i167.i1723.1, i32 %i.dlf) ; 2 uses
  %spec.select97.i168.i1724.2 = select i1 %i.dlg, i32 %i.dkz, i32 %spec.select97.i168.i1724.1
  %i.dlh = add nuw nsw i32 %.sroa.76020.010919, 4 ; 2 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %.sroa.06018.010918, i64 16 ; 2 uses
  %i.dlj = load i32, ptr %i.dle, align 4, !noalias !10318, !noundef !5 ; 2 uses
  %i.dlk = icmp sgt i32 %spec.select96.i167.i1723.2, %i.dlj
  %spec.select96.i167.i1723.3 = tail call i32 @llvm.smin.i32(i32 %spec.select96.i167.i1723.2, i32 %i.dlj) ; 2 uses
  %spec.select97.i168.i1724.3 = select i1 %i.dlk, i32 %i.dld, i32 %spec.select97.i168.i1724.2 ; 3 uses
  %niter19505.next.3 = add i64 %niter19505, 4     ; 2 uses
  %niter19505.ncmp.3 = icmp eq i64 %niter19505.next.3, %unroll_iter19504
  br i1 %niter19505.ncmp.3, label %.thread7493.unr-lcssa, label %.lr.ph10922

.split10915:                                      ; preds = %bb.abn, %bb.abv
  %.sroa.06021.0 = phi ptr [ %.sroa.06021.1, %bb.abv ], [ %i.dha, %bb.abn ] ; 3 uses
  %.sroa.76023.0 = phi i64 [ %.sroa.76023.1, %bb.abv ], [ 0, %bb.abn ] ; 3 uses
  %i.dll = icmp eq ptr %.sroa.06021.0, %i.dkc
  br i1 %i.dll, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %.split10915
  %i.dlm = getelementptr inbounds nuw i8, ptr %.sroa.06021.0, i64 4
  %i.dln = add i64 %.sroa.76023.0, 1
  br label %bb.abq

bb.abq:                                           ; preds = %bb.abp, %.split10915
  %.sroa.06021.1 = phi ptr [ %i.dkc, %.split10915 ], [ %i.dlm, %bb.abp ]
  %.sroa.76023.1 = phi i64 [ %.sroa.76023.0, %.split10915 ], [ %i.dln, %bb.abp ]
  %.sroa.2.0.i2968 = phi ptr [ null, %.split10915 ], [ %.sroa.06021.0, %bb.abp ]
  %.sroa.0.0.i2969 = phi i64 [ undef, %.split10915 ], [ %.sroa.76023.0, %bb.abp ]
  %i.dlo = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i2969, 0
  %i.dlp = insertvalue { i64, ptr } %i.dlo, ptr %.sroa.2.0.i2968, 1
  %.fr88.i149.i1705 = freeze { i64, ptr } %i.dlp  ; 2 uses
  %i.dlq = extractvalue { i64, ptr } %.fr88.i149.i1705, 1 ; 2 uses
  %.not87.i150.i1706 = icmp eq ptr %i.dlq, null
  br i1 %.not87.i150.i1706, label %.loopexit8986, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.dlr = extractvalue { i64, ptr } %.fr88.i149.i1705, 0 ; 2 uses
  %i.dls = urem i64 %i.dlr, %i.dgq                ; 2 uses
  %i.dlt = sub nuw i64 %i.dlr, %i.dls
  %i.dlu = mul i64 %i.dlt, %i.dgj
  %i.dlv = add i64 %i.dlu, %i.dls                 ; 5 uses
  %i.dlw = icmp ugt i64 %i.dlv, %i.dka
  br i1 %i.dlw, label %.invoke15954, label %bb.abs, !prof !10

.split10917.us:                                   ; preds = %.split10915.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.abg unwind label %bb.aao, !noalias !10316

bb.abs:                                           ; preds = %bb.abr
  %i.dlx = sub nuw i64 %i.dka, %i.dlv             ; 2 uses
  %i.dly = getelementptr inbounds nuw [4 x i8], ptr %i.dkb, i64 %i.dlv ; 2 uses
  %.not89.i151.i1707 = icmp eq i64 %i.dka, %i.dlv
  br i1 %.not89.i151.i1707, label %.invoke15952, label %bb.abt

.invoke15954:                                     ; preds = %.lr.ph10926, %bb.abr, %bb.aaq, %bb.abm
  %i.dlz = phi i64 [ %i.dlv, %bb.abr ], [ %i.dhi, %bb.aaq ], [ %i.dhi, %bb.abm ], [ %i.dkl, %.lr.ph10926 ]
  %i.dma = phi i64 [ %i.dka, %bb.abr ], [ %i.dhk, %bb.aaq ], [ %i.dhk, %bb.abm ], [ %i.dkm, %.lr.ph10926 ]
  %i.dmb = phi i64 [ %i.dka, %bb.abr ], [ %i.cnk, %bb.aaq ], [ %i.cnk, %bb.abm ], [ %i.dka, %.lr.ph10926 ]
  %i.dmc = phi ptr [ @12, %bb.abr ], [ @13, %bb.aaq ], [ @13, %bb.abm ], [ @8, %.lr.ph10926 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dlz, i64 noundef %i.dma, i64 noundef %i.dmb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dmc) #22
          to label %.cont15955 unwind label %bb.aao, !noalias !10316

.cont15955:                                       ; preds = %.invoke15954
  unreachable

bb.abt:                                           ; preds = %bb.abs
  %i.dmd = load i32, ptr %i.dly, align 4, !alias.scope !10325, !noundef !5
  br label %bb.abu

bb.abu:                                           ; preds = %bb.abt, %bb.abw
  %.sroa.044.0.i154.i171010914 = phi i64 [ 0, %bb.abt ], [ %i.dmk, %bb.abw ] ; 3 uses
  %.sroa.021.0.i153.i170910913 = phi i64 [ 0, %bb.abt ], [ %spec.select99.i156.i1712, %bb.abw ]
  %.sroa.022.0.i152.i170810912 = phi i32 [ %i.dmd, %bb.abt ], [ %spec.select98.i155.i1711, %bb.abw ] ; 2 uses
  %i.dme = mul i64 %.sroa.044.0.i154.i171010914, %i.dgq ; 3 uses
  %i.dmf = icmp ult i64 %i.dme, %i.dlx
  br i1 %i.dmf, label %bb.abw, label %.invoke15952

bb.abv:                                           ; preds = %bb.abw
  %i.dmg = trunc i64 %spec.select99.i156.i1712 to i32
  store i32 %i.dmg, ptr %i.dlq, align 4, !noalias !10316
  br label %.split10915

.invoke15952:                                     ; preds = %bb.abs, %bb.abu
  %i.dmh = phi i64 [ %i.dme, %bb.abu ], [ 0, %bb.abs ]
  %i.dmi = phi i64 [ %i.dlx, %bb.abu ], [ 0, %bb.abs ]
  %i.dmj = phi ptr [ @11, %bb.abu ], [ @10, %bb.abs ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dmh, i64 noundef %i.dmi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dmj) #22
          to label %.cont15953 unwind label %bb.aao, !noalias !10316

.cont15953:                                       ; preds = %.invoke15952
  unreachable

bb.abw:                                           ; preds = %bb.abu
  %i.dmk = add nuw i64 %.sroa.044.0.i154.i171010914, 1 ; 2 uses
  %i.dml = getelementptr inbounds nuw [4 x i8], ptr %i.dly, i64 %i.dme
  %i.dmm = load i32, ptr %i.dml, align 4, !alias.scope !10325, !noundef !5 ; 2 uses
  %i.dmn = icmp sgt i32 %.sroa.022.0.i152.i170810912, %i.dmm
  %spec.select98.i155.i1711 = tail call i32 @llvm.smin.i32(i32 %.sroa.022.0.i152.i170810912, i32 %i.dmm)
  %spec.select99.i156.i1712 = select i1 %i.dmn, i64 %.sroa.044.0.i154.i171010914, i64 %.sroa.021.0.i153.i170910913 ; 2 uses
  %exitcond12904.not = icmp eq i64 %i.dmk, %i.dgj
  br i1 %exitcond12904.not, label %bb.abv, label %bb.abu

bb.abx:                                           ; preds = %bb.yz
  %.sroa.551.0..sroa_idx.i184.i1641 = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %.sroa.75810.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75810.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i184.i1641, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !10301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i178.i1474.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i178.i1474.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !10301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !10301
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fx), !noalias !10300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !10301
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit.thread7523

.loopexit8993:                                    ; preds = %.thread7467, %bb.zx, %.split10896.us, %bb.zv, %bb.zj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !10301
  %i.dmo = load <2 x i64>, ptr %i.fx, align 16, !noalias !10301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !10301
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit.thread

bb.aby:                                           ; preds = %bb.aas
  %.sroa.551.0..sroa_idx.i135.i1685 = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %.sroa.75807.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75807.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i135.i1685, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !noalias !10317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i129.i1485.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i129.i1485.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !10317
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ge), !noalias !10316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !noalias !10317
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit.thread7523

.loopexit8986:                                    ; preds = %.thread7493, %bb.abq, %.split10915.us, %bb.abo, %bb.abc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !10317
  %i.dmp = load <2 x i64>, ptr %i.ge, align 16, !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !noalias !10317
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit.thread

_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit: ; preds = %bb.ut
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !10327
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr @42, ptr %i.dmq, align 8, !noalias !10327
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store i64 6, ptr %i.dmr, align 8, !noalias !10327
  store i64 -9223372036854775796, ptr %i.gv, align 8, !noalias !10327
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.gt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.gv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !10327
  %.sroa.05820.0.copyload = load i64, ptr %i.gt, align 8 ; 2 uses
  %.sroa.45821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.45821.0.copyload = load i64, ptr %.sroa.45821.0..sroa_idx, align 8 ; 2 uses
  %.sroa.55822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.dms = load <2 x i64>, ptr %.sroa.55822.0..sroa_idx, align 8 ; 3 uses
  %.sroa.55822.sroa.5.0..sroa.55822.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %.sroa.55822.sroa.5.0.copyload = load i64, ptr %.sroa.55822.sroa.5.0..sroa.55822.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not185 = icmp eq i64 %.sroa.05820.0.copyload, -1
  %i.dmt = extractelement <2 x i64> %i.dms, i64 0
  %i.dmu = extractelement <2 x i64> %i.dms, i64 1
  br i1 %.not185, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit.thread, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1flNcNtNtB6_10CpuStorage3I320EB8_.exit.thread7523

bb.abz:                                           ; preds = %bb.a
  %i.dmv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dmw = load ptr, ptr %i.dmv, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.dmx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dmy = load i64, ptr %i.dmx, align 8, !noundef !5 ; 32 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10330)
  %i.dmz = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10331
  %i.dna = icmp eq i64 %i.dmz, 0
  br i1 %i.dna, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  %i.dnb = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.dnc = load i8, ptr %i.dnb, align 1, !range !24, !alias.scope !10328, !noundef !5
  %i.dnd = trunc nuw i8 %i.dnc to i1
  %i.dne = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dnf = load i8, ptr %i.dne, align 8, !range !24, !alias.scope !10328, !noundef !5
  %i.dng = trunc nuw i8 %i.dnf to i1              ; 2 uses
  %i.dnh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %i.dnd, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  br i1 %i.dng, label %bb.adw, label %bb.acd

bb.acc:                                           ; preds = %bb.aca
  br i1 %i.dng, label %bb.ahk, label %bb.afr

bb.acd:                                           ; preds = %bb.acb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  %i.dni = load i64, ptr %i.dnh, align 8, !alias.scope !10335, !noundef !5 ; 2 uses
  %i.dnj = load i64, ptr %1, align 8, !alias.scope !10336, !noundef !5 ; 7 uses
  %i.dnk = icmp ult i64 %i.dnj, %i.dni
  br i1 %i.dnk, label %bb.ace, label %bb.acf

bb.ace:                                           ; preds = %bb.acd
  %i.dnl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dnm = load ptr, ptr %i.dnl, align 8, !alias.scope !10335, !nonnull !5, !noundef !5
  %i.dnn = getelementptr inbounds nuw [8 x i8], ptr %i.dnm, i64 %i.dnj
  %i.dno = load i64, ptr %i.dnn, align 8, !noalias !10337, !noundef !5 ; 8 uses
end_hunk_7
begin_hunk_8_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18547 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.cr) #20
          to label %bb.agh unwind label %bb.agy, !noalias !10369

bb.agn:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3043, %bb.agm
  %.sroa.6.0.i.i3044 = phi i64 [ %i.ecy, %bb.agm ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3043 ]
  %.sroa.08.0.i.i3045 = phi i64 [ 1, %bb.agm ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3043 ]
  store i64 %.sroa.08.0.i.i3045, ptr %i.cr, align 8, !alias.scope !10376, !noalias !10369
  store i64 %.sroa.6.0.i.i3044, ptr %i.ebk, align 8, !alias.scope !10376, !noalias !10369
  %i.ecz = load i64, ptr %.sroa.233.0..sroa_idx.i90.i2431, align 8, !alias.scope !10373, !noalias !10369, !noundef !5 ; 4 uses
  %i.eda = add i64 %i.ecz, 1
  store i64 %i.eda, ptr %.sroa.233.0..sroa_idx.i90.i2431, align 8, !alias.scope !10373, !noalias !10369
  %i.edb = icmp ugt i64 %i.ebv, %i.dmy
  br i1 %i.edb, label %bb.agr, label %bb.agq, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3052: ; preds = %bb.agw, %bb.agj
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.cr)
          to label %bb.ago unwind label %bb.agi, !noalias !10369

bb.ago:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !10370
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.cu)
          to label %bb.agp unwind label %bb.agb, !noalias !10369

bb.agp:                                           ; preds = %bb.ago
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !10370
  br label %.loopexit9021

bb.agq:                                           ; preds = %bb.agn
  %i.edc = sub nuw nsw i64 %i.dmy, %i.ebv         ; 2 uses
  %i.edd = getelementptr inbounds nuw [8 x i8], ptr %i.dmw, i64 %i.ebv ; 2 uses
  %.not84.i91.i2432 = icmp eq i64 %i.dmy, %i.ebv
  br i1 %.not84.i91.i2432, label %.invoke15974, label %bb.ags

bb.agr:                                           ; preds = %bb.agn
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ebv, i64 noundef range(i64 0, 1152921504606846976) %i.dmy, i64 noundef range(i64 0, 1152921504606846976) %i.dmy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.agt unwind label %.loopexit.split-lp9024.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10369

bb.ags:                                           ; preds = %bb.agq
  %i.ede = load i64, ptr %i.edd, align 8, !alias.scope !10378, !noundef !5
  br label %bb.agu

bb.agt:                                           ; preds = %.split10822.us, %bb.agr
  unreachable

bb.agu:                                           ; preds = %bb.ags, %bb.agx
  %.sroa.055.0.i94.i243510815 = phi i64 [ 0, %bb.ags ], [ %i.edq, %bb.agx ] ; 3 uses
  %.sroa.035.0.i93.i243410814 = phi i64 [ %i.ede, %bb.ags ], [ %spec.select95.i96.i2437, %bb.agx ] ; 2 uses
  %.sroa.034.0.i92.i243310813 = phi i64 [ 0, %bb.ags ], [ %spec.select.i95.i2436, %bb.agx ]
  %i.edf = mul i64 %.sroa.055.0.i94.i243510815, %i.eal ; 3 uses
  %i.edg = icmp ult i64 %i.edf, %i.edc
  br i1 %i.edg, label %bb.agx, label %.invoke15974

bb.agv:                                           ; preds = %bb.agx
  %i.edh = icmp ult i64 %i.ecz, %i.eas
  br i1 %i.edh, label %bb.agw, label %.invoke15974

bb.agw:                                           ; preds = %bb.agv
  %i.edi = trunc i64 %spec.select.i95.i2436 to i32
  %i.edj = getelementptr inbounds nuw [4 x i8], ptr %i.eav, i64 %i.ecz
  store i32 %i.edi, ptr %i.edj, align 4, !noalias !10369
  %i.edk = load i64, ptr %i.cr, align 8, !range !8, !alias.scope !10379, !noalias !10369, !noundef !5
  %i.edl = load i64, ptr %i.ebk, align 8, !alias.scope !10379, !noalias !10369
  %i.edm = trunc nuw i64 %i.edk to i1
  br i1 %i.edm, label %bb.agk, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3052

.invoke15974:                                     ; preds = %bb.agv, %bb.agq, %bb.agu
  %i.edn = phi i64 [ %i.edf, %bb.agu ], [ 0, %bb.agq ], [ %i.ecz, %bb.agv ]
  %i.edo = phi i64 [ %i.edc, %bb.agu ], [ 0, %bb.agq ], [ %i.eas, %bb.agv ]
  %i.edp = phi ptr [ @6, %bb.agu ], [ @4, %bb.agq ], [ @5, %bb.agv ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.edn, i64 noundef %i.edo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.edp) #22
          to label %.cont15975 unwind label %.loopexit.split-lp9024.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10369

.cont15975:                                       ; preds = %.invoke15974
  unreachable

bb.agx:                                           ; preds = %bb.agu
  %i.edq = add nuw i64 %.sroa.055.0.i94.i243510815, 1 ; 2 uses
  %i.edr = getelementptr inbounds nuw [8 x i8], ptr %i.edd, i64 %i.edf
  %i.eds = load i64, ptr %i.edr, align 8, !alias.scope !10378, !noundef !5 ; 2 uses
  %i.edt = icmp slt i64 %.sroa.035.0.i93.i243410814, %i.eds
  %spec.select.i95.i2436 = select i1 %i.edt, i64 %.sroa.055.0.i94.i243510815, i64 %.sroa.034.0.i92.i243310813 ; 2 uses
  %spec.select95.i96.i2437 = call i64 @llvm.smax.i64(i64 %.sroa.035.0.i93.i243410814, i64 %i.eds)
  %exitcond12893.not = icmp eq i64 %i.edq, %i.eae
  br i1 %exitcond12893.not, label %bb.agv, label %bb.agu

bb.agy:                                           ; preds = %.loopexit.split-lp9024.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.agh, %bb.aga
  %i.edu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10371
  unreachable

bb.agz:                                           ; preds = %bb.agd
  %i.edv = sub nuw i64 %i.ebf, %i.ebd             ; 7 uses
  %.not86.i97.i2438 = icmp ugt i64 %i.ebf, %i.dmy
  br i1 %.not86.i97.i2438, label %.invoke15972, label %bb.aha, !prof !10

bb.aha:                                           ; preds = %bb.agz
  %i.edw = getelementptr inbounds nuw [8 x i8], ptr %i.dmw, i64 %i.ebd ; 2 uses
  %.idx11213 = shl nuw nsw i64 %i.eas, 2
  %i.edx = getelementptr inbounds nuw i8, ptr %i.eav, i64 %.idx11213 ; 3 uses
  switch i64 %i.eal, label %.split10820 [
    i64 1, label %bb.ahb
    i64 0, label %.split10820.us
  ]

bb.ahb:                                           ; preds = %bb.aha
  %i.edy = icmp eq i64 %i.eas, 0
  br i1 %i.edy, label %.loopexit9021, label %.lr.ph10831.preheader

.lr.ph10831.preheader:                            ; preds = %bb.ahb
  %i.edz = add i64 %i.eae, 2305843009213693951
  %i.eea = and i64 %i.edz, 2305843009213693951    ; 2 uses
  %i.eeb = add nuw nsw i64 %i.eea, 1              ; 2 uses
  %xtraiter19479 = and i64 %i.eeb, 3              ; 3 uses
  %i.eec = icmp samesign ult i64 %i.eea, 3
  %unroll_iter19483 = and i64 %i.eeb, 4611686018427387900
  %lcmp.mod19480.not = icmp eq i64 %xtraiter19479, 0
  %lcmp.mod19482 = icmp ne i64 %xtraiter19479, 0
  br label %.lr.ph10831

.split10820.us:                                   ; preds = %bb.aha
  %i.eed = icmp eq i64 %i.eas, 0
  br i1 %i.eed, label %.loopexit9021, label %.split10822.us

.lr.ph10831:                                      ; preds = %.lr.ph10831.preheader, %.thread7598
  %.sroa.76904.010830 = phi i64 [ %i.eef, %.thread7598 ], [ 0, %.lr.ph10831.preheader ] ; 2 uses
  %.sroa.06902.010829 = phi ptr [ %i.eee, %.thread7598 ], [ %i.eav, %.lr.ph10831.preheader ] ; 2 uses
  %i.eee = getelementptr inbounds nuw i8, ptr %.sroa.06902.010829, i64 4 ; 2 uses
  %i.eef = add nuw nsw i64 %.sroa.76904.010830, 1
  %i.eeg = mul i64 %.sroa.76904.010830, %i.eae    ; 4 uses
  %i.eeh = add i64 %i.eeg, %i.eae                 ; 3 uses
  %i.eei = icmp ult i64 %i.eeh, %i.eeg
  %.not91.i111.i2452 = icmp ugt i64 %i.eeh, %i.edv
  %or.cond.i112.i2453 = select i1 %i.eei, i1 true, i1 %.not91.i111.i2452, !prof !7
  br i1 %or.cond.i112.i2453, label %.invoke15972, label %.lr.ph10827.preheader, !prof !7

.lr.ph10827.preheader:                            ; preds = %.lr.ph10831
  %i.eej = getelementptr inbounds nuw [8 x i8], ptr %i.edw, i64 %i.eeg ; 3 uses
  %i.eek = load i64, ptr %i.eej, align 8, !alias.scope !10378, !noundef !5 ; 2 uses
  br i1 %i.eec, label %.lr.ph10827.epil.preheader, label %.lr.ph10827

.thread7598.unr-lcssa:                            ; preds = %.lr.ph10827
  br i1 %lcmp.mod19480.not, label %.thread7598, label %.lr.ph10827.epil.preheader

.lr.ph10827.epil.preheader:                       ; preds = %.thread7598.unr-lcssa, %.lr.ph10827.preheader
  %.sroa.04.0.i116.i245710826.epil.init = phi i32 [ 0, %.lr.ph10827.preheader ], [ %spec.select97.i119.i2460.3, %.thread7598.unr-lcssa ]
  %.sroa.05.0.i115.i245610825.epil.init = phi i64 [ %i.eek, %.lr.ph10827.preheader ], [ %spec.select96.i118.i2459.3, %.thread7598.unr-lcssa ]
  %.sroa.76907.010824.epil.init = phi i32 [ 0, %.lr.ph10827.preheader ], [ %i.efc, %.thread7598.unr-lcssa ]
  %.sroa.06905.010823.epil.init = phi ptr [ %i.eej, %.lr.ph10827.preheader ], [ %i.efd, %.thread7598.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19482)
  br label %.lr.ph10827.epil

.lr.ph10827.epil:                                 ; preds = %.lr.ph10827.epil, %.lr.ph10827.epil.preheader
  %.sroa.04.0.i116.i245710826.epil = phi i32 [ %spec.select97.i119.i2460.epil, %.lr.ph10827.epil ], [ %.sroa.04.0.i116.i245710826.epil.init, %.lr.ph10827.epil.preheader ]
  %.sroa.05.0.i115.i245610825.epil = phi i64 [ %spec.select96.i118.i2459.epil, %.lr.ph10827.epil ], [ %.sroa.05.0.i115.i245610825.epil.init, %.lr.ph10827.epil.preheader ] ; 2 uses
  %.sroa.76907.010824.epil = phi i32 [ %i.eel, %.lr.ph10827.epil ], [ %.sroa.76907.010824.epil.init, %.lr.ph10827.epil.preheader ] ; 2 uses
  %.sroa.06905.010823.epil = phi ptr [ %i.eem, %.lr.ph10827.epil ], [ %.sroa.06905.010823.epil.init, %.lr.ph10827.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph10827.epil ], [ 0, %.lr.ph10827.epil.preheader ]
  %i.eel = add i32 %.sroa.76907.010824.epil, 1
  %i.eem = getelementptr inbounds nuw i8, ptr %.sroa.06905.010823.epil, i64 8
  %i.een = load i64, ptr %.sroa.06905.010823.epil, align 8, !noalias !10371, !noundef !5 ; 2 uses
  %i.eeo = icmp slt i64 %.sroa.05.0.i115.i245610825.epil, %i.een
  %spec.select96.i118.i2459.epil = tail call i64 @llvm.smax.i64(i64 %.sroa.05.0.i115.i245610825.epil, i64 %i.een)
  %spec.select97.i119.i2460.epil = select i1 %i.eeo, i32 %.sroa.76907.010824.epil, i32 %.sroa.04.0.i116.i245710826.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter19479
  br i1 %epil.iter.cmp.not, label %.thread7598, label %.lr.ph10827.epil, !llvm.loop !9580

.thread7598:                                      ; preds = %.lr.ph10827.epil, %.thread7598.unr-lcssa
  %spec.select97.i119.i2460.lcssa = phi i32 [ %spec.select97.i119.i2460.3, %.thread7598.unr-lcssa ], [ %spec.select97.i119.i2460.epil, %.lr.ph10827.epil ]
  store i32 %spec.select97.i119.i2460.lcssa, ptr %.sroa.06902.010829, align 4, !noalias !10371
  %i.eep = icmp eq ptr %i.eee, %i.edx
  br i1 %i.eep, label %.loopexit9021, label %.lr.ph10831

.lr.ph10827:                                      ; preds = %.lr.ph10827.preheader, %.lr.ph10827
  %.sroa.04.0.i116.i245710826 = phi i32 [ %spec.select97.i119.i2460.3, %.lr.ph10827 ], [ 0, %.lr.ph10827.preheader ]
  %.sroa.05.0.i115.i245610825 = phi i64 [ %spec.select96.i118.i2459.3, %.lr.ph10827 ], [ %i.eek, %.lr.ph10827.preheader ] ; 2 uses
  %.sroa.76907.010824 = phi i32 [ %i.efc, %.lr.ph10827 ], [ 0, %.lr.ph10827.preheader ] ; 5 uses
  %.sroa.06905.010823 = phi ptr [ %i.efd, %.lr.ph10827 ], [ %i.eej, %.lr.ph10827.preheader ] ; 5 uses
  %niter19484 = phi i64 [ %niter19484.next.3, %.lr.ph10827 ], [ 0, %.lr.ph10827.preheader ]
  %i.eeq = or disjoint i32 %.sroa.76907.010824, 1
  %i.eer = getelementptr inbounds nuw i8, ptr %.sroa.06905.010823, i64 8
  %i.ees = load i64, ptr %.sroa.06905.010823, align 8, !noalias !10371, !noundef !5 ; 2 uses
  %i.eet = icmp slt i64 %.sroa.05.0.i115.i245610825, %i.ees
  %spec.select96.i118.i2459 = tail call i64 @llvm.smax.i64(i64 %.sroa.05.0.i115.i245610825, i64 %i.ees) ; 2 uses
  %spec.select97.i119.i2460 = select i1 %i.eet, i32 %.sroa.76907.010824, i32 %.sroa.04.0.i116.i245710826
  %i.eeu = or disjoint i32 %.sroa.76907.010824, 2
  %i.eev = getelementptr inbounds nuw i8, ptr %.sroa.06905.010823, i64 16
  %i.eew = load i64, ptr %i.eer, align 8, !noalias !10371, !noundef !5 ; 2 uses
  %i.eex = icmp slt i64 %spec.select96.i118.i2459, %i.eew
  %spec.select96.i118.i2459.1 = tail call i64 @llvm.smax.i64(i64 %spec.select96.i118.i2459, i64 %i.eew) ; 2 uses
  %spec.select97.i119.i2460.1 = select i1 %i.eex, i32 %i.eeq, i32 %spec.select97.i119.i2460
  %i.eey = or disjoint i32 %.sroa.76907.010824, 3
  %i.eez = getelementptr inbounds nuw i8, ptr %.sroa.06905.010823, i64 24
  %i.efa = load i64, ptr %i.eev, align 8, !noalias !10371, !noundef !5 ; 2 uses
  %i.efb = icmp slt i64 %spec.select96.i118.i2459.1, %i.efa
  %spec.select96.i118.i2459.2 = tail call i64 @llvm.smax.i64(i64 %spec.select96.i118.i2459.1, i64 %i.efa) ; 2 uses
  %spec.select97.i119.i2460.2 = select i1 %i.efb, i32 %i.eeu, i32 %spec.select97.i119.i2460.1
  %i.efc = add nuw nsw i32 %.sroa.76907.010824, 4 ; 2 uses
  %i.efd = getelementptr inbounds nuw i8, ptr %.sroa.06905.010823, i64 32 ; 2 uses
  %i.efe = load i64, ptr %i.eez, align 8, !noalias !10371, !noundef !5 ; 2 uses
  %i.eff = icmp slt i64 %spec.select96.i118.i2459.2, %i.efe
  %spec.select96.i118.i2459.3 = tail call i64 @llvm.smax.i64(i64 %spec.select96.i118.i2459.2, i64 %i.efe) ; 2 uses
  %spec.select97.i119.i2460.3 = select i1 %i.eff, i32 %i.eey, i32 %spec.select97.i119.i2460.2 ; 3 uses
  %niter19484.next.3 = add i64 %niter19484, 4     ; 2 uses
  %niter19484.ncmp.3 = icmp eq i64 %niter19484.next.3, %unroll_iter19483
  br i1 %niter19484.ncmp.3, label %.thread7598.unr-lcssa, label %.lr.ph10827

.split10820:                                      ; preds = %bb.aha, %bb.ahi
  %.sroa.06908.0 = phi ptr [ %.sroa.06908.1, %bb.ahi ], [ %i.eav, %bb.aha ] ; 3 uses
  %.sroa.76910.0 = phi i64 [ %.sroa.76910.1, %bb.ahi ], [ 0, %bb.aha ] ; 3 uses
  %i.efg = icmp eq ptr %.sroa.06908.0, %i.edx
  br i1 %i.efg, label %bb.ahd, label %bb.ahc

bb.ahc:                                           ; preds = %.split10820
  %i.efh = getelementptr inbounds nuw i8, ptr %.sroa.06908.0, i64 4
  %i.efi = add i64 %.sroa.76910.0, 1
  br label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc, %.split10820
  %.sroa.06908.1 = phi ptr [ %i.edx, %.split10820 ], [ %i.efh, %bb.ahc ]
  %.sroa.76910.1 = phi i64 [ %.sroa.76910.0, %.split10820 ], [ %i.efi, %bb.ahc ]
  %.sroa.2.0.i3059 = phi ptr [ null, %.split10820 ], [ %.sroa.06908.0, %bb.ahc ]
  %.sroa.0.0.i3060 = phi i64 [ undef, %.split10820 ], [ %.sroa.76910.0, %bb.ahc ]
  %i.efj = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3060, 0
  %i.efk = insertvalue { i64, ptr } %i.efj, ptr %.sroa.2.0.i3059, 1
  %.fr88.i100.i2441 = freeze { i64, ptr } %i.efk  ; 2 uses
  %i.efl = extractvalue { i64, ptr } %.fr88.i100.i2441, 1 ; 2 uses
  %.not87.i101.i2442 = icmp eq ptr %i.efl, null
  br i1 %.not87.i101.i2442, label %.loopexit9021, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  %i.efm = extractvalue { i64, ptr } %.fr88.i100.i2441, 0 ; 2 uses
  %i.efn = urem i64 %i.efm, %i.eal                ; 2 uses
  %i.efo = sub nuw i64 %i.efm, %i.efn
  %i.efp = mul i64 %i.efo, %i.eae
  %i.efq = add i64 %i.efp, %i.efn                 ; 5 uses
  %i.efr = icmp ugt i64 %i.efq, %i.edv
  br i1 %i.efr, label %.invoke15972, label %bb.ahf, !prof !10

.split10822.us:                                   ; preds = %.split10820.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.agt unwind label %bb.agb, !noalias !10369

bb.ahf:                                           ; preds = %bb.ahe
  %i.efs = sub nuw i64 %i.edv, %i.efq             ; 2 uses
  %i.eft = getelementptr inbounds nuw [8 x i8], ptr %i.edw, i64 %i.efq ; 2 uses
  %.not89.i102.i2443 = icmp eq i64 %i.edv, %i.efq
  br i1 %.not89.i102.i2443, label %.invoke15970, label %bb.ahg

.invoke15972:                                     ; preds = %.lr.ph10831, %bb.ahe, %bb.agd, %bb.agz
  %i.efu = phi i64 [ %i.efq, %bb.ahe ], [ %i.ebd, %bb.agd ], [ %i.ebd, %bb.agz ], [ %i.eeg, %.lr.ph10831 ]
  %i.efv = phi i64 [ %i.edv, %bb.ahe ], [ %i.ebf, %bb.agd ], [ %i.ebf, %bb.agz ], [ %i.eeh, %.lr.ph10831 ]
  %i.efw = phi i64 [ %i.edv, %bb.ahe ], [ %i.dmy, %bb.agd ], [ %i.dmy, %bb.agz ], [ %i.edv, %.lr.ph10831 ]
  %i.efx = phi ptr [ @12, %bb.ahe ], [ @13, %bb.agd ], [ @13, %bb.agz ], [ @8, %.lr.ph10831 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.efu, i64 noundef %i.efv, i64 noundef %i.efw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.efx) #22
          to label %.cont15973 unwind label %bb.agb, !noalias !10369

.cont15973:                                       ; preds = %.invoke15972
  unreachable

bb.ahg:                                           ; preds = %bb.ahf
  %i.efy = load i64, ptr %i.eft, align 8, !alias.scope !10378, !noundef !5
  br label %bb.ahh

bb.ahh:                                           ; preds = %bb.ahg, %bb.ahj
  %.sroa.044.0.i105.i244610819 = phi i64 [ 0, %bb.ahg ], [ %i.egf, %bb.ahj ] ; 3 uses
  %.sroa.021.0.i104.i244510818 = phi i64 [ 0, %bb.ahg ], [ %spec.select99.i107.i2448, %bb.ahj ]
  %.sroa.022.0.i103.i244410817 = phi i64 [ %i.efy, %bb.ahg ], [ %spec.select98.i106.i2447, %bb.ahj ] ; 2 uses
  %i.efz = mul i64 %.sroa.044.0.i105.i244610819, %i.eal ; 3 uses
  %i.ega = icmp ult i64 %i.efz, %i.efs
  br i1 %i.ega, label %bb.ahj, label %.invoke15970

bb.ahi:                                           ; preds = %bb.ahj
  %i.egb = trunc i64 %spec.select99.i107.i2448 to i32
  store i32 %i.egb, ptr %i.efl, align 4, !noalias !10369
  br label %.split10820

.invoke15970:                                     ; preds = %bb.ahf, %bb.ahh
  %i.egc = phi i64 [ %i.efz, %bb.ahh ], [ 0, %bb.ahf ]
  %i.egd = phi i64 [ %i.efs, %bb.ahh ], [ 0, %bb.ahf ]
  %i.ege = phi ptr [ @11, %bb.ahh ], [ @10, %bb.ahf ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.egc, i64 noundef %i.egd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ege) #22
          to label %.cont15971 unwind label %bb.agb, !noalias !10369

.cont15971:                                       ; preds = %.invoke15970
  unreachable

bb.ahj:                                           ; preds = %bb.ahh
  %i.egf = add nuw i64 %.sroa.044.0.i105.i244610819, 1 ; 2 uses
  %i.egg = getelementptr inbounds nuw [8 x i8], ptr %i.eft, i64 %i.efz
  %i.egh = load i64, ptr %i.egg, align 8, !alias.scope !10378, !noundef !5 ; 2 uses
  %i.egi = icmp slt i64 %.sroa.022.0.i103.i244410817, %i.egh
  %spec.select98.i106.i2447 = tail call i64 @llvm.smax.i64(i64 %.sroa.022.0.i103.i244410817, i64 %i.egh)
  %spec.select99.i107.i2448 = select i1 %i.egi, i64 %.sroa.044.0.i105.i244610819, i64 %.sroa.021.0.i104.i244510818 ; 2 uses
  %exitcond12894.not = icmp eq i64 %i.egf, %i.eae
  br i1 %exitcond12894.not, label %bb.ahi, label %bb.ahh

bb.ahk:                                           ; preds = %bb.acc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10382)
  %i.egj = load i64, ptr %i.dnh, align 8, !alias.scope !10383, !noundef !5 ; 2 uses
  %i.egk = load i64, ptr %1, align 8, !alias.scope !10384, !noundef !5 ; 7 uses
  %i.egl = icmp ult i64 %i.egk, %i.egj
  br i1 %i.egl, label %bb.ahl, label %bb.ahm

bb.ahl:                                           ; preds = %bb.ahk
  %i.egm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.egn = load ptr, ptr %i.egm, align 8, !alias.scope !10383, !nonnull !5, !noundef !5
  %i.ego = getelementptr inbounds nuw [8 x i8], ptr %i.egn, i64 %i.egk
  %i.egp = load i64, ptr %i.ego, align 8, !noalias !10385, !noundef !5 ; 8 uses
  %i.egq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.egr = load i64, ptr %i.egq, align 8, !alias.scope !10383, !noundef !5 ; 2 uses
  %i.egs = icmp ult i64 %i.egk, %i.egr
  br i1 %i.egs, label %bb.ahn, label %bb.aho

bb.ahm:                                           ; preds = %bb.ahk
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.egk, i64 noundef %i.egj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10385
  unreachable

bb.ahn:                                           ; preds = %bb.ahl
  %i.egt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.egu = load ptr, ptr %i.egt, align 8, !alias.scope !10383, !nonnull !5, !noundef !5
  %i.egv = getelementptr inbounds nuw [8 x i8], ptr %i.egu, i64 %i.egk
  %i.egw = load i64, ptr %i.egv, align 8, !noalias !10385, !noundef !5 ; 4 uses
  %i.egx = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10385
  %i.egy = icmp eq i64 %i.egp, 0
  br i1 %i.egy, label %bb.ahq, label %bb.ahp

bb.aho:                                           ; preds = %bb.ahl
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.egk, i64 noundef %i.egr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10385
  unreachable

bb.ahp:                                           ; preds = %bb.ahn
  %i.egz = udiv i64 %i.egx, %i.egp                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !10386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !10386
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, i64 noundef %i.egz, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10385
  %i.eha = load i64, ptr %i.cx, align 8, !range !8, !noalias !10386, !noundef !5
  %i.ehb = trunc nuw i64 %i.eha to i1
  %i.ehc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.ehd = load i64, ptr %i.ehc, align 8, !range !12, !noalias !10386, !noundef !5 ; 8 uses
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  br i1 %i.ehb, label %bb.ahr, label %bb.ahs, !prof !10

bb.ahq:                                           ; preds = %bb.ahn
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10385
  unreachable

bb.ahr:                                           ; preds = %bb.ahp
  %i.ehf = load i64, ptr %i.ehe, align 8, !noalias !10386
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ehd, i64 %i.ehf) #22, !noalias !10385
  unreachable

bb.ahs:                                           ; preds = %bb.ahp
  %i.ehg = load ptr, ptr %i.ehe, align 8, !noalias !10386, !nonnull !5, !noundef !5 ; 5 uses
  %i.ehh = icmp ule i64 %i.egz, %i.ehd
  tail call void @llvm.assume(i1 %i.ehh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !10386
  store i64 %i.ehd, ptr %i.dd, align 16, !noalias !10386
  %i.ehi = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.ehg, ptr %i.ehi, align 8, !noalias !10386
  %i.ehj = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 0, ptr %i.ehj, align 16, !noalias !10386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !10386
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.ahv unwind label %bb.ahu, !noalias !10385

bb.aht:                                           ; preds = %bb.aia, %bb.ahu
  %.pn93.i.i2461 = phi { ptr, i32 } [ %i.ehk, %bb.ahu ], [ %.pn.i.i2474, %bb.aia ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dd) #20
          to label %common.resume unwind label %bb.air, !noalias !10387

bb.ahu:                                           ; preds = %.invoke15978, %.invoke15976, %.split10841.us, %bb.aih, %bb.ahx, %bb.ahs
  %i.ehk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aht

bb.ahv:                                           ; preds = %bb.ahs
  %i.ehl = load i64, ptr %i.dc, align 8, !range !8, !noalias !10386, !noundef !5
  %i.ehm = trunc nuw i64 %i.ehl to i1
  br i1 %i.ehm, label %bb.ahw, label %bb.ahx

bb.ahw:                                           ; preds = %bb.ahv
  %i.ehn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.eho = load i64, ptr %i.ehn, align 8, !noalias !10386, !noundef !5 ; 5 uses
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.ehq = load i64, ptr %i.ehp, align 8, !noalias !10386, !noundef !5 ; 5 uses
  %i.ehr = icmp ult i64 %i.ehq, %i.eho
  br i1 %i.ehr, label %.invoke15978, label %bb.ais, !prof !10

bb.ahx:                                           ; preds = %bb.ahv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !10386
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.i.i2287.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !10386
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.egk, i64 noundef 0, i64 noundef 1)
          to label %bb.ahy unwind label %bb.ahu, !noalias !10385

end_hunk_8
begin_hunk_9_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a
  %lpad.loopexit.split-lp18509 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.cy) #20
          to label %bb.aia unwind label %bb.air, !noalias !10385

bb.aig:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3074, %bb.aif
  %.sroa.6.0.i.i3075 = phi i64 [ %i.ejj, %bb.aif ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3074 ]
  %.sroa.08.0.i.i3076 = phi i64 [ 1, %bb.aif ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3074 ]
  store i64 %.sroa.08.0.i.i3076, ptr %i.cy, align 8, !alias.scope !10392, !noalias !10385
  store i64 %.sroa.6.0.i.i3075, ptr %i.ehv, align 8, !alias.scope !10392, !noalias !10385
  %i.ejk = load i64, ptr %.sroa.233.0..sroa_idx.i.i2475, align 8, !alias.scope !10389, !noalias !10385, !noundef !5 ; 4 uses
  %i.ejl = add i64 %i.ejk, 1
  store i64 %i.ejl, ptr %.sroa.233.0..sroa_idx.i.i2475, align 8, !alias.scope !10389, !noalias !10385
  %i.ejm = icmp ugt i64 %i.eig, %i.dmy
  br i1 %i.ejm, label %bb.aik, label %bb.aij, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3083: ; preds = %bb.aip, %bb.aic
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.cy)
          to label %bb.aih unwind label %bb.aib, !noalias !10385

bb.aih:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !10386
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.db)
          to label %bb.aii unwind label %bb.ahu, !noalias !10385

bb.aii:                                           ; preds = %bb.aih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !10386
  br label %.loopexit9014

bb.aij:                                           ; preds = %bb.aig
  %i.ejn = sub nuw nsw i64 %i.dmy, %i.eig         ; 2 uses
  %i.ejo = getelementptr inbounds nuw [8 x i8], ptr %i.dmw, i64 %i.eig ; 2 uses
  %.not84.i.i2476 = icmp eq i64 %i.dmy, %i.eig
  br i1 %.not84.i.i2476, label %.invoke15980, label %bb.ail

bb.aik:                                           ; preds = %bb.aig
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.eig, i64 noundef range(i64 0, 1152921504606846976) %i.dmy, i64 noundef range(i64 0, 1152921504606846976) %i.dmy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.aim unwind label %.loopexit.split-lp9017.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10385

bb.ail:                                           ; preds = %bb.aij
  %i.ejp = load i64, ptr %i.ejo, align 8, !alias.scope !10394, !noundef !5
  br label %bb.ain

bb.aim:                                           ; preds = %.split10841.us, %bb.aik
  unreachable

bb.ain:                                           ; preds = %bb.ail, %bb.aiq
  %.sroa.055.0.i.i247910834 = phi i64 [ 0, %bb.ail ], [ %i.ekb, %bb.aiq ] ; 3 uses
  %.sroa.035.0.i.i247810833 = phi i64 [ %i.ejp, %bb.ail ], [ %spec.select95.i.i2481, %bb.aiq ] ; 2 uses
  %.sroa.034.0.i.i247710832 = phi i64 [ 0, %bb.ail ], [ %spec.select.i.i2480, %bb.aiq ]
  %i.ejq = mul i64 %.sroa.055.0.i.i247910834, %i.egw ; 3 uses
  %i.ejr = icmp ult i64 %i.ejq, %i.ejn
  br i1 %i.ejr, label %bb.aiq, label %.invoke15980

bb.aio:                                           ; preds = %bb.aiq
  %i.ejs = icmp ult i64 %i.ejk, %i.ehd
  br i1 %i.ejs, label %bb.aip, label %.invoke15980

bb.aip:                                           ; preds = %bb.aio
  %i.ejt = trunc i64 %spec.select.i.i2480 to i32
  %i.eju = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.ejk
  store i32 %i.ejt, ptr %i.eju, align 4, !noalias !10385
  %i.ejv = load i64, ptr %i.cy, align 8, !range !8, !alias.scope !10395, !noalias !10385, !noundef !5
  %i.ejw = load i64, ptr %i.ehv, align 8, !alias.scope !10395, !noalias !10385
  %i.ejx = trunc nuw i64 %i.ejv to i1
  br i1 %i.ejx, label %bb.aid, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3083

.invoke15980:                                     ; preds = %bb.aio, %bb.aij, %bb.ain
  %i.ejy = phi i64 [ %i.ejq, %bb.ain ], [ 0, %bb.aij ], [ %i.ejk, %bb.aio ]
  %i.ejz = phi i64 [ %i.ejn, %bb.ain ], [ 0, %bb.aij ], [ %i.ehd, %bb.aio ]
  %i.eka = phi ptr [ @6, %bb.ain ], [ @4, %bb.aij ], [ @5, %bb.aio ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ejy, i64 noundef %i.ejz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eka) #22
          to label %.cont15981 unwind label %.loopexit.split-lp9017.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10385

.cont15981:                                       ; preds = %.invoke15980
  unreachable

bb.aiq:                                           ; preds = %bb.ain
  %i.ekb = add nuw i64 %.sroa.055.0.i.i247910834, 1 ; 2 uses
  %i.ekc = getelementptr inbounds nuw [8 x i8], ptr %i.ejo, i64 %i.ejq
  %i.ekd = load i64, ptr %i.ekc, align 8, !alias.scope !10394, !noundef !5 ; 2 uses
  %i.eke = icmp sgt i64 %.sroa.035.0.i.i247810833, %i.ekd
  %spec.select.i.i2480 = select i1 %i.eke, i64 %.sroa.055.0.i.i247910834, i64 %.sroa.034.0.i.i247710832 ; 2 uses
  %spec.select95.i.i2481 = call i64 @llvm.smin.i64(i64 %.sroa.035.0.i.i247810833, i64 %i.ekd)
  %exitcond12895.not = icmp eq i64 %i.ekb, %i.egp
  br i1 %exitcond12895.not, label %bb.aio, label %bb.ain

bb.air:                                           ; preds = %.loopexit.split-lp9017.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aia, %bb.aht
  %i.ekf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10387
  unreachable

bb.ais:                                           ; preds = %bb.ahw
  %i.ekg = sub nuw i64 %i.ehq, %i.eho             ; 7 uses
  %.not86.i.i2482 = icmp ugt i64 %i.ehq, %i.dmy
  br i1 %.not86.i.i2482, label %.invoke15978, label %bb.ait, !prof !10

bb.ait:                                           ; preds = %bb.ais
  %i.ekh = getelementptr inbounds nuw [8 x i8], ptr %i.dmw, i64 %i.eho ; 2 uses
  %.idx11216 = shl nuw nsw i64 %i.ehd, 2
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ehg, i64 %.idx11216 ; 3 uses
  switch i64 %i.egw, label %.split10839 [
    i64 1, label %bb.aiu
    i64 0, label %.split10839.us
  ]

bb.aiu:                                           ; preds = %bb.ait
  %i.ekj = icmp eq i64 %i.ehd, 0
  br i1 %i.ekj, label %.loopexit9014, label %.lr.ph10850.preheader

.lr.ph10850.preheader:                            ; preds = %bb.aiu
  %i.ekk = add i64 %i.egp, 2305843009213693951
  %i.ekl = and i64 %i.ekk, 2305843009213693951    ; 2 uses
  %i.ekm = add nuw nsw i64 %i.ekl, 1              ; 2 uses
  %xtraiter19485 = and i64 %i.ekm, 3              ; 3 uses
  %i.ekn = icmp samesign ult i64 %i.ekl, 3
  %unroll_iter19490 = and i64 %i.ekm, 4611686018427387900
  %lcmp.mod19487.not = icmp eq i64 %xtraiter19485, 0
  %lcmp.mod19489 = icmp ne i64 %xtraiter19485, 0
  br label %.lr.ph10850

.split10839.us:                                   ; preds = %bb.ait
  %i.eko = icmp eq i64 %i.ehd, 0
  br i1 %i.eko, label %.loopexit9014, label %.split10841.us

.lr.ph10850:                                      ; preds = %.lr.ph10850.preheader, %.thread7624
  %.sroa.76867.010849 = phi i64 [ %i.ekq, %.thread7624 ], [ 0, %.lr.ph10850.preheader ] ; 2 uses
  %.sroa.06865.010848 = phi ptr [ %i.ekp, %.thread7624 ], [ %i.ehg, %.lr.ph10850.preheader ] ; 2 uses
  %i.ekp = getelementptr inbounds nuw i8, ptr %.sroa.06865.010848, i64 4 ; 2 uses
  %i.ekq = add nuw nsw i64 %.sroa.76867.010849, 1
  %i.ekr = mul i64 %.sroa.76867.010849, %i.egp    ; 4 uses
  %i.eks = add i64 %i.ekr, %i.egp                 ; 3 uses
  %i.ekt = icmp ult i64 %i.eks, %i.ekr
  %.not91.i.i2496 = icmp ugt i64 %i.eks, %i.ekg
  %or.cond.i.i2497 = select i1 %i.ekt, i1 true, i1 %.not91.i.i2496, !prof !7
  br i1 %or.cond.i.i2497, label %.invoke15978, label %.lr.ph10846.preheader, !prof !7

.lr.ph10846.preheader:                            ; preds = %.lr.ph10850
  %i.eku = getelementptr inbounds nuw [8 x i8], ptr %i.ekh, i64 %i.ekr ; 3 uses
  %i.ekv = load i64, ptr %i.eku, align 8, !alias.scope !10394, !noundef !5 ; 2 uses
  br i1 %i.ekn, label %.lr.ph10846.epil.preheader, label %.lr.ph10846

.thread7624.unr-lcssa:                            ; preds = %.lr.ph10846
  br i1 %lcmp.mod19487.not, label %.thread7624, label %.lr.ph10846.epil.preheader

.lr.ph10846.epil.preheader:                       ; preds = %.thread7624.unr-lcssa, %.lr.ph10846.preheader
  %.sroa.04.0.i.i250110845.epil.init = phi i32 [ 0, %.lr.ph10846.preheader ], [ %spec.select97.i.i2504.3, %.thread7624.unr-lcssa ]
  %.sroa.05.0.i.i250010844.epil.init = phi i64 [ %i.ekv, %.lr.ph10846.preheader ], [ %spec.select96.i.i2503.3, %.thread7624.unr-lcssa ]
  %.sroa.76870.010843.epil.init = phi i32 [ 0, %.lr.ph10846.preheader ], [ %i.eln, %.thread7624.unr-lcssa ]
  %.sroa.06868.010842.epil.init = phi ptr [ %i.eku, %.lr.ph10846.preheader ], [ %i.elo, %.thread7624.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19489)
  br label %.lr.ph10846.epil

.lr.ph10846.epil:                                 ; preds = %.lr.ph10846.epil, %.lr.ph10846.epil.preheader
  %.sroa.04.0.i.i250110845.epil = phi i32 [ %spec.select97.i.i2504.epil, %.lr.ph10846.epil ], [ %.sroa.04.0.i.i250110845.epil.init, %.lr.ph10846.epil.preheader ]
  %.sroa.05.0.i.i250010844.epil = phi i64 [ %spec.select96.i.i2503.epil, %.lr.ph10846.epil ], [ %.sroa.05.0.i.i250010844.epil.init, %.lr.ph10846.epil.preheader ] ; 2 uses
  %.sroa.76870.010843.epil = phi i32 [ %i.ekw, %.lr.ph10846.epil ], [ %.sroa.76870.010843.epil.init, %.lr.ph10846.epil.preheader ] ; 2 uses
  %.sroa.06868.010842.epil = phi ptr [ %i.ekx, %.lr.ph10846.epil ], [ %.sroa.06868.010842.epil.init, %.lr.ph10846.epil.preheader ] ; 2 uses
  %epil.iter19486 = phi i64 [ %epil.iter19486.next, %.lr.ph10846.epil ], [ 0, %.lr.ph10846.epil.preheader ]
  %i.ekw = add i32 %.sroa.76870.010843.epil, 1
  %i.ekx = getelementptr inbounds nuw i8, ptr %.sroa.06868.010842.epil, i64 8
  %i.eky = load i64, ptr %.sroa.06868.010842.epil, align 8, !noalias !10387, !noundef !5 ; 2 uses
  %i.ekz = icmp sgt i64 %.sroa.05.0.i.i250010844.epil, %i.eky
  %spec.select96.i.i2503.epil = tail call i64 @llvm.smin.i64(i64 %.sroa.05.0.i.i250010844.epil, i64 %i.eky)
  %spec.select97.i.i2504.epil = select i1 %i.ekz, i32 %.sroa.76870.010843.epil, i32 %.sroa.04.0.i.i250110845.epil ; 2 uses
  %epil.iter19486.next = add i64 %epil.iter19486, 1 ; 2 uses
  %epil.iter19486.cmp.not = icmp eq i64 %epil.iter19486.next, %xtraiter19485
  br i1 %epil.iter19486.cmp.not, label %.thread7624, label %.lr.ph10846.epil, !llvm.loop !9602

.thread7624:                                      ; preds = %.lr.ph10846.epil, %.thread7624.unr-lcssa
  %spec.select97.i.i2504.lcssa = phi i32 [ %spec.select97.i.i2504.3, %.thread7624.unr-lcssa ], [ %spec.select97.i.i2504.epil, %.lr.ph10846.epil ]
  store i32 %spec.select97.i.i2504.lcssa, ptr %.sroa.06865.010848, align 4, !noalias !10387
  %i.ela = icmp eq ptr %i.ekp, %i.eki
  br i1 %i.ela, label %.loopexit9014, label %.lr.ph10850

.lr.ph10846:                                      ; preds = %.lr.ph10846.preheader, %.lr.ph10846
  %.sroa.04.0.i.i250110845 = phi i32 [ %spec.select97.i.i2504.3, %.lr.ph10846 ], [ 0, %.lr.ph10846.preheader ]
  %.sroa.05.0.i.i250010844 = phi i64 [ %spec.select96.i.i2503.3, %.lr.ph10846 ], [ %i.ekv, %.lr.ph10846.preheader ] ; 2 uses
  %.sroa.76870.010843 = phi i32 [ %i.eln, %.lr.ph10846 ], [ 0, %.lr.ph10846.preheader ] ; 5 uses
  %.sroa.06868.010842 = phi ptr [ %i.elo, %.lr.ph10846 ], [ %i.eku, %.lr.ph10846.preheader ] ; 5 uses
  %niter19491 = phi i64 [ %niter19491.next.3, %.lr.ph10846 ], [ 0, %.lr.ph10846.preheader ]
  %i.elb = or disjoint i32 %.sroa.76870.010843, 1
  %i.elc = getelementptr inbounds nuw i8, ptr %.sroa.06868.010842, i64 8
  %i.eld = load i64, ptr %.sroa.06868.010842, align 8, !noalias !10387, !noundef !5 ; 2 uses
  %i.ele = icmp sgt i64 %.sroa.05.0.i.i250010844, %i.eld
  %spec.select96.i.i2503 = tail call i64 @llvm.smin.i64(i64 %.sroa.05.0.i.i250010844, i64 %i.eld) ; 2 uses
  %spec.select97.i.i2504 = select i1 %i.ele, i32 %.sroa.76870.010843, i32 %.sroa.04.0.i.i250110845
  %i.elf = or disjoint i32 %.sroa.76870.010843, 2
  %i.elg = getelementptr inbounds nuw i8, ptr %.sroa.06868.010842, i64 16
  %i.elh = load i64, ptr %i.elc, align 8, !noalias !10387, !noundef !5 ; 2 uses
  %i.eli = icmp sgt i64 %spec.select96.i.i2503, %i.elh
  %spec.select96.i.i2503.1 = tail call i64 @llvm.smin.i64(i64 %spec.select96.i.i2503, i64 %i.elh) ; 2 uses
  %spec.select97.i.i2504.1 = select i1 %i.eli, i32 %i.elb, i32 %spec.select97.i.i2504
  %i.elj = or disjoint i32 %.sroa.76870.010843, 3
  %i.elk = getelementptr inbounds nuw i8, ptr %.sroa.06868.010842, i64 24
  %i.ell = load i64, ptr %i.elg, align 8, !noalias !10387, !noundef !5 ; 2 uses
  %i.elm = icmp sgt i64 %spec.select96.i.i2503.1, %i.ell
  %spec.select96.i.i2503.2 = tail call i64 @llvm.smin.i64(i64 %spec.select96.i.i2503.1, i64 %i.ell) ; 2 uses
  %spec.select97.i.i2504.2 = select i1 %i.elm, i32 %i.elf, i32 %spec.select97.i.i2504.1
  %i.eln = add nuw nsw i32 %.sroa.76870.010843, 4 ; 2 uses
  %i.elo = getelementptr inbounds nuw i8, ptr %.sroa.06868.010842, i64 32 ; 2 uses
  %i.elp = load i64, ptr %i.elk, align 8, !noalias !10387, !noundef !5 ; 2 uses
  %i.elq = icmp sgt i64 %spec.select96.i.i2503.2, %i.elp
  %spec.select96.i.i2503.3 = tail call i64 @llvm.smin.i64(i64 %spec.select96.i.i2503.2, i64 %i.elp) ; 2 uses
  %spec.select97.i.i2504.3 = select i1 %i.elq, i32 %i.elj, i32 %spec.select97.i.i2504.2 ; 3 uses
  %niter19491.next.3 = add i64 %niter19491, 4     ; 2 uses
  %niter19491.ncmp.3 = icmp eq i64 %niter19491.next.3, %unroll_iter19490
  br i1 %niter19491.ncmp.3, label %.thread7624.unr-lcssa, label %.lr.ph10846

.split10839:                                      ; preds = %bb.ait, %bb.ajb
  %.sroa.06871.0 = phi ptr [ %.sroa.06871.1, %bb.ajb ], [ %i.ehg, %bb.ait ] ; 3 uses
  %.sroa.76873.0 = phi i64 [ %.sroa.76873.1, %bb.ajb ], [ 0, %bb.ait ] ; 3 uses
  %i.elr = icmp eq ptr %.sroa.06871.0, %i.eki
  br i1 %i.elr, label %bb.aiw, label %bb.aiv

bb.aiv:                                           ; preds = %.split10839
  %i.els = getelementptr inbounds nuw i8, ptr %.sroa.06871.0, i64 4
  %i.elt = add i64 %.sroa.76873.0, 1
  br label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv, %.split10839
  %.sroa.06871.1 = phi ptr [ %i.eki, %.split10839 ], [ %i.els, %bb.aiv ]
  %.sroa.76873.1 = phi i64 [ %.sroa.76873.0, %.split10839 ], [ %i.elt, %bb.aiv ]
  %.sroa.2.0.i3090 = phi ptr [ null, %.split10839 ], [ %.sroa.06871.0, %bb.aiv ]
  %.sroa.0.0.i3091 = phi i64 [ undef, %.split10839 ], [ %.sroa.76873.0, %bb.aiv ]
  %i.elu = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3091, 0
  %i.elv = insertvalue { i64, ptr } %i.elu, ptr %.sroa.2.0.i3090, 1
  %.fr88.i.i2485 = freeze { i64, ptr } %i.elv     ; 2 uses
  %i.elw = extractvalue { i64, ptr } %.fr88.i.i2485, 1 ; 2 uses
  %.not87.i.i2486 = icmp eq ptr %i.elw, null
  br i1 %.not87.i.i2486, label %.loopexit9014, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.elx = extractvalue { i64, ptr } %.fr88.i.i2485, 0 ; 2 uses
  %i.ely = urem i64 %i.elx, %i.egw                ; 2 uses
  %i.elz = sub nuw i64 %i.elx, %i.ely
  %i.ema = mul i64 %i.elz, %i.egp
  %i.emb = add i64 %i.ema, %i.ely                 ; 5 uses
  %i.emc = icmp ugt i64 %i.emb, %i.ekg
  br i1 %i.emc, label %.invoke15978, label %bb.aiy, !prof !10

.split10841.us:                                   ; preds = %.split10839.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.aim unwind label %bb.ahu, !noalias !10385

bb.aiy:                                           ; preds = %bb.aix
  %i.emd = sub nuw i64 %i.ekg, %i.emb             ; 2 uses
  %i.eme = getelementptr inbounds nuw [8 x i8], ptr %i.ekh, i64 %i.emb ; 2 uses
  %.not89.i.i2487 = icmp eq i64 %i.ekg, %i.emb
  br i1 %.not89.i.i2487, label %.invoke15976, label %bb.aiz

.invoke15978:                                     ; preds = %.lr.ph10850, %bb.aix, %bb.ahw, %bb.ais
  %i.emf = phi i64 [ %i.emb, %bb.aix ], [ %i.eho, %bb.ahw ], [ %i.eho, %bb.ais ], [ %i.ekr, %.lr.ph10850 ]
  %i.emg = phi i64 [ %i.ekg, %bb.aix ], [ %i.ehq, %bb.ahw ], [ %i.ehq, %bb.ais ], [ %i.eks, %.lr.ph10850 ]
  %i.emh = phi i64 [ %i.ekg, %bb.aix ], [ %i.dmy, %bb.ahw ], [ %i.dmy, %bb.ais ], [ %i.ekg, %.lr.ph10850 ]
  %i.emi = phi ptr [ @12, %bb.aix ], [ @13, %bb.ahw ], [ @13, %bb.ais ], [ @8, %.lr.ph10850 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.emf, i64 noundef %i.emg, i64 noundef %i.emh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.emi) #22
          to label %.cont15979 unwind label %bb.ahu, !noalias !10385

.cont15979:                                       ; preds = %.invoke15978
  unreachable

bb.aiz:                                           ; preds = %bb.aiy
  %i.emj = load i64, ptr %i.eme, align 8, !alias.scope !10394, !noundef !5
  br label %bb.aja

bb.aja:                                           ; preds = %bb.aiz, %bb.ajc
  %.sroa.044.0.i.i249010838 = phi i64 [ 0, %bb.aiz ], [ %i.emq, %bb.ajc ] ; 3 uses
  %.sroa.021.0.i.i248910837 = phi i64 [ 0, %bb.aiz ], [ %spec.select99.i.i2492, %bb.ajc ]
  %.sroa.022.0.i.i248810836 = phi i64 [ %i.emj, %bb.aiz ], [ %spec.select98.i.i2491, %bb.ajc ] ; 2 uses
  %i.emk = mul i64 %.sroa.044.0.i.i249010838, %i.egw ; 3 uses
  %i.eml = icmp ult i64 %i.emk, %i.emd
  br i1 %i.eml, label %bb.ajc, label %.invoke15976

bb.ajb:                                           ; preds = %bb.ajc
  %i.emm = trunc i64 %spec.select99.i.i2492 to i32
  store i32 %i.emm, ptr %i.elw, align 4, !noalias !10385
  br label %.split10839

.invoke15976:                                     ; preds = %bb.aiy, %bb.aja
  %i.emn = phi i64 [ %i.emk, %bb.aja ], [ 0, %bb.aiy ]
  %i.emo = phi i64 [ %i.emd, %bb.aja ], [ 0, %bb.aiy ]
  %i.emp = phi ptr [ @11, %bb.aja ], [ @10, %bb.aiy ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.emn, i64 noundef %i.emo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.emp) #22
          to label %.cont15977 unwind label %bb.ahu, !noalias !10385

.cont15977:                                       ; preds = %.invoke15976
  unreachable

bb.ajc:                                           ; preds = %bb.aja
  %i.emq = add nuw i64 %.sroa.044.0.i.i249010838, 1 ; 2 uses
  %i.emr = getelementptr inbounds nuw [8 x i8], ptr %i.eme, i64 %i.emk
  %i.ems = load i64, ptr %i.emr, align 8, !alias.scope !10394, !noundef !5 ; 2 uses
  %i.emt = icmp sgt i64 %.sroa.022.0.i.i248810836, %i.ems
  %spec.select98.i.i2491 = tail call i64 @llvm.smin.i64(i64 %.sroa.022.0.i.i248810836, i64 %i.ems)
  %spec.select99.i.i2492 = select i1 %i.emt, i64 %.sroa.044.0.i.i249010838, i64 %.sroa.021.0.i.i248910837 ; 2 uses
  %exitcond12896.not = icmp eq i64 %i.emq, %i.egp
  br i1 %exitcond12896.not, label %bb.ajb, label %bb.aja

bb.ajd:                                           ; preds = %bb.agf
  %.sroa.551.0..sroa_idx.i86.i2421 = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %.sroa.76734.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76734.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i86.i2421, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !10370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i80.i2276.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i80.i2276.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !10370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !10370
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw), !noalias !10369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !10370
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit.thread7654

.loopexit9021:                                    ; preds = %.thread7598, %bb.ahd, %.split10820.us, %bb.ahb, %bb.agp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !10370
  %i.emu = load <2 x i64>, ptr %i.cw, align 16, !noalias !10370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !10370
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit.thread

bb.aje:                                           ; preds = %bb.ahy
  %.sroa.551.0..sroa_idx.i.i2465 = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %.sroa.76731.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76731.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i.i2465, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !10386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i.i2287.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i.i2287.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !10386
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dd), !noalias !10385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !10386
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit.thread7654

.loopexit9014:                                    ; preds = %.thread7624, %bb.aiw, %.split10839.us, %bb.aiu, %bb.aii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !10386
  %i.emv = load <2 x i64>, ptr %i.dd, align 16, !noalias !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !10386
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit.thread

_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit: ; preds = %bb.abz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !10396
  %i.emw = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @42, ptr %i.emw, align 8, !noalias !10396
  %i.emx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 6, ptr %i.emx, align 8, !noalias !10396
  store i64 -9223372036854775796, ptr %i.dg, align 8, !noalias !10396
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.de, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !10396
  %.sroa.06744.0.copyload = load i64, ptr %i.de, align 8 ; 2 uses
  %.sroa.46745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.46745.0.copyload = load i64, ptr %.sroa.46745.0..sroa_idx, align 8 ; 2 uses
  %.sroa.56746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.emy = load <2 x i64>, ptr %.sroa.56746.0..sroa_idx, align 8 ; 3 uses
  %.sroa.56746.sroa.5.0..sroa.56746.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %.sroa.56746.sroa.5.0.copyload = load i64, ptr %.sroa.56746.sroa.5.0..sroa.56746.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not184 = icmp eq i64 %.sroa.06744.0.copyload, -1
  %i.emz = extractelement <2 x i64> %i.emy, i64 0
  %i.ena = extractelement <2 x i64> %i.emy, i64 1
  br i1 %.not184, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit.thread, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fxNcNtNtB6_10CpuStorage3I640EB8_.exit.thread7654

bb.ajf:                                           ; preds = %bb.a
  %i.enb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.enc = load ptr, ptr %i.enb, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.end = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ene = load i64, ptr %i.end, align 8, !noundef !5 ; 32 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10399)
  %i.enf = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10400
  %i.eng = icmp eq i64 %i.enf, 0
  br i1 %i.eng, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NcNtNtB6_10CpuStorage4BF160EB8_.exit, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  %i.enh = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.eni = load i8, ptr %i.enh, align 1, !range !24, !alias.scope !10397, !noundef !5
  %i.enj = trunc nuw i8 %i.eni to i1
  %i.enk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.enl = load i8, ptr %i.enk, align 8, !range !24, !alias.scope !10397, !noundef !5
  %i.enm = trunc nuw i8 %i.enl to i1              ; 2 uses
  %i.enn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %i.enj, label %bb.aji, label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajg
  br i1 %i.enm, label %bb.ali, label %bb.ajj

bb.aji:                                           ; preds = %bb.ajg
  br i1 %i.enm, label %bb.apl, label %bb.anm

bb.ajj:                                           ; preds = %bb.ajh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10403)
  %i.eno = load i64, ptr %i.enn, align 8, !alias.scope !10404, !noundef !5 ; 2 uses
  %i.enp = load i64, ptr %1, align 8, !alias.scope !10405, !noundef !5 ; 7 uses
  %i.enq = icmp ult i64 %i.enp, %i.eno
  br i1 %i.enq, label %bb.ajk, label %bb.ajl

bb.ajk:                                           ; preds = %bb.ajj
  %i.enr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ens = load ptr, ptr %i.enr, align 8, !alias.scope !10404, !nonnull !5, !noundef !5
  %i.ent = getelementptr inbounds nuw [8 x i8], ptr %i.ens, i64 %i.enp
  %i.enu = load i64, ptr %i.ent, align 8, !noalias !10406, !noundef !5 ; 8 uses
end_hunk_9
begin_hunk_10_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3531: ; preds = %bb.bel, %.noexc3539
  %i.het = load i64, ptr %i.hdy, align 8, !alias.scope !10583, !noalias !10576, !noundef !5
  %i.heu = add i64 %i.het, -1
  store i64 %i.heu, ptr %i.hdy, align 8, !alias.scope !10583, !noalias !10576
  br label %bb.ben

bb.bel:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3535
  %i.hev = load i64, ptr %i.hen, align 8, !noalias !10582, !noundef !5
  %i.hew = mul i64 %i.hev, %i.hep
  %i.hex = sub i64 %.sroa.05.031.i.i3536, %i.hew
  store i64 0, ptr %i.hem, align 8, !noalias !10582
  %i.hey = icmp ult i64 %.sroa.918.0.copyload.i.i3528, %i.hek
  br i1 %i.hey, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3535, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3531

bb.bem:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3535
  store i64 %i.heq, ptr %i.hem, align 8, !noalias !10582
  %i.hez = load i64, ptr %i.hen, align 8, !noalias !10582, !noundef !5
  %i.hfa = load i64, ptr %i.hdy, align 8, !alias.scope !10583, !noalias !10576, !noundef !5
  %i.hfb = add i64 %i.hfa, -1
  store i64 %i.hfb, ptr %i.hdy, align 8, !alias.scope !10583, !noalias !10576
  %i.hfc = add i64 %i.hez, %.sroa.05.031.i.i3536
  br label %bb.ben

.loopexit.split-lp9108.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc3538, %bb.bek, %.invoke16046, %bb.ber
  %lpad.loopexit.split-lp19027 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ic) #20
          to label %bb.beh unwind label %bb.bey, !noalias !10576

bb.ben:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3531, %bb.bem
  %.sroa.6.0.i.i3532 = phi i64 [ %i.hfc, %bb.bem ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3531 ]
  %.sroa.08.0.i.i3533 = phi i64 [ 1, %bb.bem ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3531 ]
  store i64 %.sroa.08.0.i.i3533, ptr %i.ic, align 8, !alias.scope !10583, !noalias !10576
  store i64 %.sroa.6.0.i.i3532, ptr %i.hdo, align 8, !alias.scope !10583, !noalias !10576
  %i.hfd = load i64, ptr %.sroa.233.0..sroa_idx.i188.i1131, align 8, !alias.scope !10580, !noalias !10576, !noundef !5 ; 4 uses
  %i.hfe = add i64 %i.hfd, 1
  store i64 %i.hfe, ptr %.sroa.233.0..sroa_idx.i188.i1131, align 8, !alias.scope !10580, !noalias !10576
  %i.hff = icmp ugt i64 %i.hdz, %i.gpe
  br i1 %i.hff, label %bb.ber, label %bb.beq, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3540: ; preds = %bb.bew, %bb.bej
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ic)
          to label %bb.beo unwind label %bb.bei, !noalias !10576

bb.beo:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !noalias !10577
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.if)
          to label %bb.bep unwind label %bb.beb, !noalias !10576

bb.bep:                                           ; preds = %bb.beo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if), !noalias !10577
  br label %.loopexit9105

bb.beq:                                           ; preds = %bb.ben
  %i.hfg = sub nuw nsw i64 %i.gpe, %i.hdz         ; 2 uses
  %i.hfh = getelementptr inbounds nuw [4 x i8], ptr %i.gpc, i64 %i.hdz ; 2 uses
  %.not84.i189.i1132 = icmp eq i64 %i.gpe, %i.hdz
  br i1 %.not84.i189.i1132, label %.invoke16046, label %bb.bes

bb.ber:                                           ; preds = %bb.ben
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.hdz, i64 noundef range(i64 0, 2305843009213693952) %i.gpe, i64 noundef range(i64 0, 2305843009213693952) %i.gpe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.bet unwind label %.loopexit.split-lp9108.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10576

bb.bes:                                           ; preds = %bb.beq
  %i.hfi = load float, ptr %i.hfh, align 4, !alias.scope !10585, !noundef !5
  br label %bb.beu

bb.bet:                                           ; preds = %.split10610.us, %bb.ber
  unreachable

bb.beu:                                           ; preds = %bb.bes, %bb.bex
  %.sroa.055.0.i192.i113510603 = phi i64 [ 0, %bb.bes ], [ %i.hfu, %bb.bex ] ; 3 uses
  %.sroa.035.0.i191.i113410602 = phi float [ %i.hfi, %bb.bes ], [ %.sroa.035.1.i194.i1137, %bb.bex ] ; 2 uses
  %.sroa.034.0.i190.i113310601 = phi i64 [ 0, %bb.bes ], [ %.sroa.034.1.i193.i1136, %bb.bex ]
  %i.hfj = mul i64 %.sroa.055.0.i192.i113510603, %i.hcp ; 3 uses
  %i.hfk = icmp ult i64 %i.hfj, %i.hfg
  br i1 %i.hfk, label %bb.bex, label %.invoke16046

bb.bev:                                           ; preds = %bb.bex
  %i.hfl = icmp ult i64 %i.hfd, %i.hcw
  br i1 %i.hfl, label %bb.bew, label %.invoke16046

bb.bew:                                           ; preds = %bb.bev
  %i.hfm = trunc i64 %.sroa.034.1.i193.i1136 to i32
  %i.hfn = getelementptr inbounds nuw [4 x i8], ptr %i.hcz, i64 %i.hfd
  store i32 %i.hfm, ptr %i.hfn, align 4, !noalias !10576
  %i.hfo = load i64, ptr %i.ic, align 8, !range !8, !alias.scope !10586, !noalias !10576, !noundef !5
  %i.hfp = load i64, ptr %i.hdo, align 8, !alias.scope !10586, !noalias !10576
  %i.hfq = trunc nuw i64 %i.hfo to i1
  br i1 %i.hfq, label %bb.bek, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3540

.invoke16046:                                     ; preds = %bb.bev, %bb.beq, %bb.beu
  %i.hfr = phi i64 [ %i.hfj, %bb.beu ], [ 0, %bb.beq ], [ %i.hfd, %bb.bev ]
  %i.hfs = phi i64 [ %i.hfg, %bb.beu ], [ 0, %bb.beq ], [ %i.hcw, %bb.bev ]
  %i.hft = phi ptr [ @6, %bb.beu ], [ @4, %bb.beq ], [ @5, %bb.bev ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hfr, i64 noundef %i.hfs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hft) #22
          to label %.cont16047 unwind label %.loopexit.split-lp9108.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10576

.cont16047:                                       ; preds = %.invoke16046
  unreachable

bb.bex:                                           ; preds = %bb.beu
  %i.hfu = add nuw i64 %.sroa.055.0.i192.i113510603, 1 ; 2 uses
  %i.hfv = getelementptr inbounds nuw [4 x i8], ptr %i.hfh, i64 %i.hfj
  %i.hfw = load float, ptr %i.hfv, align 4, !alias.scope !10585, !noundef !5 ; 2 uses
  %i.hfx = fcmp olt float %.sroa.035.0.i191.i113410602, %i.hfw ; 2 uses
  %.sroa.034.1.i193.i1136 = select i1 %i.hfx, i64 %.sroa.055.0.i192.i113510603, i64 %.sroa.034.0.i190.i113310601 ; 2 uses
  %.sroa.035.1.i194.i1137 = select i1 %i.hfx, float %i.hfw, float %.sroa.035.0.i191.i113410602
  %exitcond12869.not = icmp eq i64 %i.hfu, %i.hci
  br i1 %exitcond12869.not, label %bb.bev, label %bb.beu

bb.bey:                                           ; preds = %.loopexit.split-lp9108.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.beh, %bb.bea
  %i.hfy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10578
  unreachable

bb.bez:                                           ; preds = %bb.bed
  %i.hfz = sub nuw i64 %i.hdj, %i.hdh             ; 7 uses
  %.not86.i195.i1138 = icmp ugt i64 %i.hdj, %i.gpe
  br i1 %.not86.i195.i1138, label %.invoke16044, label %bb.bfa, !prof !10

bb.bfa:                                           ; preds = %bb.bez
  %i.hga = getelementptr inbounds nuw [4 x i8], ptr %i.gpc, i64 %i.hdh ; 2 uses
  %.idx11177 = shl nuw nsw i64 %i.hcw, 2
  %i.hgb = getelementptr inbounds nuw i8, ptr %i.hcz, i64 %.idx11177 ; 3 uses
  switch i64 %i.hcp, label %.split10608 [
    i64 1, label %bb.bfb
    i64 0, label %.split10608.us
  ]

bb.bfb:                                           ; preds = %bb.bfa
  %i.hgc = icmp eq i64 %i.hcw, 0
  br i1 %i.hgc, label %.loopexit9105, label %.lr.ph10619.preheader

.lr.ph10619.preheader:                            ; preds = %bb.bfb
  %i.hgd = add i64 %i.hci, 4611686018427387903    ; 2 uses
  %i.hge = and i64 %i.hgd, 4611686018427387903    ; 2 uses
  %i.hgf = add nuw nsw i64 %i.hge, 1              ; 2 uses
  %i.hgg = icmp eq i64 %i.hge, 0
  %unroll_iter19465 = and i64 %i.hgf, 9223372036854775806
  %i.hgh = and i64 %i.hgd, 1
  %lcmp.mod19462.not.not = icmp eq i64 %i.hgh, 0
  %lcmp.mod19464 = trunc i64 %i.hgf to i1
  br label %.lr.ph10619

.split10608.us:                                   ; preds = %bb.bfa
  %i.hgi = icmp eq i64 %i.hcw, 0
  br i1 %i.hgi, label %.loopexit9105, label %.split10610.us

.lr.ph10619:                                      ; preds = %.lr.ph10619.preheader, %.thread8349
  %.sroa.75439.010618 = phi i64 [ %i.hgk, %.thread8349 ], [ 0, %.lr.ph10619.preheader ] ; 2 uses
  %.sroa.05437.010617 = phi ptr [ %i.hgj, %.thread8349 ], [ %i.hcz, %.lr.ph10619.preheader ] ; 2 uses
  %i.hgj = getelementptr inbounds nuw i8, ptr %.sroa.05437.010617, i64 4 ; 2 uses
  %i.hgk = add nuw nsw i64 %.sroa.75439.010618, 1
  %i.hgl = mul i64 %.sroa.75439.010618, %i.hci    ; 4 uses
  %i.hgm = add i64 %i.hgl, %i.hci                 ; 3 uses
  %i.hgn = icmp ult i64 %i.hgm, %i.hgl
  %.not91.i209.i1152 = icmp ugt i64 %i.hgm, %i.hfz
  %or.cond.i210.i1153 = select i1 %i.hgn, i1 true, i1 %.not91.i209.i1152, !prof !7
  br i1 %or.cond.i210.i1153, label %.invoke16044, label %.lr.ph10615.preheader, !prof !7

.lr.ph10615.preheader:                            ; preds = %.lr.ph10619
  %i.hgo = getelementptr inbounds nuw [4 x i8], ptr %i.hga, i64 %i.hgl ; 3 uses
  %i.hgp = load float, ptr %i.hgo, align 4, !alias.scope !10585, !noundef !5 ; 2 uses
  br i1 %i.hgg, label %.lr.ph10615.epil.preheader, label %.lr.ph10615

.thread8349.unr-lcssa:                            ; preds = %.lr.ph10615
  br i1 %lcmp.mod19462.not.not, label %.lr.ph10615.epil.preheader, label %.thread8349

.lr.ph10615.epil.preheader:                       ; preds = %.thread8349.unr-lcssa, %.lr.ph10615.preheader
  %.sroa.04.0.i214.i115710614.epil.init = phi i32 [ 0, %.lr.ph10615.preheader ], [ %.sroa.04.1.i217.i1160.1, %.thread8349.unr-lcssa ]
  %.sroa.05.0.i213.i115610613.epil.init = phi float [ %i.hgp, %.lr.ph10615.preheader ], [ %.sroa.05.1.i216.i1159.1, %.thread8349.unr-lcssa ]
  %.sroa.75442.010612.epil.init = phi i32 [ 0, %.lr.ph10615.preheader ], [ %i.hgx, %.thread8349.unr-lcssa ]
  %.sroa.05440.010611.epil.init = phi ptr [ %i.hgo, %.lr.ph10615.preheader ], [ %i.hgy, %.thread8349.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19464)
  %i.hgq = load float, ptr %.sroa.05440.010611.epil.init, align 4, !noalias !10578, !noundef !5
  %i.hgr = fcmp olt float %.sroa.05.0.i213.i115610613.epil.init, %i.hgq
  %.sroa.04.1.i217.i1160.epil = select i1 %i.hgr, i32 %.sroa.75442.010612.epil.init, i32 %.sroa.04.0.i214.i115710614.epil.init
  br label %.thread8349

.thread8349:                                      ; preds = %.thread8349.unr-lcssa, %.lr.ph10615.epil.preheader
  %.sroa.04.1.i217.i1160.lcssa = phi i32 [ %.sroa.04.1.i217.i1160.1, %.thread8349.unr-lcssa ], [ %.sroa.04.1.i217.i1160.epil, %.lr.ph10615.epil.preheader ]
  store i32 %.sroa.04.1.i217.i1160.lcssa, ptr %.sroa.05437.010617, align 4, !noalias !10578
  %i.hgs = icmp eq ptr %i.hgj, %i.hgb
  br i1 %i.hgs, label %.loopexit9105, label %.lr.ph10619

.lr.ph10615:                                      ; preds = %.lr.ph10615.preheader, %.lr.ph10615
  %.sroa.04.0.i214.i115710614 = phi i32 [ %.sroa.04.1.i217.i1160.1, %.lr.ph10615 ], [ 0, %.lr.ph10615.preheader ]
  %.sroa.05.0.i213.i115610613 = phi float [ %.sroa.05.1.i216.i1159.1, %.lr.ph10615 ], [ %i.hgp, %.lr.ph10615.preheader ] ; 2 uses
  %.sroa.75442.010612 = phi i32 [ %i.hgx, %.lr.ph10615 ], [ 0, %.lr.ph10615.preheader ] ; 3 uses
  %.sroa.05440.010611 = phi ptr [ %i.hgy, %.lr.ph10615 ], [ %i.hgo, %.lr.ph10615.preheader ] ; 3 uses
  %niter19466 = phi i64 [ %niter19466.next.1, %.lr.ph10615 ], [ 0, %.lr.ph10615.preheader ]
  %i.hgt = or disjoint i32 %.sroa.75442.010612, 1
  %i.hgu = getelementptr inbounds nuw i8, ptr %.sroa.05440.010611, i64 4
  %i.hgv = load float, ptr %.sroa.05440.010611, align 4, !noalias !10578, !noundef !5 ; 2 uses
  %i.hgw = fcmp olt float %.sroa.05.0.i213.i115610613, %i.hgv ; 2 uses
  %.sroa.05.1.i216.i1159 = select i1 %i.hgw, float %i.hgv, float %.sroa.05.0.i213.i115610613 ; 2 uses
  %.sroa.04.1.i217.i1160 = select i1 %i.hgw, i32 %.sroa.75442.010612, i32 %.sroa.04.0.i214.i115710614
  %i.hgx = add nuw nsw i32 %.sroa.75442.010612, 2 ; 2 uses
  %i.hgy = getelementptr inbounds nuw i8, ptr %.sroa.05440.010611, i64 8 ; 2 uses
  %i.hgz = load float, ptr %i.hgu, align 4, !noalias !10578, !noundef !5 ; 2 uses
  %i.hha = fcmp olt float %.sroa.05.1.i216.i1159, %i.hgz ; 2 uses
  %.sroa.05.1.i216.i1159.1 = select i1 %i.hha, float %i.hgz, float %.sroa.05.1.i216.i1159 ; 2 uses
  %.sroa.04.1.i217.i1160.1 = select i1 %i.hha, i32 %i.hgt, i32 %.sroa.04.1.i217.i1160 ; 3 uses
  %niter19466.next.1 = add i64 %niter19466, 2     ; 2 uses
  %niter19466.ncmp.1 = icmp eq i64 %niter19466.next.1, %unroll_iter19465
  br i1 %niter19466.ncmp.1, label %.thread8349.unr-lcssa, label %.lr.ph10615

.split10608:                                      ; preds = %bb.bfa, %bb.bfi
  %.sroa.05443.0 = phi ptr [ %.sroa.05443.1, %bb.bfi ], [ %i.hcz, %bb.bfa ] ; 3 uses
  %.sroa.75445.0 = phi i64 [ %.sroa.75445.1, %bb.bfi ], [ 0, %bb.bfa ] ; 3 uses
  %i.hhb = icmp eq ptr %.sroa.05443.0, %i.hgb
  br i1 %i.hhb, label %bb.bfd, label %bb.bfc

bb.bfc:                                           ; preds = %.split10608
  %i.hhc = getelementptr inbounds nuw i8, ptr %.sroa.05443.0, i64 4
  %i.hhd = add i64 %.sroa.75445.0, 1
  br label %bb.bfd

bb.bfd:                                           ; preds = %bb.bfc, %.split10608
  %.sroa.05443.1 = phi ptr [ %i.hgb, %.split10608 ], [ %i.hhc, %bb.bfc ]
  %.sroa.75445.1 = phi i64 [ %.sroa.75445.0, %.split10608 ], [ %i.hhd, %bb.bfc ]
  %.sroa.2.0.i3547 = phi ptr [ null, %.split10608 ], [ %.sroa.05443.0, %bb.bfc ]
  %.sroa.0.0.i3548 = phi i64 [ undef, %.split10608 ], [ %.sroa.75445.0, %bb.bfc ]
  %i.hhe = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3548, 0
  %i.hhf = insertvalue { i64, ptr } %i.hhe, ptr %.sroa.2.0.i3547, 1
  %.fr88.i198.i1141 = freeze { i64, ptr } %i.hhf  ; 2 uses
  %i.hhg = extractvalue { i64, ptr } %.fr88.i198.i1141, 1 ; 2 uses
  %.not87.i199.i1142 = icmp eq ptr %i.hhg, null
  br i1 %.not87.i199.i1142, label %.loopexit9105, label %bb.bfe

bb.bfe:                                           ; preds = %bb.bfd
  %i.hhh = extractvalue { i64, ptr } %.fr88.i198.i1141, 0 ; 2 uses
  %i.hhi = urem i64 %i.hhh, %i.hcp                ; 2 uses
  %i.hhj = sub nuw i64 %i.hhh, %i.hhi
  %i.hhk = mul i64 %i.hhj, %i.hci
  %i.hhl = add i64 %i.hhk, %i.hhi                 ; 5 uses
  %i.hhm = icmp ugt i64 %i.hhl, %i.hfz
  br i1 %i.hhm, label %.invoke16044, label %bb.bff, !prof !10

.split10610.us:                                   ; preds = %.split10608.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.bet unwind label %bb.beb, !noalias !10576

bb.bff:                                           ; preds = %bb.bfe
  %i.hhn = sub nuw i64 %i.hfz, %i.hhl             ; 2 uses
  %i.hho = getelementptr inbounds nuw [4 x i8], ptr %i.hga, i64 %i.hhl ; 2 uses
  %.not89.i200.i1143 = icmp eq i64 %i.hfz, %i.hhl
  br i1 %.not89.i200.i1143, label %.invoke16042, label %bb.bfg

.invoke16044:                                     ; preds = %.lr.ph10619, %bb.bfe, %bb.bed, %bb.bez
  %i.hhp = phi i64 [ %i.hhl, %bb.bfe ], [ %i.hdh, %bb.bed ], [ %i.hdh, %bb.bez ], [ %i.hgl, %.lr.ph10619 ]
  %i.hhq = phi i64 [ %i.hfz, %bb.bfe ], [ %i.hdj, %bb.bed ], [ %i.hdj, %bb.bez ], [ %i.hgm, %.lr.ph10619 ]
  %i.hhr = phi i64 [ %i.hfz, %bb.bfe ], [ %i.gpe, %bb.bed ], [ %i.gpe, %bb.bez ], [ %i.hfz, %.lr.ph10619 ]
  %i.hhs = phi ptr [ @12, %bb.bfe ], [ @13, %bb.bed ], [ @13, %bb.bez ], [ @8, %.lr.ph10619 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.hhp, i64 noundef %i.hhq, i64 noundef %i.hhr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hhs) #22
          to label %.cont16045 unwind label %bb.beb, !noalias !10576

.cont16045:                                       ; preds = %.invoke16044
  unreachable

bb.bfg:                                           ; preds = %bb.bff
  %i.hht = load float, ptr %i.hho, align 4, !alias.scope !10585, !noundef !5
  br label %bb.bfh

bb.bfh:                                           ; preds = %bb.bfg, %bb.bfj
  %.sroa.044.0.i203.i114610607 = phi i64 [ 0, %bb.bfg ], [ %i.hia, %bb.bfj ] ; 3 uses
  %.sroa.021.0.i202.i114510606 = phi i64 [ 0, %bb.bfg ], [ %.sroa.021.1.i205.i1148, %bb.bfj ]
  %.sroa.022.0.i201.i114410605 = phi float [ %i.hht, %bb.bfg ], [ %.sroa.022.1.i204.i1147, %bb.bfj ] ; 2 uses
  %i.hhu = mul i64 %.sroa.044.0.i203.i114610607, %i.hcp ; 3 uses
  %i.hhv = icmp ult i64 %i.hhu, %i.hhn
  br i1 %i.hhv, label %bb.bfj, label %.invoke16042

bb.bfi:                                           ; preds = %bb.bfj
  %i.hhw = trunc i64 %.sroa.021.1.i205.i1148 to i32
  store i32 %i.hhw, ptr %i.hhg, align 4, !noalias !10576
  br label %.split10608

.invoke16042:                                     ; preds = %bb.bff, %bb.bfh
  %i.hhx = phi i64 [ %i.hhu, %bb.bfh ], [ 0, %bb.bff ]
  %i.hhy = phi i64 [ %i.hhn, %bb.bfh ], [ 0, %bb.bff ]
  %i.hhz = phi ptr [ @11, %bb.bfh ], [ @10, %bb.bff ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hhx, i64 noundef %i.hhy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hhz) #22
          to label %.cont16043 unwind label %bb.beb, !noalias !10576

.cont16043:                                       ; preds = %.invoke16042
  unreachable

bb.bfj:                                           ; preds = %bb.bfh
  %i.hia = add nuw i64 %.sroa.044.0.i203.i114610607, 1 ; 2 uses
  %i.hib = getelementptr inbounds nuw [4 x i8], ptr %i.hho, i64 %i.hhu
  %i.hic = load float, ptr %i.hib, align 4, !alias.scope !10585, !noundef !5 ; 2 uses
  %i.hid = fcmp olt float %.sroa.022.0.i201.i114410605, %i.hic ; 2 uses
  %.sroa.022.1.i204.i1147 = select i1 %i.hid, float %i.hic, float %.sroa.022.0.i201.i114410605
  %.sroa.021.1.i205.i1148 = select i1 %i.hid, i64 %.sroa.044.0.i203.i114610607, i64 %.sroa.021.0.i202.i114510606 ; 2 uses
  %exitcond12870.not = icmp eq i64 %i.hia, %i.hci
  br i1 %exitcond12870.not, label %bb.bfi, label %bb.bfh

bb.bfk:                                           ; preds = %bb.bac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10589)
  %i.hie = load i64, ptr %i.gpn, align 8, !alias.scope !10590, !noundef !5 ; 2 uses
  %i.hif = load i64, ptr %1, align 8, !alias.scope !10591, !noundef !5 ; 7 uses
  %i.hig = icmp ult i64 %i.hif, %i.hie
  br i1 %i.hig, label %bb.bfl, label %bb.bfm

bb.bfl:                                           ; preds = %bb.bfk
  %i.hih = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hii = load ptr, ptr %i.hih, align 8, !alias.scope !10590, !nonnull !5, !noundef !5
  %i.hij = getelementptr inbounds nuw [8 x i8], ptr %i.hii, i64 %i.hif
  %i.hik = load i64, ptr %i.hij, align 8, !noalias !10592, !noundef !5 ; 8 uses
  %i.hil = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.him = load i64, ptr %i.hil, align 8, !alias.scope !10590, !noundef !5 ; 2 uses
  %i.hin = icmp ult i64 %i.hif, %i.him
  br i1 %i.hin, label %bb.bfn, label %bb.bfo

bb.bfm:                                           ; preds = %bb.bfk
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hif, i64 noundef %i.hie, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10592
  unreachable

bb.bfn:                                           ; preds = %bb.bfl
  %i.hio = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hip = load ptr, ptr %i.hio, align 8, !alias.scope !10590, !nonnull !5, !noundef !5
  %i.hiq = getelementptr inbounds nuw [8 x i8], ptr %i.hip, i64 %i.hif
  %i.hir = load i64, ptr %i.hiq, align 8, !noalias !10592, !noundef !5 ; 4 uses
  %i.his = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10592
  %i.hit = icmp eq i64 %i.hik, 0
  br i1 %i.hit, label %bb.bfq, label %bb.bfp

bb.bfo:                                           ; preds = %bb.bfl
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hif, i64 noundef %i.him, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10592
  unreachable

bb.bfp:                                           ; preds = %bb.bfn
  %i.hiu = udiv i64 %i.his, %i.hik                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io), !noalias !10593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii), !noalias !10593
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ii, i64 noundef %i.hiu, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10592
  %i.hiv = load i64, ptr %i.ii, align 8, !range !8, !noalias !10593, !noundef !5
  %i.hiw = trunc nuw i64 %i.hiv to i1
  %i.hix = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.hiy = load i64, ptr %i.hix, align 8, !range !12, !noalias !10593, !noundef !5 ; 8 uses
  %i.hiz = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  br i1 %i.hiw, label %bb.bfr, label %bb.bfs, !prof !10

bb.bfq:                                           ; preds = %bb.bfn
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10592
  unreachable

bb.bfr:                                           ; preds = %bb.bfp
  %i.hja = load i64, ptr %i.hiz, align 8, !noalias !10593
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hiy, i64 %i.hja) #22, !noalias !10592
  unreachable

bb.bfs:                                           ; preds = %bb.bfp
  %i.hjb = load ptr, ptr %i.hiz, align 8, !noalias !10593, !nonnull !5, !noundef !5 ; 5 uses
  %i.hjc = icmp ule i64 %i.hiu, %i.hiy
  tail call void @llvm.assume(i1 %i.hjc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii), !noalias !10593
  store i64 %i.hiy, ptr %i.io, align 16, !noalias !10593
  %i.hjd = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr %i.hjb, ptr %i.hjd, align 8, !noalias !10593
  %i.hje = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store i64 0, ptr %i.hje, align 16, !noalias !10593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.in), !noalias !10593
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.in, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.bfv unwind label %bb.bfu, !noalias !10592

bb.bft:                                           ; preds = %bb.bga, %bb.bfu
  %.pn93.i131.i1161 = phi { ptr, i32 } [ %i.hjf, %bb.bfu ], [ %.pn.i138.i1174, %bb.bga ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.io) #20
          to label %common.resume unwind label %bb.bgr, !noalias !10594

bb.bfu:                                           ; preds = %.invoke16050, %.invoke16048, %.split10629.us, %bb.bgh, %bb.bfx, %bb.bfs
  %i.hjf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bft

bb.bfv:                                           ; preds = %bb.bfs
  %i.hjg = load i64, ptr %i.in, align 8, !range !8, !noalias !10593, !noundef !5
  %i.hjh = trunc nuw i64 %i.hjg to i1
  br i1 %i.hjh, label %bb.bfw, label %bb.bfx

bb.bfw:                                           ; preds = %bb.bfv
  %i.hji = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.hjj = load i64, ptr %i.hji, align 8, !noalias !10593, !noundef !5 ; 5 uses
  %i.hjk = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.hjl = load i64, ptr %i.hjk, align 8, !noalias !10593, !noundef !5 ; 5 uses
  %i.hjm = icmp ult i64 %i.hjl, %i.hjj
  br i1 %i.hjm, label %.invoke16050, label %bb.bgs, !prof !10

bb.bfx:                                           ; preds = %bb.bfv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.im), !noalias !10593
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.i129.i965.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il), !noalias !10593
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.il, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.hif, i64 noundef 0, i64 noundef 1)
          to label %bb.bfy unwind label %bb.bfu, !noalias !10592

end_hunk_10
begin_hunk_11_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3562: ; preds = %bb.bge, %.noexc3570
  %i.hkv = load i64, ptr %i.hka, align 8, !alias.scope !10599, !noalias !10592, !noundef !5
  %i.hkw = add i64 %i.hkv, -1
  store i64 %i.hkw, ptr %i.hka, align 8, !alias.scope !10599, !noalias !10592
  br label %bb.bgg

bb.bge:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3566
  %i.hkx = load i64, ptr %i.hkp, align 8, !noalias !10598, !noundef !5
  %i.hky = mul i64 %i.hkx, %i.hkr
  %i.hkz = sub i64 %.sroa.05.031.i.i3567, %i.hky
  store i64 0, ptr %i.hko, align 8, !noalias !10598
  %i.hla = icmp ult i64 %.sroa.918.0.copyload.i.i3559, %i.hkm
  br i1 %i.hla, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3566, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3562

bb.bgf:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3566
  store i64 %i.hks, ptr %i.hko, align 8, !noalias !10598
  %i.hlb = load i64, ptr %i.hkp, align 8, !noalias !10598, !noundef !5
  %i.hlc = load i64, ptr %i.hka, align 8, !alias.scope !10599, !noalias !10592, !noundef !5
  %i.hld = add i64 %i.hlc, -1
  store i64 %i.hld, ptr %i.hka, align 8, !alias.scope !10599, !noalias !10592
  %i.hle = add i64 %i.hlb, %.sroa.05.031.i.i3567
  br label %bb.bgg

.loopexit.split-lp9101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc3569, %bb.bgd, %.invoke16052, %bb.bgk
  %lpad.loopexit.split-lp18989 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ij) #20
          to label %bb.bga unwind label %bb.bgr, !noalias !10592

bb.bgg:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3562, %bb.bgf
  %.sroa.6.0.i.i3563 = phi i64 [ %i.hle, %bb.bgf ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3562 ]
  %.sroa.08.0.i.i3564 = phi i64 [ 1, %bb.bgf ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3562 ]
  store i64 %.sroa.08.0.i.i3564, ptr %i.ij, align 8, !alias.scope !10599, !noalias !10592
  store i64 %.sroa.6.0.i.i3563, ptr %i.hjq, align 8, !alias.scope !10599, !noalias !10592
  %i.hlf = load i64, ptr %.sroa.233.0..sroa_idx.i139.i1175, align 8, !alias.scope !10596, !noalias !10592, !noundef !5 ; 4 uses
  %i.hlg = add i64 %i.hlf, 1
  store i64 %i.hlg, ptr %.sroa.233.0..sroa_idx.i139.i1175, align 8, !alias.scope !10596, !noalias !10592
  %i.hlh = icmp ugt i64 %i.hkb, %i.gpe
  br i1 %i.hlh, label %bb.bgk, label %bb.bgj, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3571: ; preds = %bb.bgp, %bb.bgc
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ij)
          to label %bb.bgh unwind label %bb.bgb, !noalias !10592

bb.bgh:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !noalias !10593
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.im)
          to label %bb.bgi unwind label %bb.bfu, !noalias !10592

bb.bgi:                                           ; preds = %bb.bgh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im), !noalias !10593
  br label %.loopexit9098

bb.bgj:                                           ; preds = %bb.bgg
  %i.hli = sub nuw nsw i64 %i.gpe, %i.hkb         ; 2 uses
  %i.hlj = getelementptr inbounds nuw [4 x i8], ptr %i.gpc, i64 %i.hkb ; 2 uses
  %.not84.i140.i1176 = icmp eq i64 %i.gpe, %i.hkb
  br i1 %.not84.i140.i1176, label %.invoke16052, label %bb.bgl

bb.bgk:                                           ; preds = %bb.bgg
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.hkb, i64 noundef range(i64 0, 2305843009213693952) %i.gpe, i64 noundef range(i64 0, 2305843009213693952) %i.gpe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.bgm unwind label %.loopexit.split-lp9101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10592

bb.bgl:                                           ; preds = %bb.bgj
  %i.hlk = load float, ptr %i.hlj, align 4, !alias.scope !10601, !noundef !5
  br label %bb.bgn

bb.bgm:                                           ; preds = %.split10629.us, %bb.bgk
  unreachable

bb.bgn:                                           ; preds = %bb.bgl, %bb.bgq
  %.sroa.055.0.i143.i117910622 = phi i64 [ 0, %bb.bgl ], [ %i.hlw, %bb.bgq ] ; 3 uses
  %.sroa.035.0.i142.i117810621 = phi float [ %i.hlk, %bb.bgl ], [ %.sroa.035.1.i145.i1181, %bb.bgq ] ; 2 uses
  %.sroa.034.0.i141.i117710620 = phi i64 [ 0, %bb.bgl ], [ %.sroa.034.1.i144.i1180, %bb.bgq ]
  %i.hll = mul i64 %.sroa.055.0.i143.i117910622, %i.hir ; 3 uses
  %i.hlm = icmp ult i64 %i.hll, %i.hli
  br i1 %i.hlm, label %bb.bgq, label %.invoke16052

bb.bgo:                                           ; preds = %bb.bgq
  %i.hln = icmp ult i64 %i.hlf, %i.hiy
  br i1 %i.hln, label %bb.bgp, label %.invoke16052

bb.bgp:                                           ; preds = %bb.bgo
  %i.hlo = trunc i64 %.sroa.034.1.i144.i1180 to i32
  %i.hlp = getelementptr inbounds nuw [4 x i8], ptr %i.hjb, i64 %i.hlf
  store i32 %i.hlo, ptr %i.hlp, align 4, !noalias !10592
  %i.hlq = load i64, ptr %i.ij, align 8, !range !8, !alias.scope !10602, !noalias !10592, !noundef !5
  %i.hlr = load i64, ptr %i.hjq, align 8, !alias.scope !10602, !noalias !10592
  %i.hls = trunc nuw i64 %i.hlq to i1
  br i1 %i.hls, label %bb.bgd, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3571

.invoke16052:                                     ; preds = %bb.bgo, %bb.bgj, %bb.bgn
  %i.hlt = phi i64 [ %i.hll, %bb.bgn ], [ 0, %bb.bgj ], [ %i.hlf, %bb.bgo ]
  %i.hlu = phi i64 [ %i.hli, %bb.bgn ], [ 0, %bb.bgj ], [ %i.hiy, %bb.bgo ]
  %i.hlv = phi ptr [ @6, %bb.bgn ], [ @4, %bb.bgj ], [ @5, %bb.bgo ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hlt, i64 noundef %i.hlu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hlv) #22
          to label %.cont16053 unwind label %.loopexit.split-lp9101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10592

.cont16053:                                       ; preds = %.invoke16052
  unreachable

bb.bgq:                                           ; preds = %bb.bgn
  %i.hlw = add nuw i64 %.sroa.055.0.i143.i117910622, 1 ; 2 uses
  %i.hlx = getelementptr inbounds nuw [4 x i8], ptr %i.hlj, i64 %i.hll
  %i.hly = load float, ptr %i.hlx, align 4, !alias.scope !10601, !noundef !5 ; 2 uses
  %i.hlz = fcmp ogt float %.sroa.035.0.i142.i117810621, %i.hly ; 2 uses
  %.sroa.034.1.i144.i1180 = select i1 %i.hlz, i64 %.sroa.055.0.i143.i117910622, i64 %.sroa.034.0.i141.i117710620 ; 2 uses
  %.sroa.035.1.i145.i1181 = select i1 %i.hlz, float %i.hly, float %.sroa.035.0.i142.i117810621
  %exitcond12871.not = icmp eq i64 %i.hlw, %i.hik
  br i1 %exitcond12871.not, label %bb.bgo, label %bb.bgn

bb.bgr:                                           ; preds = %.loopexit.split-lp9101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bga, %bb.bft
  %i.hma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10594
  unreachable

bb.bgs:                                           ; preds = %bb.bfw
  %i.hmb = sub nuw i64 %i.hjl, %i.hjj             ; 7 uses
  %.not86.i146.i1182 = icmp ugt i64 %i.hjl, %i.gpe
  br i1 %.not86.i146.i1182, label %.invoke16050, label %bb.bgt, !prof !10

bb.bgt:                                           ; preds = %bb.bgs
  %i.hmc = getelementptr inbounds nuw [4 x i8], ptr %i.gpc, i64 %i.hjj ; 2 uses
  %.idx11180 = shl nuw nsw i64 %i.hiy, 2
  %i.hmd = getelementptr inbounds nuw i8, ptr %i.hjb, i64 %.idx11180 ; 3 uses
  switch i64 %i.hir, label %.split10627 [
    i64 1, label %bb.bgu
    i64 0, label %.split10627.us
  ]

bb.bgu:                                           ; preds = %bb.bgt
  %i.hme = icmp eq i64 %i.hiy, 0
  br i1 %i.hme, label %.loopexit9098, label %.lr.ph10638.preheader

.lr.ph10638.preheader:                            ; preds = %bb.bgu
  %i.hmf = add i64 %i.hik, 4611686018427387903    ; 2 uses
  %i.hmg = and i64 %i.hmf, 4611686018427387903    ; 2 uses
  %i.hmh = add nuw nsw i64 %i.hmg, 1              ; 2 uses
  %i.hmi = icmp eq i64 %i.hmg, 0
  %unroll_iter19471 = and i64 %i.hmh, 9223372036854775806
  %i.hmj = and i64 %i.hmf, 1
  %lcmp.mod19468.not.not = icmp eq i64 %i.hmj, 0
  %lcmp.mod19470 = trunc i64 %i.hmh to i1
  br label %.lr.ph10638

.split10627.us:                                   ; preds = %bb.bgt
  %i.hmk = icmp eq i64 %i.hiy, 0
  br i1 %i.hmk, label %.loopexit9098, label %.split10629.us

.lr.ph10638:                                      ; preds = %.lr.ph10638.preheader, %.thread8375
  %.sroa.75402.010637 = phi i64 [ %i.hmm, %.thread8375 ], [ 0, %.lr.ph10638.preheader ] ; 2 uses
  %.sroa.05400.010636 = phi ptr [ %i.hml, %.thread8375 ], [ %i.hjb, %.lr.ph10638.preheader ] ; 2 uses
  %i.hml = getelementptr inbounds nuw i8, ptr %.sroa.05400.010636, i64 4 ; 2 uses
  %i.hmm = add nuw nsw i64 %.sroa.75402.010637, 1
  %i.hmn = mul i64 %.sroa.75402.010637, %i.hik    ; 4 uses
  %i.hmo = add i64 %i.hmn, %i.hik                 ; 3 uses
  %i.hmp = icmp ult i64 %i.hmo, %i.hmn
  %.not91.i160.i1196 = icmp ugt i64 %i.hmo, %i.hmb
  %or.cond.i161.i1197 = select i1 %i.hmp, i1 true, i1 %.not91.i160.i1196, !prof !7
  br i1 %or.cond.i161.i1197, label %.invoke16050, label %.lr.ph10634.preheader, !prof !7

.lr.ph10634.preheader:                            ; preds = %.lr.ph10638
  %i.hmq = getelementptr inbounds nuw [4 x i8], ptr %i.hmc, i64 %i.hmn ; 3 uses
  %i.hmr = load float, ptr %i.hmq, align 4, !alias.scope !10601, !noundef !5 ; 2 uses
  br i1 %i.hmi, label %.lr.ph10634.epil.preheader, label %.lr.ph10634

.thread8375.unr-lcssa:                            ; preds = %.lr.ph10634
  br i1 %lcmp.mod19468.not.not, label %.lr.ph10634.epil.preheader, label %.thread8375

.lr.ph10634.epil.preheader:                       ; preds = %.thread8375.unr-lcssa, %.lr.ph10634.preheader
  %.sroa.04.0.i165.i120110633.epil.init = phi i32 [ 0, %.lr.ph10634.preheader ], [ %.sroa.04.1.i168.i1204.1, %.thread8375.unr-lcssa ]
  %.sroa.05.0.i164.i120010632.epil.init = phi float [ %i.hmr, %.lr.ph10634.preheader ], [ %.sroa.05.1.i167.i1203.1, %.thread8375.unr-lcssa ]
  %.sroa.75405.010631.epil.init = phi i32 [ 0, %.lr.ph10634.preheader ], [ %i.hmz, %.thread8375.unr-lcssa ]
  %.sroa.05403.010630.epil.init = phi ptr [ %i.hmq, %.lr.ph10634.preheader ], [ %i.hna, %.thread8375.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19470)
  %i.hms = load float, ptr %.sroa.05403.010630.epil.init, align 4, !noalias !10594, !noundef !5
  %i.hmt = fcmp ogt float %.sroa.05.0.i164.i120010632.epil.init, %i.hms
  %.sroa.04.1.i168.i1204.epil = select i1 %i.hmt, i32 %.sroa.75405.010631.epil.init, i32 %.sroa.04.0.i165.i120110633.epil.init
  br label %.thread8375

.thread8375:                                      ; preds = %.thread8375.unr-lcssa, %.lr.ph10634.epil.preheader
  %.sroa.04.1.i168.i1204.lcssa = phi i32 [ %.sroa.04.1.i168.i1204.1, %.thread8375.unr-lcssa ], [ %.sroa.04.1.i168.i1204.epil, %.lr.ph10634.epil.preheader ]
  store i32 %.sroa.04.1.i168.i1204.lcssa, ptr %.sroa.05400.010636, align 4, !noalias !10594
  %i.hmu = icmp eq ptr %i.hml, %i.hmd
  br i1 %i.hmu, label %.loopexit9098, label %.lr.ph10638

.lr.ph10634:                                      ; preds = %.lr.ph10634.preheader, %.lr.ph10634
  %.sroa.04.0.i165.i120110633 = phi i32 [ %.sroa.04.1.i168.i1204.1, %.lr.ph10634 ], [ 0, %.lr.ph10634.preheader ]
  %.sroa.05.0.i164.i120010632 = phi float [ %.sroa.05.1.i167.i1203.1, %.lr.ph10634 ], [ %i.hmr, %.lr.ph10634.preheader ] ; 2 uses
  %.sroa.75405.010631 = phi i32 [ %i.hmz, %.lr.ph10634 ], [ 0, %.lr.ph10634.preheader ] ; 3 uses
  %.sroa.05403.010630 = phi ptr [ %i.hna, %.lr.ph10634 ], [ %i.hmq, %.lr.ph10634.preheader ] ; 3 uses
  %niter19472 = phi i64 [ %niter19472.next.1, %.lr.ph10634 ], [ 0, %.lr.ph10634.preheader ]
  %i.hmv = or disjoint i32 %.sroa.75405.010631, 1
  %i.hmw = getelementptr inbounds nuw i8, ptr %.sroa.05403.010630, i64 4
  %i.hmx = load float, ptr %.sroa.05403.010630, align 4, !noalias !10594, !noundef !5 ; 2 uses
  %i.hmy = fcmp ogt float %.sroa.05.0.i164.i120010632, %i.hmx ; 2 uses
  %.sroa.05.1.i167.i1203 = select i1 %i.hmy, float %i.hmx, float %.sroa.05.0.i164.i120010632 ; 2 uses
  %.sroa.04.1.i168.i1204 = select i1 %i.hmy, i32 %.sroa.75405.010631, i32 %.sroa.04.0.i165.i120110633
  %i.hmz = add nuw nsw i32 %.sroa.75405.010631, 2 ; 2 uses
  %i.hna = getelementptr inbounds nuw i8, ptr %.sroa.05403.010630, i64 8 ; 2 uses
  %i.hnb = load float, ptr %i.hmw, align 4, !noalias !10594, !noundef !5 ; 2 uses
  %i.hnc = fcmp ogt float %.sroa.05.1.i167.i1203, %i.hnb ; 2 uses
  %.sroa.05.1.i167.i1203.1 = select i1 %i.hnc, float %i.hnb, float %.sroa.05.1.i167.i1203 ; 2 uses
  %.sroa.04.1.i168.i1204.1 = select i1 %i.hnc, i32 %i.hmv, i32 %.sroa.04.1.i168.i1204 ; 3 uses
  %niter19472.next.1 = add i64 %niter19472, 2     ; 2 uses
  %niter19472.ncmp.1 = icmp eq i64 %niter19472.next.1, %unroll_iter19471
  br i1 %niter19472.ncmp.1, label %.thread8375.unr-lcssa, label %.lr.ph10634

.split10627:                                      ; preds = %bb.bgt, %bb.bhb
  %.sroa.05406.0 = phi ptr [ %.sroa.05406.1, %bb.bhb ], [ %i.hjb, %bb.bgt ] ; 3 uses
  %.sroa.75408.0 = phi i64 [ %.sroa.75408.1, %bb.bhb ], [ 0, %bb.bgt ] ; 3 uses
  %i.hnd = icmp eq ptr %.sroa.05406.0, %i.hmd
  br i1 %i.hnd, label %bb.bgw, label %bb.bgv

bb.bgv:                                           ; preds = %.split10627
  %i.hne = getelementptr inbounds nuw i8, ptr %.sroa.05406.0, i64 4
  %i.hnf = add i64 %.sroa.75408.0, 1
  br label %bb.bgw

bb.bgw:                                           ; preds = %bb.bgv, %.split10627
  %.sroa.05406.1 = phi ptr [ %i.hmd, %.split10627 ], [ %i.hne, %bb.bgv ]
  %.sroa.75408.1 = phi i64 [ %.sroa.75408.0, %.split10627 ], [ %i.hnf, %bb.bgv ]
  %.sroa.2.0.i3578 = phi ptr [ null, %.split10627 ], [ %.sroa.05406.0, %bb.bgv ]
  %.sroa.0.0.i3579 = phi i64 [ undef, %.split10627 ], [ %.sroa.75408.0, %bb.bgv ]
  %i.hng = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3579, 0
  %i.hnh = insertvalue { i64, ptr } %i.hng, ptr %.sroa.2.0.i3578, 1
  %.fr88.i149.i1185 = freeze { i64, ptr } %i.hnh  ; 2 uses
  %i.hni = extractvalue { i64, ptr } %.fr88.i149.i1185, 1 ; 2 uses
  %.not87.i150.i1186 = icmp eq ptr %i.hni, null
  br i1 %.not87.i150.i1186, label %.loopexit9098, label %bb.bgx

bb.bgx:                                           ; preds = %bb.bgw
  %i.hnj = extractvalue { i64, ptr } %.fr88.i149.i1185, 0 ; 2 uses
  %i.hnk = urem i64 %i.hnj, %i.hir                ; 2 uses
  %i.hnl = sub nuw i64 %i.hnj, %i.hnk
  %i.hnm = mul i64 %i.hnl, %i.hik
  %i.hnn = add i64 %i.hnm, %i.hnk                 ; 5 uses
  %i.hno = icmp ugt i64 %i.hnn, %i.hmb
  br i1 %i.hno, label %.invoke16050, label %bb.bgy, !prof !10

.split10629.us:                                   ; preds = %.split10627.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.bgm unwind label %bb.bfu, !noalias !10592

bb.bgy:                                           ; preds = %bb.bgx
  %i.hnp = sub nuw i64 %i.hmb, %i.hnn             ; 2 uses
  %i.hnq = getelementptr inbounds nuw [4 x i8], ptr %i.hmc, i64 %i.hnn ; 2 uses
  %.not89.i151.i1187 = icmp eq i64 %i.hmb, %i.hnn
  br i1 %.not89.i151.i1187, label %.invoke16048, label %bb.bgz

.invoke16050:                                     ; preds = %.lr.ph10638, %bb.bgx, %bb.bfw, %bb.bgs
  %i.hnr = phi i64 [ %i.hnn, %bb.bgx ], [ %i.hjj, %bb.bfw ], [ %i.hjj, %bb.bgs ], [ %i.hmn, %.lr.ph10638 ]
  %i.hns = phi i64 [ %i.hmb, %bb.bgx ], [ %i.hjl, %bb.bfw ], [ %i.hjl, %bb.bgs ], [ %i.hmo, %.lr.ph10638 ]
  %i.hnt = phi i64 [ %i.hmb, %bb.bgx ], [ %i.gpe, %bb.bfw ], [ %i.gpe, %bb.bgs ], [ %i.hmb, %.lr.ph10638 ]
  %i.hnu = phi ptr [ @12, %bb.bgx ], [ @13, %bb.bfw ], [ @13, %bb.bgs ], [ @8, %.lr.ph10638 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.hnr, i64 noundef %i.hns, i64 noundef %i.hnt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hnu) #22
          to label %.cont16051 unwind label %bb.bfu, !noalias !10592

.cont16051:                                       ; preds = %.invoke16050
  unreachable

bb.bgz:                                           ; preds = %bb.bgy
  %i.hnv = load float, ptr %i.hnq, align 4, !alias.scope !10601, !noundef !5
  br label %bb.bha

bb.bha:                                           ; preds = %bb.bgz, %bb.bhc
  %.sroa.044.0.i154.i119010626 = phi i64 [ 0, %bb.bgz ], [ %i.hoc, %bb.bhc ] ; 3 uses
  %.sroa.021.0.i153.i118910625 = phi i64 [ 0, %bb.bgz ], [ %.sroa.021.1.i156.i1192, %bb.bhc ]
  %.sroa.022.0.i152.i118810624 = phi float [ %i.hnv, %bb.bgz ], [ %.sroa.022.1.i155.i1191, %bb.bhc ] ; 2 uses
  %i.hnw = mul i64 %.sroa.044.0.i154.i119010626, %i.hir ; 3 uses
  %i.hnx = icmp ult i64 %i.hnw, %i.hnp
  br i1 %i.hnx, label %bb.bhc, label %.invoke16048

bb.bhb:                                           ; preds = %bb.bhc
  %i.hny = trunc i64 %.sroa.021.1.i156.i1192 to i32
  store i32 %i.hny, ptr %i.hni, align 4, !noalias !10592
  br label %.split10627

.invoke16048:                                     ; preds = %bb.bgy, %bb.bha
  %i.hnz = phi i64 [ %i.hnw, %bb.bha ], [ 0, %bb.bgy ]
  %i.hoa = phi i64 [ %i.hnp, %bb.bha ], [ 0, %bb.bgy ]
  %i.hob = phi ptr [ @11, %bb.bha ], [ @10, %bb.bgy ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hnz, i64 noundef %i.hoa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hob) #22
          to label %.cont16049 unwind label %bb.bfu, !noalias !10592

.cont16049:                                       ; preds = %.invoke16048
  unreachable

bb.bhc:                                           ; preds = %bb.bha
  %i.hoc = add nuw i64 %.sroa.044.0.i154.i119010626, 1 ; 2 uses
  %i.hod = getelementptr inbounds nuw [4 x i8], ptr %i.hnq, i64 %i.hnw
  %i.hoe = load float, ptr %i.hod, align 4, !alias.scope !10601, !noundef !5 ; 2 uses
  %i.hof = fcmp ogt float %.sroa.022.0.i152.i118810624, %i.hoe ; 2 uses
  %.sroa.022.1.i155.i1191 = select i1 %i.hof, float %i.hoe, float %.sroa.022.0.i152.i118810624
  %.sroa.021.1.i156.i1192 = select i1 %i.hof, i64 %.sroa.044.0.i154.i119010626, i64 %.sroa.021.0.i153.i118910625 ; 2 uses
  %exitcond12872.not = icmp eq i64 %i.hoc, %i.hik
  br i1 %exitcond12872.not, label %bb.bhb, label %bb.bha

bb.bhd:                                           ; preds = %bb.bef
  %.sroa.551.0..sroa_idx.i184.i1121 = getelementptr inbounds nuw i8, ptr %i.ie, i64 64
  %.sroa.75195.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75195.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i184.i1121, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ie), !noalias !10577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i178.i954.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i178.i954.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if), !noalias !10577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig), !noalias !10577
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ih), !noalias !10576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih), !noalias !10577
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1ffNcNtNtB6_10CpuStorage3F320EB8_.exit.thread8405

.loopexit9105:                                    ; preds = %.thread8349, %bb.bfd, %.split10608.us, %bb.bfb, %bb.bep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig), !noalias !10577
  %i.hog = load <2 x i64>, ptr %i.ih, align 16, !noalias !10577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih), !noalias !10577
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1ffNcNtNtB6_10CpuStorage3F320EB8_.exit.thread

bb.bhe:                                           ; preds = %bb.bfy
  %.sroa.551.0..sroa_idx.i135.i1165 = getelementptr inbounds nuw i8, ptr %i.il, i64 64
  %.sroa.75192.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75192.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i135.i1165, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.il), !noalias !10593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i129.i965.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i129.i965.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im), !noalias !10593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in), !noalias !10593
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.io), !noalias !10592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !noalias !10593
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1ffNcNtNtB6_10CpuStorage3F320EB8_.exit.thread8405

.loopexit9098:                                    ; preds = %.thread8375, %bb.bgw, %.split10627.us, %bb.bgu, %bb.bgi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in), !noalias !10593
  %i.hoh = load <2 x i64>, ptr %i.io, align 16, !noalias !10593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !noalias !10593
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1ffNcNtNtB6_10CpuStorage3F320EB8_.exit.thread

_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1ffNcNtNtB6_10CpuStorage3F320EB8_.exit: ; preds = %bb.azz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf), !noalias !10603
  %i.hoi = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr @42, ptr %i.hoi, align 8, !noalias !10603
  %i.hoj = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store i64 6, ptr %i.hoj, align 8, !noalias !10603
  store i64 -9223372036854775796, ptr %i.jf, align 8, !noalias !10603
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.jd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.jf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf), !noalias !10603
  %.sroa.05205.0.copyload = load i64, ptr %i.jd, align 8 ; 2 uses
  %.sroa.45206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %.sroa.45206.0.copyload = load i64, ptr %.sroa.45206.0..sroa_idx, align 8 ; 2 uses
  %.sroa.55207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.hok = load <2 x i64>, ptr %.sroa.55207.0..sroa_idx, align 8 ; 3 uses
  %.sroa.55207.sroa.5.0..sroa.55207.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %.sroa.55207.sroa.5.0.copyload = load i64, ptr %.sroa.55207.sroa.5.0..sroa.55207.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not181 = icmp eq i64 %.sroa.05205.0.copyload, -1
  %i.hol = extractelement <2 x i64> %i.hok, i64 0
  %i.hom = extractelement <2 x i64> %i.hok, i64 1
  br i1 %.not181, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1ffNcNtNtB6_10CpuStorage3F320EB8_.exit.thread, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1ffNcNtNtB6_10CpuStorage3F320EB8_.exit.thread8405

bb.bhf:                                           ; preds = %bb.a
  %i.hon = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hoo = load ptr, ptr %i.hon, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.hop = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hoq = load i64, ptr %i.hop, align 8, !noundef !5 ; 32 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10606)
  %i.hor = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10607
  %i.hos = icmp eq i64 %i.hor, 0
  br i1 %i.hos, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit, label %bb.bhg

bb.bhg:                                           ; preds = %bb.bhf
  %i.hot = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.hou = load i8, ptr %i.hot, align 1, !range !24, !alias.scope !10604, !noundef !5
  %i.hov = trunc nuw i8 %i.hou to i1
  %i.how = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hox = load i8, ptr %i.how, align 8, !range !24, !alias.scope !10604, !noundef !5
  %i.hoy = trunc nuw i8 %i.hox to i1              ; 2 uses
  %i.hoz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %i.hov, label %bb.bhi, label %bb.bhh

bb.bhh:                                           ; preds = %bb.bhg
  br i1 %i.hoy, label %bb.bjc, label %bb.bhj

bb.bhi:                                           ; preds = %bb.bhg
  br i1 %i.hoy, label %bb.bmq, label %bb.bkx

bb.bhj:                                           ; preds = %bb.bhh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10610)
  %i.hpa = load i64, ptr %i.hoz, align 8, !alias.scope !10611, !noundef !5 ; 2 uses
  %i.hpb = load i64, ptr %1, align 8, !alias.scope !10612, !noundef !5 ; 7 uses
  %i.hpc = icmp ult i64 %i.hpb, %i.hpa
  br i1 %i.hpc, label %bb.bhk, label %bb.bhl

bb.bhk:                                           ; preds = %bb.bhj
  %i.hpd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hpe = load ptr, ptr %i.hpd, align 8, !alias.scope !10611, !nonnull !5, !noundef !5
  %i.hpf = getelementptr inbounds nuw [8 x i8], ptr %i.hpe, i64 %i.hpb
  %i.hpg = load i64, ptr %i.hpf, align 8, !noalias !10613, !noundef !5 ; 8 uses
end_hunk_11
begin_hunk_12_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3653: ; preds = %bb.blr, %.noexc3661
  %i.ief = load i64, ptr %i.idk, align 8, !alias.scope !10652, !noalias !10645, !noundef !5
  %i.ieg = add i64 %i.ief, -1
  store i64 %i.ieg, ptr %i.idk, align 8, !alias.scope !10652, !noalias !10645
  br label %bb.blt

bb.blr:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3657
  %i.ieh = load i64, ptr %i.idz, align 8, !noalias !10651, !noundef !5
  %i.iei = mul i64 %i.ieh, %i.ieb
  %i.iej = sub i64 %.sroa.05.031.i.i3658, %i.iei
  store i64 0, ptr %i.idy, align 8, !noalias !10651
  %i.iek = icmp ult i64 %.sroa.918.0.copyload.i.i3650, %i.idw
  br i1 %i.iek, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3657, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3653

bb.bls:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3657
  store i64 %i.iec, ptr %i.idy, align 8, !noalias !10651
  %i.iel = load i64, ptr %i.idz, align 8, !noalias !10651, !noundef !5
  %i.iem = load i64, ptr %i.idk, align 8, !alias.scope !10652, !noalias !10645, !noundef !5
  %i.ien = add i64 %i.iem, -1
  store i64 %i.ien, ptr %i.idk, align 8, !alias.scope !10652, !noalias !10645
  %i.ieo = add i64 %i.iel, %.sroa.05.031.i.i3658
  br label %bb.blt

.loopexit.split-lp9136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc3660, %bb.blq, %.invoke16070, %bb.blx
  %lpad.loopexit.split-lp19179 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.jh) #20
          to label %bb.bln unwind label %bb.bme, !noalias !10645

bb.blt:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3653, %bb.bls
  %.sroa.6.0.i.i3654 = phi i64 [ %i.ieo, %bb.bls ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3653 ]
  %.sroa.08.0.i.i3655 = phi i64 [ 1, %bb.bls ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3653 ]
  store i64 %.sroa.08.0.i.i3655, ptr %i.jh, align 8, !alias.scope !10652, !noalias !10645
  store i64 %.sroa.6.0.i.i3654, ptr %i.ida, align 8, !alias.scope !10652, !noalias !10645
  %i.iep = load i64, ptr %.sroa.233.0..sroa_idx.i188.i883, align 8, !alias.scope !10649, !noalias !10645, !noundef !5 ; 4 uses
  %i.ieq = add i64 %i.iep, 1
  store i64 %i.ieq, ptr %.sroa.233.0..sroa_idx.i188.i883, align 8, !alias.scope !10649, !noalias !10645
  %i.ier = icmp ugt i64 %i.idl, %i.hoq
  br i1 %i.ier, label %bb.blx, label %bb.blw, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3662: ; preds = %bb.bmc, %bb.blp
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.jh)
          to label %bb.blu unwind label %bb.blo, !noalias !10645

bb.blu:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh), !noalias !10646
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.jk)
          to label %bb.blv unwind label %bb.blh, !noalias !10645

bb.blv:                                           ; preds = %bb.blu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jk), !noalias !10646
  br label %.loopexit9133

bb.blw:                                           ; preds = %bb.blt
  %i.ies = sub nuw nsw i64 %i.hoq, %i.idl         ; 2 uses
  %i.iet = getelementptr inbounds nuw [8 x i8], ptr %i.hoo, i64 %i.idl ; 2 uses
  %.not84.i189.i884 = icmp eq i64 %i.hoq, %i.idl
  br i1 %.not84.i189.i884, label %.invoke16070, label %bb.bly

bb.blx:                                           ; preds = %bb.blt
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.idl, i64 noundef range(i64 0, 1152921504606846976) %i.hoq, i64 noundef range(i64 0, 1152921504606846976) %i.hoq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.blz unwind label %.loopexit.split-lp9136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10645

bb.bly:                                           ; preds = %bb.blw
  %i.ieu = load double, ptr %i.iet, align 8, !alias.scope !10654, !noundef !5
  br label %bb.bma

bb.blz:                                           ; preds = %.split10534.us, %bb.blx
  unreachable

bb.bma:                                           ; preds = %bb.bly, %bb.bmd
  %.sroa.055.0.i192.i88710527 = phi i64 [ 0, %bb.bly ], [ %i.ifg, %bb.bmd ] ; 3 uses
  %.sroa.035.0.i191.i88610526 = phi double [ %i.ieu, %bb.bly ], [ %.sroa.035.1.i194.i, %bb.bmd ] ; 2 uses
  %.sroa.034.0.i190.i88510525 = phi i64 [ 0, %bb.bly ], [ %.sroa.034.1.i193.i, %bb.bmd ]
  %i.iev = mul i64 %.sroa.055.0.i192.i88710527, %i.icb ; 3 uses
  %i.iew = icmp ult i64 %i.iev, %i.ies
  br i1 %i.iew, label %bb.bmd, label %.invoke16070

bb.bmb:                                           ; preds = %bb.bmd
  %i.iex = icmp ult i64 %i.iep, %i.ici
  br i1 %i.iex, label %bb.bmc, label %.invoke16070

bb.bmc:                                           ; preds = %bb.bmb
  %i.iey = trunc i64 %.sroa.034.1.i193.i to i32
  %i.iez = getelementptr inbounds nuw [4 x i8], ptr %i.icl, i64 %i.iep
  store i32 %i.iey, ptr %i.iez, align 4, !noalias !10645
  %i.ifa = load i64, ptr %i.jh, align 8, !range !8, !alias.scope !10655, !noalias !10645, !noundef !5
  %i.ifb = load i64, ptr %i.ida, align 8, !alias.scope !10655, !noalias !10645
  %i.ifc = trunc nuw i64 %i.ifa to i1
  br i1 %i.ifc, label %bb.blq, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3662

.invoke16070:                                     ; preds = %bb.bmb, %bb.blw, %bb.bma
  %i.ifd = phi i64 [ %i.iev, %bb.bma ], [ 0, %bb.blw ], [ %i.iep, %bb.bmb ]
  %i.ife = phi i64 [ %i.ies, %bb.bma ], [ 0, %bb.blw ], [ %i.ici, %bb.bmb ]
  %i.iff = phi ptr [ @6, %bb.bma ], [ @4, %bb.blw ], [ @5, %bb.bmb ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ifd, i64 noundef %i.ife, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iff) #22
          to label %.cont16071 unwind label %.loopexit.split-lp9136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10645

.cont16071:                                       ; preds = %.invoke16070
  unreachable

bb.bmd:                                           ; preds = %bb.bma
  %i.ifg = add nuw i64 %.sroa.055.0.i192.i88710527, 1 ; 2 uses
  %i.ifh = getelementptr inbounds nuw [8 x i8], ptr %i.iet, i64 %i.iev
  %i.ifi = load double, ptr %i.ifh, align 8, !alias.scope !10654, !noundef !5 ; 2 uses
  %i.ifj = fcmp olt double %.sroa.035.0.i191.i88610526, %i.ifi ; 2 uses
  %.sroa.034.1.i193.i = select i1 %i.ifj, i64 %.sroa.055.0.i192.i88710527, i64 %.sroa.034.0.i190.i88510525 ; 2 uses
  %.sroa.035.1.i194.i = select i1 %i.ifj, double %i.ifi, double %.sroa.035.0.i191.i88610526
  %exitcond12861.not = icmp eq i64 %i.ifg, %i.ibu
  br i1 %exitcond12861.not, label %bb.bmb, label %bb.bma

bb.bme:                                           ; preds = %.loopexit.split-lp9136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bln, %bb.blg
  %i.ifk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10647
  unreachable

bb.bmf:                                           ; preds = %bb.blj
  %i.ifl = sub nuw i64 %i.icv, %i.ict             ; 7 uses
  %.not86.i195.i888 = icmp ugt i64 %i.icv, %i.hoq
  br i1 %.not86.i195.i888, label %.invoke16068, label %bb.bmg, !prof !10

bb.bmg:                                           ; preds = %bb.bmf
  %i.ifm = getelementptr inbounds nuw [8 x i8], ptr %i.hoo, i64 %i.ict ; 2 uses
  %.idx11165 = shl nuw nsw i64 %i.ici, 2
  %i.ifn = getelementptr inbounds nuw i8, ptr %i.icl, i64 %.idx11165 ; 3 uses
  switch i64 %i.icb, label %.split10532 [
    i64 1, label %bb.bmh
    i64 0, label %.split10532.us
  ]

bb.bmh:                                           ; preds = %bb.bmg
  %i.ifo = icmp eq i64 %i.ici, 0
  br i1 %i.ifo, label %.loopexit9133, label %.lr.ph10543.preheader

.lr.ph10543.preheader:                            ; preds = %bb.bmh
  %i.ifp = add i64 %i.ibu, 2305843009213693951    ; 2 uses
  %i.ifq = and i64 %i.ifp, 2305843009213693951    ; 2 uses
  %i.ifr = add nuw nsw i64 %i.ifq, 1              ; 2 uses
  %i.ifs = icmp eq i64 %i.ifq, 0
  %unroll_iter = and i64 %i.ifr, 4611686018427387902
  %i.ift = and i64 %i.ifp, 1
  %lcmp.mod19446.not.not = icmp eq i64 %i.ift, 0
  %lcmp.mod19448 = trunc i64 %i.ifr to i1
  br label %.lr.ph10543

.split10532.us:                                   ; preds = %bb.bmg
  %i.ifu = icmp eq i64 %i.ici, 0
  br i1 %i.ifu, label %.loopexit9133, label %.split10534.us

.lr.ph10543:                                      ; preds = %.lr.ph10543.preheader, %.thread8480
  %.sroa.75131.010542 = phi i64 [ %i.ifw, %.thread8480 ], [ 0, %.lr.ph10543.preheader ] ; 2 uses
  %.sroa.05129.010541 = phi ptr [ %i.ifv, %.thread8480 ], [ %i.icl, %.lr.ph10543.preheader ] ; 2 uses
  %i.ifv = getelementptr inbounds nuw i8, ptr %.sroa.05129.010541, i64 4 ; 2 uses
  %i.ifw = add nuw nsw i64 %.sroa.75131.010542, 1
  %i.ifx = mul i64 %.sroa.75131.010542, %i.ibu    ; 4 uses
  %i.ify = add i64 %i.ifx, %i.ibu                 ; 3 uses
  %i.ifz = icmp ult i64 %i.ify, %i.ifx
  %.not91.i209.i900 = icmp ugt i64 %i.ify, %i.ifl
  %or.cond.i210.i901 = select i1 %i.ifz, i1 true, i1 %.not91.i209.i900, !prof !7
  br i1 %or.cond.i210.i901, label %.invoke16068, label %.lr.ph10539.preheader, !prof !7

.lr.ph10539.preheader:                            ; preds = %.lr.ph10543
  %i.iga = getelementptr inbounds nuw [8 x i8], ptr %i.ifm, i64 %i.ifx ; 3 uses
  %i.igb = load double, ptr %i.iga, align 8, !alias.scope !10654, !noundef !5 ; 2 uses
  br i1 %i.ifs, label %.lr.ph10539.epil.preheader, label %.lr.ph10539

.thread8480.unr-lcssa:                            ; preds = %.lr.ph10539
  br i1 %lcmp.mod19446.not.not, label %.lr.ph10539.epil.preheader, label %.thread8480

.lr.ph10539.epil.preheader:                       ; preds = %.thread8480.unr-lcssa, %.lr.ph10539.preheader
  %.sroa.04.0.i214.i90510538.epil.init = phi i32 [ 0, %.lr.ph10539.preheader ], [ %.sroa.04.1.i217.i.1, %.thread8480.unr-lcssa ]
  %.sroa.05.0.i213.i90410537.epil.init = phi double [ %i.igb, %.lr.ph10539.preheader ], [ %.sroa.05.1.i216.i.1, %.thread8480.unr-lcssa ]
  %.sroa.75134.010536.epil.init = phi i32 [ 0, %.lr.ph10539.preheader ], [ %i.igj, %.thread8480.unr-lcssa ]
  %.sroa.05132.010535.epil.init = phi ptr [ %i.iga, %.lr.ph10539.preheader ], [ %i.igk, %.thread8480.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19448)
  %i.igc = load double, ptr %.sroa.05132.010535.epil.init, align 8, !noalias !10647, !noundef !5
  %i.igd = fcmp olt double %.sroa.05.0.i213.i90410537.epil.init, %i.igc
  %.sroa.04.1.i217.i.epil = select i1 %i.igd, i32 %.sroa.75134.010536.epil.init, i32 %.sroa.04.0.i214.i90510538.epil.init
  br label %.thread8480

.thread8480:                                      ; preds = %.thread8480.unr-lcssa, %.lr.ph10539.epil.preheader
  %.sroa.04.1.i217.i.lcssa = phi i32 [ %.sroa.04.1.i217.i.1, %.thread8480.unr-lcssa ], [ %.sroa.04.1.i217.i.epil, %.lr.ph10539.epil.preheader ]
  store i32 %.sroa.04.1.i217.i.lcssa, ptr %.sroa.05129.010541, align 4, !noalias !10647
  %i.ige = icmp eq ptr %i.ifv, %i.ifn
  br i1 %i.ige, label %.loopexit9133, label %.lr.ph10543

.lr.ph10539:                                      ; preds = %.lr.ph10539.preheader, %.lr.ph10539
  %.sroa.04.0.i214.i90510538 = phi i32 [ %.sroa.04.1.i217.i.1, %.lr.ph10539 ], [ 0, %.lr.ph10539.preheader ]
  %.sroa.05.0.i213.i90410537 = phi double [ %.sroa.05.1.i216.i.1, %.lr.ph10539 ], [ %i.igb, %.lr.ph10539.preheader ] ; 2 uses
  %.sroa.75134.010536 = phi i32 [ %i.igj, %.lr.ph10539 ], [ 0, %.lr.ph10539.preheader ] ; 3 uses
  %.sroa.05132.010535 = phi ptr [ %i.igk, %.lr.ph10539 ], [ %i.iga, %.lr.ph10539.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph10539 ], [ 0, %.lr.ph10539.preheader ]
  %i.igf = or disjoint i32 %.sroa.75134.010536, 1
  %i.igg = getelementptr inbounds nuw i8, ptr %.sroa.05132.010535, i64 8
  %i.igh = load double, ptr %.sroa.05132.010535, align 8, !noalias !10647, !noundef !5 ; 2 uses
  %i.igi = fcmp olt double %.sroa.05.0.i213.i90410537, %i.igh ; 2 uses
  %.sroa.05.1.i216.i = select i1 %i.igi, double %i.igh, double %.sroa.05.0.i213.i90410537 ; 2 uses
  %.sroa.04.1.i217.i = select i1 %i.igi, i32 %.sroa.75134.010536, i32 %.sroa.04.0.i214.i90510538
  %i.igj = add nuw nsw i32 %.sroa.75134.010536, 2 ; 2 uses
  %i.igk = getelementptr inbounds nuw i8, ptr %.sroa.05132.010535, i64 16 ; 2 uses
  %i.igl = load double, ptr %i.igg, align 8, !noalias !10647, !noundef !5 ; 2 uses
  %i.igm = fcmp olt double %.sroa.05.1.i216.i, %i.igl ; 2 uses
  %.sroa.05.1.i216.i.1 = select i1 %i.igm, double %i.igl, double %.sroa.05.1.i216.i ; 2 uses
  %.sroa.04.1.i217.i.1 = select i1 %i.igm, i32 %i.igf, i32 %.sroa.04.1.i217.i ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread8480.unr-lcssa, label %.lr.ph10539

.split10532:                                      ; preds = %bb.bmg, %bb.bmo
  %.sroa.05135.0 = phi ptr [ %.sroa.05135.1, %bb.bmo ], [ %i.icl, %bb.bmg ] ; 3 uses
  %.sroa.75137.0 = phi i64 [ %.sroa.75137.1, %bb.bmo ], [ 0, %bb.bmg ] ; 3 uses
  %i.ign = icmp eq ptr %.sroa.05135.0, %i.ifn
  br i1 %i.ign, label %bb.bmj, label %bb.bmi

bb.bmi:                                           ; preds = %.split10532
  %i.igo = getelementptr inbounds nuw i8, ptr %.sroa.05135.0, i64 4
  %i.igp = add i64 %.sroa.75137.0, 1
  br label %bb.bmj

bb.bmj:                                           ; preds = %bb.bmi, %.split10532
  %.sroa.05135.1 = phi ptr [ %i.ifn, %.split10532 ], [ %i.igo, %bb.bmi ]
  %.sroa.75137.1 = phi i64 [ %.sroa.75137.0, %.split10532 ], [ %i.igp, %bb.bmi ]
  %.sroa.2.0.i3669 = phi ptr [ null, %.split10532 ], [ %.sroa.05135.0, %bb.bmi ]
  %.sroa.0.0.i3670 = phi i64 [ undef, %.split10532 ], [ %.sroa.75137.0, %bb.bmi ]
  %i.igq = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3670, 0
  %i.igr = insertvalue { i64, ptr } %i.igq, ptr %.sroa.2.0.i3669, 1
  %.fr88.i198.i891 = freeze { i64, ptr } %i.igr   ; 2 uses
  %i.igs = extractvalue { i64, ptr } %.fr88.i198.i891, 1 ; 2 uses
  %.not87.i199.i892 = icmp eq ptr %i.igs, null
  br i1 %.not87.i199.i892, label %.loopexit9133, label %bb.bmk

bb.bmk:                                           ; preds = %bb.bmj
  %i.igt = extractvalue { i64, ptr } %.fr88.i198.i891, 0 ; 2 uses
  %i.igu = urem i64 %i.igt, %i.icb                ; 2 uses
  %i.igv = sub nuw i64 %i.igt, %i.igu
  %i.igw = mul i64 %i.igv, %i.ibu
  %i.igx = add i64 %i.igw, %i.igu                 ; 5 uses
  %i.igy = icmp ugt i64 %i.igx, %i.ifl
  br i1 %i.igy, label %.invoke16068, label %bb.bml, !prof !10

.split10534.us:                                   ; preds = %.split10532.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.blz unwind label %bb.blh, !noalias !10645

bb.bml:                                           ; preds = %bb.bmk
  %i.igz = sub nuw i64 %i.ifl, %i.igx             ; 2 uses
  %i.iha = getelementptr inbounds nuw [8 x i8], ptr %i.ifm, i64 %i.igx ; 2 uses
  %.not89.i200.i893 = icmp eq i64 %i.ifl, %i.igx
  br i1 %.not89.i200.i893, label %.invoke16066, label %bb.bmm

.invoke16068:                                     ; preds = %.lr.ph10543, %bb.bmk, %bb.blj, %bb.bmf
  %i.ihb = phi i64 [ %i.igx, %bb.bmk ], [ %i.ict, %bb.blj ], [ %i.ict, %bb.bmf ], [ %i.ifx, %.lr.ph10543 ]
  %i.ihc = phi i64 [ %i.ifl, %bb.bmk ], [ %i.icv, %bb.blj ], [ %i.icv, %bb.bmf ], [ %i.ify, %.lr.ph10543 ]
  %i.ihd = phi i64 [ %i.ifl, %bb.bmk ], [ %i.hoq, %bb.blj ], [ %i.hoq, %bb.bmf ], [ %i.ifl, %.lr.ph10543 ]
  %i.ihe = phi ptr [ @12, %bb.bmk ], [ @13, %bb.blj ], [ @13, %bb.bmf ], [ @8, %.lr.ph10543 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ihb, i64 noundef %i.ihc, i64 noundef %i.ihd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ihe) #22
          to label %.cont16069 unwind label %bb.blh, !noalias !10645

.cont16069:                                       ; preds = %.invoke16068
  unreachable

bb.bmm:                                           ; preds = %bb.bml
  %i.ihf = load double, ptr %i.iha, align 8, !alias.scope !10654, !noundef !5
  br label %bb.bmn

bb.bmn:                                           ; preds = %bb.bmm, %bb.bmp
  %.sroa.044.0.i203.i89610531 = phi i64 [ 0, %bb.bmm ], [ %i.ihm, %bb.bmp ] ; 3 uses
  %.sroa.021.0.i202.i89510530 = phi i64 [ 0, %bb.bmm ], [ %.sroa.021.1.i205.i, %bb.bmp ]
  %.sroa.022.0.i201.i89410529 = phi double [ %i.ihf, %bb.bmm ], [ %.sroa.022.1.i204.i, %bb.bmp ] ; 2 uses
  %i.ihg = mul i64 %.sroa.044.0.i203.i89610531, %i.icb ; 3 uses
  %i.ihh = icmp ult i64 %i.ihg, %i.igz
  br i1 %i.ihh, label %bb.bmp, label %.invoke16066

bb.bmo:                                           ; preds = %bb.bmp
  %i.ihi = trunc i64 %.sroa.021.1.i205.i to i32
  store i32 %i.ihi, ptr %i.igs, align 4, !noalias !10645
  br label %.split10532

.invoke16066:                                     ; preds = %bb.bml, %bb.bmn
  %i.ihj = phi i64 [ %i.ihg, %bb.bmn ], [ 0, %bb.bml ]
  %i.ihk = phi i64 [ %i.igz, %bb.bmn ], [ 0, %bb.bml ]
  %i.ihl = phi ptr [ @11, %bb.bmn ], [ @10, %bb.bml ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ihj, i64 noundef %i.ihk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ihl) #22
          to label %.cont16067 unwind label %bb.blh, !noalias !10645

.cont16067:                                       ; preds = %.invoke16066
  unreachable

bb.bmp:                                           ; preds = %bb.bmn
  %i.ihm = add nuw i64 %.sroa.044.0.i203.i89610531, 1 ; 2 uses
  %i.ihn = getelementptr inbounds nuw [8 x i8], ptr %i.iha, i64 %i.ihg
  %i.iho = load double, ptr %i.ihn, align 8, !alias.scope !10654, !noundef !5 ; 2 uses
  %i.ihp = fcmp olt double %.sroa.022.0.i201.i89410529, %i.iho ; 2 uses
  %.sroa.022.1.i204.i = select i1 %i.ihp, double %i.iho, double %.sroa.022.0.i201.i89410529
  %.sroa.021.1.i205.i = select i1 %i.ihp, i64 %.sroa.044.0.i203.i89610531, i64 %.sroa.021.0.i202.i89510530 ; 2 uses
  %exitcond12862.not = icmp eq i64 %i.ihm, %i.ibu
  br i1 %exitcond12862.not, label %bb.bmo, label %bb.bmn

bb.bmq:                                           ; preds = %bb.bhi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10658)
  %i.ihq = load i64, ptr %i.hoz, align 8, !alias.scope !10659, !noundef !5 ; 2 uses
  %i.ihr = load i64, ptr %1, align 8, !alias.scope !10660, !noundef !5 ; 7 uses
  %i.ihs = icmp ult i64 %i.ihr, %i.ihq
  br i1 %i.ihs, label %bb.bmr, label %bb.bms

bb.bmr:                                           ; preds = %bb.bmq
  %i.iht = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ihu = load ptr, ptr %i.iht, align 8, !alias.scope !10659, !nonnull !5, !noundef !5
  %i.ihv = getelementptr inbounds nuw [8 x i8], ptr %i.ihu, i64 %i.ihr
  %i.ihw = load i64, ptr %i.ihv, align 8, !noalias !10661, !noundef !5 ; 8 uses
  %i.ihx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ihy = load i64, ptr %i.ihx, align 8, !alias.scope !10659, !noundef !5 ; 2 uses
  %i.ihz = icmp ult i64 %i.ihr, %i.ihy
  br i1 %i.ihz, label %bb.bmt, label %bb.bmu

bb.bms:                                           ; preds = %bb.bmq
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ihr, i64 noundef %i.ihq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10661
  unreachable

bb.bmt:                                           ; preds = %bb.bmr
  %i.iia = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.iib = load ptr, ptr %i.iia, align 8, !alias.scope !10659, !nonnull !5, !noundef !5
  %i.iic = getelementptr inbounds nuw [8 x i8], ptr %i.iib, i64 %i.ihr
  %i.iid = load i64, ptr %i.iic, align 8, !noalias !10661, !noundef !5 ; 4 uses
  %i.iie = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10661
  %i.iif = icmp eq i64 %i.ihw, 0
  br i1 %i.iif, label %bb.bmw, label %bb.bmv

bb.bmu:                                           ; preds = %bb.bmr
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ihr, i64 noundef %i.ihy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !10661
  unreachable

bb.bmv:                                           ; preds = %bb.bmt
  %i.iig = udiv i64 %i.iie, %i.ihw                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jt), !noalias !10662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jn), !noalias !10662
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jn, i64 noundef %i.iig, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !10661
  %i.iih = load i64, ptr %i.jn, align 8, !range !8, !noalias !10662, !noundef !5
  %i.iii = trunc nuw i64 %i.iih to i1
  %i.iij = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.iik = load i64, ptr %i.iij, align 8, !range !12, !noalias !10662, !noundef !5 ; 8 uses
  %i.iil = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  br i1 %i.iii, label %bb.bmx, label %bb.bmy, !prof !10

bb.bmw:                                           ; preds = %bb.bmt
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !10661
  unreachable

bb.bmx:                                           ; preds = %bb.bmv
  %i.iim = load i64, ptr %i.iil, align 8, !noalias !10662
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.iik, i64 %i.iim) #22, !noalias !10661
  unreachable

bb.bmy:                                           ; preds = %bb.bmv
  %i.iin = load ptr, ptr %i.iil, align 8, !noalias !10662, !nonnull !5, !noundef !5 ; 5 uses
  %i.iio = icmp ule i64 %i.iig, %i.iik
  tail call void @llvm.assume(i1 %i.iio)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jn), !noalias !10662
  store i64 %i.iik, ptr %i.jt, align 16, !noalias !10662
  %i.iip = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %i.iin, ptr %i.iip, align 8, !noalias !10662
  %i.iiq = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i64 0, ptr %i.iiq, align 16, !noalias !10662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.js), !noalias !10662
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout18contiguous_offsets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.js, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.bnb unwind label %bb.bna, !noalias !10661

bb.bmz:                                           ; preds = %bb.bng, %bb.bna
  %.pn93.i131.i907 = phi { ptr, i32 } [ %i.iir, %bb.bna ], [ %.pn.i138.i920, %bb.bng ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jt) #20
          to label %common.resume unwind label %bb.bnx, !noalias !10663

bb.bna:                                           ; preds = %.invoke16074, %.invoke16072, %.split10553.us, %bb.bnn, %bb.bnd, %bb.bmy
  %i.iir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmz

bb.bnb:                                           ; preds = %bb.bmy
  %i.iis = load i64, ptr %i.js, align 8, !range !8, !noalias !10662, !noundef !5
  %i.iit = trunc nuw i64 %i.iis to i1
  br i1 %i.iit, label %bb.bnc, label %bb.bnd

bb.bnc:                                           ; preds = %bb.bnb
  %i.iiu = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.iiv = load i64, ptr %i.iiu, align 8, !noalias !10662, !noundef !5 ; 5 uses
  %i.iiw = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.iix = load i64, ptr %i.iiw, align 8, !noalias !10662, !noundef !5 ; 5 uses
  %i.iiy = icmp ult i64 %i.iix, %i.iiv
  br i1 %i.iiy, label %.invoke16074, label %bb.bny, !prof !10

bb.bnd:                                           ; preds = %bb.bnb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jr), !noalias !10662
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.i129.i729.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jq), !noalias !10662
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout6narrow(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.jq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, i64 noundef %i.ihr, i64 noundef 0, i64 noundef 1)
          to label %bb.bne unwind label %bb.bna, !noalias !10661

end_hunk_12
begin_hunk_13_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3684: ; preds = %bb.bnk, %.noexc3692
  %i.ikh = load i64, ptr %i.ijm, align 8, !alias.scope !10668, !noalias !10661, !noundef !5
  %i.iki = add i64 %i.ikh, -1
  store i64 %i.iki, ptr %i.ijm, align 8, !alias.scope !10668, !noalias !10661
  br label %bb.bnm

bb.bnk:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3688
  %i.ikj = load i64, ptr %i.ikb, align 8, !noalias !10667, !noundef !5
  %i.ikk = mul i64 %i.ikj, %i.ikd
  %i.ikl = sub i64 %.sroa.05.031.i.i3689, %i.ikk
  store i64 0, ptr %i.ika, align 8, !noalias !10667
  %i.ikm = icmp ult i64 %.sroa.918.0.copyload.i.i3681, %i.ijy
  br i1 %i.ikm, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3688, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3684

bb.bnl:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3688
  store i64 %i.ike, ptr %i.ika, align 8, !noalias !10667
  %i.ikn = load i64, ptr %i.ikb, align 8, !noalias !10667, !noundef !5
  %i.iko = load i64, ptr %i.ijm, align 8, !alias.scope !10668, !noalias !10661, !noundef !5
  %i.ikp = add i64 %i.iko, -1
  store i64 %i.ikp, ptr %i.ijm, align 8, !alias.scope !10668, !noalias !10661
  %i.ikq = add i64 %i.ikn, %.sroa.05.031.i.i3689
  br label %bb.bnm

.loopexit.split-lp9129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc3691, %bb.bnj, %.invoke16076, %bb.bnq
  %lpad.loopexit.split-lp19141 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.jo) #20
          to label %bb.bng unwind label %bb.bnx, !noalias !10661

bb.bnm:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3684, %bb.bnl
  %.sroa.6.0.i.i3685 = phi i64 [ %i.ikq, %bb.bnl ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3684 ]
  %.sroa.08.0.i.i3686 = phi i64 [ 1, %bb.bnl ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3684 ]
  store i64 %.sroa.08.0.i.i3686, ptr %i.jo, align 8, !alias.scope !10668, !noalias !10661
  store i64 %.sroa.6.0.i.i3685, ptr %i.ijc, align 8, !alias.scope !10668, !noalias !10661
  %i.ikr = load i64, ptr %.sroa.233.0..sroa_idx.i139.i921, align 8, !alias.scope !10665, !noalias !10661, !noundef !5 ; 4 uses
  %i.iks = add i64 %i.ikr, 1
  store i64 %i.iks, ptr %.sroa.233.0..sroa_idx.i139.i921, align 8, !alias.scope !10665, !noalias !10661
  %i.ikt = icmp ugt i64 %i.ijn, %i.hoq
  br i1 %i.ikt, label %bb.bnq, label %bb.bnp, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3693: ; preds = %bb.bnv, %bb.bni
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.jo)
          to label %bb.bnn unwind label %bb.bnh, !noalias !10661

bb.bnn:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jo), !noalias !10662
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.jr)
          to label %bb.bno unwind label %bb.bna, !noalias !10661

bb.bno:                                           ; preds = %bb.bnn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr), !noalias !10662
  br label %.loopexit9126

bb.bnp:                                           ; preds = %bb.bnm
  %i.iku = sub nuw nsw i64 %i.hoq, %i.ijn         ; 2 uses
  %i.ikv = getelementptr inbounds nuw [8 x i8], ptr %i.hoo, i64 %i.ijn ; 2 uses
  %.not84.i140.i922 = icmp eq i64 %i.hoq, %i.ijn
  br i1 %.not84.i140.i922, label %.invoke16076, label %bb.bnr

bb.bnq:                                           ; preds = %bb.bnm
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ijn, i64 noundef range(i64 0, 1152921504606846976) %i.hoq, i64 noundef range(i64 0, 1152921504606846976) %i.hoq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.bns unwind label %.loopexit.split-lp9129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10661

bb.bnr:                                           ; preds = %bb.bnp
  %i.ikw = load double, ptr %i.ikv, align 8, !alias.scope !10670, !noundef !5
  br label %bb.bnt

bb.bns:                                           ; preds = %.split10553.us, %bb.bnq
  unreachable

bb.bnt:                                           ; preds = %bb.bnr, %bb.bnw
  %.sroa.055.0.i143.i92510546 = phi i64 [ 0, %bb.bnr ], [ %i.ili, %bb.bnw ] ; 3 uses
  %.sroa.035.0.i142.i92410545 = phi double [ %i.ikw, %bb.bnr ], [ %.sroa.035.1.i145.i, %bb.bnw ] ; 2 uses
  %.sroa.034.0.i141.i92310544 = phi i64 [ 0, %bb.bnr ], [ %.sroa.034.1.i144.i, %bb.bnw ]
  %i.ikx = mul i64 %.sroa.055.0.i143.i92510546, %i.iid ; 3 uses
  %i.iky = icmp ult i64 %i.ikx, %i.iku
  br i1 %i.iky, label %bb.bnw, label %.invoke16076

bb.bnu:                                           ; preds = %bb.bnw
  %i.ikz = icmp ult i64 %i.ikr, %i.iik
  br i1 %i.ikz, label %bb.bnv, label %.invoke16076

bb.bnv:                                           ; preds = %bb.bnu
  %i.ila = trunc i64 %.sroa.034.1.i144.i to i32
  %i.ilb = getelementptr inbounds nuw [4 x i8], ptr %i.iin, i64 %i.ikr
  store i32 %i.ila, ptr %i.ilb, align 4, !noalias !10661
  %i.ilc = load i64, ptr %i.jo, align 8, !range !8, !alias.scope !10671, !noalias !10661, !noundef !5
  %i.ild = load i64, ptr %i.ijc, align 8, !alias.scope !10671, !noalias !10661
  %i.ile = trunc nuw i64 %i.ilc to i1
  br i1 %i.ile, label %bb.bnj, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3693

.invoke16076:                                     ; preds = %bb.bnu, %bb.bnp, %bb.bnt
  %i.ilf = phi i64 [ %i.ikx, %bb.bnt ], [ 0, %bb.bnp ], [ %i.ikr, %bb.bnu ]
  %i.ilg = phi i64 [ %i.iku, %bb.bnt ], [ 0, %bb.bnp ], [ %i.iik, %bb.bnu ]
  %i.ilh = phi ptr [ @6, %bb.bnt ], [ @4, %bb.bnp ], [ @5, %bb.bnu ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ilf, i64 noundef %i.ilg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ilh) #22
          to label %.cont16077 unwind label %.loopexit.split-lp9129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10661

.cont16077:                                       ; preds = %.invoke16076
  unreachable

bb.bnw:                                           ; preds = %bb.bnt
  %i.ili = add nuw i64 %.sroa.055.0.i143.i92510546, 1 ; 2 uses
  %i.ilj = getelementptr inbounds nuw [8 x i8], ptr %i.ikv, i64 %i.ikx
  %i.ilk = load double, ptr %i.ilj, align 8, !alias.scope !10670, !noundef !5 ; 2 uses
  %i.ill = fcmp ogt double %.sroa.035.0.i142.i92410545, %i.ilk ; 2 uses
  %.sroa.034.1.i144.i = select i1 %i.ill, i64 %.sroa.055.0.i143.i92510546, i64 %.sroa.034.0.i141.i92310544 ; 2 uses
  %.sroa.035.1.i145.i = select i1 %i.ill, double %i.ilk, double %.sroa.035.0.i142.i92410545
  %exitcond12863.not = icmp eq i64 %i.ili, %i.ihw
  br i1 %exitcond12863.not, label %bb.bnu, label %bb.bnt

bb.bnx:                                           ; preds = %.loopexit.split-lp9129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bng, %bb.bmz
  %i.ilm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10663
  unreachable

bb.bny:                                           ; preds = %bb.bnc
  %i.iln = sub nuw i64 %i.iix, %i.iiv             ; 7 uses
  %.not86.i146.i926 = icmp ugt i64 %i.iix, %i.hoq
  br i1 %.not86.i146.i926, label %.invoke16074, label %bb.bnz, !prof !10

bb.bnz:                                           ; preds = %bb.bny
  %i.ilo = getelementptr inbounds nuw [8 x i8], ptr %i.hoo, i64 %i.iiv ; 2 uses
  %.idx11168 = shl nuw nsw i64 %i.iik, 2
  %i.ilp = getelementptr inbounds nuw i8, ptr %i.iin, i64 %.idx11168 ; 3 uses
  switch i64 %i.iid, label %.split10551 [
    i64 1, label %bb.boa
    i64 0, label %.split10551.us
  ]

bb.boa:                                           ; preds = %bb.bnz
  %i.ilq = icmp eq i64 %i.iik, 0
  br i1 %i.ilq, label %.loopexit9126, label %.lr.ph10562.preheader

.lr.ph10562.preheader:                            ; preds = %bb.boa
  %i.ilr = add i64 %i.ihw, 2305843009213693951    ; 2 uses
  %i.ils = and i64 %i.ilr, 2305843009213693951    ; 2 uses
  %i.ilt = add nuw nsw i64 %i.ils, 1              ; 2 uses
  %i.ilu = icmp eq i64 %i.ils, 0
  %unroll_iter19453 = and i64 %i.ilt, 4611686018427387902
  %i.ilv = and i64 %i.ilr, 1
  %lcmp.mod19450.not.not = icmp eq i64 %i.ilv, 0
  %lcmp.mod19452 = trunc i64 %i.ilt to i1
  br label %.lr.ph10562

.split10551.us:                                   ; preds = %bb.bnz
  %i.ilw = icmp eq i64 %i.iik, 0
  br i1 %i.ilw, label %.loopexit9126, label %.split10553.us

.lr.ph10562:                                      ; preds = %.lr.ph10562.preheader, %.thread8506
  %.sroa.75094.010561 = phi i64 [ %i.ily, %.thread8506 ], [ 0, %.lr.ph10562.preheader ] ; 2 uses
  %.sroa.05092.010560 = phi ptr [ %i.ilx, %.thread8506 ], [ %i.iin, %.lr.ph10562.preheader ] ; 2 uses
  %i.ilx = getelementptr inbounds nuw i8, ptr %.sroa.05092.010560, i64 4 ; 2 uses
  %i.ily = add nuw nsw i64 %.sroa.75094.010561, 1
  %i.ilz = mul i64 %.sroa.75094.010561, %i.ihw    ; 4 uses
  %i.ima = add i64 %i.ilz, %i.ihw                 ; 3 uses
  %i.imb = icmp ult i64 %i.ima, %i.ilz
  %.not91.i160.i938 = icmp ugt i64 %i.ima, %i.iln
  %or.cond.i161.i939 = select i1 %i.imb, i1 true, i1 %.not91.i160.i938, !prof !7
  br i1 %or.cond.i161.i939, label %.invoke16074, label %.lr.ph10558.preheader, !prof !7

.lr.ph10558.preheader:                            ; preds = %.lr.ph10562
  %i.imc = getelementptr inbounds nuw [8 x i8], ptr %i.ilo, i64 %i.ilz ; 3 uses
  %i.imd = load double, ptr %i.imc, align 8, !alias.scope !10670, !noundef !5 ; 2 uses
  br i1 %i.ilu, label %.lr.ph10558.epil.preheader, label %.lr.ph10558

.thread8506.unr-lcssa:                            ; preds = %.lr.ph10558
  br i1 %lcmp.mod19450.not.not, label %.lr.ph10558.epil.preheader, label %.thread8506

.lr.ph10558.epil.preheader:                       ; preds = %.thread8506.unr-lcssa, %.lr.ph10558.preheader
  %.sroa.04.0.i165.i94310557.epil.init = phi i32 [ 0, %.lr.ph10558.preheader ], [ %.sroa.04.1.i168.i.1, %.thread8506.unr-lcssa ]
  %.sroa.05.0.i164.i94210556.epil.init = phi double [ %i.imd, %.lr.ph10558.preheader ], [ %.sroa.05.1.i167.i.1, %.thread8506.unr-lcssa ]
  %.sroa.75097.010555.epil.init = phi i32 [ 0, %.lr.ph10558.preheader ], [ %i.iml, %.thread8506.unr-lcssa ]
  %.sroa.05095.010554.epil.init = phi ptr [ %i.imc, %.lr.ph10558.preheader ], [ %i.imm, %.thread8506.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod19452)
  %i.ime = load double, ptr %.sroa.05095.010554.epil.init, align 8, !noalias !10663, !noundef !5
  %i.imf = fcmp ogt double %.sroa.05.0.i164.i94210556.epil.init, %i.ime
  %.sroa.04.1.i168.i.epil = select i1 %i.imf, i32 %.sroa.75097.010555.epil.init, i32 %.sroa.04.0.i165.i94310557.epil.init
  br label %.thread8506

.thread8506:                                      ; preds = %.thread8506.unr-lcssa, %.lr.ph10558.epil.preheader
  %.sroa.04.1.i168.i.lcssa = phi i32 [ %.sroa.04.1.i168.i.1, %.thread8506.unr-lcssa ], [ %.sroa.04.1.i168.i.epil, %.lr.ph10558.epil.preheader ]
  store i32 %.sroa.04.1.i168.i.lcssa, ptr %.sroa.05092.010560, align 4, !noalias !10663
  %i.img = icmp eq ptr %i.ilx, %i.ilp
  br i1 %i.img, label %.loopexit9126, label %.lr.ph10562

.lr.ph10558:                                      ; preds = %.lr.ph10558.preheader, %.lr.ph10558
  %.sroa.04.0.i165.i94310557 = phi i32 [ %.sroa.04.1.i168.i.1, %.lr.ph10558 ], [ 0, %.lr.ph10558.preheader ]
  %.sroa.05.0.i164.i94210556 = phi double [ %.sroa.05.1.i167.i.1, %.lr.ph10558 ], [ %i.imd, %.lr.ph10558.preheader ] ; 2 uses
  %.sroa.75097.010555 = phi i32 [ %i.iml, %.lr.ph10558 ], [ 0, %.lr.ph10558.preheader ] ; 3 uses
  %.sroa.05095.010554 = phi ptr [ %i.imm, %.lr.ph10558 ], [ %i.imc, %.lr.ph10558.preheader ] ; 3 uses
  %niter19454 = phi i64 [ %niter19454.next.1, %.lr.ph10558 ], [ 0, %.lr.ph10558.preheader ]
  %i.imh = or disjoint i32 %.sroa.75097.010555, 1
  %i.imi = getelementptr inbounds nuw i8, ptr %.sroa.05095.010554, i64 8
  %i.imj = load double, ptr %.sroa.05095.010554, align 8, !noalias !10663, !noundef !5 ; 2 uses
  %i.imk = fcmp ogt double %.sroa.05.0.i164.i94210556, %i.imj ; 2 uses
  %.sroa.05.1.i167.i = select i1 %i.imk, double %i.imj, double %.sroa.05.0.i164.i94210556 ; 2 uses
  %.sroa.04.1.i168.i = select i1 %i.imk, i32 %.sroa.75097.010555, i32 %.sroa.04.0.i165.i94310557
  %i.iml = add nuw nsw i32 %.sroa.75097.010555, 2 ; 2 uses
  %i.imm = getelementptr inbounds nuw i8, ptr %.sroa.05095.010554, i64 16 ; 2 uses
  %i.imn = load double, ptr %i.imi, align 8, !noalias !10663, !noundef !5 ; 2 uses
  %i.imo = fcmp ogt double %.sroa.05.1.i167.i, %i.imn ; 2 uses
  %.sroa.05.1.i167.i.1 = select i1 %i.imo, double %i.imn, double %.sroa.05.1.i167.i ; 2 uses
  %.sroa.04.1.i168.i.1 = select i1 %i.imo, i32 %i.imh, i32 %.sroa.04.1.i168.i ; 3 uses
  %niter19454.next.1 = add i64 %niter19454, 2     ; 2 uses
  %niter19454.ncmp.1 = icmp eq i64 %niter19454.next.1, %unroll_iter19453
  br i1 %niter19454.ncmp.1, label %.thread8506.unr-lcssa, label %.lr.ph10558

.split10551:                                      ; preds = %bb.bnz, %bb.boh
  %.sroa.05098.0 = phi ptr [ %.sroa.05098.1, %bb.boh ], [ %i.iin, %bb.bnz ] ; 3 uses
  %.sroa.75100.0 = phi i64 [ %.sroa.75100.1, %bb.boh ], [ 0, %bb.bnz ] ; 3 uses
  %i.imp = icmp eq ptr %.sroa.05098.0, %i.ilp
  br i1 %i.imp, label %bb.boc, label %bb.bob

bb.bob:                                           ; preds = %.split10551
  %i.imq = getelementptr inbounds nuw i8, ptr %.sroa.05098.0, i64 4
  %i.imr = add i64 %.sroa.75100.0, 1
  br label %bb.boc

bb.boc:                                           ; preds = %bb.bob, %.split10551
  %.sroa.05098.1 = phi ptr [ %i.ilp, %.split10551 ], [ %i.imq, %bb.bob ]
  %.sroa.75100.1 = phi i64 [ %.sroa.75100.0, %.split10551 ], [ %i.imr, %bb.bob ]
  %.sroa.2.0.i3700 = phi ptr [ null, %.split10551 ], [ %.sroa.05098.0, %bb.bob ]
  %.sroa.0.0.i3701 = phi i64 [ undef, %.split10551 ], [ %.sroa.75100.0, %bb.bob ]
  %i.ims = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3701, 0
  %i.imt = insertvalue { i64, ptr } %i.ims, ptr %.sroa.2.0.i3700, 1
  %.fr88.i149.i929 = freeze { i64, ptr } %i.imt   ; 2 uses
  %i.imu = extractvalue { i64, ptr } %.fr88.i149.i929, 1 ; 2 uses
  %.not87.i150.i930 = icmp eq ptr %i.imu, null
  br i1 %.not87.i150.i930, label %.loopexit9126, label %bb.bod

bb.bod:                                           ; preds = %bb.boc
  %i.imv = extractvalue { i64, ptr } %.fr88.i149.i929, 0 ; 2 uses
  %i.imw = urem i64 %i.imv, %i.iid                ; 2 uses
  %i.imx = sub nuw i64 %i.imv, %i.imw
  %i.imy = mul i64 %i.imx, %i.ihw
  %i.imz = add i64 %i.imy, %i.imw                 ; 5 uses
  %i.ina = icmp ugt i64 %i.imz, %i.iln
  br i1 %i.ina, label %.invoke16074, label %bb.boe, !prof !10

.split10553.us:                                   ; preds = %.split10551.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.bns unwind label %bb.bna, !noalias !10661

bb.boe:                                           ; preds = %bb.bod
  %i.inb = sub nuw i64 %i.iln, %i.imz             ; 2 uses
  %i.inc = getelementptr inbounds nuw [8 x i8], ptr %i.ilo, i64 %i.imz ; 2 uses
  %.not89.i151.i931 = icmp eq i64 %i.iln, %i.imz
  br i1 %.not89.i151.i931, label %.invoke16072, label %bb.bof

.invoke16074:                                     ; preds = %.lr.ph10562, %bb.bod, %bb.bnc, %bb.bny
  %i.ind = phi i64 [ %i.imz, %bb.bod ], [ %i.iiv, %bb.bnc ], [ %i.iiv, %bb.bny ], [ %i.ilz, %.lr.ph10562 ]
  %i.ine = phi i64 [ %i.iln, %bb.bod ], [ %i.iix, %bb.bnc ], [ %i.iix, %bb.bny ], [ %i.ima, %.lr.ph10562 ]
  %i.inf = phi i64 [ %i.iln, %bb.bod ], [ %i.hoq, %bb.bnc ], [ %i.hoq, %bb.bny ], [ %i.iln, %.lr.ph10562 ]
  %i.ing = phi ptr [ @12, %bb.bod ], [ @13, %bb.bnc ], [ @13, %bb.bny ], [ @8, %.lr.ph10562 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ind, i64 noundef %i.ine, i64 noundef %i.inf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ing) #22
          to label %.cont16075 unwind label %bb.bna, !noalias !10661

.cont16075:                                       ; preds = %.invoke16074
  unreachable

bb.bof:                                           ; preds = %bb.boe
  %i.inh = load double, ptr %i.inc, align 8, !alias.scope !10670, !noundef !5
  br label %bb.bog

bb.bog:                                           ; preds = %bb.bof, %bb.boi
  %.sroa.044.0.i154.i93410550 = phi i64 [ 0, %bb.bof ], [ %i.ino, %bb.boi ] ; 3 uses
  %.sroa.021.0.i153.i93310549 = phi i64 [ 0, %bb.bof ], [ %.sroa.021.1.i156.i, %bb.boi ]
  %.sroa.022.0.i152.i93210548 = phi double [ %i.inh, %bb.bof ], [ %.sroa.022.1.i155.i, %bb.boi ] ; 2 uses
  %i.ini = mul i64 %.sroa.044.0.i154.i93410550, %i.iid ; 3 uses
  %i.inj = icmp ult i64 %i.ini, %i.inb
  br i1 %i.inj, label %bb.boi, label %.invoke16072

bb.boh:                                           ; preds = %bb.boi
  %i.ink = trunc i64 %.sroa.021.1.i156.i to i32
  store i32 %i.ink, ptr %i.imu, align 4, !noalias !10661
  br label %.split10551

.invoke16072:                                     ; preds = %bb.boe, %bb.bog
  %i.inl = phi i64 [ %i.ini, %bb.bog ], [ 0, %bb.boe ]
  %i.inm = phi i64 [ %i.inb, %bb.bog ], [ 0, %bb.boe ]
  %i.inn = phi ptr [ @11, %bb.bog ], [ @10, %bb.boe ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.inl, i64 noundef %i.inm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.inn) #22
          to label %.cont16073 unwind label %bb.bna, !noalias !10661

.cont16073:                                       ; preds = %.invoke16072
  unreachable

bb.boi:                                           ; preds = %bb.bog
  %i.ino = add nuw i64 %.sroa.044.0.i154.i93410550, 1 ; 2 uses
  %i.inp = getelementptr inbounds nuw [8 x i8], ptr %i.inc, i64 %i.ini
  %i.inq = load double, ptr %i.inp, align 8, !alias.scope !10670, !noundef !5 ; 2 uses
  %i.inr = fcmp ogt double %.sroa.022.0.i152.i93210548, %i.inq ; 2 uses
  %.sroa.022.1.i155.i = select i1 %i.inr, double %i.inq, double %.sroa.022.0.i152.i93210548
  %.sroa.021.1.i156.i = select i1 %i.inr, i64 %.sroa.044.0.i154.i93410550, i64 %.sroa.021.0.i153.i93310549 ; 2 uses
  %exitcond12864.not = icmp eq i64 %i.ino, %i.ihw
  br i1 %exitcond12864.not, label %bb.boh, label %bb.bog

bb.boj:                                           ; preds = %bb.bll
  %.sroa.551.0..sroa_idx.i184.i873 = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %.sroa.74887.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74887.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i184.i873, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj), !noalias !10646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i178.i718.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i178.i718.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jk), !noalias !10646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl), !noalias !10646
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jm), !noalias !10645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm), !noalias !10646
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit.thread8536

.loopexit9133:                                    ; preds = %.thread8480, %bb.bmj, %.split10532.us, %bb.bmh, %bb.blv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl), !noalias !10646
  %i.ins = load <2 x i64>, ptr %i.jm, align 16, !noalias !10646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm), !noalias !10646
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit.thread

bb.bok:                                           ; preds = %bb.bne
  %.sroa.551.0..sroa_idx.i135.i911 = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %.sroa.74884.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74884.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i135.i911, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jq), !noalias !10662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i129.i729.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i129.i729.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr), !noalias !10662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.js), !noalias !10662
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jt), !noalias !10661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jt), !noalias !10662
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit.thread8536

.loopexit9126:                                    ; preds = %.thread8506, %bb.boc, %.split10551.us, %bb.boa, %bb.bno
  call void @llvm.lifetime.end.p0(ptr nonnull %i.js), !noalias !10662
  %i.int = load <2 x i64>, ptr %i.jt, align 16, !noalias !10662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jt), !noalias !10662
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit.thread

_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit: ; preds = %bb.bhf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk), !noalias !10672
  %i.inu = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr @42, ptr %i.inu, align 8, !noalias !10672
  %i.inv = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i64 6, ptr %i.inv, align 8, !noalias !10672
  store i64 -9223372036854775796, ptr %i.kk, align 8, !noalias !10672
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ki, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.kk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk), !noalias !10672
  %.sroa.04897.0.copyload = load i64, ptr %i.ki, align 8 ; 2 uses
  %.sroa.44898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.44898.0.copyload = load i64, ptr %.sroa.44898.0..sroa_idx, align 8 ; 2 uses
  %.sroa.54899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.inw = load <2 x i64>, ptr %.sroa.54899.0..sroa_idx, align 8 ; 3 uses
  %.sroa.54899.sroa.5.0..sroa.54899.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %.sroa.54899.sroa.5.0.copyload = load i64, ptr %.sroa.54899.sroa.5.0..sroa.54899.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not180 = icmp eq i64 %.sroa.04897.0.copyload, -1
  %i.inx = extractelement <2 x i64> %i.inw, i64 0
  %i.iny = extractelement <2 x i64> %i.inw, i64 1
  br i1 %.not180, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit.thread, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fdNcNtNtB6_10CpuStorage3F640EB8_.exit.thread8536

bb.bol:                                           ; preds = %bb.a
  %i.inz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ioa = load ptr, ptr %i.inz, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.iob = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ioc = load i64, ptr %i.iob, align 8, !noundef !5 ; 32 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10675)
  %i.iod = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3), !noalias !10676
  %i.ioe = icmp eq i64 %i.iod, 0
  br i1 %i.ioe, label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB6_10CpuStorage6F8E4M30EB8_.exit, label %bb.bom

bb.bom:                                           ; preds = %bb.bol
  %i.iof = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.iog = load i8, ptr %i.iof, align 1, !range !24, !alias.scope !10673, !noundef !5
  %i.ioh = trunc nuw i8 %i.iog to i1
  %i.ioi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ioj = load i8, ptr %i.ioi, align 8, !range !24, !alias.scope !10673, !noundef !5
  %i.iok = trunc nuw i8 %i.ioj to i1              ; 2 uses
  %i.iol = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br i1 %i.ioh, label %bb.boo, label %bb.bon

bb.bon:                                           ; preds = %bb.bom
  br i1 %i.iok, label %bb.bqr, label %bb.bop

bb.boo:                                           ; preds = %bb.bom
  br i1 %i.iok, label %bb.bux, label %bb.bsv

bb.bop:                                           ; preds = %bb.bon
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10679)
  %i.iom = load i64, ptr %i.iol, align 8, !alias.scope !10680, !noundef !5 ; 2 uses
  %i.ion = load i64, ptr %1, align 8, !alias.scope !10681, !noundef !5 ; 7 uses
  %i.ioo = icmp ult i64 %i.ion, %i.iom
  br i1 %i.ioo, label %bb.boq, label %bb.bor

bb.boq:                                           ; preds = %bb.bop
  %i.iop = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ioq = load ptr, ptr %i.iop, align 8, !alias.scope !10680, !nonnull !5, !noundef !5
  %i.ior = getelementptr inbounds nuw [8 x i8], ptr %i.ioq, i64 %i.ion
  %i.ios = load i64, ptr %i.ior, align 8, !noalias !10682, !noundef !5 ; 8 uses
end_hunk_13
begin_hunk_14_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

bb.btp:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3812
  %i.jdf = load i64, ptr %i.jcx, align 8, !noalias !10720, !noundef !5
  %i.jdg = mul i64 %i.jdf, %i.jcz
  %i.jdh = sub i64 %.sroa.05.031.i.i3813, %i.jdg
  store i64 0, ptr %i.jcw, align 8, !noalias !10720
  %i.jdi = icmp ult i64 %.sroa.918.0.copyload.i.i3805, %i.jcu
  br i1 %i.jdi, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3812, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3808

bb.btq:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3812
  store i64 %i.jda, ptr %i.jcw, align 8, !noalias !10720
  %i.jdj = load i64, ptr %i.jcx, align 8, !noalias !10720, !noundef !5
  %i.jdk = load i64, ptr %i.jci, align 8, !alias.scope !10721, !noalias !10714, !noundef !5
  %i.jdl = add i64 %i.jdk, -1
  store i64 %i.jdl, ptr %i.jci, align 8, !alias.scope !10721, !noalias !10714
  %i.jdm = add i64 %i.jdj, %.sroa.05.031.i.i3813
  br label %bb.btr

.loopexit.split-lp9164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc3815, %bb.bto, %.invoke16094, %bb.btv
  %lpad.loopexit.split-lp19336 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.mw) #20
          to label %bb.btl unwind label %bb.buf, !noalias !10714

bb.btr:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3808, %bb.btq
  %.sroa.6.0.i.i3809 = phi i64 [ %i.jdm, %bb.btq ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3808 ]
  %.sroa.08.0.i.i3810 = phi i64 [ 1, %bb.btq ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3808 ]
  store i64 %.sroa.08.0.i.i3810, ptr %i.mw, align 8, !alias.scope !10721, !noalias !10714
  store i64 %.sroa.6.0.i.i3809, ptr %i.jby, align 8, !alias.scope !10721, !noalias !10714
  %i.jdn = load i64, ptr %.sroa.233.0..sroa_idx.i188.i, align 8, !alias.scope !10718, !noalias !10714, !noundef !5 ; 4 uses
  %i.jdo = add i64 %i.jdn, 1
  store i64 %i.jdo, ptr %.sroa.233.0..sroa_idx.i188.i, align 8, !alias.scope !10718, !noalias !10714
  %i.jdp = icmp ugt i64 %i.jcj, %i.ioc
  br i1 %i.jdp, label %bb.btv, label %bb.btu, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3817: ; preds = %bb.bua, %bb.btn
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.mw)
          to label %bb.bts unwind label %bb.btm, !noalias !10714

bb.bts:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mw), !noalias !10715
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.mz)
          to label %bb.btt unwind label %bb.btf, !noalias !10714

bb.btt:                                           ; preds = %bb.bts
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mz), !noalias !10715
  br label %.loopexit9161

bb.btu:                                           ; preds = %bb.btr
  %i.jdq = sub nuw nsw i64 %i.ioc, %i.jcj         ; 2 uses
  %i.jdr = getelementptr inbounds nuw i8, ptr %i.ioa, i64 %i.jcj ; 2 uses
  %.not84.i189.i = icmp eq i64 %i.ioc, %i.jcj
  br i1 %.not84.i189.i, label %.invoke16094, label %bb.btw

bb.btv:                                           ; preds = %bb.btr
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.jcj, i64 noundef range(i64 0, -9223372036854775808) %i.ioc, i64 noundef range(i64 0, -9223372036854775808) %i.ioc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.btx unwind label %.loopexit.split-lp9164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10714

bb.btw:                                           ; preds = %bb.btu
  %i.jds = load i8, ptr %i.jdr, align 1, !alias.scope !10723, !noundef !5
  br label %bb.bty

bb.btx:                                           ; preds = %.split10458.us, %bb.btv
  unreachable

bb.bty:                                           ; preds = %bb.btw, %.thread8705
  %.sroa.055.0.i192.i10451 = phi i64 [ 0, %bb.btw ], [ %i.jdt, %.thread8705 ] ; 3 uses
  %.sroa.035.0.i191.i10450 = phi i8 [ %i.jds, %bb.btw ], [ %i.jel, %.thread8705 ] ; 12 uses
  %.sroa.034.0.i190.i10449 = phi i64 [ 0, %bb.btw ], [ %i.jek, %.thread8705 ] ; 7 uses
  %i.jdt = add nuw i64 %.sroa.055.0.i192.i10451, 1 ; 2 uses
  %i.jdu = mul i64 %.sroa.055.0.i192.i10451, %i.jaz ; 3 uses
  %i.jdv = icmp ult i64 %i.jdu, %i.jdq
  br i1 %i.jdv, label %bb.bub, label %.invoke16094

bb.btz:                                           ; preds = %.thread8705
  %i.jdw = icmp ult i64 %i.jdn, %i.jbg
  br i1 %i.jdw, label %bb.bua, label %.invoke16094

bb.bua:                                           ; preds = %bb.btz
  %i.jdx = trunc i64 %i.jek to i32
  %i.jdy = getelementptr inbounds nuw [4 x i8], ptr %i.jbj, i64 %i.jdn
  store i32 %i.jdx, ptr %i.jdy, align 4, !noalias !10714
  %i.jdz = load i64, ptr %i.mw, align 8, !range !8, !alias.scope !10724, !noalias !10714, !noundef !5
  %i.jea = load i64, ptr %i.jby, align 8, !alias.scope !10724, !noalias !10714
  %i.jeb = trunc nuw i64 %i.jdz to i1
  br i1 %i.jeb, label %bb.bto, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3817

bb.bub:                                           ; preds = %bb.bty
  %i.jec = getelementptr inbounds nuw i8, ptr %i.jdr, i64 %i.jdu
  %i.jed = load i8, ptr %i.jec, align 1, !alias.scope !10723, !noundef !5 ; 6 uses
  switch i8 %.sroa.035.0.i191.i10450, label %bb.buc [
    i8 127, label %.thread8705
    i8 -1, label %.thread8705
  ]

bb.buc:                                           ; preds = %bb.bub
  switch i8 %i.jed, label %bb.bud [
    i8 127, label %.thread8705
    i8 -1, label %.thread8705
  ]

bb.bud:                                           ; preds = %bb.buc
  %.not.i.i3819 = icmp sgt i8 %.sroa.035.0.i191.i10450, -1
  %.not1.i.i3820 = icmp sgt i8 %i.jed, -1         ; 2 uses
  br i1 %.not.i.i3819, label %.split8703, label %bb.bue

.split8703:                                       ; preds = %bb.bud
  %i.jee = icmp ult i8 %.sroa.035.0.i191.i10450, %i.jed
  %spec.select.i.i3822 = and i1 %.not1.i.i3820, %i.jee
  br i1 %spec.select.i.i3822, label %.split8708, label %.thread8705

bb.bue:                                           ; preds = %bb.bud
  br i1 %.not1.i.i3820, label %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit, label %.split8700

.split8700:                                       ; preds = %bb.bue
  %i.jef = icmp samesign ugt i8 %.sroa.035.0.i191.i10450, %i.jed
  br i1 %i.jef, label %.split8708, label %.thread8705

.invoke16094:                                     ; preds = %bb.btz, %bb.btu, %bb.bty
  %i.jeg = phi i64 [ %i.jdu, %bb.bty ], [ 0, %bb.btu ], [ %i.jdn, %bb.btz ]
  %i.jeh = phi i64 [ %i.jdq, %bb.bty ], [ 0, %bb.btu ], [ %i.jbg, %bb.btz ]
  %i.jei = phi ptr [ @6, %bb.bty ], [ @4, %bb.btu ], [ @5, %bb.btz ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jeg, i64 noundef %i.jeh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jei) #22
          to label %.cont16095 unwind label %.loopexit.split-lp9164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10714

.cont16095:                                       ; preds = %.invoke16094
  unreachable

_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit: ; preds = %bb.bue
  %.masked.i.i3821 = and i8 %.sroa.035.0.i191.i10450, 127
  %i.jej = or i8 %i.jed, %.masked.i.i3821
  %.not8865 = icmp eq i8 %i.jej, 0
  br i1 %.not8865, label %.thread8705, label %.split8708

.split8708:                                       ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit, %.split8700, %.split8703
  br label %.thread8705

.thread8705:                                      ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit, %.split8700, %.split8703, %bb.bub, %bb.bub, %bb.buc, %bb.buc, %.split8708
  %i.jek = phi i64 [ %.sroa.055.0.i192.i10451, %.split8708 ], [ %.sroa.034.0.i190.i10449, %bb.bub ], [ %.sroa.034.0.i190.i10449, %bb.bub ], [ %.sroa.034.0.i190.i10449, %bb.buc ], [ %.sroa.034.0.i190.i10449, %bb.buc ], [ %.sroa.034.0.i190.i10449, %.split8703 ], [ %.sroa.034.0.i190.i10449, %.split8700 ], [ %.sroa.034.0.i190.i10449, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit ] ; 2 uses
  %i.jel = phi i8 [ %i.jed, %.split8708 ], [ %.sroa.035.0.i191.i10450, %bb.bub ], [ %.sroa.035.0.i191.i10450, %bb.bub ], [ %.sroa.035.0.i191.i10450, %bb.buc ], [ %.sroa.035.0.i191.i10450, %bb.buc ], [ %.sroa.035.0.i191.i10450, %.split8703 ], [ %.sroa.035.0.i191.i10450, %.split8700 ], [ %.sroa.035.0.i191.i10450, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit ]
  %exitcond12853.not = icmp eq i64 %i.jdt, %i.jas
  br i1 %exitcond12853.not, label %bb.btz, label %bb.bty

bb.buf:                                           ; preds = %.loopexit.split-lp9164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.btl, %bb.bte
  %i.jem = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10716
  unreachable

bb.bug:                                           ; preds = %bb.bth
  %i.jen = sub nuw i64 %i.jbt, %i.jbr             ; 7 uses
  %.not86.i195.i = icmp ugt i64 %i.jbt, %i.ioc
  br i1 %.not86.i195.i, label %.invoke16092, label %bb.buh, !prof !10

bb.buh:                                           ; preds = %bb.bug
  %i.jeo = getelementptr inbounds nuw i8, ptr %i.ioa, i64 %i.jbr ; 2 uses
  %.idx11155 = shl nuw nsw i64 %i.jbg, 2
  %i.jep = getelementptr inbounds nuw i8, ptr %i.jbj, i64 %.idx11155 ; 3 uses
  switch i64 %i.jaz, label %.split10456 [
    i64 1, label %bb.bui
    i64 0, label %.split10456.us
  ]

bb.bui:                                           ; preds = %bb.buh
  %i.jeq = icmp eq i64 %i.jbg, 0
  br i1 %i.jeq, label %.loopexit9161, label %.lr.ph10467

.split10456.us:                                   ; preds = %bb.buh
  %i.jer = icmp eq i64 %i.jbg, 0
  br i1 %i.jer, label %.loopexit9161, label %.split10458.us

.lr.ph10467:                                      ; preds = %bb.bui, %.thread8716
  %.sroa.04205.010466 = phi ptr [ %i.jes, %.thread8716 ], [ %i.jbj, %bb.bui ] ; 2 uses
  %.sroa.74207.010465 = phi i64 [ %i.jet, %.thread8716 ], [ 0, %bb.bui ] ; 2 uses
  %i.jes = getelementptr inbounds nuw i8, ptr %.sroa.04205.010466, i64 4 ; 2 uses
  %i.jet = add nuw nsw i64 %.sroa.74207.010465, 1
  %i.jeu = mul i64 %.sroa.74207.010465, %i.jas    ; 4 uses
  %i.jev = add i64 %i.jeu, %i.jas                 ; 3 uses
  %i.jew = icmp ult i64 %i.jev, %i.jeu
  %.not91.i209.i = icmp ugt i64 %i.jev, %i.jen
  %or.cond.i210.i = select i1 %i.jew, i1 true, i1 %.not91.i209.i, !prof !7
  br i1 %or.cond.i210.i, label %.invoke16092, label %.lr.ph10463.preheader, !prof !7

.lr.ph10463.preheader:                            ; preds = %.lr.ph10467
  %i.jex = getelementptr inbounds nuw i8, ptr %i.jeo, i64 %i.jeu ; 3 uses
  %i.jey = getelementptr inbounds nuw i8, ptr %i.jex, i64 %i.jas
  %i.jez = load i8, ptr %i.jex, align 1, !noundef !5 ; 2 uses
  br label %.lr.ph10463

.lr.ph10463thread-pre-split:                      ; preds = %.thread8732
  %.pr14387 = load i8, ptr %i.jfb, align 1, !noalias !10716
  br label %.lr.ph10463

.lr.ph10463:                                      ; preds = %.lr.ph10463thread-pre-split, %.lr.ph10463.preheader
  %i.jfa = phi i8 [ %.pr14387, %.lr.ph10463thread-pre-split ], [ %i.jez, %.lr.ph10463.preheader ] ; 6 uses
  %.sroa.04.0.i214.i10462 = phi i32 [ %i.jfi, %.lr.ph10463thread-pre-split ], [ 0, %.lr.ph10463.preheader ] ; 7 uses
  %.sroa.05.0.i213.i10461 = phi i8 [ %i.jfh, %.lr.ph10463thread-pre-split ], [ %i.jez, %.lr.ph10463.preheader ] ; 12 uses
  %.sroa.04208.010460 = phi ptr [ %i.jfb, %.lr.ph10463thread-pre-split ], [ %i.jex, %.lr.ph10463.preheader ]
  %.sroa.74210.010459 = phi i32 [ %i.jfc, %.lr.ph10463thread-pre-split ], [ 0, %.lr.ph10463.preheader ] ; 2 uses
  %i.jfb = getelementptr inbounds nuw i8, ptr %.sroa.04208.010460, i64 1 ; 3 uses
  %i.jfc = add nuw nsw i32 %.sroa.74210.010459, 1
  switch i8 %.sroa.05.0.i213.i10461, label %bb.buj [
    i8 127, label %.thread8732
    i8 -1, label %.thread8732
  ]

bb.buj:                                           ; preds = %.lr.ph10463
  switch i8 %i.jfa, label %bb.buk [
    i8 127, label %.thread8732
    i8 -1, label %.thread8732
  ]

bb.buk:                                           ; preds = %bb.buj
  %.not.i.i3830 = icmp sgt i8 %.sroa.05.0.i213.i10461, -1
  %.not1.i.i3831 = icmp sgt i8 %i.jfa, -1         ; 2 uses
  br i1 %.not.i.i3830, label %.split8730, label %bb.bul

.split8730:                                       ; preds = %bb.buk
  %i.jfd = icmp ult i8 %.sroa.05.0.i213.i10461, %i.jfa
  %spec.select.i.i3833 = and i1 %.not1.i.i3831, %i.jfd
  br i1 %spec.select.i.i3833, label %.split8735, label %.thread8732

bb.bul:                                           ; preds = %bb.buk
  br i1 %.not1.i.i3831, label %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3834, label %.split8727

.split8727:                                       ; preds = %bb.bul
  %i.jfe = icmp samesign ugt i8 %.sroa.05.0.i213.i10461, %i.jfa
  br i1 %i.jfe, label %.split8735, label %.thread8732

.thread8716:                                      ; preds = %.thread8732
  store i32 %i.jfi, ptr %.sroa.04205.010466, align 4, !noalias !10716
  %i.jff = icmp eq ptr %i.jes, %i.jep
  br i1 %i.jff, label %.loopexit9161, label %.lr.ph10467

_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3834: ; preds = %bb.bul
  %.masked.i.i3832 = and i8 %.sroa.05.0.i213.i10461, 127
  %i.jfg = or i8 %i.jfa, %.masked.i.i3832
  %.not8867 = icmp eq i8 %i.jfg, 0
  br i1 %.not8867, label %.thread8732, label %.split8735

.split8735:                                       ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3834, %.split8727, %.split8730
  br label %.thread8732

.thread8732:                                      ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3834, %.split8727, %.split8730, %.lr.ph10463, %.lr.ph10463, %bb.buj, %bb.buj, %.split8735
  %i.jfh = phi i8 [ %i.jfa, %.split8735 ], [ %.sroa.05.0.i213.i10461, %.lr.ph10463 ], [ %.sroa.05.0.i213.i10461, %.lr.ph10463 ], [ %.sroa.05.0.i213.i10461, %bb.buj ], [ %.sroa.05.0.i213.i10461, %bb.buj ], [ %.sroa.05.0.i213.i10461, %.split8730 ], [ %.sroa.05.0.i213.i10461, %.split8727 ], [ %.sroa.05.0.i213.i10461, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3834 ]
  %i.jfi = phi i32 [ %.sroa.74210.010459, %.split8735 ], [ %.sroa.04.0.i214.i10462, %.lr.ph10463 ], [ %.sroa.04.0.i214.i10462, %.lr.ph10463 ], [ %.sroa.04.0.i214.i10462, %bb.buj ], [ %.sroa.04.0.i214.i10462, %bb.buj ], [ %.sroa.04.0.i214.i10462, %.split8730 ], [ %.sroa.04.0.i214.i10462, %.split8727 ], [ %.sroa.04.0.i214.i10462, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3834 ] ; 2 uses
  %i.jfj = icmp eq ptr %i.jfb, %i.jey
  br i1 %i.jfj, label %.thread8716, label %.lr.ph10463thread-pre-split

.split10456:                                      ; preds = %bb.buh, %bb.bus
  %.sroa.74213.0 = phi i64 [ %.sroa.74213.1, %bb.bus ], [ 0, %bb.buh ] ; 3 uses
  %.sroa.04211.0 = phi ptr [ %.sroa.04211.1, %bb.bus ], [ %i.jbj, %bb.buh ] ; 3 uses
  %i.jfk = icmp eq ptr %.sroa.04211.0, %i.jep
  br i1 %i.jfk, label %bb.bun, label %bb.bum

bb.bum:                                           ; preds = %.split10456
  %i.jfl = getelementptr inbounds nuw i8, ptr %.sroa.04211.0, i64 4
  %i.jfm = add i64 %.sroa.74213.0, 1
  br label %bb.bun

bb.bun:                                           ; preds = %bb.bum, %.split10456
  %.sroa.74213.1 = phi i64 [ %.sroa.74213.0, %.split10456 ], [ %i.jfm, %bb.bum ]
  %.sroa.04211.1 = phi ptr [ %i.jep, %.split10456 ], [ %i.jfl, %bb.bum ]
  %.sroa.2.0.i3835 = phi ptr [ null, %.split10456 ], [ %.sroa.04211.0, %bb.bum ]
  %.sroa.0.0.i3836 = phi i64 [ undef, %.split10456 ], [ %.sroa.74213.0, %bb.bum ]
  %i.jfn = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3836, 0
  %i.jfo = insertvalue { i64, ptr } %i.jfn, ptr %.sroa.2.0.i3835, 1
  %.fr88.i198.i = freeze { i64, ptr } %i.jfo      ; 2 uses
  %i.jfp = extractvalue { i64, ptr } %.fr88.i198.i, 1 ; 2 uses
  %.not87.i199.i = icmp eq ptr %i.jfp, null
  br i1 %.not87.i199.i, label %.loopexit9161, label %bb.buo

bb.buo:                                           ; preds = %bb.bun
  %i.jfq = extractvalue { i64, ptr } %.fr88.i198.i, 0 ; 2 uses
  %i.jfr = urem i64 %i.jfq, %i.jaz                ; 2 uses
  %i.jfs = sub nuw i64 %i.jfq, %i.jfr
  %i.jft = mul i64 %i.jfs, %i.jas
  %i.jfu = add i64 %i.jft, %i.jfr                 ; 5 uses
  %i.jfv = icmp ugt i64 %i.jfu, %i.jen
  br i1 %i.jfv, label %.invoke16092, label %bb.bup, !prof !10

.split10458.us:                                   ; preds = %.split10456.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.btx unwind label %bb.btf, !noalias !10714

bb.bup:                                           ; preds = %bb.buo
  %i.jfw = sub nuw i64 %i.jen, %i.jfu             ; 2 uses
  %i.jfx = getelementptr inbounds nuw i8, ptr %i.jeo, i64 %i.jfu ; 2 uses
  %.not89.i200.i = icmp eq i64 %i.jen, %i.jfu
  br i1 %.not89.i200.i, label %.invoke16090, label %bb.buq

.invoke16092:                                     ; preds = %.lr.ph10467, %bb.buo, %bb.bth, %bb.bug
  %i.jfy = phi i64 [ %i.jfu, %bb.buo ], [ %i.jbr, %bb.bth ], [ %i.jbr, %bb.bug ], [ %i.jeu, %.lr.ph10467 ]
  %i.jfz = phi i64 [ %i.jen, %bb.buo ], [ %i.jbt, %bb.bth ], [ %i.jbt, %bb.bug ], [ %i.jev, %.lr.ph10467 ]
  %i.jga = phi i64 [ %i.jen, %bb.buo ], [ %i.ioc, %bb.bth ], [ %i.ioc, %bb.bug ], [ %i.jen, %.lr.ph10467 ]
  %i.jgb = phi ptr [ @12, %bb.buo ], [ @13, %bb.bth ], [ @13, %bb.bug ], [ @8, %.lr.ph10467 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.jfy, i64 noundef %i.jfz, i64 noundef %i.jga, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jgb) #22
          to label %.cont16093 unwind label %bb.btf, !noalias !10714

.cont16093:                                       ; preds = %.invoke16092
  unreachable

bb.buq:                                           ; preds = %bb.bup
  %i.jgc = load i8, ptr %i.jfx, align 1, !alias.scope !10723, !noundef !5
  br label %bb.bur

bb.bur:                                           ; preds = %bb.buq, %.thread8747
  %.sroa.044.0.i203.i10455 = phi i64 [ 0, %bb.buq ], [ %i.jgd, %.thread8747 ] ; 3 uses
  %.sroa.021.0.i202.i10454 = phi i64 [ 0, %bb.buq ], [ %i.jgq, %.thread8747 ] ; 7 uses
  %.sroa.022.0.i201.i10453 = phi i8 [ %i.jgc, %bb.buq ], [ %i.jgp, %.thread8747 ] ; 12 uses
  %i.jgd = add nuw i64 %.sroa.044.0.i203.i10455, 1 ; 2 uses
  %i.jge = mul i64 %.sroa.044.0.i203.i10455, %i.jaz ; 3 uses
  %i.jgf = icmp ult i64 %i.jge, %i.jfw
  br i1 %i.jgf, label %bb.but, label %.invoke16090

bb.bus:                                           ; preds = %.thread8747
  %i.jgg = trunc i64 %i.jgq to i32
  store i32 %i.jgg, ptr %i.jfp, align 4, !noalias !10714
  br label %.split10456

bb.but:                                           ; preds = %bb.bur
  %i.jgh = getelementptr inbounds nuw i8, ptr %i.jfx, i64 %i.jge
  %i.jgi = load i8, ptr %i.jgh, align 1, !alias.scope !10723, !noundef !5 ; 6 uses
  switch i8 %.sroa.022.0.i201.i10453, label %bb.buu [
    i8 127, label %.thread8747
    i8 -1, label %.thread8747
  ]

bb.buu:                                           ; preds = %bb.but
  switch i8 %i.jgi, label %bb.buv [
    i8 127, label %.thread8747
    i8 -1, label %.thread8747
  ]

bb.buv:                                           ; preds = %bb.buu
  %.not.i.i3839 = icmp sgt i8 %.sroa.022.0.i201.i10453, -1
  %.not1.i.i3840 = icmp sgt i8 %i.jgi, -1         ; 2 uses
  br i1 %.not.i.i3839, label %.split8745, label %bb.buw

.split8745:                                       ; preds = %bb.buv
  %i.jgj = icmp ult i8 %.sroa.022.0.i201.i10453, %i.jgi
  %spec.select.i.i3842 = and i1 %.not1.i.i3840, %i.jgj
  br i1 %spec.select.i.i3842, label %.split8750, label %.thread8747

bb.buw:                                           ; preds = %bb.buv
  br i1 %.not1.i.i3840, label %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3843, label %.split8742

.split8742:                                       ; preds = %bb.buw
  %i.jgk = icmp samesign ugt i8 %.sroa.022.0.i201.i10453, %i.jgi
  br i1 %i.jgk, label %.split8750, label %.thread8747

.invoke16090:                                     ; preds = %bb.bup, %bb.bur
  %i.jgl = phi i64 [ %i.jge, %bb.bur ], [ 0, %bb.bup ]
  %i.jgm = phi i64 [ %i.jfw, %bb.bur ], [ 0, %bb.bup ]
  %i.jgn = phi ptr [ @11, %bb.bur ], [ @10, %bb.bup ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jgl, i64 noundef %i.jgm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jgn) #22
          to label %.cont16091 unwind label %bb.btf, !noalias !10714

.cont16091:                                       ; preds = %.invoke16090
  unreachable

_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3843: ; preds = %bb.buw
  %.masked.i.i3841 = and i8 %.sroa.022.0.i201.i10453, 127
  %i.jgo = or i8 %i.jgi, %.masked.i.i3841
  %.not8866 = icmp eq i8 %i.jgo, 0
  br i1 %.not8866, label %.thread8747, label %.split8750

.split8750:                                       ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3843, %.split8742, %.split8745
  br label %.thread8747

.thread8747:                                      ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3843, %.split8742, %.split8745, %bb.but, %bb.but, %bb.buu, %bb.buu, %.split8750
  %i.jgp = phi i8 [ %i.jgi, %.split8750 ], [ %.sroa.022.0.i201.i10453, %bb.but ], [ %.sroa.022.0.i201.i10453, %bb.but ], [ %.sroa.022.0.i201.i10453, %bb.buu ], [ %.sroa.022.0.i201.i10453, %bb.buu ], [ %.sroa.022.0.i201.i10453, %.split8745 ], [ %.sroa.022.0.i201.i10453, %.split8742 ], [ %.sroa.022.0.i201.i10453, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3843 ]
  %i.jgq = phi i64 [ %.sroa.044.0.i203.i10455, %.split8750 ], [ %.sroa.021.0.i202.i10454, %bb.but ], [ %.sroa.021.0.i202.i10454, %bb.but ], [ %.sroa.021.0.i202.i10454, %bb.buu ], [ %.sroa.021.0.i202.i10454, %bb.buu ], [ %.sroa.021.0.i202.i10454, %.split8745 ], [ %.sroa.021.0.i202.i10454, %.split8742 ], [ %.sroa.021.0.i202.i10454, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es4_0Ba_.exit3843 ] ; 2 uses
  %exitcond12854.not = icmp eq i64 %i.jgd, %i.jas
  br i1 %exitcond12854.not, label %bb.bus, label %bb.bur

bb.bux:                                           ; preds = %bb.boo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10727)
  %i.jgr = load i64, ptr %i.iol, align 8, !alias.scope !10728, !noundef !5 ; 2 uses
  %i.jgs = load i64, ptr %1, align 8, !alias.scope !10729, !noundef !5 ; 7 uses
  %i.jgt = icmp ult i64 %i.jgs, %i.jgr
  br i1 %i.jgt, label %bb.buy, label %bb.buz

bb.buy:                                           ; preds = %bb.bux
  %i.jgu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jgv = load ptr, ptr %i.jgu, align 8, !alias.scope !10728, !nonnull !5, !noundef !5
  %i.jgw = getelementptr inbounds nuw [8 x i8], ptr %i.jgv, i64 %i.jgs
  %i.jgx = load i64, ptr %i.jgw, align 8, !noalias !10730, !noundef !5 ; 8 uses
  %i.jgy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jgz = load i64, ptr %i.jgy, align 8, !alias.scope !10728, !noundef !5 ; 2 uses
  %i.jha = icmp ult i64 %i.jgs, %i.jgz
  br i1 %i.jha, label %bb.bva, label %bb.bvb

bb.buz:                                           ; preds = %bb.bux
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jgs, i64 noundef %i.jgr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !10730
  unreachable

bb.bva:                                           ; preds = %bb.buy
  %i.jhb = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_14
begin_hunk_15_@_RNvYNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend11ReduceIndexNtNtB4_5utils7Map1Any3mapB6_:bb.a

bb.bvr:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3860
  %i.jjk = load i64, ptr %i.jjc, align 8, !noalias !10736, !noundef !5
  %i.jjl = mul i64 %i.jjk, %i.jje
  %i.jjm = sub i64 %.sroa.05.031.i.i3861, %i.jjl
  store i64 0, ptr %i.jjb, align 8, !noalias !10736
  %i.jjn = icmp ult i64 %.sroa.918.0.copyload.i.i3853, %i.jiz
  br i1 %i.jjn, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3860, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3856

bb.bvs:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.i.i3860
  store i64 %i.jjf, ptr %i.jjb, align 8, !noalias !10736
  %i.jjo = load i64, ptr %i.jjc, align 8, !noalias !10736, !noundef !5
  %i.jjp = load i64, ptr %i.jin, align 8, !alias.scope !10737, !noalias !10730, !noundef !5
  %i.jjq = add i64 %i.jjp, -1
  store i64 %i.jjq, ptr %i.jin, align 8, !alias.scope !10737, !noalias !10730
  %i.jjr = add i64 %i.jjo, %.sroa.05.031.i.i3861
  br label %bb.bvt

.loopexit.split-lp9157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc3863, %bb.bvq, %.invoke16100, %bb.bvx
  %lpad.loopexit.split-lp19295 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.nd) #20
          to label %bb.bvn unwind label %bb.bwh, !noalias !10730

bb.bvt:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3856, %bb.bvs
  %.sroa.6.0.i.i3857 = phi i64 [ %i.jjr, %bb.bvs ], [ undef, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3856 ]
  %.sroa.08.0.i.i3858 = phi i64 [ 1, %bb.bvs ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutjEINtB13_4IterjEEB1v_EINtB5_7ZipImplBW_B1v_E9next_backCsltEA4u8Pgfu_11candle_core.exit.thread.i.i3856 ]
  store i64 %.sroa.08.0.i.i3858, ptr %i.nd, align 8, !alias.scope !10737, !noalias !10730
  store i64 %.sroa.6.0.i.i3857, ptr %i.jid, align 8, !alias.scope !10737, !noalias !10730
  %i.jjs = load i64, ptr %.sroa.233.0..sroa_idx.i139.i, align 8, !alias.scope !10734, !noalias !10730, !noundef !5 ; 4 uses
  %i.jjt = add i64 %i.jjs, 1
  store i64 %i.jjt, ptr %.sroa.233.0..sroa_idx.i139.i, align 8, !alias.scope !10734, !noalias !10730
  %i.jju = icmp ugt i64 %i.jio, %i.ioc
  br i1 %i.jju, label %bb.bvx, label %bb.bvw, !prof !10

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3865: ; preds = %bb.bwc, %bb.bvp
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.nd)
          to label %bb.bvu unwind label %bb.bvo, !noalias !10730

bb.bvu:                                           ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nd), !noalias !10731
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ng)
          to label %bb.bvv unwind label %bb.bvh, !noalias !10730

bb.bvv:                                           ; preds = %bb.bvu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ng), !noalias !10731
  br label %.loopexit9154

bb.bvw:                                           ; preds = %bb.bvt
  %i.jjv = sub nuw nsw i64 %i.ioc, %i.jio         ; 2 uses
  %i.jjw = getelementptr inbounds nuw i8, ptr %i.ioa, i64 %i.jio ; 2 uses
  %.not84.i140.i = icmp eq i64 %i.ioc, %i.jio
  br i1 %.not84.i140.i, label %.invoke16100, label %bb.bvy

bb.bvx:                                           ; preds = %bb.bvt
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.jio, i64 noundef range(i64 0, -9223372036854775808) %i.ioc, i64 noundef range(i64 0, -9223372036854775808) %i.ioc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %bb.bvz unwind label %.loopexit.split-lp9157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10730

bb.bvy:                                           ; preds = %bb.bvw
  %i.jjx = load i8, ptr %i.jjw, align 1, !alias.scope !10739, !noundef !5
  br label %bb.bwa

bb.bvz:                                           ; preds = %.split10477.us, %bb.bvx
  unreachable

bb.bwa:                                           ; preds = %bb.bvy, %.thread8776
  %.sroa.055.0.i143.i10470 = phi i64 [ 0, %bb.bvy ], [ %i.jjy, %.thread8776 ] ; 3 uses
  %.sroa.035.0.i142.i10469 = phi i8 [ %i.jjx, %bb.bvy ], [ %i.jkq, %.thread8776 ] ; 12 uses
  %.sroa.034.0.i141.i10468 = phi i64 [ 0, %bb.bvy ], [ %i.jkp, %.thread8776 ] ; 7 uses
  %i.jjy = add nuw i64 %.sroa.055.0.i143.i10470, 1 ; 2 uses
  %i.jjz = mul i64 %.sroa.055.0.i143.i10470, %i.jhe ; 3 uses
  %i.jka = icmp ult i64 %i.jjz, %i.jjv
  br i1 %i.jka, label %bb.bwd, label %.invoke16100

bb.bwb:                                           ; preds = %.thread8776
  %i.jkb = icmp ult i64 %i.jjs, %i.jhl
  br i1 %i.jkb, label %bb.bwc, label %.invoke16100

bb.bwc:                                           ; preds = %bb.bwb
  %i.jkc = trunc i64 %i.jkp to i32
  %i.jkd = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %i.jjs
  store i32 %i.jkc, ptr %i.jkd, align 4, !noalias !10730
  %i.jke = load i64, ptr %i.nd, align 8, !range !8, !alias.scope !10740, !noalias !10730, !noundef !5
  %i.jkf = load i64, ptr %i.jid, align 8, !alias.scope !10740, !noalias !10730
  %i.jkg = trunc nuw i64 %i.jke to i1
  br i1 %i.jkg, label %bb.bvq, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCsltEA4u8Pgfu_11candle_core13strided_index12StridedIndexENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit3865

bb.bwd:                                           ; preds = %bb.bwa
  %i.jkh = getelementptr inbounds nuw i8, ptr %i.jjw, i64 %i.jjz
  %i.jki = load i8, ptr %i.jkh, align 1, !alias.scope !10739, !noundef !5 ; 6 uses
  switch i8 %.sroa.035.0.i142.i10469, label %bb.bwe [
    i8 127, label %.thread8776
    i8 -1, label %.thread8776
  ]

bb.bwe:                                           ; preds = %bb.bwd
  switch i8 %i.jki, label %bb.bwf [
    i8 127, label %.thread8776
    i8 -1, label %.thread8776
  ]

bb.bwf:                                           ; preds = %bb.bwe
  %.not.i.i3867 = icmp sgt i8 %.sroa.035.0.i142.i10469, -1
  %.not1.i.i3868 = icmp slt i8 %i.jki, 0          ; 2 uses
  br i1 %.not.i.i3867, label %bb.bwg, label %.split8771

bb.bwg:                                           ; preds = %bb.bwf
  br i1 %.not1.i.i3868, label %.split8774, label %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit

.split8771:                                       ; preds = %bb.bwf
  %i.jkj = icmp ult i8 %.sroa.035.0.i142.i10469, %i.jki
  %spec.select.i.i3869 = and i1 %.not1.i.i3868, %i.jkj
  br i1 %spec.select.i.i3869, label %.split8779, label %.thread8776

.split8774:                                       ; preds = %bb.bwg
  %.masked.i.i3870 = and i8 %i.jki, 127
  %i.jkk = or i8 %.masked.i.i3870, %.sroa.035.0.i142.i10469
  %.not8868 = icmp eq i8 %i.jkk, 0
  br i1 %.not8868, label %.thread8776, label %.split8779

.invoke16100:                                     ; preds = %bb.bwb, %bb.bvw, %bb.bwa
  %i.jkl = phi i64 [ %i.jjz, %bb.bwa ], [ 0, %bb.bvw ], [ %i.jjs, %bb.bwb ]
  %i.jkm = phi i64 [ %i.jjv, %bb.bwa ], [ 0, %bb.bvw ], [ %i.jhl, %bb.bwb ]
  %i.jkn = phi ptr [ @6, %bb.bwa ], [ @4, %bb.bvw ], [ @5, %bb.bwb ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jkl, i64 noundef %i.jkm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jkn) #22
          to label %.cont16101 unwind label %.loopexit.split-lp9157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10730

.cont16101:                                       ; preds = %.invoke16100
  unreachable

_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit: ; preds = %bb.bwg
  %i.jko = icmp samesign ugt i8 %.sroa.035.0.i142.i10469, %i.jki
  br i1 %i.jko, label %.split8779, label %.thread8776

.split8779:                                       ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit, %.split8771, %.split8774
  br label %.thread8776

.thread8776:                                      ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit, %.split8771, %.split8774, %bb.bwd, %bb.bwd, %bb.bwe, %bb.bwe, %.split8779
  %i.jkp = phi i64 [ %.sroa.055.0.i143.i10470, %.split8779 ], [ %.sroa.034.0.i141.i10468, %bb.bwd ], [ %.sroa.034.0.i141.i10468, %bb.bwd ], [ %.sroa.034.0.i141.i10468, %bb.bwe ], [ %.sroa.034.0.i141.i10468, %bb.bwe ], [ %.sroa.034.0.i141.i10468, %.split8774 ], [ %.sroa.034.0.i141.i10468, %.split8771 ], [ %.sroa.034.0.i141.i10468, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit ] ; 2 uses
  %i.jkq = phi i8 [ %i.jki, %.split8779 ], [ %.sroa.035.0.i142.i10469, %bb.bwd ], [ %.sroa.035.0.i142.i10469, %bb.bwd ], [ %.sroa.035.0.i142.i10469, %bb.bwe ], [ %.sroa.035.0.i142.i10469, %bb.bwe ], [ %.sroa.035.0.i142.i10469, %.split8774 ], [ %.sroa.035.0.i142.i10469, %.split8771 ], [ %.sroa.035.0.i142.i10469, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit ]
  %exitcond12855.not = icmp eq i64 %i.jjy, %i.jgx
  br i1 %exitcond12855.not, label %bb.bwb, label %bb.bwa

bb.bwh:                                           ; preds = %.loopexit.split-lp9157.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bvn, %bb.bvg
  %i.jkr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !10732
  unreachable

bb.bwi:                                           ; preds = %bb.bvj
  %i.jks = sub nuw i64 %i.jhy, %i.jhw             ; 7 uses
  %.not86.i146.i = icmp ugt i64 %i.jhy, %i.ioc
  br i1 %.not86.i146.i, label %.invoke16098, label %bb.bwj, !prof !10

bb.bwj:                                           ; preds = %bb.bwi
  %i.jkt = getelementptr inbounds nuw i8, ptr %i.ioa, i64 %i.jhw ; 2 uses
  %.idx11157 = shl nuw nsw i64 %i.jhl, 2
  %i.jku = getelementptr inbounds nuw i8, ptr %i.jho, i64 %.idx11157 ; 3 uses
  switch i64 %i.jhe, label %.split10475 [
    i64 1, label %bb.bwk
    i64 0, label %.split10475.us
  ]

bb.bwk:                                           ; preds = %bb.bwj
  %i.jkv = icmp eq i64 %i.jhl, 0
  br i1 %i.jkv, label %.loopexit9154, label %.lr.ph10486

.split10475.us:                                   ; preds = %bb.bwj
  %i.jkw = icmp eq i64 %i.jhl, 0
  br i1 %i.jkw, label %.loopexit9154, label %.split10477.us

.lr.ph10486:                                      ; preds = %bb.bwk, %.thread8787
  %.sroa.04168.010485 = phi ptr [ %i.jkx, %.thread8787 ], [ %i.jho, %bb.bwk ] ; 2 uses
  %.sroa.74170.010484 = phi i64 [ %i.jky, %.thread8787 ], [ 0, %bb.bwk ] ; 2 uses
  %i.jkx = getelementptr inbounds nuw i8, ptr %.sroa.04168.010485, i64 4 ; 2 uses
  %i.jky = add nuw nsw i64 %.sroa.74170.010484, 1
  %i.jkz = mul i64 %.sroa.74170.010484, %i.jgx    ; 4 uses
  %i.jla = add i64 %i.jkz, %i.jgx                 ; 3 uses
  %i.jlb = icmp ult i64 %i.jla, %i.jkz
  %.not91.i160.i = icmp ugt i64 %i.jla, %i.jks
  %or.cond.i161.i = select i1 %i.jlb, i1 true, i1 %.not91.i160.i, !prof !7
  br i1 %or.cond.i161.i, label %.invoke16098, label %.lr.ph10482.preheader, !prof !7

.lr.ph10482.preheader:                            ; preds = %.lr.ph10486
  %i.jlc = getelementptr inbounds nuw i8, ptr %i.jkt, i64 %i.jkz ; 3 uses
  %i.jld = getelementptr inbounds nuw i8, ptr %i.jlc, i64 %i.jgx
  %i.jle = load i8, ptr %i.jlc, align 1, !noundef !5 ; 2 uses
  br label %.lr.ph10482

.lr.ph10482thread-pre-split:                      ; preds = %.thread8803
  %.pr14388 = load i8, ptr %i.jlg, align 1, !noalias !10732
  br label %.lr.ph10482

.lr.ph10482:                                      ; preds = %.lr.ph10482thread-pre-split, %.lr.ph10482.preheader
  %i.jlf = phi i8 [ %.pr14388, %.lr.ph10482thread-pre-split ], [ %i.jle, %.lr.ph10482.preheader ] ; 6 uses
  %.sroa.04.0.i165.i10481 = phi i32 [ %i.jln, %.lr.ph10482thread-pre-split ], [ 0, %.lr.ph10482.preheader ] ; 7 uses
  %.sroa.05.0.i164.i10480 = phi i8 [ %i.jlm, %.lr.ph10482thread-pre-split ], [ %i.jle, %.lr.ph10482.preheader ] ; 12 uses
  %.sroa.04171.010479 = phi ptr [ %i.jlg, %.lr.ph10482thread-pre-split ], [ %i.jlc, %.lr.ph10482.preheader ]
  %.sroa.74173.010478 = phi i32 [ %i.jlh, %.lr.ph10482thread-pre-split ], [ 0, %.lr.ph10482.preheader ] ; 2 uses
  %i.jlg = getelementptr inbounds nuw i8, ptr %.sroa.04171.010479, i64 1 ; 3 uses
  %i.jlh = add nuw nsw i32 %.sroa.74173.010478, 1
  switch i8 %.sroa.05.0.i164.i10480, label %bb.bwl [
    i8 127, label %.thread8803
    i8 -1, label %.thread8803
  ]

bb.bwl:                                           ; preds = %.lr.ph10482
  switch i8 %i.jlf, label %bb.bwm [
    i8 127, label %.thread8803
    i8 -1, label %.thread8803
  ]

bb.bwm:                                           ; preds = %bb.bwl
  %.not.i.i3878 = icmp sgt i8 %.sroa.05.0.i164.i10480, -1
  %.not1.i.i3879 = icmp slt i8 %i.jlf, 0          ; 2 uses
  br i1 %.not.i.i3878, label %bb.bwn, label %.split8798

bb.bwn:                                           ; preds = %bb.bwm
  br i1 %.not1.i.i3879, label %.split8801, label %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3882

.split8798:                                       ; preds = %bb.bwm
  %i.jli = icmp ult i8 %.sroa.05.0.i164.i10480, %i.jlf
  %spec.select.i.i3880 = and i1 %.not1.i.i3879, %i.jli
  br i1 %spec.select.i.i3880, label %.split8806, label %.thread8803

.split8801:                                       ; preds = %bb.bwn
  %.masked.i.i3881 = and i8 %i.jlf, 127
  %i.jlj = or i8 %.masked.i.i3881, %.sroa.05.0.i164.i10480
  %.not8870 = icmp eq i8 %i.jlj, 0
  br i1 %.not8870, label %.thread8803, label %.split8806

.thread8787:                                      ; preds = %.thread8803
  store i32 %i.jln, ptr %.sroa.04168.010485, align 4, !noalias !10732
  %i.jlk = icmp eq ptr %i.jkx, %i.jku
  br i1 %i.jlk, label %.loopexit9154, label %.lr.ph10486

_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3882: ; preds = %bb.bwn
  %i.jll = icmp samesign ugt i8 %.sroa.05.0.i164.i10480, %i.jlf
  br i1 %i.jll, label %.split8806, label %.thread8803

.split8806:                                       ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3882, %.split8798, %.split8801
  br label %.thread8803

.thread8803:                                      ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3882, %.split8798, %.split8801, %.lr.ph10482, %.lr.ph10482, %bb.bwl, %bb.bwl, %.split8806
  %i.jlm = phi i8 [ %i.jlf, %.split8806 ], [ %.sroa.05.0.i164.i10480, %.lr.ph10482 ], [ %.sroa.05.0.i164.i10480, %.lr.ph10482 ], [ %.sroa.05.0.i164.i10480, %bb.bwl ], [ %.sroa.05.0.i164.i10480, %bb.bwl ], [ %.sroa.05.0.i164.i10480, %.split8801 ], [ %.sroa.05.0.i164.i10480, %.split8798 ], [ %.sroa.05.0.i164.i10480, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3882 ]
  %i.jln = phi i32 [ %.sroa.74173.010478, %.split8806 ], [ %.sroa.04.0.i165.i10481, %.lr.ph10482 ], [ %.sroa.04.0.i165.i10481, %.lr.ph10482 ], [ %.sroa.04.0.i165.i10481, %bb.bwl ], [ %.sroa.04.0.i165.i10481, %bb.bwl ], [ %.sroa.04.0.i165.i10481, %.split8801 ], [ %.sroa.04.0.i165.i10481, %.split8798 ], [ %.sroa.04.0.i165.i10481, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3882 ] ; 2 uses
  %i.jlo = icmp eq ptr %i.jlg, %i.jld
  br i1 %i.jlo, label %.thread8787, label %.lr.ph10482thread-pre-split

.split10475:                                      ; preds = %bb.bwj, %bb.bwu
  %.sroa.74176.0 = phi i64 [ %.sroa.74176.1, %bb.bwu ], [ 0, %bb.bwj ] ; 3 uses
  %.sroa.04174.0 = phi ptr [ %.sroa.04174.1, %bb.bwu ], [ %i.jho, %bb.bwj ] ; 3 uses
  %i.jlp = icmp eq ptr %.sroa.04174.0, %i.jku
  br i1 %i.jlp, label %bb.bwp, label %bb.bwo

bb.bwo:                                           ; preds = %.split10475
  %i.jlq = getelementptr inbounds nuw i8, ptr %.sroa.04174.0, i64 4
  %i.jlr = add i64 %.sroa.74176.0, 1
  br label %bb.bwp

bb.bwp:                                           ; preds = %bb.bwo, %.split10475
  %.sroa.74176.1 = phi i64 [ %.sroa.74176.0, %.split10475 ], [ %i.jlr, %bb.bwo ]
  %.sroa.04174.1 = phi ptr [ %i.jku, %.split10475 ], [ %i.jlq, %bb.bwo ]
  %.sroa.2.0.i3883 = phi ptr [ null, %.split10475 ], [ %.sroa.04174.0, %bb.bwo ]
  %.sroa.0.0.i3884 = phi i64 [ undef, %.split10475 ], [ %.sroa.74176.0, %bb.bwo ]
  %i.jls = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3884, 0
  %i.jlt = insertvalue { i64, ptr } %i.jls, ptr %.sroa.2.0.i3883, 1
  %.fr88.i149.i = freeze { i64, ptr } %i.jlt      ; 2 uses
  %i.jlu = extractvalue { i64, ptr } %.fr88.i149.i, 1 ; 2 uses
  %.not87.i150.i = icmp eq ptr %i.jlu, null
  br i1 %.not87.i150.i, label %.loopexit9154, label %bb.bwq

bb.bwq:                                           ; preds = %bb.bwp
  %i.jlv = extractvalue { i64, ptr } %.fr88.i149.i, 0 ; 2 uses
  %i.jlw = urem i64 %i.jlv, %i.jhe                ; 2 uses
  %i.jlx = sub nuw i64 %i.jlv, %i.jlw
  %i.jly = mul i64 %i.jlx, %i.jgx
  %i.jlz = add i64 %i.jly, %i.jlw                 ; 5 uses
  %i.jma = icmp ugt i64 %i.jlz, %i.jks
  br i1 %i.jma, label %.invoke16098, label %bb.bwr, !prof !10

.split10477.us:                                   ; preds = %.split10475.us
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.bvz unwind label %bb.bvh, !noalias !10730

bb.bwr:                                           ; preds = %bb.bwq
  %i.jmb = sub nuw i64 %i.jks, %i.jlz             ; 2 uses
  %i.jmc = getelementptr inbounds nuw i8, ptr %i.jkt, i64 %i.jlz ; 2 uses
  %.not89.i151.i = icmp eq i64 %i.jks, %i.jlz
  br i1 %.not89.i151.i, label %.invoke16096, label %bb.bws

.invoke16098:                                     ; preds = %.lr.ph10486, %bb.bwq, %bb.bvj, %bb.bwi
  %i.jmd = phi i64 [ %i.jlz, %bb.bwq ], [ %i.jhw, %bb.bvj ], [ %i.jhw, %bb.bwi ], [ %i.jkz, %.lr.ph10486 ]
  %i.jme = phi i64 [ %i.jks, %bb.bwq ], [ %i.jhy, %bb.bvj ], [ %i.jhy, %bb.bwi ], [ %i.jla, %.lr.ph10486 ]
  %i.jmf = phi i64 [ %i.jks, %bb.bwq ], [ %i.ioc, %bb.bvj ], [ %i.ioc, %bb.bwi ], [ %i.jks, %.lr.ph10486 ]
  %i.jmg = phi ptr [ @12, %bb.bwq ], [ @13, %bb.bvj ], [ @13, %bb.bwi ], [ @8, %.lr.ph10486 ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.jmd, i64 noundef %i.jme, i64 noundef %i.jmf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jmg) #22
          to label %.cont16099 unwind label %bb.bvh, !noalias !10730

.cont16099:                                       ; preds = %.invoke16098
  unreachable

bb.bws:                                           ; preds = %bb.bwr
  %i.jmh = load i8, ptr %i.jmc, align 1, !alias.scope !10739, !noundef !5
  br label %bb.bwt

bb.bwt:                                           ; preds = %bb.bws, %.thread8818
  %.sroa.044.0.i154.i10474 = phi i64 [ 0, %bb.bws ], [ %i.jmi, %.thread8818 ] ; 3 uses
  %.sroa.021.0.i153.i10473 = phi i64 [ 0, %bb.bws ], [ %i.jmv, %.thread8818 ] ; 7 uses
  %.sroa.022.0.i152.i10472 = phi i8 [ %i.jmh, %bb.bws ], [ %i.jmu, %.thread8818 ] ; 12 uses
  %i.jmi = add nuw i64 %.sroa.044.0.i154.i10474, 1 ; 2 uses
  %i.jmj = mul i64 %.sroa.044.0.i154.i10474, %i.jhe ; 3 uses
  %i.jmk = icmp ult i64 %i.jmj, %i.jmb
  br i1 %i.jmk, label %bb.bwv, label %.invoke16096

bb.bwu:                                           ; preds = %.thread8818
  %i.jml = trunc i64 %i.jmv to i32
  store i32 %i.jml, ptr %i.jlu, align 4, !noalias !10730
  br label %.split10475

bb.bwv:                                           ; preds = %bb.bwt
  %i.jmm = getelementptr inbounds nuw i8, ptr %i.jmc, i64 %i.jmj
  %i.jmn = load i8, ptr %i.jmm, align 1, !alias.scope !10739, !noundef !5 ; 6 uses
  switch i8 %.sroa.022.0.i152.i10472, label %bb.bww [
    i8 127, label %.thread8818
    i8 -1, label %.thread8818
  ]

bb.bww:                                           ; preds = %bb.bwv
  switch i8 %i.jmn, label %bb.bwx [
    i8 127, label %.thread8818
    i8 -1, label %.thread8818
  ]

bb.bwx:                                           ; preds = %bb.bww
  %.not.i.i3887 = icmp sgt i8 %.sroa.022.0.i152.i10472, -1
  %.not1.i.i3888 = icmp slt i8 %i.jmn, 0          ; 2 uses
  br i1 %.not.i.i3887, label %bb.bwy, label %.split8813

bb.bwy:                                           ; preds = %bb.bwx
  br i1 %.not1.i.i3888, label %.split8816, label %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3891

.split8813:                                       ; preds = %bb.bwx
  %i.jmo = icmp ult i8 %.sroa.022.0.i152.i10472, %i.jmn
  %spec.select.i.i3889 = and i1 %.not1.i.i3888, %i.jmo
  br i1 %spec.select.i.i3889, label %.split8821, label %.thread8818

.split8816:                                       ; preds = %bb.bwy
  %.masked.i.i3890 = and i8 %i.jmn, 127
  %i.jmp = or i8 %.masked.i.i3890, %.sroa.022.0.i152.i10472
  %.not8869 = icmp eq i8 %i.jmp, 0
  br i1 %.not8869, label %.thread8818, label %.split8821

.invoke16096:                                     ; preds = %bb.bwr, %bb.bwt
  %i.jmq = phi i64 [ %i.jmj, %bb.bwt ], [ 0, %bb.bwr ]
  %i.jmr = phi i64 [ %i.jmb, %bb.bwt ], [ 0, %bb.bwr ]
  %i.jms = phi ptr [ @11, %bb.bwt ], [ @10, %bb.bwr ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jmq, i64 noundef %i.jmr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jms) #22
          to label %.cont16097 unwind label %bb.bvh, !noalias !10730

.cont16097:                                       ; preds = %.invoke16096
  unreachable

_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3891: ; preds = %bb.bwy
  %i.jmt = icmp samesign ugt i8 %.sroa.022.0.i152.i10472, %i.jmn
  br i1 %i.jmt, label %.split8821, label %.thread8818

.split8821:                                       ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3891, %.split8813, %.split8816
  br label %.thread8818

.thread8818:                                      ; preds = %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3891, %.split8813, %.split8816, %bb.bwv, %bb.bwv, %bb.bww, %bb.bww, %.split8821
  %i.jmu = phi i8 [ %i.jmn, %.split8821 ], [ %.sroa.022.0.i152.i10472, %bb.bwv ], [ %.sroa.022.0.i152.i10472, %bb.bwv ], [ %.sroa.022.0.i152.i10472, %bb.bww ], [ %.sroa.022.0.i152.i10472, %bb.bww ], [ %.sroa.022.0.i152.i10472, %.split8816 ], [ %.sroa.022.0.i152.i10472, %.split8813 ], [ %.sroa.022.0.i152.i10472, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3891 ]
  %i.jmv = phi i64 [ %.sroa.044.0.i154.i10474, %.split8821 ], [ %.sroa.021.0.i153.i10473, %bb.bwv ], [ %.sroa.021.0.i153.i10473, %bb.bwv ], [ %.sroa.021.0.i153.i10473, %bb.bww ], [ %.sroa.021.0.i153.i10473, %bb.bww ], [ %.sroa.021.0.i153.i10473, %.split8816 ], [ %.sroa.021.0.i153.i10473, %.split8813 ], [ %.sroa.021.0.i153.i10473, %_RNCINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB8_11ReduceIndexNtNtB8_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB8_10CpuStorage6F8E4M30Es2_0Ba_.exit3891 ] ; 2 uses
  %exitcond12856.not = icmp eq i64 %i.jmi, %i.jgx
  br i1 %exitcond12856.not, label %bb.bwu, label %bb.bwt

bb.bwz:                                           ; preds = %bb.btj
  %.sroa.551.0..sroa_idx.i184.i = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %.sroa.73967.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nx, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.73967.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i184.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !noalias !10715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ny, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i178.i.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627.i178.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mz), !noalias !10715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.na), !noalias !10715
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nb), !noalias !10714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !noalias !10715
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB6_10CpuStorage6F8E4M30EB8_.exit.thread8847

.loopexit9161:                                    ; preds = %.thread8716, %bb.bun, %.split10456.us, %bb.bui, %bb.btt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.na), !noalias !10715
  %i.jmw = load <2 x i64>, ptr %i.nb, align 16, !noalias !10715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nb), !noalias !10715
  br label %_RINvXs1_NtCsltEA4u8Pgfu_11candle_core11cpu_backendNtB6_11ReduceIndexNtNtB6_5utils7Map1Any1fNtCshigRrDowciq_6float86F8E4M3NcNtNtB6_10CpuStorage6F8E4M30EB8_.exit.thread

bb.bxa:                                           ; preds = %bb.bvl
  %.sroa.551.0..sroa_idx.i135.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 64
  %.sroa.73964.sroa.9.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nx, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.73964.sroa.9.sroa.5.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.551.0..sroa_idx.i135.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nf), !noalias !10731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ny, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.i129.i.sroa.10, i64 24, i1 false)
end_hunk_15
