inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_encode_and_deinterleave_h_one_row_real:bb.a
  %i.adp = insertelement <4 x float> %i.ado, float %i.adl, i64 1
  %i.adq = insertelement <4 x float> %i.adp, float %i.adm, i64 2
  %i.adr = insertelement <4 x float> %i.adq, float %i.adn, i64 3 ; 2 uses
  %i.ads = fadd <4 x float> %i.acn, %i.adr
  %i.adt = getelementptr inbounds nuw i8, ptr %next.gep168, i64 12 ; 2 uses
  %i.adu = getelementptr i8, ptr %i.aan, i64 44   ; 2 uses
  %i.adv = getelementptr i8, ptr %i.aao, i64 76   ; 2 uses
  %i.adw = getelementptr i8, ptr %i.aap, i64 108  ; 2 uses
  %i.adx = load float, ptr %i.adt, align 4, !tbaa !180
  %i.ady = load float, ptr %i.adu, align 4, !tbaa !180
  %i.adz = load float, ptr %i.adv, align 4, !tbaa !180
  %i.aea = load float, ptr %i.adw, align 4, !tbaa !180
  %i.aeb = insertelement <4 x float> poison, float %i.adx, i64 0
  %i.aec = insertelement <4 x float> %i.aeb, float %i.ady, i64 1
  %i.aed = insertelement <4 x float> %i.aec, float %i.adz, i64 2
  %i.aee = insertelement <4 x float> %i.aed, float %i.aea, i64 3
  %i.aef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ads, <4 x float> splat (float f0x3EE31355), <4 x float> %i.aee) ; 4 uses
  %i.aeg = extractelement <4 x float> %i.aef, i64 0
  %i.aeh = extractelement <4 x float> %i.aef, i64 1
  %i.aei = extractelement <4 x float> %i.aef, i64 2
  %i.aej = extractelement <4 x float> %i.aef, i64 3
  store float %i.aeg, ptr %i.adt, align 4, !tbaa !180
  store float %i.aeh, ptr %i.adu, align 4, !tbaa !180
  store float %i.aei, ptr %i.adv, align 4, !tbaa !180
  store float %i.aej, ptr %i.adw, align 4, !tbaa !180
  %i.aek = getelementptr inbounds nuw i8, ptr %next.gep168, i64 24
  %i.ael = getelementptr i8, ptr %i.aan, i64 56
  %i.aem = getelementptr i8, ptr %i.aao, i64 88
  %i.aen = getelementptr i8, ptr %i.aap, i64 120
  %i.aeo = load float, ptr %i.aek, align 4, !tbaa !180
  %i.aep = load float, ptr %i.ael, align 4, !tbaa !180
  %i.aeq = load float, ptr %i.aem, align 4, !tbaa !180
  %i.aer = load float, ptr %i.aen, align 4, !tbaa !180
  %i.aes = insertelement <4 x float> poison, float %i.aeo, i64 0
  %i.aet = insertelement <4 x float> %i.aes, float %i.aep, i64 1
  %i.aeu = insertelement <4 x float> %i.aet, float %i.aeq, i64 2
  %i.aev = insertelement <4 x float> %i.aeu, float %i.aer, i64 3
  %i.aew = fadd <4 x float> %i.adr, %i.aev
  %i.aex = getelementptr inbounds nuw i8, ptr %next.gep168, i64 20 ; 2 uses
  %i.aey = getelementptr i8, ptr %i.aan, i64 52   ; 2 uses
  %i.aez = getelementptr i8, ptr %i.aao, i64 84   ; 2 uses
  %i.afa = getelementptr i8, ptr %i.aap, i64 116  ; 2 uses
  %i.afb = load float, ptr %i.aex, align 4, !tbaa !180
  %i.afc = load float, ptr %i.aey, align 4, !tbaa !180
  %i.afd = load float, ptr %i.aez, align 4, !tbaa !180
  %i.afe = load float, ptr %i.afa, align 4, !tbaa !180
  %i.aff = insertelement <4 x float> poison, float %i.afb, i64 0
  %i.afg = insertelement <4 x float> %i.aff, float %i.afc, i64 1
  %i.afh = insertelement <4 x float> %i.afg, float %i.afd, i64 2
  %i.afi = insertelement <4 x float> %i.afh, float %i.afe, i64 3
  %i.afj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aew, <4 x float> splat (float f0x3EE31355), <4 x float> %i.afi) ; 4 uses
  %i.afk = extractelement <4 x float> %i.afj, i64 0
  %i.afl = extractelement <4 x float> %i.afj, i64 1
  %i.afm = extractelement <4 x float> %i.afj, i64 2
  %i.afn = extractelement <4 x float> %i.afj, i64 3
  store float %i.afk, ptr %i.aex, align 4, !tbaa !180
  store float %i.afl, ptr %i.aey, align 4, !tbaa !180
  store float %i.afm, ptr %i.aez, align 4, !tbaa !180
  store float %i.afn, ptr %i.afa, align 4, !tbaa !180
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.afo = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.afo, label %.lr.ph.i82.i.preheader276, label %vector.body166, !llvm.loop !193

.preheader.loopexit.i85.i:                        ; preds = %.lr.ph.i82.i
  %i.afp = add nsw i32 %i.il, -5
  %i.afq = and i32 %i.afp, -4
  %i.afr = add nuw nsw i32 %i.afq, 5
  br label %.preheader.i73.i

.preheader.i73.i:                                 ; preds = %.preheader.loopexit.i85.i, %bb.i
  %.040.lcssa.i74.i = phi i32 [ 1, %bb.i ], [ %i.afr, %.preheader.loopexit.i85.i ] ; 4 uses
  %.0.lcssa.i75.i = phi ptr [ %i.aaa, %bb.i ], [ %i.aht, %.preheader.loopexit.i85.i ] ; 7 uses
  %i.afs = icmp samesign ult i32 %.040.lcssa.i74.i, %i.il
  br i1 %i.afs, label %.lr.ph48.i78.i.preheader, label %.loopexit.i76.i

.lr.ph48.i78.i.preheader:                         ; preds = %.preheader.i73.i
  %i.aft = xor i32 %.040.lcssa.i74.i, -1
  %i.afu = add i32 %i.il, %i.aft                  ; 2 uses
  %min.iters.check177 = icmp ult i32 %i.afu, 4
  br i1 %min.iters.check177, label %.lr.ph48.i78.i.preheader274, label %vector.ph178

.lr.ph48.i78.i.preheader274:                      ; preds = %vector.body181, %.lr.ph48.i78.i.preheader
  %.147.i79.i.ph = phi ptr [ %.0.lcssa.i75.i, %.lr.ph48.i78.i.preheader ], [ %i.aga, %vector.body181 ]
  %.14146.i80.i.ph = phi i32 [ %.040.lcssa.i74.i, %.lr.ph48.i78.i.preheader ], [ %i.agc, %vector.body181 ]
  br label %.lr.ph48.i78.i

vector.ph178:                                     ; preds = %.lr.ph48.i78.i.preheader
  %i.afv = zext i32 %i.afu to i64
  %i.afw = add nuw nsw i64 %i.afv, 1              ; 2 uses
  %n.mod.vf179 = and i64 %i.afw, 3                ; 2 uses
  %i.afx = icmp eq i64 %n.mod.vf179, 0
  %i.afy = select i1 %i.afx, i64 4, i64 %n.mod.vf179
  %n.vec180 = sub nsw i64 %i.afw, %i.afy          ; 3 uses
  %i.afz = shl nsw i64 %n.vec180, 3
  %i.aga = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.afz
  %i.agb = trunc i64 %n.vec180 to i32
  %i.agc = add i32 %.040.lcssa.i74.i, %i.agb
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next192, %vector.body181 ] ; 2 uses
  %i.agd = shl i64 %index182, 3                   ; 4 uses
  %next.gep183 = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.agd ; 3 uses
  %i.age = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.agd
  %i.agf = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.agd
  %i.agg = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.agd
  %i.agh = getelementptr inbounds i8, ptr %next.gep183, i64 -8
  %wide.vec187 = load <8 x float>, ptr %i.agh, align 4, !tbaa !180
  %strided.vec188 = shufflevector <8 x float> %wide.vec187, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.agi = getelementptr i8, ptr %next.gep183, i64 -4
  %wide.vec189 = load <8 x float>, ptr %i.agi, align 4, !tbaa !180 ; 2 uses
  %strided.vec190 = shufflevector <8 x float> %wide.vec189, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec191 = shufflevector <8 x float> %wide.vec189, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.agj = fadd <4 x float> %strided.vec188, %strided.vec191
  %i.agk = getelementptr inbounds i8, ptr %next.gep183, i64 -4
  %i.agl = getelementptr i8, ptr %i.age, i64 4
  %i.agm = getelementptr i8, ptr %i.agf, i64 12
  %i.agn = getelementptr i8, ptr %i.agg, i64 20
  %i.ago = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agj, <4 x float> splat (float f0x3EE31355), <4 x float> %strided.vec190) ; 4 uses
  %i.agp = extractelement <4 x float> %i.ago, i64 0
  %i.agq = extractelement <4 x float> %i.ago, i64 1
  %i.agr = extractelement <4 x float> %i.ago, i64 2
  %i.ags = extractelement <4 x float> %i.ago, i64 3
  store float %i.agp, ptr %i.agk, align 4, !tbaa !180
  store float %i.agq, ptr %i.agl, align 4, !tbaa !180
  store float %i.agr, ptr %i.agm, align 4, !tbaa !180
  store float %i.ags, ptr %i.agn, align 4, !tbaa !180
  %index.next192 = add nuw i64 %index182, 4       ; 2 uses
  %i.agt = icmp eq i64 %index.next192, %n.vec180
  br i1 %i.agt, label %.lr.ph48.i78.i.preheader274, label %vector.body181, !llvm.loop !194

.lr.ph.i82.i:                                     ; preds = %.lr.ph.i82.i.preheader276, %.lr.ph.i82.i
  %.044.i83.i = phi ptr [ %i.aht, %.lr.ph.i82.i ], [ %.044.i83.i.ph, %.lr.ph.i82.i.preheader276 ] ; 10 uses
  %.04043.i84.i = phi i32 [ %i.ahu, %.lr.ph.i82.i ], [ %.04043.i84.i.ph, %.lr.ph.i82.i.preheader276 ] ; 2 uses
  %i.agu = getelementptr inbounds i8, ptr %.044.i83.i, i64 -8
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !180
  %i.agw = load float, ptr %.044.i83.i, align 4, !tbaa !180 ; 2 uses
  %i.agx = fadd float %i.agv, %i.agw
  %i.agy = getelementptr inbounds i8, ptr %.044.i83.i, i64 -4 ; 2 uses
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !180
  %i.aha = tail call float @llvm.fmuladd.f32(float %i.agx, float f0x3EE31355, float %i.agz)
  store float %i.aha, ptr %i.agy, align 4, !tbaa !180
  %i.ahb = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 8
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !180 ; 2 uses
  %i.ahd = fadd float %i.agw, %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 4 ; 2 uses
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !180
  %i.ahg = tail call float @llvm.fmuladd.f32(float %i.ahd, float f0x3EE31355, float %i.ahf)
  store float %i.ahg, ptr %i.ahe, align 4, !tbaa !180
  %i.ahh = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 16
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !180 ; 2 uses
  %i.ahj = fadd float %i.ahc, %i.ahi
  %i.ahk = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 12 ; 2 uses
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !180
  %i.ahm = tail call float @llvm.fmuladd.f32(float %i.ahj, float f0x3EE31355, float %i.ahl)
  store float %i.ahm, ptr %i.ahk, align 4, !tbaa !180
  %i.ahn = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 24
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !180
  %i.ahp = fadd float %i.ahi, %i.aho
  %i.ahq = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 20 ; 2 uses
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !180
  %i.ahs = tail call float @llvm.fmuladd.f32(float %i.ahp, float f0x3EE31355, float %i.ahr)
  store float %i.ahs, ptr %i.ahq, align 4, !tbaa !180
  %i.aht = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 32 ; 2 uses
  %i.ahu = add nuw nsw i32 %.04043.i84.i, 4
  %i.ahv = add nuw i32 %.04043.i84.i, 7
  %i.ahw = icmp ult i32 %i.ahv, %i.il
  br i1 %i.ahw, label %.lr.ph.i82.i, label %.preheader.loopexit.i85.i, !llvm.loop !195

.lr.ph48.i78.i:                                   ; preds = %.lr.ph48.i78.i.preheader274, %.lr.ph48.i78.i
  %.147.i79.i = phi ptr [ %i.aie, %.lr.ph48.i78.i ], [ %.147.i79.i.ph, %.lr.ph48.i78.i.preheader274 ] ; 4 uses
  %.14146.i80.i = phi i32 [ %i.aif, %.lr.ph48.i78.i ], [ %.14146.i80.i.ph, %.lr.ph48.i78.i.preheader274 ]
  %i.ahx = getelementptr inbounds i8, ptr %.147.i79.i, i64 -8
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !180
  %i.ahz = load float, ptr %.147.i79.i, align 4, !tbaa !180
  %i.aia = fadd float %i.ahy, %i.ahz
  %i.aib = getelementptr inbounds i8, ptr %.147.i79.i, i64 -4 ; 2 uses
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !180
  %i.aid = tail call float @llvm.fmuladd.f32(float %i.aia, float f0x3EE31355, float %i.aic)
  store float %i.aid, ptr %i.aib, align 4, !tbaa !180
  %i.aie = getelementptr inbounds nuw i8, ptr %.147.i79.i, i64 8 ; 2 uses
  %i.aif = add nuw i32 %.14146.i80.i, 1           ; 2 uses
  %exitcond.not.i81.i = icmp eq i32 %i.aif, %i.il
  br i1 %exitcond.not.i81.i, label %.loopexit.i76.i, label %.lr.ph48.i78.i, !llvm.loop !196

.loopexit.i76.i:                                  ; preds = %.lr.ph48.i78.i, %.preheader.i73.i, %opj_dwt_encode_step2.exit71.i
  %.2.i77.i = phi ptr [ %i.ii, %opj_dwt_encode_step2.exit71.i ], [ %.0.lcssa.i75.i, %.preheader.i73.i ], [ %i.aie, %.lr.ph48.i78.i ] ; 2 uses
  br i1 %i.qx, label %bb.j, label %opj_dwt_encode_step2.exit86.i

bb.j:                                             ; preds = %.loopexit.i76.i
  %i.aig = getelementptr inbounds i8, ptr %.2.i77.i, i64 -8
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !180
  %i.aii = fmul float %i.aih, 2.000000e+00
  %i.aij = getelementptr inbounds i8, ptr %.2.i77.i, i64 -4 ; 2 uses
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !180
  %i.ail = tail call float @llvm.fmuladd.f32(float %i.aii, float f0x3EE31355, float %i.aik)
  store float %i.ail, ptr %i.aij, align 4, !tbaa !180
  br label %opj_dwt_encode_step2.exit86.i

opj_dwt_encode_step2.exit86.i:                    ; preds = %bb.j, %.loopexit.i76.i
  %i.aim = tail call noundef i32 @llvm.umin.i32(i32 %i.e, i32 range(i32 0, -2147483648) %i.d) ; 15 uses
  %i.ain = icmp samesign ugt i32 %i.aim, 3        ; 2 uses
  br i1 %.not, label %bb.k, label %bb.o

bb.k:                                             ; preds = %opj_dwt_encode_step2.exit86.i
  br i1 %i.ain, label %.lr.ph.i90.i.preheader, label %.preheader.i87.i

.lr.ph.i90.i.preheader:                           ; preds = %bb.k
  %i.aio = add nsw i32 %i.aim, -4                 ; 2 uses
  %i.aip = lshr i32 %i.aio, 2                     ; 2 uses
  %i.aiq = add nuw nsw i32 %i.aip, 1              ; 2 uses
  %i.air = icmp eq i32 %i.aip, 0
  br i1 %i.air, label %.lr.ph.i90.i.epil.preheader, label %.lr.ph.i90.i.preheader.new

.lr.ph.i90.i.preheader.new:                       ; preds = %.lr.ph.i90.i.preheader
  %unroll_iter296 = and i32 %i.aiq, 2147483646
  br label %.lr.ph.i90.i

.preheader.loopexit.i91.i.unr-lcssa:              ; preds = %.lr.ph.i90.i
  %i.ais = and i32 %i.aio, 4
  %lcmp.mod293.not.not = icmp eq i32 %i.ais, 0
  br i1 %lcmp.mod293.not.not, label %.lr.ph.i90.i.epil.preheader, label %.preheader.loopexit.i91.i

.lr.ph.i90.i.epil.preheader:                      ; preds = %.preheader.loopexit.i91.i.unr-lcssa, %.lr.ph.i90.i.preheader
  %.034.i.i.epil.init = phi ptr [ %1, %.lr.ph.i90.i.preheader ], [ %i.ajw, %.preheader.loopexit.i91.i.unr-lcssa ] ; 4 uses
  %lcmp.mod295 = trunc i32 %i.aiq to i1
  tail call void @llvm.assume(i1 %lcmp.mod295)
  %i.ait = load <4 x float>, ptr %.034.i.i.epil.init, align 16, !tbaa !62
  %i.aiu = fmul <4 x float> %i.ait, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aiu, ptr %.034.i.i.epil.init, align 16, !tbaa !62
  %i.aiv = getelementptr inbounds nuw i8, ptr %.034.i.i.epil.init, i64 16 ; 2 uses
  %i.aiw = load <4 x float>, ptr %i.aiv, align 16, !tbaa !62
  %i.aix = fmul <4 x float> %i.aiw, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aix, ptr %i.aiv, align 16, !tbaa !62
  %i.aiy = getelementptr inbounds nuw i8, ptr %.034.i.i.epil.init, i64 32
  br label %.preheader.loopexit.i91.i

.preheader.loopexit.i91.i:                        ; preds = %.preheader.loopexit.i91.i.unr-lcssa, %.lr.ph.i90.i.epil.preheader
  %.lcssa270 = phi ptr [ %i.ajw, %.preheader.loopexit.i91.i.unr-lcssa ], [ %i.aiy, %.lr.ph.i90.i.epil.preheader ]
  %i.aiz = and i32 %i.aim, 2147483644
  br label %.preheader.i87.i

.preheader.i87.i:                                 ; preds = %.preheader.loopexit.i91.i, %bb.k
  %.031.lcssa.i.i = phi i32 [ 0, %bb.k ], [ %i.aiz, %.preheader.loopexit.i91.i ] ; 5 uses
  %.0.lcssa.i88.i = phi ptr [ %1, %bb.k ], [ %.lcssa270, %.preheader.loopexit.i91.i ] ; 4 uses
  %i.aja = icmp samesign ult i32 %.031.lcssa.i.i, %i.aim
  br i1 %i.aja, label %.lr.ph38.i.i.preheader, label %._crit_edge.i.i

.lr.ph38.i.i.preheader:                           ; preds = %.preheader.i87.i
  %i.ajb = xor i32 %.031.lcssa.i.i, -1
  %i.ajc = add nsw i32 %i.aim, %i.ajb             ; 2 uses
  %i.ajd = zext i32 %i.ajc to i64
  %i.aje = add nuw nsw i64 %i.ajd, 1              ; 2 uses
  %min.iters.check212 = icmp eq i32 %i.ajc, 0
  br i1 %min.iters.check212, label %.lr.ph38.i.i.preheader269, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph38.i.i.preheader
  %n.vec215 = and i64 %i.aje, 8589934590          ; 4 uses
  %i.ajf = shl nuw nsw i64 %n.vec215, 3
  %i.ajg = getelementptr i8, ptr %.0.lcssa.i88.i, i64 %i.ajf ; 2 uses
  %i.ajh = trunc i64 %n.vec215 to i32
  %i.aji = add i32 %.031.lcssa.i.i, %i.ajh
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph213
  %index217 = phi i64 [ 0, %vector.ph213 ], [ %index.next223, %vector.body216 ] ; 2 uses
  %i.ajj = shl i64 %index217, 3
  %next.gep218 = getelementptr i8, ptr %.0.lcssa.i88.i, i64 %i.ajj ; 2 uses
  %wide.vec219 = load <4 x float>, ptr %next.gep218, align 4, !tbaa !180
  %interleaved.vec222 = fmul <4 x float> %wide.vec219, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %interleaved.vec222, ptr %next.gep218, align 4, !tbaa !180
  %index.next223 = add nuw i64 %index217, 2       ; 2 uses
  %i.ajk = icmp eq i64 %index.next223, %n.vec215
  br i1 %i.ajk, label %middle.block224, label %vector.body216, !llvm.loop !197

middle.block224:                                  ; preds = %vector.body216
  %cmp.n225 = icmp eq i64 %i.aje, %n.vec215
  br i1 %cmp.n225, label %._crit_edge.i.i, label %.lr.ph38.i.i.preheader269

.lr.ph38.i.i.preheader269:                        ; preds = %.lr.ph38.i.i.preheader, %middle.block224
  %.137.i.i.ph = phi ptr [ %.0.lcssa.i88.i, %.lr.ph38.i.i.preheader ], [ %i.ajg, %middle.block224 ]
  %.13236.i.i.ph = phi i32 [ %.031.lcssa.i.i, %.lr.ph38.i.i.preheader ], [ %i.aji, %middle.block224 ]
  br label %.lr.ph38.i.i

.lr.ph.i90.i:                                     ; preds = %.lr.ph.i90.i, %.lr.ph.i90.i.preheader.new
  %.034.i.i = phi ptr [ %1, %.lr.ph.i90.i.preheader.new ], [ %i.ajw, %.lr.ph.i90.i ] ; 6 uses
  %niter297 = phi i32 [ 0, %.lr.ph.i90.i.preheader.new ], [ %niter297.next.1, %.lr.ph.i90.i ]
  %i.ajl = load <4 x float>, ptr %.034.i.i, align 16, !tbaa !62
  %i.ajm = fmul <4 x float> %i.ajl, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ajm, ptr %.034.i.i, align 16, !tbaa !62
  %i.ajn = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 16 ; 2 uses
  %i.ajo = load <4 x float>, ptr %i.ajn, align 16, !tbaa !62
  %i.ajp = fmul <4 x float> %i.ajo, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ajp, ptr %i.ajn, align 16, !tbaa !62
  %i.ajq = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 32 ; 2 uses
  %i.ajr = load <4 x float>, ptr %i.ajq, align 16, !tbaa !62
  %i.ajs = fmul <4 x float> %i.ajr, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ajs, ptr %i.ajq, align 16, !tbaa !62
  %i.ajt = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 48 ; 2 uses
  %i.aju = load <4 x float>, ptr %i.ajt, align 16, !tbaa !62
  %i.ajv = fmul <4 x float> %i.aju, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ajv, ptr %i.ajt, align 16, !tbaa !62
  %i.ajw = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 64 ; 3 uses
  %niter297.next.1 = add i32 %niter297, 2         ; 2 uses
  %niter297.ncmp.1.not = icmp eq i32 %niter297.next.1, %unroll_iter296
  br i1 %niter297.ncmp.1.not, label %.preheader.loopexit.i91.i.unr-lcssa, label %.lr.ph.i90.i, !llvm.loop !198

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i.preheader269, %.lr.ph38.i.i
  %.137.i.i = phi ptr [ %i.ajz, %.lr.ph38.i.i ], [ %.137.i.i.ph, %.lr.ph38.i.i.preheader269 ] ; 3 uses
  %.13236.i.i = phi i32 [ %i.aka, %.lr.ph38.i.i ], [ %.13236.i.i.ph, %.lr.ph38.i.i.preheader269 ]
  %i.ajx = load <2 x float>, ptr %.137.i.i, align 4, !tbaa !180
  %i.ajy = fmul <2 x float> %i.ajx, <float f0x3F5019C3, float f0x3F9D7658>
  store <2 x float> %i.ajy, ptr %.137.i.i, align 4, !tbaa !180
  %i.ajz = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %i.aka = add nuw i32 %.13236.i.i, 1             ; 2 uses
  %exitcond.not.i89.i = icmp eq i32 %i.aka, %i.aim
  br i1 %exitcond.not.i89.i, label %._crit_edge.i.i, label %.lr.ph38.i.i, !llvm.loop !199

._crit_edge.i.i:                                  ; preds = %.lr.ph38.i.i, %middle.block224, %.preheader.i87.i
  %.132.lcssa.i.i = phi i32 [ %.031.lcssa.i.i, %.preheader.i87.i ], [ %i.aim, %middle.block224 ], [ %i.aim, %.lr.ph38.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i88.i, %.preheader.i87.i ], [ %i.ajg, %middle.block224 ], [ %i.ajz, %.lr.ph38.i.i ] ; 3 uses
  %i.akb = icmp samesign ult i32 %.132.lcssa.i.i, %i.d
  br i1 %i.akb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.akc = load float, ptr %.1.lcssa.i.i, align 4, !tbaa !180
  %i.akd = fmul float %i.akc, f0x3F5019C3
  store float %i.akd, ptr %.1.lcssa.i.i, align 4, !tbaa !180
  br label %.lr.ph.preheader.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ake = icmp ult i32 %.132.lcssa.i.i, %i.e
  br i1 %i.ake, label %bb.n, label %opj_dwt_encode_1_real.exit

bb.n:                                             ; preds = %bb.m
  %i.akf = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 4 ; 2 uses
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !180
  %i.akh = fmul float %i.akg, f0x3F9D7658
  store float %i.akh, ptr %i.akf, align 4, !tbaa !180
  br label %opj_dwt_encode_1_real.exit

bb.o:                                             ; preds = %opj_dwt_encode_step2.exit86.i
  br i1 %i.ain, label %.lr.ph.i102.i.preheader, label %.preheader.i92.i

.lr.ph.i102.i.preheader:                          ; preds = %bb.o
  %i.aki = add nsw i32 %i.aim, -4                 ; 2 uses
  %i.akj = lshr i32 %i.aki, 2                     ; 2 uses
  %i.akk = add nuw nsw i32 %i.akj, 1              ; 2 uses
  %i.akl = icmp eq i32 %i.akj, 0
  br i1 %i.akl, label %.lr.ph.i102.i.epil.preheader, label %.lr.ph.i102.i.preheader.new

.lr.ph.i102.i.preheader.new:                      ; preds = %.lr.ph.i102.i.preheader
  %unroll_iter = and i32 %i.akk, 2147483646
  br label %.lr.ph.i102.i

.preheader.loopexit.i105.i.unr-lcssa:             ; preds = %.lr.ph.i102.i
  %i.akm = and i32 %i.aki, 4
  %lcmp.mod.not.not = icmp eq i32 %i.akm, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i102.i.epil.preheader, label %.preheader.loopexit.i105.i

.lr.ph.i102.i.epil.preheader:                     ; preds = %.preheader.loopexit.i105.i.unr-lcssa, %.lr.ph.i102.i.preheader
  %.034.i103.i.epil.init = phi ptr [ %1, %.lr.ph.i102.i.preheader ], [ %i.alq, %.preheader.loopexit.i105.i.unr-lcssa ] ; 4 uses
  %lcmp.mod291 = trunc i32 %i.akk to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.akn = load <4 x float>, ptr %.034.i103.i.epil.init, align 16, !tbaa !62
  %i.ako = fmul <4 x float> %i.akn, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.ako, ptr %.034.i103.i.epil.init, align 16, !tbaa !62
  %i.akp = getelementptr inbounds nuw i8, ptr %.034.i103.i.epil.init, i64 16 ; 2 uses
  %i.akq = load <4 x float>, ptr %i.akp, align 16, !tbaa !62
  %i.akr = fmul <4 x float> %i.akq, <float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3>
  store <4 x float> %i.akr, ptr %i.akp, align 16, !tbaa !62
  %i.aks = getelementptr inbounds nuw i8, ptr %.034.i103.i.epil.init, i64 32
  br label %.preheader.loopexit.i105.i

.preheader.loopexit.i105.i:                       ; preds = %.preheader.loopexit.i105.i.unr-lcssa, %.lr.ph.i102.i.epil.preheader
  %.lcssa273 = phi ptr [ %i.alq, %.preheader.loopexit.i105.i.unr-lcssa ], [ %i.aks, %.lr.ph.i102.i.epil.preheader ]
  %i.akt = and i32 %i.aim, 2147483644
  br label %.preheader.i92.i

.preheader.i92.i:                                 ; preds = %.preheader.loopexit.i105.i, %bb.o
  %.031.lcssa.i93.i = phi i32 [ 0, %bb.o ], [ %i.akt, %.preheader.loopexit.i105.i ] ; 5 uses
  %.0.lcssa.i94.i = phi ptr [ %1, %bb.o ], [ %.lcssa273, %.preheader.loopexit.i105.i ] ; 4 uses
  %i.aku = icmp samesign ult i32 %.031.lcssa.i93.i, %i.aim
  br i1 %i.aku, label %.lr.ph38.i98.i.preheader, label %._crit_edge.i95.i

.lr.ph38.i98.i.preheader:                         ; preds = %.preheader.i92.i
  %i.akv = xor i32 %.031.lcssa.i93.i, -1
  %i.akw = add nsw i32 %i.aim, %i.akv             ; 2 uses
  %i.akx = zext i32 %i.akw to i64
  %i.aky = add nuw nsw i64 %i.akx, 1              ; 2 uses
  %min.iters.check197 = icmp eq i32 %i.akw, 0
  br i1 %min.iters.check197, label %.lr.ph38.i98.i.preheader271, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph38.i98.i.preheader
  %n.vec200 = and i64 %i.aky, 8589934590          ; 4 uses
  %i.akz = shl nuw nsw i64 %n.vec200, 3
  %i.ala = getelementptr i8, ptr %.0.lcssa.i94.i, i64 %i.akz ; 2 uses
  %i.alb = trunc i64 %n.vec200 to i32
  %i.alc = add i32 %.031.lcssa.i93.i, %i.alb
  br label %vector.body201

end_hunk_0
