Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512vnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.bzm = getelementptr inbounds nuw i8, ptr %.1720671969.i, i64 8 ; 2 uses
  %niter3466.next.1 = add i32 %niter3466, 2       ; 2 uses
  %niter3466.ncmp.1.not = icmp eq i32 %niter3466.next.1, %unroll_iter3465
  br i1 %niter3466.ncmp.1.not, label %.unr-lcssa3456, label %.lr.ph1971.i, !llvm.loop !448

.unr-lcssa3456:                                   ; preds = %.lr.ph1971.i
  br i1 %lcmp.mod3461.not.not, label %.lr.ph1971.i.epil.preheader, label %bb.as

.lr.ph1971.i.epil.preheader:                      ; preds = %.unr-lcssa3456, %.lr.ph1971.i.preheader
  %.1720671969.i.epil.init = phi ptr [ %.1620661994.i, %.lr.ph1971.i.preheader ], [ %i.bzm, %.unr-lcssa3456 ]
  %.021101968.i.epil.init = phi ptr [ %.42001.i, %.lr.ph1971.i.preheader ], [ %i.bzl, %.unr-lcssa3456 ]
  %.epil.init3460 = phi <4 x i32> [ %i.byj, %.lr.ph1971.i.preheader ], [ %i.bzk, %.unr-lcssa3456 ]
  tail call void @llvm.assume(i1 %lcmp.mod3464)
  %i.bzn = load <16 x i8>, ptr %.021101968.i.epil.init, align 1, !tbaa !17
  %i.bzo = load float, ptr %.1720671969.i.epil.init, align 1, !tbaa !17
  %i.bzp = insertelement <4 x float> poison, float %i.bzo, i64 0
  %i.bzq = sext <16 x i8> %i.bzn to <16 x i16>
  %i.bzr = bitcast <4 x float> %i.bzp to <16 x i8>
  %i.bzs = shufflevector <16 x i8> %i.bzr, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bzt = zext <16 x i8> %i.bzs to <16 x i16>
  %i.bzu = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bzq, <16 x i16> %i.bzt) ; 2 uses
  %i.bzv = shufflevector <8 x i32> %i.bzu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bzw = shufflevector <8 x i32> %i.bzu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bzx = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bzv, <4 x i32> %i.bzw)
  %i.bzy = add <4 x i32> %i.bzx, %.epil.init3460
  br label %bb.as

bb.as:                                            ; preds = %.unr-lcssa3456, %.lr.ph1971.i.epil.preheader
  %.lcssa3155 = phi <4 x i32> [ %i.bzk, %.unr-lcssa3456 ], [ %i.bzy, %.lr.ph1971.i.epil.preheader ]
  %i.bzz = getelementptr i8, ptr %.1620661994.i, i64 %i.afh
  %scevgep2956.i = getelementptr i8, ptr %i.bzz, i64 4
  %i.caa = load <4 x i32>, ptr %indvars.iv2952.i, align 1, !tbaa !17
  %i.cab = sub <4 x i32> %.lcssa3155, %i.caa
  br label %._crit_edge1972.i

._crit_edge1972.i:                                ; preds = %bb.as, %bb.ar
  %.172067.lcssa3275.i = phi ptr [ %scevgep2956.i, %bb.as ], [ %.1620661994.i, %bb.ar ] ; 2 uses
  %.02114.lcssa3272.i = phi i32 [ %i.aez, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.cac = phi <4 x i32> [ %i.cab, %bb.as ], [ %i.byj, %bb.ar ] ; 2 uses
  %.12111.i = phi ptr [ %i.buz, %bb.as ], [ %.42001.i, %bb.ar ] ; 2 uses
  %i.cad = or disjoint i32 %.02114.lcssa3272.i, 1
  %i.cae = icmp slt i32 %i.cad, %8
  br i1 %i.cae, label %.lr.ph1981.i, label %.preheader1072.i

.preheader1072.i:                                 ; preds = %.lr.ph1981.i, %._crit_edge1972.i
  %.lcssa1173.i = phi <4 x i32> [ %i.cac, %._crit_edge1972.i ], [ %i.cbe, %.lr.ph1981.i ] ; 3 uses
  %.12115.lcssa.i = phi i32 [ %.02114.lcssa3272.i, %._crit_edge1972.i ], [ %i.cbh, %.lr.ph1981.i ] ; 5 uses
  %.22112.lcssa.i = phi ptr [ %.12111.i, %._crit_edge1972.i ], [ %i.cbf, %.lr.ph1981.i ] ; 3 uses
  %.182068.lcssa.i = phi ptr [ %.172067.lcssa3275.i, %._crit_edge1972.i ], [ %i.cbg, %.lr.ph1981.i ] ; 4 uses
  %i.caf = icmp slt i32 %.12115.lcssa.i, %8
  br i1 %i.caf, label %.lr.ph1989.i.preheader, label %._crit_edge1990.i

.lr.ph1989.i.preheader:                           ; preds = %.preheader1072.i
  %i.cag = sub i32 %8, %.12115.lcssa.i
  %.neg3550.a = add i32 %.12115.lcssa.i, 1
  %xtraiter3467 = and i32 %i.cag, 1
  %lcmp.mod3468.not = icmp eq i32 %xtraiter3467, 0
  br i1 %lcmp.mod3468.not, label %.lr.ph1989.i.prol.loopexit, label %.lr.ph1989.i.prol

.lr.ph1989.i.prol:                                ; preds = %.lr.ph1989.i.preheader
  %i.cah = load <8 x i8>, ptr %.22112.lcssa.i, align 1, !tbaa !17
  %i.cai = load i8, ptr %.182068.lcssa.i, align 1, !tbaa !17
  %i.caj = sext i8 %i.cai to i16
  %i.cak = insertelement <8 x i16> poison, i16 %i.caj, i64 0
  %i.cal = shufflevector <8 x i16> %i.cak, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cam = sext <8 x i8> %i.cah to <8 x i16>      ; 2 uses
  %i.can = mul <8 x i16> %i.cal, %i.cam
  %i.cao = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cam, <8 x i16> %i.cal)
  %i.cap = shufflevector <8 x i16> %i.can, <8 x i16> %i.cao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.caq = bitcast <8 x i16> %i.cap to <4 x i32>
  %i.car = add <4 x i32> %.lcssa1173.i, %i.caq    ; 2 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %.22112.lcssa.i, i64 4
  %i.cat = getelementptr inbounds nuw i8, ptr %.182068.lcssa.i, i64 1 ; 2 uses
  %i.cau = add nuw nsw i32 %.12115.lcssa.i, 1
  br label %.lr.ph1989.i.prol.loopexit

.lr.ph1989.i.prol.loopexit:                       ; preds = %.lr.ph1989.i.prol, %.lr.ph1989.i.preheader
  %.lcssa3161.unr = phi <4 x i32> [ poison, %.lr.ph1989.i.preheader ], [ %i.car, %.lr.ph1989.i.prol ]
  %.lcssa3160.unr = phi ptr [ poison, %.lr.ph1989.i.preheader ], [ %i.cat, %.lr.ph1989.i.prol ]
  %.1920691988.i.unr = phi ptr [ %.182068.lcssa.i, %.lr.ph1989.i.preheader ], [ %i.cat, %.lr.ph1989.i.prol ]
  %.321131987.i.unr = phi ptr [ %.22112.lcssa.i, %.lr.ph1989.i.preheader ], [ %i.cas, %.lr.ph1989.i.prol ]
  %.221161986.i.unr = phi i32 [ %.12115.lcssa.i, %.lr.ph1989.i.preheader ], [ %i.cau, %.lr.ph1989.i.prol ]
  %.unr3469 = phi <4 x i32> [ %.lcssa1173.i, %.lr.ph1989.i.preheader ], [ %i.car, %.lr.ph1989.i.prol ]
  %i.cav = icmp eq i32 %8, %.neg3550.a
  br i1 %i.cav, label %._crit_edge1990.i, label %.lr.ph1989.i

.lr.ph1981.i:                                     ; preds = %._crit_edge1972.i, %.lr.ph1981.i
  %.1820681979.i = phi ptr [ %i.cbg, %.lr.ph1981.i ], [ %.172067.lcssa3275.i, %._crit_edge1972.i ] ; 2 uses
  %.221121978.i = phi ptr [ %i.cbf, %.lr.ph1981.i ], [ %.12111.i, %._crit_edge1972.i ] ; 2 uses
  %.121151977.i = phi i32 [ %i.cbh, %.lr.ph1981.i ], [ %.02114.lcssa3272.i, %._crit_edge1972.i ]
  %i.caw = phi <4 x i32> [ %i.cbe, %.lr.ph1981.i ], [ %i.cac, %._crit_edge1972.i ]
  %i.cax = load <8 x i8>, ptr %.221121978.i, align 1, !tbaa !17
  %i.cay = load i16, ptr %.1820681979.i, align 2, !tbaa !401
  %i.caz = insertelement <8 x i16> poison, i16 %i.cay, i64 0
  %i.cba = sext <8 x i8> %i.cax to <8 x i16>
  %i.cbb = bitcast <8 x i16> %i.caz to <16 x i8>
  %i.cbc = shufflevector <16 x i8> %i.cbb, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cbd = sext <8 x i8> %i.cbc to <8 x i16>
  %i.cbe = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.caw, <8 x i16> %i.cba, <8 x i16> %i.cbd) ; 2 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %.221121978.i, i64 8 ; 2 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %.1820681979.i, i64 2 ; 2 uses
  %i.cbh = add nuw nsw i32 %.121151977.i, 2       ; 3 uses
  %i.cbi = or disjoint i32 %i.cbh, 1
  %i.cbj = icmp slt i32 %i.cbi, %8
  br i1 %i.cbj, label %.lr.ph1981.i, label %.preheader1072.i, !llvm.loop !449

.lr.ph1989.i:                                     ; preds = %.lr.ph1989.i.prol.loopexit, %.lr.ph1989.i
  %.1920691988.i = phi ptr [ %i.cck, %.lr.ph1989.i ], [ %.1920691988.i.unr, %.lr.ph1989.i.prol.loopexit ] ; 3 uses
  %.321131987.i = phi ptr [ %i.ccj, %.lr.ph1989.i ], [ %.321131987.i.unr, %.lr.ph1989.i.prol.loopexit ] ; 3 uses
  %.221161986.i = phi i32 [ %i.ccl, %.lr.ph1989.i ], [ %.221161986.i.unr, %.lr.ph1989.i.prol.loopexit ]
  %i.cbk = phi <4 x i32> [ %i.cci, %.lr.ph1989.i ], [ %.unr3469, %.lr.ph1989.i.prol.loopexit ]
  %i.cbl = load <8 x i8>, ptr %.321131987.i, align 1, !tbaa !17
  %i.cbm = load i8, ptr %.1920691988.i, align 1, !tbaa !17
  %i.cbn = sext i8 %i.cbm to i16
  %i.cbo = insertelement <8 x i16> poison, i16 %i.cbn, i64 0
  %i.cbp = shufflevector <8 x i16> %i.cbo, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cbq = sext <8 x i8> %i.cbl to <8 x i16>      ; 2 uses
  %i.cbr = mul <8 x i16> %i.cbp, %i.cbq
  %i.cbs = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cbq, <8 x i16> %i.cbp)
  %i.cbt = shufflevector <8 x i16> %i.cbr, <8 x i16> %i.cbs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cbu = bitcast <8 x i16> %i.cbt to <4 x i32>
  %i.cbv = add <4 x i32> %i.cbk, %i.cbu
  %i.cbw = getelementptr inbounds nuw i8, ptr %.321131987.i, i64 4
  %i.cbx = getelementptr inbounds nuw i8, ptr %.1920691988.i, i64 1
  %i.cby = load <8 x i8>, ptr %i.cbw, align 1, !tbaa !17
  %i.cbz = load i8, ptr %i.cbx, align 1, !tbaa !17
  %i.cca = sext i8 %i.cbz to i16
  %i.ccb = insertelement <8 x i16> poison, i16 %i.cca, i64 0
  %i.ccc = shufflevector <8 x i16> %i.ccb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ccd = sext <8 x i8> %i.cby to <8 x i16>      ; 2 uses
  %i.cce = mul <8 x i16> %i.ccc, %i.ccd
  %i.ccf = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ccd, <8 x i16> %i.ccc)
  %i.ccg = shufflevector <8 x i16> %i.cce, <8 x i16> %i.ccf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cch = bitcast <8 x i16> %i.ccg to <4 x i32>
  %i.cci = add <4 x i32> %i.cbv, %i.cch           ; 2 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %.321131987.i, i64 8
  %i.cck = getelementptr inbounds nuw i8, ptr %.1920691988.i, i64 2 ; 2 uses
  %i.ccl = add nuw nsw i32 %.221161986.i, 2       ; 2 uses
  %exitcond2957.not.i.1 = icmp eq i32 %i.ccl, %8
  br i1 %exitcond2957.not.i.1, label %._crit_edge1990.i, label %.lr.ph1989.i, !llvm.loop !450

._crit_edge1990.i:                                ; preds = %.lr.ph1989.i.prol.loopexit, %.lr.ph1989.i, %.preheader1072.i
  %.lcssa1174.i = phi <4 x i32> [ %.lcssa1173.i, %.preheader1072.i ], [ %.lcssa3161.unr, %.lr.ph1989.i.prol.loopexit ], [ %i.cci, %.lr.ph1989.i ]
  %.192069.lcssa.i = phi ptr [ %.182068.lcssa.i, %.preheader1072.i ], [ %.lcssa3160.unr, %.lr.ph1989.i.prol.loopexit ], [ %i.cck, %.lr.ph1989.i ]
  store <4 x i32> %.lcssa1174.i, ptr %.171995.i, align 16, !tbaa !17
  %i.ccm = getelementptr inbounds nuw i8, ptr %.171995.i, i64 16 ; 2 uses
  %i.ccn = add nuw nsw i32 %.420741993.i, 1       ; 2 uses
  %exitcond2958.not.i = icmp eq i32 %i.ccn, %6
  br i1 %exitcond2958.not.i, label %._crit_edge1997.i, label %.lr.ph1996.i, !llvm.loop !451

._crit_edge1997.i:                                ; preds = %._crit_edge1990.i, %.preheader1077.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader1077.i ], [ %i.ccm, %._crit_edge1990.i ] ; 2 uses
  %i.cco = getelementptr inbounds i8, ptr %.42001.i, i64 %i.aew
  %spec.select2229.i = getelementptr inbounds nuw i8, ptr %i.cco, i64 %spec.select2229.idx.i ; 2 uses
  %i.ccp = add nuw nsw i32 %.218361999.i, 4       ; 3 uses
  %i.ccq = or disjoint i32 %i.ccp, 3
  %i.ccr = icmp slt i32 %i.ccq, %4
  %i.ccs = getelementptr i8, ptr %indvars.iv2952.i, i64 %spec.select2229.idx.i
  %scevgep2953.i = getelementptr i8, ptr %i.ccs, i64 %i.aew
  %i.cct = getelementptr i8, ptr %indvars.iv903, i64 %spec.select2229.idx.i
  %scevgep904 = getelementptr i8, ptr %i.cct, i64 %i.aew
  br i1 %i.ccr, label %.preheader1081.i, label %.preheader1071.i, !llvm.loop !452

.preheader1070.i:                                 ; preds = %._crit_edge2206.i, %.preheader1070.lr.ph.i
  %indvars.iv907 = phi ptr [ %scevgep908, %._crit_edge2206.i ], [ %scevgep906, %.preheader1070.lr.ph.i ] ; 4 uses
  %indvars.iv2967.i = phi ptr [ %scevgep2968.i, %._crit_edge2206.i ], [ %scevgep2966.i, %.preheader1070.lr.ph.i ] ; 6 uses
  %.62210.i = phi ptr [ %spec.select2230.i, %._crit_edge2206.i ], [ %.4.lcssa.i, %.preheader1070.lr.ph.i ] ; 22 uses
  %.182209.i = phi ptr [ %.23.lcssa.i, %._crit_edge2206.i ], [ %.12.lcssa.i, %.preheader1070.lr.ph.i ] ; 2 uses
  %.318372208.i = phi i32 [ %i.duq, %._crit_edge2206.i ], [ %.21836.lcssa.i, %.preheader1070.lr.ph.i ]
  br i1 %i.bgg, label %.lr.ph2037.i, label %.preheader1069.i

.preheader1060.i:                                 ; preds = %._crit_edge2206.i, %.preheader1071.i
  %.31837.lcssa.i = phi i32 [ %.21836.lcssa.i, %.preheader1071.i ], [ %i.duq, %._crit_edge2206.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader1071.i ], [ %.23.lcssa.i, %._crit_edge2206.i ]
  %.6.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader1071.i ], [ %spec.select2230.i, %._crit_edge2206.i ] ; 3 uses
  %i.ccu = icmp slt i32 %.31837.lcssa.i, %4
  br i1 %i.ccu, label %.preheader1059.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader1059.lr.ph.i:                           ; preds = %.preheader1060.i
  %i.ccv = icmp sgt i32 %6, 15
  %i.ccw = icmp eq i32 %7, 0                      ; 5 uses
  %i.ccx = icmp sgt i32 %8, 3                     ; 6 uses
  %i.ccy = sext i32 %8 to i64                     ; 2 uses
  %spec.select2231.idx.i = select i1 %i.ccx, i64 4, i64 0 ; 2 uses
  %i.ccz = add i32 %8, -4                         ; 6 uses
  %i.cda = and i32 %i.ccz, -4
  %i.cdb = add i32 %i.cda, 4                      ; 5 uses
  %i.cdc = and i32 %6, -16
  %i.cdd = zext i32 %i.ccz to i64                 ; 4 uses
  %i.cde = lshr i64 %i.cdd, 2                     ; 4 uses
  %i.cdf = shl nuw nsw i64 %i.cde, 5
  %i.cdg = shl nuw nsw i64 %i.cde, 4
  %i.cdh = shl nuw nsw i64 %i.cde, 3
  %i.cdi = and i64 %i.cdd, 4294967292
  %i.cdj = shl nuw nsw i64 %i.cde, 6
  %i.cdk = and i64 %i.cdd, 4294967292             ; 2 uses
  %scevgep910 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.cdk
  %i.cdl = add nsw i64 %spec.select2231.idx.i, %i.ccy ; 2 uses
  %i.cdm = getelementptr i8, ptr %.6.lcssa.i, i64 %i.cdk
  %scevgep913 = getelementptr i8, ptr %i.cdm, i64 4
  %9 = add i32 %8, -4
  %i.cdn = lshr i64 %i.cdd, 2
  %i.cdo = add nuw nsw i64 %i.cdn, 1              ; 10 uses
  %i.cdp = add i32 %8, -4                         ; 5 uses
  %i.cdq = add i32 %8, -2
  %i.cdr = lshr i32 %i.cdp, 2
  %i.cds = add nuw nsw i32 %i.cdr, 1              ; 6 uses
  %xtraiter3504 = and i32 %i.cds, 3               ; 3 uses
  %i.cdt = icmp ult i32 %i.cdp, 12
  %unroll_iter3514 = and i32 %i.cds, 2147483644
  %lcmp.mod3508.not = icmp eq i32 %xtraiter3504, 0
  %lcmp.mod3513 = icmp ne i32 %xtraiter3504, 0
  %xtraiter3520 = and i32 %i.cds, 3               ; 3 uses
  %i.cdu = icmp ult i32 %i.cdp, 12
  %unroll_iter3529 = and i32 %i.cds, 2147483644
  %lcmp.mod3524.not = icmp eq i32 %xtraiter3520, 0
  %lcmp.mod3528 = icmp ne i32 %xtraiter3520, 0
  %xtraiter3535 = and i32 %i.cds, 3               ; 3 uses
  %i.cdv = icmp ult i32 %i.cdp, 12
  %unroll_iter3543 = and i32 %i.cds, 2147483644
  %lcmp.mod3539.not = icmp eq i32 %xtraiter3535, 0
  %lcmp.mod3542 = icmp ne i32 %xtraiter3535, 0
  %min.iters.check2751 = icmp ult i32 %i.ccz, 12
  %min.iters.check2753 = icmp ult i32 %i.ccz, 124
  %i.cdw = and i64 %i.cdo, 28
  %n.vec2755 = and i64 %i.cdo, 2147483616         ; 6 uses
  %i.cdx = trunc nuw nsw i64 %n.vec2755 to i32
  %i.cdy = shl i32 %i.cdx, 2
  %i.cdz = shl nuw nsw i64 %n.vec2755, 2
  %i.cea = shl nuw nsw i64 %n.vec2755, 3
  %cmp.n2798 = icmp eq i64 %i.cdo, %n.vec2755
  %min.epilog.iters.check2807 = icmp eq i64 %i.cdw, 0
  %n.vec2809 = and i64 %i.cdo, 2147483644         ; 5 uses
  %i.ceb = trunc nuw nsw i64 %n.vec2809 to i32
  %i.cec = shl i32 %i.ceb, 2
  %i.ced = shl nuw nsw i64 %n.vec2809, 2
  %i.cee = shl nuw nsw i64 %n.vec2809, 3
  %cmp.n2832 = icmp eq i64 %i.cdo, %n.vec2809
  %min.iters.check2419 = icmp ult i32 %i.ccz, 12
  %min.iters.check2421 = icmp ult i32 %i.ccz, 124
  %i.cef = and i64 %i.cdo, 28
  %n.vec2423 = and i64 %i.cdo, 2147483616         ; 5 uses
  %i.ceg = trunc nuw nsw i64 %n.vec2423 to i32
  %i.ceh = shl i32 %i.ceg, 2
  %i.cei = shl nuw nsw i64 %n.vec2423, 2          ; 2 uses
  %cmp.n2455 = icmp eq i64 %i.cdo, %n.vec2423
  %min.epilog.iters.check2463 = icmp eq i64 %i.cef, 0
  %n.vec2465 = and i64 %i.cdo, 2147483644         ; 4 uses
  %i.cej = trunc nuw nsw i64 %n.vec2465 to i32
  %i.cek = shl i32 %i.cej, 2
  %i.cel = shl nuw nsw i64 %n.vec2465, 2          ; 2 uses
  %cmp.n2483 = icmp eq i64 %i.cdo, %n.vec2465
  br label %.preheader1059.i

.preheader1069.i:                                 ; preds = %._crit_edge2030.i, %.preheader1070.i
  %.02137.lcssa.i = phi i32 [ 0, %.preheader1070.i ], [ %i.bgo, %._crit_edge2030.i ] ; 3 uses
  %.02117.lcssa.i = phi ptr [ %.val8, %.preheader1070.i ], [ %.32120.lcssa.i, %._crit_edge2030.i ] ; 2 uses
  %.19.lcssa.i = phi ptr [ %.182209.i, %.preheader1070.i ], [ %i.chk, %._crit_edge2030.i ] ; 2 uses
  %i.cem = or disjoint i32 %.02137.lcssa.i, 7
  %i.cen = icmp slt i32 %i.cem, %6
  br i1 %i.cen, label %.lr.ph2073.i.preheader, label %.preheader1068.i

.lr.ph2073.i.preheader:                           ; preds = %.preheader1069.i
  %i.ceo = getelementptr inbounds nuw i8, ptr %indvars.iv907, i64 16
  br label %.lr.ph2073.i

.lr.ph2037.i:                                     ; preds = %.preheader1070.i, %._crit_edge2030.i
  %.192036.i = phi ptr [ %i.chk, %._crit_edge2030.i ], [ %.182209.i, %.preheader1070.i ] ; 5 uses
  %.021172035.i = phi ptr [ %.32120.lcssa.i, %._crit_edge2030.i ], [ %.val8, %.preheader1070.i ] ; 3 uses
  %.021372034.i = phi i32 [ %i.chl, %._crit_edge2030.i ], [ 0, %.preheader1070.i ]
  br i1 %i.bgh, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph2037.i
  %i.cep = load <16 x i32>, ptr %.192036.i, align 1, !tbaa !17
  %i.ceq = getelementptr inbounds nuw i8, ptr %.192036.i, i64 64
  %i.cer = load <16 x i32>, ptr %i.ceq, align 1, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph2037.i
  %i.ces = phi <16 x i32> [ %i.cep, %bb.at ], [ zeroinitializer, %.lr.ph2037.i ] ; 2 uses
  %i.cet = phi <16 x i32> [ %i.cer, %bb.at ], [ zeroinitializer, %.lr.ph2037.i ] ; 2 uses
  br i1 %i.bgi, label %.lr.ph2009.i, label %._crit_edge2010.i

.lr.ph2009.i:                                     ; preds = %bb.au, %.lr.ph2009.i
  %.121182007.i = phi ptr [ %i.cfg, %.lr.ph2009.i ], [ %.021172035.i, %bb.au ] ; 2 uses
  %.021422006.i = phi ptr [ %i.cff, %.lr.ph2009.i ], [ %.62210.i, %bb.au ] ; 3 uses
  %.021462005.i = phi i32 [ %i.cfh, %.lr.ph2009.i ], [ 0, %bb.au ]
  %i.ceu = phi <16 x i32> [ %i.cfe, %.lr.ph2009.i ], [ %i.cet, %bb.au ]
  %i.cev = phi <16 x i32> [ %i.cfd, %.lr.ph2009.i ], [ %i.ces, %bb.au ]
  %i.cew = load double, ptr %.021422006.i, align 8, !tbaa !397
  %i.cex = insertelement <8 x double> poison, double %i.cew, i64 0
  %i.cey = bitcast <8 x double> %i.cex to <8 x i64>
  %i.cez = shufflevector <8 x i64> %i.cey, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.cfa = load <64 x i8>, ptr %.121182007.i, align 1, !tbaa !17 ; 2 uses
  %i.cfb = shufflevector <64 x i8> %i.cfa, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51>
  %i.cfc = bitcast <8 x i64> %i.cez to <64 x i8>  ; 2 uses
  %i.cfd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cev, <64 x i8> %i.cfa, <64 x i8> %i.cfc) ; 2 uses
  %i.cfe = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ceu, <64 x i8> %i.cfb, <64 x i8> %i.cfc) ; 2 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %.021422006.i, i64 8 ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %.121182007.i, i64 64
  %i.cfh = add nuw nsw i32 %.021462005.i, 4       ; 2 uses
  %i.cfi = or disjoint i32 %i.cfh, 3
  %i.cfj = icmp slt i32 %i.cfi, %8
  br i1 %i.cfj, label %.lr.ph2009.i, label %bb.av, !llvm.loop !453

bb.av:                                            ; preds = %.lr.ph2009.i
  %i.cfk = getelementptr i8, ptr %.021172035.i, i64 %i.bgw
  %scevgep905 = getelementptr i8, ptr %i.cfk, i64 64
  %i.cfl = load double, ptr %i.cff, align 8, !tbaa !397
  %i.cfm = insertelement <8 x double> poison, double %i.cfl, i64 0
  %i.cfn = bitcast <8 x double> %i.cfm to <16 x i32>
  %i.cfo = shufflevector <16 x i32> %i.cfn, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cfp = sub <16 x i32> %i.cfd, %i.cfo
  %i.cfq = sub <16 x i32> %i.cfe, %i.cfo
  %i.cfr = getelementptr inbounds nuw i8, ptr %.021422006.i, i64 16
  br label %._crit_edge2010.i

._crit_edge2010.i:                                ; preds = %bb.av, %bb.au
  %.12118.lcssa3287.i = phi ptr [ %scevgep905, %bb.av ], [ %.021172035.i, %bb.au ] ; 2 uses
  %.02146.lcssa3284.i = phi i32 [ %i.bgn, %bb.av ], [ 0, %bb.au ] ; 3 uses
  %i.cfs = phi <16 x i32> [ %i.cfp, %bb.av ], [ %i.ces, %bb.au ] ; 2 uses
  %i.cft = phi <16 x i32> [ %i.cfq, %bb.av ], [ %i.cet, %bb.au ] ; 2 uses
  %.12143.i = phi ptr [ %i.cfr, %bb.av ], [ %.62210.i, %bb.au ] ; 2 uses
  %i.cfu = or disjoint i32 %.02146.lcssa3284.i, 1
  %i.cfv = icmp slt i32 %i.cfu, %8
  br i1 %i.cfv, label %.lr.ph2020.i, label %.preheader1065.i

.preheader1065.i:                                 ; preds = %.lr.ph2020.i, %._crit_edge2010.i
  %.lcssa1115.i = phi <16 x i32> [ %i.cfs, %._crit_edge2010.i ], [ %i.cgg, %.lr.ph2020.i ] ; 2 uses
  %.lcssa1114.i = phi <16 x i32> [ %i.cft, %._crit_edge2010.i ], [ %i.cgj, %.lr.ph2020.i ] ; 2 uses
  %.12147.lcssa.i = phi i32 [ %.02146.lcssa3284.i, %._crit_edge2010.i ], [ %i.cgm, %.lr.ph2020.i ] ; 2 uses
  %.22144.lcssa.i = phi ptr [ %.12143.i, %._crit_edge2010.i ], [ %i.cgk, %.lr.ph2020.i ]
  %.22119.lcssa.i = phi ptr [ %.12118.lcssa3287.i, %._crit_edge2010.i ], [ %i.cgl, %.lr.ph2020.i ] ; 2 uses
  %i.cfw = icmp slt i32 %.12147.lcssa.i, %8
  br i1 %i.cfw, label %.lr.ph2029.i, label %._crit_edge2030.i

.lr.ph2020.i:                                     ; preds = %._crit_edge2010.i, %.lr.ph2020.i
  %.221192018.i = phi ptr [ %i.cgl, %.lr.ph2020.i ], [ %.12118.lcssa3287.i, %._crit_edge2010.i ] ; 2 uses
  %.221442017.i = phi ptr [ %i.cgk, %.lr.ph2020.i ], [ %.12143.i, %._crit_edge2010.i ] ; 2 uses
  %.121472016.i = phi i32 [ %i.cgm, %.lr.ph2020.i ], [ %.02146.lcssa3284.i, %._crit_edge2010.i ]
  %i.cfx = phi <16 x i32> [ %i.cgj, %.lr.ph2020.i ], [ %i.cft, %._crit_edge2010.i ]
  %i.cfy = phi <16 x i32> [ %i.cgg, %.lr.ph2020.i ], [ %i.cfs, %._crit_edge2010.i ]
  %i.cfz = load float, ptr %.221442017.i, align 1, !tbaa !17
  %i.cga = insertelement <8 x float> poison, float %i.cfz, i64 0
  %i.cgb = shufflevector <8 x float> %i.cga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cgc = load <32 x i8>, ptr %.221192018.i, align 1, !tbaa !17 ; 2 uses
  %i.cgd = bitcast <8 x float> %i.cgb to <32 x i8>
  %i.cge = sext <32 x i8> %i.cgd to <32 x i16>    ; 2 uses
  %i.cgf = sext <32 x i8> %i.cgc to <32 x i16>
  %i.cgg = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.cfy, <32 x i16> %i.cge, <32 x i16> %i.cgf) ; 2 uses
  %i.cgh = shufflevector <32 x i8> %i.cgc, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.cgi = sext <32 x i8> %i.cgh to <32 x i16>
  %i.cgj = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.cfx, <32 x i16> %i.cge, <32 x i16> %i.cgi) ; 2 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %.221442017.i, i64 4 ; 2 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %.221192018.i, i64 32 ; 2 uses
  %i.cgm = add nuw nsw i32 %.121472016.i, 2       ; 3 uses
  %i.cgn = or disjoint i32 %i.cgm, 1
  %i.cgo = icmp slt i32 %i.cgn, %8
  br i1 %i.cgo, label %.lr.ph2020.i, label %.preheader1065.i, !llvm.loop !454

.lr.ph2029.i:                                     ; preds = %.preheader1065.i, %.lr.ph2029.i
  %.321202028.i = phi ptr [ %i.chh, %.lr.ph2029.i ], [ %.22119.lcssa.i, %.preheader1065.i ] ; 2 uses
  %.321452027.i = phi ptr [ %i.chg, %.lr.ph2029.i ], [ %.22144.lcssa.i, %.preheader1065.i ] ; 2 uses
  %.221482026.i = phi i32 [ %i.chi, %.lr.ph2029.i ], [ %.12147.lcssa.i, %.preheader1065.i ]
  %i.cgp = phi <16 x i32> [ %i.chf, %.lr.ph2029.i ], [ %.lcssa1114.i, %.preheader1065.i ]
  %i.cgq = phi <16 x i32> [ %i.chc, %.lr.ph2029.i ], [ %.lcssa1115.i, %.preheader1065.i ]
  %i.cgr = load i16, ptr %.321452027.i, align 2, !tbaa !401
  %i.cgs = insertelement <8 x i16> poison, i16 %i.cgr, i64 0
  %i.cgt = load <16 x i8>, ptr %.321202028.i, align 16, !tbaa !17 ; 2 uses
  %i.cgu = bitcast <8 x i16> %i.cgs to <16 x i8>
  %i.cgv = shufflevector <16 x i8> %i.cgu, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cgw = sext <16 x i8> %i.cgv to <16 x i16>    ; 2 uses
  %i.cgx = sext <16 x i8> %i.cgt to <16 x i16>
  %i.cgy = shufflevector <16 x i8> %i.cgt, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.cgz = sext <16 x i8> %i.cgy to <16 x i16>
  %i.cha = mul nsw <16 x i16> %i.cgw, %i.cgx
  %i.chb = sext <16 x i16> %i.cha to <16 x i32>
  %i.chc = add <16 x i32> %i.cgq, %i.chb          ; 2 uses
  %i.chd = mul nsw <16 x i16> %i.cgz, %i.cgw
  %i.che = sext <16 x i16> %i.chd to <16 x i32>
  %i.chf = add <16 x i32> %i.cgp, %i.che          ; 2 uses
  %i.chg = getelementptr inbounds nuw i8, ptr %.321452027.i, i64 2
  %i.chh = getelementptr inbounds nuw i8, ptr %.321202028.i, i64 16 ; 2 uses
  %i.chi = add nuw nsw i32 %.221482026.i, 1       ; 2 uses
  %exitcond2959.not.i = icmp eq i32 %i.chi, %8
  br i1 %exitcond2959.not.i, label %._crit_edge2030.i, label %.lr.ph2029.i, !llvm.loop !455

._crit_edge2030.i:                                ; preds = %.lr.ph2029.i, %.preheader1065.i
  %.lcssa1117.i = phi <16 x i32> [ %.lcssa1115.i, %.preheader1065.i ], [ %i.chc, %.lr.ph2029.i ]
  %.lcssa1116.i = phi <16 x i32> [ %.lcssa1114.i, %.preheader1065.i ], [ %i.chf, %.lr.ph2029.i ]
  %.32120.lcssa.i = phi ptr [ %.22119.lcssa.i, %.preheader1065.i ], [ %i.chh, %.lr.ph2029.i ] ; 2 uses
  store <16 x i32> %.lcssa1117.i, ptr %.192036.i, align 1, !tbaa !17
  %i.chj = getelementptr inbounds nuw i8, ptr %.192036.i, i64 64
  store <16 x i32> %.lcssa1116.i, ptr %i.chj, align 1, !tbaa !17
  %i.chk = getelementptr inbounds nuw i8, ptr %.192036.i, i64 128 ; 2 uses
  %i.chl = add nuw nsw i32 %.021372034.i, 16      ; 2 uses
  %i.chm = or disjoint i32 %i.chl, 15
  %i.chn = icmp slt i32 %i.chm, %6
  br i1 %i.chn, label %.lr.ph2037.i, label %.preheader1069.i, !llvm.loop !456

.preheader1068.i:                                 ; preds = %._crit_edge2066.i, %.preheader1069.i
  %.12138.lcssa.i = phi i32 [ %.02137.lcssa.i, %.preheader1069.i ], [ %i.cmn, %._crit_edge2066.i ] ; 3 uses
  %.42121.lcssa.i = phi ptr [ %.02117.lcssa.i, %.preheader1069.i ], [ %.72124.lcssa.i, %._crit_edge2066.i ] ; 2 uses
  %.20.lcssa.i = phi ptr [ %.19.lcssa.i, %.preheader1069.i ], [ %i.cmm, %._crit_edge2066.i ] ; 2 uses
  %i.cho = or disjoint i32 %.12138.lcssa.i, 3
  %i.chp = icmp slt i32 %i.cho, %6
  br i1 %i.chp, label %.lr.ph2109.i.preheader, label %.preheader1067.i

.lr.ph2109.i.preheader:                           ; preds = %.preheader1068.i
  %i.chq = getelementptr inbounds nuw i8, ptr %indvars.iv907, i64 16
  br label %.lr.ph2109.i

.lr.ph2073.i:                                     ; preds = %.lr.ph2073.i.preheader, %._crit_edge2066.i
  %.202072.i = phi ptr [ %i.cmm, %._crit_edge2066.i ], [ %.19.lcssa.i, %.lr.ph2073.i.preheader ] ; 5 uses
  %.421212071.i = phi ptr [ %.72124.lcssa.i, %._crit_edge2066.i ], [ %.02117.lcssa.i, %.lr.ph2073.i.preheader ] ; 4 uses
  %.121382070.i = phi i32 [ %i.cmn, %._crit_edge2066.i ], [ %.02137.lcssa.i, %.lr.ph2073.i.preheader ]
  br i1 %i.bgh, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph2073.i
end_hunk_0
begin_hunk_1_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %wide.vec2785 = load <128 x i8>, ptr %next.gep2765, align 1, !tbaa !17 ; 8 uses
  %strided.vec2786.a = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec2787.a = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec2788.a = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec2789.a = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec2790.a = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec2791.a = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec2792.a = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec2793 = shufflevector <128 x i8> %wide.vec2785, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %i.eit = zext <16 x i8> %strided.vec2777.a to <16 x i32>
  %i.eiu = zext <16 x i8> %strided.vec2786.a to <16 x i32>
  %i.eiv = mul nsw <16 x i32> %i.eit, %i.eir
  %i.eiw = mul nsw <16 x i32> %i.eiu, %i.eis
  %i.eix = add <16 x i32> %i.eiv, %vec.phi2760.a
  %i.eiy = add <16 x i32> %i.eiw, %vec.phi2761
  %i.eiz = sext <16 x i8> %strided.vec2768.a to <16 x i32> ; 2 uses
  %i.eja = sext <16 x i8> %strided.vec2773.a to <16 x i32> ; 2 uses
  %i.ejb = zext <16 x i8> %strided.vec2778.a to <16 x i32>
  %i.ejc = zext <16 x i8> %strided.vec2787.a to <16 x i32>
  %i.ejd = mul nsw <16 x i32> %i.ejb, %i.eiz
  %i.eje = mul nsw <16 x i32> %i.ejc, %i.eja
  %i.ejf = add <16 x i32> %i.eix, %i.ejd
  %i.ejg = add <16 x i32> %i.eiy, %i.eje
  %i.ejh = sext <16 x i8> %strided.vec2769.a to <16 x i32> ; 2 uses
  %i.eji = sext <16 x i8> %strided.vec2774.a to <16 x i32> ; 2 uses
  %i.ejj = zext <16 x i8> %strided.vec2779.a to <16 x i32>
  %i.ejk = zext <16 x i8> %strided.vec2788.a to <16 x i32>
  %i.ejl = mul nsw <16 x i32> %i.ejj, %i.ejh
  %i.ejm = mul nsw <16 x i32> %i.ejk, %i.eji
  %i.ejn = add <16 x i32> %i.ejf, %i.ejl
  %i.ejo = add <16 x i32> %i.ejg, %i.ejm
  %i.ejp = sext <16 x i8> %strided.vec2770 to <16 x i32> ; 2 uses
  %i.ejq = sext <16 x i8> %strided.vec2775 to <16 x i32> ; 2 uses
  %i.ejr = zext <16 x i8> %strided.vec2780.a to <16 x i32>
  %i.ejs = zext <16 x i8> %strided.vec2789.a to <16 x i32>
  %i.ejt = mul nsw <16 x i32> %i.ejr, %i.ejp
  %i.eju = mul nsw <16 x i32> %i.ejs, %i.ejq
  %i.ejv = add <16 x i32> %i.ejn, %i.ejt          ; 2 uses
  %i.ejw = add <16 x i32> %i.ejo, %i.eju          ; 2 uses
  %i.ejx = zext <16 x i8> %strided.vec2781.a to <16 x i32>
  %i.ejy = zext <16 x i8> %strided.vec2790.a to <16 x i32>
  %i.ejz = mul nsw <16 x i32> %i.ejx, %i.eir
  %i.eka = mul nsw <16 x i32> %i.ejy, %i.eis
  %i.ekb = add <16 x i32> %i.ejz, %vec.phi2758.a
  %i.ekc = add <16 x i32> %i.eka, %vec.phi2759.a
  %i.ekd = zext <16 x i8> %strided.vec2782.a to <16 x i32>
  %i.eke = zext <16 x i8> %strided.vec2791.a to <16 x i32>
  %i.ekf = mul nsw <16 x i32> %i.ekd, %i.eiz
  %i.ekg = mul nsw <16 x i32> %i.eke, %i.eja
  %i.ekh = add <16 x i32> %i.ekb, %i.ekf
  %i.eki = add <16 x i32> %i.ekc, %i.ekg
  %i.ekj = zext <16 x i8> %strided.vec2783.a to <16 x i32>
  %i.ekk = zext <16 x i8> %strided.vec2792.a to <16 x i32>
  %i.ekl = mul nsw <16 x i32> %i.ekj, %i.ejh
  %i.ekm = mul nsw <16 x i32> %i.ekk, %i.eji
  %i.ekn = add <16 x i32> %i.ekh, %i.ekl
  %i.eko = add <16 x i32> %i.eki, %i.ekm
  %i.ekp = zext <16 x i8> %strided.vec2784 to <16 x i32>
  %i.ekq = zext <16 x i8> %strided.vec2793 to <16 x i32>
  %i.ekr = mul nsw <16 x i32> %i.ekp, %i.ejp
  %i.eks = mul nsw <16 x i32> %i.ekq, %i.ejq
  %i.ekt = add <16 x i32> %i.ekn, %i.ekr          ; 2 uses
  %i.eku = add <16 x i32> %i.eko, %i.eks          ; 2 uses
  %index.next2794 = add nuw i64 %index2757, 32    ; 2 uses
  %i.ekv = icmp eq i64 %index.next2794, %n.vec2755
  br i1 %i.ekv, label %middle.block2795, label %vector.body2756, !llvm.loop !501

middle.block2795:                                 ; preds = %vector.body2756
  %bin.rdx2796.a = add <16 x i32> %i.eku, %i.ekt
  %i.ekw = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2796.a) ; 3 uses
  %bin.rdx2797 = add <16 x i32> %i.ejw, %i.ejv
  %i.ekx = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2797) ; 3 uses
  br i1 %cmp.n2798, label %.loopexit2838, label %vec.epilog.iter.check2806

vec.epilog.iter.check2806:                        ; preds = %middle.block2795
  br i1 %min.epilog.iters.check2807, label %.lr.ph2319.i.preheader, label %vec.epilog.ph2808, !prof !139

vec.epilog.ph2808:                                ; preds = %vector.main.loop.iter.check2752, %vec.epilog.iter.check2806
  %vec.epilog.resume.val2799 = phi i64 [ %n.vec2755, %vec.epilog.iter.check2806 ], [ 0, %vector.main.loop.iter.check2752 ]
  %bc.merge.rdx2801.a = phi i32 [ %i.ekw, %vec.epilog.iter.check2806 ], [ %.01814.i, %vector.main.loop.iter.check2752 ]
  %bc.merge.rdx2802 = phi i32 [ %i.ekx, %vec.epilog.iter.check2806 ], [ %.01819.i, %vector.main.loop.iter.check2752 ]
  %i.eky = getelementptr i8, ptr %.1219802373.i, i64 %i.cee
  %i.ekz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2801.a, i64 0
  %i.ela = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2802, i64 0
  br label %vec.epilog.vector.body2810

vec.epilog.vector.body2810:                       ; preds = %vec.epilog.vector.body2810, %vec.epilog.ph2808
  %index2811 = phi i64 [ %vec.epilog.resume.val2799, %vec.epilog.ph2808 ], [ %index.next2830, %vec.epilog.vector.body2810 ] ; 3 uses
  %vec.phi2812.a = phi <4 x i32> [ %i.ekz, %vec.epilog.ph2808 ], [ %i.eme, %vec.epilog.vector.body2810 ]
  %vec.phi2813 = phi <4 x i32> [ %i.ela, %vec.epilog.ph2808 ], [ %i.els, %vec.epilog.vector.body2810 ]
  %i.elb = shl i64 %index2811, 2
  %next.gep2814.a = getelementptr i8, ptr %.82425.i, i64 %i.elb
  %i.elc = shl i64 %index2811, 3
  %next.gep2815 = getelementptr i8, ptr %.1219802373.i, i64 %i.elc
  %wide.vec2816 = load <16 x i8>, ptr %next.gep2814.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2817.a = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2818.a = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2819.a = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2820 = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.eld = sext <4 x i8> %strided.vec2817.a to <4 x i32> ; 2 uses
  %wide.vec2821 = load <32 x i8>, ptr %next.gep2815, align 1, !tbaa !17 ; 8 uses
  %strided.vec2822.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec2823.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec2824.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec2825.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec2826.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec2827.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec2828.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec2829 = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.ele = zext <4 x i8> %strided.vec2822.a to <4 x i32>
  %i.elf = mul nsw <4 x i32> %i.ele, %i.eld
  %i.elg = add <4 x i32> %i.elf, %vec.phi2813
  %i.elh = sext <4 x i8> %strided.vec2818.a to <4 x i32> ; 2 uses
  %i.eli = zext <4 x i8> %strided.vec2823.a to <4 x i32>
  %i.elj = mul nsw <4 x i32> %i.eli, %i.elh
  %i.elk = add <4 x i32> %i.elg, %i.elj
  %i.ell = sext <4 x i8> %strided.vec2819.a to <4 x i32> ; 2 uses
  %i.elm = zext <4 x i8> %strided.vec2824.a to <4 x i32>
  %i.eln = mul nsw <4 x i32> %i.elm, %i.ell
  %i.elo = add <4 x i32> %i.elk, %i.eln
  %i.elp = sext <4 x i8> %strided.vec2820 to <4 x i32> ; 2 uses
  %i.elq = zext <4 x i8> %strided.vec2825.a to <4 x i32>
  %i.elr = mul nsw <4 x i32> %i.elq, %i.elp
  %i.els = add <4 x i32> %i.elo, %i.elr           ; 2 uses
  %i.elt = zext <4 x i8> %strided.vec2826.a to <4 x i32>
  %i.elu = mul nsw <4 x i32> %i.elt, %i.eld
  %i.elv = add <4 x i32> %i.elu, %vec.phi2812.a
  %i.elw = zext <4 x i8> %strided.vec2827.a to <4 x i32>
  %i.elx = mul nsw <4 x i32> %i.elw, %i.elh
  %i.ely = add <4 x i32> %i.elv, %i.elx
  %i.elz = zext <4 x i8> %strided.vec2828.a to <4 x i32>
  %i.ema = mul nsw <4 x i32> %i.elz, %i.ell
  %i.emb = add <4 x i32> %i.ely, %i.ema
  %i.emc = zext <4 x i8> %strided.vec2829 to <4 x i32>
  %i.emd = mul nsw <4 x i32> %i.emc, %i.elp
  %i.eme = add <4 x i32> %i.emb, %i.emd           ; 2 uses
  %index.next2830 = add nuw i64 %index2811, 4     ; 2 uses
  %i.emf = icmp eq i64 %index.next2830, %n.vec2809
  br i1 %i.emf, label %vec.epilog.middle.block2831, label %vec.epilog.vector.body2810, !llvm.loop !502

vec.epilog.middle.block2831:                      ; preds = %vec.epilog.vector.body2810
  %i.emg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eme) ; 2 uses
  %i.emh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.els) ; 2 uses
  br i1 %cmp.n2832, label %.loopexit2838, label %.lr.ph2319.i.preheader

.lr.ph2319.i.preheader:                           ; preds = %iter.check2804, %vec.epilog.iter.check2806, %vec.epilog.middle.block2831
  %.018052317.i.ph = phi i32 [ 0, %iter.check2804 ], [ %i.cdy, %vec.epilog.iter.check2806 ], [ %i.cec, %vec.epilog.middle.block2831 ]
  %.018092316.i.ph = phi ptr [ %.82425.i, %iter.check2804 ], [ %i.edq, %vec.epilog.iter.check2806 ], [ %i.edr, %vec.epilog.middle.block2831 ]
  %.118152315.i.ph = phi i32 [ %.01814.i, %iter.check2804 ], [ %i.ekw, %vec.epilog.iter.check2806 ], [ %i.emg, %vec.epilog.middle.block2831 ]
  %.118202314.i.ph = phi i32 [ %.01819.i, %iter.check2804 ], [ %i.ekx, %vec.epilog.iter.check2806 ], [ %i.emh, %vec.epilog.middle.block2831 ]
  %.1319812313.i.ph = phi ptr [ %.1219802373.i, %iter.check2804 ], [ %i.eik, %vec.epilog.iter.check2806 ], [ %i.eky, %vec.epilog.middle.block2831 ]
  br label %.lr.ph2319.i

.lr.ph2319.i:                                     ; preds = %.lr.ph2319.i.preheader, %.lr.ph2319.i
  %.018052317.i = phi i32 [ %i.emv, %.lr.ph2319.i ], [ %.018052317.i.ph, %.lr.ph2319.i.preheader ]
  %.018092316.i = phi ptr [ %i.emt, %.lr.ph2319.i ], [ %.018092316.i.ph, %.lr.ph2319.i.preheader ] ; 2 uses
  %.118152315.i = phi i32 [ %op.rdx2847, %.lr.ph2319.i ], [ %.118152315.i.ph, %.lr.ph2319.i.preheader ]
  %.118202314.i = phi i32 [ %op.rdx2846.a, %.lr.ph2319.i ], [ %.118202314.i.ph, %.lr.ph2319.i.preheader ]
  %.1319812313.i = phi ptr [ %i.emu, %.lr.ph2319.i ], [ %.1319812313.i.ph, %.lr.ph2319.i.preheader ] ; 3 uses
  %i.emi = load <4 x i8>, ptr %.018092316.i, align 1, !tbaa !17
  %i.emj = sext <4 x i8> %i.emi to <4 x i32>      ; 2 uses
  %i.emk = load <4 x i8>, ptr %.1319812313.i, align 1, !tbaa !17
  %i.eml = zext <4 x i8> %i.emk to <4 x i32>
  %i.emm = mul nsw <4 x i32> %i.eml, %i.emj
  %i.emn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.emm)
  %op.rdx2846.a = add i32 %i.emn, %.118202314.i   ; 2 uses
  %i.emo = getelementptr inbounds nuw i8, ptr %.1319812313.i, i64 4
  %i.emp = load <4 x i8>, ptr %i.emo, align 1, !tbaa !17
  %i.emq = zext <4 x i8> %i.emp to <4 x i32>
  %i.emr = mul nsw <4 x i32> %i.emq, %i.emj
  %i.ems = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.emr)
  %op.rdx2847 = add i32 %i.ems, %.118152315.i     ; 2 uses
  %i.emt = getelementptr inbounds nuw i8, ptr %.018092316.i, i64 4
  %i.emu = getelementptr inbounds nuw i8, ptr %.1319812313.i, i64 8
  %i.emv = add nuw nsw i32 %.018052317.i, 4       ; 2 uses
  %i.emw = or disjoint i32 %i.emv, 3
  %i.emx = icmp slt i32 %i.emw, %8
  br i1 %i.emx, label %.lr.ph2319.i, label %.loopexit2838, !llvm.loop !503

.loopexit2838:                                    ; preds = %.lr.ph2319.i, %vec.epilog.middle.block2831, %middle.block2795
  %.lcssa1405 = phi i32 [ %i.emh, %vec.epilog.middle.block2831 ], [ %i.ekx, %middle.block2795 ], [ %op.rdx2846.a, %.lr.ph2319.i ]
  %.lcssa1404 = phi i32 [ %i.emg, %vec.epilog.middle.block2831 ], [ %i.ekw, %middle.block2795 ], [ %op.rdx2847, %.lr.ph2319.i ]
  %i.emy = getelementptr i8, ptr %.1219802373.i, i64 %i.cdh
  %scevgep2977.i = getelementptr i8, ptr %i.emy, i64 8
  %i.emz = load i32, ptr %indvars.iv914, align 4, !tbaa !49 ; 2 uses
  %i.ena = sub nsw i32 %.lcssa1405, %i.emz
  %i.enb = sub nsw i32 %.lcssa1404, %i.emz
  br label %._crit_edge2320.i

._crit_edge2320.i:                                ; preds = %.loopexit2838, %bb.bn
  %.01805.lcssa3381.i = phi i32 [ %i.cdb, %.loopexit2838 ], [ 0, %bb.bn ] ; 6 uses
  %.131981.lcssa3376.i = phi ptr [ %scevgep2977.i, %.loopexit2838 ], [ %.1219802373.i, %bb.bn ] ; 9 uses
  %.21821.i = phi i32 [ %i.ena, %.loopexit2838 ], [ %.01819.i, %bb.bn ] ; 4 uses
  %.21816.i = phi i32 [ %i.enb, %.loopexit2838 ], [ %.01814.i, %bb.bn ] ; 4 uses
  %.11810.i = phi ptr [ %i.edp, %.loopexit2838 ], [ %.82425.i, %bb.bn ] ; 9 uses
  %i.enc = or disjoint i32 %.01805.lcssa3381.i, 1
  %i.end = icmp slt i32 %i.enc, %8
  br i1 %i.end, label %iter.check2723, label %.preheader.i

iter.check2723:                                   ; preds = %._crit_edge2320.i
  %i.ene = sub i32 %i.cdq, %.01805.lcssa3381.i    ; 3 uses
  %i.enf = lshr i32 %i.ene, 1
  %narrow2842.a = add nuw i32 %i.enf, 1
  %i.eng = zext i32 %narrow2842.a to i64          ; 5 uses
  %min.iters.check2654 = icmp ult i32 %i.ene, 14
  br i1 %min.iters.check2654, label %.lr.ph2332.i.preheader, label %vector.main.loop.iter.check2655

vector.main.loop.iter.check2655:                  ; preds = %iter.check2723
  %min.iters.check2656 = icmp ult i32 %i.ene, 126
  br i1 %min.iters.check2656, label %vec.epilog.ph2727, label %vector.ph2657

vector.ph2657:                                    ; preds = %vector.main.loop.iter.check2655
  %i.enh = and i64 %i.eng, 56
  %n.vec2658 = and i64 %i.eng, 4294967232         ; 6 uses
  %i.eni = trunc nuw i64 %n.vec2658 to i32
  %i.enj = shl i32 %i.eni, 1
  %i.enk = add i32 %.01805.lcssa3381.i, %i.enj    ; 2 uses
  %i.enl = shl nuw nsw i64 %n.vec2658, 1
  %i.enm = getelementptr i8, ptr %.11810.i, i64 %i.enl ; 2 uses
  %i.enn = shl nuw nsw i64 %n.vec2658, 2
  %i.eno = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.enn ; 2 uses
  %i.enp = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21816.i, i64 0
  %i.enq = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21821.i, i64 0
  br label %vector.body2659

vector.body2659:                                  ; preds = %vector.body2659, %vector.ph2657
  %index2660 = phi i64 [ 0, %vector.ph2657 ], [ %index.next2709, %vector.body2659 ] ; 3 uses
  %vec.phi2661.a = phi <16 x i32> [ %i.enp, %vector.ph2657 ], [ %i.epz, %vector.body2659 ]
  %vec.phi2662.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.eqa, %vector.body2659 ]
  %vec.phi2663.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.eqb, %vector.body2659 ]
  %vec.phi2664.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.eqc, %vector.body2659 ]
  %vec.phi2665.a = phi <16 x i32> [ %i.enq, %vector.ph2657 ], [ %i.epb, %vector.body2659 ]
  %vec.phi2666.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.epc, %vector.body2659 ]
  %vec.phi2667.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.epd, %vector.body2659 ]
  %vec.phi2668 = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.epe, %vector.body2659 ]
  %i.enr = shl i64 %index2660, 1                  ; 4 uses
  %next.gep2669.a = getelementptr i8, ptr %.11810.i, i64 %i.enr
  %i.ens = getelementptr i8, ptr %.11810.i, i64 %i.enr
  %next.gep2670.a = getelementptr i8, ptr %i.ens, i64 32
  %i.ent = getelementptr i8, ptr %.11810.i, i64 %i.enr
  %next.gep2671.a = getelementptr i8, ptr %i.ent, i64 64
  %i.enu = getelementptr i8, ptr %.11810.i, i64 %i.enr
  %next.gep2672.a = getelementptr i8, ptr %i.enu, i64 96
  %i.env = shl i64 %index2660, 2                  ; 4 uses
  %next.gep2673.a = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.env
  %i.enw = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.env
  %next.gep2674.a = getelementptr i8, ptr %i.enw, i64 64
  %i.enx = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.env
  %next.gep2675.a = getelementptr i8, ptr %i.enx, i64 128
  %i.eny = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.env
  %next.gep2676 = getelementptr i8, ptr %i.eny, i64 192
  %wide.vec2677 = load <32 x i8>, ptr %next.gep2669.a, align 1, !tbaa !17 ; 2 uses
  %strided.vec2678.a = shufflevector <32 x i8> %wide.vec2677, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2679 = shufflevector <32 x i8> %wide.vec2677, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2680 = load <32 x i8>, ptr %next.gep2670.a, align 1, !tbaa !17 ; 2 uses
  %strided.vec2681.a = shufflevector <32 x i8> %wide.vec2680, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2682 = shufflevector <32 x i8> %wide.vec2680, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2683 = load <32 x i8>, ptr %next.gep2671.a, align 1, !tbaa !17 ; 2 uses
  %strided.vec2684.a = shufflevector <32 x i8> %wide.vec2683, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2685 = shufflevector <32 x i8> %wide.vec2683, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2686 = load <32 x i8>, ptr %next.gep2672.a, align 1, !tbaa !17 ; 2 uses
  %strided.vec2687.a = shufflevector <32 x i8> %wide.vec2686, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2688 = shufflevector <32 x i8> %wide.vec2686, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.enz = sext <16 x i8> %strided.vec2678.a to <16 x i32> ; 2 uses
  %i.eoa = sext <16 x i8> %strided.vec2681.a to <16 x i32> ; 2 uses
  %i.eob = sext <16 x i8> %strided.vec2684.a to <16 x i32> ; 2 uses
  %i.eoc = sext <16 x i8> %strided.vec2687.a to <16 x i32> ; 2 uses
  %wide.vec2689 = load <64 x i8>, ptr %next.gep2673.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2690.a = shufflevector <64 x i8> %wide.vec2689, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2691.a = shufflevector <64 x i8> %wide.vec2689, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2692.a = shufflevector <64 x i8> %wide.vec2689, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2693 = shufflevector <64 x i8> %wide.vec2689, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2694 = load <64 x i8>, ptr %next.gep2674.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2695.a = shufflevector <64 x i8> %wide.vec2694, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2696.a = shufflevector <64 x i8> %wide.vec2694, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2697.a = shufflevector <64 x i8> %wide.vec2694, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2698 = shufflevector <64 x i8> %wide.vec2694, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2699 = load <64 x i8>, ptr %next.gep2675.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2700.a = shufflevector <64 x i8> %wide.vec2699, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2701.a = shufflevector <64 x i8> %wide.vec2699, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2702.a = shufflevector <64 x i8> %wide.vec2699, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2703 = shufflevector <64 x i8> %wide.vec2699, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2704 = load <64 x i8>, ptr %next.gep2676, align 1, !tbaa !17 ; 4 uses
  %strided.vec2705.a = shufflevector <64 x i8> %wide.vec2704, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2706.a = shufflevector <64 x i8> %wide.vec2704, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2707.a = shufflevector <64 x i8> %wide.vec2704, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2708 = shufflevector <64 x i8> %wide.vec2704, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.eod = sext <16 x i8> %strided.vec2690.a to <16 x i32>
  %i.eoe = sext <16 x i8> %strided.vec2695.a to <16 x i32>
  %i.eof = sext <16 x i8> %strided.vec2700.a to <16 x i32>
  %i.eog = sext <16 x i8> %strided.vec2705.a to <16 x i32>
  %i.eoh = mul nsw <16 x i32> %i.eod, %i.enz
  %i.eoi = mul nsw <16 x i32> %i.eoe, %i.eoa
  %i.eoj = mul nsw <16 x i32> %i.eof, %i.eob
  %i.eok = mul nsw <16 x i32> %i.eog, %i.eoc
  %i.eol = add <16 x i32> %i.eoh, %vec.phi2665.a
  %i.eom = add <16 x i32> %i.eoi, %vec.phi2666.a
  %i.eon = add <16 x i32> %i.eoj, %vec.phi2667.a
  %i.eoo = add <16 x i32> %i.eok, %vec.phi2668
  %i.eop = sext <16 x i8> %strided.vec2679 to <16 x i32> ; 2 uses
  %i.eoq = sext <16 x i8> %strided.vec2682 to <16 x i32> ; 2 uses
  %i.eor = sext <16 x i8> %strided.vec2685 to <16 x i32> ; 2 uses
  %i.eos = sext <16 x i8> %strided.vec2688 to <16 x i32> ; 2 uses
  %i.eot = sext <16 x i8> %strided.vec2691.a to <16 x i32>
  %i.eou = sext <16 x i8> %strided.vec2696.a to <16 x i32>
  %i.eov = sext <16 x i8> %strided.vec2701.a to <16 x i32>
  %i.eow = sext <16 x i8> %strided.vec2706.a to <16 x i32>
  %i.eox = mul nsw <16 x i32> %i.eot, %i.eop
  %i.eoy = mul nsw <16 x i32> %i.eou, %i.eoq
  %i.eoz = mul nsw <16 x i32> %i.eov, %i.eor
  %i.epa = mul nsw <16 x i32> %i.eow, %i.eos
  %i.epb = add <16 x i32> %i.eol, %i.eox          ; 2 uses
  %i.epc = add <16 x i32> %i.eom, %i.eoy          ; 2 uses
  %i.epd = add <16 x i32> %i.eon, %i.eoz          ; 2 uses
  %i.epe = add <16 x i32> %i.eoo, %i.epa          ; 2 uses
  %i.epf = sext <16 x i8> %strided.vec2692.a to <16 x i32>
  %i.epg = sext <16 x i8> %strided.vec2697.a to <16 x i32>
  %i.eph = sext <16 x i8> %strided.vec2702.a to <16 x i32>
  %i.epi = sext <16 x i8> %strided.vec2707.a to <16 x i32>
  %i.epj = mul nsw <16 x i32> %i.epf, %i.enz
  %i.epk = mul nsw <16 x i32> %i.epg, %i.eoa
  %i.epl = mul nsw <16 x i32> %i.eph, %i.eob
  %i.epm = mul nsw <16 x i32> %i.epi, %i.eoc
  %i.epn = add <16 x i32> %i.epj, %vec.phi2661.a
  %i.epo = add <16 x i32> %i.epk, %vec.phi2662.a
  %i.epp = add <16 x i32> %i.epl, %vec.phi2663.a
  %i.epq = add <16 x i32> %i.epm, %vec.phi2664.a
  %i.epr = sext <16 x i8> %strided.vec2693 to <16 x i32>
  %i.eps = sext <16 x i8> %strided.vec2698 to <16 x i32>
  %i.ept = sext <16 x i8> %strided.vec2703 to <16 x i32>
  %i.epu = sext <16 x i8> %strided.vec2708 to <16 x i32>
  %i.epv = mul nsw <16 x i32> %i.epr, %i.eop
  %i.epw = mul nsw <16 x i32> %i.eps, %i.eoq
  %i.epx = mul nsw <16 x i32> %i.ept, %i.eor
  %i.epy = mul nsw <16 x i32> %i.epu, %i.eos
  %i.epz = add <16 x i32> %i.epn, %i.epv          ; 2 uses
  %i.eqa = add <16 x i32> %i.epo, %i.epw          ; 2 uses
  %i.eqb = add <16 x i32> %i.epp, %i.epx          ; 2 uses
  %i.eqc = add <16 x i32> %i.epq, %i.epy          ; 2 uses
  %index.next2709 = add nuw i64 %index2660, 64    ; 2 uses
  %i.eqd = icmp eq i64 %index.next2709, %n.vec2658
  br i1 %i.eqd, label %middle.block2710, label %vector.body2659, !llvm.loop !504

middle.block2710:                                 ; preds = %vector.body2659
  %bin.rdx2711.a = add <16 x i32> %i.eqa, %i.epz
  %bin.rdx2712.a = add <16 x i32> %i.eqb, %bin.rdx2711.a
  %bin.rdx2713.a = add <16 x i32> %i.eqc, %bin.rdx2712.a
  %i.eqe = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2713.a) ; 3 uses
  %bin.rdx2714.a = add <16 x i32> %i.epc, %i.epb
  %bin.rdx2715.a = add <16 x i32> %i.epd, %bin.rdx2714.a
  %bin.rdx2716 = add <16 x i32> %i.epe, %bin.rdx2715.a
  %i.eqf = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2716) ; 3 uses
  %cmp.n2717 = icmp eq i64 %n.vec2658, %i.eng
  br i1 %cmp.n2717, label %.preheader.i, label %vec.epilog.iter.check2725

vec.epilog.iter.check2725:                        ; preds = %middle.block2710
  %min.epilog.iters.check2726 = icmp eq i64 %i.enh, 0
  br i1 %min.epilog.iters.check2726, label %.lr.ph2332.i.preheader, label %vec.epilog.ph2727, !prof !46

vec.epilog.ph2727:                                ; preds = %vector.main.loop.iter.check2655, %vec.epilog.iter.check2725
  %vec.epilog.resume.val2718 = phi i64 [ %n.vec2658, %vec.epilog.iter.check2725 ], [ 0, %vector.main.loop.iter.check2655 ]
  %bc.merge.rdx2720.a = phi i32 [ %i.eqe, %vec.epilog.iter.check2725 ], [ %.21816.i, %vector.main.loop.iter.check2655 ]
  %bc.merge.rdx2721 = phi i32 [ %i.eqf, %vec.epilog.iter.check2725 ], [ %.21821.i, %vector.main.loop.iter.check2655 ]
  %n.vec2728 = and i64 %i.eng, 4294967288         ; 5 uses
  %i.eqg = trunc nuw i64 %n.vec2728 to i32
  %i.eqh = shl i32 %i.eqg, 1
  %i.eqi = add i32 %.01805.lcssa3381.i, %i.eqh    ; 2 uses
  %i.eqj = shl nuw nsw i64 %n.vec2728, 1
  %i.eqk = getelementptr i8, ptr %.11810.i, i64 %i.eqj ; 2 uses
  %i.eql = shl nuw nsw i64 %n.vec2728, 2
  %i.eqm = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.eql ; 2 uses
  %i.eqn = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2720.a, i64 0
  %i.eqo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2721, i64 0
  br label %vec.epilog.vector.body2729

vec.epilog.vector.body2729:                       ; preds = %vec.epilog.vector.body2729, %vec.epilog.ph2727
  %index2730 = phi i64 [ %vec.epilog.resume.val2718, %vec.epilog.ph2727 ], [ %index.next2743, %vec.epilog.vector.body2729 ] ; 3 uses
  %vec.phi2731.a = phi <8 x i32> [ %i.eqn, %vec.epilog.ph2727 ], [ %i.ere, %vec.epilog.vector.body2729 ]
  %vec.phi2732 = phi <8 x i32> [ %i.eqo, %vec.epilog.ph2727 ], [ %i.eqy, %vec.epilog.vector.body2729 ]
  %i.eqp = shl i64 %index2730, 1
  %next.gep2733.a = getelementptr i8, ptr %.11810.i, i64 %i.eqp
  %i.eqq = shl i64 %index2730, 2
  %next.gep2734 = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.eqq
  %wide.vec2735 = load <16 x i8>, ptr %next.gep2733.a, align 1, !tbaa !17 ; 2 uses
  %strided.vec2736.a = shufflevector <16 x i8> %wide.vec2735, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec2737 = shufflevector <16 x i8> %wide.vec2735, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eqr = sext <8 x i8> %strided.vec2736.a to <8 x i32> ; 2 uses
  %wide.vec2738 = load <32 x i8>, ptr %next.gep2734, align 1, !tbaa !17 ; 4 uses
  %strided.vec2739.a = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec2740.a = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec2741.a = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec2742 = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eqs = sext <8 x i8> %strided.vec2739.a to <8 x i32>
  %i.eqt = mul nsw <8 x i32> %i.eqs, %i.eqr
  %i.equ = add <8 x i32> %i.eqt, %vec.phi2732
  %i.eqv = sext <8 x i8> %strided.vec2737 to <8 x i32> ; 2 uses
  %i.eqw = sext <8 x i8> %strided.vec2740.a to <8 x i32>
  %i.eqx = mul nsw <8 x i32> %i.eqw, %i.eqv
  %i.eqy = add <8 x i32> %i.equ, %i.eqx           ; 2 uses
  %i.eqz = sext <8 x i8> %strided.vec2741.a to <8 x i32>
  %i.era = mul nsw <8 x i32> %i.eqz, %i.eqr
  %i.erb = add <8 x i32> %i.era, %vec.phi2731.a
  %i.erc = sext <8 x i8> %strided.vec2742 to <8 x i32>
  %i.erd = mul nsw <8 x i32> %i.erc, %i.eqv
  %i.ere = add <8 x i32> %i.erb, %i.erd           ; 2 uses
  %index.next2743 = add nuw i64 %index2730, 8     ; 2 uses
  %i.erf = icmp eq i64 %index.next2743, %n.vec2728
  br i1 %i.erf, label %vec.epilog.middle.block2744, label %vec.epilog.vector.body2729, !llvm.loop !505

vec.epilog.middle.block2744:                      ; preds = %vec.epilog.vector.body2729
  %i.erg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ere) ; 2 uses
  %i.erh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eqy) ; 2 uses
  %cmp.n2745 = icmp eq i64 %n.vec2728, %i.eng
  br i1 %cmp.n2745, label %.preheader.i, label %.lr.ph2332.i.preheader

.lr.ph2332.i.preheader:                           ; preds = %iter.check2723, %vec.epilog.iter.check2725, %vec.epilog.middle.block2744
  %.118062330.i.ph = phi i32 [ %.01805.lcssa3381.i, %iter.check2723 ], [ %i.enk, %vec.epilog.iter.check2725 ], [ %i.eqi, %vec.epilog.middle.block2744 ]
  %.218112329.i.ph = phi ptr [ %.11810.i, %iter.check2723 ], [ %i.enm, %vec.epilog.iter.check2725 ], [ %i.eqk, %vec.epilog.middle.block2744 ]
  %.318172328.i.ph = phi i32 [ %.21816.i, %iter.check2723 ], [ %i.eqe, %vec.epilog.iter.check2725 ], [ %i.erg, %vec.epilog.middle.block2744 ]
  %.318222327.i.ph = phi i32 [ %.21821.i, %iter.check2723 ], [ %i.eqf, %vec.epilog.iter.check2725 ], [ %i.erh, %vec.epilog.middle.block2744 ]
  %.1419822326.i.ph = phi ptr [ %.131981.lcssa3376.i, %iter.check2723 ], [ %i.eno, %vec.epilog.iter.check2725 ], [ %i.eqm, %vec.epilog.middle.block2744 ]
  br label %.lr.ph2332.i

.preheader.i:                                     ; preds = %.lr.ph2332.i, %middle.block2710, %vec.epilog.middle.block2744, %._crit_edge2320.i
  %.141982.lcssa.i = phi ptr [ %.131981.lcssa3376.i, %._crit_edge2320.i ], [ %i.eqm, %vec.epilog.middle.block2744 ], [ %i.eno, %middle.block2710 ], [ %i.ewj, %.lr.ph2332.i ] ; 6 uses
  %.31822.lcssa.i = phi i32 [ %.21821.i, %._crit_edge2320.i ], [ %i.erh, %vec.epilog.middle.block2744 ], [ %i.eqf, %middle.block2710 ], [ %i.evx, %.lr.ph2332.i ]
  %.31817.lcssa.i = phi i32 [ %.21816.i, %._crit_edge2320.i ], [ %i.erg, %vec.epilog.middle.block2744 ], [ %i.eqe, %middle.block2710 ], [ %i.ewh, %.lr.ph2332.i ]
  %.21811.lcssa.i = phi ptr [ %.11810.i, %._crit_edge2320.i ], [ %i.eqk, %vec.epilog.middle.block2744 ], [ %i.enm, %middle.block2710 ], [ %i.ewi, %.lr.ph2332.i ] ; 6 uses
  %.11806.lcssa.i = phi i32 [ %.01805.lcssa3381.i, %._crit_edge2320.i ], [ %i.eqi, %vec.epilog.middle.block2744 ], [ %i.enk, %middle.block2710 ], [ %i.ewk, %.lr.ph2332.i ] ; 6 uses
  %i.eri = add nuw nsw i32 %.11806.lcssa.i, 3
  %i.erj = icmp slt i32 %i.eri, %8
  br i1 %i.erj, label %iter.check2608, label %._crit_edge2350.i

iter.check2608:                                   ; preds = %.preheader.i
  %i.erk = sub i32 %i.cdp, %.11806.lcssa.i        ; 3 uses
  %i.erl = lshr i32 %i.erk, 2
  %narrow2843.a = add nuw nsw i32 %i.erl, 1
  %i.erm = zext nneg i32 %narrow2843.a to i64     ; 5 uses
  %min.iters.check2563 = icmp ult i32 %i.erk, 12
  br i1 %min.iters.check2563, label %.lr.ph2349.i.preheader, label %vector.main.loop.iter.check2564

vector.main.loop.iter.check2564:                  ; preds = %iter.check2608
  %min.iters.check2565 = icmp ult i32 %i.erk, 60
  br i1 %min.iters.check2565, label %vec.epilog.ph2612, label %vector.ph2566

vector.ph2566:                                    ; preds = %vector.main.loop.iter.check2564
  %i.ern = and i64 %i.erm, 12
  %n.vec2567 = and i64 %i.erm, 2147483632         ; 6 uses
  %i.ero = trunc nuw nsw i64 %n.vec2567 to i32
  %i.erp = shl i32 %i.ero, 2
  %i.erq = add i32 %.11806.lcssa.i, %i.erp        ; 2 uses
  %i.err = shl nuw nsw i64 %n.vec2567, 2
  %i.ers = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.err ; 2 uses
  %i.ert = shl nuw nsw i64 %n.vec2567, 3
  %i.eru = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.ert ; 2 uses
  br label %vector.body2568

vector.body2568:                                  ; preds = %vector.body2568, %vector.ph2566
  %index2569 = phi i64 [ 0, %vector.ph2566 ], [ %index.next2594, %vector.body2568 ] ; 3 uses
  %vec.phi2570.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esy, %vector.body2568 ]
  %vec.phi2571.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esr, %vector.body2568 ]
  %vec.phi2572.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esk, %vector.body2568 ]
  %vec.phi2573.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esd, %vector.body2568 ]
  %vec.phi2574.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esv, %vector.body2568 ]
  %vec.phi2575.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.eso, %vector.body2568 ]
  %vec.phi2576.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esh, %vector.body2568 ]
  %vec.phi2577 = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esa, %vector.body2568 ]
  %i.erv = shl i64 %index2569, 2
  %next.gep2578.a = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.erv
  %i.erw = shl i64 %index2569, 3
  %next.gep2579 = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.erw
  %wide.vec2580 = load <64 x i8>, ptr %next.gep2578.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2581.a = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2582.a = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2583.a = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2584 = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.erx = sext <16 x i8> %strided.vec2581.a to <16 x i32> ; 2 uses
  %wide.vec2585 = load <128 x i8>, ptr %next.gep2579, align 1, !tbaa !17 ; 8 uses
  %strided.vec2586.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec2587.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec2588.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec2589.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec2590.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec2591.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec2592.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec2593 = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %i.ery = sext <16 x i8> %strided.vec2586.a to <16 x i32>
  %i.erz = mul nsw <16 x i32> %i.ery, %i.erx
  %i.esa = add <16 x i32> %i.erz, %vec.phi2577    ; 2 uses
  %i.esb = sext <16 x i8> %strided.vec2587.a to <16 x i32>
  %i.esc = mul nsw <16 x i32> %i.esb, %i.erx
  %i.esd = add <16 x i32> %i.esc, %vec.phi2573.a  ; 2 uses
  %i.ese = sext <16 x i8> %strided.vec2582.a to <16 x i32> ; 2 uses
  %i.esf = sext <16 x i8> %strided.vec2588.a to <16 x i32>
  %i.esg = mul nsw <16 x i32> %i.esf, %i.ese
  %i.esh = add <16 x i32> %i.esg, %vec.phi2576.a  ; 2 uses
  %i.esi = sext <16 x i8> %strided.vec2589.a to <16 x i32>
  %i.esj = mul nsw <16 x i32> %i.esi, %i.ese
  %i.esk = add <16 x i32> %i.esj, %vec.phi2572.a  ; 2 uses
  %i.esl = sext <16 x i8> %strided.vec2583.a to <16 x i32> ; 2 uses
  %i.esm = sext <16 x i8> %strided.vec2590.a to <16 x i32>
  %i.esn = mul nsw <16 x i32> %i.esm, %i.esl
  %i.eso = add <16 x i32> %i.esn, %vec.phi2575.a  ; 2 uses
  %i.esp = sext <16 x i8> %strided.vec2591.a to <16 x i32>
  %i.esq = mul nsw <16 x i32> %i.esp, %i.esl
  %i.esr = add <16 x i32> %i.esq, %vec.phi2571.a  ; 2 uses
  %i.ess = sext <16 x i8> %strided.vec2584 to <16 x i32> ; 2 uses
  %i.est = sext <16 x i8> %strided.vec2592.a to <16 x i32>
  %i.esu = mul nsw <16 x i32> %i.est, %i.ess
  %i.esv = add <16 x i32> %i.esu, %vec.phi2574.a  ; 2 uses
  %i.esw = sext <16 x i8> %strided.vec2593 to <16 x i32>
  %i.esx = mul nsw <16 x i32> %i.esw, %i.ess
  %i.esy = add <16 x i32> %i.esx, %vec.phi2570.a  ; 2 uses
  %index.next2594 = add nuw i64 %index2569, 16    ; 2 uses
  %i.esz = icmp eq i64 %index.next2594, %n.vec2567
  br i1 %i.esz, label %middle.block2595, label %vector.body2568, !llvm.loop !506

middle.block2595:                                 ; preds = %vector.body2568
  %i.eta = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esy) ; 3 uses
  %i.etb = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esr) ; 3 uses
  %i.etc = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esk) ; 3 uses
  %i.etd = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esd) ; 3 uses
  %i.ete = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esv) ; 3 uses
  %i.etf = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.eso) ; 3 uses
  %i.etg = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esh) ; 3 uses
  %i.eth = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esa) ; 3 uses
  %cmp.n2596 = icmp eq i64 %n.vec2567, %i.erm
  br i1 %cmp.n2596, label %._crit_edge2350.i, label %vec.epilog.iter.check2610

vec.epilog.iter.check2610:                        ; preds = %middle.block2595
  %min.epilog.iters.check2611 = icmp eq i64 %i.ern, 0
  br i1 %min.epilog.iters.check2611, label %.lr.ph2349.i.preheader, label %vec.epilog.ph2612, !prof !248

vec.epilog.ph2612:                                ; preds = %vector.main.loop.iter.check2564, %vec.epilog.iter.check2610
  %vec.epilog.resume.val2597 = phi i64 [ %n.vec2567, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2598.a = phi i32 [ %i.eta, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2599.a = phi i32 [ %i.etb, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2600.a = phi i32 [ %i.etc, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2601.a = phi i32 [ %i.etd, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2602.a = phi i32 [ %i.ete, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2603.a = phi i32 [ %i.etf, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2604.a = phi i32 [ %i.etg, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2605 = phi i32 [ %i.eth, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %n.vec2613 = and i64 %i.erm, 2147483644         ; 5 uses
  %i.eti = trunc nuw nsw i64 %n.vec2613 to i32
  %i.etj = shl i32 %i.eti, 2
  %i.etk = add i32 %.11806.lcssa.i, %i.etj        ; 2 uses
  %i.etl = shl nuw nsw i64 %n.vec2613, 2
  %i.etm = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.etl ; 2 uses
  %i.etn = shl nuw nsw i64 %n.vec2613, 3
  %i.eto = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.etn ; 2 uses
  %i.etp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2598.a, i64 0
  %i.etq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2599.a, i64 0
  %i.etr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2600.a, i64 0
  %i.ets = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2601.a, i64 0
  %i.ett = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2602.a, i64 0
  %i.etu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2603.a, i64 0
  %i.etv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2604.a, i64 0
  %i.etw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2605, i64 0
  br label %vec.epilog.vector.body2614

vec.epilog.vector.body2614:                       ; preds = %vec.epilog.vector.body2614, %vec.epilog.ph2612
  %index2615 = phi i64 [ %vec.epilog.resume.val2597, %vec.epilog.ph2612 ], [ %index.next2640, %vec.epilog.vector.body2614 ] ; 3 uses
  %vec.phi2616.a = phi <4 x i32> [ %i.etp, %vec.epilog.ph2612 ], [ %i.eva, %vec.epilog.vector.body2614 ]
  %vec.phi2617.a = phi <4 x i32> [ %i.etq, %vec.epilog.ph2612 ], [ %i.eut, %vec.epilog.vector.body2614 ]
  %vec.phi2618.a = phi <4 x i32> [ %i.etr, %vec.epilog.ph2612 ], [ %i.eum, %vec.epilog.vector.body2614 ]
  %vec.phi2619.a = phi <4 x i32> [ %i.ets, %vec.epilog.ph2612 ], [ %i.euf, %vec.epilog.vector.body2614 ]
  %vec.phi2620.a = phi <4 x i32> [ %i.ett, %vec.epilog.ph2612 ], [ %i.eux, %vec.epilog.vector.body2614 ]
  %vec.phi2621.a = phi <4 x i32> [ %i.etu, %vec.epilog.ph2612 ], [ %i.euq, %vec.epilog.vector.body2614 ]
  %vec.phi2622.a = phi <4 x i32> [ %i.etv, %vec.epilog.ph2612 ], [ %i.euj, %vec.epilog.vector.body2614 ]
  %vec.phi2623 = phi <4 x i32> [ %i.etw, %vec.epilog.ph2612 ], [ %i.euc, %vec.epilog.vector.body2614 ]
  %i.etx = shl i64 %index2615, 2
  %next.gep2624.a = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.etx
  %i.ety = shl i64 %index2615, 3
  %next.gep2625 = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.ety
  %wide.vec2626 = load <16 x i8>, ptr %next.gep2624.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2627.a = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2628.a = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2629.a = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2630 = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.etz = sext <4 x i8> %strided.vec2627.a to <4 x i32> ; 2 uses
  %wide.vec2631 = load <32 x i8>, ptr %next.gep2625, align 1, !tbaa !17 ; 8 uses
  %strided.vec2632.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec2633.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec2634.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec2635.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec2636.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec2637.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec2638.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec2639 = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.eua = sext <4 x i8> %strided.vec2632.a to <4 x i32>
  %i.eub = mul nsw <4 x i32> %i.eua, %i.etz
  %i.euc = add <4 x i32> %i.eub, %vec.phi2623     ; 2 uses
  %i.eud = sext <4 x i8> %strided.vec2633.a to <4 x i32>
  %i.eue = mul nsw <4 x i32> %i.eud, %i.etz
  %i.euf = add <4 x i32> %i.eue, %vec.phi2619.a   ; 2 uses
  %i.eug = sext <4 x i8> %strided.vec2628.a to <4 x i32> ; 2 uses
  %i.euh = sext <4 x i8> %strided.vec2634.a to <4 x i32>
  %i.eui = mul nsw <4 x i32> %i.euh, %i.eug
  %i.euj = add <4 x i32> %i.eui, %vec.phi2622.a   ; 2 uses
  %i.euk = sext <4 x i8> %strided.vec2635.a to <4 x i32>
  %i.eul = mul nsw <4 x i32> %i.euk, %i.eug
  %i.eum = add <4 x i32> %i.eul, %vec.phi2618.a   ; 2 uses
  %i.eun = sext <4 x i8> %strided.vec2629.a to <4 x i32> ; 2 uses
  %i.euo = sext <4 x i8> %strided.vec2636.a to <4 x i32>
  %i.eup = mul nsw <4 x i32> %i.euo, %i.eun
  %i.euq = add <4 x i32> %i.eup, %vec.phi2621.a   ; 2 uses
  %i.eur = sext <4 x i8> %strided.vec2637.a to <4 x i32>
  %i.eus = mul nsw <4 x i32> %i.eur, %i.eun
  %i.eut = add <4 x i32> %i.eus, %vec.phi2617.a   ; 2 uses
  %i.euu = sext <4 x i8> %strided.vec2630 to <4 x i32> ; 2 uses
  %i.euv = sext <4 x i8> %strided.vec2638.a to <4 x i32>
  %i.euw = mul nsw <4 x i32> %i.euv, %i.euu
  %i.eux = add <4 x i32> %i.euw, %vec.phi2620.a   ; 2 uses
  %i.euy = sext <4 x i8> %strided.vec2639 to <4 x i32>
  %i.euz = mul nsw <4 x i32> %i.euy, %i.euu
  %i.eva = add <4 x i32> %i.euz, %vec.phi2616.a   ; 2 uses
  %index.next2640 = add nuw i64 %index2615, 4     ; 2 uses
  %i.evb = icmp eq i64 %index.next2640, %n.vec2613
  br i1 %i.evb, label %vec.epilog.middle.block2641, label %vec.epilog.vector.body2614, !llvm.loop !507

vec.epilog.middle.block2641:                      ; preds = %vec.epilog.vector.body2614
  %i.evc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eva) ; 2 uses
  %i.evd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eut) ; 2 uses
  %i.eve = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eum) ; 2 uses
  %i.evf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.euf) ; 2 uses
  %i.evg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eux) ; 2 uses
  %i.evh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.euq) ; 2 uses
  %i.evi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.euj) ; 2 uses
  %i.evj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.euc) ; 2 uses
  %cmp.n2642 = icmp eq i64 %n.vec2613, %i.erm
  br i1 %cmp.n2642, label %._crit_edge2350.i, label %.lr.ph2349.i.preheader

.lr.ph2349.i.preheader:                           ; preds = %iter.check2608, %vec.epilog.iter.check2610, %vec.epilog.middle.block2641
  %.017972348.i.ph = phi i32 [ 0, %iter.check2608 ], [ %i.eta, %vec.epilog.iter.check2610 ], [ %i.evc, %vec.epilog.middle.block2641 ]
end_hunk_1
begin_hunk_2_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.fca = getelementptr inbounds nuw i8, ptr %.418132365.i, i64 1
  %i.fcb = getelementptr inbounds nuw i8, ptr %.1619842362.i, i64 2 ; 2 uses
  %i.fcc = add nuw nsw i32 %.318082366.i, 1       ; 2 uses
  %exitcond2978.not.i = icmp eq i32 %i.fcc, %8
  br i1 %exitcond2978.not.i, label %._crit_edge2369.i, label %.lr.ph2368.i, !llvm.loop !512

._crit_edge2369.i:                                ; preds = %.lr.ph2368.i, %middle.block2525, %vec.epilog.middle.block2555, %._crit_edge2350.i
  %.161984.lcssa.i = phi ptr [ %.151983.lcssa.i, %._crit_edge2350.i ], [ %i.fbb, %vec.epilog.middle.block2555 ], [ %i.ezi, %middle.block2525 ], [ %i.fcb, %.lr.ph2368.i ] ; 2 uses
  %.41823.lcssa.i = phi i32 [ %i.eyt, %._crit_edge2350.i ], [ %i.fbo, %vec.epilog.middle.block2555 ], [ %i.faw, %middle.block2525 ], [ %i.fbu, %.lr.ph2368.i ]
  %.41818.lcssa.i = phi i32 [ %i.eyx, %._crit_edge2350.i ], [ %i.fbn, %vec.epilog.middle.block2555 ], [ %i.fav, %middle.block2525 ], [ %i.fbz, %.lr.ph2368.i ]
  store i32 %.41823.lcssa.i, ptr %.282375.i, align 4, !tbaa !49
  %i.fcd = getelementptr inbounds nuw i8, ptr %.282375.i, i64 4
  store i32 %.41818.lcssa.i, ptr %i.fcd, align 4, !tbaa !49
  %i.fce = getelementptr inbounds nuw i8, ptr %.282375.i, i64 8 ; 2 uses
  %i.fcf = add nuw nsw i32 %.319662374.i, 2       ; 3 uses
  %i.fcg = or disjoint i32 %i.fcf, 1
  %i.fch = icmp slt i32 %i.fcg, %6
  br i1 %i.fch, label %.lr.ph2376.i, label %.preheader1055.i, !llvm.loop !513

.lr.ph2420.i:                                     ; preds = %.lr.ph2420.i.preheader, %._crit_edge2414.i
  %.292419.i = phi ptr [ %i.fli, %._crit_edge2414.i ], [ %.28.lcssa.i, %.lr.ph2420.i.preheader ] ; 3 uses
  %.419672418.i = phi i32 [ %i.flj, %._crit_edge2414.i ], [ %.31966.lcssa.i, %.lr.ph2420.i.preheader ]
  %.1719852417.i = phi ptr [ %.201988.lcssa.i, %._crit_edge2414.i ], [ %.121980.lcssa.i, %.lr.ph2420.i.preheader ] ; 8 uses
  br i1 %i.ccw, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2420.i
  %i.fci = load i32, ptr %.292419.i, align 4, !tbaa !49
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph2420.i
  %.01793.i = phi i32 [ %i.fci, %bb.bo ], [ 0, %.lr.ph2420.i ] ; 4 uses
  br i1 %i.ccx, label %iter.check2460, label %._crit_edge2386.i

iter.check2460:                                   ; preds = %bb.bp
  br i1 %min.iters.check2419, label %.lr.ph2385.i.preheader, label %vector.main.loop.iter.check2420

vector.main.loop.iter.check2420:                  ; preds = %iter.check2460
  br i1 %min.iters.check2421, label %vec.epilog.ph2464, label %vector.ph2422

vector.ph2422:                                    ; preds = %vector.main.loop.iter.check2420
  %i.fcj = getelementptr i8, ptr %.1719852417.i, i64 %i.cei
  %i.fck = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.01793.i, i64 0
  br label %vector.body2424

vector.body2424:                                  ; preds = %vector.body2424, %vector.ph2422
  %index2425 = phi i64 [ 0, %vector.ph2422 ], [ %index.next2452, %vector.body2424 ] ; 2 uses
  %vec.phi2426 = phi <16 x i32> [ %i.fck, %vector.ph2422 ], [ %i.fdr, %vector.body2424 ]
  %vec.phi2427 = phi <16 x i32> [ zeroinitializer, %vector.ph2422 ], [ %i.fds, %vector.body2424 ]
  %i.fcl = shl i64 %index2425, 2                  ; 3 uses
  %i.fcm = or disjoint i64 %i.fcl, 64             ; 2 uses
  %next.gep2428 = getelementptr i8, ptr %.82425.i, i64 %i.fcl
  %next.gep2429 = getelementptr i8, ptr %.82425.i, i64 %i.fcm
  %next.gep2430 = getelementptr i8, ptr %.1719852417.i, i64 %i.fcl
  %next.gep2431 = getelementptr i8, ptr %.1719852417.i, i64 %i.fcm
  %wide.vec2432 = load <64 x i8>, ptr %next.gep2428, align 1, !tbaa !17 ; 4 uses
  %strided.vec2433 = shufflevector <64 x i8> %wide.vec2432, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2434 = shufflevector <64 x i8> %wide.vec2432, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2435 = shufflevector <64 x i8> %wide.vec2432, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2436 = shufflevector <64 x i8> %wide.vec2432, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2437 = load <64 x i8>, ptr %next.gep2429, align 1, !tbaa !17 ; 4 uses
  %strided.vec2438 = shufflevector <64 x i8> %wide.vec2437, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2439 = shufflevector <64 x i8> %wide.vec2437, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2440 = shufflevector <64 x i8> %wide.vec2437, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2441 = shufflevector <64 x i8> %wide.vec2437, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.fcn = sext <16 x i8> %strided.vec2433 to <16 x i32>
  %i.fco = sext <16 x i8> %strided.vec2438 to <16 x i32>
  %wide.vec2442 = load <64 x i8>, ptr %next.gep2430, align 1, !tbaa !17 ; 4 uses
  %strided.vec2443 = shufflevector <64 x i8> %wide.vec2442, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2444 = shufflevector <64 x i8> %wide.vec2442, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2445 = shufflevector <64 x i8> %wide.vec2442, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2446 = shufflevector <64 x i8> %wide.vec2442, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2447 = load <64 x i8>, ptr %next.gep2431, align 1, !tbaa !17 ; 4 uses
  %strided.vec2448 = shufflevector <64 x i8> %wide.vec2447, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2449 = shufflevector <64 x i8> %wide.vec2447, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2450 = shufflevector <64 x i8> %wide.vec2447, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2451 = shufflevector <64 x i8> %wide.vec2447, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.fcp = zext <16 x i8> %strided.vec2443 to <16 x i32>
  %i.fcq = zext <16 x i8> %strided.vec2448 to <16 x i32>
  %i.fcr = mul nsw <16 x i32> %i.fcp, %i.fcn
  %i.fcs = mul nsw <16 x i32> %i.fcq, %i.fco
  %i.fct = add <16 x i32> %i.fcr, %vec.phi2426
  %i.fcu = add <16 x i32> %i.fcs, %vec.phi2427
  %i.fcv = sext <16 x i8> %strided.vec2434 to <16 x i32>
  %i.fcw = sext <16 x i8> %strided.vec2439 to <16 x i32>
  %i.fcx = zext <16 x i8> %strided.vec2444 to <16 x i32>
  %i.fcy = zext <16 x i8> %strided.vec2449 to <16 x i32>
  %i.fcz = mul nsw <16 x i32> %i.fcx, %i.fcv
  %i.fda = mul nsw <16 x i32> %i.fcy, %i.fcw
  %i.fdb = add <16 x i32> %i.fct, %i.fcz
  %i.fdc = add <16 x i32> %i.fcu, %i.fda
  %i.fdd = sext <16 x i8> %strided.vec2435 to <16 x i32>
  %i.fde = sext <16 x i8> %strided.vec2440 to <16 x i32>
  %i.fdf = zext <16 x i8> %strided.vec2445 to <16 x i32>
  %i.fdg = zext <16 x i8> %strided.vec2450 to <16 x i32>
  %i.fdh = mul nsw <16 x i32> %i.fdf, %i.fdd
  %i.fdi = mul nsw <16 x i32> %i.fdg, %i.fde
  %i.fdj = add <16 x i32> %i.fdb, %i.fdh
  %i.fdk = add <16 x i32> %i.fdc, %i.fdi
  %i.fdl = sext <16 x i8> %strided.vec2436 to <16 x i32>
  %i.fdm = sext <16 x i8> %strided.vec2441 to <16 x i32>
  %i.fdn = zext <16 x i8> %strided.vec2446 to <16 x i32>
  %i.fdo = zext <16 x i8> %strided.vec2451 to <16 x i32>
  %i.fdp = mul nsw <16 x i32> %i.fdn, %i.fdl
  %i.fdq = mul nsw <16 x i32> %i.fdo, %i.fdm
  %i.fdr = add <16 x i32> %i.fdj, %i.fdp          ; 2 uses
  %i.fds = add <16 x i32> %i.fdk, %i.fdq          ; 2 uses
  %index.next2452 = add nuw i64 %index2425, 32    ; 2 uses
  %i.fdt = icmp eq i64 %index.next2452, %n.vec2423
  br i1 %i.fdt, label %middle.block2453, label %vector.body2424, !llvm.loop !514

middle.block2453:                                 ; preds = %vector.body2424
  %bin.rdx2454 = add <16 x i32> %i.fds, %i.fdr
  %i.fdu = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2454) ; 3 uses
  br i1 %cmp.n2455, label %.loopexit, label %vec.epilog.iter.check2462

vec.epilog.iter.check2462:                        ; preds = %middle.block2453
  br i1 %min.epilog.iters.check2463, label %.lr.ph2385.i.preheader, label %vec.epilog.ph2464, !prof !139

vec.epilog.ph2464:                                ; preds = %vector.main.loop.iter.check2420, %vec.epilog.iter.check2462
  %vec.epilog.resume.val2456 = phi i64 [ %n.vec2423, %vec.epilog.iter.check2462 ], [ 0, %vector.main.loop.iter.check2420 ]
  %bc.merge.rdx2458 = phi i32 [ %i.fdu, %vec.epilog.iter.check2462 ], [ %.01793.i, %vector.main.loop.iter.check2420 ]
  %i.fdv = getelementptr i8, ptr %.1719852417.i, i64 %i.cel
  %i.fdw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2458, i64 0
  br label %vec.epilog.vector.body2466

vec.epilog.vector.body2466:                       ; preds = %vec.epilog.vector.body2466, %vec.epilog.ph2464
  %index2467 = phi i64 [ %vec.epilog.resume.val2456, %vec.epilog.ph2464 ], [ %index.next2481, %vec.epilog.vector.body2466 ] ; 2 uses
  %vec.phi2468 = phi <4 x i32> [ %i.fdw, %vec.epilog.ph2464 ], [ %i.fen, %vec.epilog.vector.body2466 ]
  %i.fdx = shl i64 %index2467, 2                  ; 2 uses
  %next.gep2469 = getelementptr i8, ptr %.82425.i, i64 %i.fdx
  %next.gep2470 = getelementptr i8, ptr %.1719852417.i, i64 %i.fdx
  %wide.vec2471 = load <16 x i8>, ptr %next.gep2469, align 1, !tbaa !17 ; 4 uses
  %strided.vec2472 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2473 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2474 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2475 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fdy = sext <4 x i8> %strided.vec2472 to <4 x i32>
  %wide.vec2476 = load <16 x i8>, ptr %next.gep2470, align 1, !tbaa !17 ; 4 uses
  %strided.vec2477 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2478 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2479 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2480 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fdz = zext <4 x i8> %strided.vec2477 to <4 x i32>
  %i.fea = mul nsw <4 x i32> %i.fdz, %i.fdy
  %i.feb = add <4 x i32> %i.fea, %vec.phi2468
  %i.fec = sext <4 x i8> %strided.vec2473 to <4 x i32>
  %i.fed = zext <4 x i8> %strided.vec2478 to <4 x i32>
  %i.fee = mul nsw <4 x i32> %i.fed, %i.fec
  %i.fef = add <4 x i32> %i.feb, %i.fee
  %i.feg = sext <4 x i8> %strided.vec2474 to <4 x i32>
  %i.feh = zext <4 x i8> %strided.vec2479 to <4 x i32>
  %i.fei = mul nsw <4 x i32> %i.feh, %i.feg
  %i.fej = add <4 x i32> %i.fef, %i.fei
  %i.fek = sext <4 x i8> %strided.vec2475 to <4 x i32>
  %i.fel = zext <4 x i8> %strided.vec2480 to <4 x i32>
  %i.fem = mul nsw <4 x i32> %i.fel, %i.fek
  %i.fen = add <4 x i32> %i.fej, %i.fem           ; 2 uses
  %index.next2481 = add nuw i64 %index2467, 4     ; 2 uses
  %i.feo = icmp eq i64 %index.next2481, %n.vec2465
  br i1 %i.feo, label %vec.epilog.middle.block2482, label %vec.epilog.vector.body2466, !llvm.loop !515

vec.epilog.middle.block2482:                      ; preds = %vec.epilog.vector.body2466
  %i.fep = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fen) ; 2 uses
  br i1 %cmp.n2483, label %.loopexit, label %.lr.ph2385.i.preheader

.lr.ph2385.i.preheader:                           ; preds = %iter.check2460, %vec.epilog.iter.check2462, %vec.epilog.middle.block2482
  %.017862383.i.ph = phi i32 [ 0, %iter.check2460 ], [ %i.ceh, %vec.epilog.iter.check2462 ], [ %i.cek, %vec.epilog.middle.block2482 ]
  %.017892382.i.ph = phi ptr [ %.82425.i, %iter.check2460 ], [ %i.eif, %vec.epilog.iter.check2462 ], [ %i.eig, %vec.epilog.middle.block2482 ]
  %.117942381.i.ph = phi i32 [ %.01793.i, %iter.check2460 ], [ %i.fdu, %vec.epilog.iter.check2462 ], [ %i.fep, %vec.epilog.middle.block2482 ]
  %.1819862380.i.ph = phi ptr [ %.1719852417.i, %iter.check2460 ], [ %i.fcj, %vec.epilog.iter.check2462 ], [ %i.fdv, %vec.epilog.middle.block2482 ]
  br label %.lr.ph2385.i

.lr.ph2385.i:                                     ; preds = %.lr.ph2385.i.preheader, %.lr.ph2385.i
  %.017862383.i = phi i32 [ %i.fey, %.lr.ph2385.i ], [ %.017862383.i.ph, %.lr.ph2385.i.preheader ]
  %.017892382.i = phi ptr [ %i.few, %.lr.ph2385.i ], [ %.017892382.i.ph, %.lr.ph2385.i.preheader ] ; 2 uses
  %.117942381.i = phi i32 [ %op.rdx2845, %.lr.ph2385.i ], [ %.117942381.i.ph, %.lr.ph2385.i.preheader ]
  %.1819862380.i = phi ptr [ %i.fex, %.lr.ph2385.i ], [ %.1819862380.i.ph, %.lr.ph2385.i.preheader ] ; 2 uses
  %i.feq = load <4 x i8>, ptr %.017892382.i, align 1, !tbaa !17
  %i.fer = sext <4 x i8> %i.feq to <4 x i32>
  %i.fes = load <4 x i8>, ptr %.1819862380.i, align 1, !tbaa !17
  %i.fet = zext <4 x i8> %i.fes to <4 x i32>
  %i.feu = mul nsw <4 x i32> %i.fet, %i.fer
  %i.fev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.feu)
  %op.rdx2845 = add i32 %i.fev, %.117942381.i     ; 2 uses
  %i.few = getelementptr inbounds nuw i8, ptr %.017892382.i, i64 4
  %i.fex = getelementptr inbounds nuw i8, ptr %.1819862380.i, i64 4
  %i.fey = add nuw nsw i32 %.017862383.i, 4       ; 2 uses
  %i.fez = or disjoint i32 %i.fey, 3
  %i.ffa = icmp slt i32 %i.fez, %8
  br i1 %i.ffa, label %.lr.ph2385.i, label %.loopexit, !llvm.loop !516

.loopexit:                                        ; preds = %.lr.ph2385.i, %vec.epilog.middle.block2482, %middle.block2453
  %.lcssa1427 = phi i32 [ %i.fep, %vec.epilog.middle.block2482 ], [ %i.fdu, %middle.block2453 ], [ %op.rdx2845, %.lr.ph2385.i ]
  %i.ffb = getelementptr i8, ptr %.1719852417.i, i64 %i.cdi
  %scevgep2979.i = getelementptr i8, ptr %i.ffb, i64 4
  %i.ffc = load i32, ptr %indvars.iv914, align 4, !tbaa !49
  %i.ffd = sub nsw i32 %.lcssa1427, %i.ffc
  br label %._crit_edge2386.i

._crit_edge2386.i:                                ; preds = %.loopexit, %bb.bp
  %.01786.lcssa3391.i = phi i32 [ %i.cdb, %.loopexit ], [ 0, %bb.bp ] ; 6 uses
  %.181986.lcssa3387.i = phi ptr [ %scevgep2979.i, %.loopexit ], [ %.1719852417.i, %bb.bp ] ; 7 uses
  %.21795.i = phi i32 [ %i.ffd, %.loopexit ], [ %.01793.i, %bb.bp ]
  %.11790.i = phi ptr [ %i.eie, %.loopexit ], [ %.82425.i, %bb.bp ] ; 7 uses
  %i.ffe = or disjoint i32 %.01786.lcssa3391.i, 3
  %i.fff = icmp slt i32 %i.ffe, %8
  br i1 %i.fff, label %iter.check2385, label %._crit_edge2400.i

iter.check2385:                                   ; preds = %._crit_edge2386.i
  %i.ffg = sub i32 %9, %.01786.lcssa3391.i        ; 3 uses
  %i.ffh = lshr i32 %i.ffg, 2
  %narrow2844 = add nuw nsw i32 %i.ffh, 1
  %i.ffi = zext nneg i32 %narrow2844 to i64       ; 5 uses
  %min.iters.check2332 = icmp ult i32 %i.ffg, 12
  br i1 %min.iters.check2332, label %.lr.ph2399.i.preheader, label %vector.main.loop.iter.check2333

vector.main.loop.iter.check2333:                  ; preds = %iter.check2385
  %min.iters.check2334 = icmp ult i32 %i.ffg, 124
  br i1 %min.iters.check2334, label %vec.epilog.ph2389, label %vector.ph2335

vector.ph2335:                                    ; preds = %vector.main.loop.iter.check2333
  %i.ffj = and i64 %i.ffi, 28
  %n.vec2336 = and i64 %i.ffi, 2147483616         ; 5 uses
  %i.ffk = trunc nuw nsw i64 %n.vec2336 to i32
  %i.ffl = shl i32 %i.ffk, 2
  %i.ffm = add i32 %.01786.lcssa3391.i, %i.ffl    ; 2 uses
  %i.ffn = shl nuw nsw i64 %n.vec2336, 2          ; 2 uses
  %i.ffo = getelementptr i8, ptr %.11790.i, i64 %i.ffn ; 2 uses
  %i.ffp = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.ffn ; 2 uses
  br label %vector.body2337

vector.body2337:                                  ; preds = %vector.body2337, %vector.ph2335
  %index2338 = phi i64 [ 0, %vector.ph2335 ], [ %index.next2371, %vector.body2337 ] ; 2 uses
  %vec.phi2339 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgw, %vector.body2337 ]
  %vec.phi2340 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgx, %vector.body2337 ]
  %vec.phi2341 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgo, %vector.body2337 ]
  %vec.phi2342 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgp, %vector.body2337 ]
  %vec.phi2343 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgg, %vector.body2337 ]
  %vec.phi2344 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgh, %vector.body2337 ]
  %vec.phi2345 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.ffy, %vector.body2337 ]
  %vec.phi2346 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.ffz, %vector.body2337 ]
  %i.ffq = shl i64 %index2338, 2                  ; 3 uses
  %i.ffr = or disjoint i64 %i.ffq, 64             ; 2 uses
  %next.gep2347 = getelementptr i8, ptr %.11790.i, i64 %i.ffq
  %next.gep2348 = getelementptr i8, ptr %.11790.i, i64 %i.ffr
  %next.gep2349 = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.ffq
  %next.gep2350 = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.ffr
  %wide.vec2351 = load <64 x i8>, ptr %next.gep2347, align 1, !tbaa !17 ; 4 uses
  %strided.vec2352 = shufflevector <64 x i8> %wide.vec2351, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2353 = shufflevector <64 x i8> %wide.vec2351, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2354 = shufflevector <64 x i8> %wide.vec2351, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2355 = shufflevector <64 x i8> %wide.vec2351, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2356 = load <64 x i8>, ptr %next.gep2348, align 1, !tbaa !17 ; 4 uses
  %strided.vec2357 = shufflevector <64 x i8> %wide.vec2356, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2358 = shufflevector <64 x i8> %wide.vec2356, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2359 = shufflevector <64 x i8> %wide.vec2356, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2360 = shufflevector <64 x i8> %wide.vec2356, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ffs = sext <16 x i8> %strided.vec2352 to <16 x i32>
  %i.fft = sext <16 x i8> %strided.vec2357 to <16 x i32>
  %wide.vec2361 = load <64 x i8>, ptr %next.gep2349, align 1, !tbaa !17 ; 4 uses
  %strided.vec2362 = shufflevector <64 x i8> %wide.vec2361, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2363 = shufflevector <64 x i8> %wide.vec2361, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2364 = shufflevector <64 x i8> %wide.vec2361, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2365 = shufflevector <64 x i8> %wide.vec2361, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2366 = load <64 x i8>, ptr %next.gep2350, align 1, !tbaa !17 ; 4 uses
  %strided.vec2367 = shufflevector <64 x i8> %wide.vec2366, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2368 = shufflevector <64 x i8> %wide.vec2366, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2369 = shufflevector <64 x i8> %wide.vec2366, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2370 = shufflevector <64 x i8> %wide.vec2366, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ffu = sext <16 x i8> %strided.vec2362 to <16 x i32>
  %i.ffv = sext <16 x i8> %strided.vec2367 to <16 x i32>
  %i.ffw = mul nsw <16 x i32> %i.ffu, %i.ffs
  %i.ffx = mul nsw <16 x i32> %i.ffv, %i.fft
  %i.ffy = add <16 x i32> %i.ffw, %vec.phi2345    ; 2 uses
  %i.ffz = add <16 x i32> %i.ffx, %vec.phi2346    ; 2 uses
  %i.fga = sext <16 x i8> %strided.vec2353 to <16 x i32>
  %i.fgb = sext <16 x i8> %strided.vec2358 to <16 x i32>
  %i.fgc = sext <16 x i8> %strided.vec2363 to <16 x i32>
  %i.fgd = sext <16 x i8> %strided.vec2368 to <16 x i32>
  %i.fge = mul nsw <16 x i32> %i.fgc, %i.fga
  %i.fgf = mul nsw <16 x i32> %i.fgd, %i.fgb
  %i.fgg = add <16 x i32> %i.fge, %vec.phi2343    ; 2 uses
  %i.fgh = add <16 x i32> %i.fgf, %vec.phi2344    ; 2 uses
  %i.fgi = sext <16 x i8> %strided.vec2354 to <16 x i32>
  %i.fgj = sext <16 x i8> %strided.vec2359 to <16 x i32>
  %i.fgk = sext <16 x i8> %strided.vec2364 to <16 x i32>
  %i.fgl = sext <16 x i8> %strided.vec2369 to <16 x i32>
  %i.fgm = mul nsw <16 x i32> %i.fgk, %i.fgi
  %i.fgn = mul nsw <16 x i32> %i.fgl, %i.fgj
  %i.fgo = add <16 x i32> %i.fgm, %vec.phi2341    ; 2 uses
  %i.fgp = add <16 x i32> %i.fgn, %vec.phi2342    ; 2 uses
  %i.fgq = sext <16 x i8> %strided.vec2355 to <16 x i32>
  %i.fgr = sext <16 x i8> %strided.vec2360 to <16 x i32>
  %i.fgs = sext <16 x i8> %strided.vec2365 to <16 x i32>
  %i.fgt = sext <16 x i8> %strided.vec2370 to <16 x i32>
  %i.fgu = mul nsw <16 x i32> %i.fgs, %i.fgq
  %i.fgv = mul nsw <16 x i32> %i.fgt, %i.fgr
  %i.fgw = add <16 x i32> %i.fgu, %vec.phi2339    ; 2 uses
  %i.fgx = add <16 x i32> %i.fgv, %vec.phi2340    ; 2 uses
  %index.next2371 = add nuw i64 %index2338, 32    ; 2 uses
  %i.fgy = icmp eq i64 %index.next2371, %n.vec2336
  br i1 %i.fgy, label %middle.block2372, label %vector.body2337, !llvm.loop !517

middle.block2372:                                 ; preds = %vector.body2337
  %bin.rdx2373 = add <16 x i32> %i.fgx, %i.fgw
  %i.fgz = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2373) ; 2 uses
  %bin.rdx2374 = add <16 x i32> %i.fgp, %i.fgo
  %i.fha = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2374) ; 2 uses
  %bin.rdx2375 = add <16 x i32> %i.fgh, %i.fgg
  %i.fhb = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2375) ; 2 uses
  %bin.rdx2376 = add <16 x i32> %i.ffz, %i.ffy
  %i.fhc = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2376) ; 2 uses
  %cmp.n2377 = icmp eq i64 %n.vec2336, %i.ffi
  %i.fhd = insertelement <4 x i32> poison, i32 %i.fhc, i64 0
  %i.fhe = insertelement <4 x i32> %i.fhd, i32 %i.fhb, i64 1
  %i.fhf = insertelement <4 x i32> %i.fhe, i32 %i.fha, i64 2
  %i.fhg = insertelement <4 x i32> %i.fhf, i32 %i.fgz, i64 3 ; 2 uses
  br i1 %cmp.n2377, label %._crit_edge2400.i, label %vec.epilog.iter.check2387

vec.epilog.iter.check2387:                        ; preds = %middle.block2372
  %min.epilog.iters.check2388 = icmp eq i64 %i.ffj, 0
  br i1 %min.epilog.iters.check2388, label %.lr.ph2399.i.preheader, label %vec.epilog.ph2389, !prof !139

vec.epilog.ph2389:                                ; preds = %vector.main.loop.iter.check2333, %vec.epilog.iter.check2387
  %vec.epilog.resume.val2378 = phi i64 [ %n.vec2336, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2379 = phi i32 [ %i.fgz, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2380 = phi i32 [ %i.fha, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2381 = phi i32 [ %i.fhb, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2382 = phi i32 [ %i.fhc, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %n.vec2390 = and i64 %i.ffi, 2147483644         ; 4 uses
  %i.fhh = trunc nuw nsw i64 %n.vec2390 to i32
  %i.fhi = shl i32 %i.fhh, 2
  %i.fhj = add i32 %.01786.lcssa3391.i, %i.fhi    ; 2 uses
  %i.fhk = shl nuw nsw i64 %n.vec2390, 2          ; 2 uses
  %i.fhl = getelementptr i8, ptr %.11790.i, i64 %i.fhk ; 2 uses
  %i.fhm = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.fhk ; 2 uses
  %i.fhn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2379, i64 0
  %i.fho = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2380, i64 0
  %i.fhp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2381, i64 0
  %i.fhq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2382, i64 0
  br label %vec.epilog.vector.body2391

vec.epilog.vector.body2391:                       ; preds = %vec.epilog.vector.body2391, %vec.epilog.ph2389
  %index2392 = phi i64 [ %vec.epilog.resume.val2378, %vec.epilog.ph2389 ], [ %index.next2409, %vec.epilog.vector.body2391 ] ; 2 uses
  %vec.phi2393 = phi <4 x i32> [ %i.fhn, %vec.epilog.ph2389 ], [ %i.fih, %vec.epilog.vector.body2391 ]
  %vec.phi2394 = phi <4 x i32> [ %i.fho, %vec.epilog.ph2389 ], [ %i.fid, %vec.epilog.vector.body2391 ]
  %vec.phi2395 = phi <4 x i32> [ %i.fhp, %vec.epilog.ph2389 ], [ %i.fhz, %vec.epilog.vector.body2391 ]
  %vec.phi2396 = phi <4 x i32> [ %i.fhq, %vec.epilog.ph2389 ], [ %i.fhv, %vec.epilog.vector.body2391 ]
  %i.fhr = shl i64 %index2392, 2                  ; 2 uses
  %next.gep2397 = getelementptr i8, ptr %.11790.i, i64 %i.fhr
  %next.gep2398 = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.fhr
  %wide.vec2399 = load <16 x i8>, ptr %next.gep2397, align 1, !tbaa !17 ; 4 uses
  %strided.vec2400 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2401 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2402 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2403 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fhs = sext <4 x i8> %strided.vec2400 to <4 x i32>
  %wide.vec2404 = load <16 x i8>, ptr %next.gep2398, align 1, !tbaa !17 ; 4 uses
  %strided.vec2405 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2406 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2407 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2408 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fht = sext <4 x i8> %strided.vec2405 to <4 x i32>
  %i.fhu = mul nsw <4 x i32> %i.fht, %i.fhs
  %i.fhv = add <4 x i32> %i.fhu, %vec.phi2396     ; 2 uses
  %i.fhw = sext <4 x i8> %strided.vec2401 to <4 x i32>
  %i.fhx = sext <4 x i8> %strided.vec2406 to <4 x i32>
  %i.fhy = mul nsw <4 x i32> %i.fhx, %i.fhw
  %i.fhz = add <4 x i32> %i.fhy, %vec.phi2395     ; 2 uses
  %i.fia = sext <4 x i8> %strided.vec2402 to <4 x i32>
  %i.fib = sext <4 x i8> %strided.vec2407 to <4 x i32>
  %i.fic = mul nsw <4 x i32> %i.fib, %i.fia
  %i.fid = add <4 x i32> %i.fic, %vec.phi2394     ; 2 uses
  %i.fie = sext <4 x i8> %strided.vec2403 to <4 x i32>
  %i.fif = sext <4 x i8> %strided.vec2408 to <4 x i32>
  %i.fig = mul nsw <4 x i32> %i.fif, %i.fie
  %i.fih = add <4 x i32> %i.fig, %vec.phi2393     ; 2 uses
  %index.next2409 = add nuw i64 %index2392, 4     ; 2 uses
  %i.fii = icmp eq i64 %index.next2409, %n.vec2390
  br i1 %i.fii, label %vec.epilog.middle.block2410, label %vec.epilog.vector.body2391, !llvm.loop !518

vec.epilog.middle.block2410:                      ; preds = %vec.epilog.vector.body2391
  %i.fij = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fih)
  %i.fik = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fid)
  %i.fil = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fhz)
  %i.fim = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fhv)
  %cmp.n2411 = icmp eq i64 %n.vec2390, %i.ffi
  %i.fin = insertelement <4 x i32> poison, i32 %i.fim, i64 0
  %i.fio = insertelement <4 x i32> %i.fin, i32 %i.fil, i64 1
  %i.fip = insertelement <4 x i32> %i.fio, i32 %i.fik, i64 2
  %i.fiq = insertelement <4 x i32> %i.fip, i32 %i.fij, i64 3 ; 2 uses
  br i1 %cmp.n2411, label %._crit_edge2400.i, label %.lr.ph2399.i.preheader

.lr.ph2399.i.preheader:                           ; preds = %iter.check2385, %vec.epilog.iter.check2387, %vec.epilog.middle.block2410
  %.117872393.i.ph = phi i32 [ %.01786.lcssa3391.i, %iter.check2385 ], [ %i.ffm, %vec.epilog.iter.check2387 ], [ %i.fhj, %vec.epilog.middle.block2410 ]
  %.217912392.i.ph = phi ptr [ %.11790.i, %iter.check2385 ], [ %i.ffo, %vec.epilog.iter.check2387 ], [ %i.fhl, %vec.epilog.middle.block2410 ]
  %.1919872391.i.ph = phi ptr [ %.181986.lcssa3387.i, %iter.check2385 ], [ %i.ffp, %vec.epilog.iter.check2387 ], [ %i.fhm, %vec.epilog.middle.block2410 ]
  %.ph = phi <4 x i32> [ zeroinitializer, %iter.check2385 ], [ %i.fhg, %vec.epilog.iter.check2387 ], [ %i.fiq, %vec.epilog.middle.block2410 ]
  br label %.lr.ph2399.i

.lr.ph2399.i:                                     ; preds = %.lr.ph2399.i.preheader, %.lr.ph2399.i
  %.117872393.i = phi i32 [ %i.fja, %.lr.ph2399.i ], [ %.117872393.i.ph, %.lr.ph2399.i.preheader ]
  %.217912392.i = phi ptr [ %i.fiy, %.lr.ph2399.i ], [ %.217912392.i.ph, %.lr.ph2399.i.preheader ] ; 2 uses
  %.1919872391.i = phi ptr [ %i.fiz, %.lr.ph2399.i ], [ %.1919872391.i.ph, %.lr.ph2399.i.preheader ] ; 2 uses
  %i.fir = phi <4 x i32> [ %i.fix, %.lr.ph2399.i ], [ %.ph, %.lr.ph2399.i.preheader ]
  %i.fis = load <4 x i8>, ptr %.217912392.i, align 1, !tbaa !17
  %i.fit = sext <4 x i8> %i.fis to <4 x i32>
  %i.fiu = load <4 x i8>, ptr %.1919872391.i, align 1, !tbaa !17
  %i.fiv = sext <4 x i8> %i.fiu to <4 x i32>
  %i.fiw = mul nsw <4 x i32> %i.fiv, %i.fit
end_hunk_2
