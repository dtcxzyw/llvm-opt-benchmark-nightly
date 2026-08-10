inline.NumInlined: 322
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6embree8Instance15nonlinearBoundsERKNS_4BBoxIfEES4_f:bb.a
  %i.cpw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cpq, <4 x float> %i.cpu)
  %i.cpx = fadd <4 x float> %i.cps, %i.cpm        ; 2 uses
  %i.cpy = fadd <4 x float> %i.cpg, %i.cpx        ; 2 uses
  %i.cpz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cpv, <4 x float> %i.cpy)
  %i.cqa = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cpw, <4 x float> %i.cpy)
  %i.cqb = shufflevector <4 x float> %i.coy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cqc = fmul <4 x float> %i.cnb, %i.cqb        ; 4 uses
  %i.cqd = fadd <4 x float> %i.cqc, %i.cpf        ; 2 uses
  %i.cqe = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cpz, <4 x float> %i.cqd)
  %i.cqf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cqa, <4 x float> %i.cqd)
  %i.cqg = fadd <4 x float> %i.cqc, %i.cpn        ; 2 uses
  %i.cqh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cqe, <4 x float> %i.cqg)
  %i.cqi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cqf, <4 x float> %i.cqg)
  %i.cqj = fadd <4 x float> %i.cqc, %i.cpt        ; 2 uses
  %i.cqk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cqh, <4 x float> %i.cqj)
  %i.cql = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cqi, <4 x float> %i.cqj)
  %i.cqm = fadd <4 x float> %i.cqc, %i.cpx        ; 2 uses
  %i.cqn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cqk, <4 x float> %i.cqm)
  %i.cqo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cql, <4 x float> %i.cqm)
  %i.cqp = fsub <4 x float> %i.cqn, %i.con
  %i.cqq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cqp, <4 x float> zeroinitializer) ; 2 uses
  %i.cqr = fsub <4 x float> %i.cqo, %i.cop
  %i.cqs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cqr, <4 x float> zeroinitializer) ; 2 uses
  %i.cqt = fadd <4 x float> %.sroa.0179.03892.us, %i.cqq ; 2 uses
  %i.cqu = fadd <4 x float> %.sroa.0136.03890.us, %i.cqq ; 2 uses
  %i.cqv = fadd <4 x float> %.sroa.44201.03893.us, %i.cqs ; 2 uses
  %i.cqw = fadd <4 x float> %.sroa.44.03891.us, %i.cqs ; 2 uses
  %indvars.iv.next3922 = add nuw nsw i64 %indvars.iv3921, 1 ; 2 uses
  %lftr.wideiv3924 = trunc i64 %indvars.iv.next3922 to i32
  %exitcond3925.not = icmp eq i32 %i.ag, %lftr.wideiv3924
  br i1 %exitcond3925.not, label %._crit_edge, label %_ZNK6embree8Instance6boundsEmm.exit.us, !llvm.loop !1170

._crit_edge:                                      ; preds = %_ZNK6embree8Instance6boundsEmm.exit, %_ZNK6embree8Instance6boundsEmm.exit.us, %_ZNK6embree8Instance6boundsEmmf.exit
  %.sroa.0136.0.lcssa = phi <4 x float> [ %.sroa.0136.1, %_ZNK6embree8Instance6boundsEmmf.exit ], [ %i.cqu, %_ZNK6embree8Instance6boundsEmm.exit.us ], [ %i.cvo, %_ZNK6embree8Instance6boundsEmm.exit ] ; 3 uses
  %.sroa.44.0.lcssa = phi <4 x float> [ %.sroa.44.1, %_ZNK6embree8Instance6boundsEmmf.exit ], [ %i.cqw, %_ZNK6embree8Instance6boundsEmm.exit.us ], [ %i.cvq, %_ZNK6embree8Instance6boundsEmm.exit ] ; 3 uses
  %.sroa.0179.0.lcssa = phi <4 x float> [ %.sroa.0179.1, %_ZNK6embree8Instance6boundsEmmf.exit ], [ %i.cqt, %_ZNK6embree8Instance6boundsEmm.exit.us ], [ %i.cvn, %_ZNK6embree8Instance6boundsEmm.exit ] ; 3 uses
  %.sroa.44201.0.lcssa = phi <4 x float> [ %.sroa.44201.1, %_ZNK6embree8Instance6boundsEmmf.exit ], [ %i.cqv, %_ZNK6embree8Instance6boundsEmm.exit.us ], [ %i.cvp, %_ZNK6embree8Instance6boundsEmm.exit ] ; 3 uses
  %i.cqx = tail call i32 @llvm.umax.i32(i32 %i.cij, i32 1) ; 2 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cqz = load float, ptr %i.cqy, align 8        ; 2 uses
  %i.cra = fptosi float %i.cqz to i32
  %i.crb = tail call noundef i32 @llvm.smin.i32(i32 %i.cra, i32 %i.ag) ; 2 uses
  %.not3901 = icmp sgt i32 %i.cqx, %i.crb
  br i1 %.not3901, label %._crit_edge3907, label %.lr.ph3906

.lr.ph3906:                                       ; preds = %._crit_edge
  %i.crc = fsub float %i.q, %i.o
  %i.crd = fcmp ogt float %i.atb, 0.000000e+00
  %i.cre = fcmp ogt float %i.boh, 0.000000e+00
  %i.crf = select i1 %i.cre, float %i.boh, float 0.000000e+00
  %i.crg = fsub float 1.000000e+00, %i.crf
  %i.crh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cri = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.crj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.crk = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.crl = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.crm = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.crn = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.cro = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.crp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.crq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.crr = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.crs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.crt = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cru = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.crv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.crw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.crx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cry = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.crz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.csa = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.csb = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.csc = zext nneg i32 %i.cqx to i64            ; 2 uses
  %i.csd = insertelement <2 x float> poison, float %4, i64 0
  %i.cse = shufflevector <2 x float> %i.csd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csf = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csg = insertelement <2 x float> poison, float %i.crc, i64 0
  %i.csh = shufflevector <2 x float> %i.csg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.n

_ZNK6embree8Instance6boundsEmm.exit:              ; preds = %_ZNK6embree8Instance6boundsEmm.exit.preheader, %_ZNK6embree8Instance6boundsEmm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6embree8Instance6boundsEmm.exit ], [ %i.cji, %_ZNK6embree8Instance6boundsEmm.exit.preheader ] ; 3 uses
  %.sroa.44201.03893 = phi <4 x float> [ %i.cvp, %_ZNK6embree8Instance6boundsEmm.exit ], [ %.sroa.44201.1, %_ZNK6embree8Instance6boundsEmm.exit.preheader ] ; 2 uses
  %.sroa.0179.03892 = phi <4 x float> [ %i.cvn, %_ZNK6embree8Instance6boundsEmm.exit ], [ %.sroa.0179.1, %_ZNK6embree8Instance6boundsEmm.exit.preheader ] ; 2 uses
  %.sroa.44.03891 = phi <4 x float> [ %i.cvq, %_ZNK6embree8Instance6boundsEmm.exit ], [ %.sroa.44.1, %_ZNK6embree8Instance6boundsEmm.exit.preheader ] ; 2 uses
  %.sroa.0136.03890 = phi <4 x float> [ %i.cvo, %_ZNK6embree8Instance6boundsEmm.exit ], [ %.sroa.0136.1, %_ZNK6embree8Instance6boundsEmm.exit.preheader ] ; 2 uses
  %i.csi = trunc nsw i64 %indvars.iv to i32
  %i.csj = sitofp i32 %i.csi to float             ; 2 uses
  %i.csk = fdiv float %i.csj, %4
  %i.csl = getelementptr inbounds nuw [64 x i8], ptr %i.ciu, i64 %indvars.iv ; 4 uses
  %i.csm = load <4 x float>, ptr %i.csl, align 16, !noalias !1171 ; 2 uses
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csl, i64 16
  %i.cso = load <4 x float>, ptr %i.csn, align 16, !noalias !1174 ; 2 uses
  %i.csp = getelementptr inbounds nuw i8, ptr %i.csl, i64 32
  %i.csq = load <4 x float>, ptr %i.csp, align 16, !noalias !1177 ; 2 uses
  %i.csr = getelementptr inbounds nuw i8, ptr %i.csl, i64 48
  %i.css = load <4 x float>, ptr %i.csr, align 16, !noalias !1180 ; 2 uses
  %i.cst = fmul float %i.ciy, %i.csj
  %i.csu = fsub float %i.csk, %i.o
  %i.csv = insertelement <2 x float> poison, float %i.csu, i64 0
  %i.csw = insertelement <2 x float> %i.csv, float %i.cst, i64 1
  %i.csx = fdiv <2 x float> %i.csw, %i.cjk        ; 3 uses
  %i.csy = shufflevector <2 x float> %i.csx, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.csz = fmul <4 x float> %.sroa.0136.03890, %i.csy
  %i.cta = fmul <4 x float> %.sroa.44.03891, %i.csy
  %i.ctb = extractelement <2 x float> %i.csx, i64 1
  %i.ctc = fadd float %i.ciw, %i.ctb              ; 2 uses
  %i.ctd = insertelement <2 x float> %i.csx, float %i.ctc, i64 1
  %i.cte = fsub <2 x float> splat (float 1.000000e+00), %i.ctd ; 2 uses
  %i.ctf = shufflevector <2 x float> %i.cte, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ctg = fmul <4 x float> %.sroa.0179.03892, %i.ctf
  %i.cth = fadd <4 x float> %i.csz, %i.ctg
  %i.cti = fmul <4 x float> %.sroa.44201.03893, %i.ctf
  %i.ctj = fadd <4 x float> %i.cta, %i.cti
  %i.ctk = insertelement <4 x float> poison, float %i.ctc, i64 0
  %i.ctl = shufflevector <4 x float> %i.ctk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ctm = fmul <4 x float> %i.cjc, %i.ctl
  %i.ctn = shufflevector <2 x float> %i.cte, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cto = fmul <4 x float> %i.cjd, %i.ctn
  %i.ctp = fadd <4 x float> %i.ctm, %i.cto        ; 3 uses
  %i.ctq = fmul <4 x float> %i.cjg, %i.ctl
  %i.ctr = fmul <4 x float> %i.cjh, %i.ctn
  %i.cts = fadd <4 x float> %i.ctq, %i.ctr        ; 3 uses
  %i.ctt = shufflevector <4 x float> %i.ctp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ctu = shufflevector <4 x float> %i.ctp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ctv = shufflevector <4 x float> %i.ctp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ctw = fmul <4 x float> %i.csq, %i.ctv
  %i.ctx = fadd <4 x float> %i.css, %i.ctw        ; 2 uses
  %i.cty = fmul <4 x float> %i.cso, %i.ctu        ; 2 uses
  %i.ctz = fadd <4 x float> %i.cty, %i.ctx        ; 2 uses
  %i.cua = fmul <4 x float> %i.csm, %i.ctt        ; 4 uses
  %i.cub = fadd <4 x float> %i.cua, %i.ctz        ; 2 uses
  %i.cuc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cub)
  %i.cud = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cub)
  %i.cue = shufflevector <4 x float> %i.cts, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cuf = fmul <4 x float> %i.csq, %i.cue
  %i.cug = fadd <4 x float> %i.css, %i.cuf        ; 2 uses
  %i.cuh = fadd <4 x float> %i.cty, %i.cug        ; 2 uses
  %i.cui = fadd <4 x float> %i.cua, %i.cuh        ; 2 uses
  %i.cuj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cuc, <4 x float> %i.cui)
  %i.cuk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cud, <4 x float> %i.cui)
  %i.cul = shufflevector <4 x float> %i.cts, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cum = fmul <4 x float> %i.cso, %i.cul        ; 2 uses
  %i.cun = fadd <4 x float> %i.cum, %i.ctx        ; 2 uses
  %i.cuo = fadd <4 x float> %i.cua, %i.cun        ; 2 uses
  %i.cup = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cuj, <4 x float> %i.cuo)
  %i.cuq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cuk, <4 x float> %i.cuo)
  %i.cur = fadd <4 x float> %i.cum, %i.cug        ; 2 uses
  %i.cus = fadd <4 x float> %i.cua, %i.cur        ; 2 uses
  %i.cut = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cup, <4 x float> %i.cus)
  %i.cuu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cuq, <4 x float> %i.cus)
  %i.cuv = shufflevector <4 x float> %i.cts, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cuw = fmul <4 x float> %i.csm, %i.cuv        ; 4 uses
  %i.cux = fadd <4 x float> %i.cuw, %i.ctz        ; 2 uses
  %i.cuy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cut, <4 x float> %i.cux)
  %i.cuz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cuu, <4 x float> %i.cux)
  %i.cva = fadd <4 x float> %i.cuw, %i.cuh        ; 2 uses
  %i.cvb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cuy, <4 x float> %i.cva)
  %i.cvc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cuz, <4 x float> %i.cva)
  %i.cvd = fadd <4 x float> %i.cuw, %i.cun        ; 2 uses
  %i.cve = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cvb, <4 x float> %i.cvd)
  %i.cvf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cvc, <4 x float> %i.cvd)
  %i.cvg = fadd <4 x float> %i.cuw, %i.cur        ; 2 uses
  %i.cvh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cve, <4 x float> %i.cvg)
  %i.cvi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cvf, <4 x float> %i.cvg)
  %i.cvj = fsub <4 x float> %i.cvh, %i.cth
  %i.cvk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cvj, <4 x float> zeroinitializer) ; 2 uses
  %i.cvl = fsub <4 x float> %i.cvi, %i.ctj
  %i.cvm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cvl, <4 x float> zeroinitializer) ; 2 uses
  %i.cvn = fadd <4 x float> %.sroa.0179.03892, %i.cvk ; 2 uses
  %i.cvo = fadd <4 x float> %.sroa.0136.03890, %i.cvk ; 2 uses
  %i.cvp = fadd <4 x float> %.sroa.44201.03893, %i.cvm ; 2 uses
  %i.cvq = fadd <4 x float> %.sroa.44.03891, %i.cvm ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ag, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6embree8Instance6boundsEmm.exit, !llvm.loop !1170

._crit_edge3907:                                  ; preds = %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85, %._crit_edge
  %.sroa.7.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.dah, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85 ] ; 2 uses
  %.sroa.089.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.daf, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85 ] ; 2 uses
  %i.cvr = fadd <4 x float> %.sroa.0179.0.lcssa, %.sroa.089.0.lcssa
  %i.cvs = fadd <4 x float> %.sroa.0136.0.lcssa, %.sroa.089.0.lcssa
  %i.cvt = fadd <4 x float> %.sroa.44201.0.lcssa, %.sroa.7.0.lcssa
  %i.cvu = fadd <4 x float> %.sroa.44.0.lcssa, %.sroa.7.0.lcssa
  store <4 x float> %i.cvr, ptr %0, align 16
  store <4 x float> %i.cvt, ptr %i.a, align 16
  store <4 x float> %i.cvs, ptr %i.b, align 16
  store <4 x float> %i.cvu, ptr %i.c, align 16
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph3906, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85
  %indvars.iv3926 = phi i64 [ %i.csc, %.lr.ph3906 ], [ %indvars.iv.next3927, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85 ] ; 6 uses
  %i.cvv = phi i32 [ %i.crb, %.lr.ph3906 ], [ %i.dak, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85 ]
  %i.cvw = phi float [ %i.cqz, %.lr.ph3906 ], [ %i.dai, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85 ]
  %.sroa.089.03903 = phi <4 x float> [ zeroinitializer, %.lr.ph3906 ], [ %i.daf, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85 ]
  %.sroa.7.03902 = phi <4 x float> [ zeroinitializer, %.lr.ph3906 ], [ %i.dah, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85 ]
  %i.cvx = icmp eq i64 %indvars.iv3926, %i.csc
  %i.cvy = and i1 %i.crd, %i.cvx
  %i.cvz = select i1 %i.cvy, float %i.atb, float 0.000000e+00 ; 2 uses
  %i.cwa = zext i32 %i.cvv to i64
  %i.cwb = icmp eq i64 %indvars.iv3926, %i.cwa
  %i.cwc = select i1 %i.cwb, float %i.crg, float 1.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.cwd = load ptr, ptr %i.crh, align 8, !noalias !1183 ; 4 uses
  %i.cwe = load float, ptr %i.cri, align 4, !noalias !1183 ; 3 uses
  %i.cwf = load float, ptr %i.crj, align 16, !noalias !1183
  %i.cwg = fsub float %i.cwf, %i.cwe
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwd, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwd, i64 48
  %i.cwj = load <4 x float>, ptr %i.cwi, align 16, !noalias !1189 ; 2 uses
  %i.cwk = load <4 x float>, ptr %i.cwh, align 16, !noalias !1196 ; 2 uses
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwd, i64 32
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cwd, i64 64
  %i.cwn = load <4 x float>, ptr %i.cwm, align 16, !noalias !1203 ; 2 uses
  %i.cwo = load <4 x float>, ptr %i.cwl, align 16, !noalias !1208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.cwp = insertelement <2 x float> poison, float %i.cwg, i64 0
  %i.cwq = shufflevector <2 x float> %i.cwp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cwr = insertelement <2 x float> poison, float %i.cvw, i64 0
  %i.cws = shufflevector <2 x float> %i.cwr, <2 x float> poison, <2 x i32> zeroinitializer
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.cwt = add nsw i64 %indvars.iv3926, -1        ; 2 uses
  %i.cwu = trunc nuw nsw i64 %indvars.iv3926 to i32
  %i.cwv = trunc nuw nsw i64 %i.cwt to i32
  %i.cww = uitofp nneg i32 %i.cwu to float
  %i.cwx = uitofp nneg i32 %i.cwv to float
  %i.cwy = insertelement <2 x float> poison, float %i.cwx, i64 0
  %i.cwz = insertelement <2 x float> %i.cwy, float %i.cww, i64 1 ; 2 uses
  %i.cxa = fdiv <2 x float> %i.cwz, %i.cse
  %i.cxb = fsub <2 x float> %i.cxa, %i.csf
  %i.cxc = fdiv <2 x float> %i.cxb, %i.csh        ; 3 uses
  %i.cxd = fmul <2 x float> %i.cwq, %i.cwz
  %i.cxe = fdiv <2 x float> %i.cxd, %i.cws        ; 2 uses
  %i.cxf = extractelement <2 x float> %i.cxe, i64 0
  %i.cxg = fadd float %i.cwe, %i.cxf              ; 2 uses
  %i.cxh = fsub float 1.000000e+00, %i.cxg
  %i.cxi = insertelement <4 x float> poison, float %i.cxg, i64 0
  %i.cxj = shufflevector <4 x float> %i.cxi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cxk = fmul <4 x float> %i.cwj, %i.cxj
  %i.cxl = insertelement <4 x float> poison, float %i.cxh, i64 0
  %i.cxm = shufflevector <4 x float> %i.cxl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cxn = fmul <4 x float> %i.cwk, %i.cxm
  %i.cxo = fadd <4 x float> %i.cxk, %i.cxn
  %i.cxp = fmul <4 x float> %i.cwn, %i.cxj
  %i.cxq = fmul <4 x float> %i.cwo, %i.cxm
  %i.cxr = fadd <4 x float> %i.cxp, %i.cxq
  store <4 x float> %i.cxo, ptr %21, align 16, !alias.scope !1186
  store <4 x float> %i.cxr, ptr %i.crk, align 16, !alias.scope !1186
  %i.cxs = extractelement <2 x float> %i.cxe, i64 1
  %i.cxt = fadd float %i.cwe, %i.cxs              ; 2 uses
  %i.cxu = fsub float 1.000000e+00, %i.cxt
  %i.cxv = insertelement <4 x float> poison, float %i.cxt, i64 0
  %i.cxw = shufflevector <4 x float> %i.cxv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cxx = fmul <4 x float> %i.cwj, %i.cxw
  %i.cxy = insertelement <4 x float> poison, float %i.cxu, i64 0
  %i.cxz = shufflevector <4 x float> %i.cxy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cya = fmul <4 x float> %i.cwk, %i.cxz
  %i.cyb = fadd <4 x float> %i.cxx, %i.cya
  %i.cyc = fmul <4 x float> %i.cwn, %i.cxw
  %i.cyd = fmul <4 x float> %i.cwo, %i.cxz
  %i.cye = fadd <4 x float> %i.cyc, %i.cyd
  store <4 x float> %i.cyb, ptr %22, align 16, !alias.scope !1215
  store <4 x float> %i.cye, ptr %i.crl, align 16, !alias.scope !1215
  %i.cyf = shufflevector <2 x float> %i.cxc, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cyg = fmul <4 x float> %.sroa.0136.0.lcssa, %i.cyf
  %i.cyh = fsub <2 x float> splat (float 1.000000e+00), %i.cxc ; 2 uses
  %i.cyi = shufflevector <2 x float> %i.cyh, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cyj = fmul <4 x float> %.sroa.0179.0.lcssa, %i.cyi
  %i.cyk = fadd <4 x float> %i.cyg, %i.cyj
  %i.cyl = fmul <4 x float> %.sroa.44.0.lcssa, %i.cyf
  %i.cym = fmul <4 x float> %.sroa.44201.0.lcssa, %i.cyi
  %i.cyn = fadd <4 x float> %i.cyl, %i.cym
  store <4 x float> %i.cyk, ptr %23, align 16
  store <4 x float> %i.cyn, ptr %i.crm, align 16
  %i.cyo = shufflevector <2 x float> %i.cxc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cyp = fmul <4 x float> %.sroa.0136.0.lcssa, %i.cyo
  %i.cyq = shufflevector <2 x float> %i.cyh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cyr = fmul <4 x float> %.sroa.0179.0.lcssa, %i.cyq
  %i.cys = fadd <4 x float> %i.cyp, %i.cyr
  %i.cyt = fmul <4 x float> %.sroa.44.0.lcssa, %i.cyo
  %i.cyu = fmul <4 x float> %.sroa.44201.0.lcssa, %i.cyq
  %i.cyv = fadd <4 x float> %i.cyt, %i.cyu
  store <4 x float> %i.cys, ptr %24, align 16
  store <4 x float> %i.cyv, ptr %i.crn, align 16
  %i.cyw = load i32, ptr %i.atc, align 4, !noalias !1218
  %i.cyx = and i32 %i.cyw, 65280
  %i.cyy = icmp eq i32 %i.cyx, 256
  %i.cyz = load ptr, ptr %i.cro, align 16, !noalias !1218
  %i.cza = getelementptr [64 x i8], ptr %i.cyz, i64 %i.cwt ; 16 uses
  %i.czb = getelementptr i8, ptr %i.cza, i64 64   ; 3 uses
  br i1 %i.cyy, label %bb.o, label %bb.p, !prof !12

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !1218
  call void @_ZN6embree28MotionDerivativeCoefficientsC2ERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3fxEEEEES7_(ptr noundef nonnull align 4 dereferenceable(676) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.cza, ptr noundef nonnull align 16 dereferenceable(64) %i.czb), !noalias !1218
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !1218
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.czc = load <4 x float>, ptr %i.cza, align 16, !noalias !1224
  store <4 x float> %i.czc, ptr %6, align 16, !alias.scope !1221, !noalias !1218
  %i.czd = getelementptr inbounds nuw i8, ptr %i.cza, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.cze = load <4 x float>, ptr %i.czd, align 16, !noalias !1228
  store <4 x float> %i.cze, ptr %i.crv, align 16, !alias.scope !1225, !noalias !1218
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cza, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.czg = load <4 x float>, ptr %i.czf, align 16, !noalias !1232
  store <4 x float> %i.czg, ptr %i.crw, align 16, !alias.scope !1229, !noalias !1218
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cza, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.czi = load <4 x float>, ptr %i.czh, align 16, !noalias !1236
  store <4 x float> %i.czi, ptr %i.crx, align 16, !alias.scope !1233, !noalias !1218
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !1218
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.czj = load <4 x float>, ptr %i.czb, align 16, !noalias !1240
  store <4 x float> %i.czj, ptr %7, align 16, !alias.scope !1237, !noalias !1218
  %i.czk = getelementptr i8, ptr %i.cza, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.czl = load <4 x float>, ptr %i.czk, align 16, !noalias !1244
  store <4 x float> %i.czl, ptr %i.cry, align 16, !alias.scope !1241, !noalias !1218
  %i.czm = getelementptr i8, ptr %i.cza, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.czn = load <4 x float>, ptr %i.czm, align 16, !noalias !1248
  store <4 x float> %i.czn, ptr %i.crz, align 16, !alias.scope !1245, !noalias !1218
  %i.czo = getelementptr i8, ptr %i.cza, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.czp = load <4 x float>, ptr %i.czo, align 16, !noalias !1252
  store <4 x float> %i.czp, ptr %i.csa, align 16, !alias.scope !1249, !noalias !1218
  call void @_ZN6embree21boundSegmentNonlinearERKNS_28MotionDerivativeCoefficientsERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEES9_RKNS_4BBoxIS5_EESD_SD_SD_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.1") align 16 %20, ptr noundef nonnull align 4 dereferenceable(676) %5, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull readonly align 16 dereferenceable(32) %21, ptr noundef nonnull readonly align 16 dereferenceable(32) %22, ptr noundef nonnull readonly align 16 dereferenceable(32) %23, ptr noundef nonnull readonly align 16 dereferenceable(32) %24, float noundef %i.cvz, float noundef %i.cwc)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !1218
  br label %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !1218
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.czq = load <4 x float>, ptr %i.cza, align 16, !noalias !1256
  store <4 x float> %i.czq, ptr %8, align 16, !alias.scope !1253, !noalias !1218
  %i.czr = getelementptr inbounds nuw i8, ptr %i.cza, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.czs = load <4 x float>, ptr %i.czr, align 16, !noalias !1260
  store <4 x float> %i.czs, ptr %i.crp, align 16, !alias.scope !1257, !noalias !1218
  %i.czt = getelementptr inbounds nuw i8, ptr %i.cza, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.czu = load <4 x float>, ptr %i.czt, align 16, !noalias !1264
  store <4 x float> %i.czu, ptr %i.crq, align 16, !alias.scope !1261, !noalias !1218
  %i.czv = getelementptr inbounds nuw i8, ptr %i.cza, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.czw = load <4 x float>, ptr %i.czv, align 16, !noalias !1268
  store <4 x float> %i.czw, ptr %i.crr, align 16, !alias.scope !1265, !noalias !1218
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !1218
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %i.czx = load <4 x float>, ptr %i.czb, align 16, !noalias !1272
  store <4 x float> %i.czx, ptr %9, align 16, !alias.scope !1269, !noalias !1218
  %i.czy = getelementptr i8, ptr %i.cza, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.czz = load <4 x float>, ptr %i.czy, align 16, !noalias !1276
  store <4 x float> %i.czz, ptr %i.crs, align 16, !alias.scope !1273, !noalias !1218
  %i.daa = getelementptr i8, ptr %i.cza, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.dab = load <4 x float>, ptr %i.daa, align 16, !noalias !1280
  store <4 x float> %i.dab, ptr %i.crt, align 16, !alias.scope !1277, !noalias !1218
  %i.dac = getelementptr i8, ptr %i.cza, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  %i.dad = load <4 x float>, ptr %i.dac, align 16, !noalias !1284
  store <4 x float> %i.dad, ptr %i.cru, align 16, !alias.scope !1281, !noalias !1218
  call void @_ZN6embree18boundSegmentLinearERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEES6_RKNS_4BBoxIS2_EESA_SA_SA_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.1") align 16 %20, ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef nonnull readonly align 16 dereferenceable(32) %21, ptr noundef nonnull readonly align 16 dereferenceable(32) %22, ptr noundef nonnull readonly align 16 dereferenceable(32) %23, ptr noundef nonnull readonly align 16 dereferenceable(32) %24, float noundef %i.cvz, float noundef %i.cwc)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1218
  br label %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85

_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit85: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.dae = load <4 x float>, ptr %20, align 16, !noalias !1285
  %i.daf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.089.03903, <4 x float> %i.dae) ; 2 uses
  %i.dag = load <4 x float>, ptr %i.csb, align 16, !noalias !1288
  %i.dah = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.03902, <4 x float> %i.dag) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %indvars.iv.next3927 = add nuw nsw i64 %indvars.iv3926, 1
  %i.dai = load float, ptr %i.cqy, align 8        ; 2 uses
  %i.daj = fptosi float %i.dai to i32
  %i.dak = call noundef i32 @llvm.smin.i32(i32 %i.daj, i32 %i.ag) ; 2 uses
  %i.dal = sext i32 %i.dak to i64
  %.not.not = icmp slt i64 %indvars.iv3926, %i.dal
  br i1 %.not.not, label %bb.n, label %._crit_edge3907, !llvm.loop !1291

bb.q:                                             ; preds = %._crit_edge3907, %_ZNK6embree8Instance12boundSegmentEmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6embree4sse214createInstanceEPNS_6DeviceE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #28 ; 13 uses
end_hunk_0
