Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.cmm = fadd fast <4 x float> %i.cml, splat (float 5.000000e-01) ; 2 uses
  %i.cmn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cmm)
  %i.cmo = sitofp fast <4 x i32> %i.cmn to <4 x float> ; 2 uses
  %i.cmp = fcmp fast olt <4 x float> %i.cmm, %i.cmo
  %i.cmq = select <4 x i1> %i.cmp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cmr = fsub fast <4 x float> %i.cmo, %i.cmq   ; 2 uses
  %i.cms = fneg fast <4 x float> %i.cmr           ; 2 uses
  %i.cmt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cms, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cmk)
  %i.cmu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cms, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cmt) ; 8 uses
  %i.cmv = fmul fast <4 x float> %i.cmu, %i.cmu
  %i.cmw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.cmx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmw, <4 x float> nofpclass(nan inf) %i.cmu, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.cmy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmx, <4 x float> nofpclass(nan inf) %i.cmu, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.cmz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmy, <4 x float> nofpclass(nan inf) %i.cmu, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.cna = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmz, <4 x float> nofpclass(nan inf) %i.cmu, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.cnb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cna, <4 x float> nofpclass(nan inf) %i.cmv, <4 x float> nofpclass(nan inf) %i.cmu)
  %i.cnc = fadd fast <4 x float> %i.cnb, splat (float 1.000000e+00)
  %i.cnd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cmr)
  %i.cne = shl <4 x i32> %i.cnd, splat (i32 23)
  %i.cnf = add <4 x i32> %i.cne, splat (i32 1065353216)
  %i.cng = bitcast <4 x i32> %i.cnf to <4 x float>
  %i.cnh = fmul fast <4 x float> %i.cnc, %i.cng
  %i.cni = fadd fast <4 x float> %i.cnh, splat (float 1.000000e+00)
  %i.cnj = fdiv fast <4 x float> splat (float 2.000000e+00), %i.cni
  %i.cnk = fadd fast <4 x float> %i.cnj, splat (float -1.000000e+00)
  %i.cnl = fmul fast <4 x float> %i.cnk, %i.cih
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.aw:                                            ; preds = %._crit_edge3103.i
  %i.cnm = load ptr, ptr %i.cr, align 8, !tbaa !19 ; 2 uses
  %i.cnn = load float, ptr %i.cnm, align 4, !tbaa !48
  %i.cno = insertelement <4 x float> poison, float %i.cnn, i64 0
  %i.cnp = shufflevector <4 x float> %i.cno, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnm, i64 4
  %i.cnr = load float, ptr %i.cnq, align 4, !tbaa !48
  %i.cns = insertelement <4 x float> poison, float %i.cnr, i64 0
  %i.cnt = shufflevector <4 x float> %i.cns, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnu = fmul fast <4 x float> %i.cnp, %i.cih
  %i.cnv = fadd fast <4 x float> %i.cnu, %i.cnt
  %i.cnw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cnv, <4 x float> zeroinitializer)
  %i.cnx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cnw, <4 x float> splat (float 1.000000e+00))
  %i.cny = fmul fast <4 x float> %i.cnx, %i.cih
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %._crit_edge3103.i
  %.0.i1531.i = phi nsz <4 x float> [ %i.cny, %bb.aw ], [ %i.cii, %bb.ar ], [ %i.ciq, %bb.as ], [ %i.cja, %bb.at ], [ %i.ckc, %bb.au ], [ %i.cnl, %bb.av ], [ %i.cih, %._crit_edge3103.i ] ; 5 uses
  switch i32 %i.axb, label %bb.ay [
    i32 4, label %.thread2542.i
    i32 1, label %bb.ax
  ]

.thread2542.i:                                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  store <4 x float> %.0.i1531.i, ptr %.014463111.i, align 1, !tbaa !45
  %i.cnz = getelementptr inbounds nuw i8, ptr %.014463111.i, i64 16
  br label %bb.ay

bb.ax:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.sroa.01644.0.vec.extract.i = extractelement <4 x float> %.0.i1531.i, i64 0
  store float %.sroa.01644.0.vec.extract.i, ptr %.014463111.i, align 4, !tbaa !48
  %.sroa.01644.4.vec.extract.i = extractelement <4 x float> %.0.i1531.i, i64 1
  %i.coa = getelementptr inbounds [4 x i8], ptr %.014463111.i, i64 %i.ayj
  store float %.sroa.01644.4.vec.extract.i, ptr %i.coa, align 4, !tbaa !48
  %.sroa.01644.8.vec.extract.i = extractelement <4 x float> %.0.i1531.i, i64 2
  %i.cob = getelementptr inbounds [4 x i8], ptr %.014463111.i, i64 %i.ayl
  store float %.sroa.01644.8.vec.extract.i, ptr %i.cob, align 4, !tbaa !48
  %.sroa.01644.12.vec.extract.i = extractelement <4 x float> %.0.i1531.i, i64 3
  %i.coc = getelementptr inbounds [4 x i8], ptr %.014463111.i, i64 %i.ayn
  store float %.sroa.01644.12.vec.extract.i, ptr %i.coc, align 4, !tbaa !48
  %i.cod = getelementptr inbounds nuw i8, ptr %.014463111.i, i64 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread2542.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.21448.i = phi ptr [ %i.cod, %bb.ax ], [ %.014463111.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.cnz, %.thread2542.i ]
  %indvars.iv.next3835.i = add nuw nsw i64 %indvars.iv3834.i, 1 ; 2 uses
  %exitcond3838.not.i = icmp eq i64 %indvars.iv.next3835.i, %i.axj
  br i1 %exitcond3838.not.i, label %._crit_edge3114.i, label %bb.ai, !llvm.loop !246

._crit_edge3335.split.i:                          ; preds = %._crit_edge3325.i, %.lr.ph3334.i, %._crit_edge3124.i
  %i.coe = shl nsw i32 %i.avx, 1
  %i.cof = add nsw i32 %i.coe, %i.avv             ; 2 uses
  %i.cog = icmp slt i32 %i.cof, %i.de
  br i1 %i.cog, label %.lr.ph3511.i, label %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph3511.i:                                     ; preds = %._crit_edge3335.split.i
  %i.coh = load ptr, ptr %2, align 8, !tbaa !19
  %i.coi = load i32, ptr %i.cy, align 4, !tbaa !55
  %i.coj = sext i32 %i.coi to i64
  %i.cok = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.col = load i64, ptr %i.cok, align 8, !tbaa !44
  %factor.op.mul3513.i = mul i64 %i.col, %i.coj
  %i.com = icmp sgt i32 %i.cz, 0
  %i.con = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not.i43 = icmp eq ptr %i.con, null
  %i.coo = icmp sgt i32 %i.cv, 15
  %i.cop = icmp ne i32 %i.ct, 16
  %i.coq = icmp ne i32 %i.ct, 8                   ; 2 uses
  %i.cor = icmp ne i32 %i.ct, 4                   ; 3 uses
  %i.cos = icmp ne i32 %i.ct, 1                   ; 3 uses
  %i.cot = load i32, ptr %i.d, align 4
  br i1 %i.com, label %.lr.ph3511.split.i, label %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph3511.split.i:                               ; preds = %.lr.ph3511.i
  %i.cou = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cov = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cow = load ptr, ptr %i.ck, align 8, !tbaa !19, !noalias !298
  %i.cox = load i64, ptr %i.cov, align 8, !tbaa !20, !noalias !298
  %i.coy = load i64, ptr %i.cou, align 8, !tbaa !44, !noalias !298
  %factor.op.mul3515.i = mul i64 %i.coy, %i.cox
  %i.coz = and i32 %i.cv, -16
  %i.cpa = sext i32 %i.cof to i64
  %wide.trip.count3940.i = sext i32 %i.de to i64
  %wide.trip.count3935.i = zext nneg i32 %i.cz to i64
  br label %.lr.ph3501.i

.lr.ph3324.i:                                     ; preds = %._crit_edge3325.i, %.lr.ph3334.split.i
  %indvars.iv3888.i = phi i64 [ 0, %.lr.ph3334.split.i ], [ %indvars.iv.next3889.i, %._crit_edge3325.i ] ; 2 uses
  %i.cpb = shl nuw nsw i64 %indvars.iv3888.i, 1
  %i.cpc = add nsw i64 %i.cpb, %i.aww             ; 4 uses
  %i.cpd = mul i64 %i.cpc, %i.awh
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.awd, i64 %i.cpd
  %i.cpf = or disjoint i64 %i.cpc, 1
  %i.cpg = mul i64 %i.cpf, %i.awh
  %i.cph = getelementptr inbounds nuw i8, ptr %i.awd, i64 %i.cpg
  %i.cpi = getelementptr inbounds [4 x i8], ptr %i.awj, i64 %i.cpc
  %i.cpj = trunc nsw i64 %i.cpc to i32            ; 3 uses
  %i.cpk = sdiv i32 %i.cpj, 16
  %i.cpl = srem i32 %i.cpj, 16
  %.lhs.trunc2564.i = trunc nsw i32 %i.cpl to i8
  %i.cpm = sdiv i8 %.lhs.trunc2564.i, 8
  %.sext2565.i = sext i8 %i.cpm to i32
  %i.cpn = insertelement <2 x i32> poison, i32 %i.cpj, i64 0
  %i.cpo = shufflevector <2 x i32> %i.cpn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cpp = srem <2 x i32> %i.cpo, <i32 8, i32 4>  ; 2 uses
  %i.cpq = bitcast <2 x i32> %i.cpp to <8 x i8>
  %.lhs.trunc2566.i = extractelement <8 x i8> %i.cpq, i64 0
  %i.cpr = sdiv i8 %.lhs.trunc2566.i, 4
  %.sext2567.i = sext i8 %i.cpr to i32
  %i.cps = extractelement <2 x i32> %i.cpp, i64 1
  %i.cpt = ashr exact i32 %i.cps, 1
  %i.cpu = add nsw i32 %i.cpt, %i.cpk
  %i.cpv = add nsw i32 %i.cpu, %.sext2565.i
  %i.cpw = add nsw i32 %i.cpv, %.sext2567.i
  %i.cpx = sext i32 %i.cpw to i64
  %.reass3338.i = mul i64 %factor.op.mul3337.i, %i.cpx
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.reass3338.i ; 2 uses
  %i.cpz = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3326.i = mul i32 %i.cpz, %i.avz   ; 3 uses
  %i.cqa = load i32, ptr %i.a, align 4            ; 9 uses
  %i.cqb = icmp sgt i32 %i.cqa, 0                 ; 2 uses
  %i.cqc = add i32 %i.cqa, -1
  %i.cqd = zext i32 %i.cqc to i64                 ; 2 uses
  %i.cqe = shl nuw nsw i64 %i.cqd, 4
  %i.cqf = shl nuw nsw i64 %i.cqd, 3
  %i.cqg = sext i32 %i.cpz to i64                 ; 2 uses
  %i.cqh = load ptr, ptr %4, align 8              ; 5 uses
  %i.cqi = load i32, ptr %i.ag, align 4
  %i.cqj = sext i32 %i.cqi to i64
  %i.cqk = load i64, ptr %i.ad, align 8
  %factor.op.mul3182.i = mul i64 %i.cqk, %i.cqj   ; 5 uses
  %xtraiter851 = and i32 %i.cqa, 1
  %i.cql = icmp eq i32 %i.cqa, 1
  %unroll_iter856 = and i32 %i.cqa, 2147483646
  %lcmp.mod853.not = icmp eq i32 %xtraiter851, 0
  %lcmp.mod855 = trunc i32 %i.cqa to i1
  %xtraiter859 = and i32 %i.cqa, 3                ; 3 uses
  %i.cqm = icmp ult i32 %i.cqa, 4
  %unroll_iter866 = and i32 %i.cqa, 2147483644
  %lcmp.mod863.not = icmp eq i32 %xtraiter859, 0
  %lcmp.mod865 = icmp ne i32 %xtraiter859, 0
  br label %bb.az

._crit_edge3325.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i
  %indvars.iv.next3889.i = add nuw nsw i64 %indvars.iv3888.i, 1 ; 2 uses
  %exitcond3892.not.i = icmp eq i64 %indvars.iv.next3889.i, %wide.trip.count3891.i
  br i1 %exitcond3892.not.i, label %._crit_edge3335.split.i, label %.lr.ph3324.i, !llvm.loop !249

bb.az:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i, %.lr.ph3324.i
  %indvars.iv3883.i = phi i64 [ 0, %.lr.ph3324.i ], [ %indvars.iv.next3884.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i ] ; 6 uses
  %.014013321.i = phi ptr [ %i.cph, %.lr.ph3324.i ], [ %i.dpq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i ] ; 2 uses
  %.014023320.i = phi ptr [ %i.cpe, %.lr.ph3324.i ], [ %i.dpp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i ] ; 2 uses
  br i1 %.not1503.i, label %_ZN4ncnn3MatD2Ev.exit1506.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cqn = load <2 x float>, ptr %i.cpi, align 4, !tbaa !48
  br label %_ZN4ncnn3MatD2Ev.exit1506.i

_ZN4ncnn3MatD2Ev.exit1506.i:                      ; preds = %bb.ba, %bb.az
  %i.cqo = phi <2 x float> [ %i.cqn, %bb.ba ], [ zeroinitializer, %bb.az ]
  br i1 %i.awk, label %.lr.ph3176.i, label %._crit_edge3177.i

.lr.ph3176.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit1506.i
  %i.cqp = trunc nuw nsw i64 %indvars.iv3883.i to i32
  %.reass3327.i = mul i32 %factor.op.mul3326.i, %i.cqp
  %i.cqq = sext i32 %.reass3327.i to i64
  %invariant.gep3184.i = getelementptr [4 x i8], ptr %i.cqh, i64 %i.cqq
  %i.cqr = load i32, ptr %i.a, align 4            ; 15 uses
  %i.cqs = icmp sgt i32 %i.cqr, 0                 ; 3 uses
  %i.cqt = load i32, ptr %i.b, align 4            ; 4 uses
  %i.cqu = shl nsw i32 %i.cqt, 4
  %i.cqv = sext i32 %i.cqu to i64                 ; 5 uses
  %i.cqw = load i32, ptr %i.e, align 4            ; 5 uses
  %i.cqx = sext i32 %i.cqw to i64                 ; 5 uses
  %i.cqy = shl nsw i32 %i.cqt, 3
  %i.cqz = sext i32 %i.cqy to i64                 ; 4 uses
  %5 = mul nsw i32 %i.cqw, 3
  %i.cra = insertelement <2 x i32> poison, i32 %i.cqw, i64 0
  %i.crb = shufflevector <2 x i32> %i.cra, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.crc = mul nsw <2 x i32> %i.crb, <i32 2, i32 3> ; 3 uses
  %6 = shl nsw i32 %i.cqw, 1
  %7 = sext i32 %6 to i64
  %8 = sext i32 %5 to i64
  %i.crd = shl nsw i32 %i.cqt, 2
  %i.cre = sext i32 %i.crd to i64                 ; 8 uses
  %i.crf = icmp slt i32 %i.cqr, 1
  %i.crg = insertelement <8 x i32> poison, i32 %i.cqw, i64 0 ; 2 uses
  %i.crh = shufflevector <8 x i32> %i.crg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cri = mul nsw <8 x i32> %i.crh, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.crj = sext <8 x i32> %i.cri to <8 x i64>     ; 3 uses
  %i.crk = shufflevector <8 x i32> %i.crg, <8 x i32> poison, <4 x i32> zeroinitializer
  %i.crl = mul nsw <4 x i32> %i.crk, <i32 4, i32 5, i32 6, i32 7>
  %i.crm = sext <4 x i32> %i.crl to <4 x i64>     ; 3 uses
  %i.crn = sext i32 %i.cqt to i64                 ; 2 uses
  %i.cro = add i32 %i.cqr, -1                     ; 4 uses
  %i.crp = zext i32 %i.cro to i64
  %i.crq = shl nuw nsw i64 %i.crp, 7              ; 4 uses
  %brmerge.i = select i1 %i.awo, i1 true, i1 %i.crf
  %xtraiter786 = and i32 %i.cqr, 1
  %i.crr = icmp eq i32 %i.cro, 0
  %unroll_iter792 = and i32 %i.cqr, 2147483646
  %i.crs = insertelement <16 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.cqx, i64 1
  %i.crt = sext <2 x i32> %i.crc to <2 x i64>
  %i.cru = shufflevector <2 x i64> %i.crt, <2 x i64> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.crv = shufflevector <16 x i64> %i.crs, <16 x i64> %i.cru, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.crw = shufflevector <8 x i64> %i.crj, <8 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.crx = shufflevector <16 x i64> %i.crv, <16 x i64> %i.crw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cry = shufflevector <4 x i64> %i.crm, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.crz = shufflevector <16 x i64> %i.crx, <16 x i64> %i.cry, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.csa = insertelement <16 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.cqx, i64 1
  %i.csb = sext <2 x i32> %i.crc to <2 x i64>
  %i.csc = shufflevector <2 x i64> %i.csb, <2 x i64> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csd = shufflevector <16 x i64> %i.csa, <16 x i64> %i.csc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cse = shufflevector <8 x i64> %i.crj, <8 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csf = shufflevector <16 x i64> %i.csd, <16 x i64> %i.cse, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.csg = shufflevector <4 x i64> %i.crm, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csh = shufflevector <16 x i64> %i.csf, <16 x i64> %i.csg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %lcmp.mod788.not = icmp eq i32 %xtraiter786, 0
  %lcmp.mod791 = trunc i32 %i.cqr to i1
  %i.csi = insertelement <16 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.cqx, i64 1
  %i.csj = sext <2 x i32> %i.crc to <2 x i64>
  %i.csk = shufflevector <2 x i64> %i.csj, <2 x i64> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csl = shufflevector <16 x i64> %i.csi, <16 x i64> %i.csk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csm = shufflevector <8 x i64> %i.crj, <8 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csn = shufflevector <16 x i64> %i.csl, <16 x i64> %i.csm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cso = shufflevector <4 x i64> %i.crm, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csp = shufflevector <16 x i64> %i.csn, <16 x i64> %i.cso, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %xtraiter794 = and i32 %i.cqr, 1
  %i.csq = icmp eq i32 %i.cro, 0
  %unroll_iter800 = and i32 %i.cqr, 2147483646
  %lcmp.mod796.not = icmp eq i32 %xtraiter794, 0
  %lcmp.mod799 = trunc i32 %i.cqr to i1
  %xtraiter802 = and i32 %i.cqr, 1
  %i.csr = icmp eq i32 %i.cro, 0
  %unroll_iter808 = and i32 %i.cqr, 2147483646
  %lcmp.mod804.not = icmp eq i32 %xtraiter802, 0
  %lcmp.mod807 = trunc i32 %i.cqr to i1
  %xtraiter810 = and i32 %i.cqr, 3                ; 3 uses
  %i.css = icmp ult i32 %i.cqr, 4
  %unroll_iter816 = and i32 %i.cqr, 2147483644
  %lcmp.mod812.not = icmp eq i32 %xtraiter810, 0
  %lcmp.mod815 = icmp ne i32 %xtraiter810, 0
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit2602.i, %.lr.ph3176.i
  %.013603175.i = phi i32 [ 0, %.lr.ph3176.i ], [ %i.cyk, %.loopexit2602.i ] ; 2 uses
  %.013653174.i = phi ptr [ %i.cpy, %.lr.ph3176.i ], [ %.81373.i, %.loopexit2602.i ] ; 16 uses
  %.025213173.i = phi <16 x float> [ zeroinitializer, %.lr.ph3176.i ], [ %.82529.i, %.loopexit2602.i ] ; 12 uses
  %.025303172.i = phi <16 x float> [ zeroinitializer, %.lr.ph3176.i ], [ %.82538.i, %.loopexit2602.i ] ; 12 uses
  %i.cst = sdiv i32 %.013603175.i, %i.avz
  %i.csu = sext i32 %i.cst to i64
  %.reass3183.i = mul i64 %factor.op.mul3182.i, %i.csu
  %gep3185.i = getelementptr i8, ptr %invariant.gep3184.i, i64 %.reass3183.i ; 12 uses
  br i1 %i.awl, label %.preheader2605.i, label %.loopexit2606.i

.preheader2605.i:                                 ; preds = %bb.bb
  br i1 %i.cqs, label %.lr.ph3132.i.preheader, label %.loopexit2602.i

.lr.ph3132.i.preheader:                           ; preds = %.preheader2605.i
  br i1 %i.css, label %.lr.ph3132.i.epil.preheader, label %.lr.ph3132.i

.lr.ph3132.i:                                     ; preds = %.lr.ph3132.i.preheader, %.lr.ph3132.i
  %.013533130.i = phi ptr [ %i.ctz, %.lr.ph3132.i ], [ %gep3185.i, %.lr.ph3132.i.preheader ] ; 2 uses
  %.113663129.i = phi ptr [ %i.cua, %.lr.ph3132.i ], [ %.013653174.i, %.lr.ph3132.i.preheader ] ; 9 uses
  %.125223128.i = phi <16 x float> [ %i.cty, %.lr.ph3132.i ], [ %.025213173.i, %.lr.ph3132.i.preheader ]
  %.125313127.i = phi <16 x float> [ %i.ctx, %.lr.ph3132.i ], [ %.025303172.i, %.lr.ph3132.i.preheader ]
  %niter817 = phi i32 [ %niter817.next.3, %.lr.ph3132.i ], [ 0, %.lr.ph3132.i.preheader ]
  %i.csv = load <16 x float>, ptr %.013533130.i, align 64, !tbaa !45 ; 2 uses
  %i.csw = load <16 x float>, ptr %.113663129.i, align 64, !tbaa !45
  %i.csx = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 64
  %i.csy = load <16 x float>, ptr %i.csx, align 64, !tbaa !45
  %i.csz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.csv, <16 x float> nofpclass(nan inf) %i.csw, <16 x float> nofpclass(nan inf) %.125313127.i)
  %i.cta = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.csv, <16 x float> nofpclass(nan inf) %i.csy, <16 x float> nofpclass(nan inf) %.125223128.i)
  %i.ctb = getelementptr inbounds [4 x i8], ptr %.013533130.i, i64 %i.cqv ; 2 uses
  %i.ctc = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 128
  %i.ctd = load <16 x float>, ptr %i.ctb, align 64, !tbaa !45 ; 2 uses
  %i.cte = load <16 x float>, ptr %i.ctc, align 64, !tbaa !45
  %i.ctf = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 192
  %i.ctg = load <16 x float>, ptr %i.ctf, align 64, !tbaa !45
  %i.cth = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ctd, <16 x float> nofpclass(nan inf) %i.cte, <16 x float> nofpclass(nan inf) %i.csz)
  %i.cti = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ctd, <16 x float> nofpclass(nan inf) %i.ctg, <16 x float> nofpclass(nan inf) %i.cta)
  %i.ctj = getelementptr inbounds [4 x i8], ptr %i.ctb, i64 %i.cqv ; 2 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 256
  %i.ctl = load <16 x float>, ptr %i.ctj, align 64, !tbaa !45 ; 2 uses
  %i.ctm = load <16 x float>, ptr %i.ctk, align 64, !tbaa !45
  %i.ctn = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 320
  %i.cto = load <16 x float>, ptr %i.ctn, align 64, !tbaa !45
  %i.ctp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ctl, <16 x float> nofpclass(nan inf) %i.ctm, <16 x float> nofpclass(nan inf) %i.cth)
  %i.ctq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ctl, <16 x float> nofpclass(nan inf) %i.cto, <16 x float> nofpclass(nan inf) %i.cti)
  %i.ctr = getelementptr inbounds [4 x i8], ptr %i.ctj, i64 %i.cqv ; 2 uses
  %i.cts = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 384
  %i.ctt = load <16 x float>, ptr %i.ctr, align 64, !tbaa !45 ; 2 uses
  %i.ctu = load <16 x float>, ptr %i.cts, align 64, !tbaa !45
  %i.ctv = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 448
  %i.ctw = load <16 x float>, ptr %i.ctv, align 64, !tbaa !45
  %i.ctx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ctt, <16 x float> nofpclass(nan inf) %i.ctu, <16 x float> nofpclass(nan inf) %i.ctp) ; 3 uses
  %i.cty = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ctt, <16 x float> nofpclass(nan inf) %i.ctw, <16 x float> nofpclass(nan inf) %i.ctq) ; 3 uses
  %i.ctz = getelementptr inbounds [4 x i8], ptr %i.ctr, i64 %i.cqv ; 2 uses
  %i.cua = getelementptr inbounds nuw i8, ptr %.113663129.i, i64 512 ; 2 uses
  %niter817.next.3 = add nuw nsw i32 %niter817, 4 ; 2 uses
  %niter817.ncmp.3 = icmp eq i32 %niter817.next.3, %unroll_iter816
  br i1 %niter817.ncmp.3, label %.loopexit2606.loopexit.i.unr-lcssa, label %.lr.ph3132.i, !llvm.loop !250

.loopexit2606.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3132.i
  br i1 %lcmp.mod812.not, label %.loopexit2606.loopexit.i, label %.lr.ph3132.i.epil.preheader

.lr.ph3132.i.epil.preheader:                      ; preds = %.loopexit2606.loopexit.i.unr-lcssa, %.lr.ph3132.i.preheader
  %.013533130.i.epil.init = phi ptr [ %gep3185.i, %.lr.ph3132.i.preheader ], [ %i.ctz, %.loopexit2606.loopexit.i.unr-lcssa ]
  %.113663129.i.epil.init = phi ptr [ %.013653174.i, %.lr.ph3132.i.preheader ], [ %i.cua, %.loopexit2606.loopexit.i.unr-lcssa ]
  %.125223128.i.epil.init = phi <16 x float> [ %.025213173.i, %.lr.ph3132.i.preheader ], [ %i.cty, %.loopexit2606.loopexit.i.unr-lcssa ]
  %.125313127.i.epil.init = phi <16 x float> [ %.025303172.i, %.lr.ph3132.i.preheader ], [ %i.ctx, %.loopexit2606.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod815)
  br label %.lr.ph3132.i.epil

.lr.ph3132.i.epil:                                ; preds = %.lr.ph3132.i.epil, %.lr.ph3132.i.epil.preheader
  %.013533130.i.epil = phi ptr [ %i.cuh, %.lr.ph3132.i.epil ], [ %.013533130.i.epil.init, %.lr.ph3132.i.epil.preheader ] ; 2 uses
  %.113663129.i.epil = phi ptr [ %i.cui, %.lr.ph3132.i.epil ], [ %.113663129.i.epil.init, %.lr.ph3132.i.epil.preheader ] ; 3 uses
  %.125223128.i.epil = phi <16 x float> [ %i.cug, %.lr.ph3132.i.epil ], [ %.125223128.i.epil.init, %.lr.ph3132.i.epil.preheader ]
  %.125313127.i.epil = phi <16 x float> [ %i.cuf, %.lr.ph3132.i.epil ], [ %.125313127.i.epil.init, %.lr.ph3132.i.epil.preheader ]
  %epil.iter811 = phi i32 [ %epil.iter811.next, %.lr.ph3132.i.epil ], [ 0, %.lr.ph3132.i.epil.preheader ]
  %i.cub = load <16 x float>, ptr %.013533130.i.epil, align 64, !tbaa !45 ; 2 uses
  %i.cuc = load <16 x float>, ptr %.113663129.i.epil, align 64, !tbaa !45
  %i.cud = getelementptr inbounds nuw i8, ptr %.113663129.i.epil, i64 64
  %i.cue = load <16 x float>, ptr %i.cud, align 64, !tbaa !45
  %i.cuf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cub, <16 x float> nofpclass(nan inf) %i.cuc, <16 x float> nofpclass(nan inf) %.125313127.i.epil) ; 2 uses
  %i.cug = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cub, <16 x float> nofpclass(nan inf) %i.cue, <16 x float> nofpclass(nan inf) %.125223128.i.epil) ; 2 uses
  %i.cuh = getelementptr inbounds [4 x i8], ptr %.013533130.i.epil, i64 %i.cqv
  %i.cui = getelementptr inbounds nuw i8, ptr %.113663129.i.epil, i64 128
  %epil.iter811.next = add i32 %epil.iter811, 1   ; 2 uses
  %epil.iter811.cmp.not = icmp eq i32 %epil.iter811.next, %xtraiter810
  br i1 %epil.iter811.cmp.not, label %.loopexit2606.loopexit.i, label %.lr.ph3132.i.epil, !llvm.loop !251

.loopexit2606.loopexit.i:                         ; preds = %.lr.ph3132.i.epil, %.loopexit2606.loopexit.i.unr-lcssa
  %.lcssa659 = phi <16 x float> [ %i.ctx, %.loopexit2606.loopexit.i.unr-lcssa ], [ %i.cuf, %.lr.ph3132.i.epil ]
  %.lcssa658 = phi <16 x float> [ %i.cty, %.loopexit2606.loopexit.i.unr-lcssa ], [ %i.cug, %.lr.ph3132.i.epil ]
  %scevgep3844.i = getelementptr i8, ptr %.013653174.i, i64 128
  %scevgep3845.i = getelementptr i8, ptr %scevgep3844.i, i64 %i.crq
  br label %.loopexit2602.i

.loopexit2606.i:                                  ; preds = %bb.bb
  br i1 %i.awm, label %bb.bc, label %.loopexit2604.i

bb.bc:                                            ; preds = %.loopexit2606.i
  br i1 %i.cqs, label %.lr.ph3144.preheader.i, label %.loopexit2602.i

.lr.ph3144.preheader.i:                           ; preds = %bb.bc
  %i.cuj = getelementptr inbounds [4 x i8], ptr %gep3185.i, i64 %i.cqx ; 2 uses
  br i1 %i.csr, label %.lr.ph3144.i.epil.preheader, label %.lr.ph3144.i

.lr.ph3144.i:                                     ; preds = %.lr.ph3144.preheader.i, %.lr.ph3144.i
  %.013483141.i = phi ptr [ %i.cve, %.lr.ph3144.i ], [ %i.cuj, %.lr.ph3144.preheader.i ] ; 2 uses
  %.213553140.i = phi ptr [ %i.cvd, %.lr.ph3144.i ], [ %gep3185.i, %.lr.ph3144.preheader.i ] ; 2 uses
  %.313683139.i = phi ptr [ %i.cvf, %.lr.ph3144.i ], [ %.013653174.i, %.lr.ph3144.preheader.i ] ; 5 uses
  %.325243138.i = phi <16 x float> [ %i.cvc, %.lr.ph3144.i ], [ %.025213173.i, %.lr.ph3144.preheader.i ]
  %.325333137.i = phi <16 x float> [ %i.cvb, %.lr.ph3144.i ], [ %.025303172.i, %.lr.ph3144.preheader.i ]
  %niter809 = phi i32 [ %niter809.next.1, %.lr.ph3144.i ], [ 0, %.lr.ph3144.preheader.i ]
  %i.cuk = load <8 x float>, ptr %.213553140.i, align 32, !tbaa !45
  %i.cul = load <8 x float>, ptr %.013483141.i, align 32, !tbaa !45
  %i.cum = shufflevector <8 x float> %i.cuk, <8 x float> %i.cul, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cun = load <16 x float>, ptr %.313683139.i, align 64, !tbaa !45
  %i.cuo = getelementptr inbounds nuw i8, ptr %.313683139.i, i64 64
  %i.cup = load <16 x float>, ptr %i.cuo, align 64, !tbaa !45
  %i.cuq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cum, <16 x float> nofpclass(nan inf) %i.cun, <16 x float> nofpclass(nan inf) %.325333137.i)
  %i.cur = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cum, <16 x float> nofpclass(nan inf) %i.cup, <16 x float> nofpclass(nan inf) %.325243138.i)
  %i.cus = getelementptr inbounds [4 x i8], ptr %.213553140.i, i64 %i.cqz ; 2 uses
  %i.cut = getelementptr inbounds [4 x i8], ptr %.013483141.i, i64 %i.cqz ; 2 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %.313683139.i, i64 128
  %i.cuv = load <8 x float>, ptr %i.cus, align 32, !tbaa !45
  %i.cuw = load <8 x float>, ptr %i.cut, align 32, !tbaa !45
  %i.cux = shufflevector <8 x float> %i.cuv, <8 x float> %i.cuw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cuy = load <16 x float>, ptr %i.cuu, align 64, !tbaa !45
  %i.cuz = getelementptr inbounds nuw i8, ptr %.313683139.i, i64 192
  %i.cva = load <16 x float>, ptr %i.cuz, align 64, !tbaa !45
  %i.cvb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cux, <16 x float> nofpclass(nan inf) %i.cuy, <16 x float> nofpclass(nan inf) %i.cuq) ; 3 uses
  %i.cvc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cux, <16 x float> nofpclass(nan inf) %i.cva, <16 x float> nofpclass(nan inf) %i.cur) ; 3 uses
  %i.cvd = getelementptr inbounds [4 x i8], ptr %i.cus, i64 %i.cqz ; 2 uses
  %i.cve = getelementptr inbounds [4 x i8], ptr %i.cut, i64 %i.cqz ; 2 uses
  %i.cvf = getelementptr inbounds nuw i8, ptr %.313683139.i, i64 256 ; 2 uses
  %niter809.next.1 = add nuw nsw i32 %niter809, 2 ; 2 uses
  %niter809.ncmp.1 = icmp eq i32 %niter809.next.1, %unroll_iter808
  br i1 %niter809.ncmp.1, label %.loopexit2604.loopexit.i.unr-lcssa, label %.lr.ph3144.i, !llvm.loop !252

.loopexit2604.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3144.i
  br i1 %lcmp.mod804.not, label %.loopexit2604.loopexit.i, label %.lr.ph3144.i.epil.preheader

.lr.ph3144.i.epil.preheader:                      ; preds = %.loopexit2604.loopexit.i.unr-lcssa, %.lr.ph3144.preheader.i
  %.013483141.i.epil.init = phi ptr [ %i.cuj, %.lr.ph3144.preheader.i ], [ %i.cve, %.loopexit2604.loopexit.i.unr-lcssa ]
  %.213553140.i.epil.init = phi ptr [ %gep3185.i, %.lr.ph3144.preheader.i ], [ %i.cvd, %.loopexit2604.loopexit.i.unr-lcssa ]
  %.313683139.i.epil.init = phi ptr [ %.013653174.i, %.lr.ph3144.preheader.i ], [ %i.cvf, %.loopexit2604.loopexit.i.unr-lcssa ] ; 2 uses
  %.325243138.i.epil.init = phi <16 x float> [ %.025213173.i, %.lr.ph3144.preheader.i ], [ %i.cvc, %.loopexit2604.loopexit.i.unr-lcssa ]
  %.325333137.i.epil.init = phi <16 x float> [ %.025303172.i, %.lr.ph3144.preheader.i ], [ %i.cvb, %.loopexit2604.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod807)
  %i.cvg = load <8 x float>, ptr %.213553140.i.epil.init, align 32, !tbaa !45
  %i.cvh = load <8 x float>, ptr %.013483141.i.epil.init, align 32, !tbaa !45
  %i.cvi = shufflevector <8 x float> %i.cvg, <8 x float> %i.cvh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cvj = load <16 x float>, ptr %.313683139.i.epil.init, align 64, !tbaa !45
  %i.cvk = getelementptr inbounds nuw i8, ptr %.313683139.i.epil.init, i64 64
  %i.cvl = load <16 x float>, ptr %i.cvk, align 64, !tbaa !45
  %i.cvm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cvi, <16 x float> nofpclass(nan inf) %i.cvj, <16 x float> nofpclass(nan inf) %.325333137.i.epil.init)
  %i.cvn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cvi, <16 x float> nofpclass(nan inf) %i.cvl, <16 x float> nofpclass(nan inf) %.325243138.i.epil.init)
  br label %.loopexit2604.loopexit.i

.loopexit2604.loopexit.i:                         ; preds = %.loopexit2604.loopexit.i.unr-lcssa, %.lr.ph3144.i.epil.preheader
  %.lcssa657 = phi <16 x float> [ %i.cvb, %.loopexit2604.loopexit.i.unr-lcssa ], [ %i.cvm, %.lr.ph3144.i.epil.preheader ]
  %.lcssa656 = phi <16 x float> [ %i.cvc, %.loopexit2604.loopexit.i.unr-lcssa ], [ %i.cvn, %.lr.ph3144.i.epil.preheader ]
  %scevgep3847.i = getelementptr i8, ptr %.013653174.i, i64 128
  %scevgep3848.i = getelementptr i8, ptr %scevgep3847.i, i64 %i.crq
  br label %.loopexit2602.i

.loopexit2604.i:                                  ; preds = %.loopexit2606.i
  br i1 %i.awn, label %bb.bd, label %.loopexit2603.i

bb.bd:                                            ; preds = %.loopexit2604.i
  br i1 %i.cqs, label %.lr.ph3158.preheader.i, label %.loopexit2602.i

.lr.ph3158.preheader.i:                           ; preds = %bb.bd
  %i.cvo = getelementptr inbounds [4 x i8], ptr %gep3185.i, i64 %8 ; 2 uses
  %i.cvp = getelementptr inbounds [4 x i8], ptr %gep3185.i, i64 %7 ; 2 uses
  %i.cvq = getelementptr inbounds [4 x i8], ptr %gep3185.i, i64 %i.cqx ; 2 uses
  br i1 %i.csq, label %.lr.ph3158.i.epil.preheader, label %.lr.ph3158.i

.lr.ph3158.i:                                     ; preds = %.lr.ph3158.preheader.i, %.lr.ph3158.i
  %.013313155.i = phi ptr [ %i.cwx, %.lr.ph3158.i ], [ %i.cvo, %.lr.ph3158.preheader.i ] ; 2 uses
  %.013323154.i = phi ptr [ %i.cww, %.lr.ph3158.i ], [ %i.cvp, %.lr.ph3158.preheader.i ] ; 2 uses
  %.013333153.i = phi ptr [ %i.cwv, %.lr.ph3158.i ], [ %i.cvq, %.lr.ph3158.preheader.i ] ; 2 uses
  %.413573152.i = phi ptr [ %i.cwu, %.lr.ph3158.i ], [ %gep3185.i, %.lr.ph3158.preheader.i ] ; 2 uses
  %.513703151.i = phi ptr [ %i.cwy, %.lr.ph3158.i ], [ %.013653174.i, %.lr.ph3158.preheader.i ] ; 5 uses
  %.525263150.i = phi <16 x float> [ %i.cwt, %.lr.ph3158.i ], [ %.025213173.i, %.lr.ph3158.preheader.i ]
  %.525353149.i = phi <16 x float> [ %i.cws, %.lr.ph3158.i ], [ %.025303172.i, %.lr.ph3158.preheader.i ]
  %niter801 = phi i32 [ %niter801.next.1, %.lr.ph3158.i ], [ 0, %.lr.ph3158.preheader.i ]
  %i.cvr = load <4 x float>, ptr %.413573152.i, align 16, !tbaa !45
  %i.cvs = load <4 x float>, ptr %.013333153.i, align 16, !tbaa !45
  %i.cvt = load <4 x float>, ptr %.013323154.i, align 16, !tbaa !45
  %i.cvu = load <4 x float>, ptr %.013313155.i, align 16, !tbaa !45
  %i.cvv = shufflevector <4 x float> %i.cvr, <4 x float> %i.cvs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvw = shufflevector <4 x float> %i.cvt, <4 x float> %i.cvu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvx = shufflevector <16 x float> %i.cvv, <16 x float> %i.cvw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.cvy = load <16 x float>, ptr %.513703151.i, align 64, !tbaa !45
  %i.cvz = getelementptr inbounds nuw i8, ptr %.513703151.i, i64 64
  %i.cwa = load <16 x float>, ptr %i.cvz, align 64, !tbaa !45
  %i.cwb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cvx, <16 x float> nofpclass(nan inf) %i.cvy, <16 x float> nofpclass(nan inf) %.525353149.i)
  %i.cwc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cvx, <16 x float> nofpclass(nan inf) %i.cwa, <16 x float> nofpclass(nan inf) %.525263150.i)
  %i.cwd = getelementptr inbounds [4 x i8], ptr %.413573152.i, i64 %i.cre ; 2 uses
  %i.cwe = getelementptr inbounds [4 x i8], ptr %.013333153.i, i64 %i.cre ; 2 uses
  %i.cwf = getelementptr inbounds [4 x i8], ptr %.013323154.i, i64 %i.cre ; 2 uses
  %i.cwg = getelementptr inbounds [4 x i8], ptr %.013313155.i, i64 %i.cre ; 2 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %.513703151.i, i64 128
  %i.cwi = load <4 x float>, ptr %i.cwd, align 16, !tbaa !45
  %i.cwj = load <4 x float>, ptr %i.cwe, align 16, !tbaa !45
  %i.cwk = load <4 x float>, ptr %i.cwf, align 16, !tbaa !45
  %i.cwl = load <4 x float>, ptr %i.cwg, align 16, !tbaa !45
  %i.cwm = shufflevector <4 x float> %i.cwi, <4 x float> %i.cwj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwn = shufflevector <4 x float> %i.cwk, <4 x float> %i.cwl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwo = shufflevector <16 x float> %i.cwm, <16 x float> %i.cwn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.cwp = load <16 x float>, ptr %i.cwh, align 64, !tbaa !45
  %i.cwq = getelementptr inbounds nuw i8, ptr %.513703151.i, i64 192
  %i.cwr = load <16 x float>, ptr %i.cwq, align 64, !tbaa !45
  %i.cws = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cwo, <16 x float> nofpclass(nan inf) %i.cwp, <16 x float> nofpclass(nan inf) %i.cwb) ; 3 uses
  %i.cwt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cwo, <16 x float> nofpclass(nan inf) %i.cwr, <16 x float> nofpclass(nan inf) %i.cwc) ; 3 uses
  %i.cwu = getelementptr inbounds [4 x i8], ptr %i.cwd, i64 %i.cre ; 2 uses
  %i.cwv = getelementptr inbounds [4 x i8], ptr %i.cwe, i64 %i.cre ; 2 uses
  %i.cww = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.cre ; 2 uses
  %i.cwx = getelementptr inbounds [4 x i8], ptr %i.cwg, i64 %i.cre ; 2 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %.513703151.i, i64 256 ; 2 uses
  %niter801.next.1 = add nuw nsw i32 %niter801, 2 ; 2 uses
  %niter801.ncmp.1 = icmp eq i32 %niter801.next.1, %unroll_iter800
  br i1 %niter801.ncmp.1, label %.loopexit2603.loopexit.i.unr-lcssa, label %.lr.ph3158.i, !llvm.loop !253

.loopexit2603.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3158.i
  br i1 %lcmp.mod796.not, label %.loopexit2603.loopexit.i, label %.lr.ph3158.i.epil.preheader

.lr.ph3158.i.epil.preheader:                      ; preds = %.loopexit2603.loopexit.i.unr-lcssa, %.lr.ph3158.preheader.i
  %.013313155.i.epil.init = phi ptr [ %i.cvo, %.lr.ph3158.preheader.i ], [ %i.cwx, %.loopexit2603.loopexit.i.unr-lcssa ]
  %.013323154.i.epil.init = phi ptr [ %i.cvp, %.lr.ph3158.preheader.i ], [ %i.cww, %.loopexit2603.loopexit.i.unr-lcssa ]
  %.013333153.i.epil.init = phi ptr [ %i.cvq, %.lr.ph3158.preheader.i ], [ %i.cwv, %.loopexit2603.loopexit.i.unr-lcssa ]
  %.413573152.i.epil.init = phi ptr [ %gep3185.i, %.lr.ph3158.preheader.i ], [ %i.cwu, %.loopexit2603.loopexit.i.unr-lcssa ]
  %.513703151.i.epil.init = phi ptr [ %.013653174.i, %.lr.ph3158.preheader.i ], [ %i.cwy, %.loopexit2603.loopexit.i.unr-lcssa ] ; 2 uses
  %.525263150.i.epil.init = phi <16 x float> [ %.025213173.i, %.lr.ph3158.preheader.i ], [ %i.cwt, %.loopexit2603.loopexit.i.unr-lcssa ]
  %.525353149.i.epil.init = phi <16 x float> [ %.025303172.i, %.lr.ph3158.preheader.i ], [ %i.cws, %.loopexit2603.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod799)
  %i.cwz = load <4 x float>, ptr %.413573152.i.epil.init, align 16, !tbaa !45
  %i.cxa = load <4 x float>, ptr %.013333153.i.epil.init, align 16, !tbaa !45
  %i.cxb = load <4 x float>, ptr %.013323154.i.epil.init, align 16, !tbaa !45
  %i.cxc = load <4 x float>, ptr %.013313155.i.epil.init, align 16, !tbaa !45
  %i.cxd = shufflevector <4 x float> %i.cwz, <4 x float> %i.cxa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cxe = shufflevector <4 x float> %i.cxb, <4 x float> %i.cxc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cxf = shufflevector <16 x float> %i.cxd, <16 x float> %i.cxe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.cxg = load <16 x float>, ptr %.513703151.i.epil.init, align 64, !tbaa !45
  %i.cxh = getelementptr inbounds nuw i8, ptr %.513703151.i.epil.init, i64 64
  %i.cxi = load <16 x float>, ptr %i.cxh, align 64, !tbaa !45
  %i.cxj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxf, <16 x float> nofpclass(nan inf) %i.cxg, <16 x float> nofpclass(nan inf) %.525353149.i.epil.init)
  %i.cxk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxf, <16 x float> nofpclass(nan inf) %i.cxi, <16 x float> nofpclass(nan inf) %.525263150.i.epil.init)
  br label %.loopexit2603.loopexit.i

.loopexit2603.loopexit.i:                         ; preds = %.loopexit2603.loopexit.i.unr-lcssa, %.lr.ph3158.i.epil.preheader
  %.lcssa655 = phi <16 x float> [ %i.cws, %.loopexit2603.loopexit.i.unr-lcssa ], [ %i.cxj, %.lr.ph3158.i.epil.preheader ]
  %.lcssa654 = phi <16 x float> [ %i.cwt, %.loopexit2603.loopexit.i.unr-lcssa ], [ %i.cxk, %.lr.ph3158.i.epil.preheader ]
  %scevgep3850.i = getelementptr i8, ptr %.013653174.i, i64 128
  %scevgep3851.i = getelementptr i8, ptr %scevgep3850.i, i64 %i.crq
  br label %.loopexit2602.i

.loopexit2603.i:                                  ; preds = %.loopexit2604.i
  br i1 %brmerge.i, label %.loopexit2602.i, label %.lr.ph3168.i.preheader

.lr.ph3168.i.preheader:                           ; preds = %.loopexit2603.i
  br i1 %i.crr, label %.lr.ph3168.i.epil.preheader, label %.lr.ph3168.i

.lr.ph3168.i:                                     ; preds = %.lr.ph3168.i.preheader, %.lr.ph3168.i
  %.613593166.i = phi ptr [ %i.cyb, %.lr.ph3168.i ], [ %gep3185.i, %.lr.ph3168.i.preheader ] ; 2 uses
  %.713723165.i = phi ptr [ %i.cyc, %.lr.ph3168.i ], [ %.013653174.i, %.lr.ph3168.i.preheader ] ; 5 uses
  %.725283164.i = phi <16 x float> [ %i.cya, %.lr.ph3168.i ], [ %.025213173.i, %.lr.ph3168.i.preheader ]
  %.725373163.i = phi <16 x float> [ %i.cxz, %.lr.ph3168.i ], [ %.025303172.i, %.lr.ph3168.i.preheader ]
  %niter793 = phi i32 [ %niter793.next.1, %.lr.ph3168.i ], [ 0, %.lr.ph3168.i.preheader ]
  %i.cxl = getelementptr inbounds [4 x i8], ptr %.613593166.i, <16 x i64> %i.crz
  %i.cxm = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.cxl, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !48 ; 2 uses
  %i.cxn = load <16 x float>, ptr %.713723165.i, align 64, !tbaa !45
  %i.cxo = getelementptr inbounds nuw i8, ptr %.713723165.i, i64 64
  %i.cxp = load <16 x float>, ptr %i.cxo, align 64, !tbaa !45
  %i.cxq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxm, <16 x float> nofpclass(nan inf) %i.cxn, <16 x float> nofpclass(nan inf) %.725373163.i)
  %i.cxr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxm, <16 x float> nofpclass(nan inf) %i.cxp, <16 x float> nofpclass(nan inf) %.725283164.i)
  %i.cxs = getelementptr inbounds [4 x i8], ptr %.613593166.i, i64 %i.crn ; 2 uses
  %i.cxt = getelementptr inbounds nuw i8, ptr %.713723165.i, i64 128
  %i.cxu = getelementptr inbounds [4 x i8], ptr %i.cxs, <16 x i64> %i.csh
  %i.cxv = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.cxu, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !48 ; 2 uses
  %i.cxw = load <16 x float>, ptr %i.cxt, align 64, !tbaa !45
  %i.cxx = getelementptr inbounds nuw i8, ptr %.713723165.i, i64 192
  %i.cxy = load <16 x float>, ptr %i.cxx, align 64, !tbaa !45
  %i.cxz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxv, <16 x float> nofpclass(nan inf) %i.cxw, <16 x float> nofpclass(nan inf) %i.cxq) ; 3 uses
  %i.cya = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxv, <16 x float> nofpclass(nan inf) %i.cxy, <16 x float> nofpclass(nan inf) %i.cxr) ; 3 uses
  %i.cyb = getelementptr inbounds [4 x i8], ptr %i.cxs, i64 %i.crn ; 2 uses
  %i.cyc = getelementptr inbounds nuw i8, ptr %.713723165.i, i64 256 ; 2 uses
  %niter793.next.1 = add nuw nsw i32 %niter793, 2 ; 2 uses
  %niter793.ncmp.1 = icmp eq i32 %niter793.next.1, %unroll_iter792
  br i1 %niter793.ncmp.1, label %.loopexit2602.loopexit.i.unr-lcssa, label %.lr.ph3168.i, !llvm.loop !254

.loopexit2602.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3168.i
  br i1 %lcmp.mod788.not, label %.loopexit2602.loopexit.i, label %.lr.ph3168.i.epil.preheader

.lr.ph3168.i.epil.preheader:                      ; preds = %.loopexit2602.loopexit.i.unr-lcssa, %.lr.ph3168.i.preheader
  %.613593166.i.epil.init = phi ptr [ %gep3185.i, %.lr.ph3168.i.preheader ], [ %i.cyb, %.loopexit2602.loopexit.i.unr-lcssa ]
  %.713723165.i.epil.init = phi ptr [ %.013653174.i, %.lr.ph3168.i.preheader ], [ %i.cyc, %.loopexit2602.loopexit.i.unr-lcssa ] ; 2 uses
  %.725283164.i.epil.init = phi <16 x float> [ %.025213173.i, %.lr.ph3168.i.preheader ], [ %i.cya, %.loopexit2602.loopexit.i.unr-lcssa ]
  %.725373163.i.epil.init = phi <16 x float> [ %.025303172.i, %.lr.ph3168.i.preheader ], [ %i.cxz, %.loopexit2602.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod791)
  %i.cyd = getelementptr inbounds [4 x i8], ptr %.613593166.i.epil.init, <16 x i64> %i.csp
  %i.cye = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.cyd, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !48 ; 2 uses
  %i.cyf = load <16 x float>, ptr %.713723165.i.epil.init, align 64, !tbaa !45
  %i.cyg = getelementptr inbounds nuw i8, ptr %.713723165.i.epil.init, i64 64
  %i.cyh = load <16 x float>, ptr %i.cyg, align 64, !tbaa !45
  %i.cyi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cye, <16 x float> nofpclass(nan inf) %i.cyf, <16 x float> nofpclass(nan inf) %.725373163.i.epil.init)
  %i.cyj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cye, <16 x float> nofpclass(nan inf) %i.cyh, <16 x float> nofpclass(nan inf) %.725283164.i.epil.init)
  br label %.loopexit2602.loopexit.i

.loopexit2602.loopexit.i:                         ; preds = %.loopexit2602.loopexit.i.unr-lcssa, %.lr.ph3168.i.epil.preheader
  %.lcssa653 = phi <16 x float> [ %i.cxz, %.loopexit2602.loopexit.i.unr-lcssa ], [ %i.cyi, %.lr.ph3168.i.epil.preheader ]
  %.lcssa652 = phi <16 x float> [ %i.cya, %.loopexit2602.loopexit.i.unr-lcssa ], [ %i.cyj, %.lr.ph3168.i.epil.preheader ]
  %scevgep3853.i = getelementptr i8, ptr %.013653174.i, i64 128
  %scevgep3854.i = getelementptr i8, ptr %scevgep3853.i, i64 %i.crq
  br label %.loopexit2602.i

.loopexit2602.i:                                  ; preds = %.loopexit2602.loopexit.i, %.loopexit2603.i, %.loopexit2603.loopexit.i, %bb.bd, %.loopexit2604.loopexit.i, %bb.bc, %.loopexit2606.loopexit.i, %.preheader2605.i
  %.82538.i = phi nsz <16 x float> [ %.025303172.i, %.loopexit2603.i ], [ %.lcssa653, %.loopexit2602.loopexit.i ], [ %.025303172.i, %bb.bd ], [ %.lcssa655, %.loopexit2603.loopexit.i ], [ %.025303172.i, %bb.bc ], [ %.lcssa657, %.loopexit2604.loopexit.i ], [ %.lcssa659, %.loopexit2606.loopexit.i ], [ %.025303172.i, %.preheader2605.i ] ; 2 uses
  %.82529.i = phi nsz <16 x float> [ %.025213173.i, %.loopexit2603.i ], [ %.lcssa652, %.loopexit2602.loopexit.i ], [ %.025213173.i, %bb.bd ], [ %.lcssa654, %.loopexit2603.loopexit.i ], [ %.025213173.i, %bb.bc ], [ %.lcssa656, %.loopexit2604.loopexit.i ], [ %.lcssa658, %.loopexit2606.loopexit.i ], [ %.025213173.i, %.preheader2605.i ] ; 2 uses
  %.81373.i = phi ptr [ %.013653174.i, %.loopexit2603.i ], [ %scevgep3854.i, %.loopexit2602.loopexit.i ], [ %.013653174.i, %bb.bd ], [ %scevgep3851.i, %.loopexit2603.loopexit.i ], [ %.013653174.i, %bb.bc ], [ %scevgep3848.i, %.loopexit2604.loopexit.i ], [ %scevgep3845.i, %.loopexit2606.loopexit.i ], [ %.013653174.i, %.preheader2605.i ] ; 2 uses
  %i.cyk = add nuw nsw i32 %.013603175.i, 16      ; 2 uses
  %i.cyl = or disjoint i32 %i.cyk, 15
  %i.cym = icmp slt i32 %i.cyl, %i.awb
  br i1 %i.cym, label %bb.bb, label %._crit_edge3177.i, !llvm.loop !255

._crit_edge3177.i:                                ; preds = %.loopexit2602.i, %_ZN4ncnn3MatD2Ev.exit1506.i
  %.02530.lcssa.i = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1506.i ], [ %.82538.i, %.loopexit2602.i ] ; 2 uses
  %.02521.lcssa.i = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1506.i ], [ %.82529.i, %.loopexit2602.i ] ; 2 uses
  %.01365.lcssa.i = phi ptr [ %i.cpy, %_ZN4ncnn3MatD2Ev.exit1506.i ], [ %.81373.i, %.loopexit2602.i ] ; 2 uses
  %.01360.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1506.i ], [ %i.awv, %.loopexit2602.i ] ; 3 uses
  %i.cyn = shufflevector <16 x float> %.02530.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cyo = shufflevector <16 x float> %.02530.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cyp = fadd fast <8 x float> %i.cyn, %i.cyo   ; 2 uses
  %i.cyq = shufflevector <8 x float> %i.cyp, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cyr = shufflevector <8 x float> %i.cyp, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cys = fadd fast <4 x float> %i.cyq, %i.cyr   ; 4 uses
  %i.cyt = shufflevector <16 x float> %.02521.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cyu = shufflevector <16 x float> %.02521.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cyv = fadd fast <8 x float> %i.cyt, %i.cyu   ; 2 uses
  %i.cyw = shufflevector <8 x float> %i.cyv, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cyx = shufflevector <8 x float> %i.cyv, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cyy = fadd fast <4 x float> %i.cyw, %i.cyx   ; 4 uses
  %i.cyz = or disjoint i32 %.01360.lcssa.i, 7
  %i.cza = icmp slt i32 %i.cyz, %i.awb
  br i1 %i.cza, label %.lr.ph3222.i, label %._crit_edge3223.i

.lr.ph3222.i:                                     ; preds = %._crit_edge3177.i
  %i.czb = trunc nuw nsw i64 %indvars.iv3883.i to i32
  %.reass3329.i = mul i32 %factor.op.mul3326.i, %i.czb
  %i.czc = sext i32 %.reass3329.i to i64
  %invariant.gep3230.i = getelementptr [4 x i8], ptr %i.cqh, i64 %i.czc
  %i.czd = load i32, ptr %i.a, align 4            ; 10 uses
  %i.cze = icmp sgt i32 %i.czd, 0                 ; 2 uses
  %i.czf = load i32, ptr %i.b, align 4            ; 3 uses
  %i.czg = shl nsw i32 %i.czf, 3
  %i.czh = sext i32 %i.czg to i64                 ; 5 uses
  %i.czi = load i32, ptr %i.e, align 4            ; 2 uses
  %i.czj = sext i32 %i.czi to i64                 ; 2 uses
  %i.czk = shl nsw i32 %i.czf, 2
  %i.czl = sext i32 %i.czk to i64                 ; 4 uses
  %i.czm = icmp slt i32 %i.czd, 1
  %i.czn = insertelement <4 x i32> poison, i32 %i.czi, i64 0 ; 2 uses
  %i.czo = sext i32 %i.czf to i64
  %i.czp = add i32 %i.czd, -1                     ; 2 uses
  %i.czq = zext i32 %i.czp to i64
  %i.czr = shl nuw nsw i64 %i.czq, 6              ; 3 uses
  %brmerge3521.i = select i1 %i.awo, i1 true, i1 %i.czm
  %i.czs = insertelement <8 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.czj, i64 1
  %i.czt = shufflevector <4 x i32> %i.czn, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czu = mul nsw <8 x i32> %i.czt, <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czv = sext <8 x i32> %i.czu to <8 x i64>
  %i.czw = shufflevector <8 x i64> %i.czs, <8 x i64> %i.czv, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.czx = shufflevector <4 x i32> %i.czn, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czy = mul nsw <8 x i32> %i.czx, <i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %scevgep3877.i = getelementptr i8, ptr %.2313883308.us.i, i64 8
  %scevgep3878.i = getelementptr i8, ptr %scevgep3877.i, i64 %i.cqf
  %indvars.iv.next3881.i = add nuw nsw i64 %indvars.iv3880.i, 1 ; 2 uses
  %i.dni = trunc nuw i64 %indvars.iv.next3881.i to i32
  %i.dnj = icmp sgt i32 %i.awb, %i.dni
  br i1 %i.dnj, label %.lr.ph3301.us.i, label %._crit_edge3311.i, !llvm.loop !269

._crit_edge3311.i:                                ; preds = %._crit_edge3302.us.i, %.lr.ph3282.i, %.lr.ph3310.i, %.preheader2607.i
  %i.dnk = phi <2 x float> [ %i.dll, %.preheader2607.i ], [ %i.dll, %.lr.ph3310.i ], [ %i.djd, %.lr.ph3282.i ], [ %.lcssa674, %._crit_edge3302.us.i ] ; 12 uses
  switch i32 %i.awp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2552.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2555.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2549.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2558.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2561.i
    i32 6, label %bb.bi
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2552.i: ; preds = %._crit_edge3311.i
  %i.dnl = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dnk, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2555.i: ; preds = %._crit_edge3311.i
  %i.dnm = load ptr, ptr %i.cr, align 8, !tbaa !19
  %i.dnn = load float, ptr %i.dnm, align 4, !tbaa !48
  %i.dno = fcmp fast ogt <2 x float> %i.dnk, zeroinitializer
  %i.dnp = insertelement <2 x float> poison, float %i.dnn, i64 0
  %i.dnq = shufflevector <2 x float> %i.dnp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dnr = select <2 x i1> %i.dno, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dnq
  %i.dns = fmul fast <2 x float> %i.dnr, %i.dnk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2549.i: ; preds = %._crit_edge3311.i
  %i.dnt = load ptr, ptr %i.cr, align 8, !tbaa !19 ; 2 uses
  %i.dnu = load float, ptr %i.dnt, align 4, !tbaa !48 ; 2 uses
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnt, i64 4
  %i.dnw = load float, ptr %i.dnv, align 4, !tbaa !48 ; 3 uses
  %i.dnx = extractelement <2 x float> %i.dnk, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dnx, float %i.dnu) ; 2 uses
  %i.dny = fcmp fast ogt float %spec.select.i, %i.dnw
  %.122902551.i = select i1 %i.dny, float %i.dnw, float %spec.select.i
  %i.dnz = extractelement <2 x float> %i.dnk, i64 1
  %.02291.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dnz, float %i.dnu)
  %spec.select2576.i = call nnan ninf nsz float @llvm.minnum.f32(float %.02291.i, float %i.dnw)
  %i.doa = insertelement <2 x float> poison, float %.122902551.i, i64 0
  %i.dob = insertelement <2 x float> %i.doa, float %spec.select2576.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2558.i: ; preds = %._crit_edge3311.i
  %i.doc = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dnk, <2 x float> splat (float f0x42B0C0A5))
  %i.dod = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.doc, <2 x float> splat (float f0xC2B0C0A5))
  %i.doe = fneg fast <2 x float> %i.dod
  %i.dof = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.doe)
  %i.dog = fadd fast <2 x float> %i.dof, splat (float 1.000000e+00)
  %i.doh = fdiv fast <2 x float> splat (float 1.000000e+00), %i.dog
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2561.i: ; preds = %._crit_edge3311.i
  %i.doi = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dnk)
  %i.doj = fadd fast <2 x float> %i.doi, splat (float 1.000000e+00)
  %i.dok = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.doj)
  %i.dol = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.dok)
  %i.dom = fmul fast <2 x float> %i.dol, %i.dnk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

bb.bi:                                            ; preds = %._crit_edge3311.i
  %i.don = load ptr, ptr %i.cr, align 8, !tbaa !19 ; 2 uses
  %i.doo = load float, ptr %i.don, align 4, !tbaa !48 ; 5 uses
  %i.dop = getelementptr inbounds nuw i8, ptr %i.don, i64 4
  %i.doq = load float, ptr %i.dop, align 4, !tbaa !48 ; 3 uses
  %i.dor = fneg fast float %i.doq
  %i.dos = fdiv fast float %i.dor, %i.doo         ; 4 uses
  %i.dot = extractelement <2 x float> %i.dnk, i64 0 ; 5 uses
  %i.dou = fcmp fast olt float %i.dot, %i.dos
  br i1 %i.dou, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dov = fdiv fast float 1.000000e+00, %i.doo
  %i.dow = fadd fast float %i.dos, %i.dov
  %i.dox = fcmp fast ogt float %i.dot, %i.dow
  br i1 %i.dox, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.doy = fmul fast float %i.doo, %i.dot
  %i.doz = fadd fast float %i.doy, %i.doq
  %i.dpa = fmul fast float %i.doz, %i.dot
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i: ; preds = %bb.bk, %bb.bj, %bb.bi
  %.122902545.i = phi float [ %i.dpa, %bb.bk ], [ 0.000000e+00, %bb.bi ], [ %i.dot, %bb.bj ] ; 2 uses
  %i.dpb = extractelement <2 x float> %i.dnk, i64 1 ; 4 uses
  %i.dpc = fcmp fast olt float %i.dpb, %i.dos
  %i.dpd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.122902545.i, i64 0 ; 2 uses
  br i1 %i.dpc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i, label %bb.bl

bb.bl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i
  %i.dpe = fdiv fast float 1.000000e+00, %i.doo
  %i.dpf = fadd fast float %i.dos, %i.dpe
  %i.dpg = fcmp fast ogt float %i.dpb, %i.dpf
  %i.dph = insertelement <2 x float> %i.dnk, float %.122902545.i, i64 0
  br i1 %i.dpg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dpi = fmul fast float %i.doo, %i.dpb
  %i.dpj = fadd fast float %i.dpi, %i.doq
  %i.dpk = fmul fast float %i.dpj, %i.dpb
  %i.dpl = insertelement <2 x float> %i.dpd, float %i.dpk, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1532.i:     ; preds = %bb.bm, %bb.bl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2561.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2558.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2549.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2555.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2552.i, %._crit_edge3311.i
  %i.dpm = phi <2 x float> [ %i.dpd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread.i ], [ %i.dnl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2552.i ], [ %i.dns, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2555.i ], [ %i.dnk, %._crit_edge3311.i ], [ %i.dob, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2549.i ], [ %i.doh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2558.i ], [ %i.dom, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1533.thread2561.i ], [ %i.dpl, %bb.bm ], [ %i.dph, %bb.bl ] ; 2 uses
  %i.dpn = extractelement <2 x float> %i.dpm, i64 0
  store float %i.dpn, ptr %.014023320.i, align 4, !tbaa !48
  %i.dpo = extractelement <2 x float> %i.dpm, i64 1
  store float %i.dpo, ptr %.014013321.i, align 4, !tbaa !48
  %i.dpp = getelementptr inbounds nuw i8, ptr %.014023320.i, i64 4
  %i.dpq = getelementptr inbounds nuw i8, ptr %.014013321.i, i64 4
  %indvars.iv.next3884.i = add nuw nsw i64 %indvars.iv3883.i, 1 ; 2 uses
  %exitcond3887.not.i = icmp eq i64 %indvars.iv.next3884.i, %wide.trip.count3886.i
  br i1 %exitcond3887.not.i, label %._crit_edge3325.i, label %bb.az, !llvm.loop !270

.lr.ph3501.i:                                     ; preds = %._crit_edge3502.i, %.lr.ph3511.split.i
  %indvars.iv3937.i = phi i64 [ %i.cpa, %.lr.ph3511.split.i ], [ %indvars.iv.next3938.i, %._crit_edge3502.i ] ; 4 uses
  %.reass3514.i = mul i64 %factor.op.mul3513.i, %indvars.iv3937.i
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.coh, i64 %.reass3514.i
  %i.dps = getelementptr inbounds [4 x i8], ptr %i.con, i64 %indvars.iv3937.i
  %i.dpt = trunc nsw i64 %indvars.iv3937.i to i32 ; 2 uses
  %i.dpu = sdiv i32 %i.dpt, 16
  %i.dpv = insertelement <4 x i32> poison, i32 %i.dpt, i64 0
  %i.dpw = shufflevector <4 x i32> %i.dpv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dpx = srem <4 x i32> %i.dpw, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.dpy = bitcast <4 x i32> %i.dpx to <16 x i8>
  %.lhs.trunc2568.i = extractelement <16 x i8> %i.dpy, i64 0
  %i.dpz = sdiv i8 %.lhs.trunc2568.i, 8
  %.sext2569.i = sext i8 %i.dpz to i32
  %i.dqa = bitcast <4 x i32> %i.dpx to <16 x i8>
  %.lhs.trunc2570.i = extractelement <16 x i8> %i.dqa, i64 4
  %i.dqb = sdiv i8 %.lhs.trunc2570.i, 4
  %.sext2571.i = sext i8 %i.dqb to i32
  %i.dqc = bitcast <4 x i32> %i.dpx to <16 x i8>
  %.lhs.trunc2572.i = extractelement <16 x i8> %i.dqc, i64 8
  %i.dqd = sdiv i8 %.lhs.trunc2572.i, 2
  %.sext2573.i = sext i8 %i.dqd to i32
  %i.dqe = extractelement <4 x i32> %i.dpx, i64 3
  %i.dqf = add nsw i32 %i.dqe, %i.dpu
  %i.dqg = add nsw i32 %i.dqf, %.sext2569.i
  %i.dqh = add nsw i32 %i.dqg, %.sext2571.i
  %i.dqi = add nsw i32 %i.dqh, %.sext2573.i
  %i.dqj = sext i32 %i.dqi to i64
  %.reass3516.i = mul i64 %factor.op.mul3515.i, %i.dqj
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.cow, i64 %.reass3516.i ; 2 uses
  %i.dql = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3503.i = mul i32 %i.dql, %i.ct    ; 3 uses
  %i.dqm = load i32, ptr %i.a, align 4            ; 9 uses
  %i.dqn = icmp sgt i32 %i.dqm, 0                 ; 2 uses
  %i.dqo = add i32 %i.dqm, -1
  %i.dqp = zext i32 %i.dqo to i64                 ; 2 uses
  %i.dqq = shl nuw nsw i64 %i.dqp, 3
  %i.dqr = shl nuw nsw i64 %i.dqp, 2
  %i.dqs = sext i32 %i.dql to i64                 ; 2 uses
  %i.dqt = load ptr, ptr %4, align 8              ; 5 uses
  %i.dqu = load i32, ptr %i.ag, align 4
  %i.dqv = sext i32 %i.dqu to i64
  %i.dqw = load i64, ptr %i.ad, align 8
  %factor.op.mul3384.i = mul i64 %i.dqw, %i.dqv   ; 5 uses
  %xtraiter932 = and i32 %i.dqm, 1
  %i.dqx = icmp eq i32 %i.dqm, 1
  %unroll_iter937 = and i32 %i.dqm, 2147483646
  %lcmp.mod934.not = icmp eq i32 %xtraiter932, 0
  %lcmp.mod936 = trunc i32 %i.dqm to i1
  %xtraiter940 = and i32 %i.dqm, 3                ; 3 uses
  %i.dqy = icmp ult i32 %i.dqm, 4
  %unroll_iter945 = and i32 %i.dqm, 2147483644
  %lcmp.mod942.not = icmp eq i32 %xtraiter940, 0
  %lcmp.mod944 = icmp ne i32 %xtraiter940, 0
  br label %bb.bn

._crit_edge3502.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %indvars.iv.next3938.i = add nsw i64 %indvars.iv3937.i, 1 ; 2 uses
  %exitcond3941.not.i = icmp eq i64 %indvars.iv.next3938.i, %wide.trip.count3940.i
  br i1 %exitcond3941.not.i, label %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit, label %.lr.ph3501.i, !llvm.loop !271

bb.bn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, %.lr.ph3501.i
  %indvars.iv3932.i = phi i64 [ 0, %.lr.ph3501.i ], [ %indvars.iv.next3933.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 6 uses
  %.012793498.i = phi ptr [ %i.dpr, %.lr.ph3501.i ], [ %i.elx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 2 uses
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dqz = load float, ptr %i.dps, align 4, !tbaa !48
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bo, %bb.bn
  %.01273.i = phi nsz float [ %i.dqz, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  br i1 %i.coo, label %.lr.ph3379.i, label %._crit_edge3380.i

.lr.ph3379.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  %i.dra = trunc nuw nsw i64 %indvars.iv3932.i to i32
  %.reass3504.i = mul i32 %factor.op.mul3503.i, %i.dra
  %i.drb = sext i32 %.reass3504.i to i64
  %invariant.gep3386.i = getelementptr [4 x i8], ptr %i.dqt, i64 %i.drb
  %i.drc = load i32, ptr %i.a, align 4            ; 14 uses
  %i.drd = icmp slt i32 %i.drc, 1                 ; 2 uses
  %i.dre = load i32, ptr %i.b, align 4            ; 4 uses
  %i.drf = shl nsw i32 %i.dre, 4
  %i.drg = sext i32 %i.drf to i64                 ; 5 uses
  %i.drh = load i32, ptr %i.e, align 4            ; 5 uses
  %i.dri = sext i32 %i.drh to i64                 ; 5 uses
  %i.drj = icmp sgt i32 %i.drc, 0                 ; 2 uses
  %i.drk = shl nsw i32 %i.dre, 3
  %i.drl = sext i32 %i.drk to i64                 ; 10 uses
  %9 = mul nsw i32 %i.drh, 3
  %i.drm = insertelement <2 x i32> poison, i32 %i.drh, i64 0
  %i.drn = shufflevector <2 x i32> %i.drm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dro = mul nsw <2 x i32> %i.drn, <i32 2, i32 3> ; 3 uses
  %10 = shl nsw i32 %i.drh, 1
  %11 = sext i32 %10 to i64
  %12 = sext i32 %9 to i64
  %i.drp = shl nsw i32 %i.dre, 2
  %i.drq = sext i32 %i.drp to i64                 ; 8 uses
  %i.drr = insertelement <8 x i32> poison, i32 %i.drh, i64 0 ; 2 uses
  %i.drs = shufflevector <8 x i32> %i.drr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.drt = mul nsw <8 x i32> %i.drs, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dru = sext <8 x i32> %i.drt to <8 x i64>     ; 3 uses
  %i.drv = shufflevector <8 x i32> %i.drr, <8 x i32> poison, <4 x i32> zeroinitializer
  %i.drw = mul nsw <4 x i32> %i.drv, <i32 4, i32 5, i32 6, i32 7>
  %i.drx = sext <4 x i32> %i.drw to <4 x i64>     ; 3 uses
  %i.dry = sext i32 %i.dre to i64                 ; 2 uses
  %i.drz = add i32 %i.drc, -1                     ; 4 uses
  %i.dsa = zext i32 %i.drz to i64
  %i.dsb = shl nuw nsw i64 %i.dsa, 6              ; 4 uses
  %brmerge3527.i = select i1 %i.cop, i1 true, i1 %i.drd
  %brmerge3530.i = select i1 %i.cos, i1 true, i1 %i.drd
  %xtraiter868 = and i32 %i.drc, 3                ; 3 uses
  %i.dsc = icmp ult i32 %i.drz, 3
  %unroll_iter873 = and i32 %i.drc, 2147483644
  %lcmp.mod870.not = icmp eq i32 %xtraiter868, 0
  %lcmp.mod872 = icmp ne i32 %xtraiter868, 0
  %xtraiter875 = and i32 %i.drc, 3                ; 3 uses
  %i.dsd = icmp ult i32 %i.drc, 4
  %unroll_iter880 = and i32 %i.drc, 2147483644
  %lcmp.mod877.not = icmp eq i32 %xtraiter875, 0
  %lcmp.mod879 = icmp ne i32 %xtraiter875, 0
  %xtraiter882 = and i32 %i.drc, 1
  %i.dse = icmp eq i32 %i.drz, 0
  %unroll_iter887 = and i32 %i.drc, 2147483646
  %lcmp.mod884.not = icmp eq i32 %xtraiter882, 0
  %lcmp.mod886 = trunc i32 %i.drc to i1
  %xtraiter889 = and i32 %i.drc, 1
  %i.dsf = icmp eq i32 %i.drz, 0
  %unroll_iter894 = and i32 %i.drc, 2147483646
  %i.dsg = insertelement <16 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.dri, i64 1
  %i.dsh = sext <2 x i32> %i.dro to <2 x i64>
  %i.dsi = shufflevector <2 x i64> %i.dsh, <2 x i64> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dsj = shufflevector <16 x i64> %i.dsg, <16 x i64> %i.dsi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dsk = shufflevector <8 x i64> %i.dru, <8 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dsl = shufflevector <16 x i64> %i.dsj, <16 x i64> %i.dsk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dsm = shufflevector <4 x i64> %i.drx, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dsn = shufflevector <16 x i64> %i.dsl, <16 x i64> %i.dsm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dso = insertelement <16 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.dri, i64 1
  %i.dsp = sext <2 x i32> %i.dro to <2 x i64>
  %i.dsq = shufflevector <2 x i64> %i.dsp, <2 x i64> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dsr = shufflevector <16 x i64> %i.dso, <16 x i64> %i.dsq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dss = shufflevector <8 x i64> %i.dru, <8 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dst = shufflevector <16 x i64> %i.dsr, <16 x i64> %i.dss, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dsu = shufflevector <4 x i64> %i.drx, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dsv = shufflevector <16 x i64> %i.dst, <16 x i64> %i.dsu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %lcmp.mod891.not = icmp eq i32 %xtraiter889, 0
  %lcmp.mod893 = trunc i32 %i.drc to i1
  %i.dsw = insertelement <16 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.dri, i64 1
  %i.dsx = sext <2 x i32> %i.dro to <2 x i64>
  %i.dsy = shufflevector <2 x i64> %i.dsx, <2 x i64> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dsz = shufflevector <16 x i64> %i.dsw, <16 x i64> %i.dsy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dta = shufflevector <8 x i64> %i.dru, <8 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dtb = shufflevector <16 x i64> %i.dsz, <16 x i64> %i.dta, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dtc = shufflevector <4 x i64> %i.drx, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dtd = shufflevector <16 x i64> %i.dtb, <16 x i64> %i.dtc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit2586.i, %.lr.ph3379.i
  %.012613378.i = phi i32 [ 0, %.lr.ph3379.i ], [ %i.dxy, %.loopexit2586.i ] ; 2 uses
  %.012663377.i = phi ptr [ %i.dqk, %.lr.ph3379.i ], [ %.8.i, %.loopexit2586.i ] ; 15 uses
  %.023973376.i = phi <16 x float> [ zeroinitializer, %.lr.ph3379.i ], [ %.82405.i, %.loopexit2586.i ] ; 11 uses
  %i.dte = sdiv i32 %.012613378.i, %i.ct
  %i.dtf = sext i32 %i.dte to i64
  %.reass3385.i = mul i64 %factor.op.mul3384.i, %i.dtf
  %gep3387.i = getelementptr i8, ptr %invariant.gep3386.i, i64 %.reass3385.i ; 12 uses
  br i1 %brmerge3527.i, label %.loopexit2590.i, label %.lr.ph3343.i.preheader

.lr.ph3343.i.preheader:                           ; preds = %bb.bp
  br i1 %i.dsc, label %.lr.ph3343.i.epil.preheader, label %.lr.ph3343.i

.lr.ph3343.i:                                     ; preds = %.lr.ph3343.i.preheader, %.lr.ph3343.i
  %.012563341.i = phi ptr [ %i.dty, %.lr.ph3343.i ], [ %gep3387.i, %.lr.ph3343.i.preheader ] ; 2 uses
  %.112673340.i = phi ptr [ %i.dtz, %.lr.ph3343.i ], [ %.012663377.i, %.lr.ph3343.i.preheader ] ; 5 uses
  %.123983339.i = phi <16 x float> [ %i.dtx, %.lr.ph3343.i ], [ %.023973376.i, %.lr.ph3343.i.preheader ]
  %niter874 = phi i32 [ %niter874.next.3, %.lr.ph3343.i ], [ 0, %.lr.ph3343.i.preheader ]
  %i.dtg = load <16 x float>, ptr %.012563341.i, align 64, !tbaa !45
  %i.dth = load <16 x float>, ptr %.112673340.i, align 64, !tbaa !45
  %i.dti = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dtg, <16 x float> nofpclass(nan inf) %i.dth, <16 x float> nofpclass(nan inf) %.123983339.i)
  %i.dtj = getelementptr inbounds [4 x i8], ptr %.012563341.i, i64 %i.drg ; 2 uses
  %i.dtk = getelementptr inbounds nuw i8, ptr %.112673340.i, i64 64
  %i.dtl = load <16 x float>, ptr %i.dtj, align 64, !tbaa !45
  %i.dtm = load <16 x float>, ptr %i.dtk, align 64, !tbaa !45
  %i.dtn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dtl, <16 x float> nofpclass(nan inf) %i.dtm, <16 x float> nofpclass(nan inf) %i.dti)
  %i.dto = getelementptr inbounds [4 x i8], ptr %i.dtj, i64 %i.drg ; 2 uses
  %i.dtp = getelementptr inbounds nuw i8, ptr %.112673340.i, i64 128
  %i.dtq = load <16 x float>, ptr %i.dto, align 64, !tbaa !45
  %i.dtr = load <16 x float>, ptr %i.dtp, align 64, !tbaa !45
  %i.dts = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dtq, <16 x float> nofpclass(nan inf) %i.dtr, <16 x float> nofpclass(nan inf) %i.dtn)
  %i.dtt = getelementptr inbounds [4 x i8], ptr %i.dto, i64 %i.drg ; 2 uses
  %i.dtu = getelementptr inbounds nuw i8, ptr %.112673340.i, i64 192
  %i.dtv = load <16 x float>, ptr %i.dtt, align 64, !tbaa !45
  %i.dtw = load <16 x float>, ptr %i.dtu, align 64, !tbaa !45
  %i.dtx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dtv, <16 x float> nofpclass(nan inf) %i.dtw, <16 x float> nofpclass(nan inf) %i.dts) ; 3 uses
  %i.dty = getelementptr inbounds [4 x i8], ptr %i.dtt, i64 %i.drg ; 2 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %.112673340.i, i64 256 ; 2 uses
  %niter874.next.3 = add nuw nsw i32 %niter874, 4 ; 2 uses
  %niter874.ncmp.3 = icmp eq i32 %niter874.next.3, %unroll_iter873
  br i1 %niter874.ncmp.3, label %.loopexit2590.thread.i.unr-lcssa, label %.lr.ph3343.i, !llvm.loop !272

.loopexit2590.thread.i.unr-lcssa:                 ; preds = %.lr.ph3343.i
  br i1 %lcmp.mod870.not, label %.loopexit2590.thread.i, label %.lr.ph3343.i.epil.preheader

.lr.ph3343.i.epil.preheader:                      ; preds = %.loopexit2590.thread.i.unr-lcssa, %.lr.ph3343.i.preheader
  %.012563341.i.epil.init = phi ptr [ %gep3387.i, %.lr.ph3343.i.preheader ], [ %i.dty, %.loopexit2590.thread.i.unr-lcssa ]
  %.112673340.i.epil.init = phi ptr [ %.012663377.i, %.lr.ph3343.i.preheader ], [ %i.dtz, %.loopexit2590.thread.i.unr-lcssa ]
  %.123983339.i.epil.init = phi <16 x float> [ %.023973376.i, %.lr.ph3343.i.preheader ], [ %i.dtx, %.loopexit2590.thread.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod872)
  br label %.lr.ph3343.i.epil

.lr.ph3343.i.epil:                                ; preds = %.lr.ph3343.i.epil, %.lr.ph3343.i.epil.preheader
  %.012563341.i.epil = phi ptr [ %i.dud, %.lr.ph3343.i.epil ], [ %.012563341.i.epil.init, %.lr.ph3343.i.epil.preheader ] ; 2 uses
  %.112673340.i.epil = phi ptr [ %i.due, %.lr.ph3343.i.epil ], [ %.112673340.i.epil.init, %.lr.ph3343.i.epil.preheader ] ; 2 uses
  %.123983339.i.epil = phi <16 x float> [ %i.duc, %.lr.ph3343.i.epil ], [ %.123983339.i.epil.init, %.lr.ph3343.i.epil.preheader ]
  %epil.iter869 = phi i32 [ %epil.iter869.next, %.lr.ph3343.i.epil ], [ 0, %.lr.ph3343.i.epil.preheader ]
  %i.dua = load <16 x float>, ptr %.012563341.i.epil, align 64, !tbaa !45
  %i.dub = load <16 x float>, ptr %.112673340.i.epil, align 64, !tbaa !45
  %i.duc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dua, <16 x float> nofpclass(nan inf) %i.dub, <16 x float> nofpclass(nan inf) %.123983339.i.epil) ; 2 uses
  %i.dud = getelementptr inbounds [4 x i8], ptr %.012563341.i.epil, i64 %i.drg
  %i.due = getelementptr inbounds nuw i8, ptr %.112673340.i.epil, i64 64
  %epil.iter869.next = add i32 %epil.iter869, 1   ; 2 uses
  %epil.iter869.cmp.not = icmp eq i32 %epil.iter869.next, %xtraiter868
  br i1 %epil.iter869.cmp.not, label %.loopexit2590.thread.i, label %.lr.ph3343.i.epil, !llvm.loop !273

.loopexit2590.thread.i:                           ; preds = %.lr.ph3343.i.epil, %.loopexit2590.thread.i.unr-lcssa
  %.lcssa = phi <16 x float> [ %i.dtx, %.loopexit2590.thread.i.unr-lcssa ], [ %i.duc, %.lr.ph3343.i.epil ]
  %scevgep3893.i = getelementptr i8, ptr %.012663377.i, i64 64
  %scevgep3894.i = getelementptr i8, ptr %scevgep3893.i, i64 %i.dsb
  br label %.loopexit2586.i

.loopexit2590.i:                                  ; preds = %bb.bp
  br i1 %i.coq, label %.loopexit2588.i, label %bb.bq

bb.bq:                                            ; preds = %.loopexit2590.i
  br i1 %i.drj, label %.lr.ph3353.preheader.i, label %.loopexit2586.i

.lr.ph3353.preheader.i:                           ; preds = %bb.bq
  %i.duf = getelementptr inbounds [4 x i8], ptr %gep3387.i, i64 %i.dri ; 2 uses
  br i1 %i.dsd, label %.lr.ph3353.i.epil.preheader, label %.lr.ph3353.i

.lr.ph3353.i:                                     ; preds = %.lr.ph3353.preheader.i, %.lr.ph3353.i
  %.012543350.i = phi ptr [ %i.dvk, %.lr.ph3353.i ], [ %i.duf, %.lr.ph3353.preheader.i ] ; 2 uses
  %.212583349.i = phi ptr [ %i.dvj, %.lr.ph3353.i ], [ %gep3387.i, %.lr.ph3353.preheader.i ] ; 2 uses
  %.312693348.i = phi ptr [ %i.dvl, %.lr.ph3353.i ], [ %.012663377.i, %.lr.ph3353.preheader.i ] ; 5 uses
  %.324003347.i = phi <16 x float> [ %i.dvi, %.lr.ph3353.i ], [ %.023973376.i, %.lr.ph3353.preheader.i ]
  %niter881 = phi i32 [ %niter881.next.3, %.lr.ph3353.i ], [ 0, %.lr.ph3353.preheader.i ]
  %i.dug = load <8 x float>, ptr %.212583349.i, align 32, !tbaa !45
  %i.duh = load <8 x float>, ptr %.012543350.i, align 32, !tbaa !45
  %i.dui = shufflevector <8 x float> %i.dug, <8 x float> %i.duh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.duj = load <16 x float>, ptr %.312693348.i, align 64, !tbaa !45
  %i.duk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dui, <16 x float> nofpclass(nan inf) %i.duj, <16 x float> nofpclass(nan inf) %.324003347.i)
  %i.dul = getelementptr inbounds [4 x i8], ptr %.212583349.i, i64 %i.drl ; 2 uses
  %i.dum = getelementptr inbounds [4 x i8], ptr %.012543350.i, i64 %i.drl ; 2 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %.312693348.i, i64 64
  %i.duo = load <8 x float>, ptr %i.dul, align 32, !tbaa !45
  %i.dup = load <8 x float>, ptr %i.dum, align 32, !tbaa !45
  %i.duq = shufflevector <8 x float> %i.duo, <8 x float> %i.dup, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dur = load <16 x float>, ptr %i.dun, align 64, !tbaa !45
  %i.dus = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.duq, <16 x float> nofpclass(nan inf) %i.dur, <16 x float> nofpclass(nan inf) %i.duk)
  %i.dut = getelementptr inbounds [4 x i8], ptr %i.dul, i64 %i.drl ; 2 uses
  %i.duu = getelementptr inbounds [4 x i8], ptr %i.dum, i64 %i.drl ; 2 uses
  %i.duv = getelementptr inbounds nuw i8, ptr %.312693348.i, i64 128
  %i.duw = load <8 x float>, ptr %i.dut, align 32, !tbaa !45
  %i.dux = load <8 x float>, ptr %i.duu, align 32, !tbaa !45
  %i.duy = shufflevector <8 x float> %i.duw, <8 x float> %i.dux, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.duz = load <16 x float>, ptr %i.duv, align 64, !tbaa !45
  %i.dva = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.duy, <16 x float> nofpclass(nan inf) %i.duz, <16 x float> nofpclass(nan inf) %i.dus)
  %i.dvb = getelementptr inbounds [4 x i8], ptr %i.dut, i64 %i.drl ; 2 uses
  %i.dvc = getelementptr inbounds [4 x i8], ptr %i.duu, i64 %i.drl ; 2 uses
  %i.dvd = getelementptr inbounds nuw i8, ptr %.312693348.i, i64 192
  %i.dve = load <8 x float>, ptr %i.dvb, align 32, !tbaa !45
  %i.dvf = load <8 x float>, ptr %i.dvc, align 32, !tbaa !45
  %i.dvg = shufflevector <8 x float> %i.dve, <8 x float> %i.dvf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dvh = load <16 x float>, ptr %i.dvd, align 64, !tbaa !45
  %i.dvi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dvg, <16 x float> nofpclass(nan inf) %i.dvh, <16 x float> nofpclass(nan inf) %i.dva) ; 3 uses
  %i.dvj = getelementptr inbounds [4 x i8], ptr %i.dvb, i64 %i.drl ; 2 uses
  %i.dvk = getelementptr inbounds [4 x i8], ptr %i.dvc, i64 %i.drl ; 2 uses
  %i.dvl = getelementptr inbounds nuw i8, ptr %.312693348.i, i64 256 ; 2 uses
  %niter881.next.3 = add nuw nsw i32 %niter881, 4 ; 2 uses
  %niter881.ncmp.3 = icmp eq i32 %niter881.next.3, %unroll_iter880
  br i1 %niter881.ncmp.3, label %.loopexit2588.loopexit.i.unr-lcssa, label %.lr.ph3353.i, !llvm.loop !274

.loopexit2588.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3353.i
  br i1 %lcmp.mod877.not, label %.loopexit2588.loopexit.i, label %.lr.ph3353.i.epil.preheader

.lr.ph3353.i.epil.preheader:                      ; preds = %.loopexit2588.loopexit.i.unr-lcssa, %.lr.ph3353.preheader.i
  %.012543350.i.epil.init = phi ptr [ %i.duf, %.lr.ph3353.preheader.i ], [ %i.dvk, %.loopexit2588.loopexit.i.unr-lcssa ]
  %.212583349.i.epil.init = phi ptr [ %gep3387.i, %.lr.ph3353.preheader.i ], [ %i.dvj, %.loopexit2588.loopexit.i.unr-lcssa ]
  %.312693348.i.epil.init = phi ptr [ %.012663377.i, %.lr.ph3353.preheader.i ], [ %i.dvl, %.loopexit2588.loopexit.i.unr-lcssa ]
  %.324003347.i.epil.init = phi <16 x float> [ %.023973376.i, %.lr.ph3353.preheader.i ], [ %i.dvi, %.loopexit2588.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod879)
  br label %.lr.ph3353.i.epil

.lr.ph3353.i.epil:                                ; preds = %.lr.ph3353.i.epil, %.lr.ph3353.i.epil.preheader
  %.012543350.i.epil = phi ptr [ %i.dvs, %.lr.ph3353.i.epil ], [ %.012543350.i.epil.init, %.lr.ph3353.i.epil.preheader ] ; 2 uses
  %.212583349.i.epil = phi ptr [ %i.dvr, %.lr.ph3353.i.epil ], [ %.212583349.i.epil.init, %.lr.ph3353.i.epil.preheader ] ; 2 uses
  %.312693348.i.epil = phi ptr [ %i.dvt, %.lr.ph3353.i.epil ], [ %.312693348.i.epil.init, %.lr.ph3353.i.epil.preheader ] ; 2 uses
  %.324003347.i.epil = phi <16 x float> [ %i.dvq, %.lr.ph3353.i.epil ], [ %.324003347.i.epil.init, %.lr.ph3353.i.epil.preheader ]
  %epil.iter876 = phi i32 [ %epil.iter876.next, %.lr.ph3353.i.epil ], [ 0, %.lr.ph3353.i.epil.preheader ]
  %i.dvm = load <8 x float>, ptr %.212583349.i.epil, align 32, !tbaa !45
  %i.dvn = load <8 x float>, ptr %.012543350.i.epil, align 32, !tbaa !45
  %i.dvo = shufflevector <8 x float> %i.dvm, <8 x float> %i.dvn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dvp = load <16 x float>, ptr %.312693348.i.epil, align 64, !tbaa !45
  %i.dvq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dvo, <16 x float> nofpclass(nan inf) %i.dvp, <16 x float> nofpclass(nan inf) %.324003347.i.epil) ; 2 uses
  %i.dvr = getelementptr inbounds [4 x i8], ptr %.212583349.i.epil, i64 %i.drl
  %i.dvs = getelementptr inbounds [4 x i8], ptr %.012543350.i.epil, i64 %i.drl
  %i.dvt = getelementptr inbounds nuw i8, ptr %.312693348.i.epil, i64 64
  %epil.iter876.next = add i32 %epil.iter876, 1   ; 2 uses
  %epil.iter876.cmp.not = icmp eq i32 %epil.iter876.next, %xtraiter875
  br i1 %epil.iter876.cmp.not, label %.loopexit2588.loopexit.i, label %.lr.ph3353.i.epil, !llvm.loop !275

.loopexit2588.loopexit.i:                         ; preds = %.lr.ph3353.i.epil, %.loopexit2588.loopexit.i.unr-lcssa
  %.lcssa639 = phi <16 x float> [ %i.dvi, %.loopexit2588.loopexit.i.unr-lcssa ], [ %i.dvq, %.lr.ph3353.i.epil ]
  %scevgep3896.i = getelementptr i8, ptr %.012663377.i, i64 64
  %scevgep3897.i = getelementptr i8, ptr %scevgep3896.i, i64 %i.dsb
  br label %.loopexit2586.i

.loopexit2588.i:                                  ; preds = %.loopexit2590.i
  br i1 %i.cor, label %.loopexit2587.i, label %bb.br

bb.br:                                            ; preds = %.loopexit2588.i
  br i1 %i.drj, label %.lr.ph3365.preheader.i, label %.loopexit2586.i

.lr.ph3365.preheader.i:                           ; preds = %bb.br
  %i.dvu = getelementptr inbounds [4 x i8], ptr %gep3387.i, i64 %12 ; 2 uses
  %i.dvv = getelementptr inbounds [4 x i8], ptr %gep3387.i, i64 %11 ; 2 uses
  %i.dvw = getelementptr inbounds [4 x i8], ptr %gep3387.i, i64 %i.dri ; 2 uses
  br i1 %i.dse, label %.lr.ph3365.i.epil.preheader, label %.lr.ph3365.i

.lr.ph3365.i:                                     ; preds = %.lr.ph3365.preheader.i, %.lr.ph3365.i
  %.012493362.i = phi ptr [ %i.dwx, %.lr.ph3365.i ], [ %i.dvu, %.lr.ph3365.preheader.i ] ; 2 uses
  %.012503361.i = phi ptr [ %i.dww, %.lr.ph3365.i ], [ %i.dvv, %.lr.ph3365.preheader.i ] ; 2 uses
  %.012513360.i = phi ptr [ %i.dwv, %.lr.ph3365.i ], [ %i.dvw, %.lr.ph3365.preheader.i ] ; 2 uses
  %.412603359.i = phi ptr [ %i.dwu, %.lr.ph3365.i ], [ %gep3387.i, %.lr.ph3365.preheader.i ] ; 2 uses
  %.512713358.i = phi ptr [ %i.dwy, %.lr.ph3365.i ], [ %.012663377.i, %.lr.ph3365.preheader.i ] ; 3 uses
  %.524023357.i = phi <16 x float> [ %i.dwt, %.lr.ph3365.i ], [ %.023973376.i, %.lr.ph3365.preheader.i ]
  %niter888 = phi i32 [ %niter888.next.1, %.lr.ph3365.i ], [ 0, %.lr.ph3365.preheader.i ]
  %i.dvx = load <4 x float>, ptr %.412603359.i, align 16, !tbaa !45
  %i.dvy = load <4 x float>, ptr %.012513360.i, align 16, !tbaa !45
  %i.dvz = load <4 x float>, ptr %.012503361.i, align 16, !tbaa !45
  %i.dwa = load <4 x float>, ptr %.012493362.i, align 16, !tbaa !45
  %i.dwb = shufflevector <4 x float> %i.dvx, <4 x float> %i.dvy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dwc = shufflevector <4 x float> %i.dvz, <4 x float> %i.dwa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dwd = shufflevector <16 x float> %i.dwb, <16 x float> %i.dwc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dwe = load <16 x float>, ptr %.512713358.i, align 64, !tbaa !45
  %i.dwf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dwd, <16 x float> nofpclass(nan inf) %i.dwe, <16 x float> nofpclass(nan inf) %.524023357.i)
  %i.dwg = getelementptr inbounds [4 x i8], ptr %.412603359.i, i64 %i.drq ; 2 uses
  %i.dwh = getelementptr inbounds [4 x i8], ptr %.012513360.i, i64 %i.drq ; 2 uses
  %i.dwi = getelementptr inbounds [4 x i8], ptr %.012503361.i, i64 %i.drq ; 2 uses
  %i.dwj = getelementptr inbounds [4 x i8], ptr %.012493362.i, i64 %i.drq ; 2 uses
  %i.dwk = getelementptr inbounds nuw i8, ptr %.512713358.i, i64 64
  %i.dwl = load <4 x float>, ptr %i.dwg, align 16, !tbaa !45
  %i.dwm = load <4 x float>, ptr %i.dwh, align 16, !tbaa !45
  %i.dwn = load <4 x float>, ptr %i.dwi, align 16, !tbaa !45
  %i.dwo = load <4 x float>, ptr %i.dwj, align 16, !tbaa !45
  %i.dwp = shufflevector <4 x float> %i.dwl, <4 x float> %i.dwm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dwq = shufflevector <4 x float> %i.dwn, <4 x float> %i.dwo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dwr = shufflevector <16 x float> %i.dwp, <16 x float> %i.dwq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dws = load <16 x float>, ptr %i.dwk, align 64, !tbaa !45
  %i.dwt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dwr, <16 x float> nofpclass(nan inf) %i.dws, <16 x float> nofpclass(nan inf) %i.dwf) ; 3 uses
  %i.dwu = getelementptr inbounds [4 x i8], ptr %i.dwg, i64 %i.drq ; 2 uses
  %i.dwv = getelementptr inbounds [4 x i8], ptr %i.dwh, i64 %i.drq ; 2 uses
  %i.dww = getelementptr inbounds [4 x i8], ptr %i.dwi, i64 %i.drq ; 2 uses
  %i.dwx = getelementptr inbounds [4 x i8], ptr %i.dwj, i64 %i.drq ; 2 uses
  %i.dwy = getelementptr inbounds nuw i8, ptr %.512713358.i, i64 128 ; 2 uses
  %niter888.next.1 = add nuw nsw i32 %niter888, 2 ; 2 uses
  %niter888.ncmp.1 = icmp eq i32 %niter888.next.1, %unroll_iter887
  br i1 %niter888.ncmp.1, label %.loopexit2587.loopexit.i.unr-lcssa, label %.lr.ph3365.i, !llvm.loop !276

.loopexit2587.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3365.i
  br i1 %lcmp.mod884.not, label %.loopexit2587.loopexit.i, label %.lr.ph3365.i.epil.preheader

.lr.ph3365.i.epil.preheader:                      ; preds = %.loopexit2587.loopexit.i.unr-lcssa, %.lr.ph3365.preheader.i
  %.012493362.i.epil.init = phi ptr [ %i.dvu, %.lr.ph3365.preheader.i ], [ %i.dwx, %.loopexit2587.loopexit.i.unr-lcssa ]
  %.012503361.i.epil.init = phi ptr [ %i.dvv, %.lr.ph3365.preheader.i ], [ %i.dww, %.loopexit2587.loopexit.i.unr-lcssa ]
  %.012513360.i.epil.init = phi ptr [ %i.dvw, %.lr.ph3365.preheader.i ], [ %i.dwv, %.loopexit2587.loopexit.i.unr-lcssa ]
  %.412603359.i.epil.init = phi ptr [ %gep3387.i, %.lr.ph3365.preheader.i ], [ %i.dwu, %.loopexit2587.loopexit.i.unr-lcssa ]
  %.512713358.i.epil.init = phi ptr [ %.012663377.i, %.lr.ph3365.preheader.i ], [ %i.dwy, %.loopexit2587.loopexit.i.unr-lcssa ]
  %.524023357.i.epil.init = phi <16 x float> [ %.023973376.i, %.lr.ph3365.preheader.i ], [ %i.dwt, %.loopexit2587.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod886)
  %i.dwz = load <4 x float>, ptr %.412603359.i.epil.init, align 16, !tbaa !45
  %i.dxa = load <4 x float>, ptr %.012513360.i.epil.init, align 16, !tbaa !45
  %i.dxb = load <4 x float>, ptr %.012503361.i.epil.init, align 16, !tbaa !45
  %i.dxc = load <4 x float>, ptr %.012493362.i.epil.init, align 16, !tbaa !45
  %i.dxd = shufflevector <4 x float> %i.dwz, <4 x float> %i.dxa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dxe = shufflevector <4 x float> %i.dxb, <4 x float> %i.dxc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dxf = shufflevector <16 x float> %i.dxd, <16 x float> %i.dxe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dxg = load <16 x float>, ptr %.512713358.i.epil.init, align 64, !tbaa !45
  %i.dxh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dxf, <16 x float> nofpclass(nan inf) %i.dxg, <16 x float> nofpclass(nan inf) %.524023357.i.epil.init)
  br label %.loopexit2587.loopexit.i

.loopexit2587.loopexit.i:                         ; preds = %.loopexit2587.loopexit.i.unr-lcssa, %.lr.ph3365.i.epil.preheader
  %.lcssa640 = phi <16 x float> [ %i.dwt, %.loopexit2587.loopexit.i.unr-lcssa ], [ %i.dxh, %.lr.ph3365.i.epil.preheader ]
  %scevgep3899.i = getelementptr i8, ptr %.012663377.i, i64 64
  %scevgep3900.i = getelementptr i8, ptr %scevgep3899.i, i64 %i.dsb
  br label %.loopexit2586.i

.loopexit2587.i:                                  ; preds = %.loopexit2588.i
  br i1 %brmerge3530.i, label %.loopexit2586.i, label %.lr.ph3373.i.preheader

.lr.ph3373.i.preheader:                           ; preds = %.loopexit2587.i
  br i1 %i.dsf, label %.lr.ph3373.i.epil.preheader, label %.lr.ph3373.i

.lr.ph3373.i:                                     ; preds = %.lr.ph3373.i.preheader, %.lr.ph3373.i
  %.63371.i = phi ptr [ %i.dxs, %.lr.ph3373.i ], [ %gep3387.i, %.lr.ph3373.i.preheader ] ; 2 uses
  %.73370.i = phi ptr [ %i.dxt, %.lr.ph3373.i ], [ %.012663377.i, %.lr.ph3373.i.preheader ] ; 3 uses
  %.724043369.i = phi <16 x float> [ %i.dxr, %.lr.ph3373.i ], [ %.023973376.i, %.lr.ph3373.i.preheader ]
  %niter895 = phi i32 [ %niter895.next.1, %.lr.ph3373.i ], [ 0, %.lr.ph3373.i.preheader ]
  %i.dxi = getelementptr inbounds [4 x i8], ptr %.63371.i, <16 x i64> %i.dsn
  %i.dxj = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.dxi, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !48
  %i.dxk = load <16 x float>, ptr %.73370.i, align 64, !tbaa !45
  %i.dxl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dxj, <16 x float> nofpclass(nan inf) %i.dxk, <16 x float> nofpclass(nan inf) %.724043369.i)
  %i.dxm = getelementptr inbounds [4 x i8], ptr %.63371.i, i64 %i.dry ; 2 uses
  %i.dxn = getelementptr inbounds nuw i8, ptr %.73370.i, i64 64
  %i.dxo = getelementptr inbounds [4 x i8], ptr %i.dxm, <16 x i64> %i.dsv
  %i.dxp = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.dxo, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !48
  %i.dxq = load <16 x float>, ptr %i.dxn, align 64, !tbaa !45
  %i.dxr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dxp, <16 x float> nofpclass(nan inf) %i.dxq, <16 x float> nofpclass(nan inf) %i.dxl) ; 3 uses
  %i.dxs = getelementptr inbounds [4 x i8], ptr %i.dxm, i64 %i.dry ; 2 uses
  %i.dxt = getelementptr inbounds nuw i8, ptr %.73370.i, i64 128 ; 2 uses
  %niter895.next.1 = add nuw nsw i32 %niter895, 2 ; 2 uses
  %niter895.ncmp.1 = icmp eq i32 %niter895.next.1, %unroll_iter894
  br i1 %niter895.ncmp.1, label %.loopexit2586.loopexit.i.unr-lcssa, label %.lr.ph3373.i, !llvm.loop !277

.loopexit2586.loopexit.i.unr-lcssa:               ; preds = %.lr.ph3373.i
  br i1 %lcmp.mod891.not, label %.loopexit2586.loopexit.i, label %.lr.ph3373.i.epil.preheader

.lr.ph3373.i.epil.preheader:                      ; preds = %.loopexit2586.loopexit.i.unr-lcssa, %.lr.ph3373.i.preheader
  %.63371.i.epil.init = phi ptr [ %gep3387.i, %.lr.ph3373.i.preheader ], [ %i.dxs, %.loopexit2586.loopexit.i.unr-lcssa ]
  %.73370.i.epil.init = phi ptr [ %.012663377.i, %.lr.ph3373.i.preheader ], [ %i.dxt, %.loopexit2586.loopexit.i.unr-lcssa ]
  %.724043369.i.epil.init = phi <16 x float> [ %.023973376.i, %.lr.ph3373.i.preheader ], [ %i.dxr, %.loopexit2586.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod893)
  %i.dxu = getelementptr inbounds [4 x i8], ptr %.63371.i.epil.init, <16 x i64> %i.dtd
  %i.dxv = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.dxu, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !48
  %i.dxw = load <16 x float>, ptr %.73370.i.epil.init, align 64, !tbaa !45
  %i.dxx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dxv, <16 x float> nofpclass(nan inf) %i.dxw, <16 x float> nofpclass(nan inf) %.724043369.i.epil.init)
  br label %.loopexit2586.loopexit.i

.loopexit2586.loopexit.i:                         ; preds = %.loopexit2586.loopexit.i.unr-lcssa, %.lr.ph3373.i.epil.preheader
  %.lcssa641 = phi <16 x float> [ %i.dxr, %.loopexit2586.loopexit.i.unr-lcssa ], [ %i.dxx, %.lr.ph3373.i.epil.preheader ]
  %scevgep3902.i = getelementptr i8, ptr %.012663377.i, i64 64
  %scevgep3903.i = getelementptr i8, ptr %scevgep3902.i, i64 %i.dsb
  br label %.loopexit2586.i

.loopexit2586.i:                                  ; preds = %.loopexit2586.loopexit.i, %.loopexit2587.i, %.loopexit2587.loopexit.i, %bb.br, %.loopexit2588.loopexit.i, %bb.bq, %.loopexit2590.thread.i
  %.82405.i = phi nsz <16 x float> [ %.023973376.i, %.loopexit2587.i ], [ %.lcssa641, %.loopexit2586.loopexit.i ], [ %.023973376.i, %bb.br ], [ %.lcssa640, %.loopexit2587.loopexit.i ], [ %.lcssa, %.loopexit2590.thread.i ], [ %.lcssa639, %.loopexit2588.loopexit.i ], [ %.023973376.i, %bb.bq ] ; 2 uses
  %.8.i = phi ptr [ %.012663377.i, %.loopexit2587.i ], [ %scevgep3903.i, %.loopexit2586.loopexit.i ], [ %.012663377.i, %bb.br ], [ %scevgep3900.i, %.loopexit2587.loopexit.i ], [ %scevgep3894.i, %.loopexit2590.thread.i ], [ %scevgep3897.i, %.loopexit2588.loopexit.i ], [ %.012663377.i, %bb.bq ] ; 2 uses
  %i.dxy = add nuw nsw i32 %.012613378.i, 16      ; 2 uses
  %i.dxz = or disjoint i32 %i.dxy, 15
  %i.dya = icmp slt i32 %i.dxz, %i.cv
  br i1 %i.dya, label %bb.bp, label %._crit_edge3380.i, !llvm.loop !278

._crit_edge3380.i:                                ; preds = %.loopexit2586.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.02397.lcssa.i = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.82405.i, %.loopexit2586.i ] ; 3 uses
  %.01266.lcssa.i = phi ptr [ %i.dqk, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.8.i, %.loopexit2586.i ] ; 2 uses
  %.01261.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.coz, %.loopexit2586.i ] ; 3 uses
  %i.dyb = shufflevector <16 x float> %.02397.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dyc = shufflevector <16 x float> %.02397.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dyd = fadd fast <8 x float> %i.dyb, %i.dyc   ; 2 uses
  %i.dye = shufflevector <8 x float> %i.dyd, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dyf = shufflevector <8 x float> %i.dyd, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dyg = fadd fast <4 x float> %i.dye, %i.dyf   ; 2 uses
  %i.dyh = shufflevector <4 x float> %i.dyg, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.dyi = fadd fast <4 x float> %i.dyh, %i.dyg
  %i.dyj = extractelement <4 x float> %i.dyi, i64 1
  %i.dyk = shufflevector <16 x float> %.02397.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyl = or disjoint i32 %.01261.lcssa.i, 7
  %i.dym = icmp slt i32 %i.dyl, %i.cv
  br i1 %i.dym, label %.lr.ph3417.i, label %._crit_edge3418.i

.lr.ph3417.i:                                     ; preds = %._crit_edge3380.i
  %i.dyn = trunc nuw nsw i64 %indvars.iv3932.i to i32
  %.reass3506.i = mul i32 %factor.op.mul3503.i, %i.dyn
  %i.dyo = sext i32 %.reass3506.i to i64
  %invariant.gep3424.i = getelementptr [4 x i8], ptr %i.dqt, i64 %i.dyo
  %i.dyp = load i32, ptr %i.a, align 4            ; 11 uses
  %i.dyq = icmp slt i32 %i.dyp, 1                 ; 2 uses
  %i.dyr = load i32, ptr %i.b, align 4            ; 3 uses
  %i.dys = shl nsw i32 %i.dyr, 3
  %i.dyt = sext i32 %i.dys to i64                 ; 5 uses
  %i.dyu = load i32, ptr %i.e, align 4            ; 2 uses
  %i.dyv = sext i32 %i.dyu to i64                 ; 4 uses
  %i.dyw = icmp sgt i32 %i.dyp, 0
  %i.dyx = shl nsw i32 %i.dyr, 2
  %i.dyy = sext i32 %i.dyx to i64                 ; 10 uses
  %i.dyz = insertelement <4 x i32> poison, i32 %i.dyu, i64 0 ; 6 uses
  %i.dza = sext i32 %i.dyr to i64                 ; 2 uses
  %i.dzb = add i32 %i.dyp, -1                     ; 3 uses
  %i.dzc = zext i32 %i.dzb to i64
  %i.dzd = shl nuw nsw i64 %i.dzc, 5              ; 3 uses
  %brmerge3533.i = select i1 %i.coq, i1 true, i1 %i.dyq
  %brmerge3536.i = select i1 %i.cos, i1 true, i1 %i.dyq
  %xtraiter896 = and i32 %i.dyp, 3                ; 3 uses
  %i.dze = icmp ult i32 %i.dzb, 3
  %unroll_iter901 = and i32 %i.dyp, 2147483644
  %lcmp.mod898.not = icmp eq i32 %xtraiter896, 0
  %lcmp.mod900 = icmp ne i32 %xtraiter896, 0
  %xtraiter903 = and i32 %i.dyp, 3                ; 3 uses
  %i.dzf = icmp ult i32 %i.dyp, 4
  %unroll_iter908 = and i32 %i.dyp, 2147483644
  %lcmp.mod905.not = icmp eq i32 %xtraiter903, 0
  %lcmp.mod907 = icmp ne i32 %xtraiter903, 0
  %xtraiter910 = and i32 %i.dyp, 1
  %i.dzg = icmp eq i32 %i.dzb, 0
  %unroll_iter915 = and i32 %i.dyp, 2147483646
  %i.dzh = insertelement <8 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.dyv, i64 1
  %i.dzi = shufflevector <4 x i32> %i.dyz, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzj = mul nsw <8 x i32> %i.dzi, <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzk = sext <8 x i32> %i.dzj to <8 x i64>
  %i.dzl = shufflevector <8 x i64> %i.dzh, <8 x i64> %i.dzk, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.dzm = shufflevector <4 x i32> %i.dyz, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzn = mul nsw <8 x i32> %i.dzm, <i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzo = sext <8 x i32> %i.dzn to <8 x i64>
  %i.dzp = shufflevector <8 x i64> %i.dzl, <8 x i64> %i.dzo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.dzq = insertelement <8 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.dyv, i64 1
  %i.dzr = shufflevector <4 x i32> %i.dyz, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzs = mul nsw <8 x i32> %i.dzr, <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzt = sext <8 x i32> %i.dzs to <8 x i64>
  %i.dzu = shufflevector <8 x i64> %i.dzq, <8 x i64> %i.dzt, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.dzv = shufflevector <4 x i32> %i.dyz, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzw = mul nsw <8 x i32> %i.dzv, <i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzx = sext <8 x i32> %i.dzw to <8 x i64>
  %i.dzy = shufflevector <8 x i64> %i.dzu, <8 x i64> %i.dzx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %lcmp.mod912.not = icmp eq i32 %xtraiter910, 0
  %lcmp.mod914 = trunc i32 %i.dyp to i1
  %i.dzz = insertelement <8 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %i.dyv, i64 1
end_hunk_1
