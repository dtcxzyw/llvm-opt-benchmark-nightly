Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.17:bb.a
  %i.crb = load float, ptr %i.cqj, align 4, !tbaa !56
  %i.crc = fmul fast float %i.cqq, f0x3EB504F3
  %i.crd = fadd fast float %i.crc, %i.crb
  %i.cre = fmul fast float %i.cqr, f0x403504F3
  %i.crf = fadd fast float %i.crd, %i.cre         ; 2 uses
  %i.crg = getelementptr inbounds nuw [4 x i8], ptr %i.cqe, i64 %i.clh
  %i.crh = getelementptr inbounds nuw [4 x i8], ptr %i.cqf, i64 %i.clh
  %i.cri = getelementptr inbounds nuw [4 x i8], ptr %i.cqg, i64 %i.clh
  %i.crj = getelementptr inbounds nuw [4 x i8], ptr %i.cqh, i64 %i.clh
  %i.crk = getelementptr inbounds nuw [4 x i8], ptr %i.cqi, i64 %i.clh
  %i.crl = getelementptr inbounds nuw [4 x i8], ptr %i.cqj, i64 %i.clh
  %i.crm = load float, ptr %i.crh, align 4, !tbaa !56 ; 2 uses
  %i.crn = load float, ptr %i.cri, align 4, !tbaa !56 ; 2 uses
  %i.cro = fadd fast float %i.crn, %i.crm         ; 2 uses
  %i.crp = load float, ptr %i.crj, align 4, !tbaa !56 ; 2 uses
  %i.crq = load float, ptr %i.crk, align 4, !tbaa !56 ; 2 uses
  %i.crr = fadd fast float %i.crq, %i.crp         ; 2 uses
  %i.crs = fsub fast float %i.crm, %i.crn         ; 2 uses
  %i.crt = fsub fast float %i.crp, %i.crq         ; 2 uses
  %i.cru = load float, ptr %i.crg, align 4, !tbaa !56
  %i.crv = fadd fast float %i.cru, %i.cro
  %i.crw = fadd fast float %i.crv, %i.crr
  %i.crx = fmul fast float %i.crs, f0x3F3504F3
  %i.cry = fmul fast float %i.crt, f0x3FB504F3
  %i.crz = fadd fast float %i.cry, %i.crx
  %i.csa = fmul fast float %i.cro, 5.000000e-01
  %i.csb = fmul fast float %i.crr, 2.000000e+00
  %i.csc = fadd fast float %i.csb, %i.csa
  %i.csd = load float, ptr %i.crl, align 4, !tbaa !56
  %i.cse = fmul fast float %i.crs, f0x3EB504F3
  %i.csf = fadd fast float %i.cse, %i.csd
  %i.csg = fmul fast float %i.crt, f0x403504F3
  %i.csh = fadd fast float %i.csf, %i.csg
  %i.csi = trunc i64 %indvars.iv2091.i to i32
  %i.csj = add i32 %.047139, %i.csi               ; 2 uses
  %i.csk = sdiv i32 %i.csj, %i.fb
  %i.csl = srem i32 %i.csj, %i.fb
  %i.csm = shl nsw i32 %i.csk, 2                  ; 5 uses
  %i.csn = sext i32 %i.csm to i64
  %.reass2023.us.i = mul i64 %factor.op.mul2022.us.i, %i.csn
  %i.cso = getelementptr inbounds nuw i8, ptr %i.clv, i64 %.reass2023.us.i
  %i.csp = shl nsw i32 %i.csl, 2                  ; 4 uses
  %i.csq = sext i32 %i.csp to i64
  %i.csr = getelementptr inbounds [2 x i8], ptr %i.cso, i64 %i.csq ; 6 uses
  %i.css = or disjoint i32 %i.csp, 1
  %i.cst = icmp slt i32 %i.css, %i.eu             ; 4 uses
  %i.csu = or disjoint i32 %i.csp, 2
  %i.csv = icmp slt i32 %i.csu, %i.eu             ; 4 uses
  %i.csw = or disjoint i32 %i.csp, 3
  %i.csx = icmp slt i32 %i.csw, %i.eu             ; 4 uses
  %.not791.us.i = icmp slt i32 %i.csm, %i.ev
  br i1 %.not791.us.i, label %bb.bz, label %bb.cp

bb.bz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  %i.csy = fadd fast float %i.coq, %i.cno         ; 2 uses
  %i.csz = fadd fast float %i.cqu, %i.cps         ; 2 uses
  %i.cta = fsub fast float %i.cno, %i.coq         ; 2 uses
  %i.ctb = fsub fast float %i.cps, %i.cqu         ; 2 uses
  %i.ctc = fadd fast float %i.cmm, %i.clr
  %i.ctd = fadd fast float %i.ctc, %i.csy
  %i.cte = fadd fast float %i.ctd, %i.csz         ; 8 uses
  %i.ctf = fmul fast float %i.cta, f0x3F3504F3
  %i.ctg = fadd fast float %i.clr, %i.ctf
  %i.cth = fmul fast float %i.ctb, f0x3FB504F3
  %i.cti = fadd fast float %i.cth, %i.ctg         ; 8 uses
  %i.ctj = fmul fast float %i.csy, 5.000000e-01
  %i.ctk = fadd fast float %i.clr, %i.ctj
  %i.ctl = fmul fast float %i.csz, 2.000000e+00
  %i.ctm = fadd fast float %i.ctl, %i.ctk         ; 8 uses
  %i.ctn = fmul fast float %i.cta, f0x3EB504F3
  %i.cto = fmul fast float %i.ctb, f0x403504F3
  %i.ctp = fadd fast float %i.clr, %i.ctn
  %i.ctq = fadd fast float %i.ctp, %i.crw
  %i.ctr = fadd fast float %i.ctq, %i.cto         ; 8 uses
  %i.cts = insertelement <4 x float> poison, float %i.cte, i64 0
  %i.ctt = insertelement <4 x float> %i.cts, float %i.cti, i64 1
  %i.ctu = insertelement <4 x float> %i.ctt, float %i.ctm, i64 2
  %i.ctv = insertelement <4 x float> %i.ctu, float %i.ctr, i64 3 ; 6 uses
  switch i32 %i.et, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i
    i32 6, label %bb.ca
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.ctw = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %i.ctx = load float, ptr %i.ctw, align 4, !tbaa !56 ; 9 uses
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctw, i64 4
  %i.ctz = load float, ptr %i.cty, align 4, !tbaa !56 ; 5 uses
  %i.cua = fneg fast float %i.ctz
  %i.cub = fdiv fast float %i.cua, %i.ctx         ; 8 uses
  %i.cuc = fcmp fast olt float %i.cte, %i.cub
  br i1 %i.cuc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.cud = fdiv fast float 1.000000e+00, %i.ctx
  %i.cue = fadd fast float %i.cub, %i.cud
  %i.cuf = fcmp fast ogt float %i.cte, %i.cue
  br i1 %i.cuf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.cug = fmul fast float %i.ctx, %i.cte
  %i.cuh = fadd fast float %i.cug, %i.ctz
  %i.cui = fmul fast float %i.cuh, %i.cte
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %.112321845.us.i = phi float [ %i.cui, %bb.cc ], [ 0.000000e+00, %bb.ca ], [ %i.cte, %bb.cb ]
  %i.cuj = fcmp fast olt float %i.cti, %i.cub
  br i1 %i.cuj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i, label %bb.cd

bb.cd:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i
  %i.cuk = fdiv fast float 1.000000e+00, %i.ctx
  %i.cul = fadd fast float %i.cub, %i.cuk
  %i.cum = fcmp fast ogt float %i.cti, %i.cul
  br i1 %i.cum, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.cun = fmul fast float %i.ctx, %i.cti
  %i.cuo = fadd fast float %i.cun, %i.ctz
  %i.cup = fmul fast float %i.cuo, %i.cti
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i: ; preds = %bb.ce, %bb.cd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i
  %.112341868.us.i = phi float [ %i.cup, %bb.ce ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i ], [ %i.cti, %bb.cd ]
  %i.cuq = fcmp fast olt float %i.ctm, %i.cub
  br i1 %i.cuq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i, label %bb.cf

bb.cf:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i
  %i.cur = fdiv fast float 1.000000e+00, %i.ctx
  %i.cus = fadd fast float %i.cub, %i.cur
  %i.cut = fcmp fast ogt float %i.ctm, %i.cus
  br i1 %i.cut, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.cuu = fmul fast float %i.ctx, %i.ctm
  %i.cuv = fadd fast float %i.cuu, %i.ctz
  %i.cuw = fmul fast float %i.cuv, %i.ctm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i: ; preds = %bb.cg, %bb.cf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i
  %.112361904.us.i = phi float [ %i.cuw, %bb.cg ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i ], [ %i.ctm, %bb.cf ]
  %i.cux = fcmp fast olt float %i.ctr, %i.cub
  %i.cuy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.112321845.us.i, i64 0
  %i.cuz = insertelement <4 x float> %i.cuy, float %.112341868.us.i, i64 1
  %i.cva = insertelement <4 x float> %i.cuz, float %.112361904.us.i, i64 2 ; 3 uses
  br i1 %i.cux, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ch

bb.ch:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i
  %i.cvb = fdiv fast float 1.000000e+00, %i.ctx
  %i.cvc = fadd fast float %i.cub, %i.cvb
  %i.cvd = fcmp fast ogt float %i.ctr, %i.cvc
  %i.cve = insertelement <4 x float> %i.cva, float %i.ctr, i64 3
  br i1 %i.cvd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.cvf = fmul fast float %i.ctx, %i.ctr
  %i.cvg = fadd fast float %i.cvf, %i.ctz
  %i.cvh = fmul fast float %i.cvg, %i.ctr
  %i.cvi = insertelement <4 x float> %i.cva, float %i.cvh, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i: ; preds = %bb.bz
  %i.cvj = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cte)
  %i.cvk = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cti)
  %i.cvl = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ctm)
  %i.cvm = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ctr)
  %i.cvn = fadd fast float %i.cvj, 1.000000e+00
  %i.cvo = call fast float @llvm.log.f32(float %i.cvn)
  %i.cvp = call fast float @llvm.tanh.f32(float %i.cvo)
  %i.cvq = fadd fast float %i.cvk, 1.000000e+00
  %i.cvr = call fast float @llvm.log.f32(float %i.cvq)
  %i.cvs = call fast float @llvm.tanh.f32(float %i.cvr)
  %i.cvt = fadd fast float %i.cvl, 1.000000e+00
  %i.cvu = call fast float @llvm.log.f32(float %i.cvt)
  %i.cvv = call fast float @llvm.tanh.f32(float %i.cvu)
  %i.cvw = fadd fast float %i.cvm, 1.000000e+00
  %i.cvx = call fast float @llvm.log.f32(float %i.cvw)
  %i.cvy = call fast float @llvm.tanh.f32(float %i.cvx)
  %i.cvz = insertelement <4 x float> poison, float %i.cvp, i64 0
  %i.cwa = insertelement <4 x float> %i.cvz, float %i.cvs, i64 1
  %i.cwb = insertelement <4 x float> %i.cwa, float %i.cvv, i64 2
  %i.cwc = insertelement <4 x float> %i.cwb, float %i.cvy, i64 3
  %i.cwd = fmul fast <4 x float> %i.cwc, %i.ctv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i: ; preds = %bb.bz
  %i.cwe = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ctv, <4 x float> splat (float f0x42B0C0A5))
  %i.cwf = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cwe, <4 x float> splat (float f0xC2B0C0A5))
  %i.cwg = fneg fast <4 x float> %i.cwf
  %i.cwh = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cwg)
  %i.cwi = fadd fast <4 x float> %i.cwh, splat (float 1.000000e+00)
  %i.cwj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cwi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i: ; preds = %bb.bz
  %i.cwk = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.cwk, i64 4
  %19 = load float, ptr %i.cwk, align 4, !tbaa !56 ; 3 uses
  %i.cwl = load float, ptr %18, align 4, !tbaa !56 ; 4 uses
  %20 = insertelement <2 x float> poison, float %i.cte, i64 0
  %21 = insertelement <2 x float> %20, float %i.cti, i64 1
  %22 = insertelement <2 x float> poison, float %19, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %21, <2 x float> %23) ; 2 uses
  %25 = insertelement <2 x float> poison, float %i.cwl, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %27 = fcmp fast ogt <2 x float> %24, %26
  %28 = select <2 x i1> %27, <2 x float> %26, <2 x float> %24
  %.01235.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ctm, float %19) ; 2 uses
  %i.cwm = fcmp fast ogt float %.01235.us.i, %i.cwl
  %.112361914.us.i = select i1 %i.cwm, float %i.cwl, float %.01235.us.i
  %.01237.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ctr, float %19)
  %spec.select1945.us.i = call nnan ninf nsz float @llvm.minnum.f32(float %.01237.us.i, float %i.cwl)
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cwn = insertelement <4 x float> %29, float %.112361914.us.i, i64 2
  %i.cwo = insertelement <4 x float> %i.cwn, float %spec.select1945.us.i, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i: ; preds = %bb.bz
  %i.cwp = load ptr, ptr %15, align 8, !tbaa !37
  %i.cwq = load float, ptr %i.cwp, align 4, !tbaa !56
  %i.cwr = fcmp fast ogt <4 x float> %i.ctv, zeroinitializer
  %i.cws = insertelement <4 x float> poison, float %i.cwq, i64 0
  %i.cwt = shufflevector <4 x float> %i.cws, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cwu = select <4 x i1> %i.cwr, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cwt
  %i.cwv = fmul fast <4 x float> %i.cwu, %i.ctv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i: ; preds = %bb.bz
  %i.cww = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ctv, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i, %bb.ci, %bb.ch, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i, %bb.bz
  %i.cwx = phi <4 x float> [ %i.cva, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i ], [ %i.cww, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i ], [ %i.cwv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i ], [ %i.ctv, %bb.bz ], [ %i.cwo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i ], [ %i.cwj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i ], [ %i.cwd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i ], [ %i.cvi, %bb.ci ], [ %i.cve, %bb.ch ] ; 4 uses
  %i.cwy = bitcast <4 x float> %i.cwx to <8 x i16>
  %i.cwz = extractelement <8 x i16> %i.cwy, i64 1
  store i16 %i.cwz, ptr %i.csr, align 2, !tbaa !116
  br i1 %i.cst, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.cxa = bitcast <4 x float> %i.cwx to <8 x i16>
  %i.cxb = extractelement <8 x i16> %i.cxa, i64 3
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.csr, i64 2
  store i16 %i.cxb, ptr %i.cxc, align 2, !tbaa !116
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  br i1 %i.csv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.cxd = bitcast <4 x float> %i.cwx to <8 x i16>
  %i.cxe = extractelement <8 x i16> %i.cxd, i64 5
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.csr, i64 4
  store i16 %i.cxe, ptr %i.cxf, align 2, !tbaa !116
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br i1 %i.csx, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.cxg = bitcast <4 x float> %i.cwx to <8 x i16>
  %i.cxh = extractelement <8 x i16> %i.cxg, i64 7
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.csr, i64 6
  store i16 %i.cxh, ptr %i.cxi, align 2, !tbaa !116
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.cxj = getelementptr inbounds [2 x i8], ptr %i.csr, i64 %i.cli
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1.us.i = phi ptr [ %i.csr, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.cxj, %bb.co ] ; 6 uses
  %i.cxk = or disjoint i32 %i.csm, 1
  %.not791.us.i.1 = icmp slt i32 %i.cxk, %i.ev
  br i1 %.not791.us.i.1, label %bb.cq, label %bb.dg

bb.cq:                                            ; preds = %bb.cp
  %i.cxl = fadd fast float %i.cot, %i.cnr         ; 2 uses
  %i.cxm = fadd fast float %i.cqx, %i.cpv         ; 2 uses
  %i.cxn = fsub fast float %i.cnr, %i.cot         ; 2 uses
  %i.cxo = fsub fast float %i.cpv, %i.cqx         ; 2 uses
  %i.cxp = fadd fast float %i.cmp, %i.clr
  %i.cxq = fadd fast float %i.cxp, %i.cxl
  %i.cxr = fadd fast float %i.cxq, %i.cxm         ; 8 uses
  %i.cxs = fmul fast float %i.cxn, f0x3F3504F3
  %i.cxt = fadd fast float %i.clr, %i.cxs
  %i.cxu = fmul fast float %i.cxo, f0x3FB504F3
  %i.cxv = fadd fast float %i.cxu, %i.cxt         ; 8 uses
  %i.cxw = fmul fast float %i.cxl, 5.000000e-01
  %i.cxx = fadd fast float %i.clr, %i.cxw
  %i.cxy = fmul fast float %i.cxm, 2.000000e+00
  %i.cxz = fadd fast float %i.cxy, %i.cxx         ; 8 uses
  %i.cya = fmul fast float %i.cxn, f0x3EB504F3
  %i.cyb = fmul fast float %i.cxo, f0x403504F3
  %i.cyc = fadd fast float %i.clr, %i.cya
  %i.cyd = fadd fast float %i.cyc, %i.crz
  %i.cye = fadd fast float %i.cyd, %i.cyb         ; 8 uses
  %i.cyf = insertelement <4 x float> poison, float %i.cxr, i64 0
  %i.cyg = insertelement <4 x float> %i.cyf, float %i.cxv, i64 1
  %i.cyh = insertelement <4 x float> %i.cyg, float %i.cxz, i64 2
  %i.cyi = insertelement <4 x float> %i.cyh, float %i.cye, i64 3 ; 6 uses
  switch i32 %i.et, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.1
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.1
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.1
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.1
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.1
    i32 6, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.cyj = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %i.cyk = load float, ptr %i.cyj, align 4, !tbaa !56 ; 9 uses
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyj, i64 4
  %i.cym = load float, ptr %i.cyl, align 4, !tbaa !56 ; 5 uses
  %i.cyn = fneg fast float %i.cym
  %i.cyo = fdiv fast float %i.cyn, %i.cyk         ; 8 uses
  %i.cyp = fcmp fast olt float %i.cxr, %i.cyo
  br i1 %i.cyp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.1, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.cyq = fdiv fast float 1.000000e+00, %i.cyk
  %i.cyr = fadd fast float %i.cyo, %i.cyq
  %i.cys = fcmp fast ogt float %i.cxr, %i.cyr
  br i1 %i.cys, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.1, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.cyt = fmul fast float %i.cyk, %i.cxr
  %i.cyu = fadd fast float %i.cyt, %i.cym
  %i.cyv = fmul fast float %i.cyu, %i.cxr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.1: ; preds = %bb.ct, %bb.cs, %bb.cr
  %.112321845.us.i.1 = phi float [ %i.cyv, %bb.ct ], [ 0.000000e+00, %bb.cr ], [ %i.cxr, %bb.cs ]
  %i.cyw = fcmp fast olt float %i.cxv, %i.cyo
  br i1 %i.cyw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.1, label %bb.cu

bb.cu:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.1
  %i.cyx = fdiv fast float 1.000000e+00, %i.cyk
  %i.cyy = fadd fast float %i.cyo, %i.cyx
  %i.cyz = fcmp fast ogt float %i.cxv, %i.cyy
  br i1 %i.cyz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.1, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.cza = fmul fast float %i.cyk, %i.cxv
  %i.czb = fadd fast float %i.cza, %i.cym
  %i.czc = fmul fast float %i.czb, %i.cxv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.1: ; preds = %bb.cv, %bb.cu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.1
  %.112341868.us.i.1 = phi float [ %i.czc, %bb.cv ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.1 ], [ %i.cxv, %bb.cu ]
  %i.czd = fcmp fast olt float %i.cxz, %i.cyo
  br i1 %i.czd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.1, label %bb.cw

bb.cw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.1
  %i.cze = fdiv fast float 1.000000e+00, %i.cyk
  %i.czf = fadd fast float %i.cyo, %i.cze
  %i.czg = fcmp fast ogt float %i.cxz, %i.czf
  br i1 %i.czg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.1, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.czh = fmul fast float %i.cyk, %i.cxz
  %i.czi = fadd fast float %i.czh, %i.cym
  %i.czj = fmul fast float %i.czi, %i.cxz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.1: ; preds = %bb.cx, %bb.cw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.1
  %.112361904.us.i.1 = phi float [ %i.czj, %bb.cx ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.1 ], [ %i.cxz, %bb.cw ]
  %i.czk = fcmp fast olt float %i.cye, %i.cyo
  %i.czl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.112321845.us.i.1, i64 0
  %i.czm = insertelement <4 x float> %i.czl, float %.112341868.us.i.1, i64 1
  %i.czn = insertelement <4 x float> %i.czm, float %.112361904.us.i.1, i64 2 ; 3 uses
  br i1 %i.czk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1, label %bb.cy

bb.cy:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.1
  %i.czo = fdiv fast float 1.000000e+00, %i.cyk
  %i.czp = fadd fast float %i.cyo, %i.czo
  %i.czq = fcmp fast ogt float %i.cye, %i.czp
  %i.czr = insertelement <4 x float> %i.czn, float %i.cye, i64 3
  br i1 %i.czq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.czs = fmul fast float %i.cyk, %i.cye
  %i.czt = fadd fast float %i.czs, %i.cym
  %i.czu = fmul fast float %i.czt, %i.cye
  %i.czv = insertelement <4 x float> %i.czn, float %i.czu, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.1: ; preds = %bb.cq
  %i.czw = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cxr)
  %i.czx = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cxv)
  %i.czy = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cxz)
  %i.czz = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cye)
  %i.daa = fadd fast float %i.czw, 1.000000e+00
  %i.dab = call fast float @llvm.log.f32(float %i.daa)
  %i.dac = call fast float @llvm.tanh.f32(float %i.dab)
  %i.dad = fadd fast float %i.czx, 1.000000e+00
  %i.dae = call fast float @llvm.log.f32(float %i.dad)
  %i.daf = call fast float @llvm.tanh.f32(float %i.dae)
  %i.dag = fadd fast float %i.czy, 1.000000e+00
  %i.dah = call fast float @llvm.log.f32(float %i.dag)
  %i.dai = call fast float @llvm.tanh.f32(float %i.dah)
  %i.daj = fadd fast float %i.czz, 1.000000e+00
  %i.dak = call fast float @llvm.log.f32(float %i.daj)
  %i.dal = call fast float @llvm.tanh.f32(float %i.dak)
  %i.dam = insertelement <4 x float> poison, float %i.dac, i64 0
  %i.dan = insertelement <4 x float> %i.dam, float %i.daf, i64 1
  %i.dao = insertelement <4 x float> %i.dan, float %i.dai, i64 2
  %i.dap = insertelement <4 x float> %i.dao, float %i.dal, i64 3
  %i.daq = fmul fast <4 x float> %i.dap, %i.cyi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.1: ; preds = %bb.cq
  %i.dar = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cyi, <4 x float> splat (float f0x42B0C0A5))
  %i.das = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dar, <4 x float> splat (float f0xC2B0C0A5))
  %i.dat = fneg fast <4 x float> %i.das
  %i.dau = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dat)
  %i.dav = fadd fast <4 x float> %i.dau, splat (float 1.000000e+00)
  %i.daw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dav
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.1: ; preds = %bb.cq
  %i.dax = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %i.dax, i64 4
  %31 = load float, ptr %i.dax, align 4, !tbaa !56 ; 3 uses
  %i.day = load float, ptr %30, align 4, !tbaa !56 ; 4 uses
  %32 = insertelement <2 x float> poison, float %i.cxr, i64 0
  %33 = insertelement <2 x float> %32, float %i.cxv, i64 1
  %34 = insertelement <2 x float> poison, float %31, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %33, <2 x float> %35) ; 2 uses
  %37 = insertelement <2 x float> poison, float %i.day, i64 0
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %39 = fcmp fast ogt <2 x float> %36, %38
  %40 = select <2 x i1> %39, <2 x float> %38, <2 x float> %36
  %.01235.us.i.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cxz, float %31) ; 2 uses
  %i.daz = fcmp fast ogt float %.01235.us.i.1, %i.day
  %.112361914.us.i.1 = select i1 %i.daz, float %i.day, float %.01235.us.i.1
  %.01237.us.i.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cye, float %31)
  %spec.select1945.us.i.1 = call nnan ninf nsz float @llvm.minnum.f32(float %.01237.us.i.1, float %i.day)
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dba = insertelement <4 x float> %41, float %.112361914.us.i.1, i64 2
  %i.dbb = insertelement <4 x float> %i.dba, float %spec.select1945.us.i.1, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.1: ; preds = %bb.cq
  %i.dbc = load ptr, ptr %15, align 8, !tbaa !37
  %i.dbd = load float, ptr %i.dbc, align 4, !tbaa !56
  %i.dbe = fcmp fast ogt <4 x float> %i.cyi, zeroinitializer
  %i.dbf = insertelement <4 x float> poison, float %i.dbd, i64 0
  %i.dbg = shufflevector <4 x float> %i.dbf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbh = select <4 x i1> %i.dbe, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dbg
  %i.dbi = fmul fast <4 x float> %i.dbh, %i.cyi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.1: ; preds = %bb.cq
  %i.dbj = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cyi, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.1, %bb.cz, %bb.cy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.1, %bb.cq
  %i.dbk = phi <4 x float> [ %i.czn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.1 ], [ %i.dbj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.1 ], [ %i.dbi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.1 ], [ %i.cyi, %bb.cq ], [ %i.dbb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.1 ], [ %i.daw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.1 ], [ %i.daq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.1 ], [ %i.czv, %bb.cz ], [ %i.czr, %bb.cy ] ; 4 uses
  %i.dbl = bitcast <4 x float> %i.dbk to <8 x i16>
  %i.dbm = extractelement <8 x i16> %i.dbl, i64 1
  store i16 %i.dbm, ptr %.1.us.i, align 2, !tbaa !116
  br i1 %i.cst, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1
  %i.dbn = bitcast <4 x float> %i.dbk to <8 x i16>
  %i.dbo = extractelement <8 x i16> %i.dbn, i64 3
  %i.dbp = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 2
  store i16 %i.dbo, ptr %i.dbp, align 2, !tbaa !116
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1
  br i1 %i.csv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.dbq = bitcast <4 x float> %i.dbk to <8 x i16>
  %i.dbr = extractelement <8 x i16> %i.dbq, i64 5
  %i.dbs = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i16 %i.dbr, ptr %i.dbs, align 2, !tbaa !116
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  br i1 %i.csx, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.dbt = bitcast <4 x float> %i.dbk to <8 x i16>
  %i.dbu = extractelement <8 x i16> %i.dbt, i64 7
  %i.dbv = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 6
  store i16 %i.dbu, ptr %i.dbv, align 2, !tbaa !116
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.dbw = getelementptr inbounds [2 x i8], ptr %.1.us.i, i64 %i.cli
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.cp
  %.1.us.i.1 = phi ptr [ %.1.us.i, %bb.cp ], [ %i.dbw, %bb.df ] ; 6 uses
  %i.dbx = or disjoint i32 %i.csm, 2
  %.not791.us.i.2 = icmp slt i32 %i.dbx, %i.ev
  br i1 %.not791.us.i.2, label %bb.dh, label %bb.dx

bb.dh:                                            ; preds = %bb.dg
  %i.dby = fadd fast float %i.cow, %i.cnu         ; 2 uses
  %i.dbz = fadd fast float %i.cra, %i.cpy         ; 2 uses
  %i.dca = fsub fast float %i.cnu, %i.cow         ; 2 uses
  %i.dcb = fsub fast float %i.cpy, %i.cra         ; 2 uses
  %i.dcc = fadd fast float %i.cms, %i.clr
  %i.dcd = fadd fast float %i.dcc, %i.dby
  %i.dce = fadd fast float %i.dcd, %i.dbz         ; 8 uses
  %i.dcf = fmul fast float %i.dca, f0x3F3504F3
  %i.dcg = fadd fast float %i.clr, %i.dcf
  %i.dch = fmul fast float %i.dcb, f0x3FB504F3
  %i.dci = fadd fast float %i.dch, %i.dcg         ; 8 uses
  %i.dcj = fmul fast float %i.dby, 5.000000e-01
  %i.dck = fadd fast float %i.clr, %i.dcj
  %i.dcl = fmul fast float %i.dbz, 2.000000e+00
  %i.dcm = fadd fast float %i.dcl, %i.dck         ; 8 uses
  %i.dcn = fmul fast float %i.dca, f0x3EB504F3
  %i.dco = fmul fast float %i.dcb, f0x403504F3
  %i.dcp = fadd fast float %i.clr, %i.dcn
  %i.dcq = fadd fast float %i.dcp, %i.csc
  %i.dcr = fadd fast float %i.dcq, %i.dco         ; 8 uses
  %i.dcs = insertelement <4 x float> poison, float %i.dce, i64 0
  %i.dct = insertelement <4 x float> %i.dcs, float %i.dci, i64 1
  %i.dcu = insertelement <4 x float> %i.dct, float %i.dcm, i64 2
  %i.dcv = insertelement <4 x float> %i.dcu, float %i.dcr, i64 3 ; 6 uses
  switch i32 %i.et, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.2
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.2
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.2
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.2
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.2
    i32 6, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh
  %i.dcw = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %i.dcx = load float, ptr %i.dcw, align 4, !tbaa !56 ; 9 uses
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcw, i64 4
  %i.dcz = load float, ptr %i.dcy, align 4, !tbaa !56 ; 5 uses
  %i.dda = fneg fast float %i.dcz
  %i.ddb = fdiv fast float %i.dda, %i.dcx         ; 8 uses
  %i.ddc = fcmp fast olt float %i.dce, %i.ddb
  br i1 %i.ddc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.2, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ddd = fdiv fast float 1.000000e+00, %i.dcx
  %i.dde = fadd fast float %i.ddb, %i.ddd
  %i.ddf = fcmp fast ogt float %i.dce, %i.dde
  br i1 %i.ddf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.2, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ddg = fmul fast float %i.dcx, %i.dce
  %i.ddh = fadd fast float %i.ddg, %i.dcz
  %i.ddi = fmul fast float %i.ddh, %i.dce
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.2: ; preds = %bb.dk, %bb.dj, %bb.di
  %.112321845.us.i.2 = phi float [ %i.ddi, %bb.dk ], [ 0.000000e+00, %bb.di ], [ %i.dce, %bb.dj ]
  %i.ddj = fcmp fast olt float %i.dci, %i.ddb
  br i1 %i.ddj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.2, label %bb.dl

bb.dl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.2
  %i.ddk = fdiv fast float 1.000000e+00, %i.dcx
  %i.ddl = fadd fast float %i.ddb, %i.ddk
  %i.ddm = fcmp fast ogt float %i.dci, %i.ddl
  br i1 %i.ddm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.2, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ddn = fmul fast float %i.dcx, %i.dci
  %i.ddo = fadd fast float %i.ddn, %i.dcz
  %i.ddp = fmul fast float %i.ddo, %i.dci
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.2: ; preds = %bb.dm, %bb.dl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.2
  %.112341868.us.i.2 = phi float [ %i.ddp, %bb.dm ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.2 ], [ %i.dci, %bb.dl ]
  %i.ddq = fcmp fast olt float %i.dcm, %i.ddb
  br i1 %i.ddq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.2, label %bb.dn

bb.dn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.2
  %i.ddr = fdiv fast float 1.000000e+00, %i.dcx
  %i.dds = fadd fast float %i.ddb, %i.ddr
  %i.ddt = fcmp fast ogt float %i.dcm, %i.dds
  br i1 %i.ddt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.2, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ddu = fmul fast float %i.dcx, %i.dcm
  %i.ddv = fadd fast float %i.ddu, %i.dcz
  %i.ddw = fmul fast float %i.ddv, %i.dcm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.2: ; preds = %bb.do, %bb.dn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.2
  %.112361904.us.i.2 = phi float [ %i.ddw, %bb.do ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.2 ], [ %i.dcm, %bb.dn ]
  %i.ddx = fcmp fast olt float %i.dcr, %i.ddb
  %i.ddy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.112321845.us.i.2, i64 0
  %i.ddz = insertelement <4 x float> %i.ddy, float %.112341868.us.i.2, i64 1
  %i.dea = insertelement <4 x float> %i.ddz, float %.112361904.us.i.2, i64 2 ; 3 uses
  br i1 %i.ddx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2, label %bb.dp

bb.dp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.2
  %i.deb = fdiv fast float 1.000000e+00, %i.dcx
  %i.dec = fadd fast float %i.ddb, %i.deb
  %i.ded = fcmp fast ogt float %i.dcr, %i.dec
  %i.dee = insertelement <4 x float> %i.dea, float %i.dcr, i64 3
  br i1 %i.ded, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.def = fmul fast float %i.dcx, %i.dcr
  %i.deg = fadd fast float %i.def, %i.dcz
  %i.deh = fmul fast float %i.deg, %i.dcr
  %i.dei = insertelement <4 x float> %i.dea, float %i.deh, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.2: ; preds = %bb.dh
  %i.dej = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dce)
  %i.dek = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dci)
  %i.del = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dcm)
  %i.dem = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dcr)
  %i.den = fadd fast float %i.dej, 1.000000e+00
  %i.deo = call fast float @llvm.log.f32(float %i.den)
  %i.dep = call fast float @llvm.tanh.f32(float %i.deo)
  %i.deq = fadd fast float %i.dek, 1.000000e+00
  %i.der = call fast float @llvm.log.f32(float %i.deq)
  %i.des = call fast float @llvm.tanh.f32(float %i.der)
  %i.det = fadd fast float %i.del, 1.000000e+00
  %i.deu = call fast float @llvm.log.f32(float %i.det)
  %i.dev = call fast float @llvm.tanh.f32(float %i.deu)
  %i.dew = fadd fast float %i.dem, 1.000000e+00
  %i.dex = call fast float @llvm.log.f32(float %i.dew)
  %i.dey = call fast float @llvm.tanh.f32(float %i.dex)
  %i.dez = insertelement <4 x float> poison, float %i.dep, i64 0
  %i.dfa = insertelement <4 x float> %i.dez, float %i.des, i64 1
  %i.dfb = insertelement <4 x float> %i.dfa, float %i.dev, i64 2
  %i.dfc = insertelement <4 x float> %i.dfb, float %i.dey, i64 3
  %i.dfd = fmul fast <4 x float> %i.dfc, %i.dcv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.2: ; preds = %bb.dh
  %i.dfe = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dcv, <4 x float> splat (float f0x42B0C0A5))
  %i.dff = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dfe, <4 x float> splat (float f0xC2B0C0A5))
  %i.dfg = fneg fast <4 x float> %i.dff
  %i.dfh = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dfg)
  %i.dfi = fadd fast <4 x float> %i.dfh, splat (float 1.000000e+00)
  %i.dfj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dfi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.2: ; preds = %bb.dh
  %i.dfk = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %i.dfk, i64 4
  %43 = load float, ptr %i.dfk, align 4, !tbaa !56 ; 3 uses
  %i.dfl = load float, ptr %42, align 4, !tbaa !56 ; 4 uses
  %44 = insertelement <2 x float> poison, float %i.dce, i64 0
  %45 = insertelement <2 x float> %44, float %i.dci, i64 1
  %46 = insertelement <2 x float> poison, float %43, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %45, <2 x float> %47) ; 2 uses
  %49 = insertelement <2 x float> poison, float %i.dfl, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %51 = fcmp fast ogt <2 x float> %48, %50
  %52 = select <2 x i1> %51, <2 x float> %50, <2 x float> %48
  %.01235.us.i.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dcm, float %43) ; 2 uses
  %i.dfm = fcmp fast ogt float %.01235.us.i.2, %i.dfl
  %.112361914.us.i.2 = select i1 %i.dfm, float %i.dfl, float %.01235.us.i.2
  %.01237.us.i.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dcr, float %43)
  %spec.select1945.us.i.2 = call nnan ninf nsz float @llvm.minnum.f32(float %.01237.us.i.2, float %i.dfl)
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dfn = insertelement <4 x float> %53, float %.112361914.us.i.2, i64 2
  %i.dfo = insertelement <4 x float> %i.dfn, float %spec.select1945.us.i.2, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.2: ; preds = %bb.dh
  %i.dfp = load ptr, ptr %15, align 8, !tbaa !37
  %i.dfq = load float, ptr %i.dfp, align 4, !tbaa !56
  %i.dfr = fcmp fast ogt <4 x float> %i.dcv, zeroinitializer
  %i.dfs = insertelement <4 x float> poison, float %i.dfq, i64 0
  %i.dft = shufflevector <4 x float> %i.dfs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dfu = select <4 x i1> %i.dfr, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dft
  %i.dfv = fmul fast <4 x float> %i.dfu, %i.dcv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.2: ; preds = %bb.dh
  %i.dfw = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dcv, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.2, %bb.dq, %bb.dp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.2, %bb.dh
  %i.dfx = phi <4 x float> [ %i.dea, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.2 ], [ %i.dfw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.2 ], [ %i.dfv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.2 ], [ %i.dcv, %bb.dh ], [ %i.dfo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.2 ], [ %i.dfj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.2 ], [ %i.dfd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.2 ], [ %i.dei, %bb.dq ], [ %i.dee, %bb.dp ] ; 4 uses
  %i.dfy = bitcast <4 x float> %i.dfx to <8 x i16>
  %i.dfz = extractelement <8 x i16> %i.dfy, i64 1
  store i16 %i.dfz, ptr %.1.us.i.1, align 2, !tbaa !116
  br i1 %i.cst, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2
  %i.dga = bitcast <4 x float> %i.dfx to <8 x i16>
  %i.dgb = extractelement <8 x i16> %i.dga, i64 3
  %i.dgc = getelementptr inbounds nuw i8, ptr %.1.us.i.1, i64 2
  store i16 %i.dgb, ptr %i.dgc, align 2, !tbaa !116
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2
  br i1 %i.csv, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.dgd = bitcast <4 x float> %i.dfx to <8 x i16>
  %i.dge = extractelement <8 x i16> %i.dgd, i64 5
  %i.dgf = getelementptr inbounds nuw i8, ptr %.1.us.i.1, i64 4
  store i16 %i.dge, ptr %i.dgf, align 2, !tbaa !116
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  br i1 %i.csx, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.dgg = bitcast <4 x float> %i.dfx to <8 x i16>
  %i.dgh = extractelement <8 x i16> %i.dgg, i64 7
  %i.dgi = getelementptr inbounds nuw i8, ptr %.1.us.i.1, i64 6
  store i16 %i.dgh, ptr %i.dgi, align 2, !tbaa !116
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.dgj = getelementptr inbounds [2 x i8], ptr %.1.us.i.1, i64 %i.cli
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dg
  %.1.us.i.2 = phi ptr [ %.1.us.i.1, %bb.dg ], [ %i.dgj, %bb.dw ] ; 4 uses
  %i.dgk = or disjoint i32 %i.csm, 3
  %.not791.us.i.3 = icmp slt i32 %i.dgk, %i.ev
  br i1 %.not791.us.i.3, label %bb.dy, label %bb.en

bb.dy:                                            ; preds = %bb.dx
  %i.dgl = fadd fast float %i.cpb, %i.cnz         ; 2 uses
  %i.dgm = fadd fast float %i.crf, %i.cqd         ; 2 uses
  %i.dgn = fsub fast float %i.cnz, %i.cpb         ; 2 uses
  %i.dgo = fsub fast float %i.cqd, %i.crf         ; 2 uses
  %i.dgp = fadd fast float %i.cmx, %i.clr
  %i.dgq = fadd fast float %i.dgp, %i.dgl
  %i.dgr = fadd fast float %i.dgq, %i.dgm         ; 8 uses
  %i.dgs = fmul fast float %i.dgn, f0x3F3504F3
  %i.dgt = fadd fast float %i.clr, %i.dgs
  %i.dgu = fmul fast float %i.dgo, f0x3FB504F3
  %i.dgv = fadd fast float %i.dgu, %i.dgt         ; 8 uses
  %i.dgw = fmul fast float %i.dgl, 5.000000e-01
  %i.dgx = fadd fast float %i.clr, %i.dgw
  %i.dgy = fmul fast float %i.dgm, 2.000000e+00
  %i.dgz = fadd fast float %i.dgy, %i.dgx         ; 8 uses
  %i.dha = fmul fast float %i.dgn, f0x3EB504F3
  %i.dhb = fmul fast float %i.dgo, f0x403504F3
  %i.dhc = fadd fast float %i.clr, %i.dha
  %i.dhd = fadd fast float %i.dhc, %i.csh
  %i.dhe = fadd fast float %i.dhd, %i.dhb         ; 8 uses
  %i.dhf = insertelement <4 x float> poison, float %i.dgr, i64 0
  %i.dhg = insertelement <4 x float> %i.dhf, float %i.dgv, i64 1
  %i.dhh = insertelement <4 x float> %i.dhg, float %i.dgz, i64 2
  %i.dhi = insertelement <4 x float> %i.dhh, float %i.dhe, i64 3 ; 6 uses
  switch i32 %i.et, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3
    i32 6, label %bb.dz
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.dhj = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %i.dhk = load float, ptr %i.dhj, align 4, !tbaa !56 ; 9 uses
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.dhj, i64 4
  %i.dhm = load float, ptr %i.dhl, align 4, !tbaa !56 ; 5 uses
  %i.dhn = fneg fast float %i.dhm
  %i.dho = fdiv fast float %i.dhn, %i.dhk         ; 8 uses
  %i.dhp = fcmp fast olt float %i.dgr, %i.dho
  br i1 %i.dhp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.dhq = fdiv fast float 1.000000e+00, %i.dhk
  %i.dhr = fadd fast float %i.dho, %i.dhq
  %i.dhs = fcmp fast ogt float %i.dgr, %i.dhr
  br i1 %i.dhs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.dht = fmul fast float %i.dhk, %i.dgr
  %i.dhu = fadd fast float %i.dht, %i.dhm
  %i.dhv = fmul fast float %i.dhu, %i.dgr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3: ; preds = %bb.eb, %bb.ea, %bb.dz
  %.112321845.us.i.3 = phi float [ %i.dhv, %bb.eb ], [ 0.000000e+00, %bb.dz ], [ %i.dgr, %bb.ea ]
  %i.dhw = fcmp fast olt float %i.dgv, %i.dho
  br i1 %i.dhw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3, label %bb.ec

bb.ec:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3
  %i.dhx = fdiv fast float 1.000000e+00, %i.dhk
  %i.dhy = fadd fast float %i.dho, %i.dhx
  %i.dhz = fcmp fast ogt float %i.dgv, %i.dhy
  br i1 %i.dhz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.dia = fmul fast float %i.dhk, %i.dgv
  %i.dib = fadd fast float %i.dia, %i.dhm
  %i.dic = fmul fast float %i.dib, %i.dgv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3: ; preds = %bb.ed, %bb.ec, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3
  %.112341868.us.i.3 = phi float [ %i.dic, %bb.ed ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3 ], [ %i.dgv, %bb.ec ]
  %i.did = fcmp fast olt float %i.dgz, %i.dho
  br i1 %i.did, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, label %bb.ee

bb.ee:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3
  %i.die = fdiv fast float 1.000000e+00, %i.dhk
  %i.dif = fadd fast float %i.dho, %i.die
  %i.dig = fcmp fast ogt float %i.dgz, %i.dif
  br i1 %i.dig, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.dih = fmul fast float %i.dhk, %i.dgz
  %i.dii = fadd fast float %i.dih, %i.dhm
  %i.dij = fmul fast float %i.dii, %i.dgz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3: ; preds = %bb.ef, %bb.ee, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3
  %.112361904.us.i.3 = phi float [ %i.dij, %bb.ef ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3 ], [ %i.dgz, %bb.ee ]
  %i.dik = fcmp fast olt float %i.dhe, %i.dho
  %i.dil = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.112321845.us.i.3, i64 0
  %i.dim = insertelement <4 x float> %i.dil, float %.112341868.us.i.3, i64 1
  %i.din = insertelement <4 x float> %i.dim, float %.112361904.us.i.3, i64 2 ; 3 uses
  br i1 %i.dik, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.eg

bb.eg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3
  %i.dio = fdiv fast float 1.000000e+00, %i.dhk
  %i.dip = fadd fast float %i.dho, %i.dio
  %i.diq = fcmp fast ogt float %i.dhe, %i.dip
  %i.dir = insertelement <4 x float> %i.din, float %i.dhe, i64 3
  br i1 %i.diq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.dis = fmul fast float %i.dhk, %i.dhe
  %i.dit = fadd fast float %i.dis, %i.dhm
  %i.diu = fmul fast float %i.dit, %i.dhe
  %i.div = insertelement <4 x float> %i.din, float %i.diu, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3: ; preds = %bb.dy
  %i.diw = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dgr)
  %i.dix = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dgv)
  %i.diy = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dgz)
  %i.diz = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dhe)
  %i.dja = fadd fast float %i.diw, 1.000000e+00
  %i.djb = call fast float @llvm.log.f32(float %i.dja)
  %i.djc = call fast float @llvm.tanh.f32(float %i.djb)
  %i.djd = fadd fast float %i.dix, 1.000000e+00
  %i.dje = call fast float @llvm.log.f32(float %i.djd)
  %i.djf = call fast float @llvm.tanh.f32(float %i.dje)
  %i.djg = fadd fast float %i.diy, 1.000000e+00
  %i.djh = call fast float @llvm.log.f32(float %i.djg)
  %i.dji = call fast float @llvm.tanh.f32(float %i.djh)
  %i.djj = fadd fast float %i.diz, 1.000000e+00
  %i.djk = call fast float @llvm.log.f32(float %i.djj)
  %i.djl = call fast float @llvm.tanh.f32(float %i.djk)
  %i.djm = insertelement <4 x float> poison, float %i.djc, i64 0
  %i.djn = insertelement <4 x float> %i.djm, float %i.djf, i64 1
  %i.djo = insertelement <4 x float> %i.djn, float %i.dji, i64 2
  %i.djp = insertelement <4 x float> %i.djo, float %i.djl, i64 3
  %i.djq = fmul fast <4 x float> %i.djp, %i.dhi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3: ; preds = %bb.dy
  %i.djr = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dhi, <4 x float> splat (float f0x42B0C0A5))
  %i.djs = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.djr, <4 x float> splat (float f0xC2B0C0A5))
  %i.djt = fneg fast <4 x float> %i.djs
  %i.dju = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.djt)
  %i.djv = fadd fast <4 x float> %i.dju, splat (float 1.000000e+00)
  %i.djw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.djv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3: ; preds = %bb.dy
  %i.djx = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %54 = getelementptr inbounds nuw i8, ptr %i.djx, i64 4
  %55 = load float, ptr %i.djx, align 4, !tbaa !56 ; 3 uses
  %i.djy = load float, ptr %54, align 4, !tbaa !56 ; 4 uses
  %56 = insertelement <2 x float> poison, float %i.dgr, i64 0
  %57 = insertelement <2 x float> %56, float %i.dgv, i64 1
  %58 = insertelement <2 x float> poison, float %55, i64 0
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  %60 = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %57, <2 x float> %59) ; 2 uses
  %61 = insertelement <2 x float> poison, float %i.djy, i64 0
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %63 = fcmp fast ogt <2 x float> %60, %62
  %64 = select <2 x i1> %63, <2 x float> %62, <2 x float> %60
  %.01235.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dgz, float %55) ; 2 uses
  %i.djz = fcmp fast ogt float %.01235.us.i.3, %i.djy
  %.112361914.us.i.3 = select i1 %i.djz, float %i.djy, float %.01235.us.i.3
  %.01237.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dhe, float %55)
  %spec.select1945.us.i.3 = call nnan ninf nsz float @llvm.minnum.f32(float %.01237.us.i.3, float %i.djy)
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dka = insertelement <4 x float> %65, float %.112361914.us.i.3, i64 2
  %i.dkb = insertelement <4 x float> %i.dka, float %spec.select1945.us.i.3, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3: ; preds = %bb.dy
  %i.dkc = load ptr, ptr %15, align 8, !tbaa !37
  %i.dkd = load float, ptr %i.dkc, align 4, !tbaa !56
  %i.dke = fcmp fast ogt <4 x float> %i.dhi, zeroinitializer
  %i.dkf = insertelement <4 x float> poison, float %i.dkd, i64 0
  %i.dkg = shufflevector <4 x float> %i.dkf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dkh = select <4 x i1> %i.dke, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dkg
  %i.dki = fmul fast <4 x float> %i.dkh, %i.dhi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3: ; preds = %bb.dy
  %i.dkj = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dhi, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3, %bb.eh, %bb.eg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, %bb.dy
  %i.dkk = phi <4 x float> [ %i.din, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3 ], [ %i.dkj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3 ], [ %i.dki, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3 ], [ %i.dhi, %bb.dy ], [ %i.dkb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3 ], [ %i.djw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3 ], [ %i.djq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3 ], [ %i.div, %bb.eh ], [ %i.dir, %bb.eg ] ; 4 uses
  %i.dkl = bitcast <4 x float> %i.dkk to <8 x i16>
  %i.dkm = extractelement <8 x i16> %i.dkl, i64 1
  store i16 %i.dkm, ptr %.1.us.i.2, align 2, !tbaa !116
  br i1 %i.cst, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  %i.dkn = bitcast <4 x float> %i.dkk to <8 x i16>
  %i.dko = extractelement <8 x i16> %i.dkn, i64 3
  %i.dkp = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 2
  store i16 %i.dko, ptr %i.dkp, align 2, !tbaa !116
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  br i1 %i.csv, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.dkq = bitcast <4 x float> %i.dkk to <8 x i16>
  %i.dkr = extractelement <8 x i16> %i.dkq, i64 5
  %i.dks = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 4
  store i16 %i.dkr, ptr %i.dks, align 2, !tbaa !116
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  br i1 %i.csx, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.dkt = bitcast <4 x float> %i.dkk to <8 x i16>
  %i.dku = extractelement <8 x i16> %i.dkt, i64 7
  %i.dkv = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 6
  store i16 %i.dku, ptr %i.dkv, align 2, !tbaa !116
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em, %bb.dx
  %indvars.iv.next2092.i = add nuw nsw i64 %indvars.iv2091.i, 1 ; 2 uses
  %exitcond2095.not.i = icmp eq i64 %indvars.iv.next2092.i, %wide.trip.count2094.i
  br i1 %exitcond2095.not.i, label %._crit_edge2021.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !2297

._crit_edge2021.us.i:                             ; preds = %bb.en
  %indvars.iv.next2097.i = add nuw nsw i64 %indvars.iv2096.i, 1 ; 2 uses
  %exitcond2100.not.i = icmp eq i64 %indvars.iv.next2097.i, %i.eh
  br i1 %exitcond2100.not.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.bx, !llvm.loop !2298

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.dkw = phi i32 [ %i.dmt, %.noexc ], [ %.pre150, %.noexc.preheader ] ; 2 uses
  %i.dkx = phi i32 [ %i.dmv, %.noexc ], [ %i.er, %.noexc.preheader ]
  %.0133 = phi i32 [ %i.dmu, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.dky = sub nsw i32 %i.dkx, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.dkw, i32 %i.dky)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.dkz = load i32, ptr %3, align 4, !tbaa !81
  %i.dla = sdiv i32 %i.do, %i.dkz
  %i.dlb = load ptr, ptr %10, align 8, !tbaa !37, !noalias !2314
  %i.dlc = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !2314
  %i.dld = sext i32 %i.dla to i64
  %i.dle = mul i64 %i.dlc, %i.dld
  %i.dlf = load i64, ptr %i.t, align 8, !tbaa !79, !noalias !2314 ; 3 uses
  %i.dlg = mul i64 %i.dle, %i.dlf
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dlb, i64 %i.dlg
  %i.dli = load i32, ptr %i.u, align 8, !tbaa !80, !noalias !2314
  %i.dlj = load ptr, ptr %i.v, align 8, !tbaa !36, !noalias !2314
  %i.dlk = sdiv i32 %.0133, %i.dkw
  %i.dll = sext i32 %i.dlk to i64                 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !35, !alias.scope !2315
  store i64 %i.dlf, ptr %i.x, align 8, !tbaa !79, !alias.scope !2315
  store i32 %i.dli, ptr %i.y, align 8, !tbaa !80, !alias.scope !2315
  store ptr %i.dlj, ptr %i.z, align 8, !tbaa !36, !alias.scope !2315
  store i32 2, ptr %i.aa, align 8, !tbaa !102, !alias.scope !2315
  %i.dlm = load <2 x i32>, ptr %i.q, align 4, !tbaa !81, !noalias !2314
  %i.dln = load i32, ptr %i.r, align 8, !tbaa !90, !noalias !2314
  %i.dlo = load i32, ptr %i.q, align 4, !tbaa !89, !noalias !2314
  %i.dlp = sext i32 %i.dlo to i64
  %i.dlq = sext i32 %i.dln to i64
  %i.dlr = mul nsw i64 %i.dlq, %i.dlp             ; 2 uses
  %i.dls = mul i64 %i.dlf, %i.dlr
  %i.dlt = mul i64 %i.dls, %i.dll
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlh, i64 %i.dlt
  store ptr %i.dlu, ptr %16, align 8, !tbaa !37, !alias.scope !2315
  %i.dlv = shufflevector <2 x i32> %i.dlm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dlw = shufflevector <4 x i32> %i.dlv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.dlw, ptr %i.ab, align 4, !tbaa !81, !alias.scope !2315
  store i64 %i.dlr, ptr %i.ac, align 8, !tbaa !38, !alias.scope !2315
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.dlx = load i32, ptr %7, align 4, !tbaa !81
  %i.dly = sdiv i32 %.047139, %i.dlx
  %i.dlz = load ptr, ptr %11, align 8, !tbaa !37, !noalias !2316
  %i.dma = load i64, ptr %i.af, align 8, !tbaa !38, !noalias !2316
  %i.dmb = sext i32 %i.dly to i64
  %i.dmc = mul i64 %i.dma, %i.dmb
  %i.dmd = load i64, ptr %i.ag, align 8, !tbaa !79, !noalias !2316 ; 3 uses
  %i.dme = mul i64 %i.dmc, %i.dmd
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.dlz, i64 %i.dme
  %i.dmg = load i32, ptr %i.ah, align 8, !tbaa !80, !noalias !2316
  %i.dmh = load ptr, ptr %i.ai, align 8, !tbaa !36, !noalias !2316
  store ptr null, ptr %i.aj, align 8, !tbaa !35
  store i64 %i.dmd, ptr %i.ak, align 8, !tbaa !79
  store i32 %i.dmg, ptr %i.al, align 8, !tbaa !80
  store ptr %i.dmh, ptr %i.am, align 8, !tbaa !36
  store i32 2, ptr %i.an, align 8, !tbaa !102
  %i.dmi = load <2 x i32>, ptr %i.ad, align 4, !tbaa !81, !noalias !2316
  %i.dmj = load i32, ptr %i.ae, align 8, !tbaa !90, !noalias !2316
  %i.dmk = load i32, ptr %i.ad, align 4, !tbaa !89, !noalias !2316
  %i.dml = sext i32 %i.dmk to i64
  %i.dmm = sext i32 %i.dmj to i64
  %i.dmn = mul nsw i64 %i.dmm, %i.dml             ; 2 uses
  %i.dmo = mul i64 %i.dmd, %i.dmn
  %i.dmp = mul i64 %i.dmo, %i.dll
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmf, i64 %i.dmp
  store ptr %i.dmq, ptr %17, align 8, !tbaa !37
  %i.dmr = shufflevector <2 x i32> %i.dmi, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dms = shufflevector <4 x i32> %i.dmr, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.dms, ptr %i.ao, align 4, !tbaa !81
  store i64 %i.dmn, ptr %i.ap, align 8, !tbaa !38, !alias.scope !2317
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.dw, i32 noundef 36, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated120, i32 noundef %.0133, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.dmt = load i32, ptr %9, align 4, !tbaa !81   ; 2 uses
  %i.dmu = add nsw i32 %i.dmt, %.0133             ; 2 uses
  %i.dmv = load i32, ptr %8, align 4, !tbaa !81   ; 2 uses
  %i.dmw = icmp slt i32 %i.dmu, %i.dmv
  br i1 %i.dmw, label %.noexc, label %._crit_edge, !llvm.loop !2307

_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge2021.us.i, %.lr.ph2027.i, %.preheader.i
  %i.dmx = load i32, ptr %7, align 4, !tbaa !81   ; 2 uses
  %i.dmy = add nsw i32 %i.dmx, %.047139           ; 2 uses
  %i.dmz = load i32, ptr %6, align 4, !tbaa !81   ; 2 uses
  %i.dna = icmp slt i32 %i.dmy, %i.dmz
  br i1 %i.dna, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2308

._crit_edge145:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge145, %bb.a
  ret void

bb.ep:                                            ; preds = %bb.c
  %i.dnb = landingpad { ptr, i32 }
          catch ptr null
  %i.dnc = extractvalue { ptr, i32 } %i.dnb, 0
  call void @__clang_call_terminate(ptr %i.dnc) #33
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree nonnull readnone align 4 captures(none) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ew

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not371 = icmp sgt i32 %i.k, %i.j
  br i1 %.not371, label %._crit_edge374, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
end_hunk_0
