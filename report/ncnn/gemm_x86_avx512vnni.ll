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
  br i1 %niter3466.ncmp.1.not, label %.unr-lcssa3456, label %.lr.ph1971.i, !llvm.loop !444

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
  %i.cay = load i16, ptr %.1820681979.i, align 2, !tbaa !524
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
  br i1 %i.cbj, label %.lr.ph1981.i, label %.preheader1072.i, !llvm.loop !445

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
  br i1 %exitcond2957.not.i.1, label %._crit_edge1990.i, label %.lr.ph1989.i, !llvm.loop !446

._crit_edge1990.i:                                ; preds = %.lr.ph1989.i.prol.loopexit, %.lr.ph1989.i, %.preheader1072.i
  %.lcssa1174.i = phi <4 x i32> [ %.lcssa1173.i, %.preheader1072.i ], [ %.lcssa3161.unr, %.lr.ph1989.i.prol.loopexit ], [ %i.cci, %.lr.ph1989.i ]
  %.192069.lcssa.i = phi ptr [ %.182068.lcssa.i, %.preheader1072.i ], [ %.lcssa3160.unr, %.lr.ph1989.i.prol.loopexit ], [ %i.cck, %.lr.ph1989.i ]
  store <4 x i32> %.lcssa1174.i, ptr %.171995.i, align 16, !tbaa !17
  %i.ccm = getelementptr inbounds nuw i8, ptr %.171995.i, i64 16 ; 2 uses
  %i.ccn = add nuw nsw i32 %.420741993.i, 1       ; 2 uses
  %exitcond2958.not.i = icmp eq i32 %i.ccn, %6
  br i1 %exitcond2958.not.i, label %._crit_edge1997.i, label %.lr.ph1996.i, !llvm.loop !447

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
  br i1 %i.ccr, label %.preheader1081.i, label %.preheader1071.i, !llvm.loop !448

.preheader1070.i:                                 ; preds = %._crit_edge2206.i, %.preheader1070.lr.ph.i
  %indvars.iv907 = phi ptr [ %scevgep908, %._crit_edge2206.i ], [ %scevgep906, %.preheader1070.lr.ph.i ] ; 4 uses
  %indvars.iv2967.i = phi ptr [ %scevgep2968.i, %._crit_edge2206.i ], [ %scevgep2966.i, %.preheader1070.lr.ph.i ] ; 5 uses
  %.62210.i = phi ptr [ %spec.select2230.i, %._crit_edge2206.i ], [ %.4.lcssa.i, %.preheader1070.lr.ph.i ] ; 22 uses
  %.182209.i = phi ptr [ %.23.lcssa.i, %._crit_edge2206.i ], [ %.12.lcssa.i, %.preheader1070.lr.ph.i ] ; 2 uses
  %.318372208.i = phi i32 [ %i.dvl, %._crit_edge2206.i ], [ %.21836.lcssa.i, %.preheader1070.lr.ph.i ]
  br i1 %i.bgg, label %.lr.ph2037.i, label %.preheader1069.i

.preheader1060.i:                                 ; preds = %._crit_edge2206.i, %.preheader1071.i
  %.31837.lcssa.i = phi i32 [ %.21836.lcssa.i, %.preheader1071.i ], [ %i.dvl, %._crit_edge2206.i ] ; 2 uses
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
  %i.cdn = lshr i64 %i.cdd, 2
  %i.cdo = add nuw nsw i64 %i.cdn, 1              ; 10 uses
  %i.cdp = add i32 %8, -2
  %i.cdq = add i32 %8, -4                         ; 4 uses
  %i.cdr = lshr i32 %i.cdq, 2
  %i.cds = add nuw nsw i32 %i.cdr, 1              ; 6 uses
  %xtraiter3504 = and i32 %i.cds, 3               ; 3 uses
  %i.cdt = icmp ult i32 %i.cdq, 12
  %unroll_iter3514 = and i32 %i.cds, 2147483644
  %lcmp.mod3508.not = icmp eq i32 %xtraiter3504, 0
  %lcmp.mod3513 = icmp ne i32 %xtraiter3504, 0
  %xtraiter3520 = and i32 %i.cds, 3               ; 3 uses
  %i.cdu = icmp ult i32 %i.cdq, 12
  %unroll_iter3529 = and i32 %i.cds, 2147483644
  %lcmp.mod3524.not = icmp eq i32 %xtraiter3520, 0
  %lcmp.mod3528 = icmp ne i32 %xtraiter3520, 0
  %xtraiter3535 = and i32 %i.cds, 3               ; 3 uses
  %i.cdv = icmp ult i32 %i.cdq, 12
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
  %i.cew = load double, ptr %.021422006.i, align 8, !tbaa !522
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
  br i1 %i.cfj, label %.lr.ph2009.i, label %bb.av, !llvm.loop !449

bb.av:                                            ; preds = %.lr.ph2009.i
  %i.cfk = getelementptr i8, ptr %.021172035.i, i64 %i.bgw
  %scevgep905 = getelementptr i8, ptr %i.cfk, i64 64
  %i.cfl = load double, ptr %i.cff, align 8, !tbaa !522
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
  br i1 %i.cgo, label %.lr.ph2020.i, label %.preheader1065.i, !llvm.loop !450

.lr.ph2029.i:                                     ; preds = %.preheader1065.i, %.lr.ph2029.i
  %.321202028.i = phi ptr [ %i.chh, %.lr.ph2029.i ], [ %.22119.lcssa.i, %.preheader1065.i ] ; 2 uses
  %.321452027.i = phi ptr [ %i.chg, %.lr.ph2029.i ], [ %.22144.lcssa.i, %.preheader1065.i ] ; 2 uses
  %.221482026.i = phi i32 [ %i.chi, %.lr.ph2029.i ], [ %.12147.lcssa.i, %.preheader1065.i ]
  %i.cgp = phi <16 x i32> [ %i.chf, %.lr.ph2029.i ], [ %.lcssa1114.i, %.preheader1065.i ]
  %i.cgq = phi <16 x i32> [ %i.chc, %.lr.ph2029.i ], [ %.lcssa1115.i, %.preheader1065.i ]
  %i.cgr = load i16, ptr %.321452027.i, align 2, !tbaa !524
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
  br i1 %exitcond2959.not.i, label %._crit_edge2030.i, label %.lr.ph2029.i, !llvm.loop !451

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
  br i1 %i.chn, label %.lr.ph2037.i, label %.preheader1069.i, !llvm.loop !452

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
  %i.ejo = zext <16 x i8> %strided.vec2777.a to <16 x i32>
  %i.ejp = zext <16 x i8> %strided.vec2786.a to <16 x i32>
  %i.ejq = mul nsw <16 x i32> %i.ejo, %i.ejm
  %i.ejr = mul nsw <16 x i32> %i.ejp, %i.ejn
  %i.ejs = add <16 x i32> %i.ejq, %vec.phi2760.a
  %i.ejt = add <16 x i32> %i.ejr, %vec.phi2761
  %i.eju = sext <16 x i8> %strided.vec2768.a to <16 x i32> ; 2 uses
  %i.ejv = sext <16 x i8> %strided.vec2773.a to <16 x i32> ; 2 uses
  %i.ejw = zext <16 x i8> %strided.vec2778.a to <16 x i32>
  %i.ejx = zext <16 x i8> %strided.vec2787.a to <16 x i32>
  %i.ejy = mul nsw <16 x i32> %i.ejw, %i.eju
  %i.ejz = mul nsw <16 x i32> %i.ejx, %i.ejv
  %i.eka = add <16 x i32> %i.ejs, %i.ejy
  %i.ekb = add <16 x i32> %i.ejt, %i.ejz
  %i.ekc = sext <16 x i8> %strided.vec2769.a to <16 x i32> ; 2 uses
  %i.ekd = sext <16 x i8> %strided.vec2774.a to <16 x i32> ; 2 uses
  %i.eke = zext <16 x i8> %strided.vec2779.a to <16 x i32>
  %i.ekf = zext <16 x i8> %strided.vec2788.a to <16 x i32>
  %i.ekg = mul nsw <16 x i32> %i.eke, %i.ekc
  %i.ekh = mul nsw <16 x i32> %i.ekf, %i.ekd
  %i.eki = add <16 x i32> %i.eka, %i.ekg
  %i.ekj = add <16 x i32> %i.ekb, %i.ekh
  %i.ekk = sext <16 x i8> %strided.vec2770 to <16 x i32> ; 2 uses
  %i.ekl = sext <16 x i8> %strided.vec2775 to <16 x i32> ; 2 uses
  %i.ekm = zext <16 x i8> %strided.vec2780.a to <16 x i32>
  %i.ekn = zext <16 x i8> %strided.vec2789.a to <16 x i32>
  %i.eko = mul nsw <16 x i32> %i.ekm, %i.ekk
  %i.ekp = mul nsw <16 x i32> %i.ekn, %i.ekl
  %i.ekq = add <16 x i32> %i.eki, %i.eko          ; 2 uses
  %i.ekr = add <16 x i32> %i.ekj, %i.ekp          ; 2 uses
  %i.eks = zext <16 x i8> %strided.vec2781.a to <16 x i32>
  %i.ekt = zext <16 x i8> %strided.vec2790.a to <16 x i32>
  %i.eku = mul nsw <16 x i32> %i.eks, %i.ejm
  %i.ekv = mul nsw <16 x i32> %i.ekt, %i.ejn
  %i.ekw = add <16 x i32> %i.eku, %vec.phi2758.a
  %i.ekx = add <16 x i32> %i.ekv, %vec.phi2759.a
  %i.eky = zext <16 x i8> %strided.vec2782.a to <16 x i32>
  %i.ekz = zext <16 x i8> %strided.vec2791.a to <16 x i32>
  %i.ela = mul nsw <16 x i32> %i.eky, %i.eju
  %i.elb = mul nsw <16 x i32> %i.ekz, %i.ejv
  %i.elc = add <16 x i32> %i.ekw, %i.ela
  %i.eld = add <16 x i32> %i.ekx, %i.elb
  %i.ele = zext <16 x i8> %strided.vec2783.a to <16 x i32>
  %i.elf = zext <16 x i8> %strided.vec2792.a to <16 x i32>
  %i.elg = mul nsw <16 x i32> %i.ele, %i.ekc
  %i.elh = mul nsw <16 x i32> %i.elf, %i.ekd
  %i.eli = add <16 x i32> %i.elc, %i.elg
  %i.elj = add <16 x i32> %i.eld, %i.elh
  %i.elk = zext <16 x i8> %strided.vec2784 to <16 x i32>
  %i.ell = zext <16 x i8> %strided.vec2793 to <16 x i32>
  %i.elm = mul nsw <16 x i32> %i.elk, %i.ekk
  %i.eln = mul nsw <16 x i32> %i.ell, %i.ekl
  %i.elo = add <16 x i32> %i.eli, %i.elm          ; 2 uses
  %i.elp = add <16 x i32> %i.elj, %i.eln          ; 2 uses
  %index.next2794 = add nuw i64 %index2757, 32    ; 2 uses
  %i.elq = icmp eq i64 %index.next2794, %n.vec2755
  br i1 %i.elq, label %middle.block2795, label %vector.body2756, !llvm.loop !497

middle.block2795:                                 ; preds = %vector.body2756
  %bin.rdx2796.a = add <16 x i32> %i.elp, %i.elo
  %i.elr = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2796.a) ; 3 uses
  %bin.rdx2797 = add <16 x i32> %i.ekr, %i.ekq
  %i.els = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2797) ; 3 uses
  br i1 %cmp.n2798, label %.loopexit2838, label %vec.epilog.iter.check2806

vec.epilog.iter.check2806:                        ; preds = %middle.block2795
  br i1 %min.epilog.iters.check2807, label %.lr.ph2319.i.preheader, label %vec.epilog.ph2808, !prof !26

vec.epilog.ph2808:                                ; preds = %vector.main.loop.iter.check2752, %vec.epilog.iter.check2806
  %vec.epilog.resume.val2799 = phi i64 [ %n.vec2755, %vec.epilog.iter.check2806 ], [ 0, %vector.main.loop.iter.check2752 ]
  %bc.merge.rdx2801.a = phi i32 [ %i.elr, %vec.epilog.iter.check2806 ], [ %.01814.i, %vector.main.loop.iter.check2752 ]
  %bc.merge.rdx2802 = phi i32 [ %i.els, %vec.epilog.iter.check2806 ], [ %.01819.i, %vector.main.loop.iter.check2752 ]
  %i.elt = getelementptr i8, ptr %.1219802373.i, i64 %i.cee
  %i.elu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2801.a, i64 0
  %i.elv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2802, i64 0
  br label %vec.epilog.vector.body2810

vec.epilog.vector.body2810:                       ; preds = %vec.epilog.vector.body2810, %vec.epilog.ph2808
  %index2811 = phi i64 [ %vec.epilog.resume.val2799, %vec.epilog.ph2808 ], [ %index.next2830, %vec.epilog.vector.body2810 ] ; 3 uses
  %vec.phi2812.a = phi <4 x i32> [ %i.elu, %vec.epilog.ph2808 ], [ %i.emz, %vec.epilog.vector.body2810 ]
  %vec.phi2813 = phi <4 x i32> [ %i.elv, %vec.epilog.ph2808 ], [ %i.emn, %vec.epilog.vector.body2810 ]
  %i.elw = shl i64 %index2811, 2
  %next.gep2814.a = getelementptr i8, ptr %.82425.i, i64 %i.elw
  %i.elx = shl i64 %index2811, 3
  %next.gep2815 = getelementptr i8, ptr %.1219802373.i, i64 %i.elx
  %wide.vec2816 = load <16 x i8>, ptr %next.gep2814.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2817.a = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2818.a = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2819.a = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2820 = shufflevector <16 x i8> %wide.vec2816, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ely = sext <4 x i8> %strided.vec2817.a to <4 x i32> ; 2 uses
  %wide.vec2821 = load <32 x i8>, ptr %next.gep2815, align 1, !tbaa !17 ; 8 uses
  %strided.vec2822.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec2823.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec2824.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec2825.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec2826.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec2827.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec2828.a = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec2829 = shufflevector <32 x i8> %wide.vec2821, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.elz = zext <4 x i8> %strided.vec2822.a to <4 x i32>
  %i.ema = mul nsw <4 x i32> %i.elz, %i.ely
  %i.emb = add <4 x i32> %i.ema, %vec.phi2813
  %i.emc = sext <4 x i8> %strided.vec2818.a to <4 x i32> ; 2 uses
  %i.emd = zext <4 x i8> %strided.vec2823.a to <4 x i32>
  %i.eme = mul nsw <4 x i32> %i.emd, %i.emc
  %i.emf = add <4 x i32> %i.emb, %i.eme
  %i.emg = sext <4 x i8> %strided.vec2819.a to <4 x i32> ; 2 uses
  %i.emh = zext <4 x i8> %strided.vec2824.a to <4 x i32>
  %i.emi = mul nsw <4 x i32> %i.emh, %i.emg
  %i.emj = add <4 x i32> %i.emf, %i.emi
  %i.emk = sext <4 x i8> %strided.vec2820 to <4 x i32> ; 2 uses
  %i.eml = zext <4 x i8> %strided.vec2825.a to <4 x i32>
  %i.emm = mul nsw <4 x i32> %i.eml, %i.emk
  %i.emn = add <4 x i32> %i.emj, %i.emm           ; 2 uses
  %i.emo = zext <4 x i8> %strided.vec2826.a to <4 x i32>
  %i.emp = mul nsw <4 x i32> %i.emo, %i.ely
  %i.emq = add <4 x i32> %i.emp, %vec.phi2812.a
  %i.emr = zext <4 x i8> %strided.vec2827.a to <4 x i32>
  %i.ems = mul nsw <4 x i32> %i.emr, %i.emc
  %i.emt = add <4 x i32> %i.emq, %i.ems
  %i.emu = zext <4 x i8> %strided.vec2828.a to <4 x i32>
  %i.emv = mul nsw <4 x i32> %i.emu, %i.emg
  %i.emw = add <4 x i32> %i.emt, %i.emv
  %i.emx = zext <4 x i8> %strided.vec2829 to <4 x i32>
  %i.emy = mul nsw <4 x i32> %i.emx, %i.emk
  %i.emz = add <4 x i32> %i.emw, %i.emy           ; 2 uses
  %index.next2830 = add nuw i64 %index2811, 4     ; 2 uses
  %i.ena = icmp eq i64 %index.next2830, %n.vec2809
  br i1 %i.ena, label %vec.epilog.middle.block2831, label %vec.epilog.vector.body2810, !llvm.loop !498

vec.epilog.middle.block2831:                      ; preds = %vec.epilog.vector.body2810
  %i.enb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.emz) ; 2 uses
  %i.enc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.emn) ; 2 uses
  br i1 %cmp.n2832, label %.loopexit2838, label %.lr.ph2319.i.preheader

.lr.ph2319.i.preheader:                           ; preds = %iter.check2804, %vec.epilog.iter.check2806, %vec.epilog.middle.block2831
  %.018052317.i.ph = phi i32 [ 0, %iter.check2804 ], [ %i.cdy, %vec.epilog.iter.check2806 ], [ %i.cec, %vec.epilog.middle.block2831 ]
  %.018092316.i.ph = phi ptr [ %.82425.i, %iter.check2804 ], [ %i.eel, %vec.epilog.iter.check2806 ], [ %i.eem, %vec.epilog.middle.block2831 ]
  %.118152315.i.ph = phi i32 [ %.01814.i, %iter.check2804 ], [ %i.elr, %vec.epilog.iter.check2806 ], [ %i.enb, %vec.epilog.middle.block2831 ]
  %.118202314.i.ph = phi i32 [ %.01819.i, %iter.check2804 ], [ %i.els, %vec.epilog.iter.check2806 ], [ %i.enc, %vec.epilog.middle.block2831 ]
  %.1319812313.i.ph = phi ptr [ %.1219802373.i, %iter.check2804 ], [ %i.ejf, %vec.epilog.iter.check2806 ], [ %i.elt, %vec.epilog.middle.block2831 ]
  br label %.lr.ph2319.i

.lr.ph2319.i:                                     ; preds = %.lr.ph2319.i.preheader, %.lr.ph2319.i
  %.018052317.i = phi i32 [ %i.enq, %.lr.ph2319.i ], [ %.018052317.i.ph, %.lr.ph2319.i.preheader ]
  %.018092316.i = phi ptr [ %i.eno, %.lr.ph2319.i ], [ %.018092316.i.ph, %.lr.ph2319.i.preheader ] ; 2 uses
  %.118152315.i = phi i32 [ %op.rdx2847, %.lr.ph2319.i ], [ %.118152315.i.ph, %.lr.ph2319.i.preheader ]
  %.118202314.i = phi i32 [ %op.rdx2846.a, %.lr.ph2319.i ], [ %.118202314.i.ph, %.lr.ph2319.i.preheader ]
  %.1319812313.i = phi ptr [ %i.enp, %.lr.ph2319.i ], [ %.1319812313.i.ph, %.lr.ph2319.i.preheader ] ; 3 uses
  %i.end = load <4 x i8>, ptr %.018092316.i, align 1, !tbaa !17
  %i.ene = sext <4 x i8> %i.end to <4 x i32>      ; 2 uses
  %i.enf = load <4 x i8>, ptr %.1319812313.i, align 1, !tbaa !17
  %i.eng = zext <4 x i8> %i.enf to <4 x i32>
  %i.enh = mul nsw <4 x i32> %i.eng, %i.ene
  %i.eni = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.enh)
  %op.rdx2846.a = add i32 %i.eni, %.118202314.i   ; 2 uses
  %i.enj = getelementptr inbounds nuw i8, ptr %.1319812313.i, i64 4
  %i.enk = load <4 x i8>, ptr %i.enj, align 1, !tbaa !17
  %i.enl = zext <4 x i8> %i.enk to <4 x i32>
  %i.enm = mul nsw <4 x i32> %i.enl, %i.ene
  %i.enn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.enm)
  %op.rdx2847 = add i32 %i.enn, %.118152315.i     ; 2 uses
  %i.eno = getelementptr inbounds nuw i8, ptr %.018092316.i, i64 4
  %i.enp = getelementptr inbounds nuw i8, ptr %.1319812313.i, i64 8
  %i.enq = add nuw nsw i32 %.018052317.i, 4       ; 2 uses
  %i.enr = or disjoint i32 %i.enq, 3
  %i.ens = icmp slt i32 %i.enr, %8
  br i1 %i.ens, label %.lr.ph2319.i, label %.loopexit2838, !llvm.loop !499

.loopexit2838:                                    ; preds = %.lr.ph2319.i, %vec.epilog.middle.block2831, %middle.block2795
  %.lcssa1405 = phi i32 [ %i.enc, %vec.epilog.middle.block2831 ], [ %i.els, %middle.block2795 ], [ %op.rdx2846.a, %.lr.ph2319.i ]
  %.lcssa1404 = phi i32 [ %i.enb, %vec.epilog.middle.block2831 ], [ %i.elr, %middle.block2795 ], [ %op.rdx2847, %.lr.ph2319.i ]
  %i.ent = getelementptr i8, ptr %.1219802373.i, i64 %i.cdh
  %scevgep2977.i = getelementptr i8, ptr %i.ent, i64 8
  %i.enu = load i32, ptr %indvars.iv914, align 4, !tbaa !23 ; 2 uses
  %i.env = sub nsw i32 %.lcssa1405, %i.enu
  %i.enw = sub nsw i32 %.lcssa1404, %i.enu
  br label %._crit_edge2320.i

._crit_edge2320.i:                                ; preds = %.loopexit2838, %bb.bn
  %.01805.lcssa3381.i = phi i32 [ %i.cdb, %.loopexit2838 ], [ 0, %bb.bn ] ; 6 uses
  %.131981.lcssa3376.i = phi ptr [ %scevgep2977.i, %.loopexit2838 ], [ %.1219802373.i, %bb.bn ] ; 9 uses
  %.21821.i = phi i32 [ %i.env, %.loopexit2838 ], [ %.01819.i, %bb.bn ] ; 4 uses
  %.21816.i = phi i32 [ %i.enw, %.loopexit2838 ], [ %.01814.i, %bb.bn ] ; 4 uses
  %.11810.i = phi ptr [ %i.eek, %.loopexit2838 ], [ %.82425.i, %bb.bn ] ; 9 uses
  %i.enx = or disjoint i32 %.01805.lcssa3381.i, 1
  %i.eny = icmp slt i32 %i.enx, %8
  br i1 %i.eny, label %iter.check2723, label %.preheader.i

iter.check2723:                                   ; preds = %._crit_edge2320.i
  %i.enz = sub i32 %i.cdp, %.01805.lcssa3381.i    ; 3 uses
  %i.eoa = lshr i32 %i.enz, 1
  %narrow2842.a = add nuw i32 %i.eoa, 1
  %i.eob = zext i32 %narrow2842.a to i64          ; 5 uses
  %min.iters.check2654 = icmp ult i32 %i.enz, 14
  br i1 %min.iters.check2654, label %.lr.ph2332.i.preheader, label %vector.main.loop.iter.check2655

vector.main.loop.iter.check2655:                  ; preds = %iter.check2723
  %min.iters.check2656 = icmp ult i32 %i.enz, 126
  br i1 %min.iters.check2656, label %vec.epilog.ph2727, label %vector.ph2657

vector.ph2657:                                    ; preds = %vector.main.loop.iter.check2655
  %i.eoc = and i64 %i.eob, 56
  %n.vec2658 = and i64 %i.eob, 4294967232         ; 6 uses
  %i.eod = trunc nuw i64 %n.vec2658 to i32
  %i.eoe = shl i32 %i.eod, 1
  %i.eof = add i32 %.01805.lcssa3381.i, %i.eoe    ; 2 uses
  %i.eog = shl nuw nsw i64 %n.vec2658, 1
  %i.eoh = getelementptr i8, ptr %.11810.i, i64 %i.eog ; 2 uses
  %i.eoi = shl nuw nsw i64 %n.vec2658, 2
  %i.eoj = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.eoi ; 2 uses
  %i.eok = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21816.i, i64 0
  %i.eol = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21821.i, i64 0
  br label %vector.body2659

vector.body2659:                                  ; preds = %vector.body2659, %vector.ph2657
  %index2660 = phi i64 [ 0, %vector.ph2657 ], [ %index.next2709, %vector.body2659 ] ; 3 uses
  %vec.phi2661.a = phi <16 x i32> [ %i.eok, %vector.ph2657 ], [ %i.equ, %vector.body2659 ]
  %vec.phi2662.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.eqv, %vector.body2659 ]
  %vec.phi2663.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.eqw, %vector.body2659 ]
  %vec.phi2664.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.eqx, %vector.body2659 ]
  %vec.phi2665.a = phi <16 x i32> [ %i.eol, %vector.ph2657 ], [ %i.epw, %vector.body2659 ]
  %vec.phi2666.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.epx, %vector.body2659 ]
  %vec.phi2667.a = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.epy, %vector.body2659 ]
  %vec.phi2668 = phi <16 x i32> [ zeroinitializer, %vector.ph2657 ], [ %i.epz, %vector.body2659 ]
  %i.eom = shl i64 %index2660, 1                  ; 4 uses
  %next.gep2669.a = getelementptr i8, ptr %.11810.i, i64 %i.eom
  %i.eon = getelementptr i8, ptr %.11810.i, i64 %i.eom
  %next.gep2670.a = getelementptr i8, ptr %i.eon, i64 32
  %i.eoo = getelementptr i8, ptr %.11810.i, i64 %i.eom
  %next.gep2671.a = getelementptr i8, ptr %i.eoo, i64 64
  %i.eop = getelementptr i8, ptr %.11810.i, i64 %i.eom
  %next.gep2672.a = getelementptr i8, ptr %i.eop, i64 96
  %i.eoq = shl i64 %index2660, 2                  ; 4 uses
  %next.gep2673.a = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.eoq
  %i.eor = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.eoq
  %next.gep2674.a = getelementptr i8, ptr %i.eor, i64 64
  %i.eos = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.eoq
  %next.gep2675.a = getelementptr i8, ptr %i.eos, i64 128
  %i.eot = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.eoq
  %next.gep2676 = getelementptr i8, ptr %i.eot, i64 192
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
  %i.eou = sext <16 x i8> %strided.vec2678.a to <16 x i32> ; 2 uses
  %i.eov = sext <16 x i8> %strided.vec2681.a to <16 x i32> ; 2 uses
  %i.eow = sext <16 x i8> %strided.vec2684.a to <16 x i32> ; 2 uses
  %i.eox = sext <16 x i8> %strided.vec2687.a to <16 x i32> ; 2 uses
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
  %i.eoy = sext <16 x i8> %strided.vec2690.a to <16 x i32>
  %i.eoz = sext <16 x i8> %strided.vec2695.a to <16 x i32>
  %i.epa = sext <16 x i8> %strided.vec2700.a to <16 x i32>
  %i.epb = sext <16 x i8> %strided.vec2705.a to <16 x i32>
  %i.epc = mul nsw <16 x i32> %i.eoy, %i.eou
  %i.epd = mul nsw <16 x i32> %i.eoz, %i.eov
  %i.epe = mul nsw <16 x i32> %i.epa, %i.eow
  %i.epf = mul nsw <16 x i32> %i.epb, %i.eox
  %i.epg = add <16 x i32> %i.epc, %vec.phi2665.a
  %i.eph = add <16 x i32> %i.epd, %vec.phi2666.a
  %i.epi = add <16 x i32> %i.epe, %vec.phi2667.a
  %i.epj = add <16 x i32> %i.epf, %vec.phi2668
  %i.epk = sext <16 x i8> %strided.vec2679 to <16 x i32> ; 2 uses
  %i.epl = sext <16 x i8> %strided.vec2682 to <16 x i32> ; 2 uses
  %i.epm = sext <16 x i8> %strided.vec2685 to <16 x i32> ; 2 uses
  %i.epn = sext <16 x i8> %strided.vec2688 to <16 x i32> ; 2 uses
  %i.epo = sext <16 x i8> %strided.vec2691.a to <16 x i32>
  %i.epp = sext <16 x i8> %strided.vec2696.a to <16 x i32>
  %i.epq = sext <16 x i8> %strided.vec2701.a to <16 x i32>
  %i.epr = sext <16 x i8> %strided.vec2706.a to <16 x i32>
  %i.eps = mul nsw <16 x i32> %i.epo, %i.epk
  %i.ept = mul nsw <16 x i32> %i.epp, %i.epl
  %i.epu = mul nsw <16 x i32> %i.epq, %i.epm
  %i.epv = mul nsw <16 x i32> %i.epr, %i.epn
  %i.epw = add <16 x i32> %i.epg, %i.eps          ; 2 uses
  %i.epx = add <16 x i32> %i.eph, %i.ept          ; 2 uses
  %i.epy = add <16 x i32> %i.epi, %i.epu          ; 2 uses
  %i.epz = add <16 x i32> %i.epj, %i.epv          ; 2 uses
  %i.eqa = sext <16 x i8> %strided.vec2692.a to <16 x i32>
  %i.eqb = sext <16 x i8> %strided.vec2697.a to <16 x i32>
  %i.eqc = sext <16 x i8> %strided.vec2702.a to <16 x i32>
  %i.eqd = sext <16 x i8> %strided.vec2707.a to <16 x i32>
  %i.eqe = mul nsw <16 x i32> %i.eqa, %i.eou
  %i.eqf = mul nsw <16 x i32> %i.eqb, %i.eov
  %i.eqg = mul nsw <16 x i32> %i.eqc, %i.eow
  %i.eqh = mul nsw <16 x i32> %i.eqd, %i.eox
  %i.eqi = add <16 x i32> %i.eqe, %vec.phi2661.a
  %i.eqj = add <16 x i32> %i.eqf, %vec.phi2662.a
  %i.eqk = add <16 x i32> %i.eqg, %vec.phi2663.a
  %i.eql = add <16 x i32> %i.eqh, %vec.phi2664.a
  %i.eqm = sext <16 x i8> %strided.vec2693 to <16 x i32>
  %i.eqn = sext <16 x i8> %strided.vec2698 to <16 x i32>
  %i.eqo = sext <16 x i8> %strided.vec2703 to <16 x i32>
  %i.eqp = sext <16 x i8> %strided.vec2708 to <16 x i32>
  %i.eqq = mul nsw <16 x i32> %i.eqm, %i.epk
  %i.eqr = mul nsw <16 x i32> %i.eqn, %i.epl
  %i.eqs = mul nsw <16 x i32> %i.eqo, %i.epm
  %i.eqt = mul nsw <16 x i32> %i.eqp, %i.epn
  %i.equ = add <16 x i32> %i.eqi, %i.eqq          ; 2 uses
  %i.eqv = add <16 x i32> %i.eqj, %i.eqr          ; 2 uses
  %i.eqw = add <16 x i32> %i.eqk, %i.eqs          ; 2 uses
  %i.eqx = add <16 x i32> %i.eql, %i.eqt          ; 2 uses
  %index.next2709 = add nuw i64 %index2660, 64    ; 2 uses
  %i.eqy = icmp eq i64 %index.next2709, %n.vec2658
  br i1 %i.eqy, label %middle.block2710, label %vector.body2659, !llvm.loop !500

middle.block2710:                                 ; preds = %vector.body2659
  %bin.rdx2711.a = add <16 x i32> %i.eqv, %i.equ
  %bin.rdx2712.a = add <16 x i32> %i.eqw, %bin.rdx2711.a
  %bin.rdx2713.a = add <16 x i32> %i.eqx, %bin.rdx2712.a
  %i.eqz = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2713.a) ; 3 uses
  %bin.rdx2714.a = add <16 x i32> %i.epx, %i.epw
  %bin.rdx2715.a = add <16 x i32> %i.epy, %bin.rdx2714.a
  %bin.rdx2716 = add <16 x i32> %i.epz, %bin.rdx2715.a
  %i.era = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2716) ; 3 uses
  %cmp.n2717 = icmp eq i64 %n.vec2658, %i.eob
  br i1 %cmp.n2717, label %.preheader.i, label %vec.epilog.iter.check2725

vec.epilog.iter.check2725:                        ; preds = %middle.block2710
  %min.epilog.iters.check2726 = icmp eq i64 %i.eoc, 0
  br i1 %min.epilog.iters.check2726, label %.lr.ph2332.i.preheader, label %vec.epilog.ph2727, !prof !22

vec.epilog.ph2727:                                ; preds = %vector.main.loop.iter.check2655, %vec.epilog.iter.check2725
  %vec.epilog.resume.val2718 = phi i64 [ %n.vec2658, %vec.epilog.iter.check2725 ], [ 0, %vector.main.loop.iter.check2655 ]
  %bc.merge.rdx2720.a = phi i32 [ %i.eqz, %vec.epilog.iter.check2725 ], [ %.21816.i, %vector.main.loop.iter.check2655 ]
  %bc.merge.rdx2721 = phi i32 [ %i.era, %vec.epilog.iter.check2725 ], [ %.21821.i, %vector.main.loop.iter.check2655 ]
  %n.vec2728 = and i64 %i.eob, 4294967288         ; 5 uses
  %i.erb = trunc nuw i64 %n.vec2728 to i32
  %i.erc = shl i32 %i.erb, 1
  %i.erd = add i32 %.01805.lcssa3381.i, %i.erc    ; 2 uses
  %i.ere = shl nuw nsw i64 %n.vec2728, 1
  %i.erf = getelementptr i8, ptr %.11810.i, i64 %i.ere ; 2 uses
  %i.erg = shl nuw nsw i64 %n.vec2728, 2
  %i.erh = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.erg ; 2 uses
  %i.eri = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2720.a, i64 0
  %i.erj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2721, i64 0
  br label %vec.epilog.vector.body2729

vec.epilog.vector.body2729:                       ; preds = %vec.epilog.vector.body2729, %vec.epilog.ph2727
  %index2730 = phi i64 [ %vec.epilog.resume.val2718, %vec.epilog.ph2727 ], [ %index.next2743, %vec.epilog.vector.body2729 ] ; 3 uses
  %vec.phi2731.a = phi <8 x i32> [ %i.eri, %vec.epilog.ph2727 ], [ %i.erz, %vec.epilog.vector.body2729 ]
  %vec.phi2732 = phi <8 x i32> [ %i.erj, %vec.epilog.ph2727 ], [ %i.ert, %vec.epilog.vector.body2729 ]
  %i.erk = shl i64 %index2730, 1
  %next.gep2733.a = getelementptr i8, ptr %.11810.i, i64 %i.erk
  %i.erl = shl i64 %index2730, 2
  %next.gep2734 = getelementptr i8, ptr %.131981.lcssa3376.i, i64 %i.erl
  %wide.vec2735 = load <16 x i8>, ptr %next.gep2733.a, align 1, !tbaa !17 ; 2 uses
  %strided.vec2736.a = shufflevector <16 x i8> %wide.vec2735, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec2737 = shufflevector <16 x i8> %wide.vec2735, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.erm = sext <8 x i8> %strided.vec2736.a to <8 x i32> ; 2 uses
  %wide.vec2738 = load <32 x i8>, ptr %next.gep2734, align 1, !tbaa !17 ; 4 uses
  %strided.vec2739.a = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec2740.a = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec2741.a = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec2742 = shufflevector <32 x i8> %wide.vec2738, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ern = sext <8 x i8> %strided.vec2739.a to <8 x i32>
  %i.ero = mul nsw <8 x i32> %i.ern, %i.erm
  %i.erp = add <8 x i32> %i.ero, %vec.phi2732
  %i.erq = sext <8 x i8> %strided.vec2737 to <8 x i32> ; 2 uses
  %i.err = sext <8 x i8> %strided.vec2740.a to <8 x i32>
  %i.ers = mul nsw <8 x i32> %i.err, %i.erq
  %i.ert = add <8 x i32> %i.erp, %i.ers           ; 2 uses
  %i.eru = sext <8 x i8> %strided.vec2741.a to <8 x i32>
  %i.erv = mul nsw <8 x i32> %i.eru, %i.erm
  %i.erw = add <8 x i32> %i.erv, %vec.phi2731.a
  %i.erx = sext <8 x i8> %strided.vec2742 to <8 x i32>
  %i.ery = mul nsw <8 x i32> %i.erx, %i.erq
  %i.erz = add <8 x i32> %i.erw, %i.ery           ; 2 uses
  %index.next2743 = add nuw i64 %index2730, 8     ; 2 uses
  %i.esa = icmp eq i64 %index.next2743, %n.vec2728
  br i1 %i.esa, label %vec.epilog.middle.block2744, label %vec.epilog.vector.body2729, !llvm.loop !501

vec.epilog.middle.block2744:                      ; preds = %vec.epilog.vector.body2729
  %i.esb = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.erz) ; 2 uses
  %i.esc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ert) ; 2 uses
  %cmp.n2745 = icmp eq i64 %n.vec2728, %i.eob
  br i1 %cmp.n2745, label %.preheader.i, label %.lr.ph2332.i.preheader

.lr.ph2332.i.preheader:                           ; preds = %iter.check2723, %vec.epilog.iter.check2725, %vec.epilog.middle.block2744
  %.118062330.i.ph = phi i32 [ %.01805.lcssa3381.i, %iter.check2723 ], [ %i.eof, %vec.epilog.iter.check2725 ], [ %i.erd, %vec.epilog.middle.block2744 ]
  %.218112329.i.ph = phi ptr [ %.11810.i, %iter.check2723 ], [ %i.eoh, %vec.epilog.iter.check2725 ], [ %i.erf, %vec.epilog.middle.block2744 ]
  %.318172328.i.ph = phi i32 [ %.21816.i, %iter.check2723 ], [ %i.eqz, %vec.epilog.iter.check2725 ], [ %i.esb, %vec.epilog.middle.block2744 ]
  %.318222327.i.ph = phi i32 [ %.21821.i, %iter.check2723 ], [ %i.era, %vec.epilog.iter.check2725 ], [ %i.esc, %vec.epilog.middle.block2744 ]
  %.1419822326.i.ph = phi ptr [ %.131981.lcssa3376.i, %iter.check2723 ], [ %i.eoj, %vec.epilog.iter.check2725 ], [ %i.erh, %vec.epilog.middle.block2744 ]
  br label %.lr.ph2332.i

.preheader.i:                                     ; preds = %.lr.ph2332.i, %middle.block2710, %vec.epilog.middle.block2744, %._crit_edge2320.i
  %.141982.lcssa.i = phi ptr [ %.131981.lcssa3376.i, %._crit_edge2320.i ], [ %i.erh, %vec.epilog.middle.block2744 ], [ %i.eoj, %middle.block2710 ], [ %i.exe, %.lr.ph2332.i ] ; 6 uses
  %.31822.lcssa.i = phi i32 [ %.21821.i, %._crit_edge2320.i ], [ %i.esc, %vec.epilog.middle.block2744 ], [ %i.era, %middle.block2710 ], [ %i.ews, %.lr.ph2332.i ]
  %.31817.lcssa.i = phi i32 [ %.21816.i, %._crit_edge2320.i ], [ %i.esb, %vec.epilog.middle.block2744 ], [ %i.eqz, %middle.block2710 ], [ %i.exc, %.lr.ph2332.i ]
  %.21811.lcssa.i = phi ptr [ %.11810.i, %._crit_edge2320.i ], [ %i.erf, %vec.epilog.middle.block2744 ], [ %i.eoh, %middle.block2710 ], [ %i.exd, %.lr.ph2332.i ] ; 6 uses
  %.11806.lcssa.i = phi i32 [ %.01805.lcssa3381.i, %._crit_edge2320.i ], [ %i.erd, %vec.epilog.middle.block2744 ], [ %i.eof, %middle.block2710 ], [ %i.exf, %.lr.ph2332.i ] ; 7 uses
  %i.esd = add nuw nsw i32 %.11806.lcssa.i, 3
  %i.ese = icmp slt i32 %i.esd, %8
  br i1 %i.ese, label %iter.check2608, label %._crit_edge2350.i

iter.check2608:                                   ; preds = %.preheader.i
  %9 = add i32 %.11806.lcssa.i, 7
  %smax2562 = tail call i32 @llvm.smax.i32(i32 %8, i32 %9)
  %10 = add i32 %smax2562, -4
  %i.esf = sub i32 %10, %.11806.lcssa.i           ; 3 uses
  %i.esg = lshr i32 %i.esf, 2
  %narrow2843.a = add nuw nsw i32 %i.esg, 1
  %i.esh = zext nneg i32 %narrow2843.a to i64     ; 5 uses
  %min.iters.check2563 = icmp ult i32 %i.esf, 12
  br i1 %min.iters.check2563, label %.lr.ph2349.i.preheader, label %vector.main.loop.iter.check2564

vector.main.loop.iter.check2564:                  ; preds = %iter.check2608
  %min.iters.check2565 = icmp ult i32 %i.esf, 60
  br i1 %min.iters.check2565, label %vec.epilog.ph2612, label %vector.ph2566

vector.ph2566:                                    ; preds = %vector.main.loop.iter.check2564
  %i.esi = and i64 %i.esh, 12
  %n.vec2567 = and i64 %i.esh, 2147483632         ; 6 uses
  %i.esj = trunc nuw nsw i64 %n.vec2567 to i32
  %i.esk = shl i32 %i.esj, 2
  %i.esl = add i32 %.11806.lcssa.i, %i.esk        ; 2 uses
  %i.esm = shl nuw nsw i64 %n.vec2567, 2
  %i.esn = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.esm ; 2 uses
  %i.eso = shl nuw nsw i64 %n.vec2567, 3
  %i.esp = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.eso ; 2 uses
  br label %vector.body2568

vector.body2568:                                  ; preds = %vector.body2568, %vector.ph2566
  %index2569 = phi i64 [ 0, %vector.ph2566 ], [ %index.next2594, %vector.body2568 ] ; 3 uses
  %vec.phi2570.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.ett, %vector.body2568 ]
  %vec.phi2571.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.etm, %vector.body2568 ]
  %vec.phi2572.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.etf, %vector.body2568 ]
  %vec.phi2573.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esy, %vector.body2568 ]
  %vec.phi2574.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.etq, %vector.body2568 ]
  %vec.phi2575.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.etj, %vector.body2568 ]
  %vec.phi2576.a = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.etc, %vector.body2568 ]
  %vec.phi2577 = phi <16 x i32> [ zeroinitializer, %vector.ph2566 ], [ %i.esv, %vector.body2568 ]
  %i.esq = shl i64 %index2569, 2
  %next.gep2578.a = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.esq
  %i.esr = shl i64 %index2569, 3
  %next.gep2579 = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.esr
  %wide.vec2580 = load <64 x i8>, ptr %next.gep2578.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2581.a = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2582.a = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2583.a = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2584 = shufflevector <64 x i8> %wide.vec2580, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ess = sext <16 x i8> %strided.vec2581.a to <16 x i32> ; 2 uses
  %wide.vec2585 = load <128 x i8>, ptr %next.gep2579, align 1, !tbaa !17 ; 8 uses
  %strided.vec2586.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec2587.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec2588.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec2589.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec2590.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec2591.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec2592.a = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec2593 = shufflevector <128 x i8> %wide.vec2585, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %i.est = sext <16 x i8> %strided.vec2586.a to <16 x i32>
  %i.esu = mul nsw <16 x i32> %i.est, %i.ess
  %i.esv = add <16 x i32> %i.esu, %vec.phi2577    ; 2 uses
  %i.esw = sext <16 x i8> %strided.vec2587.a to <16 x i32>
  %i.esx = mul nsw <16 x i32> %i.esw, %i.ess
  %i.esy = add <16 x i32> %i.esx, %vec.phi2573.a  ; 2 uses
  %i.esz = sext <16 x i8> %strided.vec2582.a to <16 x i32> ; 2 uses
  %i.eta = sext <16 x i8> %strided.vec2588.a to <16 x i32>
  %i.etb = mul nsw <16 x i32> %i.eta, %i.esz
  %i.etc = add <16 x i32> %i.etb, %vec.phi2576.a  ; 2 uses
  %i.etd = sext <16 x i8> %strided.vec2589.a to <16 x i32>
  %i.ete = mul nsw <16 x i32> %i.etd, %i.esz
  %i.etf = add <16 x i32> %i.ete, %vec.phi2572.a  ; 2 uses
  %i.etg = sext <16 x i8> %strided.vec2583.a to <16 x i32> ; 2 uses
  %i.eth = sext <16 x i8> %strided.vec2590.a to <16 x i32>
  %i.eti = mul nsw <16 x i32> %i.eth, %i.etg
  %i.etj = add <16 x i32> %i.eti, %vec.phi2575.a  ; 2 uses
  %i.etk = sext <16 x i8> %strided.vec2591.a to <16 x i32>
  %i.etl = mul nsw <16 x i32> %i.etk, %i.etg
  %i.etm = add <16 x i32> %i.etl, %vec.phi2571.a  ; 2 uses
  %i.etn = sext <16 x i8> %strided.vec2584 to <16 x i32> ; 2 uses
  %i.eto = sext <16 x i8> %strided.vec2592.a to <16 x i32>
  %i.etp = mul nsw <16 x i32> %i.eto, %i.etn
  %i.etq = add <16 x i32> %i.etp, %vec.phi2574.a  ; 2 uses
  %i.etr = sext <16 x i8> %strided.vec2593 to <16 x i32>
  %i.ets = mul nsw <16 x i32> %i.etr, %i.etn
  %i.ett = add <16 x i32> %i.ets, %vec.phi2570.a  ; 2 uses
  %index.next2594 = add nuw i64 %index2569, 16    ; 2 uses
  %i.etu = icmp eq i64 %index.next2594, %n.vec2567
  br i1 %i.etu, label %middle.block2595, label %vector.body2568, !llvm.loop !502

middle.block2595:                                 ; preds = %vector.body2568
  %i.etv = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ett) ; 3 uses
  %i.etw = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.etm) ; 3 uses
  %i.etx = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.etf) ; 3 uses
  %i.ety = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esy) ; 3 uses
  %i.etz = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.etq) ; 3 uses
  %i.eua = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.etj) ; 3 uses
  %i.eub = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.etc) ; 3 uses
  %i.euc = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.esv) ; 3 uses
  %cmp.n2596 = icmp eq i64 %n.vec2567, %i.esh
  br i1 %cmp.n2596, label %._crit_edge2350.i, label %vec.epilog.iter.check2610

vec.epilog.iter.check2610:                        ; preds = %middle.block2595
  %min.epilog.iters.check2611 = icmp eq i64 %i.esi, 0
  br i1 %min.epilog.iters.check2611, label %.lr.ph2349.i.preheader, label %vec.epilog.ph2612, !prof !32

vec.epilog.ph2612:                                ; preds = %vector.main.loop.iter.check2564, %vec.epilog.iter.check2610
  %vec.epilog.resume.val2597 = phi i64 [ %n.vec2567, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2598.a = phi i32 [ %i.etv, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2599.a = phi i32 [ %i.etw, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2600.a = phi i32 [ %i.etx, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2601.a = phi i32 [ %i.ety, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2602.a = phi i32 [ %i.etz, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2603.a = phi i32 [ %i.eua, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2604.a = phi i32 [ %i.eub, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %bc.merge.rdx2605 = phi i32 [ %i.euc, %vec.epilog.iter.check2610 ], [ 0, %vector.main.loop.iter.check2564 ]
  %n.vec2613 = and i64 %i.esh, 2147483644         ; 5 uses
  %i.eud = trunc nuw nsw i64 %n.vec2613 to i32
  %i.eue = shl i32 %i.eud, 2
  %i.euf = add i32 %.11806.lcssa.i, %i.eue        ; 2 uses
  %i.eug = shl nuw nsw i64 %n.vec2613, 2
  %i.euh = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.eug ; 2 uses
  %i.eui = shl nuw nsw i64 %n.vec2613, 3
  %i.euj = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.eui ; 2 uses
  %i.euk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2598.a, i64 0
  %i.eul = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2599.a, i64 0
  %i.eum = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2600.a, i64 0
  %i.eun = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2601.a, i64 0
  %i.euo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2602.a, i64 0
  %i.eup = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2603.a, i64 0
  %i.euq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2604.a, i64 0
  %i.eur = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2605, i64 0
  br label %vec.epilog.vector.body2614

vec.epilog.vector.body2614:                       ; preds = %vec.epilog.vector.body2614, %vec.epilog.ph2612
  %index2615 = phi i64 [ %vec.epilog.resume.val2597, %vec.epilog.ph2612 ], [ %index.next2640, %vec.epilog.vector.body2614 ] ; 3 uses
  %vec.phi2616.a = phi <4 x i32> [ %i.euk, %vec.epilog.ph2612 ], [ %i.evv, %vec.epilog.vector.body2614 ]
  %vec.phi2617.a = phi <4 x i32> [ %i.eul, %vec.epilog.ph2612 ], [ %i.evo, %vec.epilog.vector.body2614 ]
  %vec.phi2618.a = phi <4 x i32> [ %i.eum, %vec.epilog.ph2612 ], [ %i.evh, %vec.epilog.vector.body2614 ]
  %vec.phi2619.a = phi <4 x i32> [ %i.eun, %vec.epilog.ph2612 ], [ %i.eva, %vec.epilog.vector.body2614 ]
  %vec.phi2620.a = phi <4 x i32> [ %i.euo, %vec.epilog.ph2612 ], [ %i.evs, %vec.epilog.vector.body2614 ]
  %vec.phi2621.a = phi <4 x i32> [ %i.eup, %vec.epilog.ph2612 ], [ %i.evl, %vec.epilog.vector.body2614 ]
  %vec.phi2622.a = phi <4 x i32> [ %i.euq, %vec.epilog.ph2612 ], [ %i.eve, %vec.epilog.vector.body2614 ]
  %vec.phi2623 = phi <4 x i32> [ %i.eur, %vec.epilog.ph2612 ], [ %i.eux, %vec.epilog.vector.body2614 ]
  %i.eus = shl i64 %index2615, 2
  %next.gep2624.a = getelementptr i8, ptr %.21811.lcssa.i, i64 %i.eus
  %i.eut = shl i64 %index2615, 3
  %next.gep2625 = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.eut
  %wide.vec2626 = load <16 x i8>, ptr %next.gep2624.a, align 1, !tbaa !17 ; 4 uses
  %strided.vec2627.a = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2628.a = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2629.a = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2630 = shufflevector <16 x i8> %wide.vec2626, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.euu = sext <4 x i8> %strided.vec2627.a to <4 x i32> ; 2 uses
  %wide.vec2631 = load <32 x i8>, ptr %next.gep2625, align 1, !tbaa !17 ; 8 uses
  %strided.vec2632.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec2633.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec2634.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec2635.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec2636.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec2637.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec2638.a = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec2639 = shufflevector <32 x i8> %wide.vec2631, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.euv = sext <4 x i8> %strided.vec2632.a to <4 x i32>
  %i.euw = mul nsw <4 x i32> %i.euv, %i.euu
  %i.eux = add <4 x i32> %i.euw, %vec.phi2623     ; 2 uses
  %i.euy = sext <4 x i8> %strided.vec2633.a to <4 x i32>
  %i.euz = mul nsw <4 x i32> %i.euy, %i.euu
  %i.eva = add <4 x i32> %i.euz, %vec.phi2619.a   ; 2 uses
  %i.evb = sext <4 x i8> %strided.vec2628.a to <4 x i32> ; 2 uses
  %i.evc = sext <4 x i8> %strided.vec2634.a to <4 x i32>
  %i.evd = mul nsw <4 x i32> %i.evc, %i.evb
  %i.eve = add <4 x i32> %i.evd, %vec.phi2622.a   ; 2 uses
  %i.evf = sext <4 x i8> %strided.vec2635.a to <4 x i32>
  %i.evg = mul nsw <4 x i32> %i.evf, %i.evb
  %i.evh = add <4 x i32> %i.evg, %vec.phi2618.a   ; 2 uses
  %i.evi = sext <4 x i8> %strided.vec2629.a to <4 x i32> ; 2 uses
  %i.evj = sext <4 x i8> %strided.vec2636.a to <4 x i32>
  %i.evk = mul nsw <4 x i32> %i.evj, %i.evi
  %i.evl = add <4 x i32> %i.evk, %vec.phi2621.a   ; 2 uses
  %i.evm = sext <4 x i8> %strided.vec2637.a to <4 x i32>
  %i.evn = mul nsw <4 x i32> %i.evm, %i.evi
  %i.evo = add <4 x i32> %i.evn, %vec.phi2617.a   ; 2 uses
  %i.evp = sext <4 x i8> %strided.vec2630 to <4 x i32> ; 2 uses
  %i.evq = sext <4 x i8> %strided.vec2638.a to <4 x i32>
  %i.evr = mul nsw <4 x i32> %i.evq, %i.evp
  %i.evs = add <4 x i32> %i.evr, %vec.phi2620.a   ; 2 uses
  %i.evt = sext <4 x i8> %strided.vec2639 to <4 x i32>
  %i.evu = mul nsw <4 x i32> %i.evt, %i.evp
  %i.evv = add <4 x i32> %i.evu, %vec.phi2616.a   ; 2 uses
  %index.next2640 = add nuw i64 %index2615, 4     ; 2 uses
  %i.evw = icmp eq i64 %index.next2640, %n.vec2613
  br i1 %i.evw, label %vec.epilog.middle.block2641, label %vec.epilog.vector.body2614, !llvm.loop !503

vec.epilog.middle.block2641:                      ; preds = %vec.epilog.vector.body2614
  %i.evx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.evv) ; 2 uses
  %i.evy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.evo) ; 2 uses
  %i.evz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.evh) ; 2 uses
  %i.ewa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eva) ; 2 uses
  %i.ewb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.evs) ; 2 uses
  %i.ewc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.evl) ; 2 uses
  %i.ewd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eve) ; 2 uses
  %i.ewe = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eux) ; 2 uses
  %cmp.n2642 = icmp eq i64 %n.vec2613, %i.esh
  br i1 %cmp.n2642, label %._crit_edge2350.i, label %.lr.ph2349.i.preheader

.lr.ph2349.i.preheader:                           ; preds = %iter.check2608, %vec.epilog.iter.check2610, %vec.epilog.middle.block2641
  %.017972348.i.ph = phi i32 [ 0, %iter.check2608 ], [ %i.etv, %vec.epilog.iter.check2610 ], [ %i.evx, %vec.epilog.middle.block2641 ]
end_hunk_1
begin_hunk_2_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.fcv = getelementptr inbounds nuw i8, ptr %.418132365.i, i64 1
  %i.fcw = getelementptr inbounds nuw i8, ptr %.1619842362.i, i64 2 ; 2 uses
  %i.fcx = add nuw nsw i32 %.318082366.i, 1       ; 2 uses
  %exitcond2978.not.i = icmp eq i32 %i.fcx, %8
  br i1 %exitcond2978.not.i, label %._crit_edge2369.i, label %.lr.ph2368.i, !llvm.loop !508

._crit_edge2369.i:                                ; preds = %.lr.ph2368.i, %middle.block2525, %vec.epilog.middle.block2555, %._crit_edge2350.i
  %.161984.lcssa.i = phi ptr [ %.151983.lcssa.i, %._crit_edge2350.i ], [ %i.fbw, %vec.epilog.middle.block2555 ], [ %i.fad, %middle.block2525 ], [ %i.fcw, %.lr.ph2368.i ] ; 2 uses
  %.41823.lcssa.i = phi i32 [ %i.ezo, %._crit_edge2350.i ], [ %i.fcj, %vec.epilog.middle.block2555 ], [ %i.fbr, %middle.block2525 ], [ %i.fcp, %.lr.ph2368.i ]
  %.41818.lcssa.i = phi i32 [ %i.ezs, %._crit_edge2350.i ], [ %i.fci, %vec.epilog.middle.block2555 ], [ %i.fbq, %middle.block2525 ], [ %i.fcu, %.lr.ph2368.i ]
  store i32 %.41823.lcssa.i, ptr %.282375.i, align 4, !tbaa !23
  %i.fcy = getelementptr inbounds nuw i8, ptr %.282375.i, i64 4
  store i32 %.41818.lcssa.i, ptr %i.fcy, align 4, !tbaa !23
  %i.fcz = getelementptr inbounds nuw i8, ptr %.282375.i, i64 8 ; 2 uses
  %i.fda = add nuw nsw i32 %.319662374.i, 2       ; 3 uses
  %i.fdb = or disjoint i32 %i.fda, 1
  %i.fdc = icmp slt i32 %i.fdb, %6
  br i1 %i.fdc, label %.lr.ph2376.i, label %.preheader1055.i, !llvm.loop !509

.lr.ph2420.i:                                     ; preds = %.lr.ph2420.i.preheader, %._crit_edge2414.i
  %.292419.i = phi ptr [ %i.fmd, %._crit_edge2414.i ], [ %.28.lcssa.i, %.lr.ph2420.i.preheader ] ; 3 uses
  %.419672418.i = phi i32 [ %i.fme, %._crit_edge2414.i ], [ %.31966.lcssa.i, %.lr.ph2420.i.preheader ]
  %.1719852417.i = phi ptr [ %.201988.lcssa.i, %._crit_edge2414.i ], [ %.121980.lcssa.i, %.lr.ph2420.i.preheader ] ; 8 uses
  br i1 %i.ccw, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2420.i
  %i.fdd = load i32, ptr %.292419.i, align 4, !tbaa !23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph2420.i
  %.01793.i = phi i32 [ %i.fdd, %bb.bo ], [ 0, %.lr.ph2420.i ] ; 4 uses
  br i1 %i.ccx, label %iter.check2460, label %._crit_edge2386.i

iter.check2460:                                   ; preds = %bb.bp
  br i1 %min.iters.check2419, label %.lr.ph2385.i.preheader, label %vector.main.loop.iter.check2420

vector.main.loop.iter.check2420:                  ; preds = %iter.check2460
  br i1 %min.iters.check2421, label %vec.epilog.ph2464, label %vector.ph2422

vector.ph2422:                                    ; preds = %vector.main.loop.iter.check2420
  %i.fde = getelementptr i8, ptr %.1719852417.i, i64 %i.cei
  %i.fdf = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.01793.i, i64 0
  br label %vector.body2424

vector.body2424:                                  ; preds = %vector.body2424, %vector.ph2422
  %index2425 = phi i64 [ 0, %vector.ph2422 ], [ %index.next2452, %vector.body2424 ] ; 2 uses
  %vec.phi2426 = phi <16 x i32> [ %i.fdf, %vector.ph2422 ], [ %i.fem, %vector.body2424 ]
  %vec.phi2427 = phi <16 x i32> [ zeroinitializer, %vector.ph2422 ], [ %i.fen, %vector.body2424 ]
  %i.fdg = shl i64 %index2425, 2                  ; 3 uses
  %i.fdh = or disjoint i64 %i.fdg, 64             ; 2 uses
  %next.gep2428 = getelementptr i8, ptr %.82425.i, i64 %i.fdg
  %next.gep2429 = getelementptr i8, ptr %.82425.i, i64 %i.fdh
  %next.gep2430 = getelementptr i8, ptr %.1719852417.i, i64 %i.fdg
  %next.gep2431 = getelementptr i8, ptr %.1719852417.i, i64 %i.fdh
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
  %i.fdi = sext <16 x i8> %strided.vec2433 to <16 x i32>
  %i.fdj = sext <16 x i8> %strided.vec2438 to <16 x i32>
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
  %i.fdk = zext <16 x i8> %strided.vec2443 to <16 x i32>
  %i.fdl = zext <16 x i8> %strided.vec2448 to <16 x i32>
  %i.fdm = mul nsw <16 x i32> %i.fdk, %i.fdi
  %i.fdn = mul nsw <16 x i32> %i.fdl, %i.fdj
  %i.fdo = add <16 x i32> %i.fdm, %vec.phi2426
  %i.fdp = add <16 x i32> %i.fdn, %vec.phi2427
  %i.fdq = sext <16 x i8> %strided.vec2434 to <16 x i32>
  %i.fdr = sext <16 x i8> %strided.vec2439 to <16 x i32>
  %i.fds = zext <16 x i8> %strided.vec2444 to <16 x i32>
  %i.fdt = zext <16 x i8> %strided.vec2449 to <16 x i32>
  %i.fdu = mul nsw <16 x i32> %i.fds, %i.fdq
  %i.fdv = mul nsw <16 x i32> %i.fdt, %i.fdr
  %i.fdw = add <16 x i32> %i.fdo, %i.fdu
  %i.fdx = add <16 x i32> %i.fdp, %i.fdv
  %i.fdy = sext <16 x i8> %strided.vec2435 to <16 x i32>
  %i.fdz = sext <16 x i8> %strided.vec2440 to <16 x i32>
  %i.fea = zext <16 x i8> %strided.vec2445 to <16 x i32>
  %i.feb = zext <16 x i8> %strided.vec2450 to <16 x i32>
  %i.fec = mul nsw <16 x i32> %i.fea, %i.fdy
  %i.fed = mul nsw <16 x i32> %i.feb, %i.fdz
  %i.fee = add <16 x i32> %i.fdw, %i.fec
  %i.fef = add <16 x i32> %i.fdx, %i.fed
  %i.feg = sext <16 x i8> %strided.vec2436 to <16 x i32>
  %i.feh = sext <16 x i8> %strided.vec2441 to <16 x i32>
  %i.fei = zext <16 x i8> %strided.vec2446 to <16 x i32>
  %i.fej = zext <16 x i8> %strided.vec2451 to <16 x i32>
  %i.fek = mul nsw <16 x i32> %i.fei, %i.feg
  %i.fel = mul nsw <16 x i32> %i.fej, %i.feh
  %i.fem = add <16 x i32> %i.fee, %i.fek          ; 2 uses
  %i.fen = add <16 x i32> %i.fef, %i.fel          ; 2 uses
  %index.next2452 = add nuw i64 %index2425, 32    ; 2 uses
  %i.feo = icmp eq i64 %index.next2452, %n.vec2423
  br i1 %i.feo, label %middle.block2453, label %vector.body2424, !llvm.loop !510

middle.block2453:                                 ; preds = %vector.body2424
  %bin.rdx2454 = add <16 x i32> %i.fen, %i.fem
  %i.fep = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2454) ; 3 uses
  br i1 %cmp.n2455, label %.loopexit, label %vec.epilog.iter.check2462

vec.epilog.iter.check2462:                        ; preds = %middle.block2453
  br i1 %min.epilog.iters.check2463, label %.lr.ph2385.i.preheader, label %vec.epilog.ph2464, !prof !26

vec.epilog.ph2464:                                ; preds = %vector.main.loop.iter.check2420, %vec.epilog.iter.check2462
  %vec.epilog.resume.val2456 = phi i64 [ %n.vec2423, %vec.epilog.iter.check2462 ], [ 0, %vector.main.loop.iter.check2420 ]
  %bc.merge.rdx2458 = phi i32 [ %i.fep, %vec.epilog.iter.check2462 ], [ %.01793.i, %vector.main.loop.iter.check2420 ]
  %i.feq = getelementptr i8, ptr %.1719852417.i, i64 %i.cel
  %i.fer = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2458, i64 0
  br label %vec.epilog.vector.body2466

vec.epilog.vector.body2466:                       ; preds = %vec.epilog.vector.body2466, %vec.epilog.ph2464
  %index2467 = phi i64 [ %vec.epilog.resume.val2456, %vec.epilog.ph2464 ], [ %index.next2481, %vec.epilog.vector.body2466 ] ; 2 uses
  %vec.phi2468 = phi <4 x i32> [ %i.fer, %vec.epilog.ph2464 ], [ %i.ffi, %vec.epilog.vector.body2466 ]
  %i.fes = shl i64 %index2467, 2                  ; 2 uses
  %next.gep2469 = getelementptr i8, ptr %.82425.i, i64 %i.fes
  %next.gep2470 = getelementptr i8, ptr %.1719852417.i, i64 %i.fes
  %wide.vec2471 = load <16 x i8>, ptr %next.gep2469, align 1, !tbaa !17 ; 4 uses
  %strided.vec2472 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2473 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2474 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2475 = shufflevector <16 x i8> %wide.vec2471, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fet = sext <4 x i8> %strided.vec2472 to <4 x i32>
  %wide.vec2476 = load <16 x i8>, ptr %next.gep2470, align 1, !tbaa !17 ; 4 uses
  %strided.vec2477 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2478 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2479 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2480 = shufflevector <16 x i8> %wide.vec2476, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.feu = zext <4 x i8> %strided.vec2477 to <4 x i32>
  %i.fev = mul nsw <4 x i32> %i.feu, %i.fet
  %i.few = add <4 x i32> %i.fev, %vec.phi2468
  %i.fex = sext <4 x i8> %strided.vec2473 to <4 x i32>
  %i.fey = zext <4 x i8> %strided.vec2478 to <4 x i32>
  %i.fez = mul nsw <4 x i32> %i.fey, %i.fex
  %i.ffa = add <4 x i32> %i.few, %i.fez
  %i.ffb = sext <4 x i8> %strided.vec2474 to <4 x i32>
  %i.ffc = zext <4 x i8> %strided.vec2479 to <4 x i32>
  %i.ffd = mul nsw <4 x i32> %i.ffc, %i.ffb
  %i.ffe = add <4 x i32> %i.ffa, %i.ffd
  %i.fff = sext <4 x i8> %strided.vec2475 to <4 x i32>
  %i.ffg = zext <4 x i8> %strided.vec2480 to <4 x i32>
  %i.ffh = mul nsw <4 x i32> %i.ffg, %i.fff
  %i.ffi = add <4 x i32> %i.ffe, %i.ffh           ; 2 uses
  %index.next2481 = add nuw i64 %index2467, 4     ; 2 uses
  %i.ffj = icmp eq i64 %index.next2481, %n.vec2465
  br i1 %i.ffj, label %vec.epilog.middle.block2482, label %vec.epilog.vector.body2466, !llvm.loop !511

vec.epilog.middle.block2482:                      ; preds = %vec.epilog.vector.body2466
  %i.ffk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ffi) ; 2 uses
  br i1 %cmp.n2483, label %.loopexit, label %.lr.ph2385.i.preheader

.lr.ph2385.i.preheader:                           ; preds = %iter.check2460, %vec.epilog.iter.check2462, %vec.epilog.middle.block2482
  %.017862383.i.ph = phi i32 [ 0, %iter.check2460 ], [ %i.ceh, %vec.epilog.iter.check2462 ], [ %i.cek, %vec.epilog.middle.block2482 ]
  %.017892382.i.ph = phi ptr [ %.82425.i, %iter.check2460 ], [ %i.eja, %vec.epilog.iter.check2462 ], [ %i.ejb, %vec.epilog.middle.block2482 ]
  %.117942381.i.ph = phi i32 [ %.01793.i, %iter.check2460 ], [ %i.fep, %vec.epilog.iter.check2462 ], [ %i.ffk, %vec.epilog.middle.block2482 ]
  %.1819862380.i.ph = phi ptr [ %.1719852417.i, %iter.check2460 ], [ %i.fde, %vec.epilog.iter.check2462 ], [ %i.feq, %vec.epilog.middle.block2482 ]
  br label %.lr.ph2385.i

.lr.ph2385.i:                                     ; preds = %.lr.ph2385.i.preheader, %.lr.ph2385.i
  %.017862383.i = phi i32 [ %i.fft, %.lr.ph2385.i ], [ %.017862383.i.ph, %.lr.ph2385.i.preheader ]
  %.017892382.i = phi ptr [ %i.ffr, %.lr.ph2385.i ], [ %.017892382.i.ph, %.lr.ph2385.i.preheader ] ; 2 uses
  %.117942381.i = phi i32 [ %op.rdx2845, %.lr.ph2385.i ], [ %.117942381.i.ph, %.lr.ph2385.i.preheader ]
  %.1819862380.i = phi ptr [ %i.ffs, %.lr.ph2385.i ], [ %.1819862380.i.ph, %.lr.ph2385.i.preheader ] ; 2 uses
  %i.ffl = load <4 x i8>, ptr %.017892382.i, align 1, !tbaa !17
  %i.ffm = sext <4 x i8> %i.ffl to <4 x i32>
  %i.ffn = load <4 x i8>, ptr %.1819862380.i, align 1, !tbaa !17
  %i.ffo = zext <4 x i8> %i.ffn to <4 x i32>
  %i.ffp = mul nsw <4 x i32> %i.ffo, %i.ffm
  %i.ffq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ffp)
  %op.rdx2845 = add i32 %i.ffq, %.117942381.i     ; 2 uses
  %i.ffr = getelementptr inbounds nuw i8, ptr %.017892382.i, i64 4
  %i.ffs = getelementptr inbounds nuw i8, ptr %.1819862380.i, i64 4
  %i.fft = add nuw nsw i32 %.017862383.i, 4       ; 2 uses
  %i.ffu = or disjoint i32 %i.fft, 3
  %i.ffv = icmp slt i32 %i.ffu, %8
  br i1 %i.ffv, label %.lr.ph2385.i, label %.loopexit, !llvm.loop !512

.loopexit:                                        ; preds = %.lr.ph2385.i, %vec.epilog.middle.block2482, %middle.block2453
  %.lcssa1427 = phi i32 [ %i.ffk, %vec.epilog.middle.block2482 ], [ %i.fep, %middle.block2453 ], [ %op.rdx2845, %.lr.ph2385.i ]
  %i.ffw = getelementptr i8, ptr %.1719852417.i, i64 %i.cdi
  %scevgep2979.i = getelementptr i8, ptr %i.ffw, i64 4
  %i.ffx = load i32, ptr %indvars.iv914, align 4, !tbaa !23
  %i.ffy = sub nsw i32 %.lcssa1427, %i.ffx
  br label %._crit_edge2386.i

._crit_edge2386.i:                                ; preds = %.loopexit, %bb.bp
  %.01786.lcssa3391.i = phi i32 [ %i.cdb, %.loopexit ], [ 0, %bb.bp ] ; 7 uses
  %.181986.lcssa3387.i = phi ptr [ %scevgep2979.i, %.loopexit ], [ %.1719852417.i, %bb.bp ] ; 7 uses
  %.21795.i = phi i32 [ %i.ffy, %.loopexit ], [ %.01793.i, %bb.bp ]
  %.11790.i = phi ptr [ %i.eiz, %.loopexit ], [ %.82425.i, %bb.bp ] ; 7 uses
  %i.ffz = or disjoint i32 %.01786.lcssa3391.i, 3
  %i.fga = icmp slt i32 %i.ffz, %8
  br i1 %i.fga, label %iter.check2385, label %._crit_edge2400.i

iter.check2385:                                   ; preds = %._crit_edge2386.i
  %11 = add i32 %.01786.lcssa3391.i, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %8, i32 %11)
  %12 = add i32 %smax, -4
  %i.fgb = sub i32 %12, %.01786.lcssa3391.i       ; 3 uses
  %i.fgc = lshr i32 %i.fgb, 2
  %narrow2844 = add nuw nsw i32 %i.fgc, 1
  %i.fgd = zext nneg i32 %narrow2844 to i64       ; 5 uses
  %min.iters.check2332 = icmp ult i32 %i.fgb, 12
  br i1 %min.iters.check2332, label %.lr.ph2399.i.preheader, label %vector.main.loop.iter.check2333

vector.main.loop.iter.check2333:                  ; preds = %iter.check2385
  %min.iters.check2334 = icmp ult i32 %i.fgb, 124
  br i1 %min.iters.check2334, label %vec.epilog.ph2389, label %vector.ph2335

vector.ph2335:                                    ; preds = %vector.main.loop.iter.check2333
  %i.fge = and i64 %i.fgd, 28
  %n.vec2336 = and i64 %i.fgd, 2147483616         ; 5 uses
  %i.fgf = trunc nuw nsw i64 %n.vec2336 to i32
  %i.fgg = shl i32 %i.fgf, 2
  %i.fgh = add i32 %.01786.lcssa3391.i, %i.fgg    ; 2 uses
  %i.fgi = shl nuw nsw i64 %n.vec2336, 2          ; 2 uses
  %i.fgj = getelementptr i8, ptr %.11790.i, i64 %i.fgi ; 2 uses
  %i.fgk = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.fgi ; 2 uses
  br label %vector.body2337

vector.body2337:                                  ; preds = %vector.body2337, %vector.ph2335
  %index2338 = phi i64 [ 0, %vector.ph2335 ], [ %index.next2371, %vector.body2337 ] ; 2 uses
  %vec.phi2339 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fhr, %vector.body2337 ]
  %vec.phi2340 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fhs, %vector.body2337 ]
  %vec.phi2341 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fhj, %vector.body2337 ]
  %vec.phi2342 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fhk, %vector.body2337 ]
  %vec.phi2343 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fhb, %vector.body2337 ]
  %vec.phi2344 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fhc, %vector.body2337 ]
  %vec.phi2345 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgt, %vector.body2337 ]
  %vec.phi2346 = phi <16 x i32> [ zeroinitializer, %vector.ph2335 ], [ %i.fgu, %vector.body2337 ]
  %i.fgl = shl i64 %index2338, 2                  ; 3 uses
  %i.fgm = or disjoint i64 %i.fgl, 64             ; 2 uses
  %next.gep2347 = getelementptr i8, ptr %.11790.i, i64 %i.fgl
  %next.gep2348 = getelementptr i8, ptr %.11790.i, i64 %i.fgm
  %next.gep2349 = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.fgl
  %next.gep2350 = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.fgm
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
  %i.fgn = sext <16 x i8> %strided.vec2352 to <16 x i32>
  %i.fgo = sext <16 x i8> %strided.vec2357 to <16 x i32>
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
  %i.fgp = sext <16 x i8> %strided.vec2362 to <16 x i32>
  %i.fgq = sext <16 x i8> %strided.vec2367 to <16 x i32>
  %i.fgr = mul nsw <16 x i32> %i.fgp, %i.fgn
  %i.fgs = mul nsw <16 x i32> %i.fgq, %i.fgo
  %i.fgt = add <16 x i32> %i.fgr, %vec.phi2345    ; 2 uses
  %i.fgu = add <16 x i32> %i.fgs, %vec.phi2346    ; 2 uses
  %i.fgv = sext <16 x i8> %strided.vec2353 to <16 x i32>
  %i.fgw = sext <16 x i8> %strided.vec2358 to <16 x i32>
  %i.fgx = sext <16 x i8> %strided.vec2363 to <16 x i32>
  %i.fgy = sext <16 x i8> %strided.vec2368 to <16 x i32>
  %i.fgz = mul nsw <16 x i32> %i.fgx, %i.fgv
  %i.fha = mul nsw <16 x i32> %i.fgy, %i.fgw
  %i.fhb = add <16 x i32> %i.fgz, %vec.phi2343    ; 2 uses
  %i.fhc = add <16 x i32> %i.fha, %vec.phi2344    ; 2 uses
  %i.fhd = sext <16 x i8> %strided.vec2354 to <16 x i32>
  %i.fhe = sext <16 x i8> %strided.vec2359 to <16 x i32>
  %i.fhf = sext <16 x i8> %strided.vec2364 to <16 x i32>
  %i.fhg = sext <16 x i8> %strided.vec2369 to <16 x i32>
  %i.fhh = mul nsw <16 x i32> %i.fhf, %i.fhd
  %i.fhi = mul nsw <16 x i32> %i.fhg, %i.fhe
  %i.fhj = add <16 x i32> %i.fhh, %vec.phi2341    ; 2 uses
  %i.fhk = add <16 x i32> %i.fhi, %vec.phi2342    ; 2 uses
  %i.fhl = sext <16 x i8> %strided.vec2355 to <16 x i32>
  %i.fhm = sext <16 x i8> %strided.vec2360 to <16 x i32>
  %i.fhn = sext <16 x i8> %strided.vec2365 to <16 x i32>
  %i.fho = sext <16 x i8> %strided.vec2370 to <16 x i32>
  %i.fhp = mul nsw <16 x i32> %i.fhn, %i.fhl
  %i.fhq = mul nsw <16 x i32> %i.fho, %i.fhm
  %i.fhr = add <16 x i32> %i.fhp, %vec.phi2339    ; 2 uses
  %i.fhs = add <16 x i32> %i.fhq, %vec.phi2340    ; 2 uses
  %index.next2371 = add nuw i64 %index2338, 32    ; 2 uses
  %i.fht = icmp eq i64 %index.next2371, %n.vec2336
  br i1 %i.fht, label %middle.block2372, label %vector.body2337, !llvm.loop !513

middle.block2372:                                 ; preds = %vector.body2337
  %bin.rdx2373 = add <16 x i32> %i.fhs, %i.fhr
  %i.fhu = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2373) ; 2 uses
  %bin.rdx2374 = add <16 x i32> %i.fhk, %i.fhj
  %i.fhv = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2374) ; 2 uses
  %bin.rdx2375 = add <16 x i32> %i.fhc, %i.fhb
  %i.fhw = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2375) ; 2 uses
  %bin.rdx2376 = add <16 x i32> %i.fgu, %i.fgt
  %i.fhx = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2376) ; 2 uses
  %cmp.n2377 = icmp eq i64 %n.vec2336, %i.fgd
  %i.fhy = insertelement <4 x i32> poison, i32 %i.fhx, i64 0
  %i.fhz = insertelement <4 x i32> %i.fhy, i32 %i.fhw, i64 1
  %i.fia = insertelement <4 x i32> %i.fhz, i32 %i.fhv, i64 2
  %i.fib = insertelement <4 x i32> %i.fia, i32 %i.fhu, i64 3 ; 2 uses
  br i1 %cmp.n2377, label %._crit_edge2400.i, label %vec.epilog.iter.check2387

vec.epilog.iter.check2387:                        ; preds = %middle.block2372
  %min.epilog.iters.check2388 = icmp eq i64 %i.fge, 0
  br i1 %min.epilog.iters.check2388, label %.lr.ph2399.i.preheader, label %vec.epilog.ph2389, !prof !26

vec.epilog.ph2389:                                ; preds = %vector.main.loop.iter.check2333, %vec.epilog.iter.check2387
  %vec.epilog.resume.val2378 = phi i64 [ %n.vec2336, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2379 = phi i32 [ %i.fhu, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2380 = phi i32 [ %i.fhv, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2381 = phi i32 [ %i.fhw, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %bc.merge.rdx2382 = phi i32 [ %i.fhx, %vec.epilog.iter.check2387 ], [ 0, %vector.main.loop.iter.check2333 ]
  %n.vec2390 = and i64 %i.fgd, 2147483644         ; 4 uses
  %i.fic = trunc nuw nsw i64 %n.vec2390 to i32
  %i.fid = shl i32 %i.fic, 2
  %i.fie = add i32 %.01786.lcssa3391.i, %i.fid    ; 2 uses
  %i.fif = shl nuw nsw i64 %n.vec2390, 2          ; 2 uses
  %i.fig = getelementptr i8, ptr %.11790.i, i64 %i.fif ; 2 uses
  %i.fih = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.fif ; 2 uses
  %i.fii = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2379, i64 0
  %i.fij = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2380, i64 0
  %i.fik = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2381, i64 0
  %i.fil = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2382, i64 0
  br label %vec.epilog.vector.body2391

vec.epilog.vector.body2391:                       ; preds = %vec.epilog.vector.body2391, %vec.epilog.ph2389
  %index2392 = phi i64 [ %vec.epilog.resume.val2378, %vec.epilog.ph2389 ], [ %index.next2409, %vec.epilog.vector.body2391 ] ; 2 uses
  %vec.phi2393 = phi <4 x i32> [ %i.fii, %vec.epilog.ph2389 ], [ %i.fjc, %vec.epilog.vector.body2391 ]
  %vec.phi2394 = phi <4 x i32> [ %i.fij, %vec.epilog.ph2389 ], [ %i.fiy, %vec.epilog.vector.body2391 ]
  %vec.phi2395 = phi <4 x i32> [ %i.fik, %vec.epilog.ph2389 ], [ %i.fiu, %vec.epilog.vector.body2391 ]
  %vec.phi2396 = phi <4 x i32> [ %i.fil, %vec.epilog.ph2389 ], [ %i.fiq, %vec.epilog.vector.body2391 ]
  %i.fim = shl i64 %index2392, 2                  ; 2 uses
  %next.gep2397 = getelementptr i8, ptr %.11790.i, i64 %i.fim
  %next.gep2398 = getelementptr i8, ptr %.181986.lcssa3387.i, i64 %i.fim
  %wide.vec2399 = load <16 x i8>, ptr %next.gep2397, align 1, !tbaa !17 ; 4 uses
  %strided.vec2400 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2401 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2402 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2403 = shufflevector <16 x i8> %wide.vec2399, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fin = sext <4 x i8> %strided.vec2400 to <4 x i32>
  %wide.vec2404 = load <16 x i8>, ptr %next.gep2398, align 1, !tbaa !17 ; 4 uses
  %strided.vec2405 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2406 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2407 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2408 = shufflevector <16 x i8> %wide.vec2404, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fio = sext <4 x i8> %strided.vec2405 to <4 x i32>
  %i.fip = mul nsw <4 x i32> %i.fio, %i.fin
  %i.fiq = add <4 x i32> %i.fip, %vec.phi2396     ; 2 uses
  %i.fir = sext <4 x i8> %strided.vec2401 to <4 x i32>
  %i.fis = sext <4 x i8> %strided.vec2406 to <4 x i32>
  %i.fit = mul nsw <4 x i32> %i.fis, %i.fir
  %i.fiu = add <4 x i32> %i.fit, %vec.phi2395     ; 2 uses
  %i.fiv = sext <4 x i8> %strided.vec2402 to <4 x i32>
  %i.fiw = sext <4 x i8> %strided.vec2407 to <4 x i32>
  %i.fix = mul nsw <4 x i32> %i.fiw, %i.fiv
  %i.fiy = add <4 x i32> %i.fix, %vec.phi2394     ; 2 uses
  %i.fiz = sext <4 x i8> %strided.vec2403 to <4 x i32>
  %i.fja = sext <4 x i8> %strided.vec2408 to <4 x i32>
  %i.fjb = mul nsw <4 x i32> %i.fja, %i.fiz
  %i.fjc = add <4 x i32> %i.fjb, %vec.phi2393     ; 2 uses
  %index.next2409 = add nuw i64 %index2392, 4     ; 2 uses
  %i.fjd = icmp eq i64 %index.next2409, %n.vec2390
  br i1 %i.fjd, label %vec.epilog.middle.block2410, label %vec.epilog.vector.body2391, !llvm.loop !514

vec.epilog.middle.block2410:                      ; preds = %vec.epilog.vector.body2391
  %i.fje = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fjc)
  %i.fjf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fiy)
  %i.fjg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fiu)
  %i.fjh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fiq)
  %cmp.n2411 = icmp eq i64 %n.vec2390, %i.fgd
  %i.fji = insertelement <4 x i32> poison, i32 %i.fjh, i64 0
  %i.fjj = insertelement <4 x i32> %i.fji, i32 %i.fjg, i64 1
  %i.fjk = insertelement <4 x i32> %i.fjj, i32 %i.fjf, i64 2
  %i.fjl = insertelement <4 x i32> %i.fjk, i32 %i.fje, i64 3 ; 2 uses
  br i1 %cmp.n2411, label %._crit_edge2400.i, label %.lr.ph2399.i.preheader

.lr.ph2399.i.preheader:                           ; preds = %iter.check2385, %vec.epilog.iter.check2387, %vec.epilog.middle.block2410
  %.117872393.i.ph = phi i32 [ %.01786.lcssa3391.i, %iter.check2385 ], [ %i.fgh, %vec.epilog.iter.check2387 ], [ %i.fie, %vec.epilog.middle.block2410 ]
  %.217912392.i.ph = phi ptr [ %.11790.i, %iter.check2385 ], [ %i.fgj, %vec.epilog.iter.check2387 ], [ %i.fig, %vec.epilog.middle.block2410 ]
  %.1919872391.i.ph = phi ptr [ %.181986.lcssa3387.i, %iter.check2385 ], [ %i.fgk, %vec.epilog.iter.check2387 ], [ %i.fih, %vec.epilog.middle.block2410 ]
  %.ph = phi <4 x i32> [ zeroinitializer, %iter.check2385 ], [ %i.fib, %vec.epilog.iter.check2387 ], [ %i.fjl, %vec.epilog.middle.block2410 ]
  br label %.lr.ph2399.i

.lr.ph2399.i:                                     ; preds = %.lr.ph2399.i.preheader, %.lr.ph2399.i
  %.117872393.i = phi i32 [ %i.fjv, %.lr.ph2399.i ], [ %.117872393.i.ph, %.lr.ph2399.i.preheader ]
  %.217912392.i = phi ptr [ %i.fjt, %.lr.ph2399.i ], [ %.217912392.i.ph, %.lr.ph2399.i.preheader ] ; 2 uses
  %.1919872391.i = phi ptr [ %i.fju, %.lr.ph2399.i ], [ %.1919872391.i.ph, %.lr.ph2399.i.preheader ] ; 2 uses
  %i.fjm = phi <4 x i32> [ %i.fjs, %.lr.ph2399.i ], [ %.ph, %.lr.ph2399.i.preheader ]
  %i.fjn = load <4 x i8>, ptr %.217912392.i, align 1, !tbaa !17
  %i.fjo = sext <4 x i8> %i.fjn to <4 x i32>
  %i.fjp = load <4 x i8>, ptr %.1919872391.i, align 1, !tbaa !17
  %i.fjq = sext <4 x i8> %i.fjp to <4 x i32>
  %i.fjr = mul nsw <4 x i32> %i.fjq, %i.fjo
end_hunk_2
