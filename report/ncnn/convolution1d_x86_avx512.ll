Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.eie = bitcast <8 x i16> %i.eid to <4 x float> ; 2 uses
  %i.eif = load i64, ptr %i.ehz, align 1, !tbaa !45
  %i.eig = insertelement <2 x i64> poison, i64 %i.eif, i64 0
  %i.eih = bitcast <2 x i64> %i.eig to <8 x i16>
  %i.eii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eij = bitcast <8 x i16> %i.eii to <4 x float>
  %i.eik = getelementptr inbounds nuw i8, ptr %.1713883626, i64 24
  %i.eil = load i64, ptr %i.eik, align 1, !tbaa !45
  %i.eim = insertelement <2 x i64> poison, i64 %i.eil, i64 0
  %i.ein = bitcast <2 x i64> %i.eim to <8 x i16>
  %i.eio = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ein, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eip = bitcast <8 x i16> %i.eio to <4 x float>
  %i.eiq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eie, <4 x float> nofpclass(nan inf) %i.eij, <4 x float> nofpclass(nan inf) %i.ehw) ; 3 uses
  %i.eir = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eie, <4 x float> nofpclass(nan inf) %i.eip, <4 x float> nofpclass(nan inf) %i.ehx) ; 3 uses
  %i.eis = getelementptr inbounds [2 x i8], ptr %i.ehy, i64 %i.egr ; 2 uses
  %i.eit = getelementptr inbounds nuw i8, ptr %.1713883626, i64 32 ; 2 uses
  %niter4898.next.1 = add nuw nsw i32 %niter4898, 2 ; 2 uses
  %niter4898.ncmp.1 = icmp eq i32 %niter4898.next.1, %unroll_iter4897
  br i1 %niter4898.ncmp.1, label %.loopexit2987.loopexit.unr-lcssa, label %.lr.ph3629, !llvm.loop !459

.loopexit2987.loopexit.unr-lcssa:                 ; preds = %.lr.ph3629
  br i1 %lcmp.mod4893.not, label %.loopexit2987.loopexit, label %.lr.ph3629.epil.preheader

.lr.ph3629.epil.preheader:                        ; preds = %.loopexit2987.loopexit.unr-lcssa, %.lr.ph3629.preheader
  %.012933627.epil.init = phi ptr [ %gep3657, %.lr.ph3629.preheader ], [ %i.eis, %.loopexit2987.loopexit.unr-lcssa ]
  %.1713883626.epil.init = phi ptr [ %.1613873645, %.lr.ph3629.preheader ], [ %i.eit, %.loopexit2987.loopexit.unr-lcssa ] ; 2 uses
  %.129213625.epil.init = phi <4 x float> [ %.029203644, %.lr.ph3629.preheader ], [ %i.eiq, %.loopexit2987.loopexit.unr-lcssa ]
  %.129263624.epil.init = phi <4 x float> [ %.029253643, %.lr.ph3629.preheader ], [ %i.eir, %.loopexit2987.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4896)
  %i.eiu = load i64, ptr %.012933627.epil.init, align 1, !tbaa !45
  %i.eiv = insertelement <2 x i64> poison, i64 %i.eiu, i64 0
  %i.eiw = bitcast <2 x i64> %i.eiv to <8 x i16>
  %i.eix = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eiw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eiy = bitcast <8 x i16> %i.eix to <4 x float> ; 2 uses
  %i.eiz = load i64, ptr %.1713883626.epil.init, align 1, !tbaa !45
  %i.eja = insertelement <2 x i64> poison, i64 %i.eiz, i64 0
  %i.ejb = bitcast <2 x i64> %i.eja to <8 x i16>
  %i.ejc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejd = bitcast <8 x i16> %i.ejc to <4 x float>
  %i.eje = getelementptr inbounds nuw i8, ptr %.1713883626.epil.init, i64 8
  %i.ejf = load i64, ptr %i.eje, align 1, !tbaa !45
  %i.ejg = insertelement <2 x i64> poison, i64 %i.ejf, i64 0
  %i.ejh = bitcast <2 x i64> %i.ejg to <8 x i16>
  %i.eji = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejj = bitcast <8 x i16> %i.eji to <4 x float>
  %i.ejk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eiy, <4 x float> nofpclass(nan inf) %i.ejd, <4 x float> nofpclass(nan inf) %.129213625.epil.init)
  %i.ejl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eiy, <4 x float> nofpclass(nan inf) %i.ejj, <4 x float> nofpclass(nan inf) %.129263624.epil.init)
  br label %.loopexit2987.loopexit

.loopexit2987.loopexit:                           ; preds = %.loopexit2987.loopexit.unr-lcssa, %.lr.ph3629.epil.preheader
  %.lcssa4797 = phi <4 x float> [ %i.eiq, %.loopexit2987.loopexit.unr-lcssa ], [ %i.ejk, %.lr.ph3629.epil.preheader ]
  %.lcssa4796 = phi <4 x float> [ %i.eir, %.loopexit2987.loopexit.unr-lcssa ], [ %i.ejl, %.lr.ph3629.epil.preheader ]
  %scevgep4257 = getelementptr i8, ptr %.1613873645, i64 16
  %scevgep4258 = getelementptr i8, ptr %scevgep4257, i64 %i.ehc
  br label %.loopexit2985

.loopexit2987:                                    ; preds = %bb.as
  br i1 %brmerge3916, label %.loopexit2985, label %.lr.ph3639

.lr.ph3639:                                       ; preds = %.loopexit2987, %.lr.ph3639
  %.012913638 = phi i32 [ %i.eks, %.lr.ph3639 ], [ 0, %.loopexit2987 ]
  %.212953637 = phi ptr [ %i.ekq, %.lr.ph3639 ], [ %gep3657, %.loopexit2987 ] ; 5 uses
  %.1913903636 = phi ptr [ %i.ekr, %.lr.ph3639 ], [ %.1613873645, %.loopexit2987 ] ; 3 uses
  %.329233635 = phi <4 x float> [ %i.eko, %.lr.ph3639 ], [ %.029203644, %.loopexit2987 ]
  %.329283634 = phi <4 x float> [ %i.ekp, %.lr.ph3639 ], [ %.029253643, %.loopexit2987 ]
  %i.ejm = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.egv
  %i.ejn = load i16, ptr %i.ejm, align 2, !tbaa !70
  %i.ejo = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.egx
  %i.ejp = load i16, ptr %i.ejo, align 2, !tbaa !70
  %i.ejq = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.egy
  %i.ejr = load i16, ptr %i.ejq, align 2, !tbaa !70
  %i.ejs = load i16, ptr %.212953637, align 2, !tbaa !70
  %i.ejt = zext i16 %i.ejn to i32
  %i.eju = zext i16 %i.ejp to i32
  %i.ejv = zext i16 %i.ejr to i32
  %i.ejw = zext i16 %i.ejs to i32
  %i.ejx = insertelement <4 x i32> poison, i32 %i.ejw, i64 0
  %i.ejy = insertelement <4 x i32> %i.ejx, i32 %i.ejv, i64 1
  %i.ejz = insertelement <4 x i32> %i.ejy, i32 %i.eju, i64 2
  %i.eka = insertelement <4 x i32> %i.ejz, i32 %i.ejt, i64 3
  %i.ekb = shl nuw <4 x i32> %i.eka, splat (i32 16)
  %i.ekc = bitcast <4 x i32> %i.ekb to <4 x float> ; 2 uses
  %i.ekd = load i64, ptr %.1913903636, align 1, !tbaa !45
  %i.eke = insertelement <2 x i64> poison, i64 %i.ekd, i64 0
  %i.ekf = bitcast <2 x i64> %i.eke to <8 x i16>
  %i.ekg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekh = bitcast <8 x i16> %i.ekg to <4 x float>
  %i.eki = getelementptr inbounds nuw i8, ptr %.1913903636, i64 8
  %i.ekj = load i64, ptr %i.eki, align 1, !tbaa !45
  %i.ekk = insertelement <2 x i64> poison, i64 %i.ekj, i64 0
  %i.ekl = bitcast <2 x i64> %i.ekk to <8 x i16>
  %i.ekm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekn = bitcast <8 x i16> %i.ekm to <4 x float>
  %i.eko = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekc, <4 x float> nofpclass(nan inf) %i.ekh, <4 x float> nofpclass(nan inf) %.329233635) ; 2 uses
  %i.ekp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekc, <4 x float> nofpclass(nan inf) %i.ekn, <4 x float> nofpclass(nan inf) %.329283634) ; 2 uses
  %i.ekq = getelementptr inbounds [2 x i8], ptr %.212953637, i64 %i.egz
  %i.ekr = getelementptr inbounds nuw i8, ptr %.1913903636, i64 16
  %i.eks = add nuw nsw i32 %.012913638, 1         ; 2 uses
  %exitcond4262.not = icmp eq i32 %i.eks, %i.egn
  br i1 %exitcond4262.not, label %.loopexit2985.loopexit, label %.lr.ph3639, !llvm.loop !460

.loopexit2985.loopexit:                           ; preds = %.lr.ph3639
  %scevgep4260 = getelementptr i8, ptr %.1613873645, i64 16
  %scevgep4261 = getelementptr i8, ptr %scevgep4260, i64 %i.ehc
  br label %.loopexit2985

.loopexit2985:                                    ; preds = %.preheader2986, %.loopexit2987.loopexit, %.loopexit2985.loopexit, %.loopexit2987
  %.42929 = phi nsz <4 x float> [ %.029253643, %.loopexit2987 ], [ %i.ekp, %.loopexit2985.loopexit ], [ %.lcssa4796, %.loopexit2987.loopexit ], [ %.029253643, %.preheader2986 ] ; 2 uses
  %.42924 = phi nsz <4 x float> [ %.029203644, %.loopexit2987 ], [ %i.eko, %.loopexit2985.loopexit ], [ %.lcssa4797, %.loopexit2987.loopexit ], [ %.029203644, %.preheader2986 ] ; 2 uses
  %.201391 = phi ptr [ %.1613873645, %.loopexit2987 ], [ %scevgep4261, %.loopexit2985.loopexit ], [ %scevgep4258, %.loopexit2987.loopexit ], [ %.1613873645, %.preheader2986 ] ; 2 uses
  %i.ekt = add nuw nsw i32 %.213683646, 4         ; 3 uses
  %i.eku = or disjoint i32 %i.ekt, 3
  %i.ekv = icmp slt i32 %i.eku, %i.bhv
  br i1 %i.ekv, label %bb.as, label %._crit_edge3649, !llvm.loop !461

._crit_edge3649:                                  ; preds = %.loopexit2985, %._crit_edge3615
  %.02925.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3615 ], [ %.42929, %.loopexit2985 ] ; 4 uses
  %.02920.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3615 ], [ %.42924, %.loopexit2985 ] ; 4 uses
  %.161387.lcssa = phi ptr [ %.91380.lcssa, %._crit_edge3615 ], [ %.201391, %.loopexit2985 ] ; 3 uses
  %.21368.lcssa = phi i32 [ %.11367.lcssa, %._crit_edge3615 ], [ %i.ekt, %.loopexit2985 ] ; 5 uses
  %i.ekw = shufflevector <4 x float> %i.eas, <4 x float> %i.eay, <2 x i32> <i32 3, i32 7>
  %i.ekx = shufflevector <4 x float> %i.eas, <4 x float> %i.eay, <2 x i32> <i32 1, i32 5>
  %i.eky = fadd fast <2 x float> %i.ekw, %i.ekx
  %i.ekz = fadd fast <2 x float> %i.eky, %i.dqv
  %i.ela = shufflevector <4 x float> %i.eas, <4 x float> %i.eay, <2 x i32> <i32 2, i32 6>
  %i.elb = shufflevector <4 x float> %i.eas, <4 x float> %i.eay, <2 x i32> <i32 0, i32 4>
  %i.elc = fadd fast <2 x float> %i.ela, %i.elb
  %i.eld = fadd fast <2 x float> %i.ekz, %i.elc
  %i.ele = shufflevector <4 x float> %i.egb, <4 x float> %i.ege, <2 x i32> <i32 3, i32 7>
  %i.elf = shufflevector <4 x float> %i.egb, <4 x float> %i.ege, <2 x i32> <i32 1, i32 5>
  %i.elg = fadd fast <2 x float> %i.ele, %i.elf
  %i.elh = fadd fast <2 x float> %i.eld, %i.elg
  %i.eli = shufflevector <4 x float> %i.egb, <4 x float> %i.ege, <2 x i32> <i32 2, i32 6>
  %i.elj = shufflevector <4 x float> %i.egb, <4 x float> %i.ege, <2 x i32> <i32 0, i32 4>
  %i.elk = fadd fast <2 x float> %i.eli, %i.elj
  %i.ell = fadd fast <2 x float> %i.elh, %i.elk
  %i.elm = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 3, i32 7>
  %i.eln = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 1, i32 5>
  %i.elo = fadd fast <2 x float> %i.elm, %i.eln
  %i.elp = fadd fast <2 x float> %i.ell, %i.elo
  %i.elq = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 2, i32 6>
  %i.elr = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 0, i32 4>
  %i.els = fadd fast <2 x float> %i.elq, %i.elr
  %i.elt = fadd fast <2 x float> %i.elp, %i.els   ; 3 uses
  %i.elu = or disjoint i32 %.21368.lcssa, 1
  %i.elv = icmp slt i32 %i.elu, %i.bhv
  br i1 %i.elv, label %.lr.ph3674, label %.preheader2999

.lr.ph3674:                                       ; preds = %._crit_edge3649
  %i.elw = load ptr, ptr %0, align 8, !tbaa !19
  %i.elx = load i32, ptr %i.p, align 4, !tbaa !55
  %i.ely = sext i32 %i.elx to i64
  %i.elz = load i64, ptr %i.bif, align 8, !tbaa !44
  %factor.op.mul3679 = mul i64 %i.elz, %i.ely
  %i.ema = mul nsw i64 %indvars.iv4275, %i.dqs
  %invariant.gep3681 = getelementptr [2 x i8], ptr %i.elw, i64 %i.ema
  %i.emb = load i32, ptr %i.e, align 4
  %i.emc = sext i32 %i.emb to i64
  %i.emd = load i32, ptr %i.b, align 4
  %i.eme = sext i32 %i.emd to i64
  br i1 %i.dqn, label %.lr.ph3664.us.preheader, label %.lr.ph3674.split.preheader

.lr.ph3674.split.preheader:                       ; preds = %.lr.ph3674
  %i.emf = add i32 %.21368.lcssa, 2
  %i.emg = sub i32 %i.bir, %.21368.lcssa
  %i.emh = and i32 %i.emg, -2
  %i.emi = add i32 %i.emf, %i.emh
  br label %.preheader2999

.lr.ph3664.us.preheader:                          ; preds = %.lr.ph3674
  %i.emj = zext i32 %.21368.lcssa to i64
  br label %.lr.ph3664.us

.lr.ph3664.us:                                    ; preds = %.lr.ph3664.us.preheader, %._crit_edge3665.us
  %indvars.iv4266 = phi i64 [ %i.emj, %.lr.ph3664.us.preheader ], [ %indvars.iv.next4267, %._crit_edge3665.us ] ; 2 uses
  %.2113923671.us = phi ptr [ %.161387.lcssa, %.lr.ph3664.us.preheader ], [ %scevgep4264, %._crit_edge3665.us ] ; 2 uses
  %i.emk = phi <2 x float> [ %i.elt, %.lr.ph3664.us.preheader ], [ %i.enl, %._crit_edge3665.us ]
  %.reass3680.us = mul i64 %factor.op.mul3679, %indvars.iv4266
  %gep3682.us = getelementptr i8, ptr %invariant.gep3681, i64 %.reass3680.us
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph3664.us, %bb.at
  %.012893662.us = phi i32 [ 0, %.lr.ph3664.us ], [ %i.eno, %bb.at ]
  %.012903661.us = phi ptr [ %gep3682.us, %.lr.ph3664.us ], [ %i.enm, %bb.at ] ; 3 uses
  %.2213933660.us = phi ptr [ %.2113923671.us, %.lr.ph3664.us ], [ %i.enn, %bb.at ] ; 3 uses
  %i.eml = phi <2 x float> [ %i.emk, %.lr.ph3664.us ], [ %i.enl, %bb.at ]
  %i.emm = load i16, ptr %.012903661.us, align 2, !tbaa !70
  %i.emn = getelementptr inbounds [2 x i8], ptr %.012903661.us, i64 %i.emc
  %i.emo = load i16, ptr %i.emn, align 2, !tbaa !70
  %i.emp = getelementptr inbounds nuw i8, ptr %.2213933660.us, i64 4
  %i.emq = zext i16 %i.emm to i32
  %i.emr = shl nuw i32 %i.emq, 16
  %i.ems = load <2 x i16>, ptr %.2213933660.us, align 2, !tbaa !70
  %i.emt = zext <2 x i16> %i.ems to <2 x i32>
  %i.emu = shl nuw <2 x i32> %i.emt, splat (i32 16)
  %i.emv = bitcast <2 x i32> %i.emu to <2 x float>
  %i.emw = insertelement <2 x i32> poison, i32 %i.emr, i64 0
  %i.emx = bitcast <2 x i32> %i.emw to <2 x float>
  %i.emy = shufflevector <2 x float> %i.emx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.emz = fmul fast <2 x float> %i.emy, %i.emv
  %i.ena = fadd fast <2 x float> %i.eml, %i.emz
  %i.enb = zext i16 %i.emo to i32
  %i.enc = shl nuw i32 %i.enb, 16
  %i.end = load <2 x i16>, ptr %i.emp, align 2, !tbaa !70
  %i.ene = zext <2 x i16> %i.end to <2 x i32>
  %i.enf = shl nuw <2 x i32> %i.ene, splat (i32 16)
  %i.eng = bitcast <2 x i32> %i.enf to <2 x float>
  %i.enh = insertelement <2 x i32> poison, i32 %i.enc, i64 0
  %i.eni = bitcast <2 x i32> %i.enh to <2 x float>
  %i.enj = shufflevector <2 x float> %i.eni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.enk = fmul fast <2 x float> %i.enj, %i.eng
  %i.enl = fadd fast <2 x float> %i.enk, %i.ena   ; 3 uses
  %i.enm = getelementptr inbounds [2 x i8], ptr %.012903661.us, i64 %i.eme
  %i.enn = getelementptr inbounds nuw i8, ptr %.2213933660.us, i64 8
  %i.eno = add nuw nsw i32 %.012893662.us, 1      ; 2 uses
  %exitcond4265.not = icmp eq i32 %i.eno, %i.dqm
  br i1 %exitcond4265.not, label %._crit_edge3665.us, label %bb.at, !llvm.loop !462

._crit_edge3665.us:                               ; preds = %bb.at
  %scevgep4263 = getelementptr i8, ptr %.2113923671.us, i64 8
  %scevgep4264 = getelementptr i8, ptr %scevgep4263, i64 %i.dqq ; 2 uses
  %indvars.iv.next4267 = add nuw nsw i64 %indvars.iv4266, 2 ; 3 uses
  %i.enp = trunc i64 %indvars.iv.next4267 to i32
  %i.enq = or i32 %i.enp, 1
  %i.enr = icmp slt i32 %i.enq, %i.bhv
  br i1 %i.enr, label %.lr.ph3664.us, label %.preheader2999.loopexit, !llvm.loop !463

.preheader2999.loopexit:                          ; preds = %._crit_edge3665.us
  %i.ens = trunc nuw i64 %indvars.iv.next4267 to i32
  br label %.preheader2999

.preheader2999:                                   ; preds = %.lr.ph3674.split.preheader, %.preheader2999.loopexit, %._crit_edge3649
  %.211392.lcssa = phi ptr [ %.161387.lcssa, %._crit_edge3649 ], [ %scevgep4264, %.preheader2999.loopexit ], [ %.161387.lcssa, %.lr.ph3674.split.preheader ]
  %.31369.lcssa = phi i32 [ %.21368.lcssa, %._crit_edge3649 ], [ %i.ens, %.preheader2999.loopexit ], [ %i.emi, %.lr.ph3674.split.preheader ] ; 2 uses
  %i.ent = phi <2 x float> [ %i.elt, %._crit_edge3649 ], [ %i.enl, %.preheader2999.loopexit ], [ %i.elt, %.lr.ph3674.split.preheader ] ; 3 uses
  %i.enu = icmp slt i32 %.31369.lcssa, %i.bhv
  br i1 %i.enu, label %.lr.ph3702, label %._crit_edge3703

.lr.ph3702:                                       ; preds = %.preheader2999
  %i.env = load ptr, ptr %0, align 8, !tbaa !19
  %i.enw = load i32, ptr %i.p, align 4, !tbaa !55
  %i.enx = sext i32 %i.enw to i64
  %i.eny = load i64, ptr %i.bif, align 8, !tbaa !44
  %factor.op.mul3706 = mul i64 %i.eny, %i.enx
  %i.enz = mul nsw i64 %indvars.iv4275, %i.dqs
  %invariant.gep3708 = getelementptr [2 x i8], ptr %i.env, i64 %i.enz
  %i.eoa = load i32, ptr %i.b, align 4
  %i.eob = sext i32 %i.eoa to i64                 ; 2 uses
  br i1 %i.dqn, label %.lr.ph3693.us.preheader, label %._crit_edge3703

.lr.ph3693.us.preheader:                          ; preds = %.lr.ph3702
  %i.eoc = zext i32 %.31369.lcssa to i64
  br label %.lr.ph3693.us

.lr.ph3693.us:                                    ; preds = %.lr.ph3693.us.preheader, %._crit_edge3694.us
  %indvars.iv4272 = phi i64 [ %i.eoc, %.lr.ph3693.us.preheader ], [ %indvars.iv.next4273, %._crit_edge3694.us ] ; 2 uses
  %.2313943700.us = phi ptr [ %.211392.lcssa, %.lr.ph3693.us.preheader ], [ %scevgep4270, %._crit_edge3694.us ] ; 3 uses
  %i.eod = phi <2 x float> [ %i.ent, %.lr.ph3693.us.preheader ], [ %.lcssa4800, %._crit_edge3694.us ] ; 2 uses
  %.reass3707.us = mul i64 %factor.op.mul3706, %indvars.iv4272
  %gep3709.us = getelementptr i8, ptr %invariant.gep3708, i64 %.reass3707.us ; 2 uses
  br i1 %i.dqt, label %.epil.preheader4899, label %.lr.ph3693.us.new

.lr.ph3693.us.new:                                ; preds = %.lr.ph3693.us, %.lr.ph3693.us.new
  %.012883690.us = phi ptr [ %i.epf, %.lr.ph3693.us.new ], [ %gep3709.us, %.lr.ph3693.us ] ; 2 uses
  %.2413953689.us = phi ptr [ %i.epg, %.lr.ph3693.us.new ], [ %.2313943700.us, %.lr.ph3693.us ] ; 3 uses
  %i.eoe = phi <2 x float> [ %i.epe, %.lr.ph3693.us.new ], [ %i.eod, %.lr.ph3693.us ]
  %niter4905 = phi i32 [ %niter4905.next.1, %.lr.ph3693.us.new ], [ 0, %.lr.ph3693.us ]
  %i.eof = load i16, ptr %.012883690.us, align 2, !tbaa !70
  %i.eog = zext i16 %i.eof to i32
  %i.eoh = shl nuw i32 %i.eog, 16
  %i.eoi = load <2 x i16>, ptr %.2413953689.us, align 2, !tbaa !70
  %i.eoj = zext <2 x i16> %i.eoi to <2 x i32>
  %i.eok = shl nuw <2 x i32> %i.eoj, splat (i32 16)
  %i.eol = bitcast <2 x i32> %i.eok to <2 x float>
  %i.eom = insertelement <2 x i32> poison, i32 %i.eoh, i64 0
  %i.eon = bitcast <2 x i32> %i.eom to <2 x float>
  %i.eoo = shufflevector <2 x float> %i.eon, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eop = fmul fast <2 x float> %i.eoo, %i.eol
  %i.eoq = fadd fast <2 x float> %i.eop, %i.eoe
  %i.eor = getelementptr inbounds [2 x i8], ptr %.012883690.us, i64 %i.eob ; 2 uses
  %i.eos = getelementptr inbounds nuw i8, ptr %.2413953689.us, i64 4
  %i.eot = load i16, ptr %i.eor, align 2, !tbaa !70
  %i.eou = zext i16 %i.eot to i32
  %i.eov = shl nuw i32 %i.eou, 16
  %i.eow = load <2 x i16>, ptr %i.eos, align 2, !tbaa !70
  %i.eox = zext <2 x i16> %i.eow to <2 x i32>
  %i.eoy = shl nuw <2 x i32> %i.eox, splat (i32 16)
  %i.eoz = bitcast <2 x i32> %i.eoy to <2 x float>
  %i.epa = insertelement <2 x i32> poison, i32 %i.eov, i64 0
  %i.epb = bitcast <2 x i32> %i.epa to <2 x float>
  %i.epc = shufflevector <2 x float> %i.epb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epd = fmul fast <2 x float> %i.epc, %i.eoz
  %i.epe = fadd fast <2 x float> %i.epd, %i.eoq   ; 3 uses
  %i.epf = getelementptr inbounds [2 x i8], ptr %i.eor, i64 %i.eob ; 2 uses
  %i.epg = getelementptr inbounds nuw i8, ptr %.2413953689.us, i64 8 ; 2 uses
  %niter4905.next.1 = add nuw nsw i32 %niter4905, 2 ; 2 uses
  %niter4905.ncmp.1 = icmp eq i32 %niter4905.next.1, %unroll_iter4904
  br i1 %niter4905.ncmp.1, label %._crit_edge3694.us.unr-lcssa, label %.lr.ph3693.us.new, !llvm.loop !464

._crit_edge3694.us.unr-lcssa:                     ; preds = %.lr.ph3693.us.new
  br i1 %lcmp.mod4901.not, label %._crit_edge3694.us, label %.epil.preheader4899

.epil.preheader4899:                              ; preds = %._crit_edge3694.us.unr-lcssa, %.lr.ph3693.us
  %.012883690.us.epil.init = phi ptr [ %gep3709.us, %.lr.ph3693.us ], [ %i.epf, %._crit_edge3694.us.unr-lcssa ]
  %.2413953689.us.epil.init = phi ptr [ %.2313943700.us, %.lr.ph3693.us ], [ %i.epg, %._crit_edge3694.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.eod, %.lr.ph3693.us ], [ %i.epe, %._crit_edge3694.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4903)
  %i.eph = load i16, ptr %.012883690.us.epil.init, align 2, !tbaa !70
  %i.epi = zext i16 %i.eph to i32
  %i.epj = shl nuw i32 %i.epi, 16
  %i.epk = load <2 x i16>, ptr %.2413953689.us.epil.init, align 2, !tbaa !70
  %i.epl = zext <2 x i16> %i.epk to <2 x i32>
  %i.epm = shl nuw <2 x i32> %i.epl, splat (i32 16)
  %i.epn = bitcast <2 x i32> %i.epm to <2 x float>
  %i.epo = insertelement <2 x i32> poison, i32 %i.epj, i64 0
  %i.epp = bitcast <2 x i32> %i.epo to <2 x float>
  %i.epq = shufflevector <2 x float> %i.epp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epr = fmul fast <2 x float> %i.epq, %i.epn
  %i.eps = fadd fast <2 x float> %i.epr, %.epil.init
  br label %._crit_edge3694.us

._crit_edge3694.us:                               ; preds = %._crit_edge3694.us.unr-lcssa, %.epil.preheader4899
  %.lcssa4800 = phi <2 x float> [ %i.epe, %._crit_edge3694.us.unr-lcssa ], [ %i.eps, %.epil.preheader4899 ] ; 2 uses
  %scevgep4269 = getelementptr i8, ptr %.2313943700.us, i64 4
  %scevgep4270 = getelementptr i8, ptr %scevgep4269, i64 %i.dqr
  %indvars.iv.next4273 = add nuw nsw i64 %indvars.iv4272, 1 ; 2 uses
  %i.ept = trunc nuw i64 %indvars.iv.next4273 to i32
  %i.epu = icmp sgt i32 %i.bhv, %i.ept
  br i1 %i.epu, label %.lr.ph3693.us, label %._crit_edge3703, !llvm.loop !465

._crit_edge3703:                                  ; preds = %._crit_edge3694.us, %.lr.ph3702, %.preheader2999
  %i.epv = phi <2 x float> [ %i.ent, %.preheader2999 ], [ %i.ent, %.lr.ph3702 ], [ %.lcssa4800, %._crit_edge3694.us ] ; 12 uses
  switch i32 %i.bik, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2949
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2952
    i32 6, label %bb.au
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943: ; preds = %._crit_edge3703
  %i.epw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.epv, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946: ; preds = %._crit_edge3703
  %i.epx = load ptr, ptr %8, align 8, !tbaa !19
  %i.epy = load float, ptr %i.epx, align 4, !tbaa !48
  %i.epz = fcmp fast ogt <2 x float> %i.epv, zeroinitializer
  %i.eqa = insertelement <2 x float> poison, float %i.epy, i64 0
  %i.eqb = shufflevector <2 x float> %i.eqa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eqc = select <2 x i1> %i.epz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.eqb
  %i.eqd = fmul fast <2 x float> %i.eqc, %i.epv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940: ; preds = %._crit_edge3703
  %i.eqe = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.eqf = load float, ptr %i.eqe, align 4, !tbaa !48 ; 2 uses
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.eqe, i64 4
  %i.eqh = load float, ptr %i.eqg, align 4, !tbaa !48 ; 3 uses
  %i.eqi = extractelement <2 x float> %i.epv, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqi, float %i.eqf) ; 2 uses
  %i.eqj = fcmp fast ogt float %spec.select, %i.eqh
  %.126812942 = select i1 %i.eqj, float %i.eqh, float %spec.select
  %i.eqk = extractelement <2 x float> %i.epv, i64 1
  %.02682 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqk, float %i.eqf)
  %spec.select2967 = call nnan ninf nsz float @llvm.minnum.f32(float %.02682, float %i.eqh)
  %i.eql = insertelement <2 x float> poison, float %.126812942, i64 0
  %i.eqm = insertelement <2 x float> %i.eql, float %spec.select2967, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2949: ; preds = %._crit_edge3703
  %i.eqn = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.epv, <2 x float> splat (float f0x42B0C0A5))
  %i.eqo = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eqn, <2 x float> splat (float f0xC2B0C0A5))
  %i.eqp = fneg fast <2 x float> %i.eqo
  %i.eqq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.eqp)
  %i.eqr = fadd fast <2 x float> %i.eqq, splat (float 1.000000e+00)
  %i.eqs = fdiv fast <2 x float> splat (float 1.000000e+00), %i.eqr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2952: ; preds = %._crit_edge3703
  %i.eqt = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.epv)
  %i.equ = fadd fast <2 x float> %i.eqt, splat (float 1.000000e+00)
  %i.eqv = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.equ)
  %i.eqw = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.eqv)
  %i.eqx = fmul fast <2 x float> %i.eqw, %i.epv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

bb.au:                                            ; preds = %._crit_edge3703
  %i.eqy = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.eqz = load float, ptr %i.eqy, align 4, !tbaa !48 ; 5 uses
  %i.era = getelementptr inbounds nuw i8, ptr %i.eqy, i64 4
  %i.erb = load float, ptr %i.era, align 4, !tbaa !48 ; 3 uses
  %i.erc = fneg fast float %i.erb
  %i.erd = fdiv fast float %i.erc, %i.eqz         ; 4 uses
  %i.ere = extractelement <2 x float> %i.epv, i64 0 ; 5 uses
  %i.erf = fcmp fast olt float %i.ere, %i.erd
  br i1 %i.erf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.erg = fdiv fast float 1.000000e+00, %i.eqz
  %i.erh = fadd fast float %i.erd, %i.erg
  %i.eri = fcmp fast ogt float %i.ere, %i.erh
  br i1 %i.eri, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.erj = fmul fast float %i.eqz, %i.ere
  %i.erk = fadd fast float %i.erj, %i.erb
  %i.erl = fmul fast float %i.erk, %i.ere
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread: ; preds = %bb.aw, %bb.av, %bb.au
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.fgs = sext i32 %i.fgn to i64
  %i.fgt = sext i32 %i.fgk to i64
  %i.fgu = add i32 %i.fgi, -1                     ; 2 uses
  %i.fgv = zext i32 %i.fgu to i64
  %i.fgw = shl nuw nsw i64 %i.fgv, 3              ; 2 uses
  %brmerge3931 = select i1 %i.dpc, i1 true, i1 %i.fgj
  %brmerge3934 = select i1 %i.dpd, i1 true, i1 %i.fgj
  %xtraiter4906 = and i32 %i.fgi, 1
  %i.fgx = icmp eq i32 %i.fgu, 0
  %unroll_iter4910 = and i32 %i.fgi, 2147483646
  %lcmp.mod4907.not = icmp eq i32 %xtraiter4906, 0
  %lcmp.mod4909 = trunc i32 %i.fgi to i1
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph3837, %.loopexit
  %.212693835 = phi i32 [ %.11268.lcssa, %.lr.ph3837 ], [ %i.fjl, %.loopexit ] ; 2 uses
  %.163834 = phi ptr [ %.9.lcssa, %.lr.ph3837 ], [ %.20, %.loopexit ] ; 6 uses
  %.027763833 = phi <4 x float> [ zeroinitializer, %.lr.ph3837 ], [ %.42780, %.loopexit ] ; 4 uses
  %i.fgy = sdiv i32 %.212693835, %i.l
  %i.fgz = sext i32 %i.fgy to i64
  %.reass3843 = mul i64 %factor.op.mul3842, %i.fgz
  %gep3845 = getelementptr i8, ptr %invariant.gep3844, i64 %.reass3843 ; 3 uses
  br i1 %brmerge3931, label %.loopexit2971, label %.lr.ph3822.preheader

.lr.ph3822.preheader:                             ; preds = %bb.bg
  br i1 %i.fgx, label %.lr.ph3822.epil.preheader, label %.lr.ph3822

.lr.ph3822:                                       ; preds = %.lr.ph3822.preheader, %.lr.ph3822
  %.012453820 = phi ptr [ %i.fhy, %.lr.ph3822 ], [ %gep3845, %.lr.ph3822.preheader ] ; 2 uses
  %.173819 = phi ptr [ %i.fhz, %.lr.ph3822 ], [ %.163834, %.lr.ph3822.preheader ] ; 3 uses
  %.127773818 = phi <4 x float> [ %i.fhx, %.lr.ph3822 ], [ %.027763833, %.lr.ph3822.preheader ]
  %niter4911 = phi i32 [ %niter4911.next.1, %.lr.ph3822 ], [ 0, %.lr.ph3822.preheader ]
  %i.fha = load i64, ptr %.012453820, align 1, !tbaa !45
  %i.fhb = insertelement <2 x i64> poison, i64 %i.fha, i64 0
  %i.fhc = bitcast <2 x i64> %i.fhb to <8 x i16>
  %i.fhd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhe = bitcast <8 x i16> %i.fhd to <4 x float>
  %i.fhf = load i64, ptr %.173819, align 1, !tbaa !45
  %i.fhg = insertelement <2 x i64> poison, i64 %i.fhf, i64 0
  %i.fhh = bitcast <2 x i64> %i.fhg to <8 x i16>
  %i.fhi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhj = bitcast <8 x i16> %i.fhi to <4 x float>
  %i.fhk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhe, <4 x float> nofpclass(nan inf) %i.fhj, <4 x float> nofpclass(nan inf) %.127773818)
  %i.fhl = getelementptr inbounds [2 x i8], ptr %.012453820, i64 %i.fgm ; 2 uses
  %i.fhm = getelementptr inbounds nuw i8, ptr %.173819, i64 8
  %i.fhn = load i64, ptr %i.fhl, align 1, !tbaa !45
  %i.fho = insertelement <2 x i64> poison, i64 %i.fhn, i64 0
  %i.fhp = bitcast <2 x i64> %i.fho to <8 x i16>
  %i.fhq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhr = bitcast <8 x i16> %i.fhq to <4 x float>
  %i.fhs = load i64, ptr %i.fhm, align 1, !tbaa !45
  %i.fht = insertelement <2 x i64> poison, i64 %i.fhs, i64 0
  %i.fhu = bitcast <2 x i64> %i.fht to <8 x i16>
  %i.fhv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhw = bitcast <8 x i16> %i.fhv to <4 x float>
  %i.fhx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhr, <4 x float> nofpclass(nan inf) %i.fhw, <4 x float> nofpclass(nan inf) %i.fhk) ; 3 uses
  %i.fhy = getelementptr inbounds [2 x i8], ptr %i.fhl, i64 %i.fgm ; 2 uses
  %i.fhz = getelementptr inbounds nuw i8, ptr %.173819, i64 16 ; 2 uses
  %niter4911.next.1 = add nuw nsw i32 %niter4911, 2 ; 2 uses
  %niter4911.ncmp.1 = icmp eq i32 %niter4911.next.1, %unroll_iter4910
  br i1 %niter4911.ncmp.1, label %.loopexit2971.thread.unr-lcssa, label %.lr.ph3822, !llvm.loop !477

.loopexit2971.thread.unr-lcssa:                   ; preds = %.lr.ph3822
  br i1 %lcmp.mod4907.not, label %.loopexit2971.thread, label %.lr.ph3822.epil.preheader

.lr.ph3822.epil.preheader:                        ; preds = %.loopexit2971.thread.unr-lcssa, %.lr.ph3822.preheader
  %.012453820.epil.init = phi ptr [ %gep3845, %.lr.ph3822.preheader ], [ %i.fhy, %.loopexit2971.thread.unr-lcssa ]
  %.173819.epil.init = phi ptr [ %.163834, %.lr.ph3822.preheader ], [ %i.fhz, %.loopexit2971.thread.unr-lcssa ]
  %.127773818.epil.init = phi <4 x float> [ %.027763833, %.lr.ph3822.preheader ], [ %i.fhx, %.loopexit2971.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4909)
  %i.fia = load i64, ptr %.012453820.epil.init, align 1, !tbaa !45
  %i.fib = insertelement <2 x i64> poison, i64 %i.fia, i64 0
  %i.fic = bitcast <2 x i64> %i.fib to <8 x i16>
  %i.fid = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fie = bitcast <8 x i16> %i.fid to <4 x float>
  %i.fif = load i64, ptr %.173819.epil.init, align 1, !tbaa !45
  %i.fig = insertelement <2 x i64> poison, i64 %i.fif, i64 0
  %i.fih = bitcast <2 x i64> %i.fig to <8 x i16>
  %i.fii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fij = bitcast <8 x i16> %i.fii to <4 x float>
  %i.fik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fie, <4 x float> nofpclass(nan inf) %i.fij, <4 x float> nofpclass(nan inf) %.127773818.epil.init)
  br label %.loopexit2971.thread

.loopexit2971.thread:                             ; preds = %.loopexit2971.thread.unr-lcssa, %.lr.ph3822.epil.preheader
  %.lcssa4774 = phi <4 x float> [ %i.fhx, %.loopexit2971.thread.unr-lcssa ], [ %i.fik, %.lr.ph3822.epil.preheader ]
  %scevgep4306 = getelementptr i8, ptr %.163834, i64 8
  %scevgep4307 = getelementptr i8, ptr %scevgep4306, i64 %i.fgw
  br label %.loopexit

.loopexit2971:                                    ; preds = %bb.bg
  br i1 %brmerge3934, label %.loopexit, label %.lr.ph3830

.lr.ph3830:                                       ; preds = %.loopexit2971, %.lr.ph3830
  %.012433829 = phi i32 [ %i.fjk, %.lr.ph3830 ], [ 0, %.loopexit2971 ]
  %.23828 = phi ptr [ %i.fji, %.lr.ph3830 ], [ %gep3845, %.loopexit2971 ] ; 5 uses
  %.193827 = phi ptr [ %i.fjj, %.lr.ph3830 ], [ %.163834, %.loopexit2971 ] ; 2 uses
  %.327793826 = phi <4 x float> [ %i.fjh, %.lr.ph3830 ], [ %.027763833, %.loopexit2971 ]
  %i.fil = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgp
  %i.fim = load i16, ptr %i.fil, align 2, !tbaa !70
  %i.fin = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgr
  %i.fio = load i16, ptr %i.fin, align 2, !tbaa !70
  %i.fip = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgs
  %i.fiq = load i16, ptr %i.fip, align 2, !tbaa !70
  %i.fir = load i16, ptr %.23828, align 2, !tbaa !70
  %i.fis = zext i16 %i.fim to i32
  %i.fit = zext i16 %i.fio to i32
  %i.fiu = zext i16 %i.fiq to i32
  %i.fiv = zext i16 %i.fir to i32
  %i.fiw = insertelement <4 x i32> poison, i32 %i.fiv, i64 0
  %i.fix = insertelement <4 x i32> %i.fiw, i32 %i.fiu, i64 1
  %i.fiy = insertelement <4 x i32> %i.fix, i32 %i.fit, i64 2
  %i.fiz = insertelement <4 x i32> %i.fiy, i32 %i.fis, i64 3
  %i.fja = shl nuw <4 x i32> %i.fiz, splat (i32 16)
  %i.fjb = bitcast <4 x i32> %i.fja to <4 x float>
  %i.fjc = load i64, ptr %.193827, align 1, !tbaa !45
  %i.fjd = insertelement <2 x i64> poison, i64 %i.fjc, i64 0
  %i.fje = bitcast <2 x i64> %i.fjd to <8 x i16>
  %i.fjf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fje, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fjg = bitcast <8 x i16> %i.fjf to <4 x float>
  %i.fjh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fjb, <4 x float> nofpclass(nan inf) %i.fjg, <4 x float> nofpclass(nan inf) %.327793826) ; 2 uses
  %i.fji = getelementptr inbounds [2 x i8], ptr %.23828, i64 %i.fgt
  %i.fjj = getelementptr inbounds nuw i8, ptr %.193827, i64 8
  %i.fjk = add nuw nsw i32 %.012433829, 1         ; 2 uses
  %exitcond4311.not = icmp eq i32 %i.fjk, %i.fgi
  br i1 %exitcond4311.not, label %.loopexit.loopexit, label %.lr.ph3830, !llvm.loop !478

.loopexit.loopexit:                               ; preds = %.lr.ph3830
  %scevgep4309 = getelementptr i8, ptr %.163834, i64 8
  %scevgep4310 = getelementptr i8, ptr %scevgep4309, i64 %i.fgw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit2971.thread, %.loopexit.loopexit, %.loopexit2971
  %.42780 = phi nsz <4 x float> [ %.027763833, %.loopexit2971 ], [ %i.fjh, %.loopexit.loopexit ], [ %.lcssa4774, %.loopexit2971.thread ] ; 2 uses
  %.20 = phi ptr [ %.163834, %.loopexit2971 ], [ %scevgep4310, %.loopexit.loopexit ], [ %scevgep4307, %.loopexit2971.thread ] ; 2 uses
  %i.fjl = add nuw nsw i32 %.212693835, 4         ; 3 uses
  %i.fjm = or disjoint i32 %i.fjl, 3
  %i.fjn = icmp slt i32 %i.fjm, %i.o
  br i1 %i.fjn, label %bb.bg, label %._crit_edge3838, !llvm.loop !479

._crit_edge3838:                                  ; preds = %.loopexit, %._crit_edge3810
  %.02776.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3810 ], [ %.42780, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge3810 ], [ %.20, %.loopexit ] ; 3 uses
  %.21269.lcssa = phi i32 [ %.11268.lcssa, %._crit_edge3810 ], [ %i.fjl, %.loopexit ] ; 5 uses
  %i.fjo = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.ffz, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.fjp = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.ffz, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.fjq = fadd fast <4 x float> %i.fjo, %i.fjp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fbq, <4 x float> %i.fjq)
  %op.rdx4765 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01279, <8 x float> %i.fbr)
  %op.rdx4766 = fadd fast float %op.rdx, %op.rdx4765 ; 3 uses
  %i.fjr = or disjoint i32 %.21269.lcssa, 1
  %i.fjs = icmp slt i32 %i.fjr, %i.o
  br i1 %i.fjs, label %.lr.ph3859, label %.preheader2983

.lr.ph3859:                                       ; preds = %._crit_edge3838
  %i.fjt = load ptr, ptr %0, align 8, !tbaa !19
  %i.fju = load i32, ptr %i.p, align 4, !tbaa !55
  %i.fjv = sext i32 %i.fju to i64
  %i.fjw = load i64, ptr %i.doz, align 8, !tbaa !44
  %factor.op.mul3863 = mul i64 %i.fjw, %i.fjv
  %i.fjx = mul nsw i64 %indvars.iv4324, %i.etg
  %invariant.gep3865 = getelementptr [2 x i8], ptr %i.fjt, i64 %i.fjx
  %i.fjy = load i32, ptr %i.e, align 4
  %i.fjz = sext i32 %i.fjy to i64
  %i.fka = load i32, ptr %i.b, align 4
  %i.fkb = sext i32 %i.fka to i64
  br i1 %i.etb, label %.lr.ph3851.us.preheader, label %.lr.ph3859.split.preheader

.lr.ph3859.split.preheader:                       ; preds = %.lr.ph3859
  %i.fkc = add i32 %.21269.lcssa, 2
  %i.fkd = sub i32 %i.dpl, %.21269.lcssa
  %i.fke = and i32 %i.fkd, -2
  %i.fkf = add i32 %i.fkc, %i.fke
  br label %.preheader2983

.lr.ph3851.us.preheader:                          ; preds = %.lr.ph3859
  %i.fkg = zext i32 %.21269.lcssa to i64
  br label %.lr.ph3851.us

.lr.ph3851.us:                                    ; preds = %.lr.ph3851.us.preheader, %._crit_edge3852.us
  %indvars.iv4315 = phi i64 [ %i.fkg, %.lr.ph3851.us.preheader ], [ %indvars.iv.next4316, %._crit_edge3852.us ] ; 2 uses
  %.213856.us = phi ptr [ %.16.lcssa, %.lr.ph3851.us.preheader ], [ %scevgep4313, %._crit_edge3852.us ] ; 2 uses
  %.112803855.us = phi float [ %op.rdx4766, %.lr.ph3851.us.preheader ], [ %i.flc, %._crit_edge3852.us ]
  %.reass3864.us = mul i64 %factor.op.mul3863, %indvars.iv4315
  %gep3866.us = getelementptr i8, ptr %invariant.gep3865, i64 %.reass3864.us
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph3851.us, %bb.bh
  %.012413849.us = phi i32 [ 0, %.lr.ph3851.us ], [ %i.flf, %bb.bh ]
  %.012423848.us = phi ptr [ %gep3866.us, %.lr.ph3851.us ], [ %i.fld, %bb.bh ] ; 3 uses
  %.223847.us = phi ptr [ %.213856.us, %.lr.ph3851.us ], [ %i.fle, %bb.bh ] ; 3 uses
  %.212813846.us = phi float [ %.112803855.us, %.lr.ph3851.us ], [ %i.flc, %bb.bh ]
  %i.fkh = load i16, ptr %.012423848.us, align 2, !tbaa !70
  %i.fki = zext i16 %i.fkh to i32
  %i.fkj = shl nuw i32 %i.fki, 16
  %i.fkk = bitcast i32 %i.fkj to float
  %i.fkl = load i16, ptr %.223847.us, align 2, !tbaa !70
  %i.fkm = zext i16 %i.fkl to i32
  %i.fkn = shl nuw i32 %i.fkm, 16
  %i.fko = bitcast i32 %i.fkn to float
  %i.fkp = fmul fast float %i.fko, %i.fkk
  %i.fkq = fadd fast float %.212813846.us, %i.fkp
  %i.fkr = getelementptr inbounds [2 x i8], ptr %.012423848.us, i64 %i.fjz
  %i.fks = load i16, ptr %i.fkr, align 2, !tbaa !70
  %i.fkt = zext i16 %i.fks to i32
  %i.fku = shl nuw i32 %i.fkt, 16
  %i.fkv = bitcast i32 %i.fku to float
  %i.fkw = getelementptr inbounds nuw i8, ptr %.223847.us, i64 2
  %i.fkx = load i16, ptr %i.fkw, align 2, !tbaa !70
  %i.fky = zext i16 %i.fkx to i32
  %i.fkz = shl nuw i32 %i.fky, 16
  %i.fla = bitcast i32 %i.fkz to float
  %i.flb = fmul fast float %i.fla, %i.fkv
  %i.flc = fadd fast float %i.flb, %i.fkq         ; 3 uses
  %i.fld = getelementptr inbounds [2 x i8], ptr %.012423848.us, i64 %i.fkb
  %i.fle = getelementptr inbounds nuw i8, ptr %.223847.us, i64 4
  %i.flf = add nuw nsw i32 %.012413849.us, 1      ; 2 uses
  %exitcond4314.not = icmp eq i32 %i.flf, %i.eta
  br i1 %exitcond4314.not, label %._crit_edge3852.us, label %bb.bh, !llvm.loop !480

._crit_edge3852.us:                               ; preds = %bb.bh
  %scevgep4312 = getelementptr i8, ptr %.213856.us, i64 4
  %scevgep4313 = getelementptr i8, ptr %scevgep4312, i64 %i.ete ; 2 uses
  %indvars.iv.next4316 = add nuw nsw i64 %indvars.iv4315, 2 ; 3 uses
  %i.flg = trunc i64 %indvars.iv.next4316 to i32
  %i.flh = or i32 %i.flg, 1
  %i.fli = icmp slt i32 %i.flh, %i.o
  br i1 %i.fli, label %.lr.ph3851.us, label %.preheader2983.loopexit, !llvm.loop !481

.preheader2983.loopexit:                          ; preds = %._crit_edge3852.us
  %i.flj = trunc nuw i64 %indvars.iv.next4316 to i32
  br label %.preheader2983

.preheader2983:                                   ; preds = %.lr.ph3859.split.preheader, %.preheader2983.loopexit, %._crit_edge3838
  %.11280.lcssa = phi float [ %op.rdx4766, %._crit_edge3838 ], [ %i.flc, %.preheader2983.loopexit ], [ %op.rdx4766, %.lr.ph3859.split.preheader ] ; 3 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %._crit_edge3838 ], [ %scevgep4313, %.preheader2983.loopexit ], [ %.16.lcssa, %.lr.ph3859.split.preheader ]
  %.31270.lcssa = phi i32 [ %.21269.lcssa, %._crit_edge3838 ], [ %i.flj, %.preheader2983.loopexit ], [ %i.fkf, %.lr.ph3859.split.preheader ] ; 2 uses
  %i.flk = icmp slt i32 %.31270.lcssa, %i.o
  br i1 %i.flk, label %.lr.ph3882, label %._crit_edge3883

.lr.ph3882:                                       ; preds = %.preheader2983
  %i.fll = load ptr, ptr %0, align 8, !tbaa !19
  %i.flm = load i32, ptr %i.p, align 4, !tbaa !55
  %i.fln = sext i32 %i.flm to i64
  %i.flo = load i64, ptr %i.doz, align 8, !tbaa !44
  %factor.op.mul3885 = mul i64 %i.flo, %i.fln
  %i.flp = mul nsw i64 %indvars.iv4324, %i.etg
  %invariant.gep3887 = getelementptr [2 x i8], ptr %i.fll, i64 %i.flp
  %i.flq = load i32, ptr %i.b, align 4
  %i.flr = sext i32 %i.flq to i64                 ; 2 uses
  br i1 %i.etb, label %.lr.ph3875.us.preheader, label %._crit_edge3883

.lr.ph3875.us.preheader:                          ; preds = %.lr.ph3882
  %i.fls = zext i32 %.31270.lcssa to i64
  br label %.lr.ph3875.us

.lr.ph3875.us:                                    ; preds = %.lr.ph3875.us.preheader, %._crit_edge3876.us
  %indvars.iv4321 = phi i64 [ %i.fls, %.lr.ph3875.us.preheader ], [ %indvars.iv.next4322, %._crit_edge3876.us ] ; 2 uses
  %.233880.us = phi ptr [ %.21.lcssa, %.lr.ph3875.us.preheader ], [ %scevgep4319, %._crit_edge3876.us ] ; 3 uses
  %.312823879.us = phi float [ %.11280.lcssa, %.lr.ph3875.us.preheader ], [ %.lcssa4778, %._crit_edge3876.us ] ; 2 uses
  %.reass3886.us = mul i64 %factor.op.mul3885, %indvars.iv4321
  %gep3888.us = getelementptr i8, ptr %invariant.gep3887, i64 %.reass3886.us ; 2 uses
  br i1 %i.eth, label %.epil.preheader4912, label %.lr.ph3875.us.new

.lr.ph3875.us.new:                                ; preds = %.lr.ph3875.us, %.lr.ph3875.us.new
  %.012403872.us = phi ptr [ %i.fmp, %.lr.ph3875.us.new ], [ %gep3888.us, %.lr.ph3875.us ] ; 2 uses
  %.243871.us = phi ptr [ %i.fmq, %.lr.ph3875.us.new ], [ %.233880.us, %.lr.ph3875.us ] ; 3 uses
  %.412833870.us = phi float [ %i.fmo, %.lr.ph3875.us.new ], [ %.312823879.us, %.lr.ph3875.us ]
  %niter4918 = phi i32 [ %niter4918.next.1, %.lr.ph3875.us.new ], [ 0, %.lr.ph3875.us ]
  %i.flt = load i16, ptr %.012403872.us, align 2, !tbaa !70
  %i.flu = zext i16 %i.flt to i32
  %i.flv = shl nuw i32 %i.flu, 16
  %i.flw = bitcast i32 %i.flv to float
  %i.flx = load i16, ptr %.243871.us, align 2, !tbaa !70
  %i.fly = zext i16 %i.flx to i32
  %i.flz = shl nuw i32 %i.fly, 16
  %i.fma = bitcast i32 %i.flz to float
  %i.fmb = fmul fast float %i.fma, %i.flw
  %i.fmc = fadd fast float %i.fmb, %.412833870.us
  %i.fmd = getelementptr inbounds [2 x i8], ptr %.012403872.us, i64 %i.flr ; 2 uses
  %i.fme = getelementptr inbounds nuw i8, ptr %.243871.us, i64 2
  %i.fmf = load i16, ptr %i.fmd, align 2, !tbaa !70
  %i.fmg = zext i16 %i.fmf to i32
  %i.fmh = shl nuw i32 %i.fmg, 16
  %i.fmi = bitcast i32 %i.fmh to float
  %i.fmj = load i16, ptr %i.fme, align 2, !tbaa !70
  %i.fmk = zext i16 %i.fmj to i32
  %i.fml = shl nuw i32 %i.fmk, 16
  %i.fmm = bitcast i32 %i.fml to float
  %i.fmn = fmul fast float %i.fmm, %i.fmi
  %i.fmo = fadd fast float %i.fmn, %i.fmc         ; 3 uses
  %i.fmp = getelementptr inbounds [2 x i8], ptr %i.fmd, i64 %i.flr ; 2 uses
  %i.fmq = getelementptr inbounds nuw i8, ptr %.243871.us, i64 4 ; 2 uses
  %niter4918.next.1 = add nuw nsw i32 %niter4918, 2 ; 2 uses
  %niter4918.ncmp.1 = icmp eq i32 %niter4918.next.1, %unroll_iter4917
  br i1 %niter4918.ncmp.1, label %._crit_edge3876.us.unr-lcssa, label %.lr.ph3875.us.new, !llvm.loop !482

._crit_edge3876.us.unr-lcssa:                     ; preds = %.lr.ph3875.us.new
  br i1 %lcmp.mod4914.not, label %._crit_edge3876.us, label %.epil.preheader4912

.epil.preheader4912:                              ; preds = %._crit_edge3876.us.unr-lcssa, %.lr.ph3875.us
  %.012403872.us.epil.init = phi ptr [ %gep3888.us, %.lr.ph3875.us ], [ %i.fmp, %._crit_edge3876.us.unr-lcssa ]
  %.243871.us.epil.init = phi ptr [ %.233880.us, %.lr.ph3875.us ], [ %i.fmq, %._crit_edge3876.us.unr-lcssa ]
  %.412833870.us.epil.init = phi float [ %.312823879.us, %.lr.ph3875.us ], [ %i.fmo, %._crit_edge3876.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4916)
  %i.fmr = load i16, ptr %.012403872.us.epil.init, align 2, !tbaa !70
  %i.fms = zext i16 %i.fmr to i32
  %i.fmt = shl nuw i32 %i.fms, 16
  %i.fmu = bitcast i32 %i.fmt to float
  %i.fmv = load i16, ptr %.243871.us.epil.init, align 2, !tbaa !70
  %i.fmw = zext i16 %i.fmv to i32
  %i.fmx = shl nuw i32 %i.fmw, 16
  %i.fmy = bitcast i32 %i.fmx to float
  %i.fmz = fmul fast float %i.fmy, %i.fmu
  %i.fna = fadd fast float %i.fmz, %.412833870.us.epil.init
  br label %._crit_edge3876.us

._crit_edge3876.us:                               ; preds = %._crit_edge3876.us.unr-lcssa, %.epil.preheader4912
  %.lcssa4778 = phi float [ %i.fmo, %._crit_edge3876.us.unr-lcssa ], [ %i.fna, %.epil.preheader4912 ] ; 2 uses
  %scevgep4318 = getelementptr i8, ptr %.233880.us, i64 2
  %scevgep4319 = getelementptr i8, ptr %scevgep4318, i64 %i.etf
  %indvars.iv.next4322 = add nuw nsw i64 %indvars.iv4321, 1 ; 2 uses
  %i.fnb = trunc nuw i64 %indvars.iv.next4322 to i32
  %i.fnc = icmp sgt i32 %i.o, %i.fnb
  br i1 %i.fnc, label %.lr.ph3875.us, label %._crit_edge3883, !llvm.loop !483

._crit_edge3883:                                  ; preds = %._crit_edge3876.us, %.lr.ph3882, %.preheader2983
  %.31282.lcssa = phi float [ %.11280.lcssa, %.preheader2983 ], [ %.11280.lcssa, %.lr.ph3882 ], [ %.lcssa4778, %._crit_edge3876.us ] ; 13 uses
  switch i32 %i.dpe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bi
    i32 2, label %bb.bj
    i32 3, label %bb.bk
    i32 4, label %bb.bl
    i32 5, label %bb.bm
    i32 6, label %bb.bn
  ]

bb.bi:                                            ; preds = %._crit_edge3883
  %i.fnd = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31282.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bj:                                            ; preds = %._crit_edge3883
  %i.fne = load ptr, ptr %8, align 8, !tbaa !19
  %i.fnf = load float, ptr %i.fne, align 4, !tbaa !48
  %i.fng = fcmp fast ogt float %.31282.lcssa, 0.000000e+00
  %i.fnh = select fast i1 %i.fng, float 1.000000e+00, float %i.fnf
  %i.fni = fmul fast float %i.fnh, %.31282.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %._crit_edge3883
  %i.fnj = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.fnk = load float, ptr %i.fnj, align 4, !tbaa !48
  %i.fnl = getelementptr inbounds nuw i8, ptr %i.fnj, i64 4
  %i.fnm = load float, ptr %i.fnl, align 4, !tbaa !48
  %spec.select2965 = call nnan ninf nsz float @llvm.maxnum.f32(float %.31282.lcssa, float %i.fnk)
  %spec.select2966 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2965, float %i.fnm)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge3883
  %.sroa.speculated2426 = call nnan ninf nsz float @llvm.minnum.f32(float %.31282.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2426, float f0xC2B0C0A5)
  %i.fnn = fneg fast float %.sroa.speculated
  %i.fno = call fast float @llvm.exp.f32(float %i.fnn)
  %i.fnp = fadd fast float %i.fno, 1.000000e+00
  %i.fnq = fdiv fast float 1.000000e+00, %i.fnp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bm:                                            ; preds = %._crit_edge3883
  %i.fnr = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31282.lcssa)
  %i.fns = fadd fast float %i.fnr, 1.000000e+00
  %i.fnt = call fast float @llvm.log.f32(float %i.fns)
  %i.fnu = call fast float @llvm.tanh.f32(float %i.fnt)
  %i.fnv = fmul fast float %i.fnu, %.31282.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bn:                                            ; preds = %._crit_edge3883
  %i.fnw = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.fnx = load float, ptr %i.fnw, align 4, !tbaa !48 ; 3 uses
  %i.fny = getelementptr inbounds nuw i8, ptr %i.fnw, i64 4
  %i.fnz = load float, ptr %i.fny, align 4, !tbaa !48 ; 2 uses
  %i.foa = fneg fast float %i.fnz
  %i.fob = fdiv fast float %i.foa, %i.fnx         ; 2 uses
  %i.foc = fcmp fast olt float %.31282.lcssa, %i.fob
  br i1 %i.foc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fod = fdiv fast float 1.000000e+00, %i.fnx
  %i.foe = fadd fast float %i.fob, %i.fod
  %i.fof = fcmp fast ogt float %.31282.lcssa, %i.foe
  br i1 %i.fof, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fog = fmul fast float %i.fnx, %.31282.lcssa
  %i.foh = fadd fast float %i.fog, %i.fnz
  %i.foi = fmul fast float %i.foh, %.31282.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.bk, %bb.bn, %._crit_edge3883, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bo, %bb.bp
  %.12685 = phi nsz float [ %.31282.lcssa, %._crit_edge3883 ], [ %i.fnd, %bb.bi ], [ %i.fni, %bb.bj ], [ 0.000000e+00, %bb.bn ], [ %spec.select2966, %bb.bk ], [ %i.fnq, %bb.bl ], [ %i.fnv, %bb.bm ], [ %i.foi, %bb.bp ], [ %.31282.lcssa, %bb.bo ]
  %i.foj = bitcast float %.12685 to i32
  %i.fok = lshr i32 %i.foj, 16
  %i.fol = trunc nuw i32 %i.fok to i16
  store i16 %i.fol, ptr %.012853890, align 2, !tbaa !70
  %i.fom = getelementptr inbounds nuw i8, ptr %.012853890, i64 2
  %indvars.iv.next4325 = add nuw nsw i64 %indvars.iv4324, 1 ; 2 uses
  %exitcond4328.not = icmp eq i64 %indvars.iv.next4325, %wide.trip.count4327
  br i1 %exitcond4328.not, label %._crit_edge3894, label %bb.az, !llvm.loop !484

bb.bq:                                            ; preds = %._crit_edge3904.split, %bb.b
  ret void
}

declare void @_ZN4ncnn37convolution1d_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

end_hunk_1
