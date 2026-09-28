Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512vnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.bza = load float, ptr %i.byy, align 1, !tbaa !17
  %i.bzb = insertelement <4 x float> poison, float %i.bza, i64 0
  %i.bzc = sext <16 x i8> %i.byz to <16 x i16>
  %i.bzd = bitcast <4 x float> %i.bzb to <16 x i8>
  %i.bze = shufflevector <16 x i8> %i.bzd, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bzf = zext <16 x i8> %i.bze to <16 x i16>
  %i.bzg = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bzc, <16 x i16> %i.bzf) ; 2 uses
  %i.bzh = shufflevector <8 x i32> %i.bzg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bzi = shufflevector <8 x i32> %i.bzg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bzj = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bzh, <4 x i32> %i.bzi)
  %i.bzk = add <4 x i32> %i.bzj, %i.byw           ; 3 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %.021101968.i, i64 32 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %.1720671969.i, i64 8 ; 2 uses
  %niter3226.next.1 = add i32 %niter3226, 2       ; 2 uses
  %niter3226.ncmp.1.not = icmp eq i32 %niter3226.next.1, %unroll_iter3225
  br i1 %niter3226.ncmp.1.not, label %.unr-lcssa3216, label %.lr.ph1971.i, !llvm.loop !444

.unr-lcssa3216:                                   ; preds = %.lr.ph1971.i
  br i1 %lcmp.mod3221.not.not, label %.lr.ph1971.i.epil.preheader, label %bb.as

.lr.ph1971.i.epil.preheader:                      ; preds = %.unr-lcssa3216, %.lr.ph1971.i.preheader
  %.1720671969.i.epil.init = phi ptr [ %.1620661994.i, %.lr.ph1971.i.preheader ], [ %i.bzm, %.unr-lcssa3216 ]
  %.021101968.i.epil.init = phi ptr [ %.42001.i, %.lr.ph1971.i.preheader ], [ %i.bzl, %.unr-lcssa3216 ]
  %.epil.init3220 = phi <4 x i32> [ %i.byj, %.lr.ph1971.i.preheader ], [ %i.bzk, %.unr-lcssa3216 ]
  tail call void @llvm.assume(i1 %lcmp.mod3224)
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
  %i.bzy = add <4 x i32> %i.bzx, %.epil.init3220
  br label %bb.as

bb.as:                                            ; preds = %.unr-lcssa3216, %.lr.ph1971.i.epil.preheader
  %.lcssa2915 = phi <4 x i32> [ %i.bzk, %.unr-lcssa3216 ], [ %i.bzy, %.lr.ph1971.i.epil.preheader ]
  %i.bzz = getelementptr i8, ptr %.1620661994.i, i64 %i.afh
  %scevgep2945.i = getelementptr i8, ptr %i.bzz, i64 4
  %i.caa = load <4 x i32>, ptr %indvars.iv2941.i, align 1, !tbaa !17
  %i.cab = sub <4 x i32> %.lcssa2915, %i.caa
  br label %._crit_edge1972.i

._crit_edge1972.i:                                ; preds = %bb.as, %bb.ar
  %.172067.lcssa3264.i = phi ptr [ %scevgep2945.i, %bb.as ], [ %.1620661994.i, %bb.ar ] ; 2 uses
  %.02114.lcssa3261.i = phi i32 [ %i.aez, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.cac = phi <4 x i32> [ %i.cab, %bb.as ], [ %i.byj, %bb.ar ] ; 2 uses
  %.12111.i = phi ptr [ %i.buz, %bb.as ], [ %.42001.i, %bb.ar ] ; 2 uses
  %i.cad = or disjoint i32 %.02114.lcssa3261.i, 1
  %i.cae = icmp slt i32 %i.cad, %8
  br i1 %i.cae, label %.lr.ph1981.i, label %.preheader1072.i

.preheader1072.i:                                 ; preds = %.lr.ph1981.i, %._crit_edge1972.i
  %.lcssa1173.i = phi <4 x i32> [ %i.cac, %._crit_edge1972.i ], [ %i.cbe, %.lr.ph1981.i ] ; 3 uses
  %.12115.lcssa.i = phi i32 [ %.02114.lcssa3261.i, %._crit_edge1972.i ], [ %i.cbh, %.lr.ph1981.i ] ; 5 uses
  %.22112.lcssa.i = phi ptr [ %.12111.i, %._crit_edge1972.i ], [ %i.cbf, %.lr.ph1981.i ] ; 3 uses
  %.182068.lcssa.i = phi ptr [ %.172067.lcssa3264.i, %._crit_edge1972.i ], [ %i.cbg, %.lr.ph1981.i ] ; 4 uses
  %i.caf = icmp slt i32 %.12115.lcssa.i, %8
  br i1 %i.caf, label %.lr.ph1989.i.preheader, label %._crit_edge1990.i

.lr.ph1989.i.preheader:                           ; preds = %.preheader1072.i
  %i.cag = sub i32 %8, %.12115.lcssa.i
  %.neg3310 = add i32 %.12115.lcssa.i, 1
  %xtraiter3227 = and i32 %i.cag, 1
  %lcmp.mod3228.not = icmp eq i32 %xtraiter3227, 0
  br i1 %lcmp.mod3228.not, label %.lr.ph1989.i.prol.loopexit, label %.lr.ph1989.i.prol

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
  %.lcssa2921.unr = phi <4 x i32> [ poison, %.lr.ph1989.i.preheader ], [ %i.car, %.lr.ph1989.i.prol ]
  %.lcssa2920.unr = phi ptr [ poison, %.lr.ph1989.i.preheader ], [ %i.cat, %.lr.ph1989.i.prol ]
  %.1920691988.i.unr = phi ptr [ %.182068.lcssa.i, %.lr.ph1989.i.preheader ], [ %i.cat, %.lr.ph1989.i.prol ]
  %.321131987.i.unr = phi ptr [ %.22112.lcssa.i, %.lr.ph1989.i.preheader ], [ %i.cas, %.lr.ph1989.i.prol ]
  %.221161986.i.unr = phi i32 [ %.12115.lcssa.i, %.lr.ph1989.i.preheader ], [ %i.cau, %.lr.ph1989.i.prol ]
  %.unr3229 = phi <4 x i32> [ %.lcssa1173.i, %.lr.ph1989.i.preheader ], [ %i.car, %.lr.ph1989.i.prol ]
  %i.cav = icmp eq i32 %8, %.neg3310
  br i1 %i.cav, label %._crit_edge1990.i, label %.lr.ph1989.i

.lr.ph1981.i:                                     ; preds = %._crit_edge1972.i, %.lr.ph1981.i
  %.1820681979.i = phi ptr [ %i.cbg, %.lr.ph1981.i ], [ %.172067.lcssa3264.i, %._crit_edge1972.i ] ; 2 uses
  %.221121978.i = phi ptr [ %i.cbf, %.lr.ph1981.i ], [ %.12111.i, %._crit_edge1972.i ] ; 2 uses
  %.121151977.i = phi i32 [ %i.cbh, %.lr.ph1981.i ], [ %.02114.lcssa3261.i, %._crit_edge1972.i ]
  %i.caw = phi <4 x i32> [ %i.cbe, %.lr.ph1981.i ], [ %i.cac, %._crit_edge1972.i ]
  %i.cax = load <8 x i8>, ptr %.221121978.i, align 1, !tbaa !17
  %i.cay = load i16, ptr %.1820681979.i, align 2, !tbaa !518
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
  %i.cbk = phi <4 x i32> [ %i.cci, %.lr.ph1989.i ], [ %.unr3229, %.lr.ph1989.i.prol.loopexit ]
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
  %exitcond2946.not.i.1 = icmp eq i32 %i.ccl, %8
  br i1 %exitcond2946.not.i.1, label %._crit_edge1990.i, label %.lr.ph1989.i, !llvm.loop !446

._crit_edge1990.i:                                ; preds = %.lr.ph1989.i.prol.loopexit, %.lr.ph1989.i, %.preheader1072.i
  %.lcssa1174.i = phi <4 x i32> [ %.lcssa1173.i, %.preheader1072.i ], [ %.lcssa2921.unr, %.lr.ph1989.i.prol.loopexit ], [ %i.cci, %.lr.ph1989.i ]
  %.192069.lcssa.i = phi ptr [ %.182068.lcssa.i, %.preheader1072.i ], [ %.lcssa2920.unr, %.lr.ph1989.i.prol.loopexit ], [ %i.cck, %.lr.ph1989.i ]
  store <4 x i32> %.lcssa1174.i, ptr %.171995.i, align 16, !tbaa !17
  %i.ccm = getelementptr inbounds nuw i8, ptr %.171995.i, i64 16 ; 2 uses
  %i.ccn = add nuw nsw i32 %.420741993.i, 1       ; 2 uses
  %exitcond2947.not.i = icmp eq i32 %i.ccn, %6
  br i1 %exitcond2947.not.i, label %._crit_edge1997.i, label %.lr.ph1996.i, !llvm.loop !447

._crit_edge1997.i:                                ; preds = %._crit_edge1990.i, %.preheader1077.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader1077.i ], [ %i.ccm, %._crit_edge1990.i ] ; 2 uses
  %i.cco = getelementptr inbounds i8, ptr %.42001.i, i64 %i.aew
  %spec.select2229.i = getelementptr inbounds nuw i8, ptr %i.cco, i64 %spec.select2229.idx.i ; 2 uses
  %i.ccp = add nuw nsw i32 %.218361999.i, 4       ; 3 uses
  %i.ccq = or disjoint i32 %i.ccp, 3
  %i.ccr = icmp slt i32 %i.ccq, %4
  %i.ccs = getelementptr i8, ptr %indvars.iv2941.i, i64 %spec.select2229.idx.i
  %scevgep2942.i = getelementptr i8, ptr %i.ccs, i64 %i.aew
  %i.cct = getelementptr i8, ptr %indvars.iv867, i64 %spec.select2229.idx.i
  %scevgep868 = getelementptr i8, ptr %i.cct, i64 %i.aew
  br i1 %i.ccr, label %.preheader1081.i, label %.preheader1071.i, !llvm.loop !448

.preheader1070.i:                                 ; preds = %._crit_edge2206.i, %.preheader1070.lr.ph.i
  %indvars.iv871 = phi ptr [ %scevgep872, %._crit_edge2206.i ], [ %scevgep870, %.preheader1070.lr.ph.i ] ; 4 uses
  %indvars.iv2956.i = phi ptr [ %scevgep2957.i, %._crit_edge2206.i ], [ %scevgep2955.i, %.preheader1070.lr.ph.i ] ; 5 uses
  %.62210.i = phi ptr [ %spec.select2230.i, %._crit_edge2206.i ], [ %.4.lcssa.i, %.preheader1070.lr.ph.i ] ; 22 uses
  %.182209.i = phi ptr [ %.23.lcssa.i, %._crit_edge2206.i ], [ %.12.lcssa.i, %.preheader1070.lr.ph.i ] ; 2 uses
  %.318372208.i = phi i32 [ %i.dud, %._crit_edge2206.i ], [ %.21836.lcssa.i, %.preheader1070.lr.ph.i ]
  br i1 %i.bgg, label %.lr.ph2037.i, label %.preheader1069.i

.preheader1060.i:                                 ; preds = %._crit_edge2206.i, %.preheader1071.i
  %.31837.lcssa.i = phi i32 [ %.21836.lcssa.i, %.preheader1071.i ], [ %i.dud, %._crit_edge2206.i ] ; 2 uses
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
  %i.cdd = zext i32 %i.ccz to i64                 ; 3 uses
  %i.cde = lshr i64 %i.cdd, 2                     ; 5 uses
  %i.cdf = shl nuw nsw i64 %i.cde, 5
  %i.cdg = shl nuw nsw i64 %i.cde, 4
  %i.cdh = shl nuw nsw i64 %i.cde, 3
  %i.cdi = and i64 %i.cdd, 4294967292
  %i.cdj = shl nuw nsw i64 %i.cde, 6
  %i.cdk = and i64 %i.cdd, 4294967292             ; 2 uses
  %scevgep874 = getelementptr i8, ptr %.6.lcssa.i, i64 %i.cdk
  %i.cdl = add nsw i64 %spec.select2231.idx.i, %i.ccy ; 2 uses
  %i.cdm = getelementptr i8, ptr %.6.lcssa.i, i64 %i.cdk
  %scevgep877 = getelementptr i8, ptr %i.cdm, i64 4
  %i.cdn = add nuw nsw i64 %i.cde, 1              ; 10 uses
  %i.cdo = add i32 %8, -2
  %i.cdp = add i32 %8, -4                         ; 4 uses
  %i.cdq = lshr i32 %i.cdp, 2
  %i.cdr = add nuw nsw i32 %i.cdq, 1              ; 6 uses
  %xtraiter3264 = and i32 %i.cdr, 3               ; 3 uses
  %i.cds = icmp ult i32 %i.cdp, 12
  %unroll_iter3274 = and i32 %i.cdr, 2147483644
  %lcmp.mod3268.not = icmp eq i32 %xtraiter3264, 0
  %lcmp.mod3273 = icmp ne i32 %xtraiter3264, 0
  %xtraiter3280 = and i32 %i.cdr, 3               ; 3 uses
  %i.cdt = icmp ult i32 %i.cdp, 12
  %unroll_iter3289 = and i32 %i.cdr, 2147483644
  %lcmp.mod3284.not = icmp eq i32 %xtraiter3280, 0
  %lcmp.mod3288 = icmp ne i32 %xtraiter3280, 0
  %xtraiter3295 = and i32 %i.cdr, 3               ; 3 uses
  %i.cdu = icmp ult i32 %i.cdp, 12
  %unroll_iter3303 = and i32 %i.cdr, 2147483644
  %lcmp.mod3299.not = icmp eq i32 %xtraiter3295, 0
  %lcmp.mod3302 = icmp ne i32 %xtraiter3295, 0
  %min.iters.check2539 = icmp ult i32 %i.ccz, 12
  %min.iters.check2541 = icmp ult i32 %i.ccz, 124
  %i.cdv = and i64 %i.cdn, 28
  %n.vec2543 = and i64 %i.cdn, 2147483616         ; 6 uses
  %i.cdw = trunc nuw nsw i64 %n.vec2543 to i32
  %i.cdx = shl i32 %i.cdw, 2
  %i.cdy = shl nuw nsw i64 %n.vec2543, 2
  %i.cdz = shl nuw nsw i64 %n.vec2543, 3
  %cmp.n2602 = icmp eq i64 %i.cdn, %n.vec2543
  %min.epilog.iters.check2611 = icmp eq i64 %i.cdv, 0
  %n.vec2613 = and i64 %i.cdn, 2147483644         ; 5 uses
  %i.cea = trunc nuw nsw i64 %n.vec2613 to i32
  %i.ceb = shl i32 %i.cea, 2
  %i.cec = shl nuw nsw i64 %n.vec2613, 2
  %i.ced = shl nuw nsw i64 %n.vec2613, 3
  %cmp.n2636 = icmp eq i64 %i.cdn, %n.vec2613
  %min.iters.check2291 = icmp ult i32 %i.ccz, 12
  %min.iters.check2293 = icmp ult i32 %i.ccz, 124
  %i.cee = and i64 %i.cdn, 28
  %n.vec2295 = and i64 %i.cdn, 2147483616         ; 5 uses
  %i.cef = trunc nuw nsw i64 %n.vec2295 to i32
  %i.ceg = shl i32 %i.cef, 2
  %i.ceh = shl nuw nsw i64 %n.vec2295, 2          ; 2 uses
  %cmp.n2335 = icmp eq i64 %i.cdn, %n.vec2295
  %min.epilog.iters.check2343 = icmp eq i64 %i.cee, 0
  %n.vec2345 = and i64 %i.cdn, 2147483644         ; 4 uses
  %i.cei = trunc nuw nsw i64 %n.vec2345 to i32
  %i.cej = shl i32 %i.cei, 2
  %i.cek = shl nuw nsw i64 %n.vec2345, 2          ; 2 uses
  %cmp.n2363 = icmp eq i64 %i.cdn, %n.vec2345
  br label %.preheader1059.i

.preheader1069.i:                                 ; preds = %._crit_edge2030.i, %.preheader1070.i
  %.02137.lcssa.i = phi i32 [ 0, %.preheader1070.i ], [ %i.bgo, %._crit_edge2030.i ] ; 3 uses
  %.02117.lcssa.i = phi ptr [ %.val8, %.preheader1070.i ], [ %.32120.lcssa.i, %._crit_edge2030.i ] ; 2 uses
  %.19.lcssa.i = phi ptr [ %.182209.i, %.preheader1070.i ], [ %i.chj, %._crit_edge2030.i ] ; 2 uses
  %i.cel = or disjoint i32 %.02137.lcssa.i, 7
  %i.cem = icmp slt i32 %i.cel, %6
  br i1 %i.cem, label %.lr.ph2073.i.preheader, label %.preheader1068.i

.lr.ph2073.i.preheader:                           ; preds = %.preheader1069.i
  %i.cen = getelementptr inbounds nuw i8, ptr %indvars.iv871, i64 16
  br label %.lr.ph2073.i

.lr.ph2037.i:                                     ; preds = %.preheader1070.i, %._crit_edge2030.i
  %.192036.i = phi ptr [ %i.chj, %._crit_edge2030.i ], [ %.182209.i, %.preheader1070.i ] ; 5 uses
  %.021172035.i = phi ptr [ %.32120.lcssa.i, %._crit_edge2030.i ], [ %.val8, %.preheader1070.i ] ; 3 uses
  %.021372034.i = phi i32 [ %i.chk, %._crit_edge2030.i ], [ 0, %.preheader1070.i ]
  br i1 %i.bgh, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph2037.i
  %i.ceo = load <16 x i32>, ptr %.192036.i, align 1, !tbaa !17
  %i.cep = getelementptr inbounds nuw i8, ptr %.192036.i, i64 64
  %i.ceq = load <16 x i32>, ptr %i.cep, align 1, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph2037.i
  %i.cer = phi <16 x i32> [ %i.ceo, %bb.at ], [ zeroinitializer, %.lr.ph2037.i ] ; 2 uses
  %i.ces = phi <16 x i32> [ %i.ceq, %bb.at ], [ zeroinitializer, %.lr.ph2037.i ] ; 2 uses
  br i1 %i.bgi, label %.lr.ph2009.i, label %._crit_edge2010.i

.lr.ph2009.i:                                     ; preds = %bb.au, %.lr.ph2009.i
  %.121182007.i = phi ptr [ %i.cff, %.lr.ph2009.i ], [ %.021172035.i, %bb.au ] ; 2 uses
  %.021422006.i = phi ptr [ %i.cfe, %.lr.ph2009.i ], [ %.62210.i, %bb.au ] ; 3 uses
  %.021462005.i = phi i32 [ %i.cfg, %.lr.ph2009.i ], [ 0, %bb.au ]
  %i.cet = phi <16 x i32> [ %i.cfd, %.lr.ph2009.i ], [ %i.ces, %bb.au ]
  %i.ceu = phi <16 x i32> [ %i.cfc, %.lr.ph2009.i ], [ %i.cer, %bb.au ]
  %i.cev = load double, ptr %.021422006.i, align 8, !tbaa !516
  %i.cew = insertelement <8 x double> poison, double %i.cev, i64 0
  %i.cex = bitcast <8 x double> %i.cew to <8 x i64>
  %i.cey = shufflevector <8 x i64> %i.cex, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.cez = load <64 x i8>, ptr %.121182007.i, align 1, !tbaa !17 ; 2 uses
  %i.cfa = shufflevector <64 x i8> %i.cez, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51>
  %i.cfb = bitcast <8 x i64> %i.cey to <64 x i8>  ; 2 uses
  %i.cfc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ceu, <64 x i8> %i.cez, <64 x i8> %i.cfb) ; 2 uses
  %i.cfd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cet, <64 x i8> %i.cfa, <64 x i8> %i.cfb) ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %.021422006.i, i64 8 ; 2 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %.121182007.i, i64 64
  %i.cfg = add nuw nsw i32 %.021462005.i, 4       ; 2 uses
  %i.cfh = or disjoint i32 %i.cfg, 3
  %i.cfi = icmp slt i32 %i.cfh, %8
  br i1 %i.cfi, label %.lr.ph2009.i, label %bb.av, !llvm.loop !449

bb.av:                                            ; preds = %.lr.ph2009.i
  %i.cfj = getelementptr i8, ptr %.021172035.i, i64 %i.bgw
  %scevgep869 = getelementptr i8, ptr %i.cfj, i64 64
  %i.cfk = load double, ptr %i.cfe, align 8, !tbaa !516
  %i.cfl = insertelement <8 x double> poison, double %i.cfk, i64 0
  %i.cfm = bitcast <8 x double> %i.cfl to <16 x i32>
  %i.cfn = shufflevector <16 x i32> %i.cfm, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cfo = sub <16 x i32> %i.cfc, %i.cfn
  %i.cfp = sub <16 x i32> %i.cfd, %i.cfn
  %i.cfq = getelementptr inbounds nuw i8, ptr %.021422006.i, i64 16
  br label %._crit_edge2010.i

._crit_edge2010.i:                                ; preds = %bb.av, %bb.au
  %.12118.lcssa3276.i = phi ptr [ %scevgep869, %bb.av ], [ %.021172035.i, %bb.au ] ; 2 uses
  %.02146.lcssa3273.i = phi i32 [ %i.bgn, %bb.av ], [ 0, %bb.au ] ; 3 uses
  %i.cfr = phi <16 x i32> [ %i.cfo, %bb.av ], [ %i.cer, %bb.au ] ; 2 uses
  %i.cfs = phi <16 x i32> [ %i.cfp, %bb.av ], [ %i.ces, %bb.au ] ; 2 uses
  %.12143.i = phi ptr [ %i.cfq, %bb.av ], [ %.62210.i, %bb.au ] ; 2 uses
  %i.cft = or disjoint i32 %.02146.lcssa3273.i, 1
  %i.cfu = icmp slt i32 %i.cft, %8
  br i1 %i.cfu, label %.lr.ph2020.i, label %.preheader1065.i

.preheader1065.i:                                 ; preds = %.lr.ph2020.i, %._crit_edge2010.i
  %.lcssa1115.i = phi <16 x i32> [ %i.cfr, %._crit_edge2010.i ], [ %i.cgf, %.lr.ph2020.i ] ; 2 uses
  %.lcssa1114.i = phi <16 x i32> [ %i.cfs, %._crit_edge2010.i ], [ %i.cgi, %.lr.ph2020.i ] ; 2 uses
  %.12147.lcssa.i = phi i32 [ %.02146.lcssa3273.i, %._crit_edge2010.i ], [ %i.cgl, %.lr.ph2020.i ] ; 2 uses
  %.22144.lcssa.i = phi ptr [ %.12143.i, %._crit_edge2010.i ], [ %i.cgj, %.lr.ph2020.i ]
  %.22119.lcssa.i = phi ptr [ %.12118.lcssa3276.i, %._crit_edge2010.i ], [ %i.cgk, %.lr.ph2020.i ] ; 2 uses
  %i.cfv = icmp slt i32 %.12147.lcssa.i, %8
  br i1 %i.cfv, label %.lr.ph2029.i, label %._crit_edge2030.i

.lr.ph2020.i:                                     ; preds = %._crit_edge2010.i, %.lr.ph2020.i
  %.221192018.i = phi ptr [ %i.cgk, %.lr.ph2020.i ], [ %.12118.lcssa3276.i, %._crit_edge2010.i ] ; 2 uses
  %.221442017.i = phi ptr [ %i.cgj, %.lr.ph2020.i ], [ %.12143.i, %._crit_edge2010.i ] ; 2 uses
  %.121472016.i = phi i32 [ %i.cgl, %.lr.ph2020.i ], [ %.02146.lcssa3273.i, %._crit_edge2010.i ]
  %i.cfw = phi <16 x i32> [ %i.cgi, %.lr.ph2020.i ], [ %i.cfs, %._crit_edge2010.i ]
  %i.cfx = phi <16 x i32> [ %i.cgf, %.lr.ph2020.i ], [ %i.cfr, %._crit_edge2010.i ]
  %i.cfy = load float, ptr %.221442017.i, align 1, !tbaa !17
  %i.cfz = insertelement <8 x float> poison, float %i.cfy, i64 0
  %i.cga = shufflevector <8 x float> %i.cfz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cgb = load <32 x i8>, ptr %.221192018.i, align 1, !tbaa !17 ; 2 uses
  %i.cgc = bitcast <8 x float> %i.cga to <32 x i8>
  %i.cgd = sext <32 x i8> %i.cgc to <32 x i16>    ; 2 uses
  %i.cge = sext <32 x i8> %i.cgb to <32 x i16>
  %i.cgf = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.cfx, <32 x i16> %i.cgd, <32 x i16> %i.cge) ; 2 uses
  %i.cgg = shufflevector <32 x i8> %i.cgb, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.cgh = sext <32 x i8> %i.cgg to <32 x i16>
  %i.cgi = tail call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.cfw, <32 x i16> %i.cgd, <32 x i16> %i.cgh) ; 2 uses
  %i.cgj = getelementptr inbounds nuw i8, ptr %.221442017.i, i64 4 ; 2 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %.221192018.i, i64 32 ; 2 uses
  %i.cgl = add nuw nsw i32 %.121472016.i, 2       ; 3 uses
  %i.cgm = or disjoint i32 %i.cgl, 1
  %i.cgn = icmp slt i32 %i.cgm, %8
  br i1 %i.cgn, label %.lr.ph2020.i, label %.preheader1065.i, !llvm.loop !450

.lr.ph2029.i:                                     ; preds = %.preheader1065.i, %.lr.ph2029.i
  %.321202028.i = phi ptr [ %i.chg, %.lr.ph2029.i ], [ %.22119.lcssa.i, %.preheader1065.i ] ; 2 uses
  %.321452027.i = phi ptr [ %i.chf, %.lr.ph2029.i ], [ %.22144.lcssa.i, %.preheader1065.i ] ; 2 uses
  %.221482026.i = phi i32 [ %i.chh, %.lr.ph2029.i ], [ %.12147.lcssa.i, %.preheader1065.i ]
  %i.cgo = phi <16 x i32> [ %i.che, %.lr.ph2029.i ], [ %.lcssa1114.i, %.preheader1065.i ]
  %i.cgp = phi <16 x i32> [ %i.chb, %.lr.ph2029.i ], [ %.lcssa1115.i, %.preheader1065.i ]
  %i.cgq = load i16, ptr %.321452027.i, align 2, !tbaa !518
  %i.cgr = insertelement <8 x i16> poison, i16 %i.cgq, i64 0
  %i.cgs = load <16 x i8>, ptr %.321202028.i, align 16, !tbaa !17 ; 2 uses
  %i.cgt = bitcast <8 x i16> %i.cgr to <16 x i8>
  %i.cgu = shufflevector <16 x i8> %i.cgt, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cgv = sext <16 x i8> %i.cgu to <16 x i16>    ; 2 uses
  %i.cgw = sext <16 x i8> %i.cgs to <16 x i16>
  %i.cgx = shufflevector <16 x i8> %i.cgs, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.cgy = sext <16 x i8> %i.cgx to <16 x i16>
  %i.cgz = mul nsw <16 x i16> %i.cgv, %i.cgw
  %i.cha = sext <16 x i16> %i.cgz to <16 x i32>
  %i.chb = add <16 x i32> %i.cgp, %i.cha          ; 2 uses
  %i.chc = mul nsw <16 x i16> %i.cgy, %i.cgv
  %i.chd = sext <16 x i16> %i.chc to <16 x i32>
  %i.che = add <16 x i32> %i.cgo, %i.chd          ; 2 uses
  %i.chf = getelementptr inbounds nuw i8, ptr %.321452027.i, i64 2
  %i.chg = getelementptr inbounds nuw i8, ptr %.321202028.i, i64 16 ; 2 uses
  %i.chh = add nuw nsw i32 %.221482026.i, 1       ; 2 uses
  %exitcond2948.not.i = icmp eq i32 %i.chh, %8
  br i1 %exitcond2948.not.i, label %._crit_edge2030.i, label %.lr.ph2029.i, !llvm.loop !451

._crit_edge2030.i:                                ; preds = %.lr.ph2029.i, %.preheader1065.i
  %.lcssa1117.i = phi <16 x i32> [ %.lcssa1115.i, %.preheader1065.i ], [ %i.chb, %.lr.ph2029.i ]
  %.lcssa1116.i = phi <16 x i32> [ %.lcssa1114.i, %.preheader1065.i ], [ %i.che, %.lr.ph2029.i ]
  %.32120.lcssa.i = phi ptr [ %.22119.lcssa.i, %.preheader1065.i ], [ %i.chg, %.lr.ph2029.i ] ; 2 uses
  store <16 x i32> %.lcssa1117.i, ptr %.192036.i, align 1, !tbaa !17
  %i.chi = getelementptr inbounds nuw i8, ptr %.192036.i, i64 64
  store <16 x i32> %.lcssa1116.i, ptr %i.chi, align 1, !tbaa !17
  %i.chj = getelementptr inbounds nuw i8, ptr %.192036.i, i64 128 ; 2 uses
  %i.chk = add nuw nsw i32 %.021372034.i, 16      ; 2 uses
  %i.chl = or disjoint i32 %i.chk, 15
  %i.chm = icmp slt i32 %i.chl, %6
  br i1 %i.chm, label %.lr.ph2037.i, label %.preheader1069.i, !llvm.loop !452

.preheader1068.i:                                 ; preds = %._crit_edge2066.i, %.preheader1069.i
  %.12138.lcssa.i = phi i32 [ %.02137.lcssa.i, %.preheader1069.i ], [ %i.cmm, %._crit_edge2066.i ] ; 3 uses
  %.42121.lcssa.i = phi ptr [ %.02117.lcssa.i, %.preheader1069.i ], [ %.72124.lcssa.i, %._crit_edge2066.i ] ; 2 uses
end_hunk_0
