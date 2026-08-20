inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.ery = getelementptr inbounds nuw i8, ptr %i.ero, i64 %i.erx
  %i.erz = getelementptr inbounds nuw i8, ptr %i.ery, i64 %.pre-phi8629
  %i.esa = getelementptr inbounds [2 x i8], ptr %i.erz, i64 %i.eru
  %i.esb = mul i64 %i.ern, %i.eok
  %i.esc = mul i64 %i.esb, %i.erm
  %i.esd = getelementptr inbounds nuw i8, ptr %i.ero, i64 %i.esc
  %i.ese = getelementptr inbounds nuw i8, ptr %i.esd, i64 %.pre-phi8629
  %i.esf = getelementptr inbounds [2 x i8], ptr %i.ese, i64 %i.eru
  %i.esg = mul i64 %i.ern, %i.eol
  %i.esh = mul i64 %i.esg, %i.erm
  %i.esi = getelementptr inbounds nuw i8, ptr %i.ero, i64 %i.esh
  %i.esj = getelementptr inbounds nuw i8, ptr %i.esi, i64 %.pre-phi8629
  %i.esk = getelementptr inbounds [2 x i8], ptr %i.esj, i64 %i.eru
  %i.esl = load i64, ptr %i.erv, align 1, !tbaa !34
  %i.esm = insertelement <2 x i64> poison, i64 %i.esl, i64 0
  %i.esn = bitcast <2 x i64> %i.esm to <8 x i16>
  %i.eso = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esp = bitcast <8 x i16> %i.eso to <4 x float>
  %i.esq = load i64, ptr %i.esa, align 1, !tbaa !34
  %i.esr = insertelement <2 x i64> poison, i64 %i.esq, i64 0
  %i.ess = bitcast <2 x i64> %i.esr to <8 x i16>
  %i.est = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ess, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esu = bitcast <8 x i16> %i.est to <4 x float>
  %i.esv = load i64, ptr %i.esf, align 1, !tbaa !34
  %i.esw = insertelement <2 x i64> poison, i64 %i.esv, i64 0
  %i.esx = bitcast <2 x i64> %i.esw to <8 x i16>
  %i.esy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esz = bitcast <8 x i16> %i.esy to <4 x float>
  %i.eta = load i64, ptr %i.esk, align 1, !tbaa !34
  %i.etb = insertelement <2 x i64> poison, i64 %i.eta, i64 0
  %i.etc = bitcast <2 x i64> %i.etb to <8 x i16>
  %i.etd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.etc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ete = bitcast <8 x i16> %i.etd to <4 x float>
  %i.etf = shufflevector <4 x float> %i.esp, <4 x float> %i.esu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.etg = shufflevector <4 x float> %i.esz, <4 x float> %i.ete, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eth = shufflevector <16 x float> %i.etf, <16 x float> %i.etg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.eti = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eth, <16 x float> nofpclass(nan inf) %.pre-phi8631, <16 x float> nofpclass(nan inf) %.46650.us.us.us) ; 2 uses
  %i.etj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eth, <16 x float> nofpclass(nan inf) %.pre-phi8633, <16 x float> nofpclass(nan inf) %.46642.us.us.us) ; 2 uses
  br i1 %i.bpc, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, label %bb.bt

_ZN4ncnn3MatD2Ev.exit2227.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8639 = phi i64 [ %.pre8638, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %.pre-phi8629, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.pre-phi8619, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqc, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.etk = phi i64 [ %.pre8578, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.erm, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqq, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epx, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.etl = phi i64 [ %.pre8577, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.ern, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqr, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epv, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.etm = phi ptr [ %.pre8576, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.ero, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqs, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epu, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56651.us.us.us = phi nsz <16 x float> [ %.266487515.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.eti, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.erk, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eql, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56643.us.us.us = phi nsz <16 x float> [ %.266407516.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.etj, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.erl, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqp, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %factor.op.mul.us.us.us = mul i64 %i.etl, %i.etk ; 16 uses
  %invariant.gep.us.us.us = getelementptr i8, ptr %i.etm, i64 %.pre-phi8639
  %i.etn = sext i32 %i.epo to i64
  %invariant.gep7512.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us, i64 %i.etn ; 16 uses
  %.reass.us.us7540.us = mul i64 %factor.op.mul.us.us.us, %indvars.iv8366
  %gep7513.us.us.us = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us
  %i.eto = load i16, ptr %gep7513.us.us.us, align 2, !tbaa !43
  %.reass.us.us7540.us.1 = mul i64 %factor.op.mul.us.us.us, %i.eom
  %gep7513.us.us.us.1 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.1
  %i.etp = load i16, ptr %gep7513.us.us.us.1, align 2, !tbaa !43
  %.reass.us.us7540.us.2 = mul i64 %factor.op.mul.us.us.us, %i.eon
  %gep7513.us.us.us.2 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.2
  %i.etq = load i16, ptr %gep7513.us.us.us.2, align 2, !tbaa !43
  %.reass.us.us7540.us.3 = mul i64 %factor.op.mul.us.us.us, %i.eoo
  %gep7513.us.us.us.3 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.3
  %i.etr = load i16, ptr %gep7513.us.us.us.3, align 2, !tbaa !43
  %.reass.us.us7540.us.4 = mul i64 %factor.op.mul.us.us.us, %i.eop
  %gep7513.us.us.us.4 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.4
  %i.ets = load i16, ptr %gep7513.us.us.us.4, align 2, !tbaa !43
  %.reass.us.us7540.us.5 = mul i64 %factor.op.mul.us.us.us, %i.eoq
  %gep7513.us.us.us.5 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.5
  %i.ett = load i16, ptr %gep7513.us.us.us.5, align 2, !tbaa !43
  %.reass.us.us7540.us.6 = mul i64 %factor.op.mul.us.us.us, %i.eor
  %gep7513.us.us.us.6 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.6
  %i.etu = load i16, ptr %gep7513.us.us.us.6, align 2, !tbaa !43
  %.reass.us.us7540.us.7 = mul i64 %factor.op.mul.us.us.us, %i.eos
  %gep7513.us.us.us.7 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.7
  %i.etv = load i16, ptr %gep7513.us.us.us.7, align 2, !tbaa !43
  %.reass.us.us7540.us.8 = mul i64 %factor.op.mul.us.us.us, %i.eot
  %gep7513.us.us.us.8 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.8
  %i.etw = load i16, ptr %gep7513.us.us.us.8, align 2, !tbaa !43
  %.reass.us.us7540.us.9 = mul i64 %factor.op.mul.us.us.us, %i.eou
  %gep7513.us.us.us.9 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.9
  %i.etx = load i16, ptr %gep7513.us.us.us.9, align 2, !tbaa !43
  %.reass.us.us7540.us.10 = mul i64 %factor.op.mul.us.us.us, %i.eov
  %gep7513.us.us.us.10 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.10
  %i.ety = load i16, ptr %gep7513.us.us.us.10, align 2, !tbaa !43
  %.reass.us.us7540.us.11 = mul i64 %factor.op.mul.us.us.us, %i.eow
  %gep7513.us.us.us.11 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.11
  %i.etz = load i16, ptr %gep7513.us.us.us.11, align 2, !tbaa !43
  %.reass.us.us7540.us.12 = mul i64 %factor.op.mul.us.us.us, %i.eox
  %gep7513.us.us.us.12 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.12
  %i.eua = load i16, ptr %gep7513.us.us.us.12, align 2, !tbaa !43
  %.reass.us.us7540.us.13 = mul i64 %factor.op.mul.us.us.us, %i.eoy
  %gep7513.us.us.us.13 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.13
  %i.eub = load i16, ptr %gep7513.us.us.us.13, align 2, !tbaa !43
  %.reass.us.us7540.us.14 = mul i64 %factor.op.mul.us.us.us, %i.eoz
  %gep7513.us.us.us.14 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.14
  %i.euc = load i16, ptr %gep7513.us.us.us.14, align 2, !tbaa !43
  %.reass.us.us7540.us.15 = mul i64 %factor.op.mul.us.us.us, %i.epa
  %gep7513.us.us.us.15 = getelementptr i8, ptr %invariant.gep7512.us.us.us, i64 %.reass.us.us7540.us.15
  %i.eud = load i16, ptr %gep7513.us.us.us.15, align 2, !tbaa !43
  %i.eue = insertelement <16 x i16> poison, i16 %i.eto, i64 0
  %i.euf = insertelement <16 x i16> %i.eue, i16 %i.etp, i64 1
  %i.eug = insertelement <16 x i16> %i.euf, i16 %i.etq, i64 2
  %i.euh = insertelement <16 x i16> %i.eug, i16 %i.etr, i64 3
  %i.eui = insertelement <16 x i16> %i.euh, i16 %i.ets, i64 4
  %i.euj = insertelement <16 x i16> %i.eui, i16 %i.ett, i64 5
  %i.euk = insertelement <16 x i16> %i.euj, i16 %i.etu, i64 6
  %i.eul = insertelement <16 x i16> %i.euk, i16 %i.etv, i64 7
  %i.eum = insertelement <16 x i16> %i.eul, i16 %i.etw, i64 8
  %i.eun = insertelement <16 x i16> %i.eum, i16 %i.etx, i64 9
  %i.euo = insertelement <16 x i16> %i.eun, i16 %i.ety, i64 10
  %i.eup = insertelement <16 x i16> %i.euo, i16 %i.etz, i64 11
  %i.euq = insertelement <16 x i16> %i.eup, i16 %i.eua, i64 12
  %i.eur = insertelement <16 x i16> %i.euq, i16 %i.eub, i64 13
  %i.eus = insertelement <16 x i16> %i.eur, i16 %i.euc, i64 14
  %i.eut = insertelement <16 x i16> %i.eus, i16 %i.eud, i64 15
  %i.euu = zext <16 x i16> %i.eut to <16 x i32>
  %i.euv = shl nuw <16 x i32> %i.euu, splat (i32 16)
  %.sroa.08561.60.vec.insert = bitcast <16 x i32> %i.euv to <16 x float> ; 2 uses
  %i.euw = load <16 x bfloat>, ptr %i.eps, align 32, !tbaa !34
  %i.eux = fpext fast <16 x bfloat> %i.euw to <16 x float>
  %i.euy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08561.60.vec.insert, <16 x float> nofpclass(nan inf) %i.eux, <16 x float> nofpclass(nan inf) %.56651.us.us.us)
  %i.euz = getelementptr inbounds nuw i8, ptr %i.eps, i64 32
  %i.eva = load <16 x bfloat>, ptr %i.euz, align 32, !tbaa !34
  %i.evb = fpext fast <16 x bfloat> %i.eva to <16 x float>
  %i.evc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08561.60.vec.insert, <16 x float> nofpclass(nan inf) %i.evb, <16 x float> nofpclass(nan inf) %.56643.us.us.us)
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us, %.split2196.us.us.us, %bb.bs, %.lr.ph.split.us.us.us7561
  %.66652.us.us.us = phi nsz <16 x float> [ %.266487515.us.us.us, %.lr.ph.split.us.us.us7561 ], [ %.266487515.us.us.us, %.split2196.us.us.us ], [ %i.eql, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.erk, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.euy, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.eti, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266487515.us.us.us, %bb.bs ] ; 2 uses
  %.66644.us.us.us = phi nsz <16 x float> [ %.266407516.us.us.us, %.lr.ph.split.us.us.us7561 ], [ %.266407516.us.us.us, %.split2196.us.us.us ], [ %i.eqp, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.erl, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.evc, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.etj, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266407516.us.us.us, %bb.bs ] ; 2 uses
  %indvars.iv.next8357 = add nuw nsw i64 %indvars.iv8356, 1 ; 2 uses
  %exitcond8360.not = icmp eq i64 %indvars.iv.next8357, %i.eoe
  br i1 %exitcond8360.not, label %..loopexit6884_crit_edge.us.us, label %.lr.ph.split.us.us.us7561, !llvm.loop !182

._crit_edge7550.loopexit:                         ; preds = %._crit_edge7529.us
  %i.evd = trunc nuw nsw i64 %indvars.iv.next8367 to i32
  br label %._crit_edge7550

._crit_edge7550:                                  ; preds = %.preheader6889.lr.ph, %._crit_edge7550.loopexit, %_ZN4ncnn3MatD2Ev.exit2235
  %.06646.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7541.us, %._crit_edge7550.loopexit ], [ zeroinitializer, %.preheader6889.lr.ph ] ; 2 uses
  %.06638.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7542.us, %._crit_edge7550.loopexit ], [ zeroinitializer, %.preheader6889.lr.ph ] ; 2 uses
  %.01894.lcssa = phi ptr [ %i.enf, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.epb, %._crit_edge7550.loopexit ], [ %scevgep8351, %.preheader6889.lr.ph ] ; 3 uses
  %.01889.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.evd, %._crit_edge7550.loopexit ], [ %i.bpn, %.preheader6889.lr.ph ] ; 6 uses
  %i.eve = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evf = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.evg = fadd fast <8 x float> %i.eve, %i.evf   ; 2 uses
  %i.evh = shufflevector <8 x float> %i.evg, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.evi = shufflevector <8 x float> %i.evg, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.evj = fadd fast <4 x float> %i.evh, %i.evi   ; 4 uses
  %i.evk = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evl = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.evm = fadd fast <8 x float> %i.evk, %i.evl   ; 2 uses
  %i.evn = shufflevector <8 x float> %i.evm, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.evo = shufflevector <8 x float> %i.evm, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.evp = fadd fast <4 x float> %i.evn, %i.evo   ; 4 uses
  %i.evq = or disjoint i32 %.01889.lcssa, 7
  %i.evr = icmp slt i32 %i.evq, %i.boh
  br i1 %i.evr, label %.preheader6888.lr.ph, label %._crit_edge7595

.preheader6888.lr.ph:                             ; preds = %._crit_edge7550
  %i.evs = load i32, ptr %i.j, align 4
  %invariant.op7583 = sub i32 %.neg6815, %i.evs
  %i.evt = load i32, ptr %i.f, align 4            ; 2 uses
  %i.evu = load i32, ptr %i.a, align 4
  %.fr8042 = freeze i32 %i.evu                    ; 2 uses
  %i.evv = icmp sgt i32 %.fr8042, 0
  %i.evw = load i32, ptr %i.i, align 4
  %.neg6813 = add nuw nsw i32 %.019317774, 1
  %invariant.op7574 = sub i32 %.neg6813, %i.evw
  %i.evx = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.enh, label %.preheader6888.us.preheader, label %.preheader6888.preheader

.preheader6888.preheader:                         ; preds = %.preheader6888.lr.ph
  %i.evy = add i32 %.01889.lcssa, 15
  %smax8369 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.evy)
  %i.evz = add i32 %smax8369, -8
  %i.ewa = sub i32 %i.evz, %.01889.lcssa          ; 2 uses
  %i.ewb = lshr i32 %i.ewa, 2
  %i.ewc = and i32 %i.ewb, 1073741822
  %narrow8755 = add nuw nsw i32 %i.ewc, 2
  %i.ewd = zext nneg i32 %narrow8755 to i64
  %i.ewe = mul nsw i64 %i.enm, %i.ewd
  %scevgep8370 = getelementptr i8, ptr %.01894.lcssa, i64 %i.ewe
  %i.ewf = add i32 %.01889.lcssa, 8
  %i.ewg = and i32 %i.ewa, -8
  %i.ewh = add i32 %i.ewf, %i.ewg
  br label %._crit_edge7595

.preheader6888.us.preheader:                      ; preds = %.preheader6888.lr.ph
  %i.ewi = load i32, ptr %i.c, align 4
  %i.ewj = load i32, ptr %i.d, align 4
  %i.ewk = zext i32 %.fr8042 to i64               ; 2 uses
  %i.ewl = zext i32 %.01889.lcssa to i64
  br label %.preheader6888.us

.preheader6888.us:                                ; preds = %.preheader6888.us.preheader, %._crit_edge7580.us
  %indvars.iv8385 = phi i64 [ %i.ewl, %.preheader6888.us.preheader ], [ %indvars.iv.next8386, %._crit_edge7580.us ] ; 11 uses
  %.118957591.us = phi ptr [ %.01894.lcssa, %.preheader6888.us.preheader ], [ %i.ewu, %._crit_edge7580.us ] ; 2 uses
  %.066287590.us = phi <8 x float> [ zeroinitializer, %.preheader6888.us.preheader ], [ %.us-phi7587.us, %._crit_edge7580.us ] ; 2 uses
  %.066337589.us = phi <8 x float> [ zeroinitializer, %.preheader6888.us.preheader ], [ %.us-phi7586.us, %._crit_edge7580.us ] ; 2 uses
  %13 = lshr exact i64 %indvars.iv8385, 2         ; 2 uses
  %14 = or disjoint i64 %13, 1
  %i.ewm = lshr exact i64 %indvars.iv8385, 3
  br i1 %i.evv, label %.lr.ph7579.split.us.us.preheader, label %._crit_edge7580.us

.lr.ph7579.split.us.us.preheader:                 ; preds = %.preheader6888.us
  %i.ewn = or disjoint i64 %indvars.iv8385, 1
  %i.ewo = or disjoint i64 %indvars.iv8385, 2
  %i.ewp = or disjoint i64 %indvars.iv8385, 3
  %i.ewq = or disjoint i64 %indvars.iv8385, 4
  %i.ewr = or disjoint i64 %indvars.iv8385, 5
  %i.ews = or disjoint i64 %indvars.iv8385, 6
  %i.ewt = or disjoint i64 %indvars.iv8385, 7
  br label %.lr.ph7579.split.us.us

._crit_edge7580.us:                               ; preds = %..loopexit6882_crit_edge.us.us, %.preheader6888.us
  %.us-phi7586.us = phi <8 x float> [ %.066337589.us, %.preheader6888.us ], [ %.46637.us.us, %..loopexit6882_crit_edge.us.us ] ; 2 uses
  %.us-phi7587.us = phi <8 x float> [ %.066287590.us, %.preheader6888.us ], [ %.46632.us.us, %..loopexit6882_crit_edge.us.us ] ; 2 uses
  %i.ewu = getelementptr inbounds [2 x i8], ptr %.118957591.us, i64 %i.enm ; 2 uses
  %indvars.iv.next8386 = add nuw nsw i64 %indvars.iv8385, 8 ; 3 uses
  %i.ewv = trunc i64 %indvars.iv.next8386 to i32
  %i.eww = or i32 %i.ewv, 7
  %i.ewx = icmp slt i32 %i.eww, %i.boh
  br i1 %i.ewx, label %.preheader6888.us, label %._crit_edge7595.loopexit, !llvm.loop !183

.lr.ph7579.split.us.us:                           ; preds = %.lr.ph7579.split.us.us.preheader, %..loopexit6882_crit_edge.us.us
  %indvars.iv8380 = phi i64 [ 0, %.lr.ph7579.split.us.us.preheader ], [ %indvars.iv.next8381, %..loopexit6882_crit_edge.us.us ] ; 3 uses
  %.166297577.us.us = phi <8 x float> [ %.066287590.us, %.lr.ph7579.split.us.us.preheader ], [ %.46632.us.us, %..loopexit6882_crit_edge.us.us ] ; 3 uses
  %.166347576.us.us = phi <8 x float> [ %.066337589.us, %.lr.ph7579.split.us.us.preheader ], [ %.46637.us.us, %..loopexit6882_crit_edge.us.us ] ; 3 uses
  %i.ewy = trunc i64 %indvars.iv8380 to i32
  %i.ewz = mul i32 %i.ewj, %i.ewy
  %.reass7584.us.us = add i32 %i.ewz, %invariant.op7583 ; 3 uses
  %i.exa = icmp slt i32 %.reass7584.us.us, 0
  br i1 %i.exa, label %..loopexit6882_crit_edge.us.us, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph7579.split.us.us
  %i.exb = srem i32 %.reass7584.us.us, %i.evt
  %i.exc = sdiv i32 %.reass7584.us.us, %i.evt     ; 2 uses
  %.not2123.us.us = icmp eq i32 %i.exb, 0
  %.not2124.us.us = icmp slt i32 %i.exc, %i.bol
  %or.cond9004 = select i1 %.not2123.us.us, i1 %.not2124.us.us, i1 false
  br i1 %or.cond9004, label %.preheader6881.us.us, label %..loopexit6882_crit_edge.us.us

bb.bv:                                            ; preds = %.preheader6881.us.us, %bb.by
  %indvars.iv8375 = phi i64 [ 0, %.preheader6881.us.us ], [ %indvars.iv.next8376, %bb.by ] ; 3 uses
  %.266307570.us.us = phi <8 x float> [ %.166297577.us.us, %.preheader6881.us.us ], [ %.36631.us.us, %bb.by ] ; 4 uses
  %.266357569.us.us = phi <8 x float> [ %.166347576.us.us, %.preheader6881.us.us ], [ %.36636.us.us, %bb.by ] ; 4 uses
  %i.exd = trunc i64 %indvars.iv8375 to i32
  %i.exe = mul i32 %i.ewi, %i.exd
  %.reass7575.us.us = add i32 %i.exe, %invariant.op7574 ; 3 uses
  %i.exf = icmp slt i32 %.reass7575.us.us, 0
  br i1 %i.exf, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.exg = srem i32 %.reass7575.us.us, %i.evx
  %i.exh = sdiv i32 %.reass7575.us.us, %i.evx     ; 4 uses
  %.not2125.us.us = icmp eq i32 %i.exg, 0
  %.not2126.us.us = icmp slt i32 %i.exh, %i.boj
  %or.cond9005 = select i1 %.not2125.us.us, i1 %.not2126.us.us, i1 false
  br i1 %or.cond9005, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.exi = add nuw nsw i64 %i.fam, %indvars.iv8375
  %i.exj = shl i64 %i.exi, 4
  %i.exk = and i64 %i.exj, 4294967280
  %i.exl = getelementptr inbounds nuw [2 x i8], ptr %.118957591.us, i64 %i.exk ; 2 uses
  switch i32 %.fr8040, label %bb.by [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2226.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2225.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2223.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2223.us.us:                  ; preds = %bb.bx
  %i.exm = load i32, ptr %i.boi, align 4, !tbaa !25, !noalias !184
  %i.exn = load ptr, ptr %0, align 8, !tbaa !19, !noalias !184
  %i.exo = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !184
  %i.exp = load i64, ptr %i.bpb, align 8, !tbaa !30, !noalias !184 ; 2 uses
  %factor.op.mul.us.us = mul i64 %i.exo, %i.exp   ; 8 uses
  %i.exq = sext i32 %i.exm to i64
  %i.exr = mul nsw i64 %i.exq, %i.fan
  %i.exs = mul i64 %i.exr, %i.exp
  %invariant.gep.us.us = getelementptr i8, ptr %i.exn, i64 %i.exs
  %i.ext = sext i32 %i.exh to i64
  %invariant.gep7566.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us, i64 %i.ext ; 8 uses
  %.reass.us7585.us = mul i64 %factor.op.mul.us.us, %indvars.iv8385
  %gep7567.us.us = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us
  %i.exu = load i16, ptr %gep7567.us.us, align 2, !tbaa !43
  %.reass.us7585.us.1 = mul i64 %factor.op.mul.us.us, %i.ewn
  %gep7567.us.us.1 = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us.1
  %i.exv = load i16, ptr %gep7567.us.us.1, align 2, !tbaa !43
  %.reass.us7585.us.2 = mul i64 %factor.op.mul.us.us, %i.ewo
  %gep7567.us.us.2 = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us.2
  %i.exw = load i16, ptr %gep7567.us.us.2, align 2, !tbaa !43
  %.reass.us7585.us.3 = mul i64 %factor.op.mul.us.us, %i.ewp
  %gep7567.us.us.3 = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us.3
  %i.exx = load i16, ptr %gep7567.us.us.3, align 2, !tbaa !43
  %.reass.us7585.us.4 = mul i64 %factor.op.mul.us.us, %i.ewq
  %gep7567.us.us.4 = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us.4
  %i.exy = load i16, ptr %gep7567.us.us.4, align 2, !tbaa !43
  %.reass.us7585.us.5 = mul i64 %factor.op.mul.us.us, %i.ewr
  %gep7567.us.us.5 = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us.5
  %i.exz = load i16, ptr %gep7567.us.us.5, align 2, !tbaa !43
  %.reass.us7585.us.6 = mul i64 %factor.op.mul.us.us, %i.ews
  %gep7567.us.us.6 = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us.6
  %i.eya = load i16, ptr %gep7567.us.us.6, align 2, !tbaa !43
  %.reass.us7585.us.7 = mul i64 %factor.op.mul.us.us, %i.ewt
  %gep7567.us.us.7 = getelementptr i8, ptr %invariant.gep7566.us.us, i64 %.reass.us7585.us.7
  %i.eyb = load i16, ptr %gep7567.us.us.7, align 2, !tbaa !43
  %i.eyc = insertelement <8 x i16> poison, i16 %i.exu, i64 0
  %i.eyd = insertelement <8 x i16> %i.eyc, i16 %i.exv, i64 1
  %i.eye = insertelement <8 x i16> %i.eyd, i16 %i.exw, i64 2
  %i.eyf = insertelement <8 x i16> %i.eye, i16 %i.exx, i64 3
  %i.eyg = insertelement <8 x i16> %i.eyf, i16 %i.exy, i64 4
  %i.eyh = insertelement <8 x i16> %i.eyg, i16 %i.exz, i64 5
  %i.eyi = insertelement <8 x i16> %i.eyh, i16 %i.eya, i64 6
  %i.eyj = insertelement <8 x i16> %i.eyi, i16 %i.eyb, i64 7
  %i.eyk = zext <8 x i16> %i.eyj to <8 x i32>
  %i.eyl = shl nuw <8 x i32> %i.eyk, splat (i32 16)
  %.sroa.08559.28.vec.insert = bitcast <8 x i32> %i.eyl to <8 x float>
  br label %.sink.split8893

_ZN4ncnn3MatD2Ev.exit2225.us.us:                  ; preds = %bb.bx
  %i.eym = load i32, ptr %i.boi, align 4, !tbaa !25, !noalias !187
  %i.eyn = load ptr, ptr %0, align 8, !tbaa !19, !noalias !187 ; 2 uses
  %i.eyo = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !187 ; 2 uses
  %i.eyp = mul i64 %i.eyo, %13
  %i.eyq = load i64, ptr %i.bpb, align 8, !tbaa !30, !noalias !187 ; 3 uses
  %i.eyr = mul i64 %i.eyp, %i.eyq
  %i.eys = getelementptr inbounds nuw i8, ptr %i.eyn, i64 %i.eyr
  %i.eyt = sext i32 %i.eym to i64
  %i.eyu = mul nsw i64 %i.eyt, %i.fan
  %i.eyv = mul i64 %i.eyu, %i.eyq                 ; 2 uses
  %i.eyw = getelementptr inbounds nuw i8, ptr %i.eys, i64 %i.eyv
  %i.eyx = shl nsw i32 %i.exh, 2
  %i.eyy = sext i32 %i.eyx to i64                 ; 2 uses
  %i.eyz = getelementptr inbounds [2 x i8], ptr %i.eyw, i64 %i.eyy
  %i.eza = mul i64 %i.eyo, %14
  %i.ezb = mul i64 %i.eza, %i.eyq
  %i.ezc = getelementptr inbounds nuw i8, ptr %i.eyn, i64 %i.ezb
  %i.ezd = getelementptr inbounds nuw i8, ptr %i.ezc, i64 %i.eyv
  %i.eze = getelementptr inbounds [2 x i8], ptr %i.ezd, i64 %i.eyy
  %i.ezf = load i64, ptr %i.eyz, align 1, !tbaa !34
  %i.ezg = insertelement <2 x i64> poison, i64 %i.ezf, i64 0
  %i.ezh = bitcast <2 x i64> %i.ezg to <8 x i16>
  %i.ezi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezj = load i64, ptr %i.eze, align 1, !tbaa !34
  %i.ezk = insertelement <2 x i64> poison, i64 %i.ezj, i64 0
  %i.ezl = bitcast <2 x i64> %i.ezk to <8 x i16>
  %i.ezm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezn = shufflevector <8 x i16> %i.ezi, <8 x i16> %i.ezm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ezo = bitcast <16 x i16> %i.ezn to <8 x float>
  br label %.sink.split8893

_ZN4ncnn3MatD2Ev.exit2226.us.us:                  ; preds = %bb.bx
  %i.ezp = load i32, ptr %i.boi, align 4, !tbaa !25, !noalias !190
  %i.ezq = load ptr, ptr %0, align 8, !tbaa !19, !noalias !190
  %i.ezr = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !190
  %i.ezs = mul i64 %i.ezr, %i.ewm
  %i.ezt = load i64, ptr %i.bpb, align 8, !tbaa !30, !noalias !190 ; 2 uses
  %i.ezu = mul i64 %i.ezs, %i.ezt
  %i.ezv = getelementptr inbounds nuw i8, ptr %i.ezq, i64 %i.ezu
  %i.ezw = sext i32 %i.ezp to i64
  %i.ezx = mul nsw i64 %i.ezw, %i.fan
  %i.ezy = mul i64 %i.ezx, %i.ezt
  %i.ezz = getelementptr inbounds nuw i8, ptr %i.ezv, i64 %i.ezy
  %i.faa = shl nsw i32 %i.exh, 3
  %i.fab = sext i32 %i.faa to i64
  %i.fac = getelementptr inbounds [2 x i8], ptr %i.ezz, i64 %i.fab
  %i.fad = load <8 x bfloat>, ptr %i.fac, align 16, !tbaa !34
  %i.fae = fpext fast <8 x bfloat> %i.fad to <8 x float>
  br label %.sink.split8893

.sink.split8893:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2223.us.us, %_ZN4ncnn3MatD2Ev.exit2225.us.us, %_ZN4ncnn3MatD2Ev.exit2226.us.us
  %.sink8897 = phi <8 x float> [ %i.fae, %_ZN4ncnn3MatD2Ev.exit2226.us.us ], [ %i.ezo, %_ZN4ncnn3MatD2Ev.exit2225.us.us ], [ %.sroa.08559.28.vec.insert, %_ZN4ncnn3MatD2Ev.exit2223.us.us ] ; 2 uses
  %i.faf = load <8 x bfloat>, ptr %i.exl, align 16, !tbaa !34
  %i.fag = fpext fast <8 x bfloat> %i.faf to <8 x float>
  %i.fah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8897, <8 x float> nofpclass(nan inf) %i.fag, <8 x float> nofpclass(nan inf) %.266357569.us.us)
  %i.fai = getelementptr inbounds nuw i8, ptr %i.exl, i64 16
  %i.faj = load <8 x bfloat>, ptr %i.fai, align 16, !tbaa !34
  %i.fak = fpext fast <8 x bfloat> %i.faj to <8 x float>
  %i.fal = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8897, <8 x float> nofpclass(nan inf) %i.fak, <8 x float> nofpclass(nan inf) %.266307570.us.us)
  br label %bb.by

bb.by:                                            ; preds = %.sink.split8893, %bb.bx, %bb.bw, %bb.bv
  %.36636.us.us = phi nsz <8 x float> [ %.266357569.us.us, %bb.bv ], [ %.266357569.us.us, %bb.bx ], [ %.266357569.us.us, %bb.bw ], [ %i.fah, %.sink.split8893 ] ; 2 uses
  %.36631.us.us = phi nsz <8 x float> [ %.266307570.us.us, %bb.bv ], [ %.266307570.us.us, %bb.bx ], [ %.266307570.us.us, %bb.bw ], [ %i.fal, %.sink.split8893 ] ; 2 uses
  %indvars.iv.next8376 = add nuw nsw i64 %indvars.iv8375, 1 ; 2 uses
  %exitcond8379.not = icmp eq i64 %indvars.iv.next8376, %i.ewk
  br i1 %exitcond8379.not, label %..loopexit6882_crit_edge.us.us, label %bb.bv, !llvm.loop !193

..loopexit6882_crit_edge.us.us:                   ; preds = %bb.by, %bb.bu, %.lr.ph7579.split.us.us
  %.46637.us.us = phi nsz <8 x float> [ %.166347576.us.us, %.lr.ph7579.split.us.us ], [ %.166347576.us.us, %bb.bu ], [ %.36636.us.us, %bb.by ] ; 2 uses
  %.46632.us.us = phi nsz <8 x float> [ %.166297577.us.us, %.lr.ph7579.split.us.us ], [ %.166297577.us.us, %bb.bu ], [ %.36631.us.us, %bb.by ] ; 2 uses
  %indvars.iv.next8381 = add nuw nsw i64 %indvars.iv8380, 1 ; 2 uses
  %exitcond8384.not = icmp eq i64 %indvars.iv.next8381, %wide.trip.count8383
  br i1 %exitcond8384.not, label %._crit_edge7580.us, label %.lr.ph7579.split.us.us, !llvm.loop !194

.preheader6881.us.us:                             ; preds = %bb.bu
  %i.fam = mul nuw nsw i64 %indvars.iv8380, %i.ewk
  %i.fan = sext i32 %i.exc to i64                 ; 3 uses
  br label %bb.bv

._crit_edge7595.loopexit:                         ; preds = %._crit_edge7580.us
  %i.fao = trunc nuw i64 %indvars.iv.next8386 to i32
  br label %._crit_edge7595

._crit_edge7595:                                  ; preds = %.preheader6888.preheader, %._crit_edge7595.loopexit, %._crit_edge7550
  %.06633.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7550 ], [ %.us-phi7586.us, %._crit_edge7595.loopexit ], [ zeroinitializer, %.preheader6888.preheader ] ; 2 uses
  %.06628.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7550 ], [ %.us-phi7587.us, %._crit_edge7595.loopexit ], [ zeroinitializer, %.preheader6888.preheader ] ; 2 uses
  %.11895.lcssa = phi ptr [ %.01894.lcssa, %._crit_edge7550 ], [ %i.ewu, %._crit_edge7595.loopexit ], [ %scevgep8370, %.preheader6888.preheader ] ; 4 uses
  %.11890.lcssa = phi i32 [ %.01889.lcssa, %._crit_edge7550 ], [ %i.fao, %._crit_edge7595.loopexit ], [ %i.ewh, %.preheader6888.preheader ] ; 9 uses
  %i.fap = shufflevector <8 x float> %.06633.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.faq = shufflevector <8 x float> %.06633.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.far = fadd fast <4 x float> %i.fap, %i.faq   ; 4 uses
  %i.fas = shufflevector <8 x float> %.06628.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fat = shufflevector <8 x float> %.06628.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fau = fadd fast <4 x float> %i.fas, %i.fat   ; 4 uses
  %i.fav = or disjoint i32 %.11890.lcssa, 3
  %i.faw = icmp slt i32 %i.fav, %i.boh
  br i1 %i.faw, label %.preheader6887.lr.ph, label %._crit_edge7665

.preheader6887.lr.ph:                             ; preds = %._crit_edge7595
  %i.fax = load i32, ptr %i.d, align 4
  %i.fay = load i32, ptr %i.j, align 4
  %invariant.op7645 = sub i32 %.neg6815, %i.fay
  %i.faz = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fba = load i32, ptr %i.a, align 4
  %.fr8043 = freeze i32 %i.fba                    ; 2 uses
  %i.fbb = load i32, ptr %i.c, align 4            ; 2 uses
  %i.fbc = load i32, ptr %i.i, align 4
  %.neg6809 = add nuw nsw i32 %.019317774, 1
  %invariant.op7619 = sub i32 %.neg6809, %i.fbc   ; 2 uses
  %i.fbd = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.enh, label %.preheader6887.lr.ph.split.us, label %.preheader6887.preheader

.preheader6887.preheader:                         ; preds = %.preheader6887.lr.ph
  %i.fbe = add i32 %.11890.lcssa, 7
  %smax8388 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.fbe)
  %i.fbf = add i32 %smax8388, -4
  %i.fbg = sub i32 %i.fbf, %.11890.lcssa          ; 2 uses
  %i.fbh = lshr i32 %i.fbg, 1
  %i.fbi = and i32 %i.fbh, 2147483646
  %narrow8756 = add nuw i32 %i.fbi, 2
  %i.fbj = zext i32 %narrow8756 to i64
  %i.fbk = mul nsw i64 %i.eno, %i.fbj
  %scevgep8389 = getelementptr i8, ptr %.11895.lcssa, i64 %i.fbk
  %i.fbl = add i32 %.11890.lcssa, 4
  %i.fbm = and i32 %i.fbg, -4
  %i.fbn = add i32 %i.fbl, %i.fbm
  br label %._crit_edge7665

.preheader6887.lr.ph.split.us:                    ; preds = %.preheader6887.lr.ph
  %i.fbo = icmp sgt i32 %.fr8043, 0
  br i1 %i.fbo, label %.preheader6887.us.us.preheader, label %.preheader6887.us.preheader

.preheader6887.us.preheader:                      ; preds = %.preheader6887.lr.ph.split.us
  %i.fbp = add i32 %.11890.lcssa, 7
  %smax8390 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.fbp)
  %i.fbq = add i32 %smax8390, -4
  %i.fbr = sub i32 %i.fbq, %.11890.lcssa          ; 2 uses
  %i.fbs = lshr i32 %i.fbr, 1
  %i.fbt = and i32 %i.fbs, 2147483646
  %narrow8757 = add nuw i32 %i.fbt, 2
  %i.fbu = zext i32 %narrow8757 to i64
  %i.fbv = mul nsw i64 %i.eno, %i.fbu
  %scevgep8391 = getelementptr i8, ptr %.11895.lcssa, i64 %i.fbv
  %i.fbw = add i32 %.11890.lcssa, 4
  %i.fbx = and i32 %i.fbr, -4
  %i.fby = add i32 %i.fbw, %i.fbx
  br label %._crit_edge7665

.preheader6887.us.us.preheader:                   ; preds = %.preheader6887.lr.ph.split.us
  %i.fbz = zext nneg i32 %.fr8043 to i64          ; 3 uses
  %i.fca = zext i32 %.11890.lcssa to i64
  br label %.preheader6887.us.us

.preheader6887.us.us:                             ; preds = %.preheader6887.us.us.preheader, %._crit_edge7642.split.us.us.us
  %indvars.iv8411 = phi i64 [ %i.fca, %.preheader6887.us.us.preheader ], [ %indvars.iv.next8412, %._crit_edge7642.split.us.us.us ] ; 6 uses
  %.218967661.us.us = phi ptr [ %.11895.lcssa, %.preheader6887.us.us.preheader ], [ %i.ffs, %._crit_edge7642.split.us.us.us ] ; 3 uses
  %.066187660.us.us = phi <4 x float> [ zeroinitializer, %.preheader6887.us.us.preheader ], [ %.46622.us.us.us, %._crit_edge7642.split.us.us.us ]
  %.066237659.us.us = phi <4 x float> [ zeroinitializer, %.preheader6887.us.us.preheader ], [ %.46627.us.us.us, %._crit_edge7642.split.us.us.us ]
  %i.fcb = lshr exact i64 %indvars.iv8411, 2
  %i.fcc = or disjoint i64 %indvars.iv8411, 1
  %i.fcd = or disjoint i64 %indvars.iv8411, 2
  %i.fce = or disjoint i64 %indvars.iv8411, 3
  br label %bb.bz

bb.bz:                                            ; preds = %..loopexit6880_crit_edge.us.us.us, %.preheader6887.us.us
  %indvars.iv8406 = phi i64 [ %indvars.iv.next8407, %..loopexit6880_crit_edge.us.us.us ], [ 0, %.preheader6887.us.us ] ; 3 uses
  %.166197639.us.us.us = phi <4 x float> [ %.46622.us.us.us, %..loopexit6880_crit_edge.us.us.us ], [ %.066187660.us.us, %.preheader6887.us.us ] ; 5 uses
  %.166247638.us.us.us = phi <4 x float> [ %.46627.us.us.us, %..loopexit6880_crit_edge.us.us.us ], [ %.066237659.us.us, %.preheader6887.us.us ] ; 5 uses
  %i.fcf = trunc i64 %indvars.iv8406 to i32
  %i.fcg = mul i32 %i.fax, %i.fcf
  %.reass.us7646.us.us = add i32 %i.fcg, %invariant.op7645 ; 3 uses
  %i.fch = icmp slt i32 %.reass.us7646.us.us, 0
  br i1 %i.fch, label %..loopexit6880_crit_edge.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fci = srem i32 %.reass.us7646.us.us, %i.faz
  %i.fcj = sdiv i32 %.reass.us7646.us.us, %i.faz  ; 2 uses
  %.not2119.us.us.us = icmp eq i32 %i.fci, 0
  %.not2120.us.us.us = icmp slt i32 %i.fcj, %i.bol
  %or.cond9006 = select i1 %.not2119.us.us.us, i1 %.not2120.us.us.us, i1 false
  br i1 %or.cond9006, label %.preheader6879.us.us.us, label %..loopexit6880_crit_edge.us.us.us

..loopexit6880_crit_edge.us.us.us:                ; preds = %bb.ce, %bb.cc, %.preheader6879.us.us.us, %bb.ca, %bb.bz
  %.46627.us.us.us = phi nsz <4 x float> [ %.166247638.us.us.us, %bb.bz ], [ %.166247638.us.us.us, %bb.ca ], [ %.36626.us.us.us.us, %bb.cc ], [ %.166247638.us.us.us, %.preheader6879.us.us.us ], [ %.36626.us7631.us.us.us, %bb.ce ] ; 3 uses
  %.46622.us.us.us = phi nsz <4 x float> [ %.166197639.us.us.us, %bb.bz ], [ %.166197639.us.us.us, %bb.ca ], [ %.36621.us.us.us.us, %bb.cc ], [ %.166197639.us.us.us, %.preheader6879.us.us.us ], [ %.36621.us7632.us.us.us, %bb.ce ] ; 3 uses
  %indvars.iv.next8407 = add nuw nsw i64 %indvars.iv8406, 1 ; 2 uses
  %exitcond8410.not = icmp eq i64 %indvars.iv.next8407, %wide.trip.count8409
  br i1 %exitcond8410.not, label %._crit_edge7642.split.us.us.us, label %bb.bz, !llvm.loop !195

.preheader6879.us.us.us:                          ; preds = %bb.ca
  %i.fck = mul nuw nsw i64 %indvars.iv8406, %i.fbz ; 2 uses
  %i.fcl = sext i32 %i.fcj to i64                 ; 2 uses
  switch i32 %.fr8040, label %..loopexit6880_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7677.us
    i32 1, label %.lr.ph.split.us7623.us.us.us
  ]

.lr.ph.split.us.us.us7677.us:                     ; preds = %.preheader6879.us.us.us, %bb.cc
  %indvars.iv8401 = phi i64 [ %indvars.iv.next8402, %bb.cc ], [ 0, %.preheader6879.us.us.us ] ; 3 uses
  %.266207615.us.us.us.us = phi <4 x float> [ %.36621.us.us.us.us, %bb.cc ], [ %.166197639.us.us.us, %.preheader6879.us.us.us ] ; 3 uses
  %.266257614.us.us.us.us = phi <4 x float> [ %.36626.us.us.us.us, %bb.cc ], [ %.166247638.us.us.us, %.preheader6879.us.us.us ] ; 3 uses
  %i.fcm = trunc i64 %indvars.iv8401 to i32
  %i.fcn = mul i32 %i.fbb, %i.fcm
  %.reass7620.us.us.us.us = add i32 %i.fcn, %invariant.op7619 ; 3 uses
  %i.fco = icmp slt i32 %.reass7620.us.us.us.us, 0
  br i1 %i.fco, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us.us.us7677.us
  %i.fcp = srem i32 %.reass7620.us.us.us.us, %i.fbd
  %i.fcq = sdiv i32 %.reass7620.us.us.us.us, %i.fbd ; 2 uses
  %.not2121.us.us.us.us = icmp eq i32 %i.fcp, 0
  %.not2122.us.us.us.us = icmp slt i32 %i.fcq, %i.boj
  %or.cond9007 = select i1 %.not2121.us.us.us.us, i1 %.not2122.us.us.us.us, i1 false
  br i1 %or.cond9007, label %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us:            ; preds = %bb.cb
  %i.fcr = add nuw nsw i64 %i.fck, %indvars.iv8401
  %i.fcs = shl i64 %i.fcr, 3
  %i.fct = and i64 %i.fcs, 4294967288
  %i.fcu = getelementptr inbounds nuw [2 x i8], ptr %.218967661.us.us, i64 %i.fct ; 2 uses
  %i.fcv = load i32, ptr %i.boi, align 4, !tbaa !25, !noalias !196
  %i.fcw = load ptr, ptr %0, align 8, !tbaa !19, !noalias !196
  %i.fcx = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !196
  %i.fcy = mul i64 %i.fcx, %i.fcb
  %i.fcz = load i64, ptr %i.bpb, align 8, !tbaa !30, !noalias !196 ; 2 uses
  %i.fda = mul i64 %i.fcy, %i.fcz
  %i.fdb = getelementptr inbounds nuw i8, ptr %i.fcw, i64 %i.fda
  %i.fdc = sext i32 %i.fcv to i64
  %i.fdd = mul nsw i64 %i.fdc, %i.fcl
  %i.fde = mul i64 %i.fdd, %i.fcz
  %i.fdf = getelementptr inbounds nuw i8, ptr %i.fdb, i64 %i.fde
  %i.fdg = shl nsw i32 %i.fcq, 2
  %i.fdh = sext i32 %i.fdg to i64
  %i.fdi = getelementptr inbounds [2 x i8], ptr %i.fdf, i64 %i.fdh
  %i.fdj = load i64, ptr %i.fdi, align 1, !tbaa !34
  %i.fdk = insertelement <2 x i64> poison, i64 %i.fdj, i64 0
  %i.fdl = bitcast <2 x i64> %i.fdk to <8 x i16>
  %i.fdm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fdl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fdn = bitcast <8 x i16> %i.fdm to <4 x float> ; 2 uses
  %i.fdo = load i64, ptr %i.fcu, align 1, !tbaa !34
  %i.fdp = insertelement <2 x i64> poison, i64 %i.fdo, i64 0
  %i.fdq = bitcast <2 x i64> %i.fdp to <8 x i16>
  %i.fdr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fdq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fds = bitcast <8 x i16> %i.fdr to <4 x float>
  %i.fdt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fdn, <4 x float> nofpclass(nan inf) %i.fds, <4 x float> nofpclass(nan inf) %.266257614.us.us.us.us)
  %i.fdu = getelementptr inbounds nuw i8, ptr %i.fcu, i64 8
  %i.fdv = load i64, ptr %i.fdu, align 1, !tbaa !34
  %i.fdw = insertelement <2 x i64> poison, i64 %i.fdv, i64 0
  %i.fdx = bitcast <2 x i64> %i.fdw to <8 x i16>
  %i.fdy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fdx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fdz = bitcast <8 x i16> %i.fdy to <4 x float>
  %i.fea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fdn, <4 x float> nofpclass(nan inf) %i.fdz, <4 x float> nofpclass(nan inf) %.266207615.us.us.us.us)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, %bb.cb, %.lr.ph.split.us.us.us7677.us
  %.36626.us.us.us.us = phi nsz <4 x float> [ %.266257614.us.us.us.us, %.lr.ph.split.us.us.us7677.us ], [ %.266257614.us.us.us.us, %bb.cb ], [ %i.fdt, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %.36621.us.us.us.us = phi nsz <4 x float> [ %.266207615.us.us.us.us, %.lr.ph.split.us.us.us7677.us ], [ %.266207615.us.us.us.us, %bb.cb ], [ %i.fea, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %indvars.iv.next8402 = add nuw nsw i64 %indvars.iv8401, 1 ; 2 uses
  %exitcond8405.not = icmp eq i64 %indvars.iv.next8402, %i.fbz
  br i1 %exitcond8405.not, label %..loopexit6880_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7677.us, !llvm.loop !199

.lr.ph.split.us7623.us.us.us:                     ; preds = %.preheader6879.us.us.us, %bb.ce
  %indvars.iv8396 = phi i64 [ %indvars.iv.next8397, %bb.ce ], [ 0, %.preheader6879.us.us.us ] ; 3 uses
  %.266207615.us7625.us.us.us = phi <4 x float> [ %.36621.us7632.us.us.us, %bb.ce ], [ %.166197639.us.us.us, %.preheader6879.us.us.us ] ; 3 uses
  %.266257614.us7626.us.us.us = phi <4 x float> [ %.36626.us7631.us.us.us, %bb.ce ], [ %.166247638.us.us.us, %.preheader6879.us.us.us ] ; 3 uses
  %i.feb = trunc i64 %indvars.iv8396 to i32
  %i.fec = mul i32 %i.fbb, %i.feb
  %.reass7620.us7627.us.us.us = add i32 %i.fec, %invariant.op7619 ; 3 uses
  %i.fed = icmp slt i32 %.reass7620.us7627.us.us.us, 0
  br i1 %i.fed, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.split.us7623.us.us.us
  %i.fee = srem i32 %.reass7620.us7627.us.us.us, %i.fbd
  %i.fef = sdiv i32 %.reass7620.us7627.us.us.us, %i.fbd ; 2 uses
  %.not2121.us7628.us.us.us = icmp eq i32 %i.fee, 0
  %.not2122.us7629.us.us.us = icmp slt i32 %i.fef, %i.boj
  %or.cond9008 = select i1 %.not2121.us7628.us.us.us, i1 %.not2122.us7629.us.us.us, i1 false
  br i1 %or.cond9008, label %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, label %bb.ce

_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us:            ; preds = %bb.cd
  %i.feg = load i32, ptr %i.boi, align 4, !tbaa !25, !noalias !200
  %i.feh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !200
  %i.fei = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !200
  %i.fej = load i64, ptr %i.bpb, align 8, !tbaa !30, !noalias !200 ; 2 uses
  %factor.op.mul.us.us7654.us.us = mul i64 %i.fei, %i.fej ; 4 uses
  %i.fek = sext i32 %i.feg to i64
  %i.fel = mul nsw i64 %i.fek, %i.fcl
  %i.fem = mul i64 %i.fel, %i.fej
  %invariant.gep.us.us7655.us.us = getelementptr i8, ptr %i.feh, i64 %i.fem
  %i.fen = sext i32 %i.fef to i64
  %invariant.gep7611.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7655.us.us, i64 %i.fen ; 4 uses
  %.reass.us7630.us.us.us = mul i64 %factor.op.mul.us.us7654.us.us, %indvars.iv8411
  %gep7612.us.us.us.us = getelementptr i8, ptr %invariant.gep7611.us.us.us.us, i64 %.reass.us7630.us.us.us
  %i.feo = load i16, ptr %gep7612.us.us.us.us, align 2, !tbaa !43
  %.reass.us7630.us.us.us.1 = mul i64 %factor.op.mul.us.us7654.us.us, %i.fcc
  %gep7612.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7611.us.us.us.us, i64 %.reass.us7630.us.us.us.1
  %i.fep = load i16, ptr %gep7612.us.us.us.us.1, align 2, !tbaa !43
  %.reass.us7630.us.us.us.2 = mul i64 %factor.op.mul.us.us7654.us.us, %i.fcd
  %gep7612.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7611.us.us.us.us, i64 %.reass.us7630.us.us.us.2
  %i.feq = load i16, ptr %gep7612.us.us.us.us.2, align 2, !tbaa !43
  %.reass.us7630.us.us.us.3 = mul i64 %factor.op.mul.us.us7654.us.us, %i.fce
  %gep7612.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7611.us.us.us.us, i64 %.reass.us7630.us.us.us.3
  %i.fer = load i16, ptr %gep7612.us.us.us.us.3, align 2, !tbaa !43
  %i.fes = zext i16 %i.fer to i32
  %i.fet = zext i16 %i.feq to i32
  %i.feu = zext i16 %i.fep to i32
  %i.fev = zext i16 %i.feo to i32
  %i.few = insertelement <4 x i32> poison, i32 %i.fev, i64 0
  %i.fex = insertelement <4 x i32> %i.few, i32 %i.feu, i64 1
  %i.fey = insertelement <4 x i32> %i.fex, i32 %i.fet, i64 2
  %i.fez = insertelement <4 x i32> %i.fey, i32 %i.fes, i64 3
  %i.ffa = shl nuw <4 x i32> %i.fez, splat (i32 16)
  %.sroa.08557.12.vec.insert = bitcast <4 x i32> %i.ffa to <4 x float> ; 2 uses
  %i.ffb = add nuw nsw i64 %i.fck, %indvars.iv8396
  %i.ffc = shl i64 %i.ffb, 3
  %i.ffd = and i64 %i.ffc, 4294967288
  %i.ffe = getelementptr inbounds nuw [2 x i8], ptr %.218967661.us.us, i64 %i.ffd ; 2 uses
  %i.fff = load i64, ptr %i.ffe, align 1, !tbaa !34
  %i.ffg = insertelement <2 x i64> poison, i64 %i.fff, i64 0
  %i.ffh = bitcast <2 x i64> %i.ffg to <8 x i16>
  %i.ffi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffj = bitcast <8 x i16> %i.ffi to <4 x float>
  %i.ffk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08557.12.vec.insert, <4 x float> nofpclass(nan inf) %i.ffj, <4 x float> nofpclass(nan inf) %.266257614.us7626.us.us.us)
  %i.ffl = getelementptr inbounds nuw i8, ptr %i.ffe, i64 8
  %i.ffm = load i64, ptr %i.ffl, align 1, !tbaa !34
  %i.ffn = insertelement <2 x i64> poison, i64 %i.ffm, i64 0
  %i.ffo = bitcast <2 x i64> %i.ffn to <8 x i16>
  %i.ffp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffq = bitcast <8 x i16> %i.ffp to <4 x float>
  %i.ffr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08557.12.vec.insert, <4 x float> nofpclass(nan inf) %i.ffq, <4 x float> nofpclass(nan inf) %.266207615.us7625.us.us.us)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, %bb.cd, %.lr.ph.split.us7623.us.us.us
  %.36626.us7631.us.us.us = phi nsz <4 x float> [ %.266257614.us7626.us.us.us, %.lr.ph.split.us7623.us.us.us ], [ %i.ffk, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266257614.us7626.us.us.us, %bb.cd ] ; 2 uses
  %.36621.us7632.us.us.us = phi nsz <4 x float> [ %.266207615.us7625.us.us.us, %.lr.ph.split.us7623.us.us.us ], [ %i.ffr, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266207615.us7625.us.us.us, %bb.cd ] ; 2 uses
  %indvars.iv.next8397 = add nuw nsw i64 %indvars.iv8396, 1 ; 2 uses
  %exitcond8400.not = icmp eq i64 %indvars.iv.next8397, %i.fbz
  br i1 %exitcond8400.not, label %..loopexit6880_crit_edge.us.us.us, label %.lr.ph.split.us7623.us.us.us, !llvm.loop !199

._crit_edge7642.split.us.us.us:                   ; preds = %..loopexit6880_crit_edge.us.us.us
  %i.ffs = getelementptr inbounds [2 x i8], ptr %.218967661.us.us, i64 %i.eno ; 2 uses
  %indvars.iv.next8412 = add nuw nsw i64 %indvars.iv8411, 4 ; 3 uses
  %i.fft = trunc i64 %indvars.iv.next8412 to i32
  %i.ffu = or i32 %i.fft, 3
  %i.ffv = icmp slt i32 %i.ffu, %i.boh
  br i1 %i.ffv, label %.preheader6887.us.us, label %._crit_edge7665.loopexit, !llvm.loop !203

._crit_edge7665.loopexit:                         ; preds = %._crit_edge7642.split.us.us.us
  %i.ffw = trunc nuw i64 %indvars.iv.next8412 to i32
  br label %._crit_edge7665

._crit_edge7665:                                  ; preds = %.preheader6887.preheader, %.preheader6887.us.preheader, %._crit_edge7665.loopexit, %._crit_edge7595
  %.06623.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7595 ], [ %.46627.us.us.us, %._crit_edge7665.loopexit ], [ zeroinitializer, %.preheader6887.us.preheader ], [ zeroinitializer, %.preheader6887.preheader ] ; 4 uses
  %.06618.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7595 ], [ %.46622.us.us.us, %._crit_edge7665.loopexit ], [ zeroinitializer, %.preheader6887.us.preheader ], [ zeroinitializer, %.preheader6887.preheader ] ; 4 uses
  %.21896.lcssa = phi ptr [ %.11895.lcssa, %._crit_edge7595 ], [ %i.ffs, %._crit_edge7665.loopexit ], [ %scevgep8391, %.preheader6887.us.preheader ], [ %scevgep8389, %.preheader6887.preheader ] ; 3 uses
  %.21891.lcssa = phi i32 [ %.11890.lcssa, %._crit_edge7595 ], [ %i.ffw, %._crit_edge7665.loopexit ], [ %i.fby, %.preheader6887.us.preheader ], [ %i.fbn, %.preheader6887.preheader ] ; 6 uses
  %i.ffx = shufflevector <4 x float> %i.evj, <4 x float> %i.evp, <2 x i32> <i32 3, i32 7>
  %i.ffy = shufflevector <4 x float> %i.evj, <4 x float> %i.evp, <2 x i32> <i32 1, i32 5>
  %i.ffz = fadd fast <2 x float> %i.ffx, %i.ffy
  %i.fga = fadd fast <2 x float> %i.ffz, %i.env
  %i.fgb = shufflevector <4 x float> %i.evj, <4 x float> %i.evp, <2 x i32> <i32 2, i32 6>
  %i.fgc = shufflevector <4 x float> %i.evj, <4 x float> %i.evp, <2 x i32> <i32 0, i32 4>
  %i.fgd = fadd fast <2 x float> %i.fgb, %i.fgc
  %i.fge = fadd fast <2 x float> %i.fga, %i.fgd
  %i.fgf = shufflevector <4 x float> %i.far, <4 x float> %i.fau, <2 x i32> <i32 3, i32 7>
  %i.fgg = shufflevector <4 x float> %i.far, <4 x float> %i.fau, <2 x i32> <i32 1, i32 5>
  %i.fgh = fadd fast <2 x float> %i.fgf, %i.fgg
  %i.fgi = fadd fast <2 x float> %i.fge, %i.fgh
  %i.fgj = shufflevector <4 x float> %i.far, <4 x float> %i.fau, <2 x i32> <i32 2, i32 6>
  %i.fgk = shufflevector <4 x float> %i.far, <4 x float> %i.fau, <2 x i32> <i32 0, i32 4>
  %i.fgl = fadd fast <2 x float> %i.fgj, %i.fgk
  %i.fgm = fadd fast <2 x float> %i.fgi, %i.fgl
  %i.fgn = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 3, i32 7>
  %i.fgo = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 1, i32 5>
  %i.fgp = fadd fast <2 x float> %i.fgn, %i.fgo
  %i.fgq = fadd fast <2 x float> %i.fgm, %i.fgp
  %i.fgr = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 2, i32 6>
  %i.fgs = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 0, i32 4>
  %i.fgt = fadd fast <2 x float> %i.fgr, %i.fgs
  %i.fgu = fadd fast <2 x float> %i.fgq, %i.fgt   ; 3 uses
  %i.fgv = or disjoint i32 %.21891.lcssa, 1
  %i.fgw = icmp slt i32 %i.fgv, %i.boh
  br i1 %i.fgw, label %.preheader6886.lr.ph, label %.preheader6890

.preheader6886.lr.ph:                             ; preds = %._crit_edge7665
  %i.fgx = load i32, ptr %i.j, align 4
  %invariant.op7705 = sub i32 %.neg6815, %i.fgx
  %i.fgy = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fgz = load i32, ptr %i.a, align 4
  %.fr8044 = freeze i32 %i.fgz                    ; 2 uses
  %i.fha = icmp sgt i32 %.fr8044, 0
  %i.fhb = load i32, ptr %i.i, align 4
  %.neg6805 = add nuw nsw i32 %.019317774, 1
  %invariant.op7696 = sub i32 %.neg6805, %i.fhb
  %i.fhc = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.enh, label %.preheader6886.us.preheader, label %.preheader6886.preheader

.preheader6886.preheader:                         ; preds = %.preheader6886.lr.ph
  %i.fhd = add i32 %.21891.lcssa, 3
  %smax8414 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.fhd)
  %i.fhe = add i32 %smax8414, -2
  %i.fhf = sub i32 %i.fhe, %.21891.lcssa          ; 2 uses
  %i.fhg = and i32 %i.fhf, -2
  %i.fhh = zext i32 %i.fhg to i64
  %i.fhi = add nuw nsw i64 %i.fhh, 2
  %i.fhj = mul nsw i64 %i.fhi, %i.enq
  %scevgep8415 = getelementptr i8, ptr %.21896.lcssa, i64 %i.fhj
  %i.fhk = add i32 %.21891.lcssa, 2
  %i.fhl = and i32 %i.fhf, -2
  %i.fhm = add i32 %i.fhk, %i.fhl
  br label %.preheader6890

.preheader6886.us.preheader:                      ; preds = %.preheader6886.lr.ph
  %i.fhn = load i32, ptr %i.c, align 4
  %i.fho = load i32, ptr %i.d, align 4
  %i.fhp = zext i32 %.fr8044 to i64               ; 2 uses
  %i.fhq = zext i32 %.21891.lcssa to i64
  br label %.preheader6886.us

.preheader6886.us:                                ; preds = %.preheader6886.us.preheader, %._crit_edge7702.us
  %indvars.iv8429 = phi i64 [ %i.fhq, %.preheader6886.us.preheader ], [ %indvars.iv.next8430, %._crit_edge7702.us ] ; 3 uses
  %.318977713.us = phi ptr [ %.21896.lcssa, %.preheader6886.us.preheader ], [ %i.fhu, %._crit_edge7702.us ] ; 2 uses
  %i.fhr = phi <2 x float> [ %i.fgu, %.preheader6886.us.preheader ], [ %i.fht, %._crit_edge7702.us ] ; 2 uses
  br i1 %i.fha, label %.lr.ph7701.split.us.us.preheader, label %._crit_edge7702.us
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.fuj = phi ptr [ %.pre8585, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8580, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsf, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %.46614.us.us.us = phi nsz <16 x float> [ %.266127796.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %i.fug, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsw, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fuk = mul i64 %i.fui, %i.fqt
  %i.ful = mul i64 %i.fuk, %i.fuh
  %i.fum = getelementptr inbounds nuw i8, ptr %i.fuj, i64 %i.ful
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fum, i64 %.pre-phi8605
  %i.fuo = shl nsw i32 %i.frz, 2
  %i.fup = sext i32 %i.fuo to i64                 ; 4 uses
  %i.fuq = getelementptr inbounds [2 x i8], ptr %i.fun, i64 %i.fup
  %i.fur = mul i64 %i.fui, %i.fqu
  %i.fus = mul i64 %i.fur, %i.fuh
  %i.fut = getelementptr inbounds nuw i8, ptr %i.fuj, i64 %i.fus
  %i.fuu = getelementptr inbounds nuw i8, ptr %i.fut, i64 %.pre-phi8605
  %i.fuv = getelementptr inbounds [2 x i8], ptr %i.fuu, i64 %i.fup
  %i.fuw = mul i64 %i.fui, %i.fqv
  %i.fux = mul i64 %i.fuw, %i.fuh
  %i.fuy = getelementptr inbounds nuw i8, ptr %i.fuj, i64 %i.fux
  %i.fuz = getelementptr inbounds nuw i8, ptr %i.fuy, i64 %.pre-phi8605
  %i.fva = getelementptr inbounds [2 x i8], ptr %i.fuz, i64 %i.fup
  %i.fvb = mul i64 %i.fui, %i.fqw
  %i.fvc = mul i64 %i.fvb, %i.fuh
  %i.fvd = getelementptr inbounds nuw i8, ptr %i.fuj, i64 %i.fvc
  %i.fve = getelementptr inbounds nuw i8, ptr %i.fvd, i64 %.pre-phi8605
  %i.fvf = getelementptr inbounds [2 x i8], ptr %i.fve, i64 %i.fup
  %i.fvg = load i64, ptr %i.fuq, align 1, !tbaa !34
  %i.fvh = insertelement <2 x i64> poison, i64 %i.fvg, i64 0
  %i.fvi = bitcast <2 x i64> %i.fvh to <8 x i16>
  %i.fvj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvk = bitcast <8 x i16> %i.fvj to <4 x float>
  %i.fvl = load i64, ptr %i.fuv, align 1, !tbaa !34
  %i.fvm = insertelement <2 x i64> poison, i64 %i.fvl, i64 0
  %i.fvn = bitcast <2 x i64> %i.fvm to <8 x i16>
  %i.fvo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvp = bitcast <8 x i16> %i.fvo to <4 x float>
  %i.fvq = load i64, ptr %i.fva, align 1, !tbaa !34
  %i.fvr = insertelement <2 x i64> poison, i64 %i.fvq, i64 0
  %i.fvs = bitcast <2 x i64> %i.fvr to <8 x i16>
  %i.fvt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvu = bitcast <8 x i16> %i.fvt to <4 x float>
  %i.fvv = load i64, ptr %i.fvf, align 1, !tbaa !34
  %i.fvw = insertelement <2 x i64> poison, i64 %i.fvv, i64 0
  %i.fvx = bitcast <2 x i64> %i.fvw to <8 x i16>
  %i.fvy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvz = bitcast <8 x i16> %i.fvy to <4 x float>
  %i.fwa = shufflevector <4 x float> %i.fvk, <4 x float> %i.fvp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fwb = shufflevector <4 x float> %i.fvu, <4 x float> %i.fvz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fwc = shufflevector <16 x float> %i.fwa, <16 x float> %i.fwb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fwd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fwc, <16 x float> nofpclass(nan inf) %.pre-phi8607, <16 x float> nofpclass(nan inf) %.46614.us.us.us) ; 2 uses
  br i1 %i.elt, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, label %bb.cw

_ZN4ncnn3MatD2Ev.exit2209.us.us.us:               ; preds = %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %.pre-phi8613 = phi i64 [ %.pre8612, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %.pre-phi8605, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8596, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsn, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fwe = phi i64 [ %.pre8592, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fuh, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8582, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsi, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fwf = phi i64 [ %.pre8591, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fui, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8581, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsg, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fwg = phi ptr [ %.pre8590, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fuj, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8580, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsf, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %.56615.us.us.us = phi nsz <16 x float> [ %.266127796.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fwd, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %i.fug, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsw, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %factor.op.mul7791.us.us.us = mul i64 %i.fwf, %i.fwe ; 16 uses
  %invariant.gep.us.us7816.us = getelementptr i8, ptr %i.fwg, i64 %.pre-phi8613
  %i.fwh = sext i32 %i.frz to i64
  %invariant.gep7793.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7816.us, i64 %i.fwh ; 16 uses
  %.reass7792.us.us.us = mul i64 %factor.op.mul7791.us.us.us, %indvars.iv8468
  %gep7794.us.us.us = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us
  %i.fwi = load i16, ptr %gep7794.us.us.us, align 2, !tbaa !43
  %.reass7792.us.us.us.1 = mul i64 %factor.op.mul7791.us.us.us, %i.fqx
  %gep7794.us.us.us.1 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.1
  %i.fwj = load i16, ptr %gep7794.us.us.us.1, align 2, !tbaa !43
  %.reass7792.us.us.us.2 = mul i64 %factor.op.mul7791.us.us.us, %i.fqy
  %gep7794.us.us.us.2 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.2
  %i.fwk = load i16, ptr %gep7794.us.us.us.2, align 2, !tbaa !43
  %.reass7792.us.us.us.3 = mul i64 %factor.op.mul7791.us.us.us, %i.fqz
  %gep7794.us.us.us.3 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.3
  %i.fwl = load i16, ptr %gep7794.us.us.us.3, align 2, !tbaa !43
  %.reass7792.us.us.us.4 = mul i64 %factor.op.mul7791.us.us.us, %i.fra
  %gep7794.us.us.us.4 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.4
  %i.fwm = load i16, ptr %gep7794.us.us.us.4, align 2, !tbaa !43
  %.reass7792.us.us.us.5 = mul i64 %factor.op.mul7791.us.us.us, %i.frb
  %gep7794.us.us.us.5 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.5
  %i.fwn = load i16, ptr %gep7794.us.us.us.5, align 2, !tbaa !43
  %.reass7792.us.us.us.6 = mul i64 %factor.op.mul7791.us.us.us, %i.frc
  %gep7794.us.us.us.6 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.6
  %i.fwo = load i16, ptr %gep7794.us.us.us.6, align 2, !tbaa !43
  %.reass7792.us.us.us.7 = mul i64 %factor.op.mul7791.us.us.us, %i.frd
  %gep7794.us.us.us.7 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.7
  %i.fwp = load i16, ptr %gep7794.us.us.us.7, align 2, !tbaa !43
  %.reass7792.us.us.us.8 = mul i64 %factor.op.mul7791.us.us.us, %i.fre
  %gep7794.us.us.us.8 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.8
  %i.fwq = load i16, ptr %gep7794.us.us.us.8, align 2, !tbaa !43
  %.reass7792.us.us.us.9 = mul i64 %factor.op.mul7791.us.us.us, %i.frf
  %gep7794.us.us.us.9 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.9
  %i.fwr = load i16, ptr %gep7794.us.us.us.9, align 2, !tbaa !43
  %.reass7792.us.us.us.10 = mul i64 %factor.op.mul7791.us.us.us, %i.frg
  %gep7794.us.us.us.10 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.10
  %i.fws = load i16, ptr %gep7794.us.us.us.10, align 2, !tbaa !43
  %.reass7792.us.us.us.11 = mul i64 %factor.op.mul7791.us.us.us, %i.frh
  %gep7794.us.us.us.11 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.11
  %i.fwt = load i16, ptr %gep7794.us.us.us.11, align 2, !tbaa !43
  %.reass7792.us.us.us.12 = mul i64 %factor.op.mul7791.us.us.us, %i.fri
  %gep7794.us.us.us.12 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.12
  %i.fwu = load i16, ptr %gep7794.us.us.us.12, align 2, !tbaa !43
  %.reass7792.us.us.us.13 = mul i64 %factor.op.mul7791.us.us.us, %i.frj
  %gep7794.us.us.us.13 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.13
  %i.fwv = load i16, ptr %gep7794.us.us.us.13, align 2, !tbaa !43
  %.reass7792.us.us.us.14 = mul i64 %factor.op.mul7791.us.us.us, %i.frk
  %gep7794.us.us.us.14 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.14
  %i.fww = load i16, ptr %gep7794.us.us.us.14, align 2, !tbaa !43
  %.reass7792.us.us.us.15 = mul i64 %factor.op.mul7791.us.us.us, %i.frl
  %gep7794.us.us.us.15 = getelementptr i8, ptr %invariant.gep7793.us.us.us, i64 %.reass7792.us.us.us.15
  %i.fwx = load i16, ptr %gep7794.us.us.us.15, align 2, !tbaa !43
  %i.fwy = insertelement <16 x i16> poison, i16 %i.fwi, i64 0
  %i.fwz = insertelement <16 x i16> %i.fwy, i16 %i.fwj, i64 1
  %i.fxa = insertelement <16 x i16> %i.fwz, i16 %i.fwk, i64 2
  %i.fxb = insertelement <16 x i16> %i.fxa, i16 %i.fwl, i64 3
  %i.fxc = insertelement <16 x i16> %i.fxb, i16 %i.fwm, i64 4
  %i.fxd = insertelement <16 x i16> %i.fxc, i16 %i.fwn, i64 5
  %i.fxe = insertelement <16 x i16> %i.fxd, i16 %i.fwo, i64 6
  %i.fxf = insertelement <16 x i16> %i.fxe, i16 %i.fwp, i64 7
  %i.fxg = insertelement <16 x i16> %i.fxf, i16 %i.fwq, i64 8
  %i.fxh = insertelement <16 x i16> %i.fxg, i16 %i.fwr, i64 9
  %i.fxi = insertelement <16 x i16> %i.fxh, i16 %i.fws, i64 10
  %i.fxj = insertelement <16 x i16> %i.fxi, i16 %i.fwt, i64 11
  %i.fxk = insertelement <16 x i16> %i.fxj, i16 %i.fwu, i64 12
  %i.fxl = insertelement <16 x i16> %i.fxk, i16 %i.fwv, i64 13
  %i.fxm = insertelement <16 x i16> %i.fxl, i16 %i.fww, i64 14
  %i.fxn = insertelement <16 x i16> %i.fxm, i16 %i.fwx, i64 15
  %i.fxo = zext <16 x i16> %i.fxn to <16 x i32>
  %i.fxp = shl nuw <16 x i32> %i.fxo, splat (i32 16)
  %.sroa.08555.60.vec.insert = bitcast <16 x i32> %i.fxp to <16 x float>
  %i.fxq = load <16 x bfloat>, ptr %i.fsd, align 32, !tbaa !34
  %i.fxr = fpext fast <16 x bfloat> %i.fxq to <16 x float>
  %i.fxs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08555.60.vec.insert, <16 x float> nofpclass(nan inf) %i.fxr, <16 x float> nofpclass(nan inf) %.56615.us.us.us)
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us, %.split2197.us.us.us, %bb.cv, %.lr.ph.split.us.us.us7835
  %.66616.us.us.us = phi nsz <16 x float> [ %.266127796.us.us.us, %.lr.ph.split.us.us.us7835 ], [ %.266127796.us.us.us, %.split2197.us.us.us ], [ %i.fsw, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ], [ %i.fug, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fxs, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us ], [ %i.fwd, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.266127796.us.us.us, %bb.cv ], [ %i.fto, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread ] ; 2 uses
  %indvars.iv.next8459 = add nuw nsw i64 %indvars.iv8458, 1 ; 2 uses
  %exitcond8462.not = icmp eq i64 %indvars.iv.next8459, %i.fqp
  br i1 %exitcond8462.not, label %..loopexit6866_crit_edge.us.us, label %.lr.ph.split.us.us.us7835, !llvm.loop !233

._crit_edge7824.loopexit:                         ; preds = %._crit_edge7806.us
  %i.fxt = trunc nuw nsw i64 %indvars.iv.next8469 to i32
  br label %._crit_edge7824

._crit_edge7824:                                  ; preds = %.preheader6871.lr.ph, %._crit_edge7824.loopexit, %_ZN4ncnn3MatD2Ev.exit2217
  %.06610.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %.us-phi7817.us, %._crit_edge7824.loopexit ], [ zeroinitializer, %.preheader6871.lr.ph ] ; 3 uses
  %.01848.lcssa = phi ptr [ %i.fpr, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.frm, %._crit_edge7824.loopexit ], [ %scevgep8453, %.preheader6871.lr.ph ] ; 3 uses
  %.01843.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.fxt, %._crit_edge7824.loopexit ], [ %i.eme, %.preheader6871.lr.ph ] ; 6 uses
  %i.fxu = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fxv = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fxw = fadd fast <8 x float> %i.fxu, %i.fxv   ; 2 uses
  %i.fxx = shufflevector <8 x float> %i.fxw, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fxy = shufflevector <8 x float> %i.fxw, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fxz = fadd fast <4 x float> %i.fxx, %i.fxy   ; 2 uses
  %i.fya = shufflevector <4 x float> %i.fxz, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.fyb = fadd fast <4 x float> %i.fya, %i.fxz
  %i.fyc = extractelement <4 x float> %i.fyb, i64 1
  %i.fyd = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fye = or disjoint i32 %.01843.lcssa, 7
  %i.fyf = icmp slt i32 %i.fye, %i.eky
  br i1 %i.fyf, label %.preheader6870.lr.ph, label %._crit_edge7863

.preheader6870.lr.ph:                             ; preds = %._crit_edge7824
  %i.fyg = load i32, ptr %i.j, align 4
  %invariant.op7854 = sub i32 %.neg6795, %i.fyg
  %i.fyh = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fyi = load i32, ptr %i.a, align 4
  %.fr8049 = freeze i32 %i.fyi                    ; 2 uses
  %i.fyj = icmp sgt i32 %.fr8049, 0
  %i.fyk = load i32, ptr %i.i, align 4
  %.neg6793 = add nuw nsw i32 %.018688008, 1
  %invariant.op7847 = sub i32 %.neg6793, %i.fyk
  %i.fyl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fpt, label %.preheader6870.us.preheader, label %.preheader6870.preheader

.preheader6870.preheader:                         ; preds = %.preheader6870.lr.ph
  %i.fym = add i32 %.01843.lcssa, 15
  %smax8471 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.fym)
  %i.fyn = add i32 %smax8471, -8
  %i.fyo = sub i32 %i.fyn, %.01843.lcssa          ; 2 uses
  %i.fyp = lshr i32 %i.fyo, 2
  %i.fyq = and i32 %i.fyp, 1073741822
  %narrow8760 = add nuw nsw i32 %i.fyq, 2
  %i.fyr = zext nneg i32 %narrow8760 to i64
  %i.fys = mul nsw i64 %i.fpy, %i.fyr
  %scevgep8472 = getelementptr i8, ptr %.01848.lcssa, i64 %i.fys
  %i.fyt = add i32 %.01843.lcssa, 8
  %i.fyu = and i32 %i.fyo, -8
  %i.fyv = add i32 %i.fyt, %i.fyu
  br label %._crit_edge7863

.preheader6870.us.preheader:                      ; preds = %.preheader6870.lr.ph
  %i.fyw = load i32, ptr %i.c, align 4
  %i.fyx = load i32, ptr %i.d, align 4
  %i.fyy = zext i32 %.fr8049 to i64               ; 2 uses
  %i.fyz = zext i32 %.01843.lcssa to i64
  br label %.preheader6870.us

.preheader6870.us:                                ; preds = %.preheader6870.us.preheader, %._crit_edge7852.us
  %indvars.iv8487 = phi i64 [ %i.fyz, %.preheader6870.us.preheader ], [ %indvars.iv.next8488, %._crit_edge7852.us ] ; 11 uses
  %.118497859.us = phi ptr [ %.01848.lcssa, %.preheader6870.us.preheader ], [ %i.fzi, %._crit_edge7852.us ] ; 2 uses
  %.066057858.us = phi <8 x float> [ zeroinitializer, %.preheader6870.us.preheader ], [ %.us-phi7856.us, %._crit_edge7852.us ] ; 2 uses
  %15 = lshr exact i64 %indvars.iv8487, 2         ; 2 uses
  %16 = or disjoint i64 %15, 1
  %i.fza = lshr exact i64 %indvars.iv8487, 3
  br i1 %i.fyj, label %.lr.ph7851.split.us.us.preheader, label %._crit_edge7852.us

.lr.ph7851.split.us.us.preheader:                 ; preds = %.preheader6870.us
  %i.fzb = or disjoint i64 %indvars.iv8487, 1
  %i.fzc = or disjoint i64 %indvars.iv8487, 2
  %i.fzd = or disjoint i64 %indvars.iv8487, 3
  %i.fze = or disjoint i64 %indvars.iv8487, 4
  %i.fzf = or disjoint i64 %indvars.iv8487, 5
  %i.fzg = or disjoint i64 %indvars.iv8487, 6
  %i.fzh = or disjoint i64 %indvars.iv8487, 7
  br label %.lr.ph7851.split.us.us

._crit_edge7852.us:                               ; preds = %..loopexit6864_crit_edge.us.us, %.preheader6870.us
  %.us-phi7856.us = phi <8 x float> [ %.066057858.us, %.preheader6870.us ], [ %.46609.us.us, %..loopexit6864_crit_edge.us.us ] ; 2 uses
  %i.fzi = getelementptr inbounds [2 x i8], ptr %.118497859.us, i64 %i.fpy ; 2 uses
  %indvars.iv.next8488 = add nuw nsw i64 %indvars.iv8487, 8 ; 3 uses
  %i.fzj = trunc i64 %indvars.iv.next8488 to i32
  %i.fzk = or i32 %i.fzj, 7
  %i.fzl = icmp slt i32 %i.fzk, %i.eky
  br i1 %i.fzl, label %.preheader6870.us, label %._crit_edge7863.loopexit, !llvm.loop !234

.lr.ph7851.split.us.us:                           ; preds = %.lr.ph7851.split.us.us.preheader, %..loopexit6864_crit_edge.us.us
  %indvars.iv8482 = phi i64 [ 0, %.lr.ph7851.split.us.us.preheader ], [ %indvars.iv.next8483, %..loopexit6864_crit_edge.us.us ] ; 3 uses
  %.166067849.us.us = phi <8 x float> [ %.066057858.us, %.lr.ph7851.split.us.us.preheader ], [ %.46609.us.us, %..loopexit6864_crit_edge.us.us ] ; 3 uses
  %i.fzm = trunc i64 %indvars.iv8482 to i32
  %i.fzn = mul i32 %i.fyx, %i.fzm
  %.reass7855.us.us = add i32 %i.fzn, %invariant.op7854 ; 3 uses
  %i.fzo = icmp slt i32 %.reass7855.us.us, 0
  br i1 %i.fzo, label %..loopexit6864_crit_edge.us.us, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph7851.split.us.us
  %i.fzp = srem i32 %.reass7855.us.us, %i.fyh
  %i.fzq = sdiv i32 %.reass7855.us.us, %i.fyh     ; 2 uses
  %.not2102.us.us = icmp eq i32 %i.fzp, 0
  %.not2103.us.us = icmp slt i32 %i.fzq, %i.elc
  %or.cond9015 = select i1 %.not2102.us.us, i1 %.not2103.us.us, i1 false
  br i1 %or.cond9015, label %.preheader6863.us.us, label %..loopexit6864_crit_edge.us.us

bb.cy:                                            ; preds = %.preheader6863.us.us, %bb.db
  %indvars.iv8477 = phi i64 [ 0, %.preheader6863.us.us ], [ %indvars.iv.next8478, %bb.db ] ; 3 uses
  %.266077844.us.us = phi <8 x float> [ %.166067849.us.us, %.preheader6863.us.us ], [ %.36608.us.us, %bb.db ] ; 4 uses
  %i.fzr = trunc i64 %indvars.iv8477 to i32
  %i.fzs = mul i32 %i.fyw, %i.fzr
  %.reass7848.us.us = add i32 %i.fzs, %invariant.op7847 ; 3 uses
  %i.fzt = icmp slt i32 %.reass7848.us.us, 0
  br i1 %i.fzt, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fzu = srem i32 %.reass7848.us.us, %i.fyl
  %i.fzv = sdiv i32 %.reass7848.us.us, %i.fyl     ; 4 uses
  %.not2104.us.us = icmp eq i32 %i.fzu, 0
  %.not2105.us.us = icmp slt i32 %i.fzv, %i.ela
  %or.cond9016 = select i1 %.not2104.us.us, i1 %.not2105.us.us, i1 false
  br i1 %or.cond9016, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.fzw = add nuw nsw i64 %i.gcw, %indvars.iv8477
  %i.fzx = shl i64 %i.fzw, 3
  %i.fzy = and i64 %i.fzx, 4294967288
  %i.fzz = getelementptr inbounds nuw [2 x i8], ptr %.118497859.us, i64 %i.fzy
  switch i32 %.fr8047, label %bb.db [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2208.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2207.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2205.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2205.us.us:                  ; preds = %bb.da
  %i.gaa = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !235
  %i.gab = load ptr, ptr %0, align 8, !tbaa !19, !noalias !235
  %i.gac = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !235
  %i.gad = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !235 ; 2 uses
  %factor.op.mul7839.us.us = mul i64 %i.gac, %i.gad ; 8 uses
  %i.gae = sext i32 %i.gaa to i64
  %i.gaf = mul nsw i64 %i.gae, %i.gcx
  %i.gag = mul i64 %i.gaf, %i.gad
  %invariant.gep.us.us7874 = getelementptr i8, ptr %i.gab, i64 %i.gag
  %i.gah = sext i32 %i.fzv to i64
  %invariant.gep7841.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7874, i64 %i.gah ; 8 uses
  %.reass7840.us.us = mul i64 %factor.op.mul7839.us.us, %indvars.iv8487
  %gep7842.us.us = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us
  %i.gai = load i16, ptr %gep7842.us.us, align 2, !tbaa !43
  %.reass7840.us.us.1 = mul i64 %factor.op.mul7839.us.us, %i.fzb
  %gep7842.us.us.1 = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us.1
  %i.gaj = load i16, ptr %gep7842.us.us.1, align 2, !tbaa !43
  %.reass7840.us.us.2 = mul i64 %factor.op.mul7839.us.us, %i.fzc
  %gep7842.us.us.2 = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us.2
  %i.gak = load i16, ptr %gep7842.us.us.2, align 2, !tbaa !43
  %.reass7840.us.us.3 = mul i64 %factor.op.mul7839.us.us, %i.fzd
  %gep7842.us.us.3 = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us.3
  %i.gal = load i16, ptr %gep7842.us.us.3, align 2, !tbaa !43
  %.reass7840.us.us.4 = mul i64 %factor.op.mul7839.us.us, %i.fze
  %gep7842.us.us.4 = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us.4
  %i.gam = load i16, ptr %gep7842.us.us.4, align 2, !tbaa !43
  %.reass7840.us.us.5 = mul i64 %factor.op.mul7839.us.us, %i.fzf
  %gep7842.us.us.5 = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us.5
  %i.gan = load i16, ptr %gep7842.us.us.5, align 2, !tbaa !43
  %.reass7840.us.us.6 = mul i64 %factor.op.mul7839.us.us, %i.fzg
  %gep7842.us.us.6 = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us.6
  %i.gao = load i16, ptr %gep7842.us.us.6, align 2, !tbaa !43
  %.reass7840.us.us.7 = mul i64 %factor.op.mul7839.us.us, %i.fzh
  %gep7842.us.us.7 = getelementptr i8, ptr %invariant.gep7841.us.us, i64 %.reass7840.us.us.7
  %i.gap = load i16, ptr %gep7842.us.us.7, align 2, !tbaa !43
  %i.gaq = insertelement <8 x i16> poison, i16 %i.gai, i64 0
  %i.gar = insertelement <8 x i16> %i.gaq, i16 %i.gaj, i64 1
  %i.gas = insertelement <8 x i16> %i.gar, i16 %i.gak, i64 2
  %i.gat = insertelement <8 x i16> %i.gas, i16 %i.gal, i64 3
  %i.gau = insertelement <8 x i16> %i.gat, i16 %i.gam, i64 4
  %i.gav = insertelement <8 x i16> %i.gau, i16 %i.gan, i64 5
  %i.gaw = insertelement <8 x i16> %i.gav, i16 %i.gao, i64 6
  %i.gax = insertelement <8 x i16> %i.gaw, i16 %i.gap, i64 7
  %i.gay = zext <8 x i16> %i.gax to <8 x i32>
  %i.gaz = shl nuw <8 x i32> %i.gay, splat (i32 16)
  %.sroa.08553.28.vec.insert = bitcast <8 x i32> %i.gaz to <8 x float>
  br label %.sink.split8901

_ZN4ncnn3MatD2Ev.exit2207.us.us:                  ; preds = %bb.da
  %i.gba = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !238
  %i.gbb = load ptr, ptr %0, align 8, !tbaa !19, !noalias !238 ; 2 uses
  %i.gbc = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !238 ; 2 uses
  %i.gbd = mul i64 %i.gbc, %15
  %i.gbe = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !238 ; 3 uses
  %i.gbf = mul i64 %i.gbd, %i.gbe
  %i.gbg = getelementptr inbounds nuw i8, ptr %i.gbb, i64 %i.gbf
  %i.gbh = sext i32 %i.gba to i64
  %i.gbi = mul nsw i64 %i.gbh, %i.gcx
  %i.gbj = mul i64 %i.gbi, %i.gbe                 ; 2 uses
  %i.gbk = getelementptr inbounds nuw i8, ptr %i.gbg, i64 %i.gbj
  %i.gbl = shl nsw i32 %i.fzv, 2
  %i.gbm = sext i32 %i.gbl to i64                 ; 2 uses
  %i.gbn = getelementptr inbounds [2 x i8], ptr %i.gbk, i64 %i.gbm
  %i.gbo = mul i64 %i.gbc, %16
  %i.gbp = mul i64 %i.gbo, %i.gbe
  %i.gbq = getelementptr inbounds nuw i8, ptr %i.gbb, i64 %i.gbp
  %i.gbr = getelementptr inbounds nuw i8, ptr %i.gbq, i64 %i.gbj
  %i.gbs = getelementptr inbounds [2 x i8], ptr %i.gbr, i64 %i.gbm
  %i.gbt = load i64, ptr %i.gbn, align 1, !tbaa !34
  %i.gbu = insertelement <2 x i64> poison, i64 %i.gbt, i64 0
  %i.gbv = bitcast <2 x i64> %i.gbu to <8 x i16>
  %i.gbw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gbv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gbx = load i64, ptr %i.gbs, align 1, !tbaa !34
  %i.gby = insertelement <2 x i64> poison, i64 %i.gbx, i64 0
  %i.gbz = bitcast <2 x i64> %i.gby to <8 x i16>
  %i.gca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gbz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gcb = shufflevector <8 x i16> %i.gbw, <8 x i16> %i.gca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gcc = bitcast <16 x i16> %i.gcb to <8 x float>
  br label %.sink.split8901

_ZN4ncnn3MatD2Ev.exit2208.us.us:                  ; preds = %bb.da
  %i.gcd = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !241
  %i.gce = load ptr, ptr %0, align 8, !tbaa !19, !noalias !241
  %i.gcf = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !241
  %i.gcg = mul i64 %i.gcf, %i.fza
  %i.gch = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !241 ; 2 uses
  %i.gci = mul i64 %i.gcg, %i.gch
  %i.gcj = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gci
  %i.gck = sext i32 %i.gcd to i64
  %i.gcl = mul nsw i64 %i.gck, %i.gcx
  %i.gcm = mul i64 %i.gcl, %i.gch
  %i.gcn = getelementptr inbounds nuw i8, ptr %i.gcj, i64 %i.gcm
  %i.gco = shl nsw i32 %i.fzv, 3
  %i.gcp = sext i32 %i.gco to i64
  %i.gcq = getelementptr inbounds [2 x i8], ptr %i.gcn, i64 %i.gcp
  %i.gcr = load <8 x bfloat>, ptr %i.gcq, align 16, !tbaa !34
  %i.gcs = fpext fast <8 x bfloat> %i.gcr to <8 x float>
  br label %.sink.split8901

.sink.split8901:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2205.us.us, %_ZN4ncnn3MatD2Ev.exit2207.us.us, %_ZN4ncnn3MatD2Ev.exit2208.us.us
  %.sink8902 = phi <8 x float> [ %i.gcs, %_ZN4ncnn3MatD2Ev.exit2208.us.us ], [ %i.gcc, %_ZN4ncnn3MatD2Ev.exit2207.us.us ], [ %.sroa.08553.28.vec.insert, %_ZN4ncnn3MatD2Ev.exit2205.us.us ]
  %i.gct = load <8 x bfloat>, ptr %i.fzz, align 16, !tbaa !34
  %i.gcu = fpext fast <8 x bfloat> %i.gct to <8 x float>
  %i.gcv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8902, <8 x float> nofpclass(nan inf) %i.gcu, <8 x float> nofpclass(nan inf) %.266077844.us.us)
  br label %bb.db

bb.db:                                            ; preds = %.sink.split8901, %bb.da, %bb.cz, %bb.cy
  %.36608.us.us = phi nsz <8 x float> [ %.266077844.us.us, %bb.cy ], [ %.266077844.us.us, %bb.da ], [ %.266077844.us.us, %bb.cz ], [ %i.gcv, %.sink.split8901 ] ; 2 uses
  %indvars.iv.next8478 = add nuw nsw i64 %indvars.iv8477, 1 ; 2 uses
  %exitcond8481.not = icmp eq i64 %indvars.iv.next8478, %i.fyy
  br i1 %exitcond8481.not, label %..loopexit6864_crit_edge.us.us, label %bb.cy, !llvm.loop !244

..loopexit6864_crit_edge.us.us:                   ; preds = %bb.db, %bb.cx, %.lr.ph7851.split.us.us
  %.46609.us.us = phi nsz <8 x float> [ %.166067849.us.us, %.lr.ph7851.split.us.us ], [ %.166067849.us.us, %bb.cx ], [ %.36608.us.us, %bb.db ] ; 2 uses
  %indvars.iv.next8483 = add nuw nsw i64 %indvars.iv8482, 1 ; 2 uses
  %exitcond8486.not = icmp eq i64 %indvars.iv.next8483, %wide.trip.count8485
  br i1 %exitcond8486.not, label %._crit_edge7852.us, label %.lr.ph7851.split.us.us, !llvm.loop !245

.preheader6863.us.us:                             ; preds = %bb.cx
  %i.gcw = mul nuw nsw i64 %indvars.iv8482, %i.fyy
  %i.gcx = sext i32 %i.fzq to i64                 ; 3 uses
  br label %bb.cy

._crit_edge7863.loopexit:                         ; preds = %._crit_edge7852.us
  %i.gcy = trunc nuw i64 %indvars.iv.next8488 to i32
  br label %._crit_edge7863

._crit_edge7863:                                  ; preds = %.preheader6870.preheader, %._crit_edge7863.loopexit, %._crit_edge7824
  %.06605.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7824 ], [ %.us-phi7856.us, %._crit_edge7863.loopexit ], [ zeroinitializer, %.preheader6870.preheader ] ; 2 uses
  %.11849.lcssa = phi ptr [ %.01848.lcssa, %._crit_edge7824 ], [ %i.fzi, %._crit_edge7863.loopexit ], [ %scevgep8472, %.preheader6870.preheader ] ; 4 uses
  %.11844.lcssa = phi i32 [ %.01843.lcssa, %._crit_edge7824 ], [ %i.gcy, %._crit_edge7863.loopexit ], [ %i.fyv, %.preheader6870.preheader ] ; 9 uses
  %i.gcz = shufflevector <8 x float> %.06605.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gda = shufflevector <8 x float> %.06605.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gdb = fadd fast <4 x float> %i.gcz, %i.gda   ; 2 uses
  %i.gdc = or disjoint i32 %.11844.lcssa, 3
  %i.gdd = icmp slt i32 %i.gdc, %i.eky
  br i1 %i.gdd, label %.preheader6869.lr.ph, label %._crit_edge7921

.preheader6869.lr.ph:                             ; preds = %._crit_edge7863
  %i.gde = load i32, ptr %i.d, align 4
  %i.gdf = load i32, ptr %i.j, align 4
  %invariant.op7904 = sub i32 %.neg6795, %i.gdf
  %i.gdg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gdh = load i32, ptr %i.a, align 4
  %.fr8050 = freeze i32 %i.gdh                    ; 2 uses
  %i.gdi = load i32, ptr %i.c, align 4            ; 2 uses
  %i.gdj = load i32, ptr %i.i, align 4
  %.neg6789 = add nuw nsw i32 %.018688008, 1
  %invariant.op7886 = sub i32 %.neg6789, %i.gdj   ; 2 uses
  %i.gdk = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.fpt, label %.preheader6869.lr.ph.split.us, label %.preheader6869.preheader

.preheader6869.preheader:                         ; preds = %.preheader6869.lr.ph
  %i.gdl = add i32 %.11844.lcssa, 7
  %smax8490 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.gdl)
  %i.gdm = add i32 %smax8490, -4
  %i.gdn = sub i32 %i.gdm, %.11844.lcssa          ; 2 uses
  %i.gdo = lshr i32 %i.gdn, 1
  %i.gdp = and i32 %i.gdo, 2147483646
  %narrow8761 = add nuw i32 %i.gdp, 2
  %i.gdq = zext i32 %narrow8761 to i64
  %i.gdr = mul nsw i64 %i.fqa, %i.gdq
  %scevgep8491 = getelementptr i8, ptr %.11849.lcssa, i64 %i.gdr
  %i.gds = add i32 %.11844.lcssa, 4
  %i.gdt = and i32 %i.gdn, -4
  %i.gdu = add i32 %i.gds, %i.gdt
  br label %._crit_edge7921

.preheader6869.lr.ph.split.us:                    ; preds = %.preheader6869.lr.ph
  %i.gdv = icmp sgt i32 %.fr8050, 0
  br i1 %i.gdv, label %.preheader6869.us.us.preheader, label %.preheader6869.us.preheader

.preheader6869.us.preheader:                      ; preds = %.preheader6869.lr.ph.split.us
  %i.gdw = add i32 %.11844.lcssa, 7
  %smax8492 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.gdw)
  %i.gdx = add i32 %smax8492, -4
  %i.gdy = sub i32 %i.gdx, %.11844.lcssa          ; 2 uses
  %i.gdz = lshr i32 %i.gdy, 1
  %i.gea = and i32 %i.gdz, 2147483646
  %narrow8762 = add nuw i32 %i.gea, 2
  %i.geb = zext i32 %narrow8762 to i64
  %i.gec = mul nsw i64 %i.fqa, %i.geb
  %scevgep8493 = getelementptr i8, ptr %.11849.lcssa, i64 %i.gec
  %i.ged = add i32 %.11844.lcssa, 4
  %i.gee = and i32 %i.gdy, -4
  %i.gef = add i32 %i.ged, %i.gee
  br label %._crit_edge7921

.preheader6869.us.us.preheader:                   ; preds = %.preheader6869.lr.ph.split.us
  %i.geg = zext nneg i32 %.fr8050 to i64          ; 3 uses
  %i.geh = zext i32 %.11844.lcssa to i64
  br label %.preheader6869.us.us

.preheader6869.us.us:                             ; preds = %.preheader6869.us.us.preheader, %._crit_edge7902.split.us.us.us
  %indvars.iv8513 = phi i64 [ %i.geh, %.preheader6869.us.us.preheader ], [ %indvars.iv.next8514, %._crit_edge7902.split.us.us.us ] ; 6 uses
  %.218507917.us.us = phi ptr [ %.11849.lcssa, %.preheader6869.us.us.preheader ], [ %i.ghl, %._crit_edge7902.split.us.us.us ] ; 3 uses
  %.065417916.us.us = phi <4 x float> [ zeroinitializer, %.preheader6869.us.us.preheader ], [ %.46545.us.us.us, %._crit_edge7902.split.us.us.us ]
  %i.gei = lshr exact i64 %indvars.iv8513, 2
  %i.gej = or disjoint i64 %indvars.iv8513, 1
  %i.gek = or disjoint i64 %indvars.iv8513, 2
  %i.gel = or disjoint i64 %indvars.iv8513, 3
  br label %bb.dc

bb.dc:                                            ; preds = %..loopexit6862_crit_edge.us.us.us, %.preheader6869.us.us
  %indvars.iv8508 = phi i64 [ %indvars.iv.next8509, %..loopexit6862_crit_edge.us.us.us ], [ 0, %.preheader6869.us.us ] ; 3 uses
  %.165427899.us.us.us = phi <4 x float> [ %.46545.us.us.us, %..loopexit6862_crit_edge.us.us.us ], [ %.065417916.us.us, %.preheader6869.us.us ] ; 5 uses
  %i.gem = trunc i64 %indvars.iv8508 to i32
  %i.gen = mul i32 %i.gde, %i.gem
  %.reass7905.us.us.us = add i32 %i.gen, %invariant.op7904 ; 3 uses
  %i.geo = icmp slt i32 %.reass7905.us.us.us, 0
  br i1 %i.geo, label %..loopexit6862_crit_edge.us.us.us, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.gep = srem i32 %.reass7905.us.us.us, %i.gdg
  %i.geq = sdiv i32 %.reass7905.us.us.us, %i.gdg  ; 2 uses
  %.not2098.us.us.us = icmp eq i32 %i.gep, 0
  %.not2099.us.us.us = icmp slt i32 %i.geq, %i.elc
  %or.cond9017 = select i1 %.not2098.us.us.us, i1 %.not2099.us.us.us, i1 false
  br i1 %or.cond9017, label %.preheader6861.us.us.us, label %..loopexit6862_crit_edge.us.us.us

..loopexit6862_crit_edge.us.us.us:                ; preds = %bb.dh, %bb.df, %.preheader6861.us.us.us, %bb.dd, %bb.dc
  %.46545.us.us.us = phi nsz <4 x float> [ %.165427899.us.us.us, %bb.dc ], [ %.165427899.us.us.us, %bb.dd ], [ %.36544.us.us.us.us, %bb.df ], [ %.165427899.us.us.us, %.preheader6861.us.us.us ], [ %.36544.us7895.us.us.us, %bb.dh ] ; 3 uses
  %indvars.iv.next8509 = add nuw nsw i64 %indvars.iv8508, 1 ; 2 uses
  %exitcond8512.not = icmp eq i64 %indvars.iv.next8509, %wide.trip.count8511
  br i1 %exitcond8512.not, label %._crit_edge7902.split.us.us.us, label %bb.dc, !llvm.loop !246

.preheader6861.us.us.us:                          ; preds = %bb.dd
  %i.ger = mul nuw nsw i64 %indvars.iv8508, %i.geg ; 2 uses
  %i.ges = sext i32 %i.geq to i64                 ; 2 uses
  switch i32 %.fr8047, label %..loopexit6862_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7932.us
    i32 1, label %.lr.ph.split.us7889.us.us.us
  ]

.lr.ph.split.us.us.us7932.us:                     ; preds = %.preheader6861.us.us.us, %bb.df
  %indvars.iv8503 = phi i64 [ %indvars.iv.next8504, %bb.df ], [ 0, %.preheader6861.us.us.us ] ; 3 uses
  %.265437883.us.us.us.us = phi <4 x float> [ %.36544.us.us.us.us, %bb.df ], [ %.165427899.us.us.us, %.preheader6861.us.us.us ] ; 3 uses
  %i.get = trunc i64 %indvars.iv8503 to i32
  %i.geu = mul i32 %i.gdi, %i.get
  %.reass7887.us.us.us.us = add i32 %i.geu, %invariant.op7886 ; 3 uses
  %i.gev = icmp slt i32 %.reass7887.us.us.us.us, 0
  br i1 %i.gev, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.lr.ph.split.us.us.us7932.us
  %i.gew = srem i32 %.reass7887.us.us.us.us, %i.gdk
  %i.gex = sdiv i32 %.reass7887.us.us.us.us, %i.gdk ; 2 uses
  %.not2100.us.us.us.us = icmp eq i32 %i.gew, 0
  %.not2101.us.us.us.us = icmp slt i32 %i.gex, %i.ela
  %or.cond9018 = select i1 %.not2100.us.us.us.us, i1 %.not2101.us.us.us.us, i1 false
  br i1 %or.cond9018, label %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, label %bb.df

_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us:            ; preds = %bb.de
  %i.gey = add nuw nsw i64 %i.ger, %indvars.iv8503
  %i.gez = shl i64 %i.gey, 2
  %i.gfa = and i64 %i.gez, 4294967292
  %i.gfb = getelementptr inbounds nuw [2 x i8], ptr %.218507917.us.us, i64 %i.gfa
  %i.gfc = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !247
  %i.gfd = load ptr, ptr %0, align 8, !tbaa !19, !noalias !247
  %i.gfe = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !247
  %i.gff = mul i64 %i.gfe, %i.gei
  %i.gfg = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !247 ; 2 uses
  %i.gfh = mul i64 %i.gff, %i.gfg
  %i.gfi = getelementptr inbounds nuw i8, ptr %i.gfd, i64 %i.gfh
  %i.gfj = sext i32 %i.gfc to i64
  %i.gfk = mul nsw i64 %i.gfj, %i.ges
  %i.gfl = mul i64 %i.gfk, %i.gfg
  %i.gfm = getelementptr inbounds nuw i8, ptr %i.gfi, i64 %i.gfl
  %i.gfn = shl nsw i32 %i.gex, 2
  %i.gfo = sext i32 %i.gfn to i64
  %i.gfp = getelementptr inbounds [2 x i8], ptr %i.gfm, i64 %i.gfo
  %i.gfq = load i64, ptr %i.gfp, align 1, !tbaa !34
  %i.gfr = insertelement <2 x i64> poison, i64 %i.gfq, i64 0
  %i.gfs = bitcast <2 x i64> %i.gfr to <8 x i16>
  %i.gft = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfu = bitcast <8 x i16> %i.gft to <4 x float>
  %i.gfv = load i64, ptr %i.gfb, align 1, !tbaa !34
  %i.gfw = insertelement <2 x i64> poison, i64 %i.gfv, i64 0
  %i.gfx = bitcast <2 x i64> %i.gfw to <8 x i16>
  %i.gfy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfz = bitcast <8 x i16> %i.gfy to <4 x float>
  %i.gga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gfu, <4 x float> nofpclass(nan inf) %i.gfz, <4 x float> nofpclass(nan inf) %.265437883.us.us.us.us)
  br label %bb.df

bb.df:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, %bb.de, %.lr.ph.split.us.us.us7932.us
  %.36544.us.us.us.us = phi nsz <4 x float> [ %.265437883.us.us.us.us, %.lr.ph.split.us.us.us7932.us ], [ %.265437883.us.us.us.us, %bb.de ], [ %i.gga, %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us ] ; 2 uses
  %indvars.iv.next8504 = add nuw nsw i64 %indvars.iv8503, 1 ; 2 uses
  %exitcond8507.not = icmp eq i64 %indvars.iv.next8504, %i.geg
  br i1 %exitcond8507.not, label %..loopexit6862_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7932.us, !llvm.loop !250

.lr.ph.split.us7889.us.us.us:                     ; preds = %.preheader6861.us.us.us, %bb.dh
  %indvars.iv8498 = phi i64 [ %indvars.iv.next8499, %bb.dh ], [ 0, %.preheader6861.us.us.us ] ; 3 uses
  %.265437883.us7891.us.us.us = phi <4 x float> [ %.36544.us7895.us.us.us, %bb.dh ], [ %.165427899.us.us.us, %.preheader6861.us.us.us ] ; 3 uses
  %i.ggb = trunc i64 %indvars.iv8498 to i32
  %i.ggc = mul i32 %i.gdi, %i.ggb
  %.reass7887.us7892.us.us.us = add i32 %i.ggc, %invariant.op7886 ; 3 uses
  %i.ggd = icmp slt i32 %.reass7887.us7892.us.us.us, 0
  br i1 %i.ggd, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.split.us7889.us.us.us
  %i.gge = srem i32 %.reass7887.us7892.us.us.us, %i.gdk
  %i.ggf = sdiv i32 %.reass7887.us7892.us.us.us, %i.gdk ; 2 uses
  %.not2100.us7893.us.us.us = icmp eq i32 %i.gge, 0
  %.not2101.us7894.us.us.us = icmp slt i32 %i.ggf, %i.ela
  %or.cond9019 = select i1 %.not2100.us7893.us.us.us, i1 %.not2101.us7894.us.us.us, i1 false
  br i1 %or.cond9019, label %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, label %bb.dh

_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us:            ; preds = %bb.dg
  %i.ggg = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !251
  %i.ggh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !251
  %i.ggi = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !251
  %i.ggj = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !251 ; 2 uses
  %factor.op.mul7878.us.us.us.us = mul i64 %i.ggi, %i.ggj ; 4 uses
  %i.ggk = sext i32 %i.ggg to i64
  %i.ggl = mul nsw i64 %i.ggk, %i.ges
  %i.ggm = mul i64 %i.ggl, %i.ggj
  %invariant.gep.us.us7913.us.us = getelementptr i8, ptr %i.ggh, i64 %i.ggm
  %i.ggn = sext i32 %i.ggf to i64
  %invariant.gep7880.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7913.us.us, i64 %i.ggn ; 4 uses
  %.reass7879.us.us.us.us = mul i64 %factor.op.mul7878.us.us.us.us, %indvars.iv8513
  %gep7881.us.us.us.us = getelementptr i8, ptr %invariant.gep7880.us.us.us.us, i64 %.reass7879.us.us.us.us
  %i.ggo = load i16, ptr %gep7881.us.us.us.us, align 2, !tbaa !43
  %.reass7879.us.us.us.us.1 = mul i64 %factor.op.mul7878.us.us.us.us, %i.gej
  %gep7881.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7880.us.us.us.us, i64 %.reass7879.us.us.us.us.1
  %i.ggp = load i16, ptr %gep7881.us.us.us.us.1, align 2, !tbaa !43
  %.reass7879.us.us.us.us.2 = mul i64 %factor.op.mul7878.us.us.us.us, %i.gek
  %gep7881.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7880.us.us.us.us, i64 %.reass7879.us.us.us.us.2
  %i.ggq = load i16, ptr %gep7881.us.us.us.us.2, align 2, !tbaa !43
  %.reass7879.us.us.us.us.3 = mul i64 %factor.op.mul7878.us.us.us.us, %i.gel
  %gep7881.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7880.us.us.us.us, i64 %.reass7879.us.us.us.us.3
  %i.ggr = load i16, ptr %gep7881.us.us.us.us.3, align 2, !tbaa !43
  %i.ggs = zext i16 %i.ggr to i32
  %i.ggt = zext i16 %i.ggq to i32
  %i.ggu = zext i16 %i.ggp to i32
  %i.ggv = zext i16 %i.ggo to i32
  %i.ggw = insertelement <4 x i32> poison, i32 %i.ggv, i64 0
  %i.ggx = insertelement <4 x i32> %i.ggw, i32 %i.ggu, i64 1
  %i.ggy = insertelement <4 x i32> %i.ggx, i32 %i.ggt, i64 2
  %i.ggz = insertelement <4 x i32> %i.ggy, i32 %i.ggs, i64 3
  %i.gha = shl nuw <4 x i32> %i.ggz, splat (i32 16)
  %.sroa.0.12.vec.insert = bitcast <4 x i32> %i.gha to <4 x float>
  %i.ghb = add nuw nsw i64 %i.ger, %indvars.iv8498
  %i.ghc = shl i64 %i.ghb, 2
  %i.ghd = and i64 %i.ghc, 4294967292
  %i.ghe = getelementptr inbounds nuw [2 x i8], ptr %.218507917.us.us, i64 %i.ghd
  %i.ghf = load i64, ptr %i.ghe, align 1, !tbaa !34
  %i.ghg = insertelement <2 x i64> poison, i64 %i.ghf, i64 0
  %i.ghh = bitcast <2 x i64> %i.ghg to <8 x i16>
  %i.ghi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ghh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ghj = bitcast <8 x i16> %i.ghi to <4 x float>
  %i.ghk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert, <4 x float> nofpclass(nan inf) %i.ghj, <4 x float> nofpclass(nan inf) %.265437883.us7891.us.us.us)
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, %bb.dg, %.lr.ph.split.us7889.us.us.us
  %.36544.us7895.us.us.us = phi nsz <4 x float> [ %.265437883.us7891.us.us.us, %.lr.ph.split.us7889.us.us.us ], [ %i.ghk, %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us ], [ %.265437883.us7891.us.us.us, %bb.dg ] ; 2 uses
  %indvars.iv.next8499 = add nuw nsw i64 %indvars.iv8498, 1 ; 2 uses
  %exitcond8502.not = icmp eq i64 %indvars.iv.next8499, %i.geg
  br i1 %exitcond8502.not, label %..loopexit6862_crit_edge.us.us.us, label %.lr.ph.split.us7889.us.us.us, !llvm.loop !250

._crit_edge7902.split.us.us.us:                   ; preds = %..loopexit6862_crit_edge.us.us.us
  %i.ghl = getelementptr inbounds [2 x i8], ptr %.218507917.us.us, i64 %i.fqa ; 2 uses
  %indvars.iv.next8514 = add nuw nsw i64 %indvars.iv8513, 4 ; 3 uses
  %i.ghm = trunc i64 %indvars.iv.next8514 to i32
  %i.ghn = or i32 %i.ghm, 3
  %i.gho = icmp slt i32 %i.ghn, %i.eky
  br i1 %i.gho, label %.preheader6869.us.us, label %._crit_edge7921.loopexit, !llvm.loop !254

._crit_edge7921.loopexit:                         ; preds = %._crit_edge7902.split.us.us.us
  %i.ghp = trunc nuw i64 %indvars.iv.next8514 to i32
  br label %._crit_edge7921

._crit_edge7921:                                  ; preds = %.preheader6869.preheader, %.preheader6869.us.preheader, %._crit_edge7921.loopexit, %._crit_edge7863
  %.06541.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7863 ], [ %.46545.us.us.us, %._crit_edge7921.loopexit ], [ zeroinitializer, %.preheader6869.us.preheader ], [ zeroinitializer, %.preheader6869.preheader ] ; 2 uses
  %.21850.lcssa = phi ptr [ %.11849.lcssa, %._crit_edge7863 ], [ %i.ghl, %._crit_edge7921.loopexit ], [ %scevgep8493, %.preheader6869.us.preheader ], [ %scevgep8491, %.preheader6869.preheader ] ; 3 uses
  %.21845.lcssa = phi i32 [ %.11844.lcssa, %._crit_edge7863 ], [ %i.ghp, %._crit_edge7921.loopexit ], [ %i.gef, %.preheader6869.us.preheader ], [ %i.gdu, %.preheader6869.preheader ] ; 6 uses
  %i.ghq = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.gdb, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ghr = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.gdb, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ghs = fadd fast <4 x float> %i.ghq, %i.ghr
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fyc, <4 x float> %i.ghs)
  %op.rdx8928 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01853, <8 x float> %i.fyd)
  %op.rdx8929 = fadd fast float %op.rdx, %op.rdx8928 ; 3 uses
  %i.ght = or disjoint i32 %.21845.lcssa, 1
  %i.ghu = icmp slt i32 %i.ght, %i.eky
  br i1 %i.ghu, label %.preheader6868.lr.ph, label %.preheader6872

.preheader6868.lr.ph:                             ; preds = %._crit_edge7921
  %i.ghv = load i32, ptr %i.j, align 4
  %invariant.op7955 = sub i32 %.neg6795, %i.ghv
  %i.ghw = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ghx = load i32, ptr %i.a, align 4
  %.fr8051 = freeze i32 %i.ghx                    ; 2 uses
  %i.ghy = icmp sgt i32 %.fr8051, 0
  %i.ghz = load i32, ptr %i.i, align 4
  %.neg6785 = add nuw nsw i32 %.018688008, 1
  %invariant.op7948 = sub i32 %.neg6785, %i.ghz
  %i.gia = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fpt, label %.preheader6868.us.preheader, label %.preheader6868.preheader

.preheader6868.preheader:                         ; preds = %.preheader6868.lr.ph
  %i.gib = add i32 %.21845.lcssa, 3
  %smax8516 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.gib)
  %i.gic = add i32 %smax8516, -2
  %i.gid = sub i32 %i.gic, %.21845.lcssa          ; 2 uses
  %i.gie = and i32 %i.gid, -2
  %i.gif = zext i32 %i.gie to i64
  %i.gig = add nuw nsw i64 %i.gif, 2
  %i.gih = mul nsw i64 %i.gig, %i.fqc
  %scevgep8517 = getelementptr i8, ptr %.21850.lcssa, i64 %i.gih
  %i.gii = add i32 %.21845.lcssa, 2
  %i.gij = and i32 %i.gid, -2
  %i.gik = add i32 %i.gii, %i.gij
  br label %.preheader6872

.preheader6868.us.preheader:                      ; preds = %.preheader6868.lr.ph
  %i.gil = load i32, ptr %i.c, align 4
  %i.gim = load i32, ptr %i.d, align 4
  %i.gin = zext i32 %.fr8051 to i64               ; 2 uses
  %i.gio = zext i32 %.21845.lcssa to i64
  br label %.preheader6868.us

.preheader6868.us:                                ; preds = %.preheader6868.us.preheader, %._crit_edge7953.us
  %indvars.iv8531 = phi i64 [ %i.gio, %.preheader6868.us.preheader ], [ %indvars.iv.next8532, %._crit_edge7953.us ] ; 3 uses
  %.318517960.us = phi ptr [ %.21850.lcssa, %.preheader6868.us.preheader ], [ %i.giq, %._crit_edge7953.us ] ; 2 uses
  %.118547959.us = phi float [ %op.rdx8929, %.preheader6868.us.preheader ], [ %.us-phi7957.us, %._crit_edge7953.us ] ; 2 uses
  br i1 %i.ghy, label %.lr.ph7952.split.us.us.preheader, label %._crit_edge7953.us

.lr.ph7952.split.us.us.preheader:                 ; preds = %.preheader6868.us
  %i.gip = or disjoint i64 %indvars.iv8531, 1
  br label %.lr.ph7952.split.us.us

._crit_edge7953.us:                               ; preds = %..loopexit6860_crit_edge.us.us, %.preheader6868.us
  %.us-phi7957.us = phi float [ %.118547959.us, %.preheader6868.us ], [ %.81861.us.us, %..loopexit6860_crit_edge.us.us ] ; 2 uses
  %i.giq = getelementptr inbounds [2 x i8], ptr %.318517960.us, i64 %i.fqc ; 2 uses
  %indvars.iv.next8532 = add nuw nsw i64 %indvars.iv8531, 2 ; 3 uses
  %i.gir = trunc i64 %indvars.iv.next8532 to i32
  %i.gis = or i32 %i.gir, 1
  %i.git = icmp slt i32 %i.gis, %i.eky
  br i1 %i.git, label %.preheader6868.us, label %.preheader6872.loopexit, !llvm.loop !255

.lr.ph7952.split.us.us:                           ; preds = %.lr.ph7952.split.us.us.preheader, %..loopexit6860_crit_edge.us.us
  %indvars.iv8526 = phi i64 [ 0, %.lr.ph7952.split.us.us.preheader ], [ %indvars.iv.next8527, %..loopexit6860_crit_edge.us.us ] ; 3 uses
  %.218557950.us.us = phi float [ %.118547959.us, %.lr.ph7952.split.us.us.preheader ], [ %.81861.us.us, %..loopexit6860_crit_edge.us.us ] ; 3 uses
  %i.giu = trunc i64 %indvars.iv8526 to i32
  %i.giv = mul i32 %i.gim, %i.giu
  %.reass7956.us.us = add i32 %i.giv, %invariant.op7955 ; 3 uses
  %i.giw = icmp slt i32 %.reass7956.us.us, 0
  br i1 %i.giw, label %..loopexit6860_crit_edge.us.us, label %bb.di

bb.di:                                            ; preds = %.lr.ph7952.split.us.us
  %i.gix = srem i32 %.reass7956.us.us, %i.ghw
  %i.giy = sdiv i32 %.reass7956.us.us, %i.ghw     ; 2 uses
  %.not2094.us.us = icmp eq i32 %i.gix, 0
  %.not2095.us.us = icmp slt i32 %i.giy, %i.elc
  %or.cond9020 = select i1 %.not2094.us.us, i1 %.not2095.us.us, i1 false
  br i1 %or.cond9020, label %.preheader6859.us.us, label %..loopexit6860_crit_edge.us.us

bb.dj:                                            ; preds = %.preheader6859.us.us, %.loopexit.us.us
  %indvars.iv8521 = phi i64 [ 0, %.preheader6859.us.us ], [ %indvars.iv.next8522, %.loopexit.us.us ] ; 3 uses
  %.318567945.us.us = phi float [ %.218557950.us.us, %.preheader6859.us.us ], [ %.61859.us.us, %.loopexit.us.us ] ; 3 uses
  %i.giz = trunc i64 %indvars.iv8521 to i32
  %i.gja = mul i32 %i.gil, %i.giz
end_hunk_1
begin_hunk_2_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  %i.avj = load i32, ptr %gep1865.us.14.3, align 4, !tbaa !91
  %i.avk = lshr i32 %i.avj, 16
  %i.avl = trunc nuw i32 %i.avk to i16
  store i16 %i.avl, ptr %i.avi, align 2, !tbaa !43
  %i.avm = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 126
  %gep1865.us.15.3 = getelementptr i8, ptr %gep.us1881.3, i64 %.reass.us1880.15
  %i.avn = load i32, ptr %gep1865.us.15.3, align 4, !tbaa !91
  %i.avo = lshr i32 %i.avn, 16
  %i.avp = trunc nuw i32 %i.avo to i16
  store i16 %i.avp, ptr %i.avm, align 2, !tbaa !43
  %i.avq = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 128 ; 3 uses
  %indvars.iv.next2483 = add nuw nsw i64 %indvars.iv2482, 1 ; 2 uses
  %exitcond2486.not = icmp eq i64 %indvars.iv.next2483, %wide.trip.count2485
  br i1 %exitcond2486.not, label %._crit_edge1875.us, label %.preheader1806.us, !llvm.loop !356

._crit_edge1875.us:                               ; preds = %.preheader1806.us
  %indvars.iv.next2488 = add nuw nsw i64 %indvars.iv2487, 4 ; 3 uses
  %i.avr = trunc i64 %indvars.iv.next2488 to i32
  %i.avs = or i32 %i.avr, 3
  %i.avt = icmp slt i32 %i.avs, %2
  br i1 %i.avt, label %.preheader1811.us, label %.preheader1815.loopexit, !llvm.loop !357

.preheader1815.loopexit:                          ; preds = %._crit_edge1875.us
  %i.avu = trunc nuw i64 %indvars.iv.next2488 to i32
  br label %.preheader1815

.preheader1815:                                   ; preds = %.preheader1811.preheader, %.preheader1815.loopexit, %.preheader1816
  %.8853.lcssa = phi ptr [ %.4849.lcssa, %.preheader1816 ], [ %i.avq, %.preheader1815.loopexit ], [ %.4849.lcssa, %.preheader1811.preheader ] ; 3 uses
  %.2842.lcssa = phi i32 [ %.1841.lcssa, %.preheader1816 ], [ %i.avu, %.preheader1815.loopexit ], [ %i.ala, %.preheader1811.preheader ] ; 6 uses
  %i.avv = or disjoint i32 %.2842.lcssa, 1
  %i.avw = icmp slt i32 %i.avv, %2
  br i1 %i.avw, label %.preheader1810.lr.ph, label %.preheader1814

.preheader1810.lr.ph:                             ; preds = %.preheader1815
  %i.avx = load i32, ptr %i.kb, align 4
  %i.avy = load ptr, ptr %7, align 8
  %i.avz = load i64, ptr %i.kd, align 8           ; 2 uses
  %i.awa = sext i32 %i.avx to i64
  %factor.op.mul1890 = mul i64 %i.avz, %i.awa     ; 2 uses
  br i1 %i.ka, label %.preheader1810.us.preheader, label %.preheader1810.preheader

.preheader1810.preheader:                         ; preds = %.preheader1810.lr.ph
  %i.awb = add i32 %.2842.lcssa, 2
  %i.awc = add i32 %.2842.lcssa, 3
  %smax2490 = call i32 @llvm.smax.i32(i32 %2, i32 %i.awc)
  %i.awd = add i32 %smax2490, -2
  %i.awe = sub i32 %i.awd, %.2842.lcssa
  %i.awf = and i32 %i.awe, -2
  %i.awg = add i32 %i.awb, %i.awf
  br label %.preheader1814

.preheader1810.us.preheader:                      ; preds = %.preheader1810.lr.ph
  %i.awh = load i64, ptr %i.kc, align 8
  %factor.op.mul1885 = mul i64 %i.awh, %i.avz     ; 2 uses
  %i.awi = zext i32 %.2842.lcssa to i64
  %.reass.us1902 = mul i64 %factor.op.mul1885, %indvars.iv2519
  %i.awj = insertelement <16 x i64> poison, i64 %indvars.iv2519, i64 0
  %i.awk = shufflevector <16 x i64> %i.awj, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.awl = or disjoint <16 x i64> %i.awk, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.awm = insertelement <16 x i64> poison, i64 %factor.op.mul1885, i64 0
  %i.awn = shufflevector <16 x i64> %i.awm, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.awo = mul <16 x i64> %i.awn, %i.awl          ; 6 uses
  %i.awp = extractelement <16 x i64> %i.awo, i64 1
  %i.awq = extractelement <16 x i64> %i.awo, i64 2
  %i.awr = extractelement <16 x i64> %i.awo, i64 3
  %i.aws = shufflevector <16 x i64> %i.awo, <16 x i64> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awt = shufflevector <16 x i64> %i.awo, <16 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br label %.preheader1810.us

.preheader1810.us:                                ; preds = %.preheader1810.us.preheader, %._crit_edge1897.us
  %indvars.iv2504 = phi i64 [ %i.awi, %.preheader1810.us.preheader ], [ %indvars.iv.next2505, %._crit_edge1897.us ] ; 3 uses
  %.128571898.us = phi ptr [ %.8853.lcssa, %.preheader1810.us.preheader ], [ %i.axs, %._crit_edge1897.us ]
  %.reass1891.us = mul i64 %factor.op.mul1890, %indvars.iv2504
  %i.awu = or disjoint i64 %indvars.iv2504, 1
  %.reass1891.us.1 = mul i64 %factor.op.mul1890, %i.awu
  br label %.preheader1805.us

.preheader1805.us:                                ; preds = %.preheader1810.us, %.preheader1805.us
  %indvars.iv2499 = phi i64 [ 0, %.preheader1810.us ], [ %indvars.iv.next2500, %.preheader1805.us ] ; 2 uses
  %.138581895.us = phi ptr [ %.128571898.us, %.preheader1810.us ], [ %i.axs, %.preheader1805.us ] ; 3 uses
  %invariant.gep1892.us = getelementptr [4 x i8], ptr %i.avy, i64 %indvars.iv2499 ; 2 uses
  %gep.us1903 = getelementptr i8, ptr %invariant.gep1892.us, i64 %.reass1891.us
  %i.awv = getelementptr i8, ptr %gep.us1903, <16 x i64> %i.awo
  %i.aww = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.awv, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.awx = lshr <16 x i32> %i.aww, splat (i32 16)
  %i.awy = trunc nuw <16 x i32> %i.awx to <16 x i16>
  store <16 x i16> %i.awy, ptr %.138581895.us, align 2, !tbaa !43
  %i.awz = getelementptr inbounds nuw i8, ptr %.138581895.us, i64 32
  %gep.us1903.1 = getelementptr i8, ptr %invariant.gep1892.us, i64 %.reass1891.us.1 ; 6 uses
  %gep1887.us.12498 = getelementptr i8, ptr %gep.us1903.1, i64 %.reass.us1902
  %i.axa = load i32, ptr %gep1887.us.12498, align 4, !tbaa !91
  %gep1887.us.1.1 = getelementptr i8, ptr %gep.us1903.1, i64 %i.awp
  %i.axb = load i32, ptr %gep1887.us.1.1, align 4, !tbaa !91
  %gep1887.us.2.1 = getelementptr i8, ptr %gep.us1903.1, i64 %i.awq
  %i.axc = load i32, ptr %gep1887.us.2.1, align 4, !tbaa !91
  %gep1887.us.3.1 = getelementptr i8, ptr %gep.us1903.1, i64 %i.awr
  %i.axd = load i32, ptr %gep1887.us.3.1, align 4, !tbaa !91
  %i.axe = getelementptr i8, ptr %gep.us1903.1, <4 x i64> %i.awt
  %i.axf = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.axe, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !91
  %i.axg = getelementptr i8, ptr %gep.us1903.1, <8 x i64> %i.aws
  %i.axh = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %i.axg, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !91
  %i.axi = insertelement <16 x i32> poison, i32 %i.axa, i64 0
  %i.axj = insertelement <16 x i32> %i.axi, i32 %i.axb, i64 1
  %i.axk = insertelement <16 x i32> %i.axj, i32 %i.axc, i64 2
  %i.axl = insertelement <16 x i32> %i.axk, i32 %i.axd, i64 3
  %i.axm = shufflevector <8 x i32> %i.axh, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axn = shufflevector <16 x i32> %i.axl, <16 x i32> %i.axm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.axo = shufflevector <4 x i32> %i.axf, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axp = shufflevector <16 x i32> %i.axn, <16 x i32> %i.axo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axq = lshr <16 x i32> %i.axp, splat (i32 16)
  %i.axr = trunc nuw <16 x i32> %i.axq to <16 x i16>
  store <16 x i16> %i.axr, ptr %i.awz, align 2, !tbaa !43
  %i.axs = getelementptr inbounds nuw i8, ptr %.138581895.us, i64 64 ; 3 uses
  %indvars.iv.next2500 = add nuw nsw i64 %indvars.iv2499, 1 ; 2 uses
  %exitcond2503.not = icmp eq i64 %indvars.iv.next2500, %wide.trip.count2502
  br i1 %exitcond2503.not, label %._crit_edge1897.us, label %.preheader1805.us, !llvm.loop !358

._crit_edge1897.us:                               ; preds = %.preheader1805.us
  %indvars.iv.next2505 = add nuw nsw i64 %indvars.iv2504, 2 ; 3 uses
  %i.axt = trunc i64 %indvars.iv.next2505 to i32
  %i.axu = or i32 %i.axt, 1
  %i.axv = icmp slt i32 %i.axu, %2
  br i1 %i.axv, label %.preheader1810.us, label %.preheader1814.loopexit, !llvm.loop !359

.preheader1814.loopexit:                          ; preds = %._crit_edge1897.us
  %i.axw = trunc nuw i64 %indvars.iv.next2505 to i32
  br label %.preheader1814

.preheader1814:                                   ; preds = %.preheader1810.preheader, %.preheader1814.loopexit, %.preheader1815
  %.12857.lcssa = phi ptr [ %.8853.lcssa, %.preheader1815 ], [ %i.axs, %.preheader1814.loopexit ], [ %.8853.lcssa, %.preheader1810.preheader ]
  %.3843.lcssa = phi i32 [ %.2842.lcssa, %.preheader1815 ], [ %i.axw, %.preheader1814.loopexit ], [ %i.awg, %.preheader1810.preheader ] ; 2 uses
  %i.axx = icmp slt i32 %.3843.lcssa, %2
  br i1 %i.axx, label %.preheader1809.lr.ph, label %._crit_edge1917.split

.preheader1809.lr.ph:                             ; preds = %.preheader1814
  %i.axy = load i32, ptr %i.kb, align 4
  %i.axz = load ptr, ptr %7, align 8
  %i.aya = load i64, ptr %i.kd, align 8           ; 2 uses
  %i.ayb = sext i32 %i.axy to i64
  %factor.op.mul1918 = mul i64 %i.aya, %i.ayb
  br i1 %i.ka, label %.preheader1809.preheader, label %._crit_edge1917.split

.preheader1809.preheader:                         ; preds = %.preheader1809.lr.ph
  %i.ayc = load i64, ptr %i.kc, align 8
  %factor.op.mul1907 = mul i64 %i.ayc, %i.aya
  %i.ayd = zext i32 %.3843.lcssa to i64
  %i.aye = insertelement <16 x i64> poison, i64 %indvars.iv2519, i64 0
  %i.ayf = shufflevector <16 x i64> %i.aye, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ayg = or disjoint <16 x i64> %i.ayf, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.ayh = insertelement <16 x i64> poison, i64 %factor.op.mul1907, i64 0
  %i.ayi = shufflevector <16 x i64> %i.ayh, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ayj = mul <16 x i64> %i.ayi, %i.ayg          ; 5 uses
  br label %.preheader1809

.preheader1809:                                   ; preds = %.preheader1809.preheader, %._crit_edge1914
  %indvars.iv2516 = phi i64 [ %i.ayd, %.preheader1809.preheader ], [ %indvars.iv.next2517, %._crit_edge1914 ] ; 2 uses
  %.168611915 = phi ptr [ %.12857.lcssa, %.preheader1809.preheader ], [ %.lcssa3414, %._crit_edge1914 ] ; 2 uses
  %.reass1919 = mul i64 %factor.op.mul1918, %indvars.iv2516
  %invariant.gep = getelementptr i8, ptr %i.axz, i64 %.reass1919 ; 5 uses
  br i1 %i.ki, label %.preheader1804.epil.preheader, label %.preheader1809.new

.preheader1809.new:                               ; preds = %.preheader1809
  %invariant.gep3461 = getelementptr i8, ptr %invariant.gep, <16 x i64> %i.ayj
  br label %.preheader1804

.preheader1804:                                   ; preds = %.preheader1804, %.preheader1809.new
  %indvars.iv2511 = phi i64 [ 0, %.preheader1809.new ], [ %indvars.iv.next2512.3, %.preheader1804 ] ; 5 uses
  %.178621912 = phi ptr [ %.168611915, %.preheader1809.new ], [ %i.azf, %.preheader1804 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1809.new ], [ %niter.next.3, %.preheader1804 ]
  %gep = getelementptr [4 x i8], <16 x ptr> %invariant.gep3461, i64 %indvars.iv2511
  %i.ayk = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.ayl = lshr <16 x i32> %i.ayk, splat (i32 16)
  %i.aym = trunc nuw <16 x i32> %i.ayl to <16 x i16>
  store <16 x i16> %i.aym, ptr %.178621912, align 2, !tbaa !43
  %i.ayn = getelementptr inbounds nuw i8, ptr %.178621912, i64 32
  %i.ayo = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2511
  %invariant.gep1908.1 = getelementptr i8, ptr %i.ayo, i64 4
  %i.ayp = getelementptr i8, ptr %invariant.gep1908.1, <16 x i64> %i.ayj
  %i.ayq = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.ayp, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.ayr = lshr <16 x i32> %i.ayq, splat (i32 16)
  %i.ays = trunc nuw <16 x i32> %i.ayr to <16 x i16>
  store <16 x i16> %i.ays, ptr %i.ayn, align 2, !tbaa !43
  %i.ayt = getelementptr inbounds nuw i8, ptr %.178621912, i64 64
  %i.ayu = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2511
  %invariant.gep1908.2 = getelementptr i8, ptr %i.ayu, i64 8
  %i.ayv = getelementptr i8, ptr %invariant.gep1908.2, <16 x i64> %i.ayj
  %i.ayw = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.ayv, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.ayx = lshr <16 x i32> %i.ayw, splat (i32 16)
  %i.ayy = trunc nuw <16 x i32> %i.ayx to <16 x i16>
  store <16 x i16> %i.ayy, ptr %i.ayt, align 2, !tbaa !43
  %i.ayz = getelementptr inbounds nuw i8, ptr %.178621912, i64 96
  %i.aza = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2511
  %invariant.gep1908.3 = getelementptr i8, ptr %i.aza, i64 12
  %i.azb = getelementptr i8, ptr %invariant.gep1908.3, <16 x i64> %i.ayj
  %i.azc = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.azb, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.azd = lshr <16 x i32> %i.azc, splat (i32 16)
  %i.aze = trunc nuw <16 x i32> %i.azd to <16 x i16>
  store <16 x i16> %i.aze, ptr %i.ayz, align 2, !tbaa !43
  %i.azf = getelementptr inbounds nuw i8, ptr %.178621912, i64 128 ; 3 uses
  %indvars.iv.next2512.3 = add nuw nsw i64 %indvars.iv2511, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1914.unr-lcssa, label %.preheader1804, !llvm.loop !360

._crit_edge1914.unr-lcssa:                        ; preds = %.preheader1804
  br i1 %lcmp.mod3416.not, label %._crit_edge1914, label %.preheader1804.epil.preheader

.preheader1804.epil.preheader:                    ; preds = %._crit_edge1914.unr-lcssa, %.preheader1809
  %indvars.iv2511.epil.init = phi i64 [ 0, %.preheader1809 ], [ %indvars.iv.next2512.3, %._crit_edge1914.unr-lcssa ]
  %.178621912.epil.init = phi ptr [ %.168611915, %.preheader1809 ], [ %i.azf, %._crit_edge1914.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3418)
  %invariant.gep3462 = getelementptr i8, ptr %invariant.gep, <16 x i64> %i.ayj
  br label %.preheader1804.epil

.preheader1804.epil:                              ; preds = %.preheader1804.epil, %.preheader1804.epil.preheader
  %indvars.iv2511.epil = phi i64 [ %indvars.iv2511.epil.init, %.preheader1804.epil.preheader ], [ %indvars.iv.next2512.epil, %.preheader1804.epil ] ; 2 uses
  %.178621912.epil = phi ptr [ %.178621912.epil.init, %.preheader1804.epil.preheader ], [ %i.azj, %.preheader1804.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1804.epil.preheader ], [ %epil.iter.next, %.preheader1804.epil ]
  %gep3463 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3462, i64 %indvars.iv2511.epil
  %i.azg = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep3463, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.azh = lshr <16 x i32> %i.azg, splat (i32 16)
  %i.azi = trunc nuw <16 x i32> %i.azh to <16 x i16>
  store <16 x i16> %i.azi, ptr %.178621912.epil, align 2, !tbaa !43
  %i.azj = getelementptr inbounds nuw i8, ptr %.178621912.epil, i64 32 ; 2 uses
  %indvars.iv.next2512.epil = add nuw nsw i64 %indvars.iv2511.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3415
  br i1 %epil.iter.cmp.not, label %._crit_edge1914, label %.preheader1804.epil, !llvm.loop !361

._crit_edge1914:                                  ; preds = %.preheader1804.epil, %._crit_edge1914.unr-lcssa
  %.lcssa3414 = phi ptr [ %i.azf, %._crit_edge1914.unr-lcssa ], [ %i.azj, %.preheader1804.epil ]
  %indvars.iv.next2517 = add nuw nsw i64 %indvars.iv2516, 1 ; 2 uses
  %i.azk = trunc nuw i64 %indvars.iv.next2517 to i32
  %i.azl = icmp sgt i32 %2, %i.azk
  br i1 %i.azl, label %.preheader1809, label %._crit_edge1917.split, !llvm.loop !362

._crit_edge1917.split:                            ; preds = %._crit_edge1914, %.preheader1809.lr.ph, %.preheader1814
  %indvars.iv.next2520 = add nuw nsw i64 %indvars.iv2519, 16 ; 3 uses
  %i.azm = or disjoint i64 %indvars.iv.next2520, 15
  %i.azn = icmp samesign ult i64 %i.azm, %i.kg
  br i1 %i.azn, label %.noexc982, label %.preheader1799.loopexit, !llvm.loop !363

.preheader1780.loopexit:                          ; preds = %._crit_edge2031.split
  %i.azo = trunc nuw nsw i64 %indvars.iv.next2612 to i32
  br label %.preheader1780

.preheader1780:                                   ; preds = %.preheader1780.loopexit, %.preheader1799
  %.1865.lcssa = phi i32 [ %.0864.lcssa, %.preheader1799 ], [ %i.azo, %.preheader1780.loopexit ] ; 3 uses
  %i.azp = or disjoint i32 %.1865.lcssa, 3
  %i.azq = icmp slt i32 %i.azp, %3
  br i1 %i.azq, label %.noexc958.lr.ph, label %.preheader1761

.noexc958.lr.ph:                                  ; preds = %.preheader1780
  %i.azr = load ptr, ptr %1, align 8, !tbaa !19, !noalias !364
  %i.azs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.azt = load i64, ptr %i.azs, align 8, !tbaa !17, !noalias !364
  %i.azu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !30, !noalias !364
  %factor.op.mul2152 = mul i64 %i.azt, %i.azv
  %i.azw = icmp sgt i32 %2, 15
  %i.azx = icmp sgt i32 %i.a, 0                   ; 5 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 5 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 5 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bab = and i32 %2, -16
  %i.bac = sext i32 %2 to i64
  %i.bad = zext nneg i32 %.1865.lcssa to i64
  %wide.trip.count2625 = zext i32 %i.a to i64     ; 11 uses
  %invariant.op2910 = add nsw i64 %i.bac, -15
  %wide.trip.count2645 = zext nneg i32 %i.a to i64
  %wide.trip.count2665 = zext nneg i32 %i.a to i64
  %wide.trip.count2682 = zext nneg i32 %i.a to i64
  %wide.trip.count2694 = zext nneg i32 %i.a to i64
  %min.iters.check3061 = icmp ult i32 %i.a, 4
  %min.iters.check3063 = icmp ult i32 %i.a, 16
  %i.bae = and i64 %wide.trip.count2625, 12
  %n.vec3065 = and i64 %wide.trip.count2625, 2147483632 ; 5 uses
  %i.baf = shl nuw nsw i64 %n.vec3065, 4
  %cmp.n3080 = icmp eq i64 %n.vec3065, %wide.trip.count2625
  %min.epilog.iters.check3086 = icmp eq i64 %i.bae, 0
  %n.vec3088 = and i64 %wide.trip.count2625, 2147483644 ; 4 uses
  %i.bag = shl nuw nsw i64 %n.vec3088, 4
  %cmp.n3103 = icmp eq i64 %n.vec3088, %wide.trip.count2625
  %min.iters.check3024 = icmp ult i32 %i.a, 4
  %min.iters.check3026 = icmp ult i32 %i.a, 16
  %i.bah = and i64 %wide.trip.count2625, 12
  %n.vec3028 = and i64 %wide.trip.count2625, 2147483632 ; 5 uses
  %i.bai = shl nuw nsw i64 %n.vec3028, 3
  %cmp.n3039 = icmp eq i64 %n.vec3028, %wide.trip.count2625
  %min.epilog.iters.check3045 = icmp eq i64 %i.bah, 0
  %n.vec3047 = and i64 %wide.trip.count2625, 2147483644 ; 4 uses
  %i.baj = shl nuw nsw i64 %n.vec3047, 3
  %cmp.n3058 = icmp eq i64 %n.vec3047, %wide.trip.count2625
  br label %.noexc958

.noexc970:                                        ; preds = %.noexc970.lr.ph, %._crit_edge2031.split
  %indvars.iv2611 = phi i64 [ %i.ky, %.noexc970.lr.ph ], [ %indvars.iv.next2612, %._crit_edge2031.split ] ; 31 uses
  %i.bak = trunc nuw nsw i64 %indvars.iv2611 to i32
  %i.bal = lshr i32 %i.bak, 4
  %i.bam = trunc i64 %indvars.iv2611 to i32
  %i.ban = lshr i32 %i.bam, 3
  %i.bao = and i32 %i.ban, 1
  %i.bap = add nuw nsw i32 %i.bao, %i.bal
  %i.baq = zext nneg i32 %i.bap to i64
  %.reass2039 = mul i64 %factor.op.mul2038, %i.baq
  %i.bar = getelementptr inbounds nuw i8, ptr %i.km, i64 %.reass2039 ; 3 uses
  br i1 %i.kr, label %.preheader1794.lr.ph, label %.preheader1798

.preheader1794.lr.ph:                             ; preds = %.noexc970
  %i.bas = load i32, ptr %i.kt, align 4
  %i.bat = load ptr, ptr %7, align 8
  %i.bau = load i64, ptr %i.kv, align 8           ; 2 uses
  %i.bav = sext i32 %i.bas to i64
  %factor.op.mul1933 = mul i64 %i.bau, %i.bav
  br i1 %i.ks, label %.preheader1794.us.preheader, label %.preheader1798

.preheader1794.us.preheader:                      ; preds = %.preheader1794.lr.ph
  %i.baw = load i64, ptr %i.ku, align 8
  %factor.op.mul1926 = mul i64 %i.baw, %i.bau     ; 8 uses
  %.reass1927.us = mul i64 %factor.op.mul1926, %indvars.iv2611
  %i.bax = or disjoint i64 %indvars.iv2611, 1
  %.reass1927.us.1 = mul i64 %factor.op.mul1926, %i.bax
  %i.bay = or disjoint i64 %indvars.iv2611, 2
  %.reass1927.us.2 = mul i64 %factor.op.mul1926, %i.bay
  %i.baz = or disjoint i64 %indvars.iv2611, 3
  %.reass1927.us.3 = mul i64 %factor.op.mul1926, %i.baz
  %i.bba = or disjoint i64 %indvars.iv2611, 4
  %.reass1927.us.4 = mul i64 %factor.op.mul1926, %i.bba
  %i.bbb = or disjoint i64 %indvars.iv2611, 5
  %.reass1927.us.5 = mul i64 %factor.op.mul1926, %i.bbb
  %i.bbc = or disjoint i64 %indvars.iv2611, 6
  %.reass1927.us.6 = mul i64 %factor.op.mul1926, %i.bbc
  %i.bbd = or disjoint i64 %indvars.iv2611, 7
  %.reass1927.us.7 = mul i64 %factor.op.mul1926, %i.bbd
  %broadcast.splatinsert3004 = insertelement <16 x i64> poison, i64 %factor.op.mul1933, i64 0
  %broadcast.splat3005 = shufflevector <16 x i64> %broadcast.splatinsert3004, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader1794.us

.preheader1794.us:                                ; preds = %.preheader1794.us.preheader, %._crit_edge1940.us
  %indvars.iv2535 = phi i64 [ 0, %.preheader1794.us.preheader ], [ %indvars.iv.next2536, %._crit_edge1940.us ] ; 2 uses
  %.08071942.us = phi ptr [ %i.bar, %.preheader1794.us.preheader ], [ %i.bbg, %._crit_edge1940.us ]
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %indvars.iv2535, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.bbe = or disjoint <16 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.bbf = mul <16 x i64> %broadcast.splat3005, %i.bbe
  %invariant.gep3464 = getelementptr i8, ptr %i.bat, <16 x i64> %i.bbf
  br label %.preheader1789.us

.preheader1789.us:                                ; preds = %.preheader1794.us, %.preheader1789.us
  %indvars.iv2530 = phi i64 [ 0, %.preheader1794.us ], [ %indvars.iv.next2531, %.preheader1789.us ] ; 2 uses
  %.18081938.us = phi ptr [ %.08071942.us, %.preheader1794.us ], [ %i.bbg, %.preheader1789.us ] ; 2 uses
  %i.bbg = getelementptr i8, ptr %.18081938.us, i64 256 ; 3 uses
  %gep3465 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3464, i64 %indvars.iv2530 ; 8 uses
  %wide.gep3007 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us
  %wide.masked.gather = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3007, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %wide.gep3008 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us.1
  %wide.masked.gather3009 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3008, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %wide.gep3010 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us.2
  %wide.masked.gather3011 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3010, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %wide.gep3012 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us.3
  %wide.masked.gather3013 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3012, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %wide.gep3014 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us.4
  %wide.masked.gather3015 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3014, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %wide.gep3016 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us.5
  %wide.masked.gather3017 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3016, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %wide.gep3018 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us.6
  %wide.masked.gather3019 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3018, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %wide.gep3020 = getelementptr i8, <16 x ptr> %gep3465, i64 %.reass1927.us.7
  %wide.masked.gather3021 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3020, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.bbh = shufflevector <16 x i32> %wide.masked.gather, <16 x i32> %wide.masked.gather3009, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbi = shufflevector <16 x i32> %wide.masked.gather3011, <16 x i32> %wide.masked.gather3013, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbj = shufflevector <32 x i32> %i.bbh, <32 x i32> %i.bbi, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bbk = lshr <64 x i32> %i.bbj, splat (i32 16)
  %i.bbl = trunc nuw <64 x i32> %i.bbk to <64 x i16>
  %i.bbm = shufflevector <16 x i32> %wide.masked.gather3015, <16 x i32> %wide.masked.gather3017, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbn = shufflevector <16 x i32> %wide.masked.gather3019, <16 x i32> %wide.masked.gather3021, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbo = shufflevector <32 x i32> %i.bbm, <32 x i32> %i.bbn, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bbp = lshr <64 x i32> %i.bbo, splat (i32 16)
  %i.bbq = trunc nuw <64 x i32> %i.bbp to <64 x i16>
  %interleaved.vec3022 = shufflevector <64 x i16> %i.bbl, <64 x i16> %i.bbq, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec3022, ptr %.18081938.us, align 2, !tbaa !43
  %indvars.iv.next2531 = add nuw nsw i64 %indvars.iv2530, 1 ; 2 uses
  %exitcond2534.not = icmp eq i64 %indvars.iv.next2531, %wide.trip.count2533
  br i1 %exitcond2534.not, label %._crit_edge1940.us, label %.preheader1789.us, !llvm.loop !367

._crit_edge1940.us:                               ; preds = %.preheader1789.us
  %indvars.iv.next2536 = add nuw nsw i64 %indvars.iv2535, 16 ; 3 uses
  %i.bbr = icmp slt i64 %indvars.iv.next2536, %invariant.op2908
  br i1 %i.bbr, label %.preheader1794.us, label %.preheader1798.loopexit, !llvm.loop !368

.preheader1798.loopexit:                          ; preds = %._crit_edge1940.us
  %i.bbs = trunc nuw nsw i64 %indvars.iv.next2536 to i32
  br label %.preheader1798

.preheader1798:                                   ; preds = %.preheader1794.lr.ph, %.preheader1798.loopexit, %.noexc970
  %.0807.lcssa = phi ptr [ %i.bar, %.noexc970 ], [ %i.bbg, %.preheader1798.loopexit ], [ %i.bar, %.preheader1794.lr.ph ] ; 3 uses
  %.0802.lcssa = phi i32 [ 0, %.noexc970 ], [ %i.bbs, %.preheader1798.loopexit ], [ %i.kw, %.preheader1794.lr.ph ] ; 6 uses
  %i.bbt = or disjoint i32 %.0802.lcssa, 7
  %i.bbu = icmp slt i32 %i.bbt, %2
  br i1 %i.bbu, label %.preheader1793.lr.ph, label %.preheader1797

end_hunk_2
begin_hunk_3_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  %i.cmy = shufflevector <8 x i32> %i.cmw, <8 x i32> %i.cmx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cmz = lshr <16 x i32> %i.cmy, splat (i32 16)
  %interleaved.vec3055 = trunc nuw <16 x i32> %i.cmz to <16 x i16>
  store <16 x i16> %interleaved.vec3055, ptr %next.gep3050, align 2, !tbaa !43
  %index.next3056 = add nuw i64 %index3049, 4     ; 2 uses
  %i.cna = icmp eq i64 %index.next3056, %n.vec3047
  br i1 %i.cna, label %vec.epilog.middle.block3057, label %vec.epilog.vector.body3048, !llvm.loop !395

vec.epilog.middle.block3057:                      ; preds = %vec.epilog.vector.body3048
  br i1 %cmp.n3058, label %._crit_edge2141, label %.preheader1766.preheader

.preheader1766.preheader:                         ; preds = %iter.check3042, %vec.epilog.iter.check3044, %vec.epilog.middle.block3057
  %indvars.iv2691.ph = phi i64 [ 0, %iter.check3042 ], [ %n.vec3028, %vec.epilog.iter.check3044 ], [ %n.vec3047, %vec.epilog.middle.block3057 ]
  %.177862139.ph = phi ptr [ %.167852143, %iter.check3042 ], [ %i.cmb, %vec.epilog.iter.check3044 ], [ %i.cmp, %vec.epilog.middle.block3057 ]
  %invariant.gep3470 = getelementptr i8, ptr %invariant.gep2134, <4 x i64> %i.clu
  br label %.preheader1766

.preheader1766:                                   ; preds = %.preheader1766.preheader, %.preheader1766
  %indvars.iv2691 = phi i64 [ %indvars.iv.next2692, %.preheader1766 ], [ %indvars.iv2691.ph, %.preheader1766.preheader ] ; 2 uses
  %.177862139 = phi ptr [ %i.cne, %.preheader1766 ], [ %.177862139.ph, %.preheader1766.preheader ] ; 2 uses
  %gep3471 = getelementptr [4 x i8], <4 x ptr> %invariant.gep3470, i64 %indvars.iv2691
  %i.cnb = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %gep3471, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !91
  %i.cnc = lshr <4 x i32> %i.cnb, splat (i32 16)
  %i.cnd = trunc nuw <4 x i32> %i.cnc to <4 x i16>
  store <4 x i16> %i.cnd, ptr %.177862139, align 2, !tbaa !43
  %i.cne = getelementptr inbounds nuw i8, ptr %.177862139, i64 8 ; 2 uses
  %indvars.iv.next2692 = add nuw nsw i64 %indvars.iv2691, 1 ; 2 uses
  %exitcond2695.not = icmp eq i64 %indvars.iv.next2692, %wide.trip.count2694
  br i1 %exitcond2695.not, label %._crit_edge2141, label %.preheader1766, !llvm.loop !396

._crit_edge2141:                                  ; preds = %.preheader1766, %vec.epilog.middle.block3057, %middle.block3038
  %.lcssa2933 = phi ptr [ %i.cmp, %vec.epilog.middle.block3057 ], [ %i.cmb, %middle.block3038 ], [ %i.cne, %.preheader1766 ]
  %indvars.iv.next2697 = add nuw nsw i64 %indvars.iv2696, 1 ; 2 uses
  %i.cnf = trunc nuw i64 %indvars.iv.next2697 to i32
  %i.cng = icmp sgt i32 %2, %i.cnf
  br i1 %i.cng, label %iter.check3042, label %._crit_edge2145.split, !llvm.loop !397

._crit_edge2145.split:                            ; preds = %._crit_edge2141, %.preheader1771.lr.ph, %.preheader1776
  %indvars.iv.next2700 = add nuw nsw i64 %indvars.iv2699, 4 ; 3 uses
  %i.cnh = trunc i64 %indvars.iv.next2700 to i32
  %i.cni = or i32 %i.cnh, 3
  %i.cnj = icmp slt i32 %i.cni, %3
  br i1 %i.cnj, label %.noexc958, label %.preheader1761.loopexit, !llvm.loop !398

.preheader1742.loopexit:                          ; preds = %._crit_edge2255.split
  %i.cnk = trunc nuw i64 %indvars.iv.next2780 to i32
  br label %.preheader1742

.preheader1742:                                   ; preds = %.preheader1742.loopexit, %.preheader1761
  %.3867.lcssa = phi i32 [ %.2866.lcssa, %.preheader1761 ], [ %i.cnk, %.preheader1742.loopexit ] ; 2 uses
  %i.cnl = icmp slt i32 %.3867.lcssa, %3
  br i1 %i.cnl, label %.noexc934.lr.ph, label %._crit_edge2338

.noexc934.lr.ph:                                  ; preds = %.preheader1742
  %i.cnm = load ptr, ptr %1, align 8, !tbaa !19, !noalias !399
  %i.cnn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cno = load i64, ptr %i.cnn, align 8, !tbaa !17, !noalias !399
  %i.cnp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cnq = load i64, ptr %i.cnp, align 8, !tbaa !30, !noalias !399
  %factor.op.mul2339 = mul i64 %i.cno, %i.cnq
  %i.cnr = icmp sgt i32 %2, 15
  %i.cns = icmp sgt i32 %i.a, 0                   ; 5 uses
  %i.cnt = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 5 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 5 uses
  %i.cnv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.cnw = and i32 %2, -16
  %i.cnx = sext i32 %2 to i64
  %i.cny = zext i32 %.3867.lcssa to i64
  %wide.trip.count2789 = zext i32 %i.a to i64     ; 22 uses
  %invariant.op2912 = add nsw i64 %i.cnx, -15
  %wide.trip.count2802 = zext nneg i32 %i.a to i64
  %wide.trip.count2815 = zext nneg i32 %i.a to i64
  %wide.trip.count2827 = zext nneg i32 %i.a to i64
  %wide.trip.count2835 = zext nneg i32 %i.a to i64
  %xtraiter3427 = and i64 %wide.trip.count2789, 3 ; 3 uses
  %i.cnz = add nsw i32 %i.a, -1
  %i.coa = icmp ult i32 %i.cnz, 3
  %unroll_iter3432 = and i64 %wide.trip.count2789, 2147483644
  %lcmp.mod3429.not = icmp eq i64 %xtraiter3427, 0
  %lcmp.mod3431 = icmp ne i64 %xtraiter3427, 0
  %min.iters.check3340 = icmp ult i32 %i.a, 4
  %min.iters.check3342 = icmp ult i32 %i.a, 16
  %i.cob = and i64 %wide.trip.count2789, 12
  %n.vec3344 = and i64 %wide.trip.count2789, 2147483632 ; 5 uses
  %i.coc = shl nuw nsw i64 %n.vec3344, 4
  %cmp.n3359 = icmp eq i64 %n.vec3344, %wide.trip.count2789
  %min.epilog.iters.check3365 = icmp eq i64 %i.cob, 0
  %n.vec3367 = and i64 %wide.trip.count2789, 2147483644 ; 4 uses
  %i.cod = shl nuw nsw i64 %n.vec3367, 4
  %cmp.n3382 = icmp eq i64 %n.vec3367, %wide.trip.count2789
  %min.iters.check3303 = icmp ult i32 %i.a, 4
  %min.iters.check3305 = icmp ult i32 %i.a, 16
  %i.coe = and i64 %wide.trip.count2789, 12
  %n.vec3307 = and i64 %wide.trip.count2789, 2147483632 ; 5 uses
  %i.cof = shl nuw nsw i64 %n.vec3307, 3
  %cmp.n3318 = icmp eq i64 %n.vec3307, %wide.trip.count2789
  %min.epilog.iters.check3324 = icmp eq i64 %i.coe, 0
  %n.vec3326 = and i64 %wide.trip.count2789, 2147483644 ; 4 uses
  %i.cog = shl nuw nsw i64 %n.vec3326, 3
  %cmp.n3337 = icmp eq i64 %n.vec3326, %wide.trip.count2789
  %min.iters.check3270 = icmp ult i32 %i.a, 4
  %min.iters.check3272 = icmp ult i32 %i.a, 16
  %i.coh = and i64 %wide.trip.count2789, 12
  %n.vec3274 = and i64 %wide.trip.count2789, 2147483632 ; 5 uses
  %i.coi = shl nuw nsw i64 %n.vec3274, 2
  %cmp.n3283 = icmp eq i64 %n.vec3274, %wide.trip.count2789
  %min.epilog.iters.check3289 = icmp eq i64 %i.coh, 0
  %n.vec3291 = and i64 %wide.trip.count2789, 2147483644 ; 4 uses
  %i.coj = shl nuw nsw i64 %n.vec3291, 2
  %cmp.n3300 = icmp eq i64 %n.vec3291, %wide.trip.count2789
  %min.iters.check3238 = icmp ult i32 %i.a, 8
  %min.iters.check3240 = icmp ult i32 %i.a, 64
  %i.cok = and i64 %wide.trip.count2789, 56
  %n.vec3242 = and i64 %wide.trip.count2789, 2147483584 ; 5 uses
  %i.col = shl nuw nsw i64 %n.vec3242, 1
  %cmp.n3252 = icmp eq i64 %n.vec3242, %wide.trip.count2789
  %min.epilog.iters.check3258 = icmp eq i64 %i.cok, 0
  %n.vec3260 = and i64 %wide.trip.count2789, 2147483640 ; 4 uses
  %i.com = shl nuw nsw i64 %n.vec3260, 1
  %cmp.n3267 = icmp eq i64 %n.vec3260, %wide.trip.count2789
  br label %.noexc934

.noexc946:                                        ; preds = %.noexc946.lr.ph, %._crit_edge2255.split
  %indvars.iv2779 = phi i64 [ %i.byf, %.noexc946.lr.ph ], [ %indvars.iv.next2780, %._crit_edge2255.split ] ; 12 uses
  %i.con = trunc i64 %indvars.iv2779 to i32
  %i.coo = insertelement <2 x i32> poison, i32 %i.con, i64 0
  %i.cop = shufflevector <2 x i32> %i.coo, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.coq = lshr <4 x i32> %i.cop, <i32 3, i32 2, i32 1, i32 4>
  %i.cor = and <4 x i32> %i.coq, <i32 1, i32 1, i32 1, i32 -1>
  %i.cos = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cor)
  %i.cot = zext nneg i32 %i.cos to i64
  %.reass2263 = mul i64 %factor.op.mul2262, %i.cot
  %i.cou = getelementptr inbounds nuw i8, ptr %i.bxt, i64 %.reass2263 ; 3 uses
  br i1 %i.bxy, label %.preheader1756.lr.ph, label %.preheader1760

.preheader1756.lr.ph:                             ; preds = %.noexc946
  %i.cov = load ptr, ptr %7, align 8              ; 3 uses
  br i1 %i.bxz, label %.preheader1756.us.preheader, label %.preheader1760

.preheader1756.us.preheader:                      ; preds = %.preheader1756.lr.ph
  %i.cow = load i64, ptr %i.byc, align 8          ; 2 uses
  %i.cox = load i32, ptr %i.bya, align 4
  %i.coy = sext i32 %i.cox to i64
  %factor.op.mul2154 = mul i64 %i.cow, %i.coy
  %i.coz = load i64, ptr %i.byb, align 8
  %factor.op.mul2159 = mul i64 %i.coz, %i.cow     ; 2 uses
  %.reass2160.us = mul i64 %factor.op.mul2159, %indvars.iv2779 ; 3 uses
  %i.cpa = or disjoint i64 %indvars.iv2779, 1
  %.reass2160.us.1 = mul i64 %factor.op.mul2159, %i.cpa ; 3 uses
  %i.cpb = insertelement <16 x i64> poison, i64 %factor.op.mul2154, i64 0
  %i.cpc = shufflevector <16 x i64> %i.cpb, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %.preheader1756.us

.preheader1756.us:                                ; preds = %.preheader1756.us.preheader, %._crit_edge2167.us
  %indvars.iv2715 = phi i64 [ 0, %.preheader1756.us.preheader ], [ %indvars.iv.next2716, %._crit_edge2167.us ] ; 3 uses
  %.07362169.us = phi ptr [ %i.cou, %.preheader1756.us.preheader ], [ %.lcssa3395, %._crit_edge2167.us ] ; 2 uses
  %i.cpd = insertelement <16 x i64> poison, i64 %indvars.iv2715, i64 0
  %i.cpe = shufflevector <16 x i64> %i.cpd, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.cpf = or disjoint <16 x i64> %i.cpe, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 2 uses
  %i.cpg = insertelement <16 x i64> %i.cpf, i64 %indvars.iv2715, i64 0
  %i.cph = mul <16 x i64> %i.cpc, %i.cpg          ; 3 uses
  %i.cpi = mul <16 x i64> %i.cpc, %i.cpf          ; 3 uses
  br i1 %i.byg, label %.preheader1751.us.epil.preheader, label %.preheader1751.us

.preheader1751.us:                                ; preds = %.preheader1756.us, %.preheader1751.us
  %indvars.iv2710 = phi i64 [ %indvars.iv.next2711.1, %.preheader1751.us ], [ 0, %.preheader1756.us ] ; 3 uses
  %.17372165.us = phi ptr [ %i.cqd, %.preheader1751.us ], [ %.07362169.us, %.preheader1756.us ] ; 5 uses
  %niter3425 = phi i64 [ %niter3425.next.1, %.preheader1751.us ], [ 0, %.preheader1756.us ]
  %invariant.gep2161.us = getelementptr [4 x i8], ptr %i.cov, i64 %indvars.iv2710 ; 2 uses
  %gep2162.us = getelementptr i8, ptr %invariant.gep2161.us, i64 %.reass2160.us
  %i.cpj = getelementptr i8, ptr %gep2162.us, <16 x i64> %i.cph
  %i.cpk = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpj, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.cpl = lshr <16 x i32> %i.cpk, splat (i32 16)
  %i.cpm = trunc nuw <16 x i32> %i.cpl to <16 x i16>
  store <16 x i16> %i.cpm, ptr %.17372165.us, align 2, !tbaa !43
  %i.cpn = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 32
  %gep2162.us.1 = getelementptr i8, ptr %invariant.gep2161.us, i64 %.reass2160.us.1
  %i.cpo = getelementptr i8, ptr %gep2162.us.1, <16 x i64> %i.cpi
  %i.cpp = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpo, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.cpq = lshr <16 x i32> %i.cpp, splat (i32 16)
  %i.cpr = trunc nuw <16 x i32> %i.cpq to <16 x i16>
  store <16 x i16> %i.cpr, ptr %i.cpn, align 2, !tbaa !43
  %i.cps = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 64
  %i.cpt = getelementptr [4 x i8], ptr %i.cov, i64 %indvars.iv2710
  %invariant.gep2161.us.1 = getelementptr i8, ptr %i.cpt, i64 4 ; 2 uses
  %gep2162.us.13426 = getelementptr i8, ptr %invariant.gep2161.us.1, i64 %.reass2160.us
  %i.cpu = getelementptr i8, ptr %gep2162.us.13426, <16 x i64> %i.cph
  %i.cpv = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpu, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.cpw = lshr <16 x i32> %i.cpv, splat (i32 16)
  %i.cpx = trunc nuw <16 x i32> %i.cpw to <16 x i16>
  store <16 x i16> %i.cpx, ptr %i.cps, align 2, !tbaa !43
  %i.cpy = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 96
  %gep2162.us.1.1 = getelementptr i8, ptr %invariant.gep2161.us.1, i64 %.reass2160.us.1
  %i.cpz = getelementptr i8, ptr %gep2162.us.1.1, <16 x i64> %i.cpi
  %i.cqa = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpz, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.cqb = lshr <16 x i32> %i.cqa, splat (i32 16)
  %i.cqc = trunc nuw <16 x i32> %i.cqb to <16 x i16>
  store <16 x i16> %i.cqc, ptr %i.cpy, align 2, !tbaa !43
  %i.cqd = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 128 ; 3 uses
  %indvars.iv.next2711.1 = add nuw nsw i64 %indvars.iv2710, 2 ; 2 uses
  %niter3425.next.1 = add nuw i64 %niter3425, 2   ; 2 uses
  %niter3425.ncmp.1 = icmp eq i64 %niter3425.next.1, %unroll_iter3424
  br i1 %niter3425.ncmp.1, label %._crit_edge2167.us.unr-lcssa, label %.preheader1751.us, !llvm.loop !402

._crit_edge2167.us.unr-lcssa:                     ; preds = %.preheader1751.us
  br i1 %lcmp.mod3421.not, label %._crit_edge2167.us, label %.preheader1751.us.epil.preheader

.preheader1751.us.epil.preheader:                 ; preds = %._crit_edge2167.us.unr-lcssa, %.preheader1756.us
  %indvars.iv2710.epil.init = phi i64 [ 0, %.preheader1756.us ], [ %indvars.iv.next2711.1, %._crit_edge2167.us.unr-lcssa ]
  %.17372165.us.epil.init = phi ptr [ %.07362169.us, %.preheader1756.us ], [ %i.cqd, %._crit_edge2167.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod3423)
  %invariant.gep2161.us.epil = getelementptr [4 x i8], ptr %i.cov, i64 %indvars.iv2710.epil.init ; 2 uses
  %gep2162.us.epil = getelementptr i8, ptr %invariant.gep2161.us.epil, i64 %.reass2160.us
  %i.cqe = getelementptr i8, ptr %gep2162.us.epil, <16 x i64> %i.cph
  %i.cqf = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cqe, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.cqg = lshr <16 x i32> %i.cqf, splat (i32 16)
  %i.cqh = trunc nuw <16 x i32> %i.cqg to <16 x i16>
  store <16 x i16> %i.cqh, ptr %.17372165.us.epil.init, align 2, !tbaa !43
  %i.cqi = getelementptr inbounds nuw i8, ptr %.17372165.us.epil.init, i64 32
  %gep2162.us.1.epil = getelementptr i8, ptr %invariant.gep2161.us.epil, i64 %.reass2160.us.1
  %i.cqj = getelementptr i8, ptr %gep2162.us.1.epil, <16 x i64> %i.cpi
  %i.cqk = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cqj, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.cql = lshr <16 x i32> %i.cqk, splat (i32 16)
  %i.cqm = trunc nuw <16 x i32> %i.cql to <16 x i16>
  store <16 x i16> %i.cqm, ptr %i.cqi, align 2, !tbaa !43
  %i.cqn = getelementptr inbounds nuw i8, ptr %.17372165.us.epil.init, i64 64
  br label %._crit_edge2167.us

._crit_edge2167.us:                               ; preds = %._crit_edge2167.us.unr-lcssa, %.preheader1751.us.epil.preheader
  %.lcssa3395 = phi ptr [ %i.cqd, %._crit_edge2167.us.unr-lcssa ], [ %i.cqn, %.preheader1751.us.epil.preheader ] ; 2 uses
  %indvars.iv.next2716 = add nuw nsw i64 %indvars.iv2715, 16 ; 3 uses
  %i.cqo = icmp slt i64 %indvars.iv.next2716, %invariant.op2911
  br i1 %i.cqo, label %.preheader1756.us, label %.preheader1760.loopexit, !llvm.loop !403

.preheader1760.loopexit:                          ; preds = %._crit_edge2167.us
  %i.cqp = trunc nuw nsw i64 %indvars.iv.next2716 to i32
  br label %.preheader1760

.preheader1760:                                   ; preds = %.preheader1756.lr.ph, %.preheader1760.loopexit, %.noexc946
  %.0736.lcssa = phi ptr [ %i.cou, %.noexc946 ], [ %.lcssa3395, %.preheader1760.loopexit ], [ %i.cou, %.preheader1756.lr.ph ] ; 3 uses
  %.0731.lcssa = phi i32 [ 0, %.noexc946 ], [ %i.cqp, %.preheader1760.loopexit ], [ %i.byd, %.preheader1756.lr.ph ] ; 6 uses
  %i.cqq = or disjoint i32 %.0731.lcssa, 7
  %i.cqr = icmp slt i32 %i.cqq, %2
  br i1 %i.cqr, label %.preheader1755.lr.ph, label %.preheader1759

.preheader1755.lr.ph:                             ; preds = %.preheader1760
  %i.cqs = load i32, ptr %i.bya, align 4
  %i.cqt = load ptr, ptr %7, align 8
  %i.cqu = load i64, ptr %i.byc, align 8          ; 2 uses
  %i.cqv = sext i32 %i.cqs to i64
  %factor.op.mul2176 = mul i64 %i.cqu, %i.cqv     ; 8 uses
  br i1 %i.bxz, label %.preheader1755.us.preheader, label %.preheader1755.preheader

.preheader1755.preheader:                         ; preds = %.preheader1755.lr.ph
  %i.cqw = add i32 %.0731.lcssa, 8
  %i.cqx = add i32 %.0731.lcssa, 15
  %smax2718 = call i32 @llvm.smax.i32(i32 %2, i32 %i.cqx)
  %i.cqy = add i32 %smax2718, -8
  %i.cqz = sub i32 %i.cqy, %.0731.lcssa
  %i.cra = and i32 %i.cqz, -8
  %i.crb = add i32 %i.cqw, %i.cra
  br label %.preheader1759

.preheader1755.us.preheader:                      ; preds = %.preheader1755.lr.ph
  %i.crc = load i64, ptr %i.byb, align 8
  %factor.op.mul2181 = mul i64 %i.crc, %i.cqu     ; 2 uses
  %i.crd = zext i32 %.0731.lcssa to i64
  %.reass2182.us = mul i64 %factor.op.mul2181, %indvars.iv2779
  %i.cre = or disjoint i64 %indvars.iv2779, 1
  %.reass2182.us.1 = mul i64 %factor.op.mul2181, %i.cre
  br label %.preheader1755.us

.preheader1755.us:                                ; preds = %.preheader1755.us.preheader, %._crit_edge2189.us
  %indvars.iv2732 = phi i64 [ %i.crd, %.preheader1755.us.preheader ], [ %indvars.iv.next2733, %._crit_edge2189.us ] ; 9 uses
  %.47402191.us = phi ptr [ %.0736.lcssa, %.preheader1755.us.preheader ], [ %i.ctx, %._crit_edge2189.us ]
  %.reass2177.us = mul i64 %factor.op.mul2176, %indvars.iv2732 ; 2 uses
  %i.crf = or disjoint i64 %indvars.iv2732, 1
  %.reass2177.us.1 = mul i64 %factor.op.mul2176, %i.crf ; 2 uses
  %i.crg = or disjoint i64 %indvars.iv2732, 2
  %.reass2177.us.2 = mul i64 %factor.op.mul2176, %i.crg ; 2 uses
  %i.crh = or disjoint i64 %indvars.iv2732, 3
  %.reass2177.us.3 = mul i64 %factor.op.mul2176, %i.crh ; 2 uses
  %i.cri = or disjoint i64 %indvars.iv2732, 4
  %.reass2177.us.4 = mul i64 %factor.op.mul2176, %i.cri ; 2 uses
  %i.crj = or disjoint i64 %indvars.iv2732, 5
  %.reass2177.us.5 = mul i64 %factor.op.mul2176, %i.crj ; 2 uses
  %i.crk = or disjoint i64 %indvars.iv2732, 6
  %.reass2177.us.6 = mul i64 %factor.op.mul2176, %i.crk ; 2 uses
  %i.crl = or disjoint i64 %indvars.iv2732, 7
  %.reass2177.us.7 = mul i64 %factor.op.mul2176, %i.crl ; 2 uses
  br label %.preheader1750.us

.preheader1750.us:                                ; preds = %.preheader1755.us, %.preheader1750.us
  %indvars.iv2727 = phi i64 [ 0, %.preheader1755.us ], [ %indvars.iv.next2728, %.preheader1750.us ] ; 2 uses
  %.57412187.us = phi ptr [ %.47402191.us, %.preheader1755.us ], [ %i.ctx, %.preheader1750.us ] ; 17 uses
  %invariant.gep2183.us = getelementptr [4 x i8], ptr %i.cqt, i64 %indvars.iv2727 ; 2 uses
  %gep2184.us = getelementptr i8, ptr %invariant.gep2183.us, i64 %.reass2182.us ; 8 uses
  %gep.us2195 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us
  %i.crm = load i32, ptr %gep.us2195, align 4, !tbaa !91
  %i.crn = lshr i32 %i.crm, 16
  %i.cro = trunc nuw i32 %i.crn to i16
  store i16 %i.cro, ptr %.57412187.us, align 2, !tbaa !43
  %i.crp = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 2
  %gep.us2195.1 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.1
  %i.crq = load i32, ptr %gep.us2195.1, align 4, !tbaa !91
  %i.crr = lshr i32 %i.crq, 16
  %i.crs = trunc nuw i32 %i.crr to i16
  store i16 %i.crs, ptr %i.crp, align 2, !tbaa !43
  %i.crt = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 4
  %gep.us2195.2 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.2
  %i.cru = load i32, ptr %gep.us2195.2, align 4, !tbaa !91
  %i.crv = lshr i32 %i.cru, 16
  %i.crw = trunc nuw i32 %i.crv to i16
  store i16 %i.crw, ptr %i.crt, align 2, !tbaa !43
  %i.crx = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 6
  %gep.us2195.3 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.3
  %i.cry = load i32, ptr %gep.us2195.3, align 4, !tbaa !91
  %i.crz = lshr i32 %i.cry, 16
  %i.csa = trunc nuw i32 %i.crz to i16
  store i16 %i.csa, ptr %i.crx, align 2, !tbaa !43
  %i.csb = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 8
  %gep.us2195.4 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.4
  %i.csc = load i32, ptr %gep.us2195.4, align 4, !tbaa !91
  %i.csd = lshr i32 %i.csc, 16
  %i.cse = trunc nuw i32 %i.csd to i16
  store i16 %i.cse, ptr %i.csb, align 2, !tbaa !43
  %i.csf = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 10
  %gep.us2195.5 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.5
  %i.csg = load i32, ptr %gep.us2195.5, align 4, !tbaa !91
  %i.csh = lshr i32 %i.csg, 16
  %i.csi = trunc nuw i32 %i.csh to i16
  store i16 %i.csi, ptr %i.csf, align 2, !tbaa !43
  %i.csj = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 12
  %gep.us2195.6 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.6
  %i.csk = load i32, ptr %gep.us2195.6, align 4, !tbaa !91
  %i.csl = lshr i32 %i.csk, 16
  %i.csm = trunc nuw i32 %i.csl to i16
  store i16 %i.csm, ptr %i.csj, align 2, !tbaa !43
  %i.csn = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 14
  %gep.us2195.7 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.7
  %i.cso = load i32, ptr %gep.us2195.7, align 4, !tbaa !91
  %i.csp = lshr i32 %i.cso, 16
  %i.csq = trunc nuw i32 %i.csp to i16
  store i16 %i.csq, ptr %i.csn, align 2, !tbaa !43
  %i.csr = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 16
  %gep2184.us.1 = getelementptr i8, ptr %invariant.gep2183.us, i64 %.reass2182.us.1 ; 8 uses
  %gep.us2195.12726 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us
  %i.css = load i32, ptr %gep.us2195.12726, align 4, !tbaa !91
  %i.cst = lshr i32 %i.css, 16
  %i.csu = trunc nuw i32 %i.cst to i16
  store i16 %i.csu, ptr %i.csr, align 2, !tbaa !43
  %i.csv = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 18
  %gep.us2195.1.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.1
  %i.csw = load i32, ptr %gep.us2195.1.1, align 4, !tbaa !91
  %i.csx = lshr i32 %i.csw, 16
  %i.csy = trunc nuw i32 %i.csx to i16
  store i16 %i.csy, ptr %i.csv, align 2, !tbaa !43
  %i.csz = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 20
  %gep.us2195.2.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.2
  %i.cta = load i32, ptr %gep.us2195.2.1, align 4, !tbaa !91
  %i.ctb = lshr i32 %i.cta, 16
  %i.ctc = trunc nuw i32 %i.ctb to i16
  store i16 %i.ctc, ptr %i.csz, align 2, !tbaa !43
  %i.ctd = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 22
  %gep.us2195.3.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.3
  %i.cte = load i32, ptr %gep.us2195.3.1, align 4, !tbaa !91
  %i.ctf = lshr i32 %i.cte, 16
  %i.ctg = trunc nuw i32 %i.ctf to i16
  store i16 %i.ctg, ptr %i.ctd, align 2, !tbaa !43
  %i.cth = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 24
  %gep.us2195.4.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.4
  %i.cti = load i32, ptr %gep.us2195.4.1, align 4, !tbaa !91
  %i.ctj = lshr i32 %i.cti, 16
  %i.ctk = trunc nuw i32 %i.ctj to i16
  store i16 %i.ctk, ptr %i.cth, align 2, !tbaa !43
  %i.ctl = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 26
  %gep.us2195.5.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.5
  %i.ctm = load i32, ptr %gep.us2195.5.1, align 4, !tbaa !91
  %i.ctn = lshr i32 %i.ctm, 16
  %i.cto = trunc nuw i32 %i.ctn to i16
  store i16 %i.cto, ptr %i.ctl, align 2, !tbaa !43
  %i.ctp = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 28
  %gep.us2195.6.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.6
  %i.ctq = load i32, ptr %gep.us2195.6.1, align 4, !tbaa !91
  %i.ctr = lshr i32 %i.ctq, 16
  %i.cts = trunc nuw i32 %i.ctr to i16
  store i16 %i.cts, ptr %i.ctp, align 2, !tbaa !43
  %i.ctt = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 30
  %gep.us2195.7.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.7
  %i.ctu = load i32, ptr %gep.us2195.7.1, align 4, !tbaa !91
  %i.ctv = lshr i32 %i.ctu, 16
  %i.ctw = trunc nuw i32 %i.ctv to i16
  store i16 %i.ctw, ptr %i.ctt, align 2, !tbaa !43
  %i.ctx = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 32 ; 3 uses
  %indvars.iv.next2728 = add nuw nsw i64 %indvars.iv2727, 1 ; 2 uses
  %exitcond2731.not = icmp eq i64 %indvars.iv.next2728, %wide.trip.count2730
  br i1 %exitcond2731.not, label %._crit_edge2189.us, label %.preheader1750.us, !llvm.loop !404

._crit_edge2189.us:                               ; preds = %.preheader1750.us
  %indvars.iv.next2733 = add nuw nsw i64 %indvars.iv2732, 8 ; 3 uses
  %i.cty = trunc i64 %indvars.iv.next2733 to i32
end_hunk_3
begin_hunk_4_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  br i1 %i.czz, label %.preheader1752.lr.ph, label %._crit_edge2255.split

.preheader1752.lr.ph:                             ; preds = %.preheader1757
  %i.daa = load i32, ptr %i.bya, align 4
  %i.dab = load ptr, ptr %7, align 8
  %i.dac = load i64, ptr %i.byc, align 8          ; 2 uses
  %i.dad = sext i32 %i.daa to i64
  %factor.op.mul2256 = mul i64 %i.dac, %i.dad
  br i1 %i.bxz, label %.preheader1752.preheader, label %._crit_edge2255.split

.preheader1752.preheader:                         ; preds = %.preheader1752.lr.ph
  %i.dae = load i64, ptr %i.byb, align 8
  %factor.op.mul2242 = mul i64 %i.dae, %i.dac     ; 2 uses
  %i.daf = zext i32 %.3734.lcssa to i64
  %.reass2243 = mul i64 %factor.op.mul2242, %indvars.iv2779 ; 3 uses
  %i.dag = or disjoint i64 %indvars.iv2779, 1
  %.reass2243.1 = mul i64 %factor.op.mul2242, %i.dag ; 3 uses
  br label %iter.check3139

iter.check3139:                                   ; preds = %.preheader1752.preheader, %._crit_edge2251
  %indvars.iv2776 = phi i64 [ %i.daf, %.preheader1752.preheader ], [ %indvars.iv.next2777, %._crit_edge2251 ] ; 2 uses
  %.162253 = phi ptr [ %.12748.lcssa, %.preheader1752.preheader ], [ %.lcssa2928, %._crit_edge2251 ] ; 5 uses
  %.reass2257 = mul i64 %factor.op.mul2256, %indvars.iv2776
  %invariant.gep2244 = getelementptr i8, ptr %i.dab, i64 %.reass2257 ; 3 uses
  br i1 %min.iters.check3123, label %.preheader1747.preheader, label %vector.main.loop.iter.check3124

vector.main.loop.iter.check3124:                  ; preds = %iter.check3139
  br i1 %min.iters.check3125, label %vec.epilog.ph3143, label %vector.ph3126

vector.ph3126:                                    ; preds = %vector.main.loop.iter.check3124
  %i.dah = getelementptr i8, ptr %.162253, i64 %i.byo ; 2 uses
  br label %vector.body3128

vector.body3128:                                  ; preds = %vector.body3128, %vector.ph3126
  %index3129 = phi i64 [ 0, %vector.ph3126 ], [ %index.next3134, %vector.body3128 ] ; 3 uses
  %i.dai = shl i64 %index3129, 2
  %next.gep3130 = getelementptr i8, ptr %.162253, i64 %i.dai
  %i.daj = getelementptr [4 x i8], ptr %invariant.gep2244, i64 %index3129 ; 2 uses
  %i.dak = getelementptr i8, ptr %i.daj, i64 %.reass2243
  %wide.load3131 = load <16 x i32>, ptr %i.dak, align 4, !tbaa !91
  %i.dal = getelementptr i8, ptr %i.daj, i64 %.reass2243.1
  %wide.load3132 = load <16 x i32>, ptr %i.dal, align 4, !tbaa !91
  %i.dam = shufflevector <16 x i32> %wide.load3131, <16 x i32> %wide.load3132, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dan = lshr <32 x i32> %i.dam, splat (i32 16)
  %interleaved.vec3133 = trunc nuw <32 x i32> %i.dan to <32 x i16>
  store <32 x i16> %interleaved.vec3133, ptr %next.gep3130, align 2, !tbaa !43
  %index.next3134 = add nuw i64 %index3129, 16    ; 2 uses
  %i.dao = icmp eq i64 %index.next3134, %n.vec3127
  br i1 %i.dao, label %middle.block3135, label %vector.body3128, !llvm.loop !414

middle.block3135:                                 ; preds = %vector.body3128
  br i1 %cmp.n3136, label %._crit_edge2251, label %vec.epilog.iter.check3141

vec.epilog.iter.check3141:                        ; preds = %middle.block3135
  br i1 %min.epilog.iters.check3142, label %.preheader1747.preheader, label %vec.epilog.ph3143, !prof !376

vec.epilog.ph3143:                                ; preds = %vector.main.loop.iter.check3124, %vec.epilog.iter.check3141
  %vec.epilog.resume.val3137 = phi i64 [ %n.vec3127, %vec.epilog.iter.check3141 ], [ 0, %vector.main.loop.iter.check3124 ]
  %i.dap = getelementptr i8, ptr %.162253, i64 %i.byp ; 2 uses
  br label %vec.epilog.vector.body3145

vec.epilog.vector.body3145:                       ; preds = %vec.epilog.vector.body3145, %vec.epilog.ph3143
  %index3146 = phi i64 [ %vec.epilog.resume.val3137, %vec.epilog.ph3143 ], [ %index.next3151, %vec.epilog.vector.body3145 ] ; 3 uses
  %i.daq = shl i64 %index3146, 2
  %next.gep3147 = getelementptr i8, ptr %.162253, i64 %i.daq
  %i.dar = getelementptr [4 x i8], ptr %invariant.gep2244, i64 %index3146 ; 2 uses
  %i.das = getelementptr i8, ptr %i.dar, i64 %.reass2243
  %wide.load3148 = load <4 x i32>, ptr %i.das, align 4, !tbaa !91
  %i.dat = getelementptr i8, ptr %i.dar, i64 %.reass2243.1
  %wide.load3149 = load <4 x i32>, ptr %i.dat, align 4, !tbaa !91
  %i.dau = shufflevector <4 x i32> %wide.load3148, <4 x i32> %wide.load3149, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dav = lshr <8 x i32> %i.dau, splat (i32 16)
  %interleaved.vec3150 = trunc nuw <8 x i32> %i.dav to <8 x i16>
  store <8 x i16> %interleaved.vec3150, ptr %next.gep3147, align 2, !tbaa !43
  %index.next3151 = add nuw i64 %index3146, 4     ; 2 uses
  %i.daw = icmp eq i64 %index.next3151, %n.vec3144
  br i1 %i.daw, label %vec.epilog.middle.block3152, label %vec.epilog.vector.body3145, !llvm.loop !415

vec.epilog.middle.block3152:                      ; preds = %vec.epilog.vector.body3145
  br i1 %cmp.n3153, label %._crit_edge2251, label %.preheader1747.preheader

.preheader1747.preheader:                         ; preds = %iter.check3139, %vec.epilog.iter.check3141, %vec.epilog.middle.block3152
  %indvars.iv2771.ph = phi i64 [ 0, %iter.check3139 ], [ %n.vec3127, %vec.epilog.iter.check3141 ], [ %n.vec3144, %vec.epilog.middle.block3152 ]
  %.172249.ph = phi ptr [ %.162253, %iter.check3139 ], [ %i.dah, %vec.epilog.iter.check3141 ], [ %i.dap, %vec.epilog.middle.block3152 ]
  br label %.preheader1747

.preheader1747:                                   ; preds = %.preheader1747.preheader, %.preheader1747
  %indvars.iv2771 = phi i64 [ %indvars.iv.next2772, %.preheader1747 ], [ %indvars.iv2771.ph, %.preheader1747.preheader ] ; 2 uses
  %.172249 = phi ptr [ %i.dbe, %.preheader1747 ], [ %.172249.ph, %.preheader1747.preheader ] ; 3 uses
  %invariant.gep2245 = getelementptr [4 x i8], ptr %invariant.gep2244, i64 %indvars.iv2771 ; 2 uses
  %gep2246 = getelementptr i8, ptr %invariant.gep2245, i64 %.reass2243
  %i.dax = load i32, ptr %gep2246, align 4, !tbaa !91
  %i.day = lshr i32 %i.dax, 16
  %i.daz = trunc nuw i32 %i.day to i16
  store i16 %i.daz, ptr %.172249, align 2, !tbaa !43
  %i.dba = getelementptr inbounds nuw i8, ptr %.172249, i64 2
  %gep2246.1 = getelementptr i8, ptr %invariant.gep2245, i64 %.reass2243.1
  %i.dbb = load i32, ptr %gep2246.1, align 4, !tbaa !91
  %i.dbc = lshr i32 %i.dbb, 16
  %i.dbd = trunc nuw i32 %i.dbc to i16
  store i16 %i.dbd, ptr %i.dba, align 2, !tbaa !43
  %i.dbe = getelementptr inbounds nuw i8, ptr %.172249, i64 4 ; 2 uses
  %indvars.iv.next2772 = add nuw nsw i64 %indvars.iv2771, 1 ; 2 uses
  %exitcond2775.not = icmp eq i64 %indvars.iv.next2772, %wide.trip.count2774
  br i1 %exitcond2775.not, label %._crit_edge2251, label %.preheader1747, !llvm.loop !416

._crit_edge2251:                                  ; preds = %.preheader1747, %vec.epilog.middle.block3152, %middle.block3135
  %.lcssa2928 = phi ptr [ %i.dap, %vec.epilog.middle.block3152 ], [ %i.dah, %middle.block3135 ], [ %i.dbe, %.preheader1747 ]
  %indvars.iv.next2777 = add nuw nsw i64 %indvars.iv2776, 1 ; 2 uses
  %i.dbf = trunc nuw i64 %indvars.iv.next2777 to i32
  %i.dbg = icmp sgt i32 %2, %i.dbf
  br i1 %i.dbg, label %iter.check3139, label %._crit_edge2255.split, !llvm.loop !417

._crit_edge2255.split:                            ; preds = %._crit_edge2251, %.preheader1752.lr.ph, %.preheader1757
  %indvars.iv.next2780 = add nuw nsw i64 %indvars.iv2779, 2 ; 3 uses
  %i.dbh = trunc i64 %indvars.iv.next2780 to i32
  %i.dbi = or i32 %i.dbh, 1
  %i.dbj = icmp slt i32 %i.dbi, %3
  br i1 %i.dbj, label %.noexc946, label %.preheader1742.loopexit, !llvm.loop !418

.noexc934:                                        ; preds = %.noexc934.lr.ph, %._crit_edge2334.split
  %indvars.iv2840 = phi i64 [ %i.cny, %.noexc934.lr.ph ], [ %indvars.iv.next2841, %._crit_edge2334.split ] ; 7 uses
  %i.dbk = trunc i64 %indvars.iv2840 to i32       ; 2 uses
  %i.dbl = lshr i32 %i.dbk, 4
  %i.dbm = insertelement <4 x i32> poison, i32 %i.dbk, i64 0
  %i.dbn = shufflevector <4 x i32> %i.dbm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dbo = lshr <4 x i32> %i.dbn, <i32 0, i32 3, i32 2, i32 1>
  %i.dbp = and <4 x i32> %i.dbo, splat (i32 1)
  %i.dbq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dbp)
  %op.rdx = add nuw nsw i32 %i.dbq, %i.dbl
  %i.dbr = zext nneg i32 %op.rdx to i64
  %.reass2340 = mul i64 %factor.op.mul2339, %i.dbr
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.cnm, i64 %.reass2340 ; 3 uses
  br i1 %i.cnr, label %.preheader1737.lr.ph, label %.preheader1741

.preheader1737.lr.ph:                             ; preds = %.noexc934
  %i.dbt = load i32, ptr %i.cnt, align 4
  %i.dbu = load ptr, ptr %7, align 8
  %i.dbv = load i64, ptr %i.cnu, align 8
  %i.dbw = mul i64 %i.dbv, %indvars.iv2840
  %i.dbx = load i64, ptr %i.cnv, align 8          ; 2 uses
  %i.dby = mul i64 %i.dbw, %i.dbx
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dbu, i64 %i.dby ; 5 uses
  %i.dca = sext i32 %i.dbt to i64
  %factor.op.mul2264 = mul i64 %i.dbx, %i.dca
  br i1 %i.cns, label %.preheader1737.us.preheader, label %.preheader1741

.preheader1737.us.preheader:                      ; preds = %.preheader1737.lr.ph
  %i.dcb = insertelement <16 x i64> poison, i64 %factor.op.mul2264, i64 0
  %i.dcc = shufflevector <16 x i64> %i.dcb, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader1737.us

.preheader1737.us:                                ; preds = %.preheader1737.us.preheader, %._crit_edge2271.us
  %indvars.iv2791 = phi i64 [ %indvars.iv.next2792, %._crit_edge2271.us ], [ 0, %.preheader1737.us.preheader ] ; 2 uses
  %.07122273.us = phi ptr [ %.lcssa, %._crit_edge2271.us ], [ %i.dbs, %.preheader1737.us.preheader ] ; 2 uses
  %i.dcd = insertelement <16 x i64> poison, i64 %indvars.iv2791, i64 0
  %i.dce = shufflevector <16 x i64> %i.dcd, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.dcf = or disjoint <16 x i64> %i.dce, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.dcg = mul <16 x i64> %i.dcc, %i.dcf          ; 5 uses
  br i1 %i.coa, label %.preheader1732.us.epil.preheader, label %.preheader1737.us.new

.preheader1737.us.new:                            ; preds = %.preheader1737.us
  %invariant.gep3472 = getelementptr i8, ptr %i.dbz, <16 x i64> %i.dcg
  br label %.preheader1732.us

.preheader1732.us:                                ; preds = %.preheader1732.us, %.preheader1737.us.new
  %indvars.iv2786 = phi i64 [ 0, %.preheader1737.us.new ], [ %indvars.iv.next2787.3, %.preheader1732.us ] ; 5 uses
  %.17132269.us = phi ptr [ %.07122273.us, %.preheader1737.us.new ], [ %i.ddc, %.preheader1732.us ] ; 5 uses
  %niter3433 = phi i64 [ 0, %.preheader1737.us.new ], [ %niter3433.next.3, %.preheader1732.us ]
  %gep3473 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3472, i64 %indvars.iv2786
  %i.dch = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep3473, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.dci = lshr <16 x i32> %i.dch, splat (i32 16)
  %i.dcj = trunc nuw <16 x i32> %i.dci to <16 x i16>
  store <16 x i16> %i.dcj, ptr %.17132269.us, align 2, !tbaa !43
  %i.dck = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 32
  %i.dcl = getelementptr [4 x i8], ptr %i.dbz, i64 %indvars.iv2786
  %invariant.gep2266.us.1 = getelementptr i8, ptr %i.dcl, i64 4
  %i.dcm = getelementptr i8, ptr %invariant.gep2266.us.1, <16 x i64> %i.dcg
  %i.dcn = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.dcm, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.dco = lshr <16 x i32> %i.dcn, splat (i32 16)
  %i.dcp = trunc nuw <16 x i32> %i.dco to <16 x i16>
  store <16 x i16> %i.dcp, ptr %i.dck, align 2, !tbaa !43
  %i.dcq = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 64
  %i.dcr = getelementptr [4 x i8], ptr %i.dbz, i64 %indvars.iv2786
  %invariant.gep2266.us.2 = getelementptr i8, ptr %i.dcr, i64 8
  %i.dcs = getelementptr i8, ptr %invariant.gep2266.us.2, <16 x i64> %i.dcg
  %i.dct = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.dcs, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.dcu = lshr <16 x i32> %i.dct, splat (i32 16)
  %i.dcv = trunc nuw <16 x i32> %i.dcu to <16 x i16>
  store <16 x i16> %i.dcv, ptr %i.dcq, align 2, !tbaa !43
  %i.dcw = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 96
  %i.dcx = getelementptr [4 x i8], ptr %i.dbz, i64 %indvars.iv2786
  %invariant.gep2266.us.3 = getelementptr i8, ptr %i.dcx, i64 12
  %i.dcy = getelementptr i8, ptr %invariant.gep2266.us.3, <16 x i64> %i.dcg
  %i.dcz = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.dcy, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.dda = lshr <16 x i32> %i.dcz, splat (i32 16)
  %i.ddb = trunc nuw <16 x i32> %i.dda to <16 x i16>
  store <16 x i16> %i.ddb, ptr %i.dcw, align 2, !tbaa !43
  %i.ddc = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 128 ; 3 uses
  %indvars.iv.next2787.3 = add nuw nsw i64 %indvars.iv2786, 4 ; 2 uses
  %niter3433.next.3 = add nuw i64 %niter3433, 4   ; 2 uses
  %niter3433.ncmp.3 = icmp eq i64 %niter3433.next.3, %unroll_iter3432
  br i1 %niter3433.ncmp.3, label %._crit_edge2271.us.unr-lcssa, label %.preheader1732.us, !llvm.loop !419

._crit_edge2271.us.unr-lcssa:                     ; preds = %.preheader1732.us
  br i1 %lcmp.mod3429.not, label %._crit_edge2271.us, label %.preheader1732.us.epil.preheader

.preheader1732.us.epil.preheader:                 ; preds = %._crit_edge2271.us.unr-lcssa, %.preheader1737.us
  %indvars.iv2786.epil.init = phi i64 [ 0, %.preheader1737.us ], [ %indvars.iv.next2787.3, %._crit_edge2271.us.unr-lcssa ]
  %.17132269.us.epil.init = phi ptr [ %.07122273.us, %.preheader1737.us ], [ %i.ddc, %._crit_edge2271.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3431)
  %invariant.gep3474 = getelementptr i8, ptr %i.dbz, <16 x i64> %i.dcg
  br label %.preheader1732.us.epil

.preheader1732.us.epil:                           ; preds = %.preheader1732.us.epil, %.preheader1732.us.epil.preheader
  %indvars.iv2786.epil = phi i64 [ %indvars.iv2786.epil.init, %.preheader1732.us.epil.preheader ], [ %indvars.iv.next2787.epil, %.preheader1732.us.epil ] ; 2 uses
  %.17132269.us.epil = phi ptr [ %.17132269.us.epil.init, %.preheader1732.us.epil.preheader ], [ %i.ddg, %.preheader1732.us.epil ] ; 2 uses
  %epil.iter3428 = phi i64 [ 0, %.preheader1732.us.epil.preheader ], [ %epil.iter3428.next, %.preheader1732.us.epil ]
  %gep3475 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3474, i64 %indvars.iv2786.epil
  %i.ddd = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep3475, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !91
  %i.dde = lshr <16 x i32> %i.ddd, splat (i32 16)
  %i.ddf = trunc nuw <16 x i32> %i.dde to <16 x i16>
  store <16 x i16> %i.ddf, ptr %.17132269.us.epil, align 2, !tbaa !43
  %i.ddg = getelementptr inbounds nuw i8, ptr %.17132269.us.epil, i64 32 ; 2 uses
  %indvars.iv.next2787.epil = add nuw nsw i64 %indvars.iv2786.epil, 1
  %epil.iter3428.next = add i64 %epil.iter3428, 1 ; 2 uses
  %epil.iter3428.cmp.not = icmp eq i64 %epil.iter3428.next, %xtraiter3427
  br i1 %epil.iter3428.cmp.not, label %._crit_edge2271.us, label %.preheader1732.us.epil, !llvm.loop !420

._crit_edge2271.us:                               ; preds = %.preheader1732.us.epil, %._crit_edge2271.us.unr-lcssa
  %.lcssa = phi ptr [ %i.ddc, %._crit_edge2271.us.unr-lcssa ], [ %i.ddg, %.preheader1732.us.epil ] ; 2 uses
  %indvars.iv.next2792 = add nuw nsw i64 %indvars.iv2791, 16 ; 3 uses
  %i.ddh = icmp slt i64 %indvars.iv.next2792, %invariant.op2912
  br i1 %i.ddh, label %.preheader1737.us, label %.preheader1741.loopexit, !llvm.loop !421

.preheader1741.loopexit:                          ; preds = %._crit_edge2271.us
  %i.ddi = trunc nuw nsw i64 %indvars.iv.next2792 to i32
  br label %.preheader1741

.preheader1741:                                   ; preds = %.preheader1737.lr.ph, %.preheader1741.loopexit, %.noexc934
  %.0712.lcssa = phi ptr [ %i.dbs, %.noexc934 ], [ %.lcssa, %.preheader1741.loopexit ], [ %i.dbs, %.preheader1737.lr.ph ] ; 3 uses
  %.0711.lcssa = phi i32 [ 0, %.noexc934 ], [ %i.ddi, %.preheader1741.loopexit ], [ %i.cnw, %.preheader1737.lr.ph ] ; 6 uses
  %i.ddj = or disjoint i32 %.0711.lcssa, 7
  %i.ddk = icmp slt i32 %i.ddj, %2
  br i1 %i.ddk, label %.preheader1736.lr.ph, label %.preheader1740

.preheader1736.lr.ph:                             ; preds = %.preheader1741
  %i.ddl = load i32, ptr %i.cnt, align 4
  %i.ddm = load ptr, ptr %7, align 8
  %i.ddn = load i64, ptr %i.cnu, align 8
  %i.ddo = mul i64 %i.ddn, %indvars.iv2840
  %i.ddp = load i64, ptr %i.cnv, align 8          ; 2 uses
  %i.ddq = mul i64 %i.ddo, %i.ddp
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddm, i64 %i.ddq ; 3 uses
  %i.dds = sext i32 %i.ddl to i64
  %factor.op.mul2280 = mul i64 %i.ddp, %i.dds     ; 9 uses
  br i1 %i.cns, label %.preheader1736.us.preheader, label %.preheader1736.preheader

.preheader1736.preheader:                         ; preds = %.preheader1736.lr.ph
  %i.ddt = add i32 %.0711.lcssa, 8
  %i.ddu = add i32 %.0711.lcssa, 15
  %smax2794 = call i32 @llvm.smax.i32(i32 %2, i32 %i.ddu)
  %i.ddv = add i32 %smax2794, -8
  %i.ddw = sub i32 %i.ddv, %.0711.lcssa
  %i.ddx = and i32 %i.ddw, -8
  %i.ddy = add i32 %i.ddt, %i.ddx
  br label %.preheader1740

.preheader1736.us.preheader:                      ; preds = %.preheader1736.lr.ph
  %i.ddz = zext i32 %.0711.lcssa to i64
  %i.dea = insertelement <8 x i64> poison, i64 %factor.op.mul2280, i64 0
  %i.deb = shufflevector <8 x i64> %i.dea, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %iter.check3362

iter.check3362:                                   ; preds = %.preheader1736.us.preheader, %._crit_edge2287.us
  %indvars.iv2804 = phi i64 [ %i.ddz, %.preheader1736.us.preheader ], [ %indvars.iv.next2805, %._crit_edge2287.us ] ; 6 uses
  %.37152289.us = phi ptr [ %.0712.lcssa, %.preheader1736.us.preheader ], [ %.lcssa2920, %._crit_edge2287.us ] ; 5 uses
  %.reass2281.us = mul i64 %factor.op.mul2280, %indvars.iv2804 ; 2 uses
  %i.dec = insertelement <4 x i64> poison, i64 %indvars.iv2804, i64 0
  %i.ded = shufflevector <4 x i64> %i.dec, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dee = or disjoint <4 x i64> %i.ded, <i64 1, i64 2, i64 3, i64 4> ; 5 uses
  %i.def = extractelement <4 x i64> %i.dee, i64 0
  %.reass2281.us.1 = mul i64 %factor.op.mul2280, %i.def ; 2 uses
  %i.deg = extractelement <4 x i64> %i.dee, i64 1
  %.reass2281.us.2 = mul i64 %factor.op.mul2280, %i.deg ; 2 uses
  %i.deh = extractelement <4 x i64> %i.dee, i64 2
  %.reass2281.us.3 = mul i64 %factor.op.mul2280, %i.deh ; 2 uses
  %i.dei = extractelement <4 x i64> %i.dee, i64 3
  %.reass2281.us.4 = mul i64 %factor.op.mul2280, %i.dei ; 2 uses
  %i.dej = insertelement <2 x i64> poison, i64 %indvars.iv2804, i64 0
  %i.dek = shufflevector <2 x i64> %i.dej, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.del = or disjoint <2 x i64> %i.dek, <i64 5, i64 6> ; 3 uses
  %i.dem = extractelement <2 x i64> %i.del, i64 0
  %.reass2281.us.5 = mul i64 %factor.op.mul2280, %i.dem ; 2 uses
  %i.den = extractelement <2 x i64> %i.del, i64 1
  %.reass2281.us.6 = mul i64 %factor.op.mul2280, %i.den ; 2 uses
  %i.deo = or disjoint i64 %indvars.iv2804, 7     ; 2 uses
  %i.dep = insertelement <8 x i64> poison, i64 %indvars.iv2804, i64 0
  %i.deq = shufflevector <4 x i64> %i.dee, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.der = shufflevector <8 x i64> %i.dep, <8 x i64> %i.deq, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.des = shufflevector <2 x i64> %i.del, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.det = shufflevector <8 x i64> %i.der, <8 x i64> %i.des, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.deu = insertelement <8 x i64> %i.det, i64 %i.deo, i64 7
  %i.dev = mul <8 x i64> %i.deb, %i.deu
  %.reass2281.us.7 = mul i64 %factor.op.mul2280, %i.deo ; 2 uses
  br i1 %min.iters.check3340, label %.preheader1731.us.preheader, label %vector.main.loop.iter.check3341

vector.main.loop.iter.check3341:                  ; preds = %iter.check3362
  br i1 %min.iters.check3342, label %vec.epilog.ph3366, label %vector.ph3343

vector.ph3343:                                    ; preds = %vector.main.loop.iter.check3341
  %i.dew = getelementptr i8, ptr %.37152289.us, i64 %i.coc ; 2 uses
  br label %vector.body3345

vector.body3345:                                  ; preds = %vector.body3345, %vector.ph3343
  %index3346 = phi i64 [ 0, %vector.ph3343 ], [ %index.next3357, %vector.body3345 ] ; 3 uses
  %i.dex = shl i64 %index3346, 4
  %next.gep3347 = getelementptr i8, ptr %.37152289.us, i64 %i.dex
  %i.dey = getelementptr [4 x i8], ptr %i.ddr, i64 %index3346 ; 8 uses
  %i.dez = getelementptr i8, ptr %i.dey, i64 %.reass2281.us
  %wide.load3348 = load <16 x i32>, ptr %i.dez, align 4, !tbaa !91
  %i.dfa = getelementptr i8, ptr %i.dey, i64 %.reass2281.us.1
  %wide.load3349 = load <16 x i32>, ptr %i.dfa, align 4, !tbaa !91
  %i.dfb = getelementptr i8, ptr %i.dey, i64 %.reass2281.us.2
  %wide.load3350 = load <16 x i32>, ptr %i.dfb, align 4, !tbaa !91
  %i.dfc = getelementptr i8, ptr %i.dey, i64 %.reass2281.us.3
  %wide.load3351 = load <16 x i32>, ptr %i.dfc, align 4, !tbaa !91
  %i.dfd = getelementptr i8, ptr %i.dey, i64 %.reass2281.us.4
  %wide.load3352 = load <16 x i32>, ptr %i.dfd, align 4, !tbaa !91
  %i.dfe = getelementptr i8, ptr %i.dey, i64 %.reass2281.us.5
  %wide.load3353 = load <16 x i32>, ptr %i.dfe, align 4, !tbaa !91
  %i.dff = getelementptr i8, ptr %i.dey, i64 %.reass2281.us.6
  %wide.load3354 = load <16 x i32>, ptr %i.dff, align 4, !tbaa !91
  %i.dfg = getelementptr i8, ptr %i.dey, i64 %.reass2281.us.7
  %wide.load3355 = load <16 x i32>, ptr %i.dfg, align 4, !tbaa !91
  %i.dfh = shufflevector <16 x i32> %wide.load3348, <16 x i32> %wide.load3349, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dfi = shufflevector <16 x i32> %wide.load3350, <16 x i32> %wide.load3351, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dfj = shufflevector <32 x i32> %i.dfh, <32 x i32> %i.dfi, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dfk = lshr <64 x i32> %i.dfj, splat (i32 16)
  %i.dfl = trunc nuw <64 x i32> %i.dfk to <64 x i16>
  %i.dfm = shufflevector <16 x i32> %wide.load3352, <16 x i32> %wide.load3353, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dfn = shufflevector <16 x i32> %wide.load3354, <16 x i32> %wide.load3355, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dfo = shufflevector <32 x i32> %i.dfm, <32 x i32> %i.dfn, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dfp = lshr <64 x i32> %i.dfo, splat (i32 16)
  %i.dfq = trunc nuw <64 x i32> %i.dfp to <64 x i16>
  %interleaved.vec3356 = shufflevector <64 x i16> %i.dfl, <64 x i16> %i.dfq, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec3356, ptr %next.gep3347, align 2, !tbaa !43
  %index.next3357 = add nuw i64 %index3346, 16    ; 2 uses
  %i.dfr = icmp eq i64 %index.next3357, %n.vec3344
  br i1 %i.dfr, label %middle.block3358, label %vector.body3345, !llvm.loop !422

middle.block3358:                                 ; preds = %vector.body3345
  br i1 %cmp.n3359, label %._crit_edge2287.us, label %vec.epilog.iter.check3364

vec.epilog.iter.check3364:                        ; preds = %middle.block3358
  br i1 %min.epilog.iters.check3365, label %.preheader1731.us.preheader, label %vec.epilog.ph3366, !prof !376

vec.epilog.ph3366:                                ; preds = %vector.main.loop.iter.check3341, %vec.epilog.iter.check3364
  %vec.epilog.resume.val3360 = phi i64 [ %n.vec3344, %vec.epilog.iter.check3364 ], [ 0, %vector.main.loop.iter.check3341 ]
  %i.dfs = getelementptr i8, ptr %.37152289.us, i64 %i.cod ; 2 uses
  br label %vec.epilog.vector.body3368

vec.epilog.vector.body3368:                       ; preds = %vec.epilog.vector.body3368, %vec.epilog.ph3366
  %index3369 = phi i64 [ %vec.epilog.resume.val3360, %vec.epilog.ph3366 ], [ %index.next3380, %vec.epilog.vector.body3368 ] ; 3 uses
  %i.dft = shl i64 %index3369, 4
  %next.gep3370 = getelementptr i8, ptr %.37152289.us, i64 %i.dft
  %i.dfu = getelementptr [4 x i8], ptr %i.ddr, i64 %index3369 ; 8 uses
  %i.dfv = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us
  %wide.load3371 = load <4 x i32>, ptr %i.dfv, align 4, !tbaa !91
  %i.dfw = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us.1
  %wide.load3372 = load <4 x i32>, ptr %i.dfw, align 4, !tbaa !91
  %i.dfx = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us.2
  %wide.load3373 = load <4 x i32>, ptr %i.dfx, align 4, !tbaa !91
  %i.dfy = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us.3
  %wide.load3374 = load <4 x i32>, ptr %i.dfy, align 4, !tbaa !91
  %i.dfz = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us.4
  %wide.load3375 = load <4 x i32>, ptr %i.dfz, align 4, !tbaa !91
  %i.dga = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us.5
  %wide.load3376 = load <4 x i32>, ptr %i.dga, align 4, !tbaa !91
  %i.dgb = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us.6
  %wide.load3377 = load <4 x i32>, ptr %i.dgb, align 4, !tbaa !91
  %i.dgc = getelementptr i8, ptr %i.dfu, i64 %.reass2281.us.7
  %wide.load3378 = load <4 x i32>, ptr %i.dgc, align 4, !tbaa !91
  %i.dgd = shufflevector <4 x i32> %wide.load3371, <4 x i32> %wide.load3372, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dge = shufflevector <4 x i32> %wide.load3373, <4 x i32> %wide.load3374, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dgf = shufflevector <4 x i32> %wide.load3375, <4 x i32> %wide.load3376, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dgg = shufflevector <4 x i32> %wide.load3377, <4 x i32> %wide.load3378, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dgh = shufflevector <8 x i32> %i.dgd, <8 x i32> %i.dge, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dgi = shufflevector <8 x i32> %i.dgf, <8 x i32> %i.dgg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dgj = shufflevector <16 x i32> %i.dgh, <16 x i32> %i.dgi, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.dgk = lshr <32 x i32> %i.dgj, splat (i32 16)
  %interleaved.vec3379 = trunc nuw <32 x i32> %i.dgk to <32 x i16>
  store <32 x i16> %interleaved.vec3379, ptr %next.gep3370, align 2, !tbaa !43
  %index.next3380 = add nuw i64 %index3369, 4     ; 2 uses
  %i.dgl = icmp eq i64 %index.next3380, %n.vec3367
  br i1 %i.dgl, label %vec.epilog.middle.block3381, label %vec.epilog.vector.body3368, !llvm.loop !423

vec.epilog.middle.block3381:                      ; preds = %vec.epilog.vector.body3368
  br i1 %cmp.n3382, label %._crit_edge2287.us, label %.preheader1731.us.preheader

.preheader1731.us.preheader:                      ; preds = %iter.check3362, %vec.epilog.iter.check3364, %vec.epilog.middle.block3381
end_hunk_4
