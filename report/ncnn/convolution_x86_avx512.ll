inline.NumInlined: 384
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.ela = sdiv i32 %.129239456, %i.don           ; 4 uses
  %i.elb = sdiv i32 %i.ekz, %i.don                ; 4 uses
  %i.elc = srem i32 %.129239456, %i.don           ; 4 uses
  %i.eld = srem i32 %i.ekz, %i.don                ; 4 uses
  %i.ele = load i32, ptr %i.d, align 4, !tbaa !67 ; 10 uses
  %i.elf = icmp sgt i32 %i.ele, 15
  br i1 %i.elf, label %.noexc3385.lr.ph, label %._crit_edge9331

.noexc3385.lr.ph:                                 ; preds = %.noexc3387
  %i.elg = load i32, ptr %i.c, align 4, !tbaa !67 ; 4 uses
  %i.elh = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1873
  %i.eli = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1873 ; 2 uses
  %i.elj = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1873
  %i.elk = load i64, ptr %i.bie, align 8, !tbaa !65, !noalias !1873 ; 2 uses
  %factor.op.mul9336 = mul i64 %i.elj, %i.elk
  %i.ell = sext i32 %i.elh to i64
  %i.elm = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.eln = mul nsw i32 %i.elm, %i.ela
  %i.elo = sext i32 %i.eln to i64
  %i.elp = mul i64 %i.elk, %i.ell                 ; 2 uses
  %i.elq = mul i64 %i.elp, %i.elo
  %invariant.gep9338 = getelementptr i8, ptr %i.eli, i64 %i.elq
  %i.elr = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.els = mul i32 %i.elg, %i.elc
  %i.elt = mul i32 %i.els, %i.elr
  %i.elu = sext i32 %i.elt to i64
  %invariant.gep9339 = getelementptr i8, ptr %invariant.gep9338, i64 %i.elu
  %i.elv = mul nsw i32 %i.elm, %i.elb
  %i.elw = sext i32 %i.elv to i64
  %i.elx = mul i64 %i.elp, %i.elw
  %invariant.gep9343 = getelementptr i8, ptr %i.eli, i64 %i.elx
  %i.ely = mul i32 %i.elg, %i.eld
  %i.elz = mul i32 %i.ely, %i.elr
  %i.ema = sext i32 %i.elz to i64
  %invariant.gep9344 = getelementptr i8, ptr %invariant.gep9343, i64 %i.ema
  %i.emb = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.emc = icmp sgt i32 %i.emb, 0
  %i.emd = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.eme = add i32 %i.emb, -1
  %i.emf = zext i32 %i.eme to i64
  %i.emg = shl nuw nsw i64 %i.emf, 5              ; 3 uses
  %wide.trip.count10711 = zext nneg i32 %i.emb to i64
  %wide.trip.count10718 = zext nneg i32 %i.emb to i64
  %wide.trip.count10725 = zext nneg i32 %i.emb to i64
  br label %.noexc3385

.noexc3385:                                       ; preds = %.noexc3385.lr.ph, %._crit_edge9307
  %.029789330 = phi ptr [ %i.drm, %.noexc3385.lr.ph ], [ %.12979.lcssa, %._crit_edge9307 ] ; 7 uses
  %.029869329 = phi i32 [ 0, %.noexc3385.lr.ph ], [ %i.eop, %._crit_edge9307 ] ; 2 uses
  %i.emh = phi <16 x i32> [ zeroinitializer, %.noexc3385.lr.ph ], [ %i.eoo, %._crit_edge9307 ] ; 4 uses
  %i.emi = phi <16 x i32> [ zeroinitializer, %.noexc3385.lr.ph ], [ %i.eon, %._crit_edge9307 ] ; 4 uses
  %i.emj = sdiv i32 %.029869329, %i.elg
  %i.emk = sext i32 %i.emj to i64
  %.reass9337 = mul i64 %factor.op.mul9336, %i.emk ; 2 uses
  %gep9340 = getelementptr i8, ptr %invariant.gep9339, i64 %.reass9337 ; 3 uses
  %gep9345 = getelementptr i8, ptr %invariant.gep9344, i64 %.reass9337 ; 3 uses
  br i1 %i.emc, label %.lr.ph9306, label %._crit_edge9307

.lr.ph9306:                                       ; preds = %.noexc3385
  switch i32 %i.elg, label %.lr.ph9306.split [
    i32 16, label %.lr.ph9306.split.us
    i32 8, label %.lr.ph9306.split.us9314
  ]

.lr.ph9306.split.us:                              ; preds = %.lr.ph9306, %.lr.ph9306.split.us
  %indvars.iv10713 = phi i64 [ %indvars.iv.next10714, %.lr.ph9306.split.us ], [ 0, %.lr.ph9306 ] ; 2 uses
  %.129799305.us = phi ptr [ %i.eng, %.lr.ph9306.split.us ], [ %.029789330, %.lr.ph9306 ] ; 2 uses
  %.176969303.us = phi <16 x i32> [ %i.enf, %.lr.ph9306.split.us ], [ %i.emh, %.lr.ph9306 ]
  %.176989302.us = phi <16 x i32> [ %i.enc, %.lr.ph9306.split.us ], [ %i.emi, %.lr.ph9306 ]
  %i.eml = getelementptr inbounds nuw [4 x i8], ptr %i.emd, i64 %indvars.iv10713
  %i.emm = load i32, ptr %i.eml, align 4, !tbaa !67
  %i.emn = sext i32 %i.emm to i64                 ; 2 uses
  %i.emo = getelementptr inbounds i8, ptr %gep9340, i64 %i.emn
  %i.emp = getelementptr inbounds i8, ptr %gep9345, i64 %i.emn
  %i.emq = load <16 x i8>, ptr %i.emo, align 16, !tbaa !100
  %i.emr = load <16 x i8>, ptr %i.emp, align 16, !tbaa !100
  %i.ems = sext <16 x i8> %i.emq to <16 x i16>
  %i.emt = bitcast <16 x i16> %i.ems to <4 x i64>
  %i.emu = sext <16 x i8> %i.emr to <16 x i16>
  %i.emv = bitcast <16 x i16> %i.emu to <4 x i64>
  %i.emw = shufflevector <4 x i64> %i.emt, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.emx = shufflevector <4 x i64> %i.emv, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.emy = load <32 x i8>, ptr %.129799305.us, align 32, !tbaa !100
  %i.emz = sext <32 x i8> %i.emy to <32 x i16>    ; 2 uses
  %i.ena = bitcast <8 x i64> %i.emw to <32 x i16>
  %i.enb = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ena, <32 x i16> %i.emz)
  %i.enc = add <16 x i32> %i.enb, %.176989302.us  ; 2 uses
  %i.end = bitcast <8 x i64> %i.emx to <32 x i16>
  %i.ene = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.end, <32 x i16> %i.emz)
  %i.enf = add <16 x i32> %i.ene, %.176969303.us  ; 2 uses
  %i.eng = getelementptr inbounds nuw i8, ptr %.129799305.us, i64 32
  %indvars.iv.next10714 = add nuw nsw i64 %indvars.iv10713, 1 ; 2 uses
  %exitcond10719.not = icmp eq i64 %indvars.iv.next10714, %wide.trip.count10718
  br i1 %exitcond10719.not, label %._crit_edge9307.loopexit10029, label %.lr.ph9306.split.us, !llvm.loop !1876

.lr.ph9306.split.us9314:                          ; preds = %.lr.ph9306, %.lr.ph9306.split.us9314
  %indvars.iv10706 = phi i64 [ %indvars.iv.next10707, %.lr.ph9306.split.us9314 ], [ 0, %.lr.ph9306 ] ; 2 uses
  %.129799305.us9315 = phi ptr [ %i.eom, %.lr.ph9306.split.us9314 ], [ %.029789330, %.lr.ph9306 ] ; 2 uses
  %.176969303.us9317 = phi <16 x i32> [ %i.eol, %.lr.ph9306.split.us9314 ], [ %i.emh, %.lr.ph9306 ]
  %.176989302.us9318 = phi <16 x i32> [ %i.eoi, %.lr.ph9306.split.us9314 ], [ %i.emi, %.lr.ph9306 ]
  %i.enh = getelementptr inbounds nuw [4 x i8], ptr %i.emd, i64 %indvars.iv10706
  %i.eni = load i32, ptr %i.enh, align 4, !tbaa !67
  %i.enj = sext i32 %i.eni to i64                 ; 2 uses
  %i.enk = getelementptr inbounds i8, ptr %gep9340, i64 %i.enj ; 2 uses
  %i.enl = getelementptr inbounds i8, ptr %gep9345, i64 %i.enj ; 2 uses
  %i.enm = load i64, ptr %i.enk, align 1, !tbaa !100
  %i.enn = insertelement <2 x i64> poison, i64 %i.enm, i64 0
  %i.eno = getelementptr inbounds nuw i8, ptr %i.enk, i64 %i.dos
  %i.enp = load i64, ptr %i.eno, align 1, !tbaa !100
  %i.enq = load i64, ptr %i.enl, align 1, !tbaa !100
  %i.enr = insertelement <2 x i64> poison, i64 %i.enq, i64 0
  %i.ens = getelementptr inbounds nuw i8, ptr %i.enl, i64 %i.dos
  %i.ent = load i64, ptr %i.ens, align 1, !tbaa !100
  %i.enu = insertelement <2 x i64> %i.enn, i64 %i.enp, i64 1
  %i.env = insertelement <2 x i64> %i.enr, i64 %i.ent, i64 1
  %i.enw = bitcast <2 x i64> %i.enu to <16 x i8>
  %i.enx = sext <16 x i8> %i.enw to <16 x i16>
  %i.eny = bitcast <16 x i16> %i.enx to <4 x i64>
  %i.enz = bitcast <2 x i64> %i.env to <16 x i8>
  %i.eoa = sext <16 x i8> %i.enz to <16 x i16>
  %i.eob = bitcast <16 x i16> %i.eoa to <4 x i64>
  %i.eoc = shufflevector <4 x i64> %i.eny, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eod = shufflevector <4 x i64> %i.eob, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eoe = load <32 x i8>, ptr %.129799305.us9315, align 32, !tbaa !100
  %i.eof = sext <32 x i8> %i.eoe to <32 x i16>    ; 2 uses
  %i.eog = bitcast <8 x i64> %i.eoc to <32 x i16>
  %i.eoh = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eog, <32 x i16> %i.eof)
  %i.eoi = add <16 x i32> %i.eoh, %.176989302.us9318 ; 2 uses
  %i.eoj = bitcast <8 x i64> %i.eod to <32 x i16>
  %i.eok = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.eoj, <32 x i16> %i.eof)
  %i.eol = add <16 x i32> %i.eok, %.176969303.us9317 ; 2 uses
  %i.eom = getelementptr inbounds nuw i8, ptr %.129799305.us9315, i64 32
  %indvars.iv.next10707 = add nuw nsw i64 %indvars.iv10706, 1 ; 2 uses
  %exitcond10712.not = icmp eq i64 %indvars.iv.next10707, %wide.trip.count10711
  br i1 %exitcond10712.not, label %._crit_edge9307.loopexit10030, label %.lr.ph9306.split.us9314, !llvm.loop !1876

._crit_edge9307.loopexit:                         ; preds = %.lr.ph9306.split
  %scevgep10722 = getelementptr i8, ptr %.029789330, i64 32
  %scevgep10723 = getelementptr i8, ptr %scevgep10722, i64 %i.emg
  br label %._crit_edge9307

._crit_edge9307.loopexit10029:                    ; preds = %.lr.ph9306.split.us
  %scevgep10715 = getelementptr i8, ptr %.029789330, i64 32
  %scevgep10716 = getelementptr i8, ptr %scevgep10715, i64 %i.emg
  br label %._crit_edge9307

._crit_edge9307.loopexit10030:                    ; preds = %.lr.ph9306.split.us9314
  %scevgep10708 = getelementptr i8, ptr %.029789330, i64 32
  %scevgep10709 = getelementptr i8, ptr %scevgep10708, i64 %i.emg
  br label %._crit_edge9307

._crit_edge9307:                                  ; preds = %._crit_edge9307.loopexit10030, %._crit_edge9307.loopexit10029, %._crit_edge9307.loopexit, %.noexc3385
  %i.eon = phi <16 x i32> [ %i.emi, %.noexc3385 ], [ %i.epi, %._crit_edge9307.loopexit ], [ %i.enc, %._crit_edge9307.loopexit10029 ], [ %i.eoi, %._crit_edge9307.loopexit10030 ] ; 2 uses
  %i.eoo = phi <16 x i32> [ %i.emh, %.noexc3385 ], [ %i.epk, %._crit_edge9307.loopexit ], [ %i.enf, %._crit_edge9307.loopexit10029 ], [ %i.eol, %._crit_edge9307.loopexit10030 ] ; 2 uses
  %.12979.lcssa = phi ptr [ %.029789330, %.noexc3385 ], [ %scevgep10723, %._crit_edge9307.loopexit ], [ %scevgep10716, %._crit_edge9307.loopexit10029 ], [ %scevgep10709, %._crit_edge9307.loopexit10030 ] ; 2 uses
  %i.eop = add nuw nsw i32 %.029869329, 16        ; 2 uses
  %i.eoq = or disjoint i32 %i.eop, 15
  %i.eor = icmp slt i32 %i.eoq, %i.ele
  br i1 %i.eor, label %.noexc3385, label %._crit_edge9331.loopexit, !llvm.loop !1877

.lr.ph9306.split:                                 ; preds = %.lr.ph9306, %.lr.ph9306.split
  %indvars.iv10720 = phi i64 [ %indvars.iv.next10721, %.lr.ph9306.split ], [ 0, %.lr.ph9306 ] ; 2 uses
  %.129799305 = phi ptr [ %i.epl, %.lr.ph9306.split ], [ %.029789330, %.lr.ph9306 ] ; 2 uses
  %.176969303 = phi <16 x i32> [ %i.epk, %.lr.ph9306.split ], [ %i.emh, %.lr.ph9306 ]
  %.176989302 = phi <16 x i32> [ %i.epi, %.lr.ph9306.split ], [ %i.emi, %.lr.ph9306 ]
  %i.eos = getelementptr inbounds nuw [4 x i8], ptr %i.emd, i64 %indvars.iv10720
  %i.eot = load i32, ptr %i.eos, align 4, !tbaa !67
  %i.eou = sext i32 %i.eot to i64                 ; 2 uses
  %i.eov = getelementptr inbounds i8, ptr %gep9340, i64 %i.eou
  %i.eow = getelementptr inbounds i8, ptr %gep9345, i64 %i.eou
  %i.eox = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.eov, <16 x i32> %i.drq, <16 x i1> splat (i1 true), i32 1)
  %i.eoy = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.eow, <16 x i32> %i.drq, <16 x i1> splat (i1 true), i32 1)
  %i.eoz = shufflevector <16 x i32> %i.eox, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epa = trunc <32 x i32> %i.eoz to <32 x i8>
  %i.epb = sext <32 x i8> %i.epa to <32 x i16>
  %i.epc = shufflevector <16 x i32> %i.eoy, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epd = trunc <32 x i32> %i.epc to <32 x i8>
  %i.epe = sext <32 x i8> %i.epd to <32 x i16>
  %i.epf = load <32 x i8>, ptr %.129799305, align 32, !tbaa !100
  %i.epg = sext <32 x i8> %i.epf to <32 x i16>    ; 2 uses
  %i.eph = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.epb, <32 x i16> %i.epg)
  %i.epi = add <16 x i32> %i.eph, %.176989302     ; 2 uses
  %i.epj = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.epe, <32 x i16> %i.epg)
  %i.epk = add <16 x i32> %i.epj, %.176969303     ; 2 uses
  %i.epl = getelementptr inbounds nuw i8, ptr %.129799305, i64 32
  %indvars.iv.next10721 = add nuw nsw i64 %indvars.iv10720, 1 ; 2 uses
  %exitcond10726.not = icmp eq i64 %indvars.iv.next10721, %wide.trip.count10725
  br i1 %exitcond10726.not, label %._crit_edge9307.loopexit, label %.lr.ph9306.split, !llvm.loop !1876

._crit_edge9331.loopexit:                         ; preds = %._crit_edge9307
  %i.epm = and i32 %i.ele, 2147483632
  br label %._crit_edge9331

._crit_edge9331:                                  ; preds = %._crit_edge9331.loopexit, %.noexc3387
  %i.epn = phi <16 x i32> [ zeroinitializer, %.noexc3387 ], [ %i.eon, %._crit_edge9331.loopexit ] ; 2 uses
  %i.epo = phi <16 x i32> [ zeroinitializer, %.noexc3387 ], [ %i.eoo, %._crit_edge9331.loopexit ] ; 2 uses
  %.02986.lcssa = phi i32 [ 0, %.noexc3387 ], [ %i.epm, %._crit_edge9331.loopexit ] ; 3 uses
  %.02978.lcssa = phi ptr [ %i.drm, %.noexc3387 ], [ %.12979.lcssa, %._crit_edge9331.loopexit ] ; 2 uses
  %i.epp = shufflevector <16 x i32> %i.epn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.epq = shufflevector <16 x i32> %i.epn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epr = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.epp, <8 x i32> %i.epq) ; 2 uses
  %i.eps = shufflevector <16 x i32> %i.epo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ept = shufflevector <16 x i32> %i.epo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epu = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.eps, <8 x i32> %i.ept) ; 2 uses
  %i.epv = shufflevector <8 x i32> %i.epr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.epw = shufflevector <8 x i32> %i.epr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.epx = add <4 x i32> %i.epv, %i.epw           ; 4 uses
  %i.epy = shufflevector <8 x i32> %i.epu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.epz = shufflevector <8 x i32> %i.epu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eqa = add <4 x i32> %i.epy, %i.epz           ; 4 uses
  %shift = shufflevector <4 x i32> %i.epx, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.epx, %shift
  %shift12044 = shufflevector <4 x i32> %i.epx, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop12045 = add nsw <4 x i32> %i.epx, %shift12044
  %shift12047 = shufflevector <4 x i32> %i.eqa, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop12048 = add nsw <4 x i32> %i.eqa, %shift12047
  %shift12050 = shufflevector <4 x i32> %i.eqa, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop12051 = add nsw <4 x i32> %i.eqa, %shift12050
  %i.eqb = or disjoint i32 %.02986.lcssa, 7
  %i.eqc = icmp slt i32 %i.eqb, %i.ele
  br i1 %i.eqc, label %.noexc3381.lr.ph, label %._crit_edge9362

.noexc3381.lr.ph:                                 ; preds = %._crit_edge9331
  %i.eqd = load i32, ptr %i.c, align 4, !tbaa !67 ; 4 uses
  %i.eqe = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1878
  %i.eqf = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1878 ; 2 uses
  %i.eqg = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1878
  %i.eqh = load i64, ptr %i.bie, align 8, !tbaa !65, !noalias !1878 ; 2 uses
  %factor.op.mul9367 = mul i64 %i.eqg, %i.eqh
  %i.eqi = sext i32 %i.eqe to i64
  %i.eqj = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.eqk = mul nsw i32 %i.eqj, %i.ela
  %i.eql = sext i32 %i.eqk to i64
  %i.eqm = mul i64 %i.eqh, %i.eqi                 ; 2 uses
  %i.eqn = mul i64 %i.eqm, %i.eql
  %invariant.gep9369 = getelementptr i8, ptr %i.eqf, i64 %i.eqn
  %i.eqo = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.eqp = mul i32 %i.eqd, %i.elc
  %i.eqq = mul i32 %i.eqp, %i.eqo
  %i.eqr = sext i32 %i.eqq to i64
  %invariant.gep9370 = getelementptr i8, ptr %invariant.gep9369, i64 %i.eqr
  %i.eqs = mul nsw i32 %i.eqj, %i.elb
  %i.eqt = sext i32 %i.eqs to i64
  %i.equ = mul i64 %i.eqm, %i.eqt
  %invariant.gep9374 = getelementptr i8, ptr %i.eqf, i64 %i.equ
  %i.eqv = mul i32 %i.eqd, %i.eld
  %i.eqw = mul i32 %i.eqv, %i.eqo
  %i.eqx = sext i32 %i.eqw to i64
  %invariant.gep9375 = getelementptr i8, ptr %invariant.gep9374, i64 %i.eqx
  %i.eqy = load i32, ptr %i.f, align 4, !tbaa !67 ; 4 uses
  %i.eqz = icmp sgt i32 %i.eqy, 0
  %i.era = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.erb = icmp eq i32 %i.eqd, 8
  %i.erc = add i32 %i.eqy, -1
  %i.erd = zext i32 %i.erc to i64
  %i.ere = shl nuw nsw i64 %i.erd, 4              ; 2 uses
  %wide.trip.count10732 = zext nneg i32 %i.eqy to i64
  %wide.trip.count10739 = zext nneg i32 %i.eqy to i64
  br label %.noexc3381

.noexc3381:                                       ; preds = %.noexc3381.lr.ph, %._crit_edge9351
  %.229809361 = phi ptr [ %.02978.lcssa, %.noexc3381.lr.ph ], [ %.32981.lcssa, %._crit_edge9351 ] ; 5 uses
  %.129879360 = phi i32 [ %.02986.lcssa, %.noexc3381.lr.ph ], [ %i.esd, %._crit_edge9351 ] ; 2 uses
  %i.erf = phi <8 x i32> [ zeroinitializer, %.noexc3381.lr.ph ], [ %i.esc, %._crit_edge9351 ] ; 3 uses
  %i.erg = phi <8 x i32> [ zeroinitializer, %.noexc3381.lr.ph ], [ %i.esb, %._crit_edge9351 ] ; 3 uses
  %i.erh = sdiv i32 %.129879360, %i.eqd
  %i.eri = sext i32 %i.erh to i64
  %.reass9368 = mul i64 %factor.op.mul9367, %i.eri ; 2 uses
  %gep9371 = getelementptr i8, ptr %invariant.gep9370, i64 %.reass9368 ; 2 uses
  %gep9376 = getelementptr i8, ptr %invariant.gep9375, i64 %.reass9368 ; 2 uses
  br i1 %i.eqz, label %.lr.ph9350, label %._crit_edge9351

.lr.ph9350:                                       ; preds = %.noexc3381
  br i1 %i.erb, label %.lr.ph9350.split.us, label %.lr.ph9350.split

.lr.ph9350.split.us:                              ; preds = %.lr.ph9350, %.lr.ph9350.split.us
  %indvars.iv10734 = phi i64 [ %indvars.iv.next10735, %.lr.ph9350.split.us ], [ 0, %.lr.ph9350 ] ; 2 uses
  %.329819349.us = phi ptr [ %i.esa, %.lr.ph9350.split.us ], [ %.229809361, %.lr.ph9350 ] ; 2 uses
  %.176929347.us = phi <8 x i32> [ %i.erz, %.lr.ph9350.split.us ], [ %i.erf, %.lr.ph9350 ]
  %.176949346.us = phi <8 x i32> [ %i.erv, %.lr.ph9350.split.us ], [ %i.erg, %.lr.ph9350 ]
  %i.erj = getelementptr inbounds nuw [4 x i8], ptr %i.era, i64 %indvars.iv10734
  %i.erk = load i32, ptr %i.erj, align 4, !tbaa !67
  %i.erl = sext i32 %i.erk to i64                 ; 2 uses
  %i.erm = getelementptr inbounds i8, ptr %gep9371, i64 %i.erl
  %i.ern = getelementptr inbounds i8, ptr %gep9376, i64 %i.erl
  %i.ero = load <8 x i8>, ptr %i.erm, align 1, !tbaa !100
  %i.erp = load <8 x i8>, ptr %i.ern, align 1, !tbaa !100
  %i.erq = load <16 x i8>, ptr %.329819349.us, align 16, !tbaa !100
  %i.err = sext <16 x i8> %i.erq to <16 x i16>    ; 2 uses
  %i.ers = shufflevector <8 x i8> %i.ero, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ert = sext <16 x i8> %i.ers to <16 x i16>
  %i.eru = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ert, <16 x i16> %i.err)
  %i.erv = add <8 x i32> %i.eru, %.176949346.us   ; 2 uses
  %i.erw = shufflevector <8 x i8> %i.erp, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.erx = sext <16 x i8> %i.erw to <16 x i16>
  %i.ery = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.erx, <16 x i16> %i.err)
  %i.erz = add <8 x i32> %i.ery, %.176929347.us   ; 2 uses
  %i.esa = getelementptr inbounds nuw i8, ptr %.329819349.us, i64 16
  %indvars.iv.next10735 = add nuw nsw i64 %indvars.iv10734, 1 ; 2 uses
  %exitcond10740.not = icmp eq i64 %indvars.iv.next10735, %wide.trip.count10739
  br i1 %exitcond10740.not, label %._crit_edge9351.loopexit, label %.lr.ph9350.split.us, !llvm.loop !1881

._crit_edge9351.loopexit:                         ; preds = %.lr.ph9350.split.us
  %scevgep10736 = getelementptr i8, ptr %.229809361, i64 16
  %scevgep10737 = getelementptr i8, ptr %scevgep10736, i64 %i.ere
  br label %._crit_edge9351

._crit_edge9351.loopexit10028:                    ; preds = %.lr.ph9350.split
  %scevgep10729 = getelementptr i8, ptr %.229809361, i64 16
  %scevgep10730 = getelementptr i8, ptr %scevgep10729, i64 %i.ere
  br label %._crit_edge9351

._crit_edge9351:                                  ; preds = %._crit_edge9351.loopexit10028, %._crit_edge9351.loopexit, %.noexc3381
  %i.esb = phi <8 x i32> [ %i.erg, %.noexc3381 ], [ %i.erv, %._crit_edge9351.loopexit ], [ %i.est, %._crit_edge9351.loopexit10028 ] ; 2 uses
  %i.esc = phi <8 x i32> [ %i.erf, %.noexc3381 ], [ %i.erz, %._crit_edge9351.loopexit ], [ %i.esy, %._crit_edge9351.loopexit10028 ] ; 2 uses
  %.32981.lcssa = phi ptr [ %.229809361, %.noexc3381 ], [ %scevgep10737, %._crit_edge9351.loopexit ], [ %scevgep10730, %._crit_edge9351.loopexit10028 ] ; 2 uses
  %i.esd = add nuw nsw i32 %.129879360, 8         ; 3 uses
  %i.ese = or disjoint i32 %i.esd, 7
  %i.esf = icmp slt i32 %i.ese, %i.ele
  br i1 %i.esf, label %.noexc3381, label %._crit_edge9362, !llvm.loop !1882

.lr.ph9350.split:                                 ; preds = %.lr.ph9350, %.lr.ph9350.split
  %indvars.iv10727 = phi i64 [ %indvars.iv.next10728, %.lr.ph9350.split ], [ 0, %.lr.ph9350 ] ; 2 uses
  %.329819349 = phi ptr [ %i.esz, %.lr.ph9350.split ], [ %.229809361, %.lr.ph9350 ] ; 2 uses
  %.176929347 = phi <8 x i32> [ %i.esy, %.lr.ph9350.split ], [ %i.erf, %.lr.ph9350 ]
  %.176949346 = phi <8 x i32> [ %i.est, %.lr.ph9350.split ], [ %i.erg, %.lr.ph9350 ]
  %i.esg = getelementptr inbounds nuw [4 x i8], ptr %i.era, i64 %indvars.iv10727
  %i.esh = load i32, ptr %i.esg, align 4, !tbaa !67
  %i.esi = sext i32 %i.esh to i64                 ; 2 uses
  %i.esj = getelementptr inbounds i8, ptr %gep9371, i64 %i.esi
  %i.esk = getelementptr inbounds i8, ptr %gep9376, i64 %i.esi
  %i.esl = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.esj, <8 x i32> %i.drt, <8 x i32> splat (i32 -1), i8 1)
  %i.esm = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.esk, <8 x i32> %i.drt, <8 x i32> splat (i32 -1), i8 1)
  %i.esn = load <16 x i8>, ptr %.329819349, align 16, !tbaa !100
  %i.eso = sext <16 x i8> %i.esn to <16 x i16>    ; 2 uses
  %i.esp = shufflevector <8 x i32> %i.esl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.esq = trunc <16 x i32> %i.esp to <16 x i8>
  %i.esr = sext <16 x i8> %i.esq to <16 x i16>
  %i.ess = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.esr, <16 x i16> %i.eso)
  %i.est = add <8 x i32> %i.ess, %.176949346      ; 2 uses
  %i.esu = shufflevector <8 x i32> %i.esm, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.esv = trunc <16 x i32> %i.esu to <16 x i8>
  %i.esw = sext <16 x i8> %i.esv to <16 x i16>
  %i.esx = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.esw, <16 x i16> %i.eso)
  %i.esy = add <8 x i32> %i.esx, %.176929347      ; 2 uses
  %i.esz = getelementptr inbounds nuw i8, ptr %.329819349, i64 16
  %indvars.iv.next10728 = add nuw nsw i64 %indvars.iv10727, 1 ; 2 uses
  %exitcond10733.not = icmp eq i64 %indvars.iv.next10728, %wide.trip.count10732
  br i1 %exitcond10733.not, label %._crit_edge9351.loopexit10028, label %.lr.ph9350.split, !llvm.loop !1881

._crit_edge9362:                                  ; preds = %._crit_edge9351, %._crit_edge9331
  %i.eta = phi <8 x i32> [ zeroinitializer, %._crit_edge9331 ], [ %i.esb, %._crit_edge9351 ] ; 4 uses
  %i.etb = phi <8 x i32> [ zeroinitializer, %._crit_edge9331 ], [ %i.esc, %._crit_edge9351 ] ; 4 uses
  %.12987.lcssa = phi i32 [ %.02986.lcssa, %._crit_edge9331 ], [ %i.esd, %._crit_edge9351 ] ; 6 uses
  %.22980.lcssa = phi ptr [ %.02978.lcssa, %._crit_edge9331 ], [ %.32981.lcssa, %._crit_edge9351 ] ; 3 uses
  %10 = shufflevector <8 x i32> %i.eta, <8 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.etc = shufflevector <8 x i32> %i.eta, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = add <4 x i32> %10, %i.etc                 ; 2 uses
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %13 = add <4 x i32> %12, %11
  %foldExtExtBinop12053 = add nsw <4 x i32> %foldExtExtBinop, %13
  %14 = extractelement <4 x i32> %foldExtExtBinop12053, i64 0 ; 3 uses
  %15 = shufflevector <8 x i32> %i.eta, <8 x i32> poison, <4 x i32> <i32 6, i32 7, i32 6, i32 7>
  %i.etd = shufflevector <8 x i32> %i.eta, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %16 = add <4 x i32> %15, %i.etd                 ; 2 uses
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %18 = add <4 x i32> %17, %16
  %shift12055 = shufflevector <4 x i32> %foldExtExtBinop12045, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop12056 = add nsw <4 x i32> %shift12055, %18
  %19 = extractelement <4 x i32> %foldExtExtBinop12056, i64 0 ; 3 uses
  %20 = shufflevector <8 x i32> %i.etb, <8 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ete = shufflevector <8 x i32> %i.etb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %21 = add <4 x i32> %20, %i.ete                 ; 2 uses
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %23 = add <4 x i32> %22, %21
  %foldExtExtBinop12058 = add nsw <4 x i32> %foldExtExtBinop12048, %23
  %24 = extractelement <4 x i32> %foldExtExtBinop12058, i64 0 ; 3 uses
  %25 = shufflevector <8 x i32> %i.etb, <8 x i32> poison, <4 x i32> <i32 6, i32 7, i32 6, i32 7>
  %i.etf = shufflevector <8 x i32> %i.etb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %26 = add <4 x i32> %25, %i.etf                 ; 2 uses
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %28 = add <4 x i32> %27, %26
  %shift12060 = shufflevector <4 x i32> %foldExtExtBinop12051, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop12061 = add nsw <4 x i32> %shift12060, %28
  %29 = extractelement <4 x i32> %foldExtExtBinop12061, i64 0 ; 3 uses
  %i.etg = or disjoint i32 %.12987.lcssa, 1
  %i.eth = icmp slt i32 %i.etg, %i.ele
  br i1 %i.eth, label %.noexc3377.lr.ph, label %.preheader8135

.noexc3377.lr.ph:                                 ; preds = %._crit_edge9362
  %i.eti = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1883
  %i.etj = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1883 ; 2 uses
  %i.etk = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1883
  %i.etl = load i64, ptr %i.bie, align 8, !tbaa !65, !noalias !1883 ; 2 uses
  %factor.op.mul9402 = mul i64 %i.etk, %i.etl
  %i.etm = sext i32 %i.eti to i64
  %i.etn = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.eto = mul nsw i32 %i.etn, %i.ela
  %i.etp = sext i32 %i.eto to i64
  %i.etq = mul i64 %i.etl, %i.etm                 ; 2 uses
  %i.etr = mul i64 %i.etq, %i.etp
  %invariant.gep9404 = getelementptr i8, ptr %i.etj, i64 %i.etr
  %i.ets = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.ett = mul nsw i32 %i.ets, %i.elc
  %i.etu = sext i32 %i.ett to i64
  %invariant.gep9405 = getelementptr i8, ptr %invariant.gep9404, i64 %i.etu
  %i.etv = mul nsw i32 %i.etn, %i.elb
  %i.etw = sext i32 %i.etv to i64
  %i.etx = mul i64 %i.etq, %i.etw
  %invariant.gep9409 = getelementptr i8, ptr %i.etj, i64 %i.etx
  %i.ety = mul nsw i32 %i.ets, %i.eld
  %i.etz = sext i32 %i.ety to i64
  %invariant.gep9410 = getelementptr i8, ptr %invariant.gep9409, i64 %i.etz
  %i.eua = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.eub = icmp sgt i32 %i.eua, 0
  %i.euc = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.eub, label %.noexc3377.us.preheader, label %.noexc3377.preheader

.noexc3377.preheader:                             ; preds = %.noexc3377.lr.ph
  %i.eud = add nuw i32 %.12987.lcssa, 2
  %i.eue = add nuw i32 %.12987.lcssa, 3
  %smax10741 = call i32 @llvm.smax.i32(i32 %i.ele, i32 %i.eue)
  %i.euf = add nsw i32 %smax10741, -2
  %i.eug = sub nsw i32 %i.euf, %.12987.lcssa
  %i.euh = and i32 %i.eug, -2
  %i.eui = add i32 %i.eud, %i.euh
  br label %.preheader8135

.noexc3377.us.preheader:                          ; preds = %.noexc3377.lr.ph
  %i.euj = add nsw i32 %i.eua, -1
  %i.euk = zext nneg i32 %i.euj to i64
  %i.eul = shl nuw nsw i64 %i.euk, 2
  %i.eum = zext nneg i32 %.12987.lcssa to i64
  %wide.trip.count10747 = zext nneg i32 %i.eua to i64 ; 6 uses
  %min.iters.check11788 = icmp ult i32 %i.eua, 8
  %min.iters.check11790 = icmp ult i32 %i.eua, 32
  %i.eun = and i64 %wide.trip.count10747, 24
  %n.vec11792 = and i64 %wide.trip.count10747, 2147483616 ; 5 uses
  %i.euo = shl nuw nsw i64 %n.vec11792, 2
  %cmp.n11823 = icmp eq i64 %n.vec11792, %wide.trip.count10747
  %min.epilog.iters.check11832 = icmp eq i64 %i.eun, 0
  %n.vec11834 = and i64 %wide.trip.count10747, 2147483640 ; 4 uses
  %i.eup = shl nuw nsw i64 %n.vec11834, 2
  %cmp.n11850 = icmp eq i64 %n.vec11834, %wide.trip.count10747
  br label %iter.check11829

iter.check11829:                                  ; preds = %.noexc3377.us.preheader, %._crit_edge9384.us
  %indvars.iv10749 = phi i64 [ %i.eum, %.noexc3377.us.preheader ], [ %indvars.iv.next10750, %._crit_edge9384.us ] ; 2 uses
  %.029509395.us = phi i32 [ %14, %.noexc3377.us.preheader ], [ %.lcssa11457, %._crit_edge9384.us ] ; 3 uses
  %.029669394.us = phi i32 [ %24, %.noexc3377.us.preheader ], [ %.lcssa11455, %._crit_edge9384.us ] ; 3 uses
  %.029709393.us = phi i32 [ %19, %.noexc3377.us.preheader ], [ %.lcssa11456, %._crit_edge9384.us ] ; 3 uses
  %.029749392.us = phi i32 [ %29, %.noexc3377.us.preheader ], [ %.lcssa11454, %._crit_edge9384.us ] ; 3 uses
  %.429829391.us = phi ptr [ %.22980.lcssa, %.noexc3377.us.preheader ], [ %scevgep10745, %._crit_edge9384.us ] ; 7 uses
  %.reass9403.us = mul i64 %factor.op.mul9402, %indvars.iv10749 ; 2 uses
  %gep9406.us = getelementptr i8, ptr %invariant.gep9405, i64 %.reass9403.us ; 41 uses
  %gep9411.us = getelementptr i8, ptr %invariant.gep9410, i64 %.reass9403.us ; 41 uses
  br i1 %min.iters.check11788, label %vec.epilog.scalar.ph11830.preheader, label %vector.main.loop.iter.check11789

vector.main.loop.iter.check11789:                 ; preds = %iter.check11829
  br i1 %min.iters.check11790, label %vec.epilog.ph11833, label %vector.ph11791

vector.ph11791:                                   ; preds = %vector.main.loop.iter.check11789
  %i.euq = getelementptr i8, ptr %.429829391.us, i64 %i.euo
  %i.eur = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029509395.us, i64 0
  %i.eus = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029669394.us, i64 0
  %i.eut = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029709393.us, i64 0
  %i.euu = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029749392.us, i64 0
  br label %vector.body11793

vector.body11793:                                 ; preds = %vector.body11793, %vector.ph11791
  %index11794 = phi i64 [ 0, %vector.ph11791 ], [ %index.next11817, %vector.body11793 ] ; 3 uses
  %vec.phi11795 = phi <16 x i32> [ %i.eur, %vector.ph11791 ], [ %i.ffr, %vector.body11793 ]
  %vec.phi11796 = phi <16 x i32> [ zeroinitializer, %vector.ph11791 ], [ %i.ffs, %vector.body11793 ]
  %vec.phi11797 = phi <16 x i32> [ %i.eus, %vector.ph11791 ], [ %i.fmr, %vector.body11793 ]
  %vec.phi11798 = phi <16 x i32> [ zeroinitializer, %vector.ph11791 ], [ %i.fms, %vector.body11793 ]
  %vec.phi11799 = phi <16 x i32> [ %i.eut, %vector.ph11791 ], [ %i.ffx, %vector.body11793 ]
  %vec.phi11800 = phi <16 x i32> [ zeroinitializer, %vector.ph11791 ], [ %i.ffy, %vector.body11793 ]
  %vec.phi11801 = phi <16 x i32> [ %i.euu, %vector.ph11791 ], [ %i.fmv, %vector.body11793 ]
  %vec.phi11802 = phi <16 x i32> [ zeroinitializer, %vector.ph11791 ], [ %i.fmw, %vector.body11793 ]
  %i.euv = shl i64 %index11794, 2                 ; 2 uses
  %next.gep11803 = getelementptr i8, ptr %.429829391.us, i64 %i.euv
  %i.euw = getelementptr i8, ptr %.429829391.us, i64 %i.euv
  %next.gep11804 = getelementptr i8, ptr %i.euw, i64 64
  %i.eux = getelementptr inbounds nuw [4 x i8], ptr %i.euc, i64 %index11794 ; 2 uses
  %i.euy = getelementptr inbounds nuw i8, ptr %i.eux, i64 64
  %wide.load11805 = load <16 x i32>, ptr %i.eux, align 4, !tbaa !67
  %wide.load11806 = load <16 x i32>, ptr %i.euy, align 4, !tbaa !67
  %i.euz = sext <16 x i32> %wide.load11805 to <16 x i64> ; 16 uses
  %i.eva = sext <16 x i32> %wide.load11806 to <16 x i64> ; 16 uses
  %i.evb = extractelement <16 x i64> %i.euz, i64 0 ; 2 uses
  %i.evc = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evb ; 2 uses
  %i.evd = extractelement <16 x i64> %i.euz, i64 1 ; 2 uses
  %i.eve = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evd ; 2 uses
  %i.evf = extractelement <16 x i64> %i.euz, i64 2 ; 2 uses
  %i.evg = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evf ; 2 uses
  %i.evh = extractelement <16 x i64> %i.euz, i64 3 ; 2 uses
  %i.evi = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evh ; 2 uses
  %i.evj = extractelement <16 x i64> %i.euz, i64 4 ; 2 uses
  %i.evk = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evj ; 2 uses
  %i.evl = extractelement <16 x i64> %i.euz, i64 5 ; 2 uses
  %i.evm = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evl ; 2 uses
  %i.evn = extractelement <16 x i64> %i.euz, i64 6 ; 2 uses
  %i.evo = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evn ; 2 uses
  %i.evp = extractelement <16 x i64> %i.euz, i64 7 ; 2 uses
  %i.evq = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evp ; 2 uses
  %i.evr = extractelement <16 x i64> %i.euz, i64 8 ; 2 uses
  %i.evs = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evr ; 2 uses
  %i.evt = extractelement <16 x i64> %i.euz, i64 9 ; 2 uses
  %i.evu = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evt ; 2 uses
  %i.evv = extractelement <16 x i64> %i.euz, i64 10 ; 2 uses
  %i.evw = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evv ; 2 uses
  %i.evx = extractelement <16 x i64> %i.euz, i64 11 ; 2 uses
  %i.evy = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evx ; 2 uses
  %i.evz = extractelement <16 x i64> %i.euz, i64 12 ; 2 uses
  %i.ewa = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.evz ; 2 uses
  %i.ewb = extractelement <16 x i64> %i.euz, i64 13 ; 2 uses
  %i.ewc = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewb ; 2 uses
  %i.ewd = extractelement <16 x i64> %i.euz, i64 14 ; 2 uses
  %i.ewe = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewd ; 2 uses
  %i.ewf = extractelement <16 x i64> %i.euz, i64 15 ; 2 uses
  %i.ewg = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewf ; 2 uses
  %i.ewh = extractelement <16 x i64> %i.eva, i64 0 ; 2 uses
  %i.ewi = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewh ; 2 uses
  %i.ewj = extractelement <16 x i64> %i.eva, i64 1 ; 2 uses
  %i.ewk = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewj ; 2 uses
  %i.ewl = extractelement <16 x i64> %i.eva, i64 2 ; 2 uses
  %i.ewm = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewl ; 2 uses
  %i.ewn = extractelement <16 x i64> %i.eva, i64 3 ; 2 uses
  %i.ewo = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewn ; 2 uses
  %i.ewp = extractelement <16 x i64> %i.eva, i64 4 ; 2 uses
  %i.ewq = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewp ; 2 uses
  %i.ewr = extractelement <16 x i64> %i.eva, i64 5 ; 2 uses
  %i.ews = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewr ; 2 uses
  %i.ewt = extractelement <16 x i64> %i.eva, i64 6 ; 2 uses
  %i.ewu = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewt ; 2 uses
  %i.ewv = extractelement <16 x i64> %i.eva, i64 7 ; 2 uses
  %i.eww = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewv ; 2 uses
  %i.ewx = extractelement <16 x i64> %i.eva, i64 8 ; 2 uses
  %i.ewy = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewx ; 2 uses
  %i.ewz = extractelement <16 x i64> %i.eva, i64 9 ; 2 uses
  %i.exa = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.ewz ; 2 uses
  %i.exb = extractelement <16 x i64> %i.eva, i64 10 ; 2 uses
  %i.exc = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.exb ; 2 uses
  %i.exd = extractelement <16 x i64> %i.eva, i64 11 ; 2 uses
  %i.exe = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.exd ; 2 uses
  %i.exf = extractelement <16 x i64> %i.eva, i64 12 ; 2 uses
  %i.exg = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.exf ; 2 uses
  %i.exh = extractelement <16 x i64> %i.eva, i64 13 ; 2 uses
  %i.exi = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.exh ; 2 uses
  %i.exj = extractelement <16 x i64> %i.eva, i64 14 ; 2 uses
  %i.exk = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.exj ; 2 uses
  %i.exl = extractelement <16 x i64> %i.eva, i64 15 ; 2 uses
  %i.exm = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.exl ; 2 uses
  %i.exn = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evb ; 2 uses
  %i.exo = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evd ; 2 uses
  %i.exp = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evf ; 2 uses
  %i.exq = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evh ; 2 uses
  %i.exr = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evj ; 2 uses
  %i.exs = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evl ; 2 uses
  %i.ext = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evn ; 2 uses
  %i.exu = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evp ; 2 uses
  %i.exv = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evr ; 2 uses
  %i.exw = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evt ; 2 uses
  %i.exx = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evv ; 2 uses
  %i.exy = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evx ; 2 uses
  %i.exz = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.evz ; 2 uses
  %i.eya = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewb ; 2 uses
  %i.eyb = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewd ; 2 uses
  %i.eyc = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewf ; 2 uses
  %i.eyd = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewh ; 2 uses
  %i.eye = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewj ; 2 uses
  %i.eyf = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewl ; 2 uses
  %i.eyg = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewn ; 2 uses
  %i.eyh = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewp ; 2 uses
  %i.eyi = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewr ; 2 uses
  %i.eyj = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewt ; 2 uses
  %i.eyk = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewv ; 2 uses
  %i.eyl = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewx ; 2 uses
  %i.eym = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.ewz ; 2 uses
  %i.eyn = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.exb ; 2 uses
  %i.eyo = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.exd ; 2 uses
  %i.eyp = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.exf ; 2 uses
  %i.eyq = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.exh ; 2 uses
  %i.eyr = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.exj ; 2 uses
  %i.eys = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.exl ; 2 uses
  %i.eyt = load i8, ptr %i.evc, align 1, !tbaa !100
  %i.eyu = load i8, ptr %i.eve, align 1, !tbaa !100
  %i.eyv = load i8, ptr %i.evg, align 1, !tbaa !100
  %i.eyw = load i8, ptr %i.evi, align 1, !tbaa !100
  %i.eyx = load i8, ptr %i.evk, align 1, !tbaa !100
  %i.eyy = load i8, ptr %i.evm, align 1, !tbaa !100
  %i.eyz = load i8, ptr %i.evo, align 1, !tbaa !100
  %i.eza = load i8, ptr %i.evq, align 1, !tbaa !100
  %i.ezb = load i8, ptr %i.evs, align 1, !tbaa !100
  %i.ezc = load i8, ptr %i.evu, align 1, !tbaa !100
  %i.ezd = load i8, ptr %i.evw, align 1, !tbaa !100
  %i.eze = load i8, ptr %i.evy, align 1, !tbaa !100
  %i.ezf = load i8, ptr %i.ewa, align 1, !tbaa !100
  %i.ezg = load i8, ptr %i.ewc, align 1, !tbaa !100
  %i.ezh = load i8, ptr %i.ewe, align 1, !tbaa !100
  %i.ezi = load i8, ptr %i.ewg, align 1, !tbaa !100
  %i.ezj = insertelement <16 x i8> poison, i8 %i.eyt, i64 0
  %i.ezk = insertelement <16 x i8> %i.ezj, i8 %i.eyu, i64 1
  %i.ezl = insertelement <16 x i8> %i.ezk, i8 %i.eyv, i64 2
  %i.ezm = insertelement <16 x i8> %i.ezl, i8 %i.eyw, i64 3
  %i.ezn = insertelement <16 x i8> %i.ezm, i8 %i.eyx, i64 4
  %i.ezo = insertelement <16 x i8> %i.ezn, i8 %i.eyy, i64 5
  %i.ezp = insertelement <16 x i8> %i.ezo, i8 %i.eyz, i64 6
  %i.ezq = insertelement <16 x i8> %i.ezp, i8 %i.eza, i64 7
  %i.ezr = insertelement <16 x i8> %i.ezq, i8 %i.ezb, i64 8
  %i.ezs = insertelement <16 x i8> %i.ezr, i8 %i.ezc, i64 9
  %i.ezt = insertelement <16 x i8> %i.ezs, i8 %i.ezd, i64 10
  %i.ezu = insertelement <16 x i8> %i.ezt, i8 %i.eze, i64 11
  %i.ezv = insertelement <16 x i8> %i.ezu, i8 %i.ezf, i64 12
  %i.ezw = insertelement <16 x i8> %i.ezv, i8 %i.ezg, i64 13
  %i.ezx = insertelement <16 x i8> %i.ezw, i8 %i.ezh, i64 14
  %i.ezy = insertelement <16 x i8> %i.ezx, i8 %i.ezi, i64 15
  %i.ezz = load i8, ptr %i.ewi, align 1, !tbaa !100
  %i.faa = load i8, ptr %i.ewk, align 1, !tbaa !100
  %i.fab = load i8, ptr %i.ewm, align 1, !tbaa !100
  %i.fac = load i8, ptr %i.ewo, align 1, !tbaa !100
  %i.fad = load i8, ptr %i.ewq, align 1, !tbaa !100
  %i.fae = load i8, ptr %i.ews, align 1, !tbaa !100
  %i.faf = load i8, ptr %i.ewu, align 1, !tbaa !100
  %i.fag = load i8, ptr %i.eww, align 1, !tbaa !100
  %i.fah = load i8, ptr %i.ewy, align 1, !tbaa !100
  %i.fai = load i8, ptr %i.exa, align 1, !tbaa !100
  %i.faj = load i8, ptr %i.exc, align 1, !tbaa !100
  %i.fak = load i8, ptr %i.exe, align 1, !tbaa !100
  %i.fal = load i8, ptr %i.exg, align 1, !tbaa !100
  %i.fam = load i8, ptr %i.exi, align 1, !tbaa !100
  %i.fan = load i8, ptr %i.exk, align 1, !tbaa !100
  %i.fao = load i8, ptr %i.exm, align 1, !tbaa !100
  %i.fap = insertelement <16 x i8> poison, i8 %i.ezz, i64 0
  %i.faq = insertelement <16 x i8> %i.fap, i8 %i.faa, i64 1
  %i.far = insertelement <16 x i8> %i.faq, i8 %i.fab, i64 2
  %i.fas = insertelement <16 x i8> %i.far, i8 %i.fac, i64 3
  %i.fat = insertelement <16 x i8> %i.fas, i8 %i.fad, i64 4
  %i.fau = insertelement <16 x i8> %i.fat, i8 %i.fae, i64 5
  %i.fav = insertelement <16 x i8> %i.fau, i8 %i.faf, i64 6
  %i.faw = insertelement <16 x i8> %i.fav, i8 %i.fag, i64 7
  %i.fax = insertelement <16 x i8> %i.faw, i8 %i.fah, i64 8
  %i.fay = insertelement <16 x i8> %i.fax, i8 %i.fai, i64 9
  %i.faz = insertelement <16 x i8> %i.fay, i8 %i.faj, i64 10
  %i.fba = insertelement <16 x i8> %i.faz, i8 %i.fak, i64 11
  %i.fbb = insertelement <16 x i8> %i.fba, i8 %i.fal, i64 12
  %i.fbc = insertelement <16 x i8> %i.fbb, i8 %i.fam, i64 13
  %i.fbd = insertelement <16 x i8> %i.fbc, i8 %i.fan, i64 14
  %i.fbe = insertelement <16 x i8> %i.fbd, i8 %i.fao, i64 15
  %i.fbf = sext <16 x i8> %i.ezy to <16 x i32>    ; 2 uses
  %i.fbg = sext <16 x i8> %i.fbe to <16 x i32>    ; 2 uses
  %wide.vec11807 = load <64 x i8>, ptr %next.gep11803, align 1, !tbaa !100 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.fol = load i8, ptr %i.fnr, align 1, !tbaa !100
  %i.fom = load i8, ptr %i.fnt, align 1, !tbaa !100
  %i.fon = load i8, ptr %i.fnv, align 1, !tbaa !100
  %i.foo = load i8, ptr %i.fnx, align 1, !tbaa !100
  %i.fop = load i8, ptr %i.fnz, align 1, !tbaa !100
  %i.foq = insertelement <8 x i8> poison, i8 %i.foi, i64 0
  %i.for = insertelement <8 x i8> %i.foq, i8 %i.foj, i64 1
  %i.fos = insertelement <8 x i8> %i.for, i8 %i.fok, i64 2
  %i.fot = insertelement <8 x i8> %i.fos, i8 %i.fol, i64 3
  %i.fou = insertelement <8 x i8> %i.fot, i8 %i.fom, i64 4
  %i.fov = insertelement <8 x i8> %i.fou, i8 %i.fon, i64 5
  %i.fow = insertelement <8 x i8> %i.fov, i8 %i.foo, i64 6
  %i.fox = insertelement <8 x i8> %i.fow, i8 %i.fop, i64 7
  %i.foy = sext <8 x i8> %i.fox to <8 x i32>      ; 2 uses
  %wide.vec11843 = load <32 x i8>, ptr %next.gep11841, align 1, !tbaa !100 ; 4 uses
  %strided.vec11844 = shufflevector <32 x i8> %wide.vec11843, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec11845 = shufflevector <32 x i8> %wide.vec11843, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec11846 = shufflevector <32 x i8> %wide.vec11843, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec11847 = shufflevector <32 x i8> %wide.vec11843, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.foz = sext <8 x i8> %strided.vec11844 to <8 x i32> ; 2 uses
  %i.fpa = mul nsw <8 x i32> %i.foz, %i.foy
  %i.fpb = add <8 x i32> %i.fpa, %vec.phi11837
  %i.fpc = sext <8 x i8> %strided.vec11845 to <8 x i32> ; 2 uses
  %i.fpd = mul nsw <8 x i32> %i.fpc, %i.foy
  %i.fpe = add <8 x i32> %i.fpd, %vec.phi11839
  %i.fpf = getelementptr inbounds nuw i8, ptr %i.fnl, i64 %i.dos
  %i.fpg = getelementptr inbounds nuw i8, ptr %i.fnn, i64 %i.dos
  %i.fph = getelementptr inbounds nuw i8, ptr %i.fnp, i64 %i.dos
  %i.fpi = getelementptr inbounds nuw i8, ptr %i.fnr, i64 %i.dos
  %i.fpj = getelementptr inbounds nuw i8, ptr %i.fnt, i64 %i.dos
  %i.fpk = getelementptr inbounds nuw i8, ptr %i.fnv, i64 %i.dos
  %i.fpl = getelementptr inbounds nuw i8, ptr %i.fnx, i64 %i.dos
  %i.fpm = getelementptr inbounds nuw i8, ptr %i.fnz, i64 %i.dos
  %i.fpn = load i8, ptr %i.fpf, align 1, !tbaa !100
  %i.fpo = load i8, ptr %i.fpg, align 1, !tbaa !100
  %i.fpp = load i8, ptr %i.fph, align 1, !tbaa !100
  %i.fpq = load i8, ptr %i.fpi, align 1, !tbaa !100
  %i.fpr = load i8, ptr %i.fpj, align 1, !tbaa !100
  %i.fps = load i8, ptr %i.fpk, align 1, !tbaa !100
  %i.fpt = load i8, ptr %i.fpl, align 1, !tbaa !100
  %i.fpu = load i8, ptr %i.fpm, align 1, !tbaa !100
  %i.fpv = insertelement <8 x i8> poison, i8 %i.fpn, i64 0
  %i.fpw = insertelement <8 x i8> %i.fpv, i8 %i.fpo, i64 1
  %i.fpx = insertelement <8 x i8> %i.fpw, i8 %i.fpp, i64 2
  %i.fpy = insertelement <8 x i8> %i.fpx, i8 %i.fpq, i64 3
  %i.fpz = insertelement <8 x i8> %i.fpy, i8 %i.fpr, i64 4
  %i.fqa = insertelement <8 x i8> %i.fpz, i8 %i.fps, i64 5
  %i.fqb = insertelement <8 x i8> %i.fqa, i8 %i.fpt, i64 6
  %i.fqc = insertelement <8 x i8> %i.fqb, i8 %i.fpu, i64 7
  %i.fqd = sext <8 x i8> %i.fqc to <8 x i32>      ; 2 uses
  %i.fqe = sext <8 x i8> %strided.vec11846 to <8 x i32> ; 2 uses
  %i.fqf = mul nsw <8 x i32> %i.fqe, %i.fqd
  %i.fqg = add <8 x i32> %i.fpb, %i.fqf           ; 2 uses
  %i.fqh = sext <8 x i8> %strided.vec11847 to <8 x i32> ; 2 uses
  %i.fqi = mul nsw <8 x i32> %i.fqh, %i.fqd
  %i.fqj = add <8 x i32> %i.fpe, %i.fqi           ; 2 uses
  %i.fqk = load i8, ptr %i.foa, align 1, !tbaa !100
  %i.fql = load i8, ptr %i.fob, align 1, !tbaa !100
  %i.fqm = load i8, ptr %i.foc, align 1, !tbaa !100
  %i.fqn = load i8, ptr %i.fod, align 1, !tbaa !100
  %i.fqo = load i8, ptr %i.foe, align 1, !tbaa !100
  %i.fqp = load i8, ptr %i.fof, align 1, !tbaa !100
  %i.fqq = load i8, ptr %i.fog, align 1, !tbaa !100
  %i.fqr = load i8, ptr %i.foh, align 1, !tbaa !100
  %i.fqs = insertelement <8 x i8> poison, i8 %i.fqk, i64 0
  %i.fqt = insertelement <8 x i8> %i.fqs, i8 %i.fql, i64 1
  %i.fqu = insertelement <8 x i8> %i.fqt, i8 %i.fqm, i64 2
  %i.fqv = insertelement <8 x i8> %i.fqu, i8 %i.fqn, i64 3
  %i.fqw = insertelement <8 x i8> %i.fqv, i8 %i.fqo, i64 4
  %i.fqx = insertelement <8 x i8> %i.fqw, i8 %i.fqp, i64 5
  %i.fqy = insertelement <8 x i8> %i.fqx, i8 %i.fqq, i64 6
  %i.fqz = insertelement <8 x i8> %i.fqy, i8 %i.fqr, i64 7
  %i.fra = sext <8 x i8> %i.fqz to <8 x i32>      ; 2 uses
  %i.frb = mul nsw <8 x i32> %i.fra, %i.foz
  %i.frc = add <8 x i32> %i.frb, %vec.phi11838
  %i.frd = mul nsw <8 x i32> %i.fra, %i.fpc
  %i.fre = add <8 x i32> %i.frd, %vec.phi11840
  %i.frf = getelementptr inbounds nuw i8, ptr %i.foa, i64 %i.dos
  %i.frg = getelementptr inbounds nuw i8, ptr %i.fob, i64 %i.dos
  %i.frh = getelementptr inbounds nuw i8, ptr %i.foc, i64 %i.dos
  %i.fri = getelementptr inbounds nuw i8, ptr %i.fod, i64 %i.dos
  %i.frj = getelementptr inbounds nuw i8, ptr %i.foe, i64 %i.dos
  %i.frk = getelementptr inbounds nuw i8, ptr %i.fof, i64 %i.dos
  %i.frl = getelementptr inbounds nuw i8, ptr %i.fog, i64 %i.dos
  %i.frm = getelementptr inbounds nuw i8, ptr %i.foh, i64 %i.dos
  %i.frn = load i8, ptr %i.frf, align 1, !tbaa !100
  %i.fro = load i8, ptr %i.frg, align 1, !tbaa !100
  %i.frp = load i8, ptr %i.frh, align 1, !tbaa !100
  %i.frq = load i8, ptr %i.fri, align 1, !tbaa !100
  %i.frr = load i8, ptr %i.frj, align 1, !tbaa !100
  %i.frs = load i8, ptr %i.frk, align 1, !tbaa !100
  %i.frt = load i8, ptr %i.frl, align 1, !tbaa !100
  %i.fru = load i8, ptr %i.frm, align 1, !tbaa !100
  %i.frv = insertelement <8 x i8> poison, i8 %i.frn, i64 0
  %i.frw = insertelement <8 x i8> %i.frv, i8 %i.fro, i64 1
  %i.frx = insertelement <8 x i8> %i.frw, i8 %i.frp, i64 2
  %i.fry = insertelement <8 x i8> %i.frx, i8 %i.frq, i64 3
  %i.frz = insertelement <8 x i8> %i.fry, i8 %i.frr, i64 4
  %i.fsa = insertelement <8 x i8> %i.frz, i8 %i.frs, i64 5
  %i.fsb = insertelement <8 x i8> %i.fsa, i8 %i.frt, i64 6
  %i.fsc = insertelement <8 x i8> %i.fsb, i8 %i.fru, i64 7
  %i.fsd = sext <8 x i8> %i.fsc to <8 x i32>      ; 2 uses
  %i.fse = mul nsw <8 x i32> %i.fsd, %i.fqe
  %i.fsf = add <8 x i32> %i.frc, %i.fse           ; 2 uses
  %i.fsg = mul nsw <8 x i32> %i.fsd, %i.fqh
  %i.fsh = add <8 x i32> %i.fre, %i.fsg           ; 2 uses
  %index.next11848 = add nuw i64 %index11836, 8   ; 2 uses
  %i.fsi = icmp eq i64 %index.next11848, %n.vec11834
  br i1 %i.fsi, label %vec.epilog.middle.block11849, label %vec.epilog.vector.body11835, !llvm.loop !1887

vec.epilog.middle.block11849:                     ; preds = %vec.epilog.vector.body11835
  %i.fsj = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fqg) ; 2 uses
  %i.fsk = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fsf) ; 2 uses
  %i.fsl = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fqj) ; 2 uses
  %i.fsm = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fsh) ; 2 uses
  br i1 %cmp.n11850, label %._crit_edge9384.us, label %vec.epilog.scalar.ph11830.preheader

vec.epilog.scalar.ph11830.preheader:              ; preds = %iter.check11829, %vec.epilog.iter.check11831, %vec.epilog.middle.block11849
  %indvars.iv10742.ph = phi i64 [ 0, %iter.check11829 ], [ %n.vec11792, %vec.epilog.iter.check11831 ], [ %n.vec11834, %vec.epilog.middle.block11849 ]
  %.129519382.us.ph = phi i32 [ %.029509395.us, %iter.check11829 ], [ %i.fmy, %vec.epilog.iter.check11831 ], [ %i.fsj, %vec.epilog.middle.block11849 ]
  %.129679381.us.ph = phi i32 [ %.029669394.us, %iter.check11829 ], [ %i.fmz, %vec.epilog.iter.check11831 ], [ %i.fsk, %vec.epilog.middle.block11849 ]
  %.129719380.us.ph = phi i32 [ %.029709393.us, %iter.check11829 ], [ %i.fna, %vec.epilog.iter.check11831 ], [ %i.fsl, %vec.epilog.middle.block11849 ]
  %.129759379.us.ph = phi i32 [ %.029749392.us, %iter.check11829 ], [ %i.fnb, %vec.epilog.iter.check11831 ], [ %i.fsm, %vec.epilog.middle.block11849 ]
  %.529839378.us.ph = phi ptr [ %.429829391.us, %iter.check11829 ], [ %i.euq, %vec.epilog.iter.check11831 ], [ %i.fnc, %vec.epilog.middle.block11849 ]
  br label %vec.epilog.scalar.ph11830

vec.epilog.scalar.ph11830:                        ; preds = %vec.epilog.scalar.ph11830.preheader, %vec.epilog.scalar.ph11830
  %indvars.iv10742 = phi i64 [ %indvars.iv.next10743, %vec.epilog.scalar.ph11830 ], [ %indvars.iv10742.ph, %vec.epilog.scalar.ph11830.preheader ] ; 2 uses
  %.129519382.us = phi i32 [ %i.ftk, %vec.epilog.scalar.ph11830 ], [ %.129519382.us.ph, %vec.epilog.scalar.ph11830.preheader ]
  %.129679381.us = phi i32 [ %i.fua, %vec.epilog.scalar.ph11830 ], [ %.129679381.us.ph, %vec.epilog.scalar.ph11830.preheader ]
  %.129719380.us = phi i32 [ %i.ftp, %vec.epilog.scalar.ph11830 ], [ %.129719380.us.ph, %vec.epilog.scalar.ph11830.preheader ]
  %.129759379.us = phi i32 [ %i.fuc, %vec.epilog.scalar.ph11830 ], [ %.129759379.us.ph, %vec.epilog.scalar.ph11830.preheader ]
  %.529839378.us = phi ptr [ %i.fud, %vec.epilog.scalar.ph11830 ], [ %.529839378.us.ph, %vec.epilog.scalar.ph11830.preheader ] ; 5 uses
  %i.fsn = getelementptr inbounds nuw [4 x i8], ptr %i.euc, i64 %indvars.iv10742
  %i.fso = load i32, ptr %i.fsn, align 4, !tbaa !67
  %i.fsp = sext i32 %i.fso to i64                 ; 2 uses
  %i.fsq = getelementptr inbounds i8, ptr %gep9406.us, i64 %i.fsp ; 2 uses
  %i.fsr = getelementptr inbounds i8, ptr %gep9411.us, i64 %i.fsp ; 2 uses
  %i.fss = load i8, ptr %i.fsq, align 1, !tbaa !100
  %i.fst = sext i8 %i.fss to i32                  ; 2 uses
  %i.fsu = load i8, ptr %.529839378.us, align 1, !tbaa !100
  %i.fsv = sext i8 %i.fsu to i32                  ; 2 uses
  %i.fsw = mul nsw i32 %i.fsv, %i.fst
  %i.fsx = add nsw i32 %i.fsw, %.129519382.us
  %i.fsy = getelementptr inbounds nuw i8, ptr %.529839378.us, i64 1
  %i.fsz = load i8, ptr %i.fsy, align 1, !tbaa !100
  %i.fta = sext i8 %i.fsz to i32                  ; 2 uses
  %i.ftb = mul nsw i32 %i.fta, %i.fst
  %i.ftc = add nsw i32 %i.ftb, %.129719380.us
  %i.ftd = getelementptr inbounds nuw i8, ptr %i.fsq, i64 %i.dos
  %i.fte = load i8, ptr %i.ftd, align 1, !tbaa !100
  %i.ftf = sext i8 %i.fte to i32                  ; 2 uses
  %i.ftg = getelementptr inbounds nuw i8, ptr %.529839378.us, i64 2
  %i.fth = load i8, ptr %i.ftg, align 1, !tbaa !100
  %i.fti = sext i8 %i.fth to i32                  ; 2 uses
  %i.ftj = mul nsw i32 %i.fti, %i.ftf
  %i.ftk = add nsw i32 %i.fsx, %i.ftj             ; 2 uses
  %i.ftl = getelementptr inbounds nuw i8, ptr %.529839378.us, i64 3
  %i.ftm = load i8, ptr %i.ftl, align 1, !tbaa !100
  %i.ftn = sext i8 %i.ftm to i32                  ; 2 uses
  %i.fto = mul nsw i32 %i.ftn, %i.ftf
  %i.ftp = add nsw i32 %i.ftc, %i.fto             ; 2 uses
  %i.ftq = load i8, ptr %i.fsr, align 1, !tbaa !100
  %i.ftr = sext i8 %i.ftq to i32                  ; 2 uses
  %i.fts = mul nsw i32 %i.ftr, %i.fsv
  %i.ftt = add nsw i32 %i.fts, %.129679381.us
  %i.ftu = mul nsw i32 %i.ftr, %i.fta
  %i.ftv = add nsw i32 %i.ftu, %.129759379.us
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.fsr, i64 %i.dos
  %i.ftx = load i8, ptr %i.ftw, align 1, !tbaa !100
  %i.fty = sext i8 %i.ftx to i32                  ; 2 uses
  %i.ftz = mul nsw i32 %i.fty, %i.fti
  %i.fua = add nsw i32 %i.ftt, %i.ftz             ; 2 uses
  %i.fub = mul nsw i32 %i.fty, %i.ftn
  %i.fuc = add nsw i32 %i.ftv, %i.fub             ; 2 uses
  %i.fud = getelementptr inbounds nuw i8, ptr %.529839378.us, i64 4
  %indvars.iv.next10743 = add nuw nsw i64 %indvars.iv10742, 1 ; 2 uses
  %exitcond10748.not = icmp eq i64 %indvars.iv.next10743, %wide.trip.count10747
  br i1 %exitcond10748.not, label %._crit_edge9384.us, label %vec.epilog.scalar.ph11830, !llvm.loop !1888

._crit_edge9384.us:                               ; preds = %vec.epilog.scalar.ph11830, %vec.epilog.middle.block11849, %middle.block11818
  %.lcssa11457 = phi i32 [ %i.fsj, %vec.epilog.middle.block11849 ], [ %i.fmy, %middle.block11818 ], [ %i.ftk, %vec.epilog.scalar.ph11830 ] ; 2 uses
  %.lcssa11456 = phi i32 [ %i.fsl, %vec.epilog.middle.block11849 ], [ %i.fna, %middle.block11818 ], [ %i.ftp, %vec.epilog.scalar.ph11830 ] ; 2 uses
  %.lcssa11455 = phi i32 [ %i.fsk, %vec.epilog.middle.block11849 ], [ %i.fmz, %middle.block11818 ], [ %i.fua, %vec.epilog.scalar.ph11830 ] ; 2 uses
  %.lcssa11454 = phi i32 [ %i.fsm, %vec.epilog.middle.block11849 ], [ %i.fnb, %middle.block11818 ], [ %i.fuc, %vec.epilog.scalar.ph11830 ] ; 2 uses
  %scevgep10744 = getelementptr i8, ptr %.429829391.us, i64 4
  %scevgep10745 = getelementptr i8, ptr %scevgep10744, i64 %i.eul ; 2 uses
  %indvars.iv.next10750 = add nuw nsw i64 %indvars.iv10749, 2 ; 3 uses
  %i.fue = trunc i64 %indvars.iv.next10750 to i32
  %i.fuf = or i32 %i.fue, 1
  %i.fug = icmp slt i32 %i.fuf, %i.ele
  br i1 %i.fug, label %iter.check11829, label %.preheader8135.loopexit, !llvm.loop !1889

.preheader8135.loopexit:                          ; preds = %._crit_edge9384.us
  %i.fuh = trunc nuw i64 %indvars.iv.next10750 to i32
  br label %.preheader8135

.preheader8135:                                   ; preds = %.noexc3377.preheader, %.preheader8135.loopexit, %._crit_edge9362
  %.22988.lcssa = phi i32 [ %.12987.lcssa, %._crit_edge9362 ], [ %i.fuh, %.preheader8135.loopexit ], [ %i.eui, %.noexc3377.preheader ] ; 2 uses
  %.42982.lcssa = phi ptr [ %.22980.lcssa, %._crit_edge9362 ], [ %scevgep10745, %.preheader8135.loopexit ], [ %.22980.lcssa, %.noexc3377.preheader ]
  %.02974.lcssa = phi i32 [ %29, %._crit_edge9362 ], [ %.lcssa11454, %.preheader8135.loopexit ], [ %29, %.noexc3377.preheader ] ; 3 uses
  %.02970.lcssa = phi i32 [ %19, %._crit_edge9362 ], [ %.lcssa11456, %.preheader8135.loopexit ], [ %19, %.noexc3377.preheader ] ; 3 uses
  %.02966.lcssa = phi i32 [ %24, %._crit_edge9362 ], [ %.lcssa11455, %.preheader8135.loopexit ], [ %24, %.noexc3377.preheader ] ; 3 uses
  %.02950.lcssa = phi i32 [ %14, %._crit_edge9362 ], [ %.lcssa11457, %.preheader8135.loopexit ], [ %14, %.noexc3377.preheader ] ; 3 uses
  %i.fui = icmp slt i32 %.22988.lcssa, %i.ele
  br i1 %i.fui, label %.noexc3373.lr.ph, label %._crit_edge9437

.noexc3373.lr.ph:                                 ; preds = %.preheader8135
  %i.fuj = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1890
  %i.fuk = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1890 ; 2 uses
  %i.ful = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1890
  %i.fum = load i64, ptr %i.bie, align 8, !tbaa !65, !noalias !1890 ; 2 uses
  %factor.op.mul9442 = mul i64 %i.ful, %i.fum
  %i.fun = sext i32 %i.fuj to i64
  %i.fuo = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.fup = mul nsw i32 %i.fuo, %i.ela
  %i.fuq = sext i32 %i.fup to i64
  %i.fur = mul i64 %i.fum, %i.fun                 ; 2 uses
  %i.fus = mul i64 %i.fur, %i.fuq
  %invariant.gep9444 = getelementptr i8, ptr %i.fuk, i64 %i.fus
  %i.fut = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.fuu = mul nsw i32 %i.fut, %i.elc
  %i.fuv = sext i32 %i.fuu to i64
  %invariant.gep9445 = getelementptr i8, ptr %invariant.gep9444, i64 %i.fuv
  %i.fuw = mul nsw i32 %i.fuo, %i.elb
  %i.fux = sext i32 %i.fuw to i64
  %i.fuy = mul i64 %i.fur, %i.fux
  %invariant.gep9449 = getelementptr i8, ptr %i.fuk, i64 %i.fuy
  %i.fuz = mul nsw i32 %i.fut, %i.eld
  %i.fva = sext i32 %i.fuz to i64
  %invariant.gep9450 = getelementptr i8, ptr %invariant.gep9449, i64 %i.fva
  %i.fvb = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.fvc = icmp sgt i32 %i.fvb, 0
  %i.fvd = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.fvc, label %.noexc3373.us.preheader, label %._crit_edge9437

.noexc3373.us.preheader:                          ; preds = %.noexc3373.lr.ph
  %i.fve = add nsw i32 %i.fvb, -1
  %i.fvf = zext nneg i32 %i.fve to i64
  %i.fvg = shl nuw nsw i64 %i.fvf, 1
  %i.fvh = zext i32 %.22988.lcssa to i64
  %wide.trip.count10757 = zext nneg i32 %i.fvb to i64 ; 6 uses
  %min.iters.check11725 = icmp ult i32 %i.fvb, 8
  %min.iters.check11727 = icmp ult i32 %i.fvb, 32
  %i.fvi = and i64 %wide.trip.count10757, 24
  %n.vec11729 = and i64 %wide.trip.count10757, 2147483616 ; 5 uses
  %i.fvj = shl nuw nsw i64 %n.vec11729, 1
  %cmp.n11756 = icmp eq i64 %n.vec11729, %wide.trip.count10757
  %min.epilog.iters.check11765 = icmp eq i64 %i.fvi, 0
  %n.vec11767 = and i64 %wide.trip.count10757, 2147483640 ; 4 uses
  %i.fvk = shl nuw nsw i64 %n.vec11767, 1
  %cmp.n11781 = icmp eq i64 %n.vec11767, %wide.trip.count10757
  br label %iter.check11762

iter.check11762:                                  ; preds = %.noexc3373.us.preheader, %._crit_edge9425.us
  %indvars.iv10759 = phi i64 [ %i.fvh, %.noexc3373.us.preheader ], [ %indvars.iv.next10760, %._crit_edge9425.us ] ; 2 uses
  %.229529436.us = phi i32 [ %.02950.lcssa, %.noexc3373.us.preheader ], [ %.lcssa11461, %._crit_edge9425.us ] ; 3 uses
  %.229689435.us = phi i32 [ %.02966.lcssa, %.noexc3373.us.preheader ], [ %.lcssa11459, %._crit_edge9425.us ] ; 3 uses
  %.229729434.us = phi i32 [ %.02970.lcssa, %.noexc3373.us.preheader ], [ %.lcssa11460, %._crit_edge9425.us ] ; 3 uses
  %.229769433.us = phi i32 [ %.02974.lcssa, %.noexc3373.us.preheader ], [ %.lcssa11458, %._crit_edge9425.us ] ; 3 uses
  %.629849432.us = phi ptr [ %.42982.lcssa, %.noexc3373.us.preheader ], [ %scevgep10755, %._crit_edge9425.us ] ; 7 uses
  %.reass9443.us = mul i64 %factor.op.mul9442, %indvars.iv10759 ; 2 uses
  %gep9446.us = getelementptr i8, ptr %invariant.gep9445, i64 %.reass9443.us ; 41 uses
  %gep9451.us = getelementptr i8, ptr %invariant.gep9450, i64 %.reass9443.us ; 41 uses
  br i1 %min.iters.check11725, label %vec.epilog.scalar.ph11763.preheader, label %vector.main.loop.iter.check11726

vector.main.loop.iter.check11726:                 ; preds = %iter.check11762
  br i1 %min.iters.check11727, label %vec.epilog.ph11766, label %vector.ph11728

vector.ph11728:                                   ; preds = %vector.main.loop.iter.check11726
  %i.fvl = getelementptr i8, ptr %.629849432.us, i64 %i.fvj
  %i.fvm = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229529436.us, i64 0
  %i.fvn = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229689435.us, i64 0
  %i.fvo = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229729434.us, i64 0
  %i.fvp = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229769433.us, i64 0
  br label %vector.body11730

vector.body11730:                                 ; preds = %vector.body11730, %vector.ph11728
  %index11731 = phi i64 [ 0, %vector.ph11728 ], [ %index.next11750, %vector.body11730 ] ; 3 uses
  %vec.phi11732 = phi <16 x i32> [ %i.fvm, %vector.ph11728 ], [ %i.gcg, %vector.body11730 ]
  %vec.phi11733 = phi <16 x i32> [ zeroinitializer, %vector.ph11728 ], [ %i.gch, %vector.body11730 ]
  %vec.phi11734 = phi <16 x i32> [ %i.fvn, %vector.ph11728 ], [ %i.gfe, %vector.body11730 ]
  %vec.phi11735 = phi <16 x i32> [ zeroinitializer, %vector.ph11728 ], [ %i.gff, %vector.body11730 ]
  %vec.phi11736 = phi <16 x i32> [ %i.fvo, %vector.ph11728 ], [ %i.gcm, %vector.body11730 ]
  %vec.phi11737 = phi <16 x i32> [ zeroinitializer, %vector.ph11728 ], [ %i.gcn, %vector.body11730 ]
  %vec.phi11738 = phi <16 x i32> [ %i.fvp, %vector.ph11728 ], [ %i.gfi, %vector.body11730 ]
  %vec.phi11739 = phi <16 x i32> [ zeroinitializer, %vector.ph11728 ], [ %i.gfj, %vector.body11730 ]
  %i.fvq = shl i64 %index11731, 1                 ; 2 uses
  %next.gep11740 = getelementptr i8, ptr %.629849432.us, i64 %i.fvq
  %i.fvr = getelementptr i8, ptr %.629849432.us, i64 %i.fvq
  %next.gep11741 = getelementptr i8, ptr %i.fvr, i64 32
  %i.fvs = getelementptr inbounds nuw [4 x i8], ptr %i.fvd, i64 %index11731 ; 2 uses
  %i.fvt = getelementptr inbounds nuw i8, ptr %i.fvs, i64 64
  %wide.load11742 = load <16 x i32>, ptr %i.fvs, align 4, !tbaa !67
  %wide.load11743 = load <16 x i32>, ptr %i.fvt, align 4, !tbaa !67
  %i.fvu = sext <16 x i32> %wide.load11742 to <16 x i64> ; 16 uses
  %i.fvv = sext <16 x i32> %wide.load11743 to <16 x i64> ; 16 uses
  %i.fvw = extractelement <16 x i64> %i.fvu, i64 0 ; 2 uses
  %i.fvx = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fvw
  %i.fvy = extractelement <16 x i64> %i.fvu, i64 1 ; 2 uses
  %i.fvz = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fvy
  %i.fwa = extractelement <16 x i64> %i.fvu, i64 2 ; 2 uses
  %i.fwb = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwa
  %i.fwc = extractelement <16 x i64> %i.fvu, i64 3 ; 2 uses
  %i.fwd = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwc
  %i.fwe = extractelement <16 x i64> %i.fvu, i64 4 ; 2 uses
  %i.fwf = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwe
  %i.fwg = extractelement <16 x i64> %i.fvu, i64 5 ; 2 uses
  %i.fwh = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwg
  %i.fwi = extractelement <16 x i64> %i.fvu, i64 6 ; 2 uses
  %i.fwj = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwi
  %i.fwk = extractelement <16 x i64> %i.fvu, i64 7 ; 2 uses
  %i.fwl = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwk
  %i.fwm = extractelement <16 x i64> %i.fvu, i64 8 ; 2 uses
  %i.fwn = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwm
  %i.fwo = extractelement <16 x i64> %i.fvu, i64 9 ; 2 uses
  %i.fwp = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwo
  %i.fwq = extractelement <16 x i64> %i.fvu, i64 10 ; 2 uses
  %i.fwr = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwq
  %i.fws = extractelement <16 x i64> %i.fvu, i64 11 ; 2 uses
  %i.fwt = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fws
  %i.fwu = extractelement <16 x i64> %i.fvu, i64 12 ; 2 uses
  %i.fwv = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwu
  %i.fww = extractelement <16 x i64> %i.fvu, i64 13 ; 2 uses
  %i.fwx = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fww
  %i.fwy = extractelement <16 x i64> %i.fvu, i64 14 ; 2 uses
  %i.fwz = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fwy
  %i.fxa = extractelement <16 x i64> %i.fvu, i64 15 ; 2 uses
  %i.fxb = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxa
  %i.fxc = extractelement <16 x i64> %i.fvv, i64 0 ; 2 uses
  %i.fxd = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxc
  %i.fxe = extractelement <16 x i64> %i.fvv, i64 1 ; 2 uses
  %i.fxf = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxe
  %i.fxg = extractelement <16 x i64> %i.fvv, i64 2 ; 2 uses
  %i.fxh = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxg
  %i.fxi = extractelement <16 x i64> %i.fvv, i64 3 ; 2 uses
  %i.fxj = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxi
  %i.fxk = extractelement <16 x i64> %i.fvv, i64 4 ; 2 uses
  %i.fxl = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxk
  %i.fxm = extractelement <16 x i64> %i.fvv, i64 5 ; 2 uses
  %i.fxn = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxm
  %i.fxo = extractelement <16 x i64> %i.fvv, i64 6 ; 2 uses
  %i.fxp = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxo
  %i.fxq = extractelement <16 x i64> %i.fvv, i64 7 ; 2 uses
  %i.fxr = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxq
  %i.fxs = extractelement <16 x i64> %i.fvv, i64 8 ; 2 uses
  %i.fxt = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxs
  %i.fxu = extractelement <16 x i64> %i.fvv, i64 9 ; 2 uses
  %i.fxv = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxu
  %i.fxw = extractelement <16 x i64> %i.fvv, i64 10 ; 2 uses
  %i.fxx = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxw
  %i.fxy = extractelement <16 x i64> %i.fvv, i64 11 ; 2 uses
  %i.fxz = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fxy
  %i.fya = extractelement <16 x i64> %i.fvv, i64 12 ; 2 uses
  %i.fyb = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fya
  %i.fyc = extractelement <16 x i64> %i.fvv, i64 13 ; 2 uses
  %i.fyd = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fyc
  %i.fye = extractelement <16 x i64> %i.fvv, i64 14 ; 2 uses
  %i.fyf = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fye
  %i.fyg = extractelement <16 x i64> %i.fvv, i64 15 ; 2 uses
  %i.fyh = getelementptr inbounds i8, ptr %gep9446.us, i64 %i.fyg
  %i.fyi = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fvw
  %i.fyj = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fvy
  %i.fyk = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwa
  %i.fyl = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwc
  %i.fym = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwe
  %i.fyn = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwg
  %i.fyo = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwi
  %i.fyp = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwk
  %i.fyq = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwm
  %i.fyr = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwo
  %i.fys = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwq
  %i.fyt = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fws
  %i.fyu = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwu
  %i.fyv = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fww
  %i.fyw = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fwy
  %i.fyx = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxa
  %i.fyy = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxc
  %i.fyz = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxe
  %i.fza = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxg
  %i.fzb = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxi
  %i.fzc = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxk
  %i.fzd = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxm
  %i.fze = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxo
  %i.fzf = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxq
  %i.fzg = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxs
  %i.fzh = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxu
  %i.fzi = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxw
  %i.fzj = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fxy
  %i.fzk = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fya
  %i.fzl = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fyc
  %i.fzm = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fye
  %i.fzn = getelementptr inbounds i8, ptr %gep9451.us, i64 %i.fyg
  %i.fzo = load i8, ptr %i.fvx, align 1, !tbaa !100
  %i.fzp = load i8, ptr %i.fvz, align 1, !tbaa !100
  %i.fzq = load i8, ptr %i.fwb, align 1, !tbaa !100
  %i.fzr = load i8, ptr %i.fwd, align 1, !tbaa !100
  %i.fzs = load i8, ptr %i.fwf, align 1, !tbaa !100
  %i.fzt = load i8, ptr %i.fwh, align 1, !tbaa !100
  %i.fzu = load i8, ptr %i.fwj, align 1, !tbaa !100
  %i.fzv = load i8, ptr %i.fwl, align 1, !tbaa !100
  %i.fzw = load i8, ptr %i.fwn, align 1, !tbaa !100
  %i.fzx = load i8, ptr %i.fwp, align 1, !tbaa !100
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.glr = getelementptr inbounds nuw i8, ptr %.130149464.us9492, i64 32
  %i.gls = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10776
  %i.glt = getelementptr inbounds nuw i8, ptr %i.gls, i64 4
  %i.glu = load i32, ptr %i.glt, align 4, !tbaa !67
  %i.glv = sext i32 %i.glu to i64
  %i.glw = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.glv
  %i.glx = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.glw, <16 x i32> %i.ekv, <16 x i1> splat (i1 true), i32 1)
  %i.gly = shufflevector <16 x i32> %i.glx, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.glz = trunc <32 x i32> %i.gly to <32 x i8>
  %i.gma = sext <32 x i8> %i.glz to <32 x i16>
  %i.gmb = load <32 x i8>, ptr %i.glr, align 32, !tbaa !100
  %i.gmc = sext <32 x i8> %i.gmb to <32 x i16>
  %i.gmd = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.gma, <32 x i16> %i.gmc)
  %i.gme = add <16 x i32> %i.gmd, %i.glq          ; 3 uses
  %i.gmf = getelementptr inbounds nuw i8, ptr %.130149464.us9492, i64 64 ; 2 uses
  %indvars.iv.next10777.1 = add nuw nsw i64 %indvars.iv10776, 2 ; 2 uses
  %niter12438.next.1 = add i64 %niter12438, 2     ; 2 uses
  %niter12438.ncmp.1 = icmp eq i64 %niter12438.next.1, %unroll_iter12437
  br i1 %niter12438.ncmp.1, label %._crit_edge9466.us.loopexit.unr-lcssa, label %.lr.ph9465.split.us9498, !llvm.loop !1901

._crit_edge9466.us.loopexit.unr-lcssa:            ; preds = %.lr.ph9465.split.us9498
  br i1 %lcmp.mod12434.not, label %._crit_edge9466.us, label %.lr.ph9465.split.us9498.epil.preheader

.lr.ph9465.split.us9498.epil.preheader:           ; preds = %._crit_edge9466.us.loopexit.unr-lcssa, %.lr.ph9465.split.us9498.preheader
  %indvars.iv10776.epil.init = phi i64 [ 0, %.lr.ph9465.split.us9498.preheader ], [ %indvars.iv.next10777.1, %._crit_edge9466.us.loopexit.unr-lcssa ]
  %.130149464.us9492.epil.init = phi ptr [ %.030139482.us, %.lr.ph9465.split.us9498.preheader ], [ %i.gmf, %._crit_edge9466.us.loopexit.unr-lcssa ]
  %.176299462.us9494.epil.init = phi <16 x i32> [ %i.glc, %.lr.ph9465.split.us9498.preheader ], [ %i.gme, %._crit_edge9466.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12436)
  %i.gmg = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10776.epil.init
  %i.gmh = load i32, ptr %i.gmg, align 4, !tbaa !67
  %i.gmi = sext i32 %i.gmh to i64
  %i.gmj = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.gmi
  %i.gmk = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.gmj, <16 x i32> %i.ekv, <16 x i1> splat (i1 true), i32 1)
  %i.gml = shufflevector <16 x i32> %i.gmk, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gmm = trunc <32 x i32> %i.gml to <32 x i8>
  %i.gmn = sext <32 x i8> %i.gmm to <32 x i16>
  %i.gmo = load <32 x i8>, ptr %.130149464.us9492.epil.init, align 32, !tbaa !100
  %i.gmp = sext <32 x i8> %i.gmo to <32 x i16>
  %i.gmq = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.gmn, <32 x i16> %i.gmp)
  %i.gmr = add <16 x i32> %i.gmq, %.176299462.us9494.epil.init
  br label %._crit_edge9466.us

._crit_edge9466.us.loopexit12151.unr-lcssa:       ; preds = %.lr.ph9465.split.us.us
  br i1 %lcmp.mod12428.not, label %._crit_edge9466.us, label %.lr.ph9465.split.us.us.epil.preheader

.lr.ph9465.split.us.us.epil.preheader:            ; preds = %._crit_edge9466.us.loopexit12151.unr-lcssa, %.lr.ph9465.split.us.us.preheader
  %indvars.iv10769.epil.init = phi i64 [ 0, %.lr.ph9465.split.us.us.preheader ], [ %indvars.iv.next10770.1, %._crit_edge9466.us.loopexit12151.unr-lcssa ]
  %.130149464.us.us.epil.init = phi ptr [ %.030139482.us, %.lr.ph9465.split.us.us.preheader ], [ %i.gpc, %._crit_edge9466.us.loopexit12151.unr-lcssa ]
  %.176299462.us.us.epil.init = phi <16 x i32> [ %i.glc, %.lr.ph9465.split.us.us.preheader ], [ %i.gpb, %._crit_edge9466.us.loopexit12151.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12430)
  %i.gms = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10769.epil.init
  %i.gmt = load i32, ptr %i.gms, align 4, !tbaa !67
  %i.gmu = sext i32 %i.gmt to i64
  %i.gmv = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.gmu
  %i.gmw = load <16 x i8>, ptr %i.gmv, align 16, !tbaa !100
  %i.gmx = sext <16 x i8> %i.gmw to <16 x i16>
  %i.gmy = bitcast <16 x i16> %i.gmx to <4 x i64>
  %i.gmz = shufflevector <4 x i64> %i.gmy, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gna = load <32 x i8>, ptr %.130149464.us.us.epil.init, align 32, !tbaa !100
  %i.gnb = sext <32 x i8> %i.gna to <32 x i16>
  %i.gnc = bitcast <8 x i64> %i.gmz to <32 x i16>
  %i.gnd = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.gnc, <32 x i16> %i.gnb)
  %i.gne = add <16 x i32> %i.gnd, %.176299462.us.us.epil.init
  br label %._crit_edge9466.us

._crit_edge9466.us.loopexit12152.unr-lcssa:       ; preds = %.lr.ph9465.split.us9471.us
  br i1 %lcmp.mod12422.not, label %._crit_edge9466.us, label %.lr.ph9465.split.us9471.us.epil.preheader

.lr.ph9465.split.us9471.us.epil.preheader:        ; preds = %._crit_edge9466.us.loopexit12152.unr-lcssa, %.lr.ph9465.split.us9471.us.preheader
  %indvars.iv10762.epil.init = phi i64 [ 0, %.lr.ph9465.split.us9471.us.preheader ], [ %indvars.iv.next10763.1, %._crit_edge9466.us.loopexit12152.unr-lcssa ]
  %.130149464.us9472.us.epil.init = phi ptr [ %.030139482.us, %.lr.ph9465.split.us9471.us.preheader ], [ %i.gqp, %._crit_edge9466.us.loopexit12152.unr-lcssa ]
  %.176299462.us9474.us.epil.init = phi <16 x i32> [ %i.glc, %.lr.ph9465.split.us9471.us.preheader ], [ %i.gqo, %._crit_edge9466.us.loopexit12152.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12424)
  %i.gnf = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10762.epil.init
  %i.gng = load i32, ptr %i.gnf, align 4, !tbaa !67
  %i.gnh = sext i32 %i.gng to i64
  %i.gni = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.gnh ; 2 uses
  %i.gnj = load i64, ptr %i.gni, align 1, !tbaa !100
  %i.gnk = insertelement <2 x i64> poison, i64 %i.gnj, i64 0
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.gni, i64 %i.dos
  %i.gnm = load i64, ptr %i.gnl, align 1, !tbaa !100
  %i.gnn = insertelement <2 x i64> %i.gnk, i64 %i.gnm, i64 1
  %i.gno = bitcast <2 x i64> %i.gnn to <16 x i8>
  %i.gnp = sext <16 x i8> %i.gno to <16 x i16>
  %i.gnq = bitcast <16 x i16> %i.gnp to <4 x i64>
  %i.gnr = shufflevector <4 x i64> %i.gnq, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gns = load <32 x i8>, ptr %.130149464.us9472.us.epil.init, align 32, !tbaa !100
  %i.gnt = sext <32 x i8> %i.gns to <32 x i16>
  %i.gnu = bitcast <8 x i64> %i.gnr to <32 x i16>
  %i.gnv = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.gnu, <32 x i16> %i.gnt)
  %i.gnw = add <16 x i32> %i.gnv, %.176299462.us9474.us.epil.init
  br label %._crit_edge9466.us

._crit_edge9466.us:                               ; preds = %.lr.ph9465.split.us9471.us.epil.preheader, %._crit_edge9466.us.loopexit12152.unr-lcssa, %.lr.ph9465.split.us.us.epil.preheader, %._crit_edge9466.us.loopexit12151.unr-lcssa, %.lr.ph9465.split.us9498.epil.preheader, %._crit_edge9466.us.loopexit.unr-lcssa
  %.us-phi9469.us.in = phi <16 x i32> [ %i.gmr, %.lr.ph9465.split.us9498.epil.preheader ], [ %i.gne, %.lr.ph9465.split.us.us.epil.preheader ], [ %i.gme, %._crit_edge9466.us.loopexit.unr-lcssa ], [ %i.gpb, %._crit_edge9466.us.loopexit12151.unr-lcssa ], [ %i.gqo, %._crit_edge9466.us.loopexit12152.unr-lcssa ], [ %i.gnw, %.lr.ph9465.split.us9471.us.epil.preheader ] ; 2 uses
  %scevgep10764 = getelementptr i8, ptr %.030139482.us, i64 32
  %scevgep10765 = getelementptr i8, ptr %scevgep10764, i64 %i.gkx ; 2 uses
  %i.gnx = add nuw nsw i32 %.030229481.us, 16     ; 2 uses
  %i.gny = or disjoint i32 %i.gnx, 15
  %i.gnz = icmp slt i32 %i.gny, %i.gka
  br i1 %i.gnz, label %.noexc3367.us, label %._crit_edge9483.loopexit, !llvm.loop !1902

.lr.ph9465.split.us.us:                           ; preds = %.lr.ph9465.split.us.us.preheader, %.lr.ph9465.split.us.us
  %indvars.iv10769 = phi i64 [ %indvars.iv.next10770.1, %.lr.ph9465.split.us.us ], [ 0, %.lr.ph9465.split.us.us.preheader ] ; 3 uses
  %.130149464.us.us = phi ptr [ %i.gpc, %.lr.ph9465.split.us.us ], [ %.030139482.us, %.lr.ph9465.split.us.us.preheader ] ; 3 uses
  %.176299462.us.us = phi <16 x i32> [ %i.gpb, %.lr.ph9465.split.us.us ], [ %i.glc, %.lr.ph9465.split.us.us.preheader ]
  %niter12432 = phi i64 [ %niter12432.next.1, %.lr.ph9465.split.us.us ], [ 0, %.lr.ph9465.split.us.us.preheader ]
  %i.goa = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10769
  %i.gob = load i32, ptr %i.goa, align 4, !tbaa !67
  %i.goc = sext i32 %i.gob to i64
  %i.god = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.goc
  %i.goe = load <16 x i8>, ptr %i.god, align 16, !tbaa !100
  %i.gof = sext <16 x i8> %i.goe to <16 x i16>
  %i.gog = bitcast <16 x i16> %i.gof to <4 x i64>
  %i.goh = shufflevector <4 x i64> %i.gog, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.goi = load <32 x i8>, ptr %.130149464.us.us, align 32, !tbaa !100
  %i.goj = sext <32 x i8> %i.goi to <32 x i16>
  %i.gok = bitcast <8 x i64> %i.goh to <32 x i16>
  %i.gol = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.gok, <32 x i16> %i.goj)
  %i.gom = add <16 x i32> %i.gol, %.176299462.us.us
  %i.gon = getelementptr inbounds nuw i8, ptr %.130149464.us.us, i64 32
  %i.goo = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10769
  %i.gop = getelementptr inbounds nuw i8, ptr %i.goo, i64 4
  %i.goq = load i32, ptr %i.gop, align 4, !tbaa !67
  %i.gor = sext i32 %i.goq to i64
  %i.gos = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.gor
  %i.got = load <16 x i8>, ptr %i.gos, align 16, !tbaa !100
  %i.gou = sext <16 x i8> %i.got to <16 x i16>
  %i.gov = bitcast <16 x i16> %i.gou to <4 x i64>
  %i.gow = shufflevector <4 x i64> %i.gov, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gox = load <32 x i8>, ptr %i.gon, align 32, !tbaa !100
  %i.goy = sext <32 x i8> %i.gox to <32 x i16>
  %i.goz = bitcast <8 x i64> %i.gow to <32 x i16>
  %i.gpa = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.goz, <32 x i16> %i.goy)
  %i.gpb = add <16 x i32> %i.gpa, %i.gom          ; 3 uses
  %i.gpc = getelementptr inbounds nuw i8, ptr %.130149464.us.us, i64 64 ; 2 uses
  %indvars.iv.next10770.1 = add nuw nsw i64 %indvars.iv10769, 2 ; 2 uses
  %niter12432.next.1 = add i64 %niter12432, 2     ; 2 uses
  %niter12432.ncmp.1 = icmp eq i64 %niter12432.next.1, %unroll_iter12431
  br i1 %niter12432.ncmp.1, label %._crit_edge9466.us.loopexit12151.unr-lcssa, label %.lr.ph9465.split.us.us, !llvm.loop !1901

.lr.ph9465.split.us9471.us:                       ; preds = %.lr.ph9465.split.us9471.us.preheader, %.lr.ph9465.split.us9471.us
  %indvars.iv10762 = phi i64 [ %indvars.iv.next10763.1, %.lr.ph9465.split.us9471.us ], [ 0, %.lr.ph9465.split.us9471.us.preheader ] ; 3 uses
  %.130149464.us9472.us = phi ptr [ %i.gqp, %.lr.ph9465.split.us9471.us ], [ %.030139482.us, %.lr.ph9465.split.us9471.us.preheader ] ; 3 uses
  %.176299462.us9474.us = phi <16 x i32> [ %i.gqo, %.lr.ph9465.split.us9471.us ], [ %i.glc, %.lr.ph9465.split.us9471.us.preheader ]
  %niter12426 = phi i64 [ %niter12426.next.1, %.lr.ph9465.split.us9471.us ], [ 0, %.lr.ph9465.split.us9471.us.preheader ]
  %i.gpd = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10762
  %i.gpe = load i32, ptr %i.gpd, align 4, !tbaa !67
  %i.gpf = sext i32 %i.gpe to i64
  %i.gpg = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.gpf ; 2 uses
  %i.gph = load i64, ptr %i.gpg, align 1, !tbaa !100
  %i.gpi = insertelement <2 x i64> poison, i64 %i.gph, i64 0
  %i.gpj = getelementptr inbounds nuw i8, ptr %i.gpg, i64 %i.dos
  %i.gpk = load i64, ptr %i.gpj, align 1, !tbaa !100
  %i.gpl = insertelement <2 x i64> %i.gpi, i64 %i.gpk, i64 1
  %i.gpm = bitcast <2 x i64> %i.gpl to <16 x i8>
  %i.gpn = sext <16 x i8> %i.gpm to <16 x i16>
  %i.gpo = bitcast <16 x i16> %i.gpn to <4 x i64>
  %i.gpp = shufflevector <4 x i64> %i.gpo, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gpq = load <32 x i8>, ptr %.130149464.us9472.us, align 32, !tbaa !100
  %i.gpr = sext <32 x i8> %i.gpq to <32 x i16>
  %i.gps = bitcast <8 x i64> %i.gpp to <32 x i16>
  %i.gpt = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.gps, <32 x i16> %i.gpr)
  %i.gpu = add <16 x i32> %i.gpt, %.176299462.us9474.us
  %i.gpv = getelementptr inbounds nuw i8, ptr %.130149464.us9472.us, i64 32
  %i.gpw = getelementptr inbounds nuw [4 x i8], ptr %i.gkt, i64 %indvars.iv10762
  %i.gpx = getelementptr inbounds nuw i8, ptr %i.gpw, i64 4
  %i.gpy = load i32, ptr %i.gpx, align 4, !tbaa !67
  %i.gpz = sext i32 %i.gpy to i64
  %i.gqa = getelementptr inbounds i8, ptr %gep9491.us, i64 %i.gpz ; 2 uses
  %i.gqb = load i64, ptr %i.gqa, align 1, !tbaa !100
  %i.gqc = insertelement <2 x i64> poison, i64 %i.gqb, i64 0
  %i.gqd = getelementptr inbounds nuw i8, ptr %i.gqa, i64 %i.dos
  %i.gqe = load i64, ptr %i.gqd, align 1, !tbaa !100
  %i.gqf = insertelement <2 x i64> %i.gqc, i64 %i.gqe, i64 1
  %i.gqg = bitcast <2 x i64> %i.gqf to <16 x i8>
  %i.gqh = sext <16 x i8> %i.gqg to <16 x i16>
  %i.gqi = bitcast <16 x i16> %i.gqh to <4 x i64>
  %i.gqj = shufflevector <4 x i64> %i.gqi, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gqk = load <32 x i8>, ptr %i.gpv, align 32, !tbaa !100
  %i.gql = sext <32 x i8> %i.gqk to <32 x i16>
  %i.gqm = bitcast <8 x i64> %i.gqj to <32 x i16>
  %i.gqn = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.gqm, <32 x i16> %i.gql)
  %i.gqo = add <16 x i32> %i.gqn, %i.gpu          ; 3 uses
  %i.gqp = getelementptr inbounds nuw i8, ptr %.130149464.us9472.us, i64 64 ; 2 uses
  %indvars.iv.next10763.1 = add nuw nsw i64 %indvars.iv10762, 2 ; 2 uses
  %niter12426.next.1 = add i64 %niter12426, 2     ; 2 uses
  %niter12426.ncmp.1 = icmp eq i64 %niter12426.next.1, %unroll_iter12425
  br i1 %niter12426.ncmp.1, label %._crit_edge9466.us.loopexit12152.unr-lcssa, label %.lr.ph9465.split.us9471.us, !llvm.loop !1901

._crit_edge9483.loopexit:                         ; preds = %._crit_edge9466.us
  %i.gqq = and i32 %i.gka, 2147483632
  br label %._crit_edge9483

._crit_edge9483:                                  ; preds = %.noexc3367.preheader, %._crit_edge9483.loopexit, %.noexc3369
  %i.gqr = phi <16 x i32> [ zeroinitializer, %.noexc3369 ], [ %.us-phi9469.us.in, %._crit_edge9483.loopexit ], [ zeroinitializer, %.noexc3367.preheader ] ; 2 uses
  %.03022.lcssa = phi i32 [ 0, %.noexc3369 ], [ %i.gqq, %._crit_edge9483.loopexit ], [ %i.gku, %.noexc3367.preheader ] ; 3 uses
  %.03013.lcssa = phi ptr [ %i.ekr, %.noexc3369 ], [ %scevgep10765, %._crit_edge9483.loopexit ], [ %i.ekr, %.noexc3367.preheader ] ; 2 uses
  %i.gqs = shufflevector <16 x i32> %i.gqr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gqt = shufflevector <16 x i32> %i.gqr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gqu = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.gqs, <8 x i32> %i.gqt) ; 2 uses
  %i.gqv = shufflevector <8 x i32> %i.gqu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gqw = shufflevector <8 x i32> %i.gqu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gqx = add <4 x i32> %i.gqv, %i.gqw           ; 4 uses
  %shift12063 = shufflevector <4 x i32> %i.gqx, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop12064 = add nsw <4 x i32> %i.gqx, %shift12063
  %shift12066 = shufflevector <4 x i32> %i.gqx, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop12067 = add nsw <4 x i32> %i.gqx, %shift12066
  %i.gqy = or disjoint i32 %.03022.lcssa, 7
  %i.gqz = icmp slt i32 %i.gqy, %i.gka
  br i1 %i.gqz, label %.noexc3365.lr.ph, label %._crit_edge9515

.noexc3365.lr.ph:                                 ; preds = %._crit_edge9483
  %i.gra = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.grb = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1903
  %i.grc = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1903
  %i.grd = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1903
  %i.gre = load i64, ptr %i.bie, align 8, !tbaa !65, !noalias !1903 ; 2 uses
  %factor.op.mul9519 = mul i64 %i.grd, %i.gre
  %i.grf = sext i32 %i.grb to i64
  %i.grg = load i32, ptr %i.b, align 4, !tbaa !67
  %i.grh = mul nsw i32 %i.grg, %i.gjy
  %i.gri = sext i32 %i.grh to i64
  %i.grj = mul i64 %i.gre, %i.grf
  %i.grk = mul i64 %i.grj, %i.gri
  %invariant.gep9521 = getelementptr i8, ptr %i.grc, i64 %i.grk
  %i.grl = load i32, ptr %i.a, align 4, !tbaa !67
  %i.grm = mul i32 %i.gra, %i.gjz
  %i.grn = mul i32 %i.grm, %i.grl
  %i.gro = sext i32 %i.grn to i64
  %invariant.gep9522 = getelementptr i8, ptr %invariant.gep9521, i64 %i.gro
  %i.grp = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.grq = icmp sgt i32 %i.grp, 0
  %i.grr = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.grs = icmp eq i32 %i.gra, 8
  %i.grt = add i32 %i.grp, -1
  %i.gru = zext i32 %i.grt to i64
  %i.grv = shl nuw nsw i64 %i.gru, 4              ; 2 uses
  %wide.trip.count10788 = zext i32 %i.grp to i64  ; 5 uses
  %i.grw = add nsw i64 %wide.trip.count10788, -1  ; 2 uses
  %xtraiter12439 = and i64 %wide.trip.count10788, 1
  %i.grx = icmp eq i64 %i.grw, 0
  %unroll_iter12443 = and i64 %wide.trip.count10788, 2147483646
  %lcmp.mod12440.not = icmp eq i64 %xtraiter12439, 0
  %lcmp.mod12442 = trunc i32 %i.grp to i1
  %xtraiter12445 = and i64 %wide.trip.count10788, 1
  %i.gry = icmp eq i64 %i.grw, 0
  %unroll_iter12449 = and i64 %wide.trip.count10788, 2147483646
  %lcmp.mod12446.not = icmp eq i64 %xtraiter12445, 0
  %lcmp.mod12448 = trunc i32 %i.grp to i1
  br label %.noexc3365

.noexc3365:                                       ; preds = %.noexc3365.lr.ph, %._crit_edge9507
  %.230159514 = phi ptr [ %.03013.lcssa, %.noexc3365.lr.ph ], [ %.33016.lcssa, %._crit_edge9507 ] ; 7 uses
  %.130239513 = phi i32 [ %.03022.lcssa, %.noexc3365.lr.ph ], [ %i.gtz, %._crit_edge9507 ] ; 2 uses
  %i.grz = phi <8 x i32> [ zeroinitializer, %.noexc3365.lr.ph ], [ %i.gty, %._crit_edge9507 ] ; 5 uses
  %i.gsa = sdiv i32 %.130239513, %i.gra
  %i.gsb = sext i32 %i.gsa to i64
  %.reass9520 = mul i64 %factor.op.mul9519, %i.gsb
  %gep9523 = getelementptr i8, ptr %invariant.gep9522, i64 %.reass9520 ; 6 uses
  br i1 %i.grq, label %.lr.ph9506, label %._crit_edge9507

.lr.ph9506:                                       ; preds = %.noexc3365
  br i1 %i.grs, label %.lr.ph9506.split.us.preheader, label %.lr.ph9506.split.preheader

.lr.ph9506.split.preheader:                       ; preds = %.lr.ph9506
  br i1 %i.grx, label %.lr.ph9506.split.epil.preheader, label %.lr.ph9506.split

.lr.ph9506.split.us.preheader:                    ; preds = %.lr.ph9506
  br i1 %i.gry, label %.lr.ph9506.split.us.epil.preheader, label %.lr.ph9506.split.us

.lr.ph9506.split.us:                              ; preds = %.lr.ph9506.split.us.preheader, %.lr.ph9506.split.us
  %indvars.iv10790 = phi i64 [ %indvars.iv.next10791.1, %.lr.ph9506.split.us ], [ 0, %.lr.ph9506.split.us.preheader ] ; 3 uses
  %.330169505.us = phi ptr [ %i.gta, %.lr.ph9506.split.us ], [ %.230159514, %.lr.ph9506.split.us.preheader ] ; 3 uses
  %.176209503.us = phi <8 x i32> [ %i.gsz, %.lr.ph9506.split.us ], [ %i.grz, %.lr.ph9506.split.us.preheader ]
  %niter12450 = phi i64 [ %niter12450.next.1, %.lr.ph9506.split.us ], [ 0, %.lr.ph9506.split.us.preheader ]
  %i.gsc = getelementptr inbounds nuw [4 x i8], ptr %i.grr, i64 %indvars.iv10790
  %i.gsd = load i32, ptr %i.gsc, align 4, !tbaa !67
  %i.gse = sext i32 %i.gsd to i64
  %i.gsf = getelementptr inbounds i8, ptr %gep9523, i64 %i.gse
  %i.gsg = load <8 x i8>, ptr %i.gsf, align 1, !tbaa !100
  %i.gsh = load <16 x i8>, ptr %.330169505.us, align 16, !tbaa !100
  %i.gsi = sext <16 x i8> %i.gsh to <16 x i16>
  %i.gsj = shufflevector <8 x i8> %i.gsg, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gsk = sext <16 x i8> %i.gsj to <16 x i16>
  %i.gsl = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gsk, <16 x i16> %i.gsi)
  %i.gsm = add <8 x i32> %i.gsl, %.176209503.us
  %i.gsn = getelementptr inbounds nuw i8, ptr %.330169505.us, i64 16
  %i.gso = getelementptr inbounds nuw [4 x i8], ptr %i.grr, i64 %indvars.iv10790
  %i.gsp = getelementptr inbounds nuw i8, ptr %i.gso, i64 4
  %i.gsq = load i32, ptr %i.gsp, align 4, !tbaa !67
  %i.gsr = sext i32 %i.gsq to i64
  %i.gss = getelementptr inbounds i8, ptr %gep9523, i64 %i.gsr
  %i.gst = load <8 x i8>, ptr %i.gss, align 1, !tbaa !100
  %i.gsu = load <16 x i8>, ptr %i.gsn, align 16, !tbaa !100
  %i.gsv = sext <16 x i8> %i.gsu to <16 x i16>
  %i.gsw = shufflevector <8 x i8> %i.gst, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gsx = sext <16 x i8> %i.gsw to <16 x i16>
  %i.gsy = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gsx, <16 x i16> %i.gsv)
  %i.gsz = add <8 x i32> %i.gsy, %i.gsm           ; 3 uses
  %i.gta = getelementptr inbounds nuw i8, ptr %.330169505.us, i64 32 ; 2 uses
  %indvars.iv.next10791.1 = add nuw nsw i64 %indvars.iv10790, 2 ; 2 uses
  %niter12450.next.1 = add i64 %niter12450, 2     ; 2 uses
  %niter12450.ncmp.1 = icmp eq i64 %niter12450.next.1, %unroll_iter12449
  br i1 %niter12450.ncmp.1, label %._crit_edge9507.loopexit.unr-lcssa, label %.lr.ph9506.split.us, !llvm.loop !1906

._crit_edge9507.loopexit.unr-lcssa:               ; preds = %.lr.ph9506.split.us
  br i1 %lcmp.mod12446.not, label %._crit_edge9507.loopexit, label %.lr.ph9506.split.us.epil.preheader

.lr.ph9506.split.us.epil.preheader:               ; preds = %._crit_edge9507.loopexit.unr-lcssa, %.lr.ph9506.split.us.preheader
  %indvars.iv10790.epil.init = phi i64 [ 0, %.lr.ph9506.split.us.preheader ], [ %indvars.iv.next10791.1, %._crit_edge9507.loopexit.unr-lcssa ]
  %.330169505.us.epil.init = phi ptr [ %.230159514, %.lr.ph9506.split.us.preheader ], [ %i.gta, %._crit_edge9507.loopexit.unr-lcssa ]
  %.176209503.us.epil.init = phi <8 x i32> [ %i.grz, %.lr.ph9506.split.us.preheader ], [ %i.gsz, %._crit_edge9507.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12448)
  %i.gtb = getelementptr inbounds nuw [4 x i8], ptr %i.grr, i64 %indvars.iv10790.epil.init
  %i.gtc = load i32, ptr %i.gtb, align 4, !tbaa !67
  %i.gtd = sext i32 %i.gtc to i64
  %i.gte = getelementptr inbounds i8, ptr %gep9523, i64 %i.gtd
  %i.gtf = load <8 x i8>, ptr %i.gte, align 1, !tbaa !100
  %i.gtg = load <16 x i8>, ptr %.330169505.us.epil.init, align 16, !tbaa !100
  %i.gth = sext <16 x i8> %i.gtg to <16 x i16>
  %i.gti = shufflevector <8 x i8> %i.gtf, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gtj = sext <16 x i8> %i.gti to <16 x i16>
  %i.gtk = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gtj, <16 x i16> %i.gth)
  %i.gtl = add <8 x i32> %i.gtk, %.176209503.us.epil.init
  br label %._crit_edge9507.loopexit

._crit_edge9507.loopexit:                         ; preds = %._crit_edge9507.loopexit.unr-lcssa, %.lr.ph9506.split.us.epil.preheader
  %.lcssa12239 = phi <8 x i32> [ %i.gsz, %._crit_edge9507.loopexit.unr-lcssa ], [ %i.gtl, %.lr.ph9506.split.us.epil.preheader ]
  %scevgep10792 = getelementptr i8, ptr %.230159514, i64 16
  %scevgep10793 = getelementptr i8, ptr %scevgep10792, i64 %i.grv
  br label %._crit_edge9507

._crit_edge9507.loopexit10025.unr-lcssa:          ; preds = %.lr.ph9506.split
  br i1 %lcmp.mod12440.not, label %._crit_edge9507.loopexit10025, label %.lr.ph9506.split.epil.preheader

.lr.ph9506.split.epil.preheader:                  ; preds = %._crit_edge9507.loopexit10025.unr-lcssa, %.lr.ph9506.split.preheader
  %indvars.iv10783.epil.init = phi i64 [ 0, %.lr.ph9506.split.preheader ], [ %indvars.iv.next10784.1, %._crit_edge9507.loopexit10025.unr-lcssa ]
  %.330169505.epil.init = phi ptr [ %.230159514, %.lr.ph9506.split.preheader ], [ %i.gvc, %._crit_edge9507.loopexit10025.unr-lcssa ]
  %.176209503.epil.init = phi <8 x i32> [ %i.grz, %.lr.ph9506.split.preheader ], [ %i.gvb, %._crit_edge9507.loopexit10025.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12442)
  %i.gtm = getelementptr inbounds nuw [4 x i8], ptr %i.grr, i64 %indvars.iv10783.epil.init
  %i.gtn = load i32, ptr %i.gtm, align 4, !tbaa !67
  %i.gto = sext i32 %i.gtn to i64
  %i.gtp = getelementptr inbounds i8, ptr %gep9523, i64 %i.gto
  %i.gtq = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gtp, <8 x i32> %i.eky, <8 x i32> splat (i32 -1), i8 1)
  %i.gtr = load <16 x i8>, ptr %.330169505.epil.init, align 16, !tbaa !100
  %i.gts = sext <16 x i8> %i.gtr to <16 x i16>
  %i.gtt = shufflevector <8 x i32> %i.gtq, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gtu = trunc <16 x i32> %i.gtt to <16 x i8>
  %i.gtv = sext <16 x i8> %i.gtu to <16 x i16>
  %i.gtw = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gtv, <16 x i16> %i.gts)
  %i.gtx = add <8 x i32> %i.gtw, %.176209503.epil.init
  br label %._crit_edge9507.loopexit10025

._crit_edge9507.loopexit10025:                    ; preds = %._crit_edge9507.loopexit10025.unr-lcssa, %.lr.ph9506.split.epil.preheader
  %.lcssa12238 = phi <8 x i32> [ %i.gvb, %._crit_edge9507.loopexit10025.unr-lcssa ], [ %i.gtx, %.lr.ph9506.split.epil.preheader ]
  %scevgep10785 = getelementptr i8, ptr %.230159514, i64 16
  %scevgep10786 = getelementptr i8, ptr %scevgep10785, i64 %i.grv
  br label %._crit_edge9507

._crit_edge9507:                                  ; preds = %._crit_edge9507.loopexit10025, %._crit_edge9507.loopexit, %.noexc3365
  %i.gty = phi <8 x i32> [ %i.grz, %.noexc3365 ], [ %.lcssa12239, %._crit_edge9507.loopexit ], [ %.lcssa12238, %._crit_edge9507.loopexit10025 ] ; 2 uses
  %.33016.lcssa = phi ptr [ %.230159514, %.noexc3365 ], [ %scevgep10793, %._crit_edge9507.loopexit ], [ %scevgep10786, %._crit_edge9507.loopexit10025 ] ; 2 uses
  %i.gtz = add nuw nsw i32 %.130239513, 8         ; 3 uses
  %i.gua = or disjoint i32 %i.gtz, 7
  %i.gub = icmp slt i32 %i.gua, %i.gka
  br i1 %i.gub, label %.noexc3365, label %._crit_edge9515, !llvm.loop !1907

.lr.ph9506.split:                                 ; preds = %.lr.ph9506.split.preheader, %.lr.ph9506.split
  %indvars.iv10783 = phi i64 [ %indvars.iv.next10784.1, %.lr.ph9506.split ], [ 0, %.lr.ph9506.split.preheader ] ; 3 uses
  %.330169505 = phi ptr [ %i.gvc, %.lr.ph9506.split ], [ %.230159514, %.lr.ph9506.split.preheader ] ; 3 uses
  %.176209503 = phi <8 x i32> [ %i.gvb, %.lr.ph9506.split ], [ %i.grz, %.lr.ph9506.split.preheader ]
  %niter12444 = phi i64 [ %niter12444.next.1, %.lr.ph9506.split ], [ 0, %.lr.ph9506.split.preheader ]
  %i.guc = getelementptr inbounds nuw [4 x i8], ptr %i.grr, i64 %indvars.iv10783
  %i.gud = load i32, ptr %i.guc, align 4, !tbaa !67
  %i.gue = sext i32 %i.gud to i64
  %i.guf = getelementptr inbounds i8, ptr %gep9523, i64 %i.gue
  %i.gug = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.guf, <8 x i32> %i.eky, <8 x i32> splat (i32 -1), i8 1)
  %i.guh = load <16 x i8>, ptr %.330169505, align 16, !tbaa !100
  %i.gui = sext <16 x i8> %i.guh to <16 x i16>
  %i.guj = shufflevector <8 x i32> %i.gug, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.guk = trunc <16 x i32> %i.guj to <16 x i8>
  %i.gul = sext <16 x i8> %i.guk to <16 x i16>
  %i.gum = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.gul, <16 x i16> %i.gui)
  %i.gun = add <8 x i32> %i.gum, %.176209503
  %i.guo = getelementptr inbounds nuw i8, ptr %.330169505, i64 16
  %i.gup = getelementptr inbounds nuw [4 x i8], ptr %i.grr, i64 %indvars.iv10783
  %i.guq = getelementptr inbounds nuw i8, ptr %i.gup, i64 4
  %i.gur = load i32, ptr %i.guq, align 4, !tbaa !67
  %i.gus = sext i32 %i.gur to i64
  %i.gut = getelementptr inbounds i8, ptr %gep9523, i64 %i.gus
  %i.guu = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gut, <8 x i32> %i.eky, <8 x i32> splat (i32 -1), i8 1)
  %i.guv = load <16 x i8>, ptr %i.guo, align 16, !tbaa !100
  %i.guw = sext <16 x i8> %i.guv to <16 x i16>
  %i.gux = shufflevector <8 x i32> %i.guu, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.guy = trunc <16 x i32> %i.gux to <16 x i8>
  %i.guz = sext <16 x i8> %i.guy to <16 x i16>
  %i.gva = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.guz, <16 x i16> %i.guw)
  %i.gvb = add <8 x i32> %i.gva, %i.gun           ; 3 uses
  %i.gvc = getelementptr inbounds nuw i8, ptr %.330169505, i64 32 ; 2 uses
  %indvars.iv.next10784.1 = add nuw nsw i64 %indvars.iv10783, 2 ; 2 uses
  %niter12444.next.1 = add i64 %niter12444, 2     ; 2 uses
  %niter12444.ncmp.1 = icmp eq i64 %niter12444.next.1, %unroll_iter12443
  br i1 %niter12444.ncmp.1, label %._crit_edge9507.loopexit10025.unr-lcssa, label %.lr.ph9506.split, !llvm.loop !1906

._crit_edge9515:                                  ; preds = %._crit_edge9507, %._crit_edge9483
  %i.gvd = phi <8 x i32> [ zeroinitializer, %._crit_edge9483 ], [ %i.gty, %._crit_edge9507 ] ; 4 uses
  %.13023.lcssa = phi i32 [ %.03022.lcssa, %._crit_edge9483 ], [ %i.gtz, %._crit_edge9507 ] ; 6 uses
  %.23015.lcssa = phi ptr [ %.03013.lcssa, %._crit_edge9483 ], [ %.33016.lcssa, %._crit_edge9507 ] ; 3 uses
  %30 = shufflevector <8 x i32> %i.gvd, <8 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gve = shufflevector <8 x i32> %i.gvd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %31 = add <4 x i32> %30, %i.gve                 ; 2 uses
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %33 = add <4 x i32> %32, %31
  %foldExtExtBinop12069 = add nsw <4 x i32> %foldExtExtBinop12064, %33
  %34 = extractelement <4 x i32> %foldExtExtBinop12069, i64 0 ; 3 uses
  %35 = shufflevector <8 x i32> %i.gvd, <8 x i32> poison, <4 x i32> <i32 6, i32 7, i32 6, i32 7>
  %i.gvf = shufflevector <8 x i32> %i.gvd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %36 = add <4 x i32> %35, %i.gvf                 ; 2 uses
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %38 = add <4 x i32> %37, %36
  %shift12071 = shufflevector <4 x i32> %foldExtExtBinop12067, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop12072 = add nsw <4 x i32> %shift12071, %38
  %39 = extractelement <4 x i32> %foldExtExtBinop12072, i64 0 ; 3 uses
  %i.gvg = or disjoint i32 %.13023.lcssa, 1
  %i.gvh = icmp slt i32 %i.gvg, %i.gka
  br i1 %i.gvh, label %.noexc3363.lr.ph, label %.preheader8134

.noexc3363.lr.ph:                                 ; preds = %._crit_edge9515
  %i.gvi = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1908
  %i.gvj = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1908
  %i.gvk = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1908
  %i.gvl = load i64, ptr %i.bie, align 8, !tbaa !65, !noalias !1908 ; 2 uses
  %factor.op.mul9541 = mul i64 %i.gvk, %i.gvl
  %i.gvm = sext i32 %i.gvi to i64
  %i.gvn = load i32, ptr %i.b, align 4, !tbaa !67
  %i.gvo = mul nsw i32 %i.gvn, %i.gjy
  %i.gvp = sext i32 %i.gvo to i64
  %i.gvq = mul i64 %i.gvl, %i.gvm
  %i.gvr = mul i64 %i.gvq, %i.gvp
  %invariant.gep9543 = getelementptr i8, ptr %i.gvj, i64 %i.gvr
  %i.gvs = load i32, ptr %i.a, align 4, !tbaa !67
  %i.gvt = mul nsw i32 %i.gvs, %i.gjz
  %i.gvu = sext i32 %i.gvt to i64
  %invariant.gep9544 = getelementptr i8, ptr %invariant.gep9543, i64 %i.gvu
  %i.gvv = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.gvw = icmp sgt i32 %i.gvv, 0
  %i.gvx = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.gvw, label %.noexc3363.us.preheader, label %.noexc3363.preheader

.noexc3363.preheader:                             ; preds = %.noexc3363.lr.ph
  %i.gvy = add nuw i32 %.13023.lcssa, 2
  %i.gvz = add nuw i32 %.13023.lcssa, 3
  %smax10797 = call i32 @llvm.smax.i32(i32 %i.gka, i32 %i.gvz)
  %i.gwa = add nsw i32 %smax10797, -2
  %i.gwb = sub nsw i32 %i.gwa, %.13023.lcssa
  %i.gwc = and i32 %i.gwb, -2
  %i.gwd = add i32 %i.gvy, %i.gwc
  br label %.preheader8134

.noexc3363.us.preheader:                          ; preds = %.noexc3363.lr.ph
  %i.gwe = add nsw i32 %i.gvv, -1
  %i.gwf = zext nneg i32 %i.gwe to i64
  %i.gwg = shl nuw nsw i64 %i.gwf, 2
  %i.gwh = zext nneg i32 %.13023.lcssa to i64
  %wide.trip.count10803 = zext nneg i32 %i.gvv to i64 ; 6 uses
  %min.iters.check11668 = icmp ult i32 %i.gvv, 8
  %min.iters.check11670 = icmp ult i32 %i.gvv, 32
  %i.gwi = and i64 %wide.trip.count10803, 24
  %n.vec11672 = and i64 %wide.trip.count10803, 2147483616 ; 5 uses
  %i.gwj = shl nuw nsw i64 %n.vec11672, 2
  %cmp.n11697 = icmp eq i64 %n.vec11672, %wide.trip.count10803
  %min.epilog.iters.check11704 = icmp eq i64 %i.gwi, 0
  %n.vec11706 = and i64 %wide.trip.count10803, 2147483640 ; 4 uses
  %i.gwk = shl nuw nsw i64 %n.vec11706, 2
  %cmp.n11720 = icmp eq i64 %n.vec11706, %wide.trip.count10803
  br label %iter.check11701

iter.check11701:                                  ; preds = %.noexc3363.us.preheader, %._crit_edge9529.us
  %indvars.iv10805 = phi i64 [ %i.gwh, %.noexc3363.us.preheader ], [ %indvars.iv.next10806, %._crit_edge9529.us ] ; 2 uses
  %.030059536.us = phi i32 [ %34, %.noexc3363.us.preheader ], [ %.lcssa11472, %._crit_edge9529.us ] ; 3 uses
  %.030099535.us = phi i32 [ %39, %.noexc3363.us.preheader ], [ %.lcssa11471, %._crit_edge9529.us ] ; 3 uses
  %.430179534.us = phi ptr [ %.23015.lcssa, %.noexc3363.us.preheader ], [ %scevgep10801, %._crit_edge9529.us ] ; 7 uses
  %.reass9542.us = mul i64 %factor.op.mul9541, %indvars.iv10805
  %gep9545.us = getelementptr i8, ptr %invariant.gep9544, i64 %.reass9542.us ; 41 uses
  br i1 %min.iters.check11668, label %vec.epilog.scalar.ph11702.preheader, label %vector.main.loop.iter.check11669

vector.main.loop.iter.check11669:                 ; preds = %iter.check11701
  br i1 %min.iters.check11670, label %vec.epilog.ph11705, label %vector.ph11671

vector.ph11671:                                   ; preds = %vector.main.loop.iter.check11669
  %i.gwl = getelementptr i8, ptr %.430179534.us, i64 %i.gwj
  %i.gwm = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.030059536.us, i64 0
  %i.gwn = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.030099535.us, i64 0
  br label %vector.body11673

vector.body11673:                                 ; preds = %vector.body11673, %vector.ph11671
  %index11674 = phi i64 [ 0, %vector.ph11671 ], [ %index.next11693, %vector.body11673 ] ; 3 uses
  %vec.phi11675 = phi <16 x i32> [ %i.gwm, %vector.ph11671 ], [ %i.hge, %vector.body11673 ]
  %vec.phi11676 = phi <16 x i32> [ zeroinitializer, %vector.ph11671 ], [ %i.hgf, %vector.body11673 ]
  %vec.phi11677 = phi <16 x i32> [ %i.gwn, %vector.ph11671 ], [ %i.hgk, %vector.body11673 ]
  %vec.phi11678 = phi <16 x i32> [ zeroinitializer, %vector.ph11671 ], [ %i.hgl, %vector.body11673 ]
  %i.gwo = shl i64 %index11674, 2                 ; 2 uses
  %next.gep11679 = getelementptr i8, ptr %.430179534.us, i64 %i.gwo
  %i.gwp = getelementptr i8, ptr %.430179534.us, i64 %i.gwo
  %next.gep11680 = getelementptr i8, ptr %i.gwp, i64 64
  %i.gwq = getelementptr inbounds nuw [4 x i8], ptr %i.gvx, i64 %index11674 ; 2 uses
  %i.gwr = getelementptr inbounds nuw i8, ptr %i.gwq, i64 64
  %wide.load11681 = load <16 x i32>, ptr %i.gwq, align 4, !tbaa !67
  %wide.load11682 = load <16 x i32>, ptr %i.gwr, align 4, !tbaa !67
  %i.gws = sext <16 x i32> %wide.load11681 to <16 x i64> ; 16 uses
  %i.gwt = sext <16 x i32> %wide.load11682 to <16 x i64> ; 16 uses
  %i.gwu = extractelement <16 x i64> %i.gws, i64 0
  %i.gwv = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gwu ; 2 uses
  %i.gww = extractelement <16 x i64> %i.gws, i64 1
  %i.gwx = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gww ; 2 uses
  %i.gwy = extractelement <16 x i64> %i.gws, i64 2
  %i.gwz = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gwy ; 2 uses
  %i.gxa = extractelement <16 x i64> %i.gws, i64 3
  %i.gxb = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxa ; 2 uses
  %i.gxc = extractelement <16 x i64> %i.gws, i64 4
  %i.gxd = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxc ; 2 uses
  %i.gxe = extractelement <16 x i64> %i.gws, i64 5
  %i.gxf = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxe ; 2 uses
  %i.gxg = extractelement <16 x i64> %i.gws, i64 6
  %i.gxh = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxg ; 2 uses
  %i.gxi = extractelement <16 x i64> %i.gws, i64 7
  %i.gxj = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxi ; 2 uses
  %i.gxk = extractelement <16 x i64> %i.gws, i64 8
  %i.gxl = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxk ; 2 uses
  %i.gxm = extractelement <16 x i64> %i.gws, i64 9
  %i.gxn = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxm ; 2 uses
  %i.gxo = extractelement <16 x i64> %i.gws, i64 10
  %i.gxp = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxo ; 2 uses
  %i.gxq = extractelement <16 x i64> %i.gws, i64 11
  %i.gxr = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxq ; 2 uses
  %i.gxs = extractelement <16 x i64> %i.gws, i64 12
  %i.gxt = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxs ; 2 uses
  %i.gxu = extractelement <16 x i64> %i.gws, i64 13
  %i.gxv = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxu ; 2 uses
  %i.gxw = extractelement <16 x i64> %i.gws, i64 14
  %i.gxx = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxw ; 2 uses
  %i.gxy = extractelement <16 x i64> %i.gws, i64 15
  %i.gxz = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gxy ; 2 uses
  %i.gya = extractelement <16 x i64> %i.gwt, i64 0
  %i.gyb = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gya ; 2 uses
  %i.gyc = extractelement <16 x i64> %i.gwt, i64 1
  %i.gyd = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyc ; 2 uses
  %i.gye = extractelement <16 x i64> %i.gwt, i64 2
  %i.gyf = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gye ; 2 uses
  %i.gyg = extractelement <16 x i64> %i.gwt, i64 3
  %i.gyh = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyg ; 2 uses
  %i.gyi = extractelement <16 x i64> %i.gwt, i64 4
  %i.gyj = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyi ; 2 uses
  %i.gyk = extractelement <16 x i64> %i.gwt, i64 5
  %i.gyl = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyk ; 2 uses
  %i.gym = extractelement <16 x i64> %i.gwt, i64 6
  %i.gyn = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gym ; 2 uses
  %i.gyo = extractelement <16 x i64> %i.gwt, i64 7
  %i.gyp = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyo ; 2 uses
  %i.gyq = extractelement <16 x i64> %i.gwt, i64 8
  %i.gyr = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyq ; 2 uses
  %i.gys = extractelement <16 x i64> %i.gwt, i64 9
  %i.gyt = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gys ; 2 uses
  %i.gyu = extractelement <16 x i64> %i.gwt, i64 10
  %i.gyv = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyu ; 2 uses
  %i.gyw = extractelement <16 x i64> %i.gwt, i64 11
  %i.gyx = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyw ; 2 uses
  %i.gyy = extractelement <16 x i64> %i.gwt, i64 12
  %i.gyz = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gyy ; 2 uses
  %i.gza = extractelement <16 x i64> %i.gwt, i64 13
  %i.gzb = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gza ; 2 uses
  %i.gzc = extractelement <16 x i64> %i.gwt, i64 14
  %i.gzd = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gzc ; 2 uses
  %i.gze = extractelement <16 x i64> %i.gwt, i64 15
  %i.gzf = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.gze ; 2 uses
  %i.gzg = load i8, ptr %i.gwv, align 1, !tbaa !100
  %i.gzh = load i8, ptr %i.gwx, align 1, !tbaa !100
  %i.gzi = load i8, ptr %i.gwz, align 1, !tbaa !100
  %i.gzj = load i8, ptr %i.gxb, align 1, !tbaa !100
  %i.gzk = load i8, ptr %i.gxd, align 1, !tbaa !100
  %i.gzl = load i8, ptr %i.gxf, align 1, !tbaa !100
  %i.gzm = load i8, ptr %i.gxh, align 1, !tbaa !100
  %i.gzn = load i8, ptr %i.gxj, align 1, !tbaa !100
  %i.gzo = load i8, ptr %i.gxl, align 1, !tbaa !100
  %i.gzp = load i8, ptr %i.gxn, align 1, !tbaa !100
  %i.gzq = load i8, ptr %i.gxp, align 1, !tbaa !100
  %i.gzr = load i8, ptr %i.gxr, align 1, !tbaa !100
  %i.gzs = load i8, ptr %i.gxt, align 1, !tbaa !100
  %i.gzt = load i8, ptr %i.gxv, align 1, !tbaa !100
  %i.gzu = load i8, ptr %i.gxx, align 1, !tbaa !100
  %i.gzv = load i8, ptr %i.gxz, align 1, !tbaa !100
  %i.gzw = insertelement <16 x i8> poison, i8 %i.gzg, i64 0
  %i.gzx = insertelement <16 x i8> %i.gzw, i8 %i.gzh, i64 1
  %i.gzy = insertelement <16 x i8> %i.gzx, i8 %i.gzi, i64 2
  %i.gzz = insertelement <16 x i8> %i.gzy, i8 %i.gzj, i64 3
  %i.haa = insertelement <16 x i8> %i.gzz, i8 %i.gzk, i64 4
  %i.hab = insertelement <16 x i8> %i.haa, i8 %i.gzl, i64 5
  %i.hac = insertelement <16 x i8> %i.hab, i8 %i.gzm, i64 6
  %i.had = insertelement <16 x i8> %i.hac, i8 %i.gzn, i64 7
  %i.hae = insertelement <16 x i8> %i.had, i8 %i.gzo, i64 8
  %i.haf = insertelement <16 x i8> %i.hae, i8 %i.gzp, i64 9
  %i.hag = insertelement <16 x i8> %i.haf, i8 %i.gzq, i64 10
  %i.hah = insertelement <16 x i8> %i.hag, i8 %i.gzr, i64 11
  %i.hai = insertelement <16 x i8> %i.hah, i8 %i.gzs, i64 12
  %i.haj = insertelement <16 x i8> %i.hai, i8 %i.gzt, i64 13
  %i.hak = insertelement <16 x i8> %i.haj, i8 %i.gzu, i64 14
  %i.hal = insertelement <16 x i8> %i.hak, i8 %i.gzv, i64 15
  %i.ham = load i8, ptr %i.gyb, align 1, !tbaa !100
  %i.han = load i8, ptr %i.gyd, align 1, !tbaa !100
  %i.hao = load i8, ptr %i.gyf, align 1, !tbaa !100
  %i.hap = load i8, ptr %i.gyh, align 1, !tbaa !100
  %i.haq = load i8, ptr %i.gyj, align 1, !tbaa !100
  %i.har = load i8, ptr %i.gyl, align 1, !tbaa !100
  %i.has = load i8, ptr %i.gyn, align 1, !tbaa !100
  %i.hat = load i8, ptr %i.gyp, align 1, !tbaa !100
  %i.hau = load i8, ptr %i.gyr, align 1, !tbaa !100
  %i.hav = load i8, ptr %i.gyt, align 1, !tbaa !100
  %i.haw = load i8, ptr %i.gyv, align 1, !tbaa !100
  %i.hax = load i8, ptr %i.gyx, align 1, !tbaa !100
  %i.hay = load i8, ptr %i.gyz, align 1, !tbaa !100
  %i.haz = load i8, ptr %i.gzb, align 1, !tbaa !100
  %i.hba = load i8, ptr %i.gzd, align 1, !tbaa !100
  %i.hbb = load i8, ptr %i.gzf, align 1, !tbaa !100
  %i.hbc = insertelement <16 x i8> poison, i8 %i.ham, i64 0
  %i.hbd = insertelement <16 x i8> %i.hbc, i8 %i.han, i64 1
  %i.hbe = insertelement <16 x i8> %i.hbd, i8 %i.hao, i64 2
  %i.hbf = insertelement <16 x i8> %i.hbe, i8 %i.hap, i64 3
  %i.hbg = insertelement <16 x i8> %i.hbf, i8 %i.haq, i64 4
  %i.hbh = insertelement <16 x i8> %i.hbg, i8 %i.har, i64 5
  %i.hbi = insertelement <16 x i8> %i.hbh, i8 %i.has, i64 6
  %i.hbj = insertelement <16 x i8> %i.hbi, i8 %i.hat, i64 7
  %i.hbk = insertelement <16 x i8> %i.hbj, i8 %i.hau, i64 8
  %i.hbl = insertelement <16 x i8> %i.hbk, i8 %i.hav, i64 9
  %i.hbm = insertelement <16 x i8> %i.hbl, i8 %i.haw, i64 10
  %i.hbn = insertelement <16 x i8> %i.hbm, i8 %i.hax, i64 11
  %i.hbo = insertelement <16 x i8> %i.hbn, i8 %i.hay, i64 12
  %i.hbp = insertelement <16 x i8> %i.hbo, i8 %i.haz, i64 13
  %i.hbq = insertelement <16 x i8> %i.hbp, i8 %i.hba, i64 14
  %i.hbr = insertelement <16 x i8> %i.hbq, i8 %i.hbb, i64 15
  %i.hbs = sext <16 x i8> %i.hal to <16 x i32>    ; 2 uses
  %i.hbt = sext <16 x i8> %i.hbr to <16 x i32>    ; 2 uses
  %wide.vec11683 = load <64 x i8>, ptr %next.gep11679, align 1, !tbaa !100 ; 4 uses
  %strided.vec11684 = shufflevector <64 x i8> %wide.vec11683, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11685 = shufflevector <64 x i8> %wide.vec11683, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11686 = shufflevector <64 x i8> %wide.vec11683, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11687 = shufflevector <64 x i8> %wide.vec11683, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec11688 = load <64 x i8>, ptr %next.gep11680, align 1, !tbaa !100 ; 4 uses
  %strided.vec11689 = shufflevector <64 x i8> %wide.vec11688, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11690 = shufflevector <64 x i8> %wide.vec11688, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11691 = shufflevector <64 x i8> %wide.vec11688, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11692 = shufflevector <64 x i8> %wide.vec11688, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.hbu = sext <16 x i8> %strided.vec11684 to <16 x i32>
  %i.hbv = sext <16 x i8> %strided.vec11689 to <16 x i32>
  %i.hbw = mul nsw <16 x i32> %i.hbu, %i.hbs
  %i.hbx = mul nsw <16 x i32> %i.hbv, %i.hbt
  %i.hby = add <16 x i32> %i.hbw, %vec.phi11675
  %i.hbz = add <16 x i32> %i.hbx, %vec.phi11676
  %i.hca = sext <16 x i8> %strided.vec11685 to <16 x i32>
  %i.hcb = sext <16 x i8> %strided.vec11690 to <16 x i32>
  %i.hcc = mul nsw <16 x i32> %i.hca, %i.hbs
  %i.hcd = mul nsw <16 x i32> %i.hcb, %i.hbt
  %i.hce = add <16 x i32> %i.hcc, %vec.phi11677
  %i.hcf = add <16 x i32> %i.hcd, %vec.phi11678
  %i.hcg = getelementptr inbounds nuw i8, ptr %i.gwv, i64 %i.dos
  %i.hch = getelementptr inbounds nuw i8, ptr %i.gwx, i64 %i.dos
  %i.hci = getelementptr inbounds nuw i8, ptr %i.gwz, i64 %i.dos
  %i.hcj = getelementptr inbounds nuw i8, ptr %i.gxb, i64 %i.dos
  %i.hck = getelementptr inbounds nuw i8, ptr %i.gxd, i64 %i.dos
  %i.hcl = getelementptr inbounds nuw i8, ptr %i.gxf, i64 %i.dos
  %i.hcm = getelementptr inbounds nuw i8, ptr %i.gxh, i64 %i.dos
  %i.hcn = getelementptr inbounds nuw i8, ptr %i.gxj, i64 %i.dos
  %i.hco = getelementptr inbounds nuw i8, ptr %i.gxl, i64 %i.dos
  %i.hcp = getelementptr inbounds nuw i8, ptr %i.gxn, i64 %i.dos
  %i.hcq = getelementptr inbounds nuw i8, ptr %i.gxp, i64 %i.dos
  %i.hcr = getelementptr inbounds nuw i8, ptr %i.gxr, i64 %i.dos
  %i.hcs = getelementptr inbounds nuw i8, ptr %i.gxt, i64 %i.dos
  %i.hct = getelementptr inbounds nuw i8, ptr %i.gxv, i64 %i.dos
  %i.hcu = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %i.dos
  %i.hcv = getelementptr inbounds nuw i8, ptr %i.gxz, i64 %i.dos
  %i.hcw = getelementptr inbounds nuw i8, ptr %i.gyb, i64 %i.dos
  %i.hcx = getelementptr inbounds nuw i8, ptr %i.gyd, i64 %i.dos
end_hunk_2
begin_hunk_3_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.hfr = insertelement <16 x i8> %i.hfq, i8 %i.hfb, i64 9
  %i.hfs = insertelement <16 x i8> %i.hfr, i8 %i.hfc, i64 10
  %i.hft = insertelement <16 x i8> %i.hfs, i8 %i.hfd, i64 11
  %i.hfu = insertelement <16 x i8> %i.hft, i8 %i.hfe, i64 12
  %i.hfv = insertelement <16 x i8> %i.hfu, i8 %i.hff, i64 13
  %i.hfw = insertelement <16 x i8> %i.hfv, i8 %i.hfg, i64 14
  %i.hfx = insertelement <16 x i8> %i.hfw, i8 %i.hfh, i64 15
  %i.hfy = sext <16 x i8> %i.her to <16 x i32>    ; 2 uses
  %i.hfz = sext <16 x i8> %i.hfx to <16 x i32>    ; 2 uses
  %i.hga = sext <16 x i8> %strided.vec11686 to <16 x i32>
  %i.hgb = sext <16 x i8> %strided.vec11691 to <16 x i32>
  %i.hgc = mul nsw <16 x i32> %i.hga, %i.hfy
  %i.hgd = mul nsw <16 x i32> %i.hgb, %i.hfz
  %i.hge = add <16 x i32> %i.hby, %i.hgc          ; 2 uses
  %i.hgf = add <16 x i32> %i.hbz, %i.hgd          ; 2 uses
  %i.hgg = sext <16 x i8> %strided.vec11687 to <16 x i32>
  %i.hgh = sext <16 x i8> %strided.vec11692 to <16 x i32>
  %i.hgi = mul nsw <16 x i32> %i.hgg, %i.hfy
  %i.hgj = mul nsw <16 x i32> %i.hgh, %i.hfz
  %i.hgk = add <16 x i32> %i.hce, %i.hgi          ; 2 uses
  %i.hgl = add <16 x i32> %i.hcf, %i.hgj          ; 2 uses
  %index.next11693 = add nuw i64 %index11674, 32  ; 2 uses
  %i.hgm = icmp eq i64 %index.next11693, %n.vec11672
  br i1 %i.hgm, label %middle.block11694, label %vector.body11673, !llvm.loop !1911

middle.block11694:                                ; preds = %vector.body11673
  %bin.rdx11695 = add <16 x i32> %i.hgf, %i.hge
  %i.hgn = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx11695) ; 3 uses
  %bin.rdx11696 = add <16 x i32> %i.hgl, %i.hgk
  %i.hgo = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx11696) ; 3 uses
  br i1 %cmp.n11697, label %._crit_edge9529.us, label %vec.epilog.iter.check11703

vec.epilog.iter.check11703:                       ; preds = %middle.block11694
  br i1 %min.epilog.iters.check11704, label %vec.epilog.scalar.ph11702.preheader, label %vec.epilog.ph11705, !prof !210

vec.epilog.ph11705:                               ; preds = %vector.main.loop.iter.check11669, %vec.epilog.iter.check11703
  %vec.epilog.resume.val11698 = phi i64 [ %n.vec11672, %vec.epilog.iter.check11703 ], [ 0, %vector.main.loop.iter.check11669 ]
  %bc.merge.rdx11699 = phi i32 [ %i.hgn, %vec.epilog.iter.check11703 ], [ %.030059536.us, %vector.main.loop.iter.check11669 ]
  %bc.merge.rdx11700 = phi i32 [ %i.hgo, %vec.epilog.iter.check11703 ], [ %.030099535.us, %vector.main.loop.iter.check11669 ]
  %i.hgp = getelementptr i8, ptr %.430179534.us, i64 %i.gwk
  %i.hgq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx11699, i64 0
  %i.hgr = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx11700, i64 0
  br label %vec.epilog.vector.body11707

vec.epilog.vector.body11707:                      ; preds = %vec.epilog.vector.body11707, %vec.epilog.ph11705
  %index11708 = phi i64 [ %vec.epilog.resume.val11698, %vec.epilog.ph11705 ], [ %index.next11718, %vec.epilog.vector.body11707 ] ; 3 uses
  %vec.phi11709 = phi <8 x i32> [ %i.hgq, %vec.epilog.ph11705 ], [ %i.hjj, %vec.epilog.vector.body11707 ]
  %vec.phi11710 = phi <8 x i32> [ %i.hgr, %vec.epilog.ph11705 ], [ %i.hjm, %vec.epilog.vector.body11707 ]
  %i.hgs = shl i64 %index11708, 2
  %next.gep11711 = getelementptr i8, ptr %.430179534.us, i64 %i.hgs
  %i.hgt = getelementptr inbounds nuw [4 x i8], ptr %i.gvx, i64 %index11708
  %wide.load11712 = load <8 x i32>, ptr %i.hgt, align 4, !tbaa !67
  %i.hgu = sext <8 x i32> %wide.load11712 to <8 x i64> ; 8 uses
  %i.hgv = extractelement <8 x i64> %i.hgu, i64 0
  %i.hgw = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hgv ; 2 uses
  %i.hgx = extractelement <8 x i64> %i.hgu, i64 1
  %i.hgy = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hgx ; 2 uses
  %i.hgz = extractelement <8 x i64> %i.hgu, i64 2
  %i.hha = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hgz ; 2 uses
  %i.hhb = extractelement <8 x i64> %i.hgu, i64 3
  %i.hhc = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hhb ; 2 uses
  %i.hhd = extractelement <8 x i64> %i.hgu, i64 4
  %i.hhe = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hhd ; 2 uses
  %i.hhf = extractelement <8 x i64> %i.hgu, i64 5
  %i.hhg = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hhf ; 2 uses
  %i.hhh = extractelement <8 x i64> %i.hgu, i64 6
  %i.hhi = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hhh ; 2 uses
  %i.hhj = extractelement <8 x i64> %i.hgu, i64 7
  %i.hhk = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hhj ; 2 uses
  %i.hhl = load i8, ptr %i.hgw, align 1, !tbaa !100
  %i.hhm = load i8, ptr %i.hgy, align 1, !tbaa !100
  %i.hhn = load i8, ptr %i.hha, align 1, !tbaa !100
  %i.hho = load i8, ptr %i.hhc, align 1, !tbaa !100
  %i.hhp = load i8, ptr %i.hhe, align 1, !tbaa !100
  %i.hhq = load i8, ptr %i.hhg, align 1, !tbaa !100
  %i.hhr = load i8, ptr %i.hhi, align 1, !tbaa !100
  %i.hhs = load i8, ptr %i.hhk, align 1, !tbaa !100
  %i.hht = insertelement <8 x i8> poison, i8 %i.hhl, i64 0
  %i.hhu = insertelement <8 x i8> %i.hht, i8 %i.hhm, i64 1
  %i.hhv = insertelement <8 x i8> %i.hhu, i8 %i.hhn, i64 2
  %i.hhw = insertelement <8 x i8> %i.hhv, i8 %i.hho, i64 3
  %i.hhx = insertelement <8 x i8> %i.hhw, i8 %i.hhp, i64 4
  %i.hhy = insertelement <8 x i8> %i.hhx, i8 %i.hhq, i64 5
  %i.hhz = insertelement <8 x i8> %i.hhy, i8 %i.hhr, i64 6
  %i.hia = insertelement <8 x i8> %i.hhz, i8 %i.hhs, i64 7
  %i.hib = sext <8 x i8> %i.hia to <8 x i32>      ; 2 uses
  %wide.vec11713 = load <32 x i8>, ptr %next.gep11711, align 1, !tbaa !100 ; 4 uses
  %strided.vec11714 = shufflevector <32 x i8> %wide.vec11713, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec11715 = shufflevector <32 x i8> %wide.vec11713, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec11716 = shufflevector <32 x i8> %wide.vec11713, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec11717 = shufflevector <32 x i8> %wide.vec11713, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.hic = sext <8 x i8> %strided.vec11714 to <8 x i32>
  %i.hid = mul nsw <8 x i32> %i.hic, %i.hib
  %i.hie = add <8 x i32> %i.hid, %vec.phi11709
  %i.hif = sext <8 x i8> %strided.vec11715 to <8 x i32>
  %i.hig = mul nsw <8 x i32> %i.hif, %i.hib
  %i.hih = add <8 x i32> %i.hig, %vec.phi11710
  %i.hii = getelementptr inbounds nuw i8, ptr %i.hgw, i64 %i.dos
  %i.hij = getelementptr inbounds nuw i8, ptr %i.hgy, i64 %i.dos
  %i.hik = getelementptr inbounds nuw i8, ptr %i.hha, i64 %i.dos
  %i.hil = getelementptr inbounds nuw i8, ptr %i.hhc, i64 %i.dos
  %i.him = getelementptr inbounds nuw i8, ptr %i.hhe, i64 %i.dos
  %i.hin = getelementptr inbounds nuw i8, ptr %i.hhg, i64 %i.dos
  %i.hio = getelementptr inbounds nuw i8, ptr %i.hhi, i64 %i.dos
  %i.hip = getelementptr inbounds nuw i8, ptr %i.hhk, i64 %i.dos
  %i.hiq = load i8, ptr %i.hii, align 1, !tbaa !100
  %i.hir = load i8, ptr %i.hij, align 1, !tbaa !100
  %i.his = load i8, ptr %i.hik, align 1, !tbaa !100
  %i.hit = load i8, ptr %i.hil, align 1, !tbaa !100
  %i.hiu = load i8, ptr %i.him, align 1, !tbaa !100
  %i.hiv = load i8, ptr %i.hin, align 1, !tbaa !100
  %i.hiw = load i8, ptr %i.hio, align 1, !tbaa !100
  %i.hix = load i8, ptr %i.hip, align 1, !tbaa !100
  %i.hiy = insertelement <8 x i8> poison, i8 %i.hiq, i64 0
  %i.hiz = insertelement <8 x i8> %i.hiy, i8 %i.hir, i64 1
  %i.hja = insertelement <8 x i8> %i.hiz, i8 %i.his, i64 2
  %i.hjb = insertelement <8 x i8> %i.hja, i8 %i.hit, i64 3
  %i.hjc = insertelement <8 x i8> %i.hjb, i8 %i.hiu, i64 4
  %i.hjd = insertelement <8 x i8> %i.hjc, i8 %i.hiv, i64 5
  %i.hje = insertelement <8 x i8> %i.hjd, i8 %i.hiw, i64 6
  %i.hjf = insertelement <8 x i8> %i.hje, i8 %i.hix, i64 7
  %i.hjg = sext <8 x i8> %i.hjf to <8 x i32>      ; 2 uses
  %i.hjh = sext <8 x i8> %strided.vec11716 to <8 x i32>
  %i.hji = mul nsw <8 x i32> %i.hjh, %i.hjg
  %i.hjj = add <8 x i32> %i.hie, %i.hji           ; 2 uses
  %i.hjk = sext <8 x i8> %strided.vec11717 to <8 x i32>
  %i.hjl = mul nsw <8 x i32> %i.hjk, %i.hjg
  %i.hjm = add <8 x i32> %i.hih, %i.hjl           ; 2 uses
  %index.next11718 = add nuw i64 %index11708, 8   ; 2 uses
  %i.hjn = icmp eq i64 %index.next11718, %n.vec11706
  br i1 %i.hjn, label %vec.epilog.middle.block11719, label %vec.epilog.vector.body11707, !llvm.loop !1912

vec.epilog.middle.block11719:                     ; preds = %vec.epilog.vector.body11707
  %i.hjo = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hjj) ; 2 uses
  %i.hjp = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hjm) ; 2 uses
  br i1 %cmp.n11720, label %._crit_edge9529.us, label %vec.epilog.scalar.ph11702.preheader

vec.epilog.scalar.ph11702.preheader:              ; preds = %iter.check11701, %vec.epilog.iter.check11703, %vec.epilog.middle.block11719
  %indvars.iv10798.ph = phi i64 [ 0, %iter.check11701 ], [ %n.vec11672, %vec.epilog.iter.check11703 ], [ %n.vec11706, %vec.epilog.middle.block11719 ]
  %.130069526.us.ph = phi i32 [ %.030059536.us, %iter.check11701 ], [ %i.hgn, %vec.epilog.iter.check11703 ], [ %i.hjo, %vec.epilog.middle.block11719 ]
  %.130109525.us.ph = phi i32 [ %.030099535.us, %iter.check11701 ], [ %i.hgo, %vec.epilog.iter.check11703 ], [ %i.hjp, %vec.epilog.middle.block11719 ]
  %.530189524.us.ph = phi ptr [ %.430179534.us, %iter.check11701 ], [ %i.gwl, %vec.epilog.iter.check11703 ], [ %i.hgp, %vec.epilog.middle.block11719 ]
  br label %vec.epilog.scalar.ph11702

vec.epilog.scalar.ph11702:                        ; preds = %vec.epilog.scalar.ph11702.preheader, %vec.epilog.scalar.ph11702
  %indvars.iv10798 = phi i64 [ %indvars.iv.next10799, %vec.epilog.scalar.ph11702 ], [ %indvars.iv10798.ph, %vec.epilog.scalar.ph11702.preheader ] ; 2 uses
  %.130069526.us = phi i32 [ %i.hkm, %vec.epilog.scalar.ph11702 ], [ %.130069526.us.ph, %vec.epilog.scalar.ph11702.preheader ]
  %.130109525.us = phi i32 [ %i.hkr, %vec.epilog.scalar.ph11702 ], [ %.130109525.us.ph, %vec.epilog.scalar.ph11702.preheader ]
  %.530189524.us = phi ptr [ %i.hks, %vec.epilog.scalar.ph11702 ], [ %.530189524.us.ph, %vec.epilog.scalar.ph11702.preheader ] ; 5 uses
  %i.hjq = getelementptr inbounds nuw [4 x i8], ptr %i.gvx, i64 %indvars.iv10798
  %i.hjr = load i32, ptr %i.hjq, align 4, !tbaa !67
  %i.hjs = sext i32 %i.hjr to i64
  %i.hjt = getelementptr inbounds i8, ptr %gep9545.us, i64 %i.hjs ; 2 uses
  %i.hju = load i8, ptr %i.hjt, align 1, !tbaa !100
  %i.hjv = sext i8 %i.hju to i32                  ; 2 uses
  %i.hjw = load i8, ptr %.530189524.us, align 1, !tbaa !100
  %i.hjx = sext i8 %i.hjw to i32
  %i.hjy = mul nsw i32 %i.hjx, %i.hjv
  %i.hjz = add nsw i32 %i.hjy, %.130069526.us
  %i.hka = getelementptr inbounds nuw i8, ptr %.530189524.us, i64 1
  %i.hkb = load i8, ptr %i.hka, align 1, !tbaa !100
  %i.hkc = sext i8 %i.hkb to i32
  %i.hkd = mul nsw i32 %i.hkc, %i.hjv
  %i.hke = add nsw i32 %i.hkd, %.130109525.us
  %i.hkf = getelementptr inbounds nuw i8, ptr %i.hjt, i64 %i.dos
  %i.hkg = load i8, ptr %i.hkf, align 1, !tbaa !100
  %i.hkh = sext i8 %i.hkg to i32                  ; 2 uses
  %i.hki = getelementptr inbounds nuw i8, ptr %.530189524.us, i64 2
  %i.hkj = load i8, ptr %i.hki, align 1, !tbaa !100
  %i.hkk = sext i8 %i.hkj to i32
  %i.hkl = mul nsw i32 %i.hkk, %i.hkh
  %i.hkm = add nsw i32 %i.hjz, %i.hkl             ; 2 uses
  %i.hkn = getelementptr inbounds nuw i8, ptr %.530189524.us, i64 3
  %i.hko = load i8, ptr %i.hkn, align 1, !tbaa !100
  %i.hkp = sext i8 %i.hko to i32
  %i.hkq = mul nsw i32 %i.hkp, %i.hkh
  %i.hkr = add nsw i32 %i.hke, %i.hkq             ; 2 uses
  %i.hks = getelementptr inbounds nuw i8, ptr %.530189524.us, i64 4
  %indvars.iv.next10799 = add nuw nsw i64 %indvars.iv10798, 1 ; 2 uses
  %exitcond10804.not = icmp eq i64 %indvars.iv.next10799, %wide.trip.count10803
  br i1 %exitcond10804.not, label %._crit_edge9529.us, label %vec.epilog.scalar.ph11702, !llvm.loop !1913

._crit_edge9529.us:                               ; preds = %vec.epilog.scalar.ph11702, %vec.epilog.middle.block11719, %middle.block11694
  %.lcssa11472 = phi i32 [ %i.hjo, %vec.epilog.middle.block11719 ], [ %i.hgn, %middle.block11694 ], [ %i.hkm, %vec.epilog.scalar.ph11702 ] ; 2 uses
  %.lcssa11471 = phi i32 [ %i.hjp, %vec.epilog.middle.block11719 ], [ %i.hgo, %middle.block11694 ], [ %i.hkr, %vec.epilog.scalar.ph11702 ] ; 2 uses
  %scevgep10800 = getelementptr i8, ptr %.430179534.us, i64 4
  %scevgep10801 = getelementptr i8, ptr %scevgep10800, i64 %i.gwg ; 2 uses
  %indvars.iv.next10806 = add nuw nsw i64 %indvars.iv10805, 2 ; 3 uses
  %i.hkt = trunc i64 %indvars.iv.next10806 to i32
  %i.hku = or i32 %i.hkt, 1
  %i.hkv = icmp slt i32 %i.hku, %i.gka
  br i1 %i.hkv, label %iter.check11701, label %.preheader8134.loopexit, !llvm.loop !1914

.preheader8134.loopexit:                          ; preds = %._crit_edge9529.us
  %i.hkw = trunc nuw i64 %indvars.iv.next10806 to i32
  br label %.preheader8134

.preheader8134:                                   ; preds = %.noexc3363.preheader, %.preheader8134.loopexit, %._crit_edge9515
  %.23024.lcssa = phi i32 [ %.13023.lcssa, %._crit_edge9515 ], [ %i.hkw, %.preheader8134.loopexit ], [ %i.gwd, %.noexc3363.preheader ] ; 2 uses
  %.43017.lcssa = phi ptr [ %.23015.lcssa, %._crit_edge9515 ], [ %scevgep10801, %.preheader8134.loopexit ], [ %.23015.lcssa, %.noexc3363.preheader ]
  %.03009.lcssa = phi i32 [ %39, %._crit_edge9515 ], [ %.lcssa11471, %.preheader8134.loopexit ], [ %39, %.noexc3363.preheader ] ; 3 uses
  %.03005.lcssa = phi i32 [ %34, %._crit_edge9515 ], [ %.lcssa11472, %.preheader8134.loopexit ], [ %34, %.noexc3363.preheader ] ; 3 uses
  %i.hkx = icmp slt i32 %.23024.lcssa, %i.gka
  br i1 %i.hkx, label %.noexc3361.lr.ph, label %._crit_edge9563

.noexc3361.lr.ph:                                 ; preds = %.preheader8134
  %i.hky = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1915
  %i.hkz = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1915
  %i.hla = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1915
  %i.hlb = load i64, ptr %i.bie, align 8, !tbaa !65, !noalias !1915 ; 2 uses
  %factor.op.mul9566 = mul i64 %i.hla, %i.hlb
  %i.hlc = sext i32 %i.hky to i64
  %i.hld = load i32, ptr %i.b, align 4, !tbaa !67
  %i.hle = mul nsw i32 %i.hld, %i.gjy
  %i.hlf = sext i32 %i.hle to i64
  %i.hlg = mul i64 %i.hlb, %i.hlc
  %i.hlh = mul i64 %i.hlg, %i.hlf
  %invariant.gep9568 = getelementptr i8, ptr %i.hkz, i64 %i.hlh
  %i.hli = load i32, ptr %i.a, align 4, !tbaa !67
  %i.hlj = mul nsw i32 %i.hli, %i.gjz
  %i.hlk = sext i32 %i.hlj to i64
  %invariant.gep9569 = getelementptr i8, ptr %invariant.gep9568, i64 %i.hlk
  %i.hll = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.hlm = icmp sgt i32 %i.hll, 0
  %i.hln = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.hlm, label %.noexc3361.us.preheader, label %._crit_edge9563

.noexc3361.us.preheader:                          ; preds = %.noexc3361.lr.ph
  %i.hlo = add nsw i32 %i.hll, -1
  %i.hlp = zext nneg i32 %i.hlo to i64
  %i.hlq = shl nuw nsw i64 %i.hlp, 1
  %i.hlr = zext i32 %.23024.lcssa to i64
  %wide.trip.count10813 = zext nneg i32 %i.hll to i64 ; 6 uses
  %min.iters.check11606 = icmp ult i32 %i.hll, 8
  %min.iters.check11608 = icmp ult i32 %i.hll, 64
  %i.hls = and i64 %wide.trip.count10813, 56
  %n.vec11610 = and i64 %wide.trip.count10813, 2147483584 ; 5 uses
  %i.hlt = shl nuw nsw i64 %n.vec11610, 1
  %cmp.n11643 = icmp eq i64 %n.vec11610, %wide.trip.count10813
  %min.epilog.iters.check11649 = icmp eq i64 %i.hls, 0
  %n.vec11651 = and i64 %wide.trip.count10813, 2147483640 ; 4 uses
  %i.hlu = shl nuw nsw i64 %n.vec11651, 1
  %cmp.n11663 = icmp eq i64 %n.vec11651, %wide.trip.count10813
  br label %iter.check11646

iter.check11646:                                  ; preds = %.noexc3361.us.preheader, %._crit_edge9555.us
  %indvars.iv10815 = phi i64 [ %i.hlr, %.noexc3361.us.preheader ], [ %indvars.iv.next10816, %._crit_edge9555.us ] ; 2 uses
  %.230079562.us = phi i32 [ %.03005.lcssa, %.noexc3361.us.preheader ], [ %.lcssa11474, %._crit_edge9555.us ] ; 3 uses
  %.230119561.us = phi i32 [ %.03009.lcssa, %.noexc3361.us.preheader ], [ %.lcssa11473, %._crit_edge9555.us ] ; 3 uses
  %.630199560.us = phi ptr [ %.43017.lcssa, %.noexc3361.us.preheader ], [ %scevgep10811, %._crit_edge9555.us ] ; 9 uses
  %.reass9567.us = mul i64 %factor.op.mul9566, %indvars.iv10815
  %gep9570.us = getelementptr i8, ptr %invariant.gep9569, i64 %.reass9567.us ; 73 uses
  br i1 %min.iters.check11606, label %vec.epilog.scalar.ph11647.preheader, label %vector.main.loop.iter.check11607

vector.main.loop.iter.check11607:                 ; preds = %iter.check11646
  br i1 %min.iters.check11608, label %vec.epilog.ph11650, label %vector.ph11609

vector.ph11609:                                   ; preds = %vector.main.loop.iter.check11607
  %i.hlv = getelementptr i8, ptr %.630199560.us, i64 %i.hlt
  %i.hlw = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.230079562.us, i64 0
  %i.hlx = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.230119561.us, i64 0
  br label %vector.body11611

vector.body11611:                                 ; preds = %vector.body11611, %vector.ph11609
  %index11612 = phi i64 [ 0, %vector.ph11609 ], [ %index.next11636, %vector.body11611 ] ; 3 uses
  %vec.phi = phi <16 x i32> [ %i.hlw, %vector.ph11609 ], [ %i.hws, %vector.body11611 ]
  %vec.phi11613 = phi <16 x i32> [ zeroinitializer, %vector.ph11609 ], [ %i.hwt, %vector.body11611 ]
  %vec.phi11614 = phi <16 x i32> [ zeroinitializer, %vector.ph11609 ], [ %i.hwu, %vector.body11611 ]
  %vec.phi11615 = phi <16 x i32> [ zeroinitializer, %vector.ph11609 ], [ %i.hwv, %vector.body11611 ]
  %vec.phi11616 = phi <16 x i32> [ %i.hlx, %vector.ph11609 ], [ %i.hxe, %vector.body11611 ]
  %vec.phi11617 = phi <16 x i32> [ zeroinitializer, %vector.ph11609 ], [ %i.hxf, %vector.body11611 ]
  %vec.phi11618 = phi <16 x i32> [ zeroinitializer, %vector.ph11609 ], [ %i.hxg, %vector.body11611 ]
  %vec.phi11619 = phi <16 x i32> [ zeroinitializer, %vector.ph11609 ], [ %i.hxh, %vector.body11611 ]
  %i.hly = shl i64 %index11612, 1                 ; 4 uses
  %next.gep = getelementptr i8, ptr %.630199560.us, i64 %i.hly
  %i.hlz = getelementptr i8, ptr %.630199560.us, i64 %i.hly
  %next.gep11620 = getelementptr i8, ptr %i.hlz, i64 32
  %i.hma = getelementptr i8, ptr %.630199560.us, i64 %i.hly
  %next.gep11621 = getelementptr i8, ptr %i.hma, i64 64
  %i.hmb = getelementptr i8, ptr %.630199560.us, i64 %i.hly
  %next.gep11622 = getelementptr i8, ptr %i.hmb, i64 96
  %i.hmc = getelementptr inbounds nuw [4 x i8], ptr %i.hln, i64 %index11612 ; 4 uses
  %i.hmd = getelementptr inbounds nuw i8, ptr %i.hmc, i64 64
  %i.hme = getelementptr inbounds nuw i8, ptr %i.hmc, i64 128
  %i.hmf = getelementptr inbounds nuw i8, ptr %i.hmc, i64 192
  %wide.load = load <16 x i32>, ptr %i.hmc, align 4, !tbaa !67
  %wide.load11623 = load <16 x i32>, ptr %i.hmd, align 4, !tbaa !67
  %wide.load11624 = load <16 x i32>, ptr %i.hme, align 4, !tbaa !67
  %wide.load11625 = load <16 x i32>, ptr %i.hmf, align 4, !tbaa !67
  %i.hmg = sext <16 x i32> %wide.load to <16 x i64> ; 16 uses
  %i.hmh = sext <16 x i32> %wide.load11623 to <16 x i64> ; 16 uses
  %i.hmi = sext <16 x i32> %wide.load11624 to <16 x i64> ; 16 uses
  %i.hmj = sext <16 x i32> %wide.load11625 to <16 x i64> ; 16 uses
  %i.hmk = extractelement <16 x i64> %i.hmg, i64 0
  %i.hml = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hmk
  %i.hmm = extractelement <16 x i64> %i.hmg, i64 1
  %i.hmn = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hmm
  %i.hmo = extractelement <16 x i64> %i.hmg, i64 2
  %i.hmp = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hmo
  %i.hmq = extractelement <16 x i64> %i.hmg, i64 3
  %i.hmr = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hmq
  %i.hms = extractelement <16 x i64> %i.hmg, i64 4
  %i.hmt = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hms
  %i.hmu = extractelement <16 x i64> %i.hmg, i64 5
  %i.hmv = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hmu
  %i.hmw = extractelement <16 x i64> %i.hmg, i64 6
  %i.hmx = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hmw
  %i.hmy = extractelement <16 x i64> %i.hmg, i64 7
  %i.hmz = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hmy
  %i.hna = extractelement <16 x i64> %i.hmg, i64 8
  %i.hnb = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hna
  %i.hnc = extractelement <16 x i64> %i.hmg, i64 9
  %i.hnd = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hnc
  %i.hne = extractelement <16 x i64> %i.hmg, i64 10
  %i.hnf = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hne
  %i.hng = extractelement <16 x i64> %i.hmg, i64 11
  %i.hnh = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hng
  %i.hni = extractelement <16 x i64> %i.hmg, i64 12
  %i.hnj = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hni
  %i.hnk = extractelement <16 x i64> %i.hmg, i64 13
  %i.hnl = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hnk
  %i.hnm = extractelement <16 x i64> %i.hmg, i64 14
  %i.hnn = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hnm
  %i.hno = extractelement <16 x i64> %i.hmg, i64 15
  %i.hnp = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hno
  %i.hnq = extractelement <16 x i64> %i.hmh, i64 0
  %i.hnr = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hnq
  %i.hns = extractelement <16 x i64> %i.hmh, i64 1
  %i.hnt = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hns
  %i.hnu = extractelement <16 x i64> %i.hmh, i64 2
  %i.hnv = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hnu
  %i.hnw = extractelement <16 x i64> %i.hmh, i64 3
  %i.hnx = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hnw
  %i.hny = extractelement <16 x i64> %i.hmh, i64 4
  %i.hnz = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hny
  %i.hoa = extractelement <16 x i64> %i.hmh, i64 5
  %i.hob = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hoa
  %i.hoc = extractelement <16 x i64> %i.hmh, i64 6
  %i.hod = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hoc
  %i.hoe = extractelement <16 x i64> %i.hmh, i64 7
  %i.hof = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hoe
  %i.hog = extractelement <16 x i64> %i.hmh, i64 8
  %i.hoh = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hog
  %i.hoi = extractelement <16 x i64> %i.hmh, i64 9
  %i.hoj = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hoi
  %i.hok = extractelement <16 x i64> %i.hmh, i64 10
  %i.hol = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hok
  %i.hom = extractelement <16 x i64> %i.hmh, i64 11
  %i.hon = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hom
  %i.hoo = extractelement <16 x i64> %i.hmh, i64 12
  %i.hop = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hoo
  %i.hoq = extractelement <16 x i64> %i.hmh, i64 13
  %i.hor = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hoq
  %i.hos = extractelement <16 x i64> %i.hmh, i64 14
  %i.hot = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hos
  %i.hou = extractelement <16 x i64> %i.hmh, i64 15
  %i.hov = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hou
  %i.how = extractelement <16 x i64> %i.hmi, i64 0
  %i.hox = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.how
  %i.hoy = extractelement <16 x i64> %i.hmi, i64 1
  %i.hoz = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hoy
  %i.hpa = extractelement <16 x i64> %i.hmi, i64 2
  %i.hpb = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpa
  %i.hpc = extractelement <16 x i64> %i.hmi, i64 3
  %i.hpd = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpc
  %i.hpe = extractelement <16 x i64> %i.hmi, i64 4
  %i.hpf = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpe
  %i.hpg = extractelement <16 x i64> %i.hmi, i64 5
  %i.hph = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpg
  %i.hpi = extractelement <16 x i64> %i.hmi, i64 6
  %i.hpj = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpi
  %i.hpk = extractelement <16 x i64> %i.hmi, i64 7
  %i.hpl = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpk
  %i.hpm = extractelement <16 x i64> %i.hmi, i64 8
  %i.hpn = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpm
  %i.hpo = extractelement <16 x i64> %i.hmi, i64 9
  %i.hpp = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpo
  %i.hpq = extractelement <16 x i64> %i.hmi, i64 10
  %i.hpr = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpq
  %i.hps = extractelement <16 x i64> %i.hmi, i64 11
  %i.hpt = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hps
  %i.hpu = extractelement <16 x i64> %i.hmi, i64 12
  %i.hpv = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpu
  %i.hpw = extractelement <16 x i64> %i.hmi, i64 13
  %i.hpx = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpw
  %i.hpy = extractelement <16 x i64> %i.hmi, i64 14
  %i.hpz = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hpy
  %i.hqa = extractelement <16 x i64> %i.hmi, i64 15
  %i.hqb = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hqa
  %i.hqc = extractelement <16 x i64> %i.hmj, i64 0
  %i.hqd = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hqc
  %i.hqe = extractelement <16 x i64> %i.hmj, i64 1
  %i.hqf = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hqe
  %i.hqg = extractelement <16 x i64> %i.hmj, i64 2
  %i.hqh = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hqg
  %i.hqi = extractelement <16 x i64> %i.hmj, i64 3
  %i.hqj = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hqi
  %i.hqk = extractelement <16 x i64> %i.hmj, i64 4
  %i.hql = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hqk
  %i.hqm = extractelement <16 x i64> %i.hmj, i64 5
  %i.hqn = getelementptr inbounds i8, ptr %gep9570.us, i64 %i.hqm
  %i.hqo = extractelement <16 x i64> %i.hmj, i64 6
end_hunk_3
begin_hunk_4_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.iuk = mul i32 %i.its, %i.itp
  %i.iul = mul i32 %i.iuk, %i.iud
  %i.ium = sext i32 %i.iul to i64
  %invariant.gep9808 = getelementptr i8, ptr %invariant.gep9807, i64 %i.ium
  %i.iun = load i32, ptr %i.f, align 4, !tbaa !67 ; 6 uses
  %i.iuo = icmp sgt i32 %i.iun, 0
  %i.iup = load ptr, ptr %i.g, align 8            ; 5 uses
  %i.iuq = add i32 %i.iun, -1
  %i.iur = zext i32 %i.iuq to i64
  %i.ius = shl nuw nsw i64 %i.iur, 4              ; 3 uses
  %wide.trip.count10882 = zext i32 %i.iun to i64  ; 3 uses
  %wide.trip.count10896 = zext nneg i32 %i.iun to i64
  %xtraiter12451 = and i64 %wide.trip.count10882, 1
  %i.iut = icmp eq i32 %i.iun, 1
  %unroll_iter12456 = and i64 %wide.trip.count10882, 2147483646
  %lcmp.mod12452.not = icmp eq i64 %xtraiter12451, 0
  %lcmp.mod12455 = trunc i32 %i.iun to i1
  br label %.noexc3323

.noexc3323:                                       ; preds = %.noexc3323.lr.ph, %._crit_edge9771
  %.028219794 = phi i32 [ 0, %.noexc3323.lr.ph ], [ %i.ixw, %._crit_edge9771 ] ; 2 uses
  %.028259793 = phi ptr [ %i.ics, %.noexc3323.lr.ph ], [ %.12826.lcssa, %._crit_edge9771 ] ; 8 uses
  %i.iuu = phi <8 x i32> [ zeroinitializer, %.noexc3323.lr.ph ], [ %i.ixv, %._crit_edge9771 ] ; 5 uses
  %i.iuv = phi <8 x i32> [ zeroinitializer, %.noexc3323.lr.ph ], [ %i.ixu, %._crit_edge9771 ] ; 5 uses
  %i.iuw = sdiv i32 %.028219794, %i.its
  %i.iux = sext i32 %i.iuw to i64
  %.reass9801 = mul i64 %factor.op.mul9800, %i.iux ; 2 uses
  %gep9804 = getelementptr i8, ptr %invariant.gep9803, i64 %.reass9801 ; 5 uses
  %gep9809 = getelementptr i8, ptr %invariant.gep9808, i64 %.reass9801 ; 5 uses
  br i1 %i.iuo, label %.lr.ph9770, label %._crit_edge9771

.lr.ph9770:                                       ; preds = %.noexc3323
  switch i32 %i.its, label %.lr.ph9770.split [
    i32 16, label %.lr.ph9770.split.us.preheader
    i32 8, label %.lr.ph9770.split.us9778
  ]

.lr.ph9770.split.us.preheader:                    ; preds = %.lr.ph9770
  br i1 %i.iut, label %.lr.ph9770.split.us.epil.preheader, label %.lr.ph9770.split.us

.lr.ph9770.split.us:                              ; preds = %.lr.ph9770.split.us.preheader, %.lr.ph9770.split.us
  %indvars.iv10884 = phi i64 [ %indvars.iv.next10885.1, %.lr.ph9770.split.us ], [ 0, %.lr.ph9770.split.us.preheader ] ; 3 uses
  %.128269768.us = phi ptr [ %i.iwe, %.lr.ph9770.split.us ], [ %.028259793, %.lr.ph9770.split.us.preheader ] ; 3 uses
  %.175299767.us = phi <8 x i32> [ %i.iwd, %.lr.ph9770.split.us ], [ %i.iuu, %.lr.ph9770.split.us.preheader ]
  %.175319766.us = phi <8 x i32> [ %i.iwb, %.lr.ph9770.split.us ], [ %i.iuv, %.lr.ph9770.split.us.preheader ]
  %niter12457 = phi i64 [ %niter12457.next.1, %.lr.ph9770.split.us ], [ 0, %.lr.ph9770.split.us.preheader ]
  %i.iuy = getelementptr inbounds nuw [4 x i8], ptr %i.iup, i64 %indvars.iv10884
  %i.iuz = load i32, ptr %i.iuy, align 4, !tbaa !67
  %i.iva = sext i32 %i.iuz to i64                 ; 2 uses
  %i.ivb = getelementptr inbounds i8, ptr %gep9804, i64 %i.iva
  %i.ivc = getelementptr inbounds i8, ptr %gep9809, i64 %i.iva
  %i.ivd = load <16 x i8>, ptr %i.ivb, align 16, !tbaa !100
  %i.ive = load <16 x i8>, ptr %i.ivc, align 16, !tbaa !100
  %i.ivf = sext <16 x i8> %i.ivd to <16 x i16>
  %i.ivg = sext <16 x i8> %i.ive to <16 x i16>
  %i.ivh = load <16 x i8>, ptr %.128269768.us, align 16, !tbaa !100
  %i.ivi = sext <16 x i8> %i.ivh to <16 x i16>    ; 2 uses
  %i.ivj = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ivf, <16 x i16> %i.ivi)
  %i.ivk = add <8 x i32> %i.ivj, %.175319766.us
  %i.ivl = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ivg, <16 x i16> %i.ivi)
  %i.ivm = add <8 x i32> %i.ivl, %.175299767.us
  %i.ivn = getelementptr inbounds nuw i8, ptr %.128269768.us, i64 16
  %i.ivo = getelementptr inbounds nuw [4 x i8], ptr %i.iup, i64 %indvars.iv10884
  %i.ivp = getelementptr inbounds nuw i8, ptr %i.ivo, i64 4
  %i.ivq = load i32, ptr %i.ivp, align 4, !tbaa !67
  %i.ivr = sext i32 %i.ivq to i64                 ; 2 uses
  %i.ivs = getelementptr inbounds i8, ptr %gep9804, i64 %i.ivr
  %i.ivt = getelementptr inbounds i8, ptr %gep9809, i64 %i.ivr
  %i.ivu = load <16 x i8>, ptr %i.ivs, align 16, !tbaa !100
  %i.ivv = load <16 x i8>, ptr %i.ivt, align 16, !tbaa !100
  %i.ivw = sext <16 x i8> %i.ivu to <16 x i16>
  %i.ivx = sext <16 x i8> %i.ivv to <16 x i16>
  %i.ivy = load <16 x i8>, ptr %i.ivn, align 16, !tbaa !100
  %i.ivz = sext <16 x i8> %i.ivy to <16 x i16>    ; 2 uses
  %i.iwa = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ivw, <16 x i16> %i.ivz)
  %i.iwb = add <8 x i32> %i.iwa, %i.ivk           ; 3 uses
  %i.iwc = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ivx, <16 x i16> %i.ivz)
  %i.iwd = add <8 x i32> %i.iwc, %i.ivm           ; 3 uses
  %i.iwe = getelementptr inbounds nuw i8, ptr %.128269768.us, i64 32 ; 2 uses
  %indvars.iv.next10885.1 = add nuw nsw i64 %indvars.iv10884, 2 ; 2 uses
  %niter12457.next.1 = add i64 %niter12457, 2     ; 2 uses
  %niter12457.ncmp.1 = icmp eq i64 %niter12457.next.1, %unroll_iter12456
  br i1 %niter12457.ncmp.1, label %._crit_edge9771.loopexit10014.unr-lcssa, label %.lr.ph9770.split.us, !llvm.loop !1960

.lr.ph9770.split.us9778:                          ; preds = %.lr.ph9770, %.lr.ph9770.split.us9778
  %indvars.iv10877 = phi i64 [ %indvars.iv.next10878, %.lr.ph9770.split.us9778 ], [ 0, %.lr.ph9770 ] ; 2 uses
  %.128269768.us9780 = phi ptr [ %i.ixe, %.lr.ph9770.split.us9778 ], [ %.028259793, %.lr.ph9770 ] ; 2 uses
  %.175299767.us9781 = phi <8 x i32> [ %i.ixd, %.lr.ph9770.split.us9778 ], [ %i.iuu, %.lr.ph9770 ]
  %.175319766.us9782 = phi <8 x i32> [ %i.ixb, %.lr.ph9770.split.us9778 ], [ %i.iuv, %.lr.ph9770 ]
  %i.iwf = getelementptr inbounds nuw [4 x i8], ptr %i.iup, i64 %indvars.iv10877
  %i.iwg = load i32, ptr %i.iwf, align 4, !tbaa !67
  %i.iwh = sext i32 %i.iwg to i64                 ; 2 uses
  %i.iwi = getelementptr inbounds i8, ptr %gep9804, i64 %i.iwh ; 2 uses
  %i.iwj = getelementptr inbounds i8, ptr %gep9809, i64 %i.iwh ; 2 uses
  %i.iwk = load i64, ptr %i.iwi, align 1, !tbaa !100
  %i.iwl = insertelement <2 x i64> poison, i64 %i.iwk, i64 0
  %i.iwm = getelementptr inbounds nuw i8, ptr %i.iwi, i64 %i.v
  %i.iwn = load i64, ptr %i.iwm, align 1, !tbaa !100
  %i.iwo = load i64, ptr %i.iwj, align 1, !tbaa !100
  %i.iwp = insertelement <2 x i64> poison, i64 %i.iwo, i64 0
  %i.iwq = getelementptr inbounds nuw i8, ptr %i.iwj, i64 %i.v
  %i.iwr = load i64, ptr %i.iwq, align 1, !tbaa !100
  %i.iws = insertelement <2 x i64> %i.iwl, i64 %i.iwn, i64 1
  %i.iwt = insertelement <2 x i64> %i.iwp, i64 %i.iwr, i64 1
  %i.iwu = bitcast <2 x i64> %i.iws to <16 x i8>
  %i.iwv = sext <16 x i8> %i.iwu to <16 x i16>
  %i.iww = bitcast <2 x i64> %i.iwt to <16 x i8>
  %i.iwx = sext <16 x i8> %i.iww to <16 x i16>
  %i.iwy = load <16 x i8>, ptr %.128269768.us9780, align 16, !tbaa !100
  %i.iwz = sext <16 x i8> %i.iwy to <16 x i16>    ; 2 uses
  %i.ixa = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.iwv, <16 x i16> %i.iwz)
  %i.ixb = add <8 x i32> %i.ixa, %.175319766.us9782 ; 2 uses
  %i.ixc = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.iwx, <16 x i16> %i.iwz)
  %i.ixd = add <8 x i32> %i.ixc, %.175299767.us9781 ; 2 uses
  %i.ixe = getelementptr inbounds nuw i8, ptr %.128269768.us9780, i64 16
  %indvars.iv.next10878 = add nuw nsw i64 %indvars.iv10877, 1 ; 2 uses
  %exitcond10883.not = icmp eq i64 %indvars.iv.next10878, %wide.trip.count10882
  br i1 %exitcond10883.not, label %._crit_edge9771.loopexit10015, label %.lr.ph9770.split.us9778, !llvm.loop !1960

._crit_edge9771.loopexit:                         ; preds = %.lr.ph9770.split
  %scevgep10893 = getelementptr i8, ptr %.028259793, i64 16
  %scevgep10894 = getelementptr i8, ptr %scevgep10893, i64 %i.ius
  br label %._crit_edge9771

._crit_edge9771.loopexit10014.unr-lcssa:          ; preds = %.lr.ph9770.split.us
  br i1 %lcmp.mod12452.not, label %._crit_edge9771.loopexit10014, label %.lr.ph9770.split.us.epil.preheader

.lr.ph9770.split.us.epil.preheader:               ; preds = %._crit_edge9771.loopexit10014.unr-lcssa, %.lr.ph9770.split.us.preheader
  %indvars.iv10884.epil.init = phi i64 [ 0, %.lr.ph9770.split.us.preheader ], [ %indvars.iv.next10885.1, %._crit_edge9771.loopexit10014.unr-lcssa ]
  %.128269768.us.epil.init = phi ptr [ %.028259793, %.lr.ph9770.split.us.preheader ], [ %i.iwe, %._crit_edge9771.loopexit10014.unr-lcssa ]
  %.175299767.us.epil.init = phi <8 x i32> [ %i.iuu, %.lr.ph9770.split.us.preheader ], [ %i.iwd, %._crit_edge9771.loopexit10014.unr-lcssa ]
  %.175319766.us.epil.init = phi <8 x i32> [ %i.iuv, %.lr.ph9770.split.us.preheader ], [ %i.iwb, %._crit_edge9771.loopexit10014.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12455)
  %i.ixf = getelementptr inbounds nuw [4 x i8], ptr %i.iup, i64 %indvars.iv10884.epil.init
  %i.ixg = load i32, ptr %i.ixf, align 4, !tbaa !67
  %i.ixh = sext i32 %i.ixg to i64                 ; 2 uses
  %i.ixi = getelementptr inbounds i8, ptr %gep9804, i64 %i.ixh
  %i.ixj = getelementptr inbounds i8, ptr %gep9809, i64 %i.ixh
  %i.ixk = load <16 x i8>, ptr %i.ixi, align 16, !tbaa !100
  %i.ixl = load <16 x i8>, ptr %i.ixj, align 16, !tbaa !100
  %i.ixm = sext <16 x i8> %i.ixk to <16 x i16>
  %i.ixn = sext <16 x i8> %i.ixl to <16 x i16>
  %i.ixo = load <16 x i8>, ptr %.128269768.us.epil.init, align 16, !tbaa !100
  %i.ixp = sext <16 x i8> %i.ixo to <16 x i16>    ; 2 uses
  %i.ixq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ixm, <16 x i16> %i.ixp)
  %i.ixr = add <8 x i32> %i.ixq, %.175319766.us.epil.init
  %i.ixs = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ixn, <16 x i16> %i.ixp)
  %i.ixt = add <8 x i32> %i.ixs, %.175299767.us.epil.init
  br label %._crit_edge9771.loopexit10014

._crit_edge9771.loopexit10014:                    ; preds = %._crit_edge9771.loopexit10014.unr-lcssa, %.lr.ph9770.split.us.epil.preheader
  %.lcssa12104 = phi <8 x i32> [ %i.iwb, %._crit_edge9771.loopexit10014.unr-lcssa ], [ %i.ixr, %.lr.ph9770.split.us.epil.preheader ]
  %.lcssa12103 = phi <8 x i32> [ %i.iwd, %._crit_edge9771.loopexit10014.unr-lcssa ], [ %i.ixt, %.lr.ph9770.split.us.epil.preheader ]
  %scevgep10886 = getelementptr i8, ptr %.028259793, i64 16
  %scevgep10887 = getelementptr i8, ptr %scevgep10886, i64 %i.ius
  br label %._crit_edge9771

._crit_edge9771.loopexit10015:                    ; preds = %.lr.ph9770.split.us9778
  %scevgep10879 = getelementptr i8, ptr %.028259793, i64 16
  %scevgep10880 = getelementptr i8, ptr %scevgep10879, i64 %i.ius
  br label %._crit_edge9771

._crit_edge9771:                                  ; preds = %._crit_edge9771.loopexit10015, %._crit_edge9771.loopexit10014, %._crit_edge9771.loopexit, %.noexc3323
  %i.ixu = phi <8 x i32> [ %i.iuv, %.noexc3323 ], [ %i.iyn, %._crit_edge9771.loopexit ], [ %.lcssa12104, %._crit_edge9771.loopexit10014 ], [ %i.ixb, %._crit_edge9771.loopexit10015 ] ; 2 uses
  %i.ixv = phi <8 x i32> [ %i.iuu, %.noexc3323 ], [ %i.iyp, %._crit_edge9771.loopexit ], [ %.lcssa12103, %._crit_edge9771.loopexit10014 ], [ %i.ixd, %._crit_edge9771.loopexit10015 ] ; 2 uses
  %.12826.lcssa = phi ptr [ %.028259793, %.noexc3323 ], [ %scevgep10894, %._crit_edge9771.loopexit ], [ %scevgep10887, %._crit_edge9771.loopexit10014 ], [ %scevgep10880, %._crit_edge9771.loopexit10015 ] ; 2 uses
  %i.ixw = add nuw nsw i32 %.028219794, 16        ; 2 uses
  %i.ixx = or disjoint i32 %i.ixw, 15
  %i.ixy = icmp slt i32 %i.ixx, %i.itq
  br i1 %i.ixy, label %.noexc3323, label %._crit_edge9795.loopexit, !llvm.loop !1961

.lr.ph9770.split:                                 ; preds = %.lr.ph9770, %.lr.ph9770.split
  %indvars.iv10891 = phi i64 [ %indvars.iv.next10892, %.lr.ph9770.split ], [ 0, %.lr.ph9770 ] ; 2 uses
  %.128269768 = phi ptr [ %i.iyq, %.lr.ph9770.split ], [ %.028259793, %.lr.ph9770 ] ; 2 uses
  %.175299767 = phi <8 x i32> [ %i.iyp, %.lr.ph9770.split ], [ %i.iuu, %.lr.ph9770 ]
  %.175319766 = phi <8 x i32> [ %i.iyn, %.lr.ph9770.split ], [ %i.iuv, %.lr.ph9770 ]
  %i.ixz = getelementptr inbounds nuw [4 x i8], ptr %i.iup, i64 %indvars.iv10891
  %i.iya = load i32, ptr %i.ixz, align 4, !tbaa !67
  %i.iyb = sext i32 %i.iya to i64                 ; 2 uses
  %i.iyc = getelementptr inbounds i8, ptr %gep9804, i64 %i.iyb
  %i.iyd = getelementptr inbounds i8, ptr %gep9809, i64 %i.iyb
  %i.iye = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.iyc, <16 x i32> %i.dof, <16 x i1> splat (i1 true), i32 1)
  %i.iyf = trunc <16 x i32> %i.iye to <16 x i8>
  %i.iyg = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.iyd, <16 x i32> %i.dof, <16 x i1> splat (i1 true), i32 1)
  %i.iyh = trunc <16 x i32> %i.iyg to <16 x i8>
  %i.iyi = sext <16 x i8> %i.iyf to <16 x i16>
  %i.iyj = sext <16 x i8> %i.iyh to <16 x i16>
  %i.iyk = load <16 x i8>, ptr %.128269768, align 16, !tbaa !100
  %i.iyl = sext <16 x i8> %i.iyk to <16 x i16>    ; 2 uses
  %i.iym = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.iyi, <16 x i16> %i.iyl)
  %i.iyn = add <8 x i32> %i.iym, %.175319766      ; 2 uses
  %i.iyo = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.iyj, <16 x i16> %i.iyl)
  %i.iyp = add <8 x i32> %i.iyo, %.175299767      ; 2 uses
  %i.iyq = getelementptr inbounds nuw i8, ptr %.128269768, i64 16
  %indvars.iv.next10892 = add nuw nsw i64 %indvars.iv10891, 1 ; 2 uses
  %exitcond10897.not = icmp eq i64 %indvars.iv.next10892, %wide.trip.count10896
  br i1 %exitcond10897.not, label %._crit_edge9771.loopexit, label %.lr.ph9770.split, !llvm.loop !1960

._crit_edge9795.loopexit:                         ; preds = %._crit_edge9771
  %i.iyr = and i32 %i.itq, 2147483632
  br label %._crit_edge9795

._crit_edge9795:                                  ; preds = %._crit_edge9795.loopexit, %.noexc3325
  %40 = phi <8 x i32> [ zeroinitializer, %.noexc3325 ], [ %i.ixu, %._crit_edge9795.loopexit ] ; 2 uses
  %41 = phi <8 x i32> [ zeroinitializer, %.noexc3325 ], [ %i.ixv, %._crit_edge9795.loopexit ] ; 2 uses
  %.02825.lcssa = phi ptr [ %i.ics, %.noexc3325 ], [ %.12826.lcssa, %._crit_edge9795.loopexit ] ; 2 uses
  %.02821.lcssa = phi i32 [ 0, %.noexc3325 ], [ %i.iyr, %._crit_edge9795.loopexit ] ; 3 uses
  %42 = shufflevector <8 x i32> %40, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %43 = shufflevector <8 x i32> %40, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %44 = add <4 x i32> %42, %43
  %45 = shufflevector <8 x i32> %41, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %46 = shufflevector <8 x i32> %41, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %47 = add <4 x i32> %45, %46
  %48 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %44)
  %49 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %47)
  %i.iys = or disjoint i32 %.02821.lcssa, 7
  %i.iyt = icmp slt i32 %i.iys, %i.itq
  br i1 %i.iyt, label %.noexc3319.lr.ph, label %._crit_edge9826

.noexc3319.lr.ph:                                 ; preds = %._crit_edge9795
  %i.iyu = load i32, ptr %i.c, align 4, !tbaa !67 ; 4 uses
  %i.iyv = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1962
  %i.iyw = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1962 ; 2 uses
  %i.iyx = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1962
  %i.iyy = load i64, ptr %i.dob, align 8, !tbaa !65, !noalias !1962 ; 2 uses
  %factor.op.mul9831 = mul i64 %i.iyx, %i.iyy
  %i.iyz = sext i32 %i.iyv to i64
  %i.iza = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.izb = mul nsw i32 %i.iza, %i.itm
  %i.izc = sext i32 %i.izb to i64
  %i.izd = mul i64 %i.iyy, %i.iyz                 ; 2 uses
  %i.ize = mul i64 %i.izd, %i.izc
  %invariant.gep9833 = getelementptr i8, ptr %i.iyw, i64 %i.ize
  %i.izf = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.izg = mul i32 %i.iyu, %i.ito
  %i.izh = mul i32 %i.izg, %i.izf
  %i.izi = sext i32 %i.izh to i64
  %invariant.gep9834 = getelementptr i8, ptr %invariant.gep9833, i64 %i.izi
  %i.izj = mul nsw i32 %i.iza, %i.itn
  %i.izk = sext i32 %i.izj to i64
  %i.izl = mul i64 %i.izd, %i.izk
  %invariant.gep9838 = getelementptr i8, ptr %i.iyw, i64 %i.izl
  %i.izm = mul i32 %i.iyu, %i.itp
  %i.izn = mul i32 %i.izm, %i.izf
  %i.izo = sext i32 %i.izn to i64
  %invariant.gep9839 = getelementptr i8, ptr %invariant.gep9838, i64 %i.izo
  %i.izp = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.izq = icmp sgt i32 %i.izp, 0
  %i.izr = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.izs = icmp eq i32 %i.iyu, 8
  %i.izt = add i32 %i.izp, -1
  %i.izu = zext i32 %i.izt to i64
  %i.izv = shl nuw nsw i64 %i.izu, 3              ; 2 uses
  %wide.trip.count10903 = zext i32 %i.izp to i64  ; 3 uses
  %xtraiter12458 = and i64 %wide.trip.count10903, 1
  %i.izw = icmp eq i32 %i.izp, 1
  %unroll_iter12463 = and i64 %wide.trip.count10903, 2147483646
  %lcmp.mod12459.not = icmp eq i64 %xtraiter12458, 0
  %lcmp.mod12462 = trunc i32 %i.izp to i1
  br label %.noexc3319

.noexc3319:                                       ; preds = %.noexc3319.lr.ph, %._crit_edge9815
  %.128229825 = phi i32 [ %.02821.lcssa, %.noexc3319.lr.ph ], [ %i.jbz, %._crit_edge9815 ] ; 2 uses
  %.228279824 = phi ptr [ %.02825.lcssa, %.noexc3319.lr.ph ], [ %.32828.lcssa, %._crit_edge9815 ] ; 6 uses
  %i.izx = phi <4 x i32> [ zeroinitializer, %.noexc3319.lr.ph ], [ %i.jby, %._crit_edge9815 ] ; 4 uses
  %i.izy = phi <4 x i32> [ zeroinitializer, %.noexc3319.lr.ph ], [ %i.jbx, %._crit_edge9815 ] ; 4 uses
  %i.izz = sdiv i32 %.128229825, %i.iyu
  %i.jaa = sext i32 %i.izz to i64
  %.reass9832 = mul i64 %factor.op.mul9831, %i.jaa ; 2 uses
  %gep9835 = getelementptr i8, ptr %invariant.gep9834, i64 %.reass9832 ; 4 uses
  %gep9840 = getelementptr i8, ptr %invariant.gep9839, i64 %.reass9832 ; 4 uses
  br i1 %i.izq, label %.lr.ph9814, label %._crit_edge9815

.lr.ph9814:                                       ; preds = %.noexc3319
  br i1 %i.izs, label %.lr.ph9814.split.us.preheader, label %.lr.ph9814.split

.lr.ph9814.split.us.preheader:                    ; preds = %.lr.ph9814
  br i1 %i.izw, label %.lr.ph9814.split.us.epil.preheader, label %.lr.ph9814.split.us

.lr.ph9814.split.us:                              ; preds = %.lr.ph9814.split.us.preheader, %.lr.ph9814.split.us
  %indvars.iv10905 = phi i64 [ %indvars.iv.next10906.1, %.lr.ph9814.split.us ], [ 0, %.lr.ph9814.split.us.preheader ] ; 3 uses
  %.328289812.us = phi ptr [ %i.jbh, %.lr.ph9814.split.us ], [ %.228279824, %.lr.ph9814.split.us.preheader ] ; 3 uses
  %.175259811.us = phi <4 x i32> [ %i.jbg, %.lr.ph9814.split.us ], [ %i.izx, %.lr.ph9814.split.us.preheader ]
  %.175279810.us = phi <4 x i32> [ %i.jbe, %.lr.ph9814.split.us ], [ %i.izy, %.lr.ph9814.split.us.preheader ]
  %niter12464 = phi i64 [ %niter12464.next.1, %.lr.ph9814.split.us ], [ 0, %.lr.ph9814.split.us.preheader ]
  %i.jab = getelementptr inbounds nuw [4 x i8], ptr %i.izr, i64 %indvars.iv10905
  %i.jac = load i32, ptr %i.jab, align 4, !tbaa !67
  %i.jad = sext i32 %i.jac to i64                 ; 2 uses
  %i.jae = getelementptr inbounds i8, ptr %gep9835, i64 %i.jad
  %i.jaf = getelementptr inbounds i8, ptr %gep9840, i64 %i.jad
  %i.jag = load <8 x i8>, ptr %i.jae, align 1, !tbaa !100
  %i.jah = load <8 x i8>, ptr %i.jaf, align 1, !tbaa !100
  %i.jai = sext <8 x i8> %i.jag to <8 x i16>
  %i.jaj = sext <8 x i8> %i.jah to <8 x i16>
  %i.jak = load <8 x i8>, ptr %.328289812.us, align 1, !tbaa !100
  %i.jal = sext <8 x i8> %i.jak to <8 x i16>      ; 2 uses
  %i.jam = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jai, <8 x i16> %i.jal)
  %i.jan = add <4 x i32> %i.jam, %.175279810.us
  %i.jao = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jaj, <8 x i16> %i.jal)
  %i.jap = add <4 x i32> %i.jao, %.175259811.us
  %i.jaq = getelementptr inbounds nuw i8, ptr %.328289812.us, i64 8
  %i.jar = getelementptr inbounds nuw [4 x i8], ptr %i.izr, i64 %indvars.iv10905
  %i.jas = getelementptr inbounds nuw i8, ptr %i.jar, i64 4
  %i.jat = load i32, ptr %i.jas, align 4, !tbaa !67
  %i.jau = sext i32 %i.jat to i64                 ; 2 uses
  %i.jav = getelementptr inbounds i8, ptr %gep9835, i64 %i.jau
  %i.jaw = getelementptr inbounds i8, ptr %gep9840, i64 %i.jau
  %i.jax = load <8 x i8>, ptr %i.jav, align 1, !tbaa !100
  %i.jay = load <8 x i8>, ptr %i.jaw, align 1, !tbaa !100
  %i.jaz = sext <8 x i8> %i.jax to <8 x i16>
  %i.jba = sext <8 x i8> %i.jay to <8 x i16>
  %i.jbb = load <8 x i8>, ptr %i.jaq, align 1, !tbaa !100
  %i.jbc = sext <8 x i8> %i.jbb to <8 x i16>      ; 2 uses
  %i.jbd = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jaz, <8 x i16> %i.jbc)
  %i.jbe = add <4 x i32> %i.jbd, %i.jan           ; 3 uses
  %i.jbf = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jba, <8 x i16> %i.jbc)
  %i.jbg = add <4 x i32> %i.jbf, %i.jap           ; 3 uses
  %i.jbh = getelementptr inbounds nuw i8, ptr %.328289812.us, i64 16 ; 2 uses
  %indvars.iv.next10906.1 = add nuw nsw i64 %indvars.iv10905, 2 ; 2 uses
  %niter12464.next.1 = add i64 %niter12464, 2     ; 2 uses
  %niter12464.ncmp.1 = icmp eq i64 %niter12464.next.1, %unroll_iter12463
  br i1 %niter12464.ncmp.1, label %._crit_edge9815.loopexit.unr-lcssa, label %.lr.ph9814.split.us, !llvm.loop !1965

._crit_edge9815.loopexit.unr-lcssa:               ; preds = %.lr.ph9814.split.us
  br i1 %lcmp.mod12459.not, label %._crit_edge9815.loopexit, label %.lr.ph9814.split.us.epil.preheader

.lr.ph9814.split.us.epil.preheader:               ; preds = %._crit_edge9815.loopexit.unr-lcssa, %.lr.ph9814.split.us.preheader
  %indvars.iv10905.epil.init = phi i64 [ 0, %.lr.ph9814.split.us.preheader ], [ %indvars.iv.next10906.1, %._crit_edge9815.loopexit.unr-lcssa ]
  %.328289812.us.epil.init = phi ptr [ %.228279824, %.lr.ph9814.split.us.preheader ], [ %i.jbh, %._crit_edge9815.loopexit.unr-lcssa ]
  %.175259811.us.epil.init = phi <4 x i32> [ %i.izx, %.lr.ph9814.split.us.preheader ], [ %i.jbg, %._crit_edge9815.loopexit.unr-lcssa ]
  %.175279810.us.epil.init = phi <4 x i32> [ %i.izy, %.lr.ph9814.split.us.preheader ], [ %i.jbe, %._crit_edge9815.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12462)
  %i.jbi = getelementptr inbounds nuw [4 x i8], ptr %i.izr, i64 %indvars.iv10905.epil.init
  %i.jbj = load i32, ptr %i.jbi, align 4, !tbaa !67
  %i.jbk = sext i32 %i.jbj to i64                 ; 2 uses
  %i.jbl = getelementptr inbounds i8, ptr %gep9835, i64 %i.jbk
  %i.jbm = getelementptr inbounds i8, ptr %gep9840, i64 %i.jbk
  %i.jbn = load <8 x i8>, ptr %i.jbl, align 1, !tbaa !100
  %i.jbo = load <8 x i8>, ptr %i.jbm, align 1, !tbaa !100
  %i.jbp = sext <8 x i8> %i.jbn to <8 x i16>
  %i.jbq = sext <8 x i8> %i.jbo to <8 x i16>
  %i.jbr = load <8 x i8>, ptr %.328289812.us.epil.init, align 1, !tbaa !100
  %i.jbs = sext <8 x i8> %i.jbr to <8 x i16>      ; 2 uses
  %i.jbt = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jbp, <8 x i16> %i.jbs)
  %i.jbu = add <4 x i32> %i.jbt, %.175279810.us.epil.init
  %i.jbv = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jbq, <8 x i16> %i.jbs)
  %i.jbw = add <4 x i32> %i.jbv, %.175259811.us.epil.init
  br label %._crit_edge9815.loopexit

._crit_edge9815.loopexit:                         ; preds = %._crit_edge9815.loopexit.unr-lcssa, %.lr.ph9814.split.us.epil.preheader
  %.lcssa12112 = phi <4 x i32> [ %i.jbe, %._crit_edge9815.loopexit.unr-lcssa ], [ %i.jbu, %.lr.ph9814.split.us.epil.preheader ]
  %.lcssa12111 = phi <4 x i32> [ %i.jbg, %._crit_edge9815.loopexit.unr-lcssa ], [ %i.jbw, %.lr.ph9814.split.us.epil.preheader ]
  %scevgep10907 = getelementptr i8, ptr %.228279824, i64 8
  %scevgep10908 = getelementptr i8, ptr %scevgep10907, i64 %i.izv
  br label %._crit_edge9815

._crit_edge9815.loopexit10013:                    ; preds = %.lr.ph9814.split
  %scevgep10900 = getelementptr i8, ptr %.228279824, i64 8
  %scevgep10901 = getelementptr i8, ptr %scevgep10900, i64 %i.izv
  br label %._crit_edge9815

._crit_edge9815:                                  ; preds = %._crit_edge9815.loopexit10013, %._crit_edge9815.loopexit, %.noexc3319
  %i.jbx = phi <4 x i32> [ %i.izy, %.noexc3319 ], [ %.lcssa12112, %._crit_edge9815.loopexit ], [ %i.jcq, %._crit_edge9815.loopexit10013 ] ; 2 uses
  %i.jby = phi <4 x i32> [ %i.izx, %.noexc3319 ], [ %.lcssa12111, %._crit_edge9815.loopexit ], [ %i.jcs, %._crit_edge9815.loopexit10013 ] ; 2 uses
  %.32828.lcssa = phi ptr [ %.228279824, %.noexc3319 ], [ %scevgep10908, %._crit_edge9815.loopexit ], [ %scevgep10901, %._crit_edge9815.loopexit10013 ] ; 2 uses
  %i.jbz = add nuw nsw i32 %.128229825, 8         ; 3 uses
  %i.jca = or disjoint i32 %i.jbz, 7
  %i.jcb = icmp slt i32 %i.jca, %i.itq
  br i1 %i.jcb, label %.noexc3319, label %._crit_edge9826, !llvm.loop !1966

.lr.ph9814.split:                                 ; preds = %.lr.ph9814, %.lr.ph9814.split
  %indvars.iv10898 = phi i64 [ %indvars.iv.next10899, %.lr.ph9814.split ], [ 0, %.lr.ph9814 ] ; 2 uses
  %.328289812 = phi ptr [ %i.jct, %.lr.ph9814.split ], [ %.228279824, %.lr.ph9814 ] ; 2 uses
  %.175259811 = phi <4 x i32> [ %i.jcs, %.lr.ph9814.split ], [ %i.izx, %.lr.ph9814 ]
  %.175279810 = phi <4 x i32> [ %i.jcq, %.lr.ph9814.split ], [ %i.izy, %.lr.ph9814 ]
  %i.jcc = getelementptr inbounds nuw [4 x i8], ptr %i.izr, i64 %indvars.iv10898
  %i.jcd = load i32, ptr %i.jcc, align 4, !tbaa !67
  %i.jce = sext i32 %i.jcd to i64                 ; 2 uses
  %i.jcf = getelementptr inbounds i8, ptr %gep9835, i64 %i.jce
  %i.jcg = getelementptr inbounds i8, ptr %gep9840, i64 %i.jce
  %i.jch = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jcf, <8 x i32> %i.doi, <8 x i32> splat (i32 -1), i8 1)
  %i.jci = trunc <8 x i32> %i.jch to <8 x i8>
  %i.jcj = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jcg, <8 x i32> %i.doi, <8 x i32> splat (i32 -1), i8 1)
  %i.jck = trunc <8 x i32> %i.jcj to <8 x i8>
  %i.jcl = sext <8 x i8> %i.jci to <8 x i16>
  %i.jcm = sext <8 x i8> %i.jck to <8 x i16>
  %i.jcn = load <8 x i8>, ptr %.328289812, align 1, !tbaa !100
  %i.jco = sext <8 x i8> %i.jcn to <8 x i16>      ; 2 uses
  %i.jcp = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jcl, <8 x i16> %i.jco)
  %i.jcq = add <4 x i32> %i.jcp, %.175279810      ; 2 uses
  %i.jcr = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jcm, <8 x i16> %i.jco)
  %i.jcs = add <4 x i32> %i.jcr, %.175259811      ; 2 uses
  %i.jct = getelementptr inbounds nuw i8, ptr %.328289812, i64 8
  %indvars.iv.next10899 = add nuw nsw i64 %indvars.iv10898, 1 ; 2 uses
  %exitcond10904.not = icmp eq i64 %indvars.iv.next10899, %wide.trip.count10903
  br i1 %exitcond10904.not, label %._crit_edge9815.loopexit10013, label %.lr.ph9814.split, !llvm.loop !1965

._crit_edge9826:                                  ; preds = %._crit_edge9815, %._crit_edge9795
  %50 = phi <4 x i32> [ zeroinitializer, %._crit_edge9795 ], [ %i.jbx, %._crit_edge9815 ] ; 2 uses
  %51 = phi <4 x i32> [ zeroinitializer, %._crit_edge9795 ], [ %i.jby, %._crit_edge9815 ] ; 2 uses
  %.22827.lcssa = phi ptr [ %.02825.lcssa, %._crit_edge9795 ], [ %.32828.lcssa, %._crit_edge9815 ] ; 3 uses
  %.12822.lcssa = phi i32 [ %.02821.lcssa, %._crit_edge9795 ], [ %i.jbz, %._crit_edge9815 ] ; 6 uses
  %52 = shufflevector <4 x i32> %50, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %53 = add <4 x i32> %52, %50                    ; 2 uses
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %55 = add <4 x i32> %54, %53
  %56 = extractelement <4 x i32> %55, i64 0
  %i.jcu = add nsw i32 %56, %48                   ; 3 uses
  %57 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %58 = add <4 x i32> %57, %51                    ; 2 uses
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %60 = add <4 x i32> %59, %58
  %61 = extractelement <4 x i32> %60, i64 0
  %i.jcv = add nsw i32 %61, %49                   ; 3 uses
  %i.jcw = or disjoint i32 %.12822.lcssa, 1
  %i.jcx = icmp slt i32 %i.jcw, %i.itq
  br i1 %i.jcx, label %.noexc3315.lr.ph, label %.preheader8130

.noexc3315.lr.ph:                                 ; preds = %._crit_edge9826
  %i.jcy = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1967
  %i.jcz = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1967 ; 2 uses
  %i.jda = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1967
  %i.jdb = load i64, ptr %i.dob, align 8, !tbaa !65, !noalias !1967 ; 2 uses
  %factor.op.mul9858 = mul i64 %i.jda, %i.jdb
  %i.jdc = sext i32 %i.jcy to i64
  %i.jdd = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.jde = mul nsw i32 %i.jdd, %i.itm
  %i.jdf = sext i32 %i.jde to i64
  %i.jdg = mul i64 %i.jdb, %i.jdc                 ; 2 uses
  %i.jdh = mul i64 %i.jdg, %i.jdf
  %invariant.gep9860 = getelementptr i8, ptr %i.jcz, i64 %i.jdh
  %i.jdi = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.jdj = mul nsw i32 %i.jdi, %i.ito
  %i.jdk = sext i32 %i.jdj to i64
  %invariant.gep9861 = getelementptr i8, ptr %invariant.gep9860, i64 %i.jdk
  %i.jdl = mul nsw i32 %i.jdd, %i.itn
  %i.jdm = sext i32 %i.jdl to i64
  %i.jdn = mul i64 %i.jdg, %i.jdm
  %invariant.gep9865 = getelementptr i8, ptr %i.jcz, i64 %i.jdn
  %i.jdo = mul nsw i32 %i.jdi, %i.itp
  %i.jdp = sext i32 %i.jdo to i64
  %invariant.gep9866 = getelementptr i8, ptr %invariant.gep9865, i64 %i.jdp
  %i.jdq = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.jdr = icmp sgt i32 %i.jdq, 0
  %i.jds = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.jdr, label %.noexc3315.us.preheader, label %.noexc3315.preheader

.noexc3315.preheader:                             ; preds = %.noexc3315.lr.ph
  %i.jdt = add nuw i32 %.12822.lcssa, 2
  %i.jdu = add nuw i32 %.12822.lcssa, 3
  %smax10912 = call i32 @llvm.smax.i32(i32 %i.itq, i32 %i.jdu)
  %i.jdv = add nsw i32 %smax10912, -2
  %i.jdw = sub nsw i32 %i.jdv, %.12822.lcssa
  %i.jdx = and i32 %i.jdw, -2
  %i.jdy = add i32 %i.jdt, %i.jdx
  br label %.preheader8130

.noexc3315.us.preheader:                          ; preds = %.noexc3315.lr.ph
  %i.jdz = add nsw i32 %i.jdq, -1
  %i.jea = zext nneg i32 %i.jdz to i64
  %i.jeb = shl nuw nsw i64 %i.jea, 1
  %i.jec = zext nneg i32 %.12822.lcssa to i64
  %wide.trip.count10918 = zext nneg i32 %i.jdq to i64 ; 6 uses
  %min.iters.check11992 = icmp ult i32 %i.jdq, 16
  %min.iters.check11994 = icmp ult i32 %i.jdq, 32
  %i.jed = and i64 %wide.trip.count10918, 16
  %n.vec11996 = and i64 %wide.trip.count10918, 2147483616 ; 5 uses
  %i.jee = shl nuw nsw i64 %n.vec11996, 1
  %cmp.n12017 = icmp eq i64 %n.vec11996, %wide.trip.count10918
  %min.epilog.iters.check12024.not.not = icmp eq i64 %i.jed, 0
  %n.vec12026 = and i64 %wide.trip.count10918, 2147483632 ; 4 uses
  %i.jef = shl nuw nsw i64 %n.vec12026, 1
  %cmp.n12038 = icmp eq i64 %n.vec12026, %wide.trip.count10918
  br label %iter.check12021

iter.check12021:                                  ; preds = %.noexc3315.us.preheader, %._crit_edge9846.us
  %indvars.iv10920 = phi i64 [ %i.jec, %.noexc3315.us.preheader ], [ %indvars.iv.next10921, %._crit_edge9846.us ] ; 2 uses
  %.428299852.us = phi ptr [ %.22827.lcssa, %.noexc3315.us.preheader ], [ %scevgep10916, %._crit_edge9846.us ] ; 7 uses
  %.028339851.us = phi i32 [ %i.jcv, %.noexc3315.us.preheader ], [ %.lcssa11401, %._crit_edge9846.us ] ; 3 uses
  %.028379850.us = phi i32 [ %i.jcu, %.noexc3315.us.preheader ], [ %.lcssa11402, %._crit_edge9846.us ] ; 3 uses
  %.reass9859.us = mul i64 %factor.op.mul9858, %indvars.iv10920 ; 2 uses
  %gep9862.us = getelementptr i8, ptr %invariant.gep9861, i64 %.reass9859.us ; 49 uses
  %gep9867.us = getelementptr i8, ptr %invariant.gep9866, i64 %.reass9859.us ; 49 uses
  br i1 %min.iters.check11992, label %vec.epilog.scalar.ph12022.preheader, label %vector.main.loop.iter.check11993

vector.main.loop.iter.check11993:                 ; preds = %iter.check12021
  br i1 %min.iters.check11994, label %vec.epilog.ph12025, label %vector.ph11995

vector.ph11995:                                   ; preds = %vector.main.loop.iter.check11993
  %i.jeg = getelementptr i8, ptr %.428299852.us, i64 %i.jee
  %i.jeh = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028339851.us, i64 0
  %i.jei = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028379850.us, i64 0
  br label %vector.body11997

vector.body11997:                                 ; preds = %vector.body11997, %vector.ph11995
  %index11998 = phi i64 [ 0, %vector.ph11995 ], [ %index.next12013, %vector.body11997 ] ; 3 uses
  %vec.phi11999 = phi <16 x i32> [ %i.jeh, %vector.ph11995 ], [ %i.jvp, %vector.body11997 ]
  %vec.phi12000 = phi <16 x i32> [ zeroinitializer, %vector.ph11995 ], [ %i.jvq, %vector.body11997 ]
  %vec.phi12001 = phi <16 x i32> [ %i.jei, %vector.ph11995 ], [ %i.joz, %vector.body11997 ]
  %vec.phi12002 = phi <16 x i32> [ zeroinitializer, %vector.ph11995 ], [ %i.jpa, %vector.body11997 ]
  %i.jej = shl i64 %index11998, 1                 ; 2 uses
  %next.gep12003 = getelementptr i8, ptr %.428299852.us, i64 %i.jej
  %i.jek = getelementptr i8, ptr %.428299852.us, i64 %i.jej
  %next.gep12004 = getelementptr i8, ptr %i.jek, i64 32
  %i.jel = getelementptr inbounds nuw [4 x i8], ptr %i.jds, i64 %index11998 ; 2 uses
  %i.jem = getelementptr inbounds nuw i8, ptr %i.jel, i64 64
  %wide.load12005 = load <16 x i32>, ptr %i.jel, align 4, !tbaa !67
  %wide.load12006 = load <16 x i32>, ptr %i.jem, align 4, !tbaa !67
  %i.jen = sext <16 x i32> %wide.load12005 to <16 x i64> ; 16 uses
  %i.jeo = sext <16 x i32> %wide.load12006 to <16 x i64> ; 16 uses
  %i.jep = extractelement <16 x i64> %i.jen, i64 0 ; 2 uses
  %i.jeq = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jep ; 2 uses
  %i.jer = extractelement <16 x i64> %i.jen, i64 1 ; 2 uses
  %i.jes = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jer ; 2 uses
  %i.jet = extractelement <16 x i64> %i.jen, i64 2 ; 2 uses
  %i.jeu = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jet ; 2 uses
  %i.jev = extractelement <16 x i64> %i.jen, i64 3 ; 2 uses
  %i.jew = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jev ; 2 uses
  %i.jex = extractelement <16 x i64> %i.jen, i64 4 ; 2 uses
  %i.jey = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jex ; 2 uses
  %i.jez = extractelement <16 x i64> %i.jen, i64 5 ; 2 uses
  %i.jfa = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jez ; 2 uses
  %i.jfb = extractelement <16 x i64> %i.jen, i64 6 ; 2 uses
  %i.jfc = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfb ; 2 uses
  %i.jfd = extractelement <16 x i64> %i.jen, i64 7 ; 2 uses
  %i.jfe = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfd ; 2 uses
  %i.jff = extractelement <16 x i64> %i.jen, i64 8 ; 2 uses
  %i.jfg = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jff ; 2 uses
  %i.jfh = extractelement <16 x i64> %i.jen, i64 9 ; 2 uses
  %i.jfi = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfh ; 2 uses
  %i.jfj = extractelement <16 x i64> %i.jen, i64 10 ; 2 uses
  %i.jfk = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfj ; 2 uses
  %i.jfl = extractelement <16 x i64> %i.jen, i64 11 ; 2 uses
  %i.jfm = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfl ; 2 uses
  %i.jfn = extractelement <16 x i64> %i.jen, i64 12 ; 2 uses
  %i.jfo = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfn ; 2 uses
  %i.jfp = extractelement <16 x i64> %i.jen, i64 13 ; 2 uses
  %i.jfq = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfp ; 2 uses
  %i.jfr = extractelement <16 x i64> %i.jen, i64 14 ; 2 uses
  %i.jfs = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfr ; 2 uses
  %i.jft = extractelement <16 x i64> %i.jen, i64 15 ; 2 uses
  %i.jfu = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jft ; 2 uses
  %i.jfv = extractelement <16 x i64> %i.jeo, i64 0 ; 2 uses
  %i.jfw = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfv ; 2 uses
  %i.jfx = extractelement <16 x i64> %i.jeo, i64 1 ; 2 uses
  %i.jfy = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfx ; 2 uses
  %i.jfz = extractelement <16 x i64> %i.jeo, i64 2 ; 2 uses
  %i.jga = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jfz ; 2 uses
  %i.jgb = extractelement <16 x i64> %i.jeo, i64 3 ; 2 uses
  %i.jgc = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgb ; 2 uses
  %i.jgd = extractelement <16 x i64> %i.jeo, i64 4 ; 2 uses
  %i.jge = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgd ; 2 uses
  %i.jgf = extractelement <16 x i64> %i.jeo, i64 5 ; 2 uses
  %i.jgg = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgf ; 2 uses
  %i.jgh = extractelement <16 x i64> %i.jeo, i64 6 ; 2 uses
  %i.jgi = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgh ; 2 uses
  %i.jgj = extractelement <16 x i64> %i.jeo, i64 7 ; 2 uses
  %i.jgk = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgj ; 2 uses
  %i.jgl = extractelement <16 x i64> %i.jeo, i64 8 ; 2 uses
  %i.jgm = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgl ; 2 uses
  %i.jgn = extractelement <16 x i64> %i.jeo, i64 9 ; 2 uses
  %i.jgo = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgn ; 2 uses
  %i.jgp = extractelement <16 x i64> %i.jeo, i64 10 ; 2 uses
  %i.jgq = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgp ; 2 uses
  %i.jgr = extractelement <16 x i64> %i.jeo, i64 11 ; 2 uses
  %i.jgs = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgr ; 2 uses
  %i.jgt = extractelement <16 x i64> %i.jeo, i64 12 ; 2 uses
  %i.jgu = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgt ; 2 uses
  %i.jgv = extractelement <16 x i64> %i.jeo, i64 13 ; 2 uses
  %i.jgw = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgv ; 2 uses
  %i.jgx = extractelement <16 x i64> %i.jeo, i64 14 ; 2 uses
  %i.jgy = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgx ; 2 uses
  %i.jgz = extractelement <16 x i64> %i.jeo, i64 15 ; 2 uses
  %i.jha = getelementptr inbounds i8, ptr %gep9862.us, i64 %i.jgz ; 2 uses
  %i.jhb = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jep ; 2 uses
  %i.jhc = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jer ; 2 uses
  %i.jhd = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jet ; 2 uses
  %i.jhe = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jev ; 2 uses
  %i.jhf = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jex ; 2 uses
  %i.jhg = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jez ; 2 uses
  %i.jhh = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfb ; 2 uses
  %i.jhi = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfd ; 2 uses
  %i.jhj = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jff ; 2 uses
  %i.jhk = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfh ; 2 uses
  %i.jhl = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfj ; 2 uses
  %i.jhm = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfl ; 2 uses
  %i.jhn = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfn ; 2 uses
  %i.jho = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfp ; 2 uses
  %i.jhp = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfr ; 2 uses
  %i.jhq = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jft ; 2 uses
  %i.jhr = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfv ; 2 uses
  %i.jhs = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfx ; 2 uses
  %i.jht = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jfz ; 2 uses
  %i.jhu = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgb ; 2 uses
  %i.jhv = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgd ; 2 uses
  %i.jhw = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgf ; 2 uses
  %i.jhx = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgh ; 2 uses
  %i.jhy = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgj ; 2 uses
  %i.jhz = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgl ; 2 uses
  %i.jia = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgn ; 2 uses
  %i.jib = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgp ; 2 uses
  %i.jic = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgr ; 2 uses
  %i.jid = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgt ; 2 uses
  %i.jie = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgv ; 2 uses
  %i.jif = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgx ; 2 uses
  %i.jig = getelementptr inbounds i8, ptr %gep9867.us, i64 %i.jgz ; 2 uses
  %i.jih = load i8, ptr %i.jeq, align 1, !tbaa !100
  %i.jii = load i8, ptr %i.jes, align 1, !tbaa !100
  %i.jij = load i8, ptr %i.jeu, align 1, !tbaa !100
  %i.jik = load i8, ptr %i.jew, align 1, !tbaa !100
  %i.jil = load i8, ptr %i.jey, align 1, !tbaa !100
  %i.jim = load i8, ptr %i.jfa, align 1, !tbaa !100
  %i.jin = load i8, ptr %i.jfc, align 1, !tbaa !100
  %i.jio = load i8, ptr %i.jfe, align 1, !tbaa !100
end_hunk_4
begin_hunk_5_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
    i32 8, label %.lr.ph9907.split.us9913.us.preheader
  ]

.lr.ph9907.split.us9913.us.preheader:             ; preds = %.noexc3305.us
  br i1 %i.kve, label %.lr.ph9907.split.us9913.us.epil.preheader, label %.lr.ph9907.split.us9913.us

.lr.ph9907.split.us.us.preheader:                 ; preds = %.noexc3305.us
  br i1 %i.kvf, label %.lr.ph9907.split.us.us.epil.preheader, label %.lr.ph9907.split.us.us

.lr.ph9907.split.us9940.preheader:                ; preds = %.noexc3305.us
  br i1 %i.kvg, label %.lr.ph9907.split.us9940.epil.preheader, label %.lr.ph9907.split.us9940

.lr.ph9907.split.us9940:                          ; preds = %.lr.ph9907.split.us9940.preheader, %.lr.ph9907.split.us9940
  %indvars.iv10947 = phi i64 [ %indvars.iv.next10948.1, %.lr.ph9907.split.us9940 ], [ 0, %.lr.ph9907.split.us9940.preheader ] ; 3 uses
  %.127609905.us9935 = phi ptr [ %i.kwi, %.lr.ph9907.split.us9940 ], [ %.027599923.us, %.lr.ph9907.split.us9940.preheader ] ; 3 uses
  %.175149904.us9936 = phi <8 x i32> [ %i.kwh, %.lr.ph9907.split.us9940 ], [ %i.kvh, %.lr.ph9907.split.us9940.preheader ]
  %niter12482 = phi i64 [ %niter12482.next.1, %.lr.ph9907.split.us9940 ], [ 0, %.lr.ph9907.split.us9940.preheader ]
  %i.kvk = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10947
  %i.kvl = load i32, ptr %i.kvk, align 4, !tbaa !67
  %i.kvm = sext i32 %i.kvl to i64
  %i.kvn = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kvm
  %i.kvo = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.kvn, <16 x i32> %i.dof, <16 x i1> splat (i1 true), i32 1)
  %i.kvp = trunc <16 x i32> %i.kvo to <16 x i8>
  %i.kvq = sext <16 x i8> %i.kvp to <16 x i16>
  %i.kvr = load <16 x i8>, ptr %.127609905.us9935, align 16, !tbaa !100
  %i.kvs = sext <16 x i8> %i.kvr to <16 x i16>
  %i.kvt = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kvq, <16 x i16> %i.kvs)
  %i.kvu = add <8 x i32> %i.kvt, %.175149904.us9936
  %i.kvv = getelementptr inbounds nuw i8, ptr %.127609905.us9935, i64 16
  %i.kvw = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10947
  %i.kvx = getelementptr inbounds nuw i8, ptr %i.kvw, i64 4
  %i.kvy = load i32, ptr %i.kvx, align 4, !tbaa !67
  %i.kvz = sext i32 %i.kvy to i64
  %i.kwa = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kvz
  %i.kwb = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.kwa, <16 x i32> %i.dof, <16 x i1> splat (i1 true), i32 1)
  %i.kwc = trunc <16 x i32> %i.kwb to <16 x i8>
  %i.kwd = sext <16 x i8> %i.kwc to <16 x i16>
  %i.kwe = load <16 x i8>, ptr %i.kvv, align 16, !tbaa !100
  %i.kwf = sext <16 x i8> %i.kwe to <16 x i16>
  %i.kwg = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kwd, <16 x i16> %i.kwf)
  %i.kwh = add <8 x i32> %i.kwg, %i.kvu           ; 3 uses
  %i.kwi = getelementptr inbounds nuw i8, ptr %.127609905.us9935, i64 32 ; 2 uses
  %indvars.iv.next10948.1 = add nuw nsw i64 %indvars.iv10947, 2 ; 2 uses
  %niter12482.next.1 = add i64 %niter12482, 2     ; 2 uses
  %niter12482.ncmp.1 = icmp eq i64 %niter12482.next.1, %unroll_iter12481
  br i1 %niter12482.ncmp.1, label %._crit_edge9908.us.loopexit.unr-lcssa, label %.lr.ph9907.split.us9940, !llvm.loop !1986

._crit_edge9908.us.loopexit.unr-lcssa:            ; preds = %.lr.ph9907.split.us9940
  br i1 %lcmp.mod12478.not, label %._crit_edge9908.us, label %.lr.ph9907.split.us9940.epil.preheader

.lr.ph9907.split.us9940.epil.preheader:           ; preds = %._crit_edge9908.us.loopexit.unr-lcssa, %.lr.ph9907.split.us9940.preheader
  %indvars.iv10947.epil.init = phi i64 [ 0, %.lr.ph9907.split.us9940.preheader ], [ %indvars.iv.next10948.1, %._crit_edge9908.us.loopexit.unr-lcssa ]
  %.127609905.us9935.epil.init = phi ptr [ %.027599923.us, %.lr.ph9907.split.us9940.preheader ], [ %i.kwi, %._crit_edge9908.us.loopexit.unr-lcssa ]
  %.175149904.us9936.epil.init = phi <8 x i32> [ %i.kvh, %.lr.ph9907.split.us9940.preheader ], [ %i.kwh, %._crit_edge9908.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12480)
  %i.kwj = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10947.epil.init
  %i.kwk = load i32, ptr %i.kwj, align 4, !tbaa !67
  %i.kwl = sext i32 %i.kwk to i64
  %i.kwm = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kwl
  %i.kwn = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.kwm, <16 x i32> %i.dof, <16 x i1> splat (i1 true), i32 1)
  %i.kwo = trunc <16 x i32> %i.kwn to <16 x i8>
  %i.kwp = sext <16 x i8> %i.kwo to <16 x i16>
  %i.kwq = load <16 x i8>, ptr %.127609905.us9935.epil.init, align 16, !tbaa !100
  %i.kwr = sext <16 x i8> %i.kwq to <16 x i16>
  %i.kws = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kwp, <16 x i16> %i.kwr)
  %i.kwt = add <8 x i32> %i.kws, %.175149904.us9936.epil.init
  br label %._crit_edge9908.us

._crit_edge9908.us.loopexit12074.unr-lcssa:       ; preds = %.lr.ph9907.split.us.us
  br i1 %lcmp.mod12472.not, label %._crit_edge9908.us, label %.lr.ph9907.split.us.us.epil.preheader

.lr.ph9907.split.us.us.epil.preheader:            ; preds = %._crit_edge9908.us.loopexit12074.unr-lcssa, %.lr.ph9907.split.us.us.preheader
  %indvars.iv10940.epil.init = phi i64 [ 0, %.lr.ph9907.split.us.us.preheader ], [ %indvars.iv.next10941.1, %._crit_edge9908.us.loopexit12074.unr-lcssa ]
  %.127609905.us.us.epil.init = phi ptr [ %.027599923.us, %.lr.ph9907.split.us.us.preheader ], [ %i.kys, %._crit_edge9908.us.loopexit12074.unr-lcssa ]
  %.175149904.us.us.epil.init = phi <8 x i32> [ %i.kvh, %.lr.ph9907.split.us.us.preheader ], [ %i.kyr, %._crit_edge9908.us.loopexit12074.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12474)
  %i.kwu = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10940.epil.init
  %i.kwv = load i32, ptr %i.kwu, align 4, !tbaa !67
  %i.kww = sext i32 %i.kwv to i64
  %i.kwx = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kww
  %i.kwy = load <16 x i8>, ptr %i.kwx, align 1, !tbaa !100
  %i.kwz = sext <16 x i8> %i.kwy to <16 x i16>
  %i.kxa = load <16 x i8>, ptr %.127609905.us.us.epil.init, align 16, !tbaa !100
  %i.kxb = sext <16 x i8> %i.kxa to <16 x i16>
  %i.kxc = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kwz, <16 x i16> %i.kxb)
  %i.kxd = add <8 x i32> %i.kxc, %.175149904.us.us.epil.init
  br label %._crit_edge9908.us

._crit_edge9908.us.loopexit12075.unr-lcssa:       ; preds = %.lr.ph9907.split.us9913.us
  br i1 %lcmp.mod12466.not, label %._crit_edge9908.us, label %.lr.ph9907.split.us9913.us.epil.preheader

.lr.ph9907.split.us9913.us.epil.preheader:        ; preds = %._crit_edge9908.us.loopexit12075.unr-lcssa, %.lr.ph9907.split.us9913.us.preheader
  %indvars.iv10933.epil.init = phi i64 [ 0, %.lr.ph9907.split.us9913.us.preheader ], [ %indvars.iv.next10934.1, %._crit_edge9908.us.loopexit12075.unr-lcssa ]
  %.127609905.us9915.us.epil.init = phi ptr [ %.027599923.us, %.lr.ph9907.split.us9913.us.preheader ], [ %i.kzz, %._crit_edge9908.us.loopexit12075.unr-lcssa ]
  %.175149904.us9916.us.epil.init = phi <8 x i32> [ %i.kvh, %.lr.ph9907.split.us9913.us.preheader ], [ %i.kzy, %._crit_edge9908.us.loopexit12075.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12468)
  %i.kxe = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10933.epil.init
  %i.kxf = load i32, ptr %i.kxe, align 4, !tbaa !67
  %i.kxg = sext i32 %i.kxf to i64
  %i.kxh = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kxg ; 2 uses
  %i.kxi = load i64, ptr %i.kxh, align 1, !tbaa !100
  %i.kxj = insertelement <2 x i64> poison, i64 %i.kxi, i64 0
  %i.kxk = getelementptr inbounds nuw i8, ptr %i.kxh, i64 %i.v
  %i.kxl = load i64, ptr %i.kxk, align 1, !tbaa !100
  %i.kxm = insertelement <2 x i64> %i.kxj, i64 %i.kxl, i64 1
  %i.kxn = bitcast <2 x i64> %i.kxm to <16 x i8>
  %i.kxo = sext <16 x i8> %i.kxn to <16 x i16>
  %i.kxp = load <16 x i8>, ptr %.127609905.us9915.us.epil.init, align 16, !tbaa !100
  %i.kxq = sext <16 x i8> %i.kxp to <16 x i16>
  %i.kxr = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kxo, <16 x i16> %i.kxq)
  %i.kxs = add <8 x i32> %i.kxr, %.175149904.us9916.us.epil.init
  br label %._crit_edge9908.us

._crit_edge9908.us:                               ; preds = %.lr.ph9907.split.us9913.us.epil.preheader, %._crit_edge9908.us.loopexit12075.unr-lcssa, %.lr.ph9907.split.us.us.epil.preheader, %._crit_edge9908.us.loopexit12074.unr-lcssa, %.lr.ph9907.split.us9940.epil.preheader, %._crit_edge9908.us.loopexit.unr-lcssa
  %.us-phi9911.us.in = phi <8 x i32> [ %i.kwt, %.lr.ph9907.split.us9940.epil.preheader ], [ %i.kxd, %.lr.ph9907.split.us.us.epil.preheader ], [ %i.kwh, %._crit_edge9908.us.loopexit.unr-lcssa ], [ %i.kyr, %._crit_edge9908.us.loopexit12074.unr-lcssa ], [ %i.kzy, %._crit_edge9908.us.loopexit12075.unr-lcssa ], [ %i.kxs, %.lr.ph9907.split.us9913.us.epil.preheader ] ; 2 uses
  %scevgep10935 = getelementptr i8, ptr %.027599923.us, i64 16
  %scevgep10936 = getelementptr i8, ptr %scevgep10935, i64 %i.kvc ; 2 uses
  %i.kxt = add nuw nsw i32 %.027559924.us, 16     ; 2 uses
  %i.kxu = or disjoint i32 %i.kxt, 15
  %i.kxv = icmp slt i32 %i.kxu, %i.kuf
  br i1 %i.kxv, label %.noexc3305.us, label %._crit_edge9925.loopexit, !llvm.loop !1987

.lr.ph9907.split.us.us:                           ; preds = %.lr.ph9907.split.us.us.preheader, %.lr.ph9907.split.us.us
  %indvars.iv10940 = phi i64 [ %indvars.iv.next10941.1, %.lr.ph9907.split.us.us ], [ 0, %.lr.ph9907.split.us.us.preheader ] ; 3 uses
  %.127609905.us.us = phi ptr [ %i.kys, %.lr.ph9907.split.us.us ], [ %.027599923.us, %.lr.ph9907.split.us.us.preheader ] ; 3 uses
  %.175149904.us.us = phi <8 x i32> [ %i.kyr, %.lr.ph9907.split.us.us ], [ %i.kvh, %.lr.ph9907.split.us.us.preheader ]
  %niter12476 = phi i64 [ %niter12476.next.1, %.lr.ph9907.split.us.us ], [ 0, %.lr.ph9907.split.us.us.preheader ]
  %i.kxw = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10940
  %i.kxx = load i32, ptr %i.kxw, align 4, !tbaa !67
  %i.kxy = sext i32 %i.kxx to i64
  %i.kxz = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kxy
  %i.kya = load <16 x i8>, ptr %i.kxz, align 1, !tbaa !100
  %i.kyb = sext <16 x i8> %i.kya to <16 x i16>
  %i.kyc = load <16 x i8>, ptr %.127609905.us.us, align 16, !tbaa !100
  %i.kyd = sext <16 x i8> %i.kyc to <16 x i16>
  %i.kye = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kyb, <16 x i16> %i.kyd)
  %i.kyf = add <8 x i32> %i.kye, %.175149904.us.us
  %i.kyg = getelementptr inbounds nuw i8, ptr %.127609905.us.us, i64 16
  %i.kyh = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10940
  %i.kyi = getelementptr inbounds nuw i8, ptr %i.kyh, i64 4
  %i.kyj = load i32, ptr %i.kyi, align 4, !tbaa !67
  %i.kyk = sext i32 %i.kyj to i64
  %i.kyl = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kyk
  %i.kym = load <16 x i8>, ptr %i.kyl, align 1, !tbaa !100
  %i.kyn = sext <16 x i8> %i.kym to <16 x i16>
  %i.kyo = load <16 x i8>, ptr %i.kyg, align 16, !tbaa !100
  %i.kyp = sext <16 x i8> %i.kyo to <16 x i16>
  %i.kyq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kyn, <16 x i16> %i.kyp)
  %i.kyr = add <8 x i32> %i.kyq, %i.kyf           ; 3 uses
  %i.kys = getelementptr inbounds nuw i8, ptr %.127609905.us.us, i64 32 ; 2 uses
  %indvars.iv.next10941.1 = add nuw nsw i64 %indvars.iv10940, 2 ; 2 uses
  %niter12476.next.1 = add i64 %niter12476, 2     ; 2 uses
  %niter12476.ncmp.1 = icmp eq i64 %niter12476.next.1, %unroll_iter12475
  br i1 %niter12476.ncmp.1, label %._crit_edge9908.us.loopexit12074.unr-lcssa, label %.lr.ph9907.split.us.us, !llvm.loop !1986

.lr.ph9907.split.us9913.us:                       ; preds = %.lr.ph9907.split.us9913.us.preheader, %.lr.ph9907.split.us9913.us
  %indvars.iv10933 = phi i64 [ %indvars.iv.next10934.1, %.lr.ph9907.split.us9913.us ], [ 0, %.lr.ph9907.split.us9913.us.preheader ] ; 3 uses
  %.127609905.us9915.us = phi ptr [ %i.kzz, %.lr.ph9907.split.us9913.us ], [ %.027599923.us, %.lr.ph9907.split.us9913.us.preheader ] ; 3 uses
  %.175149904.us9916.us = phi <8 x i32> [ %i.kzy, %.lr.ph9907.split.us9913.us ], [ %i.kvh, %.lr.ph9907.split.us9913.us.preheader ]
  %niter12470 = phi i64 [ %niter12470.next.1, %.lr.ph9907.split.us9913.us ], [ 0, %.lr.ph9907.split.us9913.us.preheader ]
  %i.kyt = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10933
  %i.kyu = load i32, ptr %i.kyt, align 4, !tbaa !67
  %i.kyv = sext i32 %i.kyu to i64
  %i.kyw = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kyv ; 2 uses
  %i.kyx = load i64, ptr %i.kyw, align 1, !tbaa !100
  %i.kyy = insertelement <2 x i64> poison, i64 %i.kyx, i64 0
  %i.kyz = getelementptr inbounds nuw i8, ptr %i.kyw, i64 %i.v
  %i.kza = load i64, ptr %i.kyz, align 1, !tbaa !100
  %i.kzb = insertelement <2 x i64> %i.kyy, i64 %i.kza, i64 1
  %i.kzc = bitcast <2 x i64> %i.kzb to <16 x i8>
  %i.kzd = sext <16 x i8> %i.kzc to <16 x i16>
  %i.kze = load <16 x i8>, ptr %.127609905.us9915.us, align 16, !tbaa !100
  %i.kzf = sext <16 x i8> %i.kze to <16 x i16>
  %i.kzg = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kzd, <16 x i16> %i.kzf)
  %i.kzh = add <8 x i32> %i.kzg, %.175149904.us9916.us
  %i.kzi = getelementptr inbounds nuw i8, ptr %.127609905.us9915.us, i64 16
  %i.kzj = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %indvars.iv10933
  %i.kzk = getelementptr inbounds nuw i8, ptr %i.kzj, i64 4
  %i.kzl = load i32, ptr %i.kzk, align 4, !tbaa !67
  %i.kzm = sext i32 %i.kzl to i64
  %i.kzn = getelementptr inbounds i8, ptr %gep9933.us, i64 %i.kzm ; 2 uses
  %i.kzo = load i64, ptr %i.kzn, align 1, !tbaa !100
  %i.kzp = insertelement <2 x i64> poison, i64 %i.kzo, i64 0
  %i.kzq = getelementptr inbounds nuw i8, ptr %i.kzn, i64 %i.v
  %i.kzr = load i64, ptr %i.kzq, align 1, !tbaa !100
  %i.kzs = insertelement <2 x i64> %i.kzp, i64 %i.kzr, i64 1
  %i.kzt = bitcast <2 x i64> %i.kzs to <16 x i8>
  %i.kzu = sext <16 x i8> %i.kzt to <16 x i16>
  %i.kzv = load <16 x i8>, ptr %i.kzi, align 16, !tbaa !100
  %i.kzw = sext <16 x i8> %i.kzv to <16 x i16>
  %i.kzx = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.kzu, <16 x i16> %i.kzw)
  %i.kzy = add <8 x i32> %i.kzx, %i.kzh           ; 3 uses
  %i.kzz = getelementptr inbounds nuw i8, ptr %.127609905.us9915.us, i64 32 ; 2 uses
  %indvars.iv.next10934.1 = add nuw nsw i64 %indvars.iv10933, 2 ; 2 uses
  %niter12470.next.1 = add i64 %niter12470, 2     ; 2 uses
  %niter12470.ncmp.1 = icmp eq i64 %niter12470.next.1, %unroll_iter12469
  br i1 %niter12470.ncmp.1, label %._crit_edge9908.us.loopexit12075.unr-lcssa, label %.lr.ph9907.split.us9913.us, !llvm.loop !1986

._crit_edge9925.loopexit:                         ; preds = %._crit_edge9908.us
  %i.laa = and i32 %i.kuf, 2147483632
  br label %._crit_edge9925

._crit_edge9925:                                  ; preds = %.noexc3305.preheader, %._crit_edge9925.loopexit, %.noexc3307
  %62 = phi <8 x i32> [ zeroinitializer, %.noexc3307 ], [ %.us-phi9911.us.in, %._crit_edge9925.loopexit ], [ zeroinitializer, %.noexc3305.preheader ] ; 2 uses
  %.02759.lcssa = phi ptr [ %i.itk, %.noexc3307 ], [ %scevgep10936, %._crit_edge9925.loopexit ], [ %i.itk, %.noexc3305.preheader ] ; 2 uses
  %.02755.lcssa = phi i32 [ 0, %.noexc3307 ], [ %i.laa, %._crit_edge9925.loopexit ], [ %i.kuz, %.noexc3305.preheader ] ; 3 uses
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %64 = shufflevector <8 x i32> %62, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %65 = add <4 x i32> %63, %64
  %66 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %65)
  %i.lab = or disjoint i32 %.02755.lcssa, 7
  %i.lac = icmp slt i32 %i.lab, %i.kuf
  br i1 %i.lac, label %.noexc3303.lr.ph, label %._crit_edge9957

.noexc3303.lr.ph:                                 ; preds = %._crit_edge9925
  %i.lad = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.lae = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1988
  %i.laf = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1988
  %i.lag = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1988
  %i.lah = load i64, ptr %i.dob, align 8, !tbaa !65, !noalias !1988 ; 2 uses
  %factor.op.mul9961 = mul i64 %i.lag, %i.lah
  %i.lai = sext i32 %i.lae to i64
  %i.laj = load i32, ptr %i.b, align 4, !tbaa !67
  %i.lak = mul nsw i32 %i.laj, %i.kud
  %i.lal = sext i32 %i.lak to i64
  %i.lam = mul i64 %i.lah, %i.lai
  %i.lan = mul i64 %i.lam, %i.lal
  %invariant.gep9963 = getelementptr i8, ptr %i.laf, i64 %i.lan
  %i.lao = load i32, ptr %i.a, align 4, !tbaa !67
  %i.lap = mul i32 %i.lad, %i.kue
  %i.laq = mul i32 %i.lap, %i.lao
  %i.lar = sext i32 %i.laq to i64
  %invariant.gep9964 = getelementptr i8, ptr %invariant.gep9963, i64 %i.lar
  %i.las = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.lat = icmp sgt i32 %i.las, 0
  %i.lau = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.lav = icmp eq i32 %i.lad, 8
  %i.law = add i32 %i.las, -1
  %i.lax = zext i32 %i.law to i64
  %i.lay = shl nuw nsw i64 %i.lax, 3              ; 2 uses
  %wide.trip.count10959 = zext i32 %i.las to i64  ; 5 uses
  %i.laz = add nsw i64 %wide.trip.count10959, -1  ; 2 uses
  %xtraiter12483 = and i64 %wide.trip.count10959, 1
  %i.lba = icmp eq i64 %i.laz, 0
  %unroll_iter12487 = and i64 %wide.trip.count10959, 2147483646
  %lcmp.mod12484.not = icmp eq i64 %xtraiter12483, 0
  %lcmp.mod12486 = trunc i32 %i.las to i1
  %xtraiter12489 = and i64 %wide.trip.count10959, 1
  %i.lbb = icmp eq i64 %i.laz, 0
  %unroll_iter12493 = and i64 %wide.trip.count10959, 2147483646
  %lcmp.mod12490.not = icmp eq i64 %xtraiter12489, 0
  %lcmp.mod12492 = trunc i32 %i.las to i1
  br label %.noexc3303

.noexc3303:                                       ; preds = %.noexc3303.lr.ph, %._crit_edge9949
  %.127569956 = phi i32 [ %.02755.lcssa, %.noexc3303.lr.ph ], [ %i.lcy, %._crit_edge9949 ] ; 2 uses
  %.227619955 = phi ptr [ %.02759.lcssa, %.noexc3303.lr.ph ], [ %.32762.lcssa, %._crit_edge9949 ] ; 7 uses
  %i.lbc = phi <4 x i32> [ zeroinitializer, %.noexc3303.lr.ph ], [ %i.lcx, %._crit_edge9949 ] ; 5 uses
  %i.lbd = sdiv i32 %.127569956, %i.lad
  %i.lbe = sext i32 %i.lbd to i64
  %.reass9962 = mul i64 %factor.op.mul9961, %i.lbe
  %gep9965 = getelementptr i8, ptr %invariant.gep9964, i64 %.reass9962 ; 6 uses
  br i1 %i.lat, label %.lr.ph9948, label %._crit_edge9949

.lr.ph9948:                                       ; preds = %.noexc3303
  br i1 %i.lav, label %.lr.ph9948.split.us.preheader, label %.lr.ph9948.split.preheader

.lr.ph9948.split.preheader:                       ; preds = %.lr.ph9948
  br i1 %i.lba, label %.lr.ph9948.split.epil.preheader, label %.lr.ph9948.split

.lr.ph9948.split.us.preheader:                    ; preds = %.lr.ph9948
  br i1 %i.lbb, label %.lr.ph9948.split.us.epil.preheader, label %.lr.ph9948.split.us

.lr.ph9948.split.us:                              ; preds = %.lr.ph9948.split.us.preheader, %.lr.ph9948.split.us
  %indvars.iv10961 = phi i64 [ %indvars.iv.next10962.1, %.lr.ph9948.split.us ], [ 0, %.lr.ph9948.split.us.preheader ] ; 3 uses
  %.327629946.us = phi ptr [ %i.lcb, %.lr.ph9948.split.us ], [ %.227619955, %.lr.ph9948.split.us.preheader ] ; 3 uses
  %.19945.us = phi <4 x i32> [ %i.lca, %.lr.ph9948.split.us ], [ %i.lbc, %.lr.ph9948.split.us.preheader ]
  %niter12494 = phi i64 [ %niter12494.next.1, %.lr.ph9948.split.us ], [ 0, %.lr.ph9948.split.us.preheader ]
  %i.lbf = getelementptr inbounds nuw [4 x i8], ptr %i.lau, i64 %indvars.iv10961
  %i.lbg = load i32, ptr %i.lbf, align 4, !tbaa !67
  %i.lbh = sext i32 %i.lbg to i64
  %i.lbi = getelementptr inbounds i8, ptr %gep9965, i64 %i.lbh
  %i.lbj = load <8 x i8>, ptr %i.lbi, align 1, !tbaa !100
  %i.lbk = sext <8 x i8> %i.lbj to <8 x i16>
  %i.lbl = load <8 x i8>, ptr %.327629946.us, align 1, !tbaa !100
  %i.lbm = sext <8 x i8> %i.lbl to <8 x i16>
  %i.lbn = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lbk, <8 x i16> %i.lbm)
  %i.lbo = add <4 x i32> %i.lbn, %.19945.us
  %i.lbp = getelementptr inbounds nuw i8, ptr %.327629946.us, i64 8
  %i.lbq = getelementptr inbounds nuw [4 x i8], ptr %i.lau, i64 %indvars.iv10961
  %i.lbr = getelementptr inbounds nuw i8, ptr %i.lbq, i64 4
  %i.lbs = load i32, ptr %i.lbr, align 4, !tbaa !67
  %i.lbt = sext i32 %i.lbs to i64
  %i.lbu = getelementptr inbounds i8, ptr %gep9965, i64 %i.lbt
  %i.lbv = load <8 x i8>, ptr %i.lbu, align 1, !tbaa !100
  %i.lbw = sext <8 x i8> %i.lbv to <8 x i16>
  %i.lbx = load <8 x i8>, ptr %i.lbp, align 1, !tbaa !100
  %i.lby = sext <8 x i8> %i.lbx to <8 x i16>
  %i.lbz = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lbw, <8 x i16> %i.lby)
  %i.lca = add <4 x i32> %i.lbz, %i.lbo           ; 3 uses
  %i.lcb = getelementptr inbounds nuw i8, ptr %.327629946.us, i64 16 ; 2 uses
  %indvars.iv.next10962.1 = add nuw nsw i64 %indvars.iv10961, 2 ; 2 uses
  %niter12494.next.1 = add i64 %niter12494, 2     ; 2 uses
  %niter12494.ncmp.1 = icmp eq i64 %niter12494.next.1, %unroll_iter12493
  br i1 %niter12494.ncmp.1, label %._crit_edge9949.loopexit.unr-lcssa, label %.lr.ph9948.split.us, !llvm.loop !1991

._crit_edge9949.loopexit.unr-lcssa:               ; preds = %.lr.ph9948.split.us
  br i1 %lcmp.mod12490.not, label %._crit_edge9949.loopexit, label %.lr.ph9948.split.us.epil.preheader

.lr.ph9948.split.us.epil.preheader:               ; preds = %._crit_edge9949.loopexit.unr-lcssa, %.lr.ph9948.split.us.preheader
  %indvars.iv10961.epil.init = phi i64 [ 0, %.lr.ph9948.split.us.preheader ], [ %indvars.iv.next10962.1, %._crit_edge9949.loopexit.unr-lcssa ]
  %.327629946.us.epil.init = phi ptr [ %.227619955, %.lr.ph9948.split.us.preheader ], [ %i.lcb, %._crit_edge9949.loopexit.unr-lcssa ]
  %.19945.us.epil.init = phi <4 x i32> [ %i.lbc, %.lr.ph9948.split.us.preheader ], [ %i.lca, %._crit_edge9949.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12492)
  %i.lcc = getelementptr inbounds nuw [4 x i8], ptr %i.lau, i64 %indvars.iv10961.epil.init
  %i.lcd = load i32, ptr %i.lcc, align 4, !tbaa !67
  %i.lce = sext i32 %i.lcd to i64
  %i.lcf = getelementptr inbounds i8, ptr %gep9965, i64 %i.lce
  %i.lcg = load <8 x i8>, ptr %i.lcf, align 1, !tbaa !100
  %i.lch = sext <8 x i8> %i.lcg to <8 x i16>
  %i.lci = load <8 x i8>, ptr %.327629946.us.epil.init, align 1, !tbaa !100
  %i.lcj = sext <8 x i8> %i.lci to <8 x i16>
  %i.lck = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lch, <8 x i16> %i.lcj)
  %i.lcl = add <4 x i32> %i.lck, %.19945.us.epil.init
  br label %._crit_edge9949.loopexit

._crit_edge9949.loopexit:                         ; preds = %._crit_edge9949.loopexit.unr-lcssa, %.lr.ph9948.split.us.epil.preheader
  %.lcssa12138 = phi <4 x i32> [ %i.lca, %._crit_edge9949.loopexit.unr-lcssa ], [ %i.lcl, %.lr.ph9948.split.us.epil.preheader ]
  %scevgep10963 = getelementptr i8, ptr %.227619955, i64 8
  %scevgep10964 = getelementptr i8, ptr %scevgep10963, i64 %i.lay
  br label %._crit_edge9949

._crit_edge9949.loopexit10010.unr-lcssa:          ; preds = %.lr.ph9948.split
  br i1 %lcmp.mod12484.not, label %._crit_edge9949.loopexit10010, label %.lr.ph9948.split.epil.preheader

.lr.ph9948.split.epil.preheader:                  ; preds = %._crit_edge9949.loopexit10010.unr-lcssa, %.lr.ph9948.split.preheader
  %indvars.iv10954.epil.init = phi i64 [ 0, %.lr.ph9948.split.preheader ], [ %indvars.iv.next10955.1, %._crit_edge9949.loopexit10010.unr-lcssa ]
  %.327629946.epil.init = phi ptr [ %.227619955, %.lr.ph9948.split.preheader ], [ %i.ldz, %._crit_edge9949.loopexit10010.unr-lcssa ]
  %.19945.epil.init = phi <4 x i32> [ %i.lbc, %.lr.ph9948.split.preheader ], [ %i.ldy, %._crit_edge9949.loopexit10010.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12486)
  %i.lcm = getelementptr inbounds nuw [4 x i8], ptr %i.lau, i64 %indvars.iv10954.epil.init
  %i.lcn = load i32, ptr %i.lcm, align 4, !tbaa !67
  %i.lco = sext i32 %i.lcn to i64
  %i.lcp = getelementptr inbounds i8, ptr %gep9965, i64 %i.lco
  %i.lcq = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lcp, <8 x i32> %i.doi, <8 x i32> splat (i32 -1), i8 1)
  %i.lcr = trunc <8 x i32> %i.lcq to <8 x i8>
  %i.lcs = sext <8 x i8> %i.lcr to <8 x i16>
  %i.lct = load <8 x i8>, ptr %.327629946.epil.init, align 1, !tbaa !100
  %i.lcu = sext <8 x i8> %i.lct to <8 x i16>
  %i.lcv = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lcs, <8 x i16> %i.lcu)
  %i.lcw = add <4 x i32> %i.lcv, %.19945.epil.init
  br label %._crit_edge9949.loopexit10010

._crit_edge9949.loopexit10010:                    ; preds = %._crit_edge9949.loopexit10010.unr-lcssa, %.lr.ph9948.split.epil.preheader
  %.lcssa12137 = phi <4 x i32> [ %i.ldy, %._crit_edge9949.loopexit10010.unr-lcssa ], [ %i.lcw, %.lr.ph9948.split.epil.preheader ]
  %scevgep10956 = getelementptr i8, ptr %.227619955, i64 8
  %scevgep10957 = getelementptr i8, ptr %scevgep10956, i64 %i.lay
  br label %._crit_edge9949

._crit_edge9949:                                  ; preds = %._crit_edge9949.loopexit10010, %._crit_edge9949.loopexit, %.noexc3303
  %i.lcx = phi <4 x i32> [ %i.lbc, %.noexc3303 ], [ %.lcssa12138, %._crit_edge9949.loopexit ], [ %.lcssa12137, %._crit_edge9949.loopexit10010 ] ; 2 uses
  %.32762.lcssa = phi ptr [ %.227619955, %.noexc3303 ], [ %scevgep10964, %._crit_edge9949.loopexit ], [ %scevgep10957, %._crit_edge9949.loopexit10010 ] ; 2 uses
  %i.lcy = add nuw nsw i32 %.127569956, 8         ; 3 uses
  %i.lcz = or disjoint i32 %i.lcy, 7
  %i.lda = icmp slt i32 %i.lcz, %i.kuf
  br i1 %i.lda, label %.noexc3303, label %._crit_edge9957, !llvm.loop !1992

.lr.ph9948.split:                                 ; preds = %.lr.ph9948.split.preheader, %.lr.ph9948.split
  %indvars.iv10954 = phi i64 [ %indvars.iv.next10955.1, %.lr.ph9948.split ], [ 0, %.lr.ph9948.split.preheader ] ; 3 uses
  %.327629946 = phi ptr [ %i.ldz, %.lr.ph9948.split ], [ %.227619955, %.lr.ph9948.split.preheader ] ; 3 uses
  %.19945 = phi <4 x i32> [ %i.ldy, %.lr.ph9948.split ], [ %i.lbc, %.lr.ph9948.split.preheader ]
  %niter12488 = phi i64 [ %niter12488.next.1, %.lr.ph9948.split ], [ 0, %.lr.ph9948.split.preheader ]
  %i.ldb = getelementptr inbounds nuw [4 x i8], ptr %i.lau, i64 %indvars.iv10954
  %i.ldc = load i32, ptr %i.ldb, align 4, !tbaa !67
  %i.ldd = sext i32 %i.ldc to i64
  %i.lde = getelementptr inbounds i8, ptr %gep9965, i64 %i.ldd
  %i.ldf = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lde, <8 x i32> %i.doi, <8 x i32> splat (i32 -1), i8 1)
  %i.ldg = trunc <8 x i32> %i.ldf to <8 x i8>
  %i.ldh = sext <8 x i8> %i.ldg to <8 x i16>
  %i.ldi = load <8 x i8>, ptr %.327629946, align 1, !tbaa !100
  %i.ldj = sext <8 x i8> %i.ldi to <8 x i16>
  %i.ldk = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ldh, <8 x i16> %i.ldj)
  %i.ldl = add <4 x i32> %i.ldk, %.19945
  %i.ldm = getelementptr inbounds nuw i8, ptr %.327629946, i64 8
  %i.ldn = getelementptr inbounds nuw [4 x i8], ptr %i.lau, i64 %indvars.iv10954
  %i.ldo = getelementptr inbounds nuw i8, ptr %i.ldn, i64 4
  %i.ldp = load i32, ptr %i.ldo, align 4, !tbaa !67
  %i.ldq = sext i32 %i.ldp to i64
  %i.ldr = getelementptr inbounds i8, ptr %gep9965, i64 %i.ldq
  %i.lds = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ldr, <8 x i32> %i.doi, <8 x i32> splat (i32 -1), i8 1)
  %i.ldt = trunc <8 x i32> %i.lds to <8 x i8>
  %i.ldu = sext <8 x i8> %i.ldt to <8 x i16>
  %i.ldv = load <8 x i8>, ptr %i.ldm, align 1, !tbaa !100
  %i.ldw = sext <8 x i8> %i.ldv to <8 x i16>
  %i.ldx = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ldu, <8 x i16> %i.ldw)
  %i.ldy = add <4 x i32> %i.ldx, %i.ldl           ; 3 uses
  %i.ldz = getelementptr inbounds nuw i8, ptr %.327629946, i64 16 ; 2 uses
  %indvars.iv.next10955.1 = add nuw nsw i64 %indvars.iv10954, 2 ; 2 uses
  %niter12488.next.1 = add i64 %niter12488, 2     ; 2 uses
  %niter12488.ncmp.1 = icmp eq i64 %niter12488.next.1, %unroll_iter12487
  br i1 %niter12488.ncmp.1, label %._crit_edge9949.loopexit10010.unr-lcssa, label %.lr.ph9948.split, !llvm.loop !1991

._crit_edge9957:                                  ; preds = %._crit_edge9949, %._crit_edge9925
  %67 = phi <4 x i32> [ zeroinitializer, %._crit_edge9925 ], [ %i.lcx, %._crit_edge9949 ] ; 2 uses
  %.22761.lcssa = phi ptr [ %.02759.lcssa, %._crit_edge9925 ], [ %.32762.lcssa, %._crit_edge9949 ] ; 3 uses
  %.12756.lcssa = phi i32 [ %.02755.lcssa, %._crit_edge9925 ], [ %i.lcy, %._crit_edge9949 ] ; 6 uses
  %68 = shufflevector <4 x i32> %67, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %69 = add <4 x i32> %68, %67                    ; 2 uses
  %70 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %71 = add <4 x i32> %70, %69
  %72 = extractelement <4 x i32> %71, i64 0
  %i.lea = add nsw i32 %72, %66                   ; 3 uses
  %i.leb = or disjoint i32 %.12756.lcssa, 1
  %i.lec = icmp slt i32 %i.leb, %i.kuf
  br i1 %i.lec, label %.noexc3301.lr.ph, label %.preheader

.noexc3301.lr.ph:                                 ; preds = %._crit_edge9957
  %i.led = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1993
  %i.lee = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1993
  %i.lef = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !1993
  %i.leg = load i64, ptr %i.dob, align 8, !tbaa !65, !noalias !1993 ; 2 uses
  %factor.op.mul9979 = mul i64 %i.lef, %i.leg
  %i.leh = sext i32 %i.led to i64
  %i.lei = load i32, ptr %i.b, align 4, !tbaa !67
  %i.lej = mul nsw i32 %i.lei, %i.kud
  %i.lek = sext i32 %i.lej to i64
  %i.lel = mul i64 %i.leg, %i.leh
  %i.lem = mul i64 %i.lel, %i.lek
  %invariant.gep9981 = getelementptr i8, ptr %i.lee, i64 %i.lem
  %i.len = load i32, ptr %i.a, align 4, !tbaa !67
  %i.leo = mul nsw i32 %i.len, %i.kue
  %i.lep = sext i32 %i.leo to i64
  %invariant.gep9982 = getelementptr i8, ptr %invariant.gep9981, i64 %i.lep
  %i.leq = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.ler = icmp sgt i32 %i.leq, 0
  %i.les = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.ler, label %.noexc3301.us.preheader, label %.noexc3301.preheader

.noexc3301.preheader:                             ; preds = %.noexc3301.lr.ph
  %i.let = add nuw i32 %.12756.lcssa, 2
  %i.leu = add nuw i32 %.12756.lcssa, 3
  %smax10968 = call i32 @llvm.smax.i32(i32 %i.kuf, i32 %i.leu)
  %i.lev = add nsw i32 %smax10968, -2
  %i.lew = sub nsw i32 %i.lev, %.12756.lcssa
  %i.lex = and i32 %i.lew, -2
  %i.ley = add i32 %i.let, %i.lex
  br label %.preheader

.noexc3301.us.preheader:                          ; preds = %.noexc3301.lr.ph
  %i.lez = add nsw i32 %i.leq, -1
  %i.lfa = zext nneg i32 %i.lez to i64
  %i.lfb = shl nuw nsw i64 %i.lfa, 1
  %i.lfc = zext nneg i32 %.12756.lcssa to i64
  %wide.trip.count10974 = zext nneg i32 %i.leq to i64 ; 6 uses
  %min.iters.check11903 = icmp ult i32 %i.leq, 8
  %min.iters.check11905 = icmp ult i32 %i.leq, 32
  %i.lfd = and i64 %wide.trip.count10974, 24
  %n.vec11907 = and i64 %wide.trip.count10974, 2147483616 ; 5 uses
  %i.lfe = shl nuw nsw i64 %n.vec11907, 1
  %cmp.n11925 = icmp eq i64 %n.vec11907, %wide.trip.count10974
  %min.epilog.iters.check11931 = icmp eq i64 %i.lfd, 0
  %n.vec11933 = and i64 %wide.trip.count10974, 2147483640 ; 4 uses
  %i.lff = shl nuw nsw i64 %n.vec11933, 1
  %cmp.n11944 = icmp eq i64 %n.vec11933, %wide.trip.count10974
  br label %iter.check11928

iter.check11928:                                  ; preds = %.noexc3301.us.preheader, %._crit_edge9970.us
  %indvars.iv10976 = phi i64 [ %i.lfc, %.noexc3301.us.preheader ], [ %indvars.iv.next10977, %._crit_edge9970.us ] ; 2 uses
  %.427639974.us = phi ptr [ %.22761.lcssa, %.noexc3301.us.preheader ], [ %scevgep10972, %._crit_edge9970.us ] ; 7 uses
  %.027679973.us = phi i32 [ %i.lea, %.noexc3301.us.preheader ], [ %.lcssa11413, %._crit_edge9970.us ] ; 3 uses
  %.reass9980.us = mul i64 %factor.op.mul9979, %indvars.iv10976
  %gep9983.us = getelementptr i8, ptr %invariant.gep9982, i64 %.reass9980.us ; 41 uses
  br i1 %min.iters.check11903, label %vec.epilog.scalar.ph11929.preheader, label %vector.main.loop.iter.check11904

vector.main.loop.iter.check11904:                 ; preds = %iter.check11928
  br i1 %min.iters.check11905, label %vec.epilog.ph11932, label %vector.ph11906

vector.ph11906:                                   ; preds = %vector.main.loop.iter.check11904
  %i.lfg = getelementptr i8, ptr %.427639974.us, i64 %i.lfe
  %i.lfh = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.027679973.us, i64 0
  br label %vector.body11908

vector.body11908:                                 ; preds = %vector.body11908, %vector.ph11906
  %index11909 = phi i64 [ 0, %vector.ph11906 ], [ %index.next11922, %vector.body11908 ] ; 3 uses
  %vec.phi11910 = phi <16 x i32> [ %i.lfh, %vector.ph11906 ], [ %i.los, %vector.body11908 ]
  %vec.phi11911 = phi <16 x i32> [ zeroinitializer, %vector.ph11906 ], [ %i.lot, %vector.body11908 ]
  %i.lfi = shl i64 %index11909, 1                 ; 2 uses
  %next.gep11912 = getelementptr i8, ptr %.427639974.us, i64 %i.lfi
  %i.lfj = getelementptr i8, ptr %.427639974.us, i64 %i.lfi
  %next.gep11913 = getelementptr i8, ptr %i.lfj, i64 32
  %i.lfk = getelementptr inbounds nuw [4 x i8], ptr %i.les, i64 %index11909 ; 2 uses
  %i.lfl = getelementptr inbounds nuw i8, ptr %i.lfk, i64 64
  %wide.load11914 = load <16 x i32>, ptr %i.lfk, align 4, !tbaa !67
  %wide.load11915 = load <16 x i32>, ptr %i.lfl, align 4, !tbaa !67
  %i.lfm = sext <16 x i32> %wide.load11914 to <16 x i64> ; 16 uses
  %i.lfn = sext <16 x i32> %wide.load11915 to <16 x i64> ; 16 uses
  %i.lfo = extractelement <16 x i64> %i.lfm, i64 0
  %i.lfp = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lfo ; 2 uses
  %i.lfq = extractelement <16 x i64> %i.lfm, i64 1
  %i.lfr = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lfq ; 2 uses
  %i.lfs = extractelement <16 x i64> %i.lfm, i64 2
  %i.lft = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lfs ; 2 uses
  %i.lfu = extractelement <16 x i64> %i.lfm, i64 3
  %i.lfv = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lfu ; 2 uses
  %i.lfw = extractelement <16 x i64> %i.lfm, i64 4
  %i.lfx = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lfw ; 2 uses
  %i.lfy = extractelement <16 x i64> %i.lfm, i64 5
  %i.lfz = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lfy ; 2 uses
  %i.lga = extractelement <16 x i64> %i.lfm, i64 6
  %i.lgb = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lga ; 2 uses
  %i.lgc = extractelement <16 x i64> %i.lfm, i64 7
  %i.lgd = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgc ; 2 uses
  %i.lge = extractelement <16 x i64> %i.lfm, i64 8
  %i.lgf = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lge ; 2 uses
  %i.lgg = extractelement <16 x i64> %i.lfm, i64 9
  %i.lgh = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgg ; 2 uses
  %i.lgi = extractelement <16 x i64> %i.lfm, i64 10
  %i.lgj = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgi ; 2 uses
  %i.lgk = extractelement <16 x i64> %i.lfm, i64 11
  %i.lgl = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgk ; 2 uses
  %i.lgm = extractelement <16 x i64> %i.lfm, i64 12
  %i.lgn = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgm ; 2 uses
  %i.lgo = extractelement <16 x i64> %i.lfm, i64 13
  %i.lgp = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgo ; 2 uses
  %i.lgq = extractelement <16 x i64> %i.lfm, i64 14
  %i.lgr = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgq ; 2 uses
  %i.lgs = extractelement <16 x i64> %i.lfm, i64 15
  %i.lgt = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgs ; 2 uses
  %i.lgu = extractelement <16 x i64> %i.lfn, i64 0
  %i.lgv = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgu ; 2 uses
  %i.lgw = extractelement <16 x i64> %i.lfn, i64 1
  %i.lgx = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgw ; 2 uses
  %i.lgy = extractelement <16 x i64> %i.lfn, i64 2
  %i.lgz = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lgy ; 2 uses
  %i.lha = extractelement <16 x i64> %i.lfn, i64 3
  %i.lhb = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lha ; 2 uses
  %i.lhc = extractelement <16 x i64> %i.lfn, i64 4
  %i.lhd = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhc ; 2 uses
  %i.lhe = extractelement <16 x i64> %i.lfn, i64 5
  %i.lhf = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhe ; 2 uses
  %i.lhg = extractelement <16 x i64> %i.lfn, i64 6
  %i.lhh = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhg ; 2 uses
  %i.lhi = extractelement <16 x i64> %i.lfn, i64 7
  %i.lhj = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhi ; 2 uses
  %i.lhk = extractelement <16 x i64> %i.lfn, i64 8
  %i.lhl = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhk ; 2 uses
  %i.lhm = extractelement <16 x i64> %i.lfn, i64 9
  %i.lhn = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhm ; 2 uses
  %i.lho = extractelement <16 x i64> %i.lfn, i64 10
  %i.lhp = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lho ; 2 uses
  %i.lhq = extractelement <16 x i64> %i.lfn, i64 11
  %i.lhr = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhq ; 2 uses
  %i.lhs = extractelement <16 x i64> %i.lfn, i64 12
  %i.lht = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhs ; 2 uses
  %i.lhu = extractelement <16 x i64> %i.lfn, i64 13
  %i.lhv = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhu ; 2 uses
  %i.lhw = extractelement <16 x i64> %i.lfn, i64 14
  %i.lhx = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhw ; 2 uses
  %i.lhy = extractelement <16 x i64> %i.lfn, i64 15
  %i.lhz = getelementptr inbounds i8, ptr %gep9983.us, i64 %i.lhy ; 2 uses
  %i.lia = load i8, ptr %i.lfp, align 1, !tbaa !100
  %i.lib = load i8, ptr %i.lfr, align 1, !tbaa !100
  %i.lic = load i8, ptr %i.lft, align 1, !tbaa !100
  %i.lid = load i8, ptr %i.lfv, align 1, !tbaa !100
  %i.lie = load i8, ptr %i.lfx, align 1, !tbaa !100
  %i.lif = load i8, ptr %i.lfz, align 1, !tbaa !100
  %i.lig = load i8, ptr %i.lgb, align 1, !tbaa !100
  %i.lih = load i8, ptr %i.lgd, align 1, !tbaa !100
  %i.lii = load i8, ptr %i.lgf, align 1, !tbaa !100
  %i.lij = load i8, ptr %i.lgh, align 1, !tbaa !100
  %i.lik = load i8, ptr %i.lgj, align 1, !tbaa !100
  %i.lil = load i8, ptr %i.lgl, align 1, !tbaa !100
  %i.lim = load i8, ptr %i.lgn, align 1, !tbaa !100
  %i.lin = load i8, ptr %i.lgp, align 1, !tbaa !100
  %i.lio = load i8, ptr %i.lgr, align 1, !tbaa !100
  %i.lip = load i8, ptr %i.lgt, align 1, !tbaa !100
  %i.liq = insertelement <16 x i8> poison, i8 %i.lia, i64 0
  %i.lir = insertelement <16 x i8> %i.liq, i8 %i.lib, i64 1
  %i.lis = insertelement <16 x i8> %i.lir, i8 %i.lic, i64 2
  %i.lit = insertelement <16 x i8> %i.lis, i8 %i.lid, i64 3
  %i.liu = insertelement <16 x i8> %i.lit, i8 %i.lie, i64 4
  %i.liv = insertelement <16 x i8> %i.liu, i8 %i.lif, i64 5
  %i.liw = insertelement <16 x i8> %i.liv, i8 %i.lig, i64 6
  %i.lix = insertelement <16 x i8> %i.liw, i8 %i.lih, i64 7
  %i.liy = insertelement <16 x i8> %i.lix, i8 %i.lii, i64 8
  %i.liz = insertelement <16 x i8> %i.liy, i8 %i.lij, i64 9
  %i.lja = insertelement <16 x i8> %i.liz, i8 %i.lik, i64 10
  %i.ljb = insertelement <16 x i8> %i.lja, i8 %i.lil, i64 11
  %i.ljc = insertelement <16 x i8> %i.ljb, i8 %i.lim, i64 12
  %i.ljd = insertelement <16 x i8> %i.ljc, i8 %i.lin, i64 13
  %i.lje = insertelement <16 x i8> %i.ljd, i8 %i.lio, i64 14
  %i.ljf = insertelement <16 x i8> %i.lje, i8 %i.lip, i64 15
  %i.ljg = load i8, ptr %i.lgv, align 1, !tbaa !100
  %i.ljh = load i8, ptr %i.lgx, align 1, !tbaa !100
  %i.lji = load i8, ptr %i.lgz, align 1, !tbaa !100
  %i.ljj = load i8, ptr %i.lhb, align 1, !tbaa !100
  %i.ljk = load i8, ptr %i.lhd, align 1, !tbaa !100
  %i.ljl = load i8, ptr %i.lhf, align 1, !tbaa !100
  %i.ljm = load i8, ptr %i.lhh, align 1, !tbaa !100
  %i.ljn = load i8, ptr %i.lhj, align 1, !tbaa !100
  %i.ljo = load i8, ptr %i.lhl, align 1, !tbaa !100
  %i.ljp = load i8, ptr %i.lhn, align 1, !tbaa !100
  %i.ljq = load i8, ptr %i.lhp, align 1, !tbaa !100
  %i.ljr = load i8, ptr %i.lhr, align 1, !tbaa !100
  %i.ljs = load i8, ptr %i.lht, align 1, !tbaa !100
  %i.ljt = load i8, ptr %i.lhv, align 1, !tbaa !100
  %i.lju = load i8, ptr %i.lhx, align 1, !tbaa !100
  %i.ljv = load i8, ptr %i.lhz, align 1, !tbaa !100
  %i.ljw = insertelement <16 x i8> poison, i8 %i.ljg, i64 0
  %i.ljx = insertelement <16 x i8> %i.ljw, i8 %i.ljh, i64 1
  %i.ljy = insertelement <16 x i8> %i.ljx, i8 %i.lji, i64 2
  %i.ljz = insertelement <16 x i8> %i.ljy, i8 %i.ljj, i64 3
end_hunk_5
