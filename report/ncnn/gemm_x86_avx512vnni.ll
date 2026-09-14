Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512vnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.cmr = icmp slt i32 %i.cmq, %6
  br i1 %i.cmr, label %.lr.ph2163.i.preheader, label %.preheader1066.i

.lr.ph2163.i.preheader:                           ; preds = %.preheader1067.i
  %i.cms = getelementptr inbounds nuw i8, ptr %indvars.iv871, i64 16
  %i.cmt = getelementptr i8, ptr %.62210.i, i64 %i.bhj
  %i.cmu = getelementptr i8, ptr %.62210.i, i64 %i.bhm
  br label %.lr.ph2163.i

.lr.ph2109.i:                                     ; preds = %.lr.ph2109.i.preheader, %._crit_edge2102.i
  %.212108.i = phi ptr [ %i.cqf, %._crit_edge2102.i ], [ %.20.lcssa.i, %.lr.ph2109.i.preheader ] ; 5 uses
  %.821252107.i = phi ptr [ %.112128.lcssa.i, %._crit_edge2102.i ], [ %.42121.lcssa.i, %.lr.ph2109.i.preheader ] ; 4 uses
  %.221392106.i = phi i32 [ %i.cqg, %._crit_edge2102.i ], [ %.12138.lcssa.i, %.lr.ph2109.i.preheader ]
  br i1 %i.bgh, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph2109.i
  %i.cmv = load <4 x i32>, ptr %.212108.i, align 16, !tbaa !17
  %i.cmw = getelementptr inbounds nuw i8, ptr %.212108.i, i64 16
  %i.cmx = load <4 x i32>, ptr %i.cmw, align 16, !tbaa !17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph2109.i
  %i.cmy = phi <4 x i32> [ %i.cmv, %bb.az ], [ zeroinitializer, %.lr.ph2109.i ] ; 3 uses
  %i.cmz = phi <4 x i32> [ %i.cmx, %bb.az ], [ zeroinitializer, %.lr.ph2109.i ] ; 3 uses
  br i1 %i.bgi, label %.lr.ph2081.i.preheader, label %._crit_edge2082.i

.lr.ph2081.i.preheader:                           ; preds = %bb.ba
  br i1 %i.bhe, label %.lr.ph2081.i.epil.preheader, label %.lr.ph2081.i

.lr.ph2081.i:                                     ; preds = %.lr.ph2081.i.preheader, %.lr.ph2081.i
  %.020992078.i = phi ptr [ %i.cnu, %.lr.ph2081.i ], [ %.62210.i, %.lr.ph2081.i.preheader ] ; 3 uses
  %.921262077.i = phi ptr [ %i.cnv, %.lr.ph2081.i ], [ %.821252107.i, %.lr.ph2081.i.preheader ] ; 3 uses
  %i.cna = phi <4 x i32> [ %i.cnt, %.lr.ph2081.i ], [ %i.cmz, %.lr.ph2081.i.preheader ]
  %i.cnb = phi <4 x i32> [ %i.cns, %.lr.ph2081.i ], [ %i.cmy, %.lr.ph2081.i.preheader ]
  %niter3204 = phi i32 [ %niter3204.next.1, %.lr.ph2081.i ], [ 0, %.lr.ph2081.i.preheader ]
  %i.cnc = load double, ptr %.020992078.i, align 1, !tbaa !17
  %i.cnd = insertelement <2 x double> poison, double %i.cnc, i64 0
  %i.cne = load <16 x i8>, ptr %.921262077.i, align 1, !tbaa !17 ; 2 uses
  %i.cnf = shufflevector <16 x i8> %i.cne, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3>
  %i.cng = bitcast <2 x double> %i.cnd to <16 x i8>
  %i.cnh = shufflevector <16 x i8> %i.cng, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cni = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.cnb, <16 x i8> %i.cne, <16 x i8> %i.cnh)
  %i.cnj = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.cna, <16 x i8> %i.cnf, <16 x i8> %i.cnh)
  %i.cnk = getelementptr inbounds nuw i8, ptr %.020992078.i, i64 8
  %i.cnl = getelementptr inbounds nuw i8, ptr %.921262077.i, i64 16
  %i.cnm = load double, ptr %i.cnk, align 1, !tbaa !17
  %i.cnn = insertelement <2 x double> poison, double %i.cnm, i64 0
  %i.cno = load <16 x i8>, ptr %i.cnl, align 1, !tbaa !17 ; 2 uses
  %i.cnp = shufflevector <16 x i8> %i.cno, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3>
  %i.cnq = bitcast <2 x double> %i.cnn to <16 x i8>
  %i.cnr = shufflevector <16 x i8> %i.cnq, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cns = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.cni, <16 x i8> %i.cno, <16 x i8> %i.cnr) ; 3 uses
  %i.cnt = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.cnj, <16 x i8> %i.cnp, <16 x i8> %i.cnr) ; 3 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %.020992078.i, i64 16 ; 2 uses
  %i.cnv = getelementptr inbounds nuw i8, ptr %.921262077.i, i64 32 ; 2 uses
  %niter3204.next.1 = add i32 %niter3204, 2       ; 2 uses
  %niter3204.ncmp.1.not = icmp eq i32 %niter3204.next.1, %unroll_iter3203
  br i1 %niter3204.ncmp.1.not, label %.unr-lcssa3191, label %.lr.ph2081.i, !llvm.loop !457

.unr-lcssa3191:                                   ; preds = %.lr.ph2081.i
  br i1 %lcmp.mod3198.not.not, label %.lr.ph2081.i.epil.preheader, label %bb.bb

.lr.ph2081.i.epil.preheader:                      ; preds = %.unr-lcssa3191, %.lr.ph2081.i.preheader
  %.020992078.i.epil.init = phi ptr [ %.62210.i, %.lr.ph2081.i.preheader ], [ %i.cnu, %.unr-lcssa3191 ]
  %.921262077.i.epil.init = phi ptr [ %.821252107.i, %.lr.ph2081.i.preheader ], [ %i.cnv, %.unr-lcssa3191 ]
  %.epil.init3195 = phi <4 x i32> [ %i.cmz, %.lr.ph2081.i.preheader ], [ %i.cnt, %.unr-lcssa3191 ]
  %.epil.init3197 = phi <4 x i32> [ %i.cmy, %.lr.ph2081.i.preheader ], [ %i.cns, %.unr-lcssa3191 ]
  tail call void @llvm.assume(i1 %lcmp.mod3202)
  %i.cnw = load double, ptr %.020992078.i.epil.init, align 1, !tbaa !17
  %i.cnx = insertelement <2 x double> poison, double %i.cnw, i64 0
  %i.cny = load <16 x i8>, ptr %.921262077.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.cnz = shufflevector <16 x i8> %i.cny, <16 x i8> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3>
  %i.coa = bitcast <2 x double> %i.cnx to <16 x i8>
  %i.cob = shufflevector <16 x i8> %i.coa, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.coc = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %.epil.init3197, <16 x i8> %i.cny, <16 x i8> %i.cob)
  %i.cod = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %.epil.init3195, <16 x i8> %i.cnz, <16 x i8> %i.cob)
  br label %bb.bb

bb.bb:                                            ; preds = %.unr-lcssa3191, %.lr.ph2081.i.epil.preheader
  %.lcssa2695 = phi <4 x i32> [ %i.cns, %.unr-lcssa3191 ], [ %i.coc, %.lr.ph2081.i.epil.preheader ]
  %.lcssa2694 = phi <4 x i32> [ %i.cnt, %.unr-lcssa3191 ], [ %i.cod, %.lr.ph2081.i.epil.preheader ]
  %i.coe = getelementptr i8, ptr %.821252107.i, i64 %i.bgs
  %scevgep2951.i = getelementptr i8, ptr %i.coe, i64 16
  %i.cof = load double, ptr %indvars.iv2956.i, align 1, !tbaa !17
  %i.cog = insertelement <2 x double> poison, double %i.cof, i64 0
  %i.coh = bitcast <2 x double> %i.cog to <4 x i32>
  %i.coi = shufflevector <4 x i32> %i.coh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.coj = sub <4 x i32> %.lcssa2695, %i.coi
  %i.cok = sub <4 x i32> %.lcssa2694, %i.coi
  br label %._crit_edge2082.i

._crit_edge2082.i:                                ; preds = %bb.bb, %bb.ba
  %.02096.lcssa3300.i = phi i32 [ %i.bgn, %bb.bb ], [ 0, %bb.ba ] ; 3 uses
  %.92126.lcssa3297.i = phi ptr [ %scevgep2951.i, %bb.bb ], [ %.821252107.i, %bb.ba ] ; 2 uses
  %i.col = phi <4 x i32> [ %i.coj, %bb.bb ], [ %i.cmy, %bb.ba ] ; 2 uses
  %i.com = phi <4 x i32> [ %i.cok, %bb.bb ], [ %i.cmz, %bb.ba ] ; 2 uses
  %.12100.i = phi ptr [ %i.chq, %bb.bb ], [ %.62210.i, %bb.ba ] ; 2 uses
  %i.con = or disjoint i32 %.02096.lcssa3300.i, 1
  %i.coo = icmp slt i32 %i.con, %8
  br i1 %i.coo, label %.lr.ph2092.i, label %.preheader1063.i

.preheader1063.i:                                 ; preds = %.lr.ph2092.i, %._crit_edge2082.i
  %.lcssa1127.i = phi <4 x i32> [ %i.col, %._crit_edge2082.i ], [ %i.cpa, %.lr.ph2092.i ] ; 2 uses
  %.lcssa1126.i = phi <4 x i32> [ %i.com, %._crit_edge2082.i ], [ %i.cpb, %.lr.ph2092.i ] ; 2 uses
  %.102127.lcssa.i = phi ptr [ %.92126.lcssa3297.i, %._crit_edge2082.i ], [ %i.cpd, %.lr.ph2092.i ] ; 2 uses
  %.22101.lcssa.i = phi ptr [ %.12100.i, %._crit_edge2082.i ], [ %i.cpc, %.lr.ph2092.i ]
  %.12097.lcssa.i = phi i32 [ %.02096.lcssa3300.i, %._crit_edge2082.i ], [ %i.cpe, %.lr.ph2092.i ] ; 2 uses
  %i.cop = icmp slt i32 %.12097.lcssa.i, %8
  br i1 %i.cop, label %.lr.ph2101.i, label %._crit_edge2102.i

.lr.ph2092.i:                                     ; preds = %._crit_edge2082.i, %.lr.ph2092.i
  %.120972090.i = phi i32 [ %i.cpe, %.lr.ph2092.i ], [ %.02096.lcssa3300.i, %._crit_edge2082.i ]
  %.221012089.i = phi ptr [ %i.cpc, %.lr.ph2092.i ], [ %.12100.i, %._crit_edge2082.i ] ; 2 uses
  %.1021272088.i = phi ptr [ %i.cpd, %.lr.ph2092.i ], [ %.92126.lcssa3297.i, %._crit_edge2082.i ] ; 2 uses
  %i.coq = phi <4 x i32> [ %i.cpb, %.lr.ph2092.i ], [ %i.com, %._crit_edge2082.i ]
  %i.cor = phi <4 x i32> [ %i.cpa, %.lr.ph2092.i ], [ %i.col, %._crit_edge2082.i ]
  %i.cos = load float, ptr %.221012089.i, align 1, !tbaa !17
  %i.cot = insertelement <4 x float> poison, float %i.cos, i64 0
  %i.cou = load <8 x i8>, ptr %.1021272088.i, align 1, !tbaa !17
  %i.cov = bitcast <4 x float> %i.cot to <16 x i8>
  %i.cow = shufflevector <16 x i8> %i.cov, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cox = sext <8 x i8> %i.cow to <8 x i16>      ; 2 uses
  %i.coy = sext <8 x i8> %i.cou to <8 x i16>      ; 2 uses
  %i.coz = shufflevector <8 x i16> %i.coy, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.cpa = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.cor, <8 x i16> %i.cox, <8 x i16> %i.coy) ; 2 uses
  %i.cpb = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.coq, <8 x i16> %i.cox, <8 x i16> %i.coz) ; 2 uses
  %i.cpc = getelementptr inbounds nuw i8, ptr %.221012089.i, i64 4 ; 2 uses
  %i.cpd = getelementptr inbounds nuw i8, ptr %.1021272088.i, i64 8 ; 2 uses
  %i.cpe = add nuw nsw i32 %.120972090.i, 2       ; 3 uses
  %i.cpf = or disjoint i32 %i.cpe, 1
  %i.cpg = icmp slt i32 %i.cpf, %8
  br i1 %i.cpg, label %.lr.ph2092.i, label %.preheader1063.i, !llvm.loop !458

.lr.ph2101.i:                                     ; preds = %.preheader1063.i, %.lr.ph2101.i
  %.220982100.i = phi i32 [ %i.cqd, %.lr.ph2101.i ], [ %.12097.lcssa.i, %.preheader1063.i ]
  %.321022099.i = phi ptr [ %i.cqb, %.lr.ph2101.i ], [ %.22101.lcssa.i, %.preheader1063.i ] ; 2 uses
  %.1121282098.i = phi ptr [ %i.cqc, %.lr.ph2101.i ], [ %.102127.lcssa.i, %.preheader1063.i ] ; 2 uses
  %i.cph = phi <4 x i32> [ %i.cqa, %.lr.ph2101.i ], [ %.lcssa1126.i, %.preheader1063.i ]
  %i.cpi = phi <4 x i32> [ %i.cpy, %.lr.ph2101.i ], [ %.lcssa1127.i, %.preheader1063.i ]
  %i.cpj = load i16, ptr %.321022099.i, align 2, !tbaa !518
  %i.cpk = insertelement <8 x i16> poison, i16 %i.cpj, i64 0
  %i.cpl = load float, ptr %.1121282098.i, align 1, !tbaa !17
  %i.cpm = insertelement <4 x float> poison, float %i.cpl, i64 0
  %i.cpn = bitcast <8 x i16> %i.cpk to <16 x i8>
  %i.cpo = shufflevector <16 x i8> %i.cpn, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cpp = sext <8 x i8> %i.cpo to <8 x i16>      ; 2 uses
  %i.cpq = bitcast <4 x float> %i.cpm to <16 x i8>
  %i.cpr = shufflevector <16 x i8> %i.cpq, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 0>
  %i.cps = sext <8 x i8> %i.cpr to <8 x i16>      ; 2 uses
  %i.cpt = mul nsw <8 x i16> %i.cps, %i.cpp       ; 2 uses
  %i.cpu = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cpp, <8 x i16> %i.cps) ; 2 uses
  %i.cpv = shufflevector <8 x i16> %i.cpt, <8 x i16> %i.cpu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cpw = shufflevector <8 x i16> %i.cpt, <8 x i16> %i.cpu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cpx = bitcast <8 x i16> %i.cpv to <4 x i32>
  %i.cpy = add <4 x i32> %i.cpi, %i.cpx           ; 2 uses
  %i.cpz = bitcast <8 x i16> %i.cpw to <4 x i32>
  %i.cqa = add <4 x i32> %i.cph, %i.cpz           ; 2 uses
  %i.cqb = getelementptr inbounds nuw i8, ptr %.321022099.i, i64 2
  %i.cqc = getelementptr inbounds nuw i8, ptr %.1121282098.i, i64 4 ; 2 uses
  %i.cqd = add nuw nsw i32 %.220982100.i, 1       ; 2 uses
  %exitcond2952.not.i = icmp eq i32 %i.cqd, %8
  br i1 %exitcond2952.not.i, label %._crit_edge2102.i, label %.lr.ph2101.i, !llvm.loop !459

._crit_edge2102.i:                                ; preds = %.lr.ph2101.i, %.preheader1063.i
  %.lcssa1129.i = phi <4 x i32> [ %.lcssa1127.i, %.preheader1063.i ], [ %i.cpy, %.lr.ph2101.i ]
  %.lcssa1128.i = phi <4 x i32> [ %.lcssa1126.i, %.preheader1063.i ], [ %i.cqa, %.lr.ph2101.i ]
  %.112128.lcssa.i = phi ptr [ %.102127.lcssa.i, %.preheader1063.i ], [ %i.cqc, %.lr.ph2101.i ] ; 2 uses
  store <4 x i32> %.lcssa1129.i, ptr %.212108.i, align 16, !tbaa !17
  %i.cqe = getelementptr inbounds nuw i8, ptr %.212108.i, i64 16
  store <4 x i32> %.lcssa1128.i, ptr %i.cqe, align 16, !tbaa !17
  %i.cqf = getelementptr inbounds nuw i8, ptr %.212108.i, i64 32 ; 2 uses
  %i.cqg = add nuw nsw i32 %.221392106.i, 4       ; 3 uses
  %i.cqh = or disjoint i32 %i.cqg, 3
  %i.cqi = icmp slt i32 %i.cqh, %6
  br i1 %i.cqi, label %.lr.ph2109.i, label %.preheader1067.i, !llvm.loop !460

.preheader1066.i:                                 ; preds = %._crit_edge2154.i, %.preheader1067.i
  %.32140.lcssa.i = phi i32 [ %.22139.lcssa.i, %.preheader1067.i ], [ %i.dfw, %._crit_edge2154.i ] ; 2 uses
  %.122129.lcssa.i = phi ptr [ %.82125.lcssa.i, %.preheader1067.i ], [ %.152132.lcssa.i, %._crit_edge2154.i ]
  %.22.lcssa.i = phi ptr [ %.21.lcssa.i, %.preheader1067.i ], [ %i.dfv, %._crit_edge2154.i ] ; 2 uses
  %i.cqj = icmp slt i32 %.32140.lcssa.i, %6
  br i1 %i.cqj, label %.lr.ph2205.preheader.i, label %._crit_edge2206.i

.lr.ph2205.preheader.i:                           ; preds = %.preheader1066.i
  %i.cqk = getelementptr inbounds nuw i8, ptr %indvars.iv2956.i, i64 8
  %i.cql = getelementptr i8, ptr %.62210.i, i64 %i.bhq
  %i.cqm = getelementptr i8, ptr %.62210.i, i64 %i.bhu
  br label %.lr.ph2205.i

.lr.ph2163.i:                                     ; preds = %.lr.ph2163.i.preheader, %._crit_edge2154.i
  %.222162.i = phi ptr [ %i.dfv, %._crit_edge2154.i ], [ %.21.lcssa.i, %.lr.ph2163.i.preheader ] ; 6 uses
  %.1221292161.i = phi ptr [ %.152132.lcssa.i, %._crit_edge2154.i ], [ %.82125.lcssa.i, %.lr.ph2163.i.preheader ] ; 7 uses
  %.321402160.i = phi i32 [ %i.dfw, %._crit_edge2154.i ], [ %.22139.lcssa.i, %.lr.ph2163.i.preheader ]
  br i1 %i.bgh, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph2163.i
  %i.cqn = load <4 x i32>, ptr %.222162.i, align 4, !tbaa !23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph2163.i
  %i.cqo = phi <4 x i32> [ %i.cqn, %bb.bc ], [ zeroinitializer, %.lr.ph2163.i ] ; 7 uses
  br i1 %i.bgi, label %iter.check2167, label %._crit_edge2122.i

iter.check2167:                                   ; preds = %bb.bd
  br i1 %min.iters.check2126, label %.lr.ph2121.i.preheader, label %vector.main.loop.iter.check2127

vector.main.loop.iter.check2127:                  ; preds = %iter.check2167
  %i.cqp = extractelement <4 x i32> %i.cqo, i64 0
  %i.cqq = extractelement <4 x i32> %i.cqo, i64 1
  %i.cqr = extractelement <4 x i32> %i.cqo, i64 2
  %i.cqs = extractelement <4 x i32> %i.cqo, i64 3
  br i1 %min.iters.check2128, label %vec.epilog.ph2171, label %vector.ph2129

vector.ph2129:                                    ; preds = %vector.main.loop.iter.check2127
  %i.cqt = getelementptr i8, ptr %.1221292161.i, i64 %i.bhj
  %9 = shufflevector <4 x i32> %i.cqo, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %10 = shufflevector <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %9, <16 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = shufflevector <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %9, <16 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %12 = shufflevector <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %9, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %13 = shufflevector <16 x i32> %9, <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body2131

vector.body2131:                                  ; preds = %vector.body2131, %vector.ph2129
  %index2132 = phi i64 [ 0, %vector.ph2129 ], [ %index.next2157, %vector.body2131 ] ; 2 uses
  %vec.phi2133 = phi <16 x i32> [ %10, %vector.ph2129 ], [ %36, %vector.body2131 ]
  %vec.phi2134 = phi <16 x i32> [ %11, %vector.ph2129 ], [ %32, %vector.body2131 ]
  %vec.phi2135 = phi <16 x i32> [ %12, %vector.ph2129 ], [ %28, %vector.body2131 ]
  %vec.phi2136 = phi <16 x i32> [ %13, %vector.ph2129 ], [ %24, %vector.body2131 ]
  %i.cqu = shl i64 %index2132, 3                  ; 2 uses
  %next.gep2137 = getelementptr i8, ptr %.62210.i, i64 %i.cqu
  %next.gep2138 = getelementptr i8, ptr %.1221292161.i, i64 %i.cqu
  %wide.vec2139 = load <128 x i8>, ptr %next.gep2137, align 1, !tbaa !17 ; 8 uses
  %strided.vec2140 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec2141 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec2142 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec2143 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec2144 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec2145 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec2146 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec2147 = shufflevector <128 x i8> %wide.vec2139, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %14 = sext <16 x i8> %strided.vec2140 to <16 x i32> ; 2 uses
  %wide.vec2148 = load <128 x i8>, ptr %next.gep2138, align 1, !tbaa !17 ; 8 uses
  %strided.vec2149 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec2150 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec2151 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec2152 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec2153 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec2154 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec2155 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec2156 = shufflevector <128 x i8> %wide.vec2148, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %i.cqv = zext <16 x i8> %strided.vec2149 to <16 x i32> ; 2 uses
  %i.cqw = mul nsw <16 x i32> %i.cqv, %14
  %15 = add <16 x i32> %i.cqw, %vec.phi2136
  %16 = sext <16 x i8> %strided.vec2141 to <16 x i32> ; 2 uses
  %17 = zext <16 x i8> %strided.vec2150 to <16 x i32> ; 2 uses
  %i.cqx = mul nsw <16 x i32> %17, %16
  %18 = add <16 x i32> %15, %i.cqx
  %19 = sext <16 x i8> %strided.vec2142 to <16 x i32> ; 2 uses
  %20 = zext <16 x i8> %strided.vec2151 to <16 x i32> ; 2 uses
  %i.cqy = mul nsw <16 x i32> %20, %19
  %21 = add <16 x i32> %18, %i.cqy
  %22 = sext <16 x i8> %strided.vec2143 to <16 x i32> ; 2 uses
  %23 = zext <16 x i8> %strided.vec2152 to <16 x i32> ; 2 uses
  %i.cqz = mul nsw <16 x i32> %23, %22
  %24 = add <16 x i32> %21, %i.cqz                ; 2 uses
  %i.cra = zext <16 x i8> %strided.vec2153 to <16 x i32> ; 2 uses
  %i.crb = mul nsw <16 x i32> %i.cra, %14
  %25 = add <16 x i32> %i.crb, %vec.phi2135
  %i.crc = zext <16 x i8> %strided.vec2154 to <16 x i32> ; 2 uses
  %i.crd = mul nsw <16 x i32> %i.crc, %16
  %26 = add <16 x i32> %25, %i.crd
  %i.cre = zext <16 x i8> %strided.vec2155 to <16 x i32> ; 2 uses
  %i.crf = mul nsw <16 x i32> %i.cre, %19
  %27 = add <16 x i32> %26, %i.crf
  %i.crg = zext <16 x i8> %strided.vec2156 to <16 x i32> ; 2 uses
  %i.crh = mul nsw <16 x i32> %i.crg, %22
  %28 = add <16 x i32> %27, %i.crh                ; 2 uses
  %i.cri = sext <16 x i8> %strided.vec2144 to <16 x i32> ; 2 uses
  %i.crj = mul nsw <16 x i32> %i.cri, %i.cqv
  %29 = add <16 x i32> %i.crj, %vec.phi2134
  %i.crk = sext <16 x i8> %strided.vec2145 to <16 x i32> ; 2 uses
  %i.crl = mul nsw <16 x i32> %i.crk, %17
  %30 = add <16 x i32> %29, %i.crl
  %i.crm = sext <16 x i8> %strided.vec2146 to <16 x i32> ; 2 uses
  %i.crn = mul nsw <16 x i32> %i.crm, %20
  %31 = add <16 x i32> %30, %i.crn
  %i.cro = sext <16 x i8> %strided.vec2147 to <16 x i32> ; 2 uses
  %i.crp = mul nsw <16 x i32> %i.cro, %23
  %32 = add <16 x i32> %31, %i.crp                ; 2 uses
  %i.crq = mul nsw <16 x i32> %i.cri, %i.cra
  %33 = add <16 x i32> %i.crq, %vec.phi2133
  %i.crr = mul nsw <16 x i32> %i.crk, %i.crc
  %34 = add <16 x i32> %33, %i.crr
  %i.crs = mul nsw <16 x i32> %i.crm, %i.cre
  %35 = add <16 x i32> %34, %i.crs
  %i.crt = mul nsw <16 x i32> %i.cro, %i.crg
  %36 = add <16 x i32> %35, %i.crt                ; 2 uses
  %index.next2157 = add nuw i64 %index2132, 16    ; 2 uses
  %i.cru = icmp eq i64 %index.next2157, %n.vec2130
  br i1 %i.cru, label %middle.block2158, label %vector.body2131, !llvm.loop !461

middle.block2158:                                 ; preds = %vector.body2131
  %i.crv = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %36) ; 2 uses
  %i.crw = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %32) ; 2 uses
  %i.crx = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %28) ; 2 uses
  %i.cry = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %24) ; 2 uses
  %i.crz = insertelement <4 x i32> poison, i32 %i.cry, i64 0
  %i.csa = insertelement <4 x i32> %i.crz, i32 %i.crx, i64 1
  %i.csb = insertelement <4 x i32> %i.csa, i32 %i.crw, i64 2
  %i.csc = insertelement <4 x i32> %i.csb, i32 %i.crv, i64 3 ; 2 uses
  br i1 %cmp.n2159, label %.loopexit2589, label %vec.epilog.iter.check2169

vec.epilog.iter.check2169:                        ; preds = %middle.block2158
  br i1 %min.epilog.iters.check2170, label %.lr.ph2121.i.preheader, label %vec.epilog.ph2171, !prof !32

vec.epilog.ph2171:                                ; preds = %vector.main.loop.iter.check2127, %vec.epilog.iter.check2169
  %vec.epilog.resume.val2160 = phi i64 [ %n.vec2130, %vec.epilog.iter.check2169 ], [ 0, %vector.main.loop.iter.check2127 ]
  %bc.merge.rdx2162 = phi i32 [ %i.crv, %vec.epilog.iter.check2169 ], [ %i.cqs, %vector.main.loop.iter.check2127 ]
  %bc.merge.rdx2163 = phi i32 [ %i.crw, %vec.epilog.iter.check2169 ], [ %i.cqr, %vector.main.loop.iter.check2127 ]
  %bc.merge.rdx2164 = phi i32 [ %i.crx, %vec.epilog.iter.check2169 ], [ %i.cqq, %vector.main.loop.iter.check2127 ]
  %bc.merge.rdx2165 = phi i32 [ %i.cry, %vec.epilog.iter.check2169 ], [ %i.cqp, %vector.main.loop.iter.check2127 ]
  %i.csd = getelementptr i8, ptr %.1221292161.i, i64 %i.bhm
  %i.cse = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2162, i64 0
  %i.csf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2163, i64 0
  %i.csg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2164, i64 0
  %i.csh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2165, i64 0
  br label %vec.epilog.vector.body2173

vec.epilog.vector.body2173:                       ; preds = %vec.epilog.vector.body2173, %vec.epilog.ph2171
  %index2174 = phi i64 [ %vec.epilog.resume.val2160, %vec.epilog.ph2171 ], [ %index.next2199, %vec.epilog.vector.body2173 ] ; 2 uses
  %vec.phi2175 = phi <4 x i32> [ %i.cse, %vec.epilog.ph2171 ], [ %i.cue, %vec.epilog.vector.body2173 ]
  %vec.phi2176 = phi <4 x i32> [ %i.csf, %vec.epilog.ph2171 ], [ %i.ctw, %vec.epilog.vector.body2173 ]
  %vec.phi2177 = phi <4 x i32> [ %i.csg, %vec.epilog.ph2171 ], [ %i.ctk, %vec.epilog.vector.body2173 ]
  %vec.phi2178 = phi <4 x i32> [ %i.csh, %vec.epilog.ph2171 ], [ %i.csy, %vec.epilog.vector.body2173 ]
  %i.csi = shl i64 %index2174, 3                  ; 2 uses
  %next.gep2179 = getelementptr i8, ptr %.62210.i, i64 %i.csi
  %next.gep2180 = getelementptr i8, ptr %.1221292161.i, i64 %i.csi
  %wide.vec2181 = load <32 x i8>, ptr %next.gep2179, align 1, !tbaa !17 ; 8 uses
  %strided.vec2182 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec2183 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec2184 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec2185 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec2186 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec2187 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec2188 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec2189 = shufflevector <32 x i8> %wide.vec2181, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.csj = sext <4 x i8> %strided.vec2182 to <4 x i32> ; 2 uses
  %wide.vec2190 = load <32 x i8>, ptr %next.gep2180, align 1, !tbaa !17 ; 8 uses
  %strided.vec2191 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec2192 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec2193 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec2194 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec2195 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec2196 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec2197 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec2198 = shufflevector <32 x i8> %wide.vec2190, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.csk = zext <4 x i8> %strided.vec2191 to <4 x i32> ; 2 uses
  %i.csl = mul nsw <4 x i32> %i.csk, %i.csj
  %i.csm = add <4 x i32> %i.csl, %vec.phi2178
  %i.csn = sext <4 x i8> %strided.vec2183 to <4 x i32> ; 2 uses
  %i.cso = zext <4 x i8> %strided.vec2192 to <4 x i32> ; 2 uses
  %i.csp = mul nsw <4 x i32> %i.cso, %i.csn
  %i.csq = add <4 x i32> %i.csm, %i.csp
  %i.csr = sext <4 x i8> %strided.vec2184 to <4 x i32> ; 2 uses
  %i.css = zext <4 x i8> %strided.vec2193 to <4 x i32> ; 2 uses
  %i.cst = mul nsw <4 x i32> %i.css, %i.csr
  %i.csu = add <4 x i32> %i.csq, %i.cst
  %i.csv = sext <4 x i8> %strided.vec2185 to <4 x i32> ; 2 uses
  %i.csw = zext <4 x i8> %strided.vec2194 to <4 x i32> ; 2 uses
  %i.csx = mul nsw <4 x i32> %i.csw, %i.csv
  %i.csy = add <4 x i32> %i.csu, %i.csx           ; 2 uses
  %i.csz = zext <4 x i8> %strided.vec2195 to <4 x i32> ; 2 uses
  %i.cta = mul nsw <4 x i32> %i.csz, %i.csj
  %i.ctb = add <4 x i32> %i.cta, %vec.phi2177
  %i.ctc = zext <4 x i8> %strided.vec2196 to <4 x i32> ; 2 uses
  %i.ctd = mul nsw <4 x i32> %i.ctc, %i.csn
  %i.cte = add <4 x i32> %i.ctb, %i.ctd
  %i.ctf = zext <4 x i8> %strided.vec2197 to <4 x i32> ; 2 uses
  %i.ctg = mul nsw <4 x i32> %i.ctf, %i.csr
  %i.cth = add <4 x i32> %i.cte, %i.ctg
  %i.cti = zext <4 x i8> %strided.vec2198 to <4 x i32> ; 2 uses
  %i.ctj = mul nsw <4 x i32> %i.cti, %i.csv
  %i.ctk = add <4 x i32> %i.cth, %i.ctj           ; 2 uses
  %i.ctl = sext <4 x i8> %strided.vec2186 to <4 x i32> ; 2 uses
  %i.ctm = mul nsw <4 x i32> %i.ctl, %i.csk
  %i.ctn = add <4 x i32> %i.ctm, %vec.phi2176
  %i.cto = sext <4 x i8> %strided.vec2187 to <4 x i32> ; 2 uses
  %i.ctp = mul nsw <4 x i32> %i.cto, %i.cso
  %i.ctq = add <4 x i32> %i.ctn, %i.ctp
  %i.ctr = sext <4 x i8> %strided.vec2188 to <4 x i32> ; 2 uses
  %i.cts = mul nsw <4 x i32> %i.ctr, %i.css
  %i.ctt = add <4 x i32> %i.ctq, %i.cts
  %i.ctu = sext <4 x i8> %strided.vec2189 to <4 x i32> ; 2 uses
  %i.ctv = mul nsw <4 x i32> %i.ctu, %i.csw
  %i.ctw = add <4 x i32> %i.ctt, %i.ctv           ; 2 uses
  %i.ctx = mul nsw <4 x i32> %i.ctl, %i.csz
  %i.cty = add <4 x i32> %i.ctx, %vec.phi2175
  %i.ctz = mul nsw <4 x i32> %i.cto, %i.ctc
  %i.cua = add <4 x i32> %i.cty, %i.ctz
  %i.cub = mul nsw <4 x i32> %i.ctr, %i.ctf
  %i.cuc = add <4 x i32> %i.cua, %i.cub
  %i.cud = mul nsw <4 x i32> %i.ctu, %i.cti
  %i.cue = add <4 x i32> %i.cuc, %i.cud           ; 2 uses
  %index.next2199 = add nuw i64 %index2174, 4     ; 2 uses
  %i.cuf = icmp eq i64 %index.next2199, %n.vec2172
  br i1 %i.cuf, label %vec.epilog.middle.block2200, label %vec.epilog.vector.body2173, !llvm.loop !462

vec.epilog.middle.block2200:                      ; preds = %vec.epilog.vector.body2173
  %i.cug = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cue)
  %i.cuh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ctw)
  %i.cui = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ctk)
  %i.cuj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.csy)
  %i.cuk = insertelement <4 x i32> poison, i32 %i.cuj, i64 0
  %i.cul = insertelement <4 x i32> %i.cuk, i32 %i.cui, i64 1
  %i.cum = insertelement <4 x i32> %i.cul, i32 %i.cuh, i64 2
  %i.cun = insertelement <4 x i32> %i.cum, i32 %i.cug, i64 3 ; 2 uses
  br i1 %cmp.n2201, label %.loopexit2589, label %.lr.ph2121.i.preheader

.lr.ph2121.i.preheader:                           ; preds = %iter.check2167, %vec.epilog.iter.check2169, %vec.epilog.middle.block2200
  %.020202119.i.ph = phi i32 [ 0, %iter.check2167 ], [ %i.bhi, %vec.epilog.iter.check2169 ], [ %i.bhl, %vec.epilog.middle.block2200 ]
  %.020232118.i.ph = phi ptr [ %.62210.i, %iter.check2167 ], [ %i.cmt, %vec.epilog.iter.check2169 ], [ %i.cmu, %vec.epilog.middle.block2200 ]
  %.1321302113.i.ph = phi ptr [ %.1221292161.i, %iter.check2167 ], [ %i.cqt, %vec.epilog.iter.check2169 ], [ %i.csd, %vec.epilog.middle.block2200 ]
  %.ph2668 = phi <4 x i32> [ %i.cqo, %iter.check2167 ], [ %i.csc, %vec.epilog.iter.check2169 ], [ %i.cun, %vec.epilog.middle.block2200 ]
  br label %.lr.ph2121.i

.lr.ph2121.i:                                     ; preds = %.lr.ph2121.i.preheader, %.lr.ph2121.i
  %.020202119.i = phi i32 [ %i.cvr, %.lr.ph2121.i ], [ %.020202119.i.ph, %.lr.ph2121.i.preheader ]
  %.020232118.i = phi ptr [ %i.cvp, %.lr.ph2121.i ], [ %.020232118.i.ph, %.lr.ph2121.i.preheader ] ; 2 uses
  %.1321302113.i = phi ptr [ %i.cvq, %.lr.ph2121.i ], [ %.1321302113.i.ph, %.lr.ph2121.i.preheader ] ; 2 uses
  %i.cuo = phi <4 x i32> [ %i.cvo, %.lr.ph2121.i ], [ %.ph2668, %.lr.ph2121.i.preheader ]
  %i.cup = load <8 x i8>, ptr %.1321302113.i, align 1, !tbaa !17 ; 4 uses
  %i.cuq = shufflevector <8 x i8> %i.cup, <8 x i8> poison, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.cur = zext <4 x i8> %i.cuq to <4 x i32>
  %i.cus = shufflevector <8 x i8> %i.cup, <8 x i8> poison, <4 x i32> <i32 1, i32 5, i32 1, i32 5>
  %i.cut = zext <4 x i8> %i.cus to <4 x i32>
  %i.cuu = shufflevector <8 x i8> %i.cup, <8 x i8> poison, <4 x i32> <i32 2, i32 6, i32 2, i32 6>
  %i.cuv = zext <4 x i8> %i.cuu to <4 x i32>
  %i.cuw = shufflevector <8 x i8> %i.cup, <8 x i8> poison, <4 x i32> <i32 3, i32 7, i32 3, i32 7>
  %i.cux = zext <4 x i8> %i.cuw to <4 x i32>
  %i.cuy = load <8 x i8>, ptr %.020232118.i, align 1, !tbaa !17 ; 4 uses
  %i.cuz = shufflevector <8 x i8> %i.cuy, <8 x i8> poison, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.cva = sext <4 x i8> %i.cuz to <4 x i32>
  %i.cvb = shufflevector <8 x i8> %i.cuy, <8 x i8> poison, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.cvc = sext <4 x i8> %i.cvb to <4 x i32>
  %i.cvd = shufflevector <8 x i8> %i.cuy, <8 x i8> poison, <4 x i32> <i32 2, i32 2, i32 6, i32 6>
  %i.cve = sext <4 x i8> %i.cvd to <4 x i32>
  %i.cvf = shufflevector <8 x i8> %i.cuy, <8 x i8> poison, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.cvg = sext <4 x i8> %i.cvf to <4 x i32>
  %i.cvh = mul nsw <4 x i32> %i.cur, %i.cva
  %i.cvi = add nsw <4 x i32> %i.cvh, %i.cuo
  %i.cvj = mul nsw <4 x i32> %i.cut, %i.cvc
  %i.cvk = add nsw <4 x i32> %i.cvi, %i.cvj
  %i.cvl = mul nsw <4 x i32> %i.cuv, %i.cve
  %i.cvm = add nsw <4 x i32> %i.cvk, %i.cvl
  %i.cvn = mul nsw <4 x i32> %i.cux, %i.cvg
  %i.cvo = add nsw <4 x i32> %i.cvm, %i.cvn       ; 2 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %.020232118.i, i64 8
  %i.cvq = getelementptr inbounds nuw i8, ptr %.1321302113.i, i64 8
  %i.cvr = add nuw nsw i32 %.020202119.i, 4       ; 2 uses
  %i.cvs = or disjoint i32 %i.cvr, 3
  %i.cvt = icmp slt i32 %i.cvs, %8
  br i1 %i.cvt, label %.lr.ph2121.i, label %.loopexit2589, !llvm.loop !463

.loopexit2589:                                    ; preds = %.lr.ph2121.i, %vec.epilog.middle.block2200, %middle.block2158
  %i.cvu = phi <4 x i32> [ %i.cun, %vec.epilog.middle.block2200 ], [ %i.csc, %middle.block2158 ], [ %i.cvo, %.lr.ph2121.i ]
  %scevgep2953.i = getelementptr i8, ptr %.1221292161.i, i64 %i.bgu
  %i.cvv = load <2 x i32>, ptr %indvars.iv2956.i, align 4, !tbaa !23
  %i.cvw = shufflevector <2 x i32> %i.cvv, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cvx = sub nsw <4 x i32> %i.cvu, %i.cvw
  br label %._crit_edge2122.i

._crit_edge2122.i:                                ; preds = %.loopexit2589, %bb.bd
  %.02020.lcssa3316.i = phi i32 [ %i.bgn, %.loopexit2589 ], [ 0, %bb.bd ] ; 6 uses
  %.132130.lcssa3309.i = phi ptr [ %scevgep2953.i, %.loopexit2589 ], [ %.1221292161.i, %bb.bd ] ; 7 uses
  %.12024.i = phi ptr [ %i.cms, %.loopexit2589 ], [ %.62210.i, %bb.bd ] ; 7 uses
  %i.cvy = phi <4 x i32> [ %i.cvx, %.loopexit2589 ], [ %i.cqo, %bb.bd ] ; 5 uses
  %i.cvz = or disjoint i32 %.02020.lcssa3316.i, 1
  %i.cwa = icmp slt i32 %i.cvz, %8
  %i.cwb = extractelement <4 x i32> %i.cvy, i64 0 ; 3 uses
  %i.cwc = extractelement <4 x i32> %i.cvy, i64 1 ; 3 uses
  %i.cwd = extractelement <4 x i32> %i.cvy, i64 2 ; 3 uses
  %i.cwe = extractelement <4 x i32> %i.cvy, i64 3 ; 3 uses
  br i1 %i.cwa, label %iter.check2092, label %.preheader1062.i

iter.check2092:                                   ; preds = %._crit_edge2122.i
  %i.cwf = sub i32 %i.bgz, %.02020.lcssa3316.i    ; 3 uses
  %i.cwg = lshr i32 %i.cwf, 1
  %narrow = add nuw i32 %i.cwg, 1
  %i.cwh = zext i32 %narrow to i64                ; 5 uses
  %min.iters.check2039 = icmp ult i32 %i.cwf, 6
  br i1 %min.iters.check2039, label %.lr.ph2138.i.preheader, label %vector.main.loop.iter.check2040

vector.main.loop.iter.check2040:                  ; preds = %iter.check2092
  %min.iters.check2041 = icmp ult i32 %i.cwf, 62
  br i1 %min.iters.check2041, label %vec.epilog.ph2096, label %vector.ph2042

vector.ph2042:                                    ; preds = %vector.main.loop.iter.check2040
  %i.cwi = and i64 %i.cwh, 28
  %n.vec2043 = and i64 %i.cwh, 4294967264         ; 5 uses
  %i.cwj = trunc nuw i64 %n.vec2043 to i32
  %i.cwk = shl i32 %i.cwj, 1
  %i.cwl = add i32 %.02020.lcssa3316.i, %i.cwk    ; 2 uses
  %i.cwm = shl nuw nsw i64 %n.vec2043, 2          ; 2 uses
  %i.cwn = getelementptr i8, ptr %.12024.i, i64 %i.cwm ; 2 uses
  %i.cwo = getelementptr i8, ptr %.132130.lcssa3309.i, i64 %i.cwm ; 2 uses
  %i.cwp = shufflevector <4 x i32> %i.cvy, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a

vec.epilog.iter.check2011:                        ; preds = %middle.block1996
  %min.epilog.iters.check2012 = icmp eq i64 %i.daq, 0
  br i1 %min.epilog.iters.check2012, label %.lr.ph2153.i.preheader, label %vec.epilog.ph2013, !prof !25

vec.epilog.ph2013:                                ; preds = %vector.main.loop.iter.check1965, %vec.epilog.iter.check2011
  %vec.epilog.resume.val2002 = phi i64 [ %n.vec1968, %vec.epilog.iter.check2011 ], [ 0, %vector.main.loop.iter.check1965 ]
  %bc.merge.rdx2004 = phi i32 [ %i.dcb, %vec.epilog.iter.check2011 ], [ %.32030.lcssa.i, %vector.main.loop.iter.check1965 ]
  %bc.merge.rdx2005 = phi i32 [ %i.dcc, %vec.epilog.iter.check2011 ], [ %.32035.lcssa.i, %vector.main.loop.iter.check1965 ]
  %bc.merge.rdx2006 = phi i32 [ %i.dcd, %vec.epilog.iter.check2011 ], [ %.32040.lcssa.i, %vector.main.loop.iter.check1965 ]
  %bc.merge.rdx2007 = phi i32 [ %i.dce, %vec.epilog.iter.check2011 ], [ %.32045.lcssa.i, %vector.main.loop.iter.check1965 ]
  %n.vec2014 = and i64 %i.dap, 8589934584         ; 4 uses
  %i.dcf = trunc i64 %n.vec2014 to i32
  %i.dcg = add i32 %.12021.lcssa.i, %i.dcf
  %i.dch = shl nuw nsw i64 %n.vec2014, 1          ; 2 uses
  %i.dci = getelementptr i8, ptr %.22025.lcssa.i, i64 %i.dch
  %i.dcj = getelementptr i8, ptr %.142131.lcssa.i, i64 %i.dch ; 2 uses
  %i.dck = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2004, i64 0
  %i.dcl = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2005, i64 0
  %i.dcm = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2006, i64 0
  %i.dcn = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2007, i64 0
  br label %vec.epilog.vector.body2015

vec.epilog.vector.body2015:                       ; preds = %vec.epilog.vector.body2015, %vec.epilog.ph2013
  %index2016 = phi i64 [ %vec.epilog.resume.val2002, %vec.epilog.ph2013 ], [ %index.next2029, %vec.epilog.vector.body2015 ] ; 2 uses
  %vec.phi2017 = phi <8 x i32> [ %i.dck, %vec.epilog.ph2013 ], [ %i.dda, %vec.epilog.vector.body2015 ]
  %vec.phi2018 = phi <8 x i32> [ %i.dcl, %vec.epilog.ph2013 ], [ %i.dcy, %vec.epilog.vector.body2015 ]
  %vec.phi2019 = phi <8 x i32> [ %i.dcm, %vec.epilog.ph2013 ], [ %i.dcv, %vec.epilog.vector.body2015 ]
  %vec.phi2020 = phi <8 x i32> [ %i.dcn, %vec.epilog.ph2013 ], [ %i.dcs, %vec.epilog.vector.body2015 ]
  %i.dco = shl i64 %index2016, 1                  ; 2 uses
  %next.gep2021 = getelementptr i8, ptr %.22025.lcssa.i, i64 %i.dco
  %next.gep2022 = getelementptr i8, ptr %.142131.lcssa.i, i64 %i.dco
  %wide.vec2023 = load <16 x i8>, ptr %next.gep2021, align 1, !tbaa !17 ; 2 uses
  %strided.vec2024 = shufflevector <16 x i8> %wide.vec2023, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec2025 = shufflevector <16 x i8> %wide.vec2023, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dcp = sext <8 x i8> %strided.vec2024 to <8 x i32> ; 2 uses
  %wide.vec2026 = load <16 x i8>, ptr %next.gep2022, align 1, !tbaa !17 ; 2 uses
  %strided.vec2027 = shufflevector <16 x i8> %wide.vec2026, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec2028 = shufflevector <16 x i8> %wide.vec2026, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dcq = sext <8 x i8> %strided.vec2027 to <8 x i32> ; 2 uses
  %i.dcr = mul nsw <8 x i32> %i.dcq, %i.dcp
  %i.dcs = add <8 x i32> %i.dcr, %vec.phi2020     ; 2 uses
  %i.dct = sext <8 x i8> %strided.vec2028 to <8 x i32> ; 2 uses
  %i.dcu = mul nsw <8 x i32> %i.dct, %i.dcp
  %i.dcv = add <8 x i32> %i.dcu, %vec.phi2019     ; 2 uses
  %i.dcw = sext <8 x i8> %strided.vec2025 to <8 x i32> ; 2 uses
  %i.dcx = mul nsw <8 x i32> %i.dcw, %i.dcq
  %i.dcy = add <8 x i32> %i.dcx, %vec.phi2018     ; 2 uses
  %i.dcz = mul nsw <8 x i32> %i.dcw, %i.dct
  %i.dda = add <8 x i32> %i.dcz, %vec.phi2017     ; 2 uses
  %index.next2029 = add nuw i64 %index2016, 8     ; 2 uses
  %i.ddb = icmp eq i64 %index.next2029, %n.vec2014
  br i1 %i.ddb, label %vec.epilog.middle.block2030, label %vec.epilog.vector.body2015, !llvm.loop !467

vec.epilog.middle.block2030:                      ; preds = %vec.epilog.vector.body2015
  %i.ddc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dda) ; 2 uses
  %i.ddd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dcy) ; 2 uses
  %i.dde = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dcv) ; 2 uses
  %i.ddf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dcs) ; 2 uses
  %cmp.n2031 = icmp eq i64 %i.dap, %n.vec2014
  br i1 %cmp.n2031, label %._crit_edge2154.i, label %.lr.ph2153.i.preheader

.lr.ph2153.i.preheader:                           ; preds = %iter.check2009, %vec.epilog.iter.check2011, %vec.epilog.middle.block2030
  %.220222152.i.ph = phi i32 [ %.12021.lcssa.i, %iter.check2009 ], [ %i.das, %vec.epilog.iter.check2011 ], [ %i.dcg, %vec.epilog.middle.block2030 ]
  %.320262151.i.ph = phi ptr [ %.22025.lcssa.i, %iter.check2009 ], [ %i.dau, %vec.epilog.iter.check2011 ], [ %i.dci, %vec.epilog.middle.block2030 ]
  %.420312150.i.ph = phi i32 [ %.32030.lcssa.i, %iter.check2009 ], [ %i.dcb, %vec.epilog.iter.check2011 ], [ %i.ddc, %vec.epilog.middle.block2030 ]
  %.420362149.i.ph = phi i32 [ %.32035.lcssa.i, %iter.check2009 ], [ %i.dcc, %vec.epilog.iter.check2011 ], [ %i.ddd, %vec.epilog.middle.block2030 ]
  %.420412148.i.ph = phi i32 [ %.32040.lcssa.i, %iter.check2009 ], [ %i.dcd, %vec.epilog.iter.check2011 ], [ %i.dde, %vec.epilog.middle.block2030 ]
  %.420462147.i.ph = phi i32 [ %.32045.lcssa.i, %iter.check2009 ], [ %i.dce, %vec.epilog.iter.check2011 ], [ %i.ddf, %vec.epilog.middle.block2030 ]
  %.1521322146.i.ph = phi ptr [ %.142131.lcssa.i, %iter.check2009 ], [ %i.dav, %vec.epilog.iter.check2011 ], [ %i.dcj, %vec.epilog.middle.block2030 ]
  br label %.lr.ph2153.i

.lr.ph2138.i:                                     ; preds = %.lr.ph2138.i.preheader, %.lr.ph2138.i
  %.120212136.i = phi i32 [ %i.deu, %.lr.ph2138.i ], [ %.120212136.i.ph, %.lr.ph2138.i.preheader ]
  %.220252135.i = phi ptr [ %i.des, %.lr.ph2138.i ], [ %.220252135.i.ph, %.lr.ph2138.i.preheader ] ; 5 uses
  %.320302134.i = phi i32 [ %i.der, %.lr.ph2138.i ], [ %.320302134.i.ph, %.lr.ph2138.i.preheader ]
  %.320352133.i = phi i32 [ %i.den, %.lr.ph2138.i ], [ %.320352133.i.ph, %.lr.ph2138.i.preheader ]
  %.320402132.i = phi i32 [ %i.ded, %.lr.ph2138.i ], [ %.320402132.i.ph, %.lr.ph2138.i.preheader ]
  %.320452131.i = phi i32 [ %i.ddt, %.lr.ph2138.i ], [ %.320452131.i.ph, %.lr.ph2138.i.preheader ]
  %.1421312130.i = phi ptr [ %i.det, %.lr.ph2138.i ], [ %.1421312130.i.ph, %.lr.ph2138.i.preheader ] ; 5 uses
  %i.ddg = load i8, ptr %.220252135.i, align 1, !tbaa !17
  %i.ddh = sext i8 %i.ddg to i32                  ; 2 uses
  %i.ddi = load i8, ptr %.1421312130.i, align 1, !tbaa !17
  %i.ddj = sext i8 %i.ddi to i32                  ; 2 uses
  %i.ddk = mul nsw i32 %i.ddj, %i.ddh
  %i.ddl = add nsw i32 %i.ddk, %.320452131.i
  %i.ddm = getelementptr inbounds nuw i8, ptr %.220252135.i, i64 1
  %i.ddn = load i8, ptr %i.ddm, align 1, !tbaa !17
  %i.ddo = sext i8 %i.ddn to i32                  ; 2 uses
  %i.ddp = getelementptr inbounds nuw i8, ptr %.1421312130.i, i64 1
  %i.ddq = load i8, ptr %i.ddp, align 1, !tbaa !17
  %i.ddr = sext i8 %i.ddq to i32                  ; 2 uses
  %i.dds = mul nsw i32 %i.ddr, %i.ddo
  %i.ddt = add nsw i32 %i.ddl, %i.dds             ; 2 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %.1421312130.i, i64 2
  %i.ddv = load i8, ptr %i.ddu, align 1, !tbaa !17
  %i.ddw = sext i8 %i.ddv to i32                  ; 2 uses
  %i.ddx = mul nsw i32 %i.ddw, %i.ddh
  %i.ddy = add nsw i32 %i.ddx, %.320402132.i
  %i.ddz = getelementptr inbounds nuw i8, ptr %.1421312130.i, i64 3
  %i.dea = load i8, ptr %i.ddz, align 1, !tbaa !17
  %i.deb = sext i8 %i.dea to i32                  ; 2 uses
  %i.dec = mul nsw i32 %i.deb, %i.ddo
  %i.ded = add nsw i32 %i.ddy, %i.dec             ; 2 uses
  %i.dee = getelementptr inbounds nuw i8, ptr %.220252135.i, i64 2
  %i.def = load i8, ptr %i.dee, align 1, !tbaa !17
  %i.deg = sext i8 %i.def to i32                  ; 2 uses
  %i.deh = mul nsw i32 %i.deg, %i.ddj
  %i.dei = add nsw i32 %i.deh, %.320352133.i
  %i.dej = getelementptr inbounds nuw i8, ptr %.220252135.i, i64 3
  %i.dek = load i8, ptr %i.dej, align 1, !tbaa !17
  %i.del = sext i8 %i.dek to i32                  ; 2 uses
  %i.dem = mul nsw i32 %i.del, %i.ddr
  %i.den = add nsw i32 %i.dei, %i.dem             ; 2 uses
  %i.deo = mul nsw i32 %i.deg, %i.ddw
  %i.dep = add nsw i32 %i.deo, %.320302134.i
  %i.deq = mul nsw i32 %i.del, %i.deb
  %i.der = add nsw i32 %i.dep, %i.deq             ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %.220252135.i, i64 4 ; 2 uses
  %i.det = getelementptr inbounds nuw i8, ptr %.1421312130.i, i64 4 ; 2 uses
  %i.deu = add nuw nsw i32 %.120212136.i, 2       ; 3 uses
  %i.dev = or disjoint i32 %i.deu, 1
  %i.dew = icmp slt i32 %i.dev, %8
  br i1 %i.dew, label %.lr.ph2138.i, label %.preheader1062.i, !llvm.loop !468

.lr.ph2153.i:                                     ; preds = %.lr.ph2153.i.preheader, %.lr.ph2153.i
  %.220222152.i = phi i32 [ %i.dfr, %.lr.ph2153.i ], [ %.220222152.i.ph, %.lr.ph2153.i.preheader ]
  %.320262151.i = phi ptr [ %i.dfp, %.lr.ph2153.i ], [ %.320262151.i.ph, %.lr.ph2153.i.preheader ] ; 3 uses
  %.420312150.i = phi i32 [ %i.dfo, %.lr.ph2153.i ], [ %.420312150.i.ph, %.lr.ph2153.i.preheader ]
  %.420362149.i = phi i32 [ %i.dfm, %.lr.ph2153.i ], [ %.420362149.i.ph, %.lr.ph2153.i.preheader ]
  %.420412148.i = phi i32 [ %i.dfh, %.lr.ph2153.i ], [ %.420412148.i.ph, %.lr.ph2153.i.preheader ]
  %.420462147.i = phi i32 [ %i.dfc, %.lr.ph2153.i ], [ %.420462147.i.ph, %.lr.ph2153.i.preheader ]
  %.1521322146.i = phi ptr [ %i.dfq, %.lr.ph2153.i ], [ %.1521322146.i.ph, %.lr.ph2153.i.preheader ] ; 3 uses
  %i.dex = load i8, ptr %.320262151.i, align 1, !tbaa !17
  %i.dey = sext i8 %i.dex to i32                  ; 2 uses
  %i.dez = load i8, ptr %.1521322146.i, align 1, !tbaa !17
  %i.dfa = sext i8 %i.dez to i32                  ; 2 uses
  %i.dfb = mul nsw i32 %i.dfa, %i.dey
  %i.dfc = add nsw i32 %i.dfb, %.420462147.i      ; 2 uses
  %i.dfd = getelementptr inbounds nuw i8, ptr %.1521322146.i, i64 1
  %i.dfe = load i8, ptr %i.dfd, align 1, !tbaa !17
  %i.dff = sext i8 %i.dfe to i32                  ; 2 uses
  %i.dfg = mul nsw i32 %i.dff, %i.dey
  %i.dfh = add nsw i32 %i.dfg, %.420412148.i      ; 2 uses
  %i.dfi = getelementptr inbounds nuw i8, ptr %.320262151.i, i64 1
  %i.dfj = load i8, ptr %i.dfi, align 1, !tbaa !17
  %i.dfk = sext i8 %i.dfj to i32                  ; 2 uses
  %i.dfl = mul nsw i32 %i.dfk, %i.dfa
  %i.dfm = add nsw i32 %i.dfl, %.420362149.i      ; 2 uses
  %i.dfn = mul nsw i32 %i.dfk, %i.dff
  %i.dfo = add nsw i32 %i.dfn, %.420312150.i      ; 2 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %.320262151.i, i64 2
  %i.dfq = getelementptr inbounds nuw i8, ptr %.1521322146.i, i64 2 ; 2 uses
  %i.dfr = add nuw nsw i32 %.220222152.i, 1       ; 2 uses
  %exitcond2954.not.i = icmp eq i32 %i.dfr, %8
  br i1 %exitcond2954.not.i, label %._crit_edge2154.i, label %.lr.ph2153.i, !llvm.loop !469

._crit_edge2154.i:                                ; preds = %.lr.ph2153.i, %middle.block1996, %vec.epilog.middle.block2030, %.preheader1062.i
  %.152132.lcssa.i = phi ptr [ %.142131.lcssa.i, %.preheader1062.i ], [ %i.dcj, %vec.epilog.middle.block2030 ], [ %i.dav, %middle.block1996 ], [ %i.dfq, %.lr.ph2153.i ] ; 2 uses
  %.42046.lcssa.i = phi i32 [ %.32045.lcssa.i, %.preheader1062.i ], [ %i.ddf, %vec.epilog.middle.block2030 ], [ %i.dce, %middle.block1996 ], [ %i.dfc, %.lr.ph2153.i ]
  %.42041.lcssa.i = phi i32 [ %.32040.lcssa.i, %.preheader1062.i ], [ %i.dde, %vec.epilog.middle.block2030 ], [ %i.dcd, %middle.block1996 ], [ %i.dfh, %.lr.ph2153.i ]
  %.42036.lcssa.i = phi i32 [ %.32035.lcssa.i, %.preheader1062.i ], [ %i.ddd, %vec.epilog.middle.block2030 ], [ %i.dcc, %middle.block1996 ], [ %i.dfm, %.lr.ph2153.i ]
  %.42031.lcssa.i = phi i32 [ %.32030.lcssa.i, %.preheader1062.i ], [ %i.ddc, %vec.epilog.middle.block2030 ], [ %i.dcb, %middle.block1996 ], [ %i.dfo, %.lr.ph2153.i ]
  store i32 %.42046.lcssa.i, ptr %.222162.i, align 4, !tbaa !23
  %i.dfs = getelementptr inbounds nuw i8, ptr %.222162.i, i64 4
  store i32 %.42041.lcssa.i, ptr %i.dfs, align 4, !tbaa !23
  %i.dft = getelementptr inbounds nuw i8, ptr %.222162.i, i64 8
  store i32 %.42036.lcssa.i, ptr %i.dft, align 4, !tbaa !23
  %i.dfu = getelementptr inbounds nuw i8, ptr %.222162.i, i64 12
  store i32 %.42031.lcssa.i, ptr %i.dfu, align 4, !tbaa !23
  %i.dfv = getelementptr inbounds nuw i8, ptr %.222162.i, i64 16 ; 2 uses
  %i.dfw = add nuw nsw i32 %.321402160.i, 2       ; 3 uses
  %i.dfx = or disjoint i32 %i.dfw, 1
  %i.dfy = icmp slt i32 %i.dfx, %6
  br i1 %i.dfy, label %.lr.ph2163.i, label %.preheader1066.i, !llvm.loop !470

.lr.ph2205.i:                                     ; preds = %._crit_edge2198.i, %.lr.ph2205.preheader.i
  %.232204.i = phi ptr [ %i.dst, %._crit_edge2198.i ], [ %.22.lcssa.i, %.lr.ph2205.preheader.i ] ; 4 uses
  %.1621332203.i = phi ptr [ %.192136.lcssa.i, %._crit_edge2198.i ], [ %.122129.lcssa.i, %.lr.ph2205.preheader.i ] ; 8 uses
  %.421412202.i = phi i32 [ %i.dsu, %._crit_edge2198.i ], [ %.32140.lcssa.i, %.lr.ph2205.preheader.i ]
  br i1 %i.bgh, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph2205.i
  %i.dfz = load <2 x i32>, ptr %.232204.i, align 4, !tbaa !23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph2205.i
  %i.dga = phi <2 x i32> [ %i.dfz, %bb.be ], [ zeroinitializer, %.lr.ph2205.i ] ; 5 uses
  br i1 %i.bgi, label %iter.check1930, label %._crit_edge2174.i

iter.check1930:                                   ; preds = %bb.bf
  br i1 %min.iters.check1877, label %.lr.ph2173.i.preheader, label %vector.main.loop.iter.check1878

vector.main.loop.iter.check1878:                  ; preds = %iter.check1930
  %i.dgb = extractelement <2 x i32> %i.dga, i64 0
  %i.dgc = extractelement <2 x i32> %i.dga, i64 1
  br i1 %min.iters.check1879, label %vec.epilog.ph1934, label %vector.ph1880

vector.ph1880:                                    ; preds = %vector.main.loop.iter.check1878
  %i.dgd = getelementptr i8, ptr %.1621332203.i, i64 %i.bhr
  %37 = shufflevector <2 x i32> %i.dga, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %38 = shufflevector <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %37, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %39 = shufflevector <16 x i32> %37, <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1882

vector.body1882:                                  ; preds = %vector.body1882, %vector.ph1880
  %index1883 = phi i64 [ 0, %vector.ph1880 ], [ %index.next1920, %vector.body1882 ] ; 3 uses
  %vec.phi1884 = phi <16 x i32> [ %38, %vector.ph1880 ], [ %74, %vector.body1882 ]
  %vec.phi1885 = phi <16 x i32> [ zeroinitializer, %vector.ph1880 ], [ %75, %vector.body1882 ]
  %vec.phi1886 = phi <16 x i32> [ %39, %vector.ph1880 ], [ %59, %vector.body1882 ]
  %vec.phi1887 = phi <16 x i32> [ zeroinitializer, %vector.ph1880 ], [ %60, %vector.body1882 ]
  %i.dge = shl i64 %index1883, 3                  ; 2 uses
  %next.gep1888 = getelementptr i8, ptr %.62210.i, i64 %i.dge
  %i.dgf = getelementptr i8, ptr %.62210.i, i64 %i.dge
  %next.gep1889 = getelementptr i8, ptr %i.dgf, i64 128
  %i.dgg = shl i64 %index1883, 2                  ; 2 uses
  %next.gep1890 = getelementptr i8, ptr %.1621332203.i, i64 %i.dgg
  %i.dgh = getelementptr i8, ptr %.1621332203.i, i64 %i.dgg
  %next.gep1891 = getelementptr i8, ptr %i.dgh, i64 64
  %wide.vec1892 = load <128 x i8>, ptr %next.gep1888, align 1, !tbaa !17 ; 8 uses
  %strided.vec1893 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec1894 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec1895 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec1896 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec1897 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec1898 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec1899 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec1900 = shufflevector <128 x i8> %wide.vec1892, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %wide.vec1901 = load <128 x i8>, ptr %next.gep1889, align 1, !tbaa !17 ; 8 uses
  %strided.vec1902 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec1903 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec1904 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec1905 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec1906 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec1907 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec1908 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec1909 = shufflevector <128 x i8> %wide.vec1901, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %40 = sext <16 x i8> %strided.vec1893 to <16 x i32>
  %41 = sext <16 x i8> %strided.vec1902 to <16 x i32>
  %wide.vec1910 = load <64 x i8>, ptr %next.gep1890, align 1, !tbaa !17 ; 4 uses
  %strided.vec1911 = shufflevector <64 x i8> %wide.vec1910, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1912 = shufflevector <64 x i8> %wide.vec1910, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1913 = shufflevector <64 x i8> %wide.vec1910, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1914 = shufflevector <64 x i8> %wide.vec1910, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1915 = load <64 x i8>, ptr %next.gep1891, align 1, !tbaa !17 ; 4 uses
  %strided.vec1916 = shufflevector <64 x i8> %wide.vec1915, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1917 = shufflevector <64 x i8> %wide.vec1915, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1918 = shufflevector <64 x i8> %wide.vec1915, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1919 = shufflevector <64 x i8> %wide.vec1915, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %42 = zext <16 x i8> %strided.vec1911 to <16 x i32> ; 2 uses
  %i.dgi = zext <16 x i8> %strided.vec1916 to <16 x i32> ; 2 uses
  %43 = mul nsw <16 x i32> %42, %40
  %i.dgj = mul nsw <16 x i32> %i.dgi, %41
  %44 = add <16 x i32> %43, %vec.phi1886
  %45 = add <16 x i32> %i.dgj, %vec.phi1887
  %i.dgk = sext <16 x i8> %strided.vec1894 to <16 x i32>
  %46 = sext <16 x i8> %strided.vec1903 to <16 x i32>
  %47 = zext <16 x i8> %strided.vec1912 to <16 x i32> ; 2 uses
  %i.dgl = zext <16 x i8> %strided.vec1917 to <16 x i32> ; 2 uses
  %48 = mul nsw <16 x i32> %47, %i.dgk
  %i.dgm = mul nsw <16 x i32> %i.dgl, %46
  %49 = add <16 x i32> %44, %48
  %50 = add <16 x i32> %45, %i.dgm
  %i.dgn = sext <16 x i8> %strided.vec1895 to <16 x i32>
  %51 = sext <16 x i8> %strided.vec1904 to <16 x i32>
  %52 = zext <16 x i8> %strided.vec1913 to <16 x i32> ; 2 uses
  %i.dgo = zext <16 x i8> %strided.vec1918 to <16 x i32> ; 2 uses
  %53 = mul nsw <16 x i32> %52, %i.dgn
  %i.dgp = mul nsw <16 x i32> %i.dgo, %51
  %54 = add <16 x i32> %49, %53
  %55 = add <16 x i32> %50, %i.dgp
  %i.dgq = sext <16 x i8> %strided.vec1896 to <16 x i32>
  %56 = sext <16 x i8> %strided.vec1905 to <16 x i32>
  %57 = zext <16 x i8> %strided.vec1914 to <16 x i32> ; 2 uses
  %i.dgr = zext <16 x i8> %strided.vec1919 to <16 x i32> ; 2 uses
  %58 = mul nsw <16 x i32> %57, %i.dgq
  %i.dgs = mul nsw <16 x i32> %i.dgr, %56
  %59 = add <16 x i32> %54, %58                   ; 2 uses
  %60 = add <16 x i32> %55, %i.dgs                ; 2 uses
  %i.dgt = sext <16 x i8> %strided.vec1897 to <16 x i32>
  %i.dgu = sext <16 x i8> %strided.vec1906 to <16 x i32>
  %i.dgv = mul nsw <16 x i32> %i.dgt, %42
  %61 = mul nsw <16 x i32> %i.dgu, %i.dgi
  %62 = add <16 x i32> %i.dgv, %vec.phi1884
  %63 = add <16 x i32> %61, %vec.phi1885
  %64 = sext <16 x i8> %strided.vec1898 to <16 x i32>
  %i.dgw = sext <16 x i8> %strided.vec1907 to <16 x i32>
  %i.dgx = mul nsw <16 x i32> %64, %47
  %65 = mul nsw <16 x i32> %i.dgw, %i.dgl
  %66 = add <16 x i32> %62, %i.dgx
  %67 = add <16 x i32> %63, %65
  %68 = sext <16 x i8> %strided.vec1899 to <16 x i32>
  %i.dgy = sext <16 x i8> %strided.vec1908 to <16 x i32>
  %i.dgz = mul nsw <16 x i32> %68, %52
  %69 = mul nsw <16 x i32> %i.dgy, %i.dgo
  %70 = add <16 x i32> %66, %i.dgz
  %71 = add <16 x i32> %67, %69
  %72 = sext <16 x i8> %strided.vec1900 to <16 x i32>
  %i.dha = sext <16 x i8> %strided.vec1909 to <16 x i32>
  %i.dhb = mul nsw <16 x i32> %72, %57
  %73 = mul nsw <16 x i32> %i.dha, %i.dgr
  %74 = add <16 x i32> %70, %i.dhb                ; 2 uses
  %75 = add <16 x i32> %71, %73                   ; 2 uses
  %index.next1920 = add nuw i64 %index1883, 32    ; 2 uses
  %i.dhc = icmp eq i64 %index.next1920, %n.vec1881
  br i1 %i.dhc, label %middle.block1921, label %vector.body1882, !llvm.loop !471

middle.block1921:                                 ; preds = %vector.body1882
  %bin.rdx1922 = add <16 x i32> %75, %74
  %i.dhd = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx1922) ; 2 uses
  %bin.rdx1923 = add <16 x i32> %60, %59
  %i.dhe = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx1923) ; 2 uses
  %i.dhf = insertelement <2 x i32> poison, i32 %i.dhe, i64 0
  %i.dhg = insertelement <2 x i32> %i.dhf, i32 %i.dhd, i64 1 ; 2 uses
  br i1 %cmp.n1924, label %.loopexit2588, label %vec.epilog.iter.check1932

vec.epilog.iter.check1932:                        ; preds = %middle.block1921
  br i1 %min.epilog.iters.check1933, label %.lr.ph2173.i.preheader, label %vec.epilog.ph1934, !prof !26

vec.epilog.ph1934:                                ; preds = %vector.main.loop.iter.check1878, %vec.epilog.iter.check1932
  %vec.epilog.resume.val1925 = phi i64 [ %n.vec1881, %vec.epilog.iter.check1932 ], [ 0, %vector.main.loop.iter.check1878 ]
  %bc.merge.rdx1927 = phi i32 [ %i.dhd, %vec.epilog.iter.check1932 ], [ %i.dgc, %vector.main.loop.iter.check1878 ]
  %bc.merge.rdx1928 = phi i32 [ %i.dhe, %vec.epilog.iter.check1932 ], [ %i.dgb, %vector.main.loop.iter.check1878 ]
  %i.dhh = getelementptr i8, ptr %.1621332203.i, i64 %i.bhv
  %i.dhi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1927, i64 0
  %i.dhj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1928, i64 0
  br label %vec.epilog.vector.body1936

vec.epilog.vector.body1936:                       ; preds = %vec.epilog.vector.body1936, %vec.epilog.ph1934
  %index1937 = phi i64 [ %vec.epilog.resume.val1925, %vec.epilog.ph1934 ], [ %index.next1956, %vec.epilog.vector.body1936 ] ; 3 uses
  %vec.phi1938 = phi <4 x i32> [ %i.dhi, %vec.epilog.ph1934 ], [ %i.din, %vec.epilog.vector.body1936 ]
  %vec.phi1939 = phi <4 x i32> [ %i.dhj, %vec.epilog.ph1934 ], [ %i.dib, %vec.epilog.vector.body1936 ]
  %i.dhk = shl i64 %index1937, 3
  %next.gep1940 = getelementptr i8, ptr %.62210.i, i64 %i.dhk
  %i.dhl = shl i64 %index1937, 2
  %next.gep1941 = getelementptr i8, ptr %.1621332203.i, i64 %i.dhl
  %wide.vec1942 = load <32 x i8>, ptr %next.gep1940, align 1, !tbaa !17 ; 8 uses
  %strided.vec1943 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec1944 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec1945 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec1946 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec1947 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec1948 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec1949 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec1950 = shufflevector <32 x i8> %wide.vec1942, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.dhm = sext <4 x i8> %strided.vec1943 to <4 x i32>
  %wide.vec1951 = load <16 x i8>, ptr %next.gep1941, align 1, !tbaa !17 ; 4 uses
  %strided.vec1952 = shufflevector <16 x i8> %wide.vec1951, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1953 = shufflevector <16 x i8> %wide.vec1951, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1954 = shufflevector <16 x i8> %wide.vec1951, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1955 = shufflevector <16 x i8> %wide.vec1951, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.dhn = zext <4 x i8> %strided.vec1952 to <4 x i32> ; 2 uses
  %i.dho = mul nsw <4 x i32> %i.dhn, %i.dhm
  %i.dhp = add <4 x i32> %i.dho, %vec.phi1939
  %i.dhq = sext <4 x i8> %strided.vec1944 to <4 x i32>
  %i.dhr = zext <4 x i8> %strided.vec1953 to <4 x i32> ; 2 uses
  %i.dhs = mul nsw <4 x i32> %i.dhr, %i.dhq
  %i.dht = add <4 x i32> %i.dhp, %i.dhs
  %i.dhu = sext <4 x i8> %strided.vec1945 to <4 x i32>
  %i.dhv = zext <4 x i8> %strided.vec1954 to <4 x i32> ; 2 uses
  %i.dhw = mul nsw <4 x i32> %i.dhv, %i.dhu
  %i.dhx = add <4 x i32> %i.dht, %i.dhw
  %i.dhy = sext <4 x i8> %strided.vec1946 to <4 x i32>
  %i.dhz = zext <4 x i8> %strided.vec1955 to <4 x i32> ; 2 uses
  %i.dia = mul nsw <4 x i32> %i.dhz, %i.dhy
  %i.dib = add <4 x i32> %i.dhx, %i.dia           ; 2 uses
  %i.dic = sext <4 x i8> %strided.vec1947 to <4 x i32>
  %i.did = mul nsw <4 x i32> %i.dic, %i.dhn
  %i.die = add <4 x i32> %i.did, %vec.phi1938
  %i.dif = sext <4 x i8> %strided.vec1948 to <4 x i32>
  %i.dig = mul nsw <4 x i32> %i.dif, %i.dhr
  %i.dih = add <4 x i32> %i.die, %i.dig
  %i.dii = sext <4 x i8> %strided.vec1949 to <4 x i32>
  %i.dij = mul nsw <4 x i32> %i.dii, %i.dhv
  %i.dik = add <4 x i32> %i.dih, %i.dij
  %i.dil = sext <4 x i8> %strided.vec1950 to <4 x i32>
  %i.dim = mul nsw <4 x i32> %i.dil, %i.dhz
  %i.din = add <4 x i32> %i.dik, %i.dim           ; 2 uses
  %index.next1956 = add nuw i64 %index1937, 4     ; 2 uses
  %i.dio = icmp eq i64 %index.next1956, %n.vec1935
  br i1 %i.dio, label %vec.epilog.middle.block1957, label %vec.epilog.vector.body1936, !llvm.loop !472

vec.epilog.middle.block1957:                      ; preds = %vec.epilog.vector.body1936
  %i.dip = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.din)
  %i.diq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dib)
  %i.dir = insertelement <2 x i32> poison, i32 %i.diq, i64 0
  %i.dis = insertelement <2 x i32> %i.dir, i32 %i.dip, i64 1 ; 2 uses
  br i1 %cmp.n1958, label %.loopexit2588, label %.lr.ph2173.i.preheader

.lr.ph2173.i.preheader:                           ; preds = %iter.check1930, %vec.epilog.iter.check1932, %vec.epilog.middle.block1957
  %.019962171.i.ph = phi i32 [ 0, %iter.check1930 ], [ %i.bhp, %vec.epilog.iter.check1932 ], [ %i.bht, %vec.epilog.middle.block1957 ]
  %.019992170.i.ph = phi ptr [ %.62210.i, %iter.check1930 ], [ %i.cql, %vec.epilog.iter.check1932 ], [ %i.cqm, %vec.epilog.middle.block1957 ]
  %.1721342167.i.ph = phi ptr [ %.1621332203.i, %iter.check1930 ], [ %i.dgd, %vec.epilog.iter.check1932 ], [ %i.dhh, %vec.epilog.middle.block1957 ]
  %.ph = phi <2 x i32> [ %i.dga, %iter.check1930 ], [ %i.dhg, %vec.epilog.iter.check1932 ], [ %i.dis, %vec.epilog.middle.block1957 ]
  br label %.lr.ph2173.i

.lr.ph2173.i:                                     ; preds = %.lr.ph2173.i.preheader, %.lr.ph2173.i
  %.019962171.i = phi i32 [ %i.djt, %.lr.ph2173.i ], [ %.019962171.i.ph, %.lr.ph2173.i.preheader ]
  %.019992170.i = phi ptr [ %i.djr, %.lr.ph2173.i ], [ %.019992170.i.ph, %.lr.ph2173.i.preheader ] ; 2 uses
  %.1721342167.i = phi ptr [ %i.djs, %.lr.ph2173.i ], [ %.1721342167.i.ph, %.lr.ph2173.i.preheader ] ; 2 uses
  %i.dit = phi <2 x i32> [ %i.djq, %.lr.ph2173.i ], [ %.ph, %.lr.ph2173.i.preheader ]
  %i.diu = load <4 x i8>, ptr %.1721342167.i, align 1, !tbaa !17
  %i.div = zext <4 x i8> %i.diu to <4 x i32>      ; 4 uses
  %i.diw = load <8 x i8>, ptr %.019992170.i, align 1, !tbaa !17 ; 4 uses
  %i.dix = shufflevector <8 x i8> %i.diw, <8 x i8> poison, <2 x i32> <i32 0, i32 4>
  %i.diy = sext <2 x i8> %i.dix to <2 x i32>
  %i.diz = shufflevector <4 x i32> %i.div, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.dja = mul nsw <2 x i32> %i.diz, %i.diy
  %i.djb = add nsw <2 x i32> %i.dja, %i.dit
  %i.djc = shufflevector <8 x i8> %i.diw, <8 x i8> poison, <2 x i32> <i32 1, i32 5>
  %i.djd = sext <2 x i8> %i.djc to <2 x i32>
  %i.dje = shufflevector <4 x i32> %i.div, <4 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.djf = mul nsw <2 x i32> %i.dje, %i.djd
  %i.djg = add nsw <2 x i32> %i.djb, %i.djf
  %i.djh = shufflevector <8 x i8> %i.diw, <8 x i8> poison, <2 x i32> <i32 2, i32 6>
  %i.dji = sext <2 x i8> %i.djh to <2 x i32>
  %i.djj = shufflevector <4 x i32> %i.div, <4 x i32> poison, <2 x i32> <i32 2, i32 2>
  %i.djk = mul nsw <2 x i32> %i.djj, %i.dji
  %i.djl = add nsw <2 x i32> %i.djg, %i.djk
  %i.djm = shufflevector <8 x i8> %i.diw, <8 x i8> poison, <2 x i32> <i32 3, i32 7>
  %i.djn = sext <2 x i8> %i.djm to <2 x i32>
  %i.djo = shufflevector <4 x i32> %i.div, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.djp = mul nsw <2 x i32> %i.djo, %i.djn
  %i.djq = add nsw <2 x i32> %i.djl, %i.djp       ; 2 uses
  %i.djr = getelementptr inbounds nuw i8, ptr %.019992170.i, i64 8
  %i.djs = getelementptr inbounds nuw i8, ptr %.1721342167.i, i64 4
  %i.djt = add nuw nsw i32 %.019962171.i, 4       ; 2 uses
  %i.dju = or disjoint i32 %i.djt, 3
  %i.djv = icmp slt i32 %i.dju, %8
  br i1 %i.djv, label %.lr.ph2173.i, label %.loopexit2588, !llvm.loop !473

.loopexit2588:                                    ; preds = %.lr.ph2173.i, %vec.epilog.middle.block1957, %middle.block1921
  %i.djw = phi <2 x i32> [ %i.dis, %vec.epilog.middle.block1957 ], [ %i.dhg, %middle.block1921 ], [ %i.djq, %.lr.ph2173.i ]
  %i.djx = getelementptr i8, ptr %.1621332203.i, i64 %i.bgv
  %scevgep2958.i = getelementptr i8, ptr %i.djx, i64 4
  %i.djy = load <2 x i32>, ptr %indvars.iv2956.i, align 4, !tbaa !23
  %i.djz = sub nsw <2 x i32> %i.djw, %i.djy
  br label %._crit_edge2174.i

._crit_edge2174.i:                                ; preds = %.loopexit2588, %bb.bf
  %.01996.lcssa3328.i = phi i32 [ %i.bgn, %.loopexit2588 ], [ 0, %bb.bf ] ; 6 uses
  %.172134.lcssa3323.i = phi ptr [ %scevgep2958.i, %.loopexit2588 ], [ %.1621332203.i, %bb.bf ] ; 9 uses
  %.12000.i = phi ptr [ %i.cqk, %.loopexit2588 ], [ %.62210.i, %bb.bf ] ; 9 uses
  %i.dka = phi <2 x i32> [ %i.djz, %.loopexit2588 ], [ %i.dga, %bb.bf ] ; 3 uses
  %i.dkb = or disjoint i32 %.01996.lcssa3328.i, 1
  %i.dkc = icmp slt i32 %i.dkb, %8
  %i.dkd = extractelement <2 x i32> %i.dka, i64 0 ; 3 uses
  %i.dke = extractelement <2 x i32> %i.dka, i64 1 ; 3 uses
  br i1 %i.dkc, label %iter.check1849, label %.preheader1061.i

iter.check1849:                                   ; preds = %._crit_edge2174.i
  %i.dkf = sub i32 %i.bgx, %.01996.lcssa3328.i    ; 3 uses
  %i.dkg = lshr i32 %i.dkf, 1
  %narrow2590 = add nuw i32 %i.dkg, 1
  %i.dkh = zext i32 %narrow2590 to i64            ; 5 uses
  %min.iters.check1780 = icmp ult i32 %i.dkf, 14
  br i1 %min.iters.check1780, label %.lr.ph2186.i.preheader, label %vector.main.loop.iter.check1781

vector.main.loop.iter.check1781:                  ; preds = %iter.check1849
  %min.iters.check1782 = icmp ult i32 %i.dkf, 126
  br i1 %min.iters.check1782, label %vec.epilog.ph1853, label %vector.ph1783

vector.ph1783:                                    ; preds = %vector.main.loop.iter.check1781
  %i.dki = and i64 %i.dkh, 56
  %n.vec1784 = and i64 %i.dkh, 4294967232         ; 6 uses
  %i.dkj = trunc nuw i64 %n.vec1784 to i32
  %i.dkk = shl i32 %i.dkj, 1
  %i.dkl = add i32 %.01996.lcssa3328.i, %i.dkk    ; 2 uses
  %i.dkm = shl nuw nsw i64 %n.vec1784, 2
  %i.dkn = getelementptr i8, ptr %.12000.i, i64 %i.dkm ; 2 uses
  %i.dko = shl nuw nsw i64 %n.vec1784, 1
  %i.dkp = getelementptr i8, ptr %.172134.lcssa3323.i, i64 %i.dko ; 2 uses
  %i.dkq = shufflevector <2 x i32> %i.dka, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dkr = shufflevector <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %i.dkq, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dks = shufflevector <16 x i32> %i.dkq, <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1785

vector.body1785:                                  ; preds = %vector.body1785, %vector.ph1783
  %index1786 = phi i64 [ 0, %vector.ph1783 ], [ %index.next1835, %vector.body1785 ] ; 3 uses
  %vec.phi1787 = phi <16 x i32> [ %i.dkr, %vector.ph1783 ], [ %i.dnb, %vector.body1785 ]
  %vec.phi1788 = phi <16 x i32> [ zeroinitializer, %vector.ph1783 ], [ %i.dnc, %vector.body1785 ]
  %vec.phi1789 = phi <16 x i32> [ zeroinitializer, %vector.ph1783 ], [ %i.dnd, %vector.body1785 ]
  %vec.phi1790 = phi <16 x i32> [ zeroinitializer, %vector.ph1783 ], [ %i.dne, %vector.body1785 ]
  %vec.phi1791 = phi <16 x i32> [ %i.dks, %vector.ph1783 ], [ %i.dmd, %vector.body1785 ]
  %vec.phi1792 = phi <16 x i32> [ zeroinitializer, %vector.ph1783 ], [ %i.dme, %vector.body1785 ]
  %vec.phi1793 = phi <16 x i32> [ zeroinitializer, %vector.ph1783 ], [ %i.dmf, %vector.body1785 ]
  %vec.phi1794 = phi <16 x i32> [ zeroinitializer, %vector.ph1783 ], [ %i.dmg, %vector.body1785 ]
  %i.dkt = shl i64 %index1786, 2                  ; 4 uses
  %next.gep1795 = getelementptr i8, ptr %.12000.i, i64 %i.dkt
  %i.dku = getelementptr i8, ptr %.12000.i, i64 %i.dkt
  %next.gep1796 = getelementptr i8, ptr %i.dku, i64 64
  %i.dkv = getelementptr i8, ptr %.12000.i, i64 %i.dkt
  %next.gep1797 = getelementptr i8, ptr %i.dkv, i64 128
  %i.dkw = getelementptr i8, ptr %.12000.i, i64 %i.dkt
  %next.gep1798 = getelementptr i8, ptr %i.dkw, i64 192
  %i.dkx = shl i64 %index1786, 1                  ; 4 uses
  %next.gep1799 = getelementptr i8, ptr %.172134.lcssa3323.i, i64 %i.dkx
  %i.dky = getelementptr i8, ptr %.172134.lcssa3323.i, i64 %i.dkx
  %next.gep1800 = getelementptr i8, ptr %i.dky, i64 32
  %i.dkz = getelementptr i8, ptr %.172134.lcssa3323.i, i64 %i.dkx
  %next.gep1801 = getelementptr i8, ptr %i.dkz, i64 64
  %i.dla = getelementptr i8, ptr %.172134.lcssa3323.i, i64 %i.dkx
  %next.gep1802 = getelementptr i8, ptr %i.dla, i64 96
  %wide.vec1803 = load <64 x i8>, ptr %next.gep1795, align 1, !tbaa !17 ; 4 uses
  %strided.vec1804 = shufflevector <64 x i8> %wide.vec1803, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1805 = shufflevector <64 x i8> %wide.vec1803, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1806 = shufflevector <64 x i8> %wide.vec1803, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1807 = shufflevector <64 x i8> %wide.vec1803, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1808 = load <64 x i8>, ptr %next.gep1796, align 1, !tbaa !17 ; 4 uses
  %strided.vec1809 = shufflevector <64 x i8> %wide.vec1808, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1810 = shufflevector <64 x i8> %wide.vec1808, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1811 = shufflevector <64 x i8> %wide.vec1808, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
end_hunk_1
begin_hunk_2_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.edc = bitcast <4 x float> %i.eda to <16 x i8>
  %i.edd = shufflevector <16 x i8> %i.edc, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ede = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ecw, <16 x i8> %i.edb, <16 x i8> %i.edd) ; 3 uses
  %i.edf = getelementptr inbounds nuw i8, ptr %.018782281.i, i64 16 ; 2 uses
  %i.edg = getelementptr inbounds nuw i8, ptr %.919772280.i, i64 64 ; 2 uses
  %niter3246.next.3 = add nuw nsw i32 %niter3246, 4 ; 2 uses
  %niter3246.ncmp.3.not = icmp eq i32 %niter3246.next.3, %unroll_iter3245
  br i1 %niter3246.ncmp.3.not, label %.unr-lcssa3236, label %.lr.ph2284.i, !llvm.loop !492

.unr-lcssa3236:                                   ; preds = %.lr.ph2284.i
  br i1 %lcmp.mod3241.not, label %.epilog-lcssa3242, label %.lr.ph2284.i.epil.preheader

.lr.ph2284.i.epil.preheader:                      ; preds = %.unr-lcssa3236, %.lr.ph2284.i.preheader
  %.018782281.i.epil.init = phi ptr [ %.82432.i, %.lr.ph2284.i.preheader ], [ %i.edf, %.unr-lcssa3236 ]
  %.919772280.i.epil.init = phi ptr [ %.819762306.i, %.lr.ph2284.i.preheader ], [ %i.edg, %.unr-lcssa3236 ]
  %.epil.init3240 = phi <4 x i32> [ %i.ebz, %.lr.ph2284.i.preheader ], [ %i.ede, %.unr-lcssa3236 ]
  tail call void @llvm.assume(i1 %lcmp.mod3244)
  br label %.lr.ph2284.i.epil

.lr.ph2284.i.epil:                                ; preds = %.lr.ph2284.i.epil, %.lr.ph2284.i.epil.preheader
  %.018782281.i.epil = phi ptr [ %i.edo, %.lr.ph2284.i.epil ], [ %.018782281.i.epil.init, %.lr.ph2284.i.epil.preheader ] ; 2 uses
  %.919772280.i.epil = phi ptr [ %i.edp, %.lr.ph2284.i.epil ], [ %.919772280.i.epil.init, %.lr.ph2284.i.epil.preheader ] ; 2 uses
  %i.edh = phi <4 x i32> [ %i.edn, %.lr.ph2284.i.epil ], [ %.epil.init3240, %.lr.ph2284.i.epil.preheader ]
  %epil.iter3238 = phi i32 [ %epil.iter3238.next, %.lr.ph2284.i.epil ], [ 0, %.lr.ph2284.i.epil.preheader ]
  %i.edi = load float, ptr %.018782281.i.epil, align 1, !tbaa !17
  %i.edj = insertelement <4 x float> poison, float %i.edi, i64 0
  %i.edk = load <16 x i8>, ptr %.919772280.i.epil, align 1, !tbaa !17
  %i.edl = bitcast <4 x float> %i.edj to <16 x i8>
  %i.edm = shufflevector <16 x i8> %i.edl, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.edn = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.edh, <16 x i8> %i.edk, <16 x i8> %i.edm) ; 2 uses
  %i.edo = getelementptr inbounds nuw i8, ptr %.018782281.i.epil, i64 4
  %i.edp = getelementptr inbounds nuw i8, ptr %.919772280.i.epil, i64 16
  %epil.iter3238.next = add i32 %epil.iter3238, 1 ; 2 uses
  %epil.iter3238.cmp.not = icmp eq i32 %epil.iter3238.next, %xtraiter3237
  br i1 %epil.iter3238.cmp.not, label %.epilog-lcssa3242, label %.lr.ph2284.i.epil, !llvm.loop !493

.epilog-lcssa3242:                                ; preds = %.lr.ph2284.i.epil, %.unr-lcssa3236
  %.lcssa2612 = phi <4 x i32> [ %i.ede, %.unr-lcssa3236 ], [ %i.edn, %.lr.ph2284.i.epil ]
  %i.edq = getelementptr i8, ptr %.819762306.i, i64 %i.cdg
  %scevgep2964.i = getelementptr i8, ptr %i.edq, i64 16
  %i.edr = load i32, ptr %indvars.iv878, align 4, !tbaa !23
  %i.eds = insertelement <4 x i32> poison, i32 %i.edr, i64 0
  %i.edt = shufflevector <4 x i32> %i.eds, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.edu = sub <4 x i32> %.lcssa2612, %i.edt
  br label %._crit_edge2285.i

._crit_edge2285.i:                                ; preds = %.epilog-lcssa3242, %bb.bl
  %.01875.lcssa3358.i = phi i32 [ %i.cdb, %.epilog-lcssa3242 ], [ 0, %bb.bl ] ; 3 uses
  %.91977.lcssa3355.i = phi ptr [ %scevgep2964.i, %.epilog-lcssa3242 ], [ %.819762306.i, %bb.bl ] ; 2 uses
  %i.edv = phi <4 x i32> [ %i.edu, %.epilog-lcssa3242 ], [ %i.ebz, %bb.bl ] ; 2 uses
  %.11879.i = phi ptr [ %i.dxn, %.epilog-lcssa3242 ], [ %.82432.i, %bb.bl ] ; 2 uses
  %i.edw = or disjoint i32 %.01875.lcssa3358.i, 1
  %i.edx = icmp slt i32 %i.edw, %8
  br i1 %i.edx, label %.lr.ph2294.i, label %.preheader1052.i

.preheader1052.i:                                 ; preds = %.lr.ph2294.i, %._crit_edge2285.i
  %.lcssa1110.i = phi <4 x i32> [ %i.edv, %._crit_edge2285.i ], [ %i.eex, %.lr.ph2294.i ] ; 3 uses
  %.101978.lcssa.i = phi ptr [ %.91977.lcssa3355.i, %._crit_edge2285.i ], [ %i.eez, %.lr.ph2294.i ] ; 4 uses
  %.21880.lcssa.i = phi ptr [ %.11879.i, %._crit_edge2285.i ], [ %i.eey, %.lr.ph2294.i ] ; 3 uses
  %.11876.lcssa.i = phi i32 [ %.01875.lcssa3358.i, %._crit_edge2285.i ], [ %i.efa, %.lr.ph2294.i ] ; 5 uses
  %i.edy = icmp slt i32 %.11876.lcssa.i, %8
  br i1 %i.edy, label %.lr.ph2302.i.preheader, label %._crit_edge2303.i

.lr.ph2302.i.preheader:                           ; preds = %.preheader1052.i
  %i.edz = sub i32 %8, %.11876.lcssa.i
  %.neg3256 = add i32 %.11876.lcssa.i, 1
  %xtraiter3247 = and i32 %i.edz, 1
  %lcmp.mod3248.not = icmp eq i32 %xtraiter3247, 0
  br i1 %lcmp.mod3248.not, label %.lr.ph2302.i.prol.loopexit, label %.lr.ph2302.i.prol

.lr.ph2302.i.prol:                                ; preds = %.lr.ph2302.i.preheader
  %i.eea = load i8, ptr %.21880.lcssa.i, align 1, !tbaa !17
  %i.eeb = sext i8 %i.eea to i16
  %i.eec = insertelement <8 x i16> poison, i16 %i.eeb, i64 0
  %i.eed = shufflevector <8 x i16> %i.eec, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eee = load <8 x i8>, ptr %.101978.lcssa.i, align 1, !tbaa !17
  %i.eef = sext <8 x i8> %i.eee to <8 x i16>      ; 2 uses
  %i.eeg = mul <8 x i16> %i.eed, %i.eef
  %i.eeh = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.eed, <8 x i16> %i.eef)
  %i.eei = shufflevector <8 x i16> %i.eeg, <8 x i16> %i.eeh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eej = bitcast <8 x i16> %i.eei to <4 x i32>
  %i.eek = add <4 x i32> %.lcssa1110.i, %i.eej    ; 2 uses
  %i.eel = getelementptr inbounds nuw i8, ptr %.21880.lcssa.i, i64 1
  %i.eem = getelementptr inbounds nuw i8, ptr %.101978.lcssa.i, i64 4 ; 2 uses
  %i.een = add nuw nsw i32 %.11876.lcssa.i, 1
  br label %.lr.ph2302.i.prol.loopexit

.lr.ph2302.i.prol.loopexit:                       ; preds = %.lr.ph2302.i.prol, %.lr.ph2302.i.preheader
  %.lcssa2618.unr = phi <4 x i32> [ poison, %.lr.ph2302.i.preheader ], [ %i.eek, %.lr.ph2302.i.prol ]
  %.lcssa2617.unr = phi ptr [ poison, %.lr.ph2302.i.preheader ], [ %i.eem, %.lr.ph2302.i.prol ]
  %.218772301.i.unr = phi i32 [ %.11876.lcssa.i, %.lr.ph2302.i.preheader ], [ %i.een, %.lr.ph2302.i.prol ]
  %.318812300.i.unr = phi ptr [ %.21880.lcssa.i, %.lr.ph2302.i.preheader ], [ %i.eel, %.lr.ph2302.i.prol ]
  %.1119792299.i.unr = phi ptr [ %.101978.lcssa.i, %.lr.ph2302.i.preheader ], [ %i.eem, %.lr.ph2302.i.prol ]
  %.unr3249 = phi <4 x i32> [ %.lcssa1110.i, %.lr.ph2302.i.preheader ], [ %i.eek, %.lr.ph2302.i.prol ]
  %i.eeo = icmp eq i32 %8, %.neg3256
  br i1 %i.eeo, label %._crit_edge2303.i, label %.lr.ph2302.i

.lr.ph2294.i:                                     ; preds = %._crit_edge2285.i, %.lr.ph2294.i
  %.118762292.i = phi i32 [ %i.efa, %.lr.ph2294.i ], [ %.01875.lcssa3358.i, %._crit_edge2285.i ]
  %.218802291.i = phi ptr [ %i.eey, %.lr.ph2294.i ], [ %.11879.i, %._crit_edge2285.i ] ; 2 uses
  %.1019782290.i = phi ptr [ %i.eez, %.lr.ph2294.i ], [ %.91977.lcssa3355.i, %._crit_edge2285.i ] ; 2 uses
  %i.eep = phi <4 x i32> [ %i.eex, %.lr.ph2294.i ], [ %i.edv, %._crit_edge2285.i ]
  %i.eeq = load float, ptr %.218802291.i, align 1, !tbaa !17
  %i.eer = insertelement <4 x float> poison, float %i.eeq, i64 0
  %i.ees = load <8 x i8>, ptr %.1019782290.i, align 1, !tbaa !17
  %i.eet = bitcast <4 x float> %i.eer to <16 x i8>
  %i.eeu = sext <8 x i8> %i.ees to <8 x i16>
  %i.eev = shufflevector <16 x i8> %i.eet, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.eew = sext <8 x i8> %i.eev to <8 x i16>
  %i.eex = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.eep, <8 x i16> %i.eew, <8 x i16> %i.eeu) ; 2 uses
  %i.eey = getelementptr inbounds nuw i8, ptr %.218802291.i, i64 2 ; 2 uses
  %i.eez = getelementptr inbounds nuw i8, ptr %.1019782290.i, i64 8 ; 2 uses
  %i.efa = add nuw nsw i32 %.118762292.i, 2       ; 3 uses
  %i.efb = or disjoint i32 %i.efa, 1
  %i.efc = icmp slt i32 %i.efb, %8
  br i1 %i.efc, label %.lr.ph2294.i, label %.preheader1052.i, !llvm.loop !494

.lr.ph2302.i:                                     ; preds = %.lr.ph2302.i.prol.loopexit, %.lr.ph2302.i
  %.218772301.i = phi i32 [ %i.ege, %.lr.ph2302.i ], [ %.218772301.i.unr, %.lr.ph2302.i.prol.loopexit ]
  %.318812300.i = phi ptr [ %i.egc, %.lr.ph2302.i ], [ %.318812300.i.unr, %.lr.ph2302.i.prol.loopexit ] ; 3 uses
  %.1119792299.i = phi ptr [ %i.egd, %.lr.ph2302.i ], [ %.1119792299.i.unr, %.lr.ph2302.i.prol.loopexit ] ; 3 uses
  %i.efd = phi <4 x i32> [ %i.egb, %.lr.ph2302.i ], [ %.unr3249, %.lr.ph2302.i.prol.loopexit ]
  %i.efe = load i8, ptr %.318812300.i, align 1, !tbaa !17
  %i.eff = sext i8 %i.efe to i16
  %i.efg = insertelement <8 x i16> poison, i16 %i.eff, i64 0
  %i.efh = shufflevector <8 x i16> %i.efg, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.efi = load <8 x i8>, ptr %.1119792299.i, align 1, !tbaa !17
  %i.efj = sext <8 x i8> %i.efi to <8 x i16>      ; 2 uses
  %i.efk = mul <8 x i16> %i.efh, %i.efj
  %i.efl = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.efh, <8 x i16> %i.efj)
  %i.efm = shufflevector <8 x i16> %i.efk, <8 x i16> %i.efl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.efn = bitcast <8 x i16> %i.efm to <4 x i32>
  %i.efo = add <4 x i32> %i.efd, %i.efn
  %i.efp = getelementptr inbounds nuw i8, ptr %.318812300.i, i64 1
  %i.efq = getelementptr inbounds nuw i8, ptr %.1119792299.i, i64 4
  %i.efr = load i8, ptr %i.efp, align 1, !tbaa !17
  %i.efs = sext i8 %i.efr to i16
  %i.eft = insertelement <8 x i16> poison, i16 %i.efs, i64 0
  %i.efu = shufflevector <8 x i16> %i.eft, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.efv = load <8 x i8>, ptr %i.efq, align 1, !tbaa !17
  %i.efw = sext <8 x i8> %i.efv to <8 x i16>      ; 2 uses
  %i.efx = mul <8 x i16> %i.efu, %i.efw
  %i.efy = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.efu, <8 x i16> %i.efw)
  %i.efz = shufflevector <8 x i16> %i.efx, <8 x i16> %i.efy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ega = bitcast <8 x i16> %i.efz to <4 x i32>
  %i.egb = add <4 x i32> %i.efo, %i.ega           ; 2 uses
  %i.egc = getelementptr inbounds nuw i8, ptr %.318812300.i, i64 2
  %i.egd = getelementptr inbounds nuw i8, ptr %.1119792299.i, i64 8 ; 2 uses
  %i.ege = add nuw nsw i32 %.218772301.i, 2       ; 2 uses
  %exitcond2965.not.i.1 = icmp eq i32 %i.ege, %8
  br i1 %exitcond2965.not.i.1, label %._crit_edge2303.i, label %.lr.ph2302.i, !llvm.loop !495

._crit_edge2303.i:                                ; preds = %.lr.ph2302.i.prol.loopexit, %.lr.ph2302.i, %.preheader1052.i
  %.lcssa1111.i = phi <4 x i32> [ %.lcssa1110.i, %.preheader1052.i ], [ %.lcssa2618.unr, %.lr.ph2302.i.prol.loopexit ], [ %i.egb, %.lr.ph2302.i ]
  %.111979.lcssa.i = phi ptr [ %.101978.lcssa.i, %.preheader1052.i ], [ %.lcssa2617.unr, %.lr.ph2302.i.prol.loopexit ], [ %i.egd, %.lr.ph2302.i ] ; 2 uses
  store <4 x i32> %.lcssa1111.i, ptr %.272308.i, align 1, !tbaa !17
  %i.egf = getelementptr inbounds nuw i8, ptr %.272308.i, i64 16 ; 2 uses
  %i.egg = add nuw nsw i32 %.219652307.i, 4       ; 3 uses
  %i.egh = or disjoint i32 %i.egg, 3
  %i.egi = icmp slt i32 %i.egh, %6
  br i1 %i.egi, label %.lr.ph2309.i, label %.preheader1056.i, !llvm.loop !496

.preheader1055.i:                                 ; preds = %._crit_edge2369.i, %.preheader1056.i
  %.121980.lcssa.i = phi ptr [ %.81976.lcssa.i, %.preheader1056.i ], [ %.161984.lcssa.i, %._crit_edge2369.i ]
  %.31966.lcssa.i = phi i32 [ %.21965.lcssa.i, %.preheader1056.i ], [ %i.esl, %._crit_edge2369.i ] ; 2 uses
  %.28.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader1056.i ], [ %i.esk, %._crit_edge2369.i ] ; 2 uses
  %i.egj = icmp slt i32 %.31966.lcssa.i, %6
  br i1 %i.egj, label %.lr.ph2427.i.preheader, label %._crit_edge2428.i

.lr.ph2427.i.preheader:                           ; preds = %.preheader1055.i
  %i.egk = getelementptr inbounds nuw i8, ptr %indvars.iv875, i64 8
  %i.egl = getelementptr i8, ptr %.82432.i, i64 %i.cei
  %i.egm = getelementptr i8, ptr %.82432.i, i64 %i.cel
  br label %.lr.ph2427.i

.lr.ph2380.i:                                     ; preds = %.lr.ph2380.i.preheader, %._crit_edge2369.i
  %.282379.i = phi ptr [ %i.esk, %._crit_edge2369.i ], [ %.27.lcssa.i, %.lr.ph2380.i.preheader ] ; 5 uses
  %.319662378.i = phi i32 [ %i.esl, %._crit_edge2369.i ], [ %.21965.lcssa.i, %.lr.ph2380.i.preheader ]
  %.1219802377.i = phi ptr [ %.161984.lcssa.i, %._crit_edge2369.i ], [ %.81976.lcssa.i, %.lr.ph2380.i.preheader ] ; 8 uses
  br i1 %i.ccw, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph2380.i
  %i.egn = load i32, ptr %.282379.i, align 4, !tbaa !23
  %i.ego = getelementptr inbounds nuw i8, ptr %.282379.i, i64 4
  %i.egp = load i32, ptr %i.ego, align 4, !tbaa !23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph2380.i
  %.01819.i = phi i32 [ %i.egn, %bb.bm ], [ 0, %.lr.ph2380.i ] ; 4 uses
  %.01814.i = phi i32 [ %i.egp, %bb.bm ], [ 0, %.lr.ph2380.i ] ; 4 uses
  br i1 %i.ccx, label %iter.check2553, label %._crit_edge2320.i

iter.check2553:                                   ; preds = %bb.bn
  br i1 %min.iters.check2500, label %.lr.ph2319.i.preheader, label %vector.main.loop.iter.check2501

vector.main.loop.iter.check2501:                  ; preds = %iter.check2553
  br i1 %min.iters.check2502, label %vec.epilog.ph2557, label %vector.ph2503

vector.ph2503:                                    ; preds = %vector.main.loop.iter.check2501
  %i.egq = getelementptr i8, ptr %.1219802377.i, i64 %i.cea
  %76 = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.01814.i, i64 0
  %77 = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.01819.i, i64 0
  br label %vector.body2505

vector.body2505:                                  ; preds = %vector.body2505, %vector.ph2503
  %index2506 = phi i64 [ 0, %vector.ph2503 ], [ %index.next2543, %vector.body2505 ] ; 3 uses
  %vec.phi2507 = phi <16 x i32> [ %76, %vector.ph2503 ], [ %113, %vector.body2505 ]
  %vec.phi2508 = phi <16 x i32> [ zeroinitializer, %vector.ph2503 ], [ %114, %vector.body2505 ]
  %vec.phi2509 = phi <16 x i32> [ %77, %vector.ph2503 ], [ %97, %vector.body2505 ]
  %vec.phi2510 = phi <16 x i32> [ zeroinitializer, %vector.ph2503 ], [ %98, %vector.body2505 ]
  %i.egr = shl i64 %index2506, 2                  ; 2 uses
  %next.gep2511 = getelementptr i8, ptr %.82432.i, i64 %i.egr
  %i.egs = getelementptr i8, ptr %.82432.i, i64 %i.egr
  %next.gep2512 = getelementptr i8, ptr %i.egs, i64 64
  %i.egt = shl i64 %index2506, 3                  ; 2 uses
  %next.gep2513 = getelementptr i8, ptr %.1219802377.i, i64 %i.egt
  %i.egu = getelementptr i8, ptr %.1219802377.i, i64 %i.egt
  %next.gep2514 = getelementptr i8, ptr %i.egu, i64 128
  %wide.vec2515 = load <64 x i8>, ptr %next.gep2511, align 1, !tbaa !17 ; 4 uses
  %strided.vec2516 = shufflevector <64 x i8> %wide.vec2515, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2517 = shufflevector <64 x i8> %wide.vec2515, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2518 = shufflevector <64 x i8> %wide.vec2515, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2519 = shufflevector <64 x i8> %wide.vec2515, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2520 = load <64 x i8>, ptr %next.gep2512, align 1, !tbaa !17 ; 4 uses
  %strided.vec2521 = shufflevector <64 x i8> %wide.vec2520, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2522 = shufflevector <64 x i8> %wide.vec2520, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2523 = shufflevector <64 x i8> %wide.vec2520, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2524.a = shufflevector <64 x i8> %wide.vec2520, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %78 = sext <16 x i8> %strided.vec2516 to <16 x i32> ; 2 uses
  %79 = sext <16 x i8> %strided.vec2521 to <16 x i32> ; 2 uses
  %wide.vec2525 = load <128 x i8>, ptr %next.gep2513, align 1, !tbaa !17 ; 8 uses
  %strided.vec2526 = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec2527.a = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec2528.a = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec2529.a = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec2530.a = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec2531 = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec2532 = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec2533 = shufflevector <128 x i8> %wide.vec2525, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %wide.vec2534 = load <128 x i8>, ptr %next.gep2514, align 1, !tbaa !17 ; 8 uses
  %strided.vec2535 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec2536 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec2537 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec2538 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec2539 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec2540 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec2541 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec2542 = shufflevector <128 x i8> %wide.vec2534, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %80 = zext <16 x i8> %strided.vec2526 to <16 x i32>
  %i.egv = zext <16 x i8> %strided.vec2535 to <16 x i32>
  %81 = mul nsw <16 x i32> %80, %78
  %i.egw = mul nsw <16 x i32> %i.egv, %79
  %82 = add <16 x i32> %81, %vec.phi2509
  %83 = add <16 x i32> %i.egw, %vec.phi2510
  %i.egx = sext <16 x i8> %strided.vec2517 to <16 x i32> ; 2 uses
  %84 = sext <16 x i8> %strided.vec2522 to <16 x i32> ; 2 uses
  %85 = zext <16 x i8> %strided.vec2527.a to <16 x i32>
  %i.egy = zext <16 x i8> %strided.vec2536 to <16 x i32>
  %86 = mul nsw <16 x i32> %85, %i.egx
  %i.egz = mul nsw <16 x i32> %i.egy, %84
  %87 = add <16 x i32> %82, %86
  %88 = add <16 x i32> %83, %i.egz
  %i.eha = sext <16 x i8> %strided.vec2518 to <16 x i32> ; 2 uses
  %89 = sext <16 x i8> %strided.vec2523 to <16 x i32> ; 2 uses
  %90 = zext <16 x i8> %strided.vec2528.a to <16 x i32>
  %i.ehb = zext <16 x i8> %strided.vec2537 to <16 x i32>
  %91 = mul nsw <16 x i32> %90, %i.eha
  %i.ehc = mul nsw <16 x i32> %i.ehb, %89
  %92 = add <16 x i32> %87, %91
  %93 = add <16 x i32> %88, %i.ehc
  %i.ehd = sext <16 x i8> %strided.vec2519 to <16 x i32> ; 2 uses
  %94 = sext <16 x i8> %strided.vec2524.a to <16 x i32> ; 2 uses
  %i.ehe = zext <16 x i8> %strided.vec2529.a to <16 x i32>
  %95 = zext <16 x i8> %strided.vec2538 to <16 x i32>
  %i.ehf = mul nsw <16 x i32> %i.ehe, %i.ehd
  %96 = mul nsw <16 x i32> %95, %94
  %97 = add <16 x i32> %92, %i.ehf                ; 2 uses
  %98 = add <16 x i32> %93, %96                   ; 2 uses
  %99 = zext <16 x i8> %strided.vec2530.a to <16 x i32>
  %i.ehg = zext <16 x i8> %strided.vec2539 to <16 x i32>
  %i.ehh = mul nsw <16 x i32> %99, %78
  %100 = mul nsw <16 x i32> %i.ehg, %79
  %101 = add <16 x i32> %i.ehh, %vec.phi2507
  %102 = add <16 x i32> %100, %vec.phi2508
  %103 = zext <16 x i8> %strided.vec2531 to <16 x i32>
  %i.ehi = zext <16 x i8> %strided.vec2540 to <16 x i32>
  %i.ehj = mul nsw <16 x i32> %103, %i.egx
  %104 = mul nsw <16 x i32> %i.ehi, %84
  %105 = add <16 x i32> %101, %i.ehj
  %106 = add <16 x i32> %102, %104
  %107 = zext <16 x i8> %strided.vec2532 to <16 x i32>
  %i.ehk = zext <16 x i8> %strided.vec2541 to <16 x i32>
  %i.ehl = mul nsw <16 x i32> %107, %i.eha
  %108 = mul nsw <16 x i32> %i.ehk, %89
  %109 = add <16 x i32> %105, %i.ehl
  %110 = add <16 x i32> %106, %108
  %111 = zext <16 x i8> %strided.vec2533 to <16 x i32>
  %i.ehm = zext <16 x i8> %strided.vec2542 to <16 x i32>
  %i.ehn = mul nsw <16 x i32> %111, %i.ehd
  %112 = mul nsw <16 x i32> %i.ehm, %94
  %113 = add <16 x i32> %109, %i.ehn              ; 2 uses
  %114 = add <16 x i32> %110, %112                ; 2 uses
  %index.next2543 = add nuw i64 %index2506, 32    ; 2 uses
  %i.eho = icmp eq i64 %index.next2543, %n.vec2504
  br i1 %i.eho, label %middle.block2544, label %vector.body2505, !llvm.loop !497

middle.block2544:                                 ; preds = %vector.body2505
  %bin.rdx2545 = add <16 x i32> %114, %113
  %i.ehp = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2545) ; 3 uses
  %bin.rdx2546 = add <16 x i32> %98, %97
  %i.ehq = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2546) ; 3 uses
  br i1 %cmp.n2547, label %.loopexit2587, label %vec.epilog.iter.check2555

vec.epilog.iter.check2555:                        ; preds = %middle.block2544
  br i1 %min.epilog.iters.check2556, label %.lr.ph2319.i.preheader, label %vec.epilog.ph2557, !prof !26

vec.epilog.ph2557:                                ; preds = %vector.main.loop.iter.check2501, %vec.epilog.iter.check2555
  %vec.epilog.resume.val2548 = phi i64 [ %n.vec2504, %vec.epilog.iter.check2555 ], [ 0, %vector.main.loop.iter.check2501 ]
  %bc.merge.rdx2550 = phi i32 [ %i.ehp, %vec.epilog.iter.check2555 ], [ %.01814.i, %vector.main.loop.iter.check2501 ]
  %bc.merge.rdx2551 = phi i32 [ %i.ehq, %vec.epilog.iter.check2555 ], [ %.01819.i, %vector.main.loop.iter.check2501 ]
  %i.ehr = getelementptr i8, ptr %.1219802377.i, i64 %i.cee
  %i.ehs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2550, i64 0
  %i.eht = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2551, i64 0
  br label %vec.epilog.vector.body2559

vec.epilog.vector.body2559:                       ; preds = %vec.epilog.vector.body2559, %vec.epilog.ph2557
  %index2560 = phi i64 [ %vec.epilog.resume.val2548, %vec.epilog.ph2557 ], [ %index.next2579, %vec.epilog.vector.body2559 ] ; 3 uses
  %vec.phi2561 = phi <4 x i32> [ %i.ehs, %vec.epilog.ph2557 ], [ %i.eix, %vec.epilog.vector.body2559 ]
  %vec.phi2562 = phi <4 x i32> [ %i.eht, %vec.epilog.ph2557 ], [ %i.eil, %vec.epilog.vector.body2559 ]
  %i.ehu = shl i64 %index2560, 2
  %next.gep2563 = getelementptr i8, ptr %.82432.i, i64 %i.ehu
  %i.ehv = shl i64 %index2560, 3
  %next.gep2564 = getelementptr i8, ptr %.1219802377.i, i64 %i.ehv
  %wide.vec2565 = load <16 x i8>, ptr %next.gep2563, align 1, !tbaa !17 ; 4 uses
  %strided.vec2566 = shufflevector <16 x i8> %wide.vec2565, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2567 = shufflevector <16 x i8> %wide.vec2565, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2568 = shufflevector <16 x i8> %wide.vec2565, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2569 = shufflevector <16 x i8> %wide.vec2565, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ehw = sext <4 x i8> %strided.vec2566 to <4 x i32> ; 2 uses
  %wide.vec2570 = load <32 x i8>, ptr %next.gep2564, align 1, !tbaa !17 ; 8 uses
  %strided.vec2571 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec2572 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec2573 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec2574 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec2575 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec2576 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec2577 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec2578 = shufflevector <32 x i8> %wide.vec2570, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.ehx = zext <4 x i8> %strided.vec2571 to <4 x i32>
  %i.ehy = mul nsw <4 x i32> %i.ehx, %i.ehw
  %i.ehz = add <4 x i32> %i.ehy, %vec.phi2562
  %i.eia = sext <4 x i8> %strided.vec2567 to <4 x i32> ; 2 uses
  %i.eib = zext <4 x i8> %strided.vec2572 to <4 x i32>
  %i.eic = mul nsw <4 x i32> %i.eib, %i.eia
  %i.eid = add <4 x i32> %i.ehz, %i.eic
  %i.eie = sext <4 x i8> %strided.vec2568 to <4 x i32> ; 2 uses
  %i.eif = zext <4 x i8> %strided.vec2573 to <4 x i32>
  %i.eig = mul nsw <4 x i32> %i.eif, %i.eie
  %i.eih = add <4 x i32> %i.eid, %i.eig
  %i.eii = sext <4 x i8> %strided.vec2569 to <4 x i32> ; 2 uses
  %i.eij = zext <4 x i8> %strided.vec2574 to <4 x i32>
  %i.eik = mul nsw <4 x i32> %i.eij, %i.eii
  %i.eil = add <4 x i32> %i.eih, %i.eik           ; 2 uses
  %i.eim = zext <4 x i8> %strided.vec2575 to <4 x i32>
  %i.ein = mul nsw <4 x i32> %i.eim, %i.ehw
  %i.eio = add <4 x i32> %i.ein, %vec.phi2561
  %i.eip = zext <4 x i8> %strided.vec2576 to <4 x i32>
  %i.eiq = mul nsw <4 x i32> %i.eip, %i.eia
  %i.eir = add <4 x i32> %i.eio, %i.eiq
  %i.eis = zext <4 x i8> %strided.vec2577 to <4 x i32>
  %i.eit = mul nsw <4 x i32> %i.eis, %i.eie
  %i.eiu = add <4 x i32> %i.eir, %i.eit
  %i.eiv = zext <4 x i8> %strided.vec2578 to <4 x i32>
  %i.eiw = mul nsw <4 x i32> %i.eiv, %i.eii
  %i.eix = add <4 x i32> %i.eiu, %i.eiw           ; 2 uses
  %index.next2579 = add nuw i64 %index2560, 4     ; 2 uses
  %i.eiy = icmp eq i64 %index.next2579, %n.vec2558
  br i1 %i.eiy, label %vec.epilog.middle.block2580, label %vec.epilog.vector.body2559, !llvm.loop !498

vec.epilog.middle.block2580:                      ; preds = %vec.epilog.vector.body2559
  %i.eiz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eix) ; 2 uses
  %i.eja = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eil) ; 2 uses
  br i1 %cmp.n2581, label %.loopexit2587, label %.lr.ph2319.i.preheader

.lr.ph2319.i.preheader:                           ; preds = %iter.check2553, %vec.epilog.iter.check2555, %vec.epilog.middle.block2580
  %.018052317.i.ph = phi i32 [ 0, %iter.check2553 ], [ %i.cdy, %vec.epilog.iter.check2555 ], [ %i.cec, %vec.epilog.middle.block2580 ]
  %.018092316.i.ph = phi ptr [ %.82432.i, %iter.check2553 ], [ %i.ebw, %vec.epilog.iter.check2555 ], [ %i.ebx, %vec.epilog.middle.block2580 ]
  %.118152315.i.ph = phi i32 [ %.01814.i, %iter.check2553 ], [ %i.ehp, %vec.epilog.iter.check2555 ], [ %i.eiz, %vec.epilog.middle.block2580 ]
  %.118202314.i.ph = phi i32 [ %.01819.i, %iter.check2553 ], [ %i.ehq, %vec.epilog.iter.check2555 ], [ %i.eja, %vec.epilog.middle.block2580 ]
  %.1319812313.i.ph = phi ptr [ %.1219802377.i, %iter.check2553 ], [ %i.egq, %vec.epilog.iter.check2555 ], [ %i.ehr, %vec.epilog.middle.block2580 ]
  br label %.lr.ph2319.i

.lr.ph2319.i:                                     ; preds = %.lr.ph2319.i.preheader, %.lr.ph2319.i
  %.018052317.i = phi i32 [ %i.ejo, %.lr.ph2319.i ], [ %.018052317.i.ph, %.lr.ph2319.i.preheader ]
  %.018092316.i = phi ptr [ %i.ejm, %.lr.ph2319.i ], [ %.018092316.i.ph, %.lr.ph2319.i.preheader ] ; 2 uses
  %.118152315.i = phi i32 [ %op.rdx2593, %.lr.ph2319.i ], [ %.118152315.i.ph, %.lr.ph2319.i.preheader ]
  %.118202314.i = phi i32 [ %op.rdx2592, %.lr.ph2319.i ], [ %.118202314.i.ph, %.lr.ph2319.i.preheader ]
  %.1319812313.i = phi ptr [ %i.ejn, %.lr.ph2319.i ], [ %.1319812313.i.ph, %.lr.ph2319.i.preheader ] ; 3 uses
  %i.ejb = load <4 x i8>, ptr %.018092316.i, align 1, !tbaa !17
  %i.ejc = sext <4 x i8> %i.ejb to <4 x i32>      ; 2 uses
  %i.ejd = load <4 x i8>, ptr %.1319812313.i, align 1, !tbaa !17
  %i.eje = zext <4 x i8> %i.ejd to <4 x i32>
  %i.ejf = mul nsw <4 x i32> %i.eje, %i.ejc
  %i.ejg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ejf)
  %op.rdx2592 = add i32 %i.ejg, %.118202314.i     ; 2 uses
  %i.ejh = getelementptr inbounds nuw i8, ptr %.1319812313.i, i64 4
  %i.eji = load <4 x i8>, ptr %i.ejh, align 1, !tbaa !17
  %i.ejj = zext <4 x i8> %i.eji to <4 x i32>
  %i.ejk = mul nsw <4 x i32> %i.ejj, %i.ejc
  %i.ejl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ejk)
  %op.rdx2593 = add i32 %i.ejl, %.118152315.i     ; 2 uses
  %i.ejm = getelementptr inbounds nuw i8, ptr %.018092316.i, i64 4
  %i.ejn = getelementptr inbounds nuw i8, ptr %.1319812313.i, i64 8
  %i.ejo = add nuw nsw i32 %.018052317.i, 4       ; 2 uses
  %i.ejp = or disjoint i32 %i.ejo, 3
  %i.ejq = icmp slt i32 %i.ejp, %8
  br i1 %i.ejq, label %.lr.ph2319.i, label %.loopexit2587, !llvm.loop !499

.loopexit2587:                                    ; preds = %.lr.ph2319.i, %vec.epilog.middle.block2580, %middle.block2544
  %.lcssa1351 = phi i32 [ %i.eja, %vec.epilog.middle.block2580 ], [ %i.ehq, %middle.block2544 ], [ %op.rdx2592, %.lr.ph2319.i ]
  %.lcssa1350 = phi i32 [ %i.eiz, %vec.epilog.middle.block2580 ], [ %i.ehp, %middle.block2544 ], [ %op.rdx2593, %.lr.ph2319.i ]
  %i.ejr = getelementptr i8, ptr %.1219802377.i, i64 %i.cdh
  %scevgep2966.i = getelementptr i8, ptr %i.ejr, i64 8
  %i.ejs = load i32, ptr %indvars.iv878, align 4, !tbaa !23 ; 2 uses
  %i.ejt = sub nsw i32 %.lcssa1351, %i.ejs
  %i.eju = sub nsw i32 %.lcssa1350, %i.ejs
  br label %._crit_edge2320.i

._crit_edge2320.i:                                ; preds = %.loopexit2587, %bb.bn
  %.01805.lcssa3370.i = phi i32 [ %i.cdb, %.loopexit2587 ], [ 0, %bb.bn ] ; 6 uses
  %.131981.lcssa3365.i = phi ptr [ %scevgep2966.i, %.loopexit2587 ], [ %.1219802377.i, %bb.bn ] ; 9 uses
  %.21821.i = phi i32 [ %i.ejt, %.loopexit2587 ], [ %.01819.i, %bb.bn ] ; 4 uses
  %.21816.i = phi i32 [ %i.eju, %.loopexit2587 ], [ %.01814.i, %bb.bn ] ; 4 uses
  %.11810.i = phi ptr [ %i.ebv, %.loopexit2587 ], [ %.82432.i, %bb.bn ] ; 9 uses
  %i.ejv = or disjoint i32 %.01805.lcssa3370.i, 1
  %i.ejw = icmp slt i32 %i.ejv, %8
  br i1 %i.ejw, label %iter.check2472, label %.preheader.i

iter.check2472:                                   ; preds = %._crit_edge2320.i
  %i.ejx = sub i32 %i.cdp, %.01805.lcssa3370.i    ; 3 uses
  %i.ejy = lshr i32 %i.ejx, 1
  %narrow2591 = add nuw i32 %i.ejy, 1
  %i.ejz = zext i32 %narrow2591 to i64            ; 5 uses
  %min.iters.check2403 = icmp ult i32 %i.ejx, 14
  br i1 %min.iters.check2403, label %.lr.ph2332.i.preheader, label %vector.main.loop.iter.check2404

vector.main.loop.iter.check2404:                  ; preds = %iter.check2472
  %min.iters.check2405 = icmp ult i32 %i.ejx, 126
  br i1 %min.iters.check2405, label %vec.epilog.ph2476, label %vector.ph2406

vector.ph2406:                                    ; preds = %vector.main.loop.iter.check2404
  %i.eka = and i64 %i.ejz, 56
  %n.vec2407 = and i64 %i.ejz, 4294967232         ; 6 uses
  %i.ekb = trunc nuw i64 %n.vec2407 to i32
  %i.ekc = shl i32 %i.ekb, 1
  %i.ekd = add i32 %.01805.lcssa3370.i, %i.ekc    ; 2 uses
  %i.eke = shl nuw nsw i64 %n.vec2407, 1
  %i.ekf = getelementptr i8, ptr %.11810.i, i64 %i.eke ; 2 uses
  %i.ekg = shl nuw nsw i64 %n.vec2407, 2
  %i.ekh = getelementptr i8, ptr %.131981.lcssa3365.i, i64 %i.ekg ; 2 uses
  %i.eki = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21816.i, i64 0
  %i.ekj = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21821.i, i64 0
  br label %vector.body2408

vector.body2408:                                  ; preds = %vector.body2408, %vector.ph2406
  %index2409 = phi i64 [ 0, %vector.ph2406 ], [ %index.next2458, %vector.body2408 ] ; 3 uses
  %vec.phi2410 = phi <16 x i32> [ %i.eki, %vector.ph2406 ], [ %i.ems, %vector.body2408 ]
  %vec.phi2411 = phi <16 x i32> [ zeroinitializer, %vector.ph2406 ], [ %i.emt, %vector.body2408 ]
  %vec.phi2412 = phi <16 x i32> [ zeroinitializer, %vector.ph2406 ], [ %i.emu, %vector.body2408 ]
  %vec.phi2413 = phi <16 x i32> [ zeroinitializer, %vector.ph2406 ], [ %i.emv, %vector.body2408 ]
  %vec.phi2414 = phi <16 x i32> [ %i.ekj, %vector.ph2406 ], [ %i.elu, %vector.body2408 ]
  %vec.phi2415 = phi <16 x i32> [ zeroinitializer, %vector.ph2406 ], [ %i.elv, %vector.body2408 ]
  %vec.phi2416 = phi <16 x i32> [ zeroinitializer, %vector.ph2406 ], [ %i.elw, %vector.body2408 ]
  %vec.phi2417 = phi <16 x i32> [ zeroinitializer, %vector.ph2406 ], [ %i.elx, %vector.body2408 ]
  %i.ekk = shl i64 %index2409, 1                  ; 4 uses
  %next.gep2418 = getelementptr i8, ptr %.11810.i, i64 %i.ekk
  %i.ekl = getelementptr i8, ptr %.11810.i, i64 %i.ekk
  %next.gep2419 = getelementptr i8, ptr %i.ekl, i64 32
  %i.ekm = getelementptr i8, ptr %.11810.i, i64 %i.ekk
  %next.gep2420 = getelementptr i8, ptr %i.ekm, i64 64
  %i.ekn = getelementptr i8, ptr %.11810.i, i64 %i.ekk
  %next.gep2421 = getelementptr i8, ptr %i.ekn, i64 96
  %i.eko = shl i64 %index2409, 2                  ; 4 uses
  %next.gep2422 = getelementptr i8, ptr %.131981.lcssa3365.i, i64 %i.eko
  %i.ekp = getelementptr i8, ptr %.131981.lcssa3365.i, i64 %i.eko
  %next.gep2423 = getelementptr i8, ptr %i.ekp, i64 64
  %i.ekq = getelementptr i8, ptr %.131981.lcssa3365.i, i64 %i.eko
  %next.gep2424 = getelementptr i8, ptr %i.ekq, i64 128
  %i.ekr = getelementptr i8, ptr %.131981.lcssa3365.i, i64 %i.eko
  %next.gep2425 = getelementptr i8, ptr %i.ekr, i64 192
  %wide.vec2426 = load <32 x i8>, ptr %next.gep2418, align 1, !tbaa !17 ; 2 uses
  %strided.vec2427 = shufflevector <32 x i8> %wide.vec2426, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2428 = shufflevector <32 x i8> %wide.vec2426, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2429 = load <32 x i8>, ptr %next.gep2419, align 1, !tbaa !17 ; 2 uses
  %strided.vec2430 = shufflevector <32 x i8> %wide.vec2429, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2431 = shufflevector <32 x i8> %wide.vec2429, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2432 = load <32 x i8>, ptr %next.gep2420, align 1, !tbaa !17 ; 2 uses
  %strided.vec2433.a = shufflevector <32 x i8> %wide.vec2432, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2434 = shufflevector <32 x i8> %wide.vec2432, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2435 = load <32 x i8>, ptr %next.gep2421, align 1, !tbaa !17 ; 2 uses
  %strided.vec2436 = shufflevector <32 x i8> %wide.vec2435, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2437 = shufflevector <32 x i8> %wide.vec2435, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.eks = sext <16 x i8> %strided.vec2427 to <16 x i32> ; 2 uses
  %i.ekt = sext <16 x i8> %strided.vec2430 to <16 x i32> ; 2 uses
  %i.eku = sext <16 x i8> %strided.vec2433.a to <16 x i32> ; 2 uses
  %i.ekv = sext <16 x i8> %strided.vec2436 to <16 x i32> ; 2 uses
  %wide.vec2438 = load <64 x i8>, ptr %next.gep2422, align 1, !tbaa !17 ; 4 uses
  %strided.vec2439 = shufflevector <64 x i8> %wide.vec2438, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2440 = shufflevector <64 x i8> %wide.vec2438, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2441 = shufflevector <64 x i8> %wide.vec2438, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2442 = shufflevector <64 x i8> %wide.vec2438, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
end_hunk_2
begin_hunk_3_@_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %strided.vec2354.a = shufflevector <32 x i8> %wide.vec2353, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2355.a = shufflevector <32 x i8> %wide.vec2353, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2356.a = load <32 x i8>, ptr %next.gep2346, align 1, !tbaa !17 ; 2 uses
  %strided.vec2357.a = shufflevector <32 x i8> %wide.vec2356.a, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2358.a = shufflevector <32 x i8> %wide.vec2356.a, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2359 = load <32 x i8>, ptr %next.gep2347, align 1, !tbaa !17 ; 2 uses
  %strided.vec2360.a = shufflevector <32 x i8> %wide.vec2359, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2361 = shufflevector <32 x i8> %wide.vec2359, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2362 = load <32 x i8>, ptr %next.gep2348, align 1, !tbaa !17 ; 2 uses
  %strided.vec2363 = shufflevector <32 x i8> %wide.vec2362, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2364 = shufflevector <32 x i8> %wide.vec2362, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.eoz = sext <16 x i8> %strided.vec2354.a to <16 x i32>
  %i.epa = sext <16 x i8> %strided.vec2357.a to <16 x i32>
  %i.epb = sext <16 x i8> %strided.vec2360.a to <16 x i32>
  %i.epc = sext <16 x i8> %strided.vec2363 to <16 x i32>
  %i.epd = mul nsw <16 x i32> %i.eoz, %i.eov
  %i.epe = mul nsw <16 x i32> %i.epa, %i.eow
  %i.epf = mul nsw <16 x i32> %i.epb, %i.eox
  %i.epg = mul nsw <16 x i32> %i.epc, %i.eoy
  %i.eph = add <16 x i32> %i.epd, %vec.phi2340    ; 2 uses
  %i.epi = add <16 x i32> %i.epe, %vec.phi2341    ; 2 uses
  %i.epj = add <16 x i32> %i.epf, %vec.phi2342    ; 2 uses
  %i.epk = add <16 x i32> %i.epg, %vec.phi2343    ; 2 uses
  %i.epl = sext <16 x i8> %strided.vec2355.a to <16 x i32>
  %i.epm = sext <16 x i8> %strided.vec2358.a to <16 x i32>
  %i.epn = sext <16 x i8> %strided.vec2361 to <16 x i32>
  %i.epo = sext <16 x i8> %strided.vec2364 to <16 x i32>
  %i.epp = mul nsw <16 x i32> %i.epl, %i.eov
  %i.epq = mul nsw <16 x i32> %i.epm, %i.eow
  %i.epr = mul nsw <16 x i32> %i.epn, %i.eox
  %i.eps = mul nsw <16 x i32> %i.epo, %i.eoy
  %i.ept = add <16 x i32> %i.epp, %vec.phi2336    ; 2 uses
  %i.epu = add <16 x i32> %i.epq, %vec.phi2337    ; 2 uses
  %i.epv = add <16 x i32> %i.epr, %vec.phi2338    ; 2 uses
  %i.epw = add <16 x i32> %i.eps, %vec.phi2339    ; 2 uses
  %index.next2365 = add nuw i64 %index2335, 64    ; 2 uses
  %i.epx = icmp eq i64 %index.next2365, %n.vec2333
  br i1 %i.epx, label %middle.block2366, label %vector.body2334, !llvm.loop !502

middle.block2366:                                 ; preds = %vector.body2334
  %bin.rdx2367 = add <16 x i32> %i.epu, %i.ept
  %bin.rdx2368 = add <16 x i32> %i.epv, %bin.rdx2367
  %bin.rdx2369 = add <16 x i32> %i.epw, %bin.rdx2368
  %i.epy = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2369) ; 3 uses
  %bin.rdx2370 = add <16 x i32> %i.epi, %i.eph
  %bin.rdx2371 = add <16 x i32> %i.epj, %bin.rdx2370
  %bin.rdx2372 = add <16 x i32> %i.epk, %bin.rdx2371
  %i.epz = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2372) ; 3 uses
  %cmp.n2373 = icmp eq i64 %i.eof, %n.vec2333
  br i1 %cmp.n2373, label %._crit_edge2369.i, label %vec.epilog.iter.check2381

vec.epilog.iter.check2381:                        ; preds = %middle.block2366
  %min.epilog.iters.check2382 = icmp eq i64 %i.eog, 0
  br i1 %min.epilog.iters.check2382, label %.lr.ph2368.i.preheader, label %vec.epilog.ph2383, !prof !22

vec.epilog.ph2383:                                ; preds = %vector.main.loop.iter.check2330, %vec.epilog.iter.check2381
  %vec.epilog.resume.val2374 = phi i64 [ %n.vec2333, %vec.epilog.iter.check2381 ], [ 0, %vector.main.loop.iter.check2330 ]
  %bc.merge.rdx2376 = phi i32 [ %i.epy, %vec.epilog.iter.check2381 ], [ %.31817.lcssa.i, %vector.main.loop.iter.check2330 ]
  %bc.merge.rdx2377 = phi i32 [ %i.epz, %vec.epilog.iter.check2381 ], [ %.31822.lcssa.i, %vector.main.loop.iter.check2330 ]
  %n.vec2384 = and i64 %i.eof, 8589934584         ; 5 uses
  %i.eqa = trunc i64 %n.vec2384 to i32
  %i.eqb = add i32 %.11806.lcssa.i, %i.eqa
  %i.eqc = getelementptr i8, ptr %.21811.lcssa.i, i64 %n.vec2384
  %i.eqd = shl nuw nsw i64 %n.vec2384, 1
  %i.eqe = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.eqd ; 2 uses
  %i.eqf = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2376, i64 0
  %i.eqg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2377, i64 0
  br label %vec.epilog.vector.body2385

vec.epilog.vector.body2385:                       ; preds = %vec.epilog.vector.body2385, %vec.epilog.ph2383
  %index2386 = phi i64 [ %vec.epilog.resume.val2374, %vec.epilog.ph2383 ], [ %index.next2395, %vec.epilog.vector.body2385 ] ; 3 uses
  %vec.phi2387 = phi <8 x i32> [ %i.eqf, %vec.epilog.ph2383 ], [ %i.eqo, %vec.epilog.vector.body2385 ]
  %vec.phi2388 = phi <8 x i32> [ %i.eqg, %vec.epilog.ph2383 ], [ %i.eql, %vec.epilog.vector.body2385 ]
  %next.gep2389 = getelementptr i8, ptr %.21811.lcssa.i, i64 %index2386
  %i.eqh = shl i64 %index2386, 1
  %next.gep2390 = getelementptr i8, ptr %.141982.lcssa.i, i64 %i.eqh
  %wide.load2391 = load <8 x i8>, ptr %next.gep2389, align 1, !tbaa !17
  %i.eqi = sext <8 x i8> %wide.load2391 to <8 x i32> ; 2 uses
  %wide.vec2392 = load <16 x i8>, ptr %next.gep2390, align 1, !tbaa !17 ; 2 uses
  %strided.vec2393 = shufflevector <16 x i8> %wide.vec2392, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec2394 = shufflevector <16 x i8> %wide.vec2392, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eqj = sext <8 x i8> %strided.vec2393 to <8 x i32>
  %i.eqk = mul nsw <8 x i32> %i.eqj, %i.eqi
  %i.eql = add <8 x i32> %i.eqk, %vec.phi2388     ; 2 uses
  %i.eqm = sext <8 x i8> %strided.vec2394 to <8 x i32>
  %i.eqn = mul nsw <8 x i32> %i.eqm, %i.eqi
  %i.eqo = add <8 x i32> %i.eqn, %vec.phi2387     ; 2 uses
  %index.next2395 = add nuw i64 %index2386, 8     ; 2 uses
  %i.eqp = icmp eq i64 %index.next2395, %n.vec2384
  br i1 %i.eqp, label %vec.epilog.middle.block2396, label %vec.epilog.vector.body2385, !llvm.loop !503

vec.epilog.middle.block2396:                      ; preds = %vec.epilog.vector.body2385
  %i.eqq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eqo) ; 2 uses
  %i.eqr = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eql) ; 2 uses
  %cmp.n2397 = icmp eq i64 %i.eof, %n.vec2384
  br i1 %cmp.n2397, label %._crit_edge2369.i, label %.lr.ph2368.i.preheader

.lr.ph2368.i.preheader:                           ; preds = %iter.check2379, %vec.epilog.iter.check2381, %vec.epilog.middle.block2396
  %.318082366.i.ph = phi i32 [ %.11806.lcssa.i, %iter.check2379 ], [ %i.eoi, %vec.epilog.iter.check2381 ], [ %i.eqb, %vec.epilog.middle.block2396 ]
  %.418132365.i.ph = phi ptr [ %.21811.lcssa.i, %iter.check2379 ], [ %i.eoj, %vec.epilog.iter.check2381 ], [ %i.eqc, %vec.epilog.middle.block2396 ]
  %.418182364.i.ph = phi i32 [ %.31817.lcssa.i, %iter.check2379 ], [ %i.epy, %vec.epilog.iter.check2381 ], [ %i.eqq, %vec.epilog.middle.block2396 ]
  %.418232363.i.ph = phi i32 [ %.31822.lcssa.i, %iter.check2379 ], [ %i.epz, %vec.epilog.iter.check2381 ], [ %i.eqr, %vec.epilog.middle.block2396 ]
  %.1619842362.i.ph = phi ptr [ %.141982.lcssa.i, %iter.check2379 ], [ %i.eol, %vec.epilog.iter.check2381 ], [ %i.eqe, %vec.epilog.middle.block2396 ]
  br label %.lr.ph2368.i

.lr.ph2332.i:                                     ; preds = %.lr.ph2332.i.preheader, %.lr.ph2332.i
  %.118062330.i = phi i32 [ %i.ers, %.lr.ph2332.i ], [ %.118062330.i.ph, %.lr.ph2332.i.preheader ]
  %.218112329.i = phi ptr [ %i.erq, %.lr.ph2332.i ], [ %.218112329.i.ph, %.lr.ph2332.i.preheader ] ; 3 uses
  %.318172328.i = phi i32 [ %i.erp, %.lr.ph2332.i ], [ %.318172328.i.ph, %.lr.ph2332.i.preheader ]
  %.318222327.i = phi i32 [ %i.erf, %.lr.ph2332.i ], [ %.318222327.i.ph, %.lr.ph2332.i.preheader ]
  %.1419822326.i = phi ptr [ %i.err, %.lr.ph2332.i ], [ %.1419822326.i.ph, %.lr.ph2332.i.preheader ] ; 5 uses
  %i.eqs = load i8, ptr %.218112329.i, align 1, !tbaa !17
  %i.eqt = sext i8 %i.eqs to i32                  ; 2 uses
  %i.equ = load i8, ptr %.1419822326.i, align 1, !tbaa !17
  %i.eqv = sext i8 %i.equ to i32
  %i.eqw = mul nsw i32 %i.eqv, %i.eqt
  %i.eqx = add nsw i32 %i.eqw, %.318222327.i
  %i.eqy = getelementptr inbounds nuw i8, ptr %.218112329.i, i64 1
  %i.eqz = load i8, ptr %i.eqy, align 1, !tbaa !17
  %i.era = sext i8 %i.eqz to i32                  ; 2 uses
  %i.erb = getelementptr inbounds nuw i8, ptr %.1419822326.i, i64 1
  %i.erc = load i8, ptr %i.erb, align 1, !tbaa !17
  %i.erd = sext i8 %i.erc to i32
  %i.ere = mul nsw i32 %i.erd, %i.era
  %i.erf = add nsw i32 %i.eqx, %i.ere             ; 2 uses
  %i.erg = getelementptr inbounds nuw i8, ptr %.1419822326.i, i64 2
  %i.erh = load i8, ptr %i.erg, align 1, !tbaa !17
  %i.eri = sext i8 %i.erh to i32
  %i.erj = mul nsw i32 %i.eri, %i.eqt
  %i.erk = add nsw i32 %i.erj, %.318172328.i
  %i.erl = getelementptr inbounds nuw i8, ptr %.1419822326.i, i64 3
  %i.erm = load i8, ptr %i.erl, align 1, !tbaa !17
  %i.ern = sext i8 %i.erm to i32
  %i.ero = mul nsw i32 %i.ern, %i.era
  %i.erp = add nsw i32 %i.erk, %i.ero             ; 2 uses
  %i.erq = getelementptr inbounds nuw i8, ptr %.218112329.i, i64 2 ; 2 uses
  %i.err = getelementptr inbounds nuw i8, ptr %.1419822326.i, i64 4 ; 2 uses
  %i.ers = add nuw nsw i32 %.118062330.i, 2       ; 3 uses
  %i.ert = or disjoint i32 %i.ers, 1
  %i.eru = icmp slt i32 %i.ert, %8
  br i1 %i.eru, label %.lr.ph2332.i, label %.preheader.i, !llvm.loop !504

.lr.ph2368.i:                                     ; preds = %.lr.ph2368.i.preheader, %.lr.ph2368.i
  %.318082366.i = phi i32 [ %i.esi, %.lr.ph2368.i ], [ %.318082366.i.ph, %.lr.ph2368.i.preheader ]
  %.418132365.i = phi ptr [ %i.esg, %.lr.ph2368.i ], [ %.418132365.i.ph, %.lr.ph2368.i.preheader ] ; 2 uses
  %.418182364.i = phi i32 [ %i.esf, %.lr.ph2368.i ], [ %.418182364.i.ph, %.lr.ph2368.i.preheader ]
  %.418232363.i = phi i32 [ %i.esa, %.lr.ph2368.i ], [ %.418232363.i.ph, %.lr.ph2368.i.preheader ]
  %.1619842362.i = phi ptr [ %i.esh, %.lr.ph2368.i ], [ %.1619842362.i.ph, %.lr.ph2368.i.preheader ] ; 3 uses
  %i.erv = load i8, ptr %.418132365.i, align 1, !tbaa !17
  %i.erw = sext i8 %i.erv to i32                  ; 2 uses
  %i.erx = load i8, ptr %.1619842362.i, align 1, !tbaa !17
  %i.ery = sext i8 %i.erx to i32
  %i.erz = mul nsw i32 %i.ery, %i.erw
  %i.esa = add nsw i32 %i.erz, %.418232363.i      ; 2 uses
  %i.esb = getelementptr inbounds nuw i8, ptr %.1619842362.i, i64 1
  %i.esc = load i8, ptr %i.esb, align 1, !tbaa !17
  %i.esd = sext i8 %i.esc to i32
  %i.ese = mul nsw i32 %i.esd, %i.erw
  %i.esf = add nsw i32 %i.ese, %.418182364.i      ; 2 uses
  %i.esg = getelementptr inbounds nuw i8, ptr %.418132365.i, i64 1
  %i.esh = getelementptr inbounds nuw i8, ptr %.1619842362.i, i64 2 ; 2 uses
  %i.esi = add nuw nsw i32 %.318082366.i, 1       ; 2 uses
  %exitcond2967.not.i = icmp eq i32 %i.esi, %8
  br i1 %exitcond2967.not.i, label %._crit_edge2369.i, label %.lr.ph2368.i, !llvm.loop !505

._crit_edge2369.i:                                ; preds = %.lr.ph2368.i, %middle.block2366, %vec.epilog.middle.block2396, %.preheader.i
  %.161984.lcssa.i = phi ptr [ %.141982.lcssa.i, %.preheader.i ], [ %i.eqe, %vec.epilog.middle.block2396 ], [ %i.eol, %middle.block2366 ], [ %i.esh, %.lr.ph2368.i ] ; 2 uses
  %.41823.lcssa.i = phi i32 [ %.31822.lcssa.i, %.preheader.i ], [ %i.eqr, %vec.epilog.middle.block2396 ], [ %i.epz, %middle.block2366 ], [ %i.esa, %.lr.ph2368.i ]
  %.41818.lcssa.i = phi i32 [ %.31817.lcssa.i, %.preheader.i ], [ %i.eqq, %vec.epilog.middle.block2396 ], [ %i.epy, %middle.block2366 ], [ %i.esf, %.lr.ph2368.i ]
  store i32 %.41823.lcssa.i, ptr %.282379.i, align 4, !tbaa !23
  %i.esj = getelementptr inbounds nuw i8, ptr %.282379.i, i64 4
  store i32 %.41818.lcssa.i, ptr %i.esj, align 4, !tbaa !23
  %i.esk = getelementptr inbounds nuw i8, ptr %.282379.i, i64 8 ; 2 uses
  %i.esl = add nuw nsw i32 %.319662378.i, 2       ; 3 uses
  %i.esm = or disjoint i32 %i.esl, 1
  %i.esn = icmp slt i32 %i.esm, %6
  br i1 %i.esn, label %.lr.ph2380.i, label %.preheader1055.i, !llvm.loop !506

.lr.ph2427.i:                                     ; preds = %.lr.ph2427.i.preheader, %._crit_edge2418.i
  %.292426.i = phi ptr [ %i.ews, %._crit_edge2418.i ], [ %.28.lcssa.i, %.lr.ph2427.i.preheader ] ; 3 uses
  %.419672425.i = phi i32 [ %i.ewt, %._crit_edge2418.i ], [ %.31966.lcssa.i, %.lr.ph2427.i.preheader ]
  %.1719852424.i = phi ptr [ %.201988.lcssa.i, %._crit_edge2418.i ], [ %.121980.lcssa.i, %.lr.ph2427.i.preheader ] ; 8 uses
  br i1 %i.ccw, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2427.i
  %i.eso = load i32, ptr %.292426.i, align 4, !tbaa !23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph2427.i
  %.01793.i = phi i32 [ %i.eso, %bb.bo ], [ 0, %.lr.ph2427.i ] ; 4 uses
  br i1 %i.ccx, label %iter.check2301, label %._crit_edge2390.i

iter.check2301:                                   ; preds = %bb.bp
  br i1 %min.iters.check2260, label %.lr.ph2389.i.preheader, label %vector.main.loop.iter.check2261

vector.main.loop.iter.check2261:                  ; preds = %iter.check2301
  br i1 %min.iters.check2262, label %vec.epilog.ph2305, label %vector.ph2263

vector.ph2263:                                    ; preds = %vector.main.loop.iter.check2261
  %i.esp = getelementptr i8, ptr %.1719852424.i, i64 %i.cei
  %115 = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.01793.i, i64 0
  br label %vector.body2265

vector.body2265:                                  ; preds = %vector.body2265, %vector.ph2263
  %index2266 = phi i64 [ 0, %vector.ph2263 ], [ %index.next2293, %vector.body2265 ] ; 2 uses
  %vec.phi2267 = phi <16 x i32> [ %115, %vector.ph2263 ], [ %134, %vector.body2265 ]
  %vec.phi2268 = phi <16 x i32> [ zeroinitializer, %vector.ph2263 ], [ %135, %vector.body2265 ]
  %i.esq = shl i64 %index2266, 2                  ; 3 uses
  %i.esr = or disjoint i64 %i.esq, 64             ; 2 uses
  %next.gep2269 = getelementptr i8, ptr %.82432.i, i64 %i.esq
  %next.gep2270 = getelementptr i8, ptr %.82432.i, i64 %i.esr
  %next.gep2271 = getelementptr i8, ptr %.1719852424.i, i64 %i.esq
  %next.gep2272 = getelementptr i8, ptr %.1719852424.i, i64 %i.esr
  %wide.vec2273 = load <64 x i8>, ptr %next.gep2269, align 1, !tbaa !17 ; 4 uses
  %strided.vec2274 = shufflevector <64 x i8> %wide.vec2273, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2275 = shufflevector <64 x i8> %wide.vec2273, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2276 = shufflevector <64 x i8> %wide.vec2273, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2277 = shufflevector <64 x i8> %wide.vec2273, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2278 = load <64 x i8>, ptr %next.gep2270, align 1, !tbaa !17 ; 4 uses
  %strided.vec2279 = shufflevector <64 x i8> %wide.vec2278, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2280 = shufflevector <64 x i8> %wide.vec2278, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2281 = shufflevector <64 x i8> %wide.vec2278, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2282 = shufflevector <64 x i8> %wide.vec2278, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %116 = sext <16 x i8> %strided.vec2274 to <16 x i32>
  %117 = sext <16 x i8> %strided.vec2279 to <16 x i32>
  %wide.vec2283 = load <64 x i8>, ptr %next.gep2271, align 1, !tbaa !17 ; 4 uses
  %strided.vec2284 = shufflevector <64 x i8> %wide.vec2283, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2285 = shufflevector <64 x i8> %wide.vec2283, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2286 = shufflevector <64 x i8> %wide.vec2283, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2287 = shufflevector <64 x i8> %wide.vec2283, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2288 = load <64 x i8>, ptr %next.gep2272, align 1, !tbaa !17 ; 4 uses
  %strided.vec2289 = shufflevector <64 x i8> %wide.vec2288, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2290 = shufflevector <64 x i8> %wide.vec2288, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2291 = shufflevector <64 x i8> %wide.vec2288, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2292 = shufflevector <64 x i8> %wide.vec2288, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ess = zext <16 x i8> %strided.vec2284 to <16 x i32>
  %i.est = zext <16 x i8> %strided.vec2289 to <16 x i32>
  %118 = mul nsw <16 x i32> %i.ess, %116
  %i.esu = mul nsw <16 x i32> %i.est, %117
  %119 = add <16 x i32> %118, %vec.phi2267
  %120 = add <16 x i32> %i.esu, %vec.phi2268
  %i.esv = sext <16 x i8> %strided.vec2275 to <16 x i32>
  %121 = sext <16 x i8> %strided.vec2280 to <16 x i32>
  %122 = zext <16 x i8> %strided.vec2285 to <16 x i32>
  %i.esw = zext <16 x i8> %strided.vec2290 to <16 x i32>
  %123 = mul nsw <16 x i32> %122, %i.esv
  %i.esx = mul nsw <16 x i32> %i.esw, %121
  %124 = add <16 x i32> %119, %123
  %125 = add <16 x i32> %120, %i.esx
  %i.esy = sext <16 x i8> %strided.vec2276 to <16 x i32>
  %126 = sext <16 x i8> %strided.vec2281 to <16 x i32>
  %127 = zext <16 x i8> %strided.vec2286 to <16 x i32>
  %i.esz = zext <16 x i8> %strided.vec2291 to <16 x i32>
  %128 = mul nsw <16 x i32> %127, %i.esy
  %i.eta = mul nsw <16 x i32> %i.esz, %126
  %129 = add <16 x i32> %124, %128
  %130 = add <16 x i32> %125, %i.eta
  %i.etb = sext <16 x i8> %strided.vec2277 to <16 x i32>
  %131 = sext <16 x i8> %strided.vec2282 to <16 x i32>
  %132 = zext <16 x i8> %strided.vec2287 to <16 x i32>
  %i.etc = zext <16 x i8> %strided.vec2292 to <16 x i32>
  %133 = mul nsw <16 x i32> %132, %i.etb
  %i.etd = mul nsw <16 x i32> %i.etc, %131
  %134 = add <16 x i32> %129, %133                ; 2 uses
  %135 = add <16 x i32> %130, %i.etd              ; 2 uses
  %index.next2293 = add nuw i64 %index2266, 32    ; 2 uses
  %i.ete = icmp eq i64 %index.next2293, %n.vec2264
  br i1 %i.ete, label %middle.block2294, label %vector.body2265, !llvm.loop !507

middle.block2294:                                 ; preds = %vector.body2265
  %bin.rdx2295 = add <16 x i32> %135, %134
  %i.etf = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2295) ; 3 uses
  br i1 %cmp.n2296, label %.loopexit, label %vec.epilog.iter.check2303

vec.epilog.iter.check2303:                        ; preds = %middle.block2294
  br i1 %min.epilog.iters.check2304, label %.lr.ph2389.i.preheader, label %vec.epilog.ph2305, !prof !26

vec.epilog.ph2305:                                ; preds = %vector.main.loop.iter.check2261, %vec.epilog.iter.check2303
  %vec.epilog.resume.val2297 = phi i64 [ %n.vec2264, %vec.epilog.iter.check2303 ], [ 0, %vector.main.loop.iter.check2261 ]
  %bc.merge.rdx2299 = phi i32 [ %i.etf, %vec.epilog.iter.check2303 ], [ %.01793.i, %vector.main.loop.iter.check2261 ]
  %i.etg = getelementptr i8, ptr %.1719852424.i, i64 %i.cel
  %i.eth = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2299, i64 0
  br label %vec.epilog.vector.body2307

vec.epilog.vector.body2307:                       ; preds = %vec.epilog.vector.body2307, %vec.epilog.ph2305
  %index2308 = phi i64 [ %vec.epilog.resume.val2297, %vec.epilog.ph2305 ], [ %index.next2322, %vec.epilog.vector.body2307 ] ; 2 uses
  %vec.phi2309 = phi <4 x i32> [ %i.eth, %vec.epilog.ph2305 ], [ %i.ety, %vec.epilog.vector.body2307 ]
  %i.eti = shl i64 %index2308, 2                  ; 2 uses
  %next.gep2310 = getelementptr i8, ptr %.82432.i, i64 %i.eti
  %next.gep2311 = getelementptr i8, ptr %.1719852424.i, i64 %i.eti
  %wide.vec2312 = load <16 x i8>, ptr %next.gep2310, align 1, !tbaa !17 ; 4 uses
  %strided.vec2313 = shufflevector <16 x i8> %wide.vec2312, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2314 = shufflevector <16 x i8> %wide.vec2312, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2315 = shufflevector <16 x i8> %wide.vec2312, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2316 = shufflevector <16 x i8> %wide.vec2312, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.etj = sext <4 x i8> %strided.vec2313 to <4 x i32>
  %wide.vec2317 = load <16 x i8>, ptr %next.gep2311, align 1, !tbaa !17 ; 4 uses
  %strided.vec2318 = shufflevector <16 x i8> %wide.vec2317, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec2319 = shufflevector <16 x i8> %wide.vec2317, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec2320 = shufflevector <16 x i8> %wide.vec2317, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec2321 = shufflevector <16 x i8> %wide.vec2317, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.etk = zext <4 x i8> %strided.vec2318 to <4 x i32>
  %i.etl = mul nsw <4 x i32> %i.etk, %i.etj
  %i.etm = add <4 x i32> %i.etl, %vec.phi2309
  %i.etn = sext <4 x i8> %strided.vec2314 to <4 x i32>
  %i.eto = zext <4 x i8> %strided.vec2319 to <4 x i32>
  %i.etp = mul nsw <4 x i32> %i.eto, %i.etn
  %i.etq = add <4 x i32> %i.etm, %i.etp
  %i.etr = sext <4 x i8> %strided.vec2315 to <4 x i32>
  %i.ets = zext <4 x i8> %strided.vec2320 to <4 x i32>
  %i.ett = mul nsw <4 x i32> %i.ets, %i.etr
  %i.etu = add <4 x i32> %i.etq, %i.ett
  %i.etv = sext <4 x i8> %strided.vec2316 to <4 x i32>
  %i.etw = zext <4 x i8> %strided.vec2321 to <4 x i32>
  %i.etx = mul nsw <4 x i32> %i.etw, %i.etv
  %i.ety = add <4 x i32> %i.etu, %i.etx           ; 2 uses
  %index.next2322 = add nuw i64 %index2308, 4     ; 2 uses
  %i.etz = icmp eq i64 %index.next2322, %n.vec2306
  br i1 %i.etz, label %vec.epilog.middle.block2323, label %vec.epilog.vector.body2307, !llvm.loop !508

vec.epilog.middle.block2323:                      ; preds = %vec.epilog.vector.body2307
  %i.eua = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ety) ; 2 uses
  br i1 %cmp.n2324, label %.loopexit, label %.lr.ph2389.i.preheader

.lr.ph2389.i.preheader:                           ; preds = %iter.check2301, %vec.epilog.iter.check2303, %vec.epilog.middle.block2323
  %.017862387.i.ph = phi i32 [ 0, %iter.check2301 ], [ %i.ceh, %vec.epilog.iter.check2303 ], [ %i.cek, %vec.epilog.middle.block2323 ]
  %.017892386.i.ph = phi ptr [ %.82432.i, %iter.check2301 ], [ %i.egl, %vec.epilog.iter.check2303 ], [ %i.egm, %vec.epilog.middle.block2323 ]
  %.117942385.i.ph = phi i32 [ %.01793.i, %iter.check2301 ], [ %i.etf, %vec.epilog.iter.check2303 ], [ %i.eua, %vec.epilog.middle.block2323 ]
  %.1819862384.i.ph = phi ptr [ %.1719852424.i, %iter.check2301 ], [ %i.esp, %vec.epilog.iter.check2303 ], [ %i.etg, %vec.epilog.middle.block2323 ]
  br label %.lr.ph2389.i

.lr.ph2389.i:                                     ; preds = %.lr.ph2389.i.preheader, %.lr.ph2389.i
  %.017862387.i = phi i32 [ %i.euj, %.lr.ph2389.i ], [ %.017862387.i.ph, %.lr.ph2389.i.preheader ]
  %.017892386.i = phi ptr [ %i.euh, %.lr.ph2389.i ], [ %.017892386.i.ph, %.lr.ph2389.i.preheader ] ; 2 uses
  %.117942385.i = phi i32 [ %op.rdx, %.lr.ph2389.i ], [ %.117942385.i.ph, %.lr.ph2389.i.preheader ]
  %.1819862384.i = phi ptr [ %i.eui, %.lr.ph2389.i ], [ %.1819862384.i.ph, %.lr.ph2389.i.preheader ] ; 2 uses
  %i.eub = load <4 x i8>, ptr %.017892386.i, align 1, !tbaa !17
  %i.euc = sext <4 x i8> %i.eub to <4 x i32>
  %i.eud = load <4 x i8>, ptr %.1819862384.i, align 1, !tbaa !17
  %i.eue = zext <4 x i8> %i.eud to <4 x i32>
  %i.euf = mul nsw <4 x i32> %i.eue, %i.euc
  %i.eug = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.euf)
  %op.rdx = add i32 %i.eug, %.117942385.i         ; 2 uses
  %i.euh = getelementptr inbounds nuw i8, ptr %.017892386.i, i64 4
  %i.eui = getelementptr inbounds nuw i8, ptr %.1819862384.i, i64 4
  %i.euj = add nuw nsw i32 %.017862387.i, 4       ; 2 uses
  %i.euk = or disjoint i32 %i.euj, 3
  %i.eul = icmp slt i32 %i.euk, %8
  br i1 %i.eul, label %.lr.ph2389.i, label %.loopexit, !llvm.loop !509

.loopexit:                                        ; preds = %.lr.ph2389.i, %vec.epilog.middle.block2323, %middle.block2294
  %.lcssa1362 = phi i32 [ %i.eua, %vec.epilog.middle.block2323 ], [ %i.etf, %middle.block2294 ], [ %op.rdx, %.lr.ph2389.i ]
  %i.eum = getelementptr i8, ptr %.1719852424.i, i64 %i.cdi
  %scevgep2968.i = getelementptr i8, ptr %i.eum, i64 4
  %i.eun = load i32, ptr %indvars.iv878, align 4, !tbaa !23
  %i.euo = sub nsw i32 %.lcssa1362, %i.eun
  br label %._crit_edge2390.i

._crit_edge2390.i:                                ; preds = %.loopexit, %bb.bp
  %.01786.lcssa3380.i = phi i32 [ %i.cdb, %.loopexit ], [ 0, %bb.bp ] ; 5 uses
  %.181986.lcssa3376.i = phi ptr [ %scevgep2968.i, %.loopexit ], [ %.1719852424.i, %bb.bp ] ; 6 uses
  %.21795.i = phi i32 [ %i.euo, %.loopexit ], [ %.01793.i, %bb.bp ] ; 4 uses
  %.11790.i = phi ptr [ %i.egk, %.loopexit ], [ %.82432.i, %bb.bp ] ; 5 uses
  %i.eup = icmp slt i32 %.01786.lcssa3380.i, %8
  br i1 %i.eup, label %iter.check2240, label %._crit_edge2418.i

iter.check2240:                                   ; preds = %._crit_edge2390.i
  %i.euq = xor i32 %.01786.lcssa3380.i, -1
  %i.eur = add i32 %8, %i.euq                     ; 3 uses
  %i.eus = zext i32 %i.eur to i64
  %i.eut = add nuw nsw i64 %i.eus, 1              ; 5 uses
  %min.iters.check2209 = icmp ult i32 %i.eur, 7
  br i1 %min.iters.check2209, label %.lr.ph2417.i.preheader, label %vector.main.loop.iter.check2210

vector.main.loop.iter.check2210:                  ; preds = %iter.check2240
  %min.iters.check2211 = icmp ult i32 %i.eur, 63
  br i1 %min.iters.check2211, label %vec.epilog.ph2244, label %vector.ph2212

vector.ph2212:                                    ; preds = %vector.main.loop.iter.check2210
  %i.euu = and i64 %i.eut, 56
  %n.vec2213 = and i64 %i.eut, 8589934528         ; 6 uses
  %i.euv = trunc i64 %n.vec2213 to i32
  %i.euw = add i32 %.01786.lcssa3380.i, %i.euv
  %i.eux = getelementptr i8, ptr %.11790.i, i64 %n.vec2213
  %i.euy = getelementptr i8, ptr %.181986.lcssa3376.i, i64 %n.vec2213 ; 2 uses
  %i.euz = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21795.i, i64 0
  br label %vector.body2214

vector.body2214:                                  ; preds = %vector.body2214, %vector.ph2212
  %index2215 = phi i64 [ 0, %vector.ph2212 ], [ %index.next2230, %vector.body2214 ] ; 3 uses
  %vec.phi2216 = phi <16 x i32> [ %i.euz, %vector.ph2212 ], [ %i.evs, %vector.body2214 ]
  %vec.phi2217 = phi <16 x i32> [ zeroinitializer, %vector.ph2212 ], [ %i.evt, %vector.body2214 ]
  %vec.phi2218 = phi <16 x i32> [ zeroinitializer, %vector.ph2212 ], [ %i.evu, %vector.body2214 ]
  %vec.phi2219 = phi <16 x i32> [ zeroinitializer, %vector.ph2212 ], [ %i.evv, %vector.body2214 ]
  %next.gep2220 = getelementptr i8, ptr %.11790.i, i64 %index2215 ; 4 uses
  %next.gep2221 = getelementptr i8, ptr %.181986.lcssa3376.i, i64 %index2215 ; 4 uses
  %i.eva = getelementptr i8, ptr %next.gep2220, i64 16
  %i.evb = getelementptr i8, ptr %next.gep2220, i64 32
  %i.evc = getelementptr i8, ptr %next.gep2220, i64 48
  %wide.load2222 = load <16 x i8>, ptr %next.gep2220, align 1, !tbaa !17
  %wide.load2223 = load <16 x i8>, ptr %i.eva, align 1, !tbaa !17
  %wide.load2224 = load <16 x i8>, ptr %i.evb, align 1, !tbaa !17
  %wide.load2225 = load <16 x i8>, ptr %i.evc, align 1, !tbaa !17
  %i.evd = sext <16 x i8> %wide.load2222 to <16 x i32>
  %i.eve = sext <16 x i8> %wide.load2223 to <16 x i32>
  %i.evf = sext <16 x i8> %wide.load2224 to <16 x i32>
  %i.evg = sext <16 x i8> %wide.load2225 to <16 x i32>
  %i.evh = getelementptr i8, ptr %next.gep2221, i64 16
  %i.evi = getelementptr i8, ptr %next.gep2221, i64 32
  %i.evj = getelementptr i8, ptr %next.gep2221, i64 48
  %wide.load2226 = load <16 x i8>, ptr %next.gep2221, align 1, !tbaa !17
  %wide.load2227 = load <16 x i8>, ptr %i.evh, align 1, !tbaa !17
  %wide.load2228 = load <16 x i8>, ptr %i.evi, align 1, !tbaa !17
  %wide.load2229 = load <16 x i8>, ptr %i.evj, align 1, !tbaa !17
  %i.evk = sext <16 x i8> %wide.load2226 to <16 x i32>
  %i.evl = sext <16 x i8> %wide.load2227 to <16 x i32>
  %i.evm = sext <16 x i8> %wide.load2228 to <16 x i32>
  %i.evn = sext <16 x i8> %wide.load2229 to <16 x i32>
  %i.evo = mul nsw <16 x i32> %i.evk, %i.evd
  %i.evp = mul nsw <16 x i32> %i.evl, %i.eve
  %i.evq = mul nsw <16 x i32> %i.evm, %i.evf
  %i.evr = mul nsw <16 x i32> %i.evn, %i.evg
  %i.evs = add <16 x i32> %i.evo, %vec.phi2216    ; 2 uses
  %i.evt = add <16 x i32> %i.evp, %vec.phi2217    ; 2 uses
  %i.evu = add <16 x i32> %i.evq, %vec.phi2218    ; 2 uses
  %i.evv = add <16 x i32> %i.evr, %vec.phi2219    ; 2 uses
  %index.next2230 = add nuw i64 %index2215, 64    ; 2 uses
  %i.evw = icmp eq i64 %index.next2230, %n.vec2213
  br i1 %i.evw, label %middle.block2231, label %vector.body2214, !llvm.loop !510

middle.block2231:                                 ; preds = %vector.body2214
  %bin.rdx2232 = add <16 x i32> %i.evt, %i.evs
  %bin.rdx2233 = add <16 x i32> %i.evu, %bin.rdx2232
  %bin.rdx2234 = add <16 x i32> %i.evv, %bin.rdx2233
  %i.evx = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2234) ; 3 uses
  %cmp.n2235 = icmp eq i64 %i.eut, %n.vec2213
  br i1 %cmp.n2235, label %._crit_edge2418.i, label %vec.epilog.iter.check2242

vec.epilog.iter.check2242:                        ; preds = %middle.block2231
  %min.epilog.iters.check2243 = icmp eq i64 %i.euu, 0
  br i1 %min.epilog.iters.check2243, label %.lr.ph2417.i.preheader, label %vec.epilog.ph2244, !prof !22

vec.epilog.ph2244:                                ; preds = %vector.main.loop.iter.check2210, %vec.epilog.iter.check2242
  %vec.epilog.resume.val2236 = phi i64 [ %n.vec2213, %vec.epilog.iter.check2242 ], [ 0, %vector.main.loop.iter.check2210 ]
  %bc.merge.rdx2238 = phi i32 [ %i.evx, %vec.epilog.iter.check2242 ], [ %.21795.i, %vector.main.loop.iter.check2210 ]
  %n.vec2245 = and i64 %i.eut, 8589934584         ; 5 uses
  %i.evy = trunc i64 %n.vec2245 to i32
  %i.evz = add i32 %.01786.lcssa3380.i, %i.evy
  %i.ewa = getelementptr i8, ptr %.11790.i, i64 %n.vec2245
  %i.ewb = getelementptr i8, ptr %.181986.lcssa3376.i, i64 %n.vec2245 ; 2 uses
  %i.ewc = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2238, i64 0
  br label %vec.epilog.vector.body2246

vec.epilog.vector.body2246:                       ; preds = %vec.epilog.vector.body2246, %vec.epilog.ph2244
  %index2247 = phi i64 [ %vec.epilog.resume.val2236, %vec.epilog.ph2244 ], [ %index.next2253, %vec.epilog.vector.body2246 ] ; 3 uses
  %vec.phi2248 = phi <8 x i32> [ %i.ewc, %vec.epilog.ph2244 ], [ %i.ewg, %vec.epilog.vector.body2246 ]
  %next.gep2249 = getelementptr i8, ptr %.11790.i, i64 %index2247
  %next.gep2250 = getelementptr i8, ptr %.181986.lcssa3376.i, i64 %index2247
  %wide.load2251 = load <8 x i8>, ptr %next.gep2249, align 1, !tbaa !17
  %i.ewd = sext <8 x i8> %wide.load2251 to <8 x i32>
  %wide.load2252 = load <8 x i8>, ptr %next.gep2250, align 1, !tbaa !17
  %i.ewe = sext <8 x i8> %wide.load2252 to <8 x i32>
  %i.ewf = mul nsw <8 x i32> %i.ewe, %i.ewd
  %i.ewg = add <8 x i32> %i.ewf, %vec.phi2248     ; 2 uses
  %index.next2253 = add nuw i64 %index2247, 8     ; 2 uses
  %i.ewh = icmp eq i64 %index.next2253, %n.vec2245
  br i1 %i.ewh, label %vec.epilog.middle.block2254, label %vec.epilog.vector.body2246, !llvm.loop !511

vec.epilog.middle.block2254:                      ; preds = %vec.epilog.vector.body2246
  %i.ewi = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ewg) ; 2 uses
  %cmp.n2255 = icmp eq i64 %i.eut, %n.vec2245
  br i1 %cmp.n2255, label %._crit_edge2418.i, label %.lr.ph2417.i.preheader

.lr.ph2417.i.preheader:                           ; preds = %iter.check2240, %vec.epilog.iter.check2242, %vec.epilog.middle.block2254
  %.217882415.i.ph = phi i32 [ %.01786.lcssa3380.i, %iter.check2240 ], [ %i.euw, %vec.epilog.iter.check2242 ], [ %i.evz, %vec.epilog.middle.block2254 ]
  %.317922414.i.ph = phi ptr [ %.11790.i, %iter.check2240 ], [ %i.eux, %vec.epilog.iter.check2242 ], [ %i.ewa, %vec.epilog.middle.block2254 ]
  %.317962413.i.ph = phi i32 [ %.21795.i, %iter.check2240 ], [ %i.evx, %vec.epilog.iter.check2242 ], [ %i.ewi, %vec.epilog.middle.block2254 ]
  %.2019882412.i.ph = phi ptr [ %.181986.lcssa3376.i, %iter.check2240 ], [ %i.euy, %vec.epilog.iter.check2242 ], [ %i.ewb, %vec.epilog.middle.block2254 ]
  br label %.lr.ph2417.i

.lr.ph2417.i:                                     ; preds = %.lr.ph2417.i.preheader, %.lr.ph2417.i
  %.217882415.i = phi i32 [ %i.ewr, %.lr.ph2417.i ], [ %.217882415.i.ph, %.lr.ph2417.i.preheader ]
  %.317922414.i = phi ptr [ %i.ewp, %.lr.ph2417.i ], [ %.317922414.i.ph, %.lr.ph2417.i.preheader ] ; 2 uses
  %.317962413.i = phi i32 [ %i.ewo, %.lr.ph2417.i ], [ %.317962413.i.ph, %.lr.ph2417.i.preheader ]
  %.2019882412.i = phi ptr [ %i.ewq, %.lr.ph2417.i ], [ %.2019882412.i.ph, %.lr.ph2417.i.preheader ] ; 2 uses
  %i.ewj = load i8, ptr %.317922414.i, align 1, !tbaa !17
  %i.ewk = sext i8 %i.ewj to i32
  %i.ewl = load i8, ptr %.2019882412.i, align 1, !tbaa !17
  %i.ewm = sext i8 %i.ewl to i32
  %i.ewn = mul nsw i32 %i.ewm, %i.ewk
  %i.ewo = add nsw i32 %i.ewn, %.317962413.i      ; 2 uses
  %i.ewp = getelementptr inbounds nuw i8, ptr %.317922414.i, i64 1
  %i.ewq = getelementptr inbounds nuw i8, ptr %.2019882412.i, i64 1 ; 2 uses
  %i.ewr = add nuw nsw i32 %.217882415.i, 1       ; 2 uses
  %exitcond2969.not.i = icmp eq i32 %i.ewr, %8
  br i1 %exitcond2969.not.i, label %._crit_edge2418.i, label %.lr.ph2417.i, !llvm.loop !512

._crit_edge2418.i:                                ; preds = %.lr.ph2417.i, %middle.block2231, %vec.epilog.middle.block2254, %._crit_edge2390.i
  %.201988.lcssa.i = phi ptr [ %.181986.lcssa3376.i, %._crit_edge2390.i ], [ %i.ewb, %vec.epilog.middle.block2254 ], [ %i.euy, %middle.block2231 ], [ %i.ewq, %.lr.ph2417.i ]
  %.31796.lcssa.i = phi i32 [ %.21795.i, %._crit_edge2390.i ], [ %i.ewi, %vec.epilog.middle.block2254 ], [ %i.evx, %middle.block2231 ], [ %i.ewo, %.lr.ph2417.i ]
  store i32 %.31796.lcssa.i, ptr %.292426.i, align 4, !tbaa !23
  %i.ews = getelementptr inbounds nuw i8, ptr %.292426.i, i64 4 ; 2 uses
  %i.ewt = add nuw nsw i32 %.419672425.i, 1       ; 2 uses
  %exitcond2970.not.i = icmp eq i32 %i.ewt, %6
  br i1 %exitcond2970.not.i, label %._crit_edge2428.i, label %.lr.ph2427.i, !llvm.loop !513

._crit_edge2428.i:                                ; preds = %._crit_edge2418.i, %.preheader1055.i
  %.29.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader1055.i ], [ %i.ews, %._crit_edge2418.i ]
  %i.ewu = getelementptr inbounds i8, ptr %.82432.i, i64 %i.ccy
  %spec.select2231.i = getelementptr inbounds nuw i8, ptr %i.ewu, i64 %spec.select2231.idx.i
  %i.ewv = add nuw nsw i32 %.418382430.i, 1       ; 2 uses
  %exitcond2971.not.i = icmp eq i32 %i.ewv, %4
  %scevgep876 = getelementptr i8, ptr %indvars.iv875, i64 %i.cdl
  %scevgep879 = getelementptr i8, ptr %indvars.iv878, i64 %i.cdl
  br i1 %exitcond2971.not.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader1059.i, !llvm.loop !514

_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge2428.i, %.preheader1060.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32>, <32 x i16>, <32 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32>, <16 x i16>, <16 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32>, <8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.copysign.v16f32(<16 x float>, <16 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smin.v32i32(<32 x i32>, <32 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smax.v32i32(<32 x i32>, <32 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.round.v32f32(<32 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.smax.v32i8(<32 x i8>, <32 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smax.v8i8(<8 x i8>, <8 x i8>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !6, i64 44}
!16 = !{!13, !11, i64 16}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 8, i32 56}
!23 = !{!6, !6, i64 0}
!24 = !{!"branch_weights", i32 16, i32 240}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = !{!"branch_weights", i32 4, i32 28}
!27 = !{!13, !6, i64 24}
!28 = !{!13, !6, i64 40}
!29 = !{!11, !11, i64 0}
!30 = !{!"float", !5, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !"LVerDomain"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !18, !20, !21}
!55 = distinct !{!55, !18, !20, !21}
!56 = distinct !{!56, !18, !20}
!57 = distinct !{!57, !18, !20, !21}
!58 = distinct !{!58, !18, !20, !21}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !18, !20}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !62}
!66 = distinct !{!66, !18, !20, !21}
!67 = distinct !{!67, !18, !20}
!68 = distinct !{!68, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !18, !20, !21}
!73 = distinct !{!73, !18, !20, !21}
!74 = distinct !{!74, !"LVerDomain"}
!75 = distinct !{!75, !74}
!76 = distinct !{!76, !74}
!77 = distinct !{!77, !74}
!78 = distinct !{!78, !18, !20, !21}
!79 = distinct !{!79, !18, !20, !21}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !18, !20}
!82 = distinct !{!82, !18, !20}
!83 = distinct !{!83, !18}
!84 = !{!52}
!85 = !{!53}
!86 = !{!63}
!87 = !{!64}
!88 = !{!65}
!89 = !{!64, !63}
!90 = !{!69}
!91 = !{!70}
!92 = !{!71}
!93 = !{!70, !69}
!94 = !{!75}
!95 = !{!76}
!96 = !{!77}
!97 = !{!76, !75}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = distinct !{!107, !18}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !18}
!111 = distinct !{!111, !18}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !18}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18}
!117 = distinct !{!117, !18}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !18}
!127 = distinct !{!127, !18}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !18}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18}
!133 = distinct !{!133, !18}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !18}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, !18}
!138 = distinct !{!138, !18}
!139 = distinct !{!139, !18}
!140 = distinct !{!140, !"LVerDomain"}
!141 = distinct !{!141, !140}
!142 = distinct !{!142, !140}
!143 = distinct !{!143, !18, !20, !21}
!144 = distinct !{!144, !18, !20, !21}
!145 = distinct !{!145, !18, !20}
!146 = distinct !{!146, !18, !20}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !18, !20, !21}
!149 = distinct !{!149, !18, !20, !21}
!150 = distinct !{!150, !"LVerDomain"}
!151 = distinct !{!151, !150}
!152 = distinct !{!152, !150}
!153 = distinct !{!153, !150}
!154 = distinct !{!154, !18, !20, !21}
!155 = distinct !{!155, !"LVerDomain"}
!156 = distinct !{!156, !155}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !155}
!159 = distinct !{!159, !18, !20, !21}
!160 = distinct !{!160, !18, !20, !21}
!161 = distinct !{!161, !18, !20}
!162 = distinct !{!162, !"LVerDomain"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !162}
!166 = distinct !{!166, !18, !20, !21}
!167 = distinct !{!167, !18, !20, !21}
!168 = distinct !{!168, !19}
!169 = distinct !{!169, !18, !20}
!170 = distinct !{!170, !18, !20}
!171 = distinct !{!171, !18}
!172 = !{!141}
!173 = !{!142}
!174 = !{!151}
!175 = !{!152}
!176 = !{!153}
!177 = !{!152, !151}
!178 = !{!156}
!179 = !{!157}
!180 = !{!158}
!181 = !{!157, !156}
!182 = !{!163}
!183 = !{!164}
!184 = !{!165}
!185 = !{!164, !163}
!186 = distinct !{!186, !18}
!187 = distinct !{!187, !19}
end_hunk_3
