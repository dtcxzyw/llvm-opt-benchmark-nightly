Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_xop?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4ncnn32gemm_transB_packed_tile_int8_xopERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.azj = add nuw nsw i32 %.07221331.i, 8        ; 2 uses
  %i.azk = or disjoint i32 %i.azj, 7
  %i.azl = icmp slt i32 %i.azk, %6
  br i1 %i.azl, label %.lr.ph1333.i, label %.preheader1005.i, !llvm.loop !55

.preheader1004.i:                                 ; preds = %._crit_edge1350.i, %.preheader1005.i
  %.3729.lcssa.i = phi ptr [ %.0726.lcssa.i, %.preheader1005.i ], [ %.5731.lcssa.i, %._crit_edge1350.i ] ; 2 uses
  %.1723.lcssa.i = phi i32 [ %.0722.lcssa.i, %.preheader1005.i ], [ %i.bco, %._crit_edge1350.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.11.lcssa.i, %.preheader1005.i ], [ %i.bcn, %._crit_edge1350.i ] ; 2 uses
  %i.azm = or disjoint i32 %.1723.lcssa.i, 1
  %i.azn = icmp slt i32 %i.azm, %6
  br i1 %i.azn, label %.lr.ph1410.i, label %.preheader1003.i

.lr.ph1356.i:                                     ; preds = %.preheader1005.i, %._crit_edge1350.i
  %.121355.i = phi ptr [ %i.bcn, %._crit_edge1350.i ], [ %.11.lcssa.i, %.preheader1005.i ] ; 3 uses
  %.17231354.i = phi i32 [ %i.bco, %._crit_edge1350.i ], [ %.0722.lcssa.i, %.preheader1005.i ]
  %.37291353.i = phi ptr [ %.5731.lcssa.i, %._crit_edge1350.i ], [ %.0726.lcssa.i, %.preheader1005.i ] ; 4 uses
  br i1 %i.qp, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph1356.i
  %i.azo = load <4 x i32>, ptr %.121355.i, align 1, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph1356.i
  %i.azp = phi <4 x i32> [ %i.azo, %bb.z ], [ zeroinitializer, %.lr.ph1356.i ] ; 3 uses
  br i1 %i.qq, label %.lr.ph1341.i.preheader, label %.preheader1001.i

.lr.ph1341.i.preheader:                           ; preds = %bb.aa
  br i1 %i.rn, label %.lr.ph1341.i.epil.preheader, label %.lr.ph1341.i

.preheader1001.loopexit.i.unr-lcssa:              ; preds = %.lr.ph1341.i
  br i1 %lcmp.mod983.not.not, label %.lr.ph1341.i.epil.preheader, label %.preheader1001.loopexit.i

.lr.ph1341.i.epil.preheader:                      ; preds = %.preheader1001.loopexit.i.unr-lcssa, %.lr.ph1341.i.preheader
  %.07001338.i.epil.init = phi ptr [ %.26751448.i, %.lr.ph1341.i.preheader ], [ %i.bbj, %.preheader1001.loopexit.i.unr-lcssa ]
  %.47301337.i.epil.init = phi ptr [ %.37291353.i, %.lr.ph1341.i.preheader ], [ %i.bbk, %.preheader1001.loopexit.i.unr-lcssa ]
  %.epil.init982 = phi <4 x i32> [ %i.azp, %.lr.ph1341.i.preheader ], [ %i.bbi, %.preheader1001.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod985)
  %i.azq = load float, ptr %.07001338.i.epil.init, align 1, !tbaa !15
  %i.azr = insertelement <4 x float> poison, float %i.azq, i64 0
  %i.azs = load <8 x i8>, ptr %.47301337.i.epil.init, align 1, !tbaa !15
  %i.azt = bitcast <4 x float> %i.azr to <16 x i8>
  %i.azu = sext <8 x i8> %i.azs to <8 x i16>
  %i.azv = shufflevector <16 x i8> %i.azt, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.azw = sext <8 x i8> %i.azv to <8 x i16>
  %i.azx = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.azw, <8 x i16> %i.azu, <4 x i32> %.epil.init982)
  br label %.preheader1001.loopexit.i

.preheader1001.loopexit.i:                        ; preds = %.preheader1001.loopexit.i.unr-lcssa, %.lr.ph1341.i.epil.preheader
  %.lcssa766 = phi <4 x i32> [ %i.bbi, %.preheader1001.loopexit.i.unr-lcssa ], [ %i.azx, %.lr.ph1341.i.epil.preheader ]
  %i.azy = getelementptr i8, ptr %.37291353.i, i64 %i.qz
  %scevgep1622.i = getelementptr i8, ptr %i.azy, i64 8
  br label %.preheader1001.i

.preheader1001.i:                                 ; preds = %.preheader1001.loopexit.i, %bb.aa
  %.lcssa1028.i = phi <4 x i32> [ %i.azp, %bb.aa ], [ %.lcssa766, %.preheader1001.loopexit.i ] ; 3 uses
  %.4730.lcssa.i = phi ptr [ %.37291353.i, %bb.aa ], [ %scevgep1622.i, %.preheader1001.loopexit.i ] ; 4 uses
  %.0700.lcssa.i = phi ptr [ %.26751448.i, %bb.aa ], [ %indvars.iv1625.i, %.preheader1001.loopexit.i ] ; 3 uses
  %.0698.lcssa.i = phi i32 [ 0, %bb.aa ], [ %i.qv, %.preheader1001.loopexit.i ] ; 5 uses
  %i.azz = icmp slt i32 %.0698.lcssa.i, %8
  br i1 %i.azz, label %.lr.ph1349.i.preheader, label %._crit_edge1350.i

.lr.ph1349.i.preheader:                           ; preds = %.preheader1001.i
  %i.baa = sub i32 %8, %.0698.lcssa.i
  %.neg1005 = add i32 %.0698.lcssa.i, 1
  %xtraiter988 = and i32 %i.baa, 1
  %lcmp.mod989.not = icmp eq i32 %xtraiter988, 0
  br i1 %lcmp.mod989.not, label %.lr.ph1349.i.prol.loopexit, label %.lr.ph1349.i.prol

.lr.ph1349.i.prol:                                ; preds = %.lr.ph1349.i.preheader
  %i.bab = load i8, ptr %.0700.lcssa.i, align 1, !tbaa !15
  %i.bac = sext i8 %i.bab to i16
  %i.bad = insertelement <8 x i16> poison, i16 %i.bac, i64 0
  %i.bae = shufflevector <8 x i16> %i.bad, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.baf = load <8 x i8>, ptr %.4730.lcssa.i, align 1, !tbaa !15
  %i.bag = sext <8 x i8> %i.baf to <8 x i16>      ; 2 uses
  %i.bah = mul <8 x i16> %i.bae, %i.bag
  %i.bai = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bae, <8 x i16> %i.bag)
  %i.baj = shufflevector <8 x i16> %i.bah, <8 x i16> %i.bai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bak = bitcast <8 x i16> %i.baj to <4 x i32>
  %i.bal = add <4 x i32> %.lcssa1028.i, %i.bak    ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %.0700.lcssa.i, i64 1
  %i.ban = getelementptr inbounds nuw i8, ptr %.4730.lcssa.i, i64 4 ; 2 uses
  %i.bao = add nuw nsw i32 %.0698.lcssa.i, 1
  br label %.lr.ph1349.i.prol.loopexit

.lr.ph1349.i.prol.loopexit:                       ; preds = %.lr.ph1349.i.prol, %.lr.ph1349.i.preheader
  %.lcssa768.unr = phi <4 x i32> [ poison, %.lr.ph1349.i.preheader ], [ %i.bal, %.lr.ph1349.i.prol ]
  %.lcssa767.unr = phi ptr [ poison, %.lr.ph1349.i.preheader ], [ %i.ban, %.lr.ph1349.i.prol ]
  %.16991348.i.unr = phi i32 [ %.0698.lcssa.i, %.lr.ph1349.i.preheader ], [ %i.bao, %.lr.ph1349.i.prol ]
  %.17011347.i.unr = phi ptr [ %.0700.lcssa.i, %.lr.ph1349.i.preheader ], [ %i.bam, %.lr.ph1349.i.prol ]
  %.57311346.i.unr = phi ptr [ %.4730.lcssa.i, %.lr.ph1349.i.preheader ], [ %i.ban, %.lr.ph1349.i.prol ]
  %.unr990 = phi <4 x i32> [ %.lcssa1028.i, %.lr.ph1349.i.preheader ], [ %i.bal, %.lr.ph1349.i.prol ]
  %i.bap = icmp eq i32 %8, %.neg1005
  br i1 %i.bap, label %._crit_edge1350.i, label %.lr.ph1349.i

.lr.ph1341.i:                                     ; preds = %.lr.ph1341.i.preheader, %.lr.ph1341.i
  %.07001338.i = phi ptr [ %i.bbj, %.lr.ph1341.i ], [ %.26751448.i, %.lr.ph1341.i.preheader ] ; 3 uses
  %.47301337.i = phi ptr [ %i.bbk, %.lr.ph1341.i ], [ %.37291353.i, %.lr.ph1341.i.preheader ] ; 3 uses
  %i.baq = phi <4 x i32> [ %i.bbi, %.lr.ph1341.i ], [ %i.azp, %.lr.ph1341.i.preheader ]
  %niter987 = phi i32 [ %niter987.next.1, %.lr.ph1341.i ], [ 0, %.lr.ph1341.i.preheader ]
  %i.bar = load float, ptr %.07001338.i, align 1, !tbaa !15
  %i.bas = insertelement <4 x float> poison, float %i.bar, i64 0
  %i.bat = load <8 x i8>, ptr %.47301337.i, align 1, !tbaa !15
  %i.bau = bitcast <4 x float> %i.bas to <16 x i8>
  %i.bav = sext <8 x i8> %i.bat to <8 x i16>
  %i.baw = shufflevector <16 x i8> %i.bau, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bax = sext <8 x i8> %i.baw to <8 x i16>
  %i.bay = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bax, <8 x i16> %i.bav, <4 x i32> %i.baq)
  %i.baz = getelementptr inbounds nuw i8, ptr %.07001338.i, i64 2
  %i.bba = getelementptr inbounds nuw i8, ptr %.47301337.i, i64 8
  %i.bbb = load float, ptr %i.baz, align 1, !tbaa !15
  %i.bbc = insertelement <4 x float> poison, float %i.bbb, i64 0
  %i.bbd = load <8 x i8>, ptr %i.bba, align 1, !tbaa !15
  %i.bbe = bitcast <4 x float> %i.bbc to <16 x i8>
  %i.bbf = sext <8 x i8> %i.bbd to <8 x i16>
  %i.bbg = shufflevector <16 x i8> %i.bbe, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bbh = sext <8 x i8> %i.bbg to <8 x i16>
  %i.bbi = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bbh, <8 x i16> %i.bbf, <4 x i32> %i.bay) ; 3 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %.07001338.i, i64 4 ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %.47301337.i, i64 16 ; 2 uses
  %niter987.next.1 = add nuw nsw i32 %niter987, 2 ; 2 uses
  %niter987.ncmp.1.not = icmp eq i32 %niter987.next.1, %unroll_iter986
  br i1 %niter987.ncmp.1.not, label %.preheader1001.loopexit.i.unr-lcssa, label %.lr.ph1341.i, !llvm.loop !56

.lr.ph1349.i:                                     ; preds = %.lr.ph1349.i.prol.loopexit, %.lr.ph1349.i
  %.16991348.i = phi i32 [ %i.bcm, %.lr.ph1349.i ], [ %.16991348.i.unr, %.lr.ph1349.i.prol.loopexit ]
  %.17011347.i = phi ptr [ %i.bck, %.lr.ph1349.i ], [ %.17011347.i.unr, %.lr.ph1349.i.prol.loopexit ] ; 3 uses
  %.57311346.i = phi ptr [ %i.bcl, %.lr.ph1349.i ], [ %.57311346.i.unr, %.lr.ph1349.i.prol.loopexit ] ; 3 uses
  %i.bbl = phi <4 x i32> [ %i.bcj, %.lr.ph1349.i ], [ %.unr990, %.lr.ph1349.i.prol.loopexit ]
  %i.bbm = load i8, ptr %.17011347.i, align 1, !tbaa !15
  %i.bbn = sext i8 %i.bbm to i16
  %i.bbo = insertelement <8 x i16> poison, i16 %i.bbn, i64 0
  %i.bbp = shufflevector <8 x i16> %i.bbo, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bbq = load <8 x i8>, ptr %.57311346.i, align 1, !tbaa !15
  %i.bbr = sext <8 x i8> %i.bbq to <8 x i16>      ; 2 uses
  %i.bbs = mul <8 x i16> %i.bbp, %i.bbr
  %i.bbt = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bbp, <8 x i16> %i.bbr)
  %i.bbu = shufflevector <8 x i16> %i.bbs, <8 x i16> %i.bbt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbv = bitcast <8 x i16> %i.bbu to <4 x i32>
  %i.bbw = add <4 x i32> %i.bbl, %i.bbv
  %i.bbx = getelementptr inbounds nuw i8, ptr %.17011347.i, i64 1
  %i.bby = getelementptr inbounds nuw i8, ptr %.57311346.i, i64 4
  %i.bbz = load i8, ptr %i.bbx, align 1, !tbaa !15
  %i.bca = sext i8 %i.bbz to i16
  %i.bcb = insertelement <8 x i16> poison, i16 %i.bca, i64 0
  %i.bcc = shufflevector <8 x i16> %i.bcb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bcd = load <8 x i8>, ptr %i.bby, align 1, !tbaa !15
  %i.bce = sext <8 x i8> %i.bcd to <8 x i16>      ; 2 uses
  %i.bcf = mul <8 x i16> %i.bcc, %i.bce
  %i.bcg = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bcc, <8 x i16> %i.bce)
  %i.bch = shufflevector <8 x i16> %i.bcf, <8 x i16> %i.bcg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bci = bitcast <8 x i16> %i.bch to <4 x i32>
  %i.bcj = add <4 x i32> %i.bbw, %i.bci           ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.17011347.i, i64 2
  %i.bcl = getelementptr inbounds nuw i8, ptr %.57311346.i, i64 8 ; 2 uses
  %i.bcm = add nuw nsw i32 %.16991348.i, 2        ; 2 uses
  %exitcond1623.not.i.1 = icmp eq i32 %i.bcm, %8
  br i1 %exitcond1623.not.i.1, label %._crit_edge1350.i, label %.lr.ph1349.i, !llvm.loop !57

._crit_edge1350.i:                                ; preds = %.lr.ph1349.i.prol.loopexit, %.lr.ph1349.i, %.preheader1001.i
  %.lcssa1029.i = phi <4 x i32> [ %.lcssa1028.i, %.preheader1001.i ], [ %.lcssa768.unr, %.lr.ph1349.i.prol.loopexit ], [ %i.bcj, %.lr.ph1349.i ]
  %.5731.lcssa.i = phi ptr [ %.4730.lcssa.i, %.preheader1001.i ], [ %.lcssa767.unr, %.lr.ph1349.i.prol.loopexit ], [ %i.bcl, %.lr.ph1349.i ] ; 2 uses
  store <4 x i32> %.lcssa1029.i, ptr %.121355.i, align 1, !tbaa !15
  %i.bcn = getelementptr inbounds nuw i8, ptr %.121355.i, i64 16 ; 2 uses
  %i.bco = add nuw nsw i32 %.17231354.i, 4        ; 3 uses
  %i.bcp = or disjoint i32 %i.bco, 3
  %i.bcq = icmp slt i32 %i.bcp, %6
  br i1 %i.bcq, label %.lr.ph1356.i, label %.preheader1004.i, !llvm.loop !58

.preheader1003.i:                                 ; preds = %._crit_edge1403.i, %.preheader1004.i
  %.6732.lcssa.i = phi ptr [ %.3729.lcssa.i, %.preheader1004.i ], [ %.9735.lcssa.i, %._crit_edge1403.i ]
  %.2724.lcssa.i = phi i32 [ %.1723.lcssa.i, %.preheader1004.i ], [ %i.bko, %._crit_edge1403.i ] ; 2 uses
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader1004.i ], [ %i.bkn, %._crit_edge1403.i ] ; 2 uses
  %i.bcr = icmp slt i32 %.2724.lcssa.i, %6
  br i1 %i.bcr, label %.lr.ph1443.i, label %._crit_edge1444.i

.lr.ph1410.i:                                     ; preds = %.preheader1004.i, %._crit_edge1403.i
  %.131409.i = phi ptr [ %i.bkn, %._crit_edge1403.i ], [ %.12.lcssa.i, %.preheader1004.i ] ; 5 uses
  %.27241408.i = phi i32 [ %i.bko, %._crit_edge1403.i ], [ %.1723.lcssa.i, %.preheader1004.i ]
  %.67321407.i = phi ptr [ %.9735.lcssa.i, %._crit_edge1403.i ], [ %.3729.lcssa.i, %.preheader1004.i ] ; 3 uses
  br i1 %i.qp, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1410.i
  %i.bcs = load i32, ptr %.131409.i, align 4, !tbaa !38
  %i.bct = getelementptr inbounds nuw i8, ptr %.131409.i, i64 4
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !38
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph1410.i
  %.0670.i = phi i32 [ %i.bcs, %bb.ab ], [ 0, %.lr.ph1410.i ] ; 2 uses
  %.0667.i = phi i32 [ %i.bcu, %bb.ab ], [ 0, %.lr.ph1410.i ] ; 2 uses
  br i1 %i.qq, label %.lr.ph1366.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph1366.i
  %i.bcv = getelementptr i8, ptr %.67321407.i, i64 %i.rc
  %scevgep1627.i = getelementptr i8, ptr %i.bcv, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ac
  %.7733.lcssa.i = phi ptr [ %.67321407.i, %bb.ac ], [ %scevgep1627.i, %.preheader.loopexit.i ] ; 24 uses
  %.1671.lcssa.i = phi i32 [ %.0670.i, %bb.ac ], [ %22, %.preheader.loopexit.i ] ; 4 uses
  %.1668.lcssa.i = phi i32 [ %.0667.i, %bb.ac ], [ %32, %.preheader.loopexit.i ] ; 4 uses
  %.0664.lcssa.i = phi ptr [ %.26751448.i, %bb.ac ], [ %indvars.iv1625.i, %.preheader.loopexit.i ] ; 5 uses
  %.0662.lcssa.i = phi i32 [ 0, %bb.ac ], [ %i.qv, %.preheader.loopexit.i ] ; 5 uses
  %i.bcw = icmp slt i32 %.0662.lcssa.i, %8
  br i1 %i.bcw, label %iter.check736, label %._crit_edge1403.i

iter.check736:                                    ; preds = %.preheader.i
  %i.bcx = xor i32 %.0662.lcssa.i, -1
  %i.bcy = add i32 %8, %i.bcx                     ; 3 uses
  %i.bcz = zext i32 %i.bcy to i64
  %i.bda = add nuw nsw i64 %i.bcz, 1              ; 5 uses
  %min.iters.check685 = icmp ult i32 %i.bcy, 3
  br i1 %min.iters.check685, label %.lr.ph1402.i.preheader, label %vector.main.loop.iter.check686

vector.main.loop.iter.check686:                   ; preds = %iter.check736
  %min.iters.check687 = icmp ult i32 %i.bcy, 15
  br i1 %min.iters.check687, label %vec.epilog.ph740, label %vector.ph688

vector.ph688:                                     ; preds = %vector.main.loop.iter.check686
  %i.bdb = and i64 %i.bda, 12
  %n.vec689 = and i64 %i.bda, 8589934576          ; 6 uses
  %i.bdc = trunc i64 %n.vec689 to i32
  %i.bdd = add i32 %.0662.lcssa.i, %i.bdc
  %i.bde = getelementptr i8, ptr %.0664.lcssa.i, i64 %n.vec689
  %i.bdf = shl nuw nsw i64 %n.vec689, 1
  %i.bdg = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdf ; 2 uses
  %i.bdh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1668.lcssa.i, i64 0
  %i.bdi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1671.lcssa.i, i64 0
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph688
  %index691 = phi i64 [ 0, %vector.ph688 ], [ %index.next721, %vector.body690 ] ; 3 uses
  %vec.phi692 = phi <4 x i32> [ %i.bdh, %vector.ph688 ], [ %i.bic, %vector.body690 ]
  %vec.phi693 = phi <4 x i32> [ zeroinitializer, %vector.ph688 ], [ %i.bid, %vector.body690 ]
  %vec.phi694 = phi <4 x i32> [ zeroinitializer, %vector.ph688 ], [ %i.bie, %vector.body690 ]
  %vec.phi695 = phi <4 x i32> [ zeroinitializer, %vector.ph688 ], [ %i.bif, %vector.body690 ]
  %vec.phi696 = phi <4 x i32> [ %i.bdi, %vector.ph688 ], [ %i.bfu, %vector.body690 ]
  %vec.phi697 = phi <4 x i32> [ zeroinitializer, %vector.ph688 ], [ %i.bfv, %vector.body690 ]
  %vec.phi698 = phi <4 x i32> [ zeroinitializer, %vector.ph688 ], [ %i.bfw, %vector.body690 ]
  %vec.phi699 = phi <4 x i32> [ zeroinitializer, %vector.ph688 ], [ %i.bfx, %vector.body690 ]
  %next.gep700 = getelementptr i8, ptr %.0664.lcssa.i, i64 %index691 ; 4 uses
  %i.bdj = shl i64 %index691, 1                   ; 16 uses
  %next.gep701 = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %i.bdk = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep702.a = getelementptr i8, ptr %i.bdk, i64 2
  %i.bdl = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep703.a = getelementptr i8, ptr %i.bdl, i64 4
  %i.bdm = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep704.a = getelementptr i8, ptr %i.bdm, i64 6
  %i.bdn = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep705.a = getelementptr i8, ptr %i.bdn, i64 8
  %i.bdo = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep706.a = getelementptr i8, ptr %i.bdo, i64 10
  %i.bdp = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep707 = getelementptr i8, ptr %i.bdp, i64 12
  %i.bdq = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep708 = getelementptr i8, ptr %i.bdq, i64 14
  %i.bdr = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep709 = getelementptr i8, ptr %i.bdr, i64 16
  %i.bds = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep710 = getelementptr i8, ptr %i.bds, i64 18
  %i.bdt = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep711 = getelementptr i8, ptr %i.bdt, i64 20
  %i.bdu = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep712 = getelementptr i8, ptr %i.bdu, i64 22
  %i.bdv = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep713 = getelementptr i8, ptr %i.bdv, i64 24
  %i.bdw = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep714 = getelementptr i8, ptr %i.bdw, i64 26
  %i.bdx = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep715 = getelementptr i8, ptr %i.bdx, i64 28
  %i.bdy = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bdj ; 2 uses
  %next.gep716 = getelementptr i8, ptr %i.bdy, i64 30
  %i.bdz = getelementptr i8, ptr %next.gep700, i64 4
  %i.bea = getelementptr i8, ptr %next.gep700, i64 8
  %i.beb = getelementptr i8, ptr %next.gep700, i64 12
  %wide.load717 = load <4 x i8>, ptr %next.gep700, align 1, !tbaa !15
  %wide.load718 = load <4 x i8>, ptr %i.bdz, align 1, !tbaa !15
  %wide.load719 = load <4 x i8>, ptr %i.bea, align 1, !tbaa !15
  %wide.load720 = load <4 x i8>, ptr %i.beb, align 1, !tbaa !15
  %i.bec = sext <4 x i8> %wide.load717 to <4 x i32> ; 2 uses
  %i.bed = sext <4 x i8> %wide.load718 to <4 x i32> ; 2 uses
  %i.bee = sext <4 x i8> %wide.load719 to <4 x i32> ; 2 uses
  %i.bef = sext <4 x i8> %wide.load720 to <4 x i32> ; 2 uses
  %i.beg = load i8, ptr %next.gep701, align 1, !tbaa !15
  %i.beh = load i8, ptr %next.gep702.a, align 1, !tbaa !15
  %i.bei = load i8, ptr %next.gep703.a, align 1, !tbaa !15
  %i.bej = load i8, ptr %next.gep704.a, align 1, !tbaa !15
  %i.bek = insertelement <4 x i8> poison, i8 %i.beg, i64 0
  %i.bel = insertelement <4 x i8> %i.bek, i8 %i.beh, i64 1
  %i.bem = insertelement <4 x i8> %i.bel, i8 %i.bei, i64 2
  %i.ben = insertelement <4 x i8> %i.bem, i8 %i.bej, i64 3
  %i.beo = load i8, ptr %next.gep705.a, align 1, !tbaa !15
  %i.bep = load i8, ptr %next.gep706.a, align 1, !tbaa !15
  %i.beq = load i8, ptr %next.gep707, align 1, !tbaa !15
  %i.ber = load i8, ptr %next.gep708, align 1, !tbaa !15
  %i.bes = insertelement <4 x i8> poison, i8 %i.beo, i64 0
  %i.bet = insertelement <4 x i8> %i.bes, i8 %i.bep, i64 1
  %i.beu = insertelement <4 x i8> %i.bet, i8 %i.beq, i64 2
  %i.bev = insertelement <4 x i8> %i.beu, i8 %i.ber, i64 3
  %i.bew = load i8, ptr %next.gep709, align 1, !tbaa !15
  %i.bex = load i8, ptr %next.gep710, align 1, !tbaa !15
  %i.bey = load i8, ptr %next.gep711, align 1, !tbaa !15
  %i.bez = load i8, ptr %next.gep712, align 1, !tbaa !15
  %i.bfa = insertelement <4 x i8> poison, i8 %i.bew, i64 0
  %i.bfb = insertelement <4 x i8> %i.bfa, i8 %i.bex, i64 1
  %i.bfc = insertelement <4 x i8> %i.bfb, i8 %i.bey, i64 2
  %i.bfd = insertelement <4 x i8> %i.bfc, i8 %i.bez, i64 3
  %i.bfe = load i8, ptr %next.gep713, align 1, !tbaa !15
  %i.bff = load i8, ptr %next.gep714, align 1, !tbaa !15
  %i.bfg = load i8, ptr %next.gep715, align 1, !tbaa !15
  %i.bfh = load i8, ptr %next.gep716, align 1, !tbaa !15
  %i.bfi = insertelement <4 x i8> poison, i8 %i.bfe, i64 0
  %i.bfj = insertelement <4 x i8> %i.bfi, i8 %i.bff, i64 1
  %i.bfk = insertelement <4 x i8> %i.bfj, i8 %i.bfg, i64 2
  %i.bfl = insertelement <4 x i8> %i.bfk, i8 %i.bfh, i64 3
  %i.bfm = sext <4 x i8> %i.ben to <4 x i32>
  %i.bfn = sext <4 x i8> %i.bev to <4 x i32>
  %i.bfo = sext <4 x i8> %i.bfd to <4 x i32>
  %i.bfp = sext <4 x i8> %i.bfl to <4 x i32>
  %i.bfq = mul nsw <4 x i32> %i.bfm, %i.bec
  %i.bfr = mul nsw <4 x i32> %i.bfn, %i.bed
  %i.bfs = mul nsw <4 x i32> %i.bfo, %i.bee
  %i.bft = mul nsw <4 x i32> %i.bfp, %i.bef
  %i.bfu = add <4 x i32> %i.bfq, %vec.phi696      ; 2 uses
  %i.bfv = add <4 x i32> %i.bfr, %vec.phi697      ; 2 uses
  %i.bfw = add <4 x i32> %i.bfs, %vec.phi698      ; 2 uses
  %i.bfx = add <4 x i32> %i.bft, %vec.phi699      ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %next.gep701, i64 1
  %i.bfz = getelementptr i8, ptr %i.bdk, i64 3
  %i.bga = getelementptr i8, ptr %i.bdl, i64 5
  %i.bgb = getelementptr i8, ptr %i.bdm, i64 7
  %i.bgc = getelementptr i8, ptr %i.bdn, i64 9
  %i.bgd = getelementptr i8, ptr %i.bdo, i64 11
  %i.bge = getelementptr i8, ptr %i.bdp, i64 13
  %i.bgf = getelementptr i8, ptr %i.bdq, i64 15
  %i.bgg = getelementptr i8, ptr %i.bdr, i64 17
  %i.bgh = getelementptr i8, ptr %i.bds, i64 19
  %i.bgi = getelementptr i8, ptr %i.bdt, i64 21
  %i.bgj = getelementptr i8, ptr %i.bdu, i64 23
  %i.bgk = getelementptr i8, ptr %i.bdv, i64 25
  %i.bgl = getelementptr i8, ptr %i.bdw, i64 27
  %i.bgm = getelementptr i8, ptr %i.bdx, i64 29
  %i.bgn = getelementptr i8, ptr %i.bdy, i64 31
  %i.bgo = load i8, ptr %i.bfy, align 1, !tbaa !15
  %i.bgp = load i8, ptr %i.bfz, align 1, !tbaa !15
  %i.bgq = load i8, ptr %i.bga, align 1, !tbaa !15
  %i.bgr = load i8, ptr %i.bgb, align 1, !tbaa !15
  %i.bgs = insertelement <4 x i8> poison, i8 %i.bgo, i64 0
  %i.bgt = insertelement <4 x i8> %i.bgs, i8 %i.bgp, i64 1
  %i.bgu = insertelement <4 x i8> %i.bgt, i8 %i.bgq, i64 2
  %i.bgv = insertelement <4 x i8> %i.bgu, i8 %i.bgr, i64 3
  %i.bgw = load i8, ptr %i.bgc, align 1, !tbaa !15
  %i.bgx = load i8, ptr %i.bgd, align 1, !tbaa !15
  %i.bgy = load i8, ptr %i.bge, align 1, !tbaa !15
  %i.bgz = load i8, ptr %i.bgf, align 1, !tbaa !15
  %i.bha = insertelement <4 x i8> poison, i8 %i.bgw, i64 0
  %i.bhb = insertelement <4 x i8> %i.bha, i8 %i.bgx, i64 1
  %i.bhc = insertelement <4 x i8> %i.bhb, i8 %i.bgy, i64 2
  %i.bhd = insertelement <4 x i8> %i.bhc, i8 %i.bgz, i64 3
  %i.bhe = load i8, ptr %i.bgg, align 1, !tbaa !15
  %i.bhf = load i8, ptr %i.bgh, align 1, !tbaa !15
  %i.bhg = load i8, ptr %i.bgi, align 1, !tbaa !15
  %i.bhh = load i8, ptr %i.bgj, align 1, !tbaa !15
  %i.bhi = insertelement <4 x i8> poison, i8 %i.bhe, i64 0
  %i.bhj = insertelement <4 x i8> %i.bhi, i8 %i.bhf, i64 1
  %i.bhk = insertelement <4 x i8> %i.bhj, i8 %i.bhg, i64 2
  %i.bhl = insertelement <4 x i8> %i.bhk, i8 %i.bhh, i64 3
  %i.bhm = load i8, ptr %i.bgk, align 1, !tbaa !15
  %i.bhn = load i8, ptr %i.bgl, align 1, !tbaa !15
  %i.bho = load i8, ptr %i.bgm, align 1, !tbaa !15
  %i.bhp = load i8, ptr %i.bgn, align 1, !tbaa !15
  %i.bhq = insertelement <4 x i8> poison, i8 %i.bhm, i64 0
  %i.bhr = insertelement <4 x i8> %i.bhq, i8 %i.bhn, i64 1
  %i.bhs = insertelement <4 x i8> %i.bhr, i8 %i.bho, i64 2
  %i.bht = insertelement <4 x i8> %i.bhs, i8 %i.bhp, i64 3
  %i.bhu = sext <4 x i8> %i.bgv to <4 x i32>
  %i.bhv = sext <4 x i8> %i.bhd to <4 x i32>
  %i.bhw = sext <4 x i8> %i.bhl to <4 x i32>
  %i.bhx = sext <4 x i8> %i.bht to <4 x i32>
  %i.bhy = mul nsw <4 x i32> %i.bhu, %i.bec
  %i.bhz = mul nsw <4 x i32> %i.bhv, %i.bed
  %i.bia = mul nsw <4 x i32> %i.bhw, %i.bee
  %i.bib = mul nsw <4 x i32> %i.bhx, %i.bef
  %i.bic = add <4 x i32> %i.bhy, %vec.phi692      ; 2 uses
  %i.bid = add <4 x i32> %i.bhz, %vec.phi693      ; 2 uses
  %i.bie = add <4 x i32> %i.bia, %vec.phi694      ; 2 uses
  %i.bif = add <4 x i32> %i.bib, %vec.phi695      ; 2 uses
  %index.next721 = add nuw i64 %index691, 16      ; 2 uses
  %i.big = icmp eq i64 %index.next721, %n.vec689
  br i1 %i.big, label %middle.block722, label %vector.body690, !llvm.loop !59

middle.block722:                                  ; preds = %vector.body690
  %bin.rdx723 = add <4 x i32> %i.bid, %i.bic
  %bin.rdx724 = add <4 x i32> %i.bie, %bin.rdx723
  %bin.rdx725 = add <4 x i32> %i.bif, %bin.rdx724
  %i.bih = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx725) ; 3 uses
  %bin.rdx726 = add <4 x i32> %i.bfv, %i.bfu
  %bin.rdx727 = add <4 x i32> %i.bfw, %bin.rdx726
  %bin.rdx728 = add <4 x i32> %i.bfx, %bin.rdx727
  %i.bii = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx728) ; 3 uses
  %cmp.n729 = icmp eq i64 %i.bda, %n.vec689
  br i1 %cmp.n729, label %._crit_edge1403.i, label %vec.epilog.iter.check738

vec.epilog.iter.check738:                         ; preds = %middle.block722
  %min.epilog.iters.check739 = icmp eq i64 %i.bdb, 0
  br i1 %min.epilog.iters.check739, label %.lr.ph1402.i.preheader, label %vec.epilog.ph740, !prof !47

vec.epilog.ph740:                                 ; preds = %vector.main.loop.iter.check686, %vec.epilog.iter.check738
  %vec.epilog.resume.val730 = phi i64 [ %n.vec689, %vec.epilog.iter.check738 ], [ 0, %vector.main.loop.iter.check686 ]
  %bc.merge.rdx733 = phi i32 [ %i.bih, %vec.epilog.iter.check738 ], [ %.1668.lcssa.i, %vector.main.loop.iter.check686 ]
  %bc.merge.rdx734 = phi i32 [ %i.bii, %vec.epilog.iter.check738 ], [ %.1671.lcssa.i, %vector.main.loop.iter.check686 ]
  %n.vec741 = and i64 %i.bda, 8589934588          ; 5 uses
  %i.bij = trunc i64 %n.vec741 to i32
  %i.bik = add i32 %.0662.lcssa.i, %i.bij
  %i.bil = getelementptr i8, ptr %.0664.lcssa.i, i64 %n.vec741
  %i.bim = shl nuw nsw i64 %n.vec741, 1
  %i.bin = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.bim ; 2 uses
  %i.bio = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx733, i64 0
  %i.bip = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx734, i64 0
  br label %vec.epilog.vector.body742

vec.epilog.vector.body742:                        ; preds = %vec.epilog.vector.body742, %vec.epilog.ph740
  %index743 = phi i64 [ %vec.epilog.resume.val730, %vec.epilog.ph740 ], [ %index.next752, %vec.epilog.vector.body742 ] ; 3 uses
  %vec.phi744 = phi <4 x i32> [ %i.bio, %vec.epilog.ph740 ], [ %i.bju, %vec.epilog.vector.body742 ]
  %vec.phi745 = phi <4 x i32> [ %i.bip, %vec.epilog.ph740 ], [ %i.bjf, %vec.epilog.vector.body742 ]
  %next.gep746 = getelementptr i8, ptr %.0664.lcssa.i, i64 %index743
  %i.biq = shl i64 %index743, 1                   ; 4 uses
  %next.gep747 = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.biq ; 2 uses
  %i.bir = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.biq ; 2 uses
  %next.gep748 = getelementptr i8, ptr %i.bir, i64 2
  %i.bis = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.biq ; 2 uses
  %next.gep749 = getelementptr i8, ptr %i.bis, i64 4
  %i.bit = getelementptr i8, ptr %.7733.lcssa.i, i64 %i.biq ; 2 uses
  %next.gep750 = getelementptr i8, ptr %i.bit, i64 6
  %wide.load751 = load <4 x i8>, ptr %next.gep746, align 1, !tbaa !15
  %i.biu = sext <4 x i8> %wide.load751 to <4 x i32> ; 2 uses
  %i.biv = load i8, ptr %next.gep747, align 1, !tbaa !15
  %i.biw = load i8, ptr %next.gep748, align 1, !tbaa !15
  %i.bix = load i8, ptr %next.gep749, align 1, !tbaa !15
  %i.biy = load i8, ptr %next.gep750, align 1, !tbaa !15
  %i.biz = insertelement <4 x i8> poison, i8 %i.biv, i64 0
  %i.bja = insertelement <4 x i8> %i.biz, i8 %i.biw, i64 1
  %i.bjb = insertelement <4 x i8> %i.bja, i8 %i.bix, i64 2
  %i.bjc = insertelement <4 x i8> %i.bjb, i8 %i.biy, i64 3
  %i.bjd = sext <4 x i8> %i.bjc to <4 x i32>
  %i.bje = mul nsw <4 x i32> %i.bjd, %i.biu
  %i.bjf = add <4 x i32> %i.bje, %vec.phi745      ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %next.gep747, i64 1
  %i.bjh = getelementptr i8, ptr %i.bir, i64 3
  %i.bji = getelementptr i8, ptr %i.bis, i64 5
  %i.bjj = getelementptr i8, ptr %i.bit, i64 7
  %i.bjk = load i8, ptr %i.bjg, align 1, !tbaa !15
  %i.bjl = load i8, ptr %i.bjh, align 1, !tbaa !15
  %i.bjm = load i8, ptr %i.bji, align 1, !tbaa !15
  %i.bjn = load i8, ptr %i.bjj, align 1, !tbaa !15
  %i.bjo = insertelement <4 x i8> poison, i8 %i.bjk, i64 0
  %i.bjp = insertelement <4 x i8> %i.bjo, i8 %i.bjl, i64 1
  %i.bjq = insertelement <4 x i8> %i.bjp, i8 %i.bjm, i64 2
  %i.bjr = insertelement <4 x i8> %i.bjq, i8 %i.bjn, i64 3
  %i.bjs = sext <4 x i8> %i.bjr to <4 x i32>
  %i.bjt = mul nsw <4 x i32> %i.bjs, %i.biu
  %i.bju = add <4 x i32> %i.bjt, %vec.phi744      ; 2 uses
  %index.next752 = add nuw i64 %index743, 4       ; 2 uses
  %i.bjv = icmp eq i64 %index.next752, %n.vec741
  br i1 %i.bjv, label %vec.epilog.middle.block753, label %vec.epilog.vector.body742, !llvm.loop !60

vec.epilog.middle.block753:                       ; preds = %vec.epilog.vector.body742
  %i.bjw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bju) ; 2 uses
  %i.bjx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bjf) ; 2 uses
  %cmp.n754 = icmp eq i64 %i.bda, %n.vec741
  br i1 %cmp.n754, label %._crit_edge1403.i, label %.lr.ph1402.i.preheader

.lr.ph1402.i.preheader:                           ; preds = %iter.check736, %vec.epilog.iter.check738, %vec.epilog.middle.block753
  %.21400.i.ph = phi i32 [ %.0662.lcssa.i, %iter.check736 ], [ %i.bdd, %vec.epilog.iter.check738 ], [ %i.bik, %vec.epilog.middle.block753 ]
  %.26661399.i.ph = phi ptr [ %.0664.lcssa.i, %iter.check736 ], [ %i.bde, %vec.epilog.iter.check738 ], [ %i.bil, %vec.epilog.middle.block753 ]
  %.26691398.i.ph = phi i32 [ %.1668.lcssa.i, %iter.check736 ], [ %i.bih, %vec.epilog.iter.check738 ], [ %i.bjw, %vec.epilog.middle.block753 ]
  %.26721397.i.ph = phi i32 [ %.1671.lcssa.i, %iter.check736 ], [ %i.bii, %vec.epilog.iter.check738 ], [ %i.bjx, %vec.epilog.middle.block753 ]
  %.97351396.i.ph = phi ptr [ %.7733.lcssa.i, %iter.check736 ], [ %i.bdg, %vec.epilog.iter.check738 ], [ %i.bin, %vec.epilog.middle.block753 ]
  br label %.lr.ph1402.i

.lr.ph1366.i:                                     ; preds = %bb.ac, %.lr.ph1366.i
  %.06621364.i = phi i32 [ %35, %.lr.ph1366.i ], [ 0, %bb.ac ]
  %.06641363.i = phi ptr [ %33, %.lr.ph1366.i ], [ %.26751448.i, %bb.ac ] ; 3 uses
  %.16681362.i = phi i32 [ %32, %.lr.ph1366.i ], [ %.0667.i, %bb.ac ]
  %.16711361.i = phi i32 [ %22, %.lr.ph1366.i ], [ %.0670.i, %bb.ac ]
  %.77331360.i = phi ptr [ %34, %.lr.ph1366.i ], [ %.67321407.i, %bb.ac ] ; 5 uses
  %9 = load i8, ptr %.06641363.i, align 1, !tbaa !15
  %10 = sext i8 %9 to i32                         ; 2 uses
  %11 = load i8, ptr %.77331360.i, align 1, !tbaa !15
  %12 = sext i8 %11 to i32
  %13 = mul nsw i32 %12, %10
  %14 = add nsw i32 %13, %.16711361.i
  %15 = getelementptr inbounds nuw i8, ptr %.06641363.i, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = sext i8 %16 to i32                        ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %.77331360.i, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !15
  %20 = sext i8 %19 to i32
  %21 = mul nsw i32 %20, %17
  %22 = add nsw i32 %14, %21                      ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %.77331360.i, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = sext i8 %24 to i32
  %26 = mul nsw i32 %25, %10
  %27 = add nsw i32 %26, %.16681362.i
  %28 = getelementptr inbounds nuw i8, ptr %.77331360.i, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = sext i8 %29 to i32
  %31 = mul nsw i32 %30, %17
  %32 = add nsw i32 %27, %31                      ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %.06641363.i, i64 2
  %34 = getelementptr inbounds nuw i8, ptr %.77331360.i, i64 4
  %35 = add nuw nsw i32 %.06621364.i, 2           ; 2 uses
  %36 = or disjoint i32 %35, 1
  %37 = icmp slt i32 %36, %8
  br i1 %37, label %.lr.ph1366.i, label %.preheader.loopexit.i, !llvm.loop !61

.lr.ph1402.i:                                     ; preds = %.lr.ph1402.i.preheader, %.lr.ph1402.i
  %.21400.i = phi i32 [ %i.bkl, %.lr.ph1402.i ], [ %.21400.i.ph, %.lr.ph1402.i.preheader ]
  %.26661399.i = phi ptr [ %i.bkj, %.lr.ph1402.i ], [ %.26661399.i.ph, %.lr.ph1402.i.preheader ] ; 2 uses
  %.26691398.i = phi i32 [ %i.bki, %.lr.ph1402.i ], [ %.26691398.i.ph, %.lr.ph1402.i.preheader ]
  %.26721397.i = phi i32 [ %i.bkd, %.lr.ph1402.i ], [ %.26721397.i.ph, %.lr.ph1402.i.preheader ]
  %.97351396.i = phi ptr [ %i.bkk, %.lr.ph1402.i ], [ %.97351396.i.ph, %.lr.ph1402.i.preheader ] ; 3 uses
  %i.bjy = load i8, ptr %.26661399.i, align 1, !tbaa !15
  %i.bjz = sext i8 %i.bjy to i32                  ; 2 uses
  %i.bka = load i8, ptr %.97351396.i, align 1, !tbaa !15
  %i.bkb = sext i8 %i.bka to i32
  %i.bkc = mul nsw i32 %i.bkb, %i.bjz
  %i.bkd = add nsw i32 %i.bkc, %.26721397.i       ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %.97351396.i, i64 1
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !15
  %i.bkg = sext i8 %i.bkf to i32
  %i.bkh = mul nsw i32 %i.bkg, %i.bjz
  %i.bki = add nsw i32 %i.bkh, %.26691398.i       ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %.26661399.i, i64 1
  %i.bkk = getelementptr inbounds nuw i8, ptr %.97351396.i, i64 2 ; 2 uses
  %i.bkl = add nuw nsw i32 %.21400.i, 1           ; 2 uses
  %exitcond1628.not.i = icmp eq i32 %i.bkl, %8
  br i1 %exitcond1628.not.i, label %._crit_edge1403.i, label %.lr.ph1402.i, !llvm.loop !62

._crit_edge1403.i:                                ; preds = %.lr.ph1402.i, %middle.block722, %vec.epilog.middle.block753, %.preheader.i
  %.9735.lcssa.i = phi ptr [ %.7733.lcssa.i, %.preheader.i ], [ %i.bin, %vec.epilog.middle.block753 ], [ %i.bdg, %middle.block722 ], [ %i.bkk, %.lr.ph1402.i ] ; 2 uses
  %.2672.lcssa.i = phi i32 [ %.1671.lcssa.i, %.preheader.i ], [ %i.bjx, %vec.epilog.middle.block753 ], [ %i.bii, %middle.block722 ], [ %i.bkd, %.lr.ph1402.i ]
  %.2669.lcssa.i = phi i32 [ %.1668.lcssa.i, %.preheader.i ], [ %i.bjw, %vec.epilog.middle.block753 ], [ %i.bih, %middle.block722 ], [ %i.bki, %.lr.ph1402.i ]
  store i32 %.2672.lcssa.i, ptr %.131409.i, align 4, !tbaa !38
  %i.bkm = getelementptr inbounds nuw i8, ptr %.131409.i, i64 4
  store i32 %.2669.lcssa.i, ptr %i.bkm, align 4, !tbaa !38
  %i.bkn = getelementptr inbounds nuw i8, ptr %.131409.i, i64 8 ; 2 uses
  %i.bko = add nuw nsw i32 %.27241408.i, 2        ; 3 uses
  %i.bkp = or disjoint i32 %i.bko, 1
  %i.bkq = icmp slt i32 %i.bkp, %6
  br i1 %i.bkq, label %.lr.ph1410.i, label %.preheader1003.i, !llvm.loop !63

.lr.ph1443.i:                                     ; preds = %.preheader1003.i, %._crit_edge1437.i
  %.141442.i = phi ptr [ %i.bnw, %._crit_edge1437.i ], [ %.13.lcssa.i, %.preheader1003.i ] ; 3 uses
  %.37251441.i = phi i32 [ %i.bnx, %._crit_edge1437.i ], [ %.2724.lcssa.i, %.preheader1003.i ]
  %.107361440.i = phi ptr [ %.12738.lcssa.i, %._crit_edge1437.i ], [ %.6732.lcssa.i, %.preheader1003.i ] ; 3 uses
  br i1 %i.qp, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1443.i
  %i.bkr = load i32, ptr %.141442.i, align 4, !tbaa !38
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph1443.i
  %.0652.i = phi i32 [ %i.bkr, %bb.ad ], [ 0, %.lr.ph1443.i ]
  br i1 %i.qr, label %.lr.ph1422.i.preheader, label %._crit_edge1423.i

.lr.ph1422.i.preheader:                           ; preds = %bb.ae
  br i1 %i.rp, label %.lr.ph1422.i.epil.preheader, label %.lr.ph1422.i

.lr.ph1422.i:                                     ; preds = %.lr.ph1422.i.preheader, %.lr.ph1422.i
  %.06501415.i = phi ptr [ %i.blh, %.lr.ph1422.i ], [ %.26751448.i, %.lr.ph1422.i.preheader ] ; 3 uses
  %.117371414.i = phi ptr [ %i.bli, %.lr.ph1422.i ], [ %.107361440.i, %.lr.ph1422.i.preheader ] ; 3 uses
  %i.bks = phi <4 x i32> [ %i.blg, %.lr.ph1422.i ], [ zeroinitializer, %.lr.ph1422.i.preheader ]
  %niter1000 = phi i32 [ %niter1000.next.1, %.lr.ph1422.i ], [ 0, %.lr.ph1422.i.preheader ]
  %i.bkt = load <4 x i8>, ptr %.06501415.i, align 1, !tbaa !15
  %i.bku = sext <4 x i8> %i.bkt to <4 x i32>
  %i.bkv = load <4 x i8>, ptr %.117371414.i, align 1, !tbaa !15
  %i.bkw = sext <4 x i8> %i.bkv to <4 x i32>
  %i.bkx = mul nsw <4 x i32> %i.bkw, %i.bku
  %i.bky = add nsw <4 x i32> %i.bkx, %i.bks
  %i.bkz = getelementptr inbounds nuw i8, ptr %.06501415.i, i64 4
  %i.bla = getelementptr inbounds nuw i8, ptr %.117371414.i, i64 4
  %i.blb = load <4 x i8>, ptr %i.bkz, align 1, !tbaa !15
  %i.blc = sext <4 x i8> %i.blb to <4 x i32>
  %i.bld = load <4 x i8>, ptr %i.bla, align 1, !tbaa !15
  %i.ble = sext <4 x i8> %i.bld to <4 x i32>
  %i.blf = mul nsw <4 x i32> %i.ble, %i.blc
  %i.blg = add nsw <4 x i32> %i.blf, %i.bky       ; 3 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %.06501415.i, i64 8 ; 3 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %.117371414.i, i64 8 ; 3 uses
  %niter1000.next.1 = add i32 %niter1000, 2       ; 2 uses
  %niter1000.ncmp.1.not = icmp eq i32 %niter1000.next.1, %unroll_iter999
  br i1 %niter1000.ncmp.1.not, label %._crit_edge1423.i.loopexit.unr-lcssa, label %.lr.ph1422.i, !llvm.loop !64

._crit_edge1423.i.loopexit.unr-lcssa:             ; preds = %.lr.ph1422.i
  br i1 %lcmp.mod994.not.not, label %.lr.ph1422.i.epil.preheader, label %._crit_edge1423.i.loopexit

.lr.ph1422.i.epil.preheader:                      ; preds = %._crit_edge1423.i.loopexit.unr-lcssa, %.lr.ph1422.i.preheader
  %.06501415.i.epil.init = phi ptr [ %.26751448.i, %.lr.ph1422.i.preheader ], [ %i.blh, %._crit_edge1423.i.loopexit.unr-lcssa ] ; 2 uses
  %.117371414.i.epil.init = phi ptr [ %.107361440.i, %.lr.ph1422.i.preheader ], [ %i.bli, %._crit_edge1423.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init993 = phi <4 x i32> [ zeroinitializer, %.lr.ph1422.i.preheader ], [ %i.blg, %._crit_edge1423.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod998)
  %i.blj = load <4 x i8>, ptr %.06501415.i.epil.init, align 1, !tbaa !15
  %i.blk = sext <4 x i8> %i.blj to <4 x i32>
  %i.bll = load <4 x i8>, ptr %.117371414.i.epil.init, align 1, !tbaa !15
  %i.blm = sext <4 x i8> %i.bll to <4 x i32>
  %i.bln = mul nsw <4 x i32> %i.blm, %i.blk
  %i.blo = add nsw <4 x i32> %i.bln, %.epil.init993
  %i.blp = getelementptr inbounds nuw i8, ptr %.06501415.i.epil.init, i64 4
  %i.blq = getelementptr inbounds nuw i8, ptr %.117371414.i.epil.init, i64 4
  br label %._crit_edge1423.i.loopexit

._crit_edge1423.i.loopexit:                       ; preds = %._crit_edge1423.i.loopexit.unr-lcssa, %.lr.ph1422.i.epil.preheader
  %.lcssa794 = phi <4 x i32> [ %i.blg, %._crit_edge1423.i.loopexit.unr-lcssa ], [ %i.blo, %.lr.ph1422.i.epil.preheader ]
  %.lcssa793 = phi ptr [ %i.blh, %._crit_edge1423.i.loopexit.unr-lcssa ], [ %i.blp, %.lr.ph1422.i.epil.preheader ]
  %.lcssa792 = phi ptr [ %i.bli, %._crit_edge1423.i.loopexit.unr-lcssa ], [ %i.blq, %.lr.ph1422.i.epil.preheader ]
  %i.blr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa794)
  br label %._crit_edge1423.i

._crit_edge1423.i:                                ; preds = %._crit_edge1423.i.loopexit, %bb.ae
  %.11737.lcssa.i = phi ptr [ %.107361440.i, %bb.ae ], [ %.lcssa792, %._crit_edge1423.i.loopexit ] ; 6 uses
  %.0650.lcssa.i = phi ptr [ %.26751448.i, %bb.ae ], [ %.lcssa793, %._crit_edge1423.i.loopexit ] ; 5 uses
  %.0649.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.rd, %._crit_edge1423.i.loopexit ] ; 5 uses
  %i.bls = phi i32 [ 0, %bb.ae ], [ %i.blr, %._crit_edge1423.i.loopexit ]
  %op.rdx = add i32 %i.bls, %.0652.i              ; 4 uses
  %i.blt = icmp slt i32 %.0649.lcssa.i, %8
  br i1 %i.blt, label %iter.check664, label %._crit_edge1437.i

iter.check664:                                    ; preds = %._crit_edge1423.i
  %i.blu = xor i32 %.0649.lcssa.i, -1
  %i.blv = add i32 %8, %i.blu                     ; 3 uses
  %i.blw = zext i32 %i.blv to i64
  %i.blx = add nuw nsw i64 %i.blw, 1              ; 5 uses
  %min.iters.check632 = icmp ult i32 %i.blv, 3
  br i1 %min.iters.check632, label %.lr.ph1436.i.preheader, label %vector.main.loop.iter.check633

vector.main.loop.iter.check633:                   ; preds = %iter.check664
  %min.iters.check634 = icmp ult i32 %i.blv, 15
  br i1 %min.iters.check634, label %vec.epilog.ph668, label %vector.ph635

vector.ph635:                                     ; preds = %vector.main.loop.iter.check633
  %i.bly = and i64 %i.blx, 12
  %n.vec636 = and i64 %i.blx, 8589934576          ; 6 uses
  %i.blz = trunc i64 %n.vec636 to i32
  %i.bma = add i32 %.0649.lcssa.i, %i.blz
  %i.bmb = getelementptr i8, ptr %.0650.lcssa.i, i64 %n.vec636
  %i.bmc = getelementptr i8, ptr %.11737.lcssa.i, i64 %n.vec636 ; 2 uses
  %i.bmd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %op.rdx, i64 0
  br label %vector.body637

vector.body637:                                   ; preds = %vector.body637, %vector.ph635
  %index638 = phi i64 [ 0, %vector.ph635 ], [ %index.next653, %vector.body637 ] ; 3 uses
  %vec.phi639 = phi <4 x i32> [ %i.bmd, %vector.ph635 ], [ %i.bmw, %vector.body637 ]
  %vec.phi640 = phi <4 x i32> [ zeroinitializer, %vector.ph635 ], [ %i.bmx, %vector.body637 ]
  %vec.phi641 = phi <4 x i32> [ zeroinitializer, %vector.ph635 ], [ %i.bmy, %vector.body637 ]
  %vec.phi642 = phi <4 x i32> [ zeroinitializer, %vector.ph635 ], [ %i.bmz, %vector.body637 ]
  %next.gep643 = getelementptr i8, ptr %.0650.lcssa.i, i64 %index638 ; 4 uses
  %next.gep644 = getelementptr i8, ptr %.11737.lcssa.i, i64 %index638 ; 4 uses
  %i.bme = getelementptr i8, ptr %next.gep643, i64 4
  %i.bmf = getelementptr i8, ptr %next.gep643, i64 8
  %i.bmg = getelementptr i8, ptr %next.gep643, i64 12
  %wide.load645 = load <4 x i8>, ptr %next.gep643, align 1, !tbaa !15
  %wide.load646 = load <4 x i8>, ptr %i.bme, align 1, !tbaa !15
  %wide.load647 = load <4 x i8>, ptr %i.bmf, align 1, !tbaa !15
  %wide.load648 = load <4 x i8>, ptr %i.bmg, align 1, !tbaa !15
  %i.bmh = sext <4 x i8> %wide.load645 to <4 x i32>
  %i.bmi = sext <4 x i8> %wide.load646 to <4 x i32>
  %i.bmj = sext <4 x i8> %wide.load647 to <4 x i32>
  %i.bmk = sext <4 x i8> %wide.load648 to <4 x i32>
  %i.bml = getelementptr i8, ptr %next.gep644, i64 4
  %i.bmm = getelementptr i8, ptr %next.gep644, i64 8
  %i.bmn = getelementptr i8, ptr %next.gep644, i64 12
  %wide.load649 = load <4 x i8>, ptr %next.gep644, align 1, !tbaa !15
  %wide.load650 = load <4 x i8>, ptr %i.bml, align 1, !tbaa !15
  %wide.load651 = load <4 x i8>, ptr %i.bmm, align 1, !tbaa !15
  %wide.load652 = load <4 x i8>, ptr %i.bmn, align 1, !tbaa !15
  %i.bmo = sext <4 x i8> %wide.load649 to <4 x i32>
  %i.bmp = sext <4 x i8> %wide.load650 to <4 x i32>
  %i.bmq = sext <4 x i8> %wide.load651 to <4 x i32>
  %i.bmr = sext <4 x i8> %wide.load652 to <4 x i32>
  %i.bms = mul nsw <4 x i32> %i.bmo, %i.bmh
  %i.bmt = mul nsw <4 x i32> %i.bmp, %i.bmi
  %i.bmu = mul nsw <4 x i32> %i.bmq, %i.bmj
  %i.bmv = mul nsw <4 x i32> %i.bmr, %i.bmk
  %i.bmw = add <4 x i32> %i.bms, %vec.phi639      ; 2 uses
  %i.bmx = add <4 x i32> %i.bmt, %vec.phi640      ; 2 uses
  %i.bmy = add <4 x i32> %i.bmu, %vec.phi641      ; 2 uses
  %i.bmz = add <4 x i32> %i.bmv, %vec.phi642      ; 2 uses
  %index.next653 = add nuw i64 %index638, 16      ; 2 uses
  %i.bna = icmp eq i64 %index.next653, %n.vec636
  br i1 %i.bna, label %middle.block654, label %vector.body637, !llvm.loop !65

middle.block654:                                  ; preds = %vector.body637
  %bin.rdx655 = add <4 x i32> %i.bmx, %i.bmw
  %bin.rdx656 = add <4 x i32> %i.bmy, %bin.rdx655
  %bin.rdx657 = add <4 x i32> %i.bmz, %bin.rdx656
  %i.bnb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx657) ; 3 uses
  %cmp.n658 = icmp eq i64 %i.blx, %n.vec636
  br i1 %cmp.n658, label %._crit_edge1437.i, label %vec.epilog.iter.check666

vec.epilog.iter.check666:                         ; preds = %middle.block654
  %min.epilog.iters.check667 = icmp eq i64 %i.bly, 0
  br i1 %min.epilog.iters.check667, label %.lr.ph1436.i.preheader, label %vec.epilog.ph668, !prof !47

vec.epilog.ph668:                                 ; preds = %vector.main.loop.iter.check633, %vec.epilog.iter.check666
  %vec.epilog.resume.val659 = phi i64 [ %n.vec636, %vec.epilog.iter.check666 ], [ 0, %vector.main.loop.iter.check633 ]
  %bc.merge.rdx662 = phi i32 [ %i.bnb, %vec.epilog.iter.check666 ], [ %op.rdx, %vector.main.loop.iter.check633 ]
  %n.vec669 = and i64 %i.blx, 8589934588          ; 5 uses
  %i.bnc = trunc i64 %n.vec669 to i32
  %i.bnd = add i32 %.0649.lcssa.i, %i.bnc
  %i.bne = getelementptr i8, ptr %.0650.lcssa.i, i64 %n.vec669
  %i.bnf = getelementptr i8, ptr %.11737.lcssa.i, i64 %n.vec669 ; 2 uses
  %i.bng = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx662, i64 0
  br label %vec.epilog.vector.body670

vec.epilog.vector.body670:                        ; preds = %vec.epilog.vector.body670, %vec.epilog.ph668
  %index671 = phi i64 [ %vec.epilog.resume.val659, %vec.epilog.ph668 ], [ %index.next677, %vec.epilog.vector.body670 ] ; 3 uses
  %vec.phi672 = phi <4 x i32> [ %i.bng, %vec.epilog.ph668 ], [ %i.bnk, %vec.epilog.vector.body670 ]
  %next.gep673 = getelementptr i8, ptr %.0650.lcssa.i, i64 %index671
  %next.gep674 = getelementptr i8, ptr %.11737.lcssa.i, i64 %index671
  %wide.load675 = load <4 x i8>, ptr %next.gep673, align 1, !tbaa !15
  %i.bnh = sext <4 x i8> %wide.load675 to <4 x i32>
  %wide.load676 = load <4 x i8>, ptr %next.gep674, align 1, !tbaa !15
  %i.bni = sext <4 x i8> %wide.load676 to <4 x i32>
  %i.bnj = mul nsw <4 x i32> %i.bni, %i.bnh
  %i.bnk = add <4 x i32> %i.bnj, %vec.phi672      ; 2 uses
  %index.next677 = add nuw i64 %index671, 4       ; 2 uses
  %i.bnl = icmp eq i64 %index.next677, %n.vec669
  br i1 %i.bnl, label %vec.epilog.middle.block678, label %vec.epilog.vector.body670, !llvm.loop !66

vec.epilog.middle.block678:                       ; preds = %vec.epilog.vector.body670
  %i.bnm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bnk) ; 2 uses
  %cmp.n679 = icmp eq i64 %i.blx, %n.vec669
  br i1 %cmp.n679, label %._crit_edge1437.i, label %.lr.ph1436.i.preheader

.lr.ph1436.i.preheader:                           ; preds = %iter.check664, %vec.epilog.iter.check666, %vec.epilog.middle.block678
  %.11434.i.ph = phi i32 [ %.0649.lcssa.i, %iter.check664 ], [ %i.bma, %vec.epilog.iter.check666 ], [ %i.bnd, %vec.epilog.middle.block678 ]
  %.16511433.i.ph = phi ptr [ %.0650.lcssa.i, %iter.check664 ], [ %i.bmb, %vec.epilog.iter.check666 ], [ %i.bne, %vec.epilog.middle.block678 ]
  %.16531432.i.ph = phi i32 [ %op.rdx, %iter.check664 ], [ %i.bnb, %vec.epilog.iter.check666 ], [ %i.bnm, %vec.epilog.middle.block678 ]
  %.127381431.i.ph = phi ptr [ %.11737.lcssa.i, %iter.check664 ], [ %i.bmc, %vec.epilog.iter.check666 ], [ %i.bnf, %vec.epilog.middle.block678 ]
  br label %.lr.ph1436.i

.lr.ph1436.i:                                     ; preds = %.lr.ph1436.i.preheader, %.lr.ph1436.i
  %.11434.i = phi i32 [ %i.bnv, %.lr.ph1436.i ], [ %.11434.i.ph, %.lr.ph1436.i.preheader ]
  %.16511433.i = phi ptr [ %i.bnt, %.lr.ph1436.i ], [ %.16511433.i.ph, %.lr.ph1436.i.preheader ] ; 2 uses
  %.16531432.i = phi i32 [ %i.bns, %.lr.ph1436.i ], [ %.16531432.i.ph, %.lr.ph1436.i.preheader ]
  %.127381431.i = phi ptr [ %i.bnu, %.lr.ph1436.i ], [ %.127381431.i.ph, %.lr.ph1436.i.preheader ] ; 2 uses
  %i.bnn = load i8, ptr %.16511433.i, align 1, !tbaa !15
  %i.bno = sext i8 %i.bnn to i32
  %i.bnp = load i8, ptr %.127381431.i, align 1, !tbaa !15
  %i.bnq = sext i8 %i.bnp to i32
  %i.bnr = mul nsw i32 %i.bnq, %i.bno
  %i.bns = add nsw i32 %i.bnr, %.16531432.i       ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %.16511433.i, i64 1
  %i.bnu = getelementptr inbounds nuw i8, ptr %.127381431.i, i64 1 ; 2 uses
  %i.bnv = add nuw nsw i32 %.11434.i, 1           ; 2 uses
  %exitcond1629.not.i = icmp eq i32 %i.bnv, %8
  br i1 %exitcond1629.not.i, label %._crit_edge1437.i, label %.lr.ph1436.i, !llvm.loop !67

._crit_edge1437.i:                                ; preds = %.lr.ph1436.i, %middle.block654, %vec.epilog.middle.block678, %._crit_edge1423.i
  %.12738.lcssa.i = phi ptr [ %.11737.lcssa.i, %._crit_edge1423.i ], [ %i.bnf, %vec.epilog.middle.block678 ], [ %i.bmc, %middle.block654 ], [ %i.bnu, %.lr.ph1436.i ]
  %.1653.lcssa.i = phi i32 [ %op.rdx, %._crit_edge1423.i ], [ %i.bnm, %vec.epilog.middle.block678 ], [ %i.bnb, %middle.block654 ], [ %i.bns, %.lr.ph1436.i ]
  store i32 %.1653.lcssa.i, ptr %.141442.i, align 4, !tbaa !38
  %i.bnw = getelementptr inbounds nuw i8, ptr %.141442.i, i64 4 ; 2 uses
  %i.bnx = add nuw nsw i32 %.37251441.i, 1        ; 2 uses
  %exitcond1630.not.i = icmp eq i32 %i.bnx, %6
  br i1 %exitcond1630.not.i, label %._crit_edge1444.i, label %.lr.ph1443.i, !llvm.loop !68

._crit_edge1444.i:                                ; preds = %._crit_edge1437.i, %.preheader1003.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader1003.i ], [ %i.bnw, %._crit_edge1437.i ]
  %i.bny = getelementptr inbounds i8, ptr %.26751448.i, i64 %i.qs
  %i.bnz = add nuw nsw i32 %.26811446.i, 1        ; 2 uses
  %scevgep1626.i = getelementptr i8, ptr %indvars.iv1625.i, i64 %i.qs
  %exitcond1631.not.i = icmp eq i32 %i.bnz, %4
  br i1 %exitcond1631.not.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader1006.i, !llvm.loop !69

_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge1444.i, %bb.b, %bb.d, %bb.f, %.preheader1007.i
  ret void
}

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #1

declare void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev() local_unnamed_addr #1

declare void @_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16>, <8 x i16>, <4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16>, <8 x i16>, <4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !7, i64 0}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = !{!6, !6, i64 0}
!39 = distinct !{!39, !17, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !17, !40, !41}
!43 = distinct !{!43, !17, !41, !40}
!44 = distinct !{!44, !17, !41, !40}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17, !40, !41}
!47 = !{!"branch_weights", i32 4, i32 12}
!48 = distinct !{!48, !17, !40, !41}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17, !41, !40}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17, !40, !41}
!60 = distinct !{!60, !17, !40, !41}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17, !41, !40}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17, !40, !41}
!66 = distinct !{!66, !17, !40, !41}
!67 = distinct !{!67, !17, !41, !40}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
end_hunk_0
