Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.emy = fmul reassoc nsz arcp contract afn <8 x float> %i.emv, %i.emc ; 2 uses
  %i.emz = fmul reassoc nsz arcp contract afn <8 x float> %i.emy, %i.eki
  %i.ena = fadd reassoc nsz arcp contract afn <8 x float> %i.emz, %vec.phi3753 ; 2 uses
  %i.enb = fmul reassoc nsz arcp contract afn <8 x float> %i.emy, %i.emc
  %i.enc = fadd reassoc nsz arcp contract afn <8 x float> %i.enb, %vec.phi3752 ; 2 uses
  %index.next3789 = add nuw i64 %index3751, 8     ; 2 uses
  %i.end = icmp eq i64 %index.next3789, %n.vec3749
  br i1 %i.end, label %middle.block3790, label %vector.body3750, !llvm.loop !79

middle.block3790:                                 ; preds = %vector.body3750
  %i.ene = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.enc)
  %i.enf = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ena)
  %i.eng = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.emx)
  %i.enh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.elu)
  %i.eni = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.els)
  %i.enj = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.elp)
  br label %scalar.ph3746.preheader

scalar.ph3746.preheader:                          ; preds = %vector.scevcheck, %.lr.ph2052, %middle.block3790
  %indvars.iv2485.ph = phi i64 [ %i.eiw, %vector.scevcheck ], [ %i.eiw, %.lr.ph2052 ], [ %i.eji, %middle.block3790 ]
  %.ph = phi float [ %.promoted2063, %vector.scevcheck ], [ %.promoted2063, %.lr.ph2052 ], [ %i.ene, %middle.block3790 ]
  %.ph4238 = phi float [ %.promoted2061, %vector.scevcheck ], [ %.promoted2061, %.lr.ph2052 ], [ %i.enf, %middle.block3790 ]
  %.ph4239 = phi float [ %.promoted2059, %vector.scevcheck ], [ %.promoted2059, %.lr.ph2052 ], [ %i.eng, %middle.block3790 ]
  %.ph4240 = phi float [ %.promoted2057, %vector.scevcheck ], [ %.promoted2057, %.lr.ph2052 ], [ %i.enh, %middle.block3790 ]
  %.ph4241 = phi float [ %.promoted2055, %vector.scevcheck ], [ %.promoted2055, %.lr.ph2052 ], [ %i.eni, %middle.block3790 ]
  %.ph4242 = phi float [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph2052 ], [ %i.enj, %middle.block3790 ]
  %.016872049.ph = phi i32 [ %i.eie, %vector.scevcheck ], [ %i.eie, %.lr.ph2052 ], [ %i.ejl, %middle.block3790 ]
  br label %scalar.ph3746

._crit_edge2053:                                  ; preds = %scalar.ph3746
  store float %i.eqd, ptr %i.eip, align 4, !tbaa !33
  store float %i.eqg, ptr %i.eiq, align 4, !tbaa !33
  store float %i.eqi, ptr %i.eir, align 4, !tbaa !33
  store float %i.eru, ptr %i.eis, align 4, !tbaa !33
  store float %i.erx, ptr %i.eit, align 4, !tbaa !33
  store float %i.erz, ptr %i.eiu, align 4, !tbaa !33
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge2053, %bb.af
  %i.enk = add nuw nsw i32 %.016882065, 1         ; 2 uses
  %i.enl = icmp slt i32 %i.enk, %i.bvh
  %indvars.iv.next2484 = add i32 %indvars.iv2483, 128
  br i1 %i.enl, label %bb.af, label %.preheader1940

scalar.ph3746:                                    ; preds = %scalar.ph3746.preheader, %scalar.ph3746
  %indvars.iv2485 = phi i64 [ %indvars.iv.next2486, %scalar.ph3746 ], [ %indvars.iv2485.ph, %scalar.ph3746.preheader ] ; 4 uses
  %i.enm = phi float [ %i.erz, %scalar.ph3746 ], [ %.ph, %scalar.ph3746.preheader ]
  %i.enn = phi float [ %i.erx, %scalar.ph3746 ], [ %.ph4238, %scalar.ph3746.preheader ]
  %i.eno = phi float [ %i.eru, %scalar.ph3746 ], [ %.ph4239, %scalar.ph3746.preheader ]
  %i.enp = phi float [ %i.eqi, %scalar.ph3746 ], [ %.ph4240, %scalar.ph3746.preheader ]
  %i.enq = phi float [ %i.eqg, %scalar.ph3746 ], [ %.ph4241, %scalar.ph3746.preheader ]
  %i.enr = phi float [ %i.eqd, %scalar.ph3746 ], [ %.ph4242, %scalar.ph3746.preheader ]
  %.016872049 = phi i32 [ %i.esa, %scalar.ph3746 ], [ %.016872049.ph, %scalar.ph3746.preheader ]
  %i.ens = getelementptr [4 x i8], ptr %i.btg, i64 %indvars.iv2485 ; 9 uses
  %i.ent = getelementptr inbounds nuw i8, ptr %i.ens, i64 512
  %i.enu = load float, ptr %i.ent, align 4, !tbaa !33
  %i.env = getelementptr i8, ptr %i.ens, i64 -512
  %i.enw = load float, ptr %i.env, align 4, !tbaa !33
  %i.enx = fsub reassoc nsz arcp contract afn float %i.enu, %i.enw
  %i.eny = fmul reassoc nsz arcp contract afn float %i.enx, 3.125000e-01
  %i.enz = getelementptr inbounds nuw i8, ptr %i.ens, i64 516
  %i.eoa = load float, ptr %i.enz, align 4, !tbaa !33 ; 2 uses
  %i.eob = getelementptr i8, ptr %i.ens, i64 -508
  %i.eoc = load float, ptr %i.eob, align 4, !tbaa !33 ; 2 uses
  %i.eod = getelementptr inbounds nuw i8, ptr %i.ens, i64 508
  %i.eoe = load float, ptr %i.eod, align 4, !tbaa !33 ; 2 uses
  %i.eof = getelementptr i8, ptr %i.ens, i64 -516
  %i.eog = load float, ptr %i.eof, align 4, !tbaa !33 ; 2 uses
  %i.eoh = fadd reassoc nsz arcp contract afn float %i.eoa, %i.eoe
  %i.eoi = fadd reassoc nsz arcp contract afn float %i.eoc, %i.eog
  %i.eoj = fsub reassoc nsz arcp contract afn float %i.eoh, %i.eoi
  %i.eok = fmul reassoc nsz arcp contract afn float %i.eoj, 9.375000e-02
  %i.eol = fadd reassoc nsz arcp contract afn float %i.eok, %i.eny ; 2 uses
  %i.eom = getelementptr inbounds nuw [4 x i8], ptr %i.eim, i64 %indvars.iv2485
  %i.eon = load float, ptr %i.eom, align 4, !tbaa !33
  %i.eoo = load float, ptr %i.ens, align 4, !tbaa !33
  %i.eop = fsub reassoc nsz arcp contract afn float %i.eon, %i.eoo ; 4 uses
  %i.eoq = trunc nsw i64 %indvars.iv2485 to i32
  %i.eor = lshr i32 %i.eoq, 1                     ; 5 uses
  %i.eos = zext nneg i32 %i.eor to i64            ; 2 uses
  %i.eot = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.eos
  %i.eou = load float, ptr %i.eot, align 4, !tbaa !33
  %i.eov = fmul reassoc nsz arcp contract afn float %i.eou, 2.500000e-01
  %i.eow = add nuw nsw i32 %i.eor, 1
  %i.eox = zext nneg i32 %i.eow to i64            ; 3 uses
  %i.eoy = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.eox
  %i.eoz = load float, ptr %i.eoy, align 4, !tbaa !33
  %i.epa = add nsw i32 %i.eor, -1
  %i.epb = sext i32 %i.epa to i64                 ; 3 uses
  %i.epc = getelementptr inbounds [4 x i8], ptr %i.btj, i64 %i.epb
  %i.epd = load float, ptr %i.epc, align 4, !tbaa !33
  %i.epe = fadd reassoc nsz arcp contract afn float %i.epd, %i.eoz
  %i.epf = fmul reassoc nsz arcp contract afn float %i.epe, 1.250000e-01
  %i.epg = fadd reassoc nsz arcp contract afn float %i.epf, %i.eov
  %i.eph = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.epg)
  %i.epi = add nsw i32 %i.eor, -128
  %i.epj = sext i32 %i.epi to i64                 ; 3 uses
  %i.epk = getelementptr inbounds [4 x i8], ptr %i.btn, i64 %i.epj
  %i.epl = load float, ptr %i.epk, align 4, !tbaa !33
  %i.epm = add nuw nsw i32 %i.eor, 128
  %i.epn = zext nneg i32 %i.epm to i64            ; 3 uses
  %i.epo = getelementptr inbounds nuw [4 x i8], ptr %i.btn, i64 %i.epn
  %i.epp = load float, ptr %i.epo, align 4, !tbaa !33
  %i.epq = fadd reassoc nsz arcp contract afn float %i.epp, %i.epl ; 2 uses
  %i.epr = fmul reassoc nsz arcp contract afn float %i.eph, %i.epq
  %i.eps = fmul reassoc nsz arcp contract afn float %i.epq, 1.000000e-01
  %i.ept = getelementptr inbounds [4 x i8], ptr %i.btl, i64 %i.epj
  %i.epu = load float, ptr %i.ept, align 4, !tbaa !33
  %i.epv = getelementptr inbounds nuw [4 x i8], ptr %i.btl, i64 %i.epn
  %i.epw = load float, ptr %i.epv, align 4, !tbaa !33
  %i.epx = fadd reassoc nsz arcp contract afn float %i.epu, f0x3727C5AC
  %i.epy = fadd reassoc nsz arcp contract afn float %i.epx, %i.eps
  %i.epz = fadd reassoc nsz arcp contract afn float %i.epy, %i.epw
  %i.eqa = fdiv reassoc nsz arcp contract afn float %i.epr, %i.epz ; 2 uses
  %i.eqb = fmul reassoc nsz arcp contract afn float %i.eop, %i.eop ; 2 uses
  %i.eqc = fmul reassoc nsz arcp contract afn float %i.eqa, %i.eqb
  %i.eqd = fadd reassoc nsz arcp contract afn float %i.eqc, %i.enr ; 2 uses
  %i.eqe = fmul reassoc nsz arcp contract afn float %i.eqa, %i.eol ; 2 uses
  %i.eqf = fmul reassoc nsz arcp contract afn float %i.eqe, %i.eop
  %i.eqg = fadd reassoc nsz arcp contract afn float %i.eqf, %i.enq ; 2 uses
  %i.eqh = fmul reassoc nsz arcp contract afn float %i.eqe, %i.eol
  %i.eqi = fadd reassoc nsz arcp contract afn float %i.eqh, %i.enp ; 2 uses
  %i.eqj = getelementptr inbounds nuw i8, ptr %i.ens, i64 4
  %i.eqk = load float, ptr %i.eqj, align 4, !tbaa !33
  %i.eql = getelementptr i8, ptr %i.ens, i64 -4
  %i.eqm = load float, ptr %i.eql, align 4, !tbaa !33
  %i.eqn = fsub reassoc nsz arcp contract afn float %i.eqk, %i.eqm
  %i.eqo = fmul reassoc nsz arcp contract afn float %i.eqn, 3.125000e-01
  %.neg1886 = fadd reassoc nsz arcp contract afn float %i.eoc, %i.eoa
  %i.eqp = fadd reassoc nsz arcp contract afn float %i.eoe, %i.eog
  %i.eqq = fsub reassoc nsz arcp contract afn float %.neg1886, %i.eqp
  %i.eqr = fmul reassoc nsz arcp contract afn float %i.eqq, 9.375000e-02
  %i.eqs = fadd reassoc nsz arcp contract afn float %i.eqo, %i.eqr ; 2 uses
  %i.eqt = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.eos
  %i.equ = load float, ptr %i.eqt, align 4, !tbaa !33
  %i.eqv = fmul reassoc nsz arcp contract afn float %i.equ, 2.500000e-01
  %i.eqw = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.epn
  %i.eqx = load float, ptr %i.eqw, align 4, !tbaa !33
  %i.eqy = getelementptr inbounds [4 x i8], ptr %i.bti, i64 %i.epj
  %i.eqz = load float, ptr %i.eqy, align 4, !tbaa !33
  %i.era = fadd reassoc nsz arcp contract afn float %i.eqz, %i.eqx
  %i.erb = fmul reassoc nsz arcp contract afn float %i.era, 1.250000e-01
  %i.erc = fadd reassoc nsz arcp contract afn float %i.erb, %i.eqv
  %i.erd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.erc)
  %i.ere = getelementptr inbounds [4 x i8], ptr %i.btm, i64 %i.epb
  %i.erf = load float, ptr %i.ere, align 4, !tbaa !33
  %i.erg = getelementptr inbounds nuw [4 x i8], ptr %i.btm, i64 %i.eox
  %i.erh = load float, ptr %i.erg, align 4, !tbaa !33
  %i.eri = fadd reassoc nsz arcp contract afn float %i.erh, %i.erf ; 2 uses
  %i.erj = fmul reassoc nsz arcp contract afn float %i.erd, %i.eri
  %i.erk = fmul reassoc nsz arcp contract afn float %i.eri, 1.000000e-01
  %i.erl = getelementptr inbounds [4 x i8], ptr %i.btk, i64 %i.epb
  %i.erm = load float, ptr %i.erl, align 4, !tbaa !33
  %i.ern = getelementptr inbounds nuw [4 x i8], ptr %i.btk, i64 %i.eox
  %i.ero = load float, ptr %i.ern, align 4, !tbaa !33
  %i.erp = fadd reassoc nsz arcp contract afn float %i.erm, f0x3727C5AC
  %i.erq = fadd reassoc nsz arcp contract afn float %i.erp, %i.erk
  %i.err = fadd reassoc nsz arcp contract afn float %i.erq, %i.ero
  %i.ers = fdiv reassoc nsz arcp contract afn float %i.erj, %i.err ; 2 uses
  %i.ert = fmul reassoc nsz arcp contract afn float %i.ers, %i.eqb
  %i.eru = fadd reassoc nsz arcp contract afn float %i.ert, %i.eno ; 2 uses
  %i.erv = fmul reassoc nsz arcp contract afn float %i.ers, %i.eqs ; 2 uses
  %i.erw = fmul reassoc nsz arcp contract afn float %i.erv, %i.eop
  %i.erx = fadd reassoc nsz arcp contract afn float %i.erw, %i.enn ; 2 uses
  %i.ery = fmul reassoc nsz arcp contract afn float %i.erv, %i.eqs
  %i.erz = fadd reassoc nsz arcp contract afn float %i.ery, %i.enm ; 2 uses
  %i.esa = add nuw nsw i32 %.016872049, 2         ; 2 uses
  %indvars.iv.next2486 = add nuw nsw i64 %indvars.iv2485, 2
  %i.esb = icmp slt i32 %i.esa, %i.ehu
  br i1 %i.esb, label %scalar.ph3746, label %._crit_edge2053, !llvm.loop !80

bb.ah:                                            ; preds = %.preheader1940
  %i.esc = load float, ptr %i.eu, align 8, !tbaa !33
  %i.esd = fdiv reassoc nsz arcp contract afn float %i.esc, %.pre
  br label %.preheader1908.1

.preheader1908.1:                                 ; preds = %.preheader1942.thread, %.preheader1942, %.preheader1940, %bb.ah
  %.sroa.02804.0 = phi nsz float [ %i.esd, %bb.ah ], [ 1.700000e+01, %.preheader1940 ], [ 1.700000e+01, %.preheader1942 ], [ 1.700000e+01, %.preheader1942.thread ] ; 3 uses
  %.pn.reass = add i64 %i.bwi, %invariant.op4562  ; 2 uses
  %i.ese = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %.pn.reass ; 3 uses
  %i.esf = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %.pn.reass
  %i.esg = fadd reassoc nsz arcp contract afn <2 x float> %i.bvq, splat (float 1.000000e+00)
  store float %.sroa.02804.0, ptr %i.ese, align 4, !tbaa !33
  %i.esh = fadd reassoc nsz arcp contract afn float %.sroa.9.2, 1.000000e+00
  %i.esi = getelementptr inbounds nuw i8, ptr %i.ese, i64 4
  %i.esj = insertelement <4 x float> poison, float %.sroa.02804.0, i64 0 ; 2 uses
  %i.esk = load <8 x float>, ptr %i.go, align 4   ; 2 uses
  %i.esl = shufflevector <8 x float> %i.esk, <8 x float> poison, <2 x i32> <i32 7, i32 2> ; 2 uses
  %i.esm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.esl, splat (float 1.000000e-10)
  %i.esn = shufflevector <8 x float> %i.esk, <8 x float> poison, <2 x i32> <i32 5, i32 0>
  %i.eso = fdiv reassoc nsz arcp contract afn <2 x float> %i.esn, %i.esl
  %i.esp = select <2 x i1> %i.esm, <2 x float> %i.eso, <2 x float> splat (float 1.700000e+01) ; 3 uses
  %i.esq = insertelement <2 x float> %i.esp, float %.sroa.02804.0, i64 0
  %i.esr = fadd reassoc nsz arcp contract afn <2 x float> %i.bvr, %i.esq
  %i.ess = shufflevector <2 x float> %i.esp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.est = shufflevector <4 x float> %i.esj, <4 x float> %i.ess, <4 x i32> <i32 0, i32 5, i32 4, i32 poison>
  %i.esu = shufflevector <4 x float> %i.esj, <4 x float> %i.ess, <4 x i32> <i32 0, i32 5, i32 4, i32 4> ; 2 uses
  %i.esv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.esu)
  %i.esw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.esv, splat (float 2.000000e+00) ; 3 uses
  %i.esx = shufflevector <4 x float> %i.est, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 2>
  %i.esy = fmul reassoc nsz arcp contract afn <4 x float> %i.esu, %i.esx
  %i.esz = fadd reassoc nsz arcp contract afn <4 x float> %i.bvp, %i.esy
  %i.eta = extractelement <4 x i1> %i.esw, i64 2
  %.sroa.9.3 = select nsz i1 %i.eta, float %i.esh, float %.sroa.9.2 ; 3 uses
  %i.etb = shufflevector <4 x i1> %i.esw, <4 x i1> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.etc = select <2 x i1> %i.etb, <2 x float> %i.esr, <2 x float> %i.bvr ; 3 uses
  %i.etd = select <4 x i1> %i.esw, <4 x float> %i.esz, <4 x float> %i.bvp ; 3 uses
  %i.ete = select <2 x i1> %i.etb, <2 x float> %i.esg, <2 x float> %i.bvq ; 3 uses
  store <2 x float> %i.esp, ptr %i.esi, align 4, !tbaa !33
  %i.etf = load float, ptr %i.gp, align 4, !tbaa !33 ; 3 uses
  %i.etg = fcmp reassoc nsz arcp contract afn ogt float %i.etf, 1.000000e-10
  br i1 %i.etg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader1908.1
  %i.eth = load float, ptr %i.gq, align 4, !tbaa !33
  %i.eti = fdiv reassoc nsz arcp contract afn float %i.eth, %i.etf
  %i.etj = load float, ptr %i.gr, align 4, !tbaa !33
  %i.etk = fadd reassoc nsz arcp contract afn float %i.etj, f0x3727C5AC
  %i.etl = fdiv reassoc nsz arcp contract afn float %i.etf, %i.etk
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader1908.1, %bb.ai
  %storemerge2930 = phi float [ %i.etl, %bb.ai ], [ 0.000000e+00, %.preheader1908.1 ]
  %.sroa.11.0 = phi nsz float [ %i.eti, %bb.ai ], [ 1.700000e+01, %.preheader1908.1 ] ; 5 uses
  store float %storemerge2930, ptr %i.esf, align 4, !tbaa !33
  %i.etm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.sroa.11.0)
  %i.etn = fcmp reassoc nsz arcp contract afn olt float %i.etm, 2.000000e+00 ; 3 uses
  %i.eto = fadd reassoc nsz arcp contract afn float %.sroa.122802.2, %.sroa.11.0
  %i.etp = fmul reassoc nnan nsz arcp contract afn float %.sroa.11.0, %.sroa.11.0
  %i.etq = fadd reassoc nsz arcp contract afn float %.sroa.122794.2, %i.etp
  %i.etr = fadd reassoc nsz arcp contract afn float %.sroa.12.2, 1.000000e+00
  %.sroa.122802.3 = select nsz i1 %i.etn, float %i.eto, float %.sroa.122802.2 ; 3 uses
  %.sroa.122794.3 = select nsz i1 %i.etn, float %i.etq, float %.sroa.122794.2 ; 3 uses
  %.sroa.12.3 = select nsz i1 %i.etn, float %i.etr, float %.sroa.12.2 ; 3 uses
  %i.ets = getelementptr inbounds nuw i8, ptr %i.ese, i64 12
  store float %.sroa.11.0, ptr %i.ets, align 4, !tbaa !33
  %indvars.iv.next2495 = add nsw i64 %indvars.iv2494, 112 ; 2 uses
  %i.ett = icmp slt i64 %indvars.iv.next2495, %i.af
  %indvars.iv.next2402 = add nuw i32 %indvars.iv2401, 112
  %indvars.iv.next2404 = add nsw i32 %indvars.iv2403, -112
  %indvars.iv.next2459 = add i32 %indvars.iv2458, 112
  %indvar.next3745 = add i32 %indvar3744, 1
  br i1 %i.ett, label %bb.p, label %._crit_edge2081

.preheader1973:                                   ; preds = %.loopexit1966.1
  br i1 %i.tw, label %.preheader1972, label %.preheader1964.preheader

.preheader1964.preheader:                         ; preds = %.preheader1973
  br i1 %i.akp, label %.preheader1964.epil.preheader, label %.preheader1964

bb.ak:                                            ; preds = %.preheader1975
  %i.etu = extractelement <8 x float> %i.bua, i64 0
  %i.etv = fdiv reassoc nsz arcp contract afn float %i.etu, %i.buc
  %i.etw = extractelement <2 x float> %i.bub, i64 0
  %i.etx = fdiv reassoc nsz arcp contract afn float %i.etw, %i.buc ; 2 uses
  %i.ety = fmul reassoc nsz arcp contract afn float %i.etx, %i.etx
  %i.etz = fsub reassoc nsz arcp contract afn float %i.etv, %i.ety
  store float %i.etz, ptr %i.b, align 16, !tbaa !33
  %i.eua = extractelement <8 x float> %i.bua, i64 7 ; 3 uses
  %i.eub = fcmp reassoc nsz arcp contract afn une float %i.eua, 0.000000e+00
  br i1 %i.eub, label %.loopexit1966.loopexit, label %bb.al

.loopexit1966.loopexit:                           ; preds = %bb.ak
  %i.euc = extractelement <8 x float> %i.bua, i64 1
  %i.eud = fdiv reassoc nsz arcp contract afn float %i.euc, %i.eua
  %i.eue = extractelement <2 x float> %i.bub, i64 1
  %i.euf = fdiv reassoc nsz arcp contract afn float %i.eue, %i.eua ; 2 uses
  %i.eug = fmul reassoc nsz arcp contract afn float %i.euf, %i.euf
  %i.euh = fsub reassoc nsz arcp contract afn float %i.eud, %i.eug
  store float %i.euh, ptr %i.gs, align 4, !tbaa !33
  br label %.loopexit1966

bb.al:                                            ; preds = %bb.ak, %.preheader1975
  %i.eui = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.euj = and i32 %i.eui, 33554432
  %.not1790 = icmp eq i32 %i.euj, 0
  br i1 %.not1790, label %.loopexit1966, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.loopexit1966

.loopexit1966:                                    ; preds = %.loopexit1966.loopexit, %bb.al, %bb.am
  %i.euk = phi i1 [ true, %bb.al ], [ true, %bb.am ], [ false, %.loopexit1966.loopexit ]
  %i.eul = fcmp reassoc nsz arcp contract afn une float %.sroa.9.0, 0.000000e+00
  br i1 %i.eul, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit1966
  %i.eum = extractelement <8 x float> %i.bua, i64 3
  %i.eun = fdiv reassoc nsz arcp contract afn float %i.eum, %.sroa.9.0
  %i.euo = extractelement <8 x float> %i.bua, i64 2
  %i.eup = fdiv reassoc nsz arcp contract afn float %i.euo, %.sroa.9.0 ; 2 uses
  %i.euq = fmul reassoc nsz arcp contract afn float %i.eup, %i.eup
  %i.eur = fsub reassoc nsz arcp contract afn float %i.eun, %i.euq
  store float %i.eur, ptr %i.fk, align 8, !tbaa !33
  %i.eus = fcmp reassoc nsz arcp contract afn une float %.sroa.12.0, 0.000000e+00
  br i1 %i.eus, label %.loopexit1966.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit1966
  %i.eut = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.euu = and i32 %i.eut, 33554432
  %.not1790.1 = icmp eq i32 %i.euu, 0
  br i1 %.not1790.1, label %.thread1866, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.thread1866

.loopexit1966.1:                                  ; preds = %bb.an
  %i.euv = extractelement <8 x float> %i.bua, i64 5
  %i.euw = fdiv reassoc nsz arcp contract afn float %i.euv, %.sroa.12.0
  %i.eux = extractelement <8 x float> %i.bua, i64 4
  %i.euy = fdiv reassoc nsz arcp contract afn float %i.eux, %.sroa.12.0 ; 2 uses
  %i.euz = fmul reassoc nsz arcp contract afn float %i.euy, %i.euy
  %i.eva = fsub reassoc nsz arcp contract afn float %i.euw, %i.euz
  store float %i.eva, ptr %i.gt, align 4, !tbaa !33
  br i1 %i.euk, label %.thread1866, label %.preheader1973

.preheader1972.loopexit.unr-lcssa:                ; preds = %.preheader1964
  br i1 %lcmp.mod4354.not, label %.preheader1972, label %.preheader1964.epil.preheader

.preheader1964.epil.preheader:                    ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.preheader
  %indvars.iv2520.epil.init = phi i64 [ 1, %.preheader1964.preheader ], [ %indvars.iv.next2521.3, %.preheader1972.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4355)
  br label %.preheader1964.epil

.preheader1964.epil:                              ; preds = %.preheader1964.epil, %.preheader1964.epil.preheader
  %indvars.iv2520.epil = phi i64 [ %indvars.iv.next2521.epil, %.preheader1964.epil ], [ %indvars.iv2520.epil.init, %.preheader1964.epil.preheader ] ; 2 uses
  %epil.iter4353 = phi i64 [ %epil.iter4353.next, %.preheader1964.epil ], [ 0, %.preheader1964.epil.preheader ]
  %i.evb = mul nsw i64 %indvars.iv2520.epil, %i.fu ; 2 uses
  %i.evc = getelementptr [16 x i8], ptr %i.ek, i64 %i.evb ; 2 uses
  %i.evd = getelementptr i8, ptr %i.evc, i64 32
  %gep2968.epil = getelementptr [16 x i8], ptr %invariant.gep2967, i64 %i.evb ; 2 uses
  %i.eve = getelementptr i8, ptr %gep2968.epil, i64 -48
  %i.evf = getelementptr i8, ptr %gep2968.epil, i64 -16
  %i.evg = load <4 x float>, ptr %i.evd, align 4, !tbaa !33
  store <4 x float> %i.evg, ptr %i.evc, align 4, !tbaa !33
  %i.evh = load <4 x float>, ptr %i.eve, align 4, !tbaa !33
  store <4 x float> %i.evh, ptr %i.evf, align 4, !tbaa !33
  %indvars.iv.next2521.epil = add nuw nsw i64 %indvars.iv2520.epil, 1
  %epil.iter4353.next = add i64 %epil.iter4353, 1 ; 2 uses
  %epil.iter4353.cmp.not = icmp eq i64 %epil.iter4353.next, %xtraiter4352
  br i1 %epil.iter4353.cmp.not, label %.preheader1972, label %.preheader1964.epil, !llvm.loop !81

.preheader1972:                                   ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.epil, %.preheader1973
  br i1 %i.fa, label %.preheader1963.preheader, label %._crit_edge2094

.preheader1963.preheader:                         ; preds = %.preheader1972
  %brmerge4585 = select i1 %min.iters.check3724, i1 true, i1 %op.rdx4228
  br i1 %brmerge4585, label %.preheader1963.preheader4243, label %vector.body3727

vector.body3727:                                  ; preds = %.preheader1963.preheader, %vector.body3727
  %index3728 = phi i64 [ %index.next3740, %vector.body3727 ], [ 0, %.preheader1963.preheader ] ; 5 uses
  %i.evi = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2969, i64 %index3728
  %i.evj = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %index3728
  %i.evk = getelementptr [16 x i8], ptr %invariant.gep2971, i64 %index3728
  %i.evl = getelementptr [16 x i8], ptr %invariant.gep2973, i64 %index3728
  %wide.vec3729 = load <8 x float>, ptr %i.evi, align 4, !tbaa !33
  %wide.vec3734 = load <8 x float>, ptr %i.evk, align 4, !tbaa !33
  store <8 x float> %wide.vec3729, ptr %i.evj, align 4, !tbaa !33
  store <8 x float> %wide.vec3734, ptr %i.evl, align 4, !tbaa !33
  %index.next3740 = add nuw i64 %index3728, 2     ; 2 uses
  %i.evm = icmp eq i64 %index.next3740, %n.vec3726
  br i1 %i.evm, label %middle.block3741, label %vector.body3727, !llvm.loop !82

middle.block3741:                                 ; preds = %vector.body3727
  br i1 %cmp.n3742, label %._crit_edge2094, label %.preheader1963.preheader4243

.preheader1963.preheader4243:                     ; preds = %.preheader1963.preheader, %middle.block3741
  %indvars.iv2531.ph = phi i64 [ %n.vec3726, %middle.block3741 ], [ 0, %.preheader1963.preheader ] ; 4 uses
  %i.evn = sub nsw i64 %wide.trip.count2534, %indvars.iv2531.ph
  %xtraiter4358 = and i64 %i.evn, 3               ; 2 uses
  %lcmp.mod4359.not = icmp eq i64 %xtraiter4358, 0
  br i1 %lcmp.mod4359.not, label %.preheader1963.prol.loopexit, label %.preheader1963.prol

.preheader1963.prol:                              ; preds = %.preheader1963.preheader4243, %.preheader1963.prol
  %indvars.iv2531.prol = phi i64 [ %indvars.iv.next2532.prol, %.preheader1963.prol ], [ %indvars.iv2531.ph, %.preheader1963.preheader4243 ] ; 5 uses
  %prol.iter4360 = phi i64 [ %prol.iter4360.next, %.preheader1963.prol ], [ 0, %.preheader1963.preheader4243 ]
  %gep2970.prol = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2969, i64 %indvars.iv2531.prol
  %i.evo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %indvars.iv2531.prol
  %gep2972.prol = getelementptr [16 x i8], ptr %invariant.gep2971, i64 %indvars.iv2531.prol
  %gep2974.prol = getelementptr [16 x i8], ptr %invariant.gep2973, i64 %indvars.iv2531.prol
  %i.evp = load <4 x float>, ptr %gep2970.prol, align 4, !tbaa !33
  store <4 x float> %i.evp, ptr %i.evo, align 4, !tbaa !33
  %i.evq = load <4 x float>, ptr %gep2972.prol, align 4, !tbaa !33
  store <4 x float> %i.evq, ptr %gep2974.prol, align 4, !tbaa !33
  %indvars.iv.next2532.prol = add nuw nsw i64 %indvars.iv2531.prol, 1 ; 2 uses
  %prol.iter4360.next = add i64 %prol.iter4360, 1 ; 2 uses
  %prol.iter4360.cmp.not = icmp eq i64 %prol.iter4360.next, %xtraiter4358
  br i1 %prol.iter4360.cmp.not, label %.preheader1963.prol.loopexit, label %.preheader1963.prol, !llvm.loop !83

.preheader1963.prol.loopexit:                     ; preds = %.preheader1963.prol, %.preheader1963.preheader4243
  %indvars.iv2531.unr = phi i64 [ %indvars.iv2531.ph, %.preheader1963.preheader4243 ], [ %indvars.iv.next2532.prol, %.preheader1963.prol ]
  %i.evr = sub nsw i64 %indvars.iv2531.ph, %wide.trip.count2534
  %i.evs = icmp ugt i64 %i.evr, -4
  br i1 %i.evs, label %._crit_edge2094, label %.preheader1963

.preheader1964:                                   ; preds = %.preheader1964.preheader, %.preheader1964
  %indvars.iv2520 = phi i64 [ %indvars.iv.next2521.3, %.preheader1964 ], [ 1, %.preheader1964.preheader ] ; 5 uses
  %niter4357 = phi i64 [ %niter4357.next.3, %.preheader1964 ], [ 0, %.preheader1964.preheader ]
  %i.evt = mul nsw i64 %indvars.iv2520, %i.fu     ; 2 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.fad = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezs, %i.ezg
  %i.fae = select <2 x i1> %i.fad, <2 x float> %i.ezs, <2 x float> %i.ezg ; 2 uses
  %i.faf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezi, %i.ezm
  %i.fag = select <2 x i1> %i.faf, <2 x float> %i.ezi, <2 x float> %i.ezm ; 2 uses
  %i.fah = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.faa, %i.fae
  %i.fai = select <2 x i1> %i.fah, <2 x float> %i.faa, <2 x float> %i.fae ; 2 uses
  %i.faj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezy, %i.fac
  %i.fak = select <2 x i1> %i.faj, <2 x float> %i.ezy, <2 x float> %i.fac ; 2 uses
  %i.fal = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezy, %i.fac
  %i.fam = select <2 x i1> %i.fal, <2 x float> %i.ezy, <2 x float> %i.fac ; 2 uses
  %i.fan = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fag, %i.ezq
  %i.fao = select <2 x i1> %i.fan, <2 x float> %i.fag, <2 x float> %i.ezq ; 2 uses
  %i.fap = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezu, %i.fam
  %i.faq = select <2 x i1> %i.fap, <2 x float> %i.ezu, <2 x float> %i.fam ; 2 uses
  %i.far = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezw, %i.fai
  %i.fas = select <2 x i1> %i.far, <2 x float> %i.ezw, <2 x float> %i.fai ; 4 uses
  %i.fat = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.faq, %i.fak
  %i.fau = select <2 x i1> %i.fat, <2 x float> %i.faq, <2 x float> %i.fak ; 4 uses
  %i.fav = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fau, %i.fas
  %i.faw = select <2 x i1> %i.fav, <2 x float> %i.fau, <2 x float> %i.fas ; 2 uses
  %i.fax = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fau, %i.fas
  %i.fay = select <2 x i1> %i.fax, <2 x float> %i.fau, <2 x float> %i.fas ; 2 uses
  %i.faz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fao, %i.faw
  %i.fba = select <2 x i1> %i.faz, <2 x float> %i.fao, <2 x float> %i.faw ; 2 uses
  %i.fbb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fay, %i.fba
  %i.fbc = select <2 x i1> %i.fbb, <2 x float> %i.fay, <2 x float> %i.fba ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.fbc, %i.fbc
  %i.fbd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fbe = load float, ptr %indvars.iv2563.sroa.phi4502, align 4, !tbaa !33
  %i.fbf = fmul reassoc nsz arcp contract afn float %i.fbe, 4.000000e+00
  %i.fbg = fcmp reassoc nsz arcp contract afn ogt float %i.fbd, %i.fbf
  br i1 %i.fbg, label %.loopexit1907, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %foldExtExtBinop4232 = fmul reassoc nsz arcp contract afn <2 x float> %i.fbc, %i.fbc
  %i.fbh = extractelement <2 x float> %foldExtExtBinop4232, i64 1
  %i.fbi = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv2563
  %i.fbj = load float, ptr %i.fbi, align 4, !tbaa !33
  %i.fbk = fmul reassoc nsz arcp contract afn float %i.fbj, 4.000000e+00
  %i.fbl = fcmp reassoc nsz arcp contract afn ogt float %i.fbh, %i.fbk
  br i1 %i.fbl, label %.loopexit1907, label %.preheader1896.lr.ph

.preheader1896.lr.ph:                             ; preds = %bb.as
  %i.fbm = load i32, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fbn = add nsw i32 %i.fbm, 1
  store i32 %i.fbn, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fbo = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4499, i64 2048 ; 3 uses
  %i.fbp = fpext <2 x float> %i.fbc to <2 x double>
  %i.fbq = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4494, i64 128
  %i.fbr = load float, ptr %i.exz, align 4, !tbaa !33
  %i.fbs = fpext reassoc nsz arcp contract afn float %i.fbr to double ; 2 uses
  %i.fbt = insertelement <2 x double> poison, double %i.fbs, i64 0
  br label %.preheader1896

.preheader1896:                                   ; preds = %.preheader1896.lr.ph, %._crit_edge2107.split.us
  %indvars.iv2558 = phi i64 [ 0, %.preheader1896.lr.ph ], [ %indvars.iv.next2559, %._crit_edge2107.split.us ] ; 2 uses
  %.016672112 = phi double [ 1.000000e+00, %.preheader1896.lr.ph ], [ %i.fdu, %._crit_edge2107.split.us ] ; 3 uses
  %i.fbu = mul nuw nsw i64 %indvars.iv2558, %i.exh
  %i.fbv = insertelement <2 x double> poison, double %.016672112, i64 0
  %i.fbw = fmul reassoc nsz arcp contract afn <2 x double> %i.fbv, %i.fbt
  br label %.preheader1895.us

.preheader1895.us:                                ; preds = %._crit_edge2104.us, %.preheader1896
  %indvars.iv2553 = phi i64 [ %indvars.iv.next2554, %._crit_edge2104.us ], [ 0, %.preheader1896 ] ; 2 uses
  %.016652105.us = phi double [ %i.fdt, %._crit_edge2104.us ], [ 1.000000e+00, %.preheader1896 ] ; 4 uses
  %i.fbx = add nuw nsw i64 %indvars.iv2553, %i.fbu ; 3 uses
  %i.fby = trunc nuw i64 %i.fbx to i32
  %i.fbz = mul nsw i32 %.017022239, %i.fby
  br label %.preheader1894.us

bb.at:                                            ; preds = %bb.at, %.preheader1894.us.new
  %indvars.iv2547 = phi i64 [ 0, %.preheader1894.us.new ], [ %indvars.iv.next2548.1, %bb.at ] ; 3 uses
  %.016612098.us = phi double [ %.016652105.us, %.preheader1894.us.new ], [ %.reass4564, %bb.at ] ; 3 uses
  %niter4367 = phi i64 [ 0, %.preheader1894.us.new ], [ %niter4367.next.1, %bb.at ]
  %.reass.us = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul.us ; 2 uses
  %i.fca = trunc nuw nsw i64 %indvars.iv2547 to i32
  %i.fcb = add i32 %i.fcu, %i.fca
  %i.fcc = sext i32 %i.fcb to i64                 ; 2 uses
  %i.fcd = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4499, i64 %i.fcc ; 2 uses
  %i.fce = load double, ptr %i.fcd, align 8, !tbaa !216
  %i.fcf = fadd reassoc nsz arcp contract afn double %.reass.us, %i.fce
  store double %i.fcf, ptr %i.fcd, align 8, !tbaa !216
  %i.fcg = getelementptr inbounds nuw [8 x i8], ptr %i.fbo, i64 %i.fcc ; 2 uses
  %i.fch = load double, ptr %i.fcg, align 8, !tbaa !216
  %i.fci = fadd reassoc nsz arcp contract afn double %i.fch, %.reass.us
  store double %i.fci, ptr %i.fcg, align 8, !tbaa !216
  %.reass4564 = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul ; 2 uses
  %.reass.us.1.reass = fmul reassoc nsz arcp contract afn double %.016612098.us, %invariant.op4563 ; 2 uses
  %i.fcj = trunc i64 %indvars.iv2547 to i32
  %i.fck = or disjoint i32 %i.fcj, 1
  %i.fcl = add i32 %i.fcu, %i.fck
  %i.fcm = sext i32 %i.fcl to i64                 ; 2 uses
  %i.fcn = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4499, i64 %i.fcm ; 2 uses
  %i.fco = load double, ptr %i.fcn, align 8, !tbaa !216
  %i.fcp = fadd reassoc nsz arcp contract afn double %.reass.us.1.reass, %i.fco
  store double %i.fcp, ptr %i.fcn, align 8, !tbaa !216
  %i.fcq = getelementptr inbounds nuw [8 x i8], ptr %i.fbo, i64 %i.fcm ; 2 uses
  %i.fcr = load double, ptr %i.fcq, align 8, !tbaa !216
  %i.fcs = fadd reassoc nsz arcp contract afn double %i.fcr, %.reass.us.1.reass
  store double %i.fcs, ptr %i.fcq, align 8, !tbaa !216
  %indvars.iv.next2548.1 = add nuw nsw i64 %indvars.iv2547, 2 ; 2 uses
  %niter4367.next.1 = add i64 %niter4367, 2       ; 2 uses
  %niter4367.ncmp.1 = icmp eq i64 %niter4367.next.1, %unroll_iter4366
  br i1 %niter4367.ncmp.1, label %._crit_edge2101.us.unr-lcssa, label %bb.at

.preheader1894.us:                                ; preds = %.preheader1895.us, %._crit_edge2101.us
  %.016622103.us = phi i32 [ 0, %.preheader1895.us ], [ %i.fdf, %._crit_edge2101.us ] ; 2 uses
  %.016632102.us = phi double [ %.016672112, %.preheader1895.us ], [ %i.fde, %._crit_edge2101.us ] ; 2 uses
  %factor.op.fmul.us = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.fbs ; 3 uses
  %i.fct = mul nuw nsw i32 %.016622103.us, %.016992241
  %i.fcu = add i32 %i.fct, %i.fbz                 ; 3 uses
  br i1 %i.exi, label %.epil.preheader4361, label %.preheader1894.us.new

.preheader1894.us.new:                            ; preds = %.preheader1894.us
  %invariant.op4563 = fmul reassoc nsz arcp contract afn double %i.eyb, %factor.op.fmul.us
  br label %bb.at

._crit_edge2101.us.unr-lcssa:                     ; preds = %bb.at
  br i1 %lcmp.mod4364.not, label %._crit_edge2101.us, label %.epil.preheader4361

.epil.preheader4361:                              ; preds = %._crit_edge2101.us.unr-lcssa, %.preheader1894.us
  %indvars.iv2547.epil.init = phi i64 [ 0, %.preheader1894.us ], [ %indvars.iv.next2548.1, %._crit_edge2101.us.unr-lcssa ]
  %.016612098.us.epil.init = phi double [ %.016652105.us, %.preheader1894.us ], [ %.reass4564, %._crit_edge2101.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4365)
  %.reass.us.epil = fmul reassoc nsz arcp contract afn double %.016612098.us.epil.init, %factor.op.fmul.us ; 2 uses
  %i.fcv = trunc nuw nsw i64 %indvars.iv2547.epil.init to i32
  %i.fcw = add i32 %i.fcu, %i.fcv
  %i.fcx = sext i32 %i.fcw to i64                 ; 2 uses
  %i.fcy = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4499, i64 %i.fcx ; 2 uses
  %i.fcz = load double, ptr %i.fcy, align 8, !tbaa !216
  %i.fda = fadd reassoc nsz arcp contract afn double %.reass.us.epil, %i.fcz
  store double %i.fda, ptr %i.fcy, align 8, !tbaa !216
  %i.fdb = getelementptr inbounds nuw [8 x i8], ptr %i.fbo, i64 %i.fcx ; 2 uses
  %i.fdc = load double, ptr %i.fdb, align 8, !tbaa !216
  %i.fdd = fadd reassoc nsz arcp contract afn double %i.fdc, %.reass.us.epil
  store double %i.fdd, ptr %i.fdb, align 8, !tbaa !216
  br label %._crit_edge2101.us

._crit_edge2101.us:                               ; preds = %._crit_edge2101.us.unr-lcssa, %.epil.preheader4361
  %i.fde = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.exo
  %i.fdf = add nuw nsw i32 %.016622103.us, 1      ; 2 uses
  %exitcond2552.not = icmp eq i32 %i.fdf, %.016992241
  br i1 %exitcond2552.not, label %._crit_edge2104.us, label %.preheader1894.us

._crit_edge2104.us:                               ; preds = %._crit_edge2101.us
  %i.fdg = insertelement <2 x double> poison, double %.016652105.us, i64 0
  %i.fdh = fmul reassoc nsz arcp contract afn <2 x double> %i.fdg, %i.fbw
  %i.fdi = shufflevector <2 x double> %i.fdh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fdj = fmul reassoc nsz arcp contract afn <2 x double> %i.fdi, %i.fbp
  %i.fdk = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4494, i64 %i.fbx ; 2 uses
  %i.fdl = load double, ptr %i.fdk, align 8, !tbaa !216
  %i.fdm = getelementptr inbounds nuw [8 x i8], ptr %i.fbq, i64 %i.fbx ; 2 uses
  %i.fdn = load double, ptr %i.fdm, align 8, !tbaa !216
  %i.fdo = insertelement <2 x double> poison, double %i.fdl, i64 0
  %i.fdp = insertelement <2 x double> %i.fdo, double %i.fdn, i64 1
  %i.fdq = fadd reassoc nsz arcp contract afn <2 x double> %i.fdj, %i.fdp ; 2 uses
  %i.fdr = extractelement <2 x double> %i.fdq, i64 0
  store double %i.fdr, ptr %i.fdk, align 8, !tbaa !216
  %i.fds = extractelement <2 x double> %i.fdq, i64 1
  store double %i.fds, ptr %i.fdm, align 8, !tbaa !216
  %i.fdt = fmul reassoc nsz arcp contract afn double %.016652105.us, %i.eyb
  %indvars.iv.next2554 = add nuw nsw i64 %indvars.iv2553, 1 ; 2 uses
  %exitcond2557.not = icmp eq i64 %indvars.iv.next2554, %i.exh
  br i1 %exitcond2557.not, label %._crit_edge2107.split.us, label %.preheader1895.us

._crit_edge2107.split.us:                         ; preds = %._crit_edge2104.us
  %i.fdu = fmul reassoc nsz arcp contract afn double %.016672112, %i.exo
  %indvars.iv.next2559 = add nuw nsw i64 %indvars.iv2558, 1 ; 2 uses
  %exitcond2562.not = icmp eq i64 %indvars.iv.next2559, %i.exh
  br i1 %exitcond2562.not, label %.loopexit1907, label %.preheader1896

.loopexit1907:                                    ; preds = %._crit_edge2107.split.us, %bb.ar, %bb.as
  br i1 %i.eyc, label %bb.ar, label %bb.aq

bb.au:                                            ; preds = %._crit_edge2119.split
  %i.fdv = icmp slt i32 %i.exp, 10
  br i1 %i.fdv, label %.thread, label %bb.aw

.thread:                                          ; preds = %._crit_edge2094, %bb.au
  %i.fdw = phi i32 [ %i.exp, %bb.au ], [ 0, %._crit_edge2094 ]
  %i.fdx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fdy = and i32 %i.fdx, 33554432
  %.not1784 = icmp eq i32 %i.fdy, 0
  br i1 %.not1784, label %.thread1874, label %bb.av

bb.av:                                            ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.7, i32 noundef %i.fdw) #20
  br label %.thread1874

.thread1874:                                      ; preds = %.thread, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %.thread1866

bb.aw:                                            ; preds = %bb.au, %._crit_edge2119.split
  %.11703 = phi i32 [ %.017022239, %._crit_edge2119.split ], [ 4, %bb.au ] ; 4 uses
  %.11700 = phi i32 [ %.016992241, %._crit_edge2119.split ], [ 2, %bb.au ] ; 6 uses
  %i.fdz = zext i32 %.11703 to i64                ; 58 uses
  %i.fea = add nsw i64 %i.fdz, -1                 ; 5 uses
  %.1122132.i = add nuw nsw i64 %i.fdz, 1         ; 2 uses
  %i.feb = shl nuw nsw i64 %i.fdz, 3              ; 2 uses
  %i.fec = add nuw nsw i64 %i.feb, 2048
  %i.fed = add nuw nsw i64 %i.feb, 8
  %i.fee = mul nuw i64 %i.fdz, %i.fdz
  %i.fef = shl i64 %i.fee, 3
  %scevgep3136 = getelementptr i8, ptr %scevgep3135, i64 %i.fef
  %i.feg = shl nuw nsw i64 %i.fdz, 3
  %i.feh = shl nuw nsw i64 %i.fdz, 3              ; 3 uses
  %i.fei = shl nuw nsw i64 %i.fdz, 3
  %i.fej = shl nuw nsw i64 %i.fdz, 3
  %i.fek = add nuw nsw i64 %i.feh, 8
  %i.fel = mul nuw i64 %i.fdz, %i.fdz
  %i.fem = shl i64 %i.fel, 3
  %scevgep3253 = getelementptr i8, ptr %i.l, i64 %i.fem
  %i.fen = shl nuw nsw i64 %i.fdz, 3
  %i.feo = shl nuw nsw i64 %i.fdz, 3
  %i.fep = shl nuw nsw i64 %i.fdz, 3
  %i.feq = shl nuw nsw i64 %i.fdz, 3
  %6 = add nsw i64 %i.fdz, -2                     ; 2 uses
  %i.fer = add nsw i64 %i.fdz, -1                 ; 2 uses
  %i.fes = getelementptr i8, ptr %i.l, i64 %i.feo
  %i.fet = getelementptr i8, ptr %i.l, i64 %i.feh
  %i.feu = getelementptr i8, ptr %i.fet, i64 2048
  br label %.preheader1961

.preheader1961:                                   ; preds = %bb.aw, %_LinEqSolve.exit.1
  %i.fev = phi i1 [ true, %bb.aw ], [ false, %_LinEqSolve.exit.1 ]
  %indvars.iv2591.sroa.phi = phi ptr [ %i.m, %bb.aw ], [ %indvars.iv2591.sroa.gep4493, %_LinEqSolve.exit.1 ] ; 6 uses
  %indvars.iv2591.sroa.phi4496 = phi ptr [ %i.l, %bb.aw ], [ %indvars.iv2591.sroa.gep4498, %_LinEqSolve.exit.1 ] ; 7 uses
  %indvars.iv2591.sroa.phi4505 = phi ptr [ %i.a, %bb.aw ], [ %indvars.iv2591.sroa.gep4507, %_LinEqSolve.exit.1 ] ; 5 uses
  %indvars.iv2591 = phi i64 [ 0, %bb.aw ], [ 1, %_LinEqSolve.exit.1 ] ; 4 uses
  %.42123 = phi i32 [ 1, %bb.aw ], [ %.6.1, %_LinEqSolve.exit.1 ]
  %i.few = shl nuw nsw i64 %indvars.iv2591, 12    ; 5 uses
  %i.fex = add nuw nsw i64 %i.feh, %i.few         ; 2 uses
  %scevgep3254 = getelementptr i8, ptr %scevgep3253, i64 %i.few
  %scevgep3302 = getelementptr i8, ptr %i.l, i64 %i.few
  %i.fey = getelementptr i8, ptr %i.fes, i64 %i.few
  %i.fez = getelementptr i8, ptr %i.l, i64 %i.few
  %i.ffa = getelementptr i8, ptr %i.l, i64 %i.fex
  %i.ffb = getelementptr i8, ptr %i.l, i64 %i.fex
  br label %.lr.ph.preheader.i

.loopexit135.i:                                   ; preds = %._crit_edge148.us.i
  %exitcond169.not.i = icmp eq i64 %i.ffn, %i.fea
  br i1 %exitcond169.not.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit135.i, %.preheader1961
  %.0121153.i = phi i64 [ %i.ffn, %.loopexit135.i ], [ 0, %.preheader1961 ] ; 26 uses
  %i.ffc = sub i64 %i.fea, %.0121153.i
  %i.ffd = sub i64 %6, %.0121153.i
  %i.ffe = mul i64 %i.fep, %.0121153.i
  %scevgep3299 = getelementptr i8, ptr %i.fey, i64 %i.ffe
  %i.fff = shl i64 %.0121153.i, 3
  %scevgep3300 = getelementptr i8, ptr %i.fez, i64 %i.fff
  %i.ffg = sub nsw i64 %i.fdz, %.0121153.i        ; 10 uses
  %i.ffh = mul i64 %i.fek, %.0121153.i
  %scevgep3252 = getelementptr i8, ptr %i.ffa, i64 %i.ffh
  %i.ffi = mul i64 %i.fen, %.0121153.i
  %scevgep3255 = getelementptr i8, ptr %i.ffb, i64 %i.ffi
  %i.ffj = mul nuw nsw i64 %.0121153.i, %i.fdz
  %i.ffk = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4496, i64 %i.ffj ; 14 uses
  %i.ffl = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %.0121153.i ; 5 uses
  %i.ffm = load double, ptr %i.ffl, align 8, !tbaa !216 ; 2 uses
  %i.ffn = add nuw nsw i64 %.0121153.i, 1         ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4496, i64 %.0121153.i ; 5 uses
  %i.ffo = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ffm) ; 2 uses
  %xtraiter4368 = and i64 %i.ffc, 3               ; 2 uses
  %lcmp.mod4369.not = icmp eq i64 %xtraiter4368, 0
  br i1 %lcmp.mod4369.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.0141.i.prol = phi i64 [ %spec.select133.i.prol, %.lr.ph.i.prol ], [ %.0121153.i, %.lr.ph.preheader.i ]
  %.0124140.i.prol = phi i64 [ %i.fft, %.lr.ph.i.prol ], [ %i.ffn, %.lr.ph.preheader.i ] ; 3 uses
  %.0126139.i.prol = phi double [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %i.ffo, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter4370 = phi i64 [ %prol.iter4370.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ffp = mul nuw nsw i64 %.0124140.i.prol, %i.fdz
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ffp
  %i.ffq = load double, ptr %gep.i.prol, align 8, !tbaa !216 ; 2 uses
  %i.ffr = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ffq)
  %i.ffs = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.prol, %i.ffr ; 2 uses
  %spec.select.i.prol = select nsz i1 %i.ffs, double %i.ffq, double %.0126139.i.prol ; 2 uses
  %spec.select133.i.prol = select i1 %i.ffs, i64 %.0124140.i.prol, i64 %.0141.i.prol ; 3 uses
  %i.fft = add nuw nsw i64 %.0124140.i.prol, 1    ; 2 uses
  %prol.iter4370.next = add i64 %prol.iter4370, 1 ; 2 uses
  %prol.iter4370.cmp.not = icmp eq i64 %prol.iter4370.next, %xtraiter4368
  br i1 %prol.iter4370.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !85

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select133.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %spec.select133.i.prol, %.lr.ph.i.prol ]
  %.0141.i.unr = phi i64 [ %.0121153.i, %.lr.ph.preheader.i ], [ %spec.select133.i.prol, %.lr.ph.i.prol ]
  %.0124140.i.unr = phi i64 [ %i.ffn, %.lr.ph.preheader.i ], [ %i.fft, %.lr.ph.i.prol ]
  %.0126139.i.unr = phi double [ %i.ffo, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.ffu = icmp ult i64 %i.ffd, 3
  br i1 %i.ffu, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0141.i = phi i64 [ %spec.select133.i.3, %.lr.ph.i ], [ %.0141.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0124140.i = phi i64 [ %i.fgo, %.lr.ph.i ], [ %.0124140.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0126139.i = phi double [ %spec.select.i.3, %.lr.ph.i ], [ %.0126139.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ffv = mul nuw nsw i64 %.0124140.i, %i.fdz
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ffv
  %i.ffw = load double, ptr %gep.i, align 8, !tbaa !216 ; 2 uses
  %i.ffx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ffw)
  %i.ffy = fcmp reassoc nsz arcp contract afn olt double %.0126139.i, %i.ffx ; 2 uses
  %spec.select.i = select nsz i1 %i.ffy, double %i.ffw, double %.0126139.i ; 2 uses
  %spec.select133.i = select i1 %i.ffy, i64 %.0124140.i, i64 %.0141.i
  %i.ffz = add nuw nsw i64 %.0124140.i, 1         ; 2 uses
  %i.fga = mul nuw nsw i64 %i.ffz, %i.fdz
  %gep.i.14374 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fga
  %i.fgb = load double, ptr %gep.i.14374, align 8, !tbaa !216 ; 2 uses
  %i.fgc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgb)
  %i.fgd = fcmp reassoc nsz arcp contract afn olt double %spec.select.i, %i.fgc ; 2 uses
  %spec.select.i.14375 = select nsz i1 %i.fgd, double %i.fgb, double %spec.select.i ; 2 uses
  %spec.select133.i.14376 = select i1 %i.fgd, i64 %i.ffz, i64 %spec.select133.i
  %i.fge = add nuw nsw i64 %.0124140.i, 2         ; 2 uses
  %i.fgf = mul nuw nsw i64 %i.fge, %i.fdz
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgf
  %i.fgg = load double, ptr %gep.i.2, align 8, !tbaa !216 ; 2 uses
  %i.fgh = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgg)
  %i.fgi = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.14375, %i.fgh ; 2 uses
  %spec.select.i.2 = select nsz i1 %i.fgi, double %i.fgg, double %spec.select.i.14375 ; 2 uses
  %spec.select133.i.2 = select i1 %i.fgi, i64 %i.fge, i64 %spec.select133.i.14376
  %i.fgj = add nuw nsw i64 %.0124140.i, 3         ; 2 uses
  %i.fgk = mul nuw nsw i64 %i.fgj, %i.fdz
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgk
  %i.fgl = load double, ptr %gep.i.3, align 8, !tbaa !216 ; 2 uses
  %i.fgm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgl)
  %i.fgn = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.2, %i.fgm ; 2 uses
  %spec.select.i.3 = select nsz i1 %i.fgn, double %i.fgl, double %spec.select.i.2
  %spec.select133.i.3 = select i1 %i.fgn, i64 %i.fgj, i64 %spec.select133.i.2 ; 2 uses
  %i.fgo = add nuw nsw i64 %.0124140.i, 4         ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fgo, %i.fdz
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select133.i.lcssa = phi i64 [ %spec.select133.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select133.i.3, %.lr.ph.i ] ; 5 uses
  %.not.i1832 = icmp eq i64 %spec.select133.i.lcssa, %.0121153.i
  br i1 %.not.i1832, label %bb.ax, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %._crit_edge.i
  %i.fgp = mul nsw i64 %spec.select133.i.lcssa, %i.fdz
  %i.fgq = getelementptr [8 x i8], ptr %indvars.iv2591.sroa.phi4496, i64 %i.fgp ; 6 uses
  %min.iters.check3308 = icmp ult i64 %i.ffg, 8
  br i1 %min.iters.check3308, label %scalar.ph3307.preheader, label %vector.memcheck3298

vector.memcheck3298:                              ; preds = %.lr.ph143.i
  %i.fgr = mul i64 %i.feq, %spec.select133.i.lcssa
  %scevgep3301 = getelementptr i8, ptr %scevgep3300, i64 %i.fgr
  %i.fgs = shl i64 %spec.select133.i.lcssa, 3
  %i.fgt = add i64 %i.fgs, 8
  %i.fgu = mul i64 %i.fgt, %i.fdz
  %scevgep3303 = getelementptr i8, ptr %scevgep3302, i64 %i.fgu
  %bound03304 = icmp ult ptr %i.ffl, %scevgep3303
  %bound13305 = icmp ult ptr %scevgep3301, %scevgep3299
  %found.conflict3306 = and i1 %bound03304, %bound13305
  br i1 %found.conflict3306, label %scalar.ph3307.preheader, label %vector.ph3309

vector.ph3309:                                    ; preds = %vector.memcheck3298
  %n.vec3310 = and i64 %i.ffg, -8                 ; 3 uses
  %i.fgv = add i64 %.0121153.i, %n.vec3310
  br label %vector.body3311

vector.body3311:                                  ; preds = %vector.body3311, %vector.ph3309
  %index3312 = phi i64 [ 0, %vector.ph3309 ], [ %index.next3317, %vector.body3311 ] ; 2 uses
  %i.fgw = add nuw i64 %.0121153.i, %index3312    ; 2 uses
  %i.fgx = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fgw ; 3 uses
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.fgx, i64 32 ; 2 uses
  %wide.load3313 = load <4 x double>, ptr %i.fgx, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  %wide.load3314 = load <4 x double>, ptr %i.fgy, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  %i.fgz = getelementptr [8 x i8], ptr %i.fgq, i64 %i.fgw ; 3 uses
  %i.fha = getelementptr i8, ptr %i.fgz, i64 32   ; 2 uses
  %wide.load3315 = load <4 x double>, ptr %i.fgz, align 8, !tbaa !216, !alias.scope !218
  %wide.load3316 = load <4 x double>, ptr %i.fha, align 8, !tbaa !216, !alias.scope !218
  store <4 x double> %wide.load3315, ptr %i.fgx, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  store <4 x double> %wide.load3316, ptr %i.fgy, align 8, !tbaa !216, !alias.scope !217, !noalias !218
  store <4 x double> %wide.load3313, ptr %i.fgz, align 8, !tbaa !216, !alias.scope !218
  store <4 x double> %wide.load3314, ptr %i.fha, align 8, !tbaa !216, !alias.scope !218
  %index.next3317 = add nuw i64 %index3312, 8     ; 2 uses
  %i.fhb = icmp eq i64 %index.next3317, %n.vec3310
  br i1 %i.fhb, label %middle.block3318, label %vector.body3311, !llvm.loop !89

middle.block3318:                                 ; preds = %vector.body3311
  %cmp.n3319 = icmp eq i64 %i.ffg, %n.vec3310
  br i1 %cmp.n3319, label %._crit_edge144.i, label %scalar.ph3307.preheader

scalar.ph3307.preheader:                          ; preds = %vector.memcheck3298, %.lr.ph143.i, %middle.block3318
  %.1125142.i.ph = phi i64 [ %.0121153.i, %vector.memcheck3298 ], [ %.0121153.i, %.lr.ph143.i ], [ %i.fgv, %middle.block3318 ] ; 4 uses
  %i.fhc = sub i64 %i.fdz, %.1125142.i.ph
  %xtraiter4379 = and i64 %i.fhc, 3               ; 2 uses
  %lcmp.mod4380.not = icmp eq i64 %xtraiter4379, 0
  br i1 %lcmp.mod4380.not, label %scalar.ph3307.prol.loopexit, label %scalar.ph3307.prol

scalar.ph3307.prol:                               ; preds = %scalar.ph3307.preheader, %scalar.ph3307.prol
  %.1125142.i.prol = phi i64 [ %i.fhh, %scalar.ph3307.prol ], [ %.1125142.i.ph, %scalar.ph3307.preheader ] ; 3 uses
  %prol.iter4381 = phi i64 [ %prol.iter4381.next, %scalar.ph3307.prol ], [ 0, %scalar.ph3307.preheader ]
  %i.fhd = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %.1125142.i.prol ; 2 uses
  %i.fhe = load double, ptr %i.fhd, align 8, !tbaa !216
  %i.fhf = getelementptr [8 x i8], ptr %i.fgq, i64 %.1125142.i.prol ; 2 uses
  %i.fhg = load double, ptr %i.fhf, align 8, !tbaa !216
  store double %i.fhg, ptr %i.fhd, align 8, !tbaa !216
  store double %i.fhe, ptr %i.fhf, align 8, !tbaa !216
  %i.fhh = add nuw nsw i64 %.1125142.i.prol, 1    ; 2 uses
  %prol.iter4381.next = add i64 %prol.iter4381, 1 ; 2 uses
  %prol.iter4381.cmp.not = icmp eq i64 %prol.iter4381.next, %xtraiter4379
  br i1 %prol.iter4381.cmp.not, label %scalar.ph3307.prol.loopexit, label %scalar.ph3307.prol, !llvm.loop !90

scalar.ph3307.prol.loopexit:                      ; preds = %scalar.ph3307.prol, %scalar.ph3307.preheader
  %.1125142.i.unr = phi i64 [ %.1125142.i.ph, %scalar.ph3307.preheader ], [ %i.fhh, %scalar.ph3307.prol ]
  %i.fhi = sub i64 %.1125142.i.ph, %i.fdz
  %i.fhj = icmp ugt i64 %i.fhi, -4
  br i1 %i.fhj, label %._crit_edge144.i, label %scalar.ph3307

scalar.ph3307:                                    ; preds = %scalar.ph3307.prol.loopexit, %scalar.ph3307
  %.1125142.i = phi i64 [ %i.fid, %scalar.ph3307 ], [ %.1125142.i.unr, %scalar.ph3307.prol.loopexit ] ; 6 uses
  %i.fhk = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %.1125142.i ; 2 uses
  %i.fhl = load double, ptr %i.fhk, align 8, !tbaa !216
  %i.fhm = getelementptr [8 x i8], ptr %i.fgq, i64 %.1125142.i ; 2 uses
  %i.fhn = load double, ptr %i.fhm, align 8, !tbaa !216
  store double %i.fhn, ptr %i.fhk, align 8, !tbaa !216
  store double %i.fhl, ptr %i.fhm, align 8, !tbaa !216
  %i.fho = add nuw nsw i64 %.1125142.i, 1         ; 2 uses
  %i.fhp = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fho ; 2 uses
  %i.fhq = load double, ptr %i.fhp, align 8, !tbaa !216
  %i.fhr = getelementptr [8 x i8], ptr %i.fgq, i64 %i.fho ; 2 uses
  %i.fhs = load double, ptr %i.fhr, align 8, !tbaa !216
  store double %i.fhs, ptr %i.fhp, align 8, !tbaa !216
  store double %i.fhq, ptr %i.fhr, align 8, !tbaa !216
  %i.fht = add nuw nsw i64 %.1125142.i, 2         ; 2 uses
  %i.fhu = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fht ; 2 uses
  %i.fhv = load double, ptr %i.fhu, align 8, !tbaa !216
  %i.fhw = getelementptr [8 x i8], ptr %i.fgq, i64 %i.fht ; 2 uses
  %i.fhx = load double, ptr %i.fhw, align 8, !tbaa !216
  store double %i.fhx, ptr %i.fhu, align 8, !tbaa !216
  store double %i.fhv, ptr %i.fhw, align 8, !tbaa !216
  %i.fhy = add nuw nsw i64 %.1125142.i, 3         ; 2 uses
  %i.fhz = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fhy ; 2 uses
  %i.fia = load double, ptr %i.fhz, align 8, !tbaa !216
  %i.fib = getelementptr [8 x i8], ptr %i.fgq, i64 %i.fhy ; 2 uses
  %i.fic = load double, ptr %i.fib, align 8, !tbaa !216
  store double %i.fic, ptr %i.fhz, align 8, !tbaa !216
  store double %i.fia, ptr %i.fib, align 8, !tbaa !216
  %i.fid = add nuw nsw i64 %.1125142.i, 4         ; 2 uses
  %exitcond166.not.i.3 = icmp eq i64 %i.fid, %i.fdz
  br i1 %exitcond166.not.i.3, label %._crit_edge144.i, label %scalar.ph3307, !llvm.loop !91

._crit_edge144.i:                                 ; preds = %scalar.ph3307.prol.loopexit, %scalar.ph3307, %middle.block3318
  %i.fie = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0121153.i ; 2 uses
  %i.fif = load double, ptr %i.fie, align 8, !tbaa !216
  %i.fig = getelementptr inbounds [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %spec.select133.i.lcssa ; 2 uses
  %i.fih = load double, ptr %i.fig, align 8, !tbaa !216
  store double %i.fih, ptr %i.fie, align 8, !tbaa !216
  store double %i.fif, ptr %i.fig, align 8, !tbaa !216
  %.pre.i = load double, ptr %i.ffl, align 8, !tbaa !216
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge144.i, %._crit_edge.i
  %i.fii = phi double [ %.pre.i, %._crit_edge144.i ], [ %i.ffm, %._crit_edge.i ]
  %i.fij = fcmp reassoc nsz arcp contract afn oeq double %i.fii, 0.000000e+00
  br i1 %i.fij, label %bb.ay, label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %bb.ax
  %i.fik = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0121153.i
  %min.iters.check3260 = icmp ult i64 %i.ffg, 4
  %bound03256 = icmp ult ptr %scevgep3252, %scevgep3255
  %bound13257 = icmp ult ptr %i.ffl, %scevgep3254
  %found.conflict3258 = and i1 %bound03256, %bound13257
  %min.iters.check3262 = icmp ult i64 %i.ffg, 16
  %i.fil = and i64 %i.ffg, 12
  %n.vec3264 = and i64 %i.ffg, -16                ; 4 uses
  %i.fim = add i64 %.0121153.i, %n.vec3264
  %cmp.n3279 = icmp eq i64 %i.ffg, %n.vec3264
  %min.epilog.iters.check3285 = icmp eq i64 %i.fil, 0
  %n.vec3287 = and i64 %i.ffg, -4                 ; 3 uses
  %i.fin = add i64 %.0121153.i, %n.vec3287
  %cmp.n3296 = icmp eq i64 %i.ffg, %n.vec3287
  br label %iter.check3282

iter.check3282:                                   ; preds = %._crit_edge148.us.i, %.lr.ph150.i
  %.0123149.us.i = phi i64 [ %i.ffn, %.lr.ph150.i ], [ %i.fli, %._crit_edge148.us.i ] ; 3 uses
  %i.fio = mul nuw nsw i64 %.0123149.us.i, %i.fdz
  %i.fip = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4496, i64 %i.fio ; 8 uses
  %i.fiq = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %.0121153.i
  %i.fir = load double, ptr %i.fiq, align 8, !tbaa !216
  %i.fis = fneg reassoc nsz arcp contract afn double %i.fir
  %i.fit = load double, ptr %i.ffl, align 8, !tbaa !216
  %i.fiu = fdiv reassoc nsz arcp contract afn double %i.fis, %i.fit ; 8 uses
  %brmerge4586 = select i1 %min.iters.check3260, i1 true, i1 %found.conflict3258
  br i1 %brmerge4586, label %vec.epilog.scalar.ph3283.preheader, label %vector.main.loop.iter.check3261

vector.main.loop.iter.check3261:                  ; preds = %iter.check3282
  br i1 %min.iters.check3262, label %vec.epilog.ph3286, label %vector.ph3263

vector.ph3263:                                    ; preds = %vector.main.loop.iter.check3261
  %broadcast.splatinsert3265 = insertelement <4 x double> poison, double %i.fiu, i64 0
  %broadcast.splat3266 = shufflevector <4 x double> %broadcast.splatinsert3265, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3267

vector.body3267:                                  ; preds = %vector.ph3263, %vector.body3267
  %index3268 = phi i64 [ 0, %vector.ph3263 ], [ %index.next3277, %vector.body3267 ] ; 2 uses
  %i.fiv = add nuw i64 %.0121153.i, %index3268    ; 2 uses
  %i.fiw = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %i.fiv ; 5 uses
  %i.fix = getelementptr inbounds nuw i8, ptr %i.fiw, i64 32 ; 2 uses
  %i.fiy = getelementptr inbounds nuw i8, ptr %i.fiw, i64 64 ; 2 uses
  %i.fiz = getelementptr inbounds nuw i8, ptr %i.fiw, i64 96 ; 2 uses
  %wide.load3269 = load <4 x double>, ptr %i.fiw, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3270 = load <4 x double>, ptr %i.fix, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3271 = load <4 x double>, ptr %i.fiy, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3272 = load <4 x double>, ptr %i.fiz, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %i.fja = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fiv ; 4 uses
  %i.fjb = getelementptr inbounds nuw i8, ptr %i.fja, i64 32
  %i.fjc = getelementptr inbounds nuw i8, ptr %i.fja, i64 64
  %i.fjd = getelementptr inbounds nuw i8, ptr %i.fja, i64 96
  %wide.load3273 = load <4 x double>, ptr %i.fja, align 8, !tbaa !216, !alias.scope !220
  %wide.load3274 = load <4 x double>, ptr %i.fjb, align 8, !tbaa !216, !alias.scope !220
  %wide.load3275 = load <4 x double>, ptr %i.fjc, align 8, !tbaa !216, !alias.scope !220
  %wide.load3276 = load <4 x double>, ptr %i.fjd, align 8, !tbaa !216, !alias.scope !220
  %i.fje = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3273, %broadcast.splat3266
  %i.fjf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3274, %broadcast.splat3266
  %i.fjg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3275, %broadcast.splat3266
  %i.fjh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3276, %broadcast.splat3266
  %i.fji = fadd reassoc nsz arcp contract afn <4 x double> %i.fje, %wide.load3269
  %i.fjj = fadd reassoc nsz arcp contract afn <4 x double> %i.fjf, %wide.load3270
  %i.fjk = fadd reassoc nsz arcp contract afn <4 x double> %i.fjg, %wide.load3271
  %i.fjl = fadd reassoc nsz arcp contract afn <4 x double> %i.fjh, %wide.load3272
  store <4 x double> %i.fji, ptr %i.fiw, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fjj, ptr %i.fix, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fjk, ptr %i.fiy, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fjl, ptr %i.fiz, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %index.next3277 = add nuw i64 %index3268, 16    ; 2 uses
  %i.fjm = icmp eq i64 %index.next3277, %n.vec3264
  br i1 %i.fjm, label %middle.block3278, label %vector.body3267, !llvm.loop !95

middle.block3278:                                 ; preds = %vector.body3267
  br i1 %cmp.n3279, label %._crit_edge148.us.i, label %vec.epilog.iter.check3284

vec.epilog.iter.check3284:                        ; preds = %middle.block3278
  br i1 %min.epilog.iters.check3285, label %vec.epilog.scalar.ph3283.preheader, label %vec.epilog.ph3286, !prof !221

vec.epilog.ph3286:                                ; preds = %vector.main.loop.iter.check3261, %vec.epilog.iter.check3284
  %vec.epilog.resume.val3280 = phi i64 [ %n.vec3264, %vec.epilog.iter.check3284 ], [ 0, %vector.main.loop.iter.check3261 ]
  %broadcast.splatinsert3288 = insertelement <4 x double> poison, double %i.fiu, i64 0
  %broadcast.splat3289 = shufflevector <4 x double> %broadcast.splatinsert3288, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3290

vec.epilog.vector.body3290:                       ; preds = %vec.epilog.vector.body3290, %vec.epilog.ph3286
  %index3291 = phi i64 [ %vec.epilog.resume.val3280, %vec.epilog.ph3286 ], [ %index.next3294, %vec.epilog.vector.body3290 ] ; 2 uses
  %i.fjn = add nuw i64 %.0121153.i, %index3291    ; 2 uses
  %i.fjo = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %i.fjn ; 2 uses
  %wide.load3292 = load <4 x double>, ptr %i.fjo, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %i.fjp = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fjn
  %wide.load3293 = load <4 x double>, ptr %i.fjp, align 8, !tbaa !216, !alias.scope !220
  %i.fjq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3293, %broadcast.splat3289
  %i.fjr = fadd reassoc nsz arcp contract afn <4 x double> %i.fjq, %wide.load3292
  store <4 x double> %i.fjr, ptr %i.fjo, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %index.next3294 = add nuw i64 %index3291, 4     ; 2 uses
  %i.fjs = icmp eq i64 %index.next3294, %n.vec3287
  br i1 %i.fjs, label %vec.epilog.middle.block3295, label %vec.epilog.vector.body3290, !llvm.loop !96

vec.epilog.middle.block3295:                      ; preds = %vec.epilog.vector.body3290
  br i1 %cmp.n3296, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3283.preheader

vec.epilog.scalar.ph3283.preheader:               ; preds = %iter.check3282, %vec.epilog.iter.check3284, %vec.epilog.middle.block3295
  %.2145.us.i.ph = phi i64 [ %.0121153.i, %iter.check3282 ], [ %i.fin, %vec.epilog.middle.block3295 ], [ %i.fim, %vec.epilog.iter.check3284 ] ; 4 uses
  %7 = sub i64 %i.fdz, %.2145.us.i.ph
  %i.fjt = sub i64 %i.fer, %.2145.us.i.ph
  %xtraiter4384 = and i64 %7, 3                   ; 2 uses
  %lcmp.mod4385.not = icmp eq i64 %xtraiter4384, 0
  br i1 %lcmp.mod4385.not, label %vec.epilog.scalar.ph3283.prol.loopexit, label %vec.epilog.scalar.ph3283.prol

vec.epilog.scalar.ph3283.prol:                    ; preds = %vec.epilog.scalar.ph3283.preheader, %vec.epilog.scalar.ph3283.prol
  %.2145.us.i.prol = phi i64 [ %i.fka, %vec.epilog.scalar.ph3283.prol ], [ %.2145.us.i.ph, %vec.epilog.scalar.ph3283.preheader ] ; 3 uses
  %prol.iter4386 = phi i64 [ %prol.iter4386.next, %vec.epilog.scalar.ph3283.prol ], [ 0, %vec.epilog.scalar.ph3283.preheader ]
  %i.fju = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %.2145.us.i.prol ; 2 uses
  %i.fjv = load double, ptr %i.fju, align 8, !tbaa !216
  %i.fjw = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %.2145.us.i.prol
  %i.fjx = load double, ptr %i.fjw, align 8, !tbaa !216
  %i.fjy = fmul reassoc nsz arcp contract afn double %i.fjx, %i.fiu
  %i.fjz = fadd reassoc nsz arcp contract afn double %i.fjy, %i.fjv
  store double %i.fjz, ptr %i.fju, align 8, !tbaa !216
  %i.fka = add nuw nsw i64 %.2145.us.i.prol, 1    ; 2 uses
  %prol.iter4386.next = add i64 %prol.iter4386, 1 ; 2 uses
  %prol.iter4386.cmp.not = icmp eq i64 %prol.iter4386.next, %xtraiter4384
  br i1 %prol.iter4386.cmp.not, label %vec.epilog.scalar.ph3283.prol.loopexit, label %vec.epilog.scalar.ph3283.prol, !llvm.loop !97

vec.epilog.scalar.ph3283.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3283.prol, %vec.epilog.scalar.ph3283.preheader
  %.2145.us.i.unr = phi i64 [ %.2145.us.i.ph, %vec.epilog.scalar.ph3283.preheader ], [ %i.fka, %vec.epilog.scalar.ph3283.prol ]
  %8 = icmp ult i64 %i.fjt, 3
  br i1 %8, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3283

vec.epilog.scalar.ph3283:                         ; preds = %vec.epilog.scalar.ph3283.prol.loopexit, %vec.epilog.scalar.ph3283
  %.2145.us.i = phi i64 [ %i.flc, %vec.epilog.scalar.ph3283 ], [ %.2145.us.i.unr, %vec.epilog.scalar.ph3283.prol.loopexit ] ; 6 uses
  %i.fkb = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %.2145.us.i ; 2 uses
  %i.fkc = load double, ptr %i.fkb, align 8, !tbaa !216
  %i.fkd = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %.2145.us.i
  %i.fke = load double, ptr %i.fkd, align 8, !tbaa !216
  %i.fkf = fmul reassoc nsz arcp contract afn double %i.fke, %i.fiu
  %i.fkg = fadd reassoc nsz arcp contract afn double %i.fkf, %i.fkc
  store double %i.fkg, ptr %i.fkb, align 8, !tbaa !216
  %i.fkh = add nuw nsw i64 %.2145.us.i, 1         ; 2 uses
  %i.fki = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %i.fkh ; 2 uses
  %i.fkj = load double, ptr %i.fki, align 8, !tbaa !216
  %i.fkk = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fkh
  %i.fkl = load double, ptr %i.fkk, align 8, !tbaa !216
  %i.fkm = fmul reassoc nsz arcp contract afn double %i.fkl, %i.fiu
  %i.fkn = fadd reassoc nsz arcp contract afn double %i.fkm, %i.fkj
  store double %i.fkn, ptr %i.fki, align 8, !tbaa !216
  %i.fko = add nuw nsw i64 %.2145.us.i, 2         ; 2 uses
  %i.fkp = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %i.fko ; 2 uses
  %i.fkq = load double, ptr %i.fkp, align 8, !tbaa !216
  %i.fkr = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fko
  %i.fks = load double, ptr %i.fkr, align 8, !tbaa !216
  %i.fkt = fmul reassoc nsz arcp contract afn double %i.fks, %i.fiu
  %i.fku = fadd reassoc nsz arcp contract afn double %i.fkt, %i.fkq
  store double %i.fku, ptr %i.fkp, align 8, !tbaa !216
  %i.fkv = add nuw nsw i64 %.2145.us.i, 3         ; 2 uses
  %i.fkw = getelementptr inbounds nuw [8 x i8], ptr %i.fip, i64 %i.fkv ; 2 uses
  %i.fkx = load double, ptr %i.fkw, align 8, !tbaa !216
  %i.fky = getelementptr inbounds nuw [8 x i8], ptr %i.ffk, i64 %i.fkv
  %i.fkz = load double, ptr %i.fky, align 8, !tbaa !216
  %i.fla = fmul reassoc nsz arcp contract afn double %i.fkz, %i.fiu
  %i.flb = fadd reassoc nsz arcp contract afn double %i.fla, %i.fkx
  store double %i.flb, ptr %i.fkw, align 8, !tbaa !216
  %i.flc = add nuw nsw i64 %.2145.us.i, 4         ; 2 uses
  %exitcond167.not.i.3 = icmp eq i64 %i.flc, %i.fdz
  br i1 %exitcond167.not.i.3, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3283, !llvm.loop !98

._crit_edge148.us.i:                              ; preds = %vec.epilog.scalar.ph3283.prol.loopexit, %vec.epilog.scalar.ph3283, %vec.epilog.middle.block3295, %middle.block3278
  %i.fld = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0123149.us.i ; 2 uses
  %i.fle = load double, ptr %i.fld, align 8, !tbaa !216
  %i.flf = load double, ptr %i.fik, align 8, !tbaa !216
  %i.flg = fmul reassoc nsz arcp contract afn double %i.flf, %i.fiu
  %i.flh = fadd reassoc nsz arcp contract afn double %i.flg, %i.fle
  store double %i.flh, ptr %i.fld, align 8, !tbaa !216
  %i.fli = add nuw nsw i64 %.0123149.us.i, 1      ; 2 uses
  %exitcond168.not.i = icmp eq i64 %i.fli, %i.fdz
  br i1 %exitcond168.not.i, label %.loopexit135.i, label %iter.check3282

.preheader.i:                                     ; preds = %.loopexit135.i, %._crit_edge162.i
  %indvar3204 = phi i64 [ %indvar.next3205, %._crit_edge162.i ], [ 0, %.loopexit135.i ] ; 8 uses
  %.1122164.i = phi i64 [ %i.fne, %._crit_edge162.i ], [ %i.fea, %.loopexit135.i ] ; 7 uses
  %i.flj = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.1122164.i
  %i.flk = load double, ptr %i.flj, align 8, !tbaa !216 ; 5 uses
  %i.fll = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4505, i64 %.1122164.i ; 5 uses
  store double %i.flk, ptr %i.fll, align 8, !tbaa !216
  %.3157.i = add nuw nsw i64 %.1122164.i, 1       ; 6 uses
  %i.flm = icmp slt i64 %.3157.i, %i.fdz
  br i1 %i.flm, label %iter.check3235, label %._crit_edge162.i

iter.check3235:                                   ; preds = %.preheader.i
  %i.fln = mul nuw nsw i64 %.1122164.i, %i.fdz
  %i.flo = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4496, i64 %i.fln ; 3 uses
  %min.iters.check3207 = icmp ult i64 %indvar3204, 4
  br i1 %min.iters.check3207, label %vec.epilog.scalar.ph3236.preheader, label %vector.main.loop.iter.check3208

vector.main.loop.iter.check3208:                  ; preds = %iter.check3235
  %min.iters.check3209 = icmp ult i64 %indvar3204, 16
  br i1 %min.iters.check3209, label %vec.epilog.ph3239, label %vector.ph3210

vector.ph3210:                                    ; preds = %vector.main.loop.iter.check3208
  %i.flp = and i64 %indvar3204, 12
  %n.vec3211 = and i64 %indvar3204, -16           ; 4 uses
  %i.flq = add i64 %.3157.i, %n.vec3211
  %i.flr = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.flk, i64 0
  br label %vector.body3212

vector.body3212:                                  ; preds = %vector.ph3210, %vector.body3212
  %index3213 = phi i64 [ 0, %vector.ph3210 ], [ %index.next3226, %vector.body3212 ] ; 2 uses
  %vec.phi3214 = phi <4 x double> [ %i.flr, %vector.ph3210 ], [ %i.fmf, %vector.body3212 ]
  %vec.phi3215 = phi <4 x double> [ zeroinitializer, %vector.ph3210 ], [ %i.fmg, %vector.body3212 ]
  %vec.phi3216 = phi <4 x double> [ zeroinitializer, %vector.ph3210 ], [ %i.fmh, %vector.body3212 ]
  %vec.phi3217 = phi <4 x double> [ zeroinitializer, %vector.ph3210 ], [ %i.fmi, %vector.body3212 ]
  %i.fls = add nuw i64 %.3157.i, %index3213       ; 2 uses
  %i.flt = getelementptr inbounds nuw [8 x i8], ptr %i.flo, i64 %i.fls ; 4 uses
  %i.flu = getelementptr inbounds nuw i8, ptr %i.flt, i64 32
  %i.flv = getelementptr inbounds nuw i8, ptr %i.flt, i64 64
  %i.flw = getelementptr inbounds nuw i8, ptr %i.flt, i64 96
  %wide.load3218 = load <4 x double>, ptr %i.flt, align 8, !tbaa !216
  %wide.load3219 = load <4 x double>, ptr %i.flu, align 8, !tbaa !216
  %wide.load3220 = load <4 x double>, ptr %i.flv, align 8, !tbaa !216
  %wide.load3221 = load <4 x double>, ptr %i.flw, align 8, !tbaa !216
  %i.flx = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4505, i64 %i.fls ; 4 uses
  %i.fly = getelementptr inbounds nuw i8, ptr %i.flx, i64 32
  %i.flz = getelementptr inbounds nuw i8, ptr %i.flx, i64 64
  %i.fma = getelementptr inbounds nuw i8, ptr %i.flx, i64 96
  %wide.load3222 = load <4 x double>, ptr %i.flx, align 8, !tbaa !216
  %wide.load3223 = load <4 x double>, ptr %i.fly, align 8, !tbaa !216
  %wide.load3224 = load <4 x double>, ptr %i.flz, align 8, !tbaa !216
  %wide.load3225 = load <4 x double>, ptr %i.fma, align 8, !tbaa !216
  %i.fmb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3222, %wide.load3218
  %i.fmc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3223, %wide.load3219
  %i.fmd = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3224, %wide.load3220
  %i.fme = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3225, %wide.load3221
  %i.fmf = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3214, %i.fmb ; 2 uses
  %i.fmg = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3215, %i.fmc ; 2 uses
  %i.fmh = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3216, %i.fmd ; 2 uses
  %i.fmi = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3217, %i.fme ; 2 uses
  %index.next3226 = add nuw i64 %index3213, 16    ; 2 uses
  %i.fmj = icmp eq i64 %index.next3226, %n.vec3211
  br i1 %i.fmj, label %middle.block3227, label %vector.body3212, !llvm.loop !99

middle.block3227:                                 ; preds = %vector.body3212
  %bin.rdx3228 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmg, %i.fmf
  %bin.rdx3229 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmh, %bin.rdx3228
  %bin.rdx3230 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmi, %bin.rdx3229
  %i.fmk = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx3230) ; 4 uses
  store double %i.fmk, ptr %i.fll, align 8, !tbaa !216
  %cmp.n3231 = icmp eq i64 %indvar3204, %n.vec3211
  br i1 %cmp.n3231, label %._crit_edge162.i, label %vec.epilog.iter.check3237

vec.epilog.iter.check3237:                        ; preds = %middle.block3227
  %min.epilog.iters.check3238 = icmp eq i64 %i.flp, 0
  br i1 %min.epilog.iters.check3238, label %vec.epilog.scalar.ph3236.preheader, label %vec.epilog.ph3239, !prof !221

vec.epilog.ph3239:                                ; preds = %vector.main.loop.iter.check3208, %vec.epilog.iter.check3237
  %vec.epilog.resume.val3232 = phi i64 [ %n.vec3211, %vec.epilog.iter.check3237 ], [ 0, %vector.main.loop.iter.check3208 ]
  %bc.merge.rdx3234 = phi double [ %i.fmk, %vec.epilog.iter.check3237 ], [ %i.flk, %vector.main.loop.iter.check3208 ]
  %n.vec3240 = and i64 %indvar3204, -4            ; 3 uses
  %i.fml = add i64 %.3157.i, %n.vec3240
  %i.fmm = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx3234, i64 0
  br label %vec.epilog.vector.body3241

vec.epilog.vector.body3241:                       ; preds = %vec.epilog.vector.body3241, %vec.epilog.ph3239
  %index3242 = phi i64 [ %vec.epilog.resume.val3232, %vec.epilog.ph3239 ], [ %index.next3246, %vec.epilog.vector.body3241 ] ; 2 uses
  %vec.phi3243 = phi <4 x double> [ %i.fmm, %vec.epilog.ph3239 ], [ %i.fmr, %vec.epilog.vector.body3241 ]
  %i.fmn = add nuw i64 %.3157.i, %index3242       ; 2 uses
  %i.fmo = getelementptr inbounds nuw [8 x i8], ptr %i.flo, i64 %i.fmn
  %wide.load3244 = load <4 x double>, ptr %i.fmo, align 8, !tbaa !216
  %i.fmp = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4505, i64 %i.fmn
  %wide.load3245 = load <4 x double>, ptr %i.fmp, align 8, !tbaa !216
  %i.fmq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3245, %wide.load3244
  %i.fmr = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3243, %i.fmq ; 2 uses
  %index.next3246 = add nuw i64 %index3242, 4     ; 2 uses
  %i.fms = icmp eq i64 %index.next3246, %n.vec3240
  br i1 %i.fms, label %vec.epilog.middle.block3247, label %vec.epilog.vector.body3241, !llvm.loop !100

vec.epilog.middle.block3247:                      ; preds = %vec.epilog.vector.body3241
  %i.fmt = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fmr) ; 3 uses
  store double %i.fmt, ptr %i.fll, align 8, !tbaa !216
  %cmp.n3248 = icmp eq i64 %indvar3204, %n.vec3240
  br i1 %cmp.n3248, label %._crit_edge162.i, label %vec.epilog.scalar.ph3236.preheader

vec.epilog.scalar.ph3236.preheader:               ; preds = %iter.check3235, %vec.epilog.iter.check3237, %vec.epilog.middle.block3247
  %.3159.i.ph = phi i64 [ %.3157.i, %iter.check3235 ], [ %i.flq, %vec.epilog.iter.check3237 ], [ %i.fml, %vec.epilog.middle.block3247 ]
  %storemerge158.i.ph = phi double [ %i.flk, %iter.check3235 ], [ %i.fmk, %vec.epilog.iter.check3237 ], [ %i.fmt, %vec.epilog.middle.block3247 ]
  br label %vec.epilog.scalar.ph3236

vec.epilog.scalar.ph3236:                         ; preds = %vec.epilog.scalar.ph3236.preheader, %vec.epilog.scalar.ph3236
  %.3159.i = phi i64 [ %.3.i, %vec.epilog.scalar.ph3236 ], [ %.3159.i.ph, %vec.epilog.scalar.ph3236.preheader ] ; 3 uses
  %storemerge158.i = phi double [ %i.fmz, %vec.epilog.scalar.ph3236 ], [ %storemerge158.i.ph, %vec.epilog.scalar.ph3236.preheader ]
  %i.fmu = getelementptr inbounds nuw [8 x i8], ptr %i.flo, i64 %.3159.i
  %i.fmv = load double, ptr %i.fmu, align 8, !tbaa !216
  %i.fmw = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4505, i64 %.3159.i
  %i.fmx = load double, ptr %i.fmw, align 8, !tbaa !216
  %i.fmy = fmul reassoc nsz arcp contract afn double %i.fmx, %i.fmv
  %i.fmz = fsub reassoc nsz arcp contract afn double %storemerge158.i, %i.fmy ; 3 uses
  store double %i.fmz, ptr %i.fll, align 8, !tbaa !216
  %.3.i = add nuw nsw i64 %.3159.i, 1             ; 2 uses
  %exitcond170.not.i = icmp eq i64 %.3.i, %i.fdz
  br i1 %exitcond170.not.i, label %._crit_edge162.i, label %vec.epilog.scalar.ph3236, !llvm.loop !101

._crit_edge162.i:                                 ; preds = %vec.epilog.scalar.ph3236, %middle.block3227, %vec.epilog.middle.block3247, %.preheader.i
  %storemerge.lcssa.i = phi double [ %i.flk, %.preheader.i ], [ %i.fmt, %vec.epilog.middle.block3247 ], [ %i.fmk, %middle.block3227 ], [ %i.fmz, %vec.epilog.scalar.ph3236 ]
  %i.fna = mul nuw i64 %.1122164.i, %.1122132.i
  %i.fnb = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4496, i64 %i.fna
  %i.fnc = load double, ptr %i.fnb, align 8, !tbaa !216
  %i.fnd = fdiv reassoc nsz arcp contract afn double %storemerge.lcssa.i, %i.fnc
  store double %i.fnd, ptr %i.fll, align 8, !tbaa !216
  %i.fne = add nsw i64 %.1122164.i, -1
  %i.fnf = icmp sgt i64 %.1122164.i, 0
  %indvar.next3205 = add i64 %indvar3204, 1
  br i1 %i.fnf, label %.preheader.i, label %_LinEqSolve.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fng = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fnh = and i32 %i.fng, 33554432
  %.not1789 = icmp eq i32 %i.fnh, 0
  br i1 %.not1789, label %_LinEqSolve.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fni = trunc nuw nsw i64 %indvars.iv2591 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %i.fni, i32 noundef 0) #20
  br label %_LinEqSolve.exit

_LinEqSolve.exit:                                 ; preds = %._crit_edge162.i, %bb.ay, %bb.az
  %.6 = phi i32 [ 0, %bb.ay ], [ 0, %bb.az ], [ %.42123, %._crit_edge162.i ]
  %i.fnj = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi4496, i64 2048 ; 6 uses
  %i.fnk = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi, i64 128 ; 5 uses
  %i.fnl = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi4505, i64 128 ; 4 uses
  %i.fnm = shl nuw nsw i64 %indvars.iv2591, 12    ; 5 uses
  %i.fnn = add nuw nsw i64 %i.fec, %i.fnm         ; 2 uses
  %scevgep3137 = getelementptr i8, ptr %scevgep3136, i64 %i.fnm
  %scevgep3185 = getelementptr i8, ptr %scevgep3184, i64 %i.fnm
  %i.fno = getelementptr i8, ptr %i.feu, i64 %i.fnm
  %i.fnp = getelementptr i8, ptr %i.l, i64 %i.fnm
  %i.fnq = getelementptr i8, ptr %i.fnp, i64 2048
  %i.fnr = getelementptr i8, ptr %i.l, i64 %i.fnn
  %i.fns = getelementptr i8, ptr %i.l, i64 %i.fnn
  br label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %.loopexit135.i.1, %_LinEqSolve.exit
  %.0121153.i.1 = phi i64 [ %i.foe, %.loopexit135.i.1 ], [ 0, %_LinEqSolve.exit ] ; 26 uses
  %i.fnt = sub i64 %i.fer, %.0121153.i.1
  %i.fnu = sub i64 %6, %.0121153.i.1
  %i.fnv = mul i64 %i.fei, %.0121153.i.1
  %scevgep3181 = getelementptr i8, ptr %i.fno, i64 %i.fnv
  %i.fnw = shl i64 %.0121153.i.1, 3
  %scevgep3182 = getelementptr i8, ptr %i.fnq, i64 %i.fnw
  %i.fnx = sub nsw i64 %i.fdz, %.0121153.i.1      ; 10 uses
  %i.fny = mul i64 %i.fed, %.0121153.i.1
  %scevgep3134 = getelementptr i8, ptr %i.fnr, i64 %i.fny
  %i.fnz = mul i64 %i.feg, %.0121153.i.1
  %scevgep3138 = getelementptr i8, ptr %i.fns, i64 %i.fnz
  %i.foa = mul nuw nsw i64 %.0121153.i.1, %i.fdz
  %i.fob = getelementptr inbounds nuw [8 x i8], ptr %i.fnj, i64 %i.foa ; 14 uses
  %i.foc = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.0121153.i.1 ; 5 uses
  %i.fod = load double, ptr %i.foc, align 8, !tbaa !216 ; 2 uses
  %i.foe = add nuw nsw i64 %.0121153.i.1, 1       ; 5 uses
  %invariant.gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.fnj, i64 %.0121153.i.1 ; 5 uses
  %i.fof = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fod) ; 2 uses
  %xtraiter4389 = and i64 %i.fnt, 3               ; 2 uses
  %lcmp.mod4390.not = icmp eq i64 %xtraiter4389, 0
  br i1 %lcmp.mod4390.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol

.lr.ph.i.1.prol:                                  ; preds = %.lr.ph.preheader.i.1, %.lr.ph.i.1.prol
  %.0141.i.1.prol = phi i64 [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ], [ %.0121153.i.1, %.lr.ph.preheader.i.1 ]
  %.0124140.i.1.prol = phi i64 [ %i.fok, %.lr.ph.i.1.prol ], [ %i.foe, %.lr.ph.preheader.i.1 ] ; 3 uses
  %.0126139.i.1.prol = phi double [ %spec.select.i.1.prol, %.lr.ph.i.1.prol ], [ %i.fof, %.lr.ph.preheader.i.1 ] ; 2 uses
  %prol.iter4391 = phi i64 [ %prol.iter4391.next, %.lr.ph.i.1.prol ], [ 0, %.lr.ph.preheader.i.1 ]
  %i.fog = mul nuw nsw i64 %.0124140.i.1.prol, %i.fdz
  %gep.i.1.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fog
  %i.foh = load double, ptr %gep.i.1.prol, align 8, !tbaa !216 ; 2 uses
  %i.foi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.foh)
  %i.foj = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.1.prol, %i.foi ; 2 uses
  %spec.select.i.1.prol = select nsz i1 %i.foj, double %i.foh, double %.0126139.i.1.prol ; 2 uses
  %spec.select133.i.1.prol = select i1 %i.foj, i64 %.0124140.i.1.prol, i64 %.0141.i.1.prol ; 3 uses
  %i.fok = add nuw nsw i64 %.0124140.i.1.prol, 1  ; 2 uses
  %prol.iter4391.next = add i64 %prol.iter4391, 1 ; 2 uses
  %prol.iter4391.cmp.not = icmp eq i64 %prol.iter4391.next, %xtraiter4389
  br i1 %prol.iter4391.cmp.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol, !llvm.loop !102

.lr.ph.i.1.prol.loopexit:                         ; preds = %.lr.ph.i.1.prol, %.lr.ph.preheader.i.1
  %spec.select133.i.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i.1 ], [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ]
  %.0141.i.1.unr = phi i64 [ %.0121153.i.1, %.lr.ph.preheader.i.1 ], [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ]
  %.0124140.i.1.unr = phi i64 [ %i.foe, %.lr.ph.preheader.i.1 ], [ %i.fok, %.lr.ph.i.1.prol ]
  %.0126139.i.1.unr = phi double [ %i.fof, %.lr.ph.preheader.i.1 ], [ %spec.select.i.1.prol, %.lr.ph.i.1.prol ]
  %i.fol = icmp ult i64 %i.fnu, 3
  br i1 %i.fol, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1.prol.loopexit, %.lr.ph.i.1
  %.0141.i.1 = phi i64 [ %spec.select133.i.1.3, %.lr.ph.i.1 ], [ %.0141.i.1.unr, %.lr.ph.i.1.prol.loopexit ]
  %.0124140.i.1 = phi i64 [ %i.fpf, %.lr.ph.i.1 ], [ %.0124140.i.1.unr, %.lr.ph.i.1.prol.loopexit ] ; 6 uses
  %.0126139.i.1 = phi double [ %spec.select.i.1.3, %.lr.ph.i.1 ], [ %.0126139.i.1.unr, %.lr.ph.i.1.prol.loopexit ] ; 2 uses
  %i.fom = mul nuw nsw i64 %.0124140.i.1, %i.fdz
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fom
  %i.fon = load double, ptr %gep.i.1, align 8, !tbaa !216 ; 2 uses
  %i.foo = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fon)
  %i.fop = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.1, %i.foo ; 2 uses
  %spec.select.i.1 = select nsz i1 %i.fop, double %i.fon, double %.0126139.i.1 ; 2 uses
  %spec.select133.i.1 = select i1 %i.fop, i64 %.0124140.i.1, i64 %.0141.i.1
  %i.foq = add nuw nsw i64 %.0124140.i.1, 1       ; 2 uses
  %i.for = mul nuw nsw i64 %i.foq, %i.fdz
  %gep.i.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.for
  %i.fos = load double, ptr %gep.i.1.1, align 8, !tbaa !216 ; 2 uses
  %i.fot = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fos)
  %i.fou = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.1, %i.fot ; 2 uses
  %spec.select.i.1.1 = select nsz i1 %i.fou, double %i.fos, double %spec.select.i.1 ; 2 uses
  %spec.select133.i.1.1 = select i1 %i.fou, i64 %i.foq, i64 %spec.select133.i.1
  %i.fov = add nuw nsw i64 %.0124140.i.1, 2       ; 2 uses
  %i.fow = mul nuw nsw i64 %i.fov, %i.fdz
  %gep.i.1.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fow
  %i.fox = load double, ptr %gep.i.1.2, align 8, !tbaa !216 ; 2 uses
  %i.foy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fox)
  %i.foz = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.1.1, %i.foy ; 2 uses
  %spec.select.i.1.2 = select nsz i1 %i.foz, double %i.fox, double %spec.select.i.1.1 ; 2 uses
  %spec.select133.i.1.2 = select i1 %i.foz, i64 %i.fov, i64 %spec.select133.i.1.1
  %i.fpa = add nuw nsw i64 %.0124140.i.1, 3       ; 2 uses
  %i.fpb = mul nuw nsw i64 %i.fpa, %i.fdz
  %gep.i.1.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpb
  %i.fpc = load double, ptr %gep.i.1.3, align 8, !tbaa !216 ; 2 uses
  %i.fpd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpc)
  %i.fpe = fcmp reassoc nsz arcp contract afn olt double %spec.select.i.1.2, %i.fpd ; 2 uses
  %spec.select.i.1.3 = select nsz i1 %i.fpe, double %i.fpc, double %spec.select.i.1.2
  %spec.select133.i.1.3 = select i1 %i.fpe, i64 %i.fpa, i64 %spec.select133.i.1.2 ; 2 uses
  %i.fpf = add nuw nsw i64 %.0124140.i.1, 4       ; 2 uses
  %exitcond.not.i.1.3 = icmp eq i64 %i.fpf, %i.fdz
  br i1 %exitcond.not.i.1.3, label %._crit_edge.i.1, label %.lr.ph.i.1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %.lr.ph.i.1.prol.loopexit
  %spec.select133.i.1.lcssa = phi i64 [ %spec.select133.i.1.lcssa.unr, %.lr.ph.i.1.prol.loopexit ], [ %spec.select133.i.1.3, %.lr.ph.i.1 ] ; 5 uses
  %.not.i1832.1 = icmp eq i64 %spec.select133.i.1.lcssa, %.0121153.i.1
  br i1 %.not.i1832.1, label %bb.ba, label %.lr.ph143.i.1

.lr.ph143.i.1:                                    ; preds = %._crit_edge.i.1
  %i.fpg = mul nsw i64 %spec.select133.i.1.lcssa, %i.fdz
  %i.fph = getelementptr [8 x i8], ptr %i.fnj, i64 %i.fpg ; 6 uses
  %min.iters.check3190 = icmp ult i64 %i.fnx, 8
  br i1 %min.iters.check3190, label %scalar.ph.preheader, label %vector.memcheck3180

vector.memcheck3180:                              ; preds = %.lr.ph143.i.1
  %i.fpi = mul i64 %i.fej, %spec.select133.i.1.lcssa
  %scevgep3183 = getelementptr i8, ptr %scevgep3182, i64 %i.fpi
  %i.fpj = shl i64 %spec.select133.i.1.lcssa, 3
  %i.fpk = add i64 %i.fpj, 8
  %i.fpl = mul i64 %i.fpk, %i.fdz
  %scevgep3186 = getelementptr i8, ptr %scevgep3185, i64 %i.fpl
  %bound03187 = icmp ult ptr %i.foc, %scevgep3186
  %bound13188 = icmp ult ptr %scevgep3183, %scevgep3181
  %found.conflict3189 = and i1 %bound03187, %bound13188
  br i1 %found.conflict3189, label %scalar.ph.preheader, label %vector.ph3191

vector.ph3191:                                    ; preds = %vector.memcheck3180
  %n.vec3192 = and i64 %i.fnx, -8                 ; 3 uses
  %i.fpm = add i64 %.0121153.i.1, %n.vec3192
  br label %vector.body3193

vector.body3193:                                  ; preds = %vector.body3193, %vector.ph3191
  %index3194 = phi i64 [ 0, %vector.ph3191 ], [ %index.next3199, %vector.body3193 ] ; 2 uses
  %i.fpn = add nuw i64 %.0121153.i.1, %index3194  ; 2 uses
  %i.fpo = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %i.fpn ; 3 uses
  %i.fpp = getelementptr inbounds nuw i8, ptr %i.fpo, i64 32 ; 2 uses
  %wide.load3195 = load <4 x double>, ptr %i.fpo, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  %wide.load3196 = load <4 x double>, ptr %i.fpp, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  %i.fpq = getelementptr [8 x i8], ptr %i.fph, i64 %i.fpn ; 3 uses
  %i.fpr = getelementptr i8, ptr %i.fpq, i64 32   ; 2 uses
  %wide.load3197 = load <4 x double>, ptr %i.fpq, align 8, !tbaa !216, !alias.scope !223
  %wide.load3198 = load <4 x double>, ptr %i.fpr, align 8, !tbaa !216, !alias.scope !223
  store <4 x double> %wide.load3197, ptr %i.fpo, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  store <4 x double> %wide.load3198, ptr %i.fpp, align 8, !tbaa !216, !alias.scope !222, !noalias !223
  store <4 x double> %wide.load3195, ptr %i.fpq, align 8, !tbaa !216, !alias.scope !223
  store <4 x double> %wide.load3196, ptr %i.fpr, align 8, !tbaa !216, !alias.scope !223
  %index.next3199 = add nuw i64 %index3194, 8     ; 2 uses
  %i.fps = icmp eq i64 %index.next3199, %n.vec3192
  br i1 %i.fps, label %middle.block3200, label %vector.body3193, !llvm.loop !106

middle.block3200:                                 ; preds = %vector.body3193
  %cmp.n3201 = icmp eq i64 %i.fnx, %n.vec3192
  br i1 %cmp.n3201, label %._crit_edge144.i.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck3180, %.lr.ph143.i.1, %middle.block3200
  %.1125142.i.1.ph = phi i64 [ %.0121153.i.1, %vector.memcheck3180 ], [ %.0121153.i.1, %.lr.ph143.i.1 ], [ %i.fpm, %middle.block3200 ] ; 4 uses
  %i.fpt = sub i64 %i.fdz, %.1125142.i.1.ph
  %xtraiter4392 = and i64 %i.fpt, 3               ; 2 uses
  %lcmp.mod4393.not = icmp eq i64 %xtraiter4392, 0
  br i1 %lcmp.mod4393.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1125142.i.1.prol = phi i64 [ %i.fpy, %scalar.ph.prol ], [ %.1125142.i.1.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter4394 = phi i64 [ %prol.iter4394.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fpu = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.1125142.i.1.prol ; 2 uses
  %i.fpv = load double, ptr %i.fpu, align 8, !tbaa !216
  %i.fpw = getelementptr [8 x i8], ptr %i.fph, i64 %.1125142.i.1.prol ; 2 uses
  %i.fpx = load double, ptr %i.fpw, align 8, !tbaa !216
  store double %i.fpx, ptr %i.fpu, align 8, !tbaa !216
  store double %i.fpv, ptr %i.fpw, align 8, !tbaa !216
  %i.fpy = add nuw nsw i64 %.1125142.i.1.prol, 1  ; 2 uses
  %prol.iter4394.next = add i64 %prol.iter4394, 1 ; 2 uses
  %prol.iter4394.cmp.not = icmp eq i64 %prol.iter4394.next, %xtraiter4392
  br i1 %prol.iter4394.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !107

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1125142.i.1.unr = phi i64 [ %.1125142.i.1.ph, %scalar.ph.preheader ], [ %i.fpy, %scalar.ph.prol ]
  %i.fpz = sub i64 %.1125142.i.1.ph, %i.fdz
  %i.fqa = icmp ugt i64 %i.fpz, -4
  br i1 %i.fqa, label %._crit_edge144.i.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1125142.i.1 = phi i64 [ %i.fqu, %scalar.ph ], [ %.1125142.i.1.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fqb = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.1125142.i.1 ; 2 uses
  %i.fqc = load double, ptr %i.fqb, align 8, !tbaa !216
  %i.fqd = getelementptr [8 x i8], ptr %i.fph, i64 %.1125142.i.1 ; 2 uses
  %i.fqe = load double, ptr %i.fqd, align 8, !tbaa !216
  store double %i.fqe, ptr %i.fqb, align 8, !tbaa !216
  store double %i.fqc, ptr %i.fqd, align 8, !tbaa !216
  %i.fqf = add nuw nsw i64 %.1125142.i.1, 1       ; 2 uses
  %i.fqg = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %i.fqf ; 2 uses
  %i.fqh = load double, ptr %i.fqg, align 8, !tbaa !216
  %i.fqi = getelementptr [8 x i8], ptr %i.fph, i64 %i.fqf ; 2 uses
  %i.fqj = load double, ptr %i.fqi, align 8, !tbaa !216
  store double %i.fqj, ptr %i.fqg, align 8, !tbaa !216
  store double %i.fqh, ptr %i.fqi, align 8, !tbaa !216
  %i.fqk = add nuw nsw i64 %.1125142.i.1, 2       ; 2 uses
  %i.fql = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %i.fqk ; 2 uses
  %i.fqm = load double, ptr %i.fql, align 8, !tbaa !216
  %i.fqn = getelementptr [8 x i8], ptr %i.fph, i64 %i.fqk ; 2 uses
  %i.fqo = load double, ptr %i.fqn, align 8, !tbaa !216
  store double %i.fqo, ptr %i.fql, align 8, !tbaa !216
  store double %i.fqm, ptr %i.fqn, align 8, !tbaa !216
  %i.fqp = add nuw nsw i64 %.1125142.i.1, 3       ; 2 uses
  %i.fqq = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %i.fqp ; 2 uses
  %i.fqr = load double, ptr %i.fqq, align 8, !tbaa !216
  %i.fqs = getelementptr [8 x i8], ptr %i.fph, i64 %i.fqp ; 2 uses
  %i.fqt = load double, ptr %i.fqs, align 8, !tbaa !216
  store double %i.fqt, ptr %i.fqq, align 8, !tbaa !216
  store double %i.fqr, ptr %i.fqs, align 8, !tbaa !216
  %i.fqu = add nuw nsw i64 %.1125142.i.1, 4       ; 2 uses
  %exitcond166.not.i.1.3 = icmp eq i64 %i.fqu, %i.fdz
  br i1 %exitcond166.not.i.1.3, label %._crit_edge144.i.1, label %scalar.ph, !llvm.loop !108

._crit_edge144.i.1:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block3200
  %i.fqv = getelementptr inbounds nuw [8 x i8], ptr %i.fnk, i64 %.0121153.i.1 ; 2 uses
  %i.fqw = load double, ptr %i.fqv, align 8, !tbaa !216
  %i.fqx = getelementptr inbounds [8 x i8], ptr %i.fnk, i64 %spec.select133.i.1.lcssa ; 2 uses
  %i.fqy = load double, ptr %i.fqx, align 8, !tbaa !216
end_hunk_1
