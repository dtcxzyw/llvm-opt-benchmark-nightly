inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.elr = sext i32 %i.elq to i64
  %.reass9097 = mul i64 %factor.op.mul9096, %i.elr ; 2 uses
  %gep9100 = getelementptr i8, ptr %invariant.gep9099, i64 %.reass9097 ; 5 uses
  %gep9105 = getelementptr i8, ptr %invariant.gep9104, i64 %.reass9097 ; 5 uses
  br i1 %i.eli, label %.lr.ph9066, label %._crit_edge9067

.lr.ph9066:                                       ; preds = %.noexc3487
  switch i32 %i.ekm, label %.lr.ph9066.split [
    i32 16, label %.lr.ph9066.split.us.preheader
    i32 8, label %.lr.ph9066.split.us9074
  ]

.lr.ph9066.split.us.preheader:                    ; preds = %.lr.ph9066
  br i1 %i.eln, label %.lr.ph9066.split.us.epil.preheader, label %.lr.ph9066.split.us

.lr.ph9066.split.us:                              ; preds = %.lr.ph9066.split.us.preheader, %.lr.ph9066.split.us
  %indvars.iv10473 = phi i64 [ %indvars.iv.next10474.1, %.lr.ph9066.split.us ], [ 0, %.lr.ph9066.split.us.preheader ] ; 3 uses
  %.129559065.us = phi ptr [ %i.eng, %.lr.ph9066.split.us ], [ %.029549090, %.lr.ph9066.split.us.preheader ] ; 3 uses
  %.175609063.us = phi <16 x i32> [ %i.enf, %.lr.ph9066.split.us ], [ %i.elo, %.lr.ph9066.split.us.preheader ]
  %.175629062.us = phi <16 x i32> [ %i.end, %.lr.ph9066.split.us ], [ %i.elp, %.lr.ph9066.split.us.preheader ]
  %niter12216 = phi i64 [ %niter12216.next.1, %.lr.ph9066.split.us ], [ 0, %.lr.ph9066.split.us.preheader ]
  %i.els = getelementptr inbounds nuw [4 x i8], ptr %i.elj, i64 %indvars.iv10473
  %i.elt = load i32, ptr %i.els, align 4, !tbaa !9
  %i.elu = sext i32 %i.elt to i64                 ; 2 uses
  %i.elv = getelementptr inbounds i8, ptr %gep9100, i64 %i.elu
  %i.elw = getelementptr inbounds i8, ptr %gep9105, i64 %i.elu
  %i.elx = load <16 x i8>, ptr %i.elv, align 16, !tbaa !44
  %i.ely = load <16 x i8>, ptr %i.elw, align 16, !tbaa !44
  %i.elz = sext <16 x i8> %i.elx to <16 x i16>
  %i.ema = bitcast <16 x i16> %i.elz to <4 x i64>
  %i.emb = sext <16 x i8> %i.ely to <16 x i16>
  %i.emc = bitcast <16 x i16> %i.emb to <4 x i64>
  %i.emd = shufflevector <4 x i64> %i.ema, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eme = shufflevector <4 x i64> %i.emc, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.emf = load <32 x i8>, ptr %.129559065.us, align 32, !tbaa !44
  %i.emg = sext <32 x i8> %i.emf to <32 x i16>    ; 2 uses
  %i.emh = bitcast <8 x i64> %i.emd to <32 x i16>
  %i.emi = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175629062.us, <32 x i16> %i.emh, <32 x i16> %i.emg)
  %i.emj = bitcast <8 x i64> %i.eme to <32 x i16>
  %i.emk = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175609063.us, <32 x i16> %i.emj, <32 x i16> %i.emg)
  %i.eml = getelementptr inbounds nuw i8, ptr %.129559065.us, i64 32
  %i.emm = getelementptr inbounds nuw [4 x i8], ptr %i.elj, i64 %indvars.iv10473
  %i.emn = getelementptr inbounds nuw i8, ptr %i.emm, i64 4
  %i.emo = load i32, ptr %i.emn, align 4, !tbaa !9
  %i.emp = sext i32 %i.emo to i64                 ; 2 uses
  %i.emq = getelementptr inbounds i8, ptr %gep9100, i64 %i.emp
  %i.emr = getelementptr inbounds i8, ptr %gep9105, i64 %i.emp
  %i.ems = load <16 x i8>, ptr %i.emq, align 16, !tbaa !44
  %i.emt = load <16 x i8>, ptr %i.emr, align 16, !tbaa !44
  %i.emu = sext <16 x i8> %i.ems to <16 x i16>
  %i.emv = bitcast <16 x i16> %i.emu to <4 x i64>
  %i.emw = sext <16 x i8> %i.emt to <16 x i16>
  %i.emx = bitcast <16 x i16> %i.emw to <4 x i64>
  %i.emy = shufflevector <4 x i64> %i.emv, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.emz = shufflevector <4 x i64> %i.emx, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ena = load <32 x i8>, ptr %i.eml, align 32, !tbaa !44
  %i.enb = sext <32 x i8> %i.ena to <32 x i16>    ; 2 uses
  %i.enc = bitcast <8 x i64> %i.emy to <32 x i16>
  %i.end = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.emi, <32 x i16> %i.enc, <32 x i16> %i.enb) ; 3 uses
  %i.ene = bitcast <8 x i64> %i.emz to <32 x i16>
  %i.enf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.emk, <32 x i16> %i.ene, <32 x i16> %i.enb) ; 3 uses
  %i.eng = getelementptr inbounds nuw i8, ptr %.129559065.us, i64 64 ; 2 uses
  %indvars.iv.next10474.1 = add nuw nsw i64 %indvars.iv10473, 2 ; 2 uses
  %niter12216.next.1 = add i64 %niter12216, 2     ; 2 uses
  %niter12216.ncmp.1 = icmp eq i64 %niter12216.next.1, %unroll_iter12215
  br i1 %niter12216.ncmp.1, label %._crit_edge9067.loopexit9789.unr-lcssa, label %.lr.ph9066.split.us, !llvm.loop !223

.lr.ph9066.split.us9074:                          ; preds = %.lr.ph9066, %.lr.ph9066.split.us9074
  %indvars.iv10466 = phi i64 [ %indvars.iv.next10467, %.lr.ph9066.split.us9074 ], [ 0, %.lr.ph9066 ] ; 2 uses
  %.129559065.us9075 = phi ptr [ %i.eok, %.lr.ph9066.split.us9074 ], [ %.029549090, %.lr.ph9066 ] ; 2 uses
  %.175609063.us9077 = phi <16 x i32> [ %i.eoj, %.lr.ph9066.split.us9074 ], [ %i.elo, %.lr.ph9066 ]
  %.175629062.us9078 = phi <16 x i32> [ %i.eoh, %.lr.ph9066.split.us9074 ], [ %i.elp, %.lr.ph9066 ]
  %i.enh = getelementptr inbounds nuw [4 x i8], ptr %i.elj, i64 %indvars.iv10466
  %i.eni = load i32, ptr %i.enh, align 4, !tbaa !9
  %i.enj = sext i32 %i.eni to i64                 ; 2 uses
  %i.enk = getelementptr inbounds i8, ptr %gep9100, i64 %i.enj ; 2 uses
  %i.enl = getelementptr inbounds i8, ptr %gep9105, i64 %i.enj ; 2 uses
  %i.enm = load i64, ptr %i.enk, align 1, !tbaa !44
  %i.enn = insertelement <2 x i64> poison, i64 %i.enm, i64 0
  %i.eno = getelementptr inbounds nuw i8, ptr %i.enk, i64 %i.dou
  %i.enp = load i64, ptr %i.eno, align 1, !tbaa !44
  %i.enq = load i64, ptr %i.enl, align 1, !tbaa !44
  %i.enr = insertelement <2 x i64> poison, i64 %i.enq, i64 0
  %i.ens = getelementptr inbounds nuw i8, ptr %i.enl, i64 %i.dou
  %i.ent = load i64, ptr %i.ens, align 1, !tbaa !44
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
  %i.eoe = load <32 x i8>, ptr %.129559065.us9075, align 32, !tbaa !44
  %i.eof = sext <32 x i8> %i.eoe to <32 x i16>    ; 2 uses
  %i.eog = bitcast <8 x i64> %i.eoc to <32 x i16>
  %i.eoh = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175629062.us9078, <32 x i16> %i.eog, <32 x i16> %i.eof) ; 2 uses
  %i.eoi = bitcast <8 x i64> %i.eod to <32 x i16>
  %i.eoj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175609063.us9077, <32 x i16> %i.eoi, <32 x i16> %i.eof) ; 2 uses
  %i.eok = getelementptr inbounds nuw i8, ptr %.129559065.us9075, i64 32
  %indvars.iv.next10467 = add nuw nsw i64 %indvars.iv10466, 1 ; 2 uses
  %exitcond10472.not = icmp eq i64 %indvars.iv.next10467, %wide.trip.count10471
  br i1 %exitcond10472.not, label %._crit_edge9067.loopexit9790, label %.lr.ph9066.split.us9074, !llvm.loop !223

._crit_edge9067.loopexit:                         ; preds = %.lr.ph9066.split
  %scevgep10482 = getelementptr i8, ptr %.029549090, i64 32
  %scevgep10483 = getelementptr i8, ptr %scevgep10482, i64 %i.elm
  br label %._crit_edge9067

._crit_edge9067.loopexit9789.unr-lcssa:           ; preds = %.lr.ph9066.split.us
  br i1 %lcmp.mod12211.not, label %._crit_edge9067.loopexit9789, label %.lr.ph9066.split.us.epil.preheader

.lr.ph9066.split.us.epil.preheader:               ; preds = %._crit_edge9067.loopexit9789.unr-lcssa, %.lr.ph9066.split.us.preheader
  %indvars.iv10473.epil.init = phi i64 [ 0, %.lr.ph9066.split.us.preheader ], [ %indvars.iv.next10474.1, %._crit_edge9067.loopexit9789.unr-lcssa ]
  %.129559065.us.epil.init = phi ptr [ %.029549090, %.lr.ph9066.split.us.preheader ], [ %i.eng, %._crit_edge9067.loopexit9789.unr-lcssa ]
  %.175609063.us.epil.init = phi <16 x i32> [ %i.elo, %.lr.ph9066.split.us.preheader ], [ %i.enf, %._crit_edge9067.loopexit9789.unr-lcssa ]
  %.175629062.us.epil.init = phi <16 x i32> [ %i.elp, %.lr.ph9066.split.us.preheader ], [ %i.end, %._crit_edge9067.loopexit9789.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12214)
  %i.eol = getelementptr inbounds nuw [4 x i8], ptr %i.elj, i64 %indvars.iv10473.epil.init
  %i.eom = load i32, ptr %i.eol, align 4, !tbaa !9
  %i.eon = sext i32 %i.eom to i64                 ; 2 uses
  %i.eoo = getelementptr inbounds i8, ptr %gep9100, i64 %i.eon
  %i.eop = getelementptr inbounds i8, ptr %gep9105, i64 %i.eon
  %i.eoq = load <16 x i8>, ptr %i.eoo, align 16, !tbaa !44
  %i.eor = load <16 x i8>, ptr %i.eop, align 16, !tbaa !44
  %i.eos = sext <16 x i8> %i.eoq to <16 x i16>
  %i.eot = bitcast <16 x i16> %i.eos to <4 x i64>
  %i.eou = sext <16 x i8> %i.eor to <16 x i16>
  %i.eov = bitcast <16 x i16> %i.eou to <4 x i64>
  %i.eow = shufflevector <4 x i64> %i.eot, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eox = shufflevector <4 x i64> %i.eov, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eoy = load <32 x i8>, ptr %.129559065.us.epil.init, align 32, !tbaa !44
  %i.eoz = sext <32 x i8> %i.eoy to <32 x i16>    ; 2 uses
  %i.epa = bitcast <8 x i64> %i.eow to <32 x i16>
  %i.epb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175629062.us.epil.init, <32 x i16> %i.epa, <32 x i16> %i.eoz)
  %i.epc = bitcast <8 x i64> %i.eox to <32 x i16>
  %i.epd = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175609063.us.epil.init, <32 x i16> %i.epc, <32 x i16> %i.eoz)
  br label %._crit_edge9067.loopexit9789

._crit_edge9067.loopexit9789:                     ; preds = %._crit_edge9067.loopexit9789.unr-lcssa, %.lr.ph9066.split.us.epil.preheader
  %.lcssa11944 = phi <16 x i32> [ %i.end, %._crit_edge9067.loopexit9789.unr-lcssa ], [ %i.epb, %.lr.ph9066.split.us.epil.preheader ]
  %.lcssa11943 = phi <16 x i32> [ %i.enf, %._crit_edge9067.loopexit9789.unr-lcssa ], [ %i.epd, %.lr.ph9066.split.us.epil.preheader ]
  %scevgep10475 = getelementptr i8, ptr %.029549090, i64 32
  %scevgep10476 = getelementptr i8, ptr %scevgep10475, i64 %i.elm
  br label %._crit_edge9067

._crit_edge9067.loopexit9790:                     ; preds = %.lr.ph9066.split.us9074
  %scevgep10468 = getelementptr i8, ptr %.029549090, i64 32
  %scevgep10469 = getelementptr i8, ptr %scevgep10468, i64 %i.elm
  br label %._crit_edge9067

._crit_edge9067:                                  ; preds = %._crit_edge9067.loopexit9790, %._crit_edge9067.loopexit9789, %._crit_edge9067.loopexit, %.noexc3487
  %i.epe = phi <16 x i32> [ %i.elp, %.noexc3487 ], [ %i.epy, %._crit_edge9067.loopexit ], [ %.lcssa11944, %._crit_edge9067.loopexit9789 ], [ %i.eoh, %._crit_edge9067.loopexit9790 ] ; 2 uses
  %i.epf = phi <16 x i32> [ %i.elo, %.noexc3487 ], [ %i.epz, %._crit_edge9067.loopexit ], [ %.lcssa11943, %._crit_edge9067.loopexit9789 ], [ %i.eoj, %._crit_edge9067.loopexit9790 ] ; 2 uses
  %.12955.lcssa = phi ptr [ %.029549090, %.noexc3487 ], [ %scevgep10483, %._crit_edge9067.loopexit ], [ %scevgep10476, %._crit_edge9067.loopexit9789 ], [ %scevgep10469, %._crit_edge9067.loopexit9790 ] ; 2 uses
  %i.epg = add nuw nsw i32 %.029629089, 16        ; 2 uses
  %i.eph = or disjoint i32 %i.epg, 15
  %i.epi = icmp slt i32 %i.eph, %i.ekk
  br i1 %i.epi, label %.noexc3487, label %._crit_edge9091.loopexit, !llvm.loop !224

.lr.ph9066.split:                                 ; preds = %.lr.ph9066, %.lr.ph9066.split
  %indvars.iv10480 = phi i64 [ %indvars.iv.next10481, %.lr.ph9066.split ], [ 0, %.lr.ph9066 ] ; 2 uses
  %.129559065 = phi ptr [ %i.eqa, %.lr.ph9066.split ], [ %.029549090, %.lr.ph9066 ] ; 2 uses
  %.175609063 = phi <16 x i32> [ %i.epz, %.lr.ph9066.split ], [ %i.elo, %.lr.ph9066 ]
  %.175629062 = phi <16 x i32> [ %i.epy, %.lr.ph9066.split ], [ %i.elp, %.lr.ph9066 ]
  %i.epj = getelementptr inbounds nuw [4 x i8], ptr %i.elj, i64 %indvars.iv10480
  %i.epk = load i32, ptr %i.epj, align 4, !tbaa !9
  %i.epl = sext i32 %i.epk to i64                 ; 2 uses
  %i.epm = getelementptr inbounds i8, ptr %gep9100, i64 %i.epl
  %i.epn = getelementptr inbounds i8, ptr %gep9105, i64 %i.epl
  %i.epo = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.epm, <16 x i32> %i.drs, <16 x i1> splat (i1 true), i32 1)
  %i.epp = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.epn, <16 x i32> %i.drs, <16 x i1> splat (i1 true), i32 1)
  %i.epq = shufflevector <16 x i32> %i.epo, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epr = trunc <32 x i32> %i.epq to <32 x i8>
  %i.eps = sext <32 x i8> %i.epr to <32 x i16>
  %i.ept = shufflevector <16 x i32> %i.epp, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epu = trunc <32 x i32> %i.ept to <32 x i8>
  %i.epv = sext <32 x i8> %i.epu to <32 x i16>
  %i.epw = load <32 x i8>, ptr %.129559065, align 32, !tbaa !44
  %i.epx = sext <32 x i8> %i.epw to <32 x i16>    ; 2 uses
  %i.epy = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175629062, <32 x i16> %i.eps, <32 x i16> %i.epx) ; 2 uses
  %i.epz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175609063, <32 x i16> %i.epv, <32 x i16> %i.epx) ; 2 uses
  %i.eqa = getelementptr inbounds nuw i8, ptr %.129559065, i64 32
  %indvars.iv.next10481 = add nuw nsw i64 %indvars.iv10480, 1 ; 2 uses
  %exitcond10486.not = icmp eq i64 %indvars.iv.next10481, %wide.trip.count10485
  br i1 %exitcond10486.not, label %._crit_edge9067.loopexit, label %.lr.ph9066.split, !llvm.loop !223

._crit_edge9091.loopexit:                         ; preds = %._crit_edge9067
  %i.eqb = and i32 %i.ekk, 2147483632
  br label %._crit_edge9091

._crit_edge9091:                                  ; preds = %._crit_edge9091.loopexit, %.noexc3489
  %i.eqc = phi <16 x i32> [ zeroinitializer, %.noexc3489 ], [ %i.epe, %._crit_edge9091.loopexit ] ; 2 uses
  %i.eqd = phi <16 x i32> [ zeroinitializer, %.noexc3489 ], [ %i.epf, %._crit_edge9091.loopexit ] ; 2 uses
  %.02962.lcssa = phi i32 [ 0, %.noexc3489 ], [ %i.eqb, %._crit_edge9091.loopexit ] ; 3 uses
  %.02954.lcssa = phi ptr [ %i.dro, %.noexc3489 ], [ %.12955.lcssa, %._crit_edge9091.loopexit ] ; 2 uses
  %i.eqe = shufflevector <16 x i32> %i.eqc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eqf = shufflevector <16 x i32> %i.eqc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eqg = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.eqe, <8 x i32> %i.eqf) ; 2 uses
  %i.eqh = shufflevector <16 x i32> %i.eqd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eqi = shufflevector <16 x i32> %i.eqd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eqj = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.eqh, <8 x i32> %i.eqi) ; 2 uses
  %i.eqk = shufflevector <8 x i32> %i.eqg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eql = shufflevector <8 x i32> %i.eqg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eqm = add <4 x i32> %i.eqk, %i.eql           ; 4 uses
  %i.eqn = shufflevector <8 x i32> %i.eqj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eqo = shufflevector <8 x i32> %i.eqj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eqp = add <4 x i32> %i.eqn, %i.eqo           ; 4 uses
  %shift = shufflevector <4 x i32> %i.eqm, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.eqm, %shift
  %shift11800 = shufflevector <4 x i32> %i.eqm, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop11801 = add nsw <4 x i32> %i.eqm, %shift11800
  %shift11803 = shufflevector <4 x i32> %i.eqp, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop11804 = add nsw <4 x i32> %i.eqp, %shift11803
  %shift11806 = shufflevector <4 x i32> %i.eqp, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop11807 = add nsw <4 x i32> %i.eqp, %shift11806
  %i.eqq = or disjoint i32 %.02962.lcssa, 7
  %i.eqr = icmp slt i32 %i.eqq, %i.ekk
  br i1 %i.eqr, label %.noexc3483.lr.ph, label %._crit_edge9122

.noexc3483.lr.ph:                                 ; preds = %._crit_edge9091
  %i.eqs = load i32, ptr %i.c, align 4, !tbaa !9  ; 4 uses
  %i.eqt = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !225
  %i.equ = load ptr, ptr %0, align 8, !tbaa !32, !noalias !225 ; 2 uses
  %i.eqv = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !225
  %i.eqw = load i64, ptr %i.bfc, align 8, !tbaa !36, !noalias !225 ; 2 uses
  %factor.op.mul9127 = mul i64 %i.eqv, %i.eqw
  %i.eqx = sext i32 %i.eqt to i64
  %i.eqy = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.eqz = mul nsw i32 %i.eqy, %i.ekg
  %i.era = sext i32 %i.eqz to i64
  %i.erb = mul i64 %i.eqw, %i.eqx                 ; 2 uses
  %i.erc = mul i64 %i.erb, %i.era
  %invariant.gep9129 = getelementptr i8, ptr %i.equ, i64 %i.erc
  %i.erd = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.ere = mul i32 %i.eqs, %i.eki
  %i.erf = mul i32 %i.ere, %i.erd
  %i.erg = sext i32 %i.erf to i64
  %invariant.gep9130 = getelementptr i8, ptr %invariant.gep9129, i64 %i.erg
  %i.erh = mul nsw i32 %i.eqy, %i.ekh
  %i.eri = sext i32 %i.erh to i64
  %i.erj = mul i64 %i.erb, %i.eri
  %invariant.gep9134 = getelementptr i8, ptr %i.equ, i64 %i.erj
  %i.erk = mul i32 %i.eqs, %i.ekj
  %i.erl = mul i32 %i.erk, %i.erd
  %i.erm = sext i32 %i.erl to i64
  %invariant.gep9135 = getelementptr i8, ptr %invariant.gep9134, i64 %i.erm
  %i.ern = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.ero = icmp sgt i32 %i.ern, 0
  %i.erp = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.erq = icmp eq i32 %i.eqs, 8
  %i.err = add i32 %i.ern, -1
  %i.ers = zext i32 %i.err to i64
  %i.ert = shl nuw nsw i64 %i.ers, 4              ; 2 uses
  %wide.trip.count10492 = zext i32 %i.ern to i64  ; 3 uses
  %xtraiter12217 = and i64 %wide.trip.count10492, 1
  %i.eru = icmp eq i32 %i.ern, 1
  %unroll_iter12222 = and i64 %wide.trip.count10492, 2147483646
  %lcmp.mod12218.not = icmp eq i64 %xtraiter12217, 0
  %lcmp.mod12221 = trunc i32 %i.ern to i1
  br label %.noexc3483

.noexc3483:                                       ; preds = %.noexc3483.lr.ph, %._crit_edge9111
  %.229569121 = phi ptr [ %.02954.lcssa, %.noexc3483.lr.ph ], [ %.32957.lcssa, %._crit_edge9111 ] ; 6 uses
  %.129639120 = phi i32 [ %.02962.lcssa, %.noexc3483.lr.ph ], [ %i.etx, %._crit_edge9111 ] ; 2 uses
  %i.erv = phi <8 x i32> [ zeroinitializer, %.noexc3483.lr.ph ], [ %i.etw, %._crit_edge9111 ] ; 4 uses
  %i.erw = phi <8 x i32> [ zeroinitializer, %.noexc3483.lr.ph ], [ %i.etv, %._crit_edge9111 ] ; 4 uses
  %i.erx = sdiv i32 %.129639120, %i.eqs
  %i.ery = sext i32 %i.erx to i64
  %.reass9128 = mul i64 %factor.op.mul9127, %i.ery ; 2 uses
  %gep9131 = getelementptr i8, ptr %invariant.gep9130, i64 %.reass9128 ; 4 uses
  %gep9136 = getelementptr i8, ptr %invariant.gep9135, i64 %.reass9128 ; 4 uses
  br i1 %i.ero, label %.lr.ph9110, label %._crit_edge9111

.lr.ph9110:                                       ; preds = %.noexc3483
  br i1 %i.erq, label %.lr.ph9110.split.us.preheader, label %.lr.ph9110.split

.lr.ph9110.split.us.preheader:                    ; preds = %.lr.ph9110
  br i1 %i.eru, label %.lr.ph9110.split.us.epil.preheader, label %.lr.ph9110.split.us

.lr.ph9110.split.us:                              ; preds = %.lr.ph9110.split.us.preheader, %.lr.ph9110.split.us
  %indvars.iv10494 = phi i64 [ %indvars.iv.next10495.1, %.lr.ph9110.split.us ], [ 0, %.lr.ph9110.split.us.preheader ] ; 3 uses
  %.329579109.us = phi ptr [ %i.etf, %.lr.ph9110.split.us ], [ %.229569121, %.lr.ph9110.split.us.preheader ] ; 3 uses
  %.175569107.us = phi <8 x i32> [ %i.ete, %.lr.ph9110.split.us ], [ %i.erv, %.lr.ph9110.split.us.preheader ]
  %.175589106.us = phi <8 x i32> [ %i.etb, %.lr.ph9110.split.us ], [ %i.erw, %.lr.ph9110.split.us.preheader ]
  %niter12223 = phi i64 [ %niter12223.next.1, %.lr.ph9110.split.us ], [ 0, %.lr.ph9110.split.us.preheader ]
  %i.erz = getelementptr inbounds nuw [4 x i8], ptr %i.erp, i64 %indvars.iv10494
  %i.esa = load i32, ptr %i.erz, align 4, !tbaa !9
  %i.esb = sext i32 %i.esa to i64                 ; 2 uses
  %i.esc = getelementptr inbounds i8, ptr %gep9131, i64 %i.esb
  %i.esd = getelementptr inbounds i8, ptr %gep9136, i64 %i.esb
  %i.ese = load <8 x i8>, ptr %i.esc, align 1, !tbaa !44
  %i.esf = load <8 x i8>, ptr %i.esd, align 1, !tbaa !44
  %i.esg = load <16 x i8>, ptr %.329579109.us, align 16, !tbaa !44
  %i.esh = sext <16 x i8> %i.esg to <16 x i16>    ; 2 uses
  %i.esi = shufflevector <8 x i8> %i.ese, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.esj = sext <16 x i8> %i.esi to <16 x i16>
  %i.esk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175589106.us, <16 x i16> %i.esj, <16 x i16> %i.esh)
  %i.esl = shufflevector <8 x i8> %i.esf, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.esm = sext <16 x i8> %i.esl to <16 x i16>
  %i.esn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175569107.us, <16 x i16> %i.esm, <16 x i16> %i.esh)
  %i.eso = getelementptr inbounds nuw i8, ptr %.329579109.us, i64 16
  %i.esp = getelementptr inbounds nuw [4 x i8], ptr %i.erp, i64 %indvars.iv10494
  %i.esq = getelementptr inbounds nuw i8, ptr %i.esp, i64 4
  %i.esr = load i32, ptr %i.esq, align 4, !tbaa !9
  %i.ess = sext i32 %i.esr to i64                 ; 2 uses
  %i.est = getelementptr inbounds i8, ptr %gep9131, i64 %i.ess
  %i.esu = getelementptr inbounds i8, ptr %gep9136, i64 %i.ess
  %i.esv = load <8 x i8>, ptr %i.est, align 1, !tbaa !44
  %i.esw = load <8 x i8>, ptr %i.esu, align 1, !tbaa !44
  %i.esx = load <16 x i8>, ptr %i.eso, align 16, !tbaa !44
  %i.esy = sext <16 x i8> %i.esx to <16 x i16>    ; 2 uses
  %i.esz = shufflevector <8 x i8> %i.esv, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eta = sext <16 x i8> %i.esz to <16 x i16>
  %i.etb = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.esk, <16 x i16> %i.eta, <16 x i16> %i.esy) ; 3 uses
  %i.etc = shufflevector <8 x i8> %i.esw, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.etd = sext <16 x i8> %i.etc to <16 x i16>
  %i.ete = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.esn, <16 x i16> %i.etd, <16 x i16> %i.esy) ; 3 uses
  %i.etf = getelementptr inbounds nuw i8, ptr %.329579109.us, i64 32 ; 2 uses
  %indvars.iv.next10495.1 = add nuw nsw i64 %indvars.iv10494, 2 ; 2 uses
  %niter12223.next.1 = add i64 %niter12223, 2     ; 2 uses
  %niter12223.ncmp.1 = icmp eq i64 %niter12223.next.1, %unroll_iter12222
  br i1 %niter12223.ncmp.1, label %._crit_edge9111.loopexit.unr-lcssa, label %.lr.ph9110.split.us, !llvm.loop !228

._crit_edge9111.loopexit.unr-lcssa:               ; preds = %.lr.ph9110.split.us
  br i1 %lcmp.mod12218.not, label %._crit_edge9111.loopexit, label %.lr.ph9110.split.us.epil.preheader

.lr.ph9110.split.us.epil.preheader:               ; preds = %._crit_edge9111.loopexit.unr-lcssa, %.lr.ph9110.split.us.preheader
  %indvars.iv10494.epil.init = phi i64 [ 0, %.lr.ph9110.split.us.preheader ], [ %indvars.iv.next10495.1, %._crit_edge9111.loopexit.unr-lcssa ]
  %.329579109.us.epil.init = phi ptr [ %.229569121, %.lr.ph9110.split.us.preheader ], [ %i.etf, %._crit_edge9111.loopexit.unr-lcssa ]
  %.175569107.us.epil.init = phi <8 x i32> [ %i.erv, %.lr.ph9110.split.us.preheader ], [ %i.ete, %._crit_edge9111.loopexit.unr-lcssa ]
  %.175589106.us.epil.init = phi <8 x i32> [ %i.erw, %.lr.ph9110.split.us.preheader ], [ %i.etb, %._crit_edge9111.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12221)
  %i.etg = getelementptr inbounds nuw [4 x i8], ptr %i.erp, i64 %indvars.iv10494.epil.init
  %i.eth = load i32, ptr %i.etg, align 4, !tbaa !9
  %i.eti = sext i32 %i.eth to i64                 ; 2 uses
  %i.etj = getelementptr inbounds i8, ptr %gep9131, i64 %i.eti
  %i.etk = getelementptr inbounds i8, ptr %gep9136, i64 %i.eti
  %i.etl = load <8 x i8>, ptr %i.etj, align 1, !tbaa !44
  %i.etm = load <8 x i8>, ptr %i.etk, align 1, !tbaa !44
  %i.etn = load <16 x i8>, ptr %.329579109.us.epil.init, align 16, !tbaa !44
  %i.eto = sext <16 x i8> %i.etn to <16 x i16>    ; 2 uses
  %i.etp = shufflevector <8 x i8> %i.etl, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.etq = sext <16 x i8> %i.etp to <16 x i16>
  %i.etr = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175589106.us.epil.init, <16 x i16> %i.etq, <16 x i16> %i.eto)
  %i.ets = shufflevector <8 x i8> %i.etm, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ett = sext <16 x i8> %i.ets to <16 x i16>
  %i.etu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175569107.us.epil.init, <16 x i16> %i.ett, <16 x i16> %i.eto)
  br label %._crit_edge9111.loopexit

._crit_edge9111.loopexit:                         ; preds = %._crit_edge9111.loopexit.unr-lcssa, %.lr.ph9110.split.us.epil.preheader
  %.lcssa11952 = phi <8 x i32> [ %i.etb, %._crit_edge9111.loopexit.unr-lcssa ], [ %i.etr, %.lr.ph9110.split.us.epil.preheader ]
  %.lcssa11951 = phi <8 x i32> [ %i.ete, %._crit_edge9111.loopexit.unr-lcssa ], [ %i.etu, %.lr.ph9110.split.us.epil.preheader ]
  %scevgep10496 = getelementptr i8, ptr %.229569121, i64 16
  %scevgep10497 = getelementptr i8, ptr %scevgep10496, i64 %i.ert
  br label %._crit_edge9111

._crit_edge9111.loopexit9788:                     ; preds = %.lr.ph9110.split
  %scevgep10489 = getelementptr i8, ptr %.229569121, i64 16
  %scevgep10490 = getelementptr i8, ptr %scevgep10489, i64 %i.ert
  br label %._crit_edge9111

._crit_edge9111:                                  ; preds = %._crit_edge9111.loopexit9788, %._crit_edge9111.loopexit, %.noexc3483
  %i.etv = phi <8 x i32> [ %i.erw, %.noexc3483 ], [ %.lcssa11952, %._crit_edge9111.loopexit ], [ %i.eum, %._crit_edge9111.loopexit9788 ] ; 2 uses
  %i.etw = phi <8 x i32> [ %i.erv, %.noexc3483 ], [ %.lcssa11951, %._crit_edge9111.loopexit ], [ %i.euq, %._crit_edge9111.loopexit9788 ] ; 2 uses
  %.32957.lcssa = phi ptr [ %.229569121, %.noexc3483 ], [ %scevgep10497, %._crit_edge9111.loopexit ], [ %scevgep10490, %._crit_edge9111.loopexit9788 ] ; 2 uses
  %i.etx = add nuw nsw i32 %.129639120, 8         ; 3 uses
  %i.ety = or disjoint i32 %i.etx, 7
  %i.etz = icmp slt i32 %i.ety, %i.ekk
  br i1 %i.etz, label %.noexc3483, label %._crit_edge9122, !llvm.loop !229

.lr.ph9110.split:                                 ; preds = %.lr.ph9110, %.lr.ph9110.split
  %indvars.iv10487 = phi i64 [ %indvars.iv.next10488, %.lr.ph9110.split ], [ 0, %.lr.ph9110 ] ; 2 uses
  %.329579109 = phi ptr [ %i.eur, %.lr.ph9110.split ], [ %.229569121, %.lr.ph9110 ] ; 2 uses
  %.175569107 = phi <8 x i32> [ %i.euq, %.lr.ph9110.split ], [ %i.erv, %.lr.ph9110 ]
  %.175589106 = phi <8 x i32> [ %i.eum, %.lr.ph9110.split ], [ %i.erw, %.lr.ph9110 ]
  %i.eua = getelementptr inbounds nuw [4 x i8], ptr %i.erp, i64 %indvars.iv10487
  %i.eub = load i32, ptr %i.eua, align 4, !tbaa !9
  %i.euc = sext i32 %i.eub to i64                 ; 2 uses
  %i.eud = getelementptr inbounds i8, ptr %gep9131, i64 %i.euc
  %i.eue = getelementptr inbounds i8, ptr %gep9136, i64 %i.euc
  %i.euf = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.eud, <8 x i32> %i.drv, <8 x i32> splat (i32 -1), i8 1)
  %i.eug = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.eue, <8 x i32> %i.drv, <8 x i32> splat (i32 -1), i8 1)
  %i.euh = load <16 x i8>, ptr %.329579109, align 16, !tbaa !44
  %i.eui = sext <16 x i8> %i.euh to <16 x i16>    ; 2 uses
  %i.euj = shufflevector <8 x i32> %i.euf, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.euk = trunc <16 x i32> %i.euj to <16 x i8>
  %i.eul = sext <16 x i8> %i.euk to <16 x i16>
  %i.eum = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175589106, <16 x i16> %i.eul, <16 x i16> %i.eui) ; 2 uses
  %i.eun = shufflevector <8 x i32> %i.eug, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.euo = trunc <16 x i32> %i.eun to <16 x i8>
  %i.eup = sext <16 x i8> %i.euo to <16 x i16>
  %i.euq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175569107, <16 x i16> %i.eup, <16 x i16> %i.eui) ; 2 uses
  %i.eur = getelementptr inbounds nuw i8, ptr %.329579109, i64 16
  %indvars.iv.next10488 = add nuw nsw i64 %indvars.iv10487, 1 ; 2 uses
  %exitcond10493.not = icmp eq i64 %indvars.iv.next10488, %wide.trip.count10492
  br i1 %exitcond10493.not, label %._crit_edge9111.loopexit9788, label %.lr.ph9110.split, !llvm.loop !228

._crit_edge9122:                                  ; preds = %._crit_edge9111, %._crit_edge9091
  %i.eus = phi <8 x i32> [ zeroinitializer, %._crit_edge9091 ], [ %i.etv, %._crit_edge9111 ] ; 4 uses
  %i.eut = phi <8 x i32> [ zeroinitializer, %._crit_edge9091 ], [ %i.etw, %._crit_edge9111 ] ; 4 uses
  %.12963.lcssa = phi i32 [ %.02962.lcssa, %._crit_edge9091 ], [ %i.etx, %._crit_edge9111 ] ; 6 uses
  %.22956.lcssa = phi ptr [ %.02954.lcssa, %._crit_edge9091 ], [ %.32957.lcssa, %._crit_edge9111 ] ; 3 uses
  %10 = shufflevector <8 x i32> %i.eus, <8 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.euu = shufflevector <8 x i32> %i.eus, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = add <4 x i32> %10, %i.euu                 ; 2 uses
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %13 = add <4 x i32> %12, %11
  %foldExtExtBinop11809 = add nsw <4 x i32> %foldExtExtBinop, %13
  %14 = extractelement <4 x i32> %foldExtExtBinop11809, i64 0 ; 3 uses
  %15 = shufflevector <8 x i32> %i.eus, <8 x i32> poison, <4 x i32> <i32 6, i32 7, i32 6, i32 7>
  %i.euv = shufflevector <8 x i32> %i.eus, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %16 = add <4 x i32> %15, %i.euv                 ; 2 uses
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %18 = add <4 x i32> %17, %16
  %shift11811 = shufflevector <4 x i32> %foldExtExtBinop11801, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop11812 = add nsw <4 x i32> %shift11811, %18
  %19 = extractelement <4 x i32> %foldExtExtBinop11812, i64 0 ; 3 uses
  %20 = shufflevector <8 x i32> %i.eut, <8 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.euw = shufflevector <8 x i32> %i.eut, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %21 = add <4 x i32> %20, %i.euw                 ; 2 uses
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %23 = add <4 x i32> %22, %21
  %24 = shufflevector <8 x i32> %i.eut, <8 x i32> poison, <4 x i32> <i32 6, i32 7, i32 6, i32 7>
  %i.eux = shufflevector <8 x i32> %i.eut, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %25 = add <4 x i32> %24, %i.eux                 ; 2 uses
  %26 = shufflevector <4 x i32> %25, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %27 = add <4 x i32> %26, %25
  %foldExtExtBinop11814 = add nsw <4 x i32> %foldExtExtBinop11804, %23
  %28 = extractelement <4 x i32> %foldExtExtBinop11814, i64 0 ; 3 uses
  %shift11816 = shufflevector <4 x i32> %foldExtExtBinop11807, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop11817 = add nsw <4 x i32> %shift11816, %27
  %29 = extractelement <4 x i32> %foldExtExtBinop11817, i64 0 ; 3 uses
  %i.euy = or disjoint i32 %.12963.lcssa, 1
  %i.euz = icmp slt i32 %i.euy, %i.ekk
  br i1 %i.euz, label %.noexc3479.lr.ph, label %.preheader7895

.noexc3479.lr.ph:                                 ; preds = %._crit_edge9122
  %i.eva = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !230
  %i.evb = load ptr, ptr %0, align 8, !tbaa !32, !noalias !230 ; 2 uses
  %i.evc = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !230
  %i.evd = load i64, ptr %i.bfc, align 8, !tbaa !36, !noalias !230 ; 2 uses
  %factor.op.mul9162 = mul i64 %i.evc, %i.evd
  %i.eve = sext i32 %i.eva to i64
  %i.evf = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.evg = mul nsw i32 %i.evf, %i.ekg
  %i.evh = sext i32 %i.evg to i64
  %i.evi = mul i64 %i.evd, %i.eve                 ; 2 uses
  %i.evj = mul i64 %i.evi, %i.evh
  %invariant.gep9164 = getelementptr i8, ptr %i.evb, i64 %i.evj
  %i.evk = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.evl = mul nsw i32 %i.evk, %i.eki
  %i.evm = sext i32 %i.evl to i64
  %invariant.gep9165 = getelementptr i8, ptr %invariant.gep9164, i64 %i.evm
  %i.evn = mul nsw i32 %i.evf, %i.ekh
  %i.evo = sext i32 %i.evn to i64
  %i.evp = mul i64 %i.evi, %i.evo
  %invariant.gep9169 = getelementptr i8, ptr %i.evb, i64 %i.evp
  %i.evq = mul nsw i32 %i.evk, %i.ekj
  %i.evr = sext i32 %i.evq to i64
  %invariant.gep9170 = getelementptr i8, ptr %invariant.gep9169, i64 %i.evr
  %i.evs = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.evt = icmp sgt i32 %i.evs, 0
  %i.evu = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.evt, label %.noexc3479.us.preheader, label %.noexc3479.preheader

.noexc3479.preheader:                             ; preds = %.noexc3479.lr.ph
  %i.evv = add nuw i32 %.12963.lcssa, 2
  %i.evw = add nuw i32 %.12963.lcssa, 3
  %smax10501 = call i32 @llvm.smax.i32(i32 %i.ekk, i32 %i.evw)
  %i.evx = add nsw i32 %smax10501, -2
  %i.evy = sub nsw i32 %i.evx, %.12963.lcssa
  %i.evz = and i32 %i.evy, -2
  %i.ewa = add i32 %i.evv, %i.evz
  br label %.preheader7895

.noexc3479.us.preheader:                          ; preds = %.noexc3479.lr.ph
  %i.ewb = add nsw i32 %i.evs, -1
  %i.ewc = zext nneg i32 %i.ewb to i64
  %i.ewd = shl nuw nsw i64 %i.ewc, 2
  %i.ewe = zext nneg i32 %.12963.lcssa to i64
  %wide.trip.count10507 = zext nneg i32 %i.evs to i64 ; 6 uses
  %min.iters.check11544 = icmp ult i32 %i.evs, 8
  %min.iters.check11546 = icmp ult i32 %i.evs, 32
  %i.ewf = and i64 %wide.trip.count10507, 24
  %n.vec11548 = and i64 %wide.trip.count10507, 2147483616 ; 5 uses
  %i.ewg = shl nuw nsw i64 %n.vec11548, 2
  %cmp.n11579 = icmp eq i64 %n.vec11548, %wide.trip.count10507
  %min.epilog.iters.check11588 = icmp eq i64 %i.ewf, 0
  %n.vec11590 = and i64 %wide.trip.count10507, 2147483640 ; 4 uses
  %i.ewh = shl nuw nsw i64 %n.vec11590, 2
  %cmp.n11606 = icmp eq i64 %n.vec11590, %wide.trip.count10507
  br label %iter.check11585

iter.check11585:                                  ; preds = %.noexc3479.us.preheader, %._crit_edge9144.us
  %indvars.iv10509 = phi i64 [ %i.ewe, %.noexc3479.us.preheader ], [ %indvars.iv.next10510, %._crit_edge9144.us ] ; 2 uses
  %.029269155.us = phi i32 [ %14, %.noexc3479.us.preheader ], [ %.lcssa11213, %._crit_edge9144.us ] ; 3 uses
  %.029429154.us = phi i32 [ %28, %.noexc3479.us.preheader ], [ %.lcssa11211, %._crit_edge9144.us ] ; 3 uses
  %.029469153.us = phi i32 [ %19, %.noexc3479.us.preheader ], [ %.lcssa11212, %._crit_edge9144.us ] ; 3 uses
  %.029509152.us = phi i32 [ %29, %.noexc3479.us.preheader ], [ %.lcssa11210, %._crit_edge9144.us ] ; 3 uses
  %.429589151.us = phi ptr [ %.22956.lcssa, %.noexc3479.us.preheader ], [ %scevgep10505, %._crit_edge9144.us ] ; 7 uses
  %.reass9163.us = mul i64 %factor.op.mul9162, %indvars.iv10509 ; 2 uses
  %gep9166.us = getelementptr i8, ptr %invariant.gep9165, i64 %.reass9163.us ; 41 uses
  %gep9171.us = getelementptr i8, ptr %invariant.gep9170, i64 %.reass9163.us ; 41 uses
  br i1 %min.iters.check11544, label %vec.epilog.scalar.ph11586.preheader, label %vector.main.loop.iter.check11545

vector.main.loop.iter.check11545:                 ; preds = %iter.check11585
  br i1 %min.iters.check11546, label %vec.epilog.ph11589, label %vector.ph11547

vector.ph11547:                                   ; preds = %vector.main.loop.iter.check11545
  %i.ewi = getelementptr i8, ptr %.429589151.us, i64 %i.ewg
  %i.ewj = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029269155.us, i64 0
  %i.ewk = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029429154.us, i64 0
  %i.ewl = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029469153.us, i64 0
  %i.ewm = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029509152.us, i64 0
  br label %vector.body11549

vector.body11549:                                 ; preds = %vector.body11549, %vector.ph11547
  %index11550 = phi i64 [ 0, %vector.ph11547 ], [ %index.next11573, %vector.body11549 ] ; 3 uses
  %vec.phi11551 = phi <16 x i32> [ %i.ewj, %vector.ph11547 ], [ %i.fhj, %vector.body11549 ]
  %vec.phi11552 = phi <16 x i32> [ zeroinitializer, %vector.ph11547 ], [ %i.fhk, %vector.body11549 ]
  %vec.phi11553 = phi <16 x i32> [ %i.ewk, %vector.ph11547 ], [ %i.foj, %vector.body11549 ]
  %vec.phi11554 = phi <16 x i32> [ zeroinitializer, %vector.ph11547 ], [ %i.fok, %vector.body11549 ]
  %vec.phi11555 = phi <16 x i32> [ %i.ewl, %vector.ph11547 ], [ %i.fhp, %vector.body11549 ]
  %vec.phi11556 = phi <16 x i32> [ zeroinitializer, %vector.ph11547 ], [ %i.fhq, %vector.body11549 ]
  %vec.phi11557 = phi <16 x i32> [ %i.ewm, %vector.ph11547 ], [ %i.fon, %vector.body11549 ]
  %vec.phi11558 = phi <16 x i32> [ zeroinitializer, %vector.ph11547 ], [ %i.foo, %vector.body11549 ]
  %i.ewn = shl i64 %index11550, 2                 ; 2 uses
  %next.gep11559 = getelementptr i8, ptr %.429589151.us, i64 %i.ewn
  %i.ewo = getelementptr i8, ptr %.429589151.us, i64 %i.ewn
  %next.gep11560 = getelementptr i8, ptr %i.ewo, i64 64
  %i.ewp = getelementptr inbounds nuw [4 x i8], ptr %i.evu, i64 %index11550 ; 2 uses
  %i.ewq = getelementptr inbounds nuw i8, ptr %i.ewp, i64 64
  %wide.load11561 = load <16 x i32>, ptr %i.ewp, align 4, !tbaa !9
  %wide.load11562 = load <16 x i32>, ptr %i.ewq, align 4, !tbaa !9
  %i.ewr = sext <16 x i32> %wide.load11561 to <16 x i64> ; 16 uses
  %i.ews = sext <16 x i32> %wide.load11562 to <16 x i64> ; 16 uses
  %i.ewt = extractelement <16 x i64> %i.ewr, i64 0 ; 2 uses
  %i.ewu = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.ewt ; 2 uses
  %i.ewv = extractelement <16 x i64> %i.ewr, i64 1 ; 2 uses
  %i.eww = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.ewv ; 2 uses
  %i.ewx = extractelement <16 x i64> %i.ewr, i64 2 ; 2 uses
  %i.ewy = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.ewx ; 2 uses
  %i.ewz = extractelement <16 x i64> %i.ewr, i64 3 ; 2 uses
  %i.exa = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.ewz ; 2 uses
  %i.exb = extractelement <16 x i64> %i.ewr, i64 4 ; 2 uses
  %i.exc = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exb ; 2 uses
  %i.exd = extractelement <16 x i64> %i.ewr, i64 5 ; 2 uses
  %i.exe = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exd ; 2 uses
  %i.exf = extractelement <16 x i64> %i.ewr, i64 6 ; 2 uses
  %i.exg = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exf ; 2 uses
  %i.exh = extractelement <16 x i64> %i.ewr, i64 7 ; 2 uses
  %i.exi = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exh ; 2 uses
  %i.exj = extractelement <16 x i64> %i.ewr, i64 8 ; 2 uses
  %i.exk = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exj ; 2 uses
  %i.exl = extractelement <16 x i64> %i.ewr, i64 9 ; 2 uses
  %i.exm = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exl ; 2 uses
  %i.exn = extractelement <16 x i64> %i.ewr, i64 10 ; 2 uses
  %i.exo = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exn ; 2 uses
  %i.exp = extractelement <16 x i64> %i.ewr, i64 11 ; 2 uses
  %i.exq = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exp ; 2 uses
  %i.exr = extractelement <16 x i64> %i.ewr, i64 12 ; 2 uses
  %i.exs = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exr ; 2 uses
  %i.ext = extractelement <16 x i64> %i.ewr, i64 13 ; 2 uses
  %i.exu = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.ext ; 2 uses
  %i.exv = extractelement <16 x i64> %i.ewr, i64 14 ; 2 uses
  %i.exw = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exv ; 2 uses
  %i.exx = extractelement <16 x i64> %i.ewr, i64 15 ; 2 uses
  %i.exy = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exx ; 2 uses
  %i.exz = extractelement <16 x i64> %i.ews, i64 0 ; 2 uses
  %i.eya = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.exz ; 2 uses
  %i.eyb = extractelement <16 x i64> %i.ews, i64 1 ; 2 uses
  %i.eyc = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyb ; 2 uses
  %i.eyd = extractelement <16 x i64> %i.ews, i64 2 ; 2 uses
  %i.eye = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyd ; 2 uses
  %i.eyf = extractelement <16 x i64> %i.ews, i64 3 ; 2 uses
  %i.eyg = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyf ; 2 uses
  %i.eyh = extractelement <16 x i64> %i.ews, i64 4 ; 2 uses
  %i.eyi = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyh ; 2 uses
  %i.eyj = extractelement <16 x i64> %i.ews, i64 5 ; 2 uses
  %i.eyk = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyj ; 2 uses
  %i.eyl = extractelement <16 x i64> %i.ews, i64 6 ; 2 uses
  %i.eym = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyl ; 2 uses
  %i.eyn = extractelement <16 x i64> %i.ews, i64 7 ; 2 uses
  %i.eyo = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyn ; 2 uses
  %i.eyp = extractelement <16 x i64> %i.ews, i64 8 ; 2 uses
  %i.eyq = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyp ; 2 uses
  %i.eyr = extractelement <16 x i64> %i.ews, i64 9 ; 2 uses
  %i.eys = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyr ; 2 uses
  %i.eyt = extractelement <16 x i64> %i.ews, i64 10 ; 2 uses
  %i.eyu = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyt ; 2 uses
  %i.eyv = extractelement <16 x i64> %i.ews, i64 11 ; 2 uses
  %i.eyw = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyv ; 2 uses
  %i.eyx = extractelement <16 x i64> %i.ews, i64 12 ; 2 uses
  %i.eyy = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyx ; 2 uses
  %i.eyz = extractelement <16 x i64> %i.ews, i64 13 ; 2 uses
  %i.eza = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.eyz ; 2 uses
  %i.ezb = extractelement <16 x i64> %i.ews, i64 14 ; 2 uses
  %i.ezc = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.ezb ; 2 uses
  %i.ezd = extractelement <16 x i64> %i.ews, i64 15 ; 2 uses
  %i.eze = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.ezd ; 2 uses
  %i.ezf = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.ewt ; 2 uses
  %i.ezg = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.ewv ; 2 uses
  %i.ezh = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.ewx ; 2 uses
  %i.ezi = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.ewz ; 2 uses
  %i.ezj = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exb ; 2 uses
  %i.ezk = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exd ; 2 uses
  %i.ezl = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exf ; 2 uses
  %i.ezm = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exh ; 2 uses
  %i.ezn = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exj ; 2 uses
  %i.ezo = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exl ; 2 uses
  %i.ezp = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exn ; 2 uses
  %i.ezq = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exp ; 2 uses
  %i.ezr = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exr ; 2 uses
  %i.ezs = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.ext ; 2 uses
  %i.ezt = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exv ; 2 uses
  %i.ezu = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exx ; 2 uses
  %i.ezv = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.exz ; 2 uses
  %i.ezw = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyb ; 2 uses
  %i.ezx = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyd ; 2 uses
  %i.ezy = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyf ; 2 uses
  %i.ezz = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyh ; 2 uses
  %i.faa = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyj ; 2 uses
  %i.fab = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyl ; 2 uses
  %i.fac = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyn ; 2 uses
  %i.fad = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyp ; 2 uses
  %i.fae = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyr ; 2 uses
  %i.faf = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyt ; 2 uses
  %i.fag = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyv ; 2 uses
  %i.fah = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyx ; 2 uses
  %i.fai = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.eyz ; 2 uses
  %i.faj = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.ezb ; 2 uses
  %i.fak = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.ezd ; 2 uses
  %i.fal = load i8, ptr %i.ewu, align 1, !tbaa !44
  %i.fam = load i8, ptr %i.eww, align 1, !tbaa !44
  %i.fan = load i8, ptr %i.ewy, align 1, !tbaa !44
  %i.fao = load i8, ptr %i.exa, align 1, !tbaa !44
  %i.fap = load i8, ptr %i.exc, align 1, !tbaa !44
  %i.faq = load i8, ptr %i.exe, align 1, !tbaa !44
  %i.far = load i8, ptr %i.exg, align 1, !tbaa !44
  %i.fas = load i8, ptr %i.exi, align 1, !tbaa !44
  %i.fat = load i8, ptr %i.exk, align 1, !tbaa !44
  %i.fau = load i8, ptr %i.exm, align 1, !tbaa !44
  %i.fav = load i8, ptr %i.exo, align 1, !tbaa !44
  %i.faw = load i8, ptr %i.exq, align 1, !tbaa !44
  %i.fax = load i8, ptr %i.exs, align 1, !tbaa !44
  %i.fay = load i8, ptr %i.exu, align 1, !tbaa !44
  %i.faz = load i8, ptr %i.exw, align 1, !tbaa !44
  %i.fba = load i8, ptr %i.exy, align 1, !tbaa !44
  %i.fbb = insertelement <16 x i8> poison, i8 %i.fal, i64 0
  %i.fbc = insertelement <16 x i8> %i.fbb, i8 %i.fam, i64 1
  %i.fbd = insertelement <16 x i8> %i.fbc, i8 %i.fan, i64 2
  %i.fbe = insertelement <16 x i8> %i.fbd, i8 %i.fao, i64 3
  %i.fbf = insertelement <16 x i8> %i.fbe, i8 %i.fap, i64 4
  %i.fbg = insertelement <16 x i8> %i.fbf, i8 %i.faq, i64 5
  %i.fbh = insertelement <16 x i8> %i.fbg, i8 %i.far, i64 6
  %i.fbi = insertelement <16 x i8> %i.fbh, i8 %i.fas, i64 7
  %i.fbj = insertelement <16 x i8> %i.fbi, i8 %i.fat, i64 8
  %i.fbk = insertelement <16 x i8> %i.fbj, i8 %i.fau, i64 9
  %i.fbl = insertelement <16 x i8> %i.fbk, i8 %i.fav, i64 10
  %i.fbm = insertelement <16 x i8> %i.fbl, i8 %i.faw, i64 11
  %i.fbn = insertelement <16 x i8> %i.fbm, i8 %i.fax, i64 12
  %i.fbo = insertelement <16 x i8> %i.fbn, i8 %i.fay, i64 13
  %i.fbp = insertelement <16 x i8> %i.fbo, i8 %i.faz, i64 14
  %i.fbq = insertelement <16 x i8> %i.fbp, i8 %i.fba, i64 15
  %i.fbr = load i8, ptr %i.eya, align 1, !tbaa !44
  %i.fbs = load i8, ptr %i.eyc, align 1, !tbaa !44
  %i.fbt = load i8, ptr %i.eye, align 1, !tbaa !44
  %i.fbu = load i8, ptr %i.eyg, align 1, !tbaa !44
  %i.fbv = load i8, ptr %i.eyi, align 1, !tbaa !44
  %i.fbw = load i8, ptr %i.eyk, align 1, !tbaa !44
  %i.fbx = load i8, ptr %i.eym, align 1, !tbaa !44
  %i.fby = load i8, ptr %i.eyo, align 1, !tbaa !44
  %i.fbz = load i8, ptr %i.eyq, align 1, !tbaa !44
  %i.fca = load i8, ptr %i.eys, align 1, !tbaa !44
  %i.fcb = load i8, ptr %i.eyu, align 1, !tbaa !44
  %i.fcc = load i8, ptr %i.eyw, align 1, !tbaa !44
  %i.fcd = load i8, ptr %i.eyy, align 1, !tbaa !44
  %i.fce = load i8, ptr %i.eza, align 1, !tbaa !44
  %i.fcf = load i8, ptr %i.ezc, align 1, !tbaa !44
  %i.fcg = load i8, ptr %i.eze, align 1, !tbaa !44
  %i.fch = insertelement <16 x i8> poison, i8 %i.fbr, i64 0
  %i.fci = insertelement <16 x i8> %i.fch, i8 %i.fbs, i64 1
  %i.fcj = insertelement <16 x i8> %i.fci, i8 %i.fbt, i64 2
  %i.fck = insertelement <16 x i8> %i.fcj, i8 %i.fbu, i64 3
  %i.fcl = insertelement <16 x i8> %i.fck, i8 %i.fbv, i64 4
  %i.fcm = insertelement <16 x i8> %i.fcl, i8 %i.fbw, i64 5
  %i.fcn = insertelement <16 x i8> %i.fcm, i8 %i.fbx, i64 6
  %i.fco = insertelement <16 x i8> %i.fcn, i8 %i.fby, i64 7
  %i.fcp = insertelement <16 x i8> %i.fco, i8 %i.fbz, i64 8
  %i.fcq = insertelement <16 x i8> %i.fcp, i8 %i.fca, i64 9
  %i.fcr = insertelement <16 x i8> %i.fcq, i8 %i.fcb, i64 10
  %i.fcs = insertelement <16 x i8> %i.fcr, i8 %i.fcc, i64 11
  %i.fct = insertelement <16 x i8> %i.fcs, i8 %i.fcd, i64 12
  %i.fcu = insertelement <16 x i8> %i.fct, i8 %i.fce, i64 13
  %i.fcv = insertelement <16 x i8> %i.fcu, i8 %i.fcf, i64 14
  %i.fcw = insertelement <16 x i8> %i.fcv, i8 %i.fcg, i64 15
  %i.fcx = sext <16 x i8> %i.fbq to <16 x i32>    ; 2 uses
  %i.fcy = sext <16 x i8> %i.fcw to <16 x i32>    ; 2 uses
  %wide.vec11563 = load <64 x i8>, ptr %next.gep11559, align 1, !tbaa !44 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.fqd = load i8, ptr %i.fpj, align 1, !tbaa !44
  %i.fqe = load i8, ptr %i.fpl, align 1, !tbaa !44
  %i.fqf = load i8, ptr %i.fpn, align 1, !tbaa !44
  %i.fqg = load i8, ptr %i.fpp, align 1, !tbaa !44
  %i.fqh = load i8, ptr %i.fpr, align 1, !tbaa !44
  %i.fqi = insertelement <8 x i8> poison, i8 %i.fqa, i64 0
  %i.fqj = insertelement <8 x i8> %i.fqi, i8 %i.fqb, i64 1
  %i.fqk = insertelement <8 x i8> %i.fqj, i8 %i.fqc, i64 2
  %i.fql = insertelement <8 x i8> %i.fqk, i8 %i.fqd, i64 3
  %i.fqm = insertelement <8 x i8> %i.fql, i8 %i.fqe, i64 4
  %i.fqn = insertelement <8 x i8> %i.fqm, i8 %i.fqf, i64 5
  %i.fqo = insertelement <8 x i8> %i.fqn, i8 %i.fqg, i64 6
  %i.fqp = insertelement <8 x i8> %i.fqo, i8 %i.fqh, i64 7
  %i.fqq = sext <8 x i8> %i.fqp to <8 x i32>      ; 2 uses
  %wide.vec11599 = load <32 x i8>, ptr %next.gep11597, align 1, !tbaa !44 ; 4 uses
  %strided.vec11600 = shufflevector <32 x i8> %wide.vec11599, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec11601 = shufflevector <32 x i8> %wide.vec11599, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec11602 = shufflevector <32 x i8> %wide.vec11599, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec11603 = shufflevector <32 x i8> %wide.vec11599, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.fqr = sext <8 x i8> %strided.vec11600 to <8 x i32> ; 2 uses
  %i.fqs = mul nsw <8 x i32> %i.fqr, %i.fqq
  %i.fqt = add <8 x i32> %i.fqs, %vec.phi11593
  %i.fqu = sext <8 x i8> %strided.vec11601 to <8 x i32> ; 2 uses
  %i.fqv = mul nsw <8 x i32> %i.fqu, %i.fqq
  %i.fqw = add <8 x i32> %i.fqv, %vec.phi11595
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.fpd, i64 %i.dou
  %i.fqy = getelementptr inbounds nuw i8, ptr %i.fpf, i64 %i.dou
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.fph, i64 %i.dou
  %i.fra = getelementptr inbounds nuw i8, ptr %i.fpj, i64 %i.dou
  %i.frb = getelementptr inbounds nuw i8, ptr %i.fpl, i64 %i.dou
  %i.frc = getelementptr inbounds nuw i8, ptr %i.fpn, i64 %i.dou
  %i.frd = getelementptr inbounds nuw i8, ptr %i.fpp, i64 %i.dou
  %i.fre = getelementptr inbounds nuw i8, ptr %i.fpr, i64 %i.dou
  %i.frf = load i8, ptr %i.fqx, align 1, !tbaa !44
  %i.frg = load i8, ptr %i.fqy, align 1, !tbaa !44
  %i.frh = load i8, ptr %i.fqz, align 1, !tbaa !44
  %i.fri = load i8, ptr %i.fra, align 1, !tbaa !44
  %i.frj = load i8, ptr %i.frb, align 1, !tbaa !44
  %i.frk = load i8, ptr %i.frc, align 1, !tbaa !44
  %i.frl = load i8, ptr %i.frd, align 1, !tbaa !44
  %i.frm = load i8, ptr %i.fre, align 1, !tbaa !44
  %i.frn = insertelement <8 x i8> poison, i8 %i.frf, i64 0
  %i.fro = insertelement <8 x i8> %i.frn, i8 %i.frg, i64 1
  %i.frp = insertelement <8 x i8> %i.fro, i8 %i.frh, i64 2
  %i.frq = insertelement <8 x i8> %i.frp, i8 %i.fri, i64 3
  %i.frr = insertelement <8 x i8> %i.frq, i8 %i.frj, i64 4
  %i.frs = insertelement <8 x i8> %i.frr, i8 %i.frk, i64 5
  %i.frt = insertelement <8 x i8> %i.frs, i8 %i.frl, i64 6
  %i.fru = insertelement <8 x i8> %i.frt, i8 %i.frm, i64 7
  %i.frv = sext <8 x i8> %i.fru to <8 x i32>      ; 2 uses
  %i.frw = sext <8 x i8> %strided.vec11602 to <8 x i32> ; 2 uses
  %i.frx = mul nsw <8 x i32> %i.frw, %i.frv
  %i.fry = add <8 x i32> %i.fqt, %i.frx           ; 2 uses
  %i.frz = sext <8 x i8> %strided.vec11603 to <8 x i32> ; 2 uses
  %i.fsa = mul nsw <8 x i32> %i.frz, %i.frv
  %i.fsb = add <8 x i32> %i.fqw, %i.fsa           ; 2 uses
  %i.fsc = load i8, ptr %i.fps, align 1, !tbaa !44
  %i.fsd = load i8, ptr %i.fpt, align 1, !tbaa !44
  %i.fse = load i8, ptr %i.fpu, align 1, !tbaa !44
  %i.fsf = load i8, ptr %i.fpv, align 1, !tbaa !44
  %i.fsg = load i8, ptr %i.fpw, align 1, !tbaa !44
  %i.fsh = load i8, ptr %i.fpx, align 1, !tbaa !44
  %i.fsi = load i8, ptr %i.fpy, align 1, !tbaa !44
  %i.fsj = load i8, ptr %i.fpz, align 1, !tbaa !44
  %i.fsk = insertelement <8 x i8> poison, i8 %i.fsc, i64 0
  %i.fsl = insertelement <8 x i8> %i.fsk, i8 %i.fsd, i64 1
  %i.fsm = insertelement <8 x i8> %i.fsl, i8 %i.fse, i64 2
  %i.fsn = insertelement <8 x i8> %i.fsm, i8 %i.fsf, i64 3
  %i.fso = insertelement <8 x i8> %i.fsn, i8 %i.fsg, i64 4
  %i.fsp = insertelement <8 x i8> %i.fso, i8 %i.fsh, i64 5
  %i.fsq = insertelement <8 x i8> %i.fsp, i8 %i.fsi, i64 6
  %i.fsr = insertelement <8 x i8> %i.fsq, i8 %i.fsj, i64 7
  %i.fss = sext <8 x i8> %i.fsr to <8 x i32>      ; 2 uses
  %i.fst = mul nsw <8 x i32> %i.fss, %i.fqr
  %i.fsu = add <8 x i32> %i.fst, %vec.phi11594
  %i.fsv = mul nsw <8 x i32> %i.fss, %i.fqu
  %i.fsw = add <8 x i32> %i.fsv, %vec.phi11596
  %i.fsx = getelementptr inbounds nuw i8, ptr %i.fps, i64 %i.dou
  %i.fsy = getelementptr inbounds nuw i8, ptr %i.fpt, i64 %i.dou
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.fpu, i64 %i.dou
  %i.fta = getelementptr inbounds nuw i8, ptr %i.fpv, i64 %i.dou
  %i.ftb = getelementptr inbounds nuw i8, ptr %i.fpw, i64 %i.dou
  %i.ftc = getelementptr inbounds nuw i8, ptr %i.fpx, i64 %i.dou
  %i.ftd = getelementptr inbounds nuw i8, ptr %i.fpy, i64 %i.dou
  %i.fte = getelementptr inbounds nuw i8, ptr %i.fpz, i64 %i.dou
  %i.ftf = load i8, ptr %i.fsx, align 1, !tbaa !44
  %i.ftg = load i8, ptr %i.fsy, align 1, !tbaa !44
  %i.fth = load i8, ptr %i.fsz, align 1, !tbaa !44
  %i.fti = load i8, ptr %i.fta, align 1, !tbaa !44
  %i.ftj = load i8, ptr %i.ftb, align 1, !tbaa !44
  %i.ftk = load i8, ptr %i.ftc, align 1, !tbaa !44
  %i.ftl = load i8, ptr %i.ftd, align 1, !tbaa !44
  %i.ftm = load i8, ptr %i.fte, align 1, !tbaa !44
  %i.ftn = insertelement <8 x i8> poison, i8 %i.ftf, i64 0
  %i.fto = insertelement <8 x i8> %i.ftn, i8 %i.ftg, i64 1
  %i.ftp = insertelement <8 x i8> %i.fto, i8 %i.fth, i64 2
  %i.ftq = insertelement <8 x i8> %i.ftp, i8 %i.fti, i64 3
  %i.ftr = insertelement <8 x i8> %i.ftq, i8 %i.ftj, i64 4
  %i.fts = insertelement <8 x i8> %i.ftr, i8 %i.ftk, i64 5
  %i.ftt = insertelement <8 x i8> %i.fts, i8 %i.ftl, i64 6
  %i.ftu = insertelement <8 x i8> %i.ftt, i8 %i.ftm, i64 7
  %i.ftv = sext <8 x i8> %i.ftu to <8 x i32>      ; 2 uses
  %i.ftw = mul nsw <8 x i32> %i.ftv, %i.frw
  %i.ftx = add <8 x i32> %i.fsu, %i.ftw           ; 2 uses
  %i.fty = mul nsw <8 x i32> %i.ftv, %i.frz
  %i.ftz = add <8 x i32> %i.fsw, %i.fty           ; 2 uses
  %index.next11604 = add nuw i64 %index11592, 8   ; 2 uses
  %i.fua = icmp eq i64 %index.next11604, %n.vec11590
  br i1 %i.fua, label %vec.epilog.middle.block11605, label %vec.epilog.vector.body11591, !llvm.loop !235

vec.epilog.middle.block11605:                     ; preds = %vec.epilog.vector.body11591
  %i.fub = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fry) ; 2 uses
  %i.fuc = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ftx) ; 2 uses
  %i.fud = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fsb) ; 2 uses
  %i.fue = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ftz) ; 2 uses
  br i1 %cmp.n11606, label %._crit_edge9144.us, label %vec.epilog.scalar.ph11586.preheader

vec.epilog.scalar.ph11586.preheader:              ; preds = %iter.check11585, %vec.epilog.iter.check11587, %vec.epilog.middle.block11605
  %indvars.iv10502.ph = phi i64 [ 0, %iter.check11585 ], [ %n.vec11548, %vec.epilog.iter.check11587 ], [ %n.vec11590, %vec.epilog.middle.block11605 ]
  %.129279142.us.ph = phi i32 [ %.029269155.us, %iter.check11585 ], [ %i.foq, %vec.epilog.iter.check11587 ], [ %i.fub, %vec.epilog.middle.block11605 ]
  %.129439141.us.ph = phi i32 [ %.029429154.us, %iter.check11585 ], [ %i.for, %vec.epilog.iter.check11587 ], [ %i.fuc, %vec.epilog.middle.block11605 ]
  %.129479140.us.ph = phi i32 [ %.029469153.us, %iter.check11585 ], [ %i.fos, %vec.epilog.iter.check11587 ], [ %i.fud, %vec.epilog.middle.block11605 ]
  %.129519139.us.ph = phi i32 [ %.029509152.us, %iter.check11585 ], [ %i.fot, %vec.epilog.iter.check11587 ], [ %i.fue, %vec.epilog.middle.block11605 ]
  %.529599138.us.ph = phi ptr [ %.429589151.us, %iter.check11585 ], [ %i.ewi, %vec.epilog.iter.check11587 ], [ %i.fou, %vec.epilog.middle.block11605 ]
  br label %vec.epilog.scalar.ph11586

vec.epilog.scalar.ph11586:                        ; preds = %vec.epilog.scalar.ph11586.preheader, %vec.epilog.scalar.ph11586
  %indvars.iv10502 = phi i64 [ %indvars.iv.next10503, %vec.epilog.scalar.ph11586 ], [ %indvars.iv10502.ph, %vec.epilog.scalar.ph11586.preheader ] ; 2 uses
  %.129279142.us = phi i32 [ %i.fvc, %vec.epilog.scalar.ph11586 ], [ %.129279142.us.ph, %vec.epilog.scalar.ph11586.preheader ]
  %.129439141.us = phi i32 [ %i.fvs, %vec.epilog.scalar.ph11586 ], [ %.129439141.us.ph, %vec.epilog.scalar.ph11586.preheader ]
  %.129479140.us = phi i32 [ %i.fvh, %vec.epilog.scalar.ph11586 ], [ %.129479140.us.ph, %vec.epilog.scalar.ph11586.preheader ]
  %.129519139.us = phi i32 [ %i.fvu, %vec.epilog.scalar.ph11586 ], [ %.129519139.us.ph, %vec.epilog.scalar.ph11586.preheader ]
  %.529599138.us = phi ptr [ %i.fvv, %vec.epilog.scalar.ph11586 ], [ %.529599138.us.ph, %vec.epilog.scalar.ph11586.preheader ] ; 5 uses
  %i.fuf = getelementptr inbounds nuw [4 x i8], ptr %i.evu, i64 %indvars.iv10502
  %i.fug = load i32, ptr %i.fuf, align 4, !tbaa !9
  %i.fuh = sext i32 %i.fug to i64                 ; 2 uses
  %i.fui = getelementptr inbounds i8, ptr %gep9166.us, i64 %i.fuh ; 2 uses
  %i.fuj = getelementptr inbounds i8, ptr %gep9171.us, i64 %i.fuh ; 2 uses
  %i.fuk = load i8, ptr %i.fui, align 1, !tbaa !44
  %i.ful = sext i8 %i.fuk to i32                  ; 2 uses
  %i.fum = load i8, ptr %.529599138.us, align 1, !tbaa !44
  %i.fun = sext i8 %i.fum to i32                  ; 2 uses
  %i.fuo = mul nsw i32 %i.fun, %i.ful
  %i.fup = add nsw i32 %i.fuo, %.129279142.us
  %i.fuq = getelementptr inbounds nuw i8, ptr %.529599138.us, i64 1
  %i.fur = load i8, ptr %i.fuq, align 1, !tbaa !44
  %i.fus = sext i8 %i.fur to i32                  ; 2 uses
  %i.fut = mul nsw i32 %i.fus, %i.ful
  %i.fuu = add nsw i32 %i.fut, %.129479140.us
  %i.fuv = getelementptr inbounds nuw i8, ptr %i.fui, i64 %i.dou
  %i.fuw = load i8, ptr %i.fuv, align 1, !tbaa !44
  %i.fux = sext i8 %i.fuw to i32                  ; 2 uses
  %i.fuy = getelementptr inbounds nuw i8, ptr %.529599138.us, i64 2
  %i.fuz = load i8, ptr %i.fuy, align 1, !tbaa !44
  %i.fva = sext i8 %i.fuz to i32                  ; 2 uses
  %i.fvb = mul nsw i32 %i.fva, %i.fux
  %i.fvc = add nsw i32 %i.fup, %i.fvb             ; 2 uses
  %i.fvd = getelementptr inbounds nuw i8, ptr %.529599138.us, i64 3
  %i.fve = load i8, ptr %i.fvd, align 1, !tbaa !44
  %i.fvf = sext i8 %i.fve to i32                  ; 2 uses
  %i.fvg = mul nsw i32 %i.fvf, %i.fux
  %i.fvh = add nsw i32 %i.fuu, %i.fvg             ; 2 uses
  %i.fvi = load i8, ptr %i.fuj, align 1, !tbaa !44
  %i.fvj = sext i8 %i.fvi to i32                  ; 2 uses
  %i.fvk = mul nsw i32 %i.fvj, %i.fun
  %i.fvl = add nsw i32 %i.fvk, %.129439141.us
  %i.fvm = mul nsw i32 %i.fvj, %i.fus
  %i.fvn = add nsw i32 %i.fvm, %.129519139.us
  %i.fvo = getelementptr inbounds nuw i8, ptr %i.fuj, i64 %i.dou
  %i.fvp = load i8, ptr %i.fvo, align 1, !tbaa !44
  %i.fvq = sext i8 %i.fvp to i32                  ; 2 uses
  %i.fvr = mul nsw i32 %i.fvq, %i.fva
  %i.fvs = add nsw i32 %i.fvl, %i.fvr             ; 2 uses
  %i.fvt = mul nsw i32 %i.fvq, %i.fvf
  %i.fvu = add nsw i32 %i.fvn, %i.fvt             ; 2 uses
  %i.fvv = getelementptr inbounds nuw i8, ptr %.529599138.us, i64 4
  %indvars.iv.next10503 = add nuw nsw i64 %indvars.iv10502, 1 ; 2 uses
  %exitcond10508.not = icmp eq i64 %indvars.iv.next10503, %wide.trip.count10507
  br i1 %exitcond10508.not, label %._crit_edge9144.us, label %vec.epilog.scalar.ph11586, !llvm.loop !236

._crit_edge9144.us:                               ; preds = %vec.epilog.scalar.ph11586, %vec.epilog.middle.block11605, %middle.block11574
  %.lcssa11213 = phi i32 [ %i.fub, %vec.epilog.middle.block11605 ], [ %i.foq, %middle.block11574 ], [ %i.fvc, %vec.epilog.scalar.ph11586 ] ; 2 uses
  %.lcssa11212 = phi i32 [ %i.fud, %vec.epilog.middle.block11605 ], [ %i.fos, %middle.block11574 ], [ %i.fvh, %vec.epilog.scalar.ph11586 ] ; 2 uses
  %.lcssa11211 = phi i32 [ %i.fuc, %vec.epilog.middle.block11605 ], [ %i.for, %middle.block11574 ], [ %i.fvs, %vec.epilog.scalar.ph11586 ] ; 2 uses
  %.lcssa11210 = phi i32 [ %i.fue, %vec.epilog.middle.block11605 ], [ %i.fot, %middle.block11574 ], [ %i.fvu, %vec.epilog.scalar.ph11586 ] ; 2 uses
  %scevgep10504 = getelementptr i8, ptr %.429589151.us, i64 4
  %scevgep10505 = getelementptr i8, ptr %scevgep10504, i64 %i.ewd ; 2 uses
  %indvars.iv.next10510 = add nuw nsw i64 %indvars.iv10509, 2 ; 3 uses
  %i.fvw = trunc i64 %indvars.iv.next10510 to i32
  %i.fvx = or i32 %i.fvw, 1
  %i.fvy = icmp slt i32 %i.fvx, %i.ekk
  br i1 %i.fvy, label %iter.check11585, label %.preheader7895.loopexit, !llvm.loop !237

.preheader7895.loopexit:                          ; preds = %._crit_edge9144.us
  %i.fvz = trunc nuw i64 %indvars.iv.next10510 to i32
  br label %.preheader7895

.preheader7895:                                   ; preds = %.noexc3479.preheader, %.preheader7895.loopexit, %._crit_edge9122
  %.22964.lcssa = phi i32 [ %.12963.lcssa, %._crit_edge9122 ], [ %i.fvz, %.preheader7895.loopexit ], [ %i.ewa, %.noexc3479.preheader ] ; 2 uses
  %.42958.lcssa = phi ptr [ %.22956.lcssa, %._crit_edge9122 ], [ %scevgep10505, %.preheader7895.loopexit ], [ %.22956.lcssa, %.noexc3479.preheader ]
  %.02950.lcssa = phi i32 [ %29, %._crit_edge9122 ], [ %.lcssa11210, %.preheader7895.loopexit ], [ %29, %.noexc3479.preheader ] ; 3 uses
  %.02946.lcssa = phi i32 [ %19, %._crit_edge9122 ], [ %.lcssa11212, %.preheader7895.loopexit ], [ %19, %.noexc3479.preheader ] ; 3 uses
  %.02942.lcssa = phi i32 [ %28, %._crit_edge9122 ], [ %.lcssa11211, %.preheader7895.loopexit ], [ %28, %.noexc3479.preheader ] ; 3 uses
  %.02926.lcssa = phi i32 [ %14, %._crit_edge9122 ], [ %.lcssa11213, %.preheader7895.loopexit ], [ %14, %.noexc3479.preheader ] ; 3 uses
  %i.fwa = icmp slt i32 %.22964.lcssa, %i.ekk
  br i1 %i.fwa, label %.noexc3475.lr.ph, label %._crit_edge9197

.noexc3475.lr.ph:                                 ; preds = %.preheader7895
  %i.fwb = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !238
  %i.fwc = load ptr, ptr %0, align 8, !tbaa !32, !noalias !238 ; 2 uses
  %i.fwd = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !238
  %i.fwe = load i64, ptr %i.bfc, align 8, !tbaa !36, !noalias !238 ; 2 uses
  %factor.op.mul9202 = mul i64 %i.fwd, %i.fwe
  %i.fwf = sext i32 %i.fwb to i64
  %i.fwg = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.fwh = mul nsw i32 %i.fwg, %i.ekg
  %i.fwi = sext i32 %i.fwh to i64
  %i.fwj = mul i64 %i.fwe, %i.fwf                 ; 2 uses
  %i.fwk = mul i64 %i.fwj, %i.fwi
  %invariant.gep9204 = getelementptr i8, ptr %i.fwc, i64 %i.fwk
  %i.fwl = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.fwm = mul nsw i32 %i.fwl, %i.eki
  %i.fwn = sext i32 %i.fwm to i64
  %invariant.gep9205 = getelementptr i8, ptr %invariant.gep9204, i64 %i.fwn
  %i.fwo = mul nsw i32 %i.fwg, %i.ekh
  %i.fwp = sext i32 %i.fwo to i64
  %i.fwq = mul i64 %i.fwj, %i.fwp
  %invariant.gep9209 = getelementptr i8, ptr %i.fwc, i64 %i.fwq
  %i.fwr = mul nsw i32 %i.fwl, %i.ekj
  %i.fws = sext i32 %i.fwr to i64
  %invariant.gep9210 = getelementptr i8, ptr %invariant.gep9209, i64 %i.fws
  %i.fwt = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.fwu = icmp sgt i32 %i.fwt, 0
  %i.fwv = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.fwu, label %.noexc3475.us.preheader, label %._crit_edge9197

.noexc3475.us.preheader:                          ; preds = %.noexc3475.lr.ph
  %i.fww = add nsw i32 %i.fwt, -1
  %i.fwx = zext nneg i32 %i.fww to i64
  %i.fwy = shl nuw nsw i64 %i.fwx, 1
  %i.fwz = zext i32 %.22964.lcssa to i64
  %wide.trip.count10517 = zext nneg i32 %i.fwt to i64 ; 6 uses
  %min.iters.check11481 = icmp ult i32 %i.fwt, 8
  %min.iters.check11483 = icmp ult i32 %i.fwt, 32
  %i.fxa = and i64 %wide.trip.count10517, 24
  %n.vec11485 = and i64 %wide.trip.count10517, 2147483616 ; 5 uses
  %i.fxb = shl nuw nsw i64 %n.vec11485, 1
  %cmp.n11512 = icmp eq i64 %n.vec11485, %wide.trip.count10517
  %min.epilog.iters.check11521 = icmp eq i64 %i.fxa, 0
  %n.vec11523 = and i64 %wide.trip.count10517, 2147483640 ; 4 uses
  %i.fxc = shl nuw nsw i64 %n.vec11523, 1
  %cmp.n11537 = icmp eq i64 %n.vec11523, %wide.trip.count10517
  br label %iter.check11518

iter.check11518:                                  ; preds = %.noexc3475.us.preheader, %._crit_edge9185.us
  %indvars.iv10519 = phi i64 [ %i.fwz, %.noexc3475.us.preheader ], [ %indvars.iv.next10520, %._crit_edge9185.us ] ; 2 uses
  %.229289196.us = phi i32 [ %.02926.lcssa, %.noexc3475.us.preheader ], [ %.lcssa11217, %._crit_edge9185.us ] ; 3 uses
  %.229449195.us = phi i32 [ %.02942.lcssa, %.noexc3475.us.preheader ], [ %.lcssa11215, %._crit_edge9185.us ] ; 3 uses
  %.229489194.us = phi i32 [ %.02946.lcssa, %.noexc3475.us.preheader ], [ %.lcssa11216, %._crit_edge9185.us ] ; 3 uses
  %.229529193.us = phi i32 [ %.02950.lcssa, %.noexc3475.us.preheader ], [ %.lcssa11214, %._crit_edge9185.us ] ; 3 uses
  %.629609192.us = phi ptr [ %.42958.lcssa, %.noexc3475.us.preheader ], [ %scevgep10515, %._crit_edge9185.us ] ; 7 uses
  %.reass9203.us = mul i64 %factor.op.mul9202, %indvars.iv10519 ; 2 uses
  %gep9206.us = getelementptr i8, ptr %invariant.gep9205, i64 %.reass9203.us ; 41 uses
  %gep9211.us = getelementptr i8, ptr %invariant.gep9210, i64 %.reass9203.us ; 41 uses
  br i1 %min.iters.check11481, label %vec.epilog.scalar.ph11519.preheader, label %vector.main.loop.iter.check11482

vector.main.loop.iter.check11482:                 ; preds = %iter.check11518
  br i1 %min.iters.check11483, label %vec.epilog.ph11522, label %vector.ph11484

vector.ph11484:                                   ; preds = %vector.main.loop.iter.check11482
  %i.fxd = getelementptr i8, ptr %.629609192.us, i64 %i.fxb
  %i.fxe = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229289196.us, i64 0
  %i.fxf = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229449195.us, i64 0
  %i.fxg = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229489194.us, i64 0
  %i.fxh = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229529193.us, i64 0
  br label %vector.body11486

vector.body11486:                                 ; preds = %vector.body11486, %vector.ph11484
  %index11487 = phi i64 [ 0, %vector.ph11484 ], [ %index.next11506, %vector.body11486 ] ; 3 uses
  %vec.phi11488 = phi <16 x i32> [ %i.fxe, %vector.ph11484 ], [ %i.gdy, %vector.body11486 ]
  %vec.phi11489 = phi <16 x i32> [ zeroinitializer, %vector.ph11484 ], [ %i.gdz, %vector.body11486 ]
  %vec.phi11490 = phi <16 x i32> [ %i.fxf, %vector.ph11484 ], [ %i.ggw, %vector.body11486 ]
  %vec.phi11491 = phi <16 x i32> [ zeroinitializer, %vector.ph11484 ], [ %i.ggx, %vector.body11486 ]
  %vec.phi11492 = phi <16 x i32> [ %i.fxg, %vector.ph11484 ], [ %i.gee, %vector.body11486 ]
  %vec.phi11493 = phi <16 x i32> [ zeroinitializer, %vector.ph11484 ], [ %i.gef, %vector.body11486 ]
  %vec.phi11494 = phi <16 x i32> [ %i.fxh, %vector.ph11484 ], [ %i.gha, %vector.body11486 ]
  %vec.phi11495 = phi <16 x i32> [ zeroinitializer, %vector.ph11484 ], [ %i.ghb, %vector.body11486 ]
  %i.fxi = shl i64 %index11487, 1                 ; 2 uses
  %next.gep11496 = getelementptr i8, ptr %.629609192.us, i64 %i.fxi
  %i.fxj = getelementptr i8, ptr %.629609192.us, i64 %i.fxi
  %next.gep11497 = getelementptr i8, ptr %i.fxj, i64 32
  %i.fxk = getelementptr inbounds nuw [4 x i8], ptr %i.fwv, i64 %index11487 ; 2 uses
  %i.fxl = getelementptr inbounds nuw i8, ptr %i.fxk, i64 64
  %wide.load11498 = load <16 x i32>, ptr %i.fxk, align 4, !tbaa !9
  %wide.load11499 = load <16 x i32>, ptr %i.fxl, align 4, !tbaa !9
  %i.fxm = sext <16 x i32> %wide.load11498 to <16 x i64> ; 16 uses
  %i.fxn = sext <16 x i32> %wide.load11499 to <16 x i64> ; 16 uses
  %i.fxo = extractelement <16 x i64> %i.fxm, i64 0 ; 2 uses
  %i.fxp = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fxo
  %i.fxq = extractelement <16 x i64> %i.fxm, i64 1 ; 2 uses
  %i.fxr = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fxq
  %i.fxs = extractelement <16 x i64> %i.fxm, i64 2 ; 2 uses
  %i.fxt = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fxs
  %i.fxu = extractelement <16 x i64> %i.fxm, i64 3 ; 2 uses
  %i.fxv = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fxu
  %i.fxw = extractelement <16 x i64> %i.fxm, i64 4 ; 2 uses
  %i.fxx = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fxw
  %i.fxy = extractelement <16 x i64> %i.fxm, i64 5 ; 2 uses
  %i.fxz = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fxy
  %i.fya = extractelement <16 x i64> %i.fxm, i64 6 ; 2 uses
  %i.fyb = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fya
  %i.fyc = extractelement <16 x i64> %i.fxm, i64 7 ; 2 uses
  %i.fyd = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyc
  %i.fye = extractelement <16 x i64> %i.fxm, i64 8 ; 2 uses
  %i.fyf = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fye
  %i.fyg = extractelement <16 x i64> %i.fxm, i64 9 ; 2 uses
  %i.fyh = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyg
  %i.fyi = extractelement <16 x i64> %i.fxm, i64 10 ; 2 uses
  %i.fyj = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyi
  %i.fyk = extractelement <16 x i64> %i.fxm, i64 11 ; 2 uses
  %i.fyl = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyk
  %i.fym = extractelement <16 x i64> %i.fxm, i64 12 ; 2 uses
  %i.fyn = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fym
  %i.fyo = extractelement <16 x i64> %i.fxm, i64 13 ; 2 uses
  %i.fyp = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyo
  %i.fyq = extractelement <16 x i64> %i.fxm, i64 14 ; 2 uses
  %i.fyr = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyq
  %i.fys = extractelement <16 x i64> %i.fxm, i64 15 ; 2 uses
  %i.fyt = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fys
  %i.fyu = extractelement <16 x i64> %i.fxn, i64 0 ; 2 uses
  %i.fyv = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyu
  %i.fyw = extractelement <16 x i64> %i.fxn, i64 1 ; 2 uses
  %i.fyx = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyw
  %i.fyy = extractelement <16 x i64> %i.fxn, i64 2 ; 2 uses
  %i.fyz = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fyy
  %i.fza = extractelement <16 x i64> %i.fxn, i64 3 ; 2 uses
  %i.fzb = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fza
  %i.fzc = extractelement <16 x i64> %i.fxn, i64 4 ; 2 uses
  %i.fzd = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzc
  %i.fze = extractelement <16 x i64> %i.fxn, i64 5 ; 2 uses
  %i.fzf = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fze
  %i.fzg = extractelement <16 x i64> %i.fxn, i64 6 ; 2 uses
  %i.fzh = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzg
  %i.fzi = extractelement <16 x i64> %i.fxn, i64 7 ; 2 uses
  %i.fzj = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzi
  %i.fzk = extractelement <16 x i64> %i.fxn, i64 8 ; 2 uses
  %i.fzl = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzk
  %i.fzm = extractelement <16 x i64> %i.fxn, i64 9 ; 2 uses
  %i.fzn = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzm
  %i.fzo = extractelement <16 x i64> %i.fxn, i64 10 ; 2 uses
  %i.fzp = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzo
  %i.fzq = extractelement <16 x i64> %i.fxn, i64 11 ; 2 uses
  %i.fzr = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzq
  %i.fzs = extractelement <16 x i64> %i.fxn, i64 12 ; 2 uses
  %i.fzt = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzs
  %i.fzu = extractelement <16 x i64> %i.fxn, i64 13 ; 2 uses
  %i.fzv = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzu
  %i.fzw = extractelement <16 x i64> %i.fxn, i64 14 ; 2 uses
  %i.fzx = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzw
  %i.fzy = extractelement <16 x i64> %i.fxn, i64 15 ; 2 uses
  %i.fzz = getelementptr inbounds i8, ptr %gep9206.us, i64 %i.fzy
  %i.gaa = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fxo
  %i.gab = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fxq
  %i.gac = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fxs
  %i.gad = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fxu
  %i.gae = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fxw
  %i.gaf = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fxy
  %i.gag = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fya
  %i.gah = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyc
  %i.gai = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fye
  %i.gaj = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyg
  %i.gak = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyi
  %i.gal = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyk
  %i.gam = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fym
  %i.gan = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyo
  %i.gao = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyq
  %i.gap = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fys
  %i.gaq = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyu
  %i.gar = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyw
  %i.gas = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fyy
  %i.gat = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fza
  %i.gau = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzc
  %i.gav = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fze
  %i.gaw = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzg
  %i.gax = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzi
  %i.gay = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzk
  %i.gaz = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzm
  %i.gba = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzo
  %i.gbb = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzq
  %i.gbc = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzs
  %i.gbd = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzu
  %i.gbe = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzw
  %i.gbf = getelementptr inbounds i8, ptr %gep9211.us, i64 %i.fzy
  %i.gbg = load i8, ptr %i.fxp, align 1, !tbaa !44
  %i.gbh = load i8, ptr %i.fxr, align 1, !tbaa !44
  %i.gbi = load i8, ptr %i.fxt, align 1, !tbaa !44
  %i.gbj = load i8, ptr %i.fxv, align 1, !tbaa !44
  %i.gbk = load i8, ptr %i.fxx, align 1, !tbaa !44
  %i.gbl = load i8, ptr %i.fxz, align 1, !tbaa !44
  %i.gbm = load i8, ptr %i.fyb, align 1, !tbaa !44
  %i.gbn = load i8, ptr %i.fyd, align 1, !tbaa !44
  %i.gbo = load i8, ptr %i.fyf, align 1, !tbaa !44
  %i.gbp = load i8, ptr %i.fyh, align 1, !tbaa !44
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.gna = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.gmz
  %i.gnb = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.gna, <16 x i32> %i.ekb, <16 x i1> splat (i1 true), i32 1)
  %i.gnc = shufflevector <16 x i32> %i.gnb, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gnd = trunc <32 x i32> %i.gnc to <32 x i8>
  %i.gne = sext <32 x i8> %i.gnd to <32 x i16>
  %i.gnf = load <32 x i8>, ptr %.129909224.us9252, align 32, !tbaa !44
  %i.gng = sext <32 x i8> %i.gnf to <32 x i16>
  %i.gnh = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175539222.us9254, <32 x i16> %i.gne, <32 x i16> %i.gng)
  %i.gni = getelementptr inbounds nuw i8, ptr %.129909224.us9252, i64 32
  %i.gnj = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10536
  %i.gnk = getelementptr inbounds nuw i8, ptr %i.gnj, i64 4
  %i.gnl = load i32, ptr %i.gnk, align 4, !tbaa !9
  %i.gnm = sext i32 %i.gnl to i64
  %i.gnn = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.gnm
  %i.gno = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.gnn, <16 x i32> %i.ekb, <16 x i1> splat (i1 true), i32 1)
  %i.gnp = shufflevector <16 x i32> %i.gno, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gnq = trunc <32 x i32> %i.gnp to <32 x i8>
  %i.gnr = sext <32 x i8> %i.gnq to <32 x i16>
  %i.gns = load <32 x i8>, ptr %i.gni, align 32, !tbaa !44
  %i.gnt = sext <32 x i8> %i.gns to <32 x i16>
  %i.gnu = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.gnh, <32 x i16> %i.gnr, <32 x i16> %i.gnt) ; 3 uses
  %i.gnv = getelementptr inbounds nuw i8, ptr %.129909224.us9252, i64 64 ; 2 uses
  %indvars.iv.next10537.1 = add nuw nsw i64 %indvars.iv10536, 2 ; 2 uses
  %niter12241.next.1 = add i64 %niter12241, 2     ; 2 uses
  %niter12241.ncmp.1 = icmp eq i64 %niter12241.next.1, %unroll_iter12240
  br i1 %niter12241.ncmp.1, label %._crit_edge9226.us.loopexit.unr-lcssa, label %.lr.ph9225.split.us9258, !llvm.loop !249

._crit_edge9226.us.loopexit.unr-lcssa:            ; preds = %.lr.ph9225.split.us9258
  br i1 %lcmp.mod12237.not, label %._crit_edge9226.us, label %.lr.ph9225.split.us9258.epil.preheader

.lr.ph9225.split.us9258.epil.preheader:           ; preds = %._crit_edge9226.us.loopexit.unr-lcssa, %.lr.ph9225.split.us9258.preheader
  %indvars.iv10536.epil.init = phi i64 [ 0, %.lr.ph9225.split.us9258.preheader ], [ %indvars.iv.next10537.1, %._crit_edge9226.us.loopexit.unr-lcssa ]
  %.129909224.us9252.epil.init = phi ptr [ %.029899242.us, %.lr.ph9225.split.us9258.preheader ], [ %i.gnv, %._crit_edge9226.us.loopexit.unr-lcssa ]
  %.175539222.us9254.epil.init = phi <16 x i32> [ %i.gmu, %.lr.ph9225.split.us9258.preheader ], [ %i.gnu, %._crit_edge9226.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12239)
  %i.gnw = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10536.epil.init
  %i.gnx = load i32, ptr %i.gnw, align 4, !tbaa !9
  %i.gny = sext i32 %i.gnx to i64
  %i.gnz = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.gny
  %i.goa = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.gnz, <16 x i32> %i.ekb, <16 x i1> splat (i1 true), i32 1)
  %i.gob = shufflevector <16 x i32> %i.goa, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.goc = trunc <32 x i32> %i.gob to <32 x i8>
  %i.god = sext <32 x i8> %i.goc to <32 x i16>
  %i.goe = load <32 x i8>, ptr %.129909224.us9252.epil.init, align 32, !tbaa !44
  %i.gof = sext <32 x i8> %i.goe to <32 x i16>
  %i.gog = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175539222.us9254.epil.init, <32 x i16> %i.god, <32 x i16> %i.gof)
  br label %._crit_edge9226.us

._crit_edge9226.us.loopexit11907.unr-lcssa:       ; preds = %.lr.ph9225.split.us.us
  br i1 %lcmp.mod12231.not, label %._crit_edge9226.us, label %.lr.ph9225.split.us.us.epil.preheader

.lr.ph9225.split.us.us.epil.preheader:            ; preds = %._crit_edge9226.us.loopexit11907.unr-lcssa, %.lr.ph9225.split.us.us.preheader
  %indvars.iv10529.epil.init = phi i64 [ 0, %.lr.ph9225.split.us.us.preheader ], [ %indvars.iv.next10530.1, %._crit_edge9226.us.loopexit11907.unr-lcssa ]
  %.129909224.us.us.epil.init = phi ptr [ %.029899242.us, %.lr.ph9225.split.us.us.preheader ], [ %i.gqn, %._crit_edge9226.us.loopexit11907.unr-lcssa ]
  %.175539222.us.us.epil.init = phi <16 x i32> [ %i.gmu, %.lr.ph9225.split.us.us.preheader ], [ %i.gqm, %._crit_edge9226.us.loopexit11907.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12233)
  %i.goh = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10529.epil.init
  %i.goi = load i32, ptr %i.goh, align 4, !tbaa !9
  %i.goj = sext i32 %i.goi to i64
  %i.gok = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.goj
  %i.gol = load <16 x i8>, ptr %i.gok, align 16, !tbaa !44
  %i.gom = sext <16 x i8> %i.gol to <16 x i16>
  %i.gon = bitcast <16 x i16> %i.gom to <4 x i64>
  %i.goo = shufflevector <4 x i64> %i.gon, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gop = load <32 x i8>, ptr %.129909224.us.us.epil.init, align 32, !tbaa !44
  %i.goq = sext <32 x i8> %i.gop to <32 x i16>
  %i.gor = bitcast <8 x i64> %i.goo to <32 x i16>
  %i.gos = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175539222.us.us.epil.init, <32 x i16> %i.gor, <32 x i16> %i.goq)
  br label %._crit_edge9226.us

._crit_edge9226.us.loopexit11908.unr-lcssa:       ; preds = %.lr.ph9225.split.us9231.us
  br i1 %lcmp.mod12225.not, label %._crit_edge9226.us, label %.lr.ph9225.split.us9231.us.epil.preheader

.lr.ph9225.split.us9231.us.epil.preheader:        ; preds = %._crit_edge9226.us.loopexit11908.unr-lcssa, %.lr.ph9225.split.us9231.us.preheader
  %indvars.iv10522.epil.init = phi i64 [ 0, %.lr.ph9225.split.us9231.us.preheader ], [ %indvars.iv.next10523.1, %._crit_edge9226.us.loopexit11908.unr-lcssa ]
  %.129909224.us9232.us.epil.init = phi ptr [ %.029899242.us, %.lr.ph9225.split.us9231.us.preheader ], [ %i.gry, %._crit_edge9226.us.loopexit11908.unr-lcssa ]
  %.175539222.us9234.us.epil.init = phi <16 x i32> [ %i.gmu, %.lr.ph9225.split.us9231.us.preheader ], [ %i.grx, %._crit_edge9226.us.loopexit11908.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12227)
  %i.got = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10522.epil.init
  %i.gou = load i32, ptr %i.got, align 4, !tbaa !9
  %i.gov = sext i32 %i.gou to i64
  %i.gow = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.gov ; 2 uses
  %i.gox = load i64, ptr %i.gow, align 1, !tbaa !44
  %i.goy = insertelement <2 x i64> poison, i64 %i.gox, i64 0
  %i.goz = getelementptr inbounds nuw i8, ptr %i.gow, i64 %i.dou
  %i.gpa = load i64, ptr %i.goz, align 1, !tbaa !44
  %i.gpb = insertelement <2 x i64> %i.goy, i64 %i.gpa, i64 1
  %i.gpc = bitcast <2 x i64> %i.gpb to <16 x i8>
  %i.gpd = sext <16 x i8> %i.gpc to <16 x i16>
  %i.gpe = bitcast <16 x i16> %i.gpd to <4 x i64>
  %i.gpf = shufflevector <4 x i64> %i.gpe, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gpg = load <32 x i8>, ptr %.129909224.us9232.us.epil.init, align 32, !tbaa !44
  %i.gph = sext <32 x i8> %i.gpg to <32 x i16>
  %i.gpi = bitcast <8 x i64> %i.gpf to <32 x i16>
  %i.gpj = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175539222.us9234.us.epil.init, <32 x i16> %i.gpi, <32 x i16> %i.gph)
  br label %._crit_edge9226.us

._crit_edge9226.us:                               ; preds = %.lr.ph9225.split.us9231.us.epil.preheader, %._crit_edge9226.us.loopexit11908.unr-lcssa, %.lr.ph9225.split.us.us.epil.preheader, %._crit_edge9226.us.loopexit11907.unr-lcssa, %.lr.ph9225.split.us9258.epil.preheader, %._crit_edge9226.us.loopexit.unr-lcssa
  %.us-phi9229.us.in = phi <16 x i32> [ %i.gog, %.lr.ph9225.split.us9258.epil.preheader ], [ %i.gos, %.lr.ph9225.split.us.us.epil.preheader ], [ %i.gnu, %._crit_edge9226.us.loopexit.unr-lcssa ], [ %i.gqm, %._crit_edge9226.us.loopexit11907.unr-lcssa ], [ %i.grx, %._crit_edge9226.us.loopexit11908.unr-lcssa ], [ %i.gpj, %.lr.ph9225.split.us9231.us.epil.preheader ] ; 2 uses
  %scevgep10524 = getelementptr i8, ptr %.029899242.us, i64 32
  %scevgep10525 = getelementptr i8, ptr %scevgep10524, i64 %i.gmp ; 2 uses
  %i.gpk = add nuw nsw i32 %.029989241.us, 16     ; 2 uses
  %i.gpl = or disjoint i32 %i.gpk, 15
  %i.gpm = icmp slt i32 %i.gpl, %i.gls
  br i1 %i.gpm, label %.noexc3469.us, label %._crit_edge9243.loopexit, !llvm.loop !250

.lr.ph9225.split.us.us:                           ; preds = %.lr.ph9225.split.us.us.preheader, %.lr.ph9225.split.us.us
  %indvars.iv10529 = phi i64 [ %indvars.iv.next10530.1, %.lr.ph9225.split.us.us ], [ 0, %.lr.ph9225.split.us.us.preheader ] ; 3 uses
  %.129909224.us.us = phi ptr [ %i.gqn, %.lr.ph9225.split.us.us ], [ %.029899242.us, %.lr.ph9225.split.us.us.preheader ] ; 3 uses
  %.175539222.us.us = phi <16 x i32> [ %i.gqm, %.lr.ph9225.split.us.us ], [ %i.gmu, %.lr.ph9225.split.us.us.preheader ]
  %niter12235 = phi i64 [ %niter12235.next.1, %.lr.ph9225.split.us.us ], [ 0, %.lr.ph9225.split.us.us.preheader ]
  %i.gpn = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10529
  %i.gpo = load i32, ptr %i.gpn, align 4, !tbaa !9
  %i.gpp = sext i32 %i.gpo to i64
  %i.gpq = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.gpp
  %i.gpr = load <16 x i8>, ptr %i.gpq, align 16, !tbaa !44
  %i.gps = sext <16 x i8> %i.gpr to <16 x i16>
  %i.gpt = bitcast <16 x i16> %i.gps to <4 x i64>
  %i.gpu = shufflevector <4 x i64> %i.gpt, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gpv = load <32 x i8>, ptr %.129909224.us.us, align 32, !tbaa !44
  %i.gpw = sext <32 x i8> %i.gpv to <32 x i16>
  %i.gpx = bitcast <8 x i64> %i.gpu to <32 x i16>
  %i.gpy = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175539222.us.us, <32 x i16> %i.gpx, <32 x i16> %i.gpw)
  %i.gpz = getelementptr inbounds nuw i8, ptr %.129909224.us.us, i64 32
  %i.gqa = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10529
  %i.gqb = getelementptr inbounds nuw i8, ptr %i.gqa, i64 4
  %i.gqc = load i32, ptr %i.gqb, align 4, !tbaa !9
  %i.gqd = sext i32 %i.gqc to i64
  %i.gqe = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.gqd
  %i.gqf = load <16 x i8>, ptr %i.gqe, align 16, !tbaa !44
  %i.gqg = sext <16 x i8> %i.gqf to <16 x i16>
  %i.gqh = bitcast <16 x i16> %i.gqg to <4 x i64>
  %i.gqi = shufflevector <4 x i64> %i.gqh, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gqj = load <32 x i8>, ptr %i.gpz, align 32, !tbaa !44
  %i.gqk = sext <32 x i8> %i.gqj to <32 x i16>
  %i.gql = bitcast <8 x i64> %i.gqi to <32 x i16>
  %i.gqm = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.gpy, <32 x i16> %i.gql, <32 x i16> %i.gqk) ; 3 uses
  %i.gqn = getelementptr inbounds nuw i8, ptr %.129909224.us.us, i64 64 ; 2 uses
  %indvars.iv.next10530.1 = add nuw nsw i64 %indvars.iv10529, 2 ; 2 uses
  %niter12235.next.1 = add i64 %niter12235, 2     ; 2 uses
  %niter12235.ncmp.1 = icmp eq i64 %niter12235.next.1, %unroll_iter12234
  br i1 %niter12235.ncmp.1, label %._crit_edge9226.us.loopexit11907.unr-lcssa, label %.lr.ph9225.split.us.us, !llvm.loop !249

.lr.ph9225.split.us9231.us:                       ; preds = %.lr.ph9225.split.us9231.us.preheader, %.lr.ph9225.split.us9231.us
  %indvars.iv10522 = phi i64 [ %indvars.iv.next10523.1, %.lr.ph9225.split.us9231.us ], [ 0, %.lr.ph9225.split.us9231.us.preheader ] ; 3 uses
  %.129909224.us9232.us = phi ptr [ %i.gry, %.lr.ph9225.split.us9231.us ], [ %.029899242.us, %.lr.ph9225.split.us9231.us.preheader ] ; 3 uses
  %.175539222.us9234.us = phi <16 x i32> [ %i.grx, %.lr.ph9225.split.us9231.us ], [ %i.gmu, %.lr.ph9225.split.us9231.us.preheader ]
  %niter12229 = phi i64 [ %niter12229.next.1, %.lr.ph9225.split.us9231.us ], [ 0, %.lr.ph9225.split.us9231.us.preheader ]
  %i.gqo = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10522
  %i.gqp = load i32, ptr %i.gqo, align 4, !tbaa !9
  %i.gqq = sext i32 %i.gqp to i64
  %i.gqr = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.gqq ; 2 uses
  %i.gqs = load i64, ptr %i.gqr, align 1, !tbaa !44
  %i.gqt = insertelement <2 x i64> poison, i64 %i.gqs, i64 0
  %i.gqu = getelementptr inbounds nuw i8, ptr %i.gqr, i64 %i.dou
  %i.gqv = load i64, ptr %i.gqu, align 1, !tbaa !44
  %i.gqw = insertelement <2 x i64> %i.gqt, i64 %i.gqv, i64 1
  %i.gqx = bitcast <2 x i64> %i.gqw to <16 x i8>
  %i.gqy = sext <16 x i8> %i.gqx to <16 x i16>
  %i.gqz = bitcast <16 x i16> %i.gqy to <4 x i64>
  %i.gra = shufflevector <4 x i64> %i.gqz, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.grb = load <32 x i8>, ptr %.129909224.us9232.us, align 32, !tbaa !44
  %i.grc = sext <32 x i8> %i.grb to <32 x i16>
  %i.grd = bitcast <8 x i64> %i.gra to <32 x i16>
  %i.gre = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.175539222.us9234.us, <32 x i16> %i.grd, <32 x i16> %i.grc)
  %i.grf = getelementptr inbounds nuw i8, ptr %.129909224.us9232.us, i64 32
  %i.grg = getelementptr inbounds nuw [4 x i8], ptr %i.gml, i64 %indvars.iv10522
  %i.grh = getelementptr inbounds nuw i8, ptr %i.grg, i64 4
  %i.gri = load i32, ptr %i.grh, align 4, !tbaa !9
  %i.grj = sext i32 %i.gri to i64
  %i.grk = getelementptr inbounds i8, ptr %gep9251.us, i64 %i.grj ; 2 uses
  %i.grl = load i64, ptr %i.grk, align 1, !tbaa !44
  %i.grm = insertelement <2 x i64> poison, i64 %i.grl, i64 0
  %i.grn = getelementptr inbounds nuw i8, ptr %i.grk, i64 %i.dou
  %i.gro = load i64, ptr %i.grn, align 1, !tbaa !44
  %i.grp = insertelement <2 x i64> %i.grm, i64 %i.gro, i64 1
  %i.grq = bitcast <2 x i64> %i.grp to <16 x i8>
  %i.grr = sext <16 x i8> %i.grq to <16 x i16>
  %i.grs = bitcast <16 x i16> %i.grr to <4 x i64>
  %i.grt = shufflevector <4 x i64> %i.grs, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gru = load <32 x i8>, ptr %i.grf, align 32, !tbaa !44
  %i.grv = sext <32 x i8> %i.gru to <32 x i16>
  %i.grw = bitcast <8 x i64> %i.grt to <32 x i16>
  %i.grx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.gre, <32 x i16> %i.grw, <32 x i16> %i.grv) ; 3 uses
  %i.gry = getelementptr inbounds nuw i8, ptr %.129909224.us9232.us, i64 64 ; 2 uses
  %indvars.iv.next10523.1 = add nuw nsw i64 %indvars.iv10522, 2 ; 2 uses
  %niter12229.next.1 = add i64 %niter12229, 2     ; 2 uses
  %niter12229.ncmp.1 = icmp eq i64 %niter12229.next.1, %unroll_iter12228
  br i1 %niter12229.ncmp.1, label %._crit_edge9226.us.loopexit11908.unr-lcssa, label %.lr.ph9225.split.us9231.us, !llvm.loop !249

._crit_edge9243.loopexit:                         ; preds = %._crit_edge9226.us
  %i.grz = and i32 %i.gls, 2147483632
  br label %._crit_edge9243

._crit_edge9243:                                  ; preds = %.noexc3469.preheader, %._crit_edge9243.loopexit, %.noexc3471
  %i.gsa = phi <16 x i32> [ zeroinitializer, %.noexc3471 ], [ %.us-phi9229.us.in, %._crit_edge9243.loopexit ], [ zeroinitializer, %.noexc3469.preheader ] ; 2 uses
  %.02998.lcssa = phi i32 [ 0, %.noexc3471 ], [ %i.grz, %._crit_edge9243.loopexit ], [ %i.gmm, %.noexc3469.preheader ] ; 3 uses
  %.02989.lcssa = phi ptr [ %i.ejx, %.noexc3471 ], [ %scevgep10525, %._crit_edge9243.loopexit ], [ %i.ejx, %.noexc3469.preheader ] ; 2 uses
  %i.gsb = shufflevector <16 x i32> %i.gsa, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gsc = shufflevector <16 x i32> %i.gsa, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gsd = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.gsb, <8 x i32> %i.gsc) ; 2 uses
  %i.gse = shufflevector <8 x i32> %i.gsd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gsf = shufflevector <8 x i32> %i.gsd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gsg = add <4 x i32> %i.gse, %i.gsf           ; 4 uses
  %shift11819 = shufflevector <4 x i32> %i.gsg, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop11820 = add nsw <4 x i32> %i.gsg, %shift11819
  %shift11822 = shufflevector <4 x i32> %i.gsg, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop11823 = add nsw <4 x i32> %i.gsg, %shift11822
  %i.gsh = or disjoint i32 %.02998.lcssa, 7
  %i.gsi = icmp slt i32 %i.gsh, %i.gls
  br i1 %i.gsi, label %.noexc3467.lr.ph, label %._crit_edge9275

.noexc3467.lr.ph:                                 ; preds = %._crit_edge9243
  %i.gsj = load i32, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.gsk = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !251
  %i.gsl = load ptr, ptr %0, align 8, !tbaa !32, !noalias !251
  %i.gsm = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !251
  %i.gsn = load i64, ptr %i.bfc, align 8, !tbaa !36, !noalias !251 ; 2 uses
  %factor.op.mul9279 = mul i64 %i.gsm, %i.gsn
  %i.gso = sext i32 %i.gsk to i64
  %i.gsp = load i32, ptr %i.b, align 4, !tbaa !9
  %i.gsq = mul nsw i32 %i.gsp, %i.glq
  %i.gsr = sext i32 %i.gsq to i64
  %i.gss = mul i64 %i.gsn, %i.gso
  %i.gst = mul i64 %i.gss, %i.gsr
  %invariant.gep9281 = getelementptr i8, ptr %i.gsl, i64 %i.gst
  %i.gsu = load i32, ptr %i.a, align 4, !tbaa !9
  %i.gsv = mul i32 %i.gsj, %i.glr
  %i.gsw = mul i32 %i.gsv, %i.gsu
  %i.gsx = sext i32 %i.gsw to i64
  %invariant.gep9282 = getelementptr i8, ptr %invariant.gep9281, i64 %i.gsx
  %i.gsy = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.gsz = icmp sgt i32 %i.gsy, 0
  %i.gta = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.gtb = icmp eq i32 %i.gsj, 8
  %i.gtc = add i32 %i.gsy, -1
  %i.gtd = zext i32 %i.gtc to i64
  %i.gte = shl nuw nsw i64 %i.gtd, 4              ; 2 uses
  %wide.trip.count10548 = zext i32 %i.gsy to i64  ; 5 uses
  %i.gtf = add nsw i64 %wide.trip.count10548, -1  ; 2 uses
  %xtraiter12242 = and i64 %wide.trip.count10548, 1
  %i.gtg = icmp eq i64 %i.gtf, 0
  %unroll_iter12246 = and i64 %wide.trip.count10548, 2147483646
  %lcmp.mod12243.not = icmp eq i64 %xtraiter12242, 0
  %lcmp.mod12245 = trunc i32 %i.gsy to i1
  %xtraiter12248 = and i64 %wide.trip.count10548, 1
  %i.gth = icmp eq i64 %i.gtf, 0
  %unroll_iter12252 = and i64 %wide.trip.count10548, 2147483646
  %lcmp.mod12249.not = icmp eq i64 %xtraiter12248, 0
  %lcmp.mod12251 = trunc i32 %i.gsy to i1
  br label %.noexc3467

.noexc3467:                                       ; preds = %.noexc3467.lr.ph, %._crit_edge9267
  %.229919274 = phi ptr [ %.02989.lcssa, %.noexc3467.lr.ph ], [ %.32992.lcssa, %._crit_edge9267 ] ; 7 uses
  %.129999273 = phi i32 [ %.02998.lcssa, %.noexc3467.lr.ph ], [ %i.gve, %._crit_edge9267 ] ; 2 uses
  %i.gti = phi <8 x i32> [ zeroinitializer, %.noexc3467.lr.ph ], [ %i.gvd, %._crit_edge9267 ] ; 5 uses
  %i.gtj = sdiv i32 %.129999273, %i.gsj
  %i.gtk = sext i32 %i.gtj to i64
  %.reass9280 = mul i64 %factor.op.mul9279, %i.gtk
  %gep9283 = getelementptr i8, ptr %invariant.gep9282, i64 %.reass9280 ; 6 uses
  br i1 %i.gsz, label %.lr.ph9266, label %._crit_edge9267

.lr.ph9266:                                       ; preds = %.noexc3467
  br i1 %i.gtb, label %.lr.ph9266.split.us.preheader, label %.lr.ph9266.split.preheader

.lr.ph9266.split.preheader:                       ; preds = %.lr.ph9266
  br i1 %i.gtg, label %.lr.ph9266.split.epil.preheader, label %.lr.ph9266.split

.lr.ph9266.split.us.preheader:                    ; preds = %.lr.ph9266
  br i1 %i.gth, label %.lr.ph9266.split.us.epil.preheader, label %.lr.ph9266.split.us

.lr.ph9266.split.us:                              ; preds = %.lr.ph9266.split.us.preheader, %.lr.ph9266.split.us
  %indvars.iv10550 = phi i64 [ %indvars.iv.next10551.1, %.lr.ph9266.split.us ], [ 0, %.lr.ph9266.split.us.preheader ] ; 3 uses
  %.329929265.us = phi ptr [ %i.guh, %.lr.ph9266.split.us ], [ %.229919274, %.lr.ph9266.split.us.preheader ] ; 3 uses
  %.175519263.us = phi <8 x i32> [ %i.gug, %.lr.ph9266.split.us ], [ %i.gti, %.lr.ph9266.split.us.preheader ]
  %niter12253 = phi i64 [ %niter12253.next.1, %.lr.ph9266.split.us ], [ 0, %.lr.ph9266.split.us.preheader ]
  %i.gtl = getelementptr inbounds nuw [4 x i8], ptr %i.gta, i64 %indvars.iv10550
  %i.gtm = load i32, ptr %i.gtl, align 4, !tbaa !9
  %i.gtn = sext i32 %i.gtm to i64
  %i.gto = getelementptr inbounds i8, ptr %gep9283, i64 %i.gtn
  %i.gtp = load <8 x i8>, ptr %i.gto, align 1, !tbaa !44
  %i.gtq = load <16 x i8>, ptr %.329929265.us, align 16, !tbaa !44
  %i.gtr = sext <16 x i8> %i.gtq to <16 x i16>
  %i.gts = shufflevector <8 x i8> %i.gtp, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gtt = sext <16 x i8> %i.gts to <16 x i16>
  %i.gtu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175519263.us, <16 x i16> %i.gtt, <16 x i16> %i.gtr)
  %i.gtv = getelementptr inbounds nuw i8, ptr %.329929265.us, i64 16
  %i.gtw = getelementptr inbounds nuw [4 x i8], ptr %i.gta, i64 %indvars.iv10550
  %i.gtx = getelementptr inbounds nuw i8, ptr %i.gtw, i64 4
  %i.gty = load i32, ptr %i.gtx, align 4, !tbaa !9
  %i.gtz = sext i32 %i.gty to i64
  %i.gua = getelementptr inbounds i8, ptr %gep9283, i64 %i.gtz
  %i.gub = load <8 x i8>, ptr %i.gua, align 1, !tbaa !44
  %i.guc = load <16 x i8>, ptr %i.gtv, align 16, !tbaa !44
  %i.gud = sext <16 x i8> %i.guc to <16 x i16>
  %i.gue = shufflevector <8 x i8> %i.gub, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.guf = sext <16 x i8> %i.gue to <16 x i16>
  %i.gug = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.gtu, <16 x i16> %i.guf, <16 x i16> %i.gud) ; 3 uses
  %i.guh = getelementptr inbounds nuw i8, ptr %.329929265.us, i64 32 ; 2 uses
  %indvars.iv.next10551.1 = add nuw nsw i64 %indvars.iv10550, 2 ; 2 uses
  %niter12253.next.1 = add i64 %niter12253, 2     ; 2 uses
  %niter12253.ncmp.1 = icmp eq i64 %niter12253.next.1, %unroll_iter12252
  br i1 %niter12253.ncmp.1, label %._crit_edge9267.loopexit.unr-lcssa, label %.lr.ph9266.split.us, !llvm.loop !254

._crit_edge9267.loopexit.unr-lcssa:               ; preds = %.lr.ph9266.split.us
  br i1 %lcmp.mod12249.not, label %._crit_edge9267.loopexit, label %.lr.ph9266.split.us.epil.preheader

.lr.ph9266.split.us.epil.preheader:               ; preds = %._crit_edge9267.loopexit.unr-lcssa, %.lr.ph9266.split.us.preheader
  %indvars.iv10550.epil.init = phi i64 [ 0, %.lr.ph9266.split.us.preheader ], [ %indvars.iv.next10551.1, %._crit_edge9267.loopexit.unr-lcssa ]
  %.329929265.us.epil.init = phi ptr [ %.229919274, %.lr.ph9266.split.us.preheader ], [ %i.guh, %._crit_edge9267.loopexit.unr-lcssa ]
  %.175519263.us.epil.init = phi <8 x i32> [ %i.gti, %.lr.ph9266.split.us.preheader ], [ %i.gug, %._crit_edge9267.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12251)
  %i.gui = getelementptr inbounds nuw [4 x i8], ptr %i.gta, i64 %indvars.iv10550.epil.init
  %i.guj = load i32, ptr %i.gui, align 4, !tbaa !9
  %i.guk = sext i32 %i.guj to i64
  %i.gul = getelementptr inbounds i8, ptr %gep9283, i64 %i.guk
  %i.gum = load <8 x i8>, ptr %i.gul, align 1, !tbaa !44
  %i.gun = load <16 x i8>, ptr %.329929265.us.epil.init, align 16, !tbaa !44
  %i.guo = sext <16 x i8> %i.gun to <16 x i16>
  %i.gup = shufflevector <8 x i8> %i.gum, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.guq = sext <16 x i8> %i.gup to <16 x i16>
  %i.gur = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175519263.us.epil.init, <16 x i16> %i.guq, <16 x i16> %i.guo)
  br label %._crit_edge9267.loopexit

._crit_edge9267.loopexit:                         ; preds = %._crit_edge9267.loopexit.unr-lcssa, %.lr.ph9266.split.us.epil.preheader
  %.lcssa11995 = phi <8 x i32> [ %i.gug, %._crit_edge9267.loopexit.unr-lcssa ], [ %i.gur, %.lr.ph9266.split.us.epil.preheader ]
  %scevgep10552 = getelementptr i8, ptr %.229919274, i64 16
  %scevgep10553 = getelementptr i8, ptr %scevgep10552, i64 %i.gte
  br label %._crit_edge9267

._crit_edge9267.loopexit9785.unr-lcssa:           ; preds = %.lr.ph9266.split
  br i1 %lcmp.mod12243.not, label %._crit_edge9267.loopexit9785, label %.lr.ph9266.split.epil.preheader

.lr.ph9266.split.epil.preheader:                  ; preds = %._crit_edge9267.loopexit9785.unr-lcssa, %.lr.ph9266.split.preheader
  %indvars.iv10543.epil.init = phi i64 [ 0, %.lr.ph9266.split.preheader ], [ %indvars.iv.next10544.1, %._crit_edge9267.loopexit9785.unr-lcssa ]
  %.329929265.epil.init = phi ptr [ %.229919274, %.lr.ph9266.split.preheader ], [ %i.gwf, %._crit_edge9267.loopexit9785.unr-lcssa ]
  %.175519263.epil.init = phi <8 x i32> [ %i.gti, %.lr.ph9266.split.preheader ], [ %i.gwe, %._crit_edge9267.loopexit9785.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12245)
  %i.gus = getelementptr inbounds nuw [4 x i8], ptr %i.gta, i64 %indvars.iv10543.epil.init
  %i.gut = load i32, ptr %i.gus, align 4, !tbaa !9
  %i.guu = sext i32 %i.gut to i64
  %i.guv = getelementptr inbounds i8, ptr %gep9283, i64 %i.guu
  %i.guw = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.guv, <8 x i32> %i.eke, <8 x i32> splat (i32 -1), i8 1)
  %i.gux = load <16 x i8>, ptr %.329929265.epil.init, align 16, !tbaa !44
  %i.guy = sext <16 x i8> %i.gux to <16 x i16>
  %i.guz = shufflevector <8 x i32> %i.guw, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gva = trunc <16 x i32> %i.guz to <16 x i8>
  %i.gvb = sext <16 x i8> %i.gva to <16 x i16>
  %i.gvc = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175519263.epil.init, <16 x i16> %i.gvb, <16 x i16> %i.guy)
  br label %._crit_edge9267.loopexit9785

._crit_edge9267.loopexit9785:                     ; preds = %._crit_edge9267.loopexit9785.unr-lcssa, %.lr.ph9266.split.epil.preheader
  %.lcssa11994 = phi <8 x i32> [ %i.gwe, %._crit_edge9267.loopexit9785.unr-lcssa ], [ %i.gvc, %.lr.ph9266.split.epil.preheader ]
  %scevgep10545 = getelementptr i8, ptr %.229919274, i64 16
  %scevgep10546 = getelementptr i8, ptr %scevgep10545, i64 %i.gte
  br label %._crit_edge9267

._crit_edge9267:                                  ; preds = %._crit_edge9267.loopexit9785, %._crit_edge9267.loopexit, %.noexc3467
  %i.gvd = phi <8 x i32> [ %i.gti, %.noexc3467 ], [ %.lcssa11995, %._crit_edge9267.loopexit ], [ %.lcssa11994, %._crit_edge9267.loopexit9785 ] ; 2 uses
  %.32992.lcssa = phi ptr [ %.229919274, %.noexc3467 ], [ %scevgep10553, %._crit_edge9267.loopexit ], [ %scevgep10546, %._crit_edge9267.loopexit9785 ] ; 2 uses
  %i.gve = add nuw nsw i32 %.129999273, 8         ; 3 uses
  %i.gvf = or disjoint i32 %i.gve, 7
  %i.gvg = icmp slt i32 %i.gvf, %i.gls
  br i1 %i.gvg, label %.noexc3467, label %._crit_edge9275, !llvm.loop !255

.lr.ph9266.split:                                 ; preds = %.lr.ph9266.split.preheader, %.lr.ph9266.split
  %indvars.iv10543 = phi i64 [ %indvars.iv.next10544.1, %.lr.ph9266.split ], [ 0, %.lr.ph9266.split.preheader ] ; 3 uses
  %.329929265 = phi ptr [ %i.gwf, %.lr.ph9266.split ], [ %.229919274, %.lr.ph9266.split.preheader ] ; 3 uses
  %.175519263 = phi <8 x i32> [ %i.gwe, %.lr.ph9266.split ], [ %i.gti, %.lr.ph9266.split.preheader ]
  %niter12247 = phi i64 [ %niter12247.next.1, %.lr.ph9266.split ], [ 0, %.lr.ph9266.split.preheader ]
  %i.gvh = getelementptr inbounds nuw [4 x i8], ptr %i.gta, i64 %indvars.iv10543
  %i.gvi = load i32, ptr %i.gvh, align 4, !tbaa !9
  %i.gvj = sext i32 %i.gvi to i64
  %i.gvk = getelementptr inbounds i8, ptr %gep9283, i64 %i.gvj
  %i.gvl = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gvk, <8 x i32> %i.eke, <8 x i32> splat (i32 -1), i8 1)
  %i.gvm = load <16 x i8>, ptr %.329929265, align 16, !tbaa !44
  %i.gvn = sext <16 x i8> %i.gvm to <16 x i16>
  %i.gvo = shufflevector <8 x i32> %i.gvl, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gvp = trunc <16 x i32> %i.gvo to <16 x i8>
  %i.gvq = sext <16 x i8> %i.gvp to <16 x i16>
  %i.gvr = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175519263, <16 x i16> %i.gvq, <16 x i16> %i.gvn)
  %i.gvs = getelementptr inbounds nuw i8, ptr %.329929265, i64 16
  %i.gvt = getelementptr inbounds nuw [4 x i8], ptr %i.gta, i64 %indvars.iv10543
  %i.gvu = getelementptr inbounds nuw i8, ptr %i.gvt, i64 4
  %i.gvv = load i32, ptr %i.gvu, align 4, !tbaa !9
  %i.gvw = sext i32 %i.gvv to i64
  %i.gvx = getelementptr inbounds i8, ptr %gep9283, i64 %i.gvw
  %i.gvy = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gvx, <8 x i32> %i.eke, <8 x i32> splat (i32 -1), i8 1)
  %i.gvz = load <16 x i8>, ptr %i.gvs, align 16, !tbaa !44
  %i.gwa = sext <16 x i8> %i.gvz to <16 x i16>
  %i.gwb = shufflevector <8 x i32> %i.gvy, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gwc = trunc <16 x i32> %i.gwb to <16 x i8>
  %i.gwd = sext <16 x i8> %i.gwc to <16 x i16>
  %i.gwe = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.gvr, <16 x i16> %i.gwd, <16 x i16> %i.gwa) ; 3 uses
  %i.gwf = getelementptr inbounds nuw i8, ptr %.329929265, i64 32 ; 2 uses
  %indvars.iv.next10544.1 = add nuw nsw i64 %indvars.iv10543, 2 ; 2 uses
  %niter12247.next.1 = add i64 %niter12247, 2     ; 2 uses
  %niter12247.ncmp.1 = icmp eq i64 %niter12247.next.1, %unroll_iter12246
  br i1 %niter12247.ncmp.1, label %._crit_edge9267.loopexit9785.unr-lcssa, label %.lr.ph9266.split, !llvm.loop !254

._crit_edge9275:                                  ; preds = %._crit_edge9267, %._crit_edge9243
  %i.gwg = phi <8 x i32> [ zeroinitializer, %._crit_edge9243 ], [ %i.gvd, %._crit_edge9267 ] ; 4 uses
  %.12999.lcssa = phi i32 [ %.02998.lcssa, %._crit_edge9243 ], [ %i.gve, %._crit_edge9267 ] ; 6 uses
  %.22991.lcssa = phi ptr [ %.02989.lcssa, %._crit_edge9243 ], [ %.32992.lcssa, %._crit_edge9267 ] ; 3 uses
  %30 = shufflevector <8 x i32> %i.gwg, <8 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gwh = shufflevector <8 x i32> %i.gwg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %31 = add <4 x i32> %30, %i.gwh                 ; 2 uses
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %33 = add <4 x i32> %32, %31
  %34 = shufflevector <8 x i32> %i.gwg, <8 x i32> poison, <4 x i32> <i32 6, i32 7, i32 6, i32 7>
  %i.gwi = shufflevector <8 x i32> %i.gwg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %35 = add <4 x i32> %34, %i.gwi                 ; 2 uses
  %36 = shufflevector <4 x i32> %35, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %37 = add <4 x i32> %36, %35
  %foldExtExtBinop11825 = add nsw <4 x i32> %foldExtExtBinop11820, %33
  %38 = extractelement <4 x i32> %foldExtExtBinop11825, i64 0 ; 3 uses
  %shift11827 = shufflevector <4 x i32> %foldExtExtBinop11823, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop11828 = add nsw <4 x i32> %shift11827, %37
  %39 = extractelement <4 x i32> %foldExtExtBinop11828, i64 0 ; 3 uses
  %i.gwj = or disjoint i32 %.12999.lcssa, 1
  %i.gwk = icmp slt i32 %i.gwj, %i.gls
  br i1 %i.gwk, label %.noexc3465.lr.ph, label %.preheader7894

.noexc3465.lr.ph:                                 ; preds = %._crit_edge9275
  %i.gwl = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !256
  %i.gwm = load ptr, ptr %0, align 8, !tbaa !32, !noalias !256
  %i.gwn = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !256
  %i.gwo = load i64, ptr %i.bfc, align 8, !tbaa !36, !noalias !256 ; 2 uses
  %factor.op.mul9301 = mul i64 %i.gwn, %i.gwo
  %i.gwp = sext i32 %i.gwl to i64
  %i.gwq = load i32, ptr %i.b, align 4, !tbaa !9
  %i.gwr = mul nsw i32 %i.gwq, %i.glq
  %i.gws = sext i32 %i.gwr to i64
  %i.gwt = mul i64 %i.gwo, %i.gwp
  %i.gwu = mul i64 %i.gwt, %i.gws
  %invariant.gep9303 = getelementptr i8, ptr %i.gwm, i64 %i.gwu
  %i.gwv = load i32, ptr %i.a, align 4, !tbaa !9
  %i.gww = mul nsw i32 %i.gwv, %i.glr
  %i.gwx = sext i32 %i.gww to i64
  %invariant.gep9304 = getelementptr i8, ptr %invariant.gep9303, i64 %i.gwx
  %i.gwy = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.gwz = icmp sgt i32 %i.gwy, 0
  %i.gxa = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.gwz, label %.noexc3465.us.preheader, label %.noexc3465.preheader

.noexc3465.preheader:                             ; preds = %.noexc3465.lr.ph
  %i.gxb = add nuw i32 %.12999.lcssa, 2
  %i.gxc = add nuw i32 %.12999.lcssa, 3
  %smax10557 = call i32 @llvm.smax.i32(i32 %i.gls, i32 %i.gxc)
  %i.gxd = add nsw i32 %smax10557, -2
  %i.gxe = sub nsw i32 %i.gxd, %.12999.lcssa
  %i.gxf = and i32 %i.gxe, -2
  %i.gxg = add i32 %i.gxb, %i.gxf
  br label %.preheader7894

.noexc3465.us.preheader:                          ; preds = %.noexc3465.lr.ph
  %i.gxh = add nsw i32 %i.gwy, -1
  %i.gxi = zext nneg i32 %i.gxh to i64
  %i.gxj = shl nuw nsw i64 %i.gxi, 2
  %i.gxk = zext nneg i32 %.12999.lcssa to i64
  %wide.trip.count10563 = zext nneg i32 %i.gwy to i64 ; 6 uses
  %min.iters.check11424 = icmp ult i32 %i.gwy, 8
  %min.iters.check11426 = icmp ult i32 %i.gwy, 32
  %i.gxl = and i64 %wide.trip.count10563, 24
  %n.vec11428 = and i64 %wide.trip.count10563, 2147483616 ; 5 uses
  %i.gxm = shl nuw nsw i64 %n.vec11428, 2
  %cmp.n11453 = icmp eq i64 %n.vec11428, %wide.trip.count10563
  %min.epilog.iters.check11460 = icmp eq i64 %i.gxl, 0
  %n.vec11462 = and i64 %wide.trip.count10563, 2147483640 ; 4 uses
  %i.gxn = shl nuw nsw i64 %n.vec11462, 2
  %cmp.n11476 = icmp eq i64 %n.vec11462, %wide.trip.count10563
  br label %iter.check11457

iter.check11457:                                  ; preds = %.noexc3465.us.preheader, %._crit_edge9289.us
  %indvars.iv10565 = phi i64 [ %i.gxk, %.noexc3465.us.preheader ], [ %indvars.iv.next10566, %._crit_edge9289.us ] ; 2 uses
  %.029819296.us = phi i32 [ %38, %.noexc3465.us.preheader ], [ %.lcssa11228, %._crit_edge9289.us ] ; 3 uses
  %.029859295.us = phi i32 [ %39, %.noexc3465.us.preheader ], [ %.lcssa11227, %._crit_edge9289.us ] ; 3 uses
  %.429939294.us = phi ptr [ %.22991.lcssa, %.noexc3465.us.preheader ], [ %scevgep10561, %._crit_edge9289.us ] ; 7 uses
  %.reass9302.us = mul i64 %factor.op.mul9301, %indvars.iv10565
  %gep9305.us = getelementptr i8, ptr %invariant.gep9304, i64 %.reass9302.us ; 41 uses
  br i1 %min.iters.check11424, label %vec.epilog.scalar.ph11458.preheader, label %vector.main.loop.iter.check11425

vector.main.loop.iter.check11425:                 ; preds = %iter.check11457
  br i1 %min.iters.check11426, label %vec.epilog.ph11461, label %vector.ph11427

vector.ph11427:                                   ; preds = %vector.main.loop.iter.check11425
  %i.gxo = getelementptr i8, ptr %.429939294.us, i64 %i.gxm
  %i.gxp = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029819296.us, i64 0
  %i.gxq = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.029859295.us, i64 0
  br label %vector.body11429

vector.body11429:                                 ; preds = %vector.body11429, %vector.ph11427
  %index11430 = phi i64 [ 0, %vector.ph11427 ], [ %index.next11449, %vector.body11429 ] ; 3 uses
  %vec.phi11431 = phi <16 x i32> [ %i.gxp, %vector.ph11427 ], [ %i.hhh, %vector.body11429 ]
  %vec.phi11432 = phi <16 x i32> [ zeroinitializer, %vector.ph11427 ], [ %i.hhi, %vector.body11429 ]
  %vec.phi11433 = phi <16 x i32> [ %i.gxq, %vector.ph11427 ], [ %i.hhn, %vector.body11429 ]
  %vec.phi11434 = phi <16 x i32> [ zeroinitializer, %vector.ph11427 ], [ %i.hho, %vector.body11429 ]
  %i.gxr = shl i64 %index11430, 2                 ; 2 uses
  %next.gep11435 = getelementptr i8, ptr %.429939294.us, i64 %i.gxr
  %i.gxs = getelementptr i8, ptr %.429939294.us, i64 %i.gxr
  %next.gep11436 = getelementptr i8, ptr %i.gxs, i64 64
  %i.gxt = getelementptr inbounds nuw [4 x i8], ptr %i.gxa, i64 %index11430 ; 2 uses
  %i.gxu = getelementptr inbounds nuw i8, ptr %i.gxt, i64 64
  %wide.load11437 = load <16 x i32>, ptr %i.gxt, align 4, !tbaa !9
  %wide.load11438 = load <16 x i32>, ptr %i.gxu, align 4, !tbaa !9
  %i.gxv = sext <16 x i32> %wide.load11437 to <16 x i64> ; 16 uses
  %i.gxw = sext <16 x i32> %wide.load11438 to <16 x i64> ; 16 uses
  %i.gxx = extractelement <16 x i64> %i.gxv, i64 0
  %i.gxy = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gxx ; 2 uses
  %i.gxz = extractelement <16 x i64> %i.gxv, i64 1
  %i.gya = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gxz ; 2 uses
  %i.gyb = extractelement <16 x i64> %i.gxv, i64 2
  %i.gyc = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyb ; 2 uses
  %i.gyd = extractelement <16 x i64> %i.gxv, i64 3
  %i.gye = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyd ; 2 uses
  %i.gyf = extractelement <16 x i64> %i.gxv, i64 4
  %i.gyg = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyf ; 2 uses
  %i.gyh = extractelement <16 x i64> %i.gxv, i64 5
  %i.gyi = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyh ; 2 uses
  %i.gyj = extractelement <16 x i64> %i.gxv, i64 6
  %i.gyk = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyj ; 2 uses
  %i.gyl = extractelement <16 x i64> %i.gxv, i64 7
  %i.gym = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyl ; 2 uses
  %i.gyn = extractelement <16 x i64> %i.gxv, i64 8
  %i.gyo = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyn ; 2 uses
  %i.gyp = extractelement <16 x i64> %i.gxv, i64 9
  %i.gyq = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyp ; 2 uses
  %i.gyr = extractelement <16 x i64> %i.gxv, i64 10
  %i.gys = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyr ; 2 uses
  %i.gyt = extractelement <16 x i64> %i.gxv, i64 11
  %i.gyu = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyt ; 2 uses
  %i.gyv = extractelement <16 x i64> %i.gxv, i64 12
  %i.gyw = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyv ; 2 uses
  %i.gyx = extractelement <16 x i64> %i.gxv, i64 13
  %i.gyy = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyx ; 2 uses
  %i.gyz = extractelement <16 x i64> %i.gxv, i64 14
  %i.gza = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gyz ; 2 uses
  %i.gzb = extractelement <16 x i64> %i.gxv, i64 15
  %i.gzc = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzb ; 2 uses
  %i.gzd = extractelement <16 x i64> %i.gxw, i64 0
  %i.gze = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzd ; 2 uses
  %i.gzf = extractelement <16 x i64> %i.gxw, i64 1
  %i.gzg = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzf ; 2 uses
  %i.gzh = extractelement <16 x i64> %i.gxw, i64 2
  %i.gzi = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzh ; 2 uses
  %i.gzj = extractelement <16 x i64> %i.gxw, i64 3
  %i.gzk = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzj ; 2 uses
  %i.gzl = extractelement <16 x i64> %i.gxw, i64 4
  %i.gzm = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzl ; 2 uses
  %i.gzn = extractelement <16 x i64> %i.gxw, i64 5
  %i.gzo = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzn ; 2 uses
  %i.gzp = extractelement <16 x i64> %i.gxw, i64 6
  %i.gzq = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzp ; 2 uses
  %i.gzr = extractelement <16 x i64> %i.gxw, i64 7
  %i.gzs = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzr ; 2 uses
  %i.gzt = extractelement <16 x i64> %i.gxw, i64 8
  %i.gzu = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzt ; 2 uses
  %i.gzv = extractelement <16 x i64> %i.gxw, i64 9
  %i.gzw = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzv ; 2 uses
  %i.gzx = extractelement <16 x i64> %i.gxw, i64 10
  %i.gzy = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzx ; 2 uses
  %i.gzz = extractelement <16 x i64> %i.gxw, i64 11
  %i.haa = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.gzz ; 2 uses
  %i.hab = extractelement <16 x i64> %i.gxw, i64 12
  %i.hac = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hab ; 2 uses
  %i.had = extractelement <16 x i64> %i.gxw, i64 13
  %i.hae = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.had ; 2 uses
  %i.haf = extractelement <16 x i64> %i.gxw, i64 14
  %i.hag = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.haf ; 2 uses
  %i.hah = extractelement <16 x i64> %i.gxw, i64 15
  %i.hai = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hah ; 2 uses
  %i.haj = load i8, ptr %i.gxy, align 1, !tbaa !44
  %i.hak = load i8, ptr %i.gya, align 1, !tbaa !44
  %i.hal = load i8, ptr %i.gyc, align 1, !tbaa !44
  %i.ham = load i8, ptr %i.gye, align 1, !tbaa !44
  %i.han = load i8, ptr %i.gyg, align 1, !tbaa !44
  %i.hao = load i8, ptr %i.gyi, align 1, !tbaa !44
  %i.hap = load i8, ptr %i.gyk, align 1, !tbaa !44
  %i.haq = load i8, ptr %i.gym, align 1, !tbaa !44
  %i.har = load i8, ptr %i.gyo, align 1, !tbaa !44
  %i.has = load i8, ptr %i.gyq, align 1, !tbaa !44
  %i.hat = load i8, ptr %i.gys, align 1, !tbaa !44
  %i.hau = load i8, ptr %i.gyu, align 1, !tbaa !44
  %i.hav = load i8, ptr %i.gyw, align 1, !tbaa !44
  %i.haw = load i8, ptr %i.gyy, align 1, !tbaa !44
  %i.hax = load i8, ptr %i.gza, align 1, !tbaa !44
  %i.hay = load i8, ptr %i.gzc, align 1, !tbaa !44
  %i.haz = insertelement <16 x i8> poison, i8 %i.haj, i64 0
  %i.hba = insertelement <16 x i8> %i.haz, i8 %i.hak, i64 1
  %i.hbb = insertelement <16 x i8> %i.hba, i8 %i.hal, i64 2
  %i.hbc = insertelement <16 x i8> %i.hbb, i8 %i.ham, i64 3
  %i.hbd = insertelement <16 x i8> %i.hbc, i8 %i.han, i64 4
  %i.hbe = insertelement <16 x i8> %i.hbd, i8 %i.hao, i64 5
  %i.hbf = insertelement <16 x i8> %i.hbe, i8 %i.hap, i64 6
  %i.hbg = insertelement <16 x i8> %i.hbf, i8 %i.haq, i64 7
  %i.hbh = insertelement <16 x i8> %i.hbg, i8 %i.har, i64 8
  %i.hbi = insertelement <16 x i8> %i.hbh, i8 %i.has, i64 9
  %i.hbj = insertelement <16 x i8> %i.hbi, i8 %i.hat, i64 10
  %i.hbk = insertelement <16 x i8> %i.hbj, i8 %i.hau, i64 11
  %i.hbl = insertelement <16 x i8> %i.hbk, i8 %i.hav, i64 12
  %i.hbm = insertelement <16 x i8> %i.hbl, i8 %i.haw, i64 13
  %i.hbn = insertelement <16 x i8> %i.hbm, i8 %i.hax, i64 14
  %i.hbo = insertelement <16 x i8> %i.hbn, i8 %i.hay, i64 15
  %i.hbp = load i8, ptr %i.gze, align 1, !tbaa !44
  %i.hbq = load i8, ptr %i.gzg, align 1, !tbaa !44
  %i.hbr = load i8, ptr %i.gzi, align 1, !tbaa !44
  %i.hbs = load i8, ptr %i.gzk, align 1, !tbaa !44
  %i.hbt = load i8, ptr %i.gzm, align 1, !tbaa !44
  %i.hbu = load i8, ptr %i.gzo, align 1, !tbaa !44
  %i.hbv = load i8, ptr %i.gzq, align 1, !tbaa !44
  %i.hbw = load i8, ptr %i.gzs, align 1, !tbaa !44
  %i.hbx = load i8, ptr %i.gzu, align 1, !tbaa !44
  %i.hby = load i8, ptr %i.gzw, align 1, !tbaa !44
  %i.hbz = load i8, ptr %i.gzy, align 1, !tbaa !44
  %i.hca = load i8, ptr %i.haa, align 1, !tbaa !44
  %i.hcb = load i8, ptr %i.hac, align 1, !tbaa !44
  %i.hcc = load i8, ptr %i.hae, align 1, !tbaa !44
  %i.hcd = load i8, ptr %i.hag, align 1, !tbaa !44
  %i.hce = load i8, ptr %i.hai, align 1, !tbaa !44
  %i.hcf = insertelement <16 x i8> poison, i8 %i.hbp, i64 0
  %i.hcg = insertelement <16 x i8> %i.hcf, i8 %i.hbq, i64 1
  %i.hch = insertelement <16 x i8> %i.hcg, i8 %i.hbr, i64 2
  %i.hci = insertelement <16 x i8> %i.hch, i8 %i.hbs, i64 3
  %i.hcj = insertelement <16 x i8> %i.hci, i8 %i.hbt, i64 4
  %i.hck = insertelement <16 x i8> %i.hcj, i8 %i.hbu, i64 5
  %i.hcl = insertelement <16 x i8> %i.hck, i8 %i.hbv, i64 6
  %i.hcm = insertelement <16 x i8> %i.hcl, i8 %i.hbw, i64 7
  %i.hcn = insertelement <16 x i8> %i.hcm, i8 %i.hbx, i64 8
  %i.hco = insertelement <16 x i8> %i.hcn, i8 %i.hby, i64 9
  %i.hcp = insertelement <16 x i8> %i.hco, i8 %i.hbz, i64 10
  %i.hcq = insertelement <16 x i8> %i.hcp, i8 %i.hca, i64 11
  %i.hcr = insertelement <16 x i8> %i.hcq, i8 %i.hcb, i64 12
  %i.hcs = insertelement <16 x i8> %i.hcr, i8 %i.hcc, i64 13
  %i.hct = insertelement <16 x i8> %i.hcs, i8 %i.hcd, i64 14
  %i.hcu = insertelement <16 x i8> %i.hct, i8 %i.hce, i64 15
  %i.hcv = sext <16 x i8> %i.hbo to <16 x i32>    ; 2 uses
  %i.hcw = sext <16 x i8> %i.hcu to <16 x i32>    ; 2 uses
  %wide.vec11439 = load <64 x i8>, ptr %next.gep11435, align 1, !tbaa !44 ; 4 uses
  %strided.vec11440 = shufflevector <64 x i8> %wide.vec11439, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11441 = shufflevector <64 x i8> %wide.vec11439, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11442 = shufflevector <64 x i8> %wide.vec11439, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11443 = shufflevector <64 x i8> %wide.vec11439, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec11444 = load <64 x i8>, ptr %next.gep11436, align 1, !tbaa !44 ; 4 uses
  %strided.vec11445 = shufflevector <64 x i8> %wide.vec11444, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11446 = shufflevector <64 x i8> %wide.vec11444, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11447 = shufflevector <64 x i8> %wide.vec11444, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11448 = shufflevector <64 x i8> %wide.vec11444, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.hcx = sext <16 x i8> %strided.vec11440 to <16 x i32>
  %i.hcy = sext <16 x i8> %strided.vec11445 to <16 x i32>
  %i.hcz = mul nsw <16 x i32> %i.hcx, %i.hcv
  %i.hda = mul nsw <16 x i32> %i.hcy, %i.hcw
  %i.hdb = add <16 x i32> %i.hcz, %vec.phi11431
  %i.hdc = add <16 x i32> %i.hda, %vec.phi11432
  %i.hdd = sext <16 x i8> %strided.vec11441 to <16 x i32>
  %i.hde = sext <16 x i8> %strided.vec11446 to <16 x i32>
  %i.hdf = mul nsw <16 x i32> %i.hdd, %i.hcv
  %i.hdg = mul nsw <16 x i32> %i.hde, %i.hcw
  %i.hdh = add <16 x i32> %i.hdf, %vec.phi11433
  %i.hdi = add <16 x i32> %i.hdg, %vec.phi11434
  %i.hdj = getelementptr inbounds nuw i8, ptr %i.gxy, i64 %i.dou
  %i.hdk = getelementptr inbounds nuw i8, ptr %i.gya, i64 %i.dou
  %i.hdl = getelementptr inbounds nuw i8, ptr %i.gyc, i64 %i.dou
  %i.hdm = getelementptr inbounds nuw i8, ptr %i.gye, i64 %i.dou
  %i.hdn = getelementptr inbounds nuw i8, ptr %i.gyg, i64 %i.dou
  %i.hdo = getelementptr inbounds nuw i8, ptr %i.gyi, i64 %i.dou
  %i.hdp = getelementptr inbounds nuw i8, ptr %i.gyk, i64 %i.dou
  %i.hdq = getelementptr inbounds nuw i8, ptr %i.gym, i64 %i.dou
  %i.hdr = getelementptr inbounds nuw i8, ptr %i.gyo, i64 %i.dou
  %i.hds = getelementptr inbounds nuw i8, ptr %i.gyq, i64 %i.dou
  %i.hdt = getelementptr inbounds nuw i8, ptr %i.gys, i64 %i.dou
  %i.hdu = getelementptr inbounds nuw i8, ptr %i.gyu, i64 %i.dou
  %i.hdv = getelementptr inbounds nuw i8, ptr %i.gyw, i64 %i.dou
  %i.hdw = getelementptr inbounds nuw i8, ptr %i.gyy, i64 %i.dou
  %i.hdx = getelementptr inbounds nuw i8, ptr %i.gza, i64 %i.dou
  %i.hdy = getelementptr inbounds nuw i8, ptr %i.gzc, i64 %i.dou
  %i.hdz = getelementptr inbounds nuw i8, ptr %i.gze, i64 %i.dou
  %i.hea = getelementptr inbounds nuw i8, ptr %i.gzg, i64 %i.dou
end_hunk_2
begin_hunk_3_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.hgu = insertelement <16 x i8> %i.hgt, i8 %i.hge, i64 9
  %i.hgv = insertelement <16 x i8> %i.hgu, i8 %i.hgf, i64 10
  %i.hgw = insertelement <16 x i8> %i.hgv, i8 %i.hgg, i64 11
  %i.hgx = insertelement <16 x i8> %i.hgw, i8 %i.hgh, i64 12
  %i.hgy = insertelement <16 x i8> %i.hgx, i8 %i.hgi, i64 13
  %i.hgz = insertelement <16 x i8> %i.hgy, i8 %i.hgj, i64 14
  %i.hha = insertelement <16 x i8> %i.hgz, i8 %i.hgk, i64 15
  %i.hhb = sext <16 x i8> %i.hfu to <16 x i32>    ; 2 uses
  %i.hhc = sext <16 x i8> %i.hha to <16 x i32>    ; 2 uses
  %i.hhd = sext <16 x i8> %strided.vec11442 to <16 x i32>
  %i.hhe = sext <16 x i8> %strided.vec11447 to <16 x i32>
  %i.hhf = mul nsw <16 x i32> %i.hhd, %i.hhb
  %i.hhg = mul nsw <16 x i32> %i.hhe, %i.hhc
  %i.hhh = add <16 x i32> %i.hdb, %i.hhf          ; 2 uses
  %i.hhi = add <16 x i32> %i.hdc, %i.hhg          ; 2 uses
  %i.hhj = sext <16 x i8> %strided.vec11443 to <16 x i32>
  %i.hhk = sext <16 x i8> %strided.vec11448 to <16 x i32>
  %i.hhl = mul nsw <16 x i32> %i.hhj, %i.hhb
  %i.hhm = mul nsw <16 x i32> %i.hhk, %i.hhc
  %i.hhn = add <16 x i32> %i.hdh, %i.hhl          ; 2 uses
  %i.hho = add <16 x i32> %i.hdi, %i.hhm          ; 2 uses
  %index.next11449 = add nuw i64 %index11430, 32  ; 2 uses
  %i.hhp = icmp eq i64 %index.next11449, %n.vec11428
  br i1 %i.hhp, label %middle.block11450, label %vector.body11429, !llvm.loop !259

middle.block11450:                                ; preds = %vector.body11429
  %bin.rdx11451 = add <16 x i32> %i.hhi, %i.hhh
  %i.hhq = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx11451) ; 3 uses
  %bin.rdx11452 = add <16 x i32> %i.hho, %i.hhn
  %i.hhr = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx11452) ; 3 uses
  br i1 %cmp.n11453, label %._crit_edge9289.us, label %vec.epilog.iter.check11459

vec.epilog.iter.check11459:                       ; preds = %middle.block11450
  br i1 %min.epilog.iters.check11460, label %vec.epilog.scalar.ph11458.preheader, label %vec.epilog.ph11461, !prof !234

vec.epilog.ph11461:                               ; preds = %vector.main.loop.iter.check11425, %vec.epilog.iter.check11459
  %vec.epilog.resume.val11454 = phi i64 [ %n.vec11428, %vec.epilog.iter.check11459 ], [ 0, %vector.main.loop.iter.check11425 ]
  %bc.merge.rdx11455 = phi i32 [ %i.hhq, %vec.epilog.iter.check11459 ], [ %.029819296.us, %vector.main.loop.iter.check11425 ]
  %bc.merge.rdx11456 = phi i32 [ %i.hhr, %vec.epilog.iter.check11459 ], [ %.029859295.us, %vector.main.loop.iter.check11425 ]
  %i.hhs = getelementptr i8, ptr %.429939294.us, i64 %i.gxn
  %i.hht = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx11455, i64 0
  %i.hhu = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx11456, i64 0
  br label %vec.epilog.vector.body11463

vec.epilog.vector.body11463:                      ; preds = %vec.epilog.vector.body11463, %vec.epilog.ph11461
  %index11464 = phi i64 [ %vec.epilog.resume.val11454, %vec.epilog.ph11461 ], [ %index.next11474, %vec.epilog.vector.body11463 ] ; 3 uses
  %vec.phi11465 = phi <8 x i32> [ %i.hht, %vec.epilog.ph11461 ], [ %i.hkm, %vec.epilog.vector.body11463 ]
  %vec.phi11466 = phi <8 x i32> [ %i.hhu, %vec.epilog.ph11461 ], [ %i.hkp, %vec.epilog.vector.body11463 ]
  %i.hhv = shl i64 %index11464, 2
  %next.gep11467 = getelementptr i8, ptr %.429939294.us, i64 %i.hhv
  %i.hhw = getelementptr inbounds nuw [4 x i8], ptr %i.gxa, i64 %index11464
  %wide.load11468 = load <8 x i32>, ptr %i.hhw, align 4, !tbaa !9
  %i.hhx = sext <8 x i32> %wide.load11468 to <8 x i64> ; 8 uses
  %i.hhy = extractelement <8 x i64> %i.hhx, i64 0
  %i.hhz = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hhy ; 2 uses
  %i.hia = extractelement <8 x i64> %i.hhx, i64 1
  %i.hib = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hia ; 2 uses
  %i.hic = extractelement <8 x i64> %i.hhx, i64 2
  %i.hid = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hic ; 2 uses
  %i.hie = extractelement <8 x i64> %i.hhx, i64 3
  %i.hif = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hie ; 2 uses
  %i.hig = extractelement <8 x i64> %i.hhx, i64 4
  %i.hih = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hig ; 2 uses
  %i.hii = extractelement <8 x i64> %i.hhx, i64 5
  %i.hij = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hii ; 2 uses
  %i.hik = extractelement <8 x i64> %i.hhx, i64 6
  %i.hil = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hik ; 2 uses
  %i.him = extractelement <8 x i64> %i.hhx, i64 7
  %i.hin = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.him ; 2 uses
  %i.hio = load i8, ptr %i.hhz, align 1, !tbaa !44
  %i.hip = load i8, ptr %i.hib, align 1, !tbaa !44
  %i.hiq = load i8, ptr %i.hid, align 1, !tbaa !44
  %i.hir = load i8, ptr %i.hif, align 1, !tbaa !44
  %i.his = load i8, ptr %i.hih, align 1, !tbaa !44
  %i.hit = load i8, ptr %i.hij, align 1, !tbaa !44
  %i.hiu = load i8, ptr %i.hil, align 1, !tbaa !44
  %i.hiv = load i8, ptr %i.hin, align 1, !tbaa !44
  %i.hiw = insertelement <8 x i8> poison, i8 %i.hio, i64 0
  %i.hix = insertelement <8 x i8> %i.hiw, i8 %i.hip, i64 1
  %i.hiy = insertelement <8 x i8> %i.hix, i8 %i.hiq, i64 2
  %i.hiz = insertelement <8 x i8> %i.hiy, i8 %i.hir, i64 3
  %i.hja = insertelement <8 x i8> %i.hiz, i8 %i.his, i64 4
  %i.hjb = insertelement <8 x i8> %i.hja, i8 %i.hit, i64 5
  %i.hjc = insertelement <8 x i8> %i.hjb, i8 %i.hiu, i64 6
  %i.hjd = insertelement <8 x i8> %i.hjc, i8 %i.hiv, i64 7
  %i.hje = sext <8 x i8> %i.hjd to <8 x i32>      ; 2 uses
  %wide.vec11469 = load <32 x i8>, ptr %next.gep11467, align 1, !tbaa !44 ; 4 uses
  %strided.vec11470 = shufflevector <32 x i8> %wide.vec11469, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec11471 = shufflevector <32 x i8> %wide.vec11469, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec11472 = shufflevector <32 x i8> %wide.vec11469, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec11473 = shufflevector <32 x i8> %wide.vec11469, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.hjf = sext <8 x i8> %strided.vec11470 to <8 x i32>
  %i.hjg = mul nsw <8 x i32> %i.hjf, %i.hje
  %i.hjh = add <8 x i32> %i.hjg, %vec.phi11465
  %i.hji = sext <8 x i8> %strided.vec11471 to <8 x i32>
  %i.hjj = mul nsw <8 x i32> %i.hji, %i.hje
  %i.hjk = add <8 x i32> %i.hjj, %vec.phi11466
  %i.hjl = getelementptr inbounds nuw i8, ptr %i.hhz, i64 %i.dou
  %i.hjm = getelementptr inbounds nuw i8, ptr %i.hib, i64 %i.dou
  %i.hjn = getelementptr inbounds nuw i8, ptr %i.hid, i64 %i.dou
  %i.hjo = getelementptr inbounds nuw i8, ptr %i.hif, i64 %i.dou
  %i.hjp = getelementptr inbounds nuw i8, ptr %i.hih, i64 %i.dou
  %i.hjq = getelementptr inbounds nuw i8, ptr %i.hij, i64 %i.dou
  %i.hjr = getelementptr inbounds nuw i8, ptr %i.hil, i64 %i.dou
  %i.hjs = getelementptr inbounds nuw i8, ptr %i.hin, i64 %i.dou
  %i.hjt = load i8, ptr %i.hjl, align 1, !tbaa !44
  %i.hju = load i8, ptr %i.hjm, align 1, !tbaa !44
  %i.hjv = load i8, ptr %i.hjn, align 1, !tbaa !44
  %i.hjw = load i8, ptr %i.hjo, align 1, !tbaa !44
  %i.hjx = load i8, ptr %i.hjp, align 1, !tbaa !44
  %i.hjy = load i8, ptr %i.hjq, align 1, !tbaa !44
  %i.hjz = load i8, ptr %i.hjr, align 1, !tbaa !44
  %i.hka = load i8, ptr %i.hjs, align 1, !tbaa !44
  %i.hkb = insertelement <8 x i8> poison, i8 %i.hjt, i64 0
  %i.hkc = insertelement <8 x i8> %i.hkb, i8 %i.hju, i64 1
  %i.hkd = insertelement <8 x i8> %i.hkc, i8 %i.hjv, i64 2
  %i.hke = insertelement <8 x i8> %i.hkd, i8 %i.hjw, i64 3
  %i.hkf = insertelement <8 x i8> %i.hke, i8 %i.hjx, i64 4
  %i.hkg = insertelement <8 x i8> %i.hkf, i8 %i.hjy, i64 5
  %i.hkh = insertelement <8 x i8> %i.hkg, i8 %i.hjz, i64 6
  %i.hki = insertelement <8 x i8> %i.hkh, i8 %i.hka, i64 7
  %i.hkj = sext <8 x i8> %i.hki to <8 x i32>      ; 2 uses
  %i.hkk = sext <8 x i8> %strided.vec11472 to <8 x i32>
  %i.hkl = mul nsw <8 x i32> %i.hkk, %i.hkj
  %i.hkm = add <8 x i32> %i.hjh, %i.hkl           ; 2 uses
  %i.hkn = sext <8 x i8> %strided.vec11473 to <8 x i32>
  %i.hko = mul nsw <8 x i32> %i.hkn, %i.hkj
  %i.hkp = add <8 x i32> %i.hjk, %i.hko           ; 2 uses
  %index.next11474 = add nuw i64 %index11464, 8   ; 2 uses
  %i.hkq = icmp eq i64 %index.next11474, %n.vec11462
  br i1 %i.hkq, label %vec.epilog.middle.block11475, label %vec.epilog.vector.body11463, !llvm.loop !260

vec.epilog.middle.block11475:                     ; preds = %vec.epilog.vector.body11463
  %i.hkr = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hkm) ; 2 uses
  %i.hks = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hkp) ; 2 uses
  br i1 %cmp.n11476, label %._crit_edge9289.us, label %vec.epilog.scalar.ph11458.preheader

vec.epilog.scalar.ph11458.preheader:              ; preds = %iter.check11457, %vec.epilog.iter.check11459, %vec.epilog.middle.block11475
  %indvars.iv10558.ph = phi i64 [ 0, %iter.check11457 ], [ %n.vec11428, %vec.epilog.iter.check11459 ], [ %n.vec11462, %vec.epilog.middle.block11475 ]
  %.129829286.us.ph = phi i32 [ %.029819296.us, %iter.check11457 ], [ %i.hhq, %vec.epilog.iter.check11459 ], [ %i.hkr, %vec.epilog.middle.block11475 ]
  %.129869285.us.ph = phi i32 [ %.029859295.us, %iter.check11457 ], [ %i.hhr, %vec.epilog.iter.check11459 ], [ %i.hks, %vec.epilog.middle.block11475 ]
  %.529949284.us.ph = phi ptr [ %.429939294.us, %iter.check11457 ], [ %i.gxo, %vec.epilog.iter.check11459 ], [ %i.hhs, %vec.epilog.middle.block11475 ]
  br label %vec.epilog.scalar.ph11458

vec.epilog.scalar.ph11458:                        ; preds = %vec.epilog.scalar.ph11458.preheader, %vec.epilog.scalar.ph11458
  %indvars.iv10558 = phi i64 [ %indvars.iv.next10559, %vec.epilog.scalar.ph11458 ], [ %indvars.iv10558.ph, %vec.epilog.scalar.ph11458.preheader ] ; 2 uses
  %.129829286.us = phi i32 [ %i.hlp, %vec.epilog.scalar.ph11458 ], [ %.129829286.us.ph, %vec.epilog.scalar.ph11458.preheader ]
  %.129869285.us = phi i32 [ %i.hlu, %vec.epilog.scalar.ph11458 ], [ %.129869285.us.ph, %vec.epilog.scalar.ph11458.preheader ]
  %.529949284.us = phi ptr [ %i.hlv, %vec.epilog.scalar.ph11458 ], [ %.529949284.us.ph, %vec.epilog.scalar.ph11458.preheader ] ; 5 uses
  %i.hkt = getelementptr inbounds nuw [4 x i8], ptr %i.gxa, i64 %indvars.iv10558
  %i.hku = load i32, ptr %i.hkt, align 4, !tbaa !9
  %i.hkv = sext i32 %i.hku to i64
  %i.hkw = getelementptr inbounds i8, ptr %gep9305.us, i64 %i.hkv ; 2 uses
  %i.hkx = load i8, ptr %i.hkw, align 1, !tbaa !44
  %i.hky = sext i8 %i.hkx to i32                  ; 2 uses
  %i.hkz = load i8, ptr %.529949284.us, align 1, !tbaa !44
  %i.hla = sext i8 %i.hkz to i32
  %i.hlb = mul nsw i32 %i.hla, %i.hky
  %i.hlc = add nsw i32 %i.hlb, %.129829286.us
  %i.hld = getelementptr inbounds nuw i8, ptr %.529949284.us, i64 1
  %i.hle = load i8, ptr %i.hld, align 1, !tbaa !44
  %i.hlf = sext i8 %i.hle to i32
  %i.hlg = mul nsw i32 %i.hlf, %i.hky
  %i.hlh = add nsw i32 %i.hlg, %.129869285.us
  %i.hli = getelementptr inbounds nuw i8, ptr %i.hkw, i64 %i.dou
  %i.hlj = load i8, ptr %i.hli, align 1, !tbaa !44
  %i.hlk = sext i8 %i.hlj to i32                  ; 2 uses
  %i.hll = getelementptr inbounds nuw i8, ptr %.529949284.us, i64 2
  %i.hlm = load i8, ptr %i.hll, align 1, !tbaa !44
  %i.hln = sext i8 %i.hlm to i32
  %i.hlo = mul nsw i32 %i.hln, %i.hlk
  %i.hlp = add nsw i32 %i.hlc, %i.hlo             ; 2 uses
  %i.hlq = getelementptr inbounds nuw i8, ptr %.529949284.us, i64 3
  %i.hlr = load i8, ptr %i.hlq, align 1, !tbaa !44
  %i.hls = sext i8 %i.hlr to i32
  %i.hlt = mul nsw i32 %i.hls, %i.hlk
  %i.hlu = add nsw i32 %i.hlh, %i.hlt             ; 2 uses
  %i.hlv = getelementptr inbounds nuw i8, ptr %.529949284.us, i64 4
  %indvars.iv.next10559 = add nuw nsw i64 %indvars.iv10558, 1 ; 2 uses
  %exitcond10564.not = icmp eq i64 %indvars.iv.next10559, %wide.trip.count10563
  br i1 %exitcond10564.not, label %._crit_edge9289.us, label %vec.epilog.scalar.ph11458, !llvm.loop !261

._crit_edge9289.us:                               ; preds = %vec.epilog.scalar.ph11458, %vec.epilog.middle.block11475, %middle.block11450
  %.lcssa11228 = phi i32 [ %i.hkr, %vec.epilog.middle.block11475 ], [ %i.hhq, %middle.block11450 ], [ %i.hlp, %vec.epilog.scalar.ph11458 ] ; 2 uses
  %.lcssa11227 = phi i32 [ %i.hks, %vec.epilog.middle.block11475 ], [ %i.hhr, %middle.block11450 ], [ %i.hlu, %vec.epilog.scalar.ph11458 ] ; 2 uses
  %scevgep10560 = getelementptr i8, ptr %.429939294.us, i64 4
  %scevgep10561 = getelementptr i8, ptr %scevgep10560, i64 %i.gxj ; 2 uses
  %indvars.iv.next10566 = add nuw nsw i64 %indvars.iv10565, 2 ; 3 uses
  %i.hlw = trunc i64 %indvars.iv.next10566 to i32
  %i.hlx = or i32 %i.hlw, 1
  %i.hly = icmp slt i32 %i.hlx, %i.gls
  br i1 %i.hly, label %iter.check11457, label %.preheader7894.loopexit, !llvm.loop !262

.preheader7894.loopexit:                          ; preds = %._crit_edge9289.us
  %i.hlz = trunc nuw i64 %indvars.iv.next10566 to i32
  br label %.preheader7894

.preheader7894:                                   ; preds = %.noexc3465.preheader, %.preheader7894.loopexit, %._crit_edge9275
  %.23000.lcssa = phi i32 [ %.12999.lcssa, %._crit_edge9275 ], [ %i.hlz, %.preheader7894.loopexit ], [ %i.gxg, %.noexc3465.preheader ] ; 2 uses
  %.42993.lcssa = phi ptr [ %.22991.lcssa, %._crit_edge9275 ], [ %scevgep10561, %.preheader7894.loopexit ], [ %.22991.lcssa, %.noexc3465.preheader ]
  %.02985.lcssa = phi i32 [ %39, %._crit_edge9275 ], [ %.lcssa11227, %.preheader7894.loopexit ], [ %39, %.noexc3465.preheader ] ; 3 uses
  %.02981.lcssa = phi i32 [ %38, %._crit_edge9275 ], [ %.lcssa11228, %.preheader7894.loopexit ], [ %38, %.noexc3465.preheader ] ; 3 uses
  %i.hma = icmp slt i32 %.23000.lcssa, %i.gls
  br i1 %i.hma, label %.noexc3463.lr.ph, label %._crit_edge9323

.noexc3463.lr.ph:                                 ; preds = %.preheader7894
  %i.hmb = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !263
  %i.hmc = load ptr, ptr %0, align 8, !tbaa !32, !noalias !263
  %i.hmd = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !263
  %i.hme = load i64, ptr %i.bfc, align 8, !tbaa !36, !noalias !263 ; 2 uses
  %factor.op.mul9326 = mul i64 %i.hmd, %i.hme
  %i.hmf = sext i32 %i.hmb to i64
  %i.hmg = load i32, ptr %i.b, align 4, !tbaa !9
  %i.hmh = mul nsw i32 %i.hmg, %i.glq
  %i.hmi = sext i32 %i.hmh to i64
  %i.hmj = mul i64 %i.hme, %i.hmf
  %i.hmk = mul i64 %i.hmj, %i.hmi
  %invariant.gep9328 = getelementptr i8, ptr %i.hmc, i64 %i.hmk
  %i.hml = load i32, ptr %i.a, align 4, !tbaa !9
  %i.hmm = mul nsw i32 %i.hml, %i.glr
  %i.hmn = sext i32 %i.hmm to i64
  %invariant.gep9329 = getelementptr i8, ptr %invariant.gep9328, i64 %i.hmn
  %i.hmo = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.hmp = icmp sgt i32 %i.hmo, 0
  %i.hmq = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.hmp, label %.noexc3463.us.preheader, label %._crit_edge9323

.noexc3463.us.preheader:                          ; preds = %.noexc3463.lr.ph
  %i.hmr = add nsw i32 %i.hmo, -1
  %i.hms = zext nneg i32 %i.hmr to i64
  %i.hmt = shl nuw nsw i64 %i.hms, 1
  %i.hmu = zext i32 %.23000.lcssa to i64
  %wide.trip.count10573 = zext nneg i32 %i.hmo to i64 ; 6 uses
  %min.iters.check11362 = icmp ult i32 %i.hmo, 8
  %min.iters.check11364 = icmp ult i32 %i.hmo, 64
  %i.hmv = and i64 %wide.trip.count10573, 56
  %n.vec11366 = and i64 %wide.trip.count10573, 2147483584 ; 5 uses
  %i.hmw = shl nuw nsw i64 %n.vec11366, 1
  %cmp.n11399 = icmp eq i64 %n.vec11366, %wide.trip.count10573
  %min.epilog.iters.check11405 = icmp eq i64 %i.hmv, 0
  %n.vec11407 = and i64 %wide.trip.count10573, 2147483640 ; 4 uses
  %i.hmx = shl nuw nsw i64 %n.vec11407, 1
  %cmp.n11419 = icmp eq i64 %n.vec11407, %wide.trip.count10573
  br label %iter.check11402

iter.check11402:                                  ; preds = %.noexc3463.us.preheader, %._crit_edge9315.us
  %indvars.iv10575 = phi i64 [ %i.hmu, %.noexc3463.us.preheader ], [ %indvars.iv.next10576, %._crit_edge9315.us ] ; 2 uses
  %.229839322.us = phi i32 [ %.02981.lcssa, %.noexc3463.us.preheader ], [ %.lcssa11230, %._crit_edge9315.us ] ; 3 uses
  %.229879321.us = phi i32 [ %.02985.lcssa, %.noexc3463.us.preheader ], [ %.lcssa11229, %._crit_edge9315.us ] ; 3 uses
  %.629959320.us = phi ptr [ %.42993.lcssa, %.noexc3463.us.preheader ], [ %scevgep10571, %._crit_edge9315.us ] ; 9 uses
  %.reass9327.us = mul i64 %factor.op.mul9326, %indvars.iv10575
  %gep9330.us = getelementptr i8, ptr %invariant.gep9329, i64 %.reass9327.us ; 73 uses
  br i1 %min.iters.check11362, label %vec.epilog.scalar.ph11403.preheader, label %vector.main.loop.iter.check11363

vector.main.loop.iter.check11363:                 ; preds = %iter.check11402
  br i1 %min.iters.check11364, label %vec.epilog.ph11406, label %vector.ph11365

vector.ph11365:                                   ; preds = %vector.main.loop.iter.check11363
  %i.hmy = getelementptr i8, ptr %.629959320.us, i64 %i.hmw
  %i.hmz = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229839322.us, i64 0
  %i.hna = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.229879321.us, i64 0
  br label %vector.body11367

vector.body11367:                                 ; preds = %vector.body11367, %vector.ph11365
  %index11368 = phi i64 [ 0, %vector.ph11365 ], [ %index.next11392, %vector.body11367 ] ; 3 uses
  %vec.phi = phi <16 x i32> [ %i.hmz, %vector.ph11365 ], [ %i.hxv, %vector.body11367 ]
  %vec.phi11369 = phi <16 x i32> [ zeroinitializer, %vector.ph11365 ], [ %i.hxw, %vector.body11367 ]
  %vec.phi11370 = phi <16 x i32> [ zeroinitializer, %vector.ph11365 ], [ %i.hxx, %vector.body11367 ]
  %vec.phi11371 = phi <16 x i32> [ zeroinitializer, %vector.ph11365 ], [ %i.hxy, %vector.body11367 ]
  %vec.phi11372 = phi <16 x i32> [ %i.hna, %vector.ph11365 ], [ %i.hyh, %vector.body11367 ]
  %vec.phi11373 = phi <16 x i32> [ zeroinitializer, %vector.ph11365 ], [ %i.hyi, %vector.body11367 ]
  %vec.phi11374 = phi <16 x i32> [ zeroinitializer, %vector.ph11365 ], [ %i.hyj, %vector.body11367 ]
  %vec.phi11375 = phi <16 x i32> [ zeroinitializer, %vector.ph11365 ], [ %i.hyk, %vector.body11367 ]
  %i.hnb = shl i64 %index11368, 1                 ; 4 uses
  %next.gep = getelementptr i8, ptr %.629959320.us, i64 %i.hnb
  %i.hnc = getelementptr i8, ptr %.629959320.us, i64 %i.hnb
  %next.gep11376 = getelementptr i8, ptr %i.hnc, i64 32
  %i.hnd = getelementptr i8, ptr %.629959320.us, i64 %i.hnb
  %next.gep11377 = getelementptr i8, ptr %i.hnd, i64 64
  %i.hne = getelementptr i8, ptr %.629959320.us, i64 %i.hnb
  %next.gep11378 = getelementptr i8, ptr %i.hne, i64 96
  %i.hnf = getelementptr inbounds nuw [4 x i8], ptr %i.hmq, i64 %index11368 ; 4 uses
  %i.hng = getelementptr inbounds nuw i8, ptr %i.hnf, i64 64
  %i.hnh = getelementptr inbounds nuw i8, ptr %i.hnf, i64 128
  %i.hni = getelementptr inbounds nuw i8, ptr %i.hnf, i64 192
  %wide.load = load <16 x i32>, ptr %i.hnf, align 4, !tbaa !9
  %wide.load11379 = load <16 x i32>, ptr %i.hng, align 4, !tbaa !9
  %wide.load11380 = load <16 x i32>, ptr %i.hnh, align 4, !tbaa !9
  %wide.load11381 = load <16 x i32>, ptr %i.hni, align 4, !tbaa !9
  %i.hnj = sext <16 x i32> %wide.load to <16 x i64> ; 16 uses
  %i.hnk = sext <16 x i32> %wide.load11379 to <16 x i64> ; 16 uses
  %i.hnl = sext <16 x i32> %wide.load11380 to <16 x i64> ; 16 uses
  %i.hnm = sext <16 x i32> %wide.load11381 to <16 x i64> ; 16 uses
  %i.hnn = extractelement <16 x i64> %i.hnj, i64 0
  %i.hno = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hnn
  %i.hnp = extractelement <16 x i64> %i.hnj, i64 1
  %i.hnq = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hnp
  %i.hnr = extractelement <16 x i64> %i.hnj, i64 2
  %i.hns = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hnr
  %i.hnt = extractelement <16 x i64> %i.hnj, i64 3
  %i.hnu = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hnt
  %i.hnv = extractelement <16 x i64> %i.hnj, i64 4
  %i.hnw = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hnv
  %i.hnx = extractelement <16 x i64> %i.hnj, i64 5
  %i.hny = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hnx
  %i.hnz = extractelement <16 x i64> %i.hnj, i64 6
  %i.hoa = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hnz
  %i.hob = extractelement <16 x i64> %i.hnj, i64 7
  %i.hoc = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hob
  %i.hod = extractelement <16 x i64> %i.hnj, i64 8
  %i.hoe = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hod
  %i.hof = extractelement <16 x i64> %i.hnj, i64 9
  %i.hog = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hof
  %i.hoh = extractelement <16 x i64> %i.hnj, i64 10
  %i.hoi = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hoh
  %i.hoj = extractelement <16 x i64> %i.hnj, i64 11
  %i.hok = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hoj
  %i.hol = extractelement <16 x i64> %i.hnj, i64 12
  %i.hom = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hol
  %i.hon = extractelement <16 x i64> %i.hnj, i64 13
  %i.hoo = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hon
  %i.hop = extractelement <16 x i64> %i.hnj, i64 14
  %i.hoq = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hop
  %i.hor = extractelement <16 x i64> %i.hnj, i64 15
  %i.hos = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hor
  %i.hot = extractelement <16 x i64> %i.hnk, i64 0
  %i.hou = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hot
  %i.hov = extractelement <16 x i64> %i.hnk, i64 1
  %i.how = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hov
  %i.hox = extractelement <16 x i64> %i.hnk, i64 2
  %i.hoy = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hox
  %i.hoz = extractelement <16 x i64> %i.hnk, i64 3
  %i.hpa = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hoz
  %i.hpb = extractelement <16 x i64> %i.hnk, i64 4
  %i.hpc = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpb
  %i.hpd = extractelement <16 x i64> %i.hnk, i64 5
  %i.hpe = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpd
  %i.hpf = extractelement <16 x i64> %i.hnk, i64 6
  %i.hpg = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpf
  %i.hph = extractelement <16 x i64> %i.hnk, i64 7
  %i.hpi = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hph
  %i.hpj = extractelement <16 x i64> %i.hnk, i64 8
  %i.hpk = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpj
  %i.hpl = extractelement <16 x i64> %i.hnk, i64 9
  %i.hpm = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpl
  %i.hpn = extractelement <16 x i64> %i.hnk, i64 10
  %i.hpo = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpn
  %i.hpp = extractelement <16 x i64> %i.hnk, i64 11
  %i.hpq = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpp
  %i.hpr = extractelement <16 x i64> %i.hnk, i64 12
  %i.hps = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpr
  %i.hpt = extractelement <16 x i64> %i.hnk, i64 13
  %i.hpu = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpt
  %i.hpv = extractelement <16 x i64> %i.hnk, i64 14
  %i.hpw = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpv
  %i.hpx = extractelement <16 x i64> %i.hnk, i64 15
  %i.hpy = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpx
  %i.hpz = extractelement <16 x i64> %i.hnl, i64 0
  %i.hqa = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hpz
  %i.hqb = extractelement <16 x i64> %i.hnl, i64 1
  %i.hqc = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqb
  %i.hqd = extractelement <16 x i64> %i.hnl, i64 2
  %i.hqe = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqd
  %i.hqf = extractelement <16 x i64> %i.hnl, i64 3
  %i.hqg = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqf
  %i.hqh = extractelement <16 x i64> %i.hnl, i64 4
  %i.hqi = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqh
  %i.hqj = extractelement <16 x i64> %i.hnl, i64 5
  %i.hqk = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqj
  %i.hql = extractelement <16 x i64> %i.hnl, i64 6
  %i.hqm = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hql
  %i.hqn = extractelement <16 x i64> %i.hnl, i64 7
  %i.hqo = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqn
  %i.hqp = extractelement <16 x i64> %i.hnl, i64 8
  %i.hqq = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqp
  %i.hqr = extractelement <16 x i64> %i.hnl, i64 9
  %i.hqs = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqr
  %i.hqt = extractelement <16 x i64> %i.hnl, i64 10
  %i.hqu = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqt
  %i.hqv = extractelement <16 x i64> %i.hnl, i64 11
  %i.hqw = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqv
  %i.hqx = extractelement <16 x i64> %i.hnl, i64 12
  %i.hqy = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqx
  %i.hqz = extractelement <16 x i64> %i.hnl, i64 13
  %i.hra = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hqz
  %i.hrb = extractelement <16 x i64> %i.hnl, i64 14
  %i.hrc = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrb
  %i.hrd = extractelement <16 x i64> %i.hnl, i64 15
  %i.hre = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrd
  %i.hrf = extractelement <16 x i64> %i.hnm, i64 0
  %i.hrg = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrf
  %i.hrh = extractelement <16 x i64> %i.hnm, i64 1
  %i.hri = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrh
  %i.hrj = extractelement <16 x i64> %i.hnm, i64 2
  %i.hrk = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrj
  %i.hrl = extractelement <16 x i64> %i.hnm, i64 3
  %i.hrm = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrl
  %i.hrn = extractelement <16 x i64> %i.hnm, i64 4
  %i.hro = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrn
  %i.hrp = extractelement <16 x i64> %i.hnm, i64 5
  %i.hrq = getelementptr inbounds i8, ptr %gep9330.us, i64 %i.hrp
  %i.hrr = extractelement <16 x i64> %i.hnm, i64 6
end_hunk_3
begin_hunk_4_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
.lr.ph9530.split.preheader:                       ; preds = %.lr.ph9530
  br i1 %i.ivd, label %.lr.ph9530.split.epil.preheader, label %.lr.ph9530.split

.lr.ph9530.split.us:                              ; preds = %.lr.ph9530.split.us.preheader, %.lr.ph9530.split.us
  %indvars.iv10644 = phi i64 [ %indvars.iv.next10645.1, %.lr.ph9530.split.us ], [ 0, %.lr.ph9530.split.us.preheader ] ; 3 uses
  %.128029528.us = phi ptr [ %i.iwk, %.lr.ph9530.split.us ], [ %.028019553, %.lr.ph9530.split.us.preheader ] ; 3 uses
  %.174579527.us = phi <8 x i32> [ %i.iwj, %.lr.ph9530.split.us ], [ %i.ive, %.lr.ph9530.split.us.preheader ]
  %.174599526.us = phi <8 x i32> [ %i.iwi, %.lr.ph9530.split.us ], [ %i.ivf, %.lr.ph9530.split.us.preheader ]
  %niter12260 = phi i64 [ %niter12260.next.1, %.lr.ph9530.split.us ], [ 0, %.lr.ph9530.split.us.preheader ]
  %i.ivi = getelementptr inbounds nuw [4 x i8], ptr %i.iux, i64 %indvars.iv10644
  %i.ivj = load i32, ptr %i.ivi, align 4, !tbaa !9
  %i.ivk = sext i32 %i.ivj to i64                 ; 2 uses
  %i.ivl = getelementptr inbounds i8, ptr %gep9564, i64 %i.ivk
  %i.ivm = getelementptr inbounds i8, ptr %gep9569, i64 %i.ivk
  %i.ivn = load <16 x i8>, ptr %i.ivl, align 16, !tbaa !44
  %i.ivo = load <16 x i8>, ptr %i.ivm, align 16, !tbaa !44
  %i.ivp = sext <16 x i8> %i.ivn to <16 x i16>
  %i.ivq = sext <16 x i8> %i.ivo to <16 x i16>
  %i.ivr = load <16 x i8>, ptr %.128029528.us, align 16, !tbaa !44
  %i.ivs = sext <16 x i8> %i.ivr to <16 x i16>    ; 2 uses
  %i.ivt = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174599526.us, <16 x i16> %i.ivp, <16 x i16> %i.ivs)
  %i.ivu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174579527.us, <16 x i16> %i.ivq, <16 x i16> %i.ivs)
  %i.ivv = getelementptr inbounds nuw i8, ptr %.128029528.us, i64 16
  %i.ivw = getelementptr inbounds nuw [4 x i8], ptr %i.iux, i64 %indvars.iv10644
  %i.ivx = getelementptr inbounds nuw i8, ptr %i.ivw, i64 4
  %i.ivy = load i32, ptr %i.ivx, align 4, !tbaa !9
  %i.ivz = sext i32 %i.ivy to i64                 ; 2 uses
  %i.iwa = getelementptr inbounds i8, ptr %gep9564, i64 %i.ivz
  %i.iwb = getelementptr inbounds i8, ptr %gep9569, i64 %i.ivz
  %i.iwc = load <16 x i8>, ptr %i.iwa, align 16, !tbaa !44
  %i.iwd = load <16 x i8>, ptr %i.iwb, align 16, !tbaa !44
  %i.iwe = sext <16 x i8> %i.iwc to <16 x i16>
  %i.iwf = sext <16 x i8> %i.iwd to <16 x i16>
  %i.iwg = load <16 x i8>, ptr %i.ivv, align 16, !tbaa !44
  %i.iwh = sext <16 x i8> %i.iwg to <16 x i16>    ; 2 uses
  %i.iwi = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ivt, <16 x i16> %i.iwe, <16 x i16> %i.iwh) ; 3 uses
  %i.iwj = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ivu, <16 x i16> %i.iwf, <16 x i16> %i.iwh) ; 3 uses
  %i.iwk = getelementptr inbounds nuw i8, ptr %.128029528.us, i64 32 ; 2 uses
  %indvars.iv.next10645.1 = add nuw nsw i64 %indvars.iv10644, 2 ; 2 uses
  %niter12260.next.1 = add i64 %niter12260, 2     ; 2 uses
  %niter12260.ncmp.1 = icmp eq i64 %niter12260.next.1, %unroll_iter12259
  br i1 %niter12260.ncmp.1, label %._crit_edge9531.loopexit9774.unr-lcssa, label %.lr.ph9530.split.us, !llvm.loop !308

.lr.ph9530.split.us9538:                          ; preds = %.lr.ph9530, %.lr.ph9530.split.us9538
  %indvars.iv10637 = phi i64 [ %indvars.iv.next10638, %.lr.ph9530.split.us9538 ], [ 0, %.lr.ph9530 ] ; 2 uses
  %.128029528.us9540 = phi ptr [ %i.ixi, %.lr.ph9530.split.us9538 ], [ %.028019553, %.lr.ph9530 ] ; 2 uses
  %.174579527.us9541 = phi <8 x i32> [ %i.ixh, %.lr.ph9530.split.us9538 ], [ %i.ive, %.lr.ph9530 ]
  %.174599526.us9542 = phi <8 x i32> [ %i.ixg, %.lr.ph9530.split.us9538 ], [ %i.ivf, %.lr.ph9530 ]
  %i.iwl = getelementptr inbounds nuw [4 x i8], ptr %i.iux, i64 %indvars.iv10637
  %i.iwm = load i32, ptr %i.iwl, align 4, !tbaa !9
  %i.iwn = sext i32 %i.iwm to i64                 ; 2 uses
  %i.iwo = getelementptr inbounds i8, ptr %gep9564, i64 %i.iwn ; 2 uses
  %i.iwp = getelementptr inbounds i8, ptr %gep9569, i64 %i.iwn ; 2 uses
  %i.iwq = load i64, ptr %i.iwo, align 1, !tbaa !44
  %i.iwr = insertelement <2 x i64> poison, i64 %i.iwq, i64 0
  %i.iws = getelementptr inbounds nuw i8, ptr %i.iwo, i64 %i.t
  %i.iwt = load i64, ptr %i.iws, align 1, !tbaa !44
  %i.iwu = load i64, ptr %i.iwp, align 1, !tbaa !44
  %i.iwv = insertelement <2 x i64> poison, i64 %i.iwu, i64 0
  %i.iww = getelementptr inbounds nuw i8, ptr %i.iwp, i64 %i.t
  %i.iwx = load i64, ptr %i.iww, align 1, !tbaa !44
  %i.iwy = insertelement <2 x i64> %i.iwr, i64 %i.iwt, i64 1
  %i.iwz = insertelement <2 x i64> %i.iwv, i64 %i.iwx, i64 1
  %i.ixa = bitcast <2 x i64> %i.iwy to <16 x i8>
  %i.ixb = sext <16 x i8> %i.ixa to <16 x i16>
  %i.ixc = bitcast <2 x i64> %i.iwz to <16 x i8>
  %i.ixd = sext <16 x i8> %i.ixc to <16 x i16>
  %i.ixe = load <16 x i8>, ptr %.128029528.us9540, align 16, !tbaa !44
  %i.ixf = sext <16 x i8> %i.ixe to <16 x i16>    ; 2 uses
  %i.ixg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174599526.us9542, <16 x i16> %i.ixb, <16 x i16> %i.ixf) ; 2 uses
  %i.ixh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174579527.us9541, <16 x i16> %i.ixd, <16 x i16> %i.ixf) ; 2 uses
  %i.ixi = getelementptr inbounds nuw i8, ptr %.128029528.us9540, i64 16
  %indvars.iv.next10638 = add nuw nsw i64 %indvars.iv10637, 1 ; 2 uses
  %exitcond10643.not = icmp eq i64 %indvars.iv.next10638, %wide.trip.count10642
  br i1 %exitcond10643.not, label %._crit_edge9531.loopexit9775, label %.lr.ph9530.split.us9538, !llvm.loop !308

._crit_edge9531.loopexit.unr-lcssa:               ; preds = %.lr.ph9530.split
  br i1 %lcmp.mod12262.not, label %._crit_edge9531.loopexit, label %.lr.ph9530.split.epil.preheader

.lr.ph9530.split.epil.preheader:                  ; preds = %._crit_edge9531.loopexit.unr-lcssa, %.lr.ph9530.split.preheader
  %indvars.iv10651.epil.init = phi i64 [ 0, %.lr.ph9530.split.preheader ], [ %indvars.iv.next10652.1, %._crit_edge9531.loopexit.unr-lcssa ]
  %.128029528.epil.init = phi ptr [ %.028019553, %.lr.ph9530.split.preheader ], [ %i.izw, %._crit_edge9531.loopexit.unr-lcssa ]
  %.174579527.epil.init = phi <8 x i32> [ %i.ive, %.lr.ph9530.split.preheader ], [ %i.izv, %._crit_edge9531.loopexit.unr-lcssa ]
  %.174599526.epil.init = phi <8 x i32> [ %i.ivf, %.lr.ph9530.split.preheader ], [ %i.izu, %._crit_edge9531.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12265)
  %i.ixj = getelementptr inbounds nuw [4 x i8], ptr %i.iux, i64 %indvars.iv10651.epil.init
  %i.ixk = load i32, ptr %i.ixj, align 4, !tbaa !9
  %i.ixl = sext i32 %i.ixk to i64                 ; 2 uses
  %i.ixm = getelementptr inbounds i8, ptr %gep9564, i64 %i.ixl
  %i.ixn = getelementptr inbounds i8, ptr %gep9569, i64 %i.ixl
  %i.ixo = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ixm, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.ixp = trunc <16 x i32> %i.ixo to <16 x i8>
  %i.ixq = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ixn, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.ixr = trunc <16 x i32> %i.ixq to <16 x i8>
  %i.ixs = sext <16 x i8> %i.ixp to <16 x i16>
  %i.ixt = sext <16 x i8> %i.ixr to <16 x i16>
  %i.ixu = load <16 x i8>, ptr %.128029528.epil.init, align 16, !tbaa !44
  %i.ixv = sext <16 x i8> %i.ixu to <16 x i16>    ; 2 uses
  %i.ixw = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174599526.epil.init, <16 x i16> %i.ixs, <16 x i16> %i.ixv)
  %i.ixx = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174579527.epil.init, <16 x i16> %i.ixt, <16 x i16> %i.ixv)
  br label %._crit_edge9531.loopexit

._crit_edge9531.loopexit:                         ; preds = %._crit_edge9531.loopexit.unr-lcssa, %.lr.ph9530.split.epil.preheader
  %.lcssa11862 = phi <8 x i32> [ %i.izu, %._crit_edge9531.loopexit.unr-lcssa ], [ %i.ixw, %.lr.ph9530.split.epil.preheader ]
  %.lcssa11861 = phi <8 x i32> [ %i.izv, %._crit_edge9531.loopexit.unr-lcssa ], [ %i.ixx, %.lr.ph9530.split.epil.preheader ]
  %scevgep10653 = getelementptr i8, ptr %.028019553, i64 16
  %scevgep10654 = getelementptr i8, ptr %scevgep10653, i64 %i.iva
  br label %._crit_edge9531

._crit_edge9531.loopexit9774.unr-lcssa:           ; preds = %.lr.ph9530.split.us
  br i1 %lcmp.mod12255.not, label %._crit_edge9531.loopexit9774, label %.lr.ph9530.split.us.epil.preheader

.lr.ph9530.split.us.epil.preheader:               ; preds = %._crit_edge9531.loopexit9774.unr-lcssa, %.lr.ph9530.split.us.preheader
  %indvars.iv10644.epil.init = phi i64 [ 0, %.lr.ph9530.split.us.preheader ], [ %indvars.iv.next10645.1, %._crit_edge9531.loopexit9774.unr-lcssa ]
  %.128029528.us.epil.init = phi ptr [ %.028019553, %.lr.ph9530.split.us.preheader ], [ %i.iwk, %._crit_edge9531.loopexit9774.unr-lcssa ]
  %.174579527.us.epil.init = phi <8 x i32> [ %i.ive, %.lr.ph9530.split.us.preheader ], [ %i.iwj, %._crit_edge9531.loopexit9774.unr-lcssa ]
  %.174599526.us.epil.init = phi <8 x i32> [ %i.ivf, %.lr.ph9530.split.us.preheader ], [ %i.iwi, %._crit_edge9531.loopexit9774.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12258)
  %i.ixy = getelementptr inbounds nuw [4 x i8], ptr %i.iux, i64 %indvars.iv10644.epil.init
  %i.ixz = load i32, ptr %i.ixy, align 4, !tbaa !9
  %i.iya = sext i32 %i.ixz to i64                 ; 2 uses
  %i.iyb = getelementptr inbounds i8, ptr %gep9564, i64 %i.iya
  %i.iyc = getelementptr inbounds i8, ptr %gep9569, i64 %i.iya
  %i.iyd = load <16 x i8>, ptr %i.iyb, align 16, !tbaa !44
  %i.iye = load <16 x i8>, ptr %i.iyc, align 16, !tbaa !44
  %i.iyf = sext <16 x i8> %i.iyd to <16 x i16>
  %i.iyg = sext <16 x i8> %i.iye to <16 x i16>
  %i.iyh = load <16 x i8>, ptr %.128029528.us.epil.init, align 16, !tbaa !44
  %i.iyi = sext <16 x i8> %i.iyh to <16 x i16>    ; 2 uses
  %i.iyj = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174599526.us.epil.init, <16 x i16> %i.iyf, <16 x i16> %i.iyi)
  %i.iyk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174579527.us.epil.init, <16 x i16> %i.iyg, <16 x i16> %i.iyi)
  br label %._crit_edge9531.loopexit9774

._crit_edge9531.loopexit9774:                     ; preds = %._crit_edge9531.loopexit9774.unr-lcssa, %.lr.ph9530.split.us.epil.preheader
  %.lcssa11860 = phi <8 x i32> [ %i.iwi, %._crit_edge9531.loopexit9774.unr-lcssa ], [ %i.iyj, %.lr.ph9530.split.us.epil.preheader ]
  %.lcssa11859 = phi <8 x i32> [ %i.iwj, %._crit_edge9531.loopexit9774.unr-lcssa ], [ %i.iyk, %.lr.ph9530.split.us.epil.preheader ]
  %scevgep10646 = getelementptr i8, ptr %.028019553, i64 16
  %scevgep10647 = getelementptr i8, ptr %scevgep10646, i64 %i.iva
  br label %._crit_edge9531

._crit_edge9531.loopexit9775:                     ; preds = %.lr.ph9530.split.us9538
  %scevgep10639 = getelementptr i8, ptr %.028019553, i64 16
  %scevgep10640 = getelementptr i8, ptr %scevgep10639, i64 %i.iva
  br label %._crit_edge9531

._crit_edge9531:                                  ; preds = %._crit_edge9531.loopexit9775, %._crit_edge9531.loopexit9774, %._crit_edge9531.loopexit, %.noexc3425
  %i.iyl = phi <8 x i32> [ %i.ivf, %.noexc3425 ], [ %.lcssa11862, %._crit_edge9531.loopexit ], [ %.lcssa11860, %._crit_edge9531.loopexit9774 ], [ %i.ixg, %._crit_edge9531.loopexit9775 ] ; 2 uses
  %i.iym = phi <8 x i32> [ %i.ive, %.noexc3425 ], [ %.lcssa11861, %._crit_edge9531.loopexit ], [ %.lcssa11859, %._crit_edge9531.loopexit9774 ], [ %i.ixh, %._crit_edge9531.loopexit9775 ] ; 2 uses
  %.12802.lcssa = phi ptr [ %.028019553, %.noexc3425 ], [ %scevgep10654, %._crit_edge9531.loopexit ], [ %scevgep10647, %._crit_edge9531.loopexit9774 ], [ %scevgep10640, %._crit_edge9531.loopexit9775 ] ; 2 uses
  %i.iyn = add nuw nsw i32 %.027979554, 16        ; 2 uses
  %i.iyo = or disjoint i32 %i.iyn, 15
  %i.iyp = icmp slt i32 %i.iyo, %i.ity
  br i1 %i.iyp, label %.noexc3425, label %._crit_edge9555.loopexit, !llvm.loop !309

.lr.ph9530.split:                                 ; preds = %.lr.ph9530.split.preheader, %.lr.ph9530.split
  %indvars.iv10651 = phi i64 [ %indvars.iv.next10652.1, %.lr.ph9530.split ], [ 0, %.lr.ph9530.split.preheader ] ; 3 uses
  %.128029528 = phi ptr [ %i.izw, %.lr.ph9530.split ], [ %.028019553, %.lr.ph9530.split.preheader ] ; 3 uses
  %.174579527 = phi <8 x i32> [ %i.izv, %.lr.ph9530.split ], [ %i.ive, %.lr.ph9530.split.preheader ]
  %.174599526 = phi <8 x i32> [ %i.izu, %.lr.ph9530.split ], [ %i.ivf, %.lr.ph9530.split.preheader ]
  %niter12267 = phi i64 [ %niter12267.next.1, %.lr.ph9530.split ], [ 0, %.lr.ph9530.split.preheader ]
  %i.iyq = getelementptr inbounds nuw [4 x i8], ptr %i.iux, i64 %indvars.iv10651
  %i.iyr = load i32, ptr %i.iyq, align 4, !tbaa !9
  %i.iys = sext i32 %i.iyr to i64                 ; 2 uses
  %i.iyt = getelementptr inbounds i8, ptr %gep9564, i64 %i.iys
  %i.iyu = getelementptr inbounds i8, ptr %gep9569, i64 %i.iys
  %i.iyv = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.iyt, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.iyw = trunc <16 x i32> %i.iyv to <16 x i8>
  %i.iyx = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.iyu, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.iyy = trunc <16 x i32> %i.iyx to <16 x i8>
  %i.iyz = sext <16 x i8> %i.iyw to <16 x i16>
  %i.iza = sext <16 x i8> %i.iyy to <16 x i16>
  %i.izb = load <16 x i8>, ptr %.128029528, align 16, !tbaa !44
  %i.izc = sext <16 x i8> %i.izb to <16 x i16>    ; 2 uses
  %i.izd = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174599526, <16 x i16> %i.iyz, <16 x i16> %i.izc)
  %i.ize = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174579527, <16 x i16> %i.iza, <16 x i16> %i.izc)
  %i.izf = getelementptr inbounds nuw i8, ptr %.128029528, i64 16
  %i.izg = getelementptr inbounds nuw [4 x i8], ptr %i.iux, i64 %indvars.iv10651
  %i.izh = getelementptr inbounds nuw i8, ptr %i.izg, i64 4
  %i.izi = load i32, ptr %i.izh, align 4, !tbaa !9
  %i.izj = sext i32 %i.izi to i64                 ; 2 uses
  %i.izk = getelementptr inbounds i8, ptr %gep9564, i64 %i.izj
  %i.izl = getelementptr inbounds i8, ptr %gep9569, i64 %i.izj
  %i.izm = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.izk, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.izn = trunc <16 x i32> %i.izm to <16 x i8>
  %i.izo = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.izl, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.izp = trunc <16 x i32> %i.izo to <16 x i8>
  %i.izq = sext <16 x i8> %i.izn to <16 x i16>
  %i.izr = sext <16 x i8> %i.izp to <16 x i16>
  %i.izs = load <16 x i8>, ptr %i.izf, align 16, !tbaa !44
  %i.izt = sext <16 x i8> %i.izs to <16 x i16>    ; 2 uses
  %i.izu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.izd, <16 x i16> %i.izq, <16 x i16> %i.izt) ; 3 uses
  %i.izv = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ize, <16 x i16> %i.izr, <16 x i16> %i.izt) ; 3 uses
  %i.izw = getelementptr inbounds nuw i8, ptr %.128029528, i64 32 ; 2 uses
  %indvars.iv.next10652.1 = add nuw nsw i64 %indvars.iv10651, 2 ; 2 uses
  %niter12267.next.1 = add i64 %niter12267, 2     ; 2 uses
  %niter12267.ncmp.1 = icmp eq i64 %niter12267.next.1, %unroll_iter12266
  br i1 %niter12267.ncmp.1, label %._crit_edge9531.loopexit.unr-lcssa, label %.lr.ph9530.split, !llvm.loop !308

._crit_edge9555.loopexit:                         ; preds = %._crit_edge9531
  %i.izx = and i32 %i.ity, 2147483632
  br label %._crit_edge9555

._crit_edge9555:                                  ; preds = %._crit_edge9555.loopexit, %.noexc3427
  %40 = phi <8 x i32> [ zeroinitializer, %.noexc3427 ], [ %i.iyl, %._crit_edge9555.loopexit ] ; 2 uses
  %41 = phi <8 x i32> [ zeroinitializer, %.noexc3427 ], [ %i.iym, %._crit_edge9555.loopexit ] ; 2 uses
  %.02801.lcssa = phi ptr [ %i.idv, %.noexc3427 ], [ %.12802.lcssa, %._crit_edge9555.loopexit ] ; 2 uses
  %.02797.lcssa = phi i32 [ 0, %.noexc3427 ], [ %i.izx, %._crit_edge9555.loopexit ] ; 3 uses
  %42 = shufflevector <8 x i32> %40, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %43 = shufflevector <8 x i32> %40, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %44 = add <4 x i32> %42, %43
  %45 = shufflevector <8 x i32> %41, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %46 = shufflevector <8 x i32> %41, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %47 = add <4 x i32> %45, %46
  %48 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %44)
  %49 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %47)
  %i.izy = or disjoint i32 %.02797.lcssa, 7
  %i.izz = icmp slt i32 %i.izy, %i.ity
  br i1 %i.izz, label %.noexc3421.lr.ph, label %._crit_edge9586

.noexc3421.lr.ph:                                 ; preds = %._crit_edge9555
  %i.jaa = load i32, ptr %i.c, align 4, !tbaa !9  ; 4 uses
  %i.jab = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !310
  %i.jac = load ptr, ptr %0, align 8, !tbaa !32, !noalias !310 ; 2 uses
  %i.jad = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !310
  %i.jae = load i64, ptr %i.dod, align 8, !tbaa !36, !noalias !310 ; 2 uses
  %factor.op.mul9591 = mul i64 %i.jad, %i.jae
  %i.jaf = sext i32 %i.jab to i64
  %i.jag = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.jah = mul nsw i32 %i.jag, %i.itu
  %i.jai = sext i32 %i.jah to i64
  %i.jaj = mul i64 %i.jae, %i.jaf                 ; 2 uses
  %i.jak = mul i64 %i.jaj, %i.jai
  %invariant.gep9593 = getelementptr i8, ptr %i.jac, i64 %i.jak
  %i.jal = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.jam = mul i32 %i.jaa, %i.itw
  %i.jan = mul i32 %i.jam, %i.jal
  %i.jao = sext i32 %i.jan to i64
  %invariant.gep9594 = getelementptr i8, ptr %invariant.gep9593, i64 %i.jao
  %i.jap = mul nsw i32 %i.jag, %i.itv
  %i.jaq = sext i32 %i.jap to i64
  %i.jar = mul i64 %i.jaj, %i.jaq
  %invariant.gep9598 = getelementptr i8, ptr %i.jac, i64 %i.jar
  %i.jas = mul i32 %i.jaa, %i.itx
  %i.jat = mul i32 %i.jas, %i.jal
  %i.jau = sext i32 %i.jat to i64
  %invariant.gep9599 = getelementptr i8, ptr %invariant.gep9598, i64 %i.jau
  %i.jav = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.jaw = icmp sgt i32 %i.jav, 0
  %i.jax = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.jay = icmp eq i32 %i.jaa, 8
  %i.jaz = add i32 %i.jav, -1
  %i.jba = zext i32 %i.jaz to i64
  %i.jbb = shl nuw nsw i64 %i.jba, 3              ; 2 uses
  %wide.trip.count10663 = zext i32 %i.jav to i64  ; 5 uses
  %i.jbc = add nsw i64 %wide.trip.count10663, -1  ; 2 uses
  %xtraiter12268 = and i64 %wide.trip.count10663, 1
  %i.jbd = icmp eq i64 %i.jbc, 0
  %unroll_iter12273 = and i64 %wide.trip.count10663, 2147483646
  %lcmp.mod12269.not = icmp eq i64 %xtraiter12268, 0
  %lcmp.mod12272 = trunc i32 %i.jav to i1
  %xtraiter12275 = and i64 %wide.trip.count10663, 1
  %i.jbe = icmp eq i64 %i.jbc, 0
  %unroll_iter12280 = and i64 %wide.trip.count10663, 2147483646
  %lcmp.mod12276.not = icmp eq i64 %xtraiter12275, 0
  %lcmp.mod12279 = trunc i32 %i.jav to i1
  br label %.noexc3421

.noexc3421:                                       ; preds = %.noexc3421.lr.ph, %._crit_edge9575
  %.127989585 = phi i32 [ %.02797.lcssa, %.noexc3421.lr.ph ], [ %i.jdq, %._crit_edge9575 ] ; 2 uses
  %.228039584 = phi ptr [ %.02801.lcssa, %.noexc3421.lr.ph ], [ %.32804.lcssa, %._crit_edge9575 ] ; 7 uses
  %i.jbf = phi <4 x i32> [ zeroinitializer, %.noexc3421.lr.ph ], [ %i.jdp, %._crit_edge9575 ] ; 5 uses
  %i.jbg = phi <4 x i32> [ zeroinitializer, %.noexc3421.lr.ph ], [ %i.jdo, %._crit_edge9575 ] ; 5 uses
  %i.jbh = sdiv i32 %.127989585, %i.jaa
  %i.jbi = sext i32 %i.jbh to i64
  %.reass9592 = mul i64 %factor.op.mul9591, %i.jbi ; 2 uses
  %gep9595 = getelementptr i8, ptr %invariant.gep9594, i64 %.reass9592 ; 6 uses
  %gep9600 = getelementptr i8, ptr %invariant.gep9599, i64 %.reass9592 ; 6 uses
  br i1 %i.jaw, label %.lr.ph9574, label %._crit_edge9575

.lr.ph9574:                                       ; preds = %.noexc3421
  br i1 %i.jay, label %.lr.ph9574.split.us.preheader, label %.lr.ph9574.split.preheader

.lr.ph9574.split.preheader:                       ; preds = %.lr.ph9574
  br i1 %i.jbd, label %.lr.ph9574.split.epil.preheader, label %.lr.ph9574.split

.lr.ph9574.split.us.preheader:                    ; preds = %.lr.ph9574
  br i1 %i.jbe, label %.lr.ph9574.split.us.epil.preheader, label %.lr.ph9574.split.us

.lr.ph9574.split.us:                              ; preds = %.lr.ph9574.split.us.preheader, %.lr.ph9574.split.us
  %indvars.iv10665 = phi i64 [ %indvars.iv.next10666.1, %.lr.ph9574.split.us ], [ 0, %.lr.ph9574.split.us.preheader ] ; 3 uses
  %.328049572.us = phi ptr [ %i.jcl, %.lr.ph9574.split.us ], [ %.228039584, %.lr.ph9574.split.us.preheader ] ; 3 uses
  %.174539571.us = phi <4 x i32> [ %i.jck, %.lr.ph9574.split.us ], [ %i.jbf, %.lr.ph9574.split.us.preheader ]
  %.174559570.us = phi <4 x i32> [ %i.jcj, %.lr.ph9574.split.us ], [ %i.jbg, %.lr.ph9574.split.us.preheader ]
  %niter12281 = phi i64 [ %niter12281.next.1, %.lr.ph9574.split.us ], [ 0, %.lr.ph9574.split.us.preheader ]
  %i.jbj = getelementptr inbounds nuw [4 x i8], ptr %i.jax, i64 %indvars.iv10665
  %i.jbk = load i32, ptr %i.jbj, align 4, !tbaa !9
  %i.jbl = sext i32 %i.jbk to i64                 ; 2 uses
  %i.jbm = getelementptr inbounds i8, ptr %gep9595, i64 %i.jbl
  %i.jbn = getelementptr inbounds i8, ptr %gep9600, i64 %i.jbl
  %i.jbo = load <8 x i8>, ptr %i.jbm, align 1, !tbaa !44
  %i.jbp = load <8 x i8>, ptr %i.jbn, align 1, !tbaa !44
  %i.jbq = sext <8 x i8> %i.jbo to <8 x i16>
  %i.jbr = sext <8 x i8> %i.jbp to <8 x i16>
  %i.jbs = load <8 x i8>, ptr %.328049572.us, align 1, !tbaa !44
  %i.jbt = sext <8 x i8> %i.jbs to <8 x i16>      ; 2 uses
  %i.jbu = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174559570.us, <8 x i16> %i.jbq, <8 x i16> %i.jbt)
  %i.jbv = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539571.us, <8 x i16> %i.jbr, <8 x i16> %i.jbt)
  %i.jbw = getelementptr inbounds nuw i8, ptr %.328049572.us, i64 8
  %i.jbx = getelementptr inbounds nuw [4 x i8], ptr %i.jax, i64 %indvars.iv10665
  %i.jby = getelementptr inbounds nuw i8, ptr %i.jbx, i64 4
  %i.jbz = load i32, ptr %i.jby, align 4, !tbaa !9
  %i.jca = sext i32 %i.jbz to i64                 ; 2 uses
  %i.jcb = getelementptr inbounds i8, ptr %gep9595, i64 %i.jca
  %i.jcc = getelementptr inbounds i8, ptr %gep9600, i64 %i.jca
  %i.jcd = load <8 x i8>, ptr %i.jcb, align 1, !tbaa !44
  %i.jce = load <8 x i8>, ptr %i.jcc, align 1, !tbaa !44
  %i.jcf = sext <8 x i8> %i.jcd to <8 x i16>
  %i.jcg = sext <8 x i8> %i.jce to <8 x i16>
  %i.jch = load <8 x i8>, ptr %i.jbw, align 1, !tbaa !44
  %i.jci = sext <8 x i8> %i.jch to <8 x i16>      ; 2 uses
  %i.jcj = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jbu, <8 x i16> %i.jcf, <8 x i16> %i.jci) ; 3 uses
  %i.jck = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jbv, <8 x i16> %i.jcg, <8 x i16> %i.jci) ; 3 uses
  %i.jcl = getelementptr inbounds nuw i8, ptr %.328049572.us, i64 16 ; 2 uses
  %indvars.iv.next10666.1 = add nuw nsw i64 %indvars.iv10665, 2 ; 2 uses
  %niter12281.next.1 = add i64 %niter12281, 2     ; 2 uses
  %niter12281.ncmp.1 = icmp eq i64 %niter12281.next.1, %unroll_iter12280
  br i1 %niter12281.ncmp.1, label %._crit_edge9575.loopexit.unr-lcssa, label %.lr.ph9574.split.us, !llvm.loop !313

._crit_edge9575.loopexit.unr-lcssa:               ; preds = %.lr.ph9574.split.us
  br i1 %lcmp.mod12276.not, label %._crit_edge9575.loopexit, label %.lr.ph9574.split.us.epil.preheader

.lr.ph9574.split.us.epil.preheader:               ; preds = %._crit_edge9575.loopexit.unr-lcssa, %.lr.ph9574.split.us.preheader
  %indvars.iv10665.epil.init = phi i64 [ 0, %.lr.ph9574.split.us.preheader ], [ %indvars.iv.next10666.1, %._crit_edge9575.loopexit.unr-lcssa ]
  %.328049572.us.epil.init = phi ptr [ %.228039584, %.lr.ph9574.split.us.preheader ], [ %i.jcl, %._crit_edge9575.loopexit.unr-lcssa ]
  %.174539571.us.epil.init = phi <4 x i32> [ %i.jbf, %.lr.ph9574.split.us.preheader ], [ %i.jck, %._crit_edge9575.loopexit.unr-lcssa ]
  %.174559570.us.epil.init = phi <4 x i32> [ %i.jbg, %.lr.ph9574.split.us.preheader ], [ %i.jcj, %._crit_edge9575.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12279)
  %i.jcm = getelementptr inbounds nuw [4 x i8], ptr %i.jax, i64 %indvars.iv10665.epil.init
  %i.jcn = load i32, ptr %i.jcm, align 4, !tbaa !9
  %i.jco = sext i32 %i.jcn to i64                 ; 2 uses
  %i.jcp = getelementptr inbounds i8, ptr %gep9595, i64 %i.jco
  %i.jcq = getelementptr inbounds i8, ptr %gep9600, i64 %i.jco
  %i.jcr = load <8 x i8>, ptr %i.jcp, align 1, !tbaa !44
  %i.jcs = load <8 x i8>, ptr %i.jcq, align 1, !tbaa !44
  %i.jct = sext <8 x i8> %i.jcr to <8 x i16>
  %i.jcu = sext <8 x i8> %i.jcs to <8 x i16>
  %i.jcv = load <8 x i8>, ptr %.328049572.us.epil.init, align 1, !tbaa !44
  %i.jcw = sext <8 x i8> %i.jcv to <8 x i16>      ; 2 uses
  %i.jcx = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174559570.us.epil.init, <8 x i16> %i.jct, <8 x i16> %i.jcw)
  %i.jcy = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539571.us.epil.init, <8 x i16> %i.jcu, <8 x i16> %i.jcw)
  br label %._crit_edge9575.loopexit

._crit_edge9575.loopexit:                         ; preds = %._crit_edge9575.loopexit.unr-lcssa, %.lr.ph9574.split.us.epil.preheader
  %.lcssa11868 = phi <4 x i32> [ %i.jcj, %._crit_edge9575.loopexit.unr-lcssa ], [ %i.jcx, %.lr.ph9574.split.us.epil.preheader ]
  %.lcssa11867 = phi <4 x i32> [ %i.jck, %._crit_edge9575.loopexit.unr-lcssa ], [ %i.jcy, %.lr.ph9574.split.us.epil.preheader ]
  %scevgep10667 = getelementptr i8, ptr %.228039584, i64 8
  %scevgep10668 = getelementptr i8, ptr %scevgep10667, i64 %i.jbb
  br label %._crit_edge9575

._crit_edge9575.loopexit9773.unr-lcssa:           ; preds = %.lr.ph9574.split
  br i1 %lcmp.mod12269.not, label %._crit_edge9575.loopexit9773, label %.lr.ph9574.split.epil.preheader

.lr.ph9574.split.epil.preheader:                  ; preds = %._crit_edge9575.loopexit9773.unr-lcssa, %.lr.ph9574.split.preheader
  %indvars.iv10658.epil.init = phi i64 [ 0, %.lr.ph9574.split.preheader ], [ %indvars.iv.next10659.1, %._crit_edge9575.loopexit9773.unr-lcssa ]
  %.328049572.epil.init = phi ptr [ %.228039584, %.lr.ph9574.split.preheader ], [ %i.jez, %._crit_edge9575.loopexit9773.unr-lcssa ]
  %.174539571.epil.init = phi <4 x i32> [ %i.jbf, %.lr.ph9574.split.preheader ], [ %i.jey, %._crit_edge9575.loopexit9773.unr-lcssa ]
  %.174559570.epil.init = phi <4 x i32> [ %i.jbg, %.lr.ph9574.split.preheader ], [ %i.jex, %._crit_edge9575.loopexit9773.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12272)
  %i.jcz = getelementptr inbounds nuw [4 x i8], ptr %i.jax, i64 %indvars.iv10658.epil.init
  %i.jda = load i32, ptr %i.jcz, align 4, !tbaa !9
  %i.jdb = sext i32 %i.jda to i64                 ; 2 uses
  %i.jdc = getelementptr inbounds i8, ptr %gep9595, i64 %i.jdb
  %i.jdd = getelementptr inbounds i8, ptr %gep9600, i64 %i.jdb
  %i.jde = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jdc, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.jdf = trunc <8 x i32> %i.jde to <8 x i8>
  %i.jdg = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jdd, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.jdh = trunc <8 x i32> %i.jdg to <8 x i8>
  %i.jdi = sext <8 x i8> %i.jdf to <8 x i16>
  %i.jdj = sext <8 x i8> %i.jdh to <8 x i16>
  %i.jdk = load <8 x i8>, ptr %.328049572.epil.init, align 1, !tbaa !44
  %i.jdl = sext <8 x i8> %i.jdk to <8 x i16>      ; 2 uses
  %i.jdm = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174559570.epil.init, <8 x i16> %i.jdi, <8 x i16> %i.jdl)
  %i.jdn = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539571.epil.init, <8 x i16> %i.jdj, <8 x i16> %i.jdl)
  br label %._crit_edge9575.loopexit9773

._crit_edge9575.loopexit9773:                     ; preds = %._crit_edge9575.loopexit9773.unr-lcssa, %.lr.ph9574.split.epil.preheader
  %.lcssa11866 = phi <4 x i32> [ %i.jex, %._crit_edge9575.loopexit9773.unr-lcssa ], [ %i.jdm, %.lr.ph9574.split.epil.preheader ]
  %.lcssa11865 = phi <4 x i32> [ %i.jey, %._crit_edge9575.loopexit9773.unr-lcssa ], [ %i.jdn, %.lr.ph9574.split.epil.preheader ]
  %scevgep10660 = getelementptr i8, ptr %.228039584, i64 8
  %scevgep10661 = getelementptr i8, ptr %scevgep10660, i64 %i.jbb
  br label %._crit_edge9575

._crit_edge9575:                                  ; preds = %._crit_edge9575.loopexit9773, %._crit_edge9575.loopexit, %.noexc3421
  %i.jdo = phi <4 x i32> [ %i.jbg, %.noexc3421 ], [ %.lcssa11868, %._crit_edge9575.loopexit ], [ %.lcssa11866, %._crit_edge9575.loopexit9773 ] ; 2 uses
  %i.jdp = phi <4 x i32> [ %i.jbf, %.noexc3421 ], [ %.lcssa11867, %._crit_edge9575.loopexit ], [ %.lcssa11865, %._crit_edge9575.loopexit9773 ] ; 2 uses
  %.32804.lcssa = phi ptr [ %.228039584, %.noexc3421 ], [ %scevgep10668, %._crit_edge9575.loopexit ], [ %scevgep10661, %._crit_edge9575.loopexit9773 ] ; 2 uses
  %i.jdq = add nuw nsw i32 %.127989585, 8         ; 3 uses
  %i.jdr = or disjoint i32 %i.jdq, 7
  %i.jds = icmp slt i32 %i.jdr, %i.ity
  br i1 %i.jds, label %.noexc3421, label %._crit_edge9586, !llvm.loop !314

.lr.ph9574.split:                                 ; preds = %.lr.ph9574.split.preheader, %.lr.ph9574.split
  %indvars.iv10658 = phi i64 [ %indvars.iv.next10659.1, %.lr.ph9574.split ], [ 0, %.lr.ph9574.split.preheader ] ; 3 uses
  %.328049572 = phi ptr [ %i.jez, %.lr.ph9574.split ], [ %.228039584, %.lr.ph9574.split.preheader ] ; 3 uses
  %.174539571 = phi <4 x i32> [ %i.jey, %.lr.ph9574.split ], [ %i.jbf, %.lr.ph9574.split.preheader ]
  %.174559570 = phi <4 x i32> [ %i.jex, %.lr.ph9574.split ], [ %i.jbg, %.lr.ph9574.split.preheader ]
  %niter12274 = phi i64 [ %niter12274.next.1, %.lr.ph9574.split ], [ 0, %.lr.ph9574.split.preheader ]
  %i.jdt = getelementptr inbounds nuw [4 x i8], ptr %i.jax, i64 %indvars.iv10658
  %i.jdu = load i32, ptr %i.jdt, align 4, !tbaa !9
  %i.jdv = sext i32 %i.jdu to i64                 ; 2 uses
  %i.jdw = getelementptr inbounds i8, ptr %gep9595, i64 %i.jdv
  %i.jdx = getelementptr inbounds i8, ptr %gep9600, i64 %i.jdv
  %i.jdy = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jdw, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.jdz = trunc <8 x i32> %i.jdy to <8 x i8>
  %i.jea = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jdx, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.jeb = trunc <8 x i32> %i.jea to <8 x i8>
  %i.jec = sext <8 x i8> %i.jdz to <8 x i16>
  %i.jed = sext <8 x i8> %i.jeb to <8 x i16>
  %i.jee = load <8 x i8>, ptr %.328049572, align 1, !tbaa !44
  %i.jef = sext <8 x i8> %i.jee to <8 x i16>      ; 2 uses
  %i.jeg = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174559570, <8 x i16> %i.jec, <8 x i16> %i.jef)
  %i.jeh = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539571, <8 x i16> %i.jed, <8 x i16> %i.jef)
  %i.jei = getelementptr inbounds nuw i8, ptr %.328049572, i64 8
  %i.jej = getelementptr inbounds nuw [4 x i8], ptr %i.jax, i64 %indvars.iv10658
  %i.jek = getelementptr inbounds nuw i8, ptr %i.jej, i64 4
  %i.jel = load i32, ptr %i.jek, align 4, !tbaa !9
  %i.jem = sext i32 %i.jel to i64                 ; 2 uses
  %i.jen = getelementptr inbounds i8, ptr %gep9595, i64 %i.jem
  %i.jeo = getelementptr inbounds i8, ptr %gep9600, i64 %i.jem
  %i.jep = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jen, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.jeq = trunc <8 x i32> %i.jep to <8 x i8>
  %i.jer = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jeo, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.jes = trunc <8 x i32> %i.jer to <8 x i8>
  %i.jet = sext <8 x i8> %i.jeq to <8 x i16>
  %i.jeu = sext <8 x i8> %i.jes to <8 x i16>
  %i.jev = load <8 x i8>, ptr %i.jei, align 1, !tbaa !44
  %i.jew = sext <8 x i8> %i.jev to <8 x i16>      ; 2 uses
  %i.jex = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jeg, <8 x i16> %i.jet, <8 x i16> %i.jew) ; 3 uses
  %i.jey = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jeh, <8 x i16> %i.jeu, <8 x i16> %i.jew) ; 3 uses
  %i.jez = getelementptr inbounds nuw i8, ptr %.328049572, i64 16 ; 2 uses
  %indvars.iv.next10659.1 = add nuw nsw i64 %indvars.iv10658, 2 ; 2 uses
  %niter12274.next.1 = add i64 %niter12274, 2     ; 2 uses
  %niter12274.ncmp.1 = icmp eq i64 %niter12274.next.1, %unroll_iter12273
  br i1 %niter12274.ncmp.1, label %._crit_edge9575.loopexit9773.unr-lcssa, label %.lr.ph9574.split, !llvm.loop !313

._crit_edge9586:                                  ; preds = %._crit_edge9575, %._crit_edge9555
  %50 = phi <4 x i32> [ zeroinitializer, %._crit_edge9555 ], [ %i.jdo, %._crit_edge9575 ] ; 2 uses
  %51 = phi <4 x i32> [ zeroinitializer, %._crit_edge9555 ], [ %i.jdp, %._crit_edge9575 ] ; 2 uses
  %.22803.lcssa = phi ptr [ %.02801.lcssa, %._crit_edge9555 ], [ %.32804.lcssa, %._crit_edge9575 ] ; 3 uses
  %.12798.lcssa = phi i32 [ %.02797.lcssa, %._crit_edge9555 ], [ %i.jdq, %._crit_edge9575 ] ; 6 uses
  %52 = shufflevector <4 x i32> %50, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %53 = add <4 x i32> %52, %50                    ; 2 uses
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %55 = add <4 x i32> %54, %53
  %56 = extractelement <4 x i32> %55, i64 0
  %57 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %58 = add <4 x i32> %57, %51                    ; 2 uses
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %60 = add <4 x i32> %59, %58
  %61 = extractelement <4 x i32> %60, i64 0
  %i.jfa = add nsw i32 %56, %48                   ; 3 uses
  %i.jfb = add nsw i32 %61, %49                   ; 3 uses
  %i.jfc = or disjoint i32 %.12798.lcssa, 1
  %i.jfd = icmp slt i32 %i.jfc, %i.ity
  br i1 %i.jfd, label %.noexc3417.lr.ph, label %.preheader7890

.noexc3417.lr.ph:                                 ; preds = %._crit_edge9586
  %i.jfe = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !315
  %i.jff = load ptr, ptr %0, align 8, !tbaa !32, !noalias !315 ; 2 uses
  %i.jfg = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !315
  %i.jfh = load i64, ptr %i.dod, align 8, !tbaa !36, !noalias !315 ; 2 uses
  %factor.op.mul9618 = mul i64 %i.jfg, %i.jfh
  %i.jfi = sext i32 %i.jfe to i64
  %i.jfj = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.jfk = mul nsw i32 %i.jfj, %i.itu
  %i.jfl = sext i32 %i.jfk to i64
  %i.jfm = mul i64 %i.jfh, %i.jfi                 ; 2 uses
  %i.jfn = mul i64 %i.jfm, %i.jfl
  %invariant.gep9620 = getelementptr i8, ptr %i.jff, i64 %i.jfn
  %i.jfo = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.jfp = mul nsw i32 %i.jfo, %i.itw
  %i.jfq = sext i32 %i.jfp to i64
  %invariant.gep9621 = getelementptr i8, ptr %invariant.gep9620, i64 %i.jfq
  %i.jfr = mul nsw i32 %i.jfj, %i.itv
  %i.jfs = sext i32 %i.jfr to i64
  %i.jft = mul i64 %i.jfm, %i.jfs
  %invariant.gep9625 = getelementptr i8, ptr %i.jff, i64 %i.jft
  %i.jfu = mul nsw i32 %i.jfo, %i.itx
  %i.jfv = sext i32 %i.jfu to i64
  %invariant.gep9626 = getelementptr i8, ptr %invariant.gep9625, i64 %i.jfv
  %i.jfw = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.jfx = icmp sgt i32 %i.jfw, 0
  %i.jfy = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.jfx, label %.noexc3417.us.preheader, label %.noexc3417.preheader

.noexc3417.preheader:                             ; preds = %.noexc3417.lr.ph
  %i.jfz = add nuw i32 %.12798.lcssa, 2
  %i.jga = add nuw i32 %.12798.lcssa, 3
  %smax10672 = call i32 @llvm.smax.i32(i32 %i.ity, i32 %i.jga)
  %i.jgb = add nsw i32 %smax10672, -2
  %i.jgc = sub nsw i32 %i.jgb, %.12798.lcssa
  %i.jgd = and i32 %i.jgc, -2
  %i.jge = add i32 %i.jfz, %i.jgd
  br label %.preheader7890

.noexc3417.us.preheader:                          ; preds = %.noexc3417.lr.ph
  %i.jgf = add nsw i32 %i.jfw, -1
  %i.jgg = zext nneg i32 %i.jgf to i64
  %i.jgh = shl nuw nsw i64 %i.jgg, 1
  %i.jgi = zext nneg i32 %.12798.lcssa to i64
  %wide.trip.count10678 = zext nneg i32 %i.jfw to i64 ; 6 uses
  %min.iters.check11748 = icmp ult i32 %i.jfw, 16
  %min.iters.check11750 = icmp ult i32 %i.jfw, 32
  %i.jgj = and i64 %wide.trip.count10678, 16
  %n.vec11752 = and i64 %wide.trip.count10678, 2147483616 ; 5 uses
  %i.jgk = shl nuw nsw i64 %n.vec11752, 1
  %cmp.n11773 = icmp eq i64 %n.vec11752, %wide.trip.count10678
  %min.epilog.iters.check11780.not.not = icmp eq i64 %i.jgj, 0
  %n.vec11782 = and i64 %wide.trip.count10678, 2147483632 ; 4 uses
  %i.jgl = shl nuw nsw i64 %n.vec11782, 1
  %cmp.n11794 = icmp eq i64 %n.vec11782, %wide.trip.count10678
  br label %iter.check11777

iter.check11777:                                  ; preds = %.noexc3417.us.preheader, %._crit_edge9606.us
  %indvars.iv10680 = phi i64 [ %i.jgi, %.noexc3417.us.preheader ], [ %indvars.iv.next10681, %._crit_edge9606.us ] ; 2 uses
  %.428059612.us = phi ptr [ %.22803.lcssa, %.noexc3417.us.preheader ], [ %scevgep10676, %._crit_edge9606.us ] ; 7 uses
  %.028099611.us = phi i32 [ %i.jfb, %.noexc3417.us.preheader ], [ %.lcssa11157, %._crit_edge9606.us ] ; 3 uses
  %.028139610.us = phi i32 [ %i.jfa, %.noexc3417.us.preheader ], [ %.lcssa11158, %._crit_edge9606.us ] ; 3 uses
  %.reass9619.us = mul i64 %factor.op.mul9618, %indvars.iv10680 ; 2 uses
  %gep9622.us = getelementptr i8, ptr %invariant.gep9621, i64 %.reass9619.us ; 49 uses
  %gep9627.us = getelementptr i8, ptr %invariant.gep9626, i64 %.reass9619.us ; 49 uses
  br i1 %min.iters.check11748, label %vec.epilog.scalar.ph11778.preheader, label %vector.main.loop.iter.check11749

vector.main.loop.iter.check11749:                 ; preds = %iter.check11777
  br i1 %min.iters.check11750, label %vec.epilog.ph11781, label %vector.ph11751

vector.ph11751:                                   ; preds = %vector.main.loop.iter.check11749
  %i.jgm = getelementptr i8, ptr %.428059612.us, i64 %i.jgk
  %i.jgn = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028099611.us, i64 0
  %i.jgo = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028139610.us, i64 0
  br label %vector.body11753

vector.body11753:                                 ; preds = %vector.body11753, %vector.ph11751
  %index11754 = phi i64 [ 0, %vector.ph11751 ], [ %index.next11769, %vector.body11753 ] ; 3 uses
  %vec.phi11755 = phi <16 x i32> [ %i.jgn, %vector.ph11751 ], [ %i.jxv, %vector.body11753 ]
  %vec.phi11756 = phi <16 x i32> [ zeroinitializer, %vector.ph11751 ], [ %i.jxw, %vector.body11753 ]
  %vec.phi11757 = phi <16 x i32> [ %i.jgo, %vector.ph11751 ], [ %i.jrf, %vector.body11753 ]
  %vec.phi11758 = phi <16 x i32> [ zeroinitializer, %vector.ph11751 ], [ %i.jrg, %vector.body11753 ]
  %i.jgp = shl i64 %index11754, 1                 ; 2 uses
  %next.gep11759 = getelementptr i8, ptr %.428059612.us, i64 %i.jgp
  %i.jgq = getelementptr i8, ptr %.428059612.us, i64 %i.jgp
  %next.gep11760 = getelementptr i8, ptr %i.jgq, i64 32
  %i.jgr = getelementptr inbounds nuw [4 x i8], ptr %i.jfy, i64 %index11754 ; 2 uses
  %i.jgs = getelementptr inbounds nuw i8, ptr %i.jgr, i64 64
  %wide.load11761 = load <16 x i32>, ptr %i.jgr, align 4, !tbaa !9
  %wide.load11762 = load <16 x i32>, ptr %i.jgs, align 4, !tbaa !9
  %i.jgt = sext <16 x i32> %wide.load11761 to <16 x i64> ; 16 uses
  %i.jgu = sext <16 x i32> %wide.load11762 to <16 x i64> ; 16 uses
  %i.jgv = extractelement <16 x i64> %i.jgt, i64 0 ; 2 uses
  %i.jgw = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jgv ; 2 uses
  %i.jgx = extractelement <16 x i64> %i.jgt, i64 1 ; 2 uses
  %i.jgy = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jgx ; 2 uses
  %i.jgz = extractelement <16 x i64> %i.jgt, i64 2 ; 2 uses
  %i.jha = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jgz ; 2 uses
  %i.jhb = extractelement <16 x i64> %i.jgt, i64 3 ; 2 uses
  %i.jhc = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhb ; 2 uses
  %i.jhd = extractelement <16 x i64> %i.jgt, i64 4 ; 2 uses
  %i.jhe = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhd ; 2 uses
  %i.jhf = extractelement <16 x i64> %i.jgt, i64 5 ; 2 uses
  %i.jhg = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhf ; 2 uses
  %i.jhh = extractelement <16 x i64> %i.jgt, i64 6 ; 2 uses
  %i.jhi = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhh ; 2 uses
  %i.jhj = extractelement <16 x i64> %i.jgt, i64 7 ; 2 uses
  %i.jhk = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhj ; 2 uses
  %i.jhl = extractelement <16 x i64> %i.jgt, i64 8 ; 2 uses
  %i.jhm = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhl ; 2 uses
  %i.jhn = extractelement <16 x i64> %i.jgt, i64 9 ; 2 uses
  %i.jho = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhn ; 2 uses
  %i.jhp = extractelement <16 x i64> %i.jgt, i64 10 ; 2 uses
  %i.jhq = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhp ; 2 uses
  %i.jhr = extractelement <16 x i64> %i.jgt, i64 11 ; 2 uses
  %i.jhs = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhr ; 2 uses
  %i.jht = extractelement <16 x i64> %i.jgt, i64 12 ; 2 uses
  %i.jhu = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jht ; 2 uses
  %i.jhv = extractelement <16 x i64> %i.jgt, i64 13 ; 2 uses
  %i.jhw = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhv ; 2 uses
  %i.jhx = extractelement <16 x i64> %i.jgt, i64 14 ; 2 uses
  %i.jhy = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhx ; 2 uses
  %i.jhz = extractelement <16 x i64> %i.jgt, i64 15 ; 2 uses
  %i.jia = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jhz ; 2 uses
  %i.jib = extractelement <16 x i64> %i.jgu, i64 0 ; 2 uses
  %i.jic = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jib ; 2 uses
  %i.jid = extractelement <16 x i64> %i.jgu, i64 1 ; 2 uses
  %i.jie = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jid ; 2 uses
  %i.jif = extractelement <16 x i64> %i.jgu, i64 2 ; 2 uses
  %i.jig = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jif ; 2 uses
  %i.jih = extractelement <16 x i64> %i.jgu, i64 3 ; 2 uses
  %i.jii = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jih ; 2 uses
  %i.jij = extractelement <16 x i64> %i.jgu, i64 4 ; 2 uses
  %i.jik = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jij ; 2 uses
  %i.jil = extractelement <16 x i64> %i.jgu, i64 5 ; 2 uses
  %i.jim = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jil ; 2 uses
  %i.jin = extractelement <16 x i64> %i.jgu, i64 6 ; 2 uses
  %i.jio = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jin ; 2 uses
  %i.jip = extractelement <16 x i64> %i.jgu, i64 7 ; 2 uses
  %i.jiq = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jip ; 2 uses
  %i.jir = extractelement <16 x i64> %i.jgu, i64 8 ; 2 uses
  %i.jis = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jir ; 2 uses
  %i.jit = extractelement <16 x i64> %i.jgu, i64 9 ; 2 uses
  %i.jiu = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jit ; 2 uses
  %i.jiv = extractelement <16 x i64> %i.jgu, i64 10 ; 2 uses
  %i.jiw = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jiv ; 2 uses
  %i.jix = extractelement <16 x i64> %i.jgu, i64 11 ; 2 uses
  %i.jiy = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jix ; 2 uses
  %i.jiz = extractelement <16 x i64> %i.jgu, i64 12 ; 2 uses
  %i.jja = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jiz ; 2 uses
  %i.jjb = extractelement <16 x i64> %i.jgu, i64 13 ; 2 uses
  %i.jjc = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jjb ; 2 uses
  %i.jjd = extractelement <16 x i64> %i.jgu, i64 14 ; 2 uses
  %i.jje = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jjd ; 2 uses
  %i.jjf = extractelement <16 x i64> %i.jgu, i64 15 ; 2 uses
  %i.jjg = getelementptr inbounds i8, ptr %gep9622.us, i64 %i.jjf ; 2 uses
  %i.jjh = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jgv ; 2 uses
  %i.jji = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jgx ; 2 uses
  %i.jjj = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jgz ; 2 uses
  %i.jjk = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhb ; 2 uses
  %i.jjl = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhd ; 2 uses
  %i.jjm = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhf ; 2 uses
  %i.jjn = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhh ; 2 uses
  %i.jjo = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhj ; 2 uses
  %i.jjp = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhl ; 2 uses
  %i.jjq = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhn ; 2 uses
  %i.jjr = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhp ; 2 uses
  %i.jjs = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhr ; 2 uses
  %i.jjt = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jht ; 2 uses
  %i.jju = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhv ; 2 uses
  %i.jjv = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhx ; 2 uses
  %i.jjw = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jhz ; 2 uses
  %i.jjx = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jib ; 2 uses
  %i.jjy = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jid ; 2 uses
  %i.jjz = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jif ; 2 uses
  %i.jka = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jih ; 2 uses
  %i.jkb = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jij ; 2 uses
  %i.jkc = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jil ; 2 uses
  %i.jkd = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jin ; 2 uses
  %i.jke = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jip ; 2 uses
  %i.jkf = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jir ; 2 uses
  %i.jkg = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jit ; 2 uses
  %i.jkh = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jiv ; 2 uses
  %i.jki = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jix ; 2 uses
  %i.jkj = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jiz ; 2 uses
  %i.jkk = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jjb ; 2 uses
  %i.jkl = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jjd ; 2 uses
  %i.jkm = getelementptr inbounds i8, ptr %gep9627.us, i64 %i.jjf ; 2 uses
  %i.jkn = load i8, ptr %i.jgw, align 1, !tbaa !44
  %i.jko = load i8, ptr %i.jgy, align 1, !tbaa !44
  %i.jkp = load i8, ptr %i.jha, align 1, !tbaa !44
  %i.jkq = load i8, ptr %i.jhc, align 1, !tbaa !44
  %i.jkr = load i8, ptr %i.jhe, align 1, !tbaa !44
  %i.jks = load i8, ptr %i.jhg, align 1, !tbaa !44
  %i.jkt = load i8, ptr %i.jhi, align 1, !tbaa !44
  %i.jku = load i8, ptr %i.jhk, align 1, !tbaa !44
end_hunk_4
begin_hunk_5_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %.027319684.us = phi i32 [ %i.kzu, %._crit_edge9668.us ], [ 0, %.noexc3407.us.preheader ] ; 2 uses
  %.027359683.us = phi ptr [ %scevgep10696, %._crit_edge9668.us ], [ %i.its, %.noexc3407.us.preheader ] ; 7 uses
  %i.kxn = phi <8 x i32> [ %.us-phi9671.us.in, %._crit_edge9668.us ], [ zeroinitializer, %.noexc3407.us.preheader ] ; 6 uses
  %i.kxo = sdiv i32 %.027319684.us, %i.kwn
  %i.kxp = sext i32 %i.kxo to i64
  %.reass9690.us = mul i64 %factor.op.mul9689, %i.kxp
  %gep9693.us = getelementptr i8, ptr %invariant.gep9692, i64 %.reass9690.us ; 9 uses
  switch i32 %i.kwn, label %.lr.ph9667.split.us9700.preheader [
    i32 16, label %.lr.ph9667.split.us.us.preheader
    i32 8, label %.lr.ph9667.split.us9673.us.preheader
  ]

.lr.ph9667.split.us9673.us.preheader:             ; preds = %.noexc3407.us
  br i1 %i.kxk, label %.lr.ph9667.split.us9673.us.epil.preheader, label %.lr.ph9667.split.us9673.us

.lr.ph9667.split.us.us.preheader:                 ; preds = %.noexc3407.us
  br i1 %i.kxl, label %.lr.ph9667.split.us.us.epil.preheader, label %.lr.ph9667.split.us.us

.lr.ph9667.split.us9700.preheader:                ; preds = %.noexc3407.us
  br i1 %i.kxm, label %.lr.ph9667.split.us9700.epil.preheader, label %.lr.ph9667.split.us9700

.lr.ph9667.split.us9700:                          ; preds = %.lr.ph9667.split.us9700.preheader, %.lr.ph9667.split.us9700
  %indvars.iv10707 = phi i64 [ %indvars.iv.next10708.1, %.lr.ph9667.split.us9700 ], [ 0, %.lr.ph9667.split.us9700.preheader ] ; 3 uses
  %.127369665.us9695 = phi ptr [ %i.kym, %.lr.ph9667.split.us9700 ], [ %.027359683.us, %.lr.ph9667.split.us9700.preheader ] ; 3 uses
  %.174429664.us9696 = phi <8 x i32> [ %i.kyl, %.lr.ph9667.split.us9700 ], [ %i.kxn, %.lr.ph9667.split.us9700.preheader ]
  %niter12299 = phi i64 [ %niter12299.next.1, %.lr.ph9667.split.us9700 ], [ 0, %.lr.ph9667.split.us9700.preheader ]
  %i.kxq = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10707
  %i.kxr = load i32, ptr %i.kxq, align 4, !tbaa !9
  %i.kxs = sext i32 %i.kxr to i64
  %i.kxt = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.kxs
  %i.kxu = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.kxt, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.kxv = trunc <16 x i32> %i.kxu to <16 x i8>
  %i.kxw = sext <16 x i8> %i.kxv to <16 x i16>
  %i.kxx = load <16 x i8>, ptr %.127369665.us9695, align 16, !tbaa !44
  %i.kxy = sext <16 x i8> %i.kxx to <16 x i16>
  %i.kxz = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174429664.us9696, <16 x i16> %i.kxw, <16 x i16> %i.kxy)
  %i.kya = getelementptr inbounds nuw i8, ptr %.127369665.us9695, i64 16
  %i.kyb = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10707
  %i.kyc = getelementptr inbounds nuw i8, ptr %i.kyb, i64 4
  %i.kyd = load i32, ptr %i.kyc, align 4, !tbaa !9
  %i.kye = sext i32 %i.kyd to i64
  %i.kyf = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.kye
  %i.kyg = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.kyf, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.kyh = trunc <16 x i32> %i.kyg to <16 x i8>
  %i.kyi = sext <16 x i8> %i.kyh to <16 x i16>
  %i.kyj = load <16 x i8>, ptr %i.kya, align 16, !tbaa !44
  %i.kyk = sext <16 x i8> %i.kyj to <16 x i16>
  %i.kyl = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.kxz, <16 x i16> %i.kyi, <16 x i16> %i.kyk) ; 3 uses
  %i.kym = getelementptr inbounds nuw i8, ptr %.127369665.us9695, i64 32 ; 2 uses
  %indvars.iv.next10708.1 = add nuw nsw i64 %indvars.iv10707, 2 ; 2 uses
  %niter12299.next.1 = add i64 %niter12299, 2     ; 2 uses
  %niter12299.ncmp.1 = icmp eq i64 %niter12299.next.1, %unroll_iter12298
  br i1 %niter12299.ncmp.1, label %._crit_edge9668.us.loopexit.unr-lcssa, label %.lr.ph9667.split.us9700, !llvm.loop !334

._crit_edge9668.us.loopexit.unr-lcssa:            ; preds = %.lr.ph9667.split.us9700
  br i1 %lcmp.mod12295.not, label %._crit_edge9668.us, label %.lr.ph9667.split.us9700.epil.preheader

.lr.ph9667.split.us9700.epil.preheader:           ; preds = %._crit_edge9668.us.loopexit.unr-lcssa, %.lr.ph9667.split.us9700.preheader
  %indvars.iv10707.epil.init = phi i64 [ 0, %.lr.ph9667.split.us9700.preheader ], [ %indvars.iv.next10708.1, %._crit_edge9668.us.loopexit.unr-lcssa ]
  %.127369665.us9695.epil.init = phi ptr [ %.027359683.us, %.lr.ph9667.split.us9700.preheader ], [ %i.kym, %._crit_edge9668.us.loopexit.unr-lcssa ]
  %.174429664.us9696.epil.init = phi <8 x i32> [ %i.kxn, %.lr.ph9667.split.us9700.preheader ], [ %i.kyl, %._crit_edge9668.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12297)
  %i.kyn = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10707.epil.init
  %i.kyo = load i32, ptr %i.kyn, align 4, !tbaa !9
  %i.kyp = sext i32 %i.kyo to i64
  %i.kyq = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.kyp
  %i.kyr = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.kyq, <16 x i32> %i.doh, <16 x i1> splat (i1 true), i32 1)
  %i.kys = trunc <16 x i32> %i.kyr to <16 x i8>
  %i.kyt = sext <16 x i8> %i.kys to <16 x i16>
  %i.kyu = load <16 x i8>, ptr %.127369665.us9695.epil.init, align 16, !tbaa !44
  %i.kyv = sext <16 x i8> %i.kyu to <16 x i16>
  %i.kyw = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174429664.us9696.epil.init, <16 x i16> %i.kyt, <16 x i16> %i.kyv)
  br label %._crit_edge9668.us

._crit_edge9668.us.loopexit11830.unr-lcssa:       ; preds = %.lr.ph9667.split.us.us
  br i1 %lcmp.mod12289.not, label %._crit_edge9668.us, label %.lr.ph9667.split.us.us.epil.preheader

.lr.ph9667.split.us.us.epil.preheader:            ; preds = %._crit_edge9668.us.loopexit11830.unr-lcssa, %.lr.ph9667.split.us.us.preheader
  %indvars.iv10700.epil.init = phi i64 [ 0, %.lr.ph9667.split.us.us.preheader ], [ %indvars.iv.next10701.1, %._crit_edge9668.us.loopexit11830.unr-lcssa ]
  %.127369665.us.us.epil.init = phi ptr [ %.027359683.us, %.lr.ph9667.split.us.us.preheader ], [ %i.lar, %._crit_edge9668.us.loopexit11830.unr-lcssa ]
  %.174429664.us.us.epil.init = phi <8 x i32> [ %i.kxn, %.lr.ph9667.split.us.us.preheader ], [ %i.laq, %._crit_edge9668.us.loopexit11830.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12291)
  %i.kyx = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10700.epil.init
  %i.kyy = load i32, ptr %i.kyx, align 4, !tbaa !9
  %i.kyz = sext i32 %i.kyy to i64
  %i.kza = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.kyz
  %i.kzb = load <16 x i8>, ptr %i.kza, align 1, !tbaa !44
  %i.kzc = sext <16 x i8> %i.kzb to <16 x i16>
  %i.kzd = load <16 x i8>, ptr %.127369665.us.us.epil.init, align 16, !tbaa !44
  %i.kze = sext <16 x i8> %i.kzd to <16 x i16>
  %i.kzf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174429664.us.us.epil.init, <16 x i16> %i.kzc, <16 x i16> %i.kze)
  br label %._crit_edge9668.us

._crit_edge9668.us.loopexit11831.unr-lcssa:       ; preds = %.lr.ph9667.split.us9673.us
  br i1 %lcmp.mod12283.not, label %._crit_edge9668.us, label %.lr.ph9667.split.us9673.us.epil.preheader

.lr.ph9667.split.us9673.us.epil.preheader:        ; preds = %._crit_edge9668.us.loopexit11831.unr-lcssa, %.lr.ph9667.split.us9673.us.preheader
  %indvars.iv10693.epil.init = phi i64 [ 0, %.lr.ph9667.split.us9673.us.preheader ], [ %indvars.iv.next10694.1, %._crit_edge9668.us.loopexit11831.unr-lcssa ]
  %.127369665.us9675.us.epil.init = phi ptr [ %.027359683.us, %.lr.ph9667.split.us9673.us.preheader ], [ %i.lbw, %._crit_edge9668.us.loopexit11831.unr-lcssa ]
  %.174429664.us9676.us.epil.init = phi <8 x i32> [ %i.kxn, %.lr.ph9667.split.us9673.us.preheader ], [ %i.lbv, %._crit_edge9668.us.loopexit11831.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12285)
  %i.kzg = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10693.epil.init
  %i.kzh = load i32, ptr %i.kzg, align 4, !tbaa !9
  %i.kzi = sext i32 %i.kzh to i64
  %i.kzj = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.kzi ; 2 uses
  %i.kzk = load i64, ptr %i.kzj, align 1, !tbaa !44
  %i.kzl = insertelement <2 x i64> poison, i64 %i.kzk, i64 0
  %i.kzm = getelementptr inbounds nuw i8, ptr %i.kzj, i64 %i.t
  %i.kzn = load i64, ptr %i.kzm, align 1, !tbaa !44
  %i.kzo = insertelement <2 x i64> %i.kzl, i64 %i.kzn, i64 1
  %i.kzp = bitcast <2 x i64> %i.kzo to <16 x i8>
  %i.kzq = sext <16 x i8> %i.kzp to <16 x i16>
  %i.kzr = load <16 x i8>, ptr %.127369665.us9675.us.epil.init, align 16, !tbaa !44
  %i.kzs = sext <16 x i8> %i.kzr to <16 x i16>
  %i.kzt = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174429664.us9676.us.epil.init, <16 x i16> %i.kzq, <16 x i16> %i.kzs)
  br label %._crit_edge9668.us

._crit_edge9668.us:                               ; preds = %.lr.ph9667.split.us9673.us.epil.preheader, %._crit_edge9668.us.loopexit11831.unr-lcssa, %.lr.ph9667.split.us.us.epil.preheader, %._crit_edge9668.us.loopexit11830.unr-lcssa, %.lr.ph9667.split.us9700.epil.preheader, %._crit_edge9668.us.loopexit.unr-lcssa
  %.us-phi9671.us.in = phi <8 x i32> [ %i.kyw, %.lr.ph9667.split.us9700.epil.preheader ], [ %i.kzf, %.lr.ph9667.split.us.us.epil.preheader ], [ %i.kyl, %._crit_edge9668.us.loopexit.unr-lcssa ], [ %i.laq, %._crit_edge9668.us.loopexit11830.unr-lcssa ], [ %i.lbv, %._crit_edge9668.us.loopexit11831.unr-lcssa ], [ %i.kzt, %.lr.ph9667.split.us9673.us.epil.preheader ] ; 2 uses
  %scevgep10695 = getelementptr i8, ptr %.027359683.us, i64 16
  %scevgep10696 = getelementptr i8, ptr %scevgep10695, i64 %i.kxi ; 2 uses
  %i.kzu = add nuw nsw i32 %.027319684.us, 16     ; 2 uses
  %i.kzv = or disjoint i32 %i.kzu, 15
  %i.kzw = icmp slt i32 %i.kzv, %i.kwl
  br i1 %i.kzw, label %.noexc3407.us, label %._crit_edge9685.loopexit, !llvm.loop !335

.lr.ph9667.split.us.us:                           ; preds = %.lr.ph9667.split.us.us.preheader, %.lr.ph9667.split.us.us
  %indvars.iv10700 = phi i64 [ %indvars.iv.next10701.1, %.lr.ph9667.split.us.us ], [ 0, %.lr.ph9667.split.us.us.preheader ] ; 3 uses
  %.127369665.us.us = phi ptr [ %i.lar, %.lr.ph9667.split.us.us ], [ %.027359683.us, %.lr.ph9667.split.us.us.preheader ] ; 3 uses
  %.174429664.us.us = phi <8 x i32> [ %i.laq, %.lr.ph9667.split.us.us ], [ %i.kxn, %.lr.ph9667.split.us.us.preheader ]
  %niter12293 = phi i64 [ %niter12293.next.1, %.lr.ph9667.split.us.us ], [ 0, %.lr.ph9667.split.us.us.preheader ]
  %i.kzx = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10700
  %i.kzy = load i32, ptr %i.kzx, align 4, !tbaa !9
  %i.kzz = sext i32 %i.kzy to i64
  %i.laa = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.kzz
  %i.lab = load <16 x i8>, ptr %i.laa, align 1, !tbaa !44
  %i.lac = sext <16 x i8> %i.lab to <16 x i16>
  %i.lad = load <16 x i8>, ptr %.127369665.us.us, align 16, !tbaa !44
  %i.lae = sext <16 x i8> %i.lad to <16 x i16>
  %i.laf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174429664.us.us, <16 x i16> %i.lac, <16 x i16> %i.lae)
  %i.lag = getelementptr inbounds nuw i8, ptr %.127369665.us.us, i64 16
  %i.lah = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10700
  %i.lai = getelementptr inbounds nuw i8, ptr %i.lah, i64 4
  %i.laj = load i32, ptr %i.lai, align 4, !tbaa !9
  %i.lak = sext i32 %i.laj to i64
  %i.lal = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.lak
  %i.lam = load <16 x i8>, ptr %i.lal, align 1, !tbaa !44
  %i.lan = sext <16 x i8> %i.lam to <16 x i16>
  %i.lao = load <16 x i8>, ptr %i.lag, align 16, !tbaa !44
  %i.lap = sext <16 x i8> %i.lao to <16 x i16>
  %i.laq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.laf, <16 x i16> %i.lan, <16 x i16> %i.lap) ; 3 uses
  %i.lar = getelementptr inbounds nuw i8, ptr %.127369665.us.us, i64 32 ; 2 uses
  %indvars.iv.next10701.1 = add nuw nsw i64 %indvars.iv10700, 2 ; 2 uses
  %niter12293.next.1 = add i64 %niter12293, 2     ; 2 uses
  %niter12293.ncmp.1 = icmp eq i64 %niter12293.next.1, %unroll_iter12292
  br i1 %niter12293.ncmp.1, label %._crit_edge9668.us.loopexit11830.unr-lcssa, label %.lr.ph9667.split.us.us, !llvm.loop !334

.lr.ph9667.split.us9673.us:                       ; preds = %.lr.ph9667.split.us9673.us.preheader, %.lr.ph9667.split.us9673.us
  %indvars.iv10693 = phi i64 [ %indvars.iv.next10694.1, %.lr.ph9667.split.us9673.us ], [ 0, %.lr.ph9667.split.us9673.us.preheader ] ; 3 uses
  %.127369665.us9675.us = phi ptr [ %i.lbw, %.lr.ph9667.split.us9673.us ], [ %.027359683.us, %.lr.ph9667.split.us9673.us.preheader ] ; 3 uses
  %.174429664.us9676.us = phi <8 x i32> [ %i.lbv, %.lr.ph9667.split.us9673.us ], [ %i.kxn, %.lr.ph9667.split.us9673.us.preheader ]
  %niter12287 = phi i64 [ %niter12287.next.1, %.lr.ph9667.split.us9673.us ], [ 0, %.lr.ph9667.split.us9673.us.preheader ]
  %i.las = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10693
  %i.lat = load i32, ptr %i.las, align 4, !tbaa !9
  %i.lau = sext i32 %i.lat to i64
  %i.lav = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.lau ; 2 uses
  %i.law = load i64, ptr %i.lav, align 1, !tbaa !44
  %i.lax = insertelement <2 x i64> poison, i64 %i.law, i64 0
  %i.lay = getelementptr inbounds nuw i8, ptr %i.lav, i64 %i.t
  %i.laz = load i64, ptr %i.lay, align 1, !tbaa !44
  %i.lba = insertelement <2 x i64> %i.lax, i64 %i.laz, i64 1
  %i.lbb = bitcast <2 x i64> %i.lba to <16 x i8>
  %i.lbc = sext <16 x i8> %i.lbb to <16 x i16>
  %i.lbd = load <16 x i8>, ptr %.127369665.us9675.us, align 16, !tbaa !44
  %i.lbe = sext <16 x i8> %i.lbd to <16 x i16>
  %i.lbf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174429664.us9676.us, <16 x i16> %i.lbc, <16 x i16> %i.lbe)
  %i.lbg = getelementptr inbounds nuw i8, ptr %.127369665.us9675.us, i64 16
  %i.lbh = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %indvars.iv10693
  %i.lbi = getelementptr inbounds nuw i8, ptr %i.lbh, i64 4
  %i.lbj = load i32, ptr %i.lbi, align 4, !tbaa !9
  %i.lbk = sext i32 %i.lbj to i64
  %i.lbl = getelementptr inbounds i8, ptr %gep9693.us, i64 %i.lbk ; 2 uses
  %i.lbm = load i64, ptr %i.lbl, align 1, !tbaa !44
  %i.lbn = insertelement <2 x i64> poison, i64 %i.lbm, i64 0
  %i.lbo = getelementptr inbounds nuw i8, ptr %i.lbl, i64 %i.t
  %i.lbp = load i64, ptr %i.lbo, align 1, !tbaa !44
  %i.lbq = insertelement <2 x i64> %i.lbn, i64 %i.lbp, i64 1
  %i.lbr = bitcast <2 x i64> %i.lbq to <16 x i8>
  %i.lbs = sext <16 x i8> %i.lbr to <16 x i16>
  %i.lbt = load <16 x i8>, ptr %i.lbg, align 16, !tbaa !44
  %i.lbu = sext <16 x i8> %i.lbt to <16 x i16>
  %i.lbv = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.lbf, <16 x i16> %i.lbs, <16 x i16> %i.lbu) ; 3 uses
  %i.lbw = getelementptr inbounds nuw i8, ptr %.127369665.us9675.us, i64 32 ; 2 uses
  %indvars.iv.next10694.1 = add nuw nsw i64 %indvars.iv10693, 2 ; 2 uses
  %niter12287.next.1 = add i64 %niter12287, 2     ; 2 uses
  %niter12287.ncmp.1 = icmp eq i64 %niter12287.next.1, %unroll_iter12286
  br i1 %niter12287.ncmp.1, label %._crit_edge9668.us.loopexit11831.unr-lcssa, label %.lr.ph9667.split.us9673.us, !llvm.loop !334

._crit_edge9685.loopexit:                         ; preds = %._crit_edge9668.us
  %i.lbx = and i32 %i.kwl, 2147483632
  br label %._crit_edge9685

._crit_edge9685:                                  ; preds = %.noexc3407.preheader, %._crit_edge9685.loopexit, %.noexc3409
  %62 = phi <8 x i32> [ zeroinitializer, %.noexc3409 ], [ %.us-phi9671.us.in, %._crit_edge9685.loopexit ], [ zeroinitializer, %.noexc3407.preheader ] ; 2 uses
  %.02735.lcssa = phi ptr [ %i.its, %.noexc3409 ], [ %scevgep10696, %._crit_edge9685.loopexit ], [ %i.its, %.noexc3407.preheader ] ; 2 uses
  %.02731.lcssa = phi i32 [ 0, %.noexc3409 ], [ %i.lbx, %._crit_edge9685.loopexit ], [ %i.kxf, %.noexc3407.preheader ] ; 3 uses
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %64 = shufflevector <8 x i32> %62, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %65 = add <4 x i32> %63, %64
  %66 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %65)
  %i.lby = or disjoint i32 %.02731.lcssa, 7
  %i.lbz = icmp slt i32 %i.lby, %i.kwl
  br i1 %i.lbz, label %.noexc3405.lr.ph, label %._crit_edge9717

.noexc3405.lr.ph:                                 ; preds = %._crit_edge9685
  %i.lca = load i32, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.lcb = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !336
  %i.lcc = load ptr, ptr %0, align 8, !tbaa !32, !noalias !336
  %i.lcd = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !336
  %i.lce = load i64, ptr %i.dod, align 8, !tbaa !36, !noalias !336 ; 2 uses
  %factor.op.mul9721 = mul i64 %i.lcd, %i.lce
  %i.lcf = sext i32 %i.lcb to i64
  %i.lcg = load i32, ptr %i.b, align 4, !tbaa !9
  %i.lch = mul nsw i32 %i.lcg, %i.kwj
  %i.lci = sext i32 %i.lch to i64
  %i.lcj = mul i64 %i.lce, %i.lcf
  %i.lck = mul i64 %i.lcj, %i.lci
  %invariant.gep9723 = getelementptr i8, ptr %i.lcc, i64 %i.lck
  %i.lcl = load i32, ptr %i.a, align 4, !tbaa !9
  %i.lcm = mul i32 %i.lca, %i.kwk
  %i.lcn = mul i32 %i.lcm, %i.lcl
  %i.lco = sext i32 %i.lcn to i64
  %invariant.gep9724 = getelementptr i8, ptr %invariant.gep9723, i64 %i.lco
  %i.lcp = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.lcq = icmp sgt i32 %i.lcp, 0
  %i.lcr = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.lcs = icmp eq i32 %i.lca, 8
  %i.lct = add i32 %i.lcp, -1
  %i.lcu = zext i32 %i.lct to i64
  %i.lcv = shl nuw nsw i64 %i.lcu, 3              ; 2 uses
  %wide.trip.count10719 = zext i32 %i.lcp to i64  ; 5 uses
  %i.lcw = add nsw i64 %wide.trip.count10719, -1  ; 2 uses
  %xtraiter12300 = and i64 %wide.trip.count10719, 1
  %i.lcx = icmp eq i64 %i.lcw, 0
  %unroll_iter12304 = and i64 %wide.trip.count10719, 2147483646
  %lcmp.mod12301.not = icmp eq i64 %xtraiter12300, 0
  %lcmp.mod12303 = trunc i32 %i.lcp to i1
  %xtraiter12306 = and i64 %wide.trip.count10719, 1
  %i.lcy = icmp eq i64 %i.lcw, 0
  %unroll_iter12310 = and i64 %wide.trip.count10719, 2147483646
  %lcmp.mod12307.not = icmp eq i64 %xtraiter12306, 0
  %lcmp.mod12309 = trunc i32 %i.lcp to i1
  br label %.noexc3405

.noexc3405:                                       ; preds = %.noexc3405.lr.ph, %._crit_edge9709
  %.127329716 = phi i32 [ %.02731.lcssa, %.noexc3405.lr.ph ], [ %i.ler, %._crit_edge9709 ] ; 2 uses
  %.227379715 = phi ptr [ %.02735.lcssa, %.noexc3405.lr.ph ], [ %.32738.lcssa, %._crit_edge9709 ] ; 7 uses
  %i.lcz = phi <4 x i32> [ zeroinitializer, %.noexc3405.lr.ph ], [ %i.leq, %._crit_edge9709 ] ; 5 uses
  %i.lda = sdiv i32 %.127329716, %i.lca
  %i.ldb = sext i32 %i.lda to i64
  %.reass9722 = mul i64 %factor.op.mul9721, %i.ldb
  %gep9725 = getelementptr i8, ptr %invariant.gep9724, i64 %.reass9722 ; 6 uses
  br i1 %i.lcq, label %.lr.ph9708, label %._crit_edge9709

.lr.ph9708:                                       ; preds = %.noexc3405
  br i1 %i.lcs, label %.lr.ph9708.split.us.preheader, label %.lr.ph9708.split.preheader

.lr.ph9708.split.preheader:                       ; preds = %.lr.ph9708
  br i1 %i.lcx, label %.lr.ph9708.split.epil.preheader, label %.lr.ph9708.split

.lr.ph9708.split.us.preheader:                    ; preds = %.lr.ph9708
  br i1 %i.lcy, label %.lr.ph9708.split.us.epil.preheader, label %.lr.ph9708.split.us

.lr.ph9708.split.us:                              ; preds = %.lr.ph9708.split.us.preheader, %.lr.ph9708.split.us
  %indvars.iv10721 = phi i64 [ %indvars.iv.next10722.1, %.lr.ph9708.split.us ], [ 0, %.lr.ph9708.split.us.preheader ] ; 3 uses
  %.327389706.us = phi ptr [ %i.ldw, %.lr.ph9708.split.us ], [ %.227379715, %.lr.ph9708.split.us.preheader ] ; 3 uses
  %.19705.us = phi <4 x i32> [ %i.ldv, %.lr.ph9708.split.us ], [ %i.lcz, %.lr.ph9708.split.us.preheader ]
  %niter12311 = phi i64 [ %niter12311.next.1, %.lr.ph9708.split.us ], [ 0, %.lr.ph9708.split.us.preheader ]
  %i.ldc = getelementptr inbounds nuw [4 x i8], ptr %i.lcr, i64 %indvars.iv10721
  %i.ldd = load i32, ptr %i.ldc, align 4, !tbaa !9
  %i.lde = sext i32 %i.ldd to i64
  %i.ldf = getelementptr inbounds i8, ptr %gep9725, i64 %i.lde
  %i.ldg = load <8 x i8>, ptr %i.ldf, align 1, !tbaa !44
  %i.ldh = sext <8 x i8> %i.ldg to <8 x i16>
  %i.ldi = load <8 x i8>, ptr %.327389706.us, align 1, !tbaa !44
  %i.ldj = sext <8 x i8> %i.ldi to <8 x i16>
  %i.ldk = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.19705.us, <8 x i16> %i.ldh, <8 x i16> %i.ldj)
  %i.ldl = getelementptr inbounds nuw i8, ptr %.327389706.us, i64 8
  %i.ldm = getelementptr inbounds nuw [4 x i8], ptr %i.lcr, i64 %indvars.iv10721
  %i.ldn = getelementptr inbounds nuw i8, ptr %i.ldm, i64 4
  %i.ldo = load i32, ptr %i.ldn, align 4, !tbaa !9
  %i.ldp = sext i32 %i.ldo to i64
  %i.ldq = getelementptr inbounds i8, ptr %gep9725, i64 %i.ldp
  %i.ldr = load <8 x i8>, ptr %i.ldq, align 1, !tbaa !44
  %i.lds = sext <8 x i8> %i.ldr to <8 x i16>
  %i.ldt = load <8 x i8>, ptr %i.ldl, align 1, !tbaa !44
  %i.ldu = sext <8 x i8> %i.ldt to <8 x i16>
  %i.ldv = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.ldk, <8 x i16> %i.lds, <8 x i16> %i.ldu) ; 3 uses
  %i.ldw = getelementptr inbounds nuw i8, ptr %.327389706.us, i64 16 ; 2 uses
  %indvars.iv.next10722.1 = add nuw nsw i64 %indvars.iv10721, 2 ; 2 uses
  %niter12311.next.1 = add i64 %niter12311, 2     ; 2 uses
  %niter12311.ncmp.1 = icmp eq i64 %niter12311.next.1, %unroll_iter12310
  br i1 %niter12311.ncmp.1, label %._crit_edge9709.loopexit.unr-lcssa, label %.lr.ph9708.split.us, !llvm.loop !339

._crit_edge9709.loopexit.unr-lcssa:               ; preds = %.lr.ph9708.split.us
  br i1 %lcmp.mod12307.not, label %._crit_edge9709.loopexit, label %.lr.ph9708.split.us.epil.preheader

.lr.ph9708.split.us.epil.preheader:               ; preds = %._crit_edge9709.loopexit.unr-lcssa, %.lr.ph9708.split.us.preheader
  %indvars.iv10721.epil.init = phi i64 [ 0, %.lr.ph9708.split.us.preheader ], [ %indvars.iv.next10722.1, %._crit_edge9709.loopexit.unr-lcssa ]
  %.327389706.us.epil.init = phi ptr [ %.227379715, %.lr.ph9708.split.us.preheader ], [ %i.ldw, %._crit_edge9709.loopexit.unr-lcssa ]
  %.19705.us.epil.init = phi <4 x i32> [ %i.lcz, %.lr.ph9708.split.us.preheader ], [ %i.ldv, %._crit_edge9709.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12309)
  %i.ldx = getelementptr inbounds nuw [4 x i8], ptr %i.lcr, i64 %indvars.iv10721.epil.init
  %i.ldy = load i32, ptr %i.ldx, align 4, !tbaa !9
  %i.ldz = sext i32 %i.ldy to i64
  %i.lea = getelementptr inbounds i8, ptr %gep9725, i64 %i.ldz
  %i.leb = load <8 x i8>, ptr %i.lea, align 1, !tbaa !44
  %i.lec = sext <8 x i8> %i.leb to <8 x i16>
  %i.led = load <8 x i8>, ptr %.327389706.us.epil.init, align 1, !tbaa !44
  %i.lee = sext <8 x i8> %i.led to <8 x i16>
  %i.lef = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.19705.us.epil.init, <8 x i16> %i.lec, <8 x i16> %i.lee)
  br label %._crit_edge9709.loopexit

._crit_edge9709.loopexit:                         ; preds = %._crit_edge9709.loopexit.unr-lcssa, %.lr.ph9708.split.us.epil.preheader
  %.lcssa11894 = phi <4 x i32> [ %i.ldv, %._crit_edge9709.loopexit.unr-lcssa ], [ %i.lef, %.lr.ph9708.split.us.epil.preheader ]
  %scevgep10723 = getelementptr i8, ptr %.227379715, i64 8
  %scevgep10724 = getelementptr i8, ptr %scevgep10723, i64 %i.lcv
  br label %._crit_edge9709

._crit_edge9709.loopexit9770.unr-lcssa:           ; preds = %.lr.ph9708.split
  br i1 %lcmp.mod12301.not, label %._crit_edge9709.loopexit9770, label %.lr.ph9708.split.epil.preheader

.lr.ph9708.split.epil.preheader:                  ; preds = %._crit_edge9709.loopexit9770.unr-lcssa, %.lr.ph9708.split.preheader
  %indvars.iv10714.epil.init = phi i64 [ 0, %.lr.ph9708.split.preheader ], [ %indvars.iv.next10715.1, %._crit_edge9709.loopexit9770.unr-lcssa ]
  %.327389706.epil.init = phi ptr [ %.227379715, %.lr.ph9708.split.preheader ], [ %i.lfq, %._crit_edge9709.loopexit9770.unr-lcssa ]
  %.19705.epil.init = phi <4 x i32> [ %i.lcz, %.lr.ph9708.split.preheader ], [ %i.lfp, %._crit_edge9709.loopexit9770.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12303)
  %i.leg = getelementptr inbounds nuw [4 x i8], ptr %i.lcr, i64 %indvars.iv10714.epil.init
  %i.leh = load i32, ptr %i.leg, align 4, !tbaa !9
  %i.lei = sext i32 %i.leh to i64
  %i.lej = getelementptr inbounds i8, ptr %gep9725, i64 %i.lei
  %i.lek = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lej, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.lel = trunc <8 x i32> %i.lek to <8 x i8>
  %i.lem = sext <8 x i8> %i.lel to <8 x i16>
  %i.len = load <8 x i8>, ptr %.327389706.epil.init, align 1, !tbaa !44
  %i.leo = sext <8 x i8> %i.len to <8 x i16>
  %i.lep = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.19705.epil.init, <8 x i16> %i.lem, <8 x i16> %i.leo)
  br label %._crit_edge9709.loopexit9770

._crit_edge9709.loopexit9770:                     ; preds = %._crit_edge9709.loopexit9770.unr-lcssa, %.lr.ph9708.split.epil.preheader
  %.lcssa11893 = phi <4 x i32> [ %i.lfp, %._crit_edge9709.loopexit9770.unr-lcssa ], [ %i.lep, %.lr.ph9708.split.epil.preheader ]
  %scevgep10716 = getelementptr i8, ptr %.227379715, i64 8
  %scevgep10717 = getelementptr i8, ptr %scevgep10716, i64 %i.lcv
  br label %._crit_edge9709

._crit_edge9709:                                  ; preds = %._crit_edge9709.loopexit9770, %._crit_edge9709.loopexit, %.noexc3405
  %i.leq = phi <4 x i32> [ %i.lcz, %.noexc3405 ], [ %.lcssa11894, %._crit_edge9709.loopexit ], [ %.lcssa11893, %._crit_edge9709.loopexit9770 ] ; 2 uses
  %.32738.lcssa = phi ptr [ %.227379715, %.noexc3405 ], [ %scevgep10724, %._crit_edge9709.loopexit ], [ %scevgep10717, %._crit_edge9709.loopexit9770 ] ; 2 uses
  %i.ler = add nuw nsw i32 %.127329716, 8         ; 3 uses
  %i.les = or disjoint i32 %i.ler, 7
  %i.let = icmp slt i32 %i.les, %i.kwl
  br i1 %i.let, label %.noexc3405, label %._crit_edge9717, !llvm.loop !340

.lr.ph9708.split:                                 ; preds = %.lr.ph9708.split.preheader, %.lr.ph9708.split
  %indvars.iv10714 = phi i64 [ %indvars.iv.next10715.1, %.lr.ph9708.split ], [ 0, %.lr.ph9708.split.preheader ] ; 3 uses
  %.327389706 = phi ptr [ %i.lfq, %.lr.ph9708.split ], [ %.227379715, %.lr.ph9708.split.preheader ] ; 3 uses
  %.19705 = phi <4 x i32> [ %i.lfp, %.lr.ph9708.split ], [ %i.lcz, %.lr.ph9708.split.preheader ]
  %niter12305 = phi i64 [ %niter12305.next.1, %.lr.ph9708.split ], [ 0, %.lr.ph9708.split.preheader ]
  %i.leu = getelementptr inbounds nuw [4 x i8], ptr %i.lcr, i64 %indvars.iv10714
  %i.lev = load i32, ptr %i.leu, align 4, !tbaa !9
  %i.lew = sext i32 %i.lev to i64
  %i.lex = getelementptr inbounds i8, ptr %gep9725, i64 %i.lew
  %i.ley = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lex, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.lez = trunc <8 x i32> %i.ley to <8 x i8>
  %i.lfa = sext <8 x i8> %i.lez to <8 x i16>
  %i.lfb = load <8 x i8>, ptr %.327389706, align 1, !tbaa !44
  %i.lfc = sext <8 x i8> %i.lfb to <8 x i16>
  %i.lfd = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.19705, <8 x i16> %i.lfa, <8 x i16> %i.lfc)
  %i.lfe = getelementptr inbounds nuw i8, ptr %.327389706, i64 8
  %i.lff = getelementptr inbounds nuw [4 x i8], ptr %i.lcr, i64 %indvars.iv10714
  %i.lfg = getelementptr inbounds nuw i8, ptr %i.lff, i64 4
  %i.lfh = load i32, ptr %i.lfg, align 4, !tbaa !9
  %i.lfi = sext i32 %i.lfh to i64
  %i.lfj = getelementptr inbounds i8, ptr %gep9725, i64 %i.lfi
  %i.lfk = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lfj, <8 x i32> %i.dok, <8 x i32> splat (i32 -1), i8 1)
  %i.lfl = trunc <8 x i32> %i.lfk to <8 x i8>
  %i.lfm = sext <8 x i8> %i.lfl to <8 x i16>
  %i.lfn = load <8 x i8>, ptr %i.lfe, align 1, !tbaa !44
  %i.lfo = sext <8 x i8> %i.lfn to <8 x i16>
  %i.lfp = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.lfd, <8 x i16> %i.lfm, <8 x i16> %i.lfo) ; 3 uses
  %i.lfq = getelementptr inbounds nuw i8, ptr %.327389706, i64 16 ; 2 uses
  %indvars.iv.next10715.1 = add nuw nsw i64 %indvars.iv10714, 2 ; 2 uses
  %niter12305.next.1 = add i64 %niter12305, 2     ; 2 uses
  %niter12305.ncmp.1 = icmp eq i64 %niter12305.next.1, %unroll_iter12304
  br i1 %niter12305.ncmp.1, label %._crit_edge9709.loopexit9770.unr-lcssa, label %.lr.ph9708.split, !llvm.loop !339

._crit_edge9717:                                  ; preds = %._crit_edge9709, %._crit_edge9685
  %67 = phi <4 x i32> [ zeroinitializer, %._crit_edge9685 ], [ %i.leq, %._crit_edge9709 ] ; 2 uses
  %.22737.lcssa = phi ptr [ %.02735.lcssa, %._crit_edge9685 ], [ %.32738.lcssa, %._crit_edge9709 ] ; 3 uses
  %.12732.lcssa = phi i32 [ %.02731.lcssa, %._crit_edge9685 ], [ %i.ler, %._crit_edge9709 ] ; 6 uses
  %68 = shufflevector <4 x i32> %67, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %69 = add <4 x i32> %68, %67                    ; 2 uses
  %70 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %71 = add <4 x i32> %70, %69
  %72 = extractelement <4 x i32> %71, i64 0
  %i.lfr = add nsw i32 %72, %66                   ; 3 uses
  %i.lfs = or disjoint i32 %.12732.lcssa, 1
  %i.lft = icmp slt i32 %i.lfs, %i.kwl
  br i1 %i.lft, label %.noexc3403.lr.ph, label %.preheader

.noexc3403.lr.ph:                                 ; preds = %._crit_edge9717
  %i.lfu = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !341
  %i.lfv = load ptr, ptr %0, align 8, !tbaa !32, !noalias !341
  %i.lfw = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !341
  %i.lfx = load i64, ptr %i.dod, align 8, !tbaa !36, !noalias !341 ; 2 uses
  %factor.op.mul9739 = mul i64 %i.lfw, %i.lfx
  %i.lfy = sext i32 %i.lfu to i64
  %i.lfz = load i32, ptr %i.b, align 4, !tbaa !9
  %i.lga = mul nsw i32 %i.lfz, %i.kwj
  %i.lgb = sext i32 %i.lga to i64
  %i.lgc = mul i64 %i.lfx, %i.lfy
  %i.lgd = mul i64 %i.lgc, %i.lgb
  %invariant.gep9741 = getelementptr i8, ptr %i.lfv, i64 %i.lgd
  %i.lge = load i32, ptr %i.a, align 4, !tbaa !9
  %i.lgf = mul nsw i32 %i.lge, %i.kwk
  %i.lgg = sext i32 %i.lgf to i64
  %invariant.gep9742 = getelementptr i8, ptr %invariant.gep9741, i64 %i.lgg
  %i.lgh = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.lgi = icmp sgt i32 %i.lgh, 0
  %i.lgj = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.lgi, label %.noexc3403.us.preheader, label %.noexc3403.preheader

.noexc3403.preheader:                             ; preds = %.noexc3403.lr.ph
  %i.lgk = add nuw i32 %.12732.lcssa, 2
  %i.lgl = add nuw i32 %.12732.lcssa, 3
  %smax10728 = call i32 @llvm.smax.i32(i32 %i.kwl, i32 %i.lgl)
  %i.lgm = add nsw i32 %smax10728, -2
  %i.lgn = sub nsw i32 %i.lgm, %.12732.lcssa
  %i.lgo = and i32 %i.lgn, -2
  %i.lgp = add i32 %i.lgk, %i.lgo
  br label %.preheader

.noexc3403.us.preheader:                          ; preds = %.noexc3403.lr.ph
  %i.lgq = add nsw i32 %i.lgh, -1
  %i.lgr = zext nneg i32 %i.lgq to i64
  %i.lgs = shl nuw nsw i64 %i.lgr, 1
  %i.lgt = zext nneg i32 %.12732.lcssa to i64
  %wide.trip.count10734 = zext nneg i32 %i.lgh to i64 ; 6 uses
  %min.iters.check11659 = icmp ult i32 %i.lgh, 8
  %min.iters.check11661 = icmp ult i32 %i.lgh, 32
  %i.lgu = and i64 %wide.trip.count10734, 24
  %n.vec11663 = and i64 %wide.trip.count10734, 2147483616 ; 5 uses
  %i.lgv = shl nuw nsw i64 %n.vec11663, 1
  %cmp.n11681 = icmp eq i64 %n.vec11663, %wide.trip.count10734
  %min.epilog.iters.check11687 = icmp eq i64 %i.lgu, 0
  %n.vec11689 = and i64 %wide.trip.count10734, 2147483640 ; 4 uses
  %i.lgw = shl nuw nsw i64 %n.vec11689, 1
  %cmp.n11700 = icmp eq i64 %n.vec11689, %wide.trip.count10734
  br label %iter.check11684

iter.check11684:                                  ; preds = %.noexc3403.us.preheader, %._crit_edge9730.us
  %indvars.iv10736 = phi i64 [ %i.lgt, %.noexc3403.us.preheader ], [ %indvars.iv.next10737, %._crit_edge9730.us ] ; 2 uses
  %.427399734.us = phi ptr [ %.22737.lcssa, %.noexc3403.us.preheader ], [ %scevgep10732, %._crit_edge9730.us ] ; 7 uses
  %.027439733.us = phi i32 [ %i.lfr, %.noexc3403.us.preheader ], [ %.lcssa11169, %._crit_edge9730.us ] ; 3 uses
  %.reass9740.us = mul i64 %factor.op.mul9739, %indvars.iv10736
  %gep9743.us = getelementptr i8, ptr %invariant.gep9742, i64 %.reass9740.us ; 41 uses
  br i1 %min.iters.check11659, label %vec.epilog.scalar.ph11685.preheader, label %vector.main.loop.iter.check11660

vector.main.loop.iter.check11660:                 ; preds = %iter.check11684
  br i1 %min.iters.check11661, label %vec.epilog.ph11688, label %vector.ph11662

vector.ph11662:                                   ; preds = %vector.main.loop.iter.check11660
  %i.lgx = getelementptr i8, ptr %.427399734.us, i64 %i.lgv
  %i.lgy = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.027439733.us, i64 0
  br label %vector.body11664

vector.body11664:                                 ; preds = %vector.body11664, %vector.ph11662
  %index11665 = phi i64 [ 0, %vector.ph11662 ], [ %index.next11678, %vector.body11664 ] ; 3 uses
  %vec.phi11666 = phi <16 x i32> [ %i.lgy, %vector.ph11662 ], [ %i.lqj, %vector.body11664 ]
  %vec.phi11667 = phi <16 x i32> [ zeroinitializer, %vector.ph11662 ], [ %i.lqk, %vector.body11664 ]
  %i.lgz = shl i64 %index11665, 1                 ; 2 uses
  %next.gep11668 = getelementptr i8, ptr %.427399734.us, i64 %i.lgz
  %i.lha = getelementptr i8, ptr %.427399734.us, i64 %i.lgz
  %next.gep11669 = getelementptr i8, ptr %i.lha, i64 32
  %i.lhb = getelementptr inbounds nuw [4 x i8], ptr %i.lgj, i64 %index11665 ; 2 uses
  %i.lhc = getelementptr inbounds nuw i8, ptr %i.lhb, i64 64
  %wide.load11670 = load <16 x i32>, ptr %i.lhb, align 4, !tbaa !9
  %wide.load11671 = load <16 x i32>, ptr %i.lhc, align 4, !tbaa !9
  %i.lhd = sext <16 x i32> %wide.load11670 to <16 x i64> ; 16 uses
  %i.lhe = sext <16 x i32> %wide.load11671 to <16 x i64> ; 16 uses
  %i.lhf = extractelement <16 x i64> %i.lhd, i64 0
  %i.lhg = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhf ; 2 uses
  %i.lhh = extractelement <16 x i64> %i.lhd, i64 1
  %i.lhi = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhh ; 2 uses
  %i.lhj = extractelement <16 x i64> %i.lhd, i64 2
  %i.lhk = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhj ; 2 uses
  %i.lhl = extractelement <16 x i64> %i.lhd, i64 3
  %i.lhm = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhl ; 2 uses
  %i.lhn = extractelement <16 x i64> %i.lhd, i64 4
  %i.lho = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhn ; 2 uses
  %i.lhp = extractelement <16 x i64> %i.lhd, i64 5
  %i.lhq = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhp ; 2 uses
  %i.lhr = extractelement <16 x i64> %i.lhd, i64 6
  %i.lhs = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhr ; 2 uses
  %i.lht = extractelement <16 x i64> %i.lhd, i64 7
  %i.lhu = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lht ; 2 uses
  %i.lhv = extractelement <16 x i64> %i.lhd, i64 8
  %i.lhw = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhv ; 2 uses
  %i.lhx = extractelement <16 x i64> %i.lhd, i64 9
  %i.lhy = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhx ; 2 uses
  %i.lhz = extractelement <16 x i64> %i.lhd, i64 10
  %i.lia = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lhz ; 2 uses
  %i.lib = extractelement <16 x i64> %i.lhd, i64 11
  %i.lic = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lib ; 2 uses
  %i.lid = extractelement <16 x i64> %i.lhd, i64 12
  %i.lie = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lid ; 2 uses
  %i.lif = extractelement <16 x i64> %i.lhd, i64 13
  %i.lig = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lif ; 2 uses
  %i.lih = extractelement <16 x i64> %i.lhd, i64 14
  %i.lii = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lih ; 2 uses
  %i.lij = extractelement <16 x i64> %i.lhd, i64 15
  %i.lik = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lij ; 2 uses
  %i.lil = extractelement <16 x i64> %i.lhe, i64 0
  %i.lim = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lil ; 2 uses
  %i.lin = extractelement <16 x i64> %i.lhe, i64 1
  %i.lio = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lin ; 2 uses
  %i.lip = extractelement <16 x i64> %i.lhe, i64 2
  %i.liq = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lip ; 2 uses
  %i.lir = extractelement <16 x i64> %i.lhe, i64 3
  %i.lis = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lir ; 2 uses
  %i.lit = extractelement <16 x i64> %i.lhe, i64 4
  %i.liu = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lit ; 2 uses
  %i.liv = extractelement <16 x i64> %i.lhe, i64 5
  %i.liw = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.liv ; 2 uses
  %i.lix = extractelement <16 x i64> %i.lhe, i64 6
  %i.liy = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.lix ; 2 uses
  %i.liz = extractelement <16 x i64> %i.lhe, i64 7
  %i.lja = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.liz ; 2 uses
  %i.ljb = extractelement <16 x i64> %i.lhe, i64 8
  %i.ljc = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljb ; 2 uses
  %i.ljd = extractelement <16 x i64> %i.lhe, i64 9
  %i.lje = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljd ; 2 uses
  %i.ljf = extractelement <16 x i64> %i.lhe, i64 10
  %i.ljg = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljf ; 2 uses
  %i.ljh = extractelement <16 x i64> %i.lhe, i64 11
  %i.lji = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljh ; 2 uses
  %i.ljj = extractelement <16 x i64> %i.lhe, i64 12
  %i.ljk = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljj ; 2 uses
  %i.ljl = extractelement <16 x i64> %i.lhe, i64 13
  %i.ljm = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljl ; 2 uses
  %i.ljn = extractelement <16 x i64> %i.lhe, i64 14
  %i.ljo = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljn ; 2 uses
  %i.ljp = extractelement <16 x i64> %i.lhe, i64 15
  %i.ljq = getelementptr inbounds i8, ptr %gep9743.us, i64 %i.ljp ; 2 uses
  %i.ljr = load i8, ptr %i.lhg, align 1, !tbaa !44
  %i.ljs = load i8, ptr %i.lhi, align 1, !tbaa !44
  %i.ljt = load i8, ptr %i.lhk, align 1, !tbaa !44
  %i.lju = load i8, ptr %i.lhm, align 1, !tbaa !44
  %i.ljv = load i8, ptr %i.lho, align 1, !tbaa !44
  %i.ljw = load i8, ptr %i.lhq, align 1, !tbaa !44
  %i.ljx = load i8, ptr %i.lhs, align 1, !tbaa !44
  %i.ljy = load i8, ptr %i.lhu, align 1, !tbaa !44
  %i.ljz = load i8, ptr %i.lhw, align 1, !tbaa !44
  %i.lka = load i8, ptr %i.lhy, align 1, !tbaa !44
  %i.lkb = load i8, ptr %i.lia, align 1, !tbaa !44
  %i.lkc = load i8, ptr %i.lic, align 1, !tbaa !44
  %i.lkd = load i8, ptr %i.lie, align 1, !tbaa !44
  %i.lke = load i8, ptr %i.lig, align 1, !tbaa !44
  %i.lkf = load i8, ptr %i.lii, align 1, !tbaa !44
  %i.lkg = load i8, ptr %i.lik, align 1, !tbaa !44
  %i.lkh = insertelement <16 x i8> poison, i8 %i.ljr, i64 0
  %i.lki = insertelement <16 x i8> %i.lkh, i8 %i.ljs, i64 1
  %i.lkj = insertelement <16 x i8> %i.lki, i8 %i.ljt, i64 2
  %i.lkk = insertelement <16 x i8> %i.lkj, i8 %i.lju, i64 3
  %i.lkl = insertelement <16 x i8> %i.lkk, i8 %i.ljv, i64 4
  %i.lkm = insertelement <16 x i8> %i.lkl, i8 %i.ljw, i64 5
  %i.lkn = insertelement <16 x i8> %i.lkm, i8 %i.ljx, i64 6
  %i.lko = insertelement <16 x i8> %i.lkn, i8 %i.ljy, i64 7
  %i.lkp = insertelement <16 x i8> %i.lko, i8 %i.ljz, i64 8
  %i.lkq = insertelement <16 x i8> %i.lkp, i8 %i.lka, i64 9
  %i.lkr = insertelement <16 x i8> %i.lkq, i8 %i.lkb, i64 10
  %i.lks = insertelement <16 x i8> %i.lkr, i8 %i.lkc, i64 11
  %i.lkt = insertelement <16 x i8> %i.lks, i8 %i.lkd, i64 12
  %i.lku = insertelement <16 x i8> %i.lkt, i8 %i.lke, i64 13
  %i.lkv = insertelement <16 x i8> %i.lku, i8 %i.lkf, i64 14
  %i.lkw = insertelement <16 x i8> %i.lkv, i8 %i.lkg, i64 15
  %i.lkx = load i8, ptr %i.lim, align 1, !tbaa !44
  %i.lky = load i8, ptr %i.lio, align 1, !tbaa !44
  %i.lkz = load i8, ptr %i.liq, align 1, !tbaa !44
  %i.lla = load i8, ptr %i.lis, align 1, !tbaa !44
  %i.llb = load i8, ptr %i.liu, align 1, !tbaa !44
  %i.llc = load i8, ptr %i.liw, align 1, !tbaa !44
  %i.lld = load i8, ptr %i.liy, align 1, !tbaa !44
  %i.lle = load i8, ptr %i.lja, align 1, !tbaa !44
  %i.llf = load i8, ptr %i.ljc, align 1, !tbaa !44
  %i.llg = load i8, ptr %i.lje, align 1, !tbaa !44
  %i.llh = load i8, ptr %i.ljg, align 1, !tbaa !44
  %i.lli = load i8, ptr %i.lji, align 1, !tbaa !44
  %i.llj = load i8, ptr %i.ljk, align 1, !tbaa !44
  %i.llk = load i8, ptr %i.ljm, align 1, !tbaa !44
  %i.lll = load i8, ptr %i.ljo, align 1, !tbaa !44
  %i.llm = load i8, ptr %i.ljq, align 1, !tbaa !44
  %i.lln = insertelement <16 x i8> poison, i8 %i.lkx, i64 0
  %i.llo = insertelement <16 x i8> %i.lln, i8 %i.lky, i64 1
  %i.llp = insertelement <16 x i8> %i.llo, i8 %i.lkz, i64 2
  %i.llq = insertelement <16 x i8> %i.llp, i8 %i.lla, i64 3
end_hunk_5
