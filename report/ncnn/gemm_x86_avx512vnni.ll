inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn45transpose_pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.bhs = getelementptr inbounds nuw i8, ptr %.49732.i.us, i64 16 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %.2984731.i.us, i64 %.idx1027.i
  %i.bhu = add nuw nsw i32 %.0995730.i.us, 8      ; 2 uses
  %i.bhv = or disjoint i32 %i.bhu, 7
  %i.bhw = icmp slt i32 %i.bhv, %5
  br i1 %i.bhw, label %.lr.ph734.i.us, label %._crit_edge735.thread.i.us, !llvm.loop !288

._crit_edge735.thread.i.us:                       ; preds = %.lr.ph734.i.us
  %i.bhx = shufflevector <4 x i32> %i.bhr, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge735.thread.i.us, %._crit_edge735.i.us
  %.49.lcssa1090.i.us = phi ptr [ %i.bhs, %._crit_edge735.thread.i.us ], [ %.45778.i.us, %._crit_edge735.i.us ] ; 2 uses
  %.lcssa5501088.i.us = phi <4 x i32> [ %i.bhx, %._crit_edge735.thread.i.us ], [ zeroinitializer, %._crit_edge735.i.us ] ; 2 uses
  %i.bhy = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa5501088.i.us, <4 x i32> %.lcssa5501088.i.us)
  %i.bhz = bitcast <4 x i32> %i.bhy to <2 x i64>
  %i.bia = extractelement <2 x i64> %i.bhz, i64 0
  store i64 %i.bia, ptr %.49.lcssa1090.i.us, align 1, !tbaa !17
  %i.bib = getelementptr inbounds nuw i8, ptr %.49.lcssa1090.i.us, i64 8
  br label %.loopexit535.i.us

bb.v:                                             ; preds = %.split1224.i.us
  %i.bic = load ptr, ptr %6, align 8, !tbaa !9
  %i.bid = getelementptr [4 x i8], ptr %i.bic, i64 %i.ban ; 2 uses
  %i.bie = load float, ptr %i.bid, align 4, !tbaa !236
  %i.bif = insertelement <16 x float> poison, float %i.bie, i64 0
  %i.big = shufflevector <16 x float> %i.bif, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bih = getelementptr i8, ptr %i.bid, i64 4
  %i.bii = load float, ptr %i.bih, align 4, !tbaa !236
  %i.bij = insertelement <16 x float> poison, float %i.bii, i64 0
  %i.bik = shufflevector <16 x float> %i.bij, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.azu, label %.lr.ph725.i.us, label %._crit_edge726.i.us

._crit_edge726.i.us:                              ; preds = %bb.v
  br i1 %i.azv, label %bb.w, label %.loopexit535.i.us

.lr.ph725.i.us:                                   ; preds = %bb.v, %.lr.ph725.i.us
  %.46723.i.us = phi ptr [ %i.bjk, %.lr.ph725.i.us ], [ %.45778.i.us, %bb.v ] ; 3 uses
  %.0982722.i.us = phi ptr [ %i.bjl, %.lr.ph725.i.us ], [ %i.bap, %bb.v ] ; 3 uses
  %.0994721.i.us = phi i32 [ %i.bjm, %.lr.ph725.i.us ], [ 0, %bb.v ]
  %i.bil = phi <4 x i32> [ %i.bji, %.lr.ph725.i.us ], [ zeroinitializer, %bb.v ]
  %i.bim = load <16 x float>, ptr %.0982722.i.us, align 64, !tbaa !17
  %i.bin = getelementptr inbounds nuw i8, ptr %.0982722.i.us, i64 64
  %i.bio = load <16 x float>, ptr %i.bin, align 64, !tbaa !17
  %i.bip = fmul fast <16 x float> %i.bim, %i.big  ; 2 uses
  %i.biq = fmul fast <16 x float> %i.bio, %i.bik  ; 2 uses
  %i.bir = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bip)
  %i.bis = fadd fast <16 x float> %i.bir, %i.bip
  %i.bit = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bis, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.biu = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bit, <16 x i8> zeroinitializer, i16 -1)
  %i.biv = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.biu, <16 x i8> splat (i8 -127))
  %i.biw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.biq)
  %i.bix = fadd fast <16 x float> %i.biw, %i.biq
  %i.biy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bix, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.biz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.biy, <16 x i8> zeroinitializer, i16 -1)
  %i.bja = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.biz, <16 x i8> splat (i8 -127))
  %i.bjb = bitcast <16 x i8> %i.biv to <4 x i32>  ; 2 uses
  %i.bjc = bitcast <16 x i8> %i.bja to <4 x i32>  ; 2 uses
  %i.bjd = shufflevector <4 x i32> %i.bjb, <4 x i32> %i.bjc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bje = shufflevector <4 x i32> %i.bjb, <4 x i32> %i.bjc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bjf = bitcast <4 x i32> %i.bjd to <16 x i8>
  %i.bjg = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bil, <16 x i8> splat (i8 127), <16 x i8> %i.bjf)
  %i.bjh = bitcast <4 x i32> %i.bje to <16 x i8>
  %i.bji = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bjg, <16 x i8> splat (i8 127), <16 x i8> %i.bjh) ; 2 uses
  store <4 x i32> %i.bjd, ptr %.46723.i.us, align 16, !tbaa !17
  %i.bjj = getelementptr inbounds nuw i8, ptr %.46723.i.us, i64 16
  store <4 x i32> %i.bje, ptr %i.bjj, align 16, !tbaa !17
  %i.bjk = getelementptr inbounds nuw i8, ptr %.46723.i.us, i64 32 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0982722.i.us, i64 %.idx1028.i
  %i.bjm = add nuw nsw i32 %.0994721.i.us, 16     ; 2 uses
  %i.bjn = or disjoint i32 %i.bjm, 15
  %i.bjo = icmp slt i32 %i.bjn, %5
  br i1 %i.bjo, label %.lr.ph725.i.us, label %._crit_edge726.thread.i.us, !llvm.loop !289

._crit_edge726.thread.i.us:                       ; preds = %.lr.ph725.i.us
  %i.bjp = shufflevector <4 x i32> %i.bji, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge726.thread.i.us, %._crit_edge726.i.us
  %.46.lcssa1080.i.us = phi ptr [ %i.bjk, %._crit_edge726.thread.i.us ], [ %.45778.i.us, %._crit_edge726.i.us ] ; 2 uses
  %.lcssa1078.i.us = phi <4 x i32> [ %i.bjp, %._crit_edge726.thread.i.us ], [ zeroinitializer, %._crit_edge726.i.us ] ; 2 uses
  %i.bjq = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa1078.i.us, <4 x i32> %.lcssa1078.i.us)
  %i.bjr = bitcast <4 x i32> %i.bjq to <2 x i64>
  %i.bjs = extractelement <2 x i64> %i.bjr, i64 0
  store i64 %i.bjs, ptr %.46.lcssa1080.i.us, align 1, !tbaa !17
  %i.bjt = getelementptr inbounds nuw i8, ptr %.46.lcssa1080.i.us, i64 8
  br label %.loopexit535.i.us

.loopexit535.i.us:                                ; preds = %.lr.ph775.i.us, %bb.w, %._crit_edge726.i.us, %bb.u, %._crit_edge735.i.us, %bb.s, %bb.r, %.preheader534.i.us, %.split1224.i.us
  %.59.i.us = phi ptr [ %.45778.i.us, %.split1224.i.us ], [ %.57.lcssa.i.us, %.preheader534.i.us ], [ %i.bjt, %bb.w ], [ %.45778.i.us, %bb.r ], [ %i.bgl, %bb.s ], [ %i.bib, %bb.u ], [ %.45778.i.us, %._crit_edge735.i.us ], [ %.45778.i.us, %._crit_edge726.i.us ], [ %i.ben, %.lr.ph775.i.us ] ; 2 uses
  %indvars.iv.next932.i.us = add nuw nsw i64 %indvars.iv931.i.us, 2 ; 3 uses
  %i.bju = icmp slt i64 %indvars.iv.next932.i.us, %invariant.op1221.i
  br i1 %i.bju, label %.split1224.i.us, label %.preheader.loopexit.i, !llvm.loop !290

.preheader.loopexit.i:                            ; preds = %.loopexit535.i.us, %.loopexit535.i.preheader
  %.us-phi72 = phi ptr [ %.30.lcssa.i, %.loopexit535.i.preheader ], [ %.59.i.us, %.loopexit535.i.us ]
  %.us-phi73 = phi i64 [ %i.bak, %.loopexit535.i.preheader ], [ %indvars.iv.next932.i.us, %.loopexit535.i.us ]
  %i.bjv = trunc nsw i64 %.us-phi73 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader536.i
  %.3909.lcssa.i = phi i32 [ %.2908.lcssa.i, %.preheader536.i ], [ %i.bjv, %.preheader.loopexit.i ] ; 2 uses
  %.45.lcssa.i = phi ptr [ %.30.lcssa.i, %.preheader536.i ], [ %.us-phi72, %.preheader.loopexit.i ]
  %i.bjw = icmp slt i32 %.3909.lcssa.i, %3
  br i1 %i.bjw, label %.lr.ph831.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph831.i:                                      ; preds = %.preheader.i
  %i.bjx = sext i32 %4 to i64
  %i.bjy = mul i64 %i.k, %i.bjx
  %i.bjz = icmp sgt i32 %5, 15
  %.idx1021.i = shl i64 %i.k, 6                   ; 2 uses
  %i.bka = icmp sgt i32 %5, 3                     ; 4 uses
  %i.bkb = icmp sgt i32 %5, 7
  %.idx1020.i = shl i64 %i.k, 5
  %.idx1019.i = shl i64 %i.k, 4                   ; 2 uses
  %i.bkc = trunc i64 %i.k to i32
  %i.bkd = insertelement <4 x i32> poison, i32 %i.bkc, i64 0
  %i.bke = shufflevector <4 x i32> %i.bkd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bkf = mul <4 x i32> %i.bke, <i32 0, i32 1, i32 2, i32 3>
  %i.bkg = and i32 %5, -4
  %i.bkh = sext i32 %2 to i64
  %i.bki = sext i32 %i.b to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.bkj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.bkk = icmp eq i32 %i.bkj, 1
  %i.bkl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.bkk, label %.split1225.i.preheader, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.split1225.i.preheader:                           ; preds = %.lr.ph831.i
  %i.bkm = sext i32 %.3909.lcssa.i to i64
  %i.bkn = add i32 %5, -16                        ; 2 uses
  %i.bko = lshr i32 %i.bkn, 4                     ; 2 uses
  %i.bkp = add nuw nsw i32 %i.bko, 1              ; 2 uses
  %xtraiter340 = and i32 %5, 1
  %lcmp.mod341.not = icmp eq i32 %xtraiter340, 0
  %i.bkq = icmp eq i32 %i.bko, 0
  %unroll_iter = and i32 %i.bkp, 536870910
  %i.bkr = and i32 %i.bkn, 16
  %lcmp.mod343.not.not = icmp eq i32 %i.bkr, 0
  %lcmp.mod346 = trunc i32 %i.bkp to i1
  br label %.split1225.i

.split1225.i:                                     ; preds = %.split1225.i.preheader, %.loopexit.i
  %indvars.iv935.i = phi i64 [ %indvars.iv.next936.i, %.loopexit.i ], [ %i.bkm, %.split1225.i.preheader ] ; 2 uses
  %.60830.i = phi ptr [ %.73.i, %.loopexit.i ], [ %.45.lcssa.i, %.split1225.i.preheader ] ; 12 uses
  %i.bks = load ptr, ptr %0, align 8, !tbaa !9
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.bjy
  %i.bku = add nsw i64 %indvars.iv935.i, %i.bkh   ; 2 uses
  %i.bkv = mul nsw i64 %i.bku, %i.bki
  %i.bkw = getelementptr inbounds [4 x i8], ptr %i.bkt, i64 %i.bkv ; 6 uses
  %i.bkx = load ptr, ptr %6, align 8, !tbaa !9
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.bku
  %i.bkz = load float, ptr %i.bky, align 4, !tbaa !236 ; 7 uses
  switch i32 %i.bkl, label %.loopexit.i [
    i32 4, label %bb.x
    i32 3, label %bb.y
    i32 2, label %bb.aa
    i32 0, label %bb.ac
  ]

bb.x:                                             ; preds = %.split1225.i
  %i.bla = insertelement <16 x float> poison, float %i.bkz, i64 0
  %i.blb = shufflevector <16 x float> %i.bla, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bjz, label %.lr.ph787.i.preheader, label %._crit_edge788.i

.lr.ph787.i.preheader:                            ; preds = %bb.x
  br i1 %i.bkq, label %.lr.ph787.i.epil.preheader, label %.lr.ph787.i

.lr.ph787.i:                                      ; preds = %.lr.ph787.i.preheader, %.lr.ph787.i
  %.61785.i = phi ptr [ %i.blv, %.lr.ph787.i ], [ %.60830.i, %.lr.ph787.i.preheader ] ; 3 uses
  %.0950783.i = phi ptr [ %i.blw, %.lr.ph787.i ], [ %i.bkw, %.lr.ph787.i.preheader ] ; 2 uses
  %i.blc = phi <4 x i32> [ %i.blu, %.lr.ph787.i ], [ zeroinitializer, %.lr.ph787.i.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph787.i ], [ 0, %.lr.ph787.i.preheader ]
  %i.bld = load <16 x float>, ptr %.0950783.i, align 64, !tbaa !17
  %i.ble = fmul fast <16 x float> %i.bld, %i.blb  ; 2 uses
  %i.blf = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ble)
  %i.blg = fadd fast <16 x float> %i.blf, %i.ble
  %i.blh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.blg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bli = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.blh, <16 x i8> zeroinitializer, i16 -1)
  %i.blj = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bli, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.blk = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.blc, <16 x i8> splat (i8 127), <16 x i8> %i.blj)
  store <16 x i8> %i.blj, ptr %.61785.i, align 1, !tbaa !17
  %i.bll = getelementptr inbounds nuw i8, ptr %.61785.i, i64 16
  %i.blm = getelementptr inbounds nuw i8, ptr %.0950783.i, i64 %.idx1021.i ; 2 uses
  %i.bln = load <16 x float>, ptr %i.blm, align 64, !tbaa !17
  %i.blo = fmul fast <16 x float> %i.bln, %i.blb  ; 2 uses
  %i.blp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.blo)
  %i.blq = fadd fast <16 x float> %i.blp, %i.blo
  %i.blr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.blq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bls = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.blr, <16 x i8> zeroinitializer, i16 -1)
  %i.blt = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bls, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.blu = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.blk, <16 x i8> splat (i8 127), <16 x i8> %i.blt) ; 3 uses
  store <16 x i8> %i.blt, ptr %i.bll, align 1, !tbaa !17
  %i.blv = getelementptr inbounds nuw i8, ptr %.61785.i, i64 32 ; 3 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blm, i64 %.idx1021.i ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge788.thread.i.unr-lcssa, label %.lr.ph787.i, !llvm.loop !291

._crit_edge788.thread.i.unr-lcssa:                ; preds = %.lr.ph787.i
  br i1 %lcmp.mod343.not.not, label %.lr.ph787.i.epil.preheader, label %._crit_edge788.thread.i

.lr.ph787.i.epil.preheader:                       ; preds = %._crit_edge788.thread.i.unr-lcssa, %.lr.ph787.i.preheader
  %.61785.i.epil.init = phi ptr [ %.60830.i, %.lr.ph787.i.preheader ], [ %i.blv, %._crit_edge788.thread.i.unr-lcssa ] ; 2 uses
  %.0950783.i.epil.init = phi ptr [ %i.bkw, %.lr.ph787.i.preheader ], [ %i.blw, %._crit_edge788.thread.i.unr-lcssa ]
  %.epil.init = phi <4 x i32> [ zeroinitializer, %.lr.ph787.i.preheader ], [ %i.blu, %._crit_edge788.thread.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod346)
  %i.blx = load <16 x float>, ptr %.0950783.i.epil.init, align 64, !tbaa !17
  %i.bly = fmul fast <16 x float> %i.blx, %i.blb  ; 2 uses
  %i.blz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bly)
  %i.bma = fadd fast <16 x float> %i.blz, %i.bly
  %i.bmb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bma, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bmc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bmb, <16 x i8> zeroinitializer, i16 -1)
  %i.bmd = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bmc, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bme = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %.epil.init, <16 x i8> splat (i8 127), <16 x i8> %i.bmd)
  store <16 x i8> %i.bmd, ptr %.61785.i.epil.init, align 1, !tbaa !17
  %i.bmf = getelementptr inbounds nuw i8, ptr %.61785.i.epil.init, i64 16
  br label %._crit_edge788.thread.i

._crit_edge788.thread.i:                          ; preds = %._crit_edge788.thread.i.unr-lcssa, %.lr.ph787.i.epil.preheader
  %.lcssa283 = phi <4 x i32> [ %i.blu, %._crit_edge788.thread.i.unr-lcssa ], [ %i.bme, %.lr.ph787.i.epil.preheader ]
  %.lcssa282 = phi ptr [ %i.blv, %._crit_edge788.thread.i.unr-lcssa ], [ %i.bmf, %.lr.ph787.i.epil.preheader ]
  %7 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa283)
  br label %._crit_edge788.thread.i.a

._crit_edge788.i:                                 ; preds = %bb.x
  br i1 %i.bka, label %._crit_edge788.thread.i.a, label %.loopexit.i

._crit_edge788.thread.i.a:                        ; preds = %._crit_edge788.i, %._crit_edge788.thread.i
  %.61.lcssa1123.i = phi ptr [ %.lcssa282, %._crit_edge788.thread.i ], [ %.60830.i, %._crit_edge788.i ] ; 2 uses
  %8 = phi i32 [ %7, %._crit_edge788.thread.i ], [ 0, %._crit_edge788.i ]
  store i32 %8, ptr %.61.lcssa1123.i, align 4, !tbaa !49
  %i.bmg = getelementptr inbounds nuw i8, ptr %.61.lcssa1123.i, i64 4
  br label %.loopexit.i

bb.y:                                             ; preds = %.split1225.i
  %i.bmh = insertelement <8 x float> poison, float %i.bkz, i64 0
  %i.bmi = shufflevector <8 x float> %i.bmh, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.bkb, label %.lr.ph797.i, label %._crit_edge798.i

.lr.ph797.i:                                      ; preds = %bb.y, %.lr.ph797.i
  %.64795.i = phi ptr [ %i.bnd, %.lr.ph797.i ], [ %.60830.i, %bb.y ] ; 2 uses
  %.0934794.i = phi i32 [ %op.rdx275, %.lr.ph797.i ], [ 0, %bb.y ]
  %.0935793.i = phi i32 [ %i.bnf, %.lr.ph797.i ], [ 0, %bb.y ]
  %.2952792.i = phi ptr [ %i.bne, %.lr.ph797.i ], [ %i.bkw, %bb.y ] ; 2 uses
  %i.bmj = load <8 x float>, ptr %.2952792.i, align 32, !tbaa !17
  %i.bmk = fmul fast <8 x float> %i.bmj, %i.bmi   ; 2 uses
  %i.bml = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bmk)
  %i.bmm = fadd fast <8 x float> %i.bml, %i.bmk
  %i.bmn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bmm)
  %i.bmo = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bmn, <16 x i8> zeroinitializer, i8 -1)
  %i.bmp = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bmo, <16 x i8> splat (i8 -127)) ; 5 uses
  %i.bmq = bitcast <16 x i8> %i.bmp to <2 x i64>
  %i.bmr = extractelement <2 x i64> %i.bmq, i64 0 ; 2 uses
  store i64 %i.bmr, ptr %.64795.i, align 8, !tbaa !219
  %i.bms = trunc i64 %i.bmr to i8
  %i.bmt = sext i8 %i.bms to i32
  %i.bmu = shufflevector <16 x i8> %i.bmp, <16 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.bmv = extractelement <16 x i8> %i.bmp, i64 5
  %i.bmw = sext i8 %i.bmv to i32
  %i.bmx = extractelement <16 x i8> %i.bmp, i64 6
  %i.bmy = sext i8 %i.bmx to i32
  %i.bmz = extractelement <16 x i8> %i.bmp, i64 7
  %i.bna = sext i8 %i.bmz to i32
  %i.bnb = sext <4 x i8> %i.bmu to <4 x i32>
  %i.bnc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bnb)
  %op.rdx = add i32 %i.bnc, %i.bmw
  %op.rdx272 = add nsw i32 %i.bmy, %i.bna
  %op.rdx273 = add i32 %.0934794.i, %i.bmt
  %op.rdx274 = add i32 %op.rdx, %op.rdx272
  %op.rdx275 = add i32 %op.rdx274, %op.rdx273     ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %.64795.i, i64 8 ; 2 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %.2952792.i, i64 %.idx1020.i
  %i.bnf = add nuw nsw i32 %.0935793.i, 8         ; 2 uses
  %i.bng = or disjoint i32 %i.bnf, 7
  %i.bnh = icmp slt i32 %i.bng, %5
  br i1 %i.bnh, label %.lr.ph797.i, label %._crit_edge798.thread.i, !llvm.loop !292

._crit_edge798.thread.i:                          ; preds = %.lr.ph797.i
  %i.bni = mul nsw i32 %op.rdx275, 127
  br label %bb.z

._crit_edge798.i:                                 ; preds = %bb.y
  br i1 %i.bka, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %._crit_edge798.i, %._crit_edge798.thread.i
  %.64.lcssa1133.i = phi ptr [ %i.bnd, %._crit_edge798.thread.i ], [ %.60830.i, %._crit_edge798.i ] ; 2 uses
  %.0934.lcssa1132.i = phi i32 [ %i.bni, %._crit_edge798.thread.i ], [ 0, %._crit_edge798.i ]
  store i32 %.0934.lcssa1132.i, ptr %.64.lcssa1133.i, align 4, !tbaa !49
  %i.bnj = getelementptr inbounds nuw i8, ptr %.64.lcssa1133.i, i64 4
  br label %.loopexit.i

bb.aa:                                            ; preds = %.split1225.i
  %i.bnk = insertelement <4 x float> poison, float %i.bkz, i64 0
  %i.bnl = shufflevector <4 x float> %i.bnk, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.bka, label %.lr.ph807.i, label %.loopexit.i

.lr.ph807.i:                                      ; preds = %bb.aa, %.lr.ph807.i
  %.67805.i = phi ptr [ %i.boi, %.lr.ph807.i ], [ %.60830.i, %bb.aa ] ; 3 uses
  %.0930804.i = phi i32 [ %i.boh, %.lr.ph807.i ], [ 0, %bb.aa ]
  %.0931803.i = phi i32 [ %i.bok, %.lr.ph807.i ], [ 0, %bb.aa ]
  %.4954802.i = phi ptr [ %i.boj, %.lr.ph807.i ], [ %i.bkw, %bb.aa ] ; 2 uses
  %i.bnm = load <4 x float>, ptr %.4954802.i, align 16, !tbaa !17
  %i.bnn = fmul fast <4 x float> %i.bnm, %i.bnl   ; 2 uses
  %i.bno = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bnn)
  %i.bnp = fadd fast <4 x float> %i.bno, %i.bnn
  %i.bnq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bnp) ; 2 uses
  %i.bnr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bnq, <4 x i32> %i.bnq)
  %i.bns = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bnr, <8 x i16> splat (i16 -127))
  %i.bnt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bns, <8 x i16> splat (i16 127))
  %i.bnu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bnt, <8 x i16> poison) ; 4 uses
  %i.bnv = bitcast <16 x i8> %i.bnu to <4 x i32>
  %i.bnw = extractelement <4 x i32> %i.bnv, i64 0 ; 2 uses
  store i32 %i.bnw, ptr %.67805.i, align 4, !tbaa !49
  %sext.i = shl i32 %i.bnw, 24
  %i.bnx = ashr exact i32 %sext.i, 24
  %i.bny = extractelement <16 x i8> %i.bnu, i64 1
  %i.bnz = sext i8 %i.bny to i32
  %i.boa = extractelement <16 x i8> %i.bnu, i64 2
  %i.bob = sext i8 %i.boa to i32
  %i.boc = extractelement <16 x i8> %i.bnu, i64 3
  %i.bod = sext i8 %i.boc to i32
  %i.boe = add i32 %.0930804.i, %i.bnz
  %i.bof = add i32 %i.boe, %i.bob
  %i.bog = add i32 %i.bof, %i.bod
  %i.boh = add i32 %i.bog, %i.bnx                 ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %.67805.i, i64 4 ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %.4954802.i, i64 %.idx1019.i
  %i.bok = add nuw nsw i32 %.0931803.i, 4         ; 2 uses
  %i.bol = or disjoint i32 %i.bok, 3
  %i.bom = icmp slt i32 %i.bol, %5
  br i1 %i.bom, label %.lr.ph807.i, label %bb.ab, !llvm.loop !293

bb.ab:                                            ; preds = %.lr.ph807.i
  %i.bon = mul nsw i32 %i.boh, 127
  store i32 %i.bon, ptr %i.boi, align 4, !tbaa !49
  %i.boo = getelementptr inbounds nuw i8, ptr %.67805.i, i64 8
  br label %.loopexit.i

bb.ac:                                            ; preds = %.split1225.i
  %i.bop = insertelement <4 x float> poison, float %i.bkz, i64 0
  %i.boq = shufflevector <4 x float> %i.bop, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.bka, label %.lr.ph817.i, label %._crit_edge818.i

.lr.ph817.i:                                      ; preds = %bb.ac, %.lr.ph817.i
  %.70815.i = phi ptr [ %i.bpn, %.lr.ph817.i ], [ %.60830.i, %bb.ac ] ; 3 uses
  %.0911814.i = phi i32 [ %i.bpm, %.lr.ph817.i ], [ 0, %bb.ac ]
  %.0921813.i = phi i32 [ %i.bpp, %.lr.ph817.i ], [ 0, %bb.ac ]
  %.6956812.i = phi ptr [ %i.bpo, %.lr.ph817.i ], [ %i.bkw, %bb.ac ] ; 2 uses
  %i.bor = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.6956812.i, <4 x i32> %i.bkf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bos = fmul fast <4 x float> %i.bor, %i.boq   ; 2 uses
  %i.bot = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bos)
  %i.bou = fadd fast <4 x float> %i.bot, %i.bos
  %i.bov = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bou) ; 2 uses
  %i.bow = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bov, <4 x i32> %i.bov)
  %i.box = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bow, <8 x i16> splat (i16 -127))
  %i.boy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.box, <8 x i16> splat (i16 127))
  %i.boz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.boy, <8 x i16> poison) ; 4 uses
  %i.bpa = bitcast <16 x i8> %i.boz to <4 x i32>
  %i.bpb = extractelement <4 x i32> %i.bpa, i64 0 ; 2 uses
  store i32 %i.bpb, ptr %.70815.i, align 4, !tbaa !49
  %sext953.i = shl i32 %i.bpb, 24
  %i.bpc = ashr exact i32 %sext953.i, 24
  %i.bpd = extractelement <16 x i8> %i.boz, i64 1
  %i.bpe = sext i8 %i.bpd to i32
  %i.bpf = extractelement <16 x i8> %i.boz, i64 2
  %i.bpg = sext i8 %i.bpf to i32
  %i.bph = extractelement <16 x i8> %i.boz, i64 3
  %i.bpi = sext i8 %i.bph to i32
  %i.bpj = add i32 %.0911814.i, %i.bpe
  %i.bpk = add i32 %i.bpj, %i.bpg
  %i.bpl = add i32 %i.bpk, %i.bpi
  %i.bpm = add i32 %i.bpl, %i.bpc                 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %.70815.i, i64 4 ; 2 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %.6956812.i, i64 %.idx1019.i ; 2 uses
  %i.bpp = add nuw nsw i32 %.0921813.i, 4         ; 2 uses
  %i.bpq = or disjoint i32 %i.bpp, 3
  %i.bpr = icmp slt i32 %i.bpq, %5
  br i1 %i.bpr, label %.lr.ph817.i, label %bb.ad, !llvm.loop !294

bb.ad:                                            ; preds = %.lr.ph817.i
  %i.bps = mul nsw i32 %i.bpm, 127
  store i32 %i.bps, ptr %i.bpn, align 4, !tbaa !49
  %i.bpt = getelementptr inbounds nuw i8, ptr %.70815.i, i64 8
  br label %._crit_edge818.i

._crit_edge818.i:                                 ; preds = %bb.ad, %bb.ac
  %.0921.lcssa1153.i = phi i32 [ %i.bkg, %bb.ad ], [ 0, %bb.ac ] ; 4 uses
  %.6956.lcssa1151.i = phi ptr [ %i.bpo, %bb.ad ], [ %i.bkw, %bb.ac ] ; 3 uses
  %.71.i = phi ptr [ %i.bpt, %bb.ad ], [ %.60830.i, %bb.ac ] ; 4 uses
  %i.bpu = icmp slt i32 %.0921.lcssa1153.i, %5
  br i1 %i.bpu, label %.lr.ph827.i.preheader, label %.loopexit.i

.lr.ph827.i.preheader:                            ; preds = %._crit_edge818.i
  %.neg349 = or disjoint i32 %.0921.lcssa1153.i, 1
  br i1 %lcmp.mod341.not, label %.lr.ph827.i.prol.loopexit, label %.lr.ph827.i.prol

.lr.ph827.i.prol:                                 ; preds = %.lr.ph827.i.preheader
  %i.bpv = load float, ptr %.6956.lcssa1151.i, align 4, !tbaa !236
  %i.bpw = fmul fast float %i.bpv, %i.bkz
  %i.bpx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bpw)
  %i.bpy = fptosi float %i.bpx to i32
  %spec.select.i528.i.prol = tail call i32 @llvm.smax.i32(i32 %i.bpy, i32 -127)
  %.0.i529.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i528.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i529.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.71.i, align 1, !tbaa !17
  %i.bpz = getelementptr inbounds nuw i8, ptr %.71.i, i64 1 ; 2 uses
  %i.bqa = getelementptr inbounds nuw [4 x i8], ptr %.6956.lcssa1151.i, i64 %i.k
  %i.bqb = or disjoint i32 %.0921.lcssa1153.i, 1
  br label %.lr.ph827.i.prol.loopexit

.lr.ph827.i.prol.loopexit:                        ; preds = %.lr.ph827.i.prol, %.lr.ph827.i.preheader
  %.lcssa278.unr = phi ptr [ poison, %.lr.ph827.i.preheader ], [ %i.bpz, %.lr.ph827.i.prol ]
  %.72825.i.unr = phi ptr [ %.71.i, %.lr.ph827.i.preheader ], [ %i.bpz, %.lr.ph827.i.prol ]
  %.1922824.i.unr = phi i32 [ %.0921.lcssa1153.i, %.lr.ph827.i.preheader ], [ %i.bqb, %.lr.ph827.i.prol ]
  %.7957823.i.unr = phi ptr [ %.6956.lcssa1151.i, %.lr.ph827.i.preheader ], [ %i.bqa, %.lr.ph827.i.prol ]
  %i.bqc = icmp eq i32 %5, %.neg349
  br i1 %i.bqc, label %.loopexit.i, label %.lr.ph827.i

.lr.ph827.i:                                      ; preds = %.lr.ph827.i.prol.loopexit, %.lr.ph827.i
  %.72825.i = phi ptr [ %i.bqn, %.lr.ph827.i ], [ %.72825.i.unr, %.lr.ph827.i.prol.loopexit ] ; 3 uses
  %.1922824.i = phi i32 [ %i.bqp, %.lr.ph827.i ], [ %.1922824.i.unr, %.lr.ph827.i.prol.loopexit ]
  %.7957823.i = phi ptr [ %i.bqo, %.lr.ph827.i ], [ %.7957823.i.unr, %.lr.ph827.i.prol.loopexit ] ; 2 uses
  %i.bqd = load float, ptr %.7957823.i, align 4, !tbaa !236
  %i.bqe = fmul fast float %i.bqd, %i.bkz
  %i.bqf = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bqe)
  %i.bqg = fptosi float %i.bqf to i32
  %spec.select.i528.i = tail call i32 @llvm.smax.i32(i32 %i.bqg, i32 -127)
  %.0.i529.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i528.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i529.i to i8
  store i8 %.0.i.i, ptr %.72825.i, align 1, !tbaa !17
  %i.bqh = getelementptr inbounds nuw i8, ptr %.72825.i, i64 1
end_hunk_0
