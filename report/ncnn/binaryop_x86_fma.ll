Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_fma?download=true
inline.NumInlined: 420
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 268
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.egt = bitcast <4 x i32> %i.egs to <4 x float>
  %i.egu = fmul fast <4 x float> %i.egp, %i.egt
  store <4 x float> %i.egu, ptr %.135174.i.i, align 1, !tbaa !60
  %i.egv = getelementptr inbounds nuw i8, ptr %.1177.i.i, i64 16 ; 2 uses
  %i.egw = getelementptr inbounds nuw i8, ptr %.129176.i.i, i64 16 ; 2 uses
  %i.egx = getelementptr inbounds nuw i8, ptr %.135174.i.i, i64 16 ; 2 uses
  %i.egy = add nuw nsw i32 %.132175.i.i, 4        ; 3 uses
  %i.egz = or disjoint i32 %i.egy, 3
  %i.eha = icmp slt i32 %i.egz, %i.eax
  br i1 %i.eha, label %.lr.ph178.i.i, label %.preheader.i.i828, !llvm.loop !262

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i
  %.2186.i.i = phi ptr [ %i.ehw, %.lr.ph187.i.i ], [ %.2186.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 5 uses
  %.230185.i.i = phi ptr [ %i.ehx, %.lr.ph187.i.i ], [ %.230185.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 5 uses
  %.233184.i.i = phi i32 [ %i.ehz, %.lr.ph187.i.i ], [ %.233184.i.i.unr, %.lr.ph187.i.i.prol.loopexit ]
  %.236183.i.i = phi ptr [ %i.ehy, %.lr.ph187.i.i ], [ %.236183.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 5 uses
  %i.ehb = load float, ptr %.2186.i.i, align 4, !tbaa !59
  %i.ehc = load float, ptr %.230185.i.i, align 4, !tbaa !59
  %i.ehd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ehb, float %i.ehc)
  store float %i.ehd, ptr %.236183.i.i, align 4, !tbaa !59
  %i.ehe = getelementptr inbounds nuw i8, ptr %.2186.i.i, i64 4
  %i.ehf = getelementptr inbounds nuw i8, ptr %.230185.i.i, i64 4
  %i.ehg = getelementptr inbounds nuw i8, ptr %.236183.i.i, i64 4
  %i.ehh = load float, ptr %i.ehe, align 4, !tbaa !59
  %i.ehi = load float, ptr %i.ehf, align 4, !tbaa !59
  %i.ehj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ehh, float %i.ehi)
  store float %i.ehj, ptr %i.ehg, align 4, !tbaa !59
  %i.ehk = getelementptr inbounds nuw i8, ptr %.2186.i.i, i64 8
  %i.ehl = getelementptr inbounds nuw i8, ptr %.230185.i.i, i64 8
  %i.ehm = getelementptr inbounds nuw i8, ptr %.236183.i.i, i64 8
  %i.ehn = load float, ptr %i.ehk, align 4, !tbaa !59
  %i.eho = load float, ptr %i.ehl, align 4, !tbaa !59
  %i.ehp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ehn, float %i.eho)
  store float %i.ehp, ptr %i.ehm, align 4, !tbaa !59
  %i.ehq = getelementptr inbounds nuw i8, ptr %.2186.i.i, i64 12
  %i.ehr = getelementptr inbounds nuw i8, ptr %.230185.i.i, i64 12
  %i.ehs = getelementptr inbounds nuw i8, ptr %.236183.i.i, i64 12
  %i.eht = load float, ptr %i.ehq, align 4, !tbaa !59
  %i.ehu = load float, ptr %i.ehr, align 4, !tbaa !59
  %i.ehv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eht, float %i.ehu)
  store float %i.ehv, ptr %i.ehs, align 4, !tbaa !59
  %i.ehw = getelementptr inbounds nuw i8, ptr %.2186.i.i, i64 16
  %i.ehx = getelementptr inbounds nuw i8, ptr %.230185.i.i, i64 16
  %i.ehy = getelementptr inbounds nuw i8, ptr %.236183.i.i, i64 16
  %i.ehz = add nuw nsw i32 %.233184.i.i, 4        ; 2 uses
  %exitcond.not.i.i833.3 = icmp eq i32 %i.ehz, %i.eax
  br i1 %exitcond.not.i.i833.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph187.i.i, !llvm.loop !263

bb.es:                                            ; preds = %bb.eq
  %i.eia = icmp eq i32 %4, 1
  br i1 %i.eia, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.eib = load float, ptr %1, align 4, !tbaa !59 ; 11 uses
  %i.eic = icmp eq i32 %.sroa.speculated.i800, 4
  br i1 %i.eic, label %.thread.i.i823, label %bb.eu

.thread.i.i823:                                   ; preds = %bb.et
  %i.eid = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.eie = insertelement <4 x float> poison, float %i.eib, i64 0
  %i.eif = shufflevector <4 x float> %i.eie, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eig = icmp eq i32 %.sroa.speculated.i800, 8
  br i1 %i.eig, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.eih = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu, %.thread.i.i823
  %i.eii = phi <4 x float> [ %i.eid, %.thread.i.i823 ], [ %i.eif, %bb.eu ] ; 2 uses
  %i.eij = shufflevector <4 x float> %i.eii, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.eik = phi <4 x float> [ %i.eif, %bb.ev ], [ %i.eii, %bb.ew ]
  %i.eil = phi fast <8 x float> [ %i.eih, %bb.ev ], [ %i.eij, %bb.ew ]
  %i.eim = icmp sgt i32 %i.eax, 7
  br i1 %i.eim, label %.lr.ph.i38.i822, label %.preheader165.i.i

.preheader165.loopexit.i.i:                       ; preds = %.lr.ph.i38.i822
  %i.ein = and i32 %i.eax, 2147483640
  br label %.preheader165.i.i

.preheader165.i.i:                                ; preds = %.preheader165.loopexit.i.i, %bb.ex
  %.030.lcssa.i.i814 = phi i32 [ 0, %bb.ex ], [ %i.ein, %.preheader165.loopexit.i.i ] ; 3 uses
  %.027.lcssa.i.i815 = phi ptr [ %2, %bb.ex ], [ %i.ekv, %.preheader165.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i816 = phi ptr [ %0, %bb.ex ], [ %i.eku, %.preheader165.loopexit.i.i ] ; 2 uses
  %i.eio = or disjoint i32 %.030.lcssa.i.i814, 3
  %i.eip = icmp slt i32 %i.eio, %i.eax
  br i1 %i.eip, label %.lr.ph174.i.i, label %.preheader.i35.i817

.lr.ph.i38.i822:                                  ; preds = %bb.ex, %.lr.ph.i38.i822
  %.0168.i.i = phi ptr [ %i.eku, %.lr.ph.i38.i822 ], [ %0, %bb.ex ] ; 2 uses
  %.027167.i.i = phi ptr [ %i.ekv, %.lr.ph.i38.i822 ], [ %2, %bb.ex ] ; 2 uses
  %.030166.i.i = phi i32 [ %i.ekw, %.lr.ph.i38.i822 ], [ 0, %bb.ex ]
  %i.eiq = load <8 x float>, ptr %.0168.i.i, align 1, !tbaa !60
  %i.eir = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eiq, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.eis = bitcast <8 x float> %i.eir to <8 x i32>
  %i.eit = bitcast <8 x float> %i.eir to <8 x i32>
  %i.eiu = and <8 x i32> %i.eit, splat (i32 -2139095041)
  %i.eiv = or disjoint <8 x i32> %i.eiu, splat (i32 1056964608)
  %i.eiw = bitcast <8 x i32> %i.eiv to <8 x float> ; 3 uses
  %i.eix = lshr <8 x i32> %i.eis, splat (i32 23)
  %i.eiy = add nsw <8 x i32> %i.eix, splat (i32 -127)
  %i.eiz = sitofp fast <8 x i32> %i.eiy to <8 x float> ; 2 uses
  %i.eja = fadd fast <8 x float> %i.eiz, splat (float 1.000000e+00)
  %i.ejb = fcmp fast olt <8 x float> %i.eiw, splat (float f0x3F3504F3) ; 2 uses
  %i.ejc = select <8 x i1> %i.ejb, <8 x float> %i.eiw, <8 x float> zeroinitializer
  %i.ejd = fadd fast <8 x float> %i.eiw, splat (float -1.000000e+00)
  %i.eje = select fast <8 x i1> %i.ejb, <8 x float> %i.eiz, <8 x float> %i.eja ; 2 uses
  %i.ejf = fadd fast <8 x float> %i.ejd, %i.ejc   ; 12 uses
  %i.ejg = fmul fast <8 x float> %i.ejf, %i.ejf   ; 2 uses
  %i.ejh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejf, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.eji = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejh, <8 x float> nofpclass(nan inf) %i.ejf, <8 x float> splat (float f0x3DEF251A))
  %i.ejj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eji, <8 x float> nofpclass(nan inf) %i.ejf, <8 x float> splat (float f0xBDFE5D4F))
  %i.ejk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejj, <8 x float> nofpclass(nan inf) %i.ejf, <8 x float> splat (float f0x3E11E9BF))
  %i.ejl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejk, <8 x float> nofpclass(nan inf) %i.ejf, <8 x float> splat (float f0xBE2AAE50))
  %i.ejm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejl, <8 x float> nofpclass(nan inf) %i.ejf, <8 x float> splat (float f0x3E4CCEAC))
  %i.ejn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejm, <8 x float> nofpclass(nan inf) %i.ejf, <8 x float> splat (float f0xBE7FFFFC))
  %i.ejo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejn, <8 x float> nofpclass(nan inf) %i.ejf, <8 x float> splat (float f0x3EAAAAAA))
  %i.ejp = fmul fast <8 x float> %i.ejg, %i.ejf
  %i.ejq = fmul fast <8 x float> %i.ejp, %i.ejo
  %i.ejr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eje, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ejq)
  %i.ejs = fneg fast <8 x float> %i.ejg
  %i.ejt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ejs, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ejr)
  %i.eju = fadd fast <8 x float> %i.ejt, %i.ejf
  %i.ejv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eje, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.eju)
  %i.ejw = fmul fast <8 x float> %i.ejv, %i.eil
  %i.ejx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ejw, <8 x float> splat (float f0x42B0C0A5))
  %i.ejy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ejx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ejz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ejy, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eka = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ejz, i32 1) ; 2 uses
  %i.ekb = fcmp fast ogt <8 x float> %i.eka, %i.ejz
  %i.ekc = select <8 x i1> %i.ekb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ekd = fsub fast <8 x float> %i.eka, %i.ekc   ; 2 uses
  %i.eke = fneg fast <8 x float> %i.ekd           ; 2 uses
  %i.ekf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.eke, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ejy)
  %i.ekg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.eke, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ekf) ; 8 uses
  %i.ekh = fmul fast <8 x float> %i.ekg, %i.ekg
  %i.eki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ekg, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ekj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eki, <8 x float> nofpclass(nan inf) %i.ekg, <8 x float> splat (float f0x3C088908))
  %i.ekk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ekj, <8 x float> nofpclass(nan inf) %i.ekg, <8 x float> splat (float f0x3D2AA9C1))
  %i.ekl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ekk, <8 x float> nofpclass(nan inf) %i.ekg, <8 x float> splat (float f0x3E2AAAAA))
  %i.ekm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ekl, <8 x float> nofpclass(nan inf) %i.ekg, <8 x float> splat (float 5.000000e-01))
  %i.ekn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ekm, <8 x float> nofpclass(nan inf) %i.ekh, <8 x float> nofpclass(nan inf) %i.ekg)
  %i.eko = fadd fast <8 x float> %i.ekn, splat (float 1.000000e+00)
  %i.ekp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ekd)
  %i.ekq = shl <8 x i32> %i.ekp, splat (i32 23)
  %i.ekr = add <8 x i32> %i.ekq, splat (i32 1065353216)
  %i.eks = bitcast <8 x i32> %i.ekr to <8 x float>
  %i.ekt = fmul fast <8 x float> %i.eko, %i.eks
  store <8 x float> %i.ekt, ptr %.027167.i.i, align 1, !tbaa !60
  %i.eku = getelementptr inbounds nuw i8, ptr %.0168.i.i, i64 32 ; 2 uses
  %i.ekv = getelementptr inbounds nuw i8, ptr %.027167.i.i, i64 32 ; 2 uses
  %i.ekw = add nuw nsw i32 %.030166.i.i, 8        ; 2 uses
  %i.ekx = or disjoint i32 %i.ekw, 7
  %i.eky = icmp slt i32 %i.ekx, %i.eax
  br i1 %i.eky, label %.lr.ph.i38.i822, label %.preheader165.loopexit.i.i, !llvm.loop !264

.preheader.i35.i817:                              ; preds = %.lr.ph174.i.i, %.preheader165.i.i
  %.131.lcssa.i.i818 = phi i32 [ %.030.lcssa.i.i814, %.preheader165.i.i ], [ %i.eot, %.lr.ph174.i.i ] ; 4 uses
  %.128.lcssa.i.i819 = phi ptr [ %.027.lcssa.i.i815, %.preheader165.i.i ], [ %i.eos, %.lr.ph174.i.i ] ; 4 uses
  %.1.lcssa.i36.i820 = phi ptr [ %.0.lcssa.i34.i816, %.preheader165.i.i ], [ %i.eor, %.lr.ph174.i.i ] ; 4 uses
  %i.ekz = icmp slt i32 %.131.lcssa.i.i818, %i.eax
  br i1 %i.ekz, label %.lr.ph181.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph181.i.i.preheader:                          ; preds = %.preheader.i35.i817
  %.1.lcssa.i36.i8205502 = ptrtoaddr ptr %.1.lcssa.i36.i820 to i64
  %.128.lcssa.i.i8195501 = ptrtoaddr ptr %.128.lcssa.i.i819 to i64
  %i.ela = xor i32 %.131.lcssa.i.i818, -1
  %i.elb = add i32 %i.eax, %i.ela                 ; 2 uses
  %i.elc = zext i32 %i.elb to i64
  %i.eld = add nuw nsw i64 %i.elc, 1              ; 2 uses
  %min.iters.check5504 = icmp ult i32 %i.elb, 7
  %i.ele = sub i64 %.1.lcssa.i36.i8205502, %.128.lcssa.i.i8195501
  %diff.check5506 = icmp ugt i64 %i.ele, -32
  %or.cond6380 = select i1 %min.iters.check5504, i1 true, i1 %diff.check5506
  br i1 %or.cond6380, label %.lr.ph181.i.i.preheader6602, label %vector.ph5507

vector.ph5507:                                    ; preds = %.lr.ph181.i.i.preheader
  %n.vec5508 = and i64 %i.eld, 8589934584         ; 4 uses
  %i.elf = shl nuw nsw i64 %n.vec5508, 2          ; 2 uses
  %i.elg = getelementptr i8, ptr %.1.lcssa.i36.i820, i64 %i.elf
  %i.elh = getelementptr i8, ptr %.128.lcssa.i.i819, i64 %i.elf
  %i.eli = trunc i64 %n.vec5508 to i32
  %i.elj = add i32 %.131.lcssa.i.i818, %i.eli
  %i.elk = insertelement <4 x float> poison, float %i.eib, i64 0
  %i.ell = shufflevector <4 x float> %i.elk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5509

vector.body5509:                                  ; preds = %vector.body5509, %vector.ph5507
  %index5510 = phi i64 [ 0, %vector.ph5507 ], [ %index.next5514, %vector.body5509 ] ; 2 uses
  %i.elm = shl i64 %index5510, 2                  ; 2 uses
  %next.gep5511 = getelementptr i8, ptr %.1.lcssa.i36.i820, i64 %i.elm
  %next.gep5512 = getelementptr i8, ptr %.128.lcssa.i.i819, i64 %i.elm
  %wide.load5513 = load <8 x float>, ptr %next.gep5511, align 4, !tbaa !59 ; 5 uses
  %i.eln = extractelement <8 x float> %wide.load5513, i64 0
  %i.elo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eln, float %i.eib)
  %i.elp = extractelement <8 x float> %wide.load5513, i64 1
  %i.elq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.elp, float %i.eib)
  %i.elr = extractelement <8 x float> %wide.load5513, i64 2
  %i.els = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.elr, float %i.eib)
  %i.elt = extractelement <8 x float> %wide.load5513, i64 3
  %i.elu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.elt, float %i.eib)
  %i.elv = shufflevector <8 x float> %wide.load5513, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.elw = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.elv, <4 x float> %i.ell)
  %i.elx = insertelement <8 x float> poison, float %i.elo, i64 0
  %i.ely = insertelement <8 x float> %i.elx, float %i.elq, i64 1
  %i.elz = insertelement <8 x float> %i.ely, float %i.els, i64 2
  %i.ema = insertelement <8 x float> %i.elz, float %i.elu, i64 3
  %i.emb = shufflevector <4 x float> %i.elw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.emc = shufflevector <8 x float> %i.ema, <8 x float> %i.emb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.emc, ptr %next.gep5512, align 4, !tbaa !59
  %index.next5514 = add nuw i64 %index5510, 8     ; 2 uses
  %i.emd = icmp eq i64 %index.next5514, %n.vec5508
  br i1 %i.emd, label %middle.block5515, label %vector.body5509, !llvm.loop !265

middle.block5515:                                 ; preds = %vector.body5509
  %cmp.n5516 = icmp eq i64 %i.eld, %n.vec5508
  br i1 %cmp.n5516, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph181.i.i.preheader6602

.lr.ph181.i.i.preheader6602:                      ; preds = %.lr.ph181.i.i.preheader, %middle.block5515
  %.2180.i.i.ph = phi ptr [ %.1.lcssa.i36.i820, %.lr.ph181.i.i.preheader ], [ %i.elg, %middle.block5515 ] ; 2 uses
  %.229179.i.i.ph = phi ptr [ %.128.lcssa.i.i819, %.lr.ph181.i.i.preheader ], [ %i.elh, %middle.block5515 ] ; 2 uses
  %.232178.i.i.ph = phi i32 [ %.131.lcssa.i.i818, %.lr.ph181.i.i.preheader ], [ %i.elj, %middle.block5515 ] ; 4 uses
  %i.eme = sub i32 %i.eax, %.232178.i.i.ph
  %xtraiter7607 = and i32 %i.eme, 3               ; 2 uses
  %lcmp.mod7608.not = icmp eq i32 %xtraiter7607, 0
  br i1 %lcmp.mod7608.not, label %.lr.ph181.i.i.prol.loopexit, label %.lr.ph181.i.i.prol

.lr.ph181.i.i.prol:                               ; preds = %.lr.ph181.i.i.preheader6602, %.lr.ph181.i.i.prol
  %.2180.i.i.prol = phi ptr [ %i.emh, %.lr.ph181.i.i.prol ], [ %.2180.i.i.ph, %.lr.ph181.i.i.preheader6602 ] ; 2 uses
  %.229179.i.i.prol = phi ptr [ %i.emi, %.lr.ph181.i.i.prol ], [ %.229179.i.i.ph, %.lr.ph181.i.i.preheader6602 ] ; 2 uses
  %.232178.i.i.prol = phi i32 [ %i.emj, %.lr.ph181.i.i.prol ], [ %.232178.i.i.ph, %.lr.ph181.i.i.preheader6602 ]
  %prol.iter7609 = phi i32 [ %prol.iter7609.next, %.lr.ph181.i.i.prol ], [ 0, %.lr.ph181.i.i.preheader6602 ]
  %i.emf = load float, ptr %.2180.i.i.prol, align 4, !tbaa !59
  %i.emg = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.emf, float %i.eib)
  store float %i.emg, ptr %.229179.i.i.prol, align 4, !tbaa !59
  %i.emh = getelementptr inbounds nuw i8, ptr %.2180.i.i.prol, i64 4 ; 2 uses
  %i.emi = getelementptr inbounds nuw i8, ptr %.229179.i.i.prol, i64 4 ; 2 uses
  %i.emj = add nuw nsw i32 %.232178.i.i.prol, 1   ; 2 uses
  %prol.iter7609.next = add i32 %prol.iter7609, 1 ; 2 uses
  %prol.iter7609.cmp.not = icmp eq i32 %prol.iter7609.next, %xtraiter7607
  br i1 %prol.iter7609.cmp.not, label %.lr.ph181.i.i.prol.loopexit, label %.lr.ph181.i.i.prol, !llvm.loop !266

.lr.ph181.i.i.prol.loopexit:                      ; preds = %.lr.ph181.i.i.prol, %.lr.ph181.i.i.preheader6602
  %.2180.i.i.unr = phi ptr [ %.2180.i.i.ph, %.lr.ph181.i.i.preheader6602 ], [ %i.emh, %.lr.ph181.i.i.prol ]
  %.229179.i.i.unr = phi ptr [ %.229179.i.i.ph, %.lr.ph181.i.i.preheader6602 ], [ %i.emi, %.lr.ph181.i.i.prol ]
  %.232178.i.i.unr = phi i32 [ %.232178.i.i.ph, %.lr.ph181.i.i.preheader6602 ], [ %i.emj, %.lr.ph181.i.i.prol ]
  %i.emk = sub i32 %.232178.i.i.ph, %i.eax
  %i.eml = icmp ugt i32 %i.emk, -4
  br i1 %i.eml, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph181.i.i

.lr.ph174.i.i:                                    ; preds = %.preheader165.i.i, %.lr.ph174.i.i
  %.1173.i.i = phi ptr [ %i.eor, %.lr.ph174.i.i ], [ %.0.lcssa.i34.i816, %.preheader165.i.i ] ; 2 uses
  %.128172.i.i = phi ptr [ %i.eos, %.lr.ph174.i.i ], [ %.027.lcssa.i.i815, %.preheader165.i.i ] ; 2 uses
  %.131171.i.i = phi i32 [ %i.eot, %.lr.ph174.i.i ], [ %.030.lcssa.i.i814, %.preheader165.i.i ]
  %i.emm = load <4 x float>, ptr %.1173.i.i, align 1, !tbaa !60
  %i.emn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.emm, <4 x float> splat (float f0x00800000))
  %i.emo = bitcast <4 x float> %i.emn to <4 x i32> ; 2 uses
  %i.emp = lshr <4 x i32> %i.emo, splat (i32 23)
  %i.emq = and <4 x i32> %i.emo, splat (i32 -2139095041)
  %i.emr = or disjoint <4 x i32> %i.emq, splat (i32 1056964608)
  %i.ems = bitcast <4 x i32> %i.emr to <4 x float> ; 3 uses
  %i.emt = add nsw <4 x i32> %i.emp, splat (i32 -127)
  %i.emu = sitofp fast <4 x i32> %i.emt to <4 x float> ; 2 uses
  %i.emv = fadd fast <4 x float> %i.emu, splat (float 1.000000e+00)
  %i.emw = fcmp fast olt <4 x float> %i.ems, splat (float f0x3F3504F3) ; 2 uses
  %i.emx = select <4 x i1> %i.emw, <4 x float> %i.ems, <4 x float> zeroinitializer
  %i.emy = fadd fast <4 x float> %i.ems, splat (float -1.000000e+00)
  %i.emz = select fast <4 x i1> %i.emw, <4 x float> %i.emu, <4 x float> %i.emv ; 2 uses
  %i.ena = fadd fast <4 x float> %i.emy, %i.emx   ; 12 uses
  %i.enb = fmul fast <4 x float> %i.ena, %i.ena   ; 2 uses
  %i.enc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ena, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.end = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.enc, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> splat (float f0x3DEF251A))
  %i.ene = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.end, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> splat (float f0xBDFE5D4F))
  %i.enf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ene, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> splat (float f0x3E11E9BF))
  %i.eng = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.enf, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> splat (float f0xBE2AAE50))
  %i.enh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eng, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> splat (float f0x3E4CCEAC))
  %i.eni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.enh, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> splat (float f0xBE7FFFFC))
  %i.enj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eni, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> splat (float f0x3EAAAAAA))
  %i.enk = fmul fast <4 x float> %i.enb, %i.ena
  %i.enl = fmul fast <4 x float> %i.enk, %i.enj
  %i.enm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emz, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.enl)
  %i.enn = fneg fast <4 x float> %i.enb
  %i.eno = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.enn, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.enm)
  %i.enp = fadd fast <4 x float> %i.eno, %i.ena
  %i.enq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emz, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.enp)
  %i.enr = fmul fast <4 x float> %i.enq, %i.eik
  %i.ens = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.enr, <4 x float> splat (float f0x42B0C0A5))
  %i.ent = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ens, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.enu = fmul fast <4 x float> %i.ent, splat (float f0x3FB8AA3B)
  %i.env = fadd fast <4 x float> %i.enu, splat (float 5.000000e-01) ; 2 uses
  %i.enw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.env)
  %i.enx = sitofp fast <4 x i32> %i.enw to <4 x float> ; 2 uses
  %i.eny = fcmp fast olt <4 x float> %i.env, %i.enx
  %i.enz = select <4 x i1> %i.eny, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eoa = fsub fast <4 x float> %i.enx, %i.enz   ; 2 uses
  %i.eob = fneg fast <4 x float> %i.eoa           ; 2 uses
  %i.eoc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eob, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ent)
  %i.eod = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eob, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eoc) ; 8 uses
  %i.eoe = fmul fast <4 x float> %i.eod, %i.eod
  %i.eof = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eod, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.eog = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eof, <4 x float> nofpclass(nan inf) %i.eod, <4 x float> splat (float f0x3C088908))
  %i.eoh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eog, <4 x float> nofpclass(nan inf) %i.eod, <4 x float> splat (float f0x3D2AA9C1))
  %i.eoi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eoh, <4 x float> nofpclass(nan inf) %i.eod, <4 x float> splat (float f0x3E2AAAAA))
  %i.eoj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eoi, <4 x float> nofpclass(nan inf) %i.eod, <4 x float> splat (float 5.000000e-01))
  %i.eok = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eoj, <4 x float> nofpclass(nan inf) %i.eoe, <4 x float> nofpclass(nan inf) %i.eod)
  %i.eol = fadd fast <4 x float> %i.eok, splat (float 1.000000e+00)
  %i.eom = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eoa)
  %i.eon = shl <4 x i32> %i.eom, splat (i32 23)
  %i.eoo = add <4 x i32> %i.eon, splat (i32 1065353216)
  %i.eop = bitcast <4 x i32> %i.eoo to <4 x float>
  %i.eoq = fmul fast <4 x float> %i.eol, %i.eop
  store <4 x float> %i.eoq, ptr %.128172.i.i, align 1, !tbaa !60
  %i.eor = getelementptr inbounds nuw i8, ptr %.1173.i.i, i64 16 ; 2 uses
  %i.eos = getelementptr inbounds nuw i8, ptr %.128172.i.i, i64 16 ; 2 uses
  %i.eot = add nuw nsw i32 %.131171.i.i, 4        ; 3 uses
  %i.eou = or disjoint i32 %i.eot, 3
  %i.eov = icmp slt i32 %i.eou, %i.eax
  br i1 %i.eov, label %.lr.ph174.i.i, label %.preheader.i35.i817, !llvm.loop !267

.lr.ph181.i.i:                                    ; preds = %.lr.ph181.i.i.prol.loopexit, %.lr.ph181.i.i
  %.2180.i.i = phi ptr [ %i.epk, %.lr.ph181.i.i ], [ %.2180.i.i.unr, %.lr.ph181.i.i.prol.loopexit ] ; 5 uses
  %.229179.i.i = phi ptr [ %i.epl, %.lr.ph181.i.i ], [ %.229179.i.i.unr, %.lr.ph181.i.i.prol.loopexit ] ; 5 uses
  %.232178.i.i = phi i32 [ %i.epm, %.lr.ph181.i.i ], [ %.232178.i.i.unr, %.lr.ph181.i.i.prol.loopexit ]
  %i.eow = load float, ptr %.2180.i.i, align 4, !tbaa !59
  %i.eox = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eow, float %i.eib)
  store float %i.eox, ptr %.229179.i.i, align 4, !tbaa !59
  %i.eoy = getelementptr inbounds nuw i8, ptr %.2180.i.i, i64 4
  %i.eoz = getelementptr inbounds nuw i8, ptr %.229179.i.i, i64 4
  %i.epa = load float, ptr %i.eoy, align 4, !tbaa !59
  %i.epb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epa, float %i.eib)
  store float %i.epb, ptr %i.eoz, align 4, !tbaa !59
  %i.epc = getelementptr inbounds nuw i8, ptr %.2180.i.i, i64 8
  %i.epd = getelementptr inbounds nuw i8, ptr %.229179.i.i, i64 8
  %i.epe = load float, ptr %i.epc, align 4, !tbaa !59
  %i.epf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epe, float %i.eib)
  store float %i.epf, ptr %i.epd, align 4, !tbaa !59
  %i.epg = getelementptr inbounds nuw i8, ptr %.2180.i.i, i64 12
  %i.eph = getelementptr inbounds nuw i8, ptr %.229179.i.i, i64 12
  %i.epi = load float, ptr %i.epg, align 4, !tbaa !59
  %i.epj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epi, float %i.eib)
  store float %i.epj, ptr %i.eph, align 4, !tbaa !59
  %i.epk = getelementptr inbounds nuw i8, ptr %.2180.i.i, i64 16
  %i.epl = getelementptr inbounds nuw i8, ptr %.229179.i.i, i64 16
  %i.epm = add nuw nsw i32 %.232178.i.i, 4        ; 2 uses
  %exitcond.not.i37.i821.3 = icmp eq i32 %i.epm, %i.eax
  br i1 %exitcond.not.i37.i821.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph181.i.i, !llvm.loop !268

bb.ey:                                            ; preds = %bb.es
  %i.epn = icmp eq i32 %3, 1
  br i1 %i.epn, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey
  %i.epo = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.epp = icmp eq i32 %.sroa.speculated.i800, 4
  br i1 %i.epp, label %.thread.i73.i, label %bb.fa

.thread.i73.i:                                    ; preds = %bb.ez
  %i.epq = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.epr = insertelement <4 x float> poison, float %i.epo, i64 0
  %i.eps = shufflevector <4 x float> %i.epr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ept = icmp eq i32 %.sroa.speculated.i800, 8
  br i1 %i.ept, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.epu = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa, %.thread.i73.i
  %i.epv = phi <4 x float> [ %i.epq, %.thread.i73.i ], [ %i.eps, %bb.fa ] ; 2 uses
  %i.epw = shufflevector <4 x float> %i.epv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.epx = phi <4 x float> [ %i.eps, %bb.fb ], [ %i.epv, %bb.fc ]
  %i.epy = phi fast <8 x float> [ %i.epu, %bb.fb ], [ %i.epw, %bb.fc ]
  %i.epz = icmp sgt i32 %i.eax, 7
  br i1 %i.epz, label %.lr.ph.i58.i, label %.preheader165.i41.i

.lr.ph.i58.i:                                     ; preds = %bb.fd
  %i.eqa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.epy, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.eqb = bitcast <8 x float> %i.eqa to <8 x i32>
  %i.eqc = bitcast <8 x float> %i.eqa to <8 x i32>
  %i.eqd = and <8 x i32> %i.eqc, splat (i32 -2139095041)
  %i.eqe = or disjoint <8 x i32> %i.eqd, splat (i32 1056964608)
  %i.eqf = bitcast <8 x i32> %i.eqe to <8 x float> ; 3 uses
  %i.eqg = lshr <8 x i32> %i.eqb, splat (i32 23)
  %i.eqh = add nsw <8 x i32> %i.eqg, splat (i32 -127)
  %i.eqi = sitofp fast <8 x i32> %i.eqh to <8 x float> ; 2 uses
  %i.eqj = fadd fast <8 x float> %i.eqi, splat (float 1.000000e+00)
  %i.eqk = fcmp fast olt <8 x float> %i.eqf, splat (float f0x3F3504F3) ; 2 uses
  %i.eql = select <8 x i1> %i.eqk, <8 x float> %i.eqf, <8 x float> zeroinitializer
  %i.eqm = fadd fast <8 x float> %i.eqf, splat (float -1.000000e+00)
  %i.eqn = select fast <8 x i1> %i.eqk, <8 x float> %i.eqi, <8 x float> %i.eqj ; 2 uses
  %i.eqo = fadd fast <8 x float> %i.eqm, %i.eql   ; 12 uses
  %i.eqp = fmul fast <8 x float> %i.eqo, %i.eqo   ; 2 uses
  %i.eqq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqo, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.eqr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqq, <8 x float> nofpclass(nan inf) %i.eqo, <8 x float> splat (float f0x3DEF251A))
  %i.eqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqr, <8 x float> nofpclass(nan inf) %i.eqo, <8 x float> splat (float f0xBDFE5D4F))
  %i.eqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqs, <8 x float> nofpclass(nan inf) %i.eqo, <8 x float> splat (float f0x3E11E9BF))
  %i.equ = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqt, <8 x float> nofpclass(nan inf) %i.eqo, <8 x float> splat (float f0xBE2AAE50))
  %i.eqv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.equ, <8 x float> nofpclass(nan inf) %i.eqo, <8 x float> splat (float f0x3E4CCEAC))
  %i.eqw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqv, <8 x float> nofpclass(nan inf) %i.eqo, <8 x float> splat (float f0xBE7FFFFC))
  %i.eqx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqw, <8 x float> nofpclass(nan inf) %i.eqo, <8 x float> splat (float f0x3EAAAAAA))
  %i.eqy = fmul fast <8 x float> %i.eqp, %i.eqo
  %i.eqz = fmul fast <8 x float> %i.eqy, %i.eqx
  %i.era = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqn, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.eqz)
  %i.erb = fneg fast <8 x float> %i.eqp
  %i.erc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.erb, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.era)
  %i.erd = fadd fast <8 x float> %i.erc, %i.eqo
  %i.ere = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eqn, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.erd)
  br label %bb.fe

.preheader165.loopexit.i72.i:                     ; preds = %bb.fe
  %i.erf = and i32 %i.eax, 2147483640
  br label %.preheader165.i41.i

.preheader165.i41.i:                              ; preds = %.preheader165.loopexit.i72.i, %bb.fd
  %.030.lcssa.i42.i = phi i32 [ 0, %bb.fd ], [ %i.erf, %.preheader165.loopexit.i72.i ] ; 3 uses
  %.027.lcssa.i43.i = phi ptr [ %2, %bb.fd ], [ %i.etm, %.preheader165.loopexit.i72.i ] ; 2 uses
  %.0.lcssa.i44.i = phi ptr [ %1, %bb.fd ], [ %i.etl, %.preheader165.loopexit.i72.i ] ; 2 uses
  %i.erg = or disjoint i32 %.030.lcssa.i42.i, 3
  %i.erh = icmp slt i32 %i.erg, %i.eax
  br i1 %i.erh, label %.lr.ph174.i54.i, label %.preheader.i45.i

.lr.ph174.i54.i:                                  ; preds = %.preheader165.i41.i
  %i.eri = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.epx, <4 x float> splat (float f0x00800000))
  %i.erj = bitcast <4 x float> %i.eri to <4 x i32> ; 2 uses
  %i.erk = lshr <4 x i32> %i.erj, splat (i32 23)
  %i.erl = and <4 x i32> %i.erj, splat (i32 -2139095041)
  %i.erm = or disjoint <4 x i32> %i.erl, splat (i32 1056964608)
  %i.ern = bitcast <4 x i32> %i.erm to <4 x float> ; 3 uses
  %i.ero = add nsw <4 x i32> %i.erk, splat (i32 -127)
  %i.erp = sitofp fast <4 x i32> %i.ero to <4 x float> ; 2 uses
  %i.erq = fadd fast <4 x float> %i.erp, splat (float 1.000000e+00)
  %i.err = fcmp fast olt <4 x float> %i.ern, splat (float f0x3F3504F3) ; 2 uses
  %i.ers = select <4 x i1> %i.err, <4 x float> %i.ern, <4 x float> zeroinitializer
  %i.ert = fadd fast <4 x float> %i.ern, splat (float -1.000000e+00)
  %i.eru = select fast <4 x i1> %i.err, <4 x float> %i.erp, <4 x float> %i.erq ; 2 uses
  %i.erv = fadd fast <4 x float> %i.ert, %i.ers   ; 12 uses
  %i.erw = fmul fast <4 x float> %i.erv, %i.erv   ; 2 uses
  %i.erx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.erv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ery = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.erx, <4 x float> nofpclass(nan inf) %i.erv, <4 x float> splat (float f0x3DEF251A))
  %i.erz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ery, <4 x float> nofpclass(nan inf) %i.erv, <4 x float> splat (float f0xBDFE5D4F))
  %i.esa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.erz, <4 x float> nofpclass(nan inf) %i.erv, <4 x float> splat (float f0x3E11E9BF))
  %i.esb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.esa, <4 x float> nofpclass(nan inf) %i.erv, <4 x float> splat (float f0xBE2AAE50))
  %i.esc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.esb, <4 x float> nofpclass(nan inf) %i.erv, <4 x float> splat (float f0x3E4CCEAC))
  %i.esd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.esc, <4 x float> nofpclass(nan inf) %i.erv, <4 x float> splat (float f0xBE7FFFFC))
  %i.ese = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.esd, <4 x float> nofpclass(nan inf) %i.erv, <4 x float> splat (float f0x3EAAAAAA))
  %i.esf = fmul fast <4 x float> %i.erw, %i.erv
  %i.esg = fmul fast <4 x float> %i.esf, %i.ese
  %i.esh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eru, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.esg)
  %i.esi = fneg fast <4 x float> %i.erw
  %i.esj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.esi, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.esh)
  %i.esk = fadd fast <4 x float> %i.esj, %i.erv
  %i.esl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eru, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.esk)
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fe, %.lr.ph.i58.i
  %.0168.i64.i = phi ptr [ %1, %.lr.ph.i58.i ], [ %i.etl, %bb.fe ] ; 2 uses
  %.027167.i65.i = phi ptr [ %2, %.lr.ph.i58.i ], [ %i.etm, %bb.fe ] ; 2 uses
  %.030166.i66.i = phi i32 [ 0, %.lr.ph.i58.i ], [ %i.etn, %bb.fe ]
  %i.esm = load <8 x float>, ptr %.0168.i64.i, align 1, !tbaa !60
  %i.esn = fmul fast <8 x float> %i.esm, %i.ere
  %i.eso = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.esn, <8 x float> splat (float f0x42B0C0A5))
  %i.esp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eso, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.esq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esp, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.esr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.esq, i32 1) ; 2 uses
  %i.ess = fcmp fast ogt <8 x float> %i.esr, %i.esq
  %i.est = select <8 x i1> %i.ess, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.esu = fsub fast <8 x float> %i.esr, %i.est   ; 2 uses
  %i.esv = fneg fast <8 x float> %i.esu           ; 2 uses
  %i.esw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.esv, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.esp)
  %i.esx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.esv, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.esw) ; 8 uses
  %i.esy = fmul fast <8 x float> %i.esx, %i.esx
  %i.esz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esx, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.eta = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esz, <8 x float> nofpclass(nan inf) %i.esx, <8 x float> splat (float f0x3C088908))
  %i.etb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eta, <8 x float> nofpclass(nan inf) %i.esx, <8 x float> splat (float f0x3D2AA9C1))
  %i.etc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.etb, <8 x float> nofpclass(nan inf) %i.esx, <8 x float> splat (float f0x3E2AAAAA))
  %i.etd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.etc, <8 x float> nofpclass(nan inf) %i.esx, <8 x float> splat (float 5.000000e-01))
  %i.ete = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.etd, <8 x float> nofpclass(nan inf) %i.esy, <8 x float> nofpclass(nan inf) %i.esx)
  %i.etf = fadd fast <8 x float> %i.ete, splat (float 1.000000e+00)
  %i.etg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.esu)
  %i.eth = shl <8 x i32> %i.etg, splat (i32 23)
  %i.eti = add <8 x i32> %i.eth, splat (i32 1065353216)
  %i.etj = bitcast <8 x i32> %i.eti to <8 x float>
  %i.etk = fmul fast <8 x float> %i.etf, %i.etj
  store <8 x float> %i.etk, ptr %.027167.i65.i, align 1, !tbaa !60
  %i.etl = getelementptr inbounds nuw i8, ptr %.0168.i64.i, i64 32 ; 2 uses
  %i.etm = getelementptr inbounds nuw i8, ptr %.027167.i65.i, i64 32 ; 2 uses
  %i.etn = add nuw nsw i32 %.030166.i66.i, 8      ; 2 uses
  %i.eto = or disjoint i32 %i.etn, 7
  %i.etp = icmp slt i32 %i.eto, %i.eax
  br i1 %i.etp, label %bb.fe, label %.preheader165.loopexit.i72.i, !llvm.loop !269

.preheader.i45.i:                                 ; preds = %bb.ff, %.preheader165.i41.i
  %.131.lcssa.i46.i = phi i32 [ %.030.lcssa.i42.i, %.preheader165.i41.i ], [ %i.ewg, %bb.ff ] ; 4 uses
  %.128.lcssa.i47.i = phi ptr [ %.027.lcssa.i43.i, %.preheader165.i41.i ], [ %i.ewf, %bb.ff ] ; 4 uses
  %.1.lcssa.i48.i = phi ptr [ %.0.lcssa.i44.i, %.preheader165.i41.i ], [ %i.ewe, %bb.ff ] ; 4 uses
  %i.etq = icmp slt i32 %.131.lcssa.i46.i, %i.eax
  br i1 %i.etq, label %.lr.ph181.i49.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph181.i49.i.preheader:                        ; preds = %.preheader.i45.i
  %.1.lcssa.i48.i5479 = ptrtoaddr ptr %.1.lcssa.i48.i to i64
  %.128.lcssa.i47.i5478 = ptrtoaddr ptr %.128.lcssa.i47.i to i64
  %i.etr = xor i32 %.131.lcssa.i46.i, -1
  %i.ets = add i32 %i.eax, %i.etr                 ; 2 uses
  %i.ett = zext i32 %i.ets to i64
  %i.etu = add nuw nsw i64 %i.ett, 1              ; 2 uses
  %min.iters.check5481 = icmp ult i32 %i.ets, 7
  %i.etv = sub i64 %.1.lcssa.i48.i5479, %.128.lcssa.i47.i5478
  %diff.check5483 = icmp ugt i64 %i.etv, -32
  %or.cond6381 = select i1 %min.iters.check5481, i1 true, i1 %diff.check5483
  br i1 %or.cond6381, label %.lr.ph181.i49.i.preheader6609, label %vector.ph5484

vector.ph5484:                                    ; preds = %.lr.ph181.i49.i.preheader
  %n.vec5485 = and i64 %i.etu, 8589934584         ; 4 uses
  %i.etw = shl nuw nsw i64 %n.vec5485, 2          ; 2 uses
  %i.etx = getelementptr i8, ptr %.1.lcssa.i48.i, i64 %i.etw
  %i.ety = getelementptr i8, ptr %.128.lcssa.i47.i, i64 %i.etw
  %i.etz = trunc i64 %n.vec5485 to i32
  %i.eua = add i32 %.131.lcssa.i46.i, %i.etz
  %i.eub = insertelement <4 x float> poison, float %i.epo, i64 0
  %i.euc = shufflevector <4 x float> %i.eub, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5486

vector.body5486:                                  ; preds = %vector.body5486, %vector.ph5484
  %index5487 = phi i64 [ 0, %vector.ph5484 ], [ %index.next5491, %vector.body5486 ] ; 2 uses
  %i.eud = shl i64 %index5487, 2                  ; 2 uses
  %next.gep5488 = getelementptr i8, ptr %.1.lcssa.i48.i, i64 %i.eud
  %next.gep5489 = getelementptr i8, ptr %.128.lcssa.i47.i, i64 %i.eud
  %wide.load5490 = load <8 x float>, ptr %next.gep5488, align 4, !tbaa !59 ; 5 uses
  %i.eue = extractelement <8 x float> %wide.load5490, i64 0
  %i.euf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.eue)
  %i.eug = extractelement <8 x float> %wide.load5490, i64 1
  %i.euh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.eug)
  %i.eui = extractelement <8 x float> %wide.load5490, i64 2
  %i.euj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.eui)
  %i.euk = extractelement <8 x float> %wide.load5490, i64 3
  %i.eul = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.euk)
  %i.eum = shufflevector <8 x float> %wide.load5490, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eun = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.euc, <4 x float> %i.eum)
  %i.euo = insertelement <8 x float> poison, float %i.euf, i64 0
  %i.eup = insertelement <8 x float> %i.euo, float %i.euh, i64 1
  %i.euq = insertelement <8 x float> %i.eup, float %i.euj, i64 2
  %i.eur = insertelement <8 x float> %i.euq, float %i.eul, i64 3
  %i.eus = shufflevector <4 x float> %i.eun, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eut = shufflevector <8 x float> %i.eur, <8 x float> %i.eus, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.eut, ptr %next.gep5489, align 4, !tbaa !59
  %index.next5491 = add nuw i64 %index5487, 8     ; 2 uses
  %i.euu = icmp eq i64 %index.next5491, %n.vec5485
  br i1 %i.euu, label %middle.block5492, label %vector.body5486, !llvm.loop !270

middle.block5492:                                 ; preds = %vector.body5486
  %cmp.n5493 = icmp eq i64 %i.etu, %n.vec5485
  br i1 %cmp.n5493, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph181.i49.i.preheader6609

.lr.ph181.i49.i.preheader6609:                    ; preds = %.lr.ph181.i49.i.preheader, %middle.block5492
  %.2180.i50.i.ph = phi ptr [ %.1.lcssa.i48.i, %.lr.ph181.i49.i.preheader ], [ %i.etx, %middle.block5492 ] ; 2 uses
  %.229179.i51.i.ph = phi ptr [ %.128.lcssa.i47.i, %.lr.ph181.i49.i.preheader ], [ %i.ety, %middle.block5492 ] ; 2 uses
  %.232178.i52.i.ph = phi i32 [ %.131.lcssa.i46.i, %.lr.ph181.i49.i.preheader ], [ %i.eua, %middle.block5492 ] ; 4 uses
  %i.euv = sub i32 %i.eax, %.232178.i52.i.ph
  %xtraiter7604 = and i32 %i.euv, 3               ; 2 uses
  %lcmp.mod7605.not = icmp eq i32 %xtraiter7604, 0
  br i1 %lcmp.mod7605.not, label %.lr.ph181.i49.i.prol.loopexit, label %.lr.ph181.i49.i.prol

.lr.ph181.i49.i.prol:                             ; preds = %.lr.ph181.i49.i.preheader6609, %.lr.ph181.i49.i.prol
  %.2180.i50.i.prol = phi ptr [ %i.euy, %.lr.ph181.i49.i.prol ], [ %.2180.i50.i.ph, %.lr.ph181.i49.i.preheader6609 ] ; 2 uses
  %.229179.i51.i.prol = phi ptr [ %i.euz, %.lr.ph181.i49.i.prol ], [ %.229179.i51.i.ph, %.lr.ph181.i49.i.preheader6609 ] ; 2 uses
  %.232178.i52.i.prol = phi i32 [ %i.eva, %.lr.ph181.i49.i.prol ], [ %.232178.i52.i.ph, %.lr.ph181.i49.i.preheader6609 ]
  %prol.iter7606 = phi i32 [ %prol.iter7606.next, %.lr.ph181.i49.i.prol ], [ 0, %.lr.ph181.i49.i.preheader6609 ]
  %i.euw = load float, ptr %.2180.i50.i.prol, align 4, !tbaa !59
  %i.eux = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.euw)
  store float %i.eux, ptr %.229179.i51.i.prol, align 4, !tbaa !59
  %i.euy = getelementptr inbounds nuw i8, ptr %.2180.i50.i.prol, i64 4 ; 2 uses
  %i.euz = getelementptr inbounds nuw i8, ptr %.229179.i51.i.prol, i64 4 ; 2 uses
  %i.eva = add nuw nsw i32 %.232178.i52.i.prol, 1 ; 2 uses
  %prol.iter7606.next = add i32 %prol.iter7606, 1 ; 2 uses
  %prol.iter7606.cmp.not = icmp eq i32 %prol.iter7606.next, %xtraiter7604
  br i1 %prol.iter7606.cmp.not, label %.lr.ph181.i49.i.prol.loopexit, label %.lr.ph181.i49.i.prol, !llvm.loop !271

.lr.ph181.i49.i.prol.loopexit:                    ; preds = %.lr.ph181.i49.i.prol, %.lr.ph181.i49.i.preheader6609
  %.2180.i50.i.unr = phi ptr [ %.2180.i50.i.ph, %.lr.ph181.i49.i.preheader6609 ], [ %i.euy, %.lr.ph181.i49.i.prol ]
  %.229179.i51.i.unr = phi ptr [ %.229179.i51.i.ph, %.lr.ph181.i49.i.preheader6609 ], [ %i.euz, %.lr.ph181.i49.i.prol ]
  %.232178.i52.i.unr = phi i32 [ %.232178.i52.i.ph, %.lr.ph181.i49.i.preheader6609 ], [ %i.eva, %.lr.ph181.i49.i.prol ]
  %i.evb = sub i32 %.232178.i52.i.ph, %i.eax
  %i.evc = icmp ugt i32 %i.evb, -4
  br i1 %i.evc, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph181.i49.i

bb.ff:                                            ; preds = %bb.ff, %.lr.ph174.i54.i
  %.1173.i55.i = phi ptr [ %.0.lcssa.i44.i, %.lr.ph174.i54.i ], [ %i.ewe, %bb.ff ] ; 2 uses
  %.128172.i56.i = phi ptr [ %.027.lcssa.i43.i, %.lr.ph174.i54.i ], [ %i.ewf, %bb.ff ] ; 2 uses
  %.131171.i57.i = phi i32 [ %.030.lcssa.i42.i, %.lr.ph174.i54.i ], [ %i.ewg, %bb.ff ]
  %i.evd = load <4 x float>, ptr %.1173.i55.i, align 1, !tbaa !60
  %i.eve = fmul fast <4 x float> %i.evd, %i.esl
  %i.evf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eve, <4 x float> splat (float f0x42B0C0A5))
  %i.evg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.evf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.evh = fmul fast <4 x float> %i.evg, splat (float f0x3FB8AA3B)
  %i.evi = fadd fast <4 x float> %i.evh, splat (float 5.000000e-01) ; 2 uses
  %i.evj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.evi)
  %i.evk = sitofp fast <4 x i32> %i.evj to <4 x float> ; 2 uses
  %i.evl = fcmp fast olt <4 x float> %i.evi, %i.evk
  %i.evm = select <4 x i1> %i.evl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.evn = fsub fast <4 x float> %i.evk, %i.evm   ; 2 uses
  %i.evo = fneg fast <4 x float> %i.evn           ; 2 uses
  %i.evp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.evo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.evg)
  %i.evq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.evo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.evp) ; 8 uses
  %i.evr = fmul fast <4 x float> %i.evq, %i.evq
  %i.evs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.evt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evs, <4 x float> nofpclass(nan inf) %i.evq, <4 x float> splat (float f0x3C088908))
  %i.evu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evt, <4 x float> nofpclass(nan inf) %i.evq, <4 x float> splat (float f0x3D2AA9C1))
  %i.evv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evu, <4 x float> nofpclass(nan inf) %i.evq, <4 x float> splat (float f0x3E2AAAAA))
  %i.evw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evv, <4 x float> nofpclass(nan inf) %i.evq, <4 x float> splat (float 5.000000e-01))
  %i.evx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.evw, <4 x float> nofpclass(nan inf) %i.evr, <4 x float> nofpclass(nan inf) %i.evq)
  %i.evy = fadd fast <4 x float> %i.evx, splat (float 1.000000e+00)
  %i.evz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.evn)
  %i.ewa = shl <4 x i32> %i.evz, splat (i32 23)
  %i.ewb = add <4 x i32> %i.ewa, splat (i32 1065353216)
  %i.ewc = bitcast <4 x i32> %i.ewb to <4 x float>
  %i.ewd = fmul fast <4 x float> %i.evy, %i.ewc
  store <4 x float> %i.ewd, ptr %.128172.i56.i, align 1, !tbaa !60
  %i.ewe = getelementptr inbounds nuw i8, ptr %.1173.i55.i, i64 16 ; 2 uses
  %i.ewf = getelementptr inbounds nuw i8, ptr %.128172.i56.i, i64 16 ; 2 uses
  %i.ewg = add nuw nsw i32 %.131171.i57.i, 4      ; 3 uses
  %i.ewh = or disjoint i32 %i.ewg, 3
  %i.ewi = icmp slt i32 %i.ewh, %i.eax
  br i1 %i.ewi, label %bb.ff, label %.preheader.i45.i, !llvm.loop !272

.lr.ph181.i49.i:                                  ; preds = %.lr.ph181.i49.i.prol.loopexit, %.lr.ph181.i49.i
  %.2180.i50.i = phi ptr [ %i.ewx, %.lr.ph181.i49.i ], [ %.2180.i50.i.unr, %.lr.ph181.i49.i.prol.loopexit ] ; 5 uses
  %.229179.i51.i = phi ptr [ %i.ewy, %.lr.ph181.i49.i ], [ %.229179.i51.i.unr, %.lr.ph181.i49.i.prol.loopexit ] ; 5 uses
  %.232178.i52.i = phi i32 [ %i.ewz, %.lr.ph181.i49.i ], [ %.232178.i52.i.unr, %.lr.ph181.i49.i.prol.loopexit ]
  %i.ewj = load float, ptr %.2180.i50.i, align 4, !tbaa !59
  %i.ewk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.ewj)
  store float %i.ewk, ptr %.229179.i51.i, align 4, !tbaa !59
  %i.ewl = getelementptr inbounds nuw i8, ptr %.2180.i50.i, i64 4
  %i.ewm = getelementptr inbounds nuw i8, ptr %.229179.i51.i, i64 4
  %i.ewn = load float, ptr %i.ewl, align 4, !tbaa !59
  %i.ewo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.ewn)
  store float %i.ewo, ptr %i.ewm, align 4, !tbaa !59
  %i.ewp = getelementptr inbounds nuw i8, ptr %.2180.i50.i, i64 8
  %i.ewq = getelementptr inbounds nuw i8, ptr %.229179.i51.i, i64 8
  %i.ewr = load float, ptr %i.ewp, align 4, !tbaa !59
  %i.ews = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.ewr)
  store float %i.ews, ptr %i.ewq, align 4, !tbaa !59
  %i.ewt = getelementptr inbounds nuw i8, ptr %.2180.i50.i, i64 12
  %i.ewu = getelementptr inbounds nuw i8, ptr %.229179.i51.i, i64 12
  %i.ewv = load float, ptr %i.ewt, align 4, !tbaa !59
  %i.eww = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.epo, float %i.ewv)
  store float %i.eww, ptr %i.ewu, align 4, !tbaa !59
  %i.ewx = getelementptr inbounds nuw i8, ptr %.2180.i50.i, i64 16
  %i.ewy = getelementptr inbounds nuw i8, ptr %.229179.i51.i, i64 16
  %i.ewz = add nuw nsw i32 %.232178.i52.i, 4      ; 2 uses
  %exitcond.not.i53.i.3 = icmp eq i32 %i.ewz, %i.eax
  br i1 %exitcond.not.i53.i.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph181.i49.i, !llvm.loop !273

bb.fg:                                            ; preds = %bb.ey, %bb.ep
  %i.exa = icmp eq i32 %6, 1
  br i1 %i.exa, label %bb.fh, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.fh:                                            ; preds = %bb.fg
  %i.exb = icmp eq i32 %3, %4
  br i1 %i.exb, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.exc = icmp eq i32 %.sroa.speculated.i800, 8
  %i.exd = icmp sgt i32 %.sroa.speculated100.i, 0
  %or.cond.i.i808 = and i1 %i.exd, %i.exc
  br i1 %or.cond.i.i808, label %.lr.ph.i75.i, label %.loopexit256.i.i

.lr.ph.i75.i:                                     ; preds = %bb.fi, %.lr.ph.i75.i
  %.0260.i.i = phi ptr [ %i.ezl, %.lr.ph.i75.i ], [ %0, %bb.fi ] ; 2 uses
  %.032259.i.i = phi ptr [ %i.ezm, %.lr.ph.i75.i ], [ %1, %bb.fi ] ; 2 uses
  %.038258.i.i = phi ptr [ %i.ezn, %.lr.ph.i75.i ], [ %2, %bb.fi ] ; 2 uses
  %.042257.i.i = phi i32 [ %i.ezo, %.lr.ph.i75.i ], [ 0, %bb.fi ]
  %i.exe = load <8 x float>, ptr %.0260.i.i, align 1, !tbaa !60
  %i.exf = load float, ptr %.032259.i.i, align 4, !tbaa !59
  %i.exg = insertelement <8 x float> poison, float %i.exf, i64 0
  %i.exh = shufflevector <8 x float> %i.exg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.exi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.exe, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.exj = bitcast <8 x float> %i.exi to <8 x i32>
  %i.exk = bitcast <8 x float> %i.exi to <8 x i32>
  %i.exl = and <8 x i32> %i.exk, splat (i32 -2139095041)
  %i.exm = or disjoint <8 x i32> %i.exl, splat (i32 1056964608)
  %i.exn = bitcast <8 x i32> %i.exm to <8 x float> ; 3 uses
  %i.exo = lshr <8 x i32> %i.exj, splat (i32 23)
  %i.exp = add nsw <8 x i32> %i.exo, splat (i32 -127)
  %i.exq = sitofp fast <8 x i32> %i.exp to <8 x float> ; 2 uses
  %i.exr = fadd fast <8 x float> %i.exq, splat (float 1.000000e+00)
  %i.exs = fcmp fast olt <8 x float> %i.exn, splat (float f0x3F3504F3) ; 2 uses
  %i.ext = select <8 x i1> %i.exs, <8 x float> %i.exn, <8 x float> zeroinitializer
  %i.exu = fadd fast <8 x float> %i.exn, splat (float -1.000000e+00)
  %i.exv = select fast <8 x i1> %i.exs, <8 x float> %i.exq, <8 x float> %i.exr ; 2 uses
  %i.exw = fadd fast <8 x float> %i.exu, %i.ext   ; 12 uses
  %i.exx = fmul fast <8 x float> %i.exw, %i.exw   ; 2 uses
  %i.exy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.exw, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.exz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.exy, <8 x float> nofpclass(nan inf) %i.exw, <8 x float> splat (float f0x3DEF251A))
  %i.eya = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.exz, <8 x float> nofpclass(nan inf) %i.exw, <8 x float> splat (float f0xBDFE5D4F))
  %i.eyb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eya, <8 x float> nofpclass(nan inf) %i.exw, <8 x float> splat (float f0x3E11E9BF))
  %i.eyc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eyb, <8 x float> nofpclass(nan inf) %i.exw, <8 x float> splat (float f0xBE2AAE50))
  %i.eyd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eyc, <8 x float> nofpclass(nan inf) %i.exw, <8 x float> splat (float f0x3E4CCEAC))
  %i.eye = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eyd, <8 x float> nofpclass(nan inf) %i.exw, <8 x float> splat (float f0xBE7FFFFC))
  %i.eyf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eye, <8 x float> nofpclass(nan inf) %i.exw, <8 x float> splat (float f0x3EAAAAAA))
  %i.eyg = fmul fast <8 x float> %i.exx, %i.exw
  %i.eyh = fmul fast <8 x float> %i.eyg, %i.eyf
  %i.eyi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.exv, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.eyh)
  %i.eyj = fneg fast <8 x float> %i.exx
  %i.eyk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.eyj, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.eyi)
  %i.eyl = fadd fast <8 x float> %i.eyk, %i.exw
  %i.eym = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.exv, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.eyl)
  %i.eyn = fmul fast <8 x float> %i.eym, %i.exh
  %i.eyo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eyn, <8 x float> splat (float f0x42B0C0A5))
  %i.eyp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eyo, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eyq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eyp, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eyr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eyq, i32 1) ; 2 uses
  %i.eys = fcmp fast ogt <8 x float> %i.eyr, %i.eyq
  %i.eyt = select <8 x i1> %i.eys, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eyu = fsub fast <8 x float> %i.eyr, %i.eyt   ; 2 uses
  %i.eyv = fneg fast <8 x float> %i.eyu           ; 2 uses
  %i.eyw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.eyv, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.eyp)
  %i.eyx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.eyv, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.eyw) ; 8 uses
  %i.eyy = fmul fast <8 x float> %i.eyx, %i.eyx
  %i.eyz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eyx, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.eza = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eyz, <8 x float> nofpclass(nan inf) %i.eyx, <8 x float> splat (float f0x3C088908))
  %i.ezb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eza, <8 x float> nofpclass(nan inf) %i.eyx, <8 x float> splat (float f0x3D2AA9C1))
  %i.ezc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ezb, <8 x float> nofpclass(nan inf) %i.eyx, <8 x float> splat (float f0x3E2AAAAA))
  %i.ezd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ezc, <8 x float> nofpclass(nan inf) %i.eyx, <8 x float> splat (float 5.000000e-01))
  %i.eze = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ezd, <8 x float> nofpclass(nan inf) %i.eyy, <8 x float> nofpclass(nan inf) %i.eyx)
  %i.ezf = fadd fast <8 x float> %i.eze, splat (float 1.000000e+00)
  %i.ezg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eyu)
  %i.ezh = shl <8 x i32> %i.ezg, splat (i32 23)
  %i.ezi = add <8 x i32> %i.ezh, splat (i32 1065353216)
  %i.ezj = bitcast <8 x i32> %i.ezi to <8 x float>
  %i.ezk = fmul fast <8 x float> %i.ezf, %i.ezj
  store <8 x float> %i.ezk, ptr %.038258.i.i, align 1, !tbaa !60
  %i.ezl = getelementptr inbounds nuw i8, ptr %.0260.i.i, i64 32
  %i.ezm = getelementptr inbounds nuw i8, ptr %.032259.i.i, i64 4
  %i.ezn = getelementptr inbounds nuw i8, ptr %.038258.i.i, i64 32
  %i.ezo = add nuw nsw i32 %.042257.i.i, 1        ; 2 uses
  %exitcond.not.i78.i = icmp eq i32 %i.ezo, %.sroa.speculated100.i
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.hph = getelementptr inbounds nuw i8, ptr %.236170.i.i, i64 12
  %i.hpi = load float, ptr %i.hpg, align 4, !tbaa !59
  %i.hpj = load float, ptr %i.hpf, align 4, !tbaa !59
  %i.hpk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpi, float %i.hpj)
  store float %i.hpk, ptr %i.hph, align 4, !tbaa !59
  %i.hpl = getelementptr inbounds nuw i8, ptr %.2173.i.i, i64 16
  %i.hpm = getelementptr inbounds nuw i8, ptr %.230172.i.i, i64 16
  %i.hpn = getelementptr inbounds nuw i8, ptr %.236170.i.i, i64 16
  %i.hpo = add nuw nsw i32 %.233171.i.i, 4        ; 2 uses
  %exitcond.not.i.i1141.3 = icmp eq i32 %i.hpo, %i.him
  br i1 %exitcond.not.i.i1141.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph174.i.i1140, !llvm.loop !347

bb.hp:                                            ; preds = %bb.hn
  %i.hpp = icmp eq i32 %4, 1
  br i1 %i.hpp, label %bb.hq, label %bb.hx

bb.hq:                                            ; preds = %bb.hp
  %i.hpq = load float, ptr %1, align 4, !tbaa !59 ; 11 uses
  %i.hpr = icmp eq i32 %.sroa.speculated.i1103, 4
  br i1 %i.hpr, label %.thread.i.i1130, label %bb.hr

.thread.i.i1130:                                  ; preds = %bb.hq
  %i.hps = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  %i.hpt = insertelement <4 x float> poison, float %i.hpq, i64 0
  %i.hpu = shufflevector <4 x float> %i.hpt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hpv = icmp eq i32 %.sroa.speculated.i1103, 8
  br i1 %i.hpv, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.hpw = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr, %.thread.i.i1130
  %i.hpx = phi <4 x float> [ %i.hps, %.thread.i.i1130 ], [ %i.hpu, %bb.hr ] ; 2 uses
  %i.hpy = shufflevector <4 x float> %i.hpx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.hpz = phi <4 x float> [ %i.hpu, %bb.hs ], [ %i.hpx, %bb.ht ]
  %i.hqa = phi fast <8 x float> [ %i.hpw, %bb.hs ], [ %i.hpy, %bb.ht ]
  %i.hqb = icmp sgt i32 %i.him, 7
  br i1 %i.hqb, label %.lr.ph.i38.i1128, label %.preheader152.i.i

.lr.ph.i38.i1128:                                 ; preds = %bb.hu
  %i.hqc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hqa, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.hqd = bitcast <8 x float> %i.hqc to <8 x i32>
  %i.hqe = bitcast <8 x float> %i.hqc to <8 x i32>
  %i.hqf = and <8 x i32> %i.hqe, splat (i32 -2139095041)
  %i.hqg = or disjoint <8 x i32> %i.hqf, splat (i32 1056964608)
  %i.hqh = bitcast <8 x i32> %i.hqg to <8 x float> ; 3 uses
  %i.hqi = lshr <8 x i32> %i.hqd, splat (i32 23)
  %i.hqj = add nsw <8 x i32> %i.hqi, splat (i32 -127)
  %i.hqk = sitofp fast <8 x i32> %i.hqj to <8 x float> ; 2 uses
  %i.hql = fadd fast <8 x float> %i.hqk, splat (float 1.000000e+00)
  %i.hqm = fcmp fast olt <8 x float> %i.hqh, splat (float f0x3F3504F3) ; 2 uses
  %i.hqn = select <8 x i1> %i.hqm, <8 x float> %i.hqh, <8 x float> zeroinitializer
  %i.hqo = fadd fast <8 x float> %i.hqh, splat (float -1.000000e+00)
  %i.hqp = select fast <8 x i1> %i.hqm, <8 x float> %i.hqk, <8 x float> %i.hql ; 2 uses
  %i.hqq = fadd fast <8 x float> %i.hqo, %i.hqn   ; 12 uses
  %i.hqr = fmul fast <8 x float> %i.hqq, %i.hqq   ; 2 uses
  %i.hqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqs, <8 x float> nofpclass(nan inf) %i.hqq, <8 x float> splat (float f0x3DEF251A))
  %i.hqu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqt, <8 x float> nofpclass(nan inf) %i.hqq, <8 x float> splat (float f0xBDFE5D4F))
  %i.hqv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqu, <8 x float> nofpclass(nan inf) %i.hqq, <8 x float> splat (float f0x3E11E9BF))
  %i.hqw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqv, <8 x float> nofpclass(nan inf) %i.hqq, <8 x float> splat (float f0xBE2AAE50))
  %i.hqx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqw, <8 x float> nofpclass(nan inf) %i.hqq, <8 x float> splat (float f0x3E4CCEAC))
  %i.hqy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqx, <8 x float> nofpclass(nan inf) %i.hqq, <8 x float> splat (float f0xBE7FFFFC))
  %i.hqz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqy, <8 x float> nofpclass(nan inf) %i.hqq, <8 x float> splat (float f0x3EAAAAAA))
  %i.hra = fmul fast <8 x float> %i.hqr, %i.hqq
  %i.hrb = fmul fast <8 x float> %i.hra, %i.hqz
  %i.hrc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hrb)
  %i.hrd = fneg fast <8 x float> %i.hqr
  %i.hre = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hrd, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hrc)
  %i.hrf = fadd fast <8 x float> %i.hre, %i.hqq
  %i.hrg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hqp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hrf)
  br label %bb.hv

.preheader152.loopexit.i.i:                       ; preds = %bb.hv
  %i.hrh = and i32 %i.him, 2147483640
  br label %.preheader152.i.i

.preheader152.i.i:                                ; preds = %.preheader152.loopexit.i.i, %bb.hu
  %.030.lcssa.i.i1119 = phi i32 [ 0, %bb.hu ], [ %i.hrh, %.preheader152.loopexit.i.i ] ; 3 uses
  %.027.lcssa.i.i1120 = phi ptr [ %2, %bb.hu ], [ %i.hto, %.preheader152.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1121 = phi ptr [ %0, %bb.hu ], [ %i.htn, %.preheader152.loopexit.i.i ] ; 2 uses
  %i.hri = or disjoint i32 %.030.lcssa.i.i1119, 3
  %i.hrj = icmp slt i32 %i.hri, %i.him
  br i1 %i.hrj, label %.lr.ph161.i.i, label %.preheader.i35.i1122

.lr.ph161.i.i:                                    ; preds = %.preheader152.i.i
  %i.hrk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hpz, <4 x float> splat (float f0x00800000))
  %i.hrl = bitcast <4 x float> %i.hrk to <4 x i32> ; 2 uses
  %i.hrm = lshr <4 x i32> %i.hrl, splat (i32 23)
  %i.hrn = and <4 x i32> %i.hrl, splat (i32 -2139095041)
  %i.hro = or disjoint <4 x i32> %i.hrn, splat (i32 1056964608)
  %i.hrp = bitcast <4 x i32> %i.hro to <4 x float> ; 3 uses
  %i.hrq = add nsw <4 x i32> %i.hrm, splat (i32 -127)
  %i.hrr = sitofp fast <4 x i32> %i.hrq to <4 x float> ; 2 uses
  %i.hrs = fadd fast <4 x float> %i.hrr, splat (float 1.000000e+00)
  %i.hrt = fcmp fast olt <4 x float> %i.hrp, splat (float f0x3F3504F3) ; 2 uses
  %i.hru = select <4 x i1> %i.hrt, <4 x float> %i.hrp, <4 x float> zeroinitializer
  %i.hrv = fadd fast <4 x float> %i.hrp, splat (float -1.000000e+00)
  %i.hrw = select fast <4 x i1> %i.hrt, <4 x float> %i.hrr, <4 x float> %i.hrs ; 2 uses
  %i.hrx = fadd fast <4 x float> %i.hrv, %i.hru   ; 12 uses
  %i.hry = fmul fast <4 x float> %i.hrx, %i.hrx   ; 2 uses
  %i.hrz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrx, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hsa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrz, <4 x float> nofpclass(nan inf) %i.hrx, <4 x float> splat (float f0x3DEF251A))
  %i.hsb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hsa, <4 x float> nofpclass(nan inf) %i.hrx, <4 x float> splat (float f0xBDFE5D4F))
  %i.hsc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hsb, <4 x float> nofpclass(nan inf) %i.hrx, <4 x float> splat (float f0x3E11E9BF))
  %i.hsd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hsc, <4 x float> nofpclass(nan inf) %i.hrx, <4 x float> splat (float f0xBE2AAE50))
  %i.hse = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hsd, <4 x float> nofpclass(nan inf) %i.hrx, <4 x float> splat (float f0x3E4CCEAC))
  %i.hsf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hse, <4 x float> nofpclass(nan inf) %i.hrx, <4 x float> splat (float f0xBE7FFFFC))
  %i.hsg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hsf, <4 x float> nofpclass(nan inf) %i.hrx, <4 x float> splat (float f0x3EAAAAAA))
  %i.hsh = fmul fast <4 x float> %i.hry, %i.hrx
  %i.hsi = fmul fast <4 x float> %i.hsh, %i.hsg
  %i.hsj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hsi)
  %i.hsk = fneg fast <4 x float> %i.hry
  %i.hsl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hsk, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.hsj)
  %i.hsm = fadd fast <4 x float> %i.hsl, %i.hrx
  %i.hsn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hsm)
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hv, %.lr.ph.i38.i1128
  %.0155.i.i1129 = phi ptr [ %0, %.lr.ph.i38.i1128 ], [ %i.htn, %bb.hv ] ; 2 uses
  %.027154.i.i = phi ptr [ %2, %.lr.ph.i38.i1128 ], [ %i.hto, %bb.hv ] ; 2 uses
  %.030153.i.i = phi i32 [ 0, %.lr.ph.i38.i1128 ], [ %i.htp, %bb.hv ]
  %i.hso = load <8 x float>, ptr %.0155.i.i1129, align 1, !tbaa !60
  %i.hsp = fmul fast <8 x float> %i.hso, %i.hrg
  %i.hsq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hsp, <8 x float> splat (float f0x42B0C0A5))
  %i.hsr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hsq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hss = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsr, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hst = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hss, i32 1) ; 2 uses
  %i.hsu = fcmp fast ogt <8 x float> %i.hst, %i.hss
  %i.hsv = select <8 x i1> %i.hsu, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hsw = fsub fast <8 x float> %i.hst, %i.hsv   ; 2 uses
  %i.hsx = fneg fast <8 x float> %i.hsw           ; 2 uses
  %i.hsy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hsx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hsr)
  %i.hsz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hsx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hsy) ; 8 uses
  %i.hta = fmul fast <8 x float> %i.hsz, %i.hsz
  %i.htb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsz, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.htc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htb, <8 x float> nofpclass(nan inf) %i.hsz, <8 x float> splat (float f0x3C088908))
  %i.htd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htc, <8 x float> nofpclass(nan inf) %i.hsz, <8 x float> splat (float f0x3D2AA9C1))
  %i.hte = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htd, <8 x float> nofpclass(nan inf) %i.hsz, <8 x float> splat (float f0x3E2AAAAA))
  %i.htf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hte, <8 x float> nofpclass(nan inf) %i.hsz, <8 x float> splat (float 5.000000e-01))
  %i.htg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htf, <8 x float> nofpclass(nan inf) %i.hta, <8 x float> nofpclass(nan inf) %i.hsz)
  %i.hth = fadd fast <8 x float> %i.htg, splat (float 1.000000e+00)
  %i.hti = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hsw)
  %i.htj = shl <8 x i32> %i.hti, splat (i32 23)
  %i.htk = add <8 x i32> %i.htj, splat (i32 1065353216)
  %i.htl = bitcast <8 x i32> %i.htk to <8 x float>
  %i.htm = fmul fast <8 x float> %i.hth, %i.htl
  store <8 x float> %i.htm, ptr %.027154.i.i, align 1, !tbaa !60
  %i.htn = getelementptr inbounds nuw i8, ptr %.0155.i.i1129, i64 32 ; 2 uses
  %i.hto = getelementptr inbounds nuw i8, ptr %.027154.i.i, i64 32 ; 2 uses
  %i.htp = add nuw nsw i32 %.030153.i.i, 8        ; 2 uses
  %i.htq = or disjoint i32 %i.htp, 7
  %i.htr = icmp slt i32 %i.htq, %i.him
  br i1 %i.htr, label %bb.hv, label %.preheader152.loopexit.i.i, !llvm.loop !348

.preheader.i35.i1122:                             ; preds = %bb.hw, %.preheader152.i.i
  %.131.lcssa.i.i1123 = phi i32 [ %.030.lcssa.i.i1119, %.preheader152.i.i ], [ %i.hwi, %bb.hw ] ; 4 uses
  %.128.lcssa.i.i1124 = phi ptr [ %.027.lcssa.i.i1120, %.preheader152.i.i ], [ %i.hwh, %bb.hw ] ; 4 uses
  %.1.lcssa.i36.i1125 = phi ptr [ %.0.lcssa.i34.i1121, %.preheader152.i.i ], [ %i.hwg, %bb.hw ] ; 4 uses
  %i.hts = icmp slt i32 %.131.lcssa.i.i1123, %i.him
  br i1 %i.hts, label %.lr.ph168.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph168.i.i.preheader:                          ; preds = %.preheader.i35.i1122
  %.1.lcssa.i36.i11255204 = ptrtoaddr ptr %.1.lcssa.i36.i1125 to i64
  %.128.lcssa.i.i11245203 = ptrtoaddr ptr %.128.lcssa.i.i1124 to i64
  %i.htt = xor i32 %.131.lcssa.i.i1123, -1
  %i.htu = add i32 %i.him, %i.htt                 ; 2 uses
  %i.htv = zext i32 %i.htu to i64
  %i.htw = add nuw nsw i64 %i.htv, 1              ; 2 uses
  %min.iters.check5206 = icmp ult i32 %i.htu, 7
  %i.htx = sub i64 %.1.lcssa.i36.i11255204, %.128.lcssa.i.i11245203
  %diff.check5208 = icmp ugt i64 %i.htx, -32
  %or.cond6386 = select i1 %min.iters.check5206, i1 true, i1 %diff.check5208
  br i1 %or.cond6386, label %.lr.ph168.i.i.preheader6704, label %vector.ph5209

vector.ph5209:                                    ; preds = %.lr.ph168.i.i.preheader
  %n.vec5210 = and i64 %i.htw, 8589934584         ; 4 uses
  %i.hty = shl nuw nsw i64 %n.vec5210, 2          ; 2 uses
  %i.htz = getelementptr i8, ptr %.1.lcssa.i36.i1125, i64 %i.hty
  %i.hua = getelementptr i8, ptr %.128.lcssa.i.i1124, i64 %i.hty
  %i.hub = trunc i64 %n.vec5210 to i32
  %i.huc = add i32 %.131.lcssa.i.i1123, %i.hub
  %i.hud = insertelement <4 x float> poison, float %i.hpq, i64 0
  %i.hue = shufflevector <4 x float> %i.hud, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5211

vector.body5211:                                  ; preds = %vector.body5211, %vector.ph5209
  %index5212 = phi i64 [ 0, %vector.ph5209 ], [ %index.next5216, %vector.body5211 ] ; 2 uses
  %i.huf = shl i64 %index5212, 2                  ; 2 uses
  %next.gep5213 = getelementptr i8, ptr %.1.lcssa.i36.i1125, i64 %i.huf
  %next.gep5214 = getelementptr i8, ptr %.128.lcssa.i.i1124, i64 %i.huf
  %wide.load5215 = load <8 x float>, ptr %next.gep5213, align 4, !tbaa !59 ; 5 uses
  %i.hug = extractelement <8 x float> %wide.load5215, i64 0
  %i.huh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.hug)
  %i.hui = extractelement <8 x float> %wide.load5215, i64 1
  %i.huj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.hui)
  %i.huk = extractelement <8 x float> %wide.load5215, i64 2
  %i.hul = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.huk)
  %i.hum = extractelement <8 x float> %wide.load5215, i64 3
  %i.hun = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.hum)
  %i.huo = shufflevector <8 x float> %wide.load5215, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hup = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hue, <4 x float> %i.huo)
  %i.huq = insertelement <8 x float> poison, float %i.huh, i64 0
  %i.hur = insertelement <8 x float> %i.huq, float %i.huj, i64 1
  %i.hus = insertelement <8 x float> %i.hur, float %i.hul, i64 2
  %i.hut = insertelement <8 x float> %i.hus, float %i.hun, i64 3
  %i.huu = shufflevector <4 x float> %i.hup, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.huv = shufflevector <8 x float> %i.hut, <8 x float> %i.huu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.huv, ptr %next.gep5214, align 4, !tbaa !59
  %index.next5216 = add nuw i64 %index5212, 8     ; 2 uses
  %i.huw = icmp eq i64 %index.next5216, %n.vec5210
  br i1 %i.huw, label %middle.block5217, label %vector.body5211, !llvm.loop !349

middle.block5217:                                 ; preds = %vector.body5211
  %cmp.n5218 = icmp eq i64 %i.htw, %n.vec5210
  br i1 %cmp.n5218, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph168.i.i.preheader6704

.lr.ph168.i.i.preheader6704:                      ; preds = %.lr.ph168.i.i.preheader, %middle.block5217
  %.2167.i.i.ph = phi ptr [ %.1.lcssa.i36.i1125, %.lr.ph168.i.i.preheader ], [ %i.htz, %middle.block5217 ] ; 2 uses
  %.229166.i.i.ph = phi ptr [ %.128.lcssa.i.i1124, %.lr.ph168.i.i.preheader ], [ %i.hua, %middle.block5217 ] ; 2 uses
  %.232165.i.i.ph = phi i32 [ %.131.lcssa.i.i1123, %.lr.ph168.i.i.preheader ], [ %i.huc, %middle.block5217 ] ; 4 uses
  %i.hux = sub i32 %i.him, %.232165.i.i.ph
  %xtraiter7443 = and i32 %i.hux, 3               ; 2 uses
  %lcmp.mod7444.not = icmp eq i32 %xtraiter7443, 0
  br i1 %lcmp.mod7444.not, label %.lr.ph168.i.i.prol.loopexit, label %.lr.ph168.i.i.prol

.lr.ph168.i.i.prol:                               ; preds = %.lr.ph168.i.i.preheader6704, %.lr.ph168.i.i.prol
  %.2167.i.i.prol = phi ptr [ %i.hva, %.lr.ph168.i.i.prol ], [ %.2167.i.i.ph, %.lr.ph168.i.i.preheader6704 ] ; 2 uses
  %.229166.i.i.prol = phi ptr [ %i.hvb, %.lr.ph168.i.i.prol ], [ %.229166.i.i.ph, %.lr.ph168.i.i.preheader6704 ] ; 2 uses
  %.232165.i.i.prol = phi i32 [ %i.hvc, %.lr.ph168.i.i.prol ], [ %.232165.i.i.ph, %.lr.ph168.i.i.preheader6704 ]
  %prol.iter7445 = phi i32 [ %prol.iter7445.next, %.lr.ph168.i.i.prol ], [ 0, %.lr.ph168.i.i.preheader6704 ]
  %i.huy = load float, ptr %.2167.i.i.prol, align 4, !tbaa !59
  %i.huz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.huy)
  store float %i.huz, ptr %.229166.i.i.prol, align 4, !tbaa !59
  %i.hva = getelementptr inbounds nuw i8, ptr %.2167.i.i.prol, i64 4 ; 2 uses
  %i.hvb = getelementptr inbounds nuw i8, ptr %.229166.i.i.prol, i64 4 ; 2 uses
  %i.hvc = add nuw nsw i32 %.232165.i.i.prol, 1   ; 2 uses
  %prol.iter7445.next = add i32 %prol.iter7445, 1 ; 2 uses
  %prol.iter7445.cmp.not = icmp eq i32 %prol.iter7445.next, %xtraiter7443
  br i1 %prol.iter7445.cmp.not, label %.lr.ph168.i.i.prol.loopexit, label %.lr.ph168.i.i.prol, !llvm.loop !350

.lr.ph168.i.i.prol.loopexit:                      ; preds = %.lr.ph168.i.i.prol, %.lr.ph168.i.i.preheader6704
  %.2167.i.i.unr = phi ptr [ %.2167.i.i.ph, %.lr.ph168.i.i.preheader6704 ], [ %i.hva, %.lr.ph168.i.i.prol ]
  %.229166.i.i.unr = phi ptr [ %.229166.i.i.ph, %.lr.ph168.i.i.preheader6704 ], [ %i.hvb, %.lr.ph168.i.i.prol ]
  %.232165.i.i.unr = phi i32 [ %.232165.i.i.ph, %.lr.ph168.i.i.preheader6704 ], [ %i.hvc, %.lr.ph168.i.i.prol ]
  %i.hvd = sub i32 %.232165.i.i.ph, %i.him
  %i.hve = icmp ugt i32 %i.hvd, -4
  br i1 %i.hve, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph168.i.i

bb.hw:                                            ; preds = %bb.hw, %.lr.ph161.i.i
  %.1160.i.i1127 = phi ptr [ %.0.lcssa.i34.i1121, %.lr.ph161.i.i ], [ %i.hwg, %bb.hw ] ; 2 uses
  %.128159.i.i = phi ptr [ %.027.lcssa.i.i1120, %.lr.ph161.i.i ], [ %i.hwh, %bb.hw ] ; 2 uses
  %.131158.i.i = phi i32 [ %.030.lcssa.i.i1119, %.lr.ph161.i.i ], [ %i.hwi, %bb.hw ]
  %i.hvf = load <4 x float>, ptr %.1160.i.i1127, align 1, !tbaa !60
  %i.hvg = fmul fast <4 x float> %i.hvf, %i.hsn
  %i.hvh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hvg, <4 x float> splat (float f0x42B0C0A5))
  %i.hvi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hvh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hvj = fmul fast <4 x float> %i.hvi, splat (float f0x3FB8AA3B)
  %i.hvk = fadd fast <4 x float> %i.hvj, splat (float 5.000000e-01) ; 2 uses
  %i.hvl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hvk)
  %i.hvm = sitofp fast <4 x i32> %i.hvl to <4 x float> ; 2 uses
  %i.hvn = fcmp fast olt <4 x float> %i.hvk, %i.hvm
  %i.hvo = select <4 x i1> %i.hvn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hvp = fsub fast <4 x float> %i.hvm, %i.hvo   ; 2 uses
  %i.hvq = fneg fast <4 x float> %i.hvp           ; 2 uses
  %i.hvr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hvq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hvi)
  %i.hvs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hvq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hvr) ; 8 uses
  %i.hvt = fmul fast <4 x float> %i.hvs, %i.hvs
  %i.hvu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvs, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.hvv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvu, <4 x float> nofpclass(nan inf) %i.hvs, <4 x float> splat (float f0x3C088908))
  %i.hvw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvv, <4 x float> nofpclass(nan inf) %i.hvs, <4 x float> splat (float f0x3D2AA9C1))
  %i.hvx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvw, <4 x float> nofpclass(nan inf) %i.hvs, <4 x float> splat (float f0x3E2AAAAA))
  %i.hvy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvx, <4 x float> nofpclass(nan inf) %i.hvs, <4 x float> splat (float 5.000000e-01))
  %i.hvz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvy, <4 x float> nofpclass(nan inf) %i.hvt, <4 x float> nofpclass(nan inf) %i.hvs)
  %i.hwa = fadd fast <4 x float> %i.hvz, splat (float 1.000000e+00)
  %i.hwb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hvp)
  %i.hwc = shl <4 x i32> %i.hwb, splat (i32 23)
  %i.hwd = add <4 x i32> %i.hwc, splat (i32 1065353216)
  %i.hwe = bitcast <4 x i32> %i.hwd to <4 x float>
  %i.hwf = fmul fast <4 x float> %i.hwa, %i.hwe
  store <4 x float> %i.hwf, ptr %.128159.i.i, align 1, !tbaa !60
  %i.hwg = getelementptr inbounds nuw i8, ptr %.1160.i.i1127, i64 16 ; 2 uses
  %i.hwh = getelementptr inbounds nuw i8, ptr %.128159.i.i, i64 16 ; 2 uses
  %i.hwi = add nuw nsw i32 %.131158.i.i, 4        ; 3 uses
  %i.hwj = or disjoint i32 %i.hwi, 3
  %i.hwk = icmp slt i32 %i.hwj, %i.him
  br i1 %i.hwk, label %bb.hw, label %.preheader.i35.i1122, !llvm.loop !351

.lr.ph168.i.i:                                    ; preds = %.lr.ph168.i.i.prol.loopexit, %.lr.ph168.i.i
  %.2167.i.i = phi ptr [ %i.hwz, %.lr.ph168.i.i ], [ %.2167.i.i.unr, %.lr.ph168.i.i.prol.loopexit ] ; 5 uses
  %.229166.i.i = phi ptr [ %i.hxa, %.lr.ph168.i.i ], [ %.229166.i.i.unr, %.lr.ph168.i.i.prol.loopexit ] ; 5 uses
  %.232165.i.i = phi i32 [ %i.hxb, %.lr.ph168.i.i ], [ %.232165.i.i.unr, %.lr.ph168.i.i.prol.loopexit ]
  %i.hwl = load float, ptr %.2167.i.i, align 4, !tbaa !59
  %i.hwm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.hwl)
  store float %i.hwm, ptr %.229166.i.i, align 4, !tbaa !59
  %i.hwn = getelementptr inbounds nuw i8, ptr %.2167.i.i, i64 4
  %i.hwo = getelementptr inbounds nuw i8, ptr %.229166.i.i, i64 4
  %i.hwp = load float, ptr %i.hwn, align 4, !tbaa !59
  %i.hwq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.hwp)
  store float %i.hwq, ptr %i.hwo, align 4, !tbaa !59
  %i.hwr = getelementptr inbounds nuw i8, ptr %.2167.i.i, i64 8
  %i.hws = getelementptr inbounds nuw i8, ptr %.229166.i.i, i64 8
  %i.hwt = load float, ptr %i.hwr, align 4, !tbaa !59
  %i.hwu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.hwt)
  store float %i.hwu, ptr %i.hws, align 4, !tbaa !59
  %i.hwv = getelementptr inbounds nuw i8, ptr %.2167.i.i, i64 12
  %i.hww = getelementptr inbounds nuw i8, ptr %.229166.i.i, i64 12
  %i.hwx = load float, ptr %i.hwv, align 4, !tbaa !59
  %i.hwy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpq, float %i.hwx)
  store float %i.hwy, ptr %i.hww, align 4, !tbaa !59
  %i.hwz = getelementptr inbounds nuw i8, ptr %.2167.i.i, i64 16
  %i.hxa = getelementptr inbounds nuw i8, ptr %.229166.i.i, i64 16
  %i.hxb = add nuw nsw i32 %.232165.i.i, 4        ; 2 uses
  %exitcond.not.i37.i1126.3 = icmp eq i32 %i.hxb, %i.him
  br i1 %exitcond.not.i37.i1126.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph168.i.i, !llvm.loop !352

bb.hx:                                            ; preds = %bb.hp
  %i.hxc = icmp eq i32 %3, 1
  br i1 %i.hxc, label %bb.hy, label %bb.id

bb.hy:                                            ; preds = %bb.hx
  %i.hxd = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.hxe = icmp eq i32 %.sroa.speculated.i1103, 4
  br i1 %i.hxe, label %.thread.i81.i, label %bb.hz

.thread.i81.i:                                    ; preds = %bb.hy
  %i.hxf = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %i.hxg = insertelement <4 x float> poison, float %i.hxd, i64 0
  %i.hxh = shufflevector <4 x float> %i.hxg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hxi = icmp eq i32 %.sroa.speculated.i1103, 8
  br i1 %i.hxi, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.hxj = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hz, %.thread.i81.i
  %i.hxk = phi <4 x float> [ %i.hxf, %.thread.i81.i ], [ %i.hxh, %bb.hz ] ; 2 uses
  %i.hxl = shufflevector <4 x float> %i.hxk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.hxm = phi <4 x float> [ %i.hxh, %bb.ia ], [ %i.hxk, %bb.ib ]
  %i.hxn = phi fast <8 x float> [ %i.hxj, %bb.ia ], [ %i.hxl, %bb.ib ]
  %i.hxo = icmp sgt i32 %i.him, 7
  br i1 %i.hxo, label %.lr.ph.i66.i1118, label %.preheader152.i49.i

.preheader152.loopexit.i80.i:                     ; preds = %.lr.ph.i66.i1118
  %i.hxp = and i32 %i.him, 2147483640
  br label %.preheader152.i49.i

.preheader152.i49.i:                              ; preds = %.preheader152.loopexit.i80.i, %bb.ic
  %.030.lcssa.i50.i = phi i32 [ 0, %bb.ic ], [ %i.hxp, %.preheader152.loopexit.i80.i ] ; 3 uses
  %.027.lcssa.i51.i = phi ptr [ %2, %bb.ic ], [ %i.hzx, %.preheader152.loopexit.i80.i ] ; 2 uses
  %.0.lcssa.i52.i = phi ptr [ %1, %bb.ic ], [ %i.hzw, %.preheader152.loopexit.i80.i ] ; 2 uses
  %i.hxq = or disjoint i32 %.030.lcssa.i50.i, 3
  %i.hxr = icmp slt i32 %i.hxq, %i.him
  br i1 %i.hxr, label %.lr.ph161.i62.i, label %.preheader.i53.i

.lr.ph.i66.i1118:                                 ; preds = %bb.ic, %.lr.ph.i66.i1118
  %.0155.i67.i = phi ptr [ %i.hzw, %.lr.ph.i66.i1118 ], [ %1, %bb.ic ] ; 2 uses
  %.027154.i68.i = phi ptr [ %i.hzx, %.lr.ph.i66.i1118 ], [ %2, %bb.ic ] ; 2 uses
  %.030153.i69.i = phi i32 [ %i.hzy, %.lr.ph.i66.i1118 ], [ 0, %bb.ic ]
  %i.hxs = load <8 x float>, ptr %.0155.i67.i, align 1, !tbaa !60
  %i.hxt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hxs, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.hxu = bitcast <8 x float> %i.hxt to <8 x i32>
  %i.hxv = bitcast <8 x float> %i.hxt to <8 x i32>
  %i.hxw = and <8 x i32> %i.hxv, splat (i32 -2139095041)
  %i.hxx = or disjoint <8 x i32> %i.hxw, splat (i32 1056964608)
  %i.hxy = bitcast <8 x i32> %i.hxx to <8 x float> ; 3 uses
  %i.hxz = lshr <8 x i32> %i.hxu, splat (i32 23)
  %i.hya = add nsw <8 x i32> %i.hxz, splat (i32 -127)
  %i.hyb = sitofp fast <8 x i32> %i.hya to <8 x float> ; 2 uses
  %i.hyc = fadd fast <8 x float> %i.hyb, splat (float 1.000000e+00)
  %i.hyd = fcmp fast olt <8 x float> %i.hxy, splat (float f0x3F3504F3) ; 2 uses
  %i.hye = select <8 x i1> %i.hyd, <8 x float> %i.hxy, <8 x float> zeroinitializer
  %i.hyf = fadd fast <8 x float> %i.hxy, splat (float -1.000000e+00)
  %i.hyg = select fast <8 x i1> %i.hyd, <8 x float> %i.hyb, <8 x float> %i.hyc ; 2 uses
  %i.hyh = fadd fast <8 x float> %i.hyf, %i.hye   ; 12 uses
  %i.hyi = fmul fast <8 x float> %i.hyh, %i.hyh   ; 2 uses
  %i.hyj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyh, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hyk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyj, <8 x float> nofpclass(nan inf) %i.hyh, <8 x float> splat (float f0x3DEF251A))
  %i.hyl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyk, <8 x float> nofpclass(nan inf) %i.hyh, <8 x float> splat (float f0xBDFE5D4F))
  %i.hym = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyl, <8 x float> nofpclass(nan inf) %i.hyh, <8 x float> splat (float f0x3E11E9BF))
  %i.hyn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hym, <8 x float> nofpclass(nan inf) %i.hyh, <8 x float> splat (float f0xBE2AAE50))
  %i.hyo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyn, <8 x float> nofpclass(nan inf) %i.hyh, <8 x float> splat (float f0x3E4CCEAC))
  %i.hyp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyo, <8 x float> nofpclass(nan inf) %i.hyh, <8 x float> splat (float f0xBE7FFFFC))
  %i.hyq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyp, <8 x float> nofpclass(nan inf) %i.hyh, <8 x float> splat (float f0x3EAAAAAA))
  %i.hyr = fmul fast <8 x float> %i.hyi, %i.hyh
  %i.hys = fmul fast <8 x float> %i.hyr, %i.hyq
  %i.hyt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hys)
  %i.hyu = fneg fast <8 x float> %i.hyi
  %i.hyv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hyu, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hyt)
  %i.hyw = fadd fast <8 x float> %i.hyv, %i.hyh
  %i.hyx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hyg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hyw)
  %i.hyy = fmul fast <8 x float> %i.hyx, %i.hxn
  %i.hyz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hyy, <8 x float> splat (float f0x42B0C0A5))
  %i.hza = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hyz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hzb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hza, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hzc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hzb, i32 1) ; 2 uses
  %i.hzd = fcmp fast ogt <8 x float> %i.hzc, %i.hzb
  %i.hze = select <8 x i1> %i.hzd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hzf = fsub fast <8 x float> %i.hzc, %i.hze   ; 2 uses
  %i.hzg = fneg fast <8 x float> %i.hzf           ; 2 uses
  %i.hzh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hzg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hza)
  %i.hzi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hzg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hzh) ; 8 uses
  %i.hzj = fmul fast <8 x float> %i.hzi, %i.hzi
  %i.hzk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hzi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hzl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hzk, <8 x float> nofpclass(nan inf) %i.hzi, <8 x float> splat (float f0x3C088908))
  %i.hzm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hzl, <8 x float> nofpclass(nan inf) %i.hzi, <8 x float> splat (float f0x3D2AA9C1))
  %i.hzn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hzm, <8 x float> nofpclass(nan inf) %i.hzi, <8 x float> splat (float f0x3E2AAAAA))
  %i.hzo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hzn, <8 x float> nofpclass(nan inf) %i.hzi, <8 x float> splat (float 5.000000e-01))
  %i.hzp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hzo, <8 x float> nofpclass(nan inf) %i.hzj, <8 x float> nofpclass(nan inf) %i.hzi)
  %i.hzq = fadd fast <8 x float> %i.hzp, splat (float 1.000000e+00)
  %i.hzr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hzf)
  %i.hzs = shl <8 x i32> %i.hzr, splat (i32 23)
  %i.hzt = add <8 x i32> %i.hzs, splat (i32 1065353216)
  %i.hzu = bitcast <8 x i32> %i.hzt to <8 x float>
  %i.hzv = fmul fast <8 x float> %i.hzq, %i.hzu
  store <8 x float> %i.hzv, ptr %.027154.i68.i, align 1, !tbaa !60
  %i.hzw = getelementptr inbounds nuw i8, ptr %.0155.i67.i, i64 32 ; 2 uses
  %i.hzx = getelementptr inbounds nuw i8, ptr %.027154.i68.i, i64 32 ; 2 uses
  %i.hzy = add nuw nsw i32 %.030153.i69.i, 8      ; 2 uses
  %i.hzz = or disjoint i32 %i.hzy, 7
  %i.iaa = icmp slt i32 %i.hzz, %i.him
  br i1 %i.iaa, label %.lr.ph.i66.i1118, label %.preheader152.loopexit.i80.i, !llvm.loop !353

.preheader.i53.i:                                 ; preds = %.lr.ph161.i62.i, %.preheader152.i49.i
  %.131.lcssa.i54.i = phi i32 [ %.030.lcssa.i50.i, %.preheader152.i49.i ], [ %i.idv, %.lr.ph161.i62.i ] ; 4 uses
  %.128.lcssa.i55.i = phi ptr [ %.027.lcssa.i51.i, %.preheader152.i49.i ], [ %i.idu, %.lr.ph161.i62.i ] ; 4 uses
  %.1.lcssa.i56.i = phi ptr [ %.0.lcssa.i52.i, %.preheader152.i49.i ], [ %i.idt, %.lr.ph161.i62.i ] ; 4 uses
  %i.iab = icmp slt i32 %.131.lcssa.i54.i, %i.him
  br i1 %i.iab, label %.lr.ph168.i57.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph168.i57.i.preheader:                        ; preds = %.preheader.i53.i
  %.1.lcssa.i56.i5181 = ptrtoaddr ptr %.1.lcssa.i56.i to i64
  %.128.lcssa.i55.i5180 = ptrtoaddr ptr %.128.lcssa.i55.i to i64
  %i.iac = xor i32 %.131.lcssa.i54.i, -1
  %i.iad = add i32 %i.him, %i.iac                 ; 2 uses
  %i.iae = zext i32 %i.iad to i64
  %i.iaf = add nuw nsw i64 %i.iae, 1              ; 2 uses
  %min.iters.check5183 = icmp ult i32 %i.iad, 7
  %i.iag = sub i64 %.1.lcssa.i56.i5181, %.128.lcssa.i55.i5180
  %diff.check5185 = icmp ugt i64 %i.iag, -32
  %or.cond6387 = select i1 %min.iters.check5183, i1 true, i1 %diff.check5185
  br i1 %or.cond6387, label %.lr.ph168.i57.i.preheader6711, label %vector.ph5186

vector.ph5186:                                    ; preds = %.lr.ph168.i57.i.preheader
  %n.vec5187 = and i64 %i.iaf, 8589934584         ; 4 uses
  %i.iah = shl nuw nsw i64 %n.vec5187, 2          ; 2 uses
  %i.iai = getelementptr i8, ptr %.1.lcssa.i56.i, i64 %i.iah
  %i.iaj = getelementptr i8, ptr %.128.lcssa.i55.i, i64 %i.iah
  %i.iak = trunc i64 %n.vec5187 to i32
  %i.ial = add i32 %.131.lcssa.i54.i, %i.iak
  %i.iam = insertelement <4 x float> poison, float %i.hxd, i64 0
  %i.ian = shufflevector <4 x float> %i.iam, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5188

vector.body5188:                                  ; preds = %vector.body5188, %vector.ph5186
  %index5189 = phi i64 [ 0, %vector.ph5186 ], [ %index.next5193, %vector.body5188 ] ; 2 uses
  %i.iao = shl i64 %index5189, 2                  ; 2 uses
  %next.gep5190 = getelementptr i8, ptr %.1.lcssa.i56.i, i64 %i.iao
  %next.gep5191 = getelementptr i8, ptr %.128.lcssa.i55.i, i64 %i.iao
  %wide.load5192 = load <8 x float>, ptr %next.gep5190, align 4, !tbaa !59 ; 5 uses
  %i.iap = extractelement <8 x float> %wide.load5192, i64 0
  %i.iaq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iap, float %i.hxd)
  %i.iar = extractelement <8 x float> %wide.load5192, i64 1
  %i.ias = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iar, float %i.hxd)
  %i.iat = extractelement <8 x float> %wide.load5192, i64 2
  %i.iau = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iat, float %i.hxd)
  %i.iav = extractelement <8 x float> %wide.load5192, i64 3
  %i.iaw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iav, float %i.hxd)
  %i.iax = shufflevector <8 x float> %wide.load5192, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.iay = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.iax, <4 x float> %i.ian)
  %i.iaz = insertelement <8 x float> poison, float %i.iaq, i64 0
  %i.iba = insertelement <8 x float> %i.iaz, float %i.ias, i64 1
  %i.ibb = insertelement <8 x float> %i.iba, float %i.iau, i64 2
  %i.ibc = insertelement <8 x float> %i.ibb, float %i.iaw, i64 3
  %i.ibd = shufflevector <4 x float> %i.iay, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ibe = shufflevector <8 x float> %i.ibc, <8 x float> %i.ibd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.ibe, ptr %next.gep5191, align 4, !tbaa !59
  %index.next5193 = add nuw i64 %index5189, 8     ; 2 uses
  %i.ibf = icmp eq i64 %index.next5193, %n.vec5187
  br i1 %i.ibf, label %middle.block5194, label %vector.body5188, !llvm.loop !354

middle.block5194:                                 ; preds = %vector.body5188
  %cmp.n5195 = icmp eq i64 %i.iaf, %n.vec5187
  br i1 %cmp.n5195, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph168.i57.i.preheader6711

.lr.ph168.i57.i.preheader6711:                    ; preds = %.lr.ph168.i57.i.preheader, %middle.block5194
  %.2167.i58.i.ph = phi ptr [ %.1.lcssa.i56.i, %.lr.ph168.i57.i.preheader ], [ %i.iai, %middle.block5194 ] ; 2 uses
  %.229166.i59.i.ph = phi ptr [ %.128.lcssa.i55.i, %.lr.ph168.i57.i.preheader ], [ %i.iaj, %middle.block5194 ] ; 2 uses
  %.232165.i60.i.ph = phi i32 [ %.131.lcssa.i54.i, %.lr.ph168.i57.i.preheader ], [ %i.ial, %middle.block5194 ] ; 4 uses
  %i.ibg = sub i32 %i.him, %.232165.i60.i.ph
  %xtraiter7440 = and i32 %i.ibg, 3               ; 2 uses
  %lcmp.mod7441.not = icmp eq i32 %xtraiter7440, 0
  br i1 %lcmp.mod7441.not, label %.lr.ph168.i57.i.prol.loopexit, label %.lr.ph168.i57.i.prol

.lr.ph168.i57.i.prol:                             ; preds = %.lr.ph168.i57.i.preheader6711, %.lr.ph168.i57.i.prol
  %.2167.i58.i.prol = phi ptr [ %i.ibj, %.lr.ph168.i57.i.prol ], [ %.2167.i58.i.ph, %.lr.ph168.i57.i.preheader6711 ] ; 2 uses
  %.229166.i59.i.prol = phi ptr [ %i.ibk, %.lr.ph168.i57.i.prol ], [ %.229166.i59.i.ph, %.lr.ph168.i57.i.preheader6711 ] ; 2 uses
  %.232165.i60.i.prol = phi i32 [ %i.ibl, %.lr.ph168.i57.i.prol ], [ %.232165.i60.i.ph, %.lr.ph168.i57.i.preheader6711 ]
  %prol.iter7442 = phi i32 [ %prol.iter7442.next, %.lr.ph168.i57.i.prol ], [ 0, %.lr.ph168.i57.i.preheader6711 ]
  %i.ibh = load float, ptr %.2167.i58.i.prol, align 4, !tbaa !59
  %i.ibi = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ibh, float %i.hxd)
  store float %i.ibi, ptr %.229166.i59.i.prol, align 4, !tbaa !59
  %i.ibj = getelementptr inbounds nuw i8, ptr %.2167.i58.i.prol, i64 4 ; 2 uses
  %i.ibk = getelementptr inbounds nuw i8, ptr %.229166.i59.i.prol, i64 4 ; 2 uses
  %i.ibl = add nuw nsw i32 %.232165.i60.i.prol, 1 ; 2 uses
  %prol.iter7442.next = add i32 %prol.iter7442, 1 ; 2 uses
  %prol.iter7442.cmp.not = icmp eq i32 %prol.iter7442.next, %xtraiter7440
  br i1 %prol.iter7442.cmp.not, label %.lr.ph168.i57.i.prol.loopexit, label %.lr.ph168.i57.i.prol, !llvm.loop !355

.lr.ph168.i57.i.prol.loopexit:                    ; preds = %.lr.ph168.i57.i.prol, %.lr.ph168.i57.i.preheader6711
  %.2167.i58.i.unr = phi ptr [ %.2167.i58.i.ph, %.lr.ph168.i57.i.preheader6711 ], [ %i.ibj, %.lr.ph168.i57.i.prol ]
  %.229166.i59.i.unr = phi ptr [ %.229166.i59.i.ph, %.lr.ph168.i57.i.preheader6711 ], [ %i.ibk, %.lr.ph168.i57.i.prol ]
  %.232165.i60.i.unr = phi i32 [ %.232165.i60.i.ph, %.lr.ph168.i57.i.preheader6711 ], [ %i.ibl, %.lr.ph168.i57.i.prol ]
  %i.ibm = sub i32 %.232165.i60.i.ph, %i.him
  %i.ibn = icmp ugt i32 %i.ibm, -4
  br i1 %i.ibn, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph168.i57.i

.lr.ph161.i62.i:                                  ; preds = %.preheader152.i49.i, %.lr.ph161.i62.i
  %.1160.i63.i = phi ptr [ %i.idt, %.lr.ph161.i62.i ], [ %.0.lcssa.i52.i, %.preheader152.i49.i ] ; 2 uses
  %.128159.i64.i = phi ptr [ %i.idu, %.lr.ph161.i62.i ], [ %.027.lcssa.i51.i, %.preheader152.i49.i ] ; 2 uses
  %.131158.i65.i = phi i32 [ %i.idv, %.lr.ph161.i62.i ], [ %.030.lcssa.i50.i, %.preheader152.i49.i ]
  %i.ibo = load <4 x float>, ptr %.1160.i63.i, align 1, !tbaa !60
  %i.ibp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ibo, <4 x float> splat (float f0x00800000))
  %i.ibq = bitcast <4 x float> %i.ibp to <4 x i32> ; 2 uses
  %i.ibr = lshr <4 x i32> %i.ibq, splat (i32 23)
  %i.ibs = and <4 x i32> %i.ibq, splat (i32 -2139095041)
  %i.ibt = or disjoint <4 x i32> %i.ibs, splat (i32 1056964608)
  %i.ibu = bitcast <4 x i32> %i.ibt to <4 x float> ; 3 uses
  %i.ibv = add nsw <4 x i32> %i.ibr, splat (i32 -127)
  %i.ibw = sitofp fast <4 x i32> %i.ibv to <4 x float> ; 2 uses
  %i.ibx = fadd fast <4 x float> %i.ibw, splat (float 1.000000e+00)
  %i.iby = fcmp fast olt <4 x float> %i.ibu, splat (float f0x3F3504F3) ; 2 uses
  %i.ibz = select <4 x i1> %i.iby, <4 x float> %i.ibu, <4 x float> zeroinitializer
  %i.ica = fadd fast <4 x float> %i.ibu, splat (float -1.000000e+00)
  %i.icb = select fast <4 x i1> %i.iby, <4 x float> %i.ibw, <4 x float> %i.ibx ; 2 uses
  %i.icc = fadd fast <4 x float> %i.ica, %i.ibz   ; 12 uses
  %i.icd = fmul fast <4 x float> %i.icc, %i.icc   ; 2 uses
  %i.ice = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.icc, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.icf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ice, <4 x float> nofpclass(nan inf) %i.icc, <4 x float> splat (float f0x3DEF251A))
  %i.icg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.icf, <4 x float> nofpclass(nan inf) %i.icc, <4 x float> splat (float f0xBDFE5D4F))
  %i.ich = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.icg, <4 x float> nofpclass(nan inf) %i.icc, <4 x float> splat (float f0x3E11E9BF))
  %i.ici = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ich, <4 x float> nofpclass(nan inf) %i.icc, <4 x float> splat (float f0xBE2AAE50))
  %i.icj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ici, <4 x float> nofpclass(nan inf) %i.icc, <4 x float> splat (float f0x3E4CCEAC))
  %i.ick = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.icj, <4 x float> nofpclass(nan inf) %i.icc, <4 x float> splat (float f0xBE7FFFFC))
  %i.icl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ick, <4 x float> nofpclass(nan inf) %i.icc, <4 x float> splat (float f0x3EAAAAAA))
  %i.icm = fmul fast <4 x float> %i.icd, %i.icc
  %i.icn = fmul fast <4 x float> %i.icm, %i.icl
  %i.ico = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.icb, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.icn)
  %i.icp = fneg fast <4 x float> %i.icd
  %i.icq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.icp, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ico)
  %i.icr = fadd fast <4 x float> %i.icq, %i.icc
  %i.ics = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.icb, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.icr)
  %i.ict = fmul fast <4 x float> %i.ics, %i.hxm
  %i.icu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ict, <4 x float> splat (float f0x42B0C0A5))
  %i.icv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.icu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.icw = fmul fast <4 x float> %i.icv, splat (float f0x3FB8AA3B)
  %i.icx = fadd fast <4 x float> %i.icw, splat (float 5.000000e-01) ; 2 uses
  %i.icy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.icx)
  %i.icz = sitofp fast <4 x i32> %i.icy to <4 x float> ; 2 uses
  %i.ida = fcmp fast olt <4 x float> %i.icx, %i.icz
  %i.idb = select <4 x i1> %i.ida, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.idc = fsub fast <4 x float> %i.icz, %i.idb   ; 2 uses
  %i.idd = fneg fast <4 x float> %i.idc           ; 2 uses
  %i.ide = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.idd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.icv)
  %i.idf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.idd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ide) ; 8 uses
  %i.idg = fmul fast <4 x float> %i.idf, %i.idf
  %i.idh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.idf, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.idi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.idh, <4 x float> nofpclass(nan inf) %i.idf, <4 x float> splat (float f0x3C088908))
  %i.idj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.idi, <4 x float> nofpclass(nan inf) %i.idf, <4 x float> splat (float f0x3D2AA9C1))
  %i.idk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.idj, <4 x float> nofpclass(nan inf) %i.idf, <4 x float> splat (float f0x3E2AAAAA))
  %i.idl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.idk, <4 x float> nofpclass(nan inf) %i.idf, <4 x float> splat (float 5.000000e-01))
  %i.idm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.idl, <4 x float> nofpclass(nan inf) %i.idg, <4 x float> nofpclass(nan inf) %i.idf)
  %i.idn = fadd fast <4 x float> %i.idm, splat (float 1.000000e+00)
  %i.ido = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.idc)
  %i.idp = shl <4 x i32> %i.ido, splat (i32 23)
  %i.idq = add <4 x i32> %i.idp, splat (i32 1065353216)
  %i.idr = bitcast <4 x i32> %i.idq to <4 x float>
  %i.ids = fmul fast <4 x float> %i.idn, %i.idr
  store <4 x float> %i.ids, ptr %.128159.i64.i, align 1, !tbaa !60
  %i.idt = getelementptr inbounds nuw i8, ptr %.1160.i63.i, i64 16 ; 2 uses
  %i.idu = getelementptr inbounds nuw i8, ptr %.128159.i64.i, i64 16 ; 2 uses
  %i.idv = add nuw nsw i32 %.131158.i65.i, 4      ; 3 uses
  %i.idw = or disjoint i32 %i.idv, 3
  %i.idx = icmp slt i32 %i.idw, %i.him
  br i1 %i.idx, label %.lr.ph161.i62.i, label %.preheader.i53.i, !llvm.loop !356

.lr.ph168.i57.i:                                  ; preds = %.lr.ph168.i57.i.prol.loopexit, %.lr.ph168.i57.i
  %.2167.i58.i = phi ptr [ %i.iem, %.lr.ph168.i57.i ], [ %.2167.i58.i.unr, %.lr.ph168.i57.i.prol.loopexit ] ; 5 uses
  %.229166.i59.i = phi ptr [ %i.ien, %.lr.ph168.i57.i ], [ %.229166.i59.i.unr, %.lr.ph168.i57.i.prol.loopexit ] ; 5 uses
  %.232165.i60.i = phi i32 [ %i.ieo, %.lr.ph168.i57.i ], [ %.232165.i60.i.unr, %.lr.ph168.i57.i.prol.loopexit ]
  %i.idy = load float, ptr %.2167.i58.i, align 4, !tbaa !59
  %i.idz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.idy, float %i.hxd)
  store float %i.idz, ptr %.229166.i59.i, align 4, !tbaa !59
  %i.iea = getelementptr inbounds nuw i8, ptr %.2167.i58.i, i64 4
  %i.ieb = getelementptr inbounds nuw i8, ptr %.229166.i59.i, i64 4
  %i.iec = load float, ptr %i.iea, align 4, !tbaa !59
  %i.ied = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iec, float %i.hxd)
  store float %i.ied, ptr %i.ieb, align 4, !tbaa !59
  %i.iee = getelementptr inbounds nuw i8, ptr %.2167.i58.i, i64 8
  %i.ief = getelementptr inbounds nuw i8, ptr %.229166.i59.i, i64 8
  %i.ieg = load float, ptr %i.iee, align 4, !tbaa !59
  %i.ieh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ieg, float %i.hxd)
  store float %i.ieh, ptr %i.ief, align 4, !tbaa !59
  %i.iei = getelementptr inbounds nuw i8, ptr %.2167.i58.i, i64 12
  %i.iej = getelementptr inbounds nuw i8, ptr %.229166.i59.i, i64 12
  %i.iek = load float, ptr %i.iei, align 4, !tbaa !59
  %i.iel = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iek, float %i.hxd)
  store float %i.iel, ptr %i.iej, align 4, !tbaa !59
  %i.iem = getelementptr inbounds nuw i8, ptr %.2167.i58.i, i64 16
  %i.ien = getelementptr inbounds nuw i8, ptr %.229166.i59.i, i64 16
  %i.ieo = add nuw nsw i32 %.232165.i60.i, 4      ; 2 uses
  %exitcond.not.i61.i.3 = icmp eq i32 %i.ieo, %i.him
  br i1 %exitcond.not.i61.i.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph168.i57.i, !llvm.loop !357

bb.id:                                            ; preds = %bb.hx, %bb.hm
  %i.iep = icmp eq i32 %6, 1
  br i1 %i.iep, label %bb.ie, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ie:                                            ; preds = %bb.id
  %i.ieq = icmp eq i32 %3, %4
  br i1 %i.ieq, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.ier = icmp eq i32 %.sroa.speculated.i1103, 8
  %i.ies = icmp sgt i32 %.sroa.speculated132.i, 0
  %or.cond.i.i1110 = and i1 %i.ies, %i.ier
  br i1 %or.cond.i.i1110, label %.lr.ph.i93.i, label %.loopexit243.i.i

.lr.ph.i93.i:                                     ; preds = %bb.if, %.lr.ph.i93.i
  %.0247.i.i = phi ptr [ %i.iha, %.lr.ph.i93.i ], [ %0, %bb.if ] ; 2 uses
  %.032246.i.i = phi ptr [ %i.ihb, %.lr.ph.i93.i ], [ %1, %bb.if ] ; 2 uses
  %.038245.i.i = phi ptr [ %i.ihc, %.lr.ph.i93.i ], [ %2, %bb.if ] ; 2 uses
  %.042244.i.i = phi i32 [ %i.ihd, %.lr.ph.i93.i ], [ 0, %bb.if ]
  %i.iet = load <8 x float>, ptr %.0247.i.i, align 1, !tbaa !60
  %i.ieu = load float, ptr %.032246.i.i, align 4, !tbaa !59
  %i.iev = insertelement <8 x float> poison, float %i.ieu, i64 0
  %i.iew = shufflevector <8 x float> %i.iev, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.iew, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.iey = bitcast <8 x float> %i.iex to <8 x i32>
  %i.iez = bitcast <8 x float> %i.iex to <8 x i32>
  %i.ifa = and <8 x i32> %i.iez, splat (i32 -2139095041)
  %i.ifb = or disjoint <8 x i32> %i.ifa, splat (i32 1056964608)
  %i.ifc = bitcast <8 x i32> %i.ifb to <8 x float> ; 3 uses
  %i.ifd = lshr <8 x i32> %i.iey, splat (i32 23)
  %i.ife = add nsw <8 x i32> %i.ifd, splat (i32 -127)
  %i.iff = sitofp fast <8 x i32> %i.ife to <8 x float> ; 2 uses
  %i.ifg = fadd fast <8 x float> %i.iff, splat (float 1.000000e+00)
  %i.ifh = fcmp fast olt <8 x float> %i.ifc, splat (float f0x3F3504F3) ; 2 uses
  %i.ifi = select <8 x i1> %i.ifh, <8 x float> %i.ifc, <8 x float> zeroinitializer
  %i.ifj = fadd fast <8 x float> %i.ifc, splat (float -1.000000e+00)
  %i.ifk = select fast <8 x i1> %i.ifh, <8 x float> %i.iff, <8 x float> %i.ifg ; 2 uses
  %i.ifl = fadd fast <8 x float> %i.ifj, %i.ifi   ; 12 uses
  %i.ifm = fmul fast <8 x float> %i.ifl, %i.ifl   ; 2 uses
  %i.ifn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifl, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ifo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifn, <8 x float> nofpclass(nan inf) %i.ifl, <8 x float> splat (float f0x3DEF251A))
  %i.ifp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifo, <8 x float> nofpclass(nan inf) %i.ifl, <8 x float> splat (float f0xBDFE5D4F))
  %i.ifq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifp, <8 x float> nofpclass(nan inf) %i.ifl, <8 x float> splat (float f0x3E11E9BF))
  %i.ifr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifq, <8 x float> nofpclass(nan inf) %i.ifl, <8 x float> splat (float f0xBE2AAE50))
  %i.ifs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifr, <8 x float> nofpclass(nan inf) %i.ifl, <8 x float> splat (float f0x3E4CCEAC))
  %i.ift = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifs, <8 x float> nofpclass(nan inf) %i.ifl, <8 x float> splat (float f0xBE7FFFFC))
  %i.ifu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ift, <8 x float> nofpclass(nan inf) %i.ifl, <8 x float> splat (float f0x3EAAAAAA))
  %i.ifv = fmul fast <8 x float> %i.ifm, %i.ifl
  %i.ifw = fmul fast <8 x float> %i.ifv, %i.ifu
  %i.ifx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifk, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ifw)
  %i.ify = fneg fast <8 x float> %i.ifm
  %i.ifz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ify, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ifx)
  %i.iga = fadd fast <8 x float> %i.ifz, %i.ifl
  %i.igb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ifk, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.iga)
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.jdw = or <4 x i32> %i.jdt, %i.jdv
  store <4 x i32> %i.jdw, ptr %.135117.i.i, align 1, !tbaa !60
  %i.jdx = getelementptr inbounds nuw i8, ptr %.1120.i.i, i64 16 ; 2 uses
  %i.jdy = getelementptr inbounds nuw i8, ptr %.129119.i.i, i64 16 ; 2 uses
  %i.jdz = getelementptr inbounds nuw i8, ptr %.135117.i.i, i64 16 ; 2 uses
  %i.jea = add nuw nsw i32 %.132118.i.i, 4        ; 3 uses
  %i.jeb = or disjoint i32 %i.jea, 3
  %i.jec = icmp slt i32 %i.jeb, %i.izc
  br i1 %i.jec, label %.lr.ph121.i.i, label %.preheader.i.i1173, !llvm.loop !369

.lr.ph130.i.i:                                    ; preds = %.lr.ph130.i.i.prol.loopexit, %.lr.ph130.i.i
  %.2129.i.i = phi ptr [ %i.jey, %.lr.ph130.i.i ], [ %.2129.i.i.unr, %.lr.ph130.i.i.prol.loopexit ] ; 5 uses
  %.230128.i.i = phi ptr [ %i.jez, %.lr.ph130.i.i ], [ %.230128.i.i.unr, %.lr.ph130.i.i.prol.loopexit ] ; 5 uses
  %.233127.i.i = phi i32 [ %i.jfb, %.lr.ph130.i.i ], [ %.233127.i.i.unr, %.lr.ph130.i.i.prol.loopexit ]
  %.236126.i.i = phi ptr [ %i.jfa, %.lr.ph130.i.i ], [ %.236126.i.i.unr, %.lr.ph130.i.i.prol.loopexit ] ; 5 uses
  %i.jed = load float, ptr %.2129.i.i, align 4, !tbaa !59
  %i.jee = load float, ptr %.230128.i.i, align 4, !tbaa !59
  %i.jef = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jed, float %i.jee)
  store float %i.jef, ptr %.236126.i.i, align 4, !tbaa !59
  %i.jeg = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 4
  %i.jeh = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 4
  %i.jei = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 4
  %i.jej = load float, ptr %i.jeg, align 4, !tbaa !59
  %i.jek = load float, ptr %i.jeh, align 4, !tbaa !59
  %i.jel = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jej, float %i.jek)
  store float %i.jel, ptr %i.jei, align 4, !tbaa !59
  %i.jem = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 8
  %i.jen = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 8
  %i.jeo = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 8
  %i.jep = load float, ptr %i.jem, align 4, !tbaa !59
  %i.jeq = load float, ptr %i.jen, align 4, !tbaa !59
  %i.jer = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jep, float %i.jeq)
  store float %i.jer, ptr %i.jeo, align 4, !tbaa !59
  %i.jes = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 12
  %i.jet = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 12
  %i.jeu = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 12
  %i.jev = load float, ptr %i.jes, align 4, !tbaa !59
  %i.jew = load float, ptr %i.jet, align 4, !tbaa !59
  %i.jex = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jev, float %i.jew)
  store float %i.jex, ptr %i.jeu, align 4, !tbaa !59
  %i.jey = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 16
  %i.jez = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 16
  %i.jfa = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 16
  %i.jfb = add nuw nsw i32 %.233127.i.i, 4        ; 2 uses
  %exitcond.not.i.i1178.3 = icmp eq i32 %i.jfb, %i.izc
  br i1 %exitcond.not.i.i1178.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph130.i.i, !llvm.loop !370

bb.ir:                                            ; preds = %bb.ip
  %i.jfc = icmp eq i32 %4, 1
  br i1 %i.jfc, label %bb.is, label %bb.iz

bb.is:                                            ; preds = %bb.ir
  %i.jfd = load float, ptr %1, align 4, !tbaa !59 ; 11 uses
  %i.jfe = icmp eq i32 %.sroa.speculated.i1143, 4
  br i1 %i.jfe, label %.thread.i.i1168, label %bb.it

.thread.i.i1168:                                  ; preds = %bb.is
  %i.jff = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.iv

bb.it:                                            ; preds = %bb.is
  %i.jfg = insertelement <4 x float> poison, float %i.jfd, i64 0
  %i.jfh = shufflevector <4 x float> %i.jfg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jfi = icmp eq i32 %.sroa.speculated.i1143, 8
  br i1 %i.jfi, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.jfj = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it, %.thread.i.i1168
  %i.jfk = phi <4 x float> [ %i.jff, %.thread.i.i1168 ], [ %i.jfh, %bb.it ] ; 2 uses
  %i.jfl = shufflevector <4 x float> %i.jfk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.jfm = phi <4 x float> [ %i.jfh, %bb.iu ], [ %i.jfk, %bb.iv ] ; 4 uses
  %i.jfn = phi fast <8 x float> [ %i.jfj, %bb.iu ], [ %i.jfl, %bb.iv ] ; 4 uses
  %i.jfo = icmp sgt i32 %i.izc, 7
  br i1 %i.jfo, label %.lr.ph.i39.i, label %.preheader108.i.i

.lr.ph.i39.i:                                     ; preds = %bb.iw
  %i.jfp = fcmp fast ueq <8 x float> %i.jfn, zeroinitializer ; 2 uses
  %i.jfq = fcmp fast olt <8 x float> %i.jfn, zeroinitializer
  %i.jfr = bitcast <8 x float> %i.jfn to <8 x i32>
  %isneg.inv105.i.i = icmp slt <8 x i32> %i.jfr, zeroinitializer
  %i.jfs = select <8 x i1> %isneg.inv105.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.jft = fdiv fast <8 x float> splat (float 1.000000e+00), %i.jfn
  br label %bb.ix

.preheader108.loopexit.i.i:                       ; preds = %bb.ix
  %i.jfu = and i32 %i.izc, 2147483640
  br label %.preheader108.i.i

.preheader108.i.i:                                ; preds = %.preheader108.loopexit.i.i, %bb.iw
  %.030.lcssa.i.i1160 = phi i32 [ 0, %bb.iw ], [ %i.jfu, %.preheader108.loopexit.i.i ] ; 3 uses
  %.027.lcssa.i.i1161 = phi ptr [ %2, %bb.iw ], [ %i.jhp, %.preheader108.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1162 = phi ptr [ %0, %bb.iw ], [ %i.jho, %.preheader108.loopexit.i.i ] ; 2 uses
  %i.jfv = or disjoint i32 %.030.lcssa.i.i1160, 3
  %i.jfw = icmp slt i32 %i.jfv, %i.izc
  br i1 %i.jfw, label %.lr.ph117.i.i, label %.preheader.i35.i1163

.lr.ph117.i.i:                                    ; preds = %.preheader108.i.i
  %i.jfx = fcmp fast oeq <4 x float> %i.jfm, zeroinitializer ; 2 uses
  %i.jfy = fcmp fast olt <4 x float> %i.jfm, zeroinitializer
  %i.jfz = bitcast <4 x float> %i.jfm to <4 x i32>
  %isneg.inv.i38.i = icmp slt <4 x i32> %i.jfz, zeroinitializer
  %i.jga = select <4 x i1> %isneg.inv.i38.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.jgb = fdiv fast <4 x float> splat (float 1.000000e+00), %i.jfm
  br label %bb.iy

bb.ix:                                            ; preds = %bb.ix, %.lr.ph.i39.i
  %.0111.i.i = phi ptr [ %0, %.lr.ph.i39.i ], [ %i.jho, %bb.ix ] ; 2 uses
  %.027110.i.i = phi ptr [ %2, %.lr.ph.i39.i ], [ %i.jhp, %bb.ix ] ; 2 uses
  %.030109.i.i = phi i32 [ 0, %.lr.ph.i39.i ], [ %i.jhq, %bb.ix ]
  %i.jgc = load <8 x float>, ptr %.0111.i.i, align 1, !tbaa !60 ; 4 uses
  %i.jgd = fcmp fast ueq <8 x float> %i.jgc, zeroinitializer ; 2 uses
  %.not107.i.i = or <8 x i1> %i.jfp, %i.jgd
  %i.jge = bitcast <8 x float> %i.jgc to <8 x i32>
  %i.jgf = and <8 x i32> %i.jge, splat (i32 -2147483648)
  %i.jgg = fcmp fast olt <8 x float> %i.jgc, zeroinitializer
  %i.jgh = select <8 x i1> %i.jgg, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.jgi = select <8 x i1> %i.jfq, <8 x float> %i.jgh, <8 x float> zeroinitializer
  %i.jgj = fmul fast <8 x float> %i.jgc, %i.jft   ; 2 uses
  %i.jgk = bitcast <8 x float> %i.jgj to <8 x i32>
  %i.jgl = and <8 x i32> %i.jgk, splat (i32 -2147483648)
  %i.jgm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jgj) ; 3 uses
  %i.jgn = fcmp fast ogt <8 x float> %i.jgm, splat (float 1.000000e+00) ; 2 uses
  %i.jgo = select <8 x i1> %i.jgn, <8 x float> splat (float -1.000000e+00), <8 x float> %i.jgm
  %i.jgp = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jgm, <8 x float> splat (float 1.000000e+00))
  %i.jgq = fdiv fast <8 x float> %i.jgo, %i.jgp   ; 3 uses
  %i.jgr = fmul fast <8 x float> %i.jgq, %i.jgq   ; 3 uses
  %i.jgs = fmul fast <8 x float> %i.jgr, %i.jgr   ; 7 uses
  %i.jgt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgs, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.jgu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgs, <8 x float> nofpclass(nan inf) %i.jgt, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.jgv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgs, <8 x float> nofpclass(nan inf) %i.jgu, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.jgw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgs, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.jgx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgs, <8 x float> nofpclass(nan inf) %i.jgw, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.jgy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgs, <8 x float> nofpclass(nan inf) %i.jgx, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.jgz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgs, <8 x float> nofpclass(nan inf) %i.jgy, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.jha = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jgr, <8 x float> nofpclass(nan inf) %i.jgv, <8 x float> nofpclass(nan inf) %i.jgz)
  %i.jhb = fmul fast <8 x float> %i.jha, %i.jgq
  %i.jhc = select <8 x i1> %i.jgn, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.jhd = fadd fast <8 x float> %i.jhb, %i.jhc
  %i.jhe = bitcast <8 x float> %i.jhd to <8 x i32>
  %i.jhf = or <8 x i32> %i.jgl, %i.jhe
  %i.jhg = bitcast <8 x i32> %i.jhf to <8 x float>
  %i.jhh = fadd fast <8 x float> %i.jgi, %i.jhg
  %i.jhi = or disjoint <8 x i32> %i.jgf, splat (i32 1070141403)
  %i.jhj = bitcast <8 x float> %i.jhh to <8 x i32>
  %i.jhk = select <8 x i1> %.not107.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.jhj
  %i.jhl = select <8 x i1> %i.jfp, <8 x i32> %i.jhi, <8 x i32> zeroinitializer
  %i.jhm = select <8 x i1> %i.jgd, <8 x i32> %i.jfs, <8 x i32> %i.jhl
  %i.jhn = or <8 x i32> %i.jhk, %i.jhm
  store <8 x i32> %i.jhn, ptr %.027110.i.i, align 1, !tbaa !60
  %i.jho = getelementptr inbounds nuw i8, ptr %.0111.i.i, i64 32 ; 2 uses
  %i.jhp = getelementptr inbounds nuw i8, ptr %.027110.i.i, i64 32 ; 2 uses
  %i.jhq = add nuw nsw i32 %.030109.i.i, 8        ; 2 uses
  %i.jhr = or disjoint i32 %i.jhq, 7
  %i.jhs = icmp slt i32 %i.jhr, %i.izc
  br i1 %i.jhs, label %bb.ix, label %.preheader108.loopexit.i.i, !llvm.loop !371

.preheader.i35.i1163:                             ; preds = %bb.iy, %.preheader108.i.i
  %.131.lcssa.i.i1164 = phi i32 [ %.030.lcssa.i.i1160, %.preheader108.i.i ], [ %i.jku, %bb.iy ] ; 4 uses
  %.128.lcssa.i.i1165 = phi ptr [ %.027.lcssa.i.i1161, %.preheader108.i.i ], [ %i.jkt, %bb.iy ] ; 4 uses
  %.1.lcssa.i36.i1166 = phi ptr [ %.0.lcssa.i34.i1162, %.preheader108.i.i ], [ %i.jks, %bb.iy ] ; 4 uses
  %i.jht = icmp slt i32 %.131.lcssa.i.i1164, %i.izc
  br i1 %i.jht, label %.lr.ph124.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i.i.preheader:                          ; preds = %.preheader.i35.i1163
  %.1.lcssa.i36.i11665126 = ptrtoaddr ptr %.1.lcssa.i36.i1166 to i64
  %.128.lcssa.i.i11655125 = ptrtoaddr ptr %.128.lcssa.i.i1165 to i64
  %i.jhu = xor i32 %.131.lcssa.i.i1164, -1
  %i.jhv = add i32 %i.izc, %i.jhu                 ; 2 uses
  %i.jhw = zext i32 %i.jhv to i64
  %i.jhx = add nuw nsw i64 %i.jhw, 1              ; 2 uses
  %min.iters.check5128 = icmp ult i32 %i.jhv, 7
  %i.jhy = sub i64 %.1.lcssa.i36.i11665126, %.128.lcssa.i.i11655125
  %diff.check5130 = icmp ugt i64 %i.jhy, -32
  %or.cond6388 = select i1 %min.iters.check5128, i1 true, i1 %diff.check5130
  br i1 %or.cond6388, label %.lr.ph124.i.i.preheader6739, label %vector.ph5131

vector.ph5131:                                    ; preds = %.lr.ph124.i.i.preheader
  %n.vec5132 = and i64 %i.jhx, 8589934584         ; 4 uses
  %i.jhz = shl nuw nsw i64 %n.vec5132, 2          ; 2 uses
  %i.jia = getelementptr i8, ptr %.1.lcssa.i36.i1166, i64 %i.jhz
  %i.jib = getelementptr i8, ptr %.128.lcssa.i.i1165, i64 %i.jhz
  %i.jic = trunc i64 %n.vec5132 to i32
  %i.jid = add i32 %.131.lcssa.i.i1164, %i.jic
  %i.jie = insertelement <4 x float> poison, float %i.jfd, i64 0
  %i.jif = shufflevector <4 x float> %i.jie, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5133

vector.body5133:                                  ; preds = %vector.body5133, %vector.ph5131
  %index5134 = phi i64 [ 0, %vector.ph5131 ], [ %index.next5138, %vector.body5133 ] ; 2 uses
  %i.jig = shl i64 %index5134, 2                  ; 2 uses
  %next.gep5135 = getelementptr i8, ptr %.1.lcssa.i36.i1166, i64 %i.jig
  %next.gep5136 = getelementptr i8, ptr %.128.lcssa.i.i1165, i64 %i.jig
  %wide.load5137 = load <8 x float>, ptr %next.gep5135, align 4, !tbaa !59 ; 5 uses
  %i.jih = extractelement <8 x float> %wide.load5137, i64 0
  %i.jii = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jih, float %i.jfd)
  %i.jij = extractelement <8 x float> %wide.load5137, i64 1
  %i.jik = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jij, float %i.jfd)
  %i.jil = extractelement <8 x float> %wide.load5137, i64 2
  %i.jim = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jil, float %i.jfd)
  %i.jin = extractelement <8 x float> %wide.load5137, i64 3
  %i.jio = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jin, float %i.jfd)
  %i.jip = shufflevector <8 x float> %wide.load5137, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jiq = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.jip, <4 x float> %i.jif)
  %i.jir = insertelement <8 x float> poison, float %i.jii, i64 0
  %i.jis = insertelement <8 x float> %i.jir, float %i.jik, i64 1
  %i.jit = insertelement <8 x float> %i.jis, float %i.jim, i64 2
  %i.jiu = insertelement <8 x float> %i.jit, float %i.jio, i64 3
  %i.jiv = shufflevector <4 x float> %i.jiq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jiw = shufflevector <8 x float> %i.jiu, <8 x float> %i.jiv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.jiw, ptr %next.gep5136, align 4, !tbaa !59
  %index.next5138 = add nuw i64 %index5134, 8     ; 2 uses
  %i.jix = icmp eq i64 %index.next5138, %n.vec5132
  br i1 %i.jix, label %middle.block5139, label %vector.body5133, !llvm.loop !372

middle.block5139:                                 ; preds = %vector.body5133
  %cmp.n5140 = icmp eq i64 %i.jhx, %n.vec5132
  br i1 %cmp.n5140, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i.preheader6739

.lr.ph124.i.i.preheader6739:                      ; preds = %.lr.ph124.i.i.preheader, %middle.block5139
  %.2123.i.i.ph = phi ptr [ %.1.lcssa.i36.i1166, %.lr.ph124.i.i.preheader ], [ %i.jia, %middle.block5139 ] ; 2 uses
  %.229122.i.i.ph = phi ptr [ %.128.lcssa.i.i1165, %.lr.ph124.i.i.preheader ], [ %i.jib, %middle.block5139 ] ; 2 uses
  %.232121.i.i.ph = phi i32 [ %.131.lcssa.i.i1164, %.lr.ph124.i.i.preheader ], [ %i.jid, %middle.block5139 ] ; 4 uses
  %i.jiy = sub i32 %i.izc, %.232121.i.i.ph
  %xtraiter7434 = and i32 %i.jiy, 3               ; 2 uses
  %lcmp.mod7435.not = icmp eq i32 %xtraiter7434, 0
  br i1 %lcmp.mod7435.not, label %.lr.ph124.i.i.prol.loopexit, label %.lr.ph124.i.i.prol

.lr.ph124.i.i.prol:                               ; preds = %.lr.ph124.i.i.preheader6739, %.lr.ph124.i.i.prol
  %.2123.i.i.prol = phi ptr [ %i.jjb, %.lr.ph124.i.i.prol ], [ %.2123.i.i.ph, %.lr.ph124.i.i.preheader6739 ] ; 2 uses
  %.229122.i.i.prol = phi ptr [ %i.jjc, %.lr.ph124.i.i.prol ], [ %.229122.i.i.ph, %.lr.ph124.i.i.preheader6739 ] ; 2 uses
  %.232121.i.i.prol = phi i32 [ %i.jjd, %.lr.ph124.i.i.prol ], [ %.232121.i.i.ph, %.lr.ph124.i.i.preheader6739 ]
  %prol.iter7436 = phi i32 [ %prol.iter7436.next, %.lr.ph124.i.i.prol ], [ 0, %.lr.ph124.i.i.preheader6739 ]
  %i.jiz = load float, ptr %.2123.i.i.prol, align 4, !tbaa !59
  %i.jja = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jiz, float %i.jfd)
  store float %i.jja, ptr %.229122.i.i.prol, align 4, !tbaa !59
  %i.jjb = getelementptr inbounds nuw i8, ptr %.2123.i.i.prol, i64 4 ; 2 uses
  %i.jjc = getelementptr inbounds nuw i8, ptr %.229122.i.i.prol, i64 4 ; 2 uses
  %i.jjd = add nuw nsw i32 %.232121.i.i.prol, 1   ; 2 uses
  %prol.iter7436.next = add i32 %prol.iter7436, 1 ; 2 uses
  %prol.iter7436.cmp.not = icmp eq i32 %prol.iter7436.next, %xtraiter7434
  br i1 %prol.iter7436.cmp.not, label %.lr.ph124.i.i.prol.loopexit, label %.lr.ph124.i.i.prol, !llvm.loop !373

.lr.ph124.i.i.prol.loopexit:                      ; preds = %.lr.ph124.i.i.prol, %.lr.ph124.i.i.preheader6739
  %.2123.i.i.unr = phi ptr [ %.2123.i.i.ph, %.lr.ph124.i.i.preheader6739 ], [ %i.jjb, %.lr.ph124.i.i.prol ]
  %.229122.i.i.unr = phi ptr [ %.229122.i.i.ph, %.lr.ph124.i.i.preheader6739 ], [ %i.jjc, %.lr.ph124.i.i.prol ]
  %.232121.i.i.unr = phi i32 [ %.232121.i.i.ph, %.lr.ph124.i.i.preheader6739 ], [ %i.jjd, %.lr.ph124.i.i.prol ]
  %i.jje = sub i32 %.232121.i.i.ph, %i.izc
  %i.jjf = icmp ugt i32 %i.jje, -4
  br i1 %i.jjf, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i

bb.iy:                                            ; preds = %bb.iy, %.lr.ph117.i.i
  %.1116.i.i = phi ptr [ %.0.lcssa.i34.i1162, %.lr.ph117.i.i ], [ %i.jks, %bb.iy ] ; 2 uses
  %.128115.i.i = phi ptr [ %.027.lcssa.i.i1161, %.lr.ph117.i.i ], [ %i.jkt, %bb.iy ] ; 2 uses
  %.131114.i.i = phi i32 [ %.030.lcssa.i.i1160, %.lr.ph117.i.i ], [ %i.jku, %bb.iy ]
  %i.jjg = load <4 x float>, ptr %.1116.i.i, align 1, !tbaa !60 ; 4 uses
  %i.jjh = fcmp fast oeq <4 x float> %i.jjg, zeroinitializer ; 2 uses
  %.not104.i.i = or <4 x i1> %i.jfx, %i.jjh
  %i.jji = bitcast <4 x float> %i.jjg to <4 x i32>
  %i.jjj = and <4 x i32> %i.jji, splat (i32 -2147483648)
  %i.jjk = fcmp fast olt <4 x float> %i.jjg, zeroinitializer
  %i.jjl = select <4 x i1> %i.jjk, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.jjm = select <4 x i1> %i.jfy, <4 x float> %i.jjl, <4 x float> zeroinitializer
  %i.jjn = fmul fast <4 x float> %i.jjg, %i.jgb   ; 2 uses
  %i.jjo = bitcast <4 x float> %i.jjn to <4 x i32>
  %i.jjp = and <4 x i32> %i.jjo, splat (i32 -2147483648)
  %i.jjq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jjn) ; 3 uses
  %i.jjr = fcmp fast ogt <4 x float> %i.jjq, splat (float 1.000000e+00) ; 2 uses
  %i.jjs = select <4 x i1> %i.jjr, <4 x float> splat (float -1.000000e+00), <4 x float> %i.jjq
  %i.jjt = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.jjq, <4 x float> splat (float 1.000000e+00))
  %i.jju = fdiv fast <4 x float> %i.jjs, %i.jjt   ; 3 uses
  %i.jjv = fmul fast <4 x float> %i.jju, %i.jju   ; 3 uses
  %i.jjw = fmul fast <4 x float> %i.jjv, %i.jjv   ; 7 uses
  %i.jjx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjw, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.jjy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjw, <4 x float> nofpclass(nan inf) %i.jjx, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.jjz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjw, <4 x float> nofpclass(nan inf) %i.jjy, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.jka = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjw, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.jkb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjw, <4 x float> nofpclass(nan inf) %i.jka, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.jkc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjw, <4 x float> nofpclass(nan inf) %i.jkb, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.jkd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjw, <4 x float> nofpclass(nan inf) %i.jkc, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.jke = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jjv, <4 x float> nofpclass(nan inf) %i.jjz, <4 x float> nofpclass(nan inf) %i.jkd)
  %i.jkf = fmul fast <4 x float> %i.jke, %i.jju
  %i.jkg = select <4 x i1> %i.jjr, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.jkh = fadd fast <4 x float> %i.jkf, %i.jkg
  %i.jki = bitcast <4 x float> %i.jkh to <4 x i32>
  %i.jkj = or <4 x i32> %i.jjp, %i.jki
  %i.jkk = bitcast <4 x i32> %i.jkj to <4 x float>
  %i.jkl = fadd fast <4 x float> %i.jjm, %i.jkk
  %i.jkm = or disjoint <4 x i32> %i.jjj, splat (i32 1070141403)
  %i.jkn = bitcast <4 x float> %i.jkl to <4 x i32>
  %i.jko = select <4 x i1> %.not104.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.jkn
  %i.jkp = select <4 x i1> %i.jfx, <4 x i32> %i.jkm, <4 x i32> zeroinitializer
  %i.jkq = select <4 x i1> %i.jjh, <4 x i32> %i.jga, <4 x i32> %i.jkp
  %i.jkr = or <4 x i32> %i.jko, %i.jkq
  store <4 x i32> %i.jkr, ptr %.128115.i.i, align 1, !tbaa !60
  %i.jks = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 16 ; 2 uses
  %i.jkt = getelementptr inbounds nuw i8, ptr %.128115.i.i, i64 16 ; 2 uses
  %i.jku = add nuw nsw i32 %.131114.i.i, 4        ; 3 uses
  %i.jkv = or disjoint i32 %i.jku, 3
  %i.jkw = icmp slt i32 %i.jkv, %i.izc
  br i1 %i.jkw, label %bb.iy, label %.preheader.i35.i1163, !llvm.loop !374

.lr.ph124.i.i:                                    ; preds = %.lr.ph124.i.i.prol.loopexit, %.lr.ph124.i.i
  %.2123.i.i = phi ptr [ %i.jll, %.lr.ph124.i.i ], [ %.2123.i.i.unr, %.lr.ph124.i.i.prol.loopexit ] ; 5 uses
  %.229122.i.i = phi ptr [ %i.jlm, %.lr.ph124.i.i ], [ %.229122.i.i.unr, %.lr.ph124.i.i.prol.loopexit ] ; 5 uses
  %.232121.i.i = phi i32 [ %i.jln, %.lr.ph124.i.i ], [ %.232121.i.i.unr, %.lr.ph124.i.i.prol.loopexit ]
  %i.jkx = load float, ptr %.2123.i.i, align 4, !tbaa !59
  %i.jky = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jkx, float %i.jfd)
  store float %i.jky, ptr %.229122.i.i, align 4, !tbaa !59
  %i.jkz = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 4
  %i.jla = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 4
  %i.jlb = load float, ptr %i.jkz, align 4, !tbaa !59
  %i.jlc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlb, float %i.jfd)
  store float %i.jlc, ptr %i.jla, align 4, !tbaa !59
  %i.jld = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 8
  %i.jle = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 8
  %i.jlf = load float, ptr %i.jld, align 4, !tbaa !59
  %i.jlg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlf, float %i.jfd)
  store float %i.jlg, ptr %i.jle, align 4, !tbaa !59
  %i.jlh = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 12
  %i.jli = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 12
  %i.jlj = load float, ptr %i.jlh, align 4, !tbaa !59
  %i.jlk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlj, float %i.jfd)
  store float %i.jlk, ptr %i.jli, align 4, !tbaa !59
  %i.jll = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 16
  %i.jlm = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 16
  %i.jln = add nuw nsw i32 %.232121.i.i, 4        ; 2 uses
  %exitcond.not.i37.i1167.3 = icmp eq i32 %i.jln, %i.izc
  br i1 %exitcond.not.i37.i1167.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i, !llvm.loop !375

bb.iz:                                            ; preds = %bb.ir
  %i.jlo = icmp eq i32 %3, 1
  br i1 %i.jlo, label %bb.ja, label %bb.jh

bb.ja:                                            ; preds = %bb.iz
  %i.jlp = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.jlq = icmp eq i32 %.sroa.speculated.i1143, 4
  br i1 %i.jlq, label %.thread.i66.i, label %bb.jb

.thread.i66.i:                                    ; preds = %bb.ja
  %i.jlr = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.jls = insertelement <4 x float> poison, float %i.jlp, i64 0
  %i.jlt = shufflevector <4 x float> %i.jls, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jlu = icmp eq i32 %.sroa.speculated.i1143, 8
  br i1 %i.jlu, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.jlv = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.je

bb.jd:                                            ; preds = %bb.jb, %.thread.i66.i
  %i.jlw = phi <4 x float> [ %i.jlr, %.thread.i66.i ], [ %i.jlt, %bb.jb ] ; 2 uses
  %i.jlx = shufflevector <4 x float> %i.jlw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.jly = phi <4 x float> [ %i.jlt, %bb.jc ], [ %i.jlw, %bb.jd ] ; 4 uses
  %i.jlz = phi fast <8 x float> [ %i.jlv, %bb.jc ], [ %i.jlx, %bb.jd ] ; 4 uses
  %i.jma = icmp sgt i32 %i.izc, 7
  br i1 %i.jma, label %.lr.ph.i59.i, label %.preheader108.i40.i

.lr.ph.i59.i:                                     ; preds = %bb.je
  %i.jmb = fcmp fast ueq <8 x float> %i.jlz, zeroinitializer ; 2 uses
  %i.jmc = bitcast <8 x float> %i.jlz to <8 x i32>
  %i.jmd = and <8 x i32> %i.jmc, splat (i32 -2147483648)
  %i.jme = fcmp fast olt <8 x float> %i.jlz, zeroinitializer
  %i.jmf = select <8 x i1> %i.jme, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.jmg = or disjoint <8 x i32> %i.jmd, splat (i32 1070141403)
  br label %bb.jf

.preheader108.loopexit.i65.i:                     ; preds = %bb.jf
  %i.jmh = and i32 %i.izc, 2147483640
  br label %.preheader108.i40.i

.preheader108.i40.i:                              ; preds = %.preheader108.loopexit.i65.i, %bb.je
  %.030.lcssa.i41.i = phi i32 [ 0, %bb.je ], [ %i.jmh, %.preheader108.loopexit.i65.i ] ; 3 uses
  %.027.lcssa.i42.i = phi ptr [ %2, %bb.je ], [ %i.job, %.preheader108.loopexit.i65.i ] ; 2 uses
  %.0.lcssa.i43.i = phi ptr [ %1, %bb.je ], [ %i.joa, %.preheader108.loopexit.i65.i ] ; 2 uses
  %i.jmi = or disjoint i32 %.030.lcssa.i41.i, 3
  %i.jmj = icmp slt i32 %i.jmi, %i.izc
  br i1 %i.jmj, label %.lr.ph117.i53.i, label %.preheader.i44.i

.lr.ph117.i53.i:                                  ; preds = %.preheader108.i40.i
  %i.jmk = fcmp fast oeq <4 x float> %i.jly, zeroinitializer ; 2 uses
  %i.jml = bitcast <4 x float> %i.jly to <4 x i32>
  %i.jmm = and <4 x i32> %i.jml, splat (i32 -2147483648)
  %i.jmn = fcmp fast olt <4 x float> %i.jly, zeroinitializer
  %i.jmo = select <4 x i1> %i.jmn, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.jmp = or disjoint <4 x i32> %i.jmm, splat (i32 1070141403)
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jf, %.lr.ph.i59.i
  %.0111.i60.i = phi ptr [ %1, %.lr.ph.i59.i ], [ %i.joa, %bb.jf ] ; 2 uses
  %.027110.i61.i = phi ptr [ %2, %.lr.ph.i59.i ], [ %i.job, %bb.jf ] ; 2 uses
  %.030109.i62.i = phi i32 [ 0, %.lr.ph.i59.i ], [ %i.joc, %bb.jf ]
  %i.jmq = load <8 x float>, ptr %.0111.i60.i, align 1, !tbaa !60 ; 4 uses
  %i.jmr = fcmp fast ueq <8 x float> %i.jmq, zeroinitializer ; 2 uses
  %.not107.i63.i = or <8 x i1> %i.jmb, %i.jmr
  %i.jms = fcmp fast olt <8 x float> %i.jmq, zeroinitializer
  %i.jmt = select <8 x i1> %i.jms, <8 x float> %i.jmf, <8 x float> zeroinitializer
  %i.jmu = fdiv fast <8 x float> %i.jlz, %i.jmq   ; 2 uses
  %i.jmv = bitcast <8 x float> %i.jmu to <8 x i32>
  %i.jmw = and <8 x i32> %i.jmv, splat (i32 -2147483648)
  %i.jmx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jmu) ; 3 uses
  %i.jmy = fcmp fast ogt <8 x float> %i.jmx, splat (float 1.000000e+00) ; 2 uses
  %i.jmz = select <8 x i1> %i.jmy, <8 x float> splat (float -1.000000e+00), <8 x float> %i.jmx
  %i.jna = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jmx, <8 x float> splat (float 1.000000e+00))
  %i.jnb = fdiv fast <8 x float> %i.jmz, %i.jna   ; 3 uses
  %i.jnc = fmul fast <8 x float> %i.jnb, %i.jnb   ; 3 uses
  %i.jnd = fmul fast <8 x float> %i.jnc, %i.jnc   ; 7 uses
  %i.jne = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnd, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.jnf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnd, <8 x float> nofpclass(nan inf) %i.jne, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.jng = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnd, <8 x float> nofpclass(nan inf) %i.jnf, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.jnh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnd, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.jni = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnd, <8 x float> nofpclass(nan inf) %i.jnh, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.jnj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnd, <8 x float> nofpclass(nan inf) %i.jni, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.jnk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnd, <8 x float> nofpclass(nan inf) %i.jnj, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.jnl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jnc, <8 x float> nofpclass(nan inf) %i.jng, <8 x float> nofpclass(nan inf) %i.jnk)
  %i.jnm = fmul fast <8 x float> %i.jnl, %i.jnb
  %i.jnn = select <8 x i1> %i.jmy, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.jno = fadd fast <8 x float> %i.jnm, %i.jnn
  %i.jnp = bitcast <8 x float> %i.jno to <8 x i32>
  %i.jnq = or <8 x i32> %i.jmw, %i.jnp
  %i.jnr = bitcast <8 x i32> %i.jnq to <8 x float>
  %i.jns = fadd fast <8 x float> %i.jmt, %i.jnr
  %i.jnt = bitcast <8 x float> %i.jmq to <8 x i32>
  %isneg.inv105.i64.i = icmp slt <8 x i32> %i.jnt, zeroinitializer
  %i.jnu = select <8 x i1> %isneg.inv105.i64.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.jnv = bitcast <8 x float> %i.jns to <8 x i32>
  %i.jnw = select <8 x i1> %.not107.i63.i, <8 x i32> zeroinitializer, <8 x i32> %i.jnv
  %i.jnx = select <8 x i1> %i.jmr, <8 x i32> %i.jmg, <8 x i32> zeroinitializer
  %i.jny = select <8 x i1> %i.jmb, <8 x i32> %i.jnu, <8 x i32> %i.jnx
  %i.jnz = or <8 x i32> %i.jnw, %i.jny
  store <8 x i32> %i.jnz, ptr %.027110.i61.i, align 1, !tbaa !60
  %i.joa = getelementptr inbounds nuw i8, ptr %.0111.i60.i, i64 32 ; 2 uses
  %i.job = getelementptr inbounds nuw i8, ptr %.027110.i61.i, i64 32 ; 2 uses
  %i.joc = add nuw nsw i32 %.030109.i62.i, 8      ; 2 uses
  %i.jod = or disjoint i32 %i.joc, 7
  %i.joe = icmp slt i32 %i.jod, %i.izc
  br i1 %i.joe, label %bb.jf, label %.preheader108.loopexit.i65.i, !llvm.loop !376

.preheader.i44.i:                                 ; preds = %bb.jg, %.preheader108.i40.i
  %.131.lcssa.i45.i = phi i32 [ %.030.lcssa.i41.i, %.preheader108.i40.i ], [ %i.jre, %bb.jg ] ; 4 uses
  %.128.lcssa.i46.i = phi ptr [ %.027.lcssa.i42.i, %.preheader108.i40.i ], [ %i.jrd, %bb.jg ] ; 4 uses
  %.1.lcssa.i47.i = phi ptr [ %.0.lcssa.i43.i, %.preheader108.i40.i ], [ %i.jrc, %bb.jg ] ; 4 uses
  %i.jof = icmp slt i32 %.131.lcssa.i45.i, %i.izc
  br i1 %i.jof, label %.lr.ph124.i48.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i48.i.preheader:                        ; preds = %.preheader.i44.i
  %.1.lcssa.i47.i5103 = ptrtoaddr ptr %.1.lcssa.i47.i to i64
  %.128.lcssa.i46.i5102 = ptrtoaddr ptr %.128.lcssa.i46.i to i64
  %i.jog = xor i32 %.131.lcssa.i45.i, -1
  %i.joh = add i32 %i.izc, %i.jog                 ; 2 uses
  %i.joi = zext i32 %i.joh to i64
  %i.joj = add nuw nsw i64 %i.joi, 1              ; 2 uses
  %min.iters.check5105 = icmp ult i32 %i.joh, 7
  %i.jok = sub i64 %.1.lcssa.i47.i5103, %.128.lcssa.i46.i5102
  %diff.check5107 = icmp ugt i64 %i.jok, -32
  %or.cond6389 = select i1 %min.iters.check5105, i1 true, i1 %diff.check5107
  br i1 %or.cond6389, label %.lr.ph124.i48.i.preheader6746, label %vector.ph5108

vector.ph5108:                                    ; preds = %.lr.ph124.i48.i.preheader
  %n.vec5109 = and i64 %i.joj, 8589934584         ; 4 uses
  %i.jol = shl nuw nsw i64 %n.vec5109, 2          ; 2 uses
  %i.jom = getelementptr i8, ptr %.1.lcssa.i47.i, i64 %i.jol
  %i.jon = getelementptr i8, ptr %.128.lcssa.i46.i, i64 %i.jol
  %i.joo = trunc i64 %n.vec5109 to i32
  %i.jop = add i32 %.131.lcssa.i45.i, %i.joo
  %i.joq = insertelement <4 x float> poison, float %i.jlp, i64 0
  %i.jor = shufflevector <4 x float> %i.joq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5110

vector.body5110:                                  ; preds = %vector.body5110, %vector.ph5108
  %index5111 = phi i64 [ 0, %vector.ph5108 ], [ %index.next5115, %vector.body5110 ] ; 2 uses
  %i.jos = shl i64 %index5111, 2                  ; 2 uses
  %next.gep5112 = getelementptr i8, ptr %.1.lcssa.i47.i, i64 %i.jos
  %next.gep5113 = getelementptr i8, ptr %.128.lcssa.i46.i, i64 %i.jos
  %wide.load5114 = load <8 x float>, ptr %next.gep5112, align 4, !tbaa !59 ; 5 uses
  %i.jot = extractelement <8 x float> %wide.load5114, i64 0
  %i.jou = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jot)
  %i.jov = extractelement <8 x float> %wide.load5114, i64 1
  %i.jow = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jov)
  %i.jox = extractelement <8 x float> %wide.load5114, i64 2
  %i.joy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jox)
  %i.joz = extractelement <8 x float> %wide.load5114, i64 3
  %i.jpa = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.joz)
  %i.jpb = shufflevector <8 x float> %wide.load5114, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jpc = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.jor, <4 x float> %i.jpb)
  %i.jpd = insertelement <8 x float> poison, float %i.jou, i64 0
  %i.jpe = insertelement <8 x float> %i.jpd, float %i.jow, i64 1
  %i.jpf = insertelement <8 x float> %i.jpe, float %i.joy, i64 2
  %i.jpg = insertelement <8 x float> %i.jpf, float %i.jpa, i64 3
  %i.jph = shufflevector <4 x float> %i.jpc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jpi = shufflevector <8 x float> %i.jpg, <8 x float> %i.jph, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.jpi, ptr %next.gep5113, align 4, !tbaa !59
  %index.next5115 = add nuw i64 %index5111, 8     ; 2 uses
  %i.jpj = icmp eq i64 %index.next5115, %n.vec5109
  br i1 %i.jpj, label %middle.block5116, label %vector.body5110, !llvm.loop !377

middle.block5116:                                 ; preds = %vector.body5110
  %cmp.n5117 = icmp eq i64 %i.joj, %n.vec5109
  br i1 %cmp.n5117, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i.preheader6746

.lr.ph124.i48.i.preheader6746:                    ; preds = %.lr.ph124.i48.i.preheader, %middle.block5116
  %.2123.i49.i.ph = phi ptr [ %.1.lcssa.i47.i, %.lr.ph124.i48.i.preheader ], [ %i.jom, %middle.block5116 ] ; 2 uses
  %.229122.i50.i.ph = phi ptr [ %.128.lcssa.i46.i, %.lr.ph124.i48.i.preheader ], [ %i.jon, %middle.block5116 ] ; 2 uses
  %.232121.i51.i.ph = phi i32 [ %.131.lcssa.i45.i, %.lr.ph124.i48.i.preheader ], [ %i.jop, %middle.block5116 ] ; 4 uses
  %i.jpk = sub i32 %i.izc, %.232121.i51.i.ph
  %xtraiter7431 = and i32 %i.jpk, 3               ; 2 uses
  %lcmp.mod7432.not = icmp eq i32 %xtraiter7431, 0
  br i1 %lcmp.mod7432.not, label %.lr.ph124.i48.i.prol.loopexit, label %.lr.ph124.i48.i.prol

.lr.ph124.i48.i.prol:                             ; preds = %.lr.ph124.i48.i.preheader6746, %.lr.ph124.i48.i.prol
  %.2123.i49.i.prol = phi ptr [ %i.jpn, %.lr.ph124.i48.i.prol ], [ %.2123.i49.i.ph, %.lr.ph124.i48.i.preheader6746 ] ; 2 uses
  %.229122.i50.i.prol = phi ptr [ %i.jpo, %.lr.ph124.i48.i.prol ], [ %.229122.i50.i.ph, %.lr.ph124.i48.i.preheader6746 ] ; 2 uses
  %.232121.i51.i.prol = phi i32 [ %i.jpp, %.lr.ph124.i48.i.prol ], [ %.232121.i51.i.ph, %.lr.ph124.i48.i.preheader6746 ]
  %prol.iter7433 = phi i32 [ %prol.iter7433.next, %.lr.ph124.i48.i.prol ], [ 0, %.lr.ph124.i48.i.preheader6746 ]
  %i.jpl = load float, ptr %.2123.i49.i.prol, align 4, !tbaa !59
  %i.jpm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jpl)
  store float %i.jpm, ptr %.229122.i50.i.prol, align 4, !tbaa !59
  %i.jpn = getelementptr inbounds nuw i8, ptr %.2123.i49.i.prol, i64 4 ; 2 uses
  %i.jpo = getelementptr inbounds nuw i8, ptr %.229122.i50.i.prol, i64 4 ; 2 uses
  %i.jpp = add nuw nsw i32 %.232121.i51.i.prol, 1 ; 2 uses
  %prol.iter7433.next = add i32 %prol.iter7433, 1 ; 2 uses
  %prol.iter7433.cmp.not = icmp eq i32 %prol.iter7433.next, %xtraiter7431
  br i1 %prol.iter7433.cmp.not, label %.lr.ph124.i48.i.prol.loopexit, label %.lr.ph124.i48.i.prol, !llvm.loop !378

.lr.ph124.i48.i.prol.loopexit:                    ; preds = %.lr.ph124.i48.i.prol, %.lr.ph124.i48.i.preheader6746
  %.2123.i49.i.unr = phi ptr [ %.2123.i49.i.ph, %.lr.ph124.i48.i.preheader6746 ], [ %i.jpn, %.lr.ph124.i48.i.prol ]
  %.229122.i50.i.unr = phi ptr [ %.229122.i50.i.ph, %.lr.ph124.i48.i.preheader6746 ], [ %i.jpo, %.lr.ph124.i48.i.prol ]
  %.232121.i51.i.unr = phi i32 [ %.232121.i51.i.ph, %.lr.ph124.i48.i.preheader6746 ], [ %i.jpp, %.lr.ph124.i48.i.prol ]
  %i.jpq = sub i32 %.232121.i51.i.ph, %i.izc
  %i.jpr = icmp ugt i32 %i.jpq, -4
  br i1 %i.jpr, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i

bb.jg:                                            ; preds = %bb.jg, %.lr.ph117.i53.i
  %.1116.i54.i = phi ptr [ %.0.lcssa.i43.i, %.lr.ph117.i53.i ], [ %i.jrc, %bb.jg ] ; 2 uses
  %.128115.i55.i = phi ptr [ %.027.lcssa.i42.i, %.lr.ph117.i53.i ], [ %i.jrd, %bb.jg ] ; 2 uses
  %.131114.i56.i = phi i32 [ %.030.lcssa.i41.i, %.lr.ph117.i53.i ], [ %i.jre, %bb.jg ]
  %i.jps = load <4 x float>, ptr %.1116.i54.i, align 1, !tbaa !60 ; 4 uses
  %i.jpt = fcmp fast oeq <4 x float> %i.jps, zeroinitializer ; 2 uses
  %.not104.i57.i = or <4 x i1> %i.jmk, %i.jpt
  %i.jpu = fcmp fast olt <4 x float> %i.jps, zeroinitializer
  %i.jpv = select <4 x i1> %i.jpu, <4 x float> %i.jmo, <4 x float> zeroinitializer
  %i.jpw = fdiv fast <4 x float> %i.jly, %i.jps   ; 2 uses
  %i.jpx = bitcast <4 x float> %i.jpw to <4 x i32>
  %i.jpy = and <4 x i32> %i.jpx, splat (i32 -2147483648)
  %i.jpz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jpw) ; 3 uses
  %i.jqa = fcmp fast ogt <4 x float> %i.jpz, splat (float 1.000000e+00) ; 2 uses
  %i.jqb = select <4 x i1> %i.jqa, <4 x float> splat (float -1.000000e+00), <4 x float> %i.jpz
  %i.jqc = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.jpz, <4 x float> splat (float 1.000000e+00))
  %i.jqd = fdiv fast <4 x float> %i.jqb, %i.jqc   ; 3 uses
  %i.jqe = fmul fast <4 x float> %i.jqd, %i.jqd   ; 3 uses
  %i.jqf = fmul fast <4 x float> %i.jqe, %i.jqe   ; 7 uses
  %i.jqg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.jqh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> nofpclass(nan inf) %i.jqg, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.jqi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> nofpclass(nan inf) %i.jqh, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.jqj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.jqk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> nofpclass(nan inf) %i.jqj, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.jql = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> nofpclass(nan inf) %i.jqk, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.jqm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> nofpclass(nan inf) %i.jql, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.jqn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqe, <4 x float> nofpclass(nan inf) %i.jqi, <4 x float> nofpclass(nan inf) %i.jqm)
  %i.jqo = fmul fast <4 x float> %i.jqn, %i.jqd
  %i.jqp = select <4 x i1> %i.jqa, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.jqq = fadd fast <4 x float> %i.jqo, %i.jqp
  %i.jqr = bitcast <4 x float> %i.jqq to <4 x i32>
  %i.jqs = or <4 x i32> %i.jpy, %i.jqr
  %i.jqt = bitcast <4 x i32> %i.jqs to <4 x float>
  %i.jqu = fadd fast <4 x float> %i.jpv, %i.jqt
  %i.jqv = bitcast <4 x float> %i.jps to <4 x i32>
  %isneg.inv.i58.i = icmp slt <4 x i32> %i.jqv, zeroinitializer
  %i.jqw = select <4 x i1> %isneg.inv.i58.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.jqx = bitcast <4 x float> %i.jqu to <4 x i32>
  %i.jqy = select <4 x i1> %.not104.i57.i, <4 x i32> zeroinitializer, <4 x i32> %i.jqx
  %i.jqz = select <4 x i1> %i.jpt, <4 x i32> %i.jmp, <4 x i32> zeroinitializer
  %i.jra = select <4 x i1> %i.jmk, <4 x i32> %i.jqw, <4 x i32> %i.jqz
  %i.jrb = or <4 x i32> %i.jqy, %i.jra
  store <4 x i32> %i.jrb, ptr %.128115.i55.i, align 1, !tbaa !60
  %i.jrc = getelementptr inbounds nuw i8, ptr %.1116.i54.i, i64 16 ; 2 uses
  %i.jrd = getelementptr inbounds nuw i8, ptr %.128115.i55.i, i64 16 ; 2 uses
  %i.jre = add nuw nsw i32 %.131114.i56.i, 4      ; 3 uses
  %i.jrf = or disjoint i32 %i.jre, 3
  %i.jrg = icmp slt i32 %i.jrf, %i.izc
  br i1 %i.jrg, label %bb.jg, label %.preheader.i44.i, !llvm.loop !379

.lr.ph124.i48.i:                                  ; preds = %.lr.ph124.i48.i.prol.loopexit, %.lr.ph124.i48.i
  %.2123.i49.i = phi ptr [ %i.jrv, %.lr.ph124.i48.i ], [ %.2123.i49.i.unr, %.lr.ph124.i48.i.prol.loopexit ] ; 5 uses
  %.229122.i50.i = phi ptr [ %i.jrw, %.lr.ph124.i48.i ], [ %.229122.i50.i.unr, %.lr.ph124.i48.i.prol.loopexit ] ; 5 uses
  %.232121.i51.i = phi i32 [ %i.jrx, %.lr.ph124.i48.i ], [ %.232121.i51.i.unr, %.lr.ph124.i48.i.prol.loopexit ]
  %i.jrh = load float, ptr %.2123.i49.i, align 4, !tbaa !59
  %i.jri = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jrh)
  store float %i.jri, ptr %.229122.i50.i, align 4, !tbaa !59
  %i.jrj = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 4
  %i.jrk = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 4
  %i.jrl = load float, ptr %i.jrj, align 4, !tbaa !59
  %i.jrm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jrl)
  store float %i.jrm, ptr %i.jrk, align 4, !tbaa !59
  %i.jrn = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 8
  %i.jro = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 8
  %i.jrp = load float, ptr %i.jrn, align 4, !tbaa !59
  %i.jrq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jrp)
  store float %i.jrq, ptr %i.jro, align 4, !tbaa !59
  %i.jrr = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 12
  %i.jrs = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 12
  %i.jrt = load float, ptr %i.jrr, align 4, !tbaa !59
  %i.jru = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jlp, float %i.jrt)
  store float %i.jru, ptr %i.jrs, align 4, !tbaa !59
  %i.jrv = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 16
  %i.jrw = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 16
  %i.jrx = add nuw nsw i32 %.232121.i51.i, 4      ; 2 uses
  %exitcond.not.i52.i1159.3 = icmp eq i32 %i.jrx, %i.izc
  br i1 %exitcond.not.i52.i1159.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i, !llvm.loop !380

bb.jh:                                            ; preds = %bb.iz, %bb.io
  %i.jry = icmp eq i32 %6, 1
  br i1 %i.jry, label %bb.ji, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ji:                                            ; preds = %bb.jh
  %i.jrz = icmp eq i32 %3, %4
  br i1 %i.jrz, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.jsa = icmp eq i32 %.sroa.speculated.i1143, 8
  %i.jsb = icmp sgt i32 %.sroa.speculated91.i, 0
  %or.cond.i.i1152 = and i1 %i.jsb, %i.jsa
  br i1 %or.cond.i.i1152, label %.lr.ph.i69.i, label %.loopexit156.i.i

.lr.ph.i69.i:                                     ; preds = %bb.jj, %.lr.ph.i69.i
  %.0160.i.i = phi ptr [ %i.jtv, %.lr.ph.i69.i ], [ %0, %bb.jj ] ; 2 uses
  %.032159.i.i = phi ptr [ %i.jtw, %.lr.ph.i69.i ], [ %1, %bb.jj ] ; 2 uses
  %.038158.i.i = phi ptr [ %i.jtx, %.lr.ph.i69.i ], [ %2, %bb.jj ] ; 2 uses
  %.042157.i.i = phi i32 [ %i.jty, %.lr.ph.i69.i ], [ 0, %bb.jj ]
  %i.jsc = load <8 x float>, ptr %.0160.i.i, align 1, !tbaa !60 ; 4 uses
  %i.jsd = load float, ptr %.032159.i.i, align 4, !tbaa !59
  %i.jse = insertelement <8 x float> poison, float %i.jsd, i64 0
  %i.jsf = shufflevector <8 x float> %i.jse, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.jsg = fcmp fast ueq <8 x float> %i.jsf, zeroinitializer ; 2 uses
  %i.jsh = fcmp fast ueq <8 x float> %i.jsc, zeroinitializer ; 2 uses
  %.not153.i.i = or <8 x i1> %i.jsh, %i.jsg
  %i.jsi = bitcast <8 x float> %i.jsc to <8 x i32>
  %i.jsj = and <8 x i32> %i.jsi, splat (i32 -2147483648)
  %i.jsk = fcmp fast olt <8 x float> %i.jsf, zeroinitializer
  %i.jsl = fcmp fast olt <8 x float> %i.jsc, zeroinitializer
  %i.jsm = select <8 x i1> %i.jsl, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.jsn = select <8 x i1> %i.jsk, <8 x float> %i.jsm, <8 x float> zeroinitializer
  %i.jso = fdiv fast <8 x float> %i.jsc, %i.jsf   ; 2 uses
  %i.jsp = bitcast <8 x float> %i.jso to <8 x i32>
  %i.jsq = and <8 x i32> %i.jsp, splat (i32 -2147483648)
  %i.jsr = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jso) ; 3 uses
  %i.jss = fcmp fast ogt <8 x float> %i.jsr, splat (float 1.000000e+00) ; 2 uses
  %i.jst = select <8 x i1> %i.jss, <8 x float> splat (float -1.000000e+00), <8 x float> %i.jsr
  %i.jsu = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jsr, <8 x float> splat (float 1.000000e+00))
  %i.jsv = fdiv fast <8 x float> %i.jst, %i.jsu   ; 3 uses
  %i.jsw = fmul fast <8 x float> %i.jsv, %i.jsv   ; 3 uses
  %i.jsx = fmul fast <8 x float> %i.jsw, %i.jsw   ; 7 uses
  %i.jsy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsx, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.jsz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsx, <8 x float> nofpclass(nan inf) %i.jsy, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.jta = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsx, <8 x float> nofpclass(nan inf) %i.jsz, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.jtb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsx, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.jtc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsx, <8 x float> nofpclass(nan inf) %i.jtb, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.jtd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsx, <8 x float> nofpclass(nan inf) %i.jtc, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.jte = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsx, <8 x float> nofpclass(nan inf) %i.jtd, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.jtf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jsw, <8 x float> nofpclass(nan inf) %i.jta, <8 x float> nofpclass(nan inf) %i.jte)
  %i.jtg = fmul fast <8 x float> %i.jtf, %i.jsv
  %i.jth = select <8 x i1> %i.jss, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.jti = fadd fast <8 x float> %i.jtg, %i.jth
  %i.jtj = bitcast <8 x float> %i.jti to <8 x i32>
  %i.jtk = or <8 x i32> %i.jsq, %i.jtj
  %i.jtl = bitcast <8 x i32> %i.jtk to <8 x float>
  %i.jtm = fadd fast <8 x float> %i.jsn, %i.jtl
  %i.jtn = bitcast <8 x float> %i.jsf to <8 x i32>
  %i.jto = or disjoint <8 x i32> %i.jsj, splat (i32 1070141403)
  %isneg.inv151.i.i = icmp slt <8 x i32> %i.jtn, zeroinitializer
  %i.jtp = select <8 x i1> %isneg.inv151.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.jtq = bitcast <8 x float> %i.jtm to <8 x i32>
  %i.jtr = select <8 x i1> %.not153.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.jtq
  %i.jts = select <8 x i1> %i.jsg, <8 x i32> %i.jto, <8 x i32> zeroinitializer
  %i.jtt = select <8 x i1> %i.jsh, <8 x i32> %i.jtp, <8 x i32> %i.jts
  %i.jtu = or <8 x i32> %i.jtr, %i.jtt
  store <8 x i32> %i.jtu, ptr %.038158.i.i, align 1, !tbaa !60
  %i.jtv = getelementptr inbounds nuw i8, ptr %.0160.i.i, i64 32
  %i.jtw = getelementptr inbounds nuw i8, ptr %.032159.i.i, i64 4
  %i.jtx = getelementptr inbounds nuw i8, ptr %.038158.i.i, i64 32
  %i.jty = add nuw nsw i32 %.042157.i.i, 1        ; 2 uses
  %exitcond.not.i70.i = icmp eq i32 %i.jty, %.sroa.speculated91.i
  br i1 %exitcond.not.i70.i, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i69.i, !llvm.loop !381
end_hunk_2
begin_hunk_3_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.kmv = select <4 x i1> %i.klj, <4 x i32> %i.kmr, <4 x i32> %i.kmu
  %i.kmw = or <4 x i32> %i.kmt, %i.kmv
  store <4 x i32> %i.kmw, ptr %.135117.i.i1321, align 1, !tbaa !60
  %i.kmx = getelementptr inbounds nuw i8, ptr %.1120.i.i1318, i64 16 ; 2 uses
  %i.kmy = getelementptr inbounds nuw i8, ptr %.129119.i.i1319, i64 16 ; 2 uses
  %i.kmz = getelementptr inbounds nuw i8, ptr %.135117.i.i1321, i64 16 ; 2 uses
  %i.kna = add nuw nsw i32 %.132118.i.i1320, 4    ; 3 uses
  %i.knb = or disjoint i32 %i.kna, 3
  %i.knc = icmp slt i32 %i.knb, %i.kic
  br i1 %i.knc, label %.lr.ph121.i.i1317, label %.preheader.i.i1306, !llvm.loop !392

.lr.ph130.i.i1311:                                ; preds = %.lr.ph130.i.i1311.prol.loopexit, %.lr.ph130.i.i1311
  %.2129.i.i1312 = phi ptr [ %i.kny, %.lr.ph130.i.i1311 ], [ %.2129.i.i1312.unr, %.lr.ph130.i.i1311.prol.loopexit ] ; 5 uses
  %.230128.i.i1313 = phi ptr [ %i.knz, %.lr.ph130.i.i1311 ], [ %.230128.i.i1313.unr, %.lr.ph130.i.i1311.prol.loopexit ] ; 5 uses
  %.233127.i.i1314 = phi i32 [ %i.kob, %.lr.ph130.i.i1311 ], [ %.233127.i.i1314.unr, %.lr.ph130.i.i1311.prol.loopexit ]
  %.236126.i.i1315 = phi ptr [ %i.koa, %.lr.ph130.i.i1311 ], [ %.236126.i.i1315.unr, %.lr.ph130.i.i1311.prol.loopexit ] ; 5 uses
  %i.knd = load float, ptr %.230128.i.i1313, align 4, !tbaa !59
  %i.kne = load float, ptr %.2129.i.i1312, align 4, !tbaa !59
  %i.knf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.knd, float %i.kne)
  store float %i.knf, ptr %.236126.i.i1315, align 4, !tbaa !59
  %i.kng = getelementptr inbounds nuw i8, ptr %.2129.i.i1312, i64 4
  %i.knh = getelementptr inbounds nuw i8, ptr %.230128.i.i1313, i64 4
  %i.kni = getelementptr inbounds nuw i8, ptr %.236126.i.i1315, i64 4
  %i.knj = load float, ptr %i.knh, align 4, !tbaa !59
  %i.knk = load float, ptr %i.kng, align 4, !tbaa !59
  %i.knl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.knj, float %i.knk)
  store float %i.knl, ptr %i.kni, align 4, !tbaa !59
  %i.knm = getelementptr inbounds nuw i8, ptr %.2129.i.i1312, i64 8
  %i.knn = getelementptr inbounds nuw i8, ptr %.230128.i.i1313, i64 8
  %i.kno = getelementptr inbounds nuw i8, ptr %.236126.i.i1315, i64 8
  %i.knp = load float, ptr %i.knn, align 4, !tbaa !59
  %i.knq = load float, ptr %i.knm, align 4, !tbaa !59
  %i.knr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.knp, float %i.knq)
  store float %i.knr, ptr %i.kno, align 4, !tbaa !59
  %i.kns = getelementptr inbounds nuw i8, ptr %.2129.i.i1312, i64 12
  %i.knt = getelementptr inbounds nuw i8, ptr %.230128.i.i1313, i64 12
  %i.knu = getelementptr inbounds nuw i8, ptr %.236126.i.i1315, i64 12
  %i.knv = load float, ptr %i.knt, align 4, !tbaa !59
  %i.knw = load float, ptr %i.kns, align 4, !tbaa !59
  %i.knx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.knv, float %i.knw)
  store float %i.knx, ptr %i.knu, align 4, !tbaa !59
  %i.kny = getelementptr inbounds nuw i8, ptr %.2129.i.i1312, i64 16
  %i.knz = getelementptr inbounds nuw i8, ptr %.230128.i.i1313, i64 16
  %i.koa = getelementptr inbounds nuw i8, ptr %.236126.i.i1315, i64 16
  %i.kob = add nuw nsw i32 %.233127.i.i1314, 4    ; 2 uses
  %exitcond.not.i.i1316.3 = icmp eq i32 %i.kob, %i.kic
  br i1 %exitcond.not.i.i1316.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph130.i.i1311, !llvm.loop !393

bb.jx:                                            ; preds = %bb.jv
  %i.koc = icmp eq i32 %4, 1
  br i1 %i.koc, label %bb.jy, label %bb.kf

bb.jy:                                            ; preds = %bb.jx
  %i.kod = load float, ptr %1, align 4, !tbaa !59 ; 11 uses
  %i.koe = icmp eq i32 %.sroa.speculated.i1181, 4
  br i1 %i.koe, label %.thread.i.i1300, label %bb.jz

.thread.i.i1300:                                  ; preds = %bb.jy
  %i.kof = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jy
  %i.kog = insertelement <4 x float> poison, float %i.kod, i64 0
  %i.koh = shufflevector <4 x float> %i.kog, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.koi = icmp eq i32 %.sroa.speculated.i1181, 8
  br i1 %i.koi, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.koj = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jz, %.thread.i.i1300
  %i.kok = phi <4 x float> [ %i.kof, %.thread.i.i1300 ], [ %i.koh, %bb.jz ] ; 2 uses
  %i.kol = shufflevector <4 x float> %i.kok, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.kom = phi <4 x float> [ %i.koh, %bb.ka ], [ %i.kok, %bb.kb ] ; 4 uses
  %i.kon = phi fast <8 x float> [ %i.koj, %bb.ka ], [ %i.kol, %bb.kb ] ; 4 uses
  %i.koo = icmp sgt i32 %i.kic, 7
  br i1 %i.koo, label %.lr.ph.i39.i1293, label %.preheader108.i.i1274

.lr.ph.i39.i1293:                                 ; preds = %bb.kc
  %i.kop = fcmp fast ueq <8 x float> %i.kon, zeroinitializer ; 2 uses
  %i.koq = bitcast <8 x float> %i.kon to <8 x i32>
  %i.kor = and <8 x i32> %i.koq, splat (i32 -2147483648)
  %i.kos = fcmp fast olt <8 x float> %i.kon, zeroinitializer
  %i.kot = select <8 x i1> %i.kos, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.kou = or disjoint <8 x i32> %i.kor, splat (i32 1070141403)
  br label %bb.kd

.preheader108.loopexit.i.i1299:                   ; preds = %bb.kd
  %i.kov = and i32 %i.kic, 2147483640
  br label %.preheader108.i.i1274

.preheader108.i.i1274:                            ; preds = %.preheader108.loopexit.i.i1299, %bb.kc
  %.030.lcssa.i.i1275 = phi i32 [ 0, %bb.kc ], [ %i.kov, %.preheader108.loopexit.i.i1299 ] ; 3 uses
  %.027.lcssa.i.i1276 = phi ptr [ %2, %bb.kc ], [ %i.kqp, %.preheader108.loopexit.i.i1299 ] ; 2 uses
  %.0.lcssa.i34.i1277 = phi ptr [ %0, %bb.kc ], [ %i.kqo, %.preheader108.loopexit.i.i1299 ] ; 2 uses
  %i.kow = or disjoint i32 %.030.lcssa.i.i1275, 3
  %i.kox = icmp slt i32 %i.kow, %i.kic
  br i1 %i.kox, label %.lr.ph117.i.i1287, label %.preheader.i35.i1278

.lr.ph117.i.i1287:                                ; preds = %.preheader108.i.i1274
  %i.koy = fcmp fast oeq <4 x float> %i.kom, zeroinitializer ; 2 uses
  %i.koz = bitcast <4 x float> %i.kom to <4 x i32>
  %i.kpa = and <4 x i32> %i.koz, splat (i32 -2147483648)
  %i.kpb = fcmp fast olt <4 x float> %i.kom, zeroinitializer
  %i.kpc = select <4 x i1> %i.kpb, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.kpd = or disjoint <4 x i32> %i.kpa, splat (i32 1070141403)
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kd, %.lr.ph.i39.i1293
  %.0111.i.i1294 = phi ptr [ %0, %.lr.ph.i39.i1293 ], [ %i.kqo, %bb.kd ] ; 2 uses
  %.027110.i.i1295 = phi ptr [ %2, %.lr.ph.i39.i1293 ], [ %i.kqp, %bb.kd ] ; 2 uses
  %.030109.i.i1296 = phi i32 [ 0, %.lr.ph.i39.i1293 ], [ %i.kqq, %bb.kd ]
  %i.kpe = load <8 x float>, ptr %.0111.i.i1294, align 1, !tbaa !60 ; 4 uses
  %i.kpf = fcmp fast ueq <8 x float> %i.kpe, zeroinitializer ; 2 uses
  %.not107.i.i1297 = or <8 x i1> %i.kop, %i.kpf
  %i.kpg = fcmp fast olt <8 x float> %i.kpe, zeroinitializer
  %i.kph = select <8 x i1> %i.kpg, <8 x float> %i.kot, <8 x float> zeroinitializer
  %i.kpi = fdiv fast <8 x float> %i.kon, %i.kpe   ; 2 uses
  %i.kpj = bitcast <8 x float> %i.kpi to <8 x i32>
  %i.kpk = and <8 x i32> %i.kpj, splat (i32 -2147483648)
  %i.kpl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kpi) ; 3 uses
  %i.kpm = fcmp fast ogt <8 x float> %i.kpl, splat (float 1.000000e+00) ; 2 uses
  %i.kpn = select <8 x i1> %i.kpm, <8 x float> splat (float -1.000000e+00), <8 x float> %i.kpl
  %i.kpo = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kpl, <8 x float> splat (float 1.000000e+00))
  %i.kpp = fdiv fast <8 x float> %i.kpn, %i.kpo   ; 3 uses
  %i.kpq = fmul fast <8 x float> %i.kpp, %i.kpp   ; 3 uses
  %i.kpr = fmul fast <8 x float> %i.kpq, %i.kpq   ; 7 uses
  %i.kps = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpr, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.kpt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpr, <8 x float> nofpclass(nan inf) %i.kps, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.kpu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpr, <8 x float> nofpclass(nan inf) %i.kpt, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.kpv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpr, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.kpw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpr, <8 x float> nofpclass(nan inf) %i.kpv, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.kpx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpr, <8 x float> nofpclass(nan inf) %i.kpw, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.kpy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpr, <8 x float> nofpclass(nan inf) %i.kpx, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.kpz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpq, <8 x float> nofpclass(nan inf) %i.kpu, <8 x float> nofpclass(nan inf) %i.kpy)
  %i.kqa = fmul fast <8 x float> %i.kpz, %i.kpp
  %i.kqb = select <8 x i1> %i.kpm, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.kqc = fadd fast <8 x float> %i.kqa, %i.kqb
  %i.kqd = bitcast <8 x float> %i.kqc to <8 x i32>
  %i.kqe = or <8 x i32> %i.kpk, %i.kqd
  %i.kqf = bitcast <8 x i32> %i.kqe to <8 x float>
  %i.kqg = fadd fast <8 x float> %i.kph, %i.kqf
  %i.kqh = bitcast <8 x float> %i.kpe to <8 x i32>
  %isneg.inv105.i.i1298 = icmp slt <8 x i32> %i.kqh, zeroinitializer
  %i.kqi = select <8 x i1> %isneg.inv105.i.i1298, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.kqj = bitcast <8 x float> %i.kqg to <8 x i32>
  %i.kqk = select <8 x i1> %.not107.i.i1297, <8 x i32> zeroinitializer, <8 x i32> %i.kqj
  %i.kql = select <8 x i1> %i.kpf, <8 x i32> %i.kou, <8 x i32> zeroinitializer
  %i.kqm = select <8 x i1> %i.kop, <8 x i32> %i.kqi, <8 x i32> %i.kql
  %i.kqn = or <8 x i32> %i.kqk, %i.kqm
  store <8 x i32> %i.kqn, ptr %.027110.i.i1295, align 1, !tbaa !60
  %i.kqo = getelementptr inbounds nuw i8, ptr %.0111.i.i1294, i64 32 ; 2 uses
  %i.kqp = getelementptr inbounds nuw i8, ptr %.027110.i.i1295, i64 32 ; 2 uses
  %i.kqq = add nuw nsw i32 %.030109.i.i1296, 8    ; 2 uses
  %i.kqr = or disjoint i32 %i.kqq, 7
  %i.kqs = icmp slt i32 %i.kqr, %i.kic
  br i1 %i.kqs, label %bb.kd, label %.preheader108.loopexit.i.i1299, !llvm.loop !394

.preheader.i35.i1278:                             ; preds = %bb.ke, %.preheader108.i.i1274
  %.131.lcssa.i.i1279 = phi i32 [ %.030.lcssa.i.i1275, %.preheader108.i.i1274 ], [ %i.kts, %bb.ke ] ; 4 uses
  %.128.lcssa.i.i1280 = phi ptr [ %.027.lcssa.i.i1276, %.preheader108.i.i1274 ], [ %i.ktr, %bb.ke ] ; 4 uses
  %.1.lcssa.i36.i1281 = phi ptr [ %.0.lcssa.i34.i1277, %.preheader108.i.i1274 ], [ %i.ktq, %bb.ke ] ; 4 uses
  %i.kqt = icmp slt i32 %.131.lcssa.i.i1279, %i.kic
  br i1 %i.kqt, label %.lr.ph124.i.i1282.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i.i1282.preheader:                      ; preds = %.preheader.i35.i1278
  %.1.lcssa.i36.i12815048 = ptrtoaddr ptr %.1.lcssa.i36.i1281 to i64
  %.128.lcssa.i.i12805047 = ptrtoaddr ptr %.128.lcssa.i.i1280 to i64
  %i.kqu = xor i32 %.131.lcssa.i.i1279, -1
  %i.kqv = add i32 %i.kic, %i.kqu                 ; 2 uses
  %i.kqw = zext i32 %i.kqv to i64
  %i.kqx = add nuw nsw i64 %i.kqw, 1              ; 2 uses
  %min.iters.check5050 = icmp ult i32 %i.kqv, 7
  %i.kqy = sub i64 %.1.lcssa.i36.i12815048, %.128.lcssa.i.i12805047
  %diff.check5052 = icmp ugt i64 %i.kqy, -32
  %or.cond6390 = select i1 %min.iters.check5050, i1 true, i1 %diff.check5052
  br i1 %or.cond6390, label %.lr.ph124.i.i1282.preheader6774, label %vector.ph5053

vector.ph5053:                                    ; preds = %.lr.ph124.i.i1282.preheader
  %n.vec5054 = and i64 %i.kqx, 8589934584         ; 4 uses
  %i.kqz = shl nuw nsw i64 %n.vec5054, 2          ; 2 uses
  %i.kra = getelementptr i8, ptr %.1.lcssa.i36.i1281, i64 %i.kqz
  %i.krb = getelementptr i8, ptr %.128.lcssa.i.i1280, i64 %i.kqz
  %i.krc = trunc i64 %n.vec5054 to i32
  %i.krd = add i32 %.131.lcssa.i.i1279, %i.krc
  %i.kre = insertelement <4 x float> poison, float %i.kod, i64 0
  %i.krf = shufflevector <4 x float> %i.kre, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5055

vector.body5055:                                  ; preds = %vector.body5055, %vector.ph5053
  %index5056 = phi i64 [ 0, %vector.ph5053 ], [ %index.next5060, %vector.body5055 ] ; 2 uses
  %i.krg = shl i64 %index5056, 2                  ; 2 uses
  %next.gep5057 = getelementptr i8, ptr %.1.lcssa.i36.i1281, i64 %i.krg
  %next.gep5058 = getelementptr i8, ptr %.128.lcssa.i.i1280, i64 %i.krg
  %wide.load5059 = load <8 x float>, ptr %next.gep5057, align 4, !tbaa !59 ; 5 uses
  %i.krh = extractelement <8 x float> %wide.load5059, i64 0
  %i.kri = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.krh)
  %i.krj = extractelement <8 x float> %wide.load5059, i64 1
  %i.krk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.krj)
  %i.krl = extractelement <8 x float> %wide.load5059, i64 2
  %i.krm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.krl)
  %i.krn = extractelement <8 x float> %wide.load5059, i64 3
  %i.kro = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.krn)
  %i.krp = shufflevector <8 x float> %wide.load5059, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.krq = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.krf, <4 x float> %i.krp)
  %i.krr = insertelement <8 x float> poison, float %i.kri, i64 0
  %i.krs = insertelement <8 x float> %i.krr, float %i.krk, i64 1
  %i.krt = insertelement <8 x float> %i.krs, float %i.krm, i64 2
  %i.kru = insertelement <8 x float> %i.krt, float %i.kro, i64 3
  %i.krv = shufflevector <4 x float> %i.krq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.krw = shufflevector <8 x float> %i.kru, <8 x float> %i.krv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.krw, ptr %next.gep5058, align 4, !tbaa !59
  %index.next5060 = add nuw i64 %index5056, 8     ; 2 uses
  %i.krx = icmp eq i64 %index.next5060, %n.vec5054
  br i1 %i.krx, label %middle.block5061, label %vector.body5055, !llvm.loop !395

middle.block5061:                                 ; preds = %vector.body5055
  %cmp.n5062 = icmp eq i64 %i.kqx, %n.vec5054
  br i1 %cmp.n5062, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i1282.preheader6774

.lr.ph124.i.i1282.preheader6774:                  ; preds = %.lr.ph124.i.i1282.preheader, %middle.block5061
  %.2123.i.i1283.ph = phi ptr [ %.1.lcssa.i36.i1281, %.lr.ph124.i.i1282.preheader ], [ %i.kra, %middle.block5061 ] ; 2 uses
  %.229122.i.i1284.ph = phi ptr [ %.128.lcssa.i.i1280, %.lr.ph124.i.i1282.preheader ], [ %i.krb, %middle.block5061 ] ; 2 uses
  %.232121.i.i1285.ph = phi i32 [ %.131.lcssa.i.i1279, %.lr.ph124.i.i1282.preheader ], [ %i.krd, %middle.block5061 ] ; 4 uses
  %i.kry = sub i32 %i.kic, %.232121.i.i1285.ph
  %xtraiter7425 = and i32 %i.kry, 3               ; 2 uses
  %lcmp.mod7426.not = icmp eq i32 %xtraiter7425, 0
  br i1 %lcmp.mod7426.not, label %.lr.ph124.i.i1282.prol.loopexit, label %.lr.ph124.i.i1282.prol

.lr.ph124.i.i1282.prol:                           ; preds = %.lr.ph124.i.i1282.preheader6774, %.lr.ph124.i.i1282.prol
  %.2123.i.i1283.prol = phi ptr [ %i.ksb, %.lr.ph124.i.i1282.prol ], [ %.2123.i.i1283.ph, %.lr.ph124.i.i1282.preheader6774 ] ; 2 uses
  %.229122.i.i1284.prol = phi ptr [ %i.ksc, %.lr.ph124.i.i1282.prol ], [ %.229122.i.i1284.ph, %.lr.ph124.i.i1282.preheader6774 ] ; 2 uses
  %.232121.i.i1285.prol = phi i32 [ %i.ksd, %.lr.ph124.i.i1282.prol ], [ %.232121.i.i1285.ph, %.lr.ph124.i.i1282.preheader6774 ]
  %prol.iter7427 = phi i32 [ %prol.iter7427.next, %.lr.ph124.i.i1282.prol ], [ 0, %.lr.ph124.i.i1282.preheader6774 ]
  %i.krz = load float, ptr %.2123.i.i1283.prol, align 4, !tbaa !59
  %i.ksa = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.krz)
  store float %i.ksa, ptr %.229122.i.i1284.prol, align 4, !tbaa !59
  %i.ksb = getelementptr inbounds nuw i8, ptr %.2123.i.i1283.prol, i64 4 ; 2 uses
  %i.ksc = getelementptr inbounds nuw i8, ptr %.229122.i.i1284.prol, i64 4 ; 2 uses
  %i.ksd = add nuw nsw i32 %.232121.i.i1285.prol, 1 ; 2 uses
  %prol.iter7427.next = add i32 %prol.iter7427, 1 ; 2 uses
  %prol.iter7427.cmp.not = icmp eq i32 %prol.iter7427.next, %xtraiter7425
  br i1 %prol.iter7427.cmp.not, label %.lr.ph124.i.i1282.prol.loopexit, label %.lr.ph124.i.i1282.prol, !llvm.loop !396

.lr.ph124.i.i1282.prol.loopexit:                  ; preds = %.lr.ph124.i.i1282.prol, %.lr.ph124.i.i1282.preheader6774
  %.2123.i.i1283.unr = phi ptr [ %.2123.i.i1283.ph, %.lr.ph124.i.i1282.preheader6774 ], [ %i.ksb, %.lr.ph124.i.i1282.prol ]
  %.229122.i.i1284.unr = phi ptr [ %.229122.i.i1284.ph, %.lr.ph124.i.i1282.preheader6774 ], [ %i.ksc, %.lr.ph124.i.i1282.prol ]
  %.232121.i.i1285.unr = phi i32 [ %.232121.i.i1285.ph, %.lr.ph124.i.i1282.preheader6774 ], [ %i.ksd, %.lr.ph124.i.i1282.prol ]
  %i.kse = sub i32 %.232121.i.i1285.ph, %i.kic
  %i.ksf = icmp ugt i32 %i.kse, -4
  br i1 %i.ksf, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i1282

bb.ke:                                            ; preds = %bb.ke, %.lr.ph117.i.i1287
  %.1116.i.i1288 = phi ptr [ %.0.lcssa.i34.i1277, %.lr.ph117.i.i1287 ], [ %i.ktq, %bb.ke ] ; 2 uses
  %.128115.i.i1289 = phi ptr [ %.027.lcssa.i.i1276, %.lr.ph117.i.i1287 ], [ %i.ktr, %bb.ke ] ; 2 uses
  %.131114.i.i1290 = phi i32 [ %.030.lcssa.i.i1275, %.lr.ph117.i.i1287 ], [ %i.kts, %bb.ke ]
  %i.ksg = load <4 x float>, ptr %.1116.i.i1288, align 1, !tbaa !60 ; 4 uses
  %i.ksh = fcmp fast oeq <4 x float> %i.ksg, zeroinitializer ; 2 uses
  %.not104.i.i1291 = or <4 x i1> %i.koy, %i.ksh
  %i.ksi = fcmp fast olt <4 x float> %i.ksg, zeroinitializer
  %i.ksj = select <4 x i1> %i.ksi, <4 x float> %i.kpc, <4 x float> zeroinitializer
  %i.ksk = fdiv fast <4 x float> %i.kom, %i.ksg   ; 2 uses
  %i.ksl = bitcast <4 x float> %i.ksk to <4 x i32>
  %i.ksm = and <4 x i32> %i.ksl, splat (i32 -2147483648)
  %i.ksn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ksk) ; 3 uses
  %i.kso = fcmp fast ogt <4 x float> %i.ksn, splat (float 1.000000e+00) ; 2 uses
  %i.ksp = select <4 x i1> %i.kso, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ksn
  %i.ksq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ksn, <4 x float> splat (float 1.000000e+00))
  %i.ksr = fdiv fast <4 x float> %i.ksp, %i.ksq   ; 3 uses
  %i.kss = fmul fast <4 x float> %i.ksr, %i.ksr   ; 3 uses
  %i.kst = fmul fast <4 x float> %i.kss, %i.kss   ; 7 uses
  %i.ksu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kst, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ksv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kst, <4 x float> nofpclass(nan inf) %i.ksu, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ksw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kst, <4 x float> nofpclass(nan inf) %i.ksv, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ksx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kst, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ksy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kst, <4 x float> nofpclass(nan inf) %i.ksx, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ksz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kst, <4 x float> nofpclass(nan inf) %i.ksy, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.kta = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kst, <4 x float> nofpclass(nan inf) %i.ksz, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ktb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kss, <4 x float> nofpclass(nan inf) %i.ksw, <4 x float> nofpclass(nan inf) %i.kta)
  %i.ktc = fmul fast <4 x float> %i.ktb, %i.ksr
  %i.ktd = select <4 x i1> %i.kso, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.kte = fadd fast <4 x float> %i.ktc, %i.ktd
  %i.ktf = bitcast <4 x float> %i.kte to <4 x i32>
  %i.ktg = or <4 x i32> %i.ksm, %i.ktf
  %i.kth = bitcast <4 x i32> %i.ktg to <4 x float>
  %i.kti = fadd fast <4 x float> %i.ksj, %i.kth
  %i.ktj = bitcast <4 x float> %i.ksg to <4 x i32>
  %isneg.inv.i38.i1292 = icmp slt <4 x i32> %i.ktj, zeroinitializer
  %i.ktk = select <4 x i1> %isneg.inv.i38.i1292, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.ktl = bitcast <4 x float> %i.kti to <4 x i32>
  %i.ktm = select <4 x i1> %.not104.i.i1291, <4 x i32> zeroinitializer, <4 x i32> %i.ktl
  %i.ktn = select <4 x i1> %i.ksh, <4 x i32> %i.kpd, <4 x i32> zeroinitializer
  %i.kto = select <4 x i1> %i.koy, <4 x i32> %i.ktk, <4 x i32> %i.ktn
  %i.ktp = or <4 x i32> %i.ktm, %i.kto
  store <4 x i32> %i.ktp, ptr %.128115.i.i1289, align 1, !tbaa !60
  %i.ktq = getelementptr inbounds nuw i8, ptr %.1116.i.i1288, i64 16 ; 2 uses
  %i.ktr = getelementptr inbounds nuw i8, ptr %.128115.i.i1289, i64 16 ; 2 uses
  %i.kts = add nuw nsw i32 %.131114.i.i1290, 4    ; 3 uses
  %i.ktt = or disjoint i32 %i.kts, 3
  %i.ktu = icmp slt i32 %i.ktt, %i.kic
  br i1 %i.ktu, label %bb.ke, label %.preheader.i35.i1278, !llvm.loop !397

.lr.ph124.i.i1282:                                ; preds = %.lr.ph124.i.i1282.prol.loopexit, %.lr.ph124.i.i1282
  %.2123.i.i1283 = phi ptr [ %i.kuj, %.lr.ph124.i.i1282 ], [ %.2123.i.i1283.unr, %.lr.ph124.i.i1282.prol.loopexit ] ; 5 uses
  %.229122.i.i1284 = phi ptr [ %i.kuk, %.lr.ph124.i.i1282 ], [ %.229122.i.i1284.unr, %.lr.ph124.i.i1282.prol.loopexit ] ; 5 uses
  %.232121.i.i1285 = phi i32 [ %i.kul, %.lr.ph124.i.i1282 ], [ %.232121.i.i1285.unr, %.lr.ph124.i.i1282.prol.loopexit ]
  %i.ktv = load float, ptr %.2123.i.i1283, align 4, !tbaa !59
  %i.ktw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.ktv)
  store float %i.ktw, ptr %.229122.i.i1284, align 4, !tbaa !59
  %i.ktx = getelementptr inbounds nuw i8, ptr %.2123.i.i1283, i64 4
  %i.kty = getelementptr inbounds nuw i8, ptr %.229122.i.i1284, i64 4
  %i.ktz = load float, ptr %i.ktx, align 4, !tbaa !59
  %i.kua = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.ktz)
  store float %i.kua, ptr %i.kty, align 4, !tbaa !59
  %i.kub = getelementptr inbounds nuw i8, ptr %.2123.i.i1283, i64 8
  %i.kuc = getelementptr inbounds nuw i8, ptr %.229122.i.i1284, i64 8
  %i.kud = load float, ptr %i.kub, align 4, !tbaa !59
  %i.kue = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.kud)
  store float %i.kue, ptr %i.kuc, align 4, !tbaa !59
  %i.kuf = getelementptr inbounds nuw i8, ptr %.2123.i.i1283, i64 12
  %i.kug = getelementptr inbounds nuw i8, ptr %.229122.i.i1284, i64 12
  %i.kuh = load float, ptr %i.kuf, align 4, !tbaa !59
  %i.kui = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kod, float %i.kuh)
  store float %i.kui, ptr %i.kug, align 4, !tbaa !59
  %i.kuj = getelementptr inbounds nuw i8, ptr %.2123.i.i1283, i64 16
  %i.kuk = getelementptr inbounds nuw i8, ptr %.229122.i.i1284, i64 16
  %i.kul = add nuw nsw i32 %.232121.i.i1285, 4    ; 2 uses
  %exitcond.not.i37.i1286.3 = icmp eq i32 %i.kul, %i.kic
  br i1 %exitcond.not.i37.i1286.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i1282, !llvm.loop !398

bb.kf:                                            ; preds = %bb.jx
  %i.kum = icmp eq i32 %3, 1
  br i1 %i.kum, label %bb.kg, label %bb.kn

bb.kg:                                            ; preds = %bb.kf
  %i.kun = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.kuo = icmp eq i32 %.sroa.speculated.i1181, 4
  br i1 %i.kuo, label %.thread.i66.i1273, label %bb.kh

.thread.i66.i1273:                                ; preds = %bb.kg
  %i.kup = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.kuq = insertelement <4 x float> poison, float %i.kun, i64 0
  %i.kur = shufflevector <4 x float> %i.kuq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kus = icmp eq i32 %.sroa.speculated.i1181, 8
  br i1 %i.kus, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.kut = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh, %.thread.i66.i1273
  %i.kuu = phi <4 x float> [ %i.kup, %.thread.i66.i1273 ], [ %i.kur, %bb.kh ] ; 2 uses
  %i.kuv = shufflevector <4 x float> %i.kuu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.kuw = phi <4 x float> [ %i.kur, %bb.ki ], [ %i.kuu, %bb.kj ] ; 4 uses
  %i.kux = phi fast <8 x float> [ %i.kut, %bb.ki ], [ %i.kuv, %bb.kj ] ; 4 uses
  %i.kuy = icmp sgt i32 %i.kic, 7
  br i1 %i.kuy, label %.lr.ph.i59.i1271, label %.preheader108.i40.i1257

.lr.ph.i59.i1271:                                 ; preds = %bb.kk
  %i.kuz = fcmp fast ueq <8 x float> %i.kux, zeroinitializer ; 2 uses
  %i.kva = fcmp fast olt <8 x float> %i.kux, zeroinitializer
  %i.kvb = bitcast <8 x float> %i.kux to <8 x i32>
  %isneg.inv105.i60.i = icmp slt <8 x i32> %i.kvb, zeroinitializer
  %i.kvc = select <8 x i1> %isneg.inv105.i60.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.kvd = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kux
  br label %bb.kl

.preheader108.loopexit.i65.i1272:                 ; preds = %bb.kl
  %i.kve = and i32 %i.kic, 2147483640
  br label %.preheader108.i40.i1257

.preheader108.i40.i1257:                          ; preds = %.preheader108.loopexit.i65.i1272, %bb.kk
  %.030.lcssa.i41.i1258 = phi i32 [ 0, %bb.kk ], [ %i.kve, %.preheader108.loopexit.i65.i1272 ] ; 3 uses
  %.027.lcssa.i42.i1259 = phi ptr [ %2, %bb.kk ], [ %i.kwz, %.preheader108.loopexit.i65.i1272 ] ; 2 uses
  %.0.lcssa.i43.i1260 = phi ptr [ %1, %bb.kk ], [ %i.kwy, %.preheader108.loopexit.i65.i1272 ] ; 2 uses
  %i.kvf = or disjoint i32 %.030.lcssa.i41.i1258, 3
  %i.kvg = icmp slt i32 %i.kvf, %i.kic
  br i1 %i.kvg, label %.lr.ph117.i53.i1270, label %.preheader.i44.i1261

.lr.ph117.i53.i1270:                              ; preds = %.preheader108.i40.i1257
  %i.kvh = fcmp fast oeq <4 x float> %i.kuw, zeroinitializer ; 2 uses
  %i.kvi = fcmp fast olt <4 x float> %i.kuw, zeroinitializer
  %i.kvj = bitcast <4 x float> %i.kuw to <4 x i32>
  %isneg.inv.i54.i = icmp slt <4 x i32> %i.kvj, zeroinitializer
  %i.kvk = select <4 x i1> %isneg.inv.i54.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.kvl = fdiv fast <4 x float> splat (float 1.000000e+00), %i.kuw
  br label %bb.km

bb.kl:                                            ; preds = %bb.kl, %.lr.ph.i59.i1271
  %.0111.i61.i = phi ptr [ %1, %.lr.ph.i59.i1271 ], [ %i.kwy, %bb.kl ] ; 2 uses
  %.027110.i62.i = phi ptr [ %2, %.lr.ph.i59.i1271 ], [ %i.kwz, %bb.kl ] ; 2 uses
  %.030109.i63.i = phi i32 [ 0, %.lr.ph.i59.i1271 ], [ %i.kxa, %bb.kl ]
  %i.kvm = load <8 x float>, ptr %.0111.i61.i, align 1, !tbaa !60 ; 4 uses
  %i.kvn = fcmp fast ueq <8 x float> %i.kvm, zeroinitializer ; 2 uses
  %.not107.i64.i = or <8 x i1> %i.kuz, %i.kvn
  %i.kvo = bitcast <8 x float> %i.kvm to <8 x i32>
  %i.kvp = and <8 x i32> %i.kvo, splat (i32 -2147483648)
  %i.kvq = fcmp fast olt <8 x float> %i.kvm, zeroinitializer
  %i.kvr = select <8 x i1> %i.kvq, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.kvs = select <8 x i1> %i.kva, <8 x float> %i.kvr, <8 x float> zeroinitializer
  %i.kvt = fmul fast <8 x float> %i.kvm, %i.kvd   ; 2 uses
  %i.kvu = bitcast <8 x float> %i.kvt to <8 x i32>
  %i.kvv = and <8 x i32> %i.kvu, splat (i32 -2147483648)
  %i.kvw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kvt) ; 3 uses
  %i.kvx = fcmp fast ogt <8 x float> %i.kvw, splat (float 1.000000e+00) ; 2 uses
  %i.kvy = select <8 x i1> %i.kvx, <8 x float> splat (float -1.000000e+00), <8 x float> %i.kvw
  %i.kvz = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kvw, <8 x float> splat (float 1.000000e+00))
  %i.kwa = fdiv fast <8 x float> %i.kvy, %i.kvz   ; 3 uses
  %i.kwb = fmul fast <8 x float> %i.kwa, %i.kwa   ; 3 uses
  %i.kwc = fmul fast <8 x float> %i.kwb, %i.kwb   ; 7 uses
  %i.kwd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwc, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.kwe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwc, <8 x float> nofpclass(nan inf) %i.kwd, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.kwf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwc, <8 x float> nofpclass(nan inf) %i.kwe, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.kwg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwc, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.kwh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwc, <8 x float> nofpclass(nan inf) %i.kwg, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.kwi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwc, <8 x float> nofpclass(nan inf) %i.kwh, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.kwj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwc, <8 x float> nofpclass(nan inf) %i.kwi, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.kwk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwb, <8 x float> nofpclass(nan inf) %i.kwf, <8 x float> nofpclass(nan inf) %i.kwj)
  %i.kwl = fmul fast <8 x float> %i.kwk, %i.kwa
  %i.kwm = select <8 x i1> %i.kvx, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.kwn = fadd fast <8 x float> %i.kwl, %i.kwm
  %i.kwo = bitcast <8 x float> %i.kwn to <8 x i32>
  %i.kwp = or <8 x i32> %i.kvv, %i.kwo
  %i.kwq = bitcast <8 x i32> %i.kwp to <8 x float>
  %i.kwr = fadd fast <8 x float> %i.kvs, %i.kwq
  %i.kws = or disjoint <8 x i32> %i.kvp, splat (i32 1070141403)
  %i.kwt = bitcast <8 x float> %i.kwr to <8 x i32>
  %i.kwu = select <8 x i1> %.not107.i64.i, <8 x i32> zeroinitializer, <8 x i32> %i.kwt
  %i.kwv = select <8 x i1> %i.kuz, <8 x i32> %i.kws, <8 x i32> zeroinitializer
  %i.kww = select <8 x i1> %i.kvn, <8 x i32> %i.kvc, <8 x i32> %i.kwv
  %i.kwx = or <8 x i32> %i.kwu, %i.kww
  store <8 x i32> %i.kwx, ptr %.027110.i62.i, align 1, !tbaa !60
  %i.kwy = getelementptr inbounds nuw i8, ptr %.0111.i61.i, i64 32 ; 2 uses
  %i.kwz = getelementptr inbounds nuw i8, ptr %.027110.i62.i, i64 32 ; 2 uses
  %i.kxa = add nuw nsw i32 %.030109.i63.i, 8      ; 2 uses
  %i.kxb = or disjoint i32 %i.kxa, 7
  %i.kxc = icmp slt i32 %i.kxb, %i.kic
  br i1 %i.kxc, label %bb.kl, label %.preheader108.loopexit.i65.i1272, !llvm.loop !399

.preheader.i44.i1261:                             ; preds = %bb.km, %.preheader108.i40.i1257
  %.131.lcssa.i45.i1262 = phi i32 [ %.030.lcssa.i41.i1258, %.preheader108.i40.i1257 ], [ %i.lae, %bb.km ] ; 4 uses
  %.128.lcssa.i46.i1263 = phi ptr [ %.027.lcssa.i42.i1259, %.preheader108.i40.i1257 ], [ %i.lad, %bb.km ] ; 4 uses
  %.1.lcssa.i47.i1264 = phi ptr [ %.0.lcssa.i43.i1260, %.preheader108.i40.i1257 ], [ %i.lac, %bb.km ] ; 4 uses
  %i.kxd = icmp slt i32 %.131.lcssa.i45.i1262, %i.kic
  br i1 %i.kxd, label %.lr.ph124.i48.i1265.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i48.i1265.preheader:                    ; preds = %.preheader.i44.i1261
  %.1.lcssa.i47.i12645025 = ptrtoaddr ptr %.1.lcssa.i47.i1264 to i64
  %.128.lcssa.i46.i12635024 = ptrtoaddr ptr %.128.lcssa.i46.i1263 to i64
  %i.kxe = xor i32 %.131.lcssa.i45.i1262, -1
  %i.kxf = add i32 %i.kic, %i.kxe                 ; 2 uses
  %i.kxg = zext i32 %i.kxf to i64
  %i.kxh = add nuw nsw i64 %i.kxg, 1              ; 2 uses
  %min.iters.check5027 = icmp ult i32 %i.kxf, 7
  %i.kxi = sub i64 %.1.lcssa.i47.i12645025, %.128.lcssa.i46.i12635024
  %diff.check5029 = icmp ugt i64 %i.kxi, -32
  %or.cond6391 = select i1 %min.iters.check5027, i1 true, i1 %diff.check5029
  br i1 %or.cond6391, label %.lr.ph124.i48.i1265.preheader6781, label %vector.ph5030

vector.ph5030:                                    ; preds = %.lr.ph124.i48.i1265.preheader
  %n.vec5031 = and i64 %i.kxh, 8589934584         ; 4 uses
  %i.kxj = shl nuw nsw i64 %n.vec5031, 2          ; 2 uses
  %i.kxk = getelementptr i8, ptr %.1.lcssa.i47.i1264, i64 %i.kxj
  %i.kxl = getelementptr i8, ptr %.128.lcssa.i46.i1263, i64 %i.kxj
  %i.kxm = trunc i64 %n.vec5031 to i32
  %i.kxn = add i32 %.131.lcssa.i45.i1262, %i.kxm
  %i.kxo = insertelement <4 x float> poison, float %i.kun, i64 0
  %i.kxp = shufflevector <4 x float> %i.kxo, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5032

vector.body5032:                                  ; preds = %vector.body5032, %vector.ph5030
  %index5033 = phi i64 [ 0, %vector.ph5030 ], [ %index.next5037, %vector.body5032 ] ; 2 uses
  %i.kxq = shl i64 %index5033, 2                  ; 2 uses
  %next.gep5034 = getelementptr i8, ptr %.1.lcssa.i47.i1264, i64 %i.kxq
  %next.gep5035 = getelementptr i8, ptr %.128.lcssa.i46.i1263, i64 %i.kxq
  %wide.load5036 = load <8 x float>, ptr %next.gep5034, align 4, !tbaa !59 ; 5 uses
  %i.kxr = extractelement <8 x float> %wide.load5036, i64 0
  %i.kxs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kxr, float %i.kun)
  %i.kxt = extractelement <8 x float> %wide.load5036, i64 1
  %i.kxu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kxt, float %i.kun)
  %i.kxv = extractelement <8 x float> %wide.load5036, i64 2
  %i.kxw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kxv, float %i.kun)
  %i.kxx = extractelement <8 x float> %wide.load5036, i64 3
  %i.kxy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kxx, float %i.kun)
  %i.kxz = shufflevector <8 x float> %wide.load5036, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kya = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.kxz, <4 x float> %i.kxp)
  %i.kyb = insertelement <8 x float> poison, float %i.kxs, i64 0
  %i.kyc = insertelement <8 x float> %i.kyb, float %i.kxu, i64 1
  %i.kyd = insertelement <8 x float> %i.kyc, float %i.kxw, i64 2
  %i.kye = insertelement <8 x float> %i.kyd, float %i.kxy, i64 3
  %i.kyf = shufflevector <4 x float> %i.kya, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyg = shufflevector <8 x float> %i.kye, <8 x float> %i.kyf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.kyg, ptr %next.gep5035, align 4, !tbaa !59
  %index.next5037 = add nuw i64 %index5033, 8     ; 2 uses
  %i.kyh = icmp eq i64 %index.next5037, %n.vec5031
  br i1 %i.kyh, label %middle.block5038, label %vector.body5032, !llvm.loop !400

middle.block5038:                                 ; preds = %vector.body5032
  %cmp.n5039 = icmp eq i64 %i.kxh, %n.vec5031
  br i1 %cmp.n5039, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i1265.preheader6781

.lr.ph124.i48.i1265.preheader6781:                ; preds = %.lr.ph124.i48.i1265.preheader, %middle.block5038
  %.2123.i49.i1266.ph = phi ptr [ %.1.lcssa.i47.i1264, %.lr.ph124.i48.i1265.preheader ], [ %i.kxk, %middle.block5038 ] ; 2 uses
  %.229122.i50.i1267.ph = phi ptr [ %.128.lcssa.i46.i1263, %.lr.ph124.i48.i1265.preheader ], [ %i.kxl, %middle.block5038 ] ; 2 uses
  %.232121.i51.i1268.ph = phi i32 [ %.131.lcssa.i45.i1262, %.lr.ph124.i48.i1265.preheader ], [ %i.kxn, %middle.block5038 ] ; 4 uses
  %i.kyi = sub i32 %i.kic, %.232121.i51.i1268.ph
  %xtraiter7422 = and i32 %i.kyi, 3               ; 2 uses
  %lcmp.mod7423.not = icmp eq i32 %xtraiter7422, 0
  br i1 %lcmp.mod7423.not, label %.lr.ph124.i48.i1265.prol.loopexit, label %.lr.ph124.i48.i1265.prol

.lr.ph124.i48.i1265.prol:                         ; preds = %.lr.ph124.i48.i1265.preheader6781, %.lr.ph124.i48.i1265.prol
  %.2123.i49.i1266.prol = phi ptr [ %i.kyl, %.lr.ph124.i48.i1265.prol ], [ %.2123.i49.i1266.ph, %.lr.ph124.i48.i1265.preheader6781 ] ; 2 uses
  %.229122.i50.i1267.prol = phi ptr [ %i.kym, %.lr.ph124.i48.i1265.prol ], [ %.229122.i50.i1267.ph, %.lr.ph124.i48.i1265.preheader6781 ] ; 2 uses
  %.232121.i51.i1268.prol = phi i32 [ %i.kyn, %.lr.ph124.i48.i1265.prol ], [ %.232121.i51.i1268.ph, %.lr.ph124.i48.i1265.preheader6781 ]
  %prol.iter7424 = phi i32 [ %prol.iter7424.next, %.lr.ph124.i48.i1265.prol ], [ 0, %.lr.ph124.i48.i1265.preheader6781 ]
  %i.kyj = load float, ptr %.2123.i49.i1266.prol, align 4, !tbaa !59
  %i.kyk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kyj, float %i.kun)
  store float %i.kyk, ptr %.229122.i50.i1267.prol, align 4, !tbaa !59
  %i.kyl = getelementptr inbounds nuw i8, ptr %.2123.i49.i1266.prol, i64 4 ; 2 uses
  %i.kym = getelementptr inbounds nuw i8, ptr %.229122.i50.i1267.prol, i64 4 ; 2 uses
  %i.kyn = add nuw nsw i32 %.232121.i51.i1268.prol, 1 ; 2 uses
  %prol.iter7424.next = add i32 %prol.iter7424, 1 ; 2 uses
  %prol.iter7424.cmp.not = icmp eq i32 %prol.iter7424.next, %xtraiter7422
  br i1 %prol.iter7424.cmp.not, label %.lr.ph124.i48.i1265.prol.loopexit, label %.lr.ph124.i48.i1265.prol, !llvm.loop !401

.lr.ph124.i48.i1265.prol.loopexit:                ; preds = %.lr.ph124.i48.i1265.prol, %.lr.ph124.i48.i1265.preheader6781
  %.2123.i49.i1266.unr = phi ptr [ %.2123.i49.i1266.ph, %.lr.ph124.i48.i1265.preheader6781 ], [ %i.kyl, %.lr.ph124.i48.i1265.prol ]
  %.229122.i50.i1267.unr = phi ptr [ %.229122.i50.i1267.ph, %.lr.ph124.i48.i1265.preheader6781 ], [ %i.kym, %.lr.ph124.i48.i1265.prol ]
  %.232121.i51.i1268.unr = phi i32 [ %.232121.i51.i1268.ph, %.lr.ph124.i48.i1265.preheader6781 ], [ %i.kyn, %.lr.ph124.i48.i1265.prol ]
  %i.kyo = sub i32 %.232121.i51.i1268.ph, %i.kic
  %i.kyp = icmp ugt i32 %i.kyo, -4
  br i1 %i.kyp, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i1265

bb.km:                                            ; preds = %bb.km, %.lr.ph117.i53.i1270
  %.1116.i55.i = phi ptr [ %.0.lcssa.i43.i1260, %.lr.ph117.i53.i1270 ], [ %i.lac, %bb.km ] ; 2 uses
  %.128115.i56.i = phi ptr [ %.027.lcssa.i42.i1259, %.lr.ph117.i53.i1270 ], [ %i.lad, %bb.km ] ; 2 uses
  %.131114.i57.i = phi i32 [ %.030.lcssa.i41.i1258, %.lr.ph117.i53.i1270 ], [ %i.lae, %bb.km ]
  %i.kyq = load <4 x float>, ptr %.1116.i55.i, align 1, !tbaa !60 ; 4 uses
  %i.kyr = fcmp fast oeq <4 x float> %i.kyq, zeroinitializer ; 2 uses
  %.not104.i58.i = or <4 x i1> %i.kvh, %i.kyr
  %i.kys = bitcast <4 x float> %i.kyq to <4 x i32>
  %i.kyt = and <4 x i32> %i.kys, splat (i32 -2147483648)
  %i.kyu = fcmp fast olt <4 x float> %i.kyq, zeroinitializer
  %i.kyv = select <4 x i1> %i.kyu, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.kyw = select <4 x i1> %i.kvi, <4 x float> %i.kyv, <4 x float> zeroinitializer
  %i.kyx = fmul fast <4 x float> %i.kyq, %i.kvl   ; 2 uses
  %i.kyy = bitcast <4 x float> %i.kyx to <4 x i32>
  %i.kyz = and <4 x i32> %i.kyy, splat (i32 -2147483648)
  %i.kza = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kyx) ; 3 uses
  %i.kzb = fcmp fast ogt <4 x float> %i.kza, splat (float 1.000000e+00) ; 2 uses
  %i.kzc = select <4 x i1> %i.kzb, <4 x float> splat (float -1.000000e+00), <4 x float> %i.kza
  %i.kzd = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.kza, <4 x float> splat (float 1.000000e+00))
  %i.kze = fdiv fast <4 x float> %i.kzc, %i.kzd   ; 3 uses
  %i.kzf = fmul fast <4 x float> %i.kze, %i.kze   ; 3 uses
  %i.kzg = fmul fast <4 x float> %i.kzf, %i.kzf   ; 7 uses
  %i.kzh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzg, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.kzi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzg, <4 x float> nofpclass(nan inf) %i.kzh, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.kzj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzg, <4 x float> nofpclass(nan inf) %i.kzi, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.kzk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzg, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.kzl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzg, <4 x float> nofpclass(nan inf) %i.kzk, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.kzm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzg, <4 x float> nofpclass(nan inf) %i.kzl, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.kzn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzg, <4 x float> nofpclass(nan inf) %i.kzm, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.kzo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kzf, <4 x float> nofpclass(nan inf) %i.kzj, <4 x float> nofpclass(nan inf) %i.kzn)
  %i.kzp = fmul fast <4 x float> %i.kzo, %i.kze
  %i.kzq = select <4 x i1> %i.kzb, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.kzr = fadd fast <4 x float> %i.kzp, %i.kzq
  %i.kzs = bitcast <4 x float> %i.kzr to <4 x i32>
  %i.kzt = or <4 x i32> %i.kyz, %i.kzs
  %i.kzu = bitcast <4 x i32> %i.kzt to <4 x float>
  %i.kzv = fadd fast <4 x float> %i.kyw, %i.kzu
  %i.kzw = or disjoint <4 x i32> %i.kyt, splat (i32 1070141403)
  %i.kzx = bitcast <4 x float> %i.kzv to <4 x i32>
  %i.kzy = select <4 x i1> %.not104.i58.i, <4 x i32> zeroinitializer, <4 x i32> %i.kzx
  %i.kzz = select <4 x i1> %i.kvh, <4 x i32> %i.kzw, <4 x i32> zeroinitializer
  %i.laa = select <4 x i1> %i.kyr, <4 x i32> %i.kvk, <4 x i32> %i.kzz
  %i.lab = or <4 x i32> %i.kzy, %i.laa
  store <4 x i32> %i.lab, ptr %.128115.i56.i, align 1, !tbaa !60
  %i.lac = getelementptr inbounds nuw i8, ptr %.1116.i55.i, i64 16 ; 2 uses
  %i.lad = getelementptr inbounds nuw i8, ptr %.128115.i56.i, i64 16 ; 2 uses
  %i.lae = add nuw nsw i32 %.131114.i57.i, 4      ; 3 uses
  %i.laf = or disjoint i32 %i.lae, 3
  %i.lag = icmp slt i32 %i.laf, %i.kic
  br i1 %i.lag, label %bb.km, label %.preheader.i44.i1261, !llvm.loop !402

.lr.ph124.i48.i1265:                              ; preds = %.lr.ph124.i48.i1265.prol.loopexit, %.lr.ph124.i48.i1265
  %.2123.i49.i1266 = phi ptr [ %i.lav, %.lr.ph124.i48.i1265 ], [ %.2123.i49.i1266.unr, %.lr.ph124.i48.i1265.prol.loopexit ] ; 5 uses
  %.229122.i50.i1267 = phi ptr [ %i.law, %.lr.ph124.i48.i1265 ], [ %.229122.i50.i1267.unr, %.lr.ph124.i48.i1265.prol.loopexit ] ; 5 uses
  %.232121.i51.i1268 = phi i32 [ %i.lax, %.lr.ph124.i48.i1265 ], [ %.232121.i51.i1268.unr, %.lr.ph124.i48.i1265.prol.loopexit ]
  %i.lah = load float, ptr %.2123.i49.i1266, align 4, !tbaa !59
  %i.lai = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lah, float %i.kun)
  store float %i.lai, ptr %.229122.i50.i1267, align 4, !tbaa !59
  %i.laj = getelementptr inbounds nuw i8, ptr %.2123.i49.i1266, i64 4
  %i.lak = getelementptr inbounds nuw i8, ptr %.229122.i50.i1267, i64 4
  %i.lal = load float, ptr %i.laj, align 4, !tbaa !59
  %i.lam = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lal, float %i.kun)
  store float %i.lam, ptr %i.lak, align 4, !tbaa !59
  %i.lan = getelementptr inbounds nuw i8, ptr %.2123.i49.i1266, i64 8
  %i.lao = getelementptr inbounds nuw i8, ptr %.229122.i50.i1267, i64 8
  %i.lap = load float, ptr %i.lan, align 4, !tbaa !59
  %i.laq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lap, float %i.kun)
  store float %i.laq, ptr %i.lao, align 4, !tbaa !59
  %i.lar = getelementptr inbounds nuw i8, ptr %.2123.i49.i1266, i64 12
  %i.las = getelementptr inbounds nuw i8, ptr %.229122.i50.i1267, i64 12
  %i.lat = load float, ptr %i.lar, align 4, !tbaa !59
  %i.lau = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lat, float %i.kun)
  store float %i.lau, ptr %i.las, align 4, !tbaa !59
  %i.lav = getelementptr inbounds nuw i8, ptr %.2123.i49.i1266, i64 16
  %i.law = getelementptr inbounds nuw i8, ptr %.229122.i50.i1267, i64 16
  %i.lax = add nuw nsw i32 %.232121.i51.i1268, 4  ; 2 uses
  %exitcond.not.i52.i1269.3 = icmp eq i32 %i.lax, %i.kic
  br i1 %exitcond.not.i52.i1269.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i1265, !llvm.loop !403

bb.kn:                                            ; preds = %bb.kf, %bb.ju
  %i.lay = icmp eq i32 %6, 1
  br i1 %i.lay, label %bb.ko, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ko:                                            ; preds = %bb.kn
  %i.laz = icmp eq i32 %3, %4
  br i1 %i.laz, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  %i.lba = icmp eq i32 %.sroa.speculated.i1181, 8
  %i.lbb = icmp sgt i32 %.sroa.speculated91.i1180, 0
  %or.cond.i.i1225 = and i1 %i.lbb, %i.lba
  br i1 %or.cond.i.i1225, label %.lr.ph.i69.i1249, label %.loopexit156.i.i1226

.lr.ph.i69.i1249:                                 ; preds = %bb.kp, %.lr.ph.i69.i1249
  %.0160.i.i1250 = phi ptr [ %i.lcv, %.lr.ph.i69.i1249 ], [ %0, %bb.kp ] ; 2 uses
  %.032159.i.i1251 = phi ptr [ %i.lcw, %.lr.ph.i69.i1249 ], [ %1, %bb.kp ] ; 2 uses
  %.038158.i.i1252 = phi ptr [ %i.lcx, %.lr.ph.i69.i1249 ], [ %2, %bb.kp ] ; 2 uses
  %.042157.i.i1253 = phi i32 [ %i.lcy, %.lr.ph.i69.i1249 ], [ 0, %bb.kp ]
  %i.lbc = load <8 x float>, ptr %.0160.i.i1250, align 1, !tbaa !60 ; 4 uses
  %i.lbd = load float, ptr %.032159.i.i1251, align 4, !tbaa !59
  %i.lbe = insertelement <8 x float> poison, float %i.lbd, i64 0
  %i.lbf = shufflevector <8 x float> %i.lbe, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.lbg = fcmp fast ueq <8 x float> %i.lbc, zeroinitializer ; 2 uses
  %i.lbh = fcmp fast ueq <8 x float> %i.lbf, zeroinitializer ; 2 uses
  %.not153.i.i1254 = or <8 x i1> %i.lbg, %i.lbh
  %i.lbi = bitcast <8 x float> %i.lbf to <8 x i32>
  %i.lbj = and <8 x i32> %i.lbi, splat (i32 -2147483648)
  %i.lbk = fcmp fast olt <8 x float> %i.lbc, zeroinitializer
  %i.lbl = fcmp fast olt <8 x float> %i.lbf, zeroinitializer
  %i.lbm = select <8 x i1> %i.lbl, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lbn = select <8 x i1> %i.lbk, <8 x float> %i.lbm, <8 x float> zeroinitializer
  %i.lbo = fdiv fast <8 x float> %i.lbf, %i.lbc   ; 2 uses
  %i.lbp = bitcast <8 x float> %i.lbo to <8 x i32>
  %i.lbq = and <8 x i32> %i.lbp, splat (i32 -2147483648)
  %i.lbr = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lbo) ; 3 uses
  %i.lbs = fcmp fast ogt <8 x float> %i.lbr, splat (float 1.000000e+00) ; 2 uses
  %i.lbt = select <8 x i1> %i.lbs, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lbr
  %i.lbu = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lbr, <8 x float> splat (float 1.000000e+00))
  %i.lbv = fdiv fast <8 x float> %i.lbt, %i.lbu   ; 3 uses
  %i.lbw = fmul fast <8 x float> %i.lbv, %i.lbv   ; 3 uses
  %i.lbx = fmul fast <8 x float> %i.lbw, %i.lbw   ; 7 uses
  %i.lby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbx, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.lbz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbx, <8 x float> nofpclass(nan inf) %i.lby, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.lca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbx, <8 x float> nofpclass(nan inf) %i.lbz, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.lcb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbx, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.lcc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbx, <8 x float> nofpclass(nan inf) %i.lcb, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.lcd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbx, <8 x float> nofpclass(nan inf) %i.lcc, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.lce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbx, <8 x float> nofpclass(nan inf) %i.lcd, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.lcf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbw, <8 x float> nofpclass(nan inf) %i.lca, <8 x float> nofpclass(nan inf) %i.lce)
  %i.lcg = fmul fast <8 x float> %i.lcf, %i.lbv
  %i.lch = select <8 x i1> %i.lbs, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.lci = fadd fast <8 x float> %i.lcg, %i.lch
  %i.lcj = bitcast <8 x float> %i.lci to <8 x i32>
  %i.lck = or <8 x i32> %i.lbq, %i.lcj
  %i.lcl = bitcast <8 x i32> %i.lck to <8 x float>
  %i.lcm = fadd fast <8 x float> %i.lbn, %i.lcl
  %i.lcn = bitcast <8 x float> %i.lbc to <8 x i32>
  %i.lco = or disjoint <8 x i32> %i.lbj, splat (i32 1070141403)
  %isneg.inv151.i.i1255 = icmp slt <8 x i32> %i.lcn, zeroinitializer
  %i.lcp = select <8 x i1> %isneg.inv151.i.i1255, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.lcq = bitcast <8 x float> %i.lcm to <8 x i32>
  %i.lcr = select <8 x i1> %.not153.i.i1254, <8 x i32> zeroinitializer, <8 x i32> %i.lcq
  %i.lcs = select <8 x i1> %i.lbg, <8 x i32> %i.lco, <8 x i32> zeroinitializer
  %i.lct = select <8 x i1> %i.lbh, <8 x i32> %i.lcp, <8 x i32> %i.lcs
  %i.lcu = or <8 x i32> %i.lcr, %i.lct
  store <8 x i32> %i.lcu, ptr %.038158.i.i1252, align 1, !tbaa !60
  %i.lcv = getelementptr inbounds nuw i8, ptr %.0160.i.i1250, i64 32
  %i.lcw = getelementptr inbounds nuw i8, ptr %.032159.i.i1251, i64 4
  %i.lcx = getelementptr inbounds nuw i8, ptr %.038158.i.i1252, i64 32
  %i.lcy = add nuw nsw i32 %.042157.i.i1253, 1    ; 2 uses
  %exitcond.not.i70.i1256 = icmp eq i32 %i.lcy, %.sroa.speculated91.i1180
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.ezj = shl nuw i32 %i.ezi, 16
  %i.ezk = bitcast i32 %i.ezj to float
  %i.ezl = getelementptr inbounds nuw i8, ptr %.229190.i.i, i64 4
  %i.ezm = load i16, ptr %i.eyw, align 2, !tbaa !57
  %i.ezn = zext i16 %i.ezm to i32
  %i.ezo = shl nuw i32 %i.ezn, 16
  %i.ezp = bitcast i32 %i.ezo to float
  %i.ezq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ezk, float %i.ezp)
  %i.ezr = bitcast float %i.ezq to i32
  %i.ezs = lshr i32 %i.ezr, 16
  %i.ezt = trunc nuw i32 %i.ezs to i16
  %i.ezu = getelementptr inbounds nuw i8, ptr %.232189.i.i, i64 4
  store i16 %i.ezt, ptr %i.ezf, align 2, !tbaa !57
  %i.ezv = add nuw nsw i32 %.226191.i.i, 2        ; 2 uses
  %exitcond.not.i.i717.1 = icmp eq i32 %i.ezv, %i.eqc
  br i1 %exitcond.not.i.i717.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i.i, !llvm.loop !763

bb.es:                                            ; preds = %bb.eq
  %i.ezw = icmp eq i32 %4, 1
  br i1 %i.ezw, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.ezx = load i16, ptr %1, align 2, !tbaa !57
  %i.ezy = zext i16 %i.ezx to i32
  %i.ezz = shl nuw i32 %i.ezy, 16
  %i.faa = bitcast i32 %i.ezz to float            ; 14 uses
  %i.fab = icmp eq i32 %.sroa.speculated.i689, 4
  br i1 %i.fab, label %.thread.i.i707, label %bb.eu

.thread.i.i707:                                   ; preds = %bb.et
  %i.fac = load i64, ptr %1, align 2, !tbaa !60
  %i.fad = insertelement <2 x i64> poison, i64 %i.fac, i64 0
  %i.fae = bitcast <2 x i64> %i.fad to <8 x i16>
  %i.faf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fae, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fag = bitcast <8 x i16> %i.faf to <4 x float>
  br label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.fah = insertelement <4 x float> poison, float %i.faa, i64 0
  %i.fai = shufflevector <4 x float> %i.fah, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.faj = icmp eq i32 %.sroa.speculated.i689, 8
  br i1 %i.faj, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.fak = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.fal = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fam = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fan = shufflevector <8 x i16> %i.fal, <8 x i16> %i.fam, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fao = bitcast <16 x i16> %i.fan to <8 x float>
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu, %.thread.i.i707
  %i.fap = phi <4 x float> [ %i.fag, %.thread.i.i707 ], [ %i.fai, %bb.eu ] ; 2 uses
  %i.faq = shufflevector <4 x float> %i.fap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.far = phi <4 x float> [ %i.fai, %bb.ev ], [ %i.fap, %bb.ew ]
  %i.fas = phi fast <8 x float> [ %i.fao, %bb.ev ], [ %i.faq, %bb.ew ]
  %i.fat = icmp sgt i32 %i.eqc, 7
  br i1 %i.fat, label %.lr.ph.i39.i706, label %.preheader172.i34.i

.preheader172.loopexit.i42.i:                     ; preds = %.lr.ph.i39.i706
  %i.fau = and i32 %i.eqc, 2147483640
  br label %.preheader172.i34.i

.preheader172.i34.i:                              ; preds = %.preheader172.loopexit.i42.i, %bb.ex
  %.028.lcssa.i.i698 = phi ptr [ %2, %bb.ex ], [ %i.fdm, %.preheader172.loopexit.i42.i ] ; 2 uses
  %.025.lcssa.i.i699 = phi i32 [ 0, %bb.ex ], [ %i.fau, %.preheader172.loopexit.i42.i ] ; 3 uses
  %.0.lcssa.i35.i700 = phi ptr [ %0, %bb.ex ], [ %i.fdl, %.preheader172.loopexit.i42.i ] ; 2 uses
  %i.fav = or disjoint i32 %.025.lcssa.i.i699, 3
  %i.faw = icmp slt i32 %i.fav, %i.eqc
  br i1 %i.faw, label %.lr.ph181.i.i, label %.preheader.i36.i701

.lr.ph.i39.i706:                                  ; preds = %bb.ex, %.lr.ph.i39.i706
  %.0175.i.i = phi ptr [ %i.fdl, %.lr.ph.i39.i706 ], [ %0, %bb.ex ] ; 2 uses
  %.025174.i.i = phi i32 [ %i.fdn, %.lr.ph.i39.i706 ], [ 0, %bb.ex ]
  %.028173.i.i = phi ptr [ %i.fdm, %.lr.ph.i39.i706 ], [ %2, %bb.ex ] ; 2 uses
  %i.fax = load <8 x i16>, ptr %.0175.i.i, align 1, !tbaa !60 ; 2 uses
  %i.fay = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fax, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.faz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fax, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fba = shufflevector <8 x i16> %i.fay, <8 x i16> %i.faz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fbb = bitcast <16 x i16> %i.fba to <8 x float>
  %i.fbc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fbb, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.fbd = bitcast <8 x float> %i.fbc to <8 x i32>
  %i.fbe = bitcast <8 x float> %i.fbc to <8 x i32>
  %i.fbf = and <8 x i32> %i.fbe, splat (i32 -2139095041)
  %i.fbg = or disjoint <8 x i32> %i.fbf, splat (i32 1056964608)
  %i.fbh = bitcast <8 x i32> %i.fbg to <8 x float> ; 3 uses
  %i.fbi = lshr <8 x i32> %i.fbd, splat (i32 23)
  %i.fbj = add nsw <8 x i32> %i.fbi, splat (i32 -127)
  %i.fbk = sitofp fast <8 x i32> %i.fbj to <8 x float> ; 2 uses
  %i.fbl = fadd fast <8 x float> %i.fbk, splat (float 1.000000e+00)
  %i.fbm = fcmp fast olt <8 x float> %i.fbh, splat (float f0x3F3504F3) ; 2 uses
  %i.fbn = select <8 x i1> %i.fbm, <8 x float> %i.fbh, <8 x float> zeroinitializer
  %i.fbo = fadd fast <8 x float> %i.fbh, splat (float -1.000000e+00)
  %i.fbp = select fast <8 x i1> %i.fbm, <8 x float> %i.fbk, <8 x float> %i.fbl ; 2 uses
  %i.fbq = fadd fast <8 x float> %i.fbo, %i.fbn   ; 12 uses
  %i.fbr = fmul fast <8 x float> %i.fbq, %i.fbq   ; 2 uses
  %i.fbs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.fbt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbs, <8 x float> nofpclass(nan inf) %i.fbq, <8 x float> splat (float f0x3DEF251A))
  %i.fbu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbt, <8 x float> nofpclass(nan inf) %i.fbq, <8 x float> splat (float f0xBDFE5D4F))
  %i.fbv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbu, <8 x float> nofpclass(nan inf) %i.fbq, <8 x float> splat (float f0x3E11E9BF))
  %i.fbw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbv, <8 x float> nofpclass(nan inf) %i.fbq, <8 x float> splat (float f0xBE2AAE50))
  %i.fbx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbw, <8 x float> nofpclass(nan inf) %i.fbq, <8 x float> splat (float f0x3E4CCEAC))
  %i.fby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbx, <8 x float> nofpclass(nan inf) %i.fbq, <8 x float> splat (float f0xBE7FFFFC))
  %i.fbz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fby, <8 x float> nofpclass(nan inf) %i.fbq, <8 x float> splat (float f0x3EAAAAAA))
  %i.fca = fmul fast <8 x float> %i.fbr, %i.fbq
  %i.fcb = fmul fast <8 x float> %i.fca, %i.fbz
  %i.fcc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fcb)
  %i.fcd = fneg fast <8 x float> %i.fbr
  %i.fce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fcd, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.fcc)
  %i.fcf = fadd fast <8 x float> %i.fce, %i.fbq
  %i.fcg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fbp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fcf)
  %i.fch = fmul fast <8 x float> %i.fcg, %i.fas
  %i.fci = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fch, <8 x float> splat (float f0x42B0C0A5))
  %i.fcj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fci, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fck = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fcj, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fcl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fck, i32 1) ; 2 uses
  %i.fcm = fcmp fast ogt <8 x float> %i.fcl, %i.fck
  %i.fcn = select <8 x i1> %i.fcm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fco = fsub fast <8 x float> %i.fcl, %i.fcn   ; 2 uses
  %i.fcp = fneg fast <8 x float> %i.fco           ; 2 uses
  %i.fcq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fcp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fcj)
  %i.fcr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fcp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fcq) ; 8 uses
  %i.fcs = fmul fast <8 x float> %i.fcr, %i.fcr
  %i.fct = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fcr, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fcu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fct, <8 x float> nofpclass(nan inf) %i.fcr, <8 x float> splat (float f0x3C088908))
  %i.fcv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fcu, <8 x float> nofpclass(nan inf) %i.fcr, <8 x float> splat (float f0x3D2AA9C1))
  %i.fcw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fcv, <8 x float> nofpclass(nan inf) %i.fcr, <8 x float> splat (float f0x3E2AAAAA))
  %i.fcx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fcw, <8 x float> nofpclass(nan inf) %i.fcr, <8 x float> splat (float 5.000000e-01))
  %i.fcy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fcx, <8 x float> nofpclass(nan inf) %i.fcs, <8 x float> nofpclass(nan inf) %i.fcr)
  %i.fcz = fadd fast <8 x float> %i.fcy, splat (float 1.000000e+00)
  %i.fda = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fco)
  %i.fdb = shl <8 x i32> %i.fda, splat (i32 23)
  %i.fdc = add <8 x i32> %i.fdb, splat (i32 1065353216)
  %i.fdd = bitcast <8 x i32> %i.fdc to <8 x float>
  %i.fde = fmul fast <8 x float> %i.fcz, %i.fdd
  %i.fdf = bitcast <8 x float> %i.fde to <8 x i32> ; 2 uses
  %i.fdg = shufflevector <8 x i32> %i.fdf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fdh = shufflevector <8 x i32> %i.fdf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fdi = lshr <4 x i32> %i.fdg, splat (i32 16)
  %i.fdj = lshr <4 x i32> %i.fdh, splat (i32 16)
  %i.fdk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fdi, <4 x i32> %i.fdj)
  store <8 x i16> %i.fdk, ptr %.028173.i.i, align 1, !tbaa !60
  %i.fdl = getelementptr inbounds nuw i8, ptr %.0175.i.i, i64 16 ; 2 uses
  %i.fdm = getelementptr inbounds nuw i8, ptr %.028173.i.i, i64 16 ; 2 uses
  %i.fdn = add nuw nsw i32 %.025174.i.i, 8        ; 2 uses
  %i.fdo = or disjoint i32 %i.fdn, 7
  %i.fdp = icmp slt i32 %i.fdo, %i.eqc
  br i1 %i.fdp, label %.lr.ph.i39.i706, label %.preheader172.loopexit.i42.i, !llvm.loop !764

.preheader.i36.i701:                              ; preds = %.lr.ph181.i.i, %.preheader172.i34.i
  %.129.lcssa.i.i702 = phi ptr [ %.028.lcssa.i.i698, %.preheader172.i34.i ], [ %i.fjj, %.lr.ph181.i.i ] ; 6 uses
  %.126.lcssa.i.i703 = phi i32 [ %.025.lcssa.i.i699, %.preheader172.i34.i ], [ %i.fjk, %.lr.ph181.i.i ] ; 5 uses
  %.1.lcssa.i37.i704 = phi ptr [ %.0.lcssa.i35.i700, %.preheader172.i34.i ], [ %i.fji, %.lr.ph181.i.i ] ; 6 uses
  %i.fdq = icmp slt i32 %.126.lcssa.i.i703, %i.eqc
  br i1 %i.fdq, label %iter.check5939, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5939:                                   ; preds = %.preheader.i36.i701
  %.129.lcssa.i.i7025923 = ptrtoaddr ptr %.129.lcssa.i.i702 to i64
  %.1.lcssa.i37.i7045922 = ptrtoaddr ptr %.1.lcssa.i37.i704 to i64
  %i.fdr = xor i32 %.126.lcssa.i.i703, -1
  %i.fds = add i32 %i.eqc, %i.fdr                 ; 3 uses
  %i.fdt = zext i32 %i.fds to i64
  %i.fdu = add nuw nsw i64 %i.fdt, 1              ; 5 uses
  %min.iters.check5924 = icmp ult i32 %i.fds, 3
  %i.fdv = sub i64 %.1.lcssa.i37.i7045922, %.129.lcssa.i.i7025923
  %diff.check5926 = icmp ugt i64 %i.fdv, -32
  %or.cond7098 = select i1 %min.iters.check5924, i1 true, i1 %diff.check5926
  br i1 %or.cond7098, label %.lr.ph188.i.i.preheader, label %vector.main.loop.iter.check5927

vector.main.loop.iter.check5927:                  ; preds = %iter.check5939
  %min.iters.check5928 = icmp ult i32 %i.fds, 15
  br i1 %min.iters.check5928, label %vec.epilog.ph5943, label %vector.ph5929

vector.ph5929:                                    ; preds = %vector.main.loop.iter.check5927
  %i.fdw = and i64 %i.fdu, 12
  %n.vec5930 = and i64 %i.fdu, 8589934576         ; 5 uses
  %i.fdx = shl nuw nsw i64 %n.vec5930, 1          ; 2 uses
  %i.fdy = getelementptr i8, ptr %.1.lcssa.i37.i704, i64 %i.fdx
  %i.fdz = trunc i64 %n.vec5930 to i32
  %i.fea = add i32 %.126.lcssa.i.i703, %i.fdz
  %i.feb = getelementptr i8, ptr %.129.lcssa.i.i702, i64 %i.fdx
  %i.fec = insertelement <8 x float> poison, float %i.faa, i64 0
  %i.fed = shufflevector <8 x float> %i.fec, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fee = insertelement <4 x float> poison, float %i.faa, i64 0
  %i.fef = shufflevector <4 x float> %i.fee, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5931

vector.body5931:                                  ; preds = %vector.ph5929, %vector.body5931
  %index5932 = phi i64 [ 0, %vector.ph5929 ], [ %index.next5936, %vector.body5931 ] ; 2 uses
  %i.feg = shl i64 %index5932, 1                  ; 2 uses
  %next.gep5933 = getelementptr i8, ptr %.1.lcssa.i37.i704, i64 %i.feg
  %next.gep5934 = getelementptr i8, ptr %.129.lcssa.i.i702, i64 %i.feg
  %wide.load5935 = load <16 x i16>, ptr %next.gep5933, align 2, !tbaa !57
  %i.feh = zext <16 x i16> %wide.load5935 to <16 x i32>
  %i.fei = shl nuw <16 x i32> %i.feh, splat (i32 16)
  %i.fej = bitcast <16 x i32> %i.fei to <16 x float> ; 6 uses
  %i.fek = extractelement <16 x float> %i.fej, i64 0
  %i.fel = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fek, float %i.faa)
  %i.fem = extractelement <16 x float> %i.fej, i64 1
  %i.fen = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fem, float %i.faa)
  %i.feo = extractelement <16 x float> %i.fej, i64 2
  %i.fep = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.feo, float %i.faa)
  %i.feq = extractelement <16 x float> %i.fej, i64 3
  %i.fer = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.feq, float %i.faa)
  %i.fes = shufflevector <16 x float> %i.fej, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fet = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.fes, <4 x float> %i.fef)
  %i.feu = shufflevector <16 x float> %i.fej, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fev = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.feu, <8 x float> %i.fed)
  %i.few = insertelement <16 x float> poison, float %i.fel, i64 0
  %i.fex = insertelement <16 x float> %i.few, float %i.fen, i64 1
  %i.fey = insertelement <16 x float> %i.fex, float %i.fep, i64 2
  %i.fez = insertelement <16 x float> %i.fey, float %i.fer, i64 3
  %i.ffa = shufflevector <4 x float> %i.fet, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ffb = shufflevector <16 x float> %i.fez, <16 x float> %i.ffa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ffc = shufflevector <8 x float> %i.fev, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ffd = shufflevector <16 x float> %i.ffb, <16 x float> %i.ffc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ffe = bitcast <16 x float> %i.ffd to <16 x i32>
  %i.fff = lshr <16 x i32> %i.ffe, splat (i32 16)
  %i.ffg = trunc nuw <16 x i32> %i.fff to <16 x i16>
  store <16 x i16> %i.ffg, ptr %next.gep5934, align 2, !tbaa !57
  %index.next5936 = add nuw i64 %index5932, 16    ; 2 uses
  %i.ffh = icmp eq i64 %index.next5936, %n.vec5930
  br i1 %i.ffh, label %middle.block5937, label %vector.body5931, !llvm.loop !765

middle.block5937:                                 ; preds = %vector.body5931
  %cmp.n5938 = icmp eq i64 %i.fdu, %n.vec5930
  br i1 %cmp.n5938, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5940

vec.epilog.iter.check5940:                        ; preds = %middle.block5937
  %min.epilog.iters.check5942 = icmp eq i64 %i.fdw, 0
  br i1 %min.epilog.iters.check5942, label %.lr.ph188.i.i.preheader, label %vec.epilog.ph5943, !prof !64

vec.epilog.ph5943:                                ; preds = %vector.main.loop.iter.check5927, %vec.epilog.iter.check5940
  %vec.epilog.resume.val5944 = phi i64 [ %n.vec5930, %vec.epilog.iter.check5940 ], [ 0, %vector.main.loop.iter.check5927 ]
  %n.vec5945 = and i64 %i.fdu, 8589934588         ; 4 uses
  %i.ffi = shl nuw nsw i64 %n.vec5945, 1          ; 2 uses
  %i.ffj = getelementptr i8, ptr %.1.lcssa.i37.i704, i64 %i.ffi
  %i.ffk = trunc i64 %n.vec5945 to i32
  %i.ffl = add i32 %.126.lcssa.i.i703, %i.ffk
  %i.ffm = getelementptr i8, ptr %.129.lcssa.i.i702, i64 %i.ffi
  br label %vec.epilog.vector.body5946

vec.epilog.vector.body5946:                       ; preds = %vec.epilog.vector.body5946, %vec.epilog.ph5943
  %index5947 = phi i64 [ %vec.epilog.resume.val5944, %vec.epilog.ph5943 ], [ %index.next5951, %vec.epilog.vector.body5946 ] ; 2 uses
  %i.ffn = shl i64 %index5947, 1                  ; 2 uses
  %next.gep5948 = getelementptr i8, ptr %.1.lcssa.i37.i704, i64 %i.ffn
  %next.gep5949 = getelementptr i8, ptr %.129.lcssa.i.i702, i64 %i.ffn
  %wide.load5950 = load <4 x i16>, ptr %next.gep5948, align 2, !tbaa !57
  %i.ffo = zext <4 x i16> %wide.load5950 to <4 x i32>
  %i.ffp = shl nuw <4 x i32> %i.ffo, splat (i32 16)
  %i.ffq = bitcast <4 x i32> %i.ffp to <4 x float> ; 4 uses
  %i.ffr = extractelement <4 x float> %i.ffq, i64 0
  %i.ffs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ffr, float %i.faa)
  %i.fft = extractelement <4 x float> %i.ffq, i64 1
  %i.ffu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fft, float %i.faa)
  %i.ffv = extractelement <4 x float> %i.ffq, i64 2
  %i.ffw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ffv, float %i.faa)
  %i.ffx = extractelement <4 x float> %i.ffq, i64 3
  %i.ffy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ffx, float %i.faa)
  %i.ffz = insertelement <4 x float> poison, float %i.ffs, i64 0
  %i.fga = insertelement <4 x float> %i.ffz, float %i.ffu, i64 1
  %i.fgb = insertelement <4 x float> %i.fga, float %i.ffw, i64 2
  %i.fgc = insertelement <4 x float> %i.fgb, float %i.ffy, i64 3
  %i.fgd = bitcast <4 x float> %i.fgc to <4 x i32>
  %i.fge = lshr <4 x i32> %i.fgd, splat (i32 16)
  %i.fgf = trunc nuw <4 x i32> %i.fge to <4 x i16>
  store <4 x i16> %i.fgf, ptr %next.gep5949, align 2, !tbaa !57
  %index.next5951 = add nuw i64 %index5947, 4     ; 2 uses
  %i.fgg = icmp eq i64 %index.next5951, %n.vec5945
  br i1 %i.fgg, label %vec.epilog.middle.block5952, label %vec.epilog.vector.body5946, !llvm.loop !766

vec.epilog.middle.block5952:                      ; preds = %vec.epilog.vector.body5946
  %cmp.n5953 = icmp eq i64 %i.fdu, %n.vec5945
  br i1 %cmp.n5953, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph188.i.i.preheader

.lr.ph188.i.i.preheader:                          ; preds = %iter.check5939, %vec.epilog.iter.check5940, %vec.epilog.middle.block5952
  %.2187.i.i.ph = phi ptr [ %.1.lcssa.i37.i704, %iter.check5939 ], [ %i.fdy, %vec.epilog.iter.check5940 ], [ %i.ffj, %vec.epilog.middle.block5952 ] ; 3 uses
  %.227186.i.i.ph = phi i32 [ %.126.lcssa.i.i703, %iter.check5939 ], [ %i.fea, %vec.epilog.iter.check5940 ], [ %i.ffl, %vec.epilog.middle.block5952 ] ; 4 uses
  %.230185.i.i.ph = phi ptr [ %.129.lcssa.i.i702, %iter.check5939 ], [ %i.feb, %vec.epilog.iter.check5940 ], [ %i.ffm, %vec.epilog.middle.block5952 ] ; 3 uses
  %i.fgh = sub i32 %i.eqc, %.227186.i.i.ph
  %.neg8033 = add i32 %.227186.i.i.ph, 1
  %xtraiter7874 = and i32 %i.fgh, 1
  %lcmp.mod7875.not = icmp eq i32 %xtraiter7874, 0
  br i1 %lcmp.mod7875.not, label %.lr.ph188.i.i.prol.loopexit, label %.lr.ph188.i.i.prol

.lr.ph188.i.i.prol:                               ; preds = %.lr.ph188.i.i.preheader
  %i.fgi = getelementptr inbounds nuw i8, ptr %.2187.i.i.ph, i64 2
  %i.fgj = load i16, ptr %.2187.i.i.ph, align 2, !tbaa !57
  %i.fgk = zext i16 %i.fgj to i32
  %i.fgl = shl nuw i32 %i.fgk, 16
  %i.fgm = bitcast i32 %i.fgl to float
  %i.fgn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fgm, float %i.faa)
  %i.fgo = bitcast float %i.fgn to i32
  %i.fgp = lshr i32 %i.fgo, 16
  %i.fgq = trunc nuw i32 %i.fgp to i16
  %i.fgr = getelementptr inbounds nuw i8, ptr %.230185.i.i.ph, i64 2
  store i16 %i.fgq, ptr %.230185.i.i.ph, align 2, !tbaa !57
  %i.fgs = add nuw nsw i32 %.227186.i.i.ph, 1
  br label %.lr.ph188.i.i.prol.loopexit

.lr.ph188.i.i.prol.loopexit:                      ; preds = %.lr.ph188.i.i.prol, %.lr.ph188.i.i.preheader
  %.2187.i.i.unr = phi ptr [ %.2187.i.i.ph, %.lr.ph188.i.i.preheader ], [ %i.fgi, %.lr.ph188.i.i.prol ]
  %.227186.i.i.unr = phi i32 [ %.227186.i.i.ph, %.lr.ph188.i.i.preheader ], [ %i.fgs, %.lr.ph188.i.i.prol ]
  %.230185.i.i.unr = phi ptr [ %.230185.i.i.ph, %.lr.ph188.i.i.preheader ], [ %i.fgr, %.lr.ph188.i.i.prol ]
  %i.fgt = icmp eq i32 %i.eqc, %.neg8033
  br i1 %i.fgt, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph188.i.i

.lr.ph181.i.i:                                    ; preds = %.preheader172.i34.i, %.lr.ph181.i.i
  %.1180.i.i = phi ptr [ %i.fji, %.lr.ph181.i.i ], [ %.0.lcssa.i35.i700, %.preheader172.i34.i ] ; 2 uses
  %.126179.i.i = phi i32 [ %i.fjk, %.lr.ph181.i.i ], [ %.025.lcssa.i.i699, %.preheader172.i34.i ]
  %.129178.i.i = phi ptr [ %i.fjj, %.lr.ph181.i.i ], [ %.028.lcssa.i.i698, %.preheader172.i34.i ] ; 2 uses
  %i.fgu = load i64, ptr %.1180.i.i, align 1, !tbaa !60
  %i.fgv = insertelement <2 x i64> poison, i64 %i.fgu, i64 0
  %i.fgw = bitcast <2 x i64> %i.fgv to <8 x i16>
  %i.fgx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fgw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fgy = bitcast <8 x i16> %i.fgx to <4 x float>
  %i.fgz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fgy, <4 x float> splat (float f0x00800000))
  %i.fha = bitcast <4 x float> %i.fgz to <4 x i32> ; 2 uses
  %i.fhb = lshr <4 x i32> %i.fha, splat (i32 23)
  %i.fhc = and <4 x i32> %i.fha, splat (i32 -2139095041)
  %i.fhd = or disjoint <4 x i32> %i.fhc, splat (i32 1056964608)
  %i.fhe = bitcast <4 x i32> %i.fhd to <4 x float> ; 3 uses
  %i.fhf = add nsw <4 x i32> %i.fhb, splat (i32 -127)
  %i.fhg = sitofp fast <4 x i32> %i.fhf to <4 x float> ; 2 uses
  %i.fhh = fadd fast <4 x float> %i.fhg, splat (float 1.000000e+00)
  %i.fhi = fcmp fast olt <4 x float> %i.fhe, splat (float f0x3F3504F3) ; 2 uses
  %i.fhj = select <4 x i1> %i.fhi, <4 x float> %i.fhe, <4 x float> zeroinitializer
  %i.fhk = fadd fast <4 x float> %i.fhe, splat (float -1.000000e+00)
  %i.fhl = select fast <4 x i1> %i.fhi, <4 x float> %i.fhg, <4 x float> %i.fhh ; 2 uses
  %i.fhm = fadd fast <4 x float> %i.fhk, %i.fhj   ; 12 uses
  %i.fhn = fmul fast <4 x float> %i.fhm, %i.fhm   ; 2 uses
  %i.fho = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhm, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.fhp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fho, <4 x float> nofpclass(nan inf) %i.fhm, <4 x float> splat (float f0x3DEF251A))
  %i.fhq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhp, <4 x float> nofpclass(nan inf) %i.fhm, <4 x float> splat (float f0xBDFE5D4F))
  %i.fhr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhq, <4 x float> nofpclass(nan inf) %i.fhm, <4 x float> splat (float f0x3E11E9BF))
  %i.fhs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhr, <4 x float> nofpclass(nan inf) %i.fhm, <4 x float> splat (float f0xBE2AAE50))
  %i.fht = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhs, <4 x float> nofpclass(nan inf) %i.fhm, <4 x float> splat (float f0x3E4CCEAC))
  %i.fhu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fht, <4 x float> nofpclass(nan inf) %i.fhm, <4 x float> splat (float f0xBE7FFFFC))
  %i.fhv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhu, <4 x float> nofpclass(nan inf) %i.fhm, <4 x float> splat (float f0x3EAAAAAA))
  %i.fhw = fmul fast <4 x float> %i.fhn, %i.fhm
  %i.fhx = fmul fast <4 x float> %i.fhw, %i.fhv
  %i.fhy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fhx)
  %i.fhz = fneg fast <4 x float> %i.fhn
  %i.fia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fhz, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fhy)
  %i.fib = fadd fast <4 x float> %i.fia, %i.fhm
  %i.fic = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fib)
  %i.fid = fmul fast <4 x float> %i.fic, %i.far
  %i.fie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fid, <4 x float> splat (float f0x42B0C0A5))
  %i.fif = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fie, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fig = fmul fast <4 x float> %i.fif, splat (float f0x3FB8AA3B)
  %i.fih = fadd fast <4 x float> %i.fig, splat (float 5.000000e-01) ; 2 uses
  %i.fii = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fih)
  %i.fij = sitofp fast <4 x i32> %i.fii to <4 x float> ; 2 uses
  %i.fik = fcmp fast olt <4 x float> %i.fih, %i.fij
  %i.fil = select <4 x i1> %i.fik, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fim = fsub fast <4 x float> %i.fij, %i.fil   ; 2 uses
  %i.fin = fneg fast <4 x float> %i.fim           ; 2 uses
  %i.fio = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fin, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fif)
  %i.fip = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fin, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fio) ; 8 uses
  %i.fiq = fmul fast <4 x float> %i.fip, %i.fip
  %i.fir = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fip, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fis = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fir, <4 x float> nofpclass(nan inf) %i.fip, <4 x float> splat (float f0x3C088908))
  %i.fit = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fis, <4 x float> nofpclass(nan inf) %i.fip, <4 x float> splat (float f0x3D2AA9C1))
  %i.fiu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fit, <4 x float> nofpclass(nan inf) %i.fip, <4 x float> splat (float f0x3E2AAAAA))
  %i.fiv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fiu, <4 x float> nofpclass(nan inf) %i.fip, <4 x float> splat (float 5.000000e-01))
  %i.fiw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fiv, <4 x float> nofpclass(nan inf) %i.fiq, <4 x float> nofpclass(nan inf) %i.fip)
  %i.fix = fadd fast <4 x float> %i.fiw, splat (float 1.000000e+00)
  %i.fiy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fim)
  %i.fiz = shl <4 x i32> %i.fiy, splat (i32 23)
  %i.fja = add <4 x i32> %i.fiz, splat (i32 1065353216)
  %i.fjb = bitcast <4 x i32> %i.fja to <4 x float>
  %i.fjc = fmul fast <4 x float> %i.fix, %i.fjb
  %i.fjd = bitcast <4 x float> %i.fjc to <4 x i32>
  %i.fje = lshr <4 x i32> %i.fjd, splat (i32 16)
  %i.fjf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fje, <4 x i32> poison)
  %i.fjg = bitcast <8 x i16> %i.fjf to <2 x i64>
  %i.fjh = extractelement <2 x i64> %i.fjg, i64 0
  store i64 %i.fjh, ptr %.129178.i.i, align 1, !tbaa !60
  %i.fji = getelementptr inbounds nuw i8, ptr %.1180.i.i, i64 8 ; 2 uses
  %i.fjj = getelementptr inbounds nuw i8, ptr %.129178.i.i, i64 8 ; 2 uses
  %i.fjk = add nuw nsw i32 %.126179.i.i, 4        ; 3 uses
  %i.fjl = or disjoint i32 %i.fjk, 3
  %i.fjm = icmp slt i32 %i.fjl, %i.eqc
  br i1 %i.fjm, label %.lr.ph181.i.i, label %.preheader.i36.i701, !llvm.loop !767

.lr.ph188.i.i:                                    ; preds = %.lr.ph188.i.i.prol.loopexit, %.lr.ph188.i.i
  %.2187.i.i = phi ptr [ %i.fjx, %.lr.ph188.i.i ], [ %.2187.i.i.unr, %.lr.ph188.i.i.prol.loopexit ] ; 3 uses
  %.227186.i.i = phi i32 [ %i.fkh, %.lr.ph188.i.i ], [ %.227186.i.i.unr, %.lr.ph188.i.i.prol.loopexit ]
  %.230185.i.i = phi ptr [ %i.fkg, %.lr.ph188.i.i ], [ %.230185.i.i.unr, %.lr.ph188.i.i.prol.loopexit ] ; 3 uses
  %i.fjn = getelementptr inbounds nuw i8, ptr %.2187.i.i, i64 2
  %i.fjo = load i16, ptr %.2187.i.i, align 2, !tbaa !57
  %i.fjp = zext i16 %i.fjo to i32
  %i.fjq = shl nuw i32 %i.fjp, 16
  %i.fjr = bitcast i32 %i.fjq to float
  %i.fjs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fjr, float %i.faa)
  %i.fjt = bitcast float %i.fjs to i32
  %i.fju = lshr i32 %i.fjt, 16
  %i.fjv = trunc nuw i32 %i.fju to i16
  %i.fjw = getelementptr inbounds nuw i8, ptr %.230185.i.i, i64 2
  store i16 %i.fjv, ptr %.230185.i.i, align 2, !tbaa !57
  %i.fjx = getelementptr inbounds nuw i8, ptr %.2187.i.i, i64 4
  %i.fjy = load i16, ptr %i.fjn, align 2, !tbaa !57
  %i.fjz = zext i16 %i.fjy to i32
  %i.fka = shl nuw i32 %i.fjz, 16
  %i.fkb = bitcast i32 %i.fka to float
  %i.fkc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkb, float %i.faa)
  %i.fkd = bitcast float %i.fkc to i32
  %i.fke = lshr i32 %i.fkd, 16
  %i.fkf = trunc nuw i32 %i.fke to i16
  %i.fkg = getelementptr inbounds nuw i8, ptr %.230185.i.i, i64 4
  store i16 %i.fkf, ptr %i.fjw, align 2, !tbaa !57
  %i.fkh = add nuw nsw i32 %.227186.i.i, 2        ; 2 uses
  %exitcond.not.i38.i705.1 = icmp eq i32 %i.fkh, %i.eqc
  br i1 %exitcond.not.i38.i705.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph188.i.i, !llvm.loop !768

bb.ey:                                            ; preds = %bb.es
  %i.fki = icmp eq i32 %3, 1
  br i1 %i.fki, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey
  %i.fkj = load i16, ptr %0, align 2, !tbaa !57
  %i.fkk = zext i16 %i.fkj to i32
  %i.fkl = shl nuw i32 %i.fkk, 16
  %i.fkm = bitcast i32 %i.fkl to float            ; 14 uses
  %i.fkn = icmp eq i32 %.sroa.speculated.i689, 4
  br i1 %i.fkn, label %.thread.i75.i, label %bb.fa

.thread.i75.i:                                    ; preds = %bb.ez
  %i.fko = load i64, ptr %0, align 2, !tbaa !60
  %i.fkp = insertelement <2 x i64> poison, i64 %i.fko, i64 0
  %i.fkq = bitcast <2 x i64> %i.fkp to <8 x i16>
  %i.fkr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fkq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fks = bitcast <8 x i16> %i.fkr to <4 x float>
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.fkt = insertelement <4 x float> poison, float %i.fkm, i64 0
  %i.fku = shufflevector <4 x float> %i.fkt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fkv = icmp eq i32 %.sroa.speculated.i689, 8
  br i1 %i.fkv, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.fkw = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.fkx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fkw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fky = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fkw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fkz = shufflevector <8 x i16> %i.fkx, <8 x i16> %i.fky, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fla = bitcast <16 x i16> %i.fkz to <8 x float>
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa, %.thread.i75.i
  %i.flb = phi <4 x float> [ %i.fks, %.thread.i75.i ], [ %i.fku, %bb.fa ] ; 2 uses
  %i.flc = shufflevector <4 x float> %i.flb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.fld = phi <4 x float> [ %i.fku, %bb.fb ], [ %i.flb, %bb.fc ]
  %i.fle = phi fast <8 x float> [ %i.fla, %bb.fb ], [ %i.flc, %bb.fc ]
  %i.flf = icmp sgt i32 %i.eqc, 7
  br i1 %i.flf, label %.lr.ph.i60.i697, label %.preheader172.i43.i

.lr.ph.i60.i697:                                  ; preds = %bb.fd
  %i.flg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fle, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.flh = bitcast <8 x float> %i.flg to <8 x i32>
  %i.fli = bitcast <8 x float> %i.flg to <8 x i32>
  %i.flj = and <8 x i32> %i.fli, splat (i32 -2139095041)
  %i.flk = or disjoint <8 x i32> %i.flj, splat (i32 1056964608)
  %i.fll = bitcast <8 x i32> %i.flk to <8 x float> ; 3 uses
  %i.flm = lshr <8 x i32> %i.flh, splat (i32 23)
  %i.fln = add nsw <8 x i32> %i.flm, splat (i32 -127)
  %i.flo = sitofp fast <8 x i32> %i.fln to <8 x float> ; 2 uses
  %i.flp = fadd fast <8 x float> %i.flo, splat (float 1.000000e+00)
  %i.flq = fcmp fast olt <8 x float> %i.fll, splat (float f0x3F3504F3) ; 2 uses
  %i.flr = select <8 x i1> %i.flq, <8 x float> %i.fll, <8 x float> zeroinitializer
  %i.fls = fadd fast <8 x float> %i.fll, splat (float -1.000000e+00)
  %i.flt = select fast <8 x i1> %i.flq, <8 x float> %i.flo, <8 x float> %i.flp ; 2 uses
  %i.flu = fadd fast <8 x float> %i.fls, %i.flr   ; 12 uses
  %i.flv = fmul fast <8 x float> %i.flu, %i.flu   ; 2 uses
  %i.flw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.flu, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.flx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.flw, <8 x float> nofpclass(nan inf) %i.flu, <8 x float> splat (float f0x3DEF251A))
  %i.fly = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.flx, <8 x float> nofpclass(nan inf) %i.flu, <8 x float> splat (float f0xBDFE5D4F))
  %i.flz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fly, <8 x float> nofpclass(nan inf) %i.flu, <8 x float> splat (float f0x3E11E9BF))
  %i.fma = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.flz, <8 x float> nofpclass(nan inf) %i.flu, <8 x float> splat (float f0xBE2AAE50))
  %i.fmb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fma, <8 x float> nofpclass(nan inf) %i.flu, <8 x float> splat (float f0x3E4CCEAC))
  %i.fmc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fmb, <8 x float> nofpclass(nan inf) %i.flu, <8 x float> splat (float f0xBE7FFFFC))
  %i.fmd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fmc, <8 x float> nofpclass(nan inf) %i.flu, <8 x float> splat (float f0x3EAAAAAA))
  %i.fme = fmul fast <8 x float> %i.flv, %i.flu
  %i.fmf = fmul fast <8 x float> %i.fme, %i.fmd
  %i.fmg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.flt, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fmf)
  %i.fmh = fneg fast <8 x float> %i.flv
  %i.fmi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fmh, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.fmg)
  %i.fmj = fadd fast <8 x float> %i.fmi, %i.flu
  %i.fmk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.flt, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fmj)
  br label %bb.fe

.preheader172.loopexit.i74.i:                     ; preds = %bb.fe
  %i.fml = and i32 %i.eqc, 2147483640
  br label %.preheader172.i43.i

.preheader172.i43.i:                              ; preds = %.preheader172.loopexit.i74.i, %bb.fd
  %.028.lcssa.i44.i = phi ptr [ %2, %bb.fd ], [ %i.fpc, %.preheader172.loopexit.i74.i ] ; 2 uses
  %.025.lcssa.i45.i = phi i32 [ 0, %bb.fd ], [ %i.fml, %.preheader172.loopexit.i74.i ] ; 3 uses
  %.0.lcssa.i46.i = phi ptr [ %1, %bb.fd ], [ %i.fpb, %.preheader172.loopexit.i74.i ] ; 2 uses
  %i.fmm = or disjoint i32 %.025.lcssa.i45.i, 3
  %i.fmn = icmp slt i32 %i.fmm, %i.eqc
  br i1 %i.fmn, label %.lr.ph181.i56.i, label %.preheader.i47.i

.lr.ph181.i56.i:                                  ; preds = %.preheader172.i43.i
  %i.fmo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fld, <4 x float> splat (float f0x00800000))
  %i.fmp = bitcast <4 x float> %i.fmo to <4 x i32> ; 2 uses
  %i.fmq = lshr <4 x i32> %i.fmp, splat (i32 23)
  %i.fmr = and <4 x i32> %i.fmp, splat (i32 -2139095041)
  %i.fms = or disjoint <4 x i32> %i.fmr, splat (i32 1056964608)
  %i.fmt = bitcast <4 x i32> %i.fms to <4 x float> ; 3 uses
  %i.fmu = add nsw <4 x i32> %i.fmq, splat (i32 -127)
  %i.fmv = sitofp fast <4 x i32> %i.fmu to <4 x float> ; 2 uses
  %i.fmw = fadd fast <4 x float> %i.fmv, splat (float 1.000000e+00)
  %i.fmx = fcmp fast olt <4 x float> %i.fmt, splat (float f0x3F3504F3) ; 2 uses
  %i.fmy = select <4 x i1> %i.fmx, <4 x float> %i.fmt, <4 x float> zeroinitializer
  %i.fmz = fadd fast <4 x float> %i.fmt, splat (float -1.000000e+00)
  %i.fna = select fast <4 x i1> %i.fmx, <4 x float> %i.fmv, <4 x float> %i.fmw ; 2 uses
  %i.fnb = fadd fast <4 x float> %i.fmz, %i.fmy   ; 12 uses
  %i.fnc = fmul fast <4 x float> %i.fnb, %i.fnb   ; 2 uses
  %i.fnd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnb, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.fne = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnd, <4 x float> nofpclass(nan inf) %i.fnb, <4 x float> splat (float f0x3DEF251A))
  %i.fnf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fne, <4 x float> nofpclass(nan inf) %i.fnb, <4 x float> splat (float f0xBDFE5D4F))
  %i.fng = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnf, <4 x float> nofpclass(nan inf) %i.fnb, <4 x float> splat (float f0x3E11E9BF))
  %i.fnh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fng, <4 x float> nofpclass(nan inf) %i.fnb, <4 x float> splat (float f0xBE2AAE50))
  %i.fni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnh, <4 x float> nofpclass(nan inf) %i.fnb, <4 x float> splat (float f0x3E4CCEAC))
  %i.fnj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fni, <4 x float> nofpclass(nan inf) %i.fnb, <4 x float> splat (float f0xBE7FFFFC))
  %i.fnk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnj, <4 x float> nofpclass(nan inf) %i.fnb, <4 x float> splat (float f0x3EAAAAAA))
  %i.fnl = fmul fast <4 x float> %i.fnc, %i.fnb
  %i.fnm = fmul fast <4 x float> %i.fnl, %i.fnk
  %i.fnn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fna, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fnm)
  %i.fno = fneg fast <4 x float> %i.fnc
  %i.fnp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fno, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fnn)
  %i.fnq = fadd fast <4 x float> %i.fnp, %i.fnb
  %i.fnr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fna, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fnq)
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fe, %.lr.ph.i60.i697
  %.0175.i66.i = phi ptr [ %1, %.lr.ph.i60.i697 ], [ %i.fpb, %bb.fe ] ; 2 uses
  %.025174.i67.i = phi i32 [ 0, %.lr.ph.i60.i697 ], [ %i.fpd, %bb.fe ]
  %.028173.i68.i = phi ptr [ %2, %.lr.ph.i60.i697 ], [ %i.fpc, %bb.fe ] ; 2 uses
  %i.fns = load <8 x i16>, ptr %.0175.i66.i, align 1, !tbaa !60 ; 2 uses
  %i.fnt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fns, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fnu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fns, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fnv = shufflevector <8 x i16> %i.fnt, <8 x i16> %i.fnu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fnw = bitcast <16 x i16> %i.fnv to <8 x float>
  %i.fnx = fmul fast <8 x float> %i.fmk, %i.fnw
  %i.fny = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fnx, <8 x float> splat (float f0x42B0C0A5))
  %i.fnz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fny, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.foa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fnz, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fob = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.foa, i32 1) ; 2 uses
  %i.foc = fcmp fast ogt <8 x float> %i.fob, %i.foa
  %i.fod = select <8 x i1> %i.foc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.foe = fsub fast <8 x float> %i.fob, %i.fod   ; 2 uses
  %i.fof = fneg fast <8 x float> %i.foe           ; 2 uses
  %i.fog = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fof, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fnz)
  %i.foh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fof, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fog) ; 8 uses
  %i.foi = fmul fast <8 x float> %i.foh, %i.foh
  %i.foj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.foh, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fok = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.foj, <8 x float> nofpclass(nan inf) %i.foh, <8 x float> splat (float f0x3C088908))
  %i.fol = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fok, <8 x float> nofpclass(nan inf) %i.foh, <8 x float> splat (float f0x3D2AA9C1))
  %i.fom = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fol, <8 x float> nofpclass(nan inf) %i.foh, <8 x float> splat (float f0x3E2AAAAA))
  %i.fon = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fom, <8 x float> nofpclass(nan inf) %i.foh, <8 x float> splat (float 5.000000e-01))
  %i.foo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fon, <8 x float> nofpclass(nan inf) %i.foi, <8 x float> nofpclass(nan inf) %i.foh)
  %i.fop = fadd fast <8 x float> %i.foo, splat (float 1.000000e+00)
  %i.foq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.foe)
  %i.for = shl <8 x i32> %i.foq, splat (i32 23)
  %i.fos = add <8 x i32> %i.for, splat (i32 1065353216)
  %i.fot = bitcast <8 x i32> %i.fos to <8 x float>
  %i.fou = fmul fast <8 x float> %i.fop, %i.fot
  %i.fov = bitcast <8 x float> %i.fou to <8 x i32> ; 2 uses
  %i.fow = shufflevector <8 x i32> %i.fov, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fox = shufflevector <8 x i32> %i.fov, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.foy = lshr <4 x i32> %i.fow, splat (i32 16)
  %i.foz = lshr <4 x i32> %i.fox, splat (i32 16)
  %i.fpa = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.foy, <4 x i32> %i.foz)
  store <8 x i16> %i.fpa, ptr %.028173.i68.i, align 1, !tbaa !60
  %i.fpb = getelementptr inbounds nuw i8, ptr %.0175.i66.i, i64 16 ; 2 uses
  %i.fpc = getelementptr inbounds nuw i8, ptr %.028173.i68.i, i64 16 ; 2 uses
  %i.fpd = add nuw nsw i32 %.025174.i67.i, 8      ; 2 uses
  %i.fpe = or disjoint i32 %i.fpd, 7
  %i.fpf = icmp slt i32 %i.fpe, %i.eqc
  br i1 %i.fpf, label %bb.fe, label %.preheader172.loopexit.i74.i, !llvm.loop !769

.preheader.i47.i:                                 ; preds = %bb.ff, %.preheader172.i43.i
  %.129.lcssa.i48.i = phi ptr [ %.028.lcssa.i44.i, %.preheader172.i43.i ], [ %i.ftv, %bb.ff ] ; 6 uses
  %.126.lcssa.i49.i = phi i32 [ %.025.lcssa.i45.i, %.preheader172.i43.i ], [ %i.ftw, %bb.ff ] ; 5 uses
  %.1.lcssa.i50.i = phi ptr [ %.0.lcssa.i46.i, %.preheader172.i43.i ], [ %i.ftu, %bb.ff ] ; 6 uses
  %i.fpg = icmp slt i32 %.126.lcssa.i49.i, %i.eqc
  br i1 %i.fpg, label %iter.check5900, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5900:                                   ; preds = %.preheader.i47.i
  %.129.lcssa.i48.i5884 = ptrtoaddr ptr %.129.lcssa.i48.i to i64
  %.1.lcssa.i50.i5883 = ptrtoaddr ptr %.1.lcssa.i50.i to i64
  %i.fph = xor i32 %.126.lcssa.i49.i, -1
  %i.fpi = add i32 %i.eqc, %i.fph                 ; 3 uses
  %i.fpj = zext i32 %i.fpi to i64
  %i.fpk = add nuw nsw i64 %i.fpj, 1              ; 5 uses
  %min.iters.check5885 = icmp ult i32 %i.fpi, 3
  %i.fpl = sub i64 %.1.lcssa.i50.i5883, %.129.lcssa.i48.i5884
  %diff.check5887 = icmp ugt i64 %i.fpl, -32
  %or.cond7099 = select i1 %min.iters.check5885, i1 true, i1 %diff.check5887
  br i1 %or.cond7099, label %.lr.ph188.i51.i.preheader, label %vector.main.loop.iter.check5888

vector.main.loop.iter.check5888:                  ; preds = %iter.check5900
  %min.iters.check5889 = icmp ult i32 %i.fpi, 15
  br i1 %min.iters.check5889, label %vec.epilog.ph5904, label %vector.ph5890

vector.ph5890:                                    ; preds = %vector.main.loop.iter.check5888
  %i.fpm = and i64 %i.fpk, 12
  %n.vec5891 = and i64 %i.fpk, 8589934576         ; 5 uses
  %i.fpn = shl nuw nsw i64 %n.vec5891, 1          ; 2 uses
  %i.fpo = getelementptr i8, ptr %.1.lcssa.i50.i, i64 %i.fpn
  %i.fpp = trunc i64 %n.vec5891 to i32
  %i.fpq = add i32 %.126.lcssa.i49.i, %i.fpp
  %i.fpr = getelementptr i8, ptr %.129.lcssa.i48.i, i64 %i.fpn
  %i.fps = insertelement <8 x float> poison, float %i.fkm, i64 0
  %i.fpt = shufflevector <8 x float> %i.fps, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fpu = insertelement <4 x float> poison, float %i.fkm, i64 0
  %i.fpv = shufflevector <4 x float> %i.fpu, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5892

vector.body5892:                                  ; preds = %vector.ph5890, %vector.body5892
  %index5893 = phi i64 [ 0, %vector.ph5890 ], [ %index.next5897, %vector.body5892 ] ; 2 uses
  %i.fpw = shl i64 %index5893, 1                  ; 2 uses
  %next.gep5894 = getelementptr i8, ptr %.1.lcssa.i50.i, i64 %i.fpw
  %next.gep5895 = getelementptr i8, ptr %.129.lcssa.i48.i, i64 %i.fpw
  %wide.load5896 = load <16 x i16>, ptr %next.gep5894, align 2, !tbaa !57
  %i.fpx = zext <16 x i16> %wide.load5896 to <16 x i32>
  %i.fpy = shl nuw <16 x i32> %i.fpx, splat (i32 16)
  %i.fpz = bitcast <16 x i32> %i.fpy to <16 x float> ; 6 uses
  %i.fqa = extractelement <16 x float> %i.fpz, i64 0
  %i.fqb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.fqa)
  %i.fqc = extractelement <16 x float> %i.fpz, i64 1
  %i.fqd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.fqc)
  %i.fqe = extractelement <16 x float> %i.fpz, i64 2
  %i.fqf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.fqe)
  %i.fqg = extractelement <16 x float> %i.fpz, i64 3
  %i.fqh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.fqg)
  %i.fqi = shufflevector <16 x float> %i.fpz, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fqj = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.fpv, <4 x float> %i.fqi)
  %i.fqk = shufflevector <16 x float> %i.fpz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fql = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.fpt, <8 x float> %i.fqk)
  %i.fqm = insertelement <16 x float> poison, float %i.fqb, i64 0
  %i.fqn = insertelement <16 x float> %i.fqm, float %i.fqd, i64 1
  %i.fqo = insertelement <16 x float> %i.fqn, float %i.fqf, i64 2
  %i.fqp = insertelement <16 x float> %i.fqo, float %i.fqh, i64 3
  %i.fqq = shufflevector <4 x float> %i.fqj, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fqr = shufflevector <16 x float> %i.fqp, <16 x float> %i.fqq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fqs = shufflevector <8 x float> %i.fql, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fqt = shufflevector <16 x float> %i.fqr, <16 x float> %i.fqs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fqu = bitcast <16 x float> %i.fqt to <16 x i32>
  %i.fqv = lshr <16 x i32> %i.fqu, splat (i32 16)
  %i.fqw = trunc nuw <16 x i32> %i.fqv to <16 x i16>
  store <16 x i16> %i.fqw, ptr %next.gep5895, align 2, !tbaa !57
  %index.next5897 = add nuw i64 %index5893, 16    ; 2 uses
  %i.fqx = icmp eq i64 %index.next5897, %n.vec5891
  br i1 %i.fqx, label %middle.block5898, label %vector.body5892, !llvm.loop !770

middle.block5898:                                 ; preds = %vector.body5892
  %cmp.n5899 = icmp eq i64 %i.fpk, %n.vec5891
  br i1 %cmp.n5899, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5901

vec.epilog.iter.check5901:                        ; preds = %middle.block5898
  %min.epilog.iters.check5903 = icmp eq i64 %i.fpm, 0
  br i1 %min.epilog.iters.check5903, label %.lr.ph188.i51.i.preheader, label %vec.epilog.ph5904, !prof !64

vec.epilog.ph5904:                                ; preds = %vector.main.loop.iter.check5888, %vec.epilog.iter.check5901
  %vec.epilog.resume.val5905 = phi i64 [ %n.vec5891, %vec.epilog.iter.check5901 ], [ 0, %vector.main.loop.iter.check5888 ]
  %n.vec5906 = and i64 %i.fpk, 8589934588         ; 4 uses
  %i.fqy = shl nuw nsw i64 %n.vec5906, 1          ; 2 uses
  %i.fqz = getelementptr i8, ptr %.1.lcssa.i50.i, i64 %i.fqy
  %i.fra = trunc i64 %n.vec5906 to i32
  %i.frb = add i32 %.126.lcssa.i49.i, %i.fra
  %i.frc = getelementptr i8, ptr %.129.lcssa.i48.i, i64 %i.fqy
  br label %vec.epilog.vector.body5907

vec.epilog.vector.body5907:                       ; preds = %vec.epilog.vector.body5907, %vec.epilog.ph5904
  %index5908 = phi i64 [ %vec.epilog.resume.val5905, %vec.epilog.ph5904 ], [ %index.next5912, %vec.epilog.vector.body5907 ] ; 2 uses
  %i.frd = shl i64 %index5908, 1                  ; 2 uses
  %next.gep5909 = getelementptr i8, ptr %.1.lcssa.i50.i, i64 %i.frd
  %next.gep5910 = getelementptr i8, ptr %.129.lcssa.i48.i, i64 %i.frd
  %wide.load5911 = load <4 x i16>, ptr %next.gep5909, align 2, !tbaa !57
  %i.fre = zext <4 x i16> %wide.load5911 to <4 x i32>
  %i.frf = shl nuw <4 x i32> %i.fre, splat (i32 16)
  %i.frg = bitcast <4 x i32> %i.frf to <4 x float> ; 4 uses
  %i.frh = extractelement <4 x float> %i.frg, i64 0
  %i.fri = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.frh)
  %i.frj = extractelement <4 x float> %i.frg, i64 1
  %i.frk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.frj)
  %i.frl = extractelement <4 x float> %i.frg, i64 2
  %i.frm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.frl)
  %i.frn = extractelement <4 x float> %i.frg, i64 3
  %i.fro = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.frn)
  %i.frp = insertelement <4 x float> poison, float %i.fri, i64 0
  %i.frq = insertelement <4 x float> %i.frp, float %i.frk, i64 1
  %i.frr = insertelement <4 x float> %i.frq, float %i.frm, i64 2
  %i.frs = insertelement <4 x float> %i.frr, float %i.fro, i64 3
  %i.frt = bitcast <4 x float> %i.frs to <4 x i32>
  %i.fru = lshr <4 x i32> %i.frt, splat (i32 16)
  %i.frv = trunc nuw <4 x i32> %i.fru to <4 x i16>
  store <4 x i16> %i.frv, ptr %next.gep5910, align 2, !tbaa !57
  %index.next5912 = add nuw i64 %index5908, 4     ; 2 uses
  %i.frw = icmp eq i64 %index.next5912, %n.vec5906
  br i1 %i.frw, label %vec.epilog.middle.block5913, label %vec.epilog.vector.body5907, !llvm.loop !771

vec.epilog.middle.block5913:                      ; preds = %vec.epilog.vector.body5907
  %cmp.n5914 = icmp eq i64 %i.fpk, %n.vec5906
  br i1 %cmp.n5914, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph188.i51.i.preheader

.lr.ph188.i51.i.preheader:                        ; preds = %iter.check5900, %vec.epilog.iter.check5901, %vec.epilog.middle.block5913
  %.2187.i52.i.ph = phi ptr [ %.1.lcssa.i50.i, %iter.check5900 ], [ %i.fpo, %vec.epilog.iter.check5901 ], [ %i.fqz, %vec.epilog.middle.block5913 ] ; 3 uses
  %.227186.i53.i.ph = phi i32 [ %.126.lcssa.i49.i, %iter.check5900 ], [ %i.fpq, %vec.epilog.iter.check5901 ], [ %i.frb, %vec.epilog.middle.block5913 ] ; 4 uses
  %.230185.i54.i.ph = phi ptr [ %.129.lcssa.i48.i, %iter.check5900 ], [ %i.fpr, %vec.epilog.iter.check5901 ], [ %i.frc, %vec.epilog.middle.block5913 ] ; 3 uses
  %i.frx = sub i32 %i.eqc, %.227186.i53.i.ph
  %.neg8032 = add i32 %.227186.i53.i.ph, 1
  %xtraiter7872 = and i32 %i.frx, 1
  %lcmp.mod7873.not = icmp eq i32 %xtraiter7872, 0
  br i1 %lcmp.mod7873.not, label %.lr.ph188.i51.i.prol.loopexit, label %.lr.ph188.i51.i.prol

.lr.ph188.i51.i.prol:                             ; preds = %.lr.ph188.i51.i.preheader
  %i.fry = getelementptr inbounds nuw i8, ptr %.2187.i52.i.ph, i64 2
  %i.frz = load i16, ptr %.2187.i52.i.ph, align 2, !tbaa !57
  %i.fsa = zext i16 %i.frz to i32
  %i.fsb = shl nuw i32 %i.fsa, 16
  %i.fsc = bitcast i32 %i.fsb to float
  %i.fsd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.fsc)
  %i.fse = bitcast float %i.fsd to i32
  %i.fsf = lshr i32 %i.fse, 16
  %i.fsg = trunc nuw i32 %i.fsf to i16
  %i.fsh = getelementptr inbounds nuw i8, ptr %.230185.i54.i.ph, i64 2
  store i16 %i.fsg, ptr %.230185.i54.i.ph, align 2, !tbaa !57
  %i.fsi = add nuw nsw i32 %.227186.i53.i.ph, 1
  br label %.lr.ph188.i51.i.prol.loopexit

.lr.ph188.i51.i.prol.loopexit:                    ; preds = %.lr.ph188.i51.i.prol, %.lr.ph188.i51.i.preheader
  %.2187.i52.i.unr = phi ptr [ %.2187.i52.i.ph, %.lr.ph188.i51.i.preheader ], [ %i.fry, %.lr.ph188.i51.i.prol ]
  %.227186.i53.i.unr = phi i32 [ %.227186.i53.i.ph, %.lr.ph188.i51.i.preheader ], [ %i.fsi, %.lr.ph188.i51.i.prol ]
  %.230185.i54.i.unr = phi ptr [ %.230185.i54.i.ph, %.lr.ph188.i51.i.preheader ], [ %i.fsh, %.lr.ph188.i51.i.prol ]
  %i.fsj = icmp eq i32 %i.eqc, %.neg8032
  br i1 %i.fsj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph188.i51.i

bb.ff:                                            ; preds = %bb.ff, %.lr.ph181.i56.i
  %.1180.i57.i = phi ptr [ %.0.lcssa.i46.i, %.lr.ph181.i56.i ], [ %i.ftu, %bb.ff ] ; 2 uses
  %.126179.i58.i = phi i32 [ %.025.lcssa.i45.i, %.lr.ph181.i56.i ], [ %i.ftw, %bb.ff ]
  %.129178.i59.i = phi ptr [ %.028.lcssa.i44.i, %.lr.ph181.i56.i ], [ %i.ftv, %bb.ff ] ; 2 uses
  %i.fsk = load i64, ptr %.1180.i57.i, align 1, !tbaa !60
  %i.fsl = insertelement <2 x i64> poison, i64 %i.fsk, i64 0
  %i.fsm = bitcast <2 x i64> %i.fsl to <8 x i16>
  %i.fsn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fsm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fso = bitcast <8 x i16> %i.fsn to <4 x float>
  %i.fsp = fmul fast <4 x float> %i.fnr, %i.fso
  %i.fsq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fsp, <4 x float> splat (float f0x42B0C0A5))
  %i.fsr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fsq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fss = fmul fast <4 x float> %i.fsr, splat (float f0x3FB8AA3B)
  %i.fst = fadd fast <4 x float> %i.fss, splat (float 5.000000e-01) ; 2 uses
  %i.fsu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fst)
  %i.fsv = sitofp fast <4 x i32> %i.fsu to <4 x float> ; 2 uses
  %i.fsw = fcmp fast olt <4 x float> %i.fst, %i.fsv
  %i.fsx = select <4 x i1> %i.fsw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fsy = fsub fast <4 x float> %i.fsv, %i.fsx   ; 2 uses
  %i.fsz = fneg fast <4 x float> %i.fsy           ; 2 uses
  %i.fta = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fsz, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fsr)
  %i.ftb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fsz, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fta) ; 8 uses
  %i.ftc = fmul fast <4 x float> %i.ftb, %i.ftb
  %i.ftd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftb, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fte = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftd, <4 x float> nofpclass(nan inf) %i.ftb, <4 x float> splat (float f0x3C088908))
  %i.ftf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fte, <4 x float> nofpclass(nan inf) %i.ftb, <4 x float> splat (float f0x3D2AA9C1))
  %i.ftg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftf, <4 x float> nofpclass(nan inf) %i.ftb, <4 x float> splat (float f0x3E2AAAAA))
  %i.fth = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ftg, <4 x float> nofpclass(nan inf) %i.ftb, <4 x float> splat (float 5.000000e-01))
  %i.fti = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fth, <4 x float> nofpclass(nan inf) %i.ftc, <4 x float> nofpclass(nan inf) %i.ftb)
  %i.ftj = fadd fast <4 x float> %i.fti, splat (float 1.000000e+00)
  %i.ftk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fsy)
  %i.ftl = shl <4 x i32> %i.ftk, splat (i32 23)
  %i.ftm = add <4 x i32> %i.ftl, splat (i32 1065353216)
  %i.ftn = bitcast <4 x i32> %i.ftm to <4 x float>
  %i.fto = fmul fast <4 x float> %i.ftj, %i.ftn
  %i.ftp = bitcast <4 x float> %i.fto to <4 x i32>
  %i.ftq = lshr <4 x i32> %i.ftp, splat (i32 16)
  %i.ftr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ftq, <4 x i32> poison)
  %i.fts = bitcast <8 x i16> %i.ftr to <2 x i64>
  %i.ftt = extractelement <2 x i64> %i.fts, i64 0
  store i64 %i.ftt, ptr %.129178.i59.i, align 1, !tbaa !60
  %i.ftu = getelementptr inbounds nuw i8, ptr %.1180.i57.i, i64 8 ; 2 uses
  %i.ftv = getelementptr inbounds nuw i8, ptr %.129178.i59.i, i64 8 ; 2 uses
  %i.ftw = add nuw nsw i32 %.126179.i58.i, 4      ; 3 uses
  %i.ftx = or disjoint i32 %i.ftw, 3
  %i.fty = icmp slt i32 %i.ftx, %i.eqc
  br i1 %i.fty, label %bb.ff, label %.preheader.i47.i, !llvm.loop !772

.lr.ph188.i51.i:                                  ; preds = %.lr.ph188.i51.i.prol.loopexit, %.lr.ph188.i51.i
  %.2187.i52.i = phi ptr [ %i.fuj, %.lr.ph188.i51.i ], [ %.2187.i52.i.unr, %.lr.ph188.i51.i.prol.loopexit ] ; 3 uses
  %.227186.i53.i = phi i32 [ %i.fut, %.lr.ph188.i51.i ], [ %.227186.i53.i.unr, %.lr.ph188.i51.i.prol.loopexit ]
  %.230185.i54.i = phi ptr [ %i.fus, %.lr.ph188.i51.i ], [ %.230185.i54.i.unr, %.lr.ph188.i51.i.prol.loopexit ] ; 3 uses
  %i.ftz = getelementptr inbounds nuw i8, ptr %.2187.i52.i, i64 2
  %i.fua = load i16, ptr %.2187.i52.i, align 2, !tbaa !57
  %i.fub = zext i16 %i.fua to i32
  %i.fuc = shl nuw i32 %i.fub, 16
  %i.fud = bitcast i32 %i.fuc to float
  %i.fue = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.fud)
  %i.fuf = bitcast float %i.fue to i32
  %i.fug = lshr i32 %i.fuf, 16
  %i.fuh = trunc nuw i32 %i.fug to i16
  %i.fui = getelementptr inbounds nuw i8, ptr %.230185.i54.i, i64 2
  store i16 %i.fuh, ptr %.230185.i54.i, align 2, !tbaa !57
  %i.fuj = getelementptr inbounds nuw i8, ptr %.2187.i52.i, i64 4
  %i.fuk = load i16, ptr %i.ftz, align 2, !tbaa !57
  %i.ful = zext i16 %i.fuk to i32
  %i.fum = shl nuw i32 %i.ful, 16
  %i.fun = bitcast i32 %i.fum to float
  %i.fuo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fkm, float %i.fun)
  %i.fup = bitcast float %i.fuo to i32
  %i.fuq = lshr i32 %i.fup, 16
  %i.fur = trunc nuw i32 %i.fuq to i16
  %i.fus = getelementptr inbounds nuw i8, ptr %.230185.i54.i, i64 4
  store i16 %i.fur, ptr %i.fui, align 2, !tbaa !57
  %i.fut = add nuw nsw i32 %.227186.i53.i, 2      ; 2 uses
  %exitcond.not.i55.i696.1 = icmp eq i32 %i.fut, %i.eqc
  br i1 %exitcond.not.i55.i696.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph188.i51.i, !llvm.loop !773

bb.fg:                                            ; preds = %bb.ey, %bb.ep
  %i.fuu = icmp eq i32 %6, 1
  br i1 %i.fuu, label %bb.fh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.fh:                                            ; preds = %bb.fg
  %i.fuv = icmp eq i32 %3, %4
  br i1 %i.fuv, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  switch i32 %.sroa.speculated.i689, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i78.i
    i32 4, label %.preheader162.i.i
  ]

.preheader162.i.i:                                ; preds = %bb.fi
  %i.fuw = icmp sgt i32 %.sroa.speculated107.i, 0
  br i1 %i.fuw, label %.lr.ph.i76.i695, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i78.i:                                 ; preds = %bb.fi
  %i.fux = icmp sgt i32 %.sroa.speculated107.i, 0
  br i1 %i.fux, label %.lr.ph172.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph172.i.i:                                    ; preds = %.preheader.i78.i, %.lr.ph172.i.i
  %.020171.i.i = phi ptr [ %i.fxs, %.lr.ph172.i.i ], [ %0, %.preheader.i78.i ] ; 2 uses
  %.021170.i.i = phi i32 [ %i.fxv, %.lr.ph172.i.i ], [ 0, %.preheader.i78.i ]
  %.022169.i.i = phi ptr [ %i.fxt, %.lr.ph172.i.i ], [ %1, %.preheader.i78.i ] ; 2 uses
  %.024168.i.i = phi ptr [ %i.fxu, %.lr.ph172.i.i ], [ %2, %.preheader.i78.i ] ; 2 uses
  %i.fuy = load <8 x i16>, ptr %.020171.i.i, align 1, !tbaa !60 ; 2 uses
  %i.fuz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fuy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fva = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fuy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fvb = shufflevector <8 x i16> %i.fuz, <8 x i16> %i.fva, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fvc = bitcast <16 x i16> %i.fvb to <8 x float>
  %i.fvd = load i16, ptr %.022169.i.i, align 2, !tbaa !57
  %i.fve = zext i16 %i.fvd to i32
  %i.fvf = shl nuw i32 %i.fve, 16
  %i.fvg = insertelement <8 x i32> poison, i32 %i.fvf, i64 0
  %i.fvh = bitcast <8 x i32> %i.fvg to <8 x float>
  %i.fvi = shufflevector <8 x float> %i.fvh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fvj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fvc, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.fvk = bitcast <8 x float> %i.fvj to <8 x i32>
  %i.fvl = bitcast <8 x float> %i.fvj to <8 x i32>
  %i.fvm = and <8 x i32> %i.fvl, splat (i32 -2139095041)
  %i.fvn = or disjoint <8 x i32> %i.fvm, splat (i32 1056964608)
  %i.fvo = bitcast <8 x i32> %i.fvn to <8 x float> ; 3 uses
  %i.fvp = lshr <8 x i32> %i.fvk, splat (i32 23)
  %i.fvq = add nsw <8 x i32> %i.fvp, splat (i32 -127)
  %i.fvr = sitofp fast <8 x i32> %i.fvq to <8 x float> ; 2 uses
  %i.fvs = fadd fast <8 x float> %i.fvr, splat (float 1.000000e+00)
  %i.fvt = fcmp fast olt <8 x float> %i.fvo, splat (float f0x3F3504F3) ; 2 uses
  %i.fvu = select <8 x i1> %i.fvt, <8 x float> %i.fvo, <8 x float> zeroinitializer
  %i.fvv = fadd fast <8 x float> %i.fvo, splat (float -1.000000e+00)
  %i.fvw = select fast <8 x i1> %i.fvt, <8 x float> %i.fvr, <8 x float> %i.fvs ; 2 uses
  %i.fvx = fadd fast <8 x float> %i.fvv, %i.fvu   ; 12 uses
  %i.fvy = fmul fast <8 x float> %i.fvx, %i.fvx   ; 2 uses
  %i.fvz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fvx, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.fwa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fvz, <8 x float> nofpclass(nan inf) %i.fvx, <8 x float> splat (float f0x3DEF251A))
  %i.fwb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fwa, <8 x float> nofpclass(nan inf) %i.fvx, <8 x float> splat (float f0xBDFE5D4F))
  %i.fwc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fwb, <8 x float> nofpclass(nan inf) %i.fvx, <8 x float> splat (float f0x3E11E9BF))
  %i.fwd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fwc, <8 x float> nofpclass(nan inf) %i.fvx, <8 x float> splat (float f0xBE2AAE50))
  %i.fwe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fwd, <8 x float> nofpclass(nan inf) %i.fvx, <8 x float> splat (float f0x3E4CCEAC))
  %i.fwf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fwe, <8 x float> nofpclass(nan inf) %i.fvx, <8 x float> splat (float f0xBE7FFFFC))
  %i.fwg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fwf, <8 x float> nofpclass(nan inf) %i.fvx, <8 x float> splat (float f0x3EAAAAAA))
  %i.fwh = fmul fast <8 x float> %i.fvy, %i.fvx
  %i.fwi = fmul fast <8 x float> %i.fwh, %i.fwg
  %i.fwj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fvw, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fwi)
  %i.fwk = fneg fast <8 x float> %i.fvy
  %i.fwl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fwk, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.fwj)
  %i.fwm = fadd fast <8 x float> %i.fwl, %i.fvx
  %i.fwn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fvw, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fwm)
  %i.fwo = fmul fast <8 x float> %i.fwn, %i.fvi
  %i.fwp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fwo, <8 x float> splat (float f0x42B0C0A5))
  %i.fwq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fwp, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fwr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fwq, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fws = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fwr, i32 1) ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.fze = fmul fast <4 x float> %i.fyv, %i.fyu
  %i.fzf = fmul fast <4 x float> %i.fze, %i.fzd
  %i.fzg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fyt, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fzf)
  %i.fzh = fneg fast <4 x float> %i.fyv
  %i.fzi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fzh, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fzg)
  %i.fzj = fadd fast <4 x float> %i.fzi, %i.fyu
  %i.fzk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fyt, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fzj)
  %i.fzl = fmul fast <4 x float> %i.fzk, %i.fyg
  %i.fzm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fzl, <4 x float> splat (float f0x42B0C0A5))
  %i.fzn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fzm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fzo = fmul fast <4 x float> %i.fzn, splat (float f0x3FB8AA3B)
  %i.fzp = fadd fast <4 x float> %i.fzo, splat (float 5.000000e-01) ; 2 uses
  %i.fzq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fzp)
  %i.fzr = sitofp fast <4 x i32> %i.fzq to <4 x float> ; 2 uses
  %i.fzs = fcmp fast olt <4 x float> %i.fzp, %i.fzr
  %i.fzt = select <4 x i1> %i.fzs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fzu = fsub fast <4 x float> %i.fzr, %i.fzt   ; 2 uses
  %i.fzv = fneg fast <4 x float> %i.fzu           ; 2 uses
  %i.fzw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fzv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fzn)
  %i.fzx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fzv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fzw) ; 8 uses
  %i.fzy = fmul fast <4 x float> %i.fzx, %i.fzx
  %i.fzz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fzx, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gaa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fzz, <4 x float> nofpclass(nan inf) %i.fzx, <4 x float> splat (float f0x3C088908))
  %i.gab = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gaa, <4 x float> nofpclass(nan inf) %i.fzx, <4 x float> splat (float f0x3D2AA9C1))
  %i.gac = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gab, <4 x float> nofpclass(nan inf) %i.fzx, <4 x float> splat (float f0x3E2AAAAA))
  %i.gad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gac, <4 x float> nofpclass(nan inf) %i.fzx, <4 x float> splat (float 5.000000e-01))
  %i.gae = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gad, <4 x float> nofpclass(nan inf) %i.fzy, <4 x float> nofpclass(nan inf) %i.fzx)
  %i.gaf = fadd fast <4 x float> %i.gae, splat (float 1.000000e+00)
  %i.gag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fzu)
  %i.gah = shl <4 x i32> %i.gag, splat (i32 23)
  %i.gai = add <4 x i32> %i.gah, splat (i32 1065353216)
  %i.gaj = bitcast <4 x i32> %i.gai to <4 x float>
  %i.gak = fmul fast <4 x float> %i.gaf, %i.gaj
  %i.gal = bitcast <4 x float> %i.gak to <4 x i32>
  %i.gam = lshr <4 x i32> %i.gal, splat (i32 16)
  %i.gan = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gam, <4 x i32> poison)
  %i.gao = bitcast <8 x i16> %i.gan to <2 x i64>
  %i.gap = extractelement <2 x i64> %i.gao, i64 0
  store i64 %i.gap, ptr %.125164.i.i, align 1, !tbaa !60
  %i.gaq = getelementptr inbounds nuw i8, ptr %.1166.i.i, i64 8
  %i.gar = getelementptr inbounds nuw i8, ptr %.123165.i.i, i64 2
  %i.gas = getelementptr inbounds nuw i8, ptr %.125164.i.i, i64 8
  %i.gat = add nuw nsw i32 %.0167.i.i, 1          ; 2 uses
  %exitcond.not.i77.i = icmp eq i32 %i.gat, %.sroa.speculated107.i
  br i1 %exitcond.not.i77.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i76.i695, !llvm.loop !775

bb.fj:                                            ; preds = %bb.fh
  %i.gau = icmp eq i32 %4, 1
  br i1 %i.gau, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %.val.i690 = load i16, ptr %1, align 2, !tbaa !57
  %i.gav = zext i16 %.val.i690 to i32
  %i.gaw = shl nuw i32 %i.gav, 16
  %i.gax = bitcast i32 %i.gaw to float            ; 15 uses
  %i.gay = insertelement <8 x float> poison, float %i.gax, i64 0
  %i.gaz = shufflevector <8 x float> %i.gay, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gba = icmp sgt i32 %i.eqc, 7
  br i1 %i.gba, label %.lr.ph.i87.i, label %._crit_edge.i.i691

.lr.ph.i87.i:                                     ; preds = %bb.fk, %.lr.ph.i87.i
  %.0127.i.i = phi ptr [ %i.gdp, %.lr.ph.i87.i ], [ %0, %bb.fk ] ; 2 uses
  %.022126.i.i = phi i32 [ %i.gdr, %.lr.ph.i87.i ], [ 0, %bb.fk ]
  %.025125.i.i = phi ptr [ %i.gdq, %.lr.ph.i87.i ], [ %2, %bb.fk ] ; 2 uses
  %i.gbb = load <8 x i16>, ptr %.0127.i.i, align 1, !tbaa !60 ; 2 uses
  %i.gbc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gbb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gbd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gbb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gbe = shufflevector <8 x i16> %i.gbc, <8 x i16> %i.gbd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gbf = bitcast <16 x i16> %i.gbe to <8 x float>
  %i.gbg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gbf, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gbh = bitcast <8 x float> %i.gbg to <8 x i32>
  %i.gbi = bitcast <8 x float> %i.gbg to <8 x i32>
  %i.gbj = and <8 x i32> %i.gbi, splat (i32 -2139095041)
  %i.gbk = or disjoint <8 x i32> %i.gbj, splat (i32 1056964608)
  %i.gbl = bitcast <8 x i32> %i.gbk to <8 x float> ; 3 uses
  %i.gbm = lshr <8 x i32> %i.gbh, splat (i32 23)
  %i.gbn = add nsw <8 x i32> %i.gbm, splat (i32 -127)
  %i.gbo = sitofp fast <8 x i32> %i.gbn to <8 x float> ; 2 uses
  %i.gbp = fadd fast <8 x float> %i.gbo, splat (float 1.000000e+00)
  %i.gbq = fcmp fast olt <8 x float> %i.gbl, splat (float f0x3F3504F3) ; 2 uses
  %i.gbr = select <8 x i1> %i.gbq, <8 x float> %i.gbl, <8 x float> zeroinitializer
  %i.gbs = fadd fast <8 x float> %i.gbl, splat (float -1.000000e+00)
  %i.gbt = select fast <8 x i1> %i.gbq, <8 x float> %i.gbo, <8 x float> %i.gbp ; 2 uses
  %i.gbu = fadd fast <8 x float> %i.gbs, %i.gbr   ; 12 uses
  %i.gbv = fmul fast <8 x float> %i.gbu, %i.gbu   ; 2 uses
  %i.gbw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gbu, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.gbx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gbw, <8 x float> nofpclass(nan inf) %i.gbu, <8 x float> splat (float f0x3DEF251A))
  %i.gby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gbx, <8 x float> nofpclass(nan inf) %i.gbu, <8 x float> splat (float f0xBDFE5D4F))
  %i.gbz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gby, <8 x float> nofpclass(nan inf) %i.gbu, <8 x float> splat (float f0x3E11E9BF))
  %i.gca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gbz, <8 x float> nofpclass(nan inf) %i.gbu, <8 x float> splat (float f0xBE2AAE50))
  %i.gcb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gca, <8 x float> nofpclass(nan inf) %i.gbu, <8 x float> splat (float f0x3E4CCEAC))
  %i.gcc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gcb, <8 x float> nofpclass(nan inf) %i.gbu, <8 x float> splat (float f0xBE7FFFFC))
  %i.gcd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gcc, <8 x float> nofpclass(nan inf) %i.gbu, <8 x float> splat (float f0x3EAAAAAA))
  %i.gce = fmul fast <8 x float> %i.gbv, %i.gbu
  %i.gcf = fmul fast <8 x float> %i.gce, %i.gcd
  %i.gcg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gbt, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gcf)
  %i.gch = fneg fast <8 x float> %i.gbv
  %i.gci = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gch, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.gcg)
  %i.gcj = fadd fast <8 x float> %i.gci, %i.gbu
  %i.gck = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gbt, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gcj)
  %i.gcl = fmul fast <8 x float> %i.gck, %i.gaz
  %i.gcm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gcl, <8 x float> splat (float f0x42B0C0A5))
  %i.gcn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gcm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gcn, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gcp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gco, i32 1) ; 2 uses
  %i.gcq = fcmp fast ogt <8 x float> %i.gcp, %i.gco
  %i.gcr = select <8 x i1> %i.gcq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gcs = fsub fast <8 x float> %i.gcp, %i.gcr   ; 2 uses
  %i.gct = fneg fast <8 x float> %i.gcs           ; 2 uses
  %i.gcu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gct, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gcn)
  %i.gcv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gct, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gcu) ; 8 uses
  %i.gcw = fmul fast <8 x float> %i.gcv, %i.gcv
  %i.gcx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gcv, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gcy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gcx, <8 x float> nofpclass(nan inf) %i.gcv, <8 x float> splat (float f0x3C088908))
  %i.gcz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gcy, <8 x float> nofpclass(nan inf) %i.gcv, <8 x float> splat (float f0x3D2AA9C1))
  %i.gda = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gcz, <8 x float> nofpclass(nan inf) %i.gcv, <8 x float> splat (float f0x3E2AAAAA))
  %i.gdb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gda, <8 x float> nofpclass(nan inf) %i.gcv, <8 x float> splat (float 5.000000e-01))
  %i.gdc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gdb, <8 x float> nofpclass(nan inf) %i.gcw, <8 x float> nofpclass(nan inf) %i.gcv)
  %i.gdd = fadd fast <8 x float> %i.gdc, splat (float 1.000000e+00)
  %i.gde = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gcs)
  %i.gdf = shl <8 x i32> %i.gde, splat (i32 23)
  %i.gdg = add <8 x i32> %i.gdf, splat (i32 1065353216)
  %i.gdh = bitcast <8 x i32> %i.gdg to <8 x float>
  %i.gdi = fmul fast <8 x float> %i.gdd, %i.gdh
  %i.gdj = bitcast <8 x float> %i.gdi to <8 x i32> ; 2 uses
  %i.gdk = shufflevector <8 x i32> %i.gdj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gdl = shufflevector <8 x i32> %i.gdj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gdm = lshr <4 x i32> %i.gdk, splat (i32 16)
  %i.gdn = lshr <4 x i32> %i.gdl, splat (i32 16)
  %i.gdo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gdm, <4 x i32> %i.gdn)
  store <8 x i16> %i.gdo, ptr %.025125.i.i, align 1, !tbaa !60
  %i.gdp = getelementptr inbounds nuw i8, ptr %.0127.i.i, i64 16 ; 2 uses
  %i.gdq = getelementptr inbounds nuw i8, ptr %.025125.i.i, i64 16 ; 2 uses
  %i.gdr = add nuw nsw i32 %.022126.i.i, 8        ; 2 uses
  %i.gds = or disjoint i32 %i.gdr, 7
  %i.gdt = icmp slt i32 %i.gds, %i.eqc
  br i1 %i.gdt, label %.lr.ph.i87.i, label %._crit_edge.loopexit.i.i694, !llvm.loop !776

._crit_edge.loopexit.i.i694:                      ; preds = %.lr.ph.i87.i
  %i.gdu = and i32 %i.eqc, 2147483640
  br label %._crit_edge.i.i691

._crit_edge.i.i691:                               ; preds = %._crit_edge.loopexit.i.i694, %bb.fk
  %.025.lcssa.i81.i = phi ptr [ %2, %bb.fk ], [ %i.gdq, %._crit_edge.loopexit.i.i694 ] ; 2 uses
  %.022.lcssa.i.i692 = phi i32 [ 0, %bb.fk ], [ %i.gdu, %._crit_edge.loopexit.i.i694 ] ; 3 uses
  %.0.lcssa.i82.i = phi ptr [ %0, %bb.fk ], [ %i.gdp, %._crit_edge.loopexit.i.i694 ] ; 2 uses
  %i.gdv = insertelement <4 x float> poison, float %i.gax, i64 0
  %i.gdw = shufflevector <4 x float> %i.gdv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gdx = or disjoint i32 %.022.lcssa.i.i692, 3
  %i.gdy = icmp slt i32 %i.gdx, %i.eqc
  br i1 %i.gdy, label %.lr.ph134.i.i, label %.preheader.i83.i

.preheader.i83.i:                                 ; preds = %.lr.ph134.i.i, %._crit_edge.i.i691
  %.126.lcssa.i84.i = phi ptr [ %.025.lcssa.i81.i, %._crit_edge.i.i691 ], [ %i.gjs, %.lr.ph134.i.i ] ; 6 uses
  %.123.lcssa.i.i693 = phi i32 [ %.022.lcssa.i.i692, %._crit_edge.i.i691 ], [ %i.gjt, %.lr.ph134.i.i ] ; 5 uses
  %.1.lcssa.i85.i = phi ptr [ %.0.lcssa.i82.i, %._crit_edge.i.i691 ], [ %i.gjr, %.lr.ph134.i.i ] ; 6 uses
  %i.gdz = icmp slt i32 %.123.lcssa.i.i693, %i.eqc
  br i1 %i.gdz, label %iter.check5861, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5861:                                   ; preds = %.preheader.i83.i
  %.126.lcssa.i84.i5845 = ptrtoaddr ptr %.126.lcssa.i84.i to i64
  %.1.lcssa.i85.i5844 = ptrtoaddr ptr %.1.lcssa.i85.i to i64
  %i.gea = xor i32 %.123.lcssa.i.i693, -1
  %i.geb = add i32 %i.eqc, %i.gea                 ; 3 uses
  %i.gec = zext i32 %i.geb to i64
  %i.ged = add nuw nsw i64 %i.gec, 1              ; 5 uses
  %min.iters.check5846 = icmp ult i32 %i.geb, 3
  %i.gee = sub i64 %.1.lcssa.i85.i5844, %.126.lcssa.i84.i5845
  %diff.check5848 = icmp ugt i64 %i.gee, -32
  %or.cond7100 = select i1 %min.iters.check5846, i1 true, i1 %diff.check5848
  br i1 %or.cond7100, label %.lr.ph141.i.i.preheader, label %vector.main.loop.iter.check5849

vector.main.loop.iter.check5849:                  ; preds = %iter.check5861
  %min.iters.check5850 = icmp ult i32 %i.geb, 15
  br i1 %min.iters.check5850, label %vec.epilog.ph5865, label %vector.ph5851

vector.ph5851:                                    ; preds = %vector.main.loop.iter.check5849
  %i.gef = and i64 %i.ged, 12
  %n.vec5852 = and i64 %i.ged, 8589934576         ; 5 uses
  %i.geg = shl nuw nsw i64 %n.vec5852, 1          ; 2 uses
  %i.geh = getelementptr i8, ptr %.1.lcssa.i85.i, i64 %i.geg
  %i.gei = trunc i64 %n.vec5852 to i32
  %i.gej = add i32 %.123.lcssa.i.i693, %i.gei
  %i.gek = getelementptr i8, ptr %.126.lcssa.i84.i, i64 %i.geg
  %i.gel = insertelement <8 x float> poison, float %i.gax, i64 0
  %i.gem = shufflevector <8 x float> %i.gel, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gen = insertelement <4 x float> poison, float %i.gax, i64 0
  %i.geo = shufflevector <4 x float> %i.gen, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5853

vector.body5853:                                  ; preds = %vector.ph5851, %vector.body5853
  %index5854 = phi i64 [ 0, %vector.ph5851 ], [ %index.next5858, %vector.body5853 ] ; 2 uses
  %i.gep = shl i64 %index5854, 1                  ; 2 uses
  %next.gep5855 = getelementptr i8, ptr %.1.lcssa.i85.i, i64 %i.gep
  %next.gep5856 = getelementptr i8, ptr %.126.lcssa.i84.i, i64 %i.gep
  %wide.load5857 = load <16 x i16>, ptr %next.gep5855, align 2, !tbaa !57
  %i.geq = zext <16 x i16> %wide.load5857 to <16 x i32>
  %i.ger = shl nuw <16 x i32> %i.geq, splat (i32 16)
  %i.ges = bitcast <16 x i32> %i.ger to <16 x float> ; 6 uses
  %i.get = extractelement <16 x float> %i.ges, i64 0
  %i.geu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.get, float %i.gax)
  %i.gev = extractelement <16 x float> %i.ges, i64 1
  %i.gew = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gev, float %i.gax)
  %i.gex = extractelement <16 x float> %i.ges, i64 2
  %i.gey = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gex, float %i.gax)
  %i.gez = extractelement <16 x float> %i.ges, i64 3
  %i.gfa = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gez, float %i.gax)
  %i.gfb = shufflevector <16 x float> %i.ges, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gfc = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.gfb, <4 x float> %i.geo)
  %i.gfd = shufflevector <16 x float> %i.ges, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gfe = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.gfd, <8 x float> %i.gem)
  %i.gff = insertelement <16 x float> poison, float %i.geu, i64 0
  %i.gfg = insertelement <16 x float> %i.gff, float %i.gew, i64 1
  %i.gfh = insertelement <16 x float> %i.gfg, float %i.gey, i64 2
  %i.gfi = insertelement <16 x float> %i.gfh, float %i.gfa, i64 3
  %i.gfj = shufflevector <4 x float> %i.gfc, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gfk = shufflevector <16 x float> %i.gfi, <16 x float> %i.gfj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gfl = shufflevector <8 x float> %i.gfe, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gfm = shufflevector <16 x float> %i.gfk, <16 x float> %i.gfl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gfn = bitcast <16 x float> %i.gfm to <16 x i32>
  %i.gfo = lshr <16 x i32> %i.gfn, splat (i32 16)
  %i.gfp = trunc nuw <16 x i32> %i.gfo to <16 x i16>
  store <16 x i16> %i.gfp, ptr %next.gep5856, align 2, !tbaa !57
  %index.next5858 = add nuw i64 %index5854, 16    ; 2 uses
  %i.gfq = icmp eq i64 %index.next5858, %n.vec5852
  br i1 %i.gfq, label %middle.block5859, label %vector.body5853, !llvm.loop !777

middle.block5859:                                 ; preds = %vector.body5853
  %cmp.n5860 = icmp eq i64 %i.ged, %n.vec5852
  br i1 %cmp.n5860, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5862

vec.epilog.iter.check5862:                        ; preds = %middle.block5859
  %min.epilog.iters.check5864 = icmp eq i64 %i.gef, 0
  br i1 %min.epilog.iters.check5864, label %.lr.ph141.i.i.preheader, label %vec.epilog.ph5865, !prof !64

vec.epilog.ph5865:                                ; preds = %vector.main.loop.iter.check5849, %vec.epilog.iter.check5862
  %vec.epilog.resume.val5866 = phi i64 [ %n.vec5852, %vec.epilog.iter.check5862 ], [ 0, %vector.main.loop.iter.check5849 ]
  %n.vec5867 = and i64 %i.ged, 8589934588         ; 4 uses
  %i.gfr = shl nuw nsw i64 %n.vec5867, 1          ; 2 uses
  %i.gfs = getelementptr i8, ptr %.1.lcssa.i85.i, i64 %i.gfr
  %i.gft = trunc i64 %n.vec5867 to i32
  %i.gfu = add i32 %.123.lcssa.i.i693, %i.gft
  %i.gfv = getelementptr i8, ptr %.126.lcssa.i84.i, i64 %i.gfr
  br label %vec.epilog.vector.body5868

vec.epilog.vector.body5868:                       ; preds = %vec.epilog.vector.body5868, %vec.epilog.ph5865
  %index5869 = phi i64 [ %vec.epilog.resume.val5866, %vec.epilog.ph5865 ], [ %index.next5873, %vec.epilog.vector.body5868 ] ; 2 uses
  %i.gfw = shl i64 %index5869, 1                  ; 2 uses
  %next.gep5870 = getelementptr i8, ptr %.1.lcssa.i85.i, i64 %i.gfw
  %next.gep5871 = getelementptr i8, ptr %.126.lcssa.i84.i, i64 %i.gfw
  %wide.load5872 = load <4 x i16>, ptr %next.gep5870, align 2, !tbaa !57
  %i.gfx = zext <4 x i16> %wide.load5872 to <4 x i32>
  %i.gfy = shl nuw <4 x i32> %i.gfx, splat (i32 16)
  %i.gfz = bitcast <4 x i32> %i.gfy to <4 x float> ; 4 uses
  %i.gga = extractelement <4 x float> %i.gfz, i64 0
  %i.ggb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gga, float %i.gax)
  %i.ggc = extractelement <4 x float> %i.gfz, i64 1
  %i.ggd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ggc, float %i.gax)
  %i.gge = extractelement <4 x float> %i.gfz, i64 2
  %i.ggf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gge, float %i.gax)
  %i.ggg = extractelement <4 x float> %i.gfz, i64 3
  %i.ggh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ggg, float %i.gax)
  %i.ggi = insertelement <4 x float> poison, float %i.ggb, i64 0
  %i.ggj = insertelement <4 x float> %i.ggi, float %i.ggd, i64 1
  %i.ggk = insertelement <4 x float> %i.ggj, float %i.ggf, i64 2
  %i.ggl = insertelement <4 x float> %i.ggk, float %i.ggh, i64 3
  %i.ggm = bitcast <4 x float> %i.ggl to <4 x i32>
  %i.ggn = lshr <4 x i32> %i.ggm, splat (i32 16)
  %i.ggo = trunc nuw <4 x i32> %i.ggn to <4 x i16>
  store <4 x i16> %i.ggo, ptr %next.gep5871, align 2, !tbaa !57
  %index.next5873 = add nuw i64 %index5869, 4     ; 2 uses
  %i.ggp = icmp eq i64 %index.next5873, %n.vec5867
  br i1 %i.ggp, label %vec.epilog.middle.block5874, label %vec.epilog.vector.body5868, !llvm.loop !778

vec.epilog.middle.block5874:                      ; preds = %vec.epilog.vector.body5868
  %cmp.n5875 = icmp eq i64 %i.ged, %n.vec5867
  br i1 %cmp.n5875, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph141.i.i.preheader

.lr.ph141.i.i.preheader:                          ; preds = %iter.check5861, %vec.epilog.iter.check5862, %vec.epilog.middle.block5874
  %.2140.i.i.ph = phi ptr [ %.1.lcssa.i85.i, %iter.check5861 ], [ %i.geh, %vec.epilog.iter.check5862 ], [ %i.gfs, %vec.epilog.middle.block5874 ] ; 3 uses
  %.224139.i.i.ph = phi i32 [ %.123.lcssa.i.i693, %iter.check5861 ], [ %i.gej, %vec.epilog.iter.check5862 ], [ %i.gfu, %vec.epilog.middle.block5874 ] ; 4 uses
  %.227138.i.i.ph = phi ptr [ %.126.lcssa.i84.i, %iter.check5861 ], [ %i.gek, %vec.epilog.iter.check5862 ], [ %i.gfv, %vec.epilog.middle.block5874 ] ; 3 uses
  %i.ggq = sub i32 %i.eqc, %.224139.i.i.ph
  %.neg8031 = add i32 %.224139.i.i.ph, 1
  %xtraiter7870 = and i32 %i.ggq, 1
  %lcmp.mod7871.not = icmp eq i32 %xtraiter7870, 0
  br i1 %lcmp.mod7871.not, label %.lr.ph141.i.i.prol.loopexit, label %.lr.ph141.i.i.prol

.lr.ph141.i.i.prol:                               ; preds = %.lr.ph141.i.i.preheader
  %i.ggr = getelementptr inbounds nuw i8, ptr %.2140.i.i.ph, i64 2
  %i.ggs = load i16, ptr %.2140.i.i.ph, align 2, !tbaa !57
  %i.ggt = zext i16 %i.ggs to i32
  %i.ggu = shl nuw i32 %i.ggt, 16
  %i.ggv = bitcast i32 %i.ggu to float
  %i.ggw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ggv, float %i.gax)
  %i.ggx = bitcast float %i.ggw to i32
  %i.ggy = lshr i32 %i.ggx, 16
  %i.ggz = trunc nuw i32 %i.ggy to i16
  %i.gha = getelementptr inbounds nuw i8, ptr %.227138.i.i.ph, i64 2
  store i16 %i.ggz, ptr %.227138.i.i.ph, align 2, !tbaa !57
  %i.ghb = add nuw nsw i32 %.224139.i.i.ph, 1
  br label %.lr.ph141.i.i.prol.loopexit

.lr.ph141.i.i.prol.loopexit:                      ; preds = %.lr.ph141.i.i.prol, %.lr.ph141.i.i.preheader
  %.2140.i.i.unr = phi ptr [ %.2140.i.i.ph, %.lr.ph141.i.i.preheader ], [ %i.ggr, %.lr.ph141.i.i.prol ]
  %.224139.i.i.unr = phi i32 [ %.224139.i.i.ph, %.lr.ph141.i.i.preheader ], [ %i.ghb, %.lr.ph141.i.i.prol ]
  %.227138.i.i.unr = phi ptr [ %.227138.i.i.ph, %.lr.ph141.i.i.preheader ], [ %i.gha, %.lr.ph141.i.i.prol ]
  %i.ghc = icmp eq i32 %i.eqc, %.neg8031
  br i1 %i.ghc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph141.i.i

.lr.ph134.i.i:                                    ; preds = %._crit_edge.i.i691, %.lr.ph134.i.i
  %.1132.i.i = phi ptr [ %i.gjr, %.lr.ph134.i.i ], [ %.0.lcssa.i82.i, %._crit_edge.i.i691 ] ; 2 uses
  %.123131.i.i = phi i32 [ %i.gjt, %.lr.ph134.i.i ], [ %.022.lcssa.i.i692, %._crit_edge.i.i691 ]
  %.126130.i.i = phi ptr [ %i.gjs, %.lr.ph134.i.i ], [ %.025.lcssa.i81.i, %._crit_edge.i.i691 ] ; 2 uses
  %i.ghd = load i64, ptr %.1132.i.i, align 1, !tbaa !60
  %i.ghe = insertelement <2 x i64> poison, i64 %i.ghd, i64 0
  %i.ghf = bitcast <2 x i64> %i.ghe to <8 x i16>
  %i.ghg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ghf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ghh = bitcast <8 x i16> %i.ghg to <4 x float>
  %i.ghi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ghh, <4 x float> splat (float f0x00800000))
  %i.ghj = bitcast <4 x float> %i.ghi to <4 x i32> ; 2 uses
  %i.ghk = lshr <4 x i32> %i.ghj, splat (i32 23)
  %i.ghl = and <4 x i32> %i.ghj, splat (i32 -2139095041)
  %i.ghm = or disjoint <4 x i32> %i.ghl, splat (i32 1056964608)
  %i.ghn = bitcast <4 x i32> %i.ghm to <4 x float> ; 3 uses
  %i.gho = add nsw <4 x i32> %i.ghk, splat (i32 -127)
  %i.ghp = sitofp fast <4 x i32> %i.gho to <4 x float> ; 2 uses
  %i.ghq = fadd fast <4 x float> %i.ghp, splat (float 1.000000e+00)
  %i.ghr = fcmp fast olt <4 x float> %i.ghn, splat (float f0x3F3504F3) ; 2 uses
  %i.ghs = select <4 x i1> %i.ghr, <4 x float> %i.ghn, <4 x float> zeroinitializer
  %i.ght = fadd fast <4 x float> %i.ghn, splat (float -1.000000e+00)
  %i.ghu = select fast <4 x i1> %i.ghr, <4 x float> %i.ghp, <4 x float> %i.ghq ; 2 uses
  %i.ghv = fadd fast <4 x float> %i.ght, %i.ghs   ; 12 uses
  %i.ghw = fmul fast <4 x float> %i.ghv, %i.ghv   ; 2 uses
  %i.ghx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ghv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ghy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ghx, <4 x float> nofpclass(nan inf) %i.ghv, <4 x float> splat (float f0x3DEF251A))
  %i.ghz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ghy, <4 x float> nofpclass(nan inf) %i.ghv, <4 x float> splat (float f0xBDFE5D4F))
  %i.gia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ghz, <4 x float> nofpclass(nan inf) %i.ghv, <4 x float> splat (float f0x3E11E9BF))
  %i.gib = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gia, <4 x float> nofpclass(nan inf) %i.ghv, <4 x float> splat (float f0xBE2AAE50))
  %i.gic = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gib, <4 x float> nofpclass(nan inf) %i.ghv, <4 x float> splat (float f0x3E4CCEAC))
  %i.gid = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gic, <4 x float> nofpclass(nan inf) %i.ghv, <4 x float> splat (float f0xBE7FFFFC))
  %i.gie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gid, <4 x float> nofpclass(nan inf) %i.ghv, <4 x float> splat (float f0x3EAAAAAA))
  %i.gif = fmul fast <4 x float> %i.ghw, %i.ghv
  %i.gig = fmul fast <4 x float> %i.gif, %i.gie
  %i.gih = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ghu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gig)
  %i.gii = fneg fast <4 x float> %i.ghw
  %i.gij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gii, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.gih)
  %i.gik = fadd fast <4 x float> %i.gij, %i.ghv
  %i.gil = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ghu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gik)
  %i.gim = fmul fast <4 x float> %i.gil, %i.gdw
  %i.gin = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gim, <4 x float> splat (float f0x42B0C0A5))
  %i.gio = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gin, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gip = fmul fast <4 x float> %i.gio, splat (float f0x3FB8AA3B)
  %i.giq = fadd fast <4 x float> %i.gip, splat (float 5.000000e-01) ; 2 uses
  %i.gir = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.giq)
  %i.gis = sitofp fast <4 x i32> %i.gir to <4 x float> ; 2 uses
  %i.git = fcmp fast olt <4 x float> %i.giq, %i.gis
  %i.giu = select <4 x i1> %i.git, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.giv = fsub fast <4 x float> %i.gis, %i.giu   ; 2 uses
  %i.giw = fneg fast <4 x float> %i.giv           ; 2 uses
  %i.gix = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.giw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gio)
  %i.giy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.giw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gix) ; 8 uses
  %i.giz = fmul fast <4 x float> %i.giy, %i.giy
  %i.gja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.giy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gjb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gja, <4 x float> nofpclass(nan inf) %i.giy, <4 x float> splat (float f0x3C088908))
  %i.gjc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gjb, <4 x float> nofpclass(nan inf) %i.giy, <4 x float> splat (float f0x3D2AA9C1))
  %i.gjd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gjc, <4 x float> nofpclass(nan inf) %i.giy, <4 x float> splat (float f0x3E2AAAAA))
  %i.gje = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gjd, <4 x float> nofpclass(nan inf) %i.giy, <4 x float> splat (float 5.000000e-01))
  %i.gjf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gje, <4 x float> nofpclass(nan inf) %i.giz, <4 x float> nofpclass(nan inf) %i.giy)
  %i.gjg = fadd fast <4 x float> %i.gjf, splat (float 1.000000e+00)
  %i.gjh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.giv)
  %i.gji = shl <4 x i32> %i.gjh, splat (i32 23)
  %i.gjj = add <4 x i32> %i.gji, splat (i32 1065353216)
  %i.gjk = bitcast <4 x i32> %i.gjj to <4 x float>
  %i.gjl = fmul fast <4 x float> %i.gjg, %i.gjk
  %i.gjm = bitcast <4 x float> %i.gjl to <4 x i32>
  %i.gjn = lshr <4 x i32> %i.gjm, splat (i32 16)
  %i.gjo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gjn, <4 x i32> poison)
  %i.gjp = bitcast <8 x i16> %i.gjo to <2 x i64>
  %i.gjq = extractelement <2 x i64> %i.gjp, i64 0
  store i64 %i.gjq, ptr %.126130.i.i, align 1, !tbaa !60
  %i.gjr = getelementptr inbounds nuw i8, ptr %.1132.i.i, i64 8 ; 2 uses
  %i.gjs = getelementptr inbounds nuw i8, ptr %.126130.i.i, i64 8 ; 2 uses
  %i.gjt = add nuw nsw i32 %.123131.i.i, 4        ; 3 uses
  %i.gju = or disjoint i32 %i.gjt, 3
  %i.gjv = icmp slt i32 %i.gju, %i.eqc
  br i1 %i.gjv, label %.lr.ph134.i.i, label %.preheader.i83.i, !llvm.loop !779

.lr.ph141.i.i:                                    ; preds = %.lr.ph141.i.i.prol.loopexit, %.lr.ph141.i.i
  %.2140.i.i = phi ptr [ %i.gkg, %.lr.ph141.i.i ], [ %.2140.i.i.unr, %.lr.ph141.i.i.prol.loopexit ] ; 3 uses
  %.224139.i.i = phi i32 [ %i.gkq, %.lr.ph141.i.i ], [ %.224139.i.i.unr, %.lr.ph141.i.i.prol.loopexit ]
  %.227138.i.i = phi ptr [ %i.gkp, %.lr.ph141.i.i ], [ %.227138.i.i.unr, %.lr.ph141.i.i.prol.loopexit ] ; 3 uses
  %i.gjw = getelementptr inbounds nuw i8, ptr %.2140.i.i, i64 2
  %i.gjx = load i16, ptr %.2140.i.i, align 2, !tbaa !57
  %i.gjy = zext i16 %i.gjx to i32
  %i.gjz = shl nuw i32 %i.gjy, 16
  %i.gka = bitcast i32 %i.gjz to float
  %i.gkb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gka, float %i.gax)
  %i.gkc = bitcast float %i.gkb to i32
  %i.gkd = lshr i32 %i.gkc, 16
  %i.gke = trunc nuw i32 %i.gkd to i16
  %i.gkf = getelementptr inbounds nuw i8, ptr %.227138.i.i, i64 2
  store i16 %i.gke, ptr %.227138.i.i, align 2, !tbaa !57
  %i.gkg = getelementptr inbounds nuw i8, ptr %.2140.i.i, i64 4
  %i.gkh = load i16, ptr %i.gjw, align 2, !tbaa !57
  %i.gki = zext i16 %i.gkh to i32
  %i.gkj = shl nuw i32 %i.gki, 16
  %i.gkk = bitcast i32 %i.gkj to float
  %i.gkl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gkk, float %i.gax)
  %i.gkm = bitcast float %i.gkl to i32
  %i.gkn = lshr i32 %i.gkm, 16
  %i.gko = trunc nuw i32 %i.gkn to i16
  %i.gkp = getelementptr inbounds nuw i8, ptr %.227138.i.i, i64 4
  store i16 %i.gko, ptr %i.gkf, align 2, !tbaa !57
  %i.gkq = add nuw nsw i32 %.224139.i.i, 2        ; 2 uses
  %exitcond.not.i86.i.1 = icmp eq i32 %i.gkq, %i.eqc
  br i1 %exitcond.not.i86.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph141.i.i, !llvm.loop !780

bb.fl:                                            ; preds = %bb.fj
  %i.gkr = icmp eq i32 %3, 1
  br i1 %i.gkr, label %bb.fm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.fm:                                            ; preds = %bb.fl
  switch i32 %.sroa.speculated.i689, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.lr.ph165.i.i
    i32 4, label %.lr.ph.i90.i
  ]

.lr.ph165.i.i:                                    ; preds = %bb.fm
  %i.gks = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.gkt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gks, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gku = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gks, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gkv = shufflevector <8 x i16> %i.gkt, <8 x i16> %i.gku, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gkw = bitcast <16 x i16> %i.gkv to <8 x float>
  %i.gkx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gkw, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gky = bitcast <8 x float> %i.gkx to <8 x i32>
  %i.gkz = bitcast <8 x float> %i.gkx to <8 x i32>
  %i.gla = and <8 x i32> %i.gkz, splat (i32 -2139095041)
  %i.glb = or disjoint <8 x i32> %i.gla, splat (i32 1056964608)
  %i.glc = bitcast <8 x i32> %i.glb to <8 x float> ; 3 uses
  %i.gld = lshr <8 x i32> %i.gky, splat (i32 23)
  %i.gle = add nsw <8 x i32> %i.gld, splat (i32 -127)
  %i.glf = sitofp fast <8 x i32> %i.gle to <8 x float> ; 2 uses
  %i.glg = fadd fast <8 x float> %i.glf, splat (float 1.000000e+00)
  %i.glh = fcmp fast olt <8 x float> %i.glc, splat (float f0x3F3504F3) ; 2 uses
  %i.gli = select <8 x i1> %i.glh, <8 x float> %i.glc, <8 x float> zeroinitializer
  %i.glj = fadd fast <8 x float> %i.glc, splat (float -1.000000e+00)
  %i.glk = select fast <8 x i1> %i.glh, <8 x float> %i.glf, <8 x float> %i.glg ; 2 uses
  %i.gll = fadd fast <8 x float> %i.glj, %i.gli   ; 12 uses
  %i.glm = fmul fast <8 x float> %i.gll, %i.gll   ; 2 uses
  %i.gln = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gll, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.glo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gln, <8 x float> nofpclass(nan inf) %i.gll, <8 x float> splat (float f0x3DEF251A))
  %i.glp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.glo, <8 x float> nofpclass(nan inf) %i.gll, <8 x float> splat (float f0xBDFE5D4F))
  %i.glq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.glp, <8 x float> nofpclass(nan inf) %i.gll, <8 x float> splat (float f0x3E11E9BF))
  %i.glr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.glq, <8 x float> nofpclass(nan inf) %i.gll, <8 x float> splat (float f0xBE2AAE50))
  %i.gls = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.glr, <8 x float> nofpclass(nan inf) %i.gll, <8 x float> splat (float f0x3E4CCEAC))
  %i.glt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gls, <8 x float> nofpclass(nan inf) %i.gll, <8 x float> splat (float f0xBE7FFFFC))
  %i.glu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.glt, <8 x float> nofpclass(nan inf) %i.gll, <8 x float> splat (float f0x3EAAAAAA))
  %i.glv = fmul fast <8 x float> %i.glm, %i.gll
  %i.glw = fmul fast <8 x float> %i.glv, %i.glu
  %i.glx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.glk, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.glw)
  %i.gly = fneg fast <8 x float> %i.glm
end_hunk_5
begin_hunk_6_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a

bb.ho:                                            ; preds = %bb.hn
  %i.ixx = insertelement <4 x float> poison, float %i.ixq, i64 0
  %i.ixy = shufflevector <4 x float> %i.ixx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ixz = icmp eq i32 %.sroa.speculated.i960, 8
  br i1 %i.ixz, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.iya = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.iyb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iya, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iyc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.iya, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.iyd = shufflevector <8 x i16> %i.iyb, <8 x i16> %i.iyc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.iye = bitcast <16 x i16> %i.iyd to <8 x float>
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho, %.thread.i.i986
  %i.iyf = phi <4 x float> [ %i.ixw, %.thread.i.i986 ], [ %i.ixy, %bb.ho ] ; 2 uses
  %i.iyg = shufflevector <4 x float> %i.iyf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.iyh = phi <4 x float> [ %i.ixy, %bb.hp ], [ %i.iyf, %bb.hq ]
  %i.iyi = phi fast <8 x float> [ %i.iye, %bb.hp ], [ %i.iyg, %bb.hq ]
  %i.iyj = icmp sgt i32 %i.ins, 7
  br i1 %i.iyj, label %.lr.ph.i39.i985, label %.preheader159.i34.i

.lr.ph.i39.i985:                                  ; preds = %bb.hr
  %i.iyk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.iyi, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.iyl = bitcast <8 x float> %i.iyk to <8 x i32>
  %i.iym = bitcast <8 x float> %i.iyk to <8 x i32>
  %i.iyn = and <8 x i32> %i.iym, splat (i32 -2139095041)
  %i.iyo = or disjoint <8 x i32> %i.iyn, splat (i32 1056964608)
  %i.iyp = bitcast <8 x i32> %i.iyo to <8 x float> ; 3 uses
  %i.iyq = lshr <8 x i32> %i.iyl, splat (i32 23)
  %i.iyr = add nsw <8 x i32> %i.iyq, splat (i32 -127)
  %i.iys = sitofp fast <8 x i32> %i.iyr to <8 x float> ; 2 uses
  %i.iyt = fadd fast <8 x float> %i.iys, splat (float 1.000000e+00)
  %i.iyu = fcmp fast olt <8 x float> %i.iyp, splat (float f0x3F3504F3) ; 2 uses
  %i.iyv = select <8 x i1> %i.iyu, <8 x float> %i.iyp, <8 x float> zeroinitializer
  %i.iyw = fadd fast <8 x float> %i.iyp, splat (float -1.000000e+00)
  %i.iyx = select fast <8 x i1> %i.iyu, <8 x float> %i.iys, <8 x float> %i.iyt ; 2 uses
  %i.iyy = fadd fast <8 x float> %i.iyw, %i.iyv   ; 12 uses
  %i.iyz = fmul fast <8 x float> %i.iyy, %i.iyy   ; 2 uses
  %i.iza = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyy, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.izb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iza, <8 x float> nofpclass(nan inf) %i.iyy, <8 x float> splat (float f0x3DEF251A))
  %i.izc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.izb, <8 x float> nofpclass(nan inf) %i.iyy, <8 x float> splat (float f0xBDFE5D4F))
  %i.izd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.izc, <8 x float> nofpclass(nan inf) %i.iyy, <8 x float> splat (float f0x3E11E9BF))
  %i.ize = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.izd, <8 x float> nofpclass(nan inf) %i.iyy, <8 x float> splat (float f0xBE2AAE50))
  %i.izf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ize, <8 x float> nofpclass(nan inf) %i.iyy, <8 x float> splat (float f0x3E4CCEAC))
  %i.izg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.izf, <8 x float> nofpclass(nan inf) %i.iyy, <8 x float> splat (float f0xBE7FFFFC))
  %i.izh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.izg, <8 x float> nofpclass(nan inf) %i.iyy, <8 x float> splat (float f0x3EAAAAAA))
  %i.izi = fmul fast <8 x float> %i.iyz, %i.iyy
  %i.izj = fmul fast <8 x float> %i.izi, %i.izh
  %i.izk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.izj)
  %i.izl = fneg fast <8 x float> %i.iyz
  %i.izm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.izl, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.izk)
  %i.izn = fadd fast <8 x float> %i.izm, %i.iyy
  %i.izo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.izn)
  br label %bb.hs

.preheader159.loopexit.i50.i:                     ; preds = %bb.hs
  %i.izp = and i32 %i.ins, 2147483640
  br label %.preheader159.i34.i

.preheader159.i34.i:                              ; preds = %.preheader159.loopexit.i50.i, %bb.hr
  %.028.lcssa.i.i977 = phi ptr [ %2, %bb.hr ], [ %i.jcg, %.preheader159.loopexit.i50.i ] ; 2 uses
  %.025.lcssa.i.i978 = phi i32 [ 0, %bb.hr ], [ %i.izp, %.preheader159.loopexit.i50.i ] ; 3 uses
  %.0.lcssa.i35.i979 = phi ptr [ %0, %bb.hr ], [ %i.jcf, %.preheader159.loopexit.i50.i ] ; 2 uses
  %i.izq = or disjoint i32 %.025.lcssa.i.i978, 3
  %i.izr = icmp slt i32 %i.izq, %i.ins
  br i1 %i.izr, label %.lr.ph168.i.i, label %.preheader.i36.i980

.lr.ph168.i.i:                                    ; preds = %.preheader159.i34.i
  %i.izs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iyh, <4 x float> splat (float f0x00800000))
  %i.izt = bitcast <4 x float> %i.izs to <4 x i32> ; 2 uses
  %i.izu = lshr <4 x i32> %i.izt, splat (i32 23)
  %i.izv = and <4 x i32> %i.izt, splat (i32 -2139095041)
  %i.izw = or disjoint <4 x i32> %i.izv, splat (i32 1056964608)
  %i.izx = bitcast <4 x i32> %i.izw to <4 x float> ; 3 uses
  %i.izy = add nsw <4 x i32> %i.izu, splat (i32 -127)
  %i.izz = sitofp fast <4 x i32> %i.izy to <4 x float> ; 2 uses
  %i.jaa = fadd fast <4 x float> %i.izz, splat (float 1.000000e+00)
  %i.jab = fcmp fast olt <4 x float> %i.izx, splat (float f0x3F3504F3) ; 2 uses
  %i.jac = select <4 x i1> %i.jab, <4 x float> %i.izx, <4 x float> zeroinitializer
  %i.jad = fadd fast <4 x float> %i.izx, splat (float -1.000000e+00)
  %i.jae = select fast <4 x i1> %i.jab, <4 x float> %i.izz, <4 x float> %i.jaa ; 2 uses
  %i.jaf = fadd fast <4 x float> %i.jad, %i.jac   ; 12 uses
  %i.jag = fmul fast <4 x float> %i.jaf, %i.jaf   ; 2 uses
  %i.jah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jaf, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.jai = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jah, <4 x float> nofpclass(nan inf) %i.jaf, <4 x float> splat (float f0x3DEF251A))
  %i.jaj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jai, <4 x float> nofpclass(nan inf) %i.jaf, <4 x float> splat (float f0xBDFE5D4F))
  %i.jak = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jaj, <4 x float> nofpclass(nan inf) %i.jaf, <4 x float> splat (float f0x3E11E9BF))
  %i.jal = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jak, <4 x float> nofpclass(nan inf) %i.jaf, <4 x float> splat (float f0xBE2AAE50))
  %i.jam = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jal, <4 x float> nofpclass(nan inf) %i.jaf, <4 x float> splat (float f0x3E4CCEAC))
  %i.jan = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jam, <4 x float> nofpclass(nan inf) %i.jaf, <4 x float> splat (float f0xBE7FFFFC))
  %i.jao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jan, <4 x float> nofpclass(nan inf) %i.jaf, <4 x float> splat (float f0x3EAAAAAA))
  %i.jap = fmul fast <4 x float> %i.jag, %i.jaf
  %i.jaq = fmul fast <4 x float> %i.jap, %i.jao
  %i.jar = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jae, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jaq)
  %i.jas = fneg fast <4 x float> %i.jag
  %i.jat = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jas, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.jar)
  %i.jau = fadd fast <4 x float> %i.jat, %i.jaf
  %i.jav = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jae, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jau)
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hs, %.lr.ph.i39.i985
  %.0162.i.i = phi ptr [ %0, %.lr.ph.i39.i985 ], [ %i.jcf, %bb.hs ] ; 2 uses
  %.025161.i.i = phi i32 [ 0, %.lr.ph.i39.i985 ], [ %i.jch, %bb.hs ]
  %.028160.i.i = phi ptr [ %2, %.lr.ph.i39.i985 ], [ %i.jcg, %bb.hs ] ; 2 uses
  %i.jaw = load <8 x i16>, ptr %.0162.i.i, align 1, !tbaa !60 ; 2 uses
  %i.jax = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jaw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jay = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jaw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jaz = shufflevector <8 x i16> %i.jax, <8 x i16> %i.jay, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jba = bitcast <16 x i16> %i.jaz to <8 x float>
  %i.jbb = fmul fast <8 x float> %i.izo, %i.jba
  %i.jbc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jbb, <8 x float> splat (float f0x42B0C0A5))
  %i.jbd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jbc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jbe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jbd, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.jbf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jbe, i32 1) ; 2 uses
  %i.jbg = fcmp fast ogt <8 x float> %i.jbf, %i.jbe
  %i.jbh = select <8 x i1> %i.jbg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.jbi = fsub fast <8 x float> %i.jbf, %i.jbh   ; 2 uses
  %i.jbj = fneg fast <8 x float> %i.jbi           ; 2 uses
  %i.jbk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jbj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.jbd)
  %i.jbl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jbj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.jbk) ; 8 uses
  %i.jbm = fmul fast <8 x float> %i.jbl, %i.jbl
  %i.jbn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jbl, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.jbo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jbn, <8 x float> nofpclass(nan inf) %i.jbl, <8 x float> splat (float f0x3C088908))
  %i.jbp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jbo, <8 x float> nofpclass(nan inf) %i.jbl, <8 x float> splat (float f0x3D2AA9C1))
  %i.jbq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jbp, <8 x float> nofpclass(nan inf) %i.jbl, <8 x float> splat (float f0x3E2AAAAA))
  %i.jbr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jbq, <8 x float> nofpclass(nan inf) %i.jbl, <8 x float> splat (float 5.000000e-01))
  %i.jbs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jbr, <8 x float> nofpclass(nan inf) %i.jbm, <8 x float> nofpclass(nan inf) %i.jbl)
  %i.jbt = fadd fast <8 x float> %i.jbs, splat (float 1.000000e+00)
  %i.jbu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jbi)
  %i.jbv = shl <8 x i32> %i.jbu, splat (i32 23)
  %i.jbw = add <8 x i32> %i.jbv, splat (i32 1065353216)
  %i.jbx = bitcast <8 x i32> %i.jbw to <8 x float>
  %i.jby = fmul fast <8 x float> %i.jbt, %i.jbx
  %i.jbz = bitcast <8 x float> %i.jby to <8 x i32> ; 2 uses
  %i.jca = shufflevector <8 x i32> %i.jbz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jcb = shufflevector <8 x i32> %i.jbz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jcc = lshr <4 x i32> %i.jca, splat (i32 16)
  %i.jcd = lshr <4 x i32> %i.jcb, splat (i32 16)
  %i.jce = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jcc, <4 x i32> %i.jcd)
  store <8 x i16> %i.jce, ptr %.028160.i.i, align 1, !tbaa !60
  %i.jcf = getelementptr inbounds nuw i8, ptr %.0162.i.i, i64 16 ; 2 uses
  %i.jcg = getelementptr inbounds nuw i8, ptr %.028160.i.i, i64 16 ; 2 uses
  %i.jch = add nuw nsw i32 %.025161.i.i, 8        ; 2 uses
  %i.jci = or disjoint i32 %i.jch, 7
  %i.jcj = icmp slt i32 %i.jci, %i.ins
  br i1 %i.jcj, label %bb.hs, label %.preheader159.loopexit.i50.i, !llvm.loop !836

.preheader.i36.i980:                              ; preds = %bb.ht, %.preheader159.i34.i
  %.129.lcssa.i.i981 = phi ptr [ %.028.lcssa.i.i977, %.preheader159.i34.i ], [ %i.jgz, %bb.ht ] ; 6 uses
  %.126.lcssa.i.i982 = phi i32 [ %.025.lcssa.i.i978, %.preheader159.i34.i ], [ %i.jha, %bb.ht ] ; 5 uses
  %.1.lcssa.i37.i983 = phi ptr [ %.0.lcssa.i35.i979, %.preheader159.i34.i ], [ %i.jgy, %bb.ht ] ; 6 uses
  %i.jck = icmp slt i32 %.126.lcssa.i.i982, %i.ins
  br i1 %i.jck, label %iter.check5414, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5414:                                   ; preds = %.preheader.i36.i980
  %.129.lcssa.i.i9815398 = ptrtoaddr ptr %.129.lcssa.i.i981 to i64
  %.1.lcssa.i37.i9835397 = ptrtoaddr ptr %.1.lcssa.i37.i983 to i64
  %i.jcl = xor i32 %.126.lcssa.i.i982, -1
  %i.jcm = add i32 %i.ins, %i.jcl                 ; 3 uses
  %i.jcn = zext i32 %i.jcm to i64
  %i.jco = add nuw nsw i64 %i.jcn, 1              ; 5 uses
  %min.iters.check5399 = icmp ult i32 %i.jcm, 3
  %i.jcp = sub i64 %.1.lcssa.i37.i9835397, %.129.lcssa.i.i9815398
  %diff.check5401 = icmp ugt i64 %i.jcp, -32
  %or.cond7107 = select i1 %min.iters.check5399, i1 true, i1 %diff.check5401
  br i1 %or.cond7107, label %.lr.ph175.i.i.preheader, label %vector.main.loop.iter.check5402

vector.main.loop.iter.check5402:                  ; preds = %iter.check5414
  %min.iters.check5403 = icmp ult i32 %i.jcm, 15
  br i1 %min.iters.check5403, label %vec.epilog.ph5418, label %vector.ph5404

vector.ph5404:                                    ; preds = %vector.main.loop.iter.check5402
  %i.jcq = and i64 %i.jco, 12
  %n.vec5405 = and i64 %i.jco, 8589934576         ; 5 uses
  %i.jcr = shl nuw nsw i64 %n.vec5405, 1          ; 2 uses
  %i.jcs = getelementptr i8, ptr %.1.lcssa.i37.i983, i64 %i.jcr
  %i.jct = trunc i64 %n.vec5405 to i32
  %i.jcu = add i32 %.126.lcssa.i.i982, %i.jct
  %i.jcv = getelementptr i8, ptr %.129.lcssa.i.i981, i64 %i.jcr
  %i.jcw = insertelement <8 x float> poison, float %i.ixq, i64 0
  %i.jcx = shufflevector <8 x float> %i.jcw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jcy = insertelement <4 x float> poison, float %i.ixq, i64 0
  %i.jcz = shufflevector <4 x float> %i.jcy, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5406

vector.body5406:                                  ; preds = %vector.ph5404, %vector.body5406
  %index5407 = phi i64 [ 0, %vector.ph5404 ], [ %index.next5411, %vector.body5406 ] ; 2 uses
  %i.jda = shl i64 %index5407, 1                  ; 2 uses
  %next.gep5408 = getelementptr i8, ptr %.1.lcssa.i37.i983, i64 %i.jda
  %next.gep5409 = getelementptr i8, ptr %.129.lcssa.i.i981, i64 %i.jda
  %wide.load5410 = load <16 x i16>, ptr %next.gep5408, align 2, !tbaa !57
  %i.jdb = zext <16 x i16> %wide.load5410 to <16 x i32>
  %i.jdc = shl nuw <16 x i32> %i.jdb, splat (i32 16)
  %i.jdd = bitcast <16 x i32> %i.jdc to <16 x float> ; 6 uses
  %i.jde = extractelement <16 x float> %i.jdd, i64 0
  %i.jdf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jde)
  %i.jdg = extractelement <16 x float> %i.jdd, i64 1
  %i.jdh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jdg)
  %i.jdi = extractelement <16 x float> %i.jdd, i64 2
  %i.jdj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jdi)
  %i.jdk = extractelement <16 x float> %i.jdd, i64 3
  %i.jdl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jdk)
  %i.jdm = shufflevector <16 x float> %i.jdd, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jdn = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.jcz, <4 x float> %i.jdm)
  %i.jdo = shufflevector <16 x float> %i.jdd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jdp = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.jcx, <8 x float> %i.jdo)
  %i.jdq = insertelement <16 x float> poison, float %i.jdf, i64 0
  %i.jdr = insertelement <16 x float> %i.jdq, float %i.jdh, i64 1
  %i.jds = insertelement <16 x float> %i.jdr, float %i.jdj, i64 2
  %i.jdt = insertelement <16 x float> %i.jds, float %i.jdl, i64 3
  %i.jdu = shufflevector <4 x float> %i.jdn, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jdv = shufflevector <16 x float> %i.jdt, <16 x float> %i.jdu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jdw = shufflevector <8 x float> %i.jdp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jdx = shufflevector <16 x float> %i.jdv, <16 x float> %i.jdw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.jdy = bitcast <16 x float> %i.jdx to <16 x i32>
  %i.jdz = lshr <16 x i32> %i.jdy, splat (i32 16)
  %i.jea = trunc nuw <16 x i32> %i.jdz to <16 x i16>
  store <16 x i16> %i.jea, ptr %next.gep5409, align 2, !tbaa !57
  %index.next5411 = add nuw i64 %index5407, 16    ; 2 uses
  %i.jeb = icmp eq i64 %index.next5411, %n.vec5405
  br i1 %i.jeb, label %middle.block5412, label %vector.body5406, !llvm.loop !837

middle.block5412:                                 ; preds = %vector.body5406
  %cmp.n5413 = icmp eq i64 %i.jco, %n.vec5405
  br i1 %cmp.n5413, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5415

vec.epilog.iter.check5415:                        ; preds = %middle.block5412
  %min.epilog.iters.check5417 = icmp eq i64 %i.jcq, 0
  br i1 %min.epilog.iters.check5417, label %.lr.ph175.i.i.preheader, label %vec.epilog.ph5418, !prof !64

vec.epilog.ph5418:                                ; preds = %vector.main.loop.iter.check5402, %vec.epilog.iter.check5415
  %vec.epilog.resume.val5419 = phi i64 [ %n.vec5405, %vec.epilog.iter.check5415 ], [ 0, %vector.main.loop.iter.check5402 ]
  %n.vec5420 = and i64 %i.jco, 8589934588         ; 4 uses
  %i.jec = shl nuw nsw i64 %n.vec5420, 1          ; 2 uses
  %i.jed = getelementptr i8, ptr %.1.lcssa.i37.i983, i64 %i.jec
  %i.jee = trunc i64 %n.vec5420 to i32
  %i.jef = add i32 %.126.lcssa.i.i982, %i.jee
  %i.jeg = getelementptr i8, ptr %.129.lcssa.i.i981, i64 %i.jec
  br label %vec.epilog.vector.body5421

vec.epilog.vector.body5421:                       ; preds = %vec.epilog.vector.body5421, %vec.epilog.ph5418
  %index5422 = phi i64 [ %vec.epilog.resume.val5419, %vec.epilog.ph5418 ], [ %index.next5426, %vec.epilog.vector.body5421 ] ; 2 uses
  %i.jeh = shl i64 %index5422, 1                  ; 2 uses
  %next.gep5423 = getelementptr i8, ptr %.1.lcssa.i37.i983, i64 %i.jeh
  %next.gep5424 = getelementptr i8, ptr %.129.lcssa.i.i981, i64 %i.jeh
  %wide.load5425 = load <4 x i16>, ptr %next.gep5423, align 2, !tbaa !57
  %i.jei = zext <4 x i16> %wide.load5425 to <4 x i32>
  %i.jej = shl nuw <4 x i32> %i.jei, splat (i32 16)
  %i.jek = bitcast <4 x i32> %i.jej to <4 x float> ; 4 uses
  %i.jel = extractelement <4 x float> %i.jek, i64 0
  %i.jem = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jel)
  %i.jen = extractelement <4 x float> %i.jek, i64 1
  %i.jeo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jen)
  %i.jep = extractelement <4 x float> %i.jek, i64 2
  %i.jeq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jep)
  %i.jer = extractelement <4 x float> %i.jek, i64 3
  %i.jes = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jer)
  %i.jet = insertelement <4 x float> poison, float %i.jem, i64 0
  %i.jeu = insertelement <4 x float> %i.jet, float %i.jeo, i64 1
  %i.jev = insertelement <4 x float> %i.jeu, float %i.jeq, i64 2
  %i.jew = insertelement <4 x float> %i.jev, float %i.jes, i64 3
  %i.jex = bitcast <4 x float> %i.jew to <4 x i32>
  %i.jey = lshr <4 x i32> %i.jex, splat (i32 16)
  %i.jez = trunc nuw <4 x i32> %i.jey to <4 x i16>
  store <4 x i16> %i.jez, ptr %next.gep5424, align 2, !tbaa !57
  %index.next5426 = add nuw i64 %index5422, 4     ; 2 uses
  %i.jfa = icmp eq i64 %index.next5426, %n.vec5420
  br i1 %i.jfa, label %vec.epilog.middle.block5427, label %vec.epilog.vector.body5421, !llvm.loop !838

vec.epilog.middle.block5427:                      ; preds = %vec.epilog.vector.body5421
  %cmp.n5428 = icmp eq i64 %i.jco, %n.vec5420
  br i1 %cmp.n5428, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph175.i.i.preheader

.lr.ph175.i.i.preheader:                          ; preds = %iter.check5414, %vec.epilog.iter.check5415, %vec.epilog.middle.block5427
  %.2174.i.i.ph = phi ptr [ %.1.lcssa.i37.i983, %iter.check5414 ], [ %i.jcs, %vec.epilog.iter.check5415 ], [ %i.jed, %vec.epilog.middle.block5427 ] ; 3 uses
  %.227173.i.i.ph = phi i32 [ %.126.lcssa.i.i982, %iter.check5414 ], [ %i.jcu, %vec.epilog.iter.check5415 ], [ %i.jef, %vec.epilog.middle.block5427 ] ; 4 uses
  %.230172.i.i.ph = phi ptr [ %.129.lcssa.i.i981, %iter.check5414 ], [ %i.jcv, %vec.epilog.iter.check5415 ], [ %i.jeg, %vec.epilog.middle.block5427 ] ; 3 uses
  %i.jfb = sub i32 %i.ins, %.227173.i.i.ph
  %.neg8021 = add i32 %.227173.i.i.ph, 1
  %xtraiter7828 = and i32 %i.jfb, 1
  %lcmp.mod7829.not = icmp eq i32 %xtraiter7828, 0
  br i1 %lcmp.mod7829.not, label %.lr.ph175.i.i.prol.loopexit, label %.lr.ph175.i.i.prol

.lr.ph175.i.i.prol:                               ; preds = %.lr.ph175.i.i.preheader
  %i.jfc = getelementptr inbounds nuw i8, ptr %.2174.i.i.ph, i64 2
  %i.jfd = load i16, ptr %.2174.i.i.ph, align 2, !tbaa !57
  %i.jfe = zext i16 %i.jfd to i32
  %i.jff = shl nuw i32 %i.jfe, 16
  %i.jfg = bitcast i32 %i.jff to float
  %i.jfh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jfg)
  %i.jfi = bitcast float %i.jfh to i32
  %i.jfj = lshr i32 %i.jfi, 16
  %i.jfk = trunc nuw i32 %i.jfj to i16
  %i.jfl = getelementptr inbounds nuw i8, ptr %.230172.i.i.ph, i64 2
  store i16 %i.jfk, ptr %.230172.i.i.ph, align 2, !tbaa !57
  %i.jfm = add nuw nsw i32 %.227173.i.i.ph, 1
  br label %.lr.ph175.i.i.prol.loopexit

.lr.ph175.i.i.prol.loopexit:                      ; preds = %.lr.ph175.i.i.prol, %.lr.ph175.i.i.preheader
  %.2174.i.i.unr = phi ptr [ %.2174.i.i.ph, %.lr.ph175.i.i.preheader ], [ %i.jfc, %.lr.ph175.i.i.prol ]
  %.227173.i.i.unr = phi i32 [ %.227173.i.i.ph, %.lr.ph175.i.i.preheader ], [ %i.jfm, %.lr.ph175.i.i.prol ]
  %.230172.i.i.unr = phi ptr [ %.230172.i.i.ph, %.lr.ph175.i.i.preheader ], [ %i.jfl, %.lr.ph175.i.i.prol ]
  %i.jfn = icmp eq i32 %i.ins, %.neg8021
  br i1 %i.jfn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph175.i.i

bb.ht:                                            ; preds = %bb.ht, %.lr.ph168.i.i
  %.1167.i.i = phi ptr [ %.0.lcssa.i35.i979, %.lr.ph168.i.i ], [ %i.jgy, %bb.ht ] ; 2 uses
  %.126166.i.i = phi i32 [ %.025.lcssa.i.i978, %.lr.ph168.i.i ], [ %i.jha, %bb.ht ]
  %.129165.i.i = phi ptr [ %.028.lcssa.i.i977, %.lr.ph168.i.i ], [ %i.jgz, %bb.ht ] ; 2 uses
  %i.jfo = load i64, ptr %.1167.i.i, align 1, !tbaa !60
  %i.jfp = insertelement <2 x i64> poison, i64 %i.jfo, i64 0
  %i.jfq = bitcast <2 x i64> %i.jfp to <8 x i16>
  %i.jfr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jfq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jfs = bitcast <8 x i16> %i.jfr to <4 x float>
  %i.jft = fmul fast <4 x float> %i.jav, %i.jfs
  %i.jfu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jft, <4 x float> splat (float f0x42B0C0A5))
  %i.jfv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jfu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jfw = fmul fast <4 x float> %i.jfv, splat (float f0x3FB8AA3B)
  %i.jfx = fadd fast <4 x float> %i.jfw, splat (float 5.000000e-01) ; 2 uses
  %i.jfy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jfx)
  %i.jfz = sitofp fast <4 x i32> %i.jfy to <4 x float> ; 2 uses
  %i.jga = fcmp fast olt <4 x float> %i.jfx, %i.jfz
  %i.jgb = select <4 x i1> %i.jga, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jgc = fsub fast <4 x float> %i.jfz, %i.jgb   ; 2 uses
  %i.jgd = fneg fast <4 x float> %i.jgc           ; 2 uses
  %i.jge = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jgd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jfv)
  %i.jgf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jgd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jge) ; 8 uses
  %i.jgg = fmul fast <4 x float> %i.jgf, %i.jgf
  %i.jgh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jgf, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jgi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jgh, <4 x float> nofpclass(nan inf) %i.jgf, <4 x float> splat (float f0x3C088908))
  %i.jgj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jgi, <4 x float> nofpclass(nan inf) %i.jgf, <4 x float> splat (float f0x3D2AA9C1))
  %i.jgk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jgj, <4 x float> nofpclass(nan inf) %i.jgf, <4 x float> splat (float f0x3E2AAAAA))
  %i.jgl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jgk, <4 x float> nofpclass(nan inf) %i.jgf, <4 x float> splat (float 5.000000e-01))
  %i.jgm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jgl, <4 x float> nofpclass(nan inf) %i.jgg, <4 x float> nofpclass(nan inf) %i.jgf)
  %i.jgn = fadd fast <4 x float> %i.jgm, splat (float 1.000000e+00)
  %i.jgo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jgc)
  %i.jgp = shl <4 x i32> %i.jgo, splat (i32 23)
  %i.jgq = add <4 x i32> %i.jgp, splat (i32 1065353216)
  %i.jgr = bitcast <4 x i32> %i.jgq to <4 x float>
  %i.jgs = fmul fast <4 x float> %i.jgn, %i.jgr
  %i.jgt = bitcast <4 x float> %i.jgs to <4 x i32>
  %i.jgu = lshr <4 x i32> %i.jgt, splat (i32 16)
  %i.jgv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jgu, <4 x i32> poison)
  %i.jgw = bitcast <8 x i16> %i.jgv to <2 x i64>
  %i.jgx = extractelement <2 x i64> %i.jgw, i64 0
  store i64 %i.jgx, ptr %.129165.i.i, align 1, !tbaa !60
  %i.jgy = getelementptr inbounds nuw i8, ptr %.1167.i.i, i64 8 ; 2 uses
  %i.jgz = getelementptr inbounds nuw i8, ptr %.129165.i.i, i64 8 ; 2 uses
  %i.jha = add nuw nsw i32 %.126166.i.i, 4        ; 3 uses
  %i.jhb = or disjoint i32 %i.jha, 3
  %i.jhc = icmp slt i32 %i.jhb, %i.ins
  br i1 %i.jhc, label %bb.ht, label %.preheader.i36.i980, !llvm.loop !839

.lr.ph175.i.i:                                    ; preds = %.lr.ph175.i.i.prol.loopexit, %.lr.ph175.i.i
  %.2174.i.i = phi ptr [ %i.jhn, %.lr.ph175.i.i ], [ %.2174.i.i.unr, %.lr.ph175.i.i.prol.loopexit ] ; 3 uses
  %.227173.i.i = phi i32 [ %i.jhx, %.lr.ph175.i.i ], [ %.227173.i.i.unr, %.lr.ph175.i.i.prol.loopexit ]
  %.230172.i.i = phi ptr [ %i.jhw, %.lr.ph175.i.i ], [ %.230172.i.i.unr, %.lr.ph175.i.i.prol.loopexit ] ; 3 uses
  %i.jhd = getelementptr inbounds nuw i8, ptr %.2174.i.i, i64 2
  %i.jhe = load i16, ptr %.2174.i.i, align 2, !tbaa !57
  %i.jhf = zext i16 %i.jhe to i32
  %i.jhg = shl nuw i32 %i.jhf, 16
  %i.jhh = bitcast i32 %i.jhg to float
  %i.jhi = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jhh)
  %i.jhj = bitcast float %i.jhi to i32
  %i.jhk = lshr i32 %i.jhj, 16
  %i.jhl = trunc nuw i32 %i.jhk to i16
  %i.jhm = getelementptr inbounds nuw i8, ptr %.230172.i.i, i64 2
  store i16 %i.jhl, ptr %.230172.i.i, align 2, !tbaa !57
  %i.jhn = getelementptr inbounds nuw i8, ptr %.2174.i.i, i64 4
  %i.jho = load i16, ptr %i.jhd, align 2, !tbaa !57
  %i.jhp = zext i16 %i.jho to i32
  %i.jhq = shl nuw i32 %i.jhp, 16
  %i.jhr = bitcast i32 %i.jhq to float
  %i.jhs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ixq, float %i.jhr)
  %i.jht = bitcast float %i.jhs to i32
  %i.jhu = lshr i32 %i.jht, 16
  %i.jhv = trunc nuw i32 %i.jhu to i16
  %i.jhw = getelementptr inbounds nuw i8, ptr %.230172.i.i, i64 4
  store i16 %i.jhv, ptr %i.jhm, align 2, !tbaa !57
  %i.jhx = add nuw nsw i32 %.227173.i.i, 2        ; 2 uses
  %exitcond.not.i38.i984.1 = icmp eq i32 %i.jhx, %i.ins
  br i1 %exitcond.not.i38.i984.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph175.i.i, !llvm.loop !840

bb.hu:                                            ; preds = %bb.hm
  %i.jhy = icmp eq i32 %3, 1
  br i1 %i.jhy, label %bb.hv, label %bb.ia

bb.hv:                                            ; preds = %bb.hu
  %i.jhz = load i16, ptr %0, align 2, !tbaa !57
  %i.jia = zext i16 %i.jhz to i32
  %i.jib = shl nuw i32 %i.jia, 16
  %i.jic = bitcast i32 %i.jib to float            ; 14 uses
  %i.jid = icmp eq i32 %.sroa.speculated.i960, 4
  br i1 %i.jid, label %.thread.i83.i, label %bb.hw

.thread.i83.i:                                    ; preds = %bb.hv
  %i.jie = load i64, ptr %0, align 2, !tbaa !60
  %i.jif = insertelement <2 x i64> poison, i64 %i.jie, i64 0
  %i.jig = bitcast <2 x i64> %i.jif to <8 x i16>
  %i.jih = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jig, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jii = bitcast <8 x i16> %i.jih to <4 x float>
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.jij = insertelement <4 x float> poison, float %i.jic, i64 0
  %i.jik = shufflevector <4 x float> %i.jij, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jil = icmp eq i32 %.sroa.speculated.i960, 8
  br i1 %i.jil, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.jim = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.jin = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jim, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jio = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jim, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jip = shufflevector <8 x i16> %i.jin, <8 x i16> %i.jio, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jiq = bitcast <16 x i16> %i.jip to <8 x float>
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw, %.thread.i83.i
  %i.jir = phi <4 x float> [ %i.jii, %.thread.i83.i ], [ %i.jik, %bb.hw ] ; 2 uses
  %i.jis = shufflevector <4 x float> %i.jir, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.jit = phi <4 x float> [ %i.jik, %bb.hx ], [ %i.jir, %bb.hy ]
  %i.jiu = phi fast <8 x float> [ %i.jiq, %bb.hx ], [ %i.jis, %bb.hy ]
  %i.jiv = icmp sgt i32 %i.ins, 7
  br i1 %i.jiv, label %.lr.ph.i68.i, label %.preheader159.i51.i

.preheader159.loopexit.i82.i:                     ; preds = %.lr.ph.i68.i
  %i.jiw = and i32 %i.ins, 2147483640
  br label %.preheader159.i51.i

.preheader159.i51.i:                              ; preds = %.preheader159.loopexit.i82.i, %bb.hz
  %.028.lcssa.i52.i = phi ptr [ %2, %bb.hz ], [ %i.jlo, %.preheader159.loopexit.i82.i ] ; 2 uses
  %.025.lcssa.i53.i = phi i32 [ 0, %bb.hz ], [ %i.jiw, %.preheader159.loopexit.i82.i ] ; 3 uses
  %.0.lcssa.i54.i = phi ptr [ %1, %bb.hz ], [ %i.jln, %.preheader159.loopexit.i82.i ] ; 2 uses
  %i.jix = or disjoint i32 %.025.lcssa.i53.i, 3
  %i.jiy = icmp slt i32 %i.jix, %i.ins
  br i1 %i.jiy, label %.lr.ph168.i64.i, label %.preheader.i55.i

.lr.ph.i68.i:                                     ; preds = %bb.hz, %.lr.ph.i68.i
  %.0162.i69.i = phi ptr [ %i.jln, %.lr.ph.i68.i ], [ %1, %bb.hz ] ; 2 uses
  %.025161.i70.i = phi i32 [ %i.jlp, %.lr.ph.i68.i ], [ 0, %bb.hz ]
  %.028160.i71.i = phi ptr [ %i.jlo, %.lr.ph.i68.i ], [ %2, %bb.hz ] ; 2 uses
  %i.jiz = load <8 x i16>, ptr %.0162.i69.i, align 1, !tbaa !60 ; 2 uses
  %i.jja = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jiz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jjb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jiz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jjc = shufflevector <8 x i16> %i.jja, <8 x i16> %i.jjb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jjd = bitcast <16 x i16> %i.jjc to <8 x float>
  %i.jje = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jjd, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.jjf = bitcast <8 x float> %i.jje to <8 x i32>
  %i.jjg = bitcast <8 x float> %i.jje to <8 x i32>
  %i.jjh = and <8 x i32> %i.jjg, splat (i32 -2139095041)
  %i.jji = or disjoint <8 x i32> %i.jjh, splat (i32 1056964608)
  %i.jjj = bitcast <8 x i32> %i.jji to <8 x float> ; 3 uses
  %i.jjk = lshr <8 x i32> %i.jjf, splat (i32 23)
  %i.jjl = add nsw <8 x i32> %i.jjk, splat (i32 -127)
  %i.jjm = sitofp fast <8 x i32> %i.jjl to <8 x float> ; 2 uses
  %i.jjn = fadd fast <8 x float> %i.jjm, splat (float 1.000000e+00)
  %i.jjo = fcmp fast olt <8 x float> %i.jjj, splat (float f0x3F3504F3) ; 2 uses
  %i.jjp = select <8 x i1> %i.jjo, <8 x float> %i.jjj, <8 x float> zeroinitializer
  %i.jjq = fadd fast <8 x float> %i.jjj, splat (float -1.000000e+00)
  %i.jjr = select fast <8 x i1> %i.jjo, <8 x float> %i.jjm, <8 x float> %i.jjn ; 2 uses
  %i.jjs = fadd fast <8 x float> %i.jjq, %i.jjp   ; 12 uses
  %i.jjt = fmul fast <8 x float> %i.jjs, %i.jjs   ; 2 uses
  %i.jju = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjs, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.jjv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jju, <8 x float> nofpclass(nan inf) %i.jjs, <8 x float> splat (float f0x3DEF251A))
  %i.jjw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjv, <8 x float> nofpclass(nan inf) %i.jjs, <8 x float> splat (float f0xBDFE5D4F))
  %i.jjx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjw, <8 x float> nofpclass(nan inf) %i.jjs, <8 x float> splat (float f0x3E11E9BF))
  %i.jjy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjx, <8 x float> nofpclass(nan inf) %i.jjs, <8 x float> splat (float f0xBE2AAE50))
  %i.jjz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjy, <8 x float> nofpclass(nan inf) %i.jjs, <8 x float> splat (float f0x3E4CCEAC))
  %i.jka = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjz, <8 x float> nofpclass(nan inf) %i.jjs, <8 x float> splat (float f0xBE7FFFFC))
  %i.jkb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jka, <8 x float> nofpclass(nan inf) %i.jjs, <8 x float> splat (float f0x3EAAAAAA))
  %i.jkc = fmul fast <8 x float> %i.jjt, %i.jjs
  %i.jkd = fmul fast <8 x float> %i.jkc, %i.jkb
  %i.jke = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.jkd)
  %i.jkf = fneg fast <8 x float> %i.jjt
  %i.jkg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jkf, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.jke)
  %i.jkh = fadd fast <8 x float> %i.jkg, %i.jjs
  %i.jki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jjr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.jkh)
  %i.jkj = fmul fast <8 x float> %i.jki, %i.jiu
  %i.jkk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jkj, <8 x float> splat (float f0x42B0C0A5))
  %i.jkl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jkk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jkm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jkl, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.jkn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jkm, i32 1) ; 2 uses
  %i.jko = fcmp fast ogt <8 x float> %i.jkn, %i.jkm
  %i.jkp = select <8 x i1> %i.jko, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.jkq = fsub fast <8 x float> %i.jkn, %i.jkp   ; 2 uses
  %i.jkr = fneg fast <8 x float> %i.jkq           ; 2 uses
  %i.jks = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jkr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.jkl)
  %i.jkt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jkr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.jks) ; 8 uses
  %i.jku = fmul fast <8 x float> %i.jkt, %i.jkt
  %i.jkv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jkt, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.jkw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jkv, <8 x float> nofpclass(nan inf) %i.jkt, <8 x float> splat (float f0x3C088908))
  %i.jkx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jkw, <8 x float> nofpclass(nan inf) %i.jkt, <8 x float> splat (float f0x3D2AA9C1))
  %i.jky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jkx, <8 x float> nofpclass(nan inf) %i.jkt, <8 x float> splat (float f0x3E2AAAAA))
  %i.jkz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jky, <8 x float> nofpclass(nan inf) %i.jkt, <8 x float> splat (float 5.000000e-01))
  %i.jla = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jkz, <8 x float> nofpclass(nan inf) %i.jku, <8 x float> nofpclass(nan inf) %i.jkt)
  %i.jlb = fadd fast <8 x float> %i.jla, splat (float 1.000000e+00)
  %i.jlc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jkq)
  %i.jld = shl <8 x i32> %i.jlc, splat (i32 23)
  %i.jle = add <8 x i32> %i.jld, splat (i32 1065353216)
  %i.jlf = bitcast <8 x i32> %i.jle to <8 x float>
  %i.jlg = fmul fast <8 x float> %i.jlb, %i.jlf
  %i.jlh = bitcast <8 x float> %i.jlg to <8 x i32> ; 2 uses
  %i.jli = shufflevector <8 x i32> %i.jlh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jlj = shufflevector <8 x i32> %i.jlh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jlk = lshr <4 x i32> %i.jli, splat (i32 16)
  %i.jll = lshr <4 x i32> %i.jlj, splat (i32 16)
  %i.jlm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jlk, <4 x i32> %i.jll)
  store <8 x i16> %i.jlm, ptr %.028160.i71.i, align 1, !tbaa !60
  %i.jln = getelementptr inbounds nuw i8, ptr %.0162.i69.i, i64 16 ; 2 uses
  %i.jlo = getelementptr inbounds nuw i8, ptr %.028160.i71.i, i64 16 ; 2 uses
  %i.jlp = add nuw nsw i32 %.025161.i70.i, 8      ; 2 uses
  %i.jlq = or disjoint i32 %i.jlp, 7
  %i.jlr = icmp slt i32 %i.jlq, %i.ins
  br i1 %i.jlr, label %.lr.ph.i68.i, label %.preheader159.loopexit.i82.i, !llvm.loop !841

.preheader.i55.i:                                 ; preds = %.lr.ph168.i64.i, %.preheader159.i51.i
  %.129.lcssa.i56.i = phi ptr [ %.028.lcssa.i52.i, %.preheader159.i51.i ], [ %i.jrl, %.lr.ph168.i64.i ] ; 6 uses
  %.126.lcssa.i57.i = phi i32 [ %.025.lcssa.i53.i, %.preheader159.i51.i ], [ %i.jrm, %.lr.ph168.i64.i ] ; 5 uses
  %.1.lcssa.i58.i = phi ptr [ %.0.lcssa.i54.i, %.preheader159.i51.i ], [ %i.jrk, %.lr.ph168.i64.i ] ; 6 uses
  %i.jls = icmp slt i32 %.126.lcssa.i57.i, %i.ins
  br i1 %i.jls, label %iter.check5375, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5375:                                   ; preds = %.preheader.i55.i
  %.129.lcssa.i56.i5359 = ptrtoaddr ptr %.129.lcssa.i56.i to i64
  %.1.lcssa.i58.i5358 = ptrtoaddr ptr %.1.lcssa.i58.i to i64
  %i.jlt = xor i32 %.126.lcssa.i57.i, -1
  %i.jlu = add i32 %i.ins, %i.jlt                 ; 3 uses
  %i.jlv = zext i32 %i.jlu to i64
  %i.jlw = add nuw nsw i64 %i.jlv, 1              ; 5 uses
  %min.iters.check5360 = icmp ult i32 %i.jlu, 3
  %i.jlx = sub i64 %.1.lcssa.i58.i5358, %.129.lcssa.i56.i5359
  %diff.check5362 = icmp ugt i64 %i.jlx, -32
  %or.cond7108 = select i1 %min.iters.check5360, i1 true, i1 %diff.check5362
  br i1 %or.cond7108, label %.lr.ph175.i59.i.preheader, label %vector.main.loop.iter.check5363

vector.main.loop.iter.check5363:                  ; preds = %iter.check5375
  %min.iters.check5364 = icmp ult i32 %i.jlu, 15
  br i1 %min.iters.check5364, label %vec.epilog.ph5379, label %vector.ph5365

vector.ph5365:                                    ; preds = %vector.main.loop.iter.check5363
  %i.jly = and i64 %i.jlw, 12
  %n.vec5366 = and i64 %i.jlw, 8589934576         ; 5 uses
  %i.jlz = shl nuw nsw i64 %n.vec5366, 1          ; 2 uses
  %i.jma = getelementptr i8, ptr %.1.lcssa.i58.i, i64 %i.jlz
  %i.jmb = trunc i64 %n.vec5366 to i32
  %i.jmc = add i32 %.126.lcssa.i57.i, %i.jmb
  %i.jmd = getelementptr i8, ptr %.129.lcssa.i56.i, i64 %i.jlz
  %i.jme = insertelement <8 x float> poison, float %i.jic, i64 0
  %i.jmf = shufflevector <8 x float> %i.jme, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jmg = insertelement <4 x float> poison, float %i.jic, i64 0
  %i.jmh = shufflevector <4 x float> %i.jmg, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5367

vector.body5367:                                  ; preds = %vector.ph5365, %vector.body5367
  %index5368 = phi i64 [ 0, %vector.ph5365 ], [ %index.next5372, %vector.body5367 ] ; 2 uses
  %i.jmi = shl i64 %index5368, 1                  ; 2 uses
  %next.gep5369 = getelementptr i8, ptr %.1.lcssa.i58.i, i64 %i.jmi
  %next.gep5370 = getelementptr i8, ptr %.129.lcssa.i56.i, i64 %i.jmi
  %wide.load5371 = load <16 x i16>, ptr %next.gep5369, align 2, !tbaa !57
  %i.jmj = zext <16 x i16> %wide.load5371 to <16 x i32>
  %i.jmk = shl nuw <16 x i32> %i.jmj, splat (i32 16)
  %i.jml = bitcast <16 x i32> %i.jmk to <16 x float> ; 6 uses
  %i.jmm = extractelement <16 x float> %i.jml, i64 0
  %i.jmn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jmm, float %i.jic)
  %i.jmo = extractelement <16 x float> %i.jml, i64 1
  %i.jmp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jmo, float %i.jic)
  %i.jmq = extractelement <16 x float> %i.jml, i64 2
  %i.jmr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jmq, float %i.jic)
  %i.jms = extractelement <16 x float> %i.jml, i64 3
  %i.jmt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jms, float %i.jic)
  %i.jmu = shufflevector <16 x float> %i.jml, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jmv = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.jmu, <4 x float> %i.jmh)
  %i.jmw = shufflevector <16 x float> %i.jml, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jmx = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.jmw, <8 x float> %i.jmf)
  %i.jmy = insertelement <16 x float> poison, float %i.jmn, i64 0
  %i.jmz = insertelement <16 x float> %i.jmy, float %i.jmp, i64 1
  %i.jna = insertelement <16 x float> %i.jmz, float %i.jmr, i64 2
  %i.jnb = insertelement <16 x float> %i.jna, float %i.jmt, i64 3
  %i.jnc = shufflevector <4 x float> %i.jmv, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jnd = shufflevector <16 x float> %i.jnb, <16 x float> %i.jnc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jne = shufflevector <8 x float> %i.jmx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jnf = shufflevector <16 x float> %i.jnd, <16 x float> %i.jne, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.jng = bitcast <16 x float> %i.jnf to <16 x i32>
  %i.jnh = lshr <16 x i32> %i.jng, splat (i32 16)
  %i.jni = trunc nuw <16 x i32> %i.jnh to <16 x i16>
  store <16 x i16> %i.jni, ptr %next.gep5370, align 2, !tbaa !57
  %index.next5372 = add nuw i64 %index5368, 16    ; 2 uses
  %i.jnj = icmp eq i64 %index.next5372, %n.vec5366
  br i1 %i.jnj, label %middle.block5373, label %vector.body5367, !llvm.loop !842

middle.block5373:                                 ; preds = %vector.body5367
  %cmp.n5374 = icmp eq i64 %i.jlw, %n.vec5366
  br i1 %cmp.n5374, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5376

vec.epilog.iter.check5376:                        ; preds = %middle.block5373
  %min.epilog.iters.check5378 = icmp eq i64 %i.jly, 0
  br i1 %min.epilog.iters.check5378, label %.lr.ph175.i59.i.preheader, label %vec.epilog.ph5379, !prof !64

vec.epilog.ph5379:                                ; preds = %vector.main.loop.iter.check5363, %vec.epilog.iter.check5376
  %vec.epilog.resume.val5380 = phi i64 [ %n.vec5366, %vec.epilog.iter.check5376 ], [ 0, %vector.main.loop.iter.check5363 ]
  %n.vec5381 = and i64 %i.jlw, 8589934588         ; 4 uses
  %i.jnk = shl nuw nsw i64 %n.vec5381, 1          ; 2 uses
  %i.jnl = getelementptr i8, ptr %.1.lcssa.i58.i, i64 %i.jnk
  %i.jnm = trunc i64 %n.vec5381 to i32
  %i.jnn = add i32 %.126.lcssa.i57.i, %i.jnm
  %i.jno = getelementptr i8, ptr %.129.lcssa.i56.i, i64 %i.jnk
  br label %vec.epilog.vector.body5382

vec.epilog.vector.body5382:                       ; preds = %vec.epilog.vector.body5382, %vec.epilog.ph5379
  %index5383 = phi i64 [ %vec.epilog.resume.val5380, %vec.epilog.ph5379 ], [ %index.next5387, %vec.epilog.vector.body5382 ] ; 2 uses
  %i.jnp = shl i64 %index5383, 1                  ; 2 uses
  %next.gep5384 = getelementptr i8, ptr %.1.lcssa.i58.i, i64 %i.jnp
  %next.gep5385 = getelementptr i8, ptr %.129.lcssa.i56.i, i64 %i.jnp
  %wide.load5386 = load <4 x i16>, ptr %next.gep5384, align 2, !tbaa !57
  %i.jnq = zext <4 x i16> %wide.load5386 to <4 x i32>
  %i.jnr = shl nuw <4 x i32> %i.jnq, splat (i32 16)
  %i.jns = bitcast <4 x i32> %i.jnr to <4 x float> ; 4 uses
  %i.jnt = extractelement <4 x float> %i.jns, i64 0
  %i.jnu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jnt, float %i.jic)
  %i.jnv = extractelement <4 x float> %i.jns, i64 1
  %i.jnw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jnv, float %i.jic)
  %i.jnx = extractelement <4 x float> %i.jns, i64 2
  %i.jny = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jnx, float %i.jic)
  %i.jnz = extractelement <4 x float> %i.jns, i64 3
  %i.joa = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jnz, float %i.jic)
  %i.job = insertelement <4 x float> poison, float %i.jnu, i64 0
  %i.joc = insertelement <4 x float> %i.job, float %i.jnw, i64 1
  %i.jod = insertelement <4 x float> %i.joc, float %i.jny, i64 2
  %i.joe = insertelement <4 x float> %i.jod, float %i.joa, i64 3
  %i.jof = bitcast <4 x float> %i.joe to <4 x i32>
  %i.jog = lshr <4 x i32> %i.jof, splat (i32 16)
  %i.joh = trunc nuw <4 x i32> %i.jog to <4 x i16>
  store <4 x i16> %i.joh, ptr %next.gep5385, align 2, !tbaa !57
  %index.next5387 = add nuw i64 %index5383, 4     ; 2 uses
  %i.joi = icmp eq i64 %index.next5387, %n.vec5381
  br i1 %i.joi, label %vec.epilog.middle.block5388, label %vec.epilog.vector.body5382, !llvm.loop !843

vec.epilog.middle.block5388:                      ; preds = %vec.epilog.vector.body5382
  %cmp.n5389 = icmp eq i64 %i.jlw, %n.vec5381
  br i1 %cmp.n5389, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph175.i59.i.preheader

.lr.ph175.i59.i.preheader:                        ; preds = %iter.check5375, %vec.epilog.iter.check5376, %vec.epilog.middle.block5388
  %.2174.i60.i.ph = phi ptr [ %.1.lcssa.i58.i, %iter.check5375 ], [ %i.jma, %vec.epilog.iter.check5376 ], [ %i.jnl, %vec.epilog.middle.block5388 ] ; 3 uses
  %.227173.i61.i.ph = phi i32 [ %.126.lcssa.i57.i, %iter.check5375 ], [ %i.jmc, %vec.epilog.iter.check5376 ], [ %i.jnn, %vec.epilog.middle.block5388 ] ; 4 uses
  %.230172.i62.i.ph = phi ptr [ %.129.lcssa.i56.i, %iter.check5375 ], [ %i.jmd, %vec.epilog.iter.check5376 ], [ %i.jno, %vec.epilog.middle.block5388 ] ; 3 uses
  %i.joj = sub i32 %i.ins, %.227173.i61.i.ph
  %.neg8020 = add i32 %.227173.i61.i.ph, 1
  %xtraiter7826 = and i32 %i.joj, 1
  %lcmp.mod7827.not = icmp eq i32 %xtraiter7826, 0
  br i1 %lcmp.mod7827.not, label %.lr.ph175.i59.i.prol.loopexit, label %.lr.ph175.i59.i.prol

.lr.ph175.i59.i.prol:                             ; preds = %.lr.ph175.i59.i.preheader
  %i.jok = getelementptr inbounds nuw i8, ptr %.2174.i60.i.ph, i64 2
  %i.jol = load i16, ptr %.2174.i60.i.ph, align 2, !tbaa !57
  %i.jom = zext i16 %i.jol to i32
  %i.jon = shl nuw i32 %i.jom, 16
  %i.joo = bitcast i32 %i.jon to float
  %i.jop = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.joo, float %i.jic)
  %i.joq = bitcast float %i.jop to i32
  %i.jor = lshr i32 %i.joq, 16
  %i.jos = trunc nuw i32 %i.jor to i16
  %i.jot = getelementptr inbounds nuw i8, ptr %.230172.i62.i.ph, i64 2
  store i16 %i.jos, ptr %.230172.i62.i.ph, align 2, !tbaa !57
  %i.jou = add nuw nsw i32 %.227173.i61.i.ph, 1
  br label %.lr.ph175.i59.i.prol.loopexit

.lr.ph175.i59.i.prol.loopexit:                    ; preds = %.lr.ph175.i59.i.prol, %.lr.ph175.i59.i.preheader
  %.2174.i60.i.unr = phi ptr [ %.2174.i60.i.ph, %.lr.ph175.i59.i.preheader ], [ %i.jok, %.lr.ph175.i59.i.prol ]
  %.227173.i61.i.unr = phi i32 [ %.227173.i61.i.ph, %.lr.ph175.i59.i.preheader ], [ %i.jou, %.lr.ph175.i59.i.prol ]
  %.230172.i62.i.unr = phi ptr [ %.230172.i62.i.ph, %.lr.ph175.i59.i.preheader ], [ %i.jot, %.lr.ph175.i59.i.prol ]
  %i.jov = icmp eq i32 %i.ins, %.neg8020
  br i1 %i.jov, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph175.i59.i

.lr.ph168.i64.i:                                  ; preds = %.preheader159.i51.i, %.lr.ph168.i64.i
  %.1167.i65.i = phi ptr [ %i.jrk, %.lr.ph168.i64.i ], [ %.0.lcssa.i54.i, %.preheader159.i51.i ] ; 2 uses
  %.126166.i66.i = phi i32 [ %i.jrm, %.lr.ph168.i64.i ], [ %.025.lcssa.i53.i, %.preheader159.i51.i ]
  %.129165.i67.i = phi ptr [ %i.jrl, %.lr.ph168.i64.i ], [ %.028.lcssa.i52.i, %.preheader159.i51.i ] ; 2 uses
  %i.jow = load i64, ptr %.1167.i65.i, align 1, !tbaa !60
  %i.jox = insertelement <2 x i64> poison, i64 %i.jow, i64 0
  %i.joy = bitcast <2 x i64> %i.jox to <8 x i16>
  %i.joz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.joy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jpa = bitcast <8 x i16> %i.joz to <4 x float>
  %i.jpb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jpa, <4 x float> splat (float f0x00800000))
  %i.jpc = bitcast <4 x float> %i.jpb to <4 x i32> ; 2 uses
  %i.jpd = lshr <4 x i32> %i.jpc, splat (i32 23)
  %i.jpe = and <4 x i32> %i.jpc, splat (i32 -2139095041)
  %i.jpf = or disjoint <4 x i32> %i.jpe, splat (i32 1056964608)
  %i.jpg = bitcast <4 x i32> %i.jpf to <4 x float> ; 3 uses
  %i.jph = add nsw <4 x i32> %i.jpd, splat (i32 -127)
  %i.jpi = sitofp fast <4 x i32> %i.jph to <4 x float> ; 2 uses
  %i.jpj = fadd fast <4 x float> %i.jpi, splat (float 1.000000e+00)
  %i.jpk = fcmp fast olt <4 x float> %i.jpg, splat (float f0x3F3504F3) ; 2 uses
  %i.jpl = select <4 x i1> %i.jpk, <4 x float> %i.jpg, <4 x float> zeroinitializer
  %i.jpm = fadd fast <4 x float> %i.jpg, splat (float -1.000000e+00)
  %i.jpn = select fast <4 x i1> %i.jpk, <4 x float> %i.jpi, <4 x float> %i.jpj ; 2 uses
  %i.jpo = fadd fast <4 x float> %i.jpm, %i.jpl   ; 12 uses
  %i.jpp = fmul fast <4 x float> %i.jpo, %i.jpo   ; 2 uses
  %i.jpq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpo, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.jpr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpq, <4 x float> nofpclass(nan inf) %i.jpo, <4 x float> splat (float f0x3DEF251A))
  %i.jps = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpr, <4 x float> nofpclass(nan inf) %i.jpo, <4 x float> splat (float f0xBDFE5D4F))
  %i.jpt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jps, <4 x float> nofpclass(nan inf) %i.jpo, <4 x float> splat (float f0x3E11E9BF))
  %i.jpu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpt, <4 x float> nofpclass(nan inf) %i.jpo, <4 x float> splat (float f0xBE2AAE50))
  %i.jpv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpu, <4 x float> nofpclass(nan inf) %i.jpo, <4 x float> splat (float f0x3E4CCEAC))
  %i.jpw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpv, <4 x float> nofpclass(nan inf) %i.jpo, <4 x float> splat (float f0xBE7FFFFC))
  %i.jpx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpw, <4 x float> nofpclass(nan inf) %i.jpo, <4 x float> splat (float f0x3EAAAAAA))
  %i.jpy = fmul fast <4 x float> %i.jpp, %i.jpo
  %i.jpz = fmul fast <4 x float> %i.jpy, %i.jpx
  %i.jqa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpn, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jpz)
  %i.jqb = fneg fast <4 x float> %i.jpp
  %i.jqc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jqb, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.jqa)
  %i.jqd = fadd fast <4 x float> %i.jqc, %i.jpo
  %i.jqe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jpn, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jqd)
  %i.jqf = fmul fast <4 x float> %i.jqe, %i.jit
  %i.jqg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jqf, <4 x float> splat (float f0x42B0C0A5))
  %i.jqh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jqg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jqi = fmul fast <4 x float> %i.jqh, splat (float f0x3FB8AA3B)
  %i.jqj = fadd fast <4 x float> %i.jqi, splat (float 5.000000e-01) ; 2 uses
  %i.jqk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jqj)
  %i.jql = sitofp fast <4 x i32> %i.jqk to <4 x float> ; 2 uses
  %i.jqm = fcmp fast olt <4 x float> %i.jqj, %i.jql
  %i.jqn = select <4 x i1> %i.jqm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jqo = fsub fast <4 x float> %i.jql, %i.jqn   ; 2 uses
  %i.jqp = fneg fast <4 x float> %i.jqo           ; 2 uses
  %i.jqq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jqp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jqh)
  %i.jqr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jqp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jqq) ; 8 uses
  %i.jqs = fmul fast <4 x float> %i.jqr, %i.jqr
  %i.jqt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jqu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqt, <4 x float> nofpclass(nan inf) %i.jqr, <4 x float> splat (float f0x3C088908))
  %i.jqv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqu, <4 x float> nofpclass(nan inf) %i.jqr, <4 x float> splat (float f0x3D2AA9C1))
  %i.jqw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqv, <4 x float> nofpclass(nan inf) %i.jqr, <4 x float> splat (float f0x3E2AAAAA))
  %i.jqx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqw, <4 x float> nofpclass(nan inf) %i.jqr, <4 x float> splat (float 5.000000e-01))
  %i.jqy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jqx, <4 x float> nofpclass(nan inf) %i.jqs, <4 x float> nofpclass(nan inf) %i.jqr)
  %i.jqz = fadd fast <4 x float> %i.jqy, splat (float 1.000000e+00)
  %i.jra = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jqo)
  %i.jrb = shl <4 x i32> %i.jra, splat (i32 23)
  %i.jrc = add <4 x i32> %i.jrb, splat (i32 1065353216)
  %i.jrd = bitcast <4 x i32> %i.jrc to <4 x float>
  %i.jre = fmul fast <4 x float> %i.jqz, %i.jrd
  %i.jrf = bitcast <4 x float> %i.jre to <4 x i32>
  %i.jrg = lshr <4 x i32> %i.jrf, splat (i32 16)
  %i.jrh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jrg, <4 x i32> poison)
  %i.jri = bitcast <8 x i16> %i.jrh to <2 x i64>
  %i.jrj = extractelement <2 x i64> %i.jri, i64 0
  store i64 %i.jrj, ptr %.129165.i67.i, align 1, !tbaa !60
  %i.jrk = getelementptr inbounds nuw i8, ptr %.1167.i65.i, i64 8 ; 2 uses
  %i.jrl = getelementptr inbounds nuw i8, ptr %.129165.i67.i, i64 8 ; 2 uses
  %i.jrm = add nuw nsw i32 %.126166.i66.i, 4      ; 3 uses
  %i.jrn = or disjoint i32 %i.jrm, 3
  %i.jro = icmp slt i32 %i.jrn, %i.ins
  br i1 %i.jro, label %.lr.ph168.i64.i, label %.preheader.i55.i, !llvm.loop !844

.lr.ph175.i59.i:                                  ; preds = %.lr.ph175.i59.i.prol.loopexit, %.lr.ph175.i59.i
  %.2174.i60.i = phi ptr [ %i.jrz, %.lr.ph175.i59.i ], [ %.2174.i60.i.unr, %.lr.ph175.i59.i.prol.loopexit ] ; 3 uses
  %.227173.i61.i = phi i32 [ %i.jsj, %.lr.ph175.i59.i ], [ %.227173.i61.i.unr, %.lr.ph175.i59.i.prol.loopexit ]
  %.230172.i62.i = phi ptr [ %i.jsi, %.lr.ph175.i59.i ], [ %.230172.i62.i.unr, %.lr.ph175.i59.i.prol.loopexit ] ; 3 uses
  %i.jrp = getelementptr inbounds nuw i8, ptr %.2174.i60.i, i64 2
  %i.jrq = load i16, ptr %.2174.i60.i, align 2, !tbaa !57
  %i.jrr = zext i16 %i.jrq to i32
  %i.jrs = shl nuw i32 %i.jrr, 16
  %i.jrt = bitcast i32 %i.jrs to float
  %i.jru = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jrt, float %i.jic)
  %i.jrv = bitcast float %i.jru to i32
  %i.jrw = lshr i32 %i.jrv, 16
  %i.jrx = trunc nuw i32 %i.jrw to i16
  %i.jry = getelementptr inbounds nuw i8, ptr %.230172.i62.i, i64 2
  store i16 %i.jrx, ptr %.230172.i62.i, align 2, !tbaa !57
  %i.jrz = getelementptr inbounds nuw i8, ptr %.2174.i60.i, i64 4
  %i.jsa = load i16, ptr %i.jrp, align 2, !tbaa !57
  %i.jsb = zext i16 %i.jsa to i32
  %i.jsc = shl nuw i32 %i.jsb, 16
  %i.jsd = bitcast i32 %i.jsc to float
  %i.jse = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jsd, float %i.jic)
  %i.jsf = bitcast float %i.jse to i32
  %i.jsg = lshr i32 %i.jsf, 16
  %i.jsh = trunc nuw i32 %i.jsg to i16
  %i.jsi = getelementptr inbounds nuw i8, ptr %.230172.i62.i, i64 4
  store i16 %i.jsh, ptr %i.jry, align 2, !tbaa !57
  %i.jsj = add nuw nsw i32 %.227173.i61.i, 2      ; 2 uses
  %exitcond.not.i63.i.1 = icmp eq i32 %i.jsj, %i.ins
  br i1 %exitcond.not.i63.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph175.i59.i, !llvm.loop !845

bb.ia:                                            ; preds = %bb.hu, %bb.hj
  %i.jsk = icmp eq i32 %6, 1
  br i1 %i.jsk, label %bb.ib, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.ib:                                            ; preds = %bb.ia
  %i.jsl = icmp eq i32 %3, %4
  br i1 %i.jsl, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  switch i32 %.sroa.speculated.i960, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i86.i
    i32 4, label %.preheader149.i.i
  ]

.preheader149.i.i:                                ; preds = %bb.ic
  %i.jsm = icmp sgt i32 %.sroa.speculated136.i, 0
  br i1 %i.jsm, label %.lr.ph.i84.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i86.i:                                 ; preds = %bb.ic
  %i.jsn = icmp sgt i32 %.sroa.speculated136.i, 0
  br i1 %i.jsn, label %.lr.ph159.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph159.i.i:                                    ; preds = %.preheader.i86.i, %.lr.ph159.i.i
  %.020158.i.i = phi ptr [ %i.jvi, %.lr.ph159.i.i ], [ %0, %.preheader.i86.i ] ; 2 uses
  %.021157.i.i = phi i32 [ %i.jvl, %.lr.ph159.i.i ], [ 0, %.preheader.i86.i ]
  %.022156.i.i = phi ptr [ %i.jvj, %.lr.ph159.i.i ], [ %1, %.preheader.i86.i ] ; 2 uses
  %.024155.i.i = phi ptr [ %i.jvk, %.lr.ph159.i.i ], [ %2, %.preheader.i86.i ] ; 2 uses
  %i.jso = load <8 x i16>, ptr %.020158.i.i, align 1, !tbaa !60 ; 2 uses
  %i.jsp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jso, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jsq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jso, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jsr = shufflevector <8 x i16> %i.jsp, <8 x i16> %i.jsq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jss = bitcast <16 x i16> %i.jsr to <8 x float>
  %i.jst = load i16, ptr %.022156.i.i, align 2, !tbaa !57
  %i.jsu = zext i16 %i.jst to i32
  %i.jsv = shl nuw i32 %i.jsu, 16
  %i.jsw = insertelement <8 x i32> poison, i32 %i.jsv, i64 0
  %i.jsx = bitcast <8 x i32> %i.jsw to <8 x float>
  %i.jsy = shufflevector <8 x float> %i.jsx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jsz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jsy, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.jta = bitcast <8 x float> %i.jsz to <8 x i32>
  %i.jtb = bitcast <8 x float> %i.jsz to <8 x i32>
  %i.jtc = and <8 x i32> %i.jtb, splat (i32 -2139095041)
  %i.jtd = or disjoint <8 x i32> %i.jtc, splat (i32 1056964608)
  %i.jte = bitcast <8 x i32> %i.jtd to <8 x float> ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.jye = bitcast <8 x i16> %i.jyd to <2 x i64>
  %i.jyf = extractelement <2 x i64> %i.jye, i64 0
  store i64 %i.jyf, ptr %.125151.i.i, align 1, !tbaa !60
  %i.jyg = getelementptr inbounds nuw i8, ptr %.1153.i.i, i64 8
  %i.jyh = getelementptr inbounds nuw i8, ptr %.123152.i.i, i64 2
  %i.jyi = getelementptr inbounds nuw i8, ptr %.125151.i.i, i64 8
  %i.jyj = add nuw nsw i32 %.0154.i.i, 1          ; 2 uses
  %exitcond.not.i85.i = icmp eq i32 %i.jyj, %.sroa.speculated136.i
  br i1 %exitcond.not.i85.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i84.i, !llvm.loop !847

bb.id:                                            ; preds = %bb.ib
  %i.jyk = icmp eq i32 %4, 1
  br i1 %i.jyk, label %bb.ie, label %bb.ih

bb.ie:                                            ; preds = %bb.id
  %.val.i961 = load i16, ptr %1, align 2, !tbaa !57
  %i.jyl = zext i16 %.val.i961 to i32
  %i.jym = shl nuw i32 %i.jyl, 16
  %i.jyn = bitcast i32 %i.jym to float            ; 15 uses
  %i.jyo = icmp sgt i32 %i.ins, 7
  br i1 %i.jyo, label %.lr.ph.i103.i, label %._crit_edge.i.i962

.lr.ph.i103.i:                                    ; preds = %bb.ie
  %i.jyp = insertelement <8 x float> poison, float %i.jyn, i64 0
  %i.jyq = shufflevector <8 x float> %i.jyp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jyr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jyq, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.jys = bitcast <8 x float> %i.jyr to <8 x i32>
  %i.jyt = bitcast <8 x float> %i.jyr to <8 x i32>
  %i.jyu = and <8 x i32> %i.jyt, splat (i32 -2139095041)
  %i.jyv = or disjoint <8 x i32> %i.jyu, splat (i32 1056964608)
  %i.jyw = bitcast <8 x i32> %i.jyv to <8 x float> ; 3 uses
  %i.jyx = lshr <8 x i32> %i.jys, splat (i32 23)
  %i.jyy = add nsw <8 x i32> %i.jyx, splat (i32 -127)
  %i.jyz = sitofp fast <8 x i32> %i.jyy to <8 x float> ; 2 uses
  %i.jza = fadd fast <8 x float> %i.jyz, splat (float 1.000000e+00)
  %i.jzb = fcmp fast olt <8 x float> %i.jyw, splat (float f0x3F3504F3) ; 2 uses
  %i.jzc = select <8 x i1> %i.jzb, <8 x float> %i.jyw, <8 x float> zeroinitializer
  %i.jzd = fadd fast <8 x float> %i.jyw, splat (float -1.000000e+00)
  %i.jze = select fast <8 x i1> %i.jzb, <8 x float> %i.jyz, <8 x float> %i.jza ; 2 uses
  %i.jzf = fadd fast <8 x float> %i.jzd, %i.jzc   ; 12 uses
  %i.jzg = fmul fast <8 x float> %i.jzf, %i.jzf   ; 2 uses
  %i.jzh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzf, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.jzi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzh, <8 x float> nofpclass(nan inf) %i.jzf, <8 x float> splat (float f0x3DEF251A))
  %i.jzj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzi, <8 x float> nofpclass(nan inf) %i.jzf, <8 x float> splat (float f0xBDFE5D4F))
  %i.jzk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzj, <8 x float> nofpclass(nan inf) %i.jzf, <8 x float> splat (float f0x3E11E9BF))
  %i.jzl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzk, <8 x float> nofpclass(nan inf) %i.jzf, <8 x float> splat (float f0xBE2AAE50))
  %i.jzm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzl, <8 x float> nofpclass(nan inf) %i.jzf, <8 x float> splat (float f0x3E4CCEAC))
  %i.jzn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzm, <8 x float> nofpclass(nan inf) %i.jzf, <8 x float> splat (float f0xBE7FFFFC))
  %i.jzo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jzn, <8 x float> nofpclass(nan inf) %i.jzf, <8 x float> splat (float f0x3EAAAAAA))
  %i.jzp = fmul fast <8 x float> %i.jzg, %i.jzf
  %i.jzq = fmul fast <8 x float> %i.jzp, %i.jzo
  %i.jzr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jze, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.jzq)
  %i.jzs = fneg fast <8 x float> %i.jzg
  %i.jzt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jzs, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.jzr)
  %i.jzu = fadd fast <8 x float> %i.jzt, %i.jzf
  %i.jzv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jze, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.jzu)
  br label %bb.if

bb.if:                                            ; preds = %bb.if, %.lr.ph.i103.i
  %.0127.i.i973 = phi ptr [ %0, %.lr.ph.i103.i ], [ %i.kbf, %bb.if ] ; 2 uses
  %.022126.i.i974 = phi i32 [ 0, %.lr.ph.i103.i ], [ %i.kbh, %bb.if ]
  %.025125.i.i975 = phi ptr [ %2, %.lr.ph.i103.i ], [ %i.kbg, %bb.if ] ; 2 uses
  %i.jzw = load <8 x i16>, ptr %.0127.i.i973, align 1, !tbaa !60 ; 2 uses
  %i.jzx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jzw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jzy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jzw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jzz = shufflevector <8 x i16> %i.jzx, <8 x i16> %i.jzy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kaa = bitcast <16 x i16> %i.jzz to <8 x float>
  %i.kab = fmul fast <8 x float> %i.jzv, %i.kaa
  %i.kac = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kab, <8 x float> splat (float f0x42B0C0A5))
  %i.kad = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kac, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kae = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kad, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.kaf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kae, i32 1) ; 2 uses
  %i.kag = fcmp fast ogt <8 x float> %i.kaf, %i.kae
  %i.kah = select <8 x i1> %i.kag, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kai = fsub fast <8 x float> %i.kaf, %i.kah   ; 2 uses
  %i.kaj = fneg fast <8 x float> %i.kai           ; 2 uses
  %i.kak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kaj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kad)
  %i.kal = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kaj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kak) ; 8 uses
  %i.kam = fmul fast <8 x float> %i.kal, %i.kal
  %i.kan = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kal, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.kao = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kan, <8 x float> nofpclass(nan inf) %i.kal, <8 x float> splat (float f0x3C088908))
  %i.kap = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kao, <8 x float> nofpclass(nan inf) %i.kal, <8 x float> splat (float f0x3D2AA9C1))
  %i.kaq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kap, <8 x float> nofpclass(nan inf) %i.kal, <8 x float> splat (float f0x3E2AAAAA))
  %i.kar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kaq, <8 x float> nofpclass(nan inf) %i.kal, <8 x float> splat (float 5.000000e-01))
  %i.kas = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kar, <8 x float> nofpclass(nan inf) %i.kam, <8 x float> nofpclass(nan inf) %i.kal)
  %i.kat = fadd fast <8 x float> %i.kas, splat (float 1.000000e+00)
  %i.kau = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kai)
  %i.kav = shl <8 x i32> %i.kau, splat (i32 23)
  %i.kaw = add <8 x i32> %i.kav, splat (i32 1065353216)
  %i.kax = bitcast <8 x i32> %i.kaw to <8 x float>
  %i.kay = fmul fast <8 x float> %i.kat, %i.kax
  %i.kaz = bitcast <8 x float> %i.kay to <8 x i32> ; 2 uses
  %i.kba = shufflevector <8 x i32> %i.kaz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kbb = shufflevector <8 x i32> %i.kaz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kbc = lshr <4 x i32> %i.kba, splat (i32 16)
  %i.kbd = lshr <4 x i32> %i.kbb, splat (i32 16)
  %i.kbe = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kbc, <4 x i32> %i.kbd)
  store <8 x i16> %i.kbe, ptr %.025125.i.i975, align 1, !tbaa !60
  %i.kbf = getelementptr inbounds nuw i8, ptr %.0127.i.i973, i64 16 ; 2 uses
  %i.kbg = getelementptr inbounds nuw i8, ptr %.025125.i.i975, i64 16 ; 2 uses
  %i.kbh = add nuw nsw i32 %.022126.i.i974, 8     ; 2 uses
  %i.kbi = or disjoint i32 %i.kbh, 7
  %i.kbj = icmp slt i32 %i.kbi, %i.ins
  br i1 %i.kbj, label %bb.if, label %._crit_edge.loopexit.i.i976, !llvm.loop !848

._crit_edge.loopexit.i.i976:                      ; preds = %bb.if
  %i.kbk = and i32 %i.ins, 2147483640
  br label %._crit_edge.i.i962

._crit_edge.i.i962:                               ; preds = %._crit_edge.loopexit.i.i976, %bb.ie
  %.025.lcssa.i97.i = phi ptr [ %2, %bb.ie ], [ %i.kbg, %._crit_edge.loopexit.i.i976 ] ; 2 uses
  %.022.lcssa.i.i963 = phi i32 [ 0, %bb.ie ], [ %i.kbk, %._crit_edge.loopexit.i.i976 ] ; 3 uses
  %.0.lcssa.i98.i = phi ptr [ %0, %bb.ie ], [ %i.kbf, %._crit_edge.loopexit.i.i976 ] ; 2 uses
  %i.kbl = or disjoint i32 %.022.lcssa.i.i963, 3
  %i.kbm = icmp slt i32 %i.kbl, %i.ins
  br i1 %i.kbm, label %.lr.ph134.i.i969, label %.preheader.i99.i

.lr.ph134.i.i969:                                 ; preds = %._crit_edge.i.i962
  %i.kbn = insertelement <4 x float> poison, float %i.jyn, i64 0
  %i.kbo = shufflevector <4 x float> %i.kbn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kbp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kbo, <4 x float> splat (float f0x00800000))
  %i.kbq = bitcast <4 x float> %i.kbp to <4 x i32> ; 2 uses
  %i.kbr = lshr <4 x i32> %i.kbq, splat (i32 23)
  %i.kbs = and <4 x i32> %i.kbq, splat (i32 -2139095041)
  %i.kbt = or disjoint <4 x i32> %i.kbs, splat (i32 1056964608)
  %i.kbu = bitcast <4 x i32> %i.kbt to <4 x float> ; 3 uses
  %i.kbv = add nsw <4 x i32> %i.kbr, splat (i32 -127)
  %i.kbw = sitofp fast <4 x i32> %i.kbv to <4 x float> ; 2 uses
  %i.kbx = fadd fast <4 x float> %i.kbw, splat (float 1.000000e+00)
  %i.kby = fcmp fast olt <4 x float> %i.kbu, splat (float f0x3F3504F3) ; 2 uses
  %i.kbz = select <4 x i1> %i.kby, <4 x float> %i.kbu, <4 x float> zeroinitializer
  %i.kca = fadd fast <4 x float> %i.kbu, splat (float -1.000000e+00)
  %i.kcb = select fast <4 x i1> %i.kby, <4 x float> %i.kbw, <4 x float> %i.kbx ; 2 uses
  %i.kcc = fadd fast <4 x float> %i.kca, %i.kbz   ; 12 uses
  %i.kcd = fmul fast <4 x float> %i.kcc, %i.kcc   ; 2 uses
  %i.kce = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kcc, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.kcf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kce, <4 x float> nofpclass(nan inf) %i.kcc, <4 x float> splat (float f0x3DEF251A))
  %i.kcg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kcf, <4 x float> nofpclass(nan inf) %i.kcc, <4 x float> splat (float f0xBDFE5D4F))
  %i.kch = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kcg, <4 x float> nofpclass(nan inf) %i.kcc, <4 x float> splat (float f0x3E11E9BF))
  %i.kci = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kch, <4 x float> nofpclass(nan inf) %i.kcc, <4 x float> splat (float f0xBE2AAE50))
  %i.kcj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kci, <4 x float> nofpclass(nan inf) %i.kcc, <4 x float> splat (float f0x3E4CCEAC))
  %i.kck = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kcj, <4 x float> nofpclass(nan inf) %i.kcc, <4 x float> splat (float f0xBE7FFFFC))
  %i.kcl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kck, <4 x float> nofpclass(nan inf) %i.kcc, <4 x float> splat (float f0x3EAAAAAA))
  %i.kcm = fmul fast <4 x float> %i.kcd, %i.kcc
  %i.kcn = fmul fast <4 x float> %i.kcm, %i.kcl
  %i.kco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kcb, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.kcn)
  %i.kcp = fneg fast <4 x float> %i.kcd
  %i.kcq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kcp, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.kco)
  %i.kcr = fadd fast <4 x float> %i.kcq, %i.kcc
  %i.kcs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kcb, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.kcr)
  br label %bb.ig

.preheader.i99.i:                                 ; preds = %bb.ig, %._crit_edge.i.i962
  %.126.lcssa.i100.i = phi ptr [ %.025.lcssa.i97.i, %._crit_edge.i.i962 ], [ %i.khi, %bb.ig ] ; 6 uses
  %.123.lcssa.i.i964 = phi i32 [ %.022.lcssa.i.i963, %._crit_edge.i.i962 ], [ %i.khj, %bb.ig ] ; 5 uses
  %.1.lcssa.i101.i = phi ptr [ %.0.lcssa.i98.i, %._crit_edge.i.i962 ], [ %i.khh, %bb.ig ] ; 6 uses
  %i.kct = icmp slt i32 %.123.lcssa.i.i964, %i.ins
  br i1 %i.kct, label %iter.check5336, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5336:                                   ; preds = %.preheader.i99.i
  %.126.lcssa.i100.i5320 = ptrtoaddr ptr %.126.lcssa.i100.i to i64
  %.1.lcssa.i101.i5319 = ptrtoaddr ptr %.1.lcssa.i101.i to i64
  %i.kcu = xor i32 %.123.lcssa.i.i964, -1
  %i.kcv = add i32 %i.ins, %i.kcu                 ; 3 uses
  %i.kcw = zext i32 %i.kcv to i64
  %i.kcx = add nuw nsw i64 %i.kcw, 1              ; 5 uses
  %min.iters.check5321 = icmp ult i32 %i.kcv, 3
  %i.kcy = sub i64 %.1.lcssa.i101.i5319, %.126.lcssa.i100.i5320
  %diff.check5323 = icmp ugt i64 %i.kcy, -32
  %or.cond7109 = select i1 %min.iters.check5321, i1 true, i1 %diff.check5323
  br i1 %or.cond7109, label %.lr.ph141.i.i965.preheader, label %vector.main.loop.iter.check5324

vector.main.loop.iter.check5324:                  ; preds = %iter.check5336
  %min.iters.check5325 = icmp ult i32 %i.kcv, 15
  br i1 %min.iters.check5325, label %vec.epilog.ph5340, label %vector.ph5326

vector.ph5326:                                    ; preds = %vector.main.loop.iter.check5324
  %i.kcz = and i64 %i.kcx, 12
  %n.vec5327 = and i64 %i.kcx, 8589934576         ; 5 uses
  %i.kda = shl nuw nsw i64 %n.vec5327, 1          ; 2 uses
  %i.kdb = getelementptr i8, ptr %.1.lcssa.i101.i, i64 %i.kda
  %i.kdc = trunc i64 %n.vec5327 to i32
  %i.kdd = add i32 %.123.lcssa.i.i964, %i.kdc
  %i.kde = getelementptr i8, ptr %.126.lcssa.i100.i, i64 %i.kda
  %i.kdf = insertelement <8 x float> poison, float %i.jyn, i64 0
  %i.kdg = shufflevector <8 x float> %i.kdf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kdh = insertelement <4 x float> poison, float %i.jyn, i64 0
  %i.kdi = shufflevector <4 x float> %i.kdh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5328

vector.body5328:                                  ; preds = %vector.ph5326, %vector.body5328
  %index5329 = phi i64 [ 0, %vector.ph5326 ], [ %index.next5333, %vector.body5328 ] ; 2 uses
  %i.kdj = shl i64 %index5329, 1                  ; 2 uses
  %next.gep5330 = getelementptr i8, ptr %.1.lcssa.i101.i, i64 %i.kdj
  %next.gep5331 = getelementptr i8, ptr %.126.lcssa.i100.i, i64 %i.kdj
  %wide.load5332 = load <16 x i16>, ptr %next.gep5330, align 2, !tbaa !57
  %i.kdk = zext <16 x i16> %wide.load5332 to <16 x i32>
  %i.kdl = shl nuw <16 x i32> %i.kdk, splat (i32 16)
  %i.kdm = bitcast <16 x i32> %i.kdl to <16 x float> ; 6 uses
  %i.kdn = extractelement <16 x float> %i.kdm, i64 0
  %i.kdo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kdn)
  %i.kdp = extractelement <16 x float> %i.kdm, i64 1
  %i.kdq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kdp)
  %i.kdr = extractelement <16 x float> %i.kdm, i64 2
  %i.kds = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kdr)
  %i.kdt = extractelement <16 x float> %i.kdm, i64 3
  %i.kdu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kdt)
  %i.kdv = shufflevector <16 x float> %i.kdm, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kdw = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.kdi, <4 x float> %i.kdv)
  %i.kdx = shufflevector <16 x float> %i.kdm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kdy = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.kdg, <8 x float> %i.kdx)
  %i.kdz = insertelement <16 x float> poison, float %i.kdo, i64 0
  %i.kea = insertelement <16 x float> %i.kdz, float %i.kdq, i64 1
  %i.keb = insertelement <16 x float> %i.kea, float %i.kds, i64 2
  %i.kec = insertelement <16 x float> %i.keb, float %i.kdu, i64 3
  %i.ked = shufflevector <4 x float> %i.kdw, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kee = shufflevector <16 x float> %i.kec, <16 x float> %i.ked, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kef = shufflevector <8 x float> %i.kdy, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.keg = shufflevector <16 x float> %i.kee, <16 x float> %i.kef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.keh = bitcast <16 x float> %i.keg to <16 x i32>
  %i.kei = lshr <16 x i32> %i.keh, splat (i32 16)
  %i.kej = trunc nuw <16 x i32> %i.kei to <16 x i16>
  store <16 x i16> %i.kej, ptr %next.gep5331, align 2, !tbaa !57
  %index.next5333 = add nuw i64 %index5329, 16    ; 2 uses
  %i.kek = icmp eq i64 %index.next5333, %n.vec5327
  br i1 %i.kek, label %middle.block5334, label %vector.body5328, !llvm.loop !849

middle.block5334:                                 ; preds = %vector.body5328
  %cmp.n5335 = icmp eq i64 %i.kcx, %n.vec5327
  br i1 %cmp.n5335, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5337

vec.epilog.iter.check5337:                        ; preds = %middle.block5334
  %min.epilog.iters.check5339 = icmp eq i64 %i.kcz, 0
  br i1 %min.epilog.iters.check5339, label %.lr.ph141.i.i965.preheader, label %vec.epilog.ph5340, !prof !64

vec.epilog.ph5340:                                ; preds = %vector.main.loop.iter.check5324, %vec.epilog.iter.check5337
  %vec.epilog.resume.val5341 = phi i64 [ %n.vec5327, %vec.epilog.iter.check5337 ], [ 0, %vector.main.loop.iter.check5324 ]
  %n.vec5342 = and i64 %i.kcx, 8589934588         ; 4 uses
  %i.kel = shl nuw nsw i64 %n.vec5342, 1          ; 2 uses
  %i.kem = getelementptr i8, ptr %.1.lcssa.i101.i, i64 %i.kel
  %i.ken = trunc i64 %n.vec5342 to i32
  %i.keo = add i32 %.123.lcssa.i.i964, %i.ken
  %i.kep = getelementptr i8, ptr %.126.lcssa.i100.i, i64 %i.kel
  br label %vec.epilog.vector.body5343

vec.epilog.vector.body5343:                       ; preds = %vec.epilog.vector.body5343, %vec.epilog.ph5340
  %index5344 = phi i64 [ %vec.epilog.resume.val5341, %vec.epilog.ph5340 ], [ %index.next5348, %vec.epilog.vector.body5343 ] ; 2 uses
  %i.keq = shl i64 %index5344, 1                  ; 2 uses
  %next.gep5345 = getelementptr i8, ptr %.1.lcssa.i101.i, i64 %i.keq
  %next.gep5346 = getelementptr i8, ptr %.126.lcssa.i100.i, i64 %i.keq
  %wide.load5347 = load <4 x i16>, ptr %next.gep5345, align 2, !tbaa !57
  %i.ker = zext <4 x i16> %wide.load5347 to <4 x i32>
  %i.kes = shl nuw <4 x i32> %i.ker, splat (i32 16)
  %i.ket = bitcast <4 x i32> %i.kes to <4 x float> ; 4 uses
  %i.keu = extractelement <4 x float> %i.ket, i64 0
  %i.kev = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.keu)
  %i.kew = extractelement <4 x float> %i.ket, i64 1
  %i.kex = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kew)
  %i.key = extractelement <4 x float> %i.ket, i64 2
  %i.kez = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.key)
  %i.kfa = extractelement <4 x float> %i.ket, i64 3
  %i.kfb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kfa)
  %i.kfc = insertelement <4 x float> poison, float %i.kev, i64 0
  %i.kfd = insertelement <4 x float> %i.kfc, float %i.kex, i64 1
  %i.kfe = insertelement <4 x float> %i.kfd, float %i.kez, i64 2
  %i.kff = insertelement <4 x float> %i.kfe, float %i.kfb, i64 3
  %i.kfg = bitcast <4 x float> %i.kff to <4 x i32>
  %i.kfh = lshr <4 x i32> %i.kfg, splat (i32 16)
  %i.kfi = trunc nuw <4 x i32> %i.kfh to <4 x i16>
  store <4 x i16> %i.kfi, ptr %next.gep5346, align 2, !tbaa !57
  %index.next5348 = add nuw i64 %index5344, 4     ; 2 uses
  %i.kfj = icmp eq i64 %index.next5348, %n.vec5342
  br i1 %i.kfj, label %vec.epilog.middle.block5349, label %vec.epilog.vector.body5343, !llvm.loop !850

vec.epilog.middle.block5349:                      ; preds = %vec.epilog.vector.body5343
  %cmp.n5350 = icmp eq i64 %i.kcx, %n.vec5342
  br i1 %cmp.n5350, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph141.i.i965.preheader

.lr.ph141.i.i965.preheader:                       ; preds = %iter.check5336, %vec.epilog.iter.check5337, %vec.epilog.middle.block5349
  %.2140.i.i966.ph = phi ptr [ %.1.lcssa.i101.i, %iter.check5336 ], [ %i.kdb, %vec.epilog.iter.check5337 ], [ %i.kem, %vec.epilog.middle.block5349 ] ; 3 uses
  %.224139.i.i967.ph = phi i32 [ %.123.lcssa.i.i964, %iter.check5336 ], [ %i.kdd, %vec.epilog.iter.check5337 ], [ %i.keo, %vec.epilog.middle.block5349 ] ; 4 uses
  %.227138.i.i968.ph = phi ptr [ %.126.lcssa.i100.i, %iter.check5336 ], [ %i.kde, %vec.epilog.iter.check5337 ], [ %i.kep, %vec.epilog.middle.block5349 ] ; 3 uses
  %i.kfk = sub i32 %i.ins, %.224139.i.i967.ph
  %.neg8019 = add i32 %.224139.i.i967.ph, 1
  %xtraiter7824 = and i32 %i.kfk, 1
  %lcmp.mod7825.not = icmp eq i32 %xtraiter7824, 0
  br i1 %lcmp.mod7825.not, label %.lr.ph141.i.i965.prol.loopexit, label %.lr.ph141.i.i965.prol

.lr.ph141.i.i965.prol:                            ; preds = %.lr.ph141.i.i965.preheader
  %i.kfl = getelementptr inbounds nuw i8, ptr %.2140.i.i966.ph, i64 2
  %i.kfm = load i16, ptr %.2140.i.i966.ph, align 2, !tbaa !57
  %i.kfn = zext i16 %i.kfm to i32
  %i.kfo = shl nuw i32 %i.kfn, 16
  %i.kfp = bitcast i32 %i.kfo to float
  %i.kfq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kfp)
  %i.kfr = bitcast float %i.kfq to i32
  %i.kfs = lshr i32 %i.kfr, 16
  %i.kft = trunc nuw i32 %i.kfs to i16
  %i.kfu = getelementptr inbounds nuw i8, ptr %.227138.i.i968.ph, i64 2
  store i16 %i.kft, ptr %.227138.i.i968.ph, align 2, !tbaa !57
  %i.kfv = add nuw nsw i32 %.224139.i.i967.ph, 1
  br label %.lr.ph141.i.i965.prol.loopexit

.lr.ph141.i.i965.prol.loopexit:                   ; preds = %.lr.ph141.i.i965.prol, %.lr.ph141.i.i965.preheader
  %.2140.i.i966.unr = phi ptr [ %.2140.i.i966.ph, %.lr.ph141.i.i965.preheader ], [ %i.kfl, %.lr.ph141.i.i965.prol ]
  %.224139.i.i967.unr = phi i32 [ %.224139.i.i967.ph, %.lr.ph141.i.i965.preheader ], [ %i.kfv, %.lr.ph141.i.i965.prol ]
  %.227138.i.i968.unr = phi ptr [ %.227138.i.i968.ph, %.lr.ph141.i.i965.preheader ], [ %i.kfu, %.lr.ph141.i.i965.prol ]
  %i.kfw = icmp eq i32 %i.ins, %.neg8019
  br i1 %i.kfw, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph141.i.i965

bb.ig:                                            ; preds = %bb.ig, %.lr.ph134.i.i969
  %.1132.i.i970 = phi ptr [ %.0.lcssa.i98.i, %.lr.ph134.i.i969 ], [ %i.khh, %bb.ig ] ; 2 uses
  %.123131.i.i971 = phi i32 [ %.022.lcssa.i.i963, %.lr.ph134.i.i969 ], [ %i.khj, %bb.ig ]
  %.126130.i.i972 = phi ptr [ %.025.lcssa.i97.i, %.lr.ph134.i.i969 ], [ %i.khi, %bb.ig ] ; 2 uses
  %i.kfx = load i64, ptr %.1132.i.i970, align 1, !tbaa !60
  %i.kfy = insertelement <2 x i64> poison, i64 %i.kfx, i64 0
  %i.kfz = bitcast <2 x i64> %i.kfy to <8 x i16>
  %i.kga = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kfz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kgb = bitcast <8 x i16> %i.kga to <4 x float>
  %i.kgc = fmul fast <4 x float> %i.kcs, %i.kgb
  %i.kgd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kgc, <4 x float> splat (float f0x42B0C0A5))
  %i.kge = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kgd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kgf = fmul fast <4 x float> %i.kge, splat (float f0x3FB8AA3B)
  %i.kgg = fadd fast <4 x float> %i.kgf, splat (float 5.000000e-01) ; 2 uses
  %i.kgh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kgg)
  %i.kgi = sitofp fast <4 x i32> %i.kgh to <4 x float> ; 2 uses
  %i.kgj = fcmp fast olt <4 x float> %i.kgg, %i.kgi
  %i.kgk = select <4 x i1> %i.kgj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kgl = fsub fast <4 x float> %i.kgi, %i.kgk   ; 2 uses
  %i.kgm = fneg fast <4 x float> %i.kgl           ; 2 uses
  %i.kgn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kgm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.kge)
  %i.kgo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kgm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.kgn) ; 8 uses
  %i.kgp = fmul fast <4 x float> %i.kgo, %i.kgo
  %i.kgq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kgo, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.kgr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kgq, <4 x float> nofpclass(nan inf) %i.kgo, <4 x float> splat (float f0x3C088908))
  %i.kgs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kgr, <4 x float> nofpclass(nan inf) %i.kgo, <4 x float> splat (float f0x3D2AA9C1))
  %i.kgt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kgs, <4 x float> nofpclass(nan inf) %i.kgo, <4 x float> splat (float f0x3E2AAAAA))
  %i.kgu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kgt, <4 x float> nofpclass(nan inf) %i.kgo, <4 x float> splat (float 5.000000e-01))
  %i.kgv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kgu, <4 x float> nofpclass(nan inf) %i.kgp, <4 x float> nofpclass(nan inf) %i.kgo)
  %i.kgw = fadd fast <4 x float> %i.kgv, splat (float 1.000000e+00)
  %i.kgx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kgl)
  %i.kgy = shl <4 x i32> %i.kgx, splat (i32 23)
  %i.kgz = add <4 x i32> %i.kgy, splat (i32 1065353216)
  %i.kha = bitcast <4 x i32> %i.kgz to <4 x float>
  %i.khb = fmul fast <4 x float> %i.kgw, %i.kha
  %i.khc = bitcast <4 x float> %i.khb to <4 x i32>
  %i.khd = lshr <4 x i32> %i.khc, splat (i32 16)
  %i.khe = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.khd, <4 x i32> poison)
  %i.khf = bitcast <8 x i16> %i.khe to <2 x i64>
  %i.khg = extractelement <2 x i64> %i.khf, i64 0
  store i64 %i.khg, ptr %.126130.i.i972, align 1, !tbaa !60
  %i.khh = getelementptr inbounds nuw i8, ptr %.1132.i.i970, i64 8 ; 2 uses
  %i.khi = getelementptr inbounds nuw i8, ptr %.126130.i.i972, i64 8 ; 2 uses
  %i.khj = add nuw nsw i32 %.123131.i.i971, 4     ; 3 uses
  %i.khk = or disjoint i32 %i.khj, 3
  %i.khl = icmp slt i32 %i.khk, %i.ins
  br i1 %i.khl, label %bb.ig, label %.preheader.i99.i, !llvm.loop !851

.lr.ph141.i.i965:                                 ; preds = %.lr.ph141.i.i965.prol.loopexit, %.lr.ph141.i.i965
  %.2140.i.i966 = phi ptr [ %i.khw, %.lr.ph141.i.i965 ], [ %.2140.i.i966.unr, %.lr.ph141.i.i965.prol.loopexit ] ; 3 uses
  %.224139.i.i967 = phi i32 [ %i.kig, %.lr.ph141.i.i965 ], [ %.224139.i.i967.unr, %.lr.ph141.i.i965.prol.loopexit ]
  %.227138.i.i968 = phi ptr [ %i.kif, %.lr.ph141.i.i965 ], [ %.227138.i.i968.unr, %.lr.ph141.i.i965.prol.loopexit ] ; 3 uses
  %i.khm = getelementptr inbounds nuw i8, ptr %.2140.i.i966, i64 2
  %i.khn = load i16, ptr %.2140.i.i966, align 2, !tbaa !57
  %i.kho = zext i16 %i.khn to i32
  %i.khp = shl nuw i32 %i.kho, 16
  %i.khq = bitcast i32 %i.khp to float
  %i.khr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.khq)
  %i.khs = bitcast float %i.khr to i32
  %i.kht = lshr i32 %i.khs, 16
  %i.khu = trunc nuw i32 %i.kht to i16
  %i.khv = getelementptr inbounds nuw i8, ptr %.227138.i.i968, i64 2
  store i16 %i.khu, ptr %.227138.i.i968, align 2, !tbaa !57
  %i.khw = getelementptr inbounds nuw i8, ptr %.2140.i.i966, i64 4
  %i.khx = load i16, ptr %i.khm, align 2, !tbaa !57
  %i.khy = zext i16 %i.khx to i32
  %i.khz = shl nuw i32 %i.khy, 16
  %i.kia = bitcast i32 %i.khz to float
  %i.kib = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyn, float %i.kia)
  %i.kic = bitcast float %i.kib to i32
  %i.kid = lshr i32 %i.kic, 16
  %i.kie = trunc nuw i32 %i.kid to i16
  %i.kif = getelementptr inbounds nuw i8, ptr %.227138.i.i968, i64 4
  store i16 %i.kie, ptr %i.khv, align 2, !tbaa !57
  %i.kig = add nuw nsw i32 %.224139.i.i967, 2     ; 2 uses
  %exitcond.not.i102.i.1 = icmp eq i32 %i.kig, %i.ins
  br i1 %exitcond.not.i102.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph141.i.i965, !llvm.loop !852

bb.ih:                                            ; preds = %bb.id
  %i.kih = icmp eq i32 %3, 1
  br i1 %i.kih, label %bb.ii, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.ii:                                            ; preds = %bb.ih
  switch i32 %.sroa.speculated.i960, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.ij
    i32 4, label %bb.ik
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.kii = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.kij = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kii, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kik = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.kii, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kil = shufflevector <8 x i16> %i.kij, <8 x i16> %i.kik, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kim = bitcast <16 x i16> %i.kil to <8 x float>
  br label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %.lr.ph152.i.i, %bb.ij
  %.018151.i.i = phi ptr [ %i.klc, %.lr.ph152.i.i ], [ %1, %bb.ij ] ; 2 uses
  %.019150.i.i = phi i32 [ %i.kle, %.lr.ph152.i.i ], [ 0, %bb.ij ]
  %.020149.i.i = phi ptr [ %i.kld, %.lr.ph152.i.i ], [ %2, %bb.ij ] ; 2 uses
  %i.kin = load i16, ptr %.018151.i.i, align 2, !tbaa !57
  %i.kio = zext i16 %i.kin to i32
  %i.kip = shl nuw i32 %i.kio, 16
  %i.kiq = insertelement <8 x i32> poison, i32 %i.kip, i64 0
  %i.kir = bitcast <8 x i32> %i.kiq to <8 x float>
  %i.kis = shufflevector <8 x float> %i.kir, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kit = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kis, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.kiu = bitcast <8 x float> %i.kit to <8 x i32>
  %i.kiv = bitcast <8 x float> %i.kit to <8 x i32>
  %i.kiw = and <8 x i32> %i.kiv, splat (i32 -2139095041)
  %i.kix = or disjoint <8 x i32> %i.kiw, splat (i32 1056964608)
  %i.kiy = bitcast <8 x i32> %i.kix to <8 x float> ; 3 uses
  %i.kiz = lshr <8 x i32> %i.kiu, splat (i32 23)
  %i.kja = add nsw <8 x i32> %i.kiz, splat (i32 -127)
  %i.kjb = sitofp fast <8 x i32> %i.kja to <8 x float> ; 2 uses
  %i.kjc = fadd fast <8 x float> %i.kjb, splat (float 1.000000e+00)
  %i.kjd = fcmp fast olt <8 x float> %i.kiy, splat (float f0x3F3504F3) ; 2 uses
  %i.kje = select <8 x i1> %i.kjd, <8 x float> %i.kiy, <8 x float> zeroinitializer
  %i.kjf = fadd fast <8 x float> %i.kiy, splat (float -1.000000e+00)
  %i.kjg = select fast <8 x i1> %i.kjd, <8 x float> %i.kjb, <8 x float> %i.kjc ; 2 uses
  %i.kjh = fadd fast <8 x float> %i.kjf, %i.kje   ; 12 uses
  %i.kji = fmul fast <8 x float> %i.kjh, %i.kjh   ; 2 uses
  %i.kjj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjh, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.kjk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjj, <8 x float> nofpclass(nan inf) %i.kjh, <8 x float> splat (float f0x3DEF251A))
  %i.kjl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjk, <8 x float> nofpclass(nan inf) %i.kjh, <8 x float> splat (float f0xBDFE5D4F))
  %i.kjm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjl, <8 x float> nofpclass(nan inf) %i.kjh, <8 x float> splat (float f0x3E11E9BF))
  %i.kjn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjm, <8 x float> nofpclass(nan inf) %i.kjh, <8 x float> splat (float f0xBE2AAE50))
  %i.kjo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjn, <8 x float> nofpclass(nan inf) %i.kjh, <8 x float> splat (float f0x3E4CCEAC))
  %i.kjp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjo, <8 x float> nofpclass(nan inf) %i.kjh, <8 x float> splat (float f0xBE7FFFFC))
  %i.kjq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjp, <8 x float> nofpclass(nan inf) %i.kjh, <8 x float> splat (float f0x3EAAAAAA))
  %i.kjr = fmul fast <8 x float> %i.kji, %i.kjh
  %i.kjs = fmul fast <8 x float> %i.kjr, %i.kjq
  %i.kjt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kjs)
  %i.kju = fneg fast <8 x float> %i.kji
  %i.kjv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kju, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.kjt)
  %i.kjw = fadd fast <8 x float> %i.kjv, %i.kjh
  %i.kjx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kjg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kjw)
  %i.kjy = fmul fast <8 x float> %i.kjx, %i.kim
  %i.kjz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kjy, <8 x float> splat (float f0x42B0C0A5))
  %i.kka = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kjz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kkb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kka, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.kkc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kkb, i32 1) ; 2 uses
  %i.kkd = fcmp fast ogt <8 x float> %i.kkc, %i.kkb
  %i.kke = select <8 x i1> %i.kkd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kkf = fsub fast <8 x float> %i.kkc, %i.kke   ; 2 uses
  %i.kkg = fneg fast <8 x float> %i.kkf           ; 2 uses
  %i.kkh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kkg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kka)
  %i.kki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kkg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kkh) ; 8 uses
  %i.kkj = fmul fast <8 x float> %i.kki, %i.kki
  %i.kkk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kki, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.kkl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kkk, <8 x float> nofpclass(nan inf) %i.kki, <8 x float> splat (float f0x3C088908))
  %i.kkm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kkl, <8 x float> nofpclass(nan inf) %i.kki, <8 x float> splat (float f0x3D2AA9C1))
end_hunk_7
begin_hunk_8_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.kwm = shl nuw i32 %i.kwl, 16
  %i.kwn = bitcast i32 %i.kwm to float
  %i.kwo = getelementptr inbounds nuw i8, ptr %.229134.i.i, i64 4
  %i.kwp = load i16, ptr %i.kvz, align 2, !tbaa !57
  %i.kwq = zext i16 %i.kwp to i32
  %i.kwr = shl nuw i32 %i.kwq, 16
  %i.kws = bitcast i32 %i.kwr to float
  %i.kwt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kwn, float %i.kws)
  %i.kwu = bitcast float %i.kwt to i32
  %i.kwv = lshr i32 %i.kwu, 16
  %i.kww = trunc nuw i32 %i.kwv to i16
  %i.kwx = getelementptr inbounds nuw i8, ptr %.232133.i.i, i64 4
  store i16 %i.kww, ptr %i.kwi, align 2, !tbaa !57
  %i.kwy = add nuw nsw i32 %.226135.i.i, 2        ; 2 uses
  %exitcond.not.i.i1021.1 = icmp eq i32 %i.kwy, %i.koc
  br i1 %exitcond.not.i.i1021.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i, !llvm.loop !859

bb.io:                                            ; preds = %bb.im
  %i.kwz = icmp eq i32 %4, 1
  br i1 %i.kwz, label %bb.ip, label %bb.iw

bb.ip:                                            ; preds = %bb.io
  %i.kxa = load i16, ptr %1, align 2, !tbaa !57
  %i.kxb = zext i16 %i.kxa to i32
  %i.kxc = shl nuw i32 %i.kxb, 16
  %i.kxd = bitcast i32 %i.kxc to float            ; 14 uses
  %i.kxe = icmp eq i32 %.sroa.speculated.i998, 4
  br i1 %i.kxe, label %.thread.i.i1011, label %bb.iq

.thread.i.i1011:                                  ; preds = %bb.ip
  %i.kxf = load i64, ptr %1, align 2, !tbaa !60
  %i.kxg = insertelement <2 x i64> poison, i64 %i.kxf, i64 0
  %i.kxh = bitcast <2 x i64> %i.kxg to <8 x i16>
  %i.kxi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kxh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kxj = bitcast <8 x i16> %i.kxi to <4 x float>
  br label %bb.is

bb.iq:                                            ; preds = %bb.ip
  %i.kxk = insertelement <4 x float> poison, float %i.kxd, i64 0
  %i.kxl = shufflevector <4 x float> %i.kxk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kxm = icmp eq i32 %.sroa.speculated.i998, 8
  br i1 %i.kxm, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.kxn = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.kxo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kxn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kxp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.kxn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kxq = shufflevector <8 x i16> %i.kxo, <8 x i16> %i.kxp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kxr = bitcast <16 x i16> %i.kxq to <8 x float>
  br label %bb.it

bb.is:                                            ; preds = %bb.iq, %.thread.i.i1011
  %i.kxs = phi <4 x float> [ %i.kxj, %.thread.i.i1011 ], [ %i.kxl, %bb.iq ] ; 2 uses
  %i.kxt = shufflevector <4 x float> %i.kxs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.kxu = phi <4 x float> [ %i.kxl, %bb.ir ], [ %i.kxs, %bb.is ] ; 4 uses
  %i.kxv = phi fast <8 x float> [ %i.kxr, %bb.ir ], [ %i.kxt, %bb.is ] ; 4 uses
  %i.kxw = icmp sgt i32 %i.koc, 7
  br i1 %i.kxw, label %.lr.ph.i38.i, label %.preheader115.i.i

.lr.ph.i38.i:                                     ; preds = %bb.it
  %i.kxx = fcmp fast ueq <8 x float> %i.kxv, zeroinitializer ; 2 uses
  %i.kxy = fcmp fast olt <8 x float> %i.kxv, zeroinitializer
  %i.kxz = bitcast <8 x float> %i.kxv to <8 x i32>
  %isneg.inv112.i.i = icmp slt <8 x i32> %i.kxz, zeroinitializer
  %i.kya = select <8 x i1> %isneg.inv112.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.kyb = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kxv
  br label %bb.iu

.preheader115.loopexit.i.i:                       ; preds = %bb.iu
  %i.kyc = and i32 %i.koc, 2147483640
  br label %.preheader115.i.i

.preheader115.i.i:                                ; preds = %.preheader115.loopexit.i.i, %bb.it
  %.028.lcssa.i.i1007 = phi ptr [ %2, %bb.it ], [ %i.lag, %.preheader115.loopexit.i.i ] ; 2 uses
  %.025.lcssa.i.i1008 = phi i32 [ 0, %bb.it ], [ %i.kyc, %.preheader115.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i34.i = phi ptr [ %0, %bb.it ], [ %i.laf, %.preheader115.loopexit.i.i ] ; 2 uses
  %i.kyd = or disjoint i32 %.025.lcssa.i.i1008, 3
  %i.kye = icmp slt i32 %i.kyd, %i.koc
  br i1 %i.kye, label %.lr.ph124.i.i, label %.preheader.i35.i

.lr.ph124.i.i:                                    ; preds = %.preheader115.i.i
  %i.kyf = fcmp fast oeq <4 x float> %i.kxu, zeroinitializer ; 2 uses
  %i.kyg = fcmp fast olt <4 x float> %i.kxu, zeroinitializer
  %i.kyh = bitcast <4 x float> %i.kxu to <4 x i32>
  %isneg.inv.i.i = icmp slt <4 x i32> %i.kyh, zeroinitializer
  %i.kyi = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.kyj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.kxu
  br label %bb.iv

bb.iu:                                            ; preds = %bb.iu, %.lr.ph.i38.i
  %.0118.i.i = phi ptr [ %0, %.lr.ph.i38.i ], [ %i.laf, %bb.iu ] ; 2 uses
  %.025117.i.i = phi i32 [ 0, %.lr.ph.i38.i ], [ %i.lah, %bb.iu ]
  %.028116.i.i = phi ptr [ %2, %.lr.ph.i38.i ], [ %i.lag, %bb.iu ] ; 2 uses
  %i.kyk = load <8 x i16>, ptr %.0118.i.i, align 1, !tbaa !60 ; 2 uses
  %i.kyl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kyk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kym = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.kyk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kyn = shufflevector <8 x i16> %i.kyl, <8 x i16> %i.kym, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kyo = bitcast <16 x i16> %i.kyn to <8 x float> ; 3 uses
  %i.kyp = fcmp fast ueq <8 x float> %i.kyo, zeroinitializer ; 2 uses
  %.not114.i.i = or <8 x i1> %i.kxx, %i.kyp
  %i.kyq = fcmp fast olt <8 x float> %i.kyo, zeroinitializer
  %i.kyr = select <8 x i1> %i.kyq, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.kys = select <8 x i1> %i.kxy, <8 x float> %i.kyr, <8 x float> zeroinitializer
  %i.kyt = fmul fast <8 x float> %i.kyo, %i.kyb   ; 2 uses
  %i.kyu = bitcast <8 x float> %i.kyt to <8 x i32>
  %i.kyv = and <8 x i32> %i.kyu, splat (i32 -2147483648)
  %i.kyw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyt) ; 3 uses
  %i.kyx = fcmp fast ogt <8 x float> %i.kyw, splat (float 1.000000e+00) ; 2 uses
  %i.kyy = select <8 x i1> %i.kyx, <8 x float> splat (float -1.000000e+00), <8 x float> %i.kyw
  %i.kyz = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kyw, <8 x float> splat (float 1.000000e+00))
  %i.kza = fdiv fast <8 x float> %i.kyy, %i.kyz   ; 3 uses
  %i.kzb = fmul fast <8 x float> %i.kza, %i.kza   ; 3 uses
  %i.kzc = fmul fast <8 x float> %i.kzb, %i.kzb   ; 7 uses
  %i.kzd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzc, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.kze = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzc, <8 x float> nofpclass(nan inf) %i.kzd, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.kzf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzc, <8 x float> nofpclass(nan inf) %i.kze, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.kzg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzc, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.kzh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzc, <8 x float> nofpclass(nan inf) %i.kzg, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.kzi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzc, <8 x float> nofpclass(nan inf) %i.kzh, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.kzj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzc, <8 x float> nofpclass(nan inf) %i.kzi, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.kzk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzb, <8 x float> nofpclass(nan inf) %i.kzf, <8 x float> nofpclass(nan inf) %i.kzj)
  %i.kzl = fmul fast <8 x float> %i.kzk, %i.kza
  %i.kzm = select <8 x i1> %i.kyx, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.kzn = fadd fast <8 x float> %i.kzl, %i.kzm
  %i.kzo = bitcast <8 x float> %i.kzn to <8 x i32>
  %i.kzp = or <8 x i32> %i.kyv, %i.kzo
  %i.kzq = bitcast <8 x i32> %i.kzp to <8 x float>
  %i.kzr = fadd fast <8 x float> %i.kys, %i.kzq
  %i.kzs = bitcast <16 x i16> %i.kyn to <8 x i32>
  %i.kzt = and <8 x i32> %i.kzs, splat (i32 -2147483648)
  %i.kzu = or disjoint <8 x i32> %i.kzt, splat (i32 1070141403)
  %i.kzv = bitcast <8 x float> %i.kzr to <8 x i32>
  %i.kzw = select <8 x i1> %.not114.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.kzv
  %i.kzx = select <8 x i1> %i.kxx, <8 x i32> %i.kzu, <8 x i32> zeroinitializer
  %i.kzy = select <8 x i1> %i.kyp, <8 x i32> %i.kya, <8 x i32> %i.kzx
  %i.kzz = or <8 x i32> %i.kzw, %i.kzy            ; 2 uses
  %i.laa = shufflevector <8 x i32> %i.kzz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lab = shufflevector <8 x i32> %i.kzz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lac = lshr <4 x i32> %i.laa, splat (i32 16)
  %i.lad = lshr <4 x i32> %i.lab, splat (i32 16)
  %i.lae = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lac, <4 x i32> %i.lad)
  store <8 x i16> %i.lae, ptr %.028116.i.i, align 1, !tbaa !60
  %i.laf = getelementptr inbounds nuw i8, ptr %.0118.i.i, i64 16 ; 2 uses
  %i.lag = getelementptr inbounds nuw i8, ptr %.028116.i.i, i64 16 ; 2 uses
  %i.lah = add nuw nsw i32 %.025117.i.i, 8        ; 2 uses
  %i.lai = or disjoint i32 %i.lah, 7
  %i.laj = icmp slt i32 %i.lai, %i.koc
  br i1 %i.laj, label %bb.iu, label %.preheader115.loopexit.i.i, !llvm.loop !860

.preheader.i35.i:                                 ; preds = %bb.iv, %.preheader115.i.i
  %.129.lcssa.i.i1009 = phi ptr [ %.028.lcssa.i.i1007, %.preheader115.i.i ], [ %i.lfj, %bb.iv ] ; 6 uses
  %.126.lcssa.i.i1010 = phi i32 [ %.025.lcssa.i.i1008, %.preheader115.i.i ], [ %i.lfk, %bb.iv ] ; 5 uses
  %.1.lcssa.i36.i = phi ptr [ %.0.lcssa.i34.i, %.preheader115.i.i ], [ %i.lfi, %bb.iv ] ; 6 uses
  %i.lak = icmp slt i32 %.126.lcssa.i.i1010, %i.koc
  br i1 %i.lak, label %iter.check5247, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5247:                                   ; preds = %.preheader.i35.i
  %.129.lcssa.i.i10095231 = ptrtoaddr ptr %.129.lcssa.i.i1009 to i64
  %.1.lcssa.i36.i5230 = ptrtoaddr ptr %.1.lcssa.i36.i to i64
  %i.lal = xor i32 %.126.lcssa.i.i1010, -1
  %i.lam = add i32 %i.koc, %i.lal                 ; 3 uses
  %i.lan = zext i32 %i.lam to i64
  %i.lao = add nuw nsw i64 %i.lan, 1              ; 5 uses
  %min.iters.check5232 = icmp ult i32 %i.lam, 3
  %i.lap = sub i64 %.1.lcssa.i36.i5230, %.129.lcssa.i.i10095231
  %diff.check5234 = icmp ugt i64 %i.lap, -32
  %or.cond7110 = select i1 %min.iters.check5232, i1 true, i1 %diff.check5234
  br i1 %or.cond7110, label %.lr.ph131.i.i.preheader, label %vector.main.loop.iter.check5235

vector.main.loop.iter.check5235:                  ; preds = %iter.check5247
  %min.iters.check5236 = icmp ult i32 %i.lam, 15
  br i1 %min.iters.check5236, label %vec.epilog.ph5251, label %vector.ph5237

vector.ph5237:                                    ; preds = %vector.main.loop.iter.check5235
  %i.laq = and i64 %i.lao, 12
  %n.vec5238 = and i64 %i.lao, 8589934576         ; 5 uses
  %i.lar = shl nuw nsw i64 %n.vec5238, 1          ; 2 uses
  %i.las = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.lar
  %i.lat = trunc i64 %n.vec5238 to i32
  %i.lau = add i32 %.126.lcssa.i.i1010, %i.lat
  %i.lav = getelementptr i8, ptr %.129.lcssa.i.i1009, i64 %i.lar
  %i.law = insertelement <8 x float> poison, float %i.kxd, i64 0
  %i.lax = shufflevector <8 x float> %i.law, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lay = insertelement <4 x float> poison, float %i.kxd, i64 0
  %i.laz = shufflevector <4 x float> %i.lay, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5239

vector.body5239:                                  ; preds = %vector.ph5237, %vector.body5239
  %index5240 = phi i64 [ 0, %vector.ph5237 ], [ %index.next5244, %vector.body5239 ] ; 2 uses
  %i.lba = shl i64 %index5240, 1                  ; 2 uses
  %next.gep5241 = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.lba
  %next.gep5242 = getelementptr i8, ptr %.129.lcssa.i.i1009, i64 %i.lba
  %wide.load5243 = load <16 x i16>, ptr %next.gep5241, align 2, !tbaa !57
  %i.lbb = zext <16 x i16> %wide.load5243 to <16 x i32>
  %i.lbc = shl nuw <16 x i32> %i.lbb, splat (i32 16)
  %i.lbd = bitcast <16 x i32> %i.lbc to <16 x float> ; 6 uses
  %i.lbe = extractelement <16 x float> %i.lbd, i64 0
  %i.lbf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lbe, float %i.kxd)
  %i.lbg = extractelement <16 x float> %i.lbd, i64 1
  %i.lbh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lbg, float %i.kxd)
  %i.lbi = extractelement <16 x float> %i.lbd, i64 2
  %i.lbj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lbi, float %i.kxd)
  %i.lbk = extractelement <16 x float> %i.lbd, i64 3
  %i.lbl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lbk, float %i.kxd)
  %i.lbm = shufflevector <16 x float> %i.lbd, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lbn = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.lbm, <4 x float> %i.laz)
  %i.lbo = shufflevector <16 x float> %i.lbd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lbp = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.lbo, <8 x float> %i.lax)
  %i.lbq = insertelement <16 x float> poison, float %i.lbf, i64 0
  %i.lbr = insertelement <16 x float> %i.lbq, float %i.lbh, i64 1
  %i.lbs = insertelement <16 x float> %i.lbr, float %i.lbj, i64 2
  %i.lbt = insertelement <16 x float> %i.lbs, float %i.lbl, i64 3
  %i.lbu = shufflevector <4 x float> %i.lbn, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lbv = shufflevector <16 x float> %i.lbt, <16 x float> %i.lbu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lbw = shufflevector <8 x float> %i.lbp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lbx = shufflevector <16 x float> %i.lbv, <16 x float> %i.lbw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.lby = bitcast <16 x float> %i.lbx to <16 x i32>
  %i.lbz = lshr <16 x i32> %i.lby, splat (i32 16)
  %i.lca = trunc nuw <16 x i32> %i.lbz to <16 x i16>
  store <16 x i16> %i.lca, ptr %next.gep5242, align 2, !tbaa !57
  %index.next5244 = add nuw i64 %index5240, 16    ; 2 uses
  %i.lcb = icmp eq i64 %index.next5244, %n.vec5238
  br i1 %i.lcb, label %middle.block5245, label %vector.body5239, !llvm.loop !861

middle.block5245:                                 ; preds = %vector.body5239
  %cmp.n5246 = icmp eq i64 %i.lao, %n.vec5238
  br i1 %cmp.n5246, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5248

vec.epilog.iter.check5248:                        ; preds = %middle.block5245
  %min.epilog.iters.check5250 = icmp eq i64 %i.laq, 0
  br i1 %min.epilog.iters.check5250, label %.lr.ph131.i.i.preheader, label %vec.epilog.ph5251, !prof !64

vec.epilog.ph5251:                                ; preds = %vector.main.loop.iter.check5235, %vec.epilog.iter.check5248
  %vec.epilog.resume.val5252 = phi i64 [ %n.vec5238, %vec.epilog.iter.check5248 ], [ 0, %vector.main.loop.iter.check5235 ]
  %n.vec5253 = and i64 %i.lao, 8589934588         ; 4 uses
  %i.lcc = shl nuw nsw i64 %n.vec5253, 1          ; 2 uses
  %i.lcd = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.lcc
  %i.lce = trunc i64 %n.vec5253 to i32
  %i.lcf = add i32 %.126.lcssa.i.i1010, %i.lce
  %i.lcg = getelementptr i8, ptr %.129.lcssa.i.i1009, i64 %i.lcc
  br label %vec.epilog.vector.body5254

vec.epilog.vector.body5254:                       ; preds = %vec.epilog.vector.body5254, %vec.epilog.ph5251
  %index5255 = phi i64 [ %vec.epilog.resume.val5252, %vec.epilog.ph5251 ], [ %index.next5259, %vec.epilog.vector.body5254 ] ; 2 uses
  %i.lch = shl i64 %index5255, 1                  ; 2 uses
  %next.gep5256 = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.lch
  %next.gep5257 = getelementptr i8, ptr %.129.lcssa.i.i1009, i64 %i.lch
  %wide.load5258 = load <4 x i16>, ptr %next.gep5256, align 2, !tbaa !57
  %i.lci = zext <4 x i16> %wide.load5258 to <4 x i32>
  %i.lcj = shl nuw <4 x i32> %i.lci, splat (i32 16)
  %i.lck = bitcast <4 x i32> %i.lcj to <4 x float> ; 4 uses
  %i.lcl = extractelement <4 x float> %i.lck, i64 0
  %i.lcm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lcl, float %i.kxd)
  %i.lcn = extractelement <4 x float> %i.lck, i64 1
  %i.lco = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lcn, float %i.kxd)
  %i.lcp = extractelement <4 x float> %i.lck, i64 2
  %i.lcq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lcp, float %i.kxd)
  %i.lcr = extractelement <4 x float> %i.lck, i64 3
  %i.lcs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lcr, float %i.kxd)
  %i.lct = insertelement <4 x float> poison, float %i.lcm, i64 0
  %i.lcu = insertelement <4 x float> %i.lct, float %i.lco, i64 1
  %i.lcv = insertelement <4 x float> %i.lcu, float %i.lcq, i64 2
  %i.lcw = insertelement <4 x float> %i.lcv, float %i.lcs, i64 3
  %i.lcx = bitcast <4 x float> %i.lcw to <4 x i32>
  %i.lcy = lshr <4 x i32> %i.lcx, splat (i32 16)
  %i.lcz = trunc nuw <4 x i32> %i.lcy to <4 x i16>
  store <4 x i16> %i.lcz, ptr %next.gep5257, align 2, !tbaa !57
  %index.next5259 = add nuw i64 %index5255, 4     ; 2 uses
  %i.lda = icmp eq i64 %index.next5259, %n.vec5253
  br i1 %i.lda, label %vec.epilog.middle.block5260, label %vec.epilog.vector.body5254, !llvm.loop !862

vec.epilog.middle.block5260:                      ; preds = %vec.epilog.vector.body5254
  %cmp.n5261 = icmp eq i64 %i.lao, %n.vec5253
  br i1 %cmp.n5261, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i.preheader

.lr.ph131.i.i.preheader:                          ; preds = %iter.check5247, %vec.epilog.iter.check5248, %vec.epilog.middle.block5260
  %.2130.i.i.ph = phi ptr [ %.1.lcssa.i36.i, %iter.check5247 ], [ %i.las, %vec.epilog.iter.check5248 ], [ %i.lcd, %vec.epilog.middle.block5260 ] ; 3 uses
  %.227129.i.i.ph = phi i32 [ %.126.lcssa.i.i1010, %iter.check5247 ], [ %i.lau, %vec.epilog.iter.check5248 ], [ %i.lcf, %vec.epilog.middle.block5260 ] ; 4 uses
  %.230128.i.i.ph = phi ptr [ %.129.lcssa.i.i1009, %iter.check5247 ], [ %i.lav, %vec.epilog.iter.check5248 ], [ %i.lcg, %vec.epilog.middle.block5260 ] ; 3 uses
  %i.ldb = sub i32 %i.koc, %.227129.i.i.ph
  %.neg8017 = add i32 %.227129.i.i.ph, 1
  %xtraiter7820 = and i32 %i.ldb, 1
  %lcmp.mod7821.not = icmp eq i32 %xtraiter7820, 0
  br i1 %lcmp.mod7821.not, label %.lr.ph131.i.i.prol.loopexit, label %.lr.ph131.i.i.prol

.lr.ph131.i.i.prol:                               ; preds = %.lr.ph131.i.i.preheader
  %i.ldc = getelementptr inbounds nuw i8, ptr %.2130.i.i.ph, i64 2
  %i.ldd = load i16, ptr %.2130.i.i.ph, align 2, !tbaa !57
  %i.lde = zext i16 %i.ldd to i32
  %i.ldf = shl nuw i32 %i.lde, 16
  %i.ldg = bitcast i32 %i.ldf to float
  %i.ldh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldg, float %i.kxd)
  %i.ldi = bitcast float %i.ldh to i32
  %i.ldj = lshr i32 %i.ldi, 16
  %i.ldk = trunc nuw i32 %i.ldj to i16
  %i.ldl = getelementptr inbounds nuw i8, ptr %.230128.i.i.ph, i64 2
  store i16 %i.ldk, ptr %.230128.i.i.ph, align 2, !tbaa !57
  %i.ldm = add nuw nsw i32 %.227129.i.i.ph, 1
  br label %.lr.ph131.i.i.prol.loopexit

.lr.ph131.i.i.prol.loopexit:                      ; preds = %.lr.ph131.i.i.prol, %.lr.ph131.i.i.preheader
  %.2130.i.i.unr = phi ptr [ %.2130.i.i.ph, %.lr.ph131.i.i.preheader ], [ %i.ldc, %.lr.ph131.i.i.prol ]
  %.227129.i.i.unr = phi i32 [ %.227129.i.i.ph, %.lr.ph131.i.i.preheader ], [ %i.ldm, %.lr.ph131.i.i.prol ]
  %.230128.i.i.unr = phi ptr [ %.230128.i.i.ph, %.lr.ph131.i.i.preheader ], [ %i.ldl, %.lr.ph131.i.i.prol ]
  %i.ldn = icmp eq i32 %i.koc, %.neg8017
  br i1 %i.ldn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i

bb.iv:                                            ; preds = %bb.iv, %.lr.ph124.i.i
  %.1123.i.i = phi ptr [ %.0.lcssa.i34.i, %.lr.ph124.i.i ], [ %i.lfi, %bb.iv ] ; 2 uses
  %.126122.i.i = phi i32 [ %.025.lcssa.i.i1008, %.lr.ph124.i.i ], [ %i.lfk, %bb.iv ]
  %.129121.i.i = phi ptr [ %.028.lcssa.i.i1007, %.lr.ph124.i.i ], [ %i.lfj, %bb.iv ] ; 2 uses
  %i.ldo = load i64, ptr %.1123.i.i, align 1, !tbaa !60
  %i.ldp = insertelement <2 x i64> poison, i64 %i.ldo, i64 0
  %i.ldq = bitcast <2 x i64> %i.ldp to <8 x i16>
  %i.ldr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ldq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.lds = bitcast <8 x i16> %i.ldr to <4 x float> ; 3 uses
  %i.ldt = fcmp fast oeq <4 x float> %i.lds, zeroinitializer ; 2 uses
  %.not111.i.i = or <4 x i1> %i.kyf, %i.ldt
  %i.ldu = fcmp fast olt <4 x float> %i.lds, zeroinitializer
  %i.ldv = select <4 x i1> %i.ldu, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ldw = select <4 x i1> %i.kyg, <4 x float> %i.ldv, <4 x float> zeroinitializer
  %i.ldx = fmul fast <4 x float> %i.lds, %i.kyj   ; 2 uses
  %i.ldy = bitcast <4 x float> %i.ldx to <4 x i32>
  %i.ldz = and <4 x i32> %i.ldy, splat (i32 -2147483648)
  %i.lea = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ldx) ; 3 uses
  %i.leb = fcmp fast ogt <4 x float> %i.lea, splat (float 1.000000e+00) ; 2 uses
  %i.lec = select <4 x i1> %i.leb, <4 x float> splat (float -1.000000e+00), <4 x float> %i.lea
  %i.led = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lea, <4 x float> splat (float 1.000000e+00))
  %i.lee = fdiv fast <4 x float> %i.lec, %i.led   ; 3 uses
  %i.lef = fmul fast <4 x float> %i.lee, %i.lee   ; 3 uses
  %i.leg = fmul fast <4 x float> %i.lef, %i.lef   ; 7 uses
  %i.leh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.leg, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.lei = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.leg, <4 x float> nofpclass(nan inf) %i.leh, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.lej = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.leg, <4 x float> nofpclass(nan inf) %i.lei, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.lek = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.leg, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.lel = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.leg, <4 x float> nofpclass(nan inf) %i.lek, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.lem = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.leg, <4 x float> nofpclass(nan inf) %i.lel, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.len = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.leg, <4 x float> nofpclass(nan inf) %i.lem, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.leo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lef, <4 x float> nofpclass(nan inf) %i.lej, <4 x float> nofpclass(nan inf) %i.len)
  %i.lep = fmul fast <4 x float> %i.leo, %i.lee
  %i.leq = select <4 x i1> %i.leb, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ler = fadd fast <4 x float> %i.lep, %i.leq
  %i.les = bitcast <4 x float> %i.ler to <4 x i32>
  %i.let = or <4 x i32> %i.ldz, %i.les
  %i.leu = bitcast <4 x i32> %i.let to <4 x float>
  %i.lev = fadd fast <4 x float> %i.ldw, %i.leu
  %i.lew = bitcast <8 x i16> %i.ldr to <4 x i32>
  %i.lex = and <4 x i32> %i.lew, splat (i32 -2147483648)
  %i.ley = or disjoint <4 x i32> %i.lex, splat (i32 1070137344)
  %i.lez = bitcast <4 x float> %i.lev to <4 x i32>
  %i.lfa = select <4 x i1> %.not111.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.lez
  %i.lfb = select <4 x i1> %i.kyf, <4 x i32> %i.ley, <4 x i32> zeroinitializer
  %i.lfc = select <4 x i1> %i.ldt, <4 x i32> %i.kyi, <4 x i32> %i.lfb
  %i.lfd = or <4 x i32> %i.lfa, %i.lfc
  %i.lfe = lshr <4 x i32> %i.lfd, splat (i32 16)
  %i.lff = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lfe, <4 x i32> poison)
  %i.lfg = bitcast <8 x i16> %i.lff to <2 x i64>
  %i.lfh = extractelement <2 x i64> %i.lfg, i64 0
  store i64 %i.lfh, ptr %.129121.i.i, align 1, !tbaa !60
  %i.lfi = getelementptr inbounds nuw i8, ptr %.1123.i.i, i64 8 ; 2 uses
  %i.lfj = getelementptr inbounds nuw i8, ptr %.129121.i.i, i64 8 ; 2 uses
  %i.lfk = add nuw nsw i32 %.126122.i.i, 4        ; 3 uses
  %i.lfl = or disjoint i32 %i.lfk, 3
  %i.lfm = icmp slt i32 %i.lfl, %i.koc
  br i1 %i.lfm, label %bb.iv, label %.preheader.i35.i, !llvm.loop !863

.lr.ph131.i.i:                                    ; preds = %.lr.ph131.i.i.prol.loopexit, %.lr.ph131.i.i
  %.2130.i.i = phi ptr [ %i.lfx, %.lr.ph131.i.i ], [ %.2130.i.i.unr, %.lr.ph131.i.i.prol.loopexit ] ; 3 uses
  %.227129.i.i = phi i32 [ %i.lgh, %.lr.ph131.i.i ], [ %.227129.i.i.unr, %.lr.ph131.i.i.prol.loopexit ]
  %.230128.i.i = phi ptr [ %i.lgg, %.lr.ph131.i.i ], [ %.230128.i.i.unr, %.lr.ph131.i.i.prol.loopexit ] ; 3 uses
  %i.lfn = getelementptr inbounds nuw i8, ptr %.2130.i.i, i64 2
  %i.lfo = load i16, ptr %.2130.i.i, align 2, !tbaa !57
  %i.lfp = zext i16 %i.lfo to i32
  %i.lfq = shl nuw i32 %i.lfp, 16
  %i.lfr = bitcast i32 %i.lfq to float
  %i.lfs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lfr, float %i.kxd)
  %i.lft = bitcast float %i.lfs to i32
  %i.lfu = lshr i32 %i.lft, 16
  %i.lfv = trunc nuw i32 %i.lfu to i16
  %i.lfw = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 2
  store i16 %i.lfv, ptr %.230128.i.i, align 2, !tbaa !57
  %i.lfx = getelementptr inbounds nuw i8, ptr %.2130.i.i, i64 4
  %i.lfy = load i16, ptr %i.lfn, align 2, !tbaa !57
  %i.lfz = zext i16 %i.lfy to i32
  %i.lga = shl nuw i32 %i.lfz, 16
  %i.lgb = bitcast i32 %i.lga to float
  %i.lgc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgb, float %i.kxd)
  %i.lgd = bitcast float %i.lgc to i32
  %i.lge = lshr i32 %i.lgd, 16
  %i.lgf = trunc nuw i32 %i.lge to i16
  %i.lgg = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 4
  store i16 %i.lgf, ptr %i.lfw, align 2, !tbaa !57
  %i.lgh = add nuw nsw i32 %.227129.i.i, 2        ; 2 uses
  %exitcond.not.i37.i.1 = icmp eq i32 %i.lgh, %i.koc
  br i1 %exitcond.not.i37.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i, !llvm.loop !864

bb.iw:                                            ; preds = %bb.io
  %i.lgi = icmp eq i32 %3, 1
  br i1 %i.lgi, label %bb.ix, label %bb.je

bb.ix:                                            ; preds = %bb.iw
  %i.lgj = load i16, ptr %0, align 2, !tbaa !57
  %i.lgk = zext i16 %i.lgj to i32
  %i.lgl = shl nuw i32 %i.lgk, 16
  %i.lgm = bitcast i32 %i.lgl to float            ; 14 uses
  %i.lgn = icmp eq i32 %.sroa.speculated.i998, 4
  br i1 %i.lgn, label %.thread.i52.i, label %bb.iy

.thread.i52.i:                                    ; preds = %bb.ix
  %i.lgo = load i64, ptr %0, align 2, !tbaa !60
  %i.lgp = insertelement <2 x i64> poison, i64 %i.lgo, i64 0
  %i.lgq = bitcast <2 x i64> %i.lgp to <8 x i16>
  %i.lgr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lgq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lgs = bitcast <8 x i16> %i.lgr to <4 x float>
  br label %bb.ja

bb.iy:                                            ; preds = %bb.ix
  %i.lgt = insertelement <4 x float> poison, float %i.lgm, i64 0
  %i.lgu = shufflevector <4 x float> %i.lgt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lgv = icmp eq i32 %.sroa.speculated.i998, 8
  br i1 %i.lgv, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.lgw = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.lgx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lgw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lgy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lgw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lgz = shufflevector <8 x i16> %i.lgx, <8 x i16> %i.lgy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lha = bitcast <16 x i16> %i.lgz to <8 x float>
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iy, %.thread.i52.i
  %i.lhb = phi <4 x float> [ %i.lgs, %.thread.i52.i ], [ %i.lgu, %bb.iy ] ; 2 uses
  %i.lhc = shufflevector <4 x float> %i.lhb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.lhd = phi <4 x float> [ %i.lgu, %bb.iz ], [ %i.lhb, %bb.ja ] ; 4 uses
  %i.lhe = phi fast <8 x float> [ %i.lha, %bb.iz ], [ %i.lhc, %bb.ja ] ; 4 uses
  %i.lhf = icmp sgt i32 %i.koc, 7
  br i1 %i.lhf, label %.lr.ph.i49.i, label %.preheader116.i39.i

.lr.ph.i49.i:                                     ; preds = %bb.jb
  %i.lhg = fcmp fast ueq <8 x float> %i.lhe, zeroinitializer ; 2 uses
  %i.lhh = bitcast <8 x float> %i.lhe to <8 x i32>
  %i.lhi = and <8 x i32> %i.lhh, splat (i32 -2147483648)
  %i.lhj = fcmp fast olt <8 x float> %i.lhe, zeroinitializer
  %i.lhk = select <8 x i1> %i.lhj, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lhl = or disjoint <8 x i32> %i.lhi, splat (i32 1070141403)
  br label %bb.jc

.preheader116.loopexit.i51.i:                     ; preds = %bb.jc
  %i.lhm = and i32 %i.koc, 2147483640
  br label %.preheader116.i39.i

.preheader116.i39.i:                              ; preds = %.preheader116.loopexit.i51.i, %bb.jb
  %.028.lcssa.i40.i = phi ptr [ %2, %bb.jb ], [ %i.ljt, %.preheader116.loopexit.i51.i ] ; 2 uses
  %.025.lcssa.i41.i = phi i32 [ 0, %bb.jb ], [ %i.lhm, %.preheader116.loopexit.i51.i ] ; 3 uses
  %.0.lcssa.i42.i = phi ptr [ %1, %bb.jb ], [ %i.ljs, %.preheader116.loopexit.i51.i ] ; 2 uses
  %i.lhn = or disjoint i32 %.025.lcssa.i41.i, 3
  %i.lho = icmp slt i32 %i.lhn, %i.koc
  br i1 %i.lho, label %.lr.ph125.i.i, label %.preheader.i43.i

.lr.ph125.i.i:                                    ; preds = %.preheader116.i39.i
  %i.lhp = fcmp fast oeq <4 x float> %i.lhd, zeroinitializer ; 2 uses
  %i.lhq = bitcast <4 x float> %i.lhd to <4 x i32>
  %i.lhr = and <4 x i32> %i.lhq, splat (i32 -2147483648)
  %i.lhs = fcmp fast olt <4 x float> %i.lhd, zeroinitializer
  %i.lht = select <4 x i1> %i.lhs, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.lhu = or disjoint <4 x i32> %i.lhr, splat (i32 1070137344)
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jc, %.lr.ph.i49.i
  %.0119.i.i = phi ptr [ %1, %.lr.ph.i49.i ], [ %i.ljs, %bb.jc ] ; 2 uses
  %.025118.i.i = phi i32 [ 0, %.lr.ph.i49.i ], [ %i.lju, %bb.jc ]
  %.028117.i.i = phi ptr [ %2, %.lr.ph.i49.i ], [ %i.ljt, %bb.jc ] ; 2 uses
  %i.lhv = load <8 x i16>, ptr %.0119.i.i, align 1, !tbaa !60 ; 2 uses
  %i.lhw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lhv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lhx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lhv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lhy = shufflevector <8 x i16> %i.lhw, <8 x i16> %i.lhx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.lhz = bitcast <16 x i16> %i.lhy to <8 x float> ; 3 uses
  %i.lia = fcmp fast ueq <8 x float> %i.lhz, zeroinitializer ; 2 uses
  %.not115.i50.i = or <8 x i1> %i.lhg, %i.lia
  %i.lib = fcmp fast olt <8 x float> %i.lhz, zeroinitializer
  %i.lic = select <8 x i1> %i.lib, <8 x float> %i.lhk, <8 x float> zeroinitializer
  %i.lid = fdiv fast <8 x float> %i.lhe, %i.lhz   ; 2 uses
  %i.lie = bitcast <8 x float> %i.lid to <8 x i32>
  %i.lif = and <8 x i32> %i.lie, splat (i32 -2147483648)
  %i.lig = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lid) ; 3 uses
  %i.lih = fcmp fast ogt <8 x float> %i.lig, splat (float 1.000000e+00) ; 2 uses
  %i.lii = select <8 x i1> %i.lih, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lig
  %i.lij = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lig, <8 x float> splat (float 1.000000e+00))
  %i.lik = fdiv fast <8 x float> %i.lii, %i.lij   ; 3 uses
  %i.lil = fmul fast <8 x float> %i.lik, %i.lik   ; 3 uses
  %i.lim = fmul fast <8 x float> %i.lil, %i.lil   ; 7 uses
  %i.lin = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.lio = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) %i.lin, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.lip = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) %i.lio, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.liq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.lir = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.lis = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) %i.lir, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.lit = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) %i.lis, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.liu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lil, <8 x float> nofpclass(nan inf) %i.lip, <8 x float> nofpclass(nan inf) %i.lit)
  %i.liv = fmul fast <8 x float> %i.liu, %i.lik
  %i.liw = select <8 x i1> %i.lih, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.lix = fadd fast <8 x float> %i.liv, %i.liw
  %i.liy = bitcast <8 x float> %i.lix to <8 x i32>
  %i.liz = or <8 x i32> %i.lif, %i.liy
  %i.lja = bitcast <8 x i32> %i.liz to <8 x float>
  %i.ljb = fadd fast <8 x float> %i.lic, %i.lja
  %i.ljc = bitcast <16 x i16> %i.lhy to <8 x i32>
  %i.ljd = and <8 x i32> %i.ljc, splat (i32 -2147483648)
  %i.lje = or disjoint <8 x i32> %i.ljd, splat (i32 1078530011)
  %i.ljf = bitcast <8 x i32> %i.lje to <8 x float>
  %i.ljg = fcmp fast uge <8 x float> %i.ljf, zeroinitializer
  %i.ljh = select <8 x i1> %i.ljg, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.lji = bitcast <8 x float> %i.ljb to <8 x i32>
  %i.ljj = select <8 x i1> %.not115.i50.i, <8 x i32> zeroinitializer, <8 x i32> %i.lji
  %i.ljk = select <8 x i1> %i.lia, <8 x i32> %i.lhl, <8 x i32> zeroinitializer
  %i.ljl = select <8 x i1> %i.lhg, <8 x i32> %i.ljh, <8 x i32> %i.ljk
  %i.ljm = or <8 x i32> %i.ljj, %i.ljl            ; 2 uses
  %i.ljn = shufflevector <8 x i32> %i.ljm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ljo = shufflevector <8 x i32> %i.ljm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ljp = lshr <4 x i32> %i.ljn, splat (i32 16)
  %i.ljq = lshr <4 x i32> %i.ljo, splat (i32 16)
  %i.ljr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ljp, <4 x i32> %i.ljq)
  store <8 x i16> %i.ljr, ptr %.028117.i.i, align 1, !tbaa !60
  %i.ljs = getelementptr inbounds nuw i8, ptr %.0119.i.i, i64 16 ; 2 uses
  %i.ljt = getelementptr inbounds nuw i8, ptr %.028117.i.i, i64 16 ; 2 uses
  %i.lju = add nuw nsw i32 %.025118.i.i, 8        ; 2 uses
  %i.ljv = or disjoint i32 %i.lju, 7
  %i.ljw = icmp slt i32 %i.ljv, %i.koc
  br i1 %i.ljw, label %bb.jc, label %.preheader116.loopexit.i51.i, !llvm.loop !865

.preheader.i43.i:                                 ; preds = %bb.jd, %.preheader116.i39.i
  %.129.lcssa.i44.i = phi ptr [ %.028.lcssa.i40.i, %.preheader116.i39.i ], [ %i.loy, %bb.jd ] ; 6 uses
  %.126.lcssa.i45.i = phi i32 [ %.025.lcssa.i41.i, %.preheader116.i39.i ], [ %i.loz, %bb.jd ] ; 5 uses
  %.1.lcssa.i46.i = phi ptr [ %.0.lcssa.i42.i, %.preheader116.i39.i ], [ %i.lox, %bb.jd ] ; 6 uses
  %i.ljx = icmp slt i32 %.126.lcssa.i45.i, %i.koc
  br i1 %i.ljx, label %iter.check5208, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5208:                                   ; preds = %.preheader.i43.i
  %.129.lcssa.i44.i5192 = ptrtoaddr ptr %.129.lcssa.i44.i to i64
  %.1.lcssa.i46.i5191 = ptrtoaddr ptr %.1.lcssa.i46.i to i64
  %i.ljy = xor i32 %.126.lcssa.i45.i, -1
  %i.ljz = add i32 %i.koc, %i.ljy                 ; 3 uses
  %i.lka = zext i32 %i.ljz to i64
  %i.lkb = add nuw nsw i64 %i.lka, 1              ; 5 uses
  %min.iters.check5193 = icmp ult i32 %i.ljz, 3
  %i.lkc = sub i64 %.1.lcssa.i46.i5191, %.129.lcssa.i44.i5192
  %diff.check5195 = icmp ugt i64 %i.lkc, -32
  %or.cond7111 = select i1 %min.iters.check5193, i1 true, i1 %diff.check5195
  br i1 %or.cond7111, label %.lr.ph132.i.i.preheader, label %vector.main.loop.iter.check5196

vector.main.loop.iter.check5196:                  ; preds = %iter.check5208
  %min.iters.check5197 = icmp ult i32 %i.ljz, 15
  br i1 %min.iters.check5197, label %vec.epilog.ph5212, label %vector.ph5198

vector.ph5198:                                    ; preds = %vector.main.loop.iter.check5196
  %i.lkd = and i64 %i.lkb, 12
  %n.vec5199 = and i64 %i.lkb, 8589934576         ; 5 uses
  %i.lke = shl nuw nsw i64 %n.vec5199, 1          ; 2 uses
  %i.lkf = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.lke
  %i.lkg = trunc i64 %n.vec5199 to i32
  %i.lkh = add i32 %.126.lcssa.i45.i, %i.lkg
  %i.lki = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.lke
  %i.lkj = insertelement <8 x float> poison, float %i.lgm, i64 0
  %i.lkk = shufflevector <8 x float> %i.lkj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lkl = insertelement <4 x float> poison, float %i.lgm, i64 0
  %i.lkm = shufflevector <4 x float> %i.lkl, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5200

vector.body5200:                                  ; preds = %vector.ph5198, %vector.body5200
  %index5201 = phi i64 [ 0, %vector.ph5198 ], [ %index.next5205, %vector.body5200 ] ; 2 uses
  %i.lkn = shl i64 %index5201, 1                  ; 2 uses
  %next.gep5202 = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.lkn
  %next.gep5203 = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.lkn
  %wide.load5204 = load <16 x i16>, ptr %next.gep5202, align 2, !tbaa !57
  %i.lko = zext <16 x i16> %wide.load5204 to <16 x i32>
  %i.lkp = shl nuw <16 x i32> %i.lko, splat (i32 16)
  %i.lkq = bitcast <16 x i32> %i.lkp to <16 x float> ; 6 uses
  %i.lkr = extractelement <16 x float> %i.lkq, i64 0
  %i.lks = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lkr)
  %i.lkt = extractelement <16 x float> %i.lkq, i64 1
  %i.lku = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lkt)
  %i.lkv = extractelement <16 x float> %i.lkq, i64 2
  %i.lkw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lkv)
  %i.lkx = extractelement <16 x float> %i.lkq, i64 3
  %i.lky = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lkx)
  %i.lkz = shufflevector <16 x float> %i.lkq, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lla = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.lkm, <4 x float> %i.lkz)
  %i.llb = shufflevector <16 x float> %i.lkq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.llc = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.lkk, <8 x float> %i.llb)
  %i.lld = insertelement <16 x float> poison, float %i.lks, i64 0
  %i.lle = insertelement <16 x float> %i.lld, float %i.lku, i64 1
  %i.llf = insertelement <16 x float> %i.lle, float %i.lkw, i64 2
  %i.llg = insertelement <16 x float> %i.llf, float %i.lky, i64 3
  %i.llh = shufflevector <4 x float> %i.lla, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lli = shufflevector <16 x float> %i.llg, <16 x float> %i.llh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.llj = shufflevector <8 x float> %i.llc, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.llk = shufflevector <16 x float> %i.lli, <16 x float> %i.llj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.lll = bitcast <16 x float> %i.llk to <16 x i32>
  %i.llm = lshr <16 x i32> %i.lll, splat (i32 16)
  %i.lln = trunc nuw <16 x i32> %i.llm to <16 x i16>
  store <16 x i16> %i.lln, ptr %next.gep5203, align 2, !tbaa !57
  %index.next5205 = add nuw i64 %index5201, 16    ; 2 uses
  %i.llo = icmp eq i64 %index.next5205, %n.vec5199
  br i1 %i.llo, label %middle.block5206, label %vector.body5200, !llvm.loop !866

middle.block5206:                                 ; preds = %vector.body5200
  %cmp.n5207 = icmp eq i64 %i.lkb, %n.vec5199
  br i1 %cmp.n5207, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5209

vec.epilog.iter.check5209:                        ; preds = %middle.block5206
  %min.epilog.iters.check5211 = icmp eq i64 %i.lkd, 0
  br i1 %min.epilog.iters.check5211, label %.lr.ph132.i.i.preheader, label %vec.epilog.ph5212, !prof !64

vec.epilog.ph5212:                                ; preds = %vector.main.loop.iter.check5196, %vec.epilog.iter.check5209
  %vec.epilog.resume.val5213 = phi i64 [ %n.vec5199, %vec.epilog.iter.check5209 ], [ 0, %vector.main.loop.iter.check5196 ]
  %n.vec5214 = and i64 %i.lkb, 8589934588         ; 4 uses
  %i.llp = shl nuw nsw i64 %n.vec5214, 1          ; 2 uses
  %i.llq = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.llp
  %i.llr = trunc i64 %n.vec5214 to i32
  %i.lls = add i32 %.126.lcssa.i45.i, %i.llr
  %i.llt = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.llp
  br label %vec.epilog.vector.body5215

vec.epilog.vector.body5215:                       ; preds = %vec.epilog.vector.body5215, %vec.epilog.ph5212
  %index5216 = phi i64 [ %vec.epilog.resume.val5213, %vec.epilog.ph5212 ], [ %index.next5220, %vec.epilog.vector.body5215 ] ; 2 uses
  %i.llu = shl i64 %index5216, 1                  ; 2 uses
  %next.gep5217 = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.llu
  %next.gep5218 = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.llu
  %wide.load5219 = load <4 x i16>, ptr %next.gep5217, align 2, !tbaa !57
  %i.llv = zext <4 x i16> %wide.load5219 to <4 x i32>
  %i.llw = shl nuw <4 x i32> %i.llv, splat (i32 16)
  %i.llx = bitcast <4 x i32> %i.llw to <4 x float> ; 4 uses
  %i.lly = extractelement <4 x float> %i.llx, i64 0
  %i.llz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lly)
  %i.lma = extractelement <4 x float> %i.llx, i64 1
  %i.lmb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lma)
  %i.lmc = extractelement <4 x float> %i.llx, i64 2
  %i.lmd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lmc)
  %i.lme = extractelement <4 x float> %i.llx, i64 3
  %i.lmf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lme)
  %i.lmg = insertelement <4 x float> poison, float %i.llz, i64 0
  %i.lmh = insertelement <4 x float> %i.lmg, float %i.lmb, i64 1
  %i.lmi = insertelement <4 x float> %i.lmh, float %i.lmd, i64 2
  %i.lmj = insertelement <4 x float> %i.lmi, float %i.lmf, i64 3
  %i.lmk = bitcast <4 x float> %i.lmj to <4 x i32>
  %i.lml = lshr <4 x i32> %i.lmk, splat (i32 16)
  %i.lmm = trunc nuw <4 x i32> %i.lml to <4 x i16>
  store <4 x i16> %i.lmm, ptr %next.gep5218, align 2, !tbaa !57
  %index.next5220 = add nuw i64 %index5216, 4     ; 2 uses
  %i.lmn = icmp eq i64 %index.next5220, %n.vec5214
  br i1 %i.lmn, label %vec.epilog.middle.block5221, label %vec.epilog.vector.body5215, !llvm.loop !867

vec.epilog.middle.block5221:                      ; preds = %vec.epilog.vector.body5215
  %cmp.n5222 = icmp eq i64 %i.lkb, %n.vec5214
  br i1 %cmp.n5222, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i.preheader

.lr.ph132.i.i.preheader:                          ; preds = %iter.check5208, %vec.epilog.iter.check5209, %vec.epilog.middle.block5221
  %.2131.i.i.ph = phi ptr [ %.1.lcssa.i46.i, %iter.check5208 ], [ %i.lkf, %vec.epilog.iter.check5209 ], [ %i.llq, %vec.epilog.middle.block5221 ] ; 3 uses
  %.227130.i.i.ph = phi i32 [ %.126.lcssa.i45.i, %iter.check5208 ], [ %i.lkh, %vec.epilog.iter.check5209 ], [ %i.lls, %vec.epilog.middle.block5221 ] ; 4 uses
  %.230129.i.i.ph = phi ptr [ %.129.lcssa.i44.i, %iter.check5208 ], [ %i.lki, %vec.epilog.iter.check5209 ], [ %i.llt, %vec.epilog.middle.block5221 ] ; 3 uses
  %i.lmo = sub i32 %i.koc, %.227130.i.i.ph
  %.neg8016 = add i32 %.227130.i.i.ph, 1
  %xtraiter7818 = and i32 %i.lmo, 1
  %lcmp.mod7819.not = icmp eq i32 %xtraiter7818, 0
  br i1 %lcmp.mod7819.not, label %.lr.ph132.i.i.prol.loopexit, label %.lr.ph132.i.i.prol

.lr.ph132.i.i.prol:                               ; preds = %.lr.ph132.i.i.preheader
  %i.lmp = getelementptr inbounds nuw i8, ptr %.2131.i.i.ph, i64 2
  %i.lmq = load i16, ptr %.2131.i.i.ph, align 2, !tbaa !57
  %i.lmr = zext i16 %i.lmq to i32
  %i.lms = shl nuw i32 %i.lmr, 16
  %i.lmt = bitcast i32 %i.lms to float
  %i.lmu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lmt)
  %i.lmv = bitcast float %i.lmu to i32
  %i.lmw = lshr i32 %i.lmv, 16
  %i.lmx = trunc nuw i32 %i.lmw to i16
  %i.lmy = getelementptr inbounds nuw i8, ptr %.230129.i.i.ph, i64 2
  store i16 %i.lmx, ptr %.230129.i.i.ph, align 2, !tbaa !57
  %i.lmz = add nuw nsw i32 %.227130.i.i.ph, 1
  br label %.lr.ph132.i.i.prol.loopexit

.lr.ph132.i.i.prol.loopexit:                      ; preds = %.lr.ph132.i.i.prol, %.lr.ph132.i.i.preheader
  %.2131.i.i.unr = phi ptr [ %.2131.i.i.ph, %.lr.ph132.i.i.preheader ], [ %i.lmp, %.lr.ph132.i.i.prol ]
  %.227130.i.i.unr = phi i32 [ %.227130.i.i.ph, %.lr.ph132.i.i.preheader ], [ %i.lmz, %.lr.ph132.i.i.prol ]
  %.230129.i.i.unr = phi ptr [ %.230129.i.i.ph, %.lr.ph132.i.i.preheader ], [ %i.lmy, %.lr.ph132.i.i.prol ]
  %i.lna = icmp eq i32 %i.koc, %.neg8016
  br i1 %i.lna, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i

bb.jd:                                            ; preds = %bb.jd, %.lr.ph125.i.i
  %.1124.i.i = phi ptr [ %.0.lcssa.i42.i, %.lr.ph125.i.i ], [ %i.lox, %bb.jd ] ; 2 uses
  %.126123.i.i = phi i32 [ %.025.lcssa.i41.i, %.lr.ph125.i.i ], [ %i.loz, %bb.jd ]
  %.129122.i.i = phi ptr [ %.028.lcssa.i40.i, %.lr.ph125.i.i ], [ %i.loy, %bb.jd ] ; 2 uses
  %i.lnb = load i64, ptr %.1124.i.i, align 1, !tbaa !60
  %i.lnc = insertelement <2 x i64> poison, i64 %i.lnb, i64 0
  %i.lnd = bitcast <2 x i64> %i.lnc to <8 x i16>
  %i.lne = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lnd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.lnf = bitcast <8 x i16> %i.lne to <4 x float> ; 3 uses
  %i.lng = fcmp fast oeq <4 x float> %i.lnf, zeroinitializer ; 2 uses
  %.not112.i48.i = or <4 x i1> %i.lhp, %i.lng
  %i.lnh = fcmp fast olt <4 x float> %i.lnf, zeroinitializer
  %i.lni = select <4 x i1> %i.lnh, <4 x float> %i.lht, <4 x float> zeroinitializer
  %i.lnj = fdiv fast <4 x float> %i.lhd, %i.lnf   ; 2 uses
  %i.lnk = bitcast <4 x float> %i.lnj to <4 x i32>
  %i.lnl = and <4 x i32> %i.lnk, splat (i32 -2147483648)
  %i.lnm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lnj) ; 3 uses
  %i.lnn = fcmp fast ogt <4 x float> %i.lnm, splat (float 1.000000e+00) ; 2 uses
  %i.lno = select <4 x i1> %i.lnn, <4 x float> splat (float -1.000000e+00), <4 x float> %i.lnm
  %i.lnp = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lnm, <4 x float> splat (float 1.000000e+00))
  %i.lnq = fdiv fast <4 x float> %i.lno, %i.lnp   ; 3 uses
  %i.lnr = fmul fast <4 x float> %i.lnq, %i.lnq   ; 3 uses
  %i.lns = fmul fast <4 x float> %i.lnr, %i.lnr   ; 7 uses
  %i.lnt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.lnu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.lnv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> nofpclass(nan inf) %i.lnu, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.lnw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.lnx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> nofpclass(nan inf) %i.lnw, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.lny = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> nofpclass(nan inf) %i.lnx, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.lnz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> nofpclass(nan inf) %i.lny, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.loa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lnr, <4 x float> nofpclass(nan inf) %i.lnv, <4 x float> nofpclass(nan inf) %i.lnz)
  %i.lob = fmul fast <4 x float> %i.loa, %i.lnq
  %i.loc = select <4 x i1> %i.lnn, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.lod = fadd fast <4 x float> %i.lob, %i.loc
  %i.loe = bitcast <4 x float> %i.lod to <4 x i32>
  %i.lof = or <4 x i32> %i.lnl, %i.loe
  %i.log = bitcast <4 x i32> %i.lof to <4 x float>
  %i.loh = fadd fast <4 x float> %i.lni, %i.log
  %i.loi = bitcast <8 x i16> %i.lne to <4 x i32>
  %i.loj = and <4 x i32> %i.loi, splat (i32 -2147483648)
  %i.lok = or disjoint <4 x i32> %i.loj, splat (i32 1078530011)
  %i.lol = bitcast <4 x i32> %i.lok to <4 x float>
  %i.lom = fcmp fast uge <4 x float> %i.lol, zeroinitializer
  %i.lon = select <4 x i1> %i.lom, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.loo = bitcast <4 x float> %i.loh to <4 x i32>
  %i.lop = select <4 x i1> %.not112.i48.i, <4 x i32> zeroinitializer, <4 x i32> %i.loo
  %i.loq = select <4 x i1> %i.lng, <4 x i32> %i.lhu, <4 x i32> zeroinitializer
  %i.lor = select <4 x i1> %i.lhp, <4 x i32> %i.lon, <4 x i32> %i.loq
  %i.los = or <4 x i32> %i.lop, %i.lor
  %i.lot = lshr <4 x i32> %i.los, splat (i32 16)
  %i.lou = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lot, <4 x i32> poison)
  %i.lov = bitcast <8 x i16> %i.lou to <2 x i64>
  %i.low = extractelement <2 x i64> %i.lov, i64 0
  store i64 %i.low, ptr %.129122.i.i, align 1, !tbaa !60
  %i.lox = getelementptr inbounds nuw i8, ptr %.1124.i.i, i64 8 ; 2 uses
  %i.loy = getelementptr inbounds nuw i8, ptr %.129122.i.i, i64 8 ; 2 uses
  %i.loz = add nuw nsw i32 %.126123.i.i, 4        ; 3 uses
  %i.lpa = or disjoint i32 %i.loz, 3
  %i.lpb = icmp slt i32 %i.lpa, %i.koc
  br i1 %i.lpb, label %bb.jd, label %.preheader.i43.i, !llvm.loop !868

.lr.ph132.i.i:                                    ; preds = %.lr.ph132.i.i.prol.loopexit, %.lr.ph132.i.i
  %.2131.i.i = phi ptr [ %i.lpm, %.lr.ph132.i.i ], [ %.2131.i.i.unr, %.lr.ph132.i.i.prol.loopexit ] ; 3 uses
  %.227130.i.i = phi i32 [ %i.lpw, %.lr.ph132.i.i ], [ %.227130.i.i.unr, %.lr.ph132.i.i.prol.loopexit ]
  %.230129.i.i = phi ptr [ %i.lpv, %.lr.ph132.i.i ], [ %.230129.i.i.unr, %.lr.ph132.i.i.prol.loopexit ] ; 3 uses
  %i.lpc = getelementptr inbounds nuw i8, ptr %.2131.i.i, i64 2
  %i.lpd = load i16, ptr %.2131.i.i, align 2, !tbaa !57
  %i.lpe = zext i16 %i.lpd to i32
  %i.lpf = shl nuw i32 %i.lpe, 16
  %i.lpg = bitcast i32 %i.lpf to float
  %i.lph = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lpg)
  %i.lpi = bitcast float %i.lph to i32
  %i.lpj = lshr i32 %i.lpi, 16
  %i.lpk = trunc nuw i32 %i.lpj to i16
  %i.lpl = getelementptr inbounds nuw i8, ptr %.230129.i.i, i64 2
  store i16 %i.lpk, ptr %.230129.i.i, align 2, !tbaa !57
  %i.lpm = getelementptr inbounds nuw i8, ptr %.2131.i.i, i64 4
  %i.lpn = load i16, ptr %i.lpc, align 2, !tbaa !57
  %i.lpo = zext i16 %i.lpn to i32
  %i.lpp = shl nuw i32 %i.lpo, 16
  %i.lpq = bitcast i32 %i.lpp to float
  %i.lpr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lgm, float %i.lpq)
  %i.lps = bitcast float %i.lpr to i32
  %i.lpt = lshr i32 %i.lps, 16
  %i.lpu = trunc nuw i32 %i.lpt to i16
  %i.lpv = getelementptr inbounds nuw i8, ptr %.230129.i.i, i64 4
  store i16 %i.lpu, ptr %i.lpl, align 2, !tbaa !57
  %i.lpw = add nuw nsw i32 %.227130.i.i, 2        ; 2 uses
  %exitcond.not.i47.i.1 = icmp eq i32 %i.lpw, %i.koc
  br i1 %exitcond.not.i47.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i, !llvm.loop !869

bb.je:                                            ; preds = %bb.iw, %bb.il
  %i.lpx = icmp eq i32 %6, 1
  br i1 %i.lpx, label %bb.jf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jf:                                            ; preds = %bb.je
  %i.lpy = icmp eq i32 %3, %4
  br i1 %i.lpy, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  switch i32 %.sroa.speculated.i998, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i56.i
    i32 4, label %.preheader105.i.i
  ]

.preheader105.i.i:                                ; preds = %bb.jg
  %i.lpz = icmp sgt i32 %.sroa.speculated78.i, 0
  br i1 %i.lpz, label %.lr.ph.i53.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i56.i:                                 ; preds = %bb.jg
  %i.lqa = icmp sgt i32 %.sroa.speculated78.i, 0
  br i1 %i.lqa, label %.lr.ph115.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph115.i.i:                                    ; preds = %.preheader.i56.i, %.lr.ph115.i.i
  %.020114.i.i = phi ptr [ %i.lsg, %.lr.ph115.i.i ], [ %0, %.preheader.i56.i ] ; 2 uses
  %.021113.i.i = phi i32 [ %i.lsj, %.lr.ph115.i.i ], [ 0, %.preheader.i56.i ]
  %.022112.i.i = phi ptr [ %i.lsh, %.lr.ph115.i.i ], [ %1, %.preheader.i56.i ] ; 2 uses
  %.024111.i.i = phi ptr [ %i.lsi, %.lr.ph115.i.i ], [ %2, %.preheader.i56.i ] ; 2 uses
  %i.lqb = load <8 x i16>, ptr %.020114.i.i, align 1, !tbaa !60 ; 2 uses
  %i.lqc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lqb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lqd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lqb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lqe = shufflevector <8 x i16> %i.lqc, <8 x i16> %i.lqd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.lqf = bitcast <16 x i16> %i.lqe to <8 x float> ; 3 uses
  %i.lqg = load i16, ptr %.022112.i.i, align 2, !tbaa !57
  %i.lqh = zext i16 %i.lqg to i32
  %i.lqi = shl nuw i32 %i.lqh, 16
  %i.lqj = insertelement <8 x i32> poison, i32 %i.lqi, i64 0
  %i.lqk = bitcast <8 x i32> %i.lqj to <8 x float>
  %i.lql = shufflevector <8 x float> %i.lqk, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.lqm = fcmp fast ueq <8 x float> %i.lql, zeroinitializer ; 2 uses
  %i.lqn = fcmp fast ueq <8 x float> %i.lqf, zeroinitializer ; 2 uses
  %.not104.i.i = or <8 x i1> %i.lqm, %i.lqn
  %i.lqo = fcmp fast olt <8 x float> %i.lql, zeroinitializer
  %i.lqp = fcmp fast olt <8 x float> %i.lqf, zeroinitializer
  %i.lqq = select <8 x i1> %i.lqp, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lqr = select <8 x i1> %i.lqo, <8 x float> %i.lqq, <8 x float> zeroinitializer
  %i.lqs = fdiv fast <8 x float> %i.lqf, %i.lql   ; 2 uses
  %i.lqt = bitcast <8 x float> %i.lqs to <8 x i32>
  %i.lqu = and <8 x i32> %i.lqt, splat (i32 -2147483648)
  %i.lqv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lqs) ; 3 uses
  %i.lqw = fcmp fast ogt <8 x float> %i.lqv, splat (float 1.000000e+00) ; 2 uses
  %i.lqx = select <8 x i1> %i.lqw, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lqv
  %i.lqy = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lqv, <8 x float> splat (float 1.000000e+00))
  %i.lqz = fdiv fast <8 x float> %i.lqx, %i.lqy   ; 3 uses
  %i.lra = fmul fast <8 x float> %i.lqz, %i.lqz   ; 3 uses
  %i.lrb = fmul fast <8 x float> %i.lra, %i.lra   ; 7 uses
  %i.lrc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrb, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.lrd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrb, <8 x float> nofpclass(nan inf) %i.lrc, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.lre = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrb, <8 x float> nofpclass(nan inf) %i.lrd, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.lrf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrb, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.lrg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrb, <8 x float> nofpclass(nan inf) %i.lrf, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.lrh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrb, <8 x float> nofpclass(nan inf) %i.lrg, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
end_hunk_8
begin_hunk_9_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.ltd = and <4 x i32> %i.ltc, splat (i32 -2147483648)
  %i.lte = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ltb) ; 3 uses
  %i.ltf = fcmp fast ogt <4 x float> %i.lte, splat (float 1.000000e+00) ; 2 uses
  %i.ltg = select <4 x i1> %i.ltf, <4 x float> splat (float -1.000000e+00), <4 x float> %i.lte
  %i.lth = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lte, <4 x float> splat (float 1.000000e+00))
  %i.lti = fdiv fast <4 x float> %i.ltg, %i.lth   ; 3 uses
  %i.ltj = fmul fast <4 x float> %i.lti, %i.lti   ; 3 uses
  %i.ltk = fmul fast <4 x float> %i.ltj, %i.ltj   ; 7 uses
  %i.ltl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltk, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ltm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltk, <4 x float> nofpclass(nan inf) %i.ltl, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ltn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltk, <4 x float> nofpclass(nan inf) %i.ltm, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.lto = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltk, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ltp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltk, <4 x float> nofpclass(nan inf) %i.lto, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ltq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltk, <4 x float> nofpclass(nan inf) %i.ltp, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ltr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltk, <4 x float> nofpclass(nan inf) %i.ltq, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.lts = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ltj, <4 x float> nofpclass(nan inf) %i.ltn, <4 x float> nofpclass(nan inf) %i.ltr)
  %i.ltt = fmul fast <4 x float> %i.lts, %i.lti
  %i.ltu = select <4 x i1> %i.ltf, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ltv = fadd fast <4 x float> %i.ltt, %i.ltu
  %i.ltw = bitcast <4 x float> %i.ltv to <4 x i32>
  %i.ltx = or <4 x i32> %i.ltd, %i.ltw
  %i.lty = bitcast <4 x i32> %i.ltx to <4 x float>
  %i.ltz = fadd fast <4 x float> %i.lta, %i.lty
  %i.lua = bitcast <4 x float> %i.lsu to <4 x i32>
  %i.lub = bitcast <8 x i16> %i.lsn to <4 x i32>
  %i.luc = and <4 x i32> %i.lub, splat (i32 -2147483648)
  %i.lud = or disjoint <4 x i32> %i.luc, splat (i32 1070137344)
  %isneg.inv.i54.i = icmp slt <4 x i32> %i.lua, zeroinitializer
  %i.lue = select <4 x i1> %isneg.inv.i54.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.luf = bitcast <4 x float> %i.ltz to <4 x i32>
  %i.lug = select <4 x i1> %.not101.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.luf
  %i.luh = select <4 x i1> %i.lsv, <4 x i32> %i.lud, <4 x i32> zeroinitializer
  %i.lui = select <4 x i1> %i.lsw, <4 x i32> %i.lue, <4 x i32> %i.luh
  %i.luj = or <4 x i32> %i.lug, %i.lui
  %i.luk = lshr <4 x i32> %i.luj, splat (i32 16)
  %i.lul = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.luk, <4 x i32> poison)
  %i.lum = bitcast <8 x i16> %i.lul to <2 x i64>
  %i.lun = extractelement <2 x i64> %i.lum, i64 0
  store i64 %i.lun, ptr %.125107.i.i, align 1, !tbaa !60
  %i.luo = getelementptr inbounds nuw i8, ptr %.1109.i.i, i64 8
  %i.lup = getelementptr inbounds nuw i8, ptr %.123108.i.i, i64 2
  %i.luq = getelementptr inbounds nuw i8, ptr %.125107.i.i, i64 8
  %i.lur = add nuw nsw i32 %.0110.i.i, 1          ; 2 uses
  %exitcond.not.i55.i1006 = icmp eq i32 %i.lur, %.sroa.speculated78.i
  br i1 %exitcond.not.i55.i1006, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i53.i, !llvm.loop !871

bb.jh:                                            ; preds = %bb.jf
  %i.lus = icmp eq i32 %4, 1
  br i1 %i.lus, label %bb.ji, label %bb.jl

bb.ji:                                            ; preds = %bb.jh
  %.val.i1000 = load i16, ptr %1, align 2, !tbaa !57
  %i.lut = zext i16 %.val.i1000 to i32
  %i.luu = shl nuw i32 %i.lut, 16
  %i.luv = bitcast i32 %i.luu to float            ; 15 uses
  %i.luw = icmp sgt i32 %i.koc, 7
  br i1 %i.luw, label %.lr.ph.i64.i1004, label %._crit_edge.i.i1001

.lr.ph.i64.i1004:                                 ; preds = %bb.ji
  %i.lux = insertelement <8 x float> poison, float %i.luv, i64 0
  %i.luy = shufflevector <8 x float> %i.lux, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.luz = fcmp fast ueq <8 x float> %i.luy, zeroinitializer ; 2 uses
  %i.lva = fcmp fast olt <8 x float> %i.luy, zeroinitializer
  %i.lvb = bitcast <8 x float> %i.luy to <8 x i32>
  %isneg.inv78.i.i = icmp slt <8 x i32> %i.lvb, zeroinitializer
  %i.lvc = select <8 x i1> %isneg.inv78.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.lvd = fdiv fast <8 x float> splat (float 1.000000e+00), %i.luy
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jj, %.lr.ph.i64.i1004
  %.083.i.i = phi ptr [ %0, %.lr.ph.i64.i1004 ], [ %i.lwz, %bb.jj ] ; 2 uses
  %.02282.i.i = phi i32 [ 0, %.lr.ph.i64.i1004 ], [ %i.lxb, %bb.jj ]
  %.02581.i.i = phi ptr [ %2, %.lr.ph.i64.i1004 ], [ %i.lxa, %bb.jj ] ; 2 uses
  %i.lve = load <8 x i16>, ptr %.083.i.i, align 1, !tbaa !60 ; 2 uses
  %i.lvf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lve, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lvg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lve, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lvh = shufflevector <8 x i16> %i.lvf, <8 x i16> %i.lvg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.lvi = bitcast <16 x i16> %i.lvh to <8 x float> ; 3 uses
  %i.lvj = fcmp fast ueq <8 x float> %i.lvi, zeroinitializer ; 2 uses
  %.not80.i.i = or <8 x i1> %i.luz, %i.lvj
  %i.lvk = fcmp fast olt <8 x float> %i.lvi, zeroinitializer
  %i.lvl = select <8 x i1> %i.lvk, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lvm = select <8 x i1> %i.lva, <8 x float> %i.lvl, <8 x float> zeroinitializer
  %i.lvn = fmul fast <8 x float> %i.lvi, %i.lvd   ; 2 uses
  %i.lvo = bitcast <8 x float> %i.lvn to <8 x i32>
  %i.lvp = and <8 x i32> %i.lvo, splat (i32 -2147483648)
  %i.lvq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lvn) ; 3 uses
  %i.lvr = fcmp fast ogt <8 x float> %i.lvq, splat (float 1.000000e+00) ; 2 uses
  %i.lvs = select <8 x i1> %i.lvr, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lvq
  %i.lvt = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lvq, <8 x float> splat (float 1.000000e+00))
  %i.lvu = fdiv fast <8 x float> %i.lvs, %i.lvt   ; 3 uses
  %i.lvv = fmul fast <8 x float> %i.lvu, %i.lvu   ; 3 uses
  %i.lvw = fmul fast <8 x float> %i.lvv, %i.lvv   ; 7 uses
  %i.lvx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvw, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.lvy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvw, <8 x float> nofpclass(nan inf) %i.lvx, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.lvz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvw, <8 x float> nofpclass(nan inf) %i.lvy, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.lwa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvw, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.lwb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvw, <8 x float> nofpclass(nan inf) %i.lwa, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.lwc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvw, <8 x float> nofpclass(nan inf) %i.lwb, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.lwd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvw, <8 x float> nofpclass(nan inf) %i.lwc, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.lwe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lvv, <8 x float> nofpclass(nan inf) %i.lvz, <8 x float> nofpclass(nan inf) %i.lwd)
  %i.lwf = fmul fast <8 x float> %i.lwe, %i.lvu
  %i.lwg = select <8 x i1> %i.lvr, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.lwh = fadd fast <8 x float> %i.lwf, %i.lwg
  %i.lwi = bitcast <8 x float> %i.lwh to <8 x i32>
  %i.lwj = or <8 x i32> %i.lvp, %i.lwi
  %i.lwk = bitcast <8 x i32> %i.lwj to <8 x float>
  %i.lwl = fadd fast <8 x float> %i.lvm, %i.lwk
  %i.lwm = bitcast <16 x i16> %i.lvh to <8 x i32>
  %i.lwn = and <8 x i32> %i.lwm, splat (i32 -2147483648)
  %i.lwo = or disjoint <8 x i32> %i.lwn, splat (i32 1070141403)
  %i.lwp = bitcast <8 x float> %i.lwl to <8 x i32>
  %i.lwq = select <8 x i1> %.not80.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.lwp
  %i.lwr = select <8 x i1> %i.luz, <8 x i32> %i.lwo, <8 x i32> zeroinitializer
  %i.lws = select <8 x i1> %i.lvj, <8 x i32> %i.lvc, <8 x i32> %i.lwr
  %i.lwt = or <8 x i32> %i.lwq, %i.lws            ; 2 uses
  %i.lwu = shufflevector <8 x i32> %i.lwt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lwv = shufflevector <8 x i32> %i.lwt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lww = lshr <4 x i32> %i.lwu, splat (i32 16)
  %i.lwx = lshr <4 x i32> %i.lwv, splat (i32 16)
  %i.lwy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lww, <4 x i32> %i.lwx)
  store <8 x i16> %i.lwy, ptr %.02581.i.i, align 1, !tbaa !60
  %i.lwz = getelementptr inbounds nuw i8, ptr %.083.i.i, i64 16 ; 2 uses
  %i.lxa = getelementptr inbounds nuw i8, ptr %.02581.i.i, i64 16 ; 2 uses
  %i.lxb = add nuw nsw i32 %.02282.i.i, 8         ; 2 uses
  %i.lxc = or disjoint i32 %i.lxb, 7
  %i.lxd = icmp slt i32 %i.lxc, %i.koc
  br i1 %i.lxd, label %bb.jj, label %._crit_edge.loopexit.i.i1005, !llvm.loop !872

._crit_edge.loopexit.i.i1005:                     ; preds = %bb.jj
  %i.lxe = and i32 %i.koc, 2147483640
  br label %._crit_edge.i.i1001

._crit_edge.i.i1001:                              ; preds = %._crit_edge.loopexit.i.i1005, %bb.ji
  %.025.lcssa.i57.i = phi ptr [ %2, %bb.ji ], [ %i.lxa, %._crit_edge.loopexit.i.i1005 ] ; 2 uses
  %.022.lcssa.i.i1002 = phi i32 [ 0, %bb.ji ], [ %i.lxe, %._crit_edge.loopexit.i.i1005 ] ; 3 uses
  %.0.lcssa.i58.i = phi ptr [ %0, %bb.ji ], [ %i.lwz, %._crit_edge.loopexit.i.i1005 ] ; 2 uses
  %i.lxf = or disjoint i32 %.022.lcssa.i.i1002, 3
  %i.lxg = icmp slt i32 %i.lxf, %i.koc
  br i1 %i.lxg, label %.lr.ph90.i.i, label %.preheader.i59.i

.lr.ph90.i.i:                                     ; preds = %._crit_edge.i.i1001
  %i.lxh = insertelement <4 x float> poison, float %i.luv, i64 0
  %i.lxi = shufflevector <4 x float> %i.lxh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lxj = fcmp fast oeq <4 x float> %i.lxi, zeroinitializer ; 2 uses
  %i.lxk = fcmp fast olt <4 x float> %i.lxi, zeroinitializer
  %i.lxl = bitcast <4 x float> %i.lxi to <4 x i32>
  %isneg.inv.i63.i = icmp slt <4 x i32> %i.lxl, zeroinitializer
  %i.lxm = select <4 x i1> %isneg.inv.i63.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.lxn = fdiv fast <4 x float> splat (float 1.000000e+00), %i.lxi
  br label %bb.jk

.preheader.i59.i:                                 ; preds = %bb.jk, %._crit_edge.i.i1001
  %.126.lcssa.i60.i = phi ptr [ %.025.lcssa.i57.i, %._crit_edge.i.i1001 ], [ %i.mcn, %bb.jk ] ; 6 uses
  %.123.lcssa.i.i1003 = phi i32 [ %.022.lcssa.i.i1002, %._crit_edge.i.i1001 ], [ %i.mco, %bb.jk ] ; 5 uses
  %.1.lcssa.i61.i = phi ptr [ %.0.lcssa.i58.i, %._crit_edge.i.i1001 ], [ %i.mcm, %bb.jk ] ; 6 uses
  %i.lxo = icmp slt i32 %.123.lcssa.i.i1003, %i.koc
  br i1 %i.lxo, label %iter.check5169, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5169:                                   ; preds = %.preheader.i59.i
  %.126.lcssa.i60.i5153 = ptrtoaddr ptr %.126.lcssa.i60.i to i64
  %.1.lcssa.i61.i5152 = ptrtoaddr ptr %.1.lcssa.i61.i to i64
  %i.lxp = xor i32 %.123.lcssa.i.i1003, -1
  %i.lxq = add i32 %i.koc, %i.lxp                 ; 3 uses
  %i.lxr = zext i32 %i.lxq to i64
  %i.lxs = add nuw nsw i64 %i.lxr, 1              ; 5 uses
  %min.iters.check5154 = icmp ult i32 %i.lxq, 3
  %i.lxt = sub i64 %.1.lcssa.i61.i5152, %.126.lcssa.i60.i5153
  %diff.check5156 = icmp ugt i64 %i.lxt, -32
  %or.cond7112 = select i1 %min.iters.check5154, i1 true, i1 %diff.check5156
  br i1 %or.cond7112, label %.lr.ph97.i.i.preheader, label %vector.main.loop.iter.check5157

vector.main.loop.iter.check5157:                  ; preds = %iter.check5169
  %min.iters.check5158 = icmp ult i32 %i.lxq, 15
  br i1 %min.iters.check5158, label %vec.epilog.ph5173, label %vector.ph5159

vector.ph5159:                                    ; preds = %vector.main.loop.iter.check5157
  %i.lxu = and i64 %i.lxs, 12
  %n.vec5160 = and i64 %i.lxs, 8589934576         ; 5 uses
  %i.lxv = shl nuw nsw i64 %n.vec5160, 1          ; 2 uses
  %i.lxw = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.lxv
  %i.lxx = trunc i64 %n.vec5160 to i32
  %i.lxy = add i32 %.123.lcssa.i.i1003, %i.lxx
  %i.lxz = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.lxv
  %i.lya = insertelement <8 x float> poison, float %i.luv, i64 0
  %i.lyb = shufflevector <8 x float> %i.lya, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lyc = insertelement <4 x float> poison, float %i.luv, i64 0
  %i.lyd = shufflevector <4 x float> %i.lyc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5161

vector.body5161:                                  ; preds = %vector.ph5159, %vector.body5161
  %index5162 = phi i64 [ 0, %vector.ph5159 ], [ %index.next5166, %vector.body5161 ] ; 2 uses
  %i.lye = shl i64 %index5162, 1                  ; 2 uses
  %next.gep5163 = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.lye
  %next.gep5164 = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.lye
  %wide.load5165 = load <16 x i16>, ptr %next.gep5163, align 2, !tbaa !57
  %i.lyf = zext <16 x i16> %wide.load5165 to <16 x i32>
  %i.lyg = shl nuw <16 x i32> %i.lyf, splat (i32 16)
  %i.lyh = bitcast <16 x i32> %i.lyg to <16 x float> ; 6 uses
  %i.lyi = extractelement <16 x float> %i.lyh, i64 0
  %i.lyj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lyi, float %i.luv)
  %i.lyk = extractelement <16 x float> %i.lyh, i64 1
  %i.lyl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lyk, float %i.luv)
  %i.lym = extractelement <16 x float> %i.lyh, i64 2
  %i.lyn = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lym, float %i.luv)
  %i.lyo = extractelement <16 x float> %i.lyh, i64 3
  %i.lyp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lyo, float %i.luv)
  %i.lyq = shufflevector <16 x float> %i.lyh, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lyr = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.lyq, <4 x float> %i.lyd)
  %i.lys = shufflevector <16 x float> %i.lyh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lyt = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.lys, <8 x float> %i.lyb)
  %i.lyu = insertelement <16 x float> poison, float %i.lyj, i64 0
  %i.lyv = insertelement <16 x float> %i.lyu, float %i.lyl, i64 1
  %i.lyw = insertelement <16 x float> %i.lyv, float %i.lyn, i64 2
  %i.lyx = insertelement <16 x float> %i.lyw, float %i.lyp, i64 3
  %i.lyy = shufflevector <4 x float> %i.lyr, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lyz = shufflevector <16 x float> %i.lyx, <16 x float> %i.lyy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lza = shufflevector <8 x float> %i.lyt, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lzb = shufflevector <16 x float> %i.lyz, <16 x float> %i.lza, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.lzc = bitcast <16 x float> %i.lzb to <16 x i32>
  %i.lzd = lshr <16 x i32> %i.lzc, splat (i32 16)
  %i.lze = trunc nuw <16 x i32> %i.lzd to <16 x i16>
  store <16 x i16> %i.lze, ptr %next.gep5164, align 2, !tbaa !57
  %index.next5166 = add nuw i64 %index5162, 16    ; 2 uses
  %i.lzf = icmp eq i64 %index.next5166, %n.vec5160
  br i1 %i.lzf, label %middle.block5167, label %vector.body5161, !llvm.loop !873

middle.block5167:                                 ; preds = %vector.body5161
  %cmp.n5168 = icmp eq i64 %i.lxs, %n.vec5160
  br i1 %cmp.n5168, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5170

vec.epilog.iter.check5170:                        ; preds = %middle.block5167
  %min.epilog.iters.check5172 = icmp eq i64 %i.lxu, 0
  br i1 %min.epilog.iters.check5172, label %.lr.ph97.i.i.preheader, label %vec.epilog.ph5173, !prof !64

vec.epilog.ph5173:                                ; preds = %vector.main.loop.iter.check5157, %vec.epilog.iter.check5170
  %vec.epilog.resume.val5174 = phi i64 [ %n.vec5160, %vec.epilog.iter.check5170 ], [ 0, %vector.main.loop.iter.check5157 ]
  %n.vec5175 = and i64 %i.lxs, 8589934588         ; 4 uses
  %i.lzg = shl nuw nsw i64 %n.vec5175, 1          ; 2 uses
  %i.lzh = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.lzg
  %i.lzi = trunc i64 %n.vec5175 to i32
  %i.lzj = add i32 %.123.lcssa.i.i1003, %i.lzi
  %i.lzk = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.lzg
  br label %vec.epilog.vector.body5176

vec.epilog.vector.body5176:                       ; preds = %vec.epilog.vector.body5176, %vec.epilog.ph5173
  %index5177 = phi i64 [ %vec.epilog.resume.val5174, %vec.epilog.ph5173 ], [ %index.next5181, %vec.epilog.vector.body5176 ] ; 2 uses
  %i.lzl = shl i64 %index5177, 1                  ; 2 uses
  %next.gep5178 = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.lzl
  %next.gep5179 = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.lzl
  %wide.load5180 = load <4 x i16>, ptr %next.gep5178, align 2, !tbaa !57
  %i.lzm = zext <4 x i16> %wide.load5180 to <4 x i32>
  %i.lzn = shl nuw <4 x i32> %i.lzm, splat (i32 16)
  %i.lzo = bitcast <4 x i32> %i.lzn to <4 x float> ; 4 uses
  %i.lzp = extractelement <4 x float> %i.lzo, i64 0
  %i.lzq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lzp, float %i.luv)
  %i.lzr = extractelement <4 x float> %i.lzo, i64 1
  %i.lzs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lzr, float %i.luv)
  %i.lzt = extractelement <4 x float> %i.lzo, i64 2
  %i.lzu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lzt, float %i.luv)
  %i.lzv = extractelement <4 x float> %i.lzo, i64 3
  %i.lzw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lzv, float %i.luv)
  %i.lzx = insertelement <4 x float> poison, float %i.lzq, i64 0
  %i.lzy = insertelement <4 x float> %i.lzx, float %i.lzs, i64 1
  %i.lzz = insertelement <4 x float> %i.lzy, float %i.lzu, i64 2
  %i.maa = insertelement <4 x float> %i.lzz, float %i.lzw, i64 3
  %i.mab = bitcast <4 x float> %i.maa to <4 x i32>
  %i.mac = lshr <4 x i32> %i.mab, splat (i32 16)
  %i.mad = trunc nuw <4 x i32> %i.mac to <4 x i16>
  store <4 x i16> %i.mad, ptr %next.gep5179, align 2, !tbaa !57
  %index.next5181 = add nuw i64 %index5177, 4     ; 2 uses
  %i.mae = icmp eq i64 %index.next5181, %n.vec5175
  br i1 %i.mae, label %vec.epilog.middle.block5182, label %vec.epilog.vector.body5176, !llvm.loop !874

vec.epilog.middle.block5182:                      ; preds = %vec.epilog.vector.body5176
  %cmp.n5183 = icmp eq i64 %i.lxs, %n.vec5175
  br i1 %cmp.n5183, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph97.i.i.preheader

.lr.ph97.i.i.preheader:                           ; preds = %iter.check5169, %vec.epilog.iter.check5170, %vec.epilog.middle.block5182
  %.296.i.i.ph = phi ptr [ %.1.lcssa.i61.i, %iter.check5169 ], [ %i.lxw, %vec.epilog.iter.check5170 ], [ %i.lzh, %vec.epilog.middle.block5182 ] ; 3 uses
  %.22495.i.i.ph = phi i32 [ %.123.lcssa.i.i1003, %iter.check5169 ], [ %i.lxy, %vec.epilog.iter.check5170 ], [ %i.lzj, %vec.epilog.middle.block5182 ] ; 4 uses
  %.22794.i.i.ph = phi ptr [ %.126.lcssa.i60.i, %iter.check5169 ], [ %i.lxz, %vec.epilog.iter.check5170 ], [ %i.lzk, %vec.epilog.middle.block5182 ] ; 3 uses
  %i.maf = sub i32 %i.koc, %.22495.i.i.ph
  %.neg8015 = add i32 %.22495.i.i.ph, 1
  %xtraiter7816 = and i32 %i.maf, 1
  %lcmp.mod7817.not = icmp eq i32 %xtraiter7816, 0
  br i1 %lcmp.mod7817.not, label %.lr.ph97.i.i.prol.loopexit, label %.lr.ph97.i.i.prol

.lr.ph97.i.i.prol:                                ; preds = %.lr.ph97.i.i.preheader
  %i.mag = getelementptr inbounds nuw i8, ptr %.296.i.i.ph, i64 2
  %i.mah = load i16, ptr %.296.i.i.ph, align 2, !tbaa !57
  %i.mai = zext i16 %i.mah to i32
  %i.maj = shl nuw i32 %i.mai, 16
  %i.mak = bitcast i32 %i.maj to float
  %i.mal = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mak, float %i.luv)
  %i.mam = bitcast float %i.mal to i32
  %i.man = lshr i32 %i.mam, 16
  %i.mao = trunc nuw i32 %i.man to i16
  %i.map = getelementptr inbounds nuw i8, ptr %.22794.i.i.ph, i64 2
  store i16 %i.mao, ptr %.22794.i.i.ph, align 2, !tbaa !57
  %i.maq = add nuw nsw i32 %.22495.i.i.ph, 1
  br label %.lr.ph97.i.i.prol.loopexit

.lr.ph97.i.i.prol.loopexit:                       ; preds = %.lr.ph97.i.i.prol, %.lr.ph97.i.i.preheader
  %.296.i.i.unr = phi ptr [ %.296.i.i.ph, %.lr.ph97.i.i.preheader ], [ %i.mag, %.lr.ph97.i.i.prol ]
  %.22495.i.i.unr = phi i32 [ %.22495.i.i.ph, %.lr.ph97.i.i.preheader ], [ %i.maq, %.lr.ph97.i.i.prol ]
  %.22794.i.i.unr = phi ptr [ %.22794.i.i.ph, %.lr.ph97.i.i.preheader ], [ %i.map, %.lr.ph97.i.i.prol ]
  %i.mar = icmp eq i32 %i.koc, %.neg8015
  br i1 %i.mar, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph97.i.i

bb.jk:                                            ; preds = %bb.jk, %.lr.ph90.i.i
  %.188.i.i = phi ptr [ %.0.lcssa.i58.i, %.lr.ph90.i.i ], [ %i.mcm, %bb.jk ] ; 2 uses
  %.12387.i.i = phi i32 [ %.022.lcssa.i.i1002, %.lr.ph90.i.i ], [ %i.mco, %bb.jk ]
  %.12686.i.i = phi ptr [ %.025.lcssa.i57.i, %.lr.ph90.i.i ], [ %i.mcn, %bb.jk ] ; 2 uses
  %i.mas = load i64, ptr %.188.i.i, align 1, !tbaa !60
  %i.mat = insertelement <2 x i64> poison, i64 %i.mas, i64 0
  %i.mau = bitcast <2 x i64> %i.mat to <8 x i16>
  %i.mav = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mau, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.maw = bitcast <8 x i16> %i.mav to <4 x float> ; 3 uses
  %i.max = fcmp fast oeq <4 x float> %i.maw, zeroinitializer ; 2 uses
  %.not77.i.i = or <4 x i1> %i.lxj, %i.max
  %i.may = fcmp fast olt <4 x float> %i.maw, zeroinitializer
  %i.maz = select <4 x i1> %i.may, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.mba = select <4 x i1> %i.lxk, <4 x float> %i.maz, <4 x float> zeroinitializer
  %i.mbb = fmul fast <4 x float> %i.maw, %i.lxn   ; 2 uses
  %i.mbc = bitcast <4 x float> %i.mbb to <4 x i32>
  %i.mbd = and <4 x i32> %i.mbc, splat (i32 -2147483648)
  %i.mbe = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mbb) ; 3 uses
  %i.mbf = fcmp fast ogt <4 x float> %i.mbe, splat (float 1.000000e+00) ; 2 uses
  %i.mbg = select <4 x i1> %i.mbf, <4 x float> splat (float -1.000000e+00), <4 x float> %i.mbe
  %i.mbh = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.mbe, <4 x float> splat (float 1.000000e+00))
  %i.mbi = fdiv fast <4 x float> %i.mbg, %i.mbh   ; 3 uses
  %i.mbj = fmul fast <4 x float> %i.mbi, %i.mbi   ; 3 uses
  %i.mbk = fmul fast <4 x float> %i.mbj, %i.mbj   ; 7 uses
  %i.mbl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbk, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.mbm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbk, <4 x float> nofpclass(nan inf) %i.mbl, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.mbn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbk, <4 x float> nofpclass(nan inf) %i.mbm, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.mbo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbk, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.mbp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbk, <4 x float> nofpclass(nan inf) %i.mbo, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.mbq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbk, <4 x float> nofpclass(nan inf) %i.mbp, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.mbr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbk, <4 x float> nofpclass(nan inf) %i.mbq, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.mbs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbj, <4 x float> nofpclass(nan inf) %i.mbn, <4 x float> nofpclass(nan inf) %i.mbr)
  %i.mbt = fmul fast <4 x float> %i.mbs, %i.mbi
  %i.mbu = select <4 x i1> %i.mbf, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.mbv = fadd fast <4 x float> %i.mbt, %i.mbu
  %i.mbw = bitcast <4 x float> %i.mbv to <4 x i32>
  %i.mbx = or <4 x i32> %i.mbd, %i.mbw
  %i.mby = bitcast <4 x i32> %i.mbx to <4 x float>
  %i.mbz = fadd fast <4 x float> %i.mba, %i.mby
  %i.mca = bitcast <8 x i16> %i.mav to <4 x i32>
  %i.mcb = and <4 x i32> %i.mca, splat (i32 -2147483648)
  %i.mcc = or disjoint <4 x i32> %i.mcb, splat (i32 1070137344)
  %i.mcd = bitcast <4 x float> %i.mbz to <4 x i32>
  %i.mce = select <4 x i1> %.not77.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.mcd
  %i.mcf = select <4 x i1> %i.lxj, <4 x i32> %i.mcc, <4 x i32> zeroinitializer
  %i.mcg = select <4 x i1> %i.max, <4 x i32> %i.lxm, <4 x i32> %i.mcf
  %i.mch = or <4 x i32> %i.mce, %i.mcg
  %i.mci = lshr <4 x i32> %i.mch, splat (i32 16)
  %i.mcj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mci, <4 x i32> poison)
  %i.mck = bitcast <8 x i16> %i.mcj to <2 x i64>
  %i.mcl = extractelement <2 x i64> %i.mck, i64 0
  store i64 %i.mcl, ptr %.12686.i.i, align 1, !tbaa !60
  %i.mcm = getelementptr inbounds nuw i8, ptr %.188.i.i, i64 8 ; 2 uses
  %i.mcn = getelementptr inbounds nuw i8, ptr %.12686.i.i, i64 8 ; 2 uses
  %i.mco = add nuw nsw i32 %.12387.i.i, 4         ; 3 uses
  %i.mcp = or disjoint i32 %i.mco, 3
  %i.mcq = icmp slt i32 %i.mcp, %i.koc
  br i1 %i.mcq, label %bb.jk, label %.preheader.i59.i, !llvm.loop !875

.lr.ph97.i.i:                                     ; preds = %.lr.ph97.i.i.prol.loopexit, %.lr.ph97.i.i
  %.296.i.i = phi ptr [ %i.mdb, %.lr.ph97.i.i ], [ %.296.i.i.unr, %.lr.ph97.i.i.prol.loopexit ] ; 3 uses
  %.22495.i.i = phi i32 [ %i.mdl, %.lr.ph97.i.i ], [ %.22495.i.i.unr, %.lr.ph97.i.i.prol.loopexit ]
  %.22794.i.i = phi ptr [ %i.mdk, %.lr.ph97.i.i ], [ %.22794.i.i.unr, %.lr.ph97.i.i.prol.loopexit ] ; 3 uses
  %i.mcr = getelementptr inbounds nuw i8, ptr %.296.i.i, i64 2
  %i.mcs = load i16, ptr %.296.i.i, align 2, !tbaa !57
  %i.mct = zext i16 %i.mcs to i32
  %i.mcu = shl nuw i32 %i.mct, 16
  %i.mcv = bitcast i32 %i.mcu to float
  %i.mcw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mcv, float %i.luv)
  %i.mcx = bitcast float %i.mcw to i32
  %i.mcy = lshr i32 %i.mcx, 16
  %i.mcz = trunc nuw i32 %i.mcy to i16
  %i.mda = getelementptr inbounds nuw i8, ptr %.22794.i.i, i64 2
  store i16 %i.mcz, ptr %.22794.i.i, align 2, !tbaa !57
  %i.mdb = getelementptr inbounds nuw i8, ptr %.296.i.i, i64 4
  %i.mdc = load i16, ptr %i.mcr, align 2, !tbaa !57
  %i.mdd = zext i16 %i.mdc to i32
  %i.mde = shl nuw i32 %i.mdd, 16
  %i.mdf = bitcast i32 %i.mde to float
  %i.mdg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mdf, float %i.luv)
  %i.mdh = bitcast float %i.mdg to i32
  %i.mdi = lshr i32 %i.mdh, 16
  %i.mdj = trunc nuw i32 %i.mdi to i16
  %i.mdk = getelementptr inbounds nuw i8, ptr %.22794.i.i, i64 4
  store i16 %i.mdj, ptr %i.mda, align 2, !tbaa !57
  %i.mdl = add nuw nsw i32 %.22495.i.i, 2         ; 2 uses
  %exitcond.not.i62.i.1 = icmp eq i32 %i.mdl, %i.koc
  br i1 %exitcond.not.i62.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph97.i.i, !llvm.loop !876

bb.jl:                                            ; preds = %bb.jh
  %i.mdm = icmp eq i32 %3, 1
  br i1 %i.mdm, label %bb.jm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jm:                                            ; preds = %bb.jl
  switch i32 %.sroa.speculated.i998, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.lr.ph108.i.i
    i32 4, label %.lr.ph.i65.i
  ]

.lr.ph108.i.i:                                    ; preds = %bb.jm
  %i.mdn = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.mdo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mdn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mdp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mdn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mdq = shufflevector <8 x i16> %i.mdo, <8 x i16> %i.mdp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.mdr = bitcast <16 x i16> %i.mdq to <8 x float> ; 3 uses
  %i.mds = fcmp fast ueq <8 x float> %i.mdr, zeroinitializer ; 2 uses
  %i.mdt = fcmp fast olt <8 x float> %i.mdr, zeroinitializer
  %i.mdu = select <8 x i1> %i.mdt, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.mdv = bitcast <16 x i16> %i.mdq to <8 x i32>
  %i.mdw = and <8 x i32> %i.mdv, splat (i32 -2147483648)
  %i.mdx = or disjoint <8 x i32> %i.mdw, splat (i32 1070141403)
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jn, %.lr.ph108.i.i
  %.018107.i.i = phi ptr [ %1, %.lr.ph108.i.i ], [ %i.mfs, %bb.jn ] ; 2 uses
  %.019106.i.i = phi i32 [ 0, %.lr.ph108.i.i ], [ %i.mfu, %bb.jn ]
  %.020105.i.i = phi ptr [ %2, %.lr.ph108.i.i ], [ %i.mft, %bb.jn ] ; 2 uses
  %i.mdy = load i16, ptr %.018107.i.i, align 2, !tbaa !57
  %i.mdz = zext i16 %i.mdy to i32
  %i.mea = shl nuw i32 %i.mdz, 16
  %i.meb = insertelement <8 x i32> poison, i32 %i.mea, i64 0
  %i.mec = bitcast <8 x i32> %i.meb to <8 x float>
  %i.med = shufflevector <8 x float> %i.mec, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.mee = fcmp fast ueq <8 x float> %i.med, zeroinitializer ; 2 uses
  %.not100.i.i = or <8 x i1> %i.mds, %i.mee
  %i.mef = fcmp fast olt <8 x float> %i.med, zeroinitializer
  %i.meg = select <8 x i1> %i.mef, <8 x float> %i.mdu, <8 x float> zeroinitializer
  %i.meh = fdiv fast <8 x float> %i.mdr, %i.med   ; 2 uses
  %i.mei = bitcast <8 x float> %i.meh to <8 x i32>
  %i.mej = and <8 x i32> %i.mei, splat (i32 -2147483648)
  %i.mek = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.meh) ; 3 uses
  %i.mel = fcmp fast ogt <8 x float> %i.mek, splat (float 1.000000e+00) ; 2 uses
  %i.mem = select <8 x i1> %i.mel, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mek
  %i.men = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mek, <8 x float> splat (float 1.000000e+00))
  %i.meo = fdiv fast <8 x float> %i.mem, %i.men   ; 3 uses
  %i.mep = fmul fast <8 x float> %i.meo, %i.meo   ; 3 uses
  %i.meq = fmul fast <8 x float> %i.mep, %i.mep   ; 7 uses
  %i.mer = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.meq, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.mes = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.meq, <8 x float> nofpclass(nan inf) %i.mer, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.met = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.meq, <8 x float> nofpclass(nan inf) %i.mes, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.meu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.meq, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.mev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.meq, <8 x float> nofpclass(nan inf) %i.meu, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.mew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.meq, <8 x float> nofpclass(nan inf) %i.mev, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.mex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.meq, <8 x float> nofpclass(nan inf) %i.mew, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.mey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mep, <8 x float> nofpclass(nan inf) %i.met, <8 x float> nofpclass(nan inf) %i.mex)
  %i.mez = fmul fast <8 x float> %i.mey, %i.meo
  %i.mfa = select <8 x i1> %i.mel, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.mfb = fadd fast <8 x float> %i.mez, %i.mfa
  %i.mfc = bitcast <8 x float> %i.mfb to <8 x i32>
  %i.mfd = or <8 x i32> %i.mej, %i.mfc
  %i.mfe = bitcast <8 x i32> %i.mfd to <8 x float>
  %i.mff = fadd fast <8 x float> %i.meg, %i.mfe
end_hunk_9
begin_hunk_10_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.mqo = getelementptr inbounds nuw i8, ptr %.229134.i.i1091, i64 4
  %i.mqp = load i16, ptr %i.mpz, align 2, !tbaa !57
  %i.mqq = zext i16 %i.mqp to i32
  %i.mqr = shl nuw i32 %i.mqq, 16
  %i.mqs = bitcast i32 %i.mqr to float
  %i.mqt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mqs, float %i.mqn)
  %i.mqu = bitcast float %i.mqt to i32
  %i.mqv = lshr i32 %i.mqu, 16
  %i.mqw = trunc nuw i32 %i.mqv to i16
  %i.mqx = getelementptr inbounds nuw i8, ptr %.232133.i.i1092, i64 4
  store i16 %i.mqw, ptr %i.mqi, align 2, !tbaa !57
  %i.mqy = add nuw nsw i32 %.226135.i.i1090, 2    ; 2 uses
  %exitcond.not.i.i1093.1 = icmp eq i32 %i.mqy, %i.mic
  br i1 %exitcond.not.i.i1093.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i1088, !llvm.loop !883

bb.js:                                            ; preds = %bb.jq
  %i.mqz = icmp eq i32 %4, 1
  br i1 %i.mqz, label %bb.jt, label %bb.ka

bb.jt:                                            ; preds = %bb.js
  %i.mra = load i16, ptr %1, align 2, !tbaa !57
  %i.mrb = zext i16 %i.mra to i32
  %i.mrc = shl nuw i32 %i.mrb, 16
  %i.mrd = bitcast i32 %i.mrc to float            ; 14 uses
  %i.mre = icmp eq i32 %.sroa.speculated.i1023, 4
  br i1 %i.mre, label %.thread.i.i1077, label %bb.ju

.thread.i.i1077:                                  ; preds = %bb.jt
  %i.mrf = load i64, ptr %1, align 2, !tbaa !60
  %i.mrg = insertelement <2 x i64> poison, i64 %i.mrf, i64 0
  %i.mrh = bitcast <2 x i64> %i.mrg to <8 x i16>
  %i.mri = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mrh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mrj = bitcast <8 x i16> %i.mri to <4 x float>
  br label %bb.jw

bb.ju:                                            ; preds = %bb.jt
  %i.mrk = insertelement <4 x float> poison, float %i.mrd, i64 0
  %i.mrl = shufflevector <4 x float> %i.mrk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mrm = icmp eq i32 %.sroa.speculated.i1023, 8
  br i1 %i.mrm, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.mrn = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.mro = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mrn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mrp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mrn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mrq = shufflevector <8 x i16> %i.mro, <8 x i16> %i.mrp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mrr = bitcast <16 x i16> %i.mrq to <8 x float>
  br label %bb.jx

bb.jw:                                            ; preds = %bb.ju, %.thread.i.i1077
  %i.mrs = phi <4 x float> [ %i.mrj, %.thread.i.i1077 ], [ %i.mrl, %bb.ju ] ; 2 uses
  %i.mrt = shufflevector <4 x float> %i.mrs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.mru = phi <4 x float> [ %i.mrl, %bb.jv ], [ %i.mrs, %bb.jw ] ; 4 uses
  %i.mrv = phi fast <8 x float> [ %i.mrr, %bb.jv ], [ %i.mrt, %bb.jw ] ; 4 uses
  %i.mrw = icmp sgt i32 %i.mic, 7
  br i1 %i.mrw, label %.lr.ph.i40.i1073, label %.preheader116.i34.i

.lr.ph.i40.i1073:                                 ; preds = %bb.jx
  %i.mrx = fcmp fast ueq <8 x float> %i.mrv, zeroinitializer ; 2 uses
  %i.mry = bitcast <8 x float> %i.mrv to <8 x i32>
  %i.mrz = and <8 x i32> %i.mry, splat (i32 -2147483648)
  %i.msa = fcmp fast olt <8 x float> %i.mrv, zeroinitializer
  %i.msb = select <8 x i1> %i.msa, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.msc = or disjoint <8 x i32> %i.mrz, splat (i32 1070141403)
  br label %bb.jy

.preheader116.loopexit.i42.i:                     ; preds = %bb.jy
  %i.msd = and i32 %i.mic, 2147483640
  br label %.preheader116.i34.i

.preheader116.i34.i:                              ; preds = %.preheader116.loopexit.i42.i, %bb.jx
  %.028.lcssa.i.i1057 = phi ptr [ %2, %bb.jx ], [ %i.muk, %.preheader116.loopexit.i42.i ] ; 2 uses
  %.025.lcssa.i.i1058 = phi i32 [ 0, %bb.jx ], [ %i.msd, %.preheader116.loopexit.i42.i ] ; 3 uses
  %.0.lcssa.i35.i1059 = phi ptr [ %0, %bb.jx ], [ %i.muj, %.preheader116.loopexit.i42.i ] ; 2 uses
  %i.mse = or disjoint i32 %.025.lcssa.i.i1058, 3
  %i.msf = icmp slt i32 %i.mse, %i.mic
  br i1 %i.msf, label %.lr.ph125.i.i1069, label %.preheader.i36.i1060

.lr.ph125.i.i1069:                                ; preds = %.preheader116.i34.i
  %i.msg = fcmp fast oeq <4 x float> %i.mru, zeroinitializer ; 2 uses
  %i.msh = bitcast <4 x float> %i.mru to <4 x i32>
  %i.msi = and <4 x i32> %i.msh, splat (i32 -2147483648)
  %i.msj = fcmp fast olt <4 x float> %i.mru, zeroinitializer
  %i.msk = select <4 x i1> %i.msj, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.msl = or disjoint <4 x i32> %i.msi, splat (i32 1070137344)
  br label %bb.jz

bb.jy:                                            ; preds = %bb.jy, %.lr.ph.i40.i1073
  %.0119.i.i1074 = phi ptr [ %0, %.lr.ph.i40.i1073 ], [ %i.muj, %bb.jy ] ; 2 uses
  %.025118.i.i1075 = phi i32 [ 0, %.lr.ph.i40.i1073 ], [ %i.mul, %bb.jy ]
  %.028117.i.i1076 = phi ptr [ %2, %.lr.ph.i40.i1073 ], [ %i.muk, %bb.jy ] ; 2 uses
  %i.msm = load <8 x i16>, ptr %.0119.i.i1074, align 1, !tbaa !60 ; 2 uses
  %i.msn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.msm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mso = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.msm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.msp = shufflevector <8 x i16> %i.msn, <8 x i16> %i.mso, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.msq = bitcast <16 x i16> %i.msp to <8 x float> ; 3 uses
  %i.msr = fcmp fast ueq <8 x float> %i.msq, zeroinitializer ; 2 uses
  %.not115.i41.i = or <8 x i1> %i.mrx, %i.msr
  %i.mss = fcmp fast olt <8 x float> %i.msq, zeroinitializer
  %i.mst = select <8 x i1> %i.mss, <8 x float> %i.msb, <8 x float> zeroinitializer
  %i.msu = fdiv fast <8 x float> %i.mrv, %i.msq   ; 2 uses
  %i.msv = bitcast <8 x float> %i.msu to <8 x i32>
  %i.msw = and <8 x i32> %i.msv, splat (i32 -2147483648)
  %i.msx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.msu) ; 3 uses
  %i.msy = fcmp fast ogt <8 x float> %i.msx, splat (float 1.000000e+00) ; 2 uses
  %i.msz = select <8 x i1> %i.msy, <8 x float> splat (float -1.000000e+00), <8 x float> %i.msx
  %i.mta = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.msx, <8 x float> splat (float 1.000000e+00))
  %i.mtb = fdiv fast <8 x float> %i.msz, %i.mta   ; 3 uses
  %i.mtc = fmul fast <8 x float> %i.mtb, %i.mtb   ; 3 uses
  %i.mtd = fmul fast <8 x float> %i.mtc, %i.mtc   ; 7 uses
  %i.mte = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtd, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.mtf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtd, <8 x float> nofpclass(nan inf) %i.mte, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.mtg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtd, <8 x float> nofpclass(nan inf) %i.mtf, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.mth = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtd, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.mti = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtd, <8 x float> nofpclass(nan inf) %i.mth, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.mtj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtd, <8 x float> nofpclass(nan inf) %i.mti, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.mtk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtd, <8 x float> nofpclass(nan inf) %i.mtj, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.mtl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mtc, <8 x float> nofpclass(nan inf) %i.mtg, <8 x float> nofpclass(nan inf) %i.mtk)
  %i.mtm = fmul fast <8 x float> %i.mtl, %i.mtb
  %i.mtn = select <8 x i1> %i.msy, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.mto = fadd fast <8 x float> %i.mtm, %i.mtn
  %i.mtp = bitcast <8 x float> %i.mto to <8 x i32>
  %i.mtq = or <8 x i32> %i.msw, %i.mtp
  %i.mtr = bitcast <8 x i32> %i.mtq to <8 x float>
  %i.mts = fadd fast <8 x float> %i.mst, %i.mtr
  %i.mtt = bitcast <16 x i16> %i.msp to <8 x i32>
  %i.mtu = and <8 x i32> %i.mtt, splat (i32 -2147483648)
  %i.mtv = or disjoint <8 x i32> %i.mtu, splat (i32 1078530011)
  %i.mtw = bitcast <8 x i32> %i.mtv to <8 x float>
  %i.mtx = fcmp fast uge <8 x float> %i.mtw, zeroinitializer
  %i.mty = select <8 x i1> %i.mtx, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.mtz = bitcast <8 x float> %i.mts to <8 x i32>
  %i.mua = select <8 x i1> %.not115.i41.i, <8 x i32> zeroinitializer, <8 x i32> %i.mtz
  %i.mub = select <8 x i1> %i.msr, <8 x i32> %i.msc, <8 x i32> zeroinitializer
  %i.muc = select <8 x i1> %i.mrx, <8 x i32> %i.mty, <8 x i32> %i.mub
  %i.mud = or <8 x i32> %i.mua, %i.muc            ; 2 uses
  %i.mue = shufflevector <8 x i32> %i.mud, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.muf = shufflevector <8 x i32> %i.mud, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mug = lshr <4 x i32> %i.mue, splat (i32 16)
  %i.muh = lshr <4 x i32> %i.muf, splat (i32 16)
  %i.mui = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mug, <4 x i32> %i.muh)
  store <8 x i16> %i.mui, ptr %.028117.i.i1076, align 1, !tbaa !60
  %i.muj = getelementptr inbounds nuw i8, ptr %.0119.i.i1074, i64 16 ; 2 uses
  %i.muk = getelementptr inbounds nuw i8, ptr %.028117.i.i1076, i64 16 ; 2 uses
  %i.mul = add nuw nsw i32 %.025118.i.i1075, 8    ; 2 uses
  %i.mum = or disjoint i32 %i.mul, 7
  %i.mun = icmp slt i32 %i.mum, %i.mic
  br i1 %i.mun, label %bb.jy, label %.preheader116.loopexit.i42.i, !llvm.loop !884

.preheader.i36.i1060:                             ; preds = %bb.jz, %.preheader116.i34.i
  %.129.lcssa.i.i1061 = phi ptr [ %.028.lcssa.i.i1057, %.preheader116.i34.i ], [ %i.mzp, %bb.jz ] ; 6 uses
  %.126.lcssa.i.i1062 = phi i32 [ %.025.lcssa.i.i1058, %.preheader116.i34.i ], [ %i.mzq, %bb.jz ] ; 5 uses
  %.1.lcssa.i37.i1063 = phi ptr [ %.0.lcssa.i35.i1059, %.preheader116.i34.i ], [ %i.mzo, %bb.jz ] ; 6 uses
  %i.muo = icmp slt i32 %.126.lcssa.i.i1062, %i.mic
  br i1 %i.muo, label %iter.check5080, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5080:                                   ; preds = %.preheader.i36.i1060
  %.129.lcssa.i.i10615064 = ptrtoaddr ptr %.129.lcssa.i.i1061 to i64
  %.1.lcssa.i37.i10635063 = ptrtoaddr ptr %.1.lcssa.i37.i1063 to i64
  %i.mup = xor i32 %.126.lcssa.i.i1062, -1
  %i.muq = add i32 %i.mic, %i.mup                 ; 3 uses
  %i.mur = zext i32 %i.muq to i64
  %i.mus = add nuw nsw i64 %i.mur, 1              ; 5 uses
  %min.iters.check5065 = icmp ult i32 %i.muq, 3
  %i.mut = sub i64 %.1.lcssa.i37.i10635063, %.129.lcssa.i.i10615064
  %diff.check5067 = icmp ugt i64 %i.mut, -32
  %or.cond7113 = select i1 %min.iters.check5065, i1 true, i1 %diff.check5067
  br i1 %or.cond7113, label %.lr.ph132.i.i1064.preheader, label %vector.main.loop.iter.check5068

vector.main.loop.iter.check5068:                  ; preds = %iter.check5080
  %min.iters.check5069 = icmp ult i32 %i.muq, 15
  br i1 %min.iters.check5069, label %vec.epilog.ph5084, label %vector.ph5070

vector.ph5070:                                    ; preds = %vector.main.loop.iter.check5068
  %i.muu = and i64 %i.mus, 12
  %n.vec5071 = and i64 %i.mus, 8589934576         ; 5 uses
  %i.muv = shl nuw nsw i64 %n.vec5071, 1          ; 2 uses
  %i.muw = getelementptr i8, ptr %.1.lcssa.i37.i1063, i64 %i.muv
  %i.mux = trunc i64 %n.vec5071 to i32
  %i.muy = add i32 %.126.lcssa.i.i1062, %i.mux
  %i.muz = getelementptr i8, ptr %.129.lcssa.i.i1061, i64 %i.muv
  %i.mva = insertelement <8 x float> poison, float %i.mrd, i64 0
  %i.mvb = shufflevector <8 x float> %i.mva, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mvc = insertelement <4 x float> poison, float %i.mrd, i64 0
  %i.mvd = shufflevector <4 x float> %i.mvc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5072

vector.body5072:                                  ; preds = %vector.ph5070, %vector.body5072
  %index5073 = phi i64 [ 0, %vector.ph5070 ], [ %index.next5077, %vector.body5072 ] ; 2 uses
  %i.mve = shl i64 %index5073, 1                  ; 2 uses
  %next.gep5074 = getelementptr i8, ptr %.1.lcssa.i37.i1063, i64 %i.mve
  %next.gep5075 = getelementptr i8, ptr %.129.lcssa.i.i1061, i64 %i.mve
  %wide.load5076 = load <16 x i16>, ptr %next.gep5074, align 2, !tbaa !57
  %i.mvf = zext <16 x i16> %wide.load5076 to <16 x i32>
  %i.mvg = shl nuw <16 x i32> %i.mvf, splat (i32 16)
  %i.mvh = bitcast <16 x i32> %i.mvg to <16 x float> ; 6 uses
  %i.mvi = extractelement <16 x float> %i.mvh, i64 0
  %i.mvj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mvi)
  %i.mvk = extractelement <16 x float> %i.mvh, i64 1
  %i.mvl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mvk)
  %i.mvm = extractelement <16 x float> %i.mvh, i64 2
  %i.mvn = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mvm)
  %i.mvo = extractelement <16 x float> %i.mvh, i64 3
  %i.mvp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mvo)
  %i.mvq = shufflevector <16 x float> %i.mvh, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mvr = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.mvd, <4 x float> %i.mvq)
  %i.mvs = shufflevector <16 x float> %i.mvh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mvt = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.mvb, <8 x float> %i.mvs)
  %i.mvu = insertelement <16 x float> poison, float %i.mvj, i64 0
  %i.mvv = insertelement <16 x float> %i.mvu, float %i.mvl, i64 1
  %i.mvw = insertelement <16 x float> %i.mvv, float %i.mvn, i64 2
  %i.mvx = insertelement <16 x float> %i.mvw, float %i.mvp, i64 3
  %i.mvy = shufflevector <4 x float> %i.mvr, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mvz = shufflevector <16 x float> %i.mvx, <16 x float> %i.mvy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mwa = shufflevector <8 x float> %i.mvt, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mwb = shufflevector <16 x float> %i.mvz, <16 x float> %i.mwa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.mwc = bitcast <16 x float> %i.mwb to <16 x i32>
  %i.mwd = lshr <16 x i32> %i.mwc, splat (i32 16)
  %i.mwe = trunc nuw <16 x i32> %i.mwd to <16 x i16>
  store <16 x i16> %i.mwe, ptr %next.gep5075, align 2, !tbaa !57
  %index.next5077 = add nuw i64 %index5073, 16    ; 2 uses
  %i.mwf = icmp eq i64 %index.next5077, %n.vec5071
  br i1 %i.mwf, label %middle.block5078, label %vector.body5072, !llvm.loop !885

middle.block5078:                                 ; preds = %vector.body5072
  %cmp.n5079 = icmp eq i64 %i.mus, %n.vec5071
  br i1 %cmp.n5079, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5081

vec.epilog.iter.check5081:                        ; preds = %middle.block5078
  %min.epilog.iters.check5083 = icmp eq i64 %i.muu, 0
  br i1 %min.epilog.iters.check5083, label %.lr.ph132.i.i1064.preheader, label %vec.epilog.ph5084, !prof !64

vec.epilog.ph5084:                                ; preds = %vector.main.loop.iter.check5068, %vec.epilog.iter.check5081
  %vec.epilog.resume.val5085 = phi i64 [ %n.vec5071, %vec.epilog.iter.check5081 ], [ 0, %vector.main.loop.iter.check5068 ]
  %n.vec5086 = and i64 %i.mus, 8589934588         ; 4 uses
  %i.mwg = shl nuw nsw i64 %n.vec5086, 1          ; 2 uses
  %i.mwh = getelementptr i8, ptr %.1.lcssa.i37.i1063, i64 %i.mwg
  %i.mwi = trunc i64 %n.vec5086 to i32
  %i.mwj = add i32 %.126.lcssa.i.i1062, %i.mwi
  %i.mwk = getelementptr i8, ptr %.129.lcssa.i.i1061, i64 %i.mwg
  br label %vec.epilog.vector.body5087

vec.epilog.vector.body5087:                       ; preds = %vec.epilog.vector.body5087, %vec.epilog.ph5084
  %index5088 = phi i64 [ %vec.epilog.resume.val5085, %vec.epilog.ph5084 ], [ %index.next5092, %vec.epilog.vector.body5087 ] ; 2 uses
  %i.mwl = shl i64 %index5088, 1                  ; 2 uses
  %next.gep5089 = getelementptr i8, ptr %.1.lcssa.i37.i1063, i64 %i.mwl
  %next.gep5090 = getelementptr i8, ptr %.129.lcssa.i.i1061, i64 %i.mwl
  %wide.load5091 = load <4 x i16>, ptr %next.gep5089, align 2, !tbaa !57
  %i.mwm = zext <4 x i16> %wide.load5091 to <4 x i32>
  %i.mwn = shl nuw <4 x i32> %i.mwm, splat (i32 16)
  %i.mwo = bitcast <4 x i32> %i.mwn to <4 x float> ; 4 uses
  %i.mwp = extractelement <4 x float> %i.mwo, i64 0
  %i.mwq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mwp)
  %i.mwr = extractelement <4 x float> %i.mwo, i64 1
  %i.mws = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mwr)
  %i.mwt = extractelement <4 x float> %i.mwo, i64 2
  %i.mwu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mwt)
  %i.mwv = extractelement <4 x float> %i.mwo, i64 3
  %i.mww = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mwv)
  %i.mwx = insertelement <4 x float> poison, float %i.mwq, i64 0
  %i.mwy = insertelement <4 x float> %i.mwx, float %i.mws, i64 1
  %i.mwz = insertelement <4 x float> %i.mwy, float %i.mwu, i64 2
  %i.mxa = insertelement <4 x float> %i.mwz, float %i.mww, i64 3
  %i.mxb = bitcast <4 x float> %i.mxa to <4 x i32>
  %i.mxc = lshr <4 x i32> %i.mxb, splat (i32 16)
  %i.mxd = trunc nuw <4 x i32> %i.mxc to <4 x i16>
  store <4 x i16> %i.mxd, ptr %next.gep5090, align 2, !tbaa !57
  %index.next5092 = add nuw i64 %index5088, 4     ; 2 uses
  %i.mxe = icmp eq i64 %index.next5092, %n.vec5086
  br i1 %i.mxe, label %vec.epilog.middle.block5093, label %vec.epilog.vector.body5087, !llvm.loop !886

vec.epilog.middle.block5093:                      ; preds = %vec.epilog.vector.body5087
  %cmp.n5094 = icmp eq i64 %i.mus, %n.vec5086
  br i1 %cmp.n5094, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i1064.preheader

.lr.ph132.i.i1064.preheader:                      ; preds = %iter.check5080, %vec.epilog.iter.check5081, %vec.epilog.middle.block5093
  %.2131.i.i1065.ph = phi ptr [ %.1.lcssa.i37.i1063, %iter.check5080 ], [ %i.muw, %vec.epilog.iter.check5081 ], [ %i.mwh, %vec.epilog.middle.block5093 ] ; 3 uses
  %.227130.i.i1066.ph = phi i32 [ %.126.lcssa.i.i1062, %iter.check5080 ], [ %i.muy, %vec.epilog.iter.check5081 ], [ %i.mwj, %vec.epilog.middle.block5093 ] ; 4 uses
  %.230129.i.i1067.ph = phi ptr [ %.129.lcssa.i.i1061, %iter.check5080 ], [ %i.muz, %vec.epilog.iter.check5081 ], [ %i.mwk, %vec.epilog.middle.block5093 ] ; 3 uses
  %i.mxf = sub i32 %i.mic, %.227130.i.i1066.ph
  %.neg8013 = add i32 %.227130.i.i1066.ph, 1
  %xtraiter7812 = and i32 %i.mxf, 1
  %lcmp.mod7813.not = icmp eq i32 %xtraiter7812, 0
  br i1 %lcmp.mod7813.not, label %.lr.ph132.i.i1064.prol.loopexit, label %.lr.ph132.i.i1064.prol

.lr.ph132.i.i1064.prol:                           ; preds = %.lr.ph132.i.i1064.preheader
  %i.mxg = getelementptr inbounds nuw i8, ptr %.2131.i.i1065.ph, i64 2
  %i.mxh = load i16, ptr %.2131.i.i1065.ph, align 2, !tbaa !57
  %i.mxi = zext i16 %i.mxh to i32
  %i.mxj = shl nuw i32 %i.mxi, 16
  %i.mxk = bitcast i32 %i.mxj to float
  %i.mxl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mxk)
  %i.mxm = bitcast float %i.mxl to i32
  %i.mxn = lshr i32 %i.mxm, 16
  %i.mxo = trunc nuw i32 %i.mxn to i16
  %i.mxp = getelementptr inbounds nuw i8, ptr %.230129.i.i1067.ph, i64 2
  store i16 %i.mxo, ptr %.230129.i.i1067.ph, align 2, !tbaa !57
  %i.mxq = add nuw nsw i32 %.227130.i.i1066.ph, 1
  br label %.lr.ph132.i.i1064.prol.loopexit

.lr.ph132.i.i1064.prol.loopexit:                  ; preds = %.lr.ph132.i.i1064.prol, %.lr.ph132.i.i1064.preheader
  %.2131.i.i1065.unr = phi ptr [ %.2131.i.i1065.ph, %.lr.ph132.i.i1064.preheader ], [ %i.mxg, %.lr.ph132.i.i1064.prol ]
  %.227130.i.i1066.unr = phi i32 [ %.227130.i.i1066.ph, %.lr.ph132.i.i1064.preheader ], [ %i.mxq, %.lr.ph132.i.i1064.prol ]
  %.230129.i.i1067.unr = phi ptr [ %.230129.i.i1067.ph, %.lr.ph132.i.i1064.preheader ], [ %i.mxp, %.lr.ph132.i.i1064.prol ]
  %i.mxr = icmp eq i32 %i.mic, %.neg8013
  br i1 %i.mxr, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i1064

bb.jz:                                            ; preds = %bb.jz, %.lr.ph125.i.i1069
  %.1124.i.i1070 = phi ptr [ %.0.lcssa.i35.i1059, %.lr.ph125.i.i1069 ], [ %i.mzo, %bb.jz ] ; 2 uses
  %.126123.i.i1071 = phi i32 [ %.025.lcssa.i.i1058, %.lr.ph125.i.i1069 ], [ %i.mzq, %bb.jz ]
  %.129122.i.i1072 = phi ptr [ %.028.lcssa.i.i1057, %.lr.ph125.i.i1069 ], [ %i.mzp, %bb.jz ] ; 2 uses
  %i.mxs = load i64, ptr %.1124.i.i1070, align 1, !tbaa !60
  %i.mxt = insertelement <2 x i64> poison, i64 %i.mxs, i64 0
  %i.mxu = bitcast <2 x i64> %i.mxt to <8 x i16>
  %i.mxv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mxu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.mxw = bitcast <8 x i16> %i.mxv to <4 x float> ; 3 uses
  %i.mxx = fcmp fast oeq <4 x float> %i.mxw, zeroinitializer ; 2 uses
  %.not112.i39.i = or <4 x i1> %i.msg, %i.mxx
  %i.mxy = fcmp fast olt <4 x float> %i.mxw, zeroinitializer
  %i.mxz = select <4 x i1> %i.mxy, <4 x float> %i.msk, <4 x float> zeroinitializer
  %i.mya = fdiv fast <4 x float> %i.mru, %i.mxw   ; 2 uses
  %i.myb = bitcast <4 x float> %i.mya to <4 x i32>
  %i.myc = and <4 x i32> %i.myb, splat (i32 -2147483648)
  %i.myd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mya) ; 3 uses
  %i.mye = fcmp fast ogt <4 x float> %i.myd, splat (float 1.000000e+00) ; 2 uses
  %i.myf = select <4 x i1> %i.mye, <4 x float> splat (float -1.000000e+00), <4 x float> %i.myd
  %i.myg = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.myd, <4 x float> splat (float 1.000000e+00))
  %i.myh = fdiv fast <4 x float> %i.myf, %i.myg   ; 3 uses
  %i.myi = fmul fast <4 x float> %i.myh, %i.myh   ; 3 uses
  %i.myj = fmul fast <4 x float> %i.myi, %i.myi   ; 7 uses
  %i.myk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.myl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) %i.myk, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.mym = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) %i.myl, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.myn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.myo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) %i.myn, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.myp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) %i.myo, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.myq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) %i.myp, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.myr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myi, <4 x float> nofpclass(nan inf) %i.mym, <4 x float> nofpclass(nan inf) %i.myq)
  %i.mys = fmul fast <4 x float> %i.myr, %i.myh
  %i.myt = select <4 x i1> %i.mye, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.myu = fadd fast <4 x float> %i.mys, %i.myt
  %i.myv = bitcast <4 x float> %i.myu to <4 x i32>
  %i.myw = or <4 x i32> %i.myc, %i.myv
  %i.myx = bitcast <4 x i32> %i.myw to <4 x float>
  %i.myy = fadd fast <4 x float> %i.mxz, %i.myx
  %i.myz = bitcast <8 x i16> %i.mxv to <4 x i32>
  %i.mza = and <4 x i32> %i.myz, splat (i32 -2147483648)
  %i.mzb = or disjoint <4 x i32> %i.mza, splat (i32 1078530011)
  %i.mzc = bitcast <4 x i32> %i.mzb to <4 x float>
  %i.mzd = fcmp fast uge <4 x float> %i.mzc, zeroinitializer
  %i.mze = select <4 x i1> %i.mzd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.mzf = bitcast <4 x float> %i.myy to <4 x i32>
  %i.mzg = select <4 x i1> %.not112.i39.i, <4 x i32> zeroinitializer, <4 x i32> %i.mzf
  %i.mzh = select <4 x i1> %i.mxx, <4 x i32> %i.msl, <4 x i32> zeroinitializer
  %i.mzi = select <4 x i1> %i.msg, <4 x i32> %i.mze, <4 x i32> %i.mzh
  %i.mzj = or <4 x i32> %i.mzg, %i.mzi
  %i.mzk = lshr <4 x i32> %i.mzj, splat (i32 16)
  %i.mzl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mzk, <4 x i32> poison)
  %i.mzm = bitcast <8 x i16> %i.mzl to <2 x i64>
  %i.mzn = extractelement <2 x i64> %i.mzm, i64 0
  store i64 %i.mzn, ptr %.129122.i.i1072, align 1, !tbaa !60
  %i.mzo = getelementptr inbounds nuw i8, ptr %.1124.i.i1070, i64 8 ; 2 uses
  %i.mzp = getelementptr inbounds nuw i8, ptr %.129122.i.i1072, i64 8 ; 2 uses
  %i.mzq = add nuw nsw i32 %.126123.i.i1071, 4    ; 3 uses
  %i.mzr = or disjoint i32 %i.mzq, 3
  %i.mzs = icmp slt i32 %i.mzr, %i.mic
  br i1 %i.mzs, label %bb.jz, label %.preheader.i36.i1060, !llvm.loop !887

.lr.ph132.i.i1064:                                ; preds = %.lr.ph132.i.i1064.prol.loopexit, %.lr.ph132.i.i1064
  %.2131.i.i1065 = phi ptr [ %i.nad, %.lr.ph132.i.i1064 ], [ %.2131.i.i1065.unr, %.lr.ph132.i.i1064.prol.loopexit ] ; 3 uses
  %.227130.i.i1066 = phi i32 [ %i.nan, %.lr.ph132.i.i1064 ], [ %.227130.i.i1066.unr, %.lr.ph132.i.i1064.prol.loopexit ]
  %.230129.i.i1067 = phi ptr [ %i.nam, %.lr.ph132.i.i1064 ], [ %.230129.i.i1067.unr, %.lr.ph132.i.i1064.prol.loopexit ] ; 3 uses
  %i.mzt = getelementptr inbounds nuw i8, ptr %.2131.i.i1065, i64 2
  %i.mzu = load i16, ptr %.2131.i.i1065, align 2, !tbaa !57
  %i.mzv = zext i16 %i.mzu to i32
  %i.mzw = shl nuw i32 %i.mzv, 16
  %i.mzx = bitcast i32 %i.mzw to float
  %i.mzy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.mzx)
  %i.mzz = bitcast float %i.mzy to i32
  %i.naa = lshr i32 %i.mzz, 16
  %i.nab = trunc nuw i32 %i.naa to i16
  %i.nac = getelementptr inbounds nuw i8, ptr %.230129.i.i1067, i64 2
  store i16 %i.nab, ptr %.230129.i.i1067, align 2, !tbaa !57
  %i.nad = getelementptr inbounds nuw i8, ptr %.2131.i.i1065, i64 4
  %i.nae = load i16, ptr %i.mzt, align 2, !tbaa !57
  %i.naf = zext i16 %i.nae to i32
  %i.nag = shl nuw i32 %i.naf, 16
  %i.nah = bitcast i32 %i.nag to float
  %i.nai = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mrd, float %i.nah)
  %i.naj = bitcast float %i.nai to i32
  %i.nak = lshr i32 %i.naj, 16
  %i.nal = trunc nuw i32 %i.nak to i16
  %i.nam = getelementptr inbounds nuw i8, ptr %.230129.i.i1067, i64 4
  store i16 %i.nal, ptr %i.nac, align 2, !tbaa !57
  %i.nan = add nuw nsw i32 %.227130.i.i1066, 2    ; 2 uses
  %exitcond.not.i38.i1068.1 = icmp eq i32 %i.nan, %i.mic
  br i1 %exitcond.not.i38.i1068.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i1064, !llvm.loop !888

bb.ka:                                            ; preds = %bb.js
  %i.nao = icmp eq i32 %3, 1
  br i1 %i.nao, label %bb.kb, label %bb.ki

bb.kb:                                            ; preds = %bb.ka
  %i.nap = load i16, ptr %0, align 2, !tbaa !57
  %i.naq = zext i16 %i.nap to i32
  %i.nar = shl nuw i32 %i.naq, 16
  %i.nas = bitcast i32 %i.nar to float            ; 14 uses
  %i.nat = icmp eq i32 %.sroa.speculated.i1023, 4
  br i1 %i.nat, label %.thread.i52.i1056, label %bb.kc

.thread.i52.i1056:                                ; preds = %bb.kb
  %i.nau = load i64, ptr %0, align 2, !tbaa !60
  %i.nav = insertelement <2 x i64> poison, i64 %i.nau, i64 0
  %i.naw = bitcast <2 x i64> %i.nav to <8 x i16>
  %i.nax = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.naw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nay = bitcast <8 x i16> %i.nax to <4 x float>
  br label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  %i.naz = insertelement <4 x float> poison, float %i.nas, i64 0
  %i.nba = shufflevector <4 x float> %i.naz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nbb = icmp eq i32 %.sroa.speculated.i1023, 8
  br i1 %i.nbb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.nbc = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.nbd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nbc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nbe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nbc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nbf = shufflevector <8 x i16> %i.nbd, <8 x i16> %i.nbe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nbg = bitcast <16 x i16> %i.nbf to <8 x float>
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kc, %.thread.i52.i1056
  %i.nbh = phi <4 x float> [ %i.nay, %.thread.i52.i1056 ], [ %i.nba, %bb.kc ] ; 2 uses
  %i.nbi = shufflevector <4 x float> %i.nbh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %i.nbj = phi <4 x float> [ %i.nba, %bb.kd ], [ %i.nbh, %bb.ke ] ; 4 uses
  %i.nbk = phi fast <8 x float> [ %i.nbg, %bb.kd ], [ %i.nbi, %bb.ke ] ; 4 uses
  %i.nbl = icmp sgt i32 %i.mic, 7
  br i1 %i.nbl, label %.lr.ph.i51.i, label %.preheader115.i.i1032

.lr.ph.i51.i:                                     ; preds = %bb.kf
  %i.nbm = fcmp fast ueq <8 x float> %i.nbk, zeroinitializer ; 2 uses
  %i.nbn = fcmp fast olt <8 x float> %i.nbk, zeroinitializer
  %i.nbo = bitcast <8 x float> %i.nbk to <8 x i32>
  %isneg.inv112.i.i1050 = icmp slt <8 x i32> %i.nbo, zeroinitializer
  %i.nbp = select <8 x i1> %isneg.inv112.i.i1050, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.nbq = fdiv fast <8 x float> splat (float 1.000000e+00), %i.nbk
  br label %bb.kg

.preheader115.loopexit.i.i1055:                   ; preds = %bb.kg
  %i.nbr = and i32 %i.mic, 2147483640
  br label %.preheader115.i.i1032

.preheader115.i.i1032:                            ; preds = %.preheader115.loopexit.i.i1055, %bb.kf
  %.028.lcssa.i43.i1033 = phi ptr [ %2, %bb.kf ], [ %i.ndv, %.preheader115.loopexit.i.i1055 ] ; 2 uses
  %.025.lcssa.i44.i1034 = phi i32 [ 0, %bb.kf ], [ %i.nbr, %.preheader115.loopexit.i.i1055 ] ; 3 uses
  %.0.lcssa.i45.i1035 = phi ptr [ %1, %bb.kf ], [ %i.ndu, %.preheader115.loopexit.i.i1055 ] ; 2 uses
  %i.nbs = or disjoint i32 %.025.lcssa.i44.i1034, 3
  %i.nbt = icmp slt i32 %i.nbs, %i.mic
  br i1 %i.nbt, label %.lr.ph124.i.i1044, label %.preheader.i46.i1036

.lr.ph124.i.i1044:                                ; preds = %.preheader115.i.i1032
  %i.nbu = fcmp fast oeq <4 x float> %i.nbj, zeroinitializer ; 2 uses
  %i.nbv = fcmp fast olt <4 x float> %i.nbj, zeroinitializer
  %i.nbw = bitcast <4 x float> %i.nbj to <4 x i32>
  %isneg.inv.i.i1045 = icmp slt <4 x i32> %i.nbw, zeroinitializer
  %i.nbx = select <4 x i1> %isneg.inv.i.i1045, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.nby = fdiv fast <4 x float> splat (float 1.000000e+00), %i.nbj
  br label %bb.kh

bb.kg:                                            ; preds = %bb.kg, %.lr.ph.i51.i
  %.0118.i.i1051 = phi ptr [ %1, %.lr.ph.i51.i ], [ %i.ndu, %bb.kg ] ; 2 uses
  %.025117.i.i1052 = phi i32 [ 0, %.lr.ph.i51.i ], [ %i.ndw, %bb.kg ]
  %.028116.i.i1053 = phi ptr [ %2, %.lr.ph.i51.i ], [ %i.ndv, %bb.kg ] ; 2 uses
  %i.nbz = load <8 x i16>, ptr %.0118.i.i1051, align 1, !tbaa !60 ; 2 uses
  %i.nca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nbz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ncb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nbz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ncc = shufflevector <8 x i16> %i.nca, <8 x i16> %i.ncb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ncd = bitcast <16 x i16> %i.ncc to <8 x float> ; 3 uses
  %i.nce = fcmp fast ueq <8 x float> %i.ncd, zeroinitializer ; 2 uses
  %.not114.i.i1054 = or <8 x i1> %i.nbm, %i.nce
  %i.ncf = fcmp fast olt <8 x float> %i.ncd, zeroinitializer
  %i.ncg = select <8 x i1> %i.ncf, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nch = select <8 x i1> %i.nbn, <8 x float> %i.ncg, <8 x float> zeroinitializer
  %i.nci = fmul fast <8 x float> %i.ncd, %i.nbq   ; 2 uses
  %i.ncj = bitcast <8 x float> %i.nci to <8 x i32>
  %i.nck = and <8 x i32> %i.ncj, splat (i32 -2147483648)
  %i.ncl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nci) ; 3 uses
  %i.ncm = fcmp fast ogt <8 x float> %i.ncl, splat (float 1.000000e+00) ; 2 uses
  %i.ncn = select <8 x i1> %i.ncm, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ncl
  %i.nco = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ncl, <8 x float> splat (float 1.000000e+00))
  %i.ncp = fdiv fast <8 x float> %i.ncn, %i.nco   ; 3 uses
  %i.ncq = fmul fast <8 x float> %i.ncp, %i.ncp   ; 3 uses
  %i.ncr = fmul fast <8 x float> %i.ncq, %i.ncq   ; 7 uses
  %i.ncs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncr, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nct = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncr, <8 x float> nofpclass(nan inf) %i.ncs, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ncu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncr, <8 x float> nofpclass(nan inf) %i.nct, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ncv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncr, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ncw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncr, <8 x float> nofpclass(nan inf) %i.ncv, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ncx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncr, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ncy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncr, <8 x float> nofpclass(nan inf) %i.ncx, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ncz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncq, <8 x float> nofpclass(nan inf) %i.ncu, <8 x float> nofpclass(nan inf) %i.ncy)
  %i.nda = fmul fast <8 x float> %i.ncz, %i.ncp
  %i.ndb = select <8 x i1> %i.ncm, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ndc = fadd fast <8 x float> %i.nda, %i.ndb
  %i.ndd = bitcast <8 x float> %i.ndc to <8 x i32>
  %i.nde = or <8 x i32> %i.nck, %i.ndd
  %i.ndf = bitcast <8 x i32> %i.nde to <8 x float>
  %i.ndg = fadd fast <8 x float> %i.nch, %i.ndf
  %i.ndh = bitcast <16 x i16> %i.ncc to <8 x i32>
  %i.ndi = and <8 x i32> %i.ndh, splat (i32 -2147483648)
  %i.ndj = or disjoint <8 x i32> %i.ndi, splat (i32 1070141403)
  %i.ndk = bitcast <8 x float> %i.ndg to <8 x i32>
  %i.ndl = select <8 x i1> %.not114.i.i1054, <8 x i32> zeroinitializer, <8 x i32> %i.ndk
  %i.ndm = select <8 x i1> %i.nbm, <8 x i32> %i.ndj, <8 x i32> zeroinitializer
  %i.ndn = select <8 x i1> %i.nce, <8 x i32> %i.nbp, <8 x i32> %i.ndm
  %i.ndo = or <8 x i32> %i.ndl, %i.ndn            ; 2 uses
  %i.ndp = shufflevector <8 x i32> %i.ndo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ndq = shufflevector <8 x i32> %i.ndo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ndr = lshr <4 x i32> %i.ndp, splat (i32 16)
  %i.nds = lshr <4 x i32> %i.ndq, splat (i32 16)
  %i.ndt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ndr, <4 x i32> %i.nds)
  store <8 x i16> %i.ndt, ptr %.028116.i.i1053, align 1, !tbaa !60
  %i.ndu = getelementptr inbounds nuw i8, ptr %.0118.i.i1051, i64 16 ; 2 uses
  %i.ndv = getelementptr inbounds nuw i8, ptr %.028116.i.i1053, i64 16 ; 2 uses
  %i.ndw = add nuw nsw i32 %.025117.i.i1052, 8    ; 2 uses
  %i.ndx = or disjoint i32 %i.ndw, 7
  %i.ndy = icmp slt i32 %i.ndx, %i.mic
  br i1 %i.ndy, label %bb.kg, label %.preheader115.loopexit.i.i1055, !llvm.loop !889

.preheader.i46.i1036:                             ; preds = %bb.kh, %.preheader115.i.i1032
  %.129.lcssa.i47.i1037 = phi ptr [ %.028.lcssa.i43.i1033, %.preheader115.i.i1032 ], [ %i.niy, %bb.kh ] ; 6 uses
  %.126.lcssa.i48.i1038 = phi i32 [ %.025.lcssa.i44.i1034, %.preheader115.i.i1032 ], [ %i.niz, %bb.kh ] ; 5 uses
  %.1.lcssa.i49.i1039 = phi ptr [ %.0.lcssa.i45.i1035, %.preheader115.i.i1032 ], [ %i.nix, %bb.kh ] ; 6 uses
  %i.ndz = icmp slt i32 %.126.lcssa.i48.i1038, %i.mic
  br i1 %i.ndz, label %iter.check5041, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5041:                                   ; preds = %.preheader.i46.i1036
  %.129.lcssa.i47.i10375025 = ptrtoaddr ptr %.129.lcssa.i47.i1037 to i64
  %.1.lcssa.i49.i10395024 = ptrtoaddr ptr %.1.lcssa.i49.i1039 to i64
  %i.nea = xor i32 %.126.lcssa.i48.i1038, -1
  %i.neb = add i32 %i.mic, %i.nea                 ; 3 uses
  %i.nec = zext i32 %i.neb to i64
  %i.ned = add nuw nsw i64 %i.nec, 1              ; 5 uses
  %min.iters.check5026 = icmp ult i32 %i.neb, 3
  %i.nee = sub i64 %.1.lcssa.i49.i10395024, %.129.lcssa.i47.i10375025
  %diff.check5028 = icmp ugt i64 %i.nee, -32
  %or.cond7114 = select i1 %min.iters.check5026, i1 true, i1 %diff.check5028
  br i1 %or.cond7114, label %.lr.ph131.i.i1040.preheader, label %vector.main.loop.iter.check5029

vector.main.loop.iter.check5029:                  ; preds = %iter.check5041
  %min.iters.check5030 = icmp ult i32 %i.neb, 15
  br i1 %min.iters.check5030, label %vec.epilog.ph5045, label %vector.ph5031

vector.ph5031:                                    ; preds = %vector.main.loop.iter.check5029
  %i.nef = and i64 %i.ned, 12
  %n.vec5032 = and i64 %i.ned, 8589934576         ; 5 uses
  %i.neg = shl nuw nsw i64 %n.vec5032, 1          ; 2 uses
  %i.neh = getelementptr i8, ptr %.1.lcssa.i49.i1039, i64 %i.neg
  %i.nei = trunc i64 %n.vec5032 to i32
  %i.nej = add i32 %.126.lcssa.i48.i1038, %i.nei
  %i.nek = getelementptr i8, ptr %.129.lcssa.i47.i1037, i64 %i.neg
  %i.nel = insertelement <8 x float> poison, float %i.nas, i64 0
  %i.nem = shufflevector <8 x float> %i.nel, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nen = insertelement <4 x float> poison, float %i.nas, i64 0
  %i.neo = shufflevector <4 x float> %i.nen, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5033

vector.body5033:                                  ; preds = %vector.ph5031, %vector.body5033
  %index5034 = phi i64 [ 0, %vector.ph5031 ], [ %index.next5038, %vector.body5033 ] ; 2 uses
  %i.nep = shl i64 %index5034, 1                  ; 2 uses
  %next.gep5035 = getelementptr i8, ptr %.1.lcssa.i49.i1039, i64 %i.nep
  %next.gep5036 = getelementptr i8, ptr %.129.lcssa.i47.i1037, i64 %i.nep
  %wide.load5037 = load <16 x i16>, ptr %next.gep5035, align 2, !tbaa !57
  %i.neq = zext <16 x i16> %wide.load5037 to <16 x i32>
  %i.ner = shl nuw <16 x i32> %i.neq, splat (i32 16)
  %i.nes = bitcast <16 x i32> %i.ner to <16 x float> ; 6 uses
  %i.net = extractelement <16 x float> %i.nes, i64 0
  %i.neu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.net, float %i.nas)
  %i.nev = extractelement <16 x float> %i.nes, i64 1
  %i.new = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nev, float %i.nas)
  %i.nex = extractelement <16 x float> %i.nes, i64 2
  %i.ney = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nex, float %i.nas)
  %i.nez = extractelement <16 x float> %i.nes, i64 3
  %i.nfa = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nez, float %i.nas)
  %i.nfb = shufflevector <16 x float> %i.nes, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nfc = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.nfb, <4 x float> %i.neo)
  %i.nfd = shufflevector <16 x float> %i.nes, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nfe = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.nfd, <8 x float> %i.nem)
  %i.nff = insertelement <16 x float> poison, float %i.neu, i64 0
  %i.nfg = insertelement <16 x float> %i.nff, float %i.new, i64 1
  %i.nfh = insertelement <16 x float> %i.nfg, float %i.ney, i64 2
  %i.nfi = insertelement <16 x float> %i.nfh, float %i.nfa, i64 3
  %i.nfj = shufflevector <4 x float> %i.nfc, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nfk = shufflevector <16 x float> %i.nfi, <16 x float> %i.nfj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nfl = shufflevector <8 x float> %i.nfe, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nfm = shufflevector <16 x float> %i.nfk, <16 x float> %i.nfl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.nfn = bitcast <16 x float> %i.nfm to <16 x i32>
  %i.nfo = lshr <16 x i32> %i.nfn, splat (i32 16)
  %i.nfp = trunc nuw <16 x i32> %i.nfo to <16 x i16>
  store <16 x i16> %i.nfp, ptr %next.gep5036, align 2, !tbaa !57
  %index.next5038 = add nuw i64 %index5034, 16    ; 2 uses
  %i.nfq = icmp eq i64 %index.next5038, %n.vec5032
  br i1 %i.nfq, label %middle.block5039, label %vector.body5033, !llvm.loop !890

middle.block5039:                                 ; preds = %vector.body5033
  %cmp.n5040 = icmp eq i64 %i.ned, %n.vec5032
  br i1 %cmp.n5040, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5042

vec.epilog.iter.check5042:                        ; preds = %middle.block5039
  %min.epilog.iters.check5044 = icmp eq i64 %i.nef, 0
  br i1 %min.epilog.iters.check5044, label %.lr.ph131.i.i1040.preheader, label %vec.epilog.ph5045, !prof !64

vec.epilog.ph5045:                                ; preds = %vector.main.loop.iter.check5029, %vec.epilog.iter.check5042
  %vec.epilog.resume.val5046 = phi i64 [ %n.vec5032, %vec.epilog.iter.check5042 ], [ 0, %vector.main.loop.iter.check5029 ]
  %n.vec5047 = and i64 %i.ned, 8589934588         ; 4 uses
  %i.nfr = shl nuw nsw i64 %n.vec5047, 1          ; 2 uses
  %i.nfs = getelementptr i8, ptr %.1.lcssa.i49.i1039, i64 %i.nfr
  %i.nft = trunc i64 %n.vec5047 to i32
  %i.nfu = add i32 %.126.lcssa.i48.i1038, %i.nft
  %i.nfv = getelementptr i8, ptr %.129.lcssa.i47.i1037, i64 %i.nfr
  br label %vec.epilog.vector.body5048

vec.epilog.vector.body5048:                       ; preds = %vec.epilog.vector.body5048, %vec.epilog.ph5045
  %index5049 = phi i64 [ %vec.epilog.resume.val5046, %vec.epilog.ph5045 ], [ %index.next5053, %vec.epilog.vector.body5048 ] ; 2 uses
  %i.nfw = shl i64 %index5049, 1                  ; 2 uses
  %next.gep5050 = getelementptr i8, ptr %.1.lcssa.i49.i1039, i64 %i.nfw
  %next.gep5051 = getelementptr i8, ptr %.129.lcssa.i47.i1037, i64 %i.nfw
  %wide.load5052 = load <4 x i16>, ptr %next.gep5050, align 2, !tbaa !57
  %i.nfx = zext <4 x i16> %wide.load5052 to <4 x i32>
  %i.nfy = shl nuw <4 x i32> %i.nfx, splat (i32 16)
  %i.nfz = bitcast <4 x i32> %i.nfy to <4 x float> ; 4 uses
  %i.nga = extractelement <4 x float> %i.nfz, i64 0
  %i.ngb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nga, float %i.nas)
  %i.ngc = extractelement <4 x float> %i.nfz, i64 1
  %i.ngd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ngc, float %i.nas)
  %i.nge = extractelement <4 x float> %i.nfz, i64 2
  %i.ngf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nge, float %i.nas)
  %i.ngg = extractelement <4 x float> %i.nfz, i64 3
  %i.ngh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ngg, float %i.nas)
  %i.ngi = insertelement <4 x float> poison, float %i.ngb, i64 0
  %i.ngj = insertelement <4 x float> %i.ngi, float %i.ngd, i64 1
  %i.ngk = insertelement <4 x float> %i.ngj, float %i.ngf, i64 2
  %i.ngl = insertelement <4 x float> %i.ngk, float %i.ngh, i64 3
  %i.ngm = bitcast <4 x float> %i.ngl to <4 x i32>
  %i.ngn = lshr <4 x i32> %i.ngm, splat (i32 16)
  %i.ngo = trunc nuw <4 x i32> %i.ngn to <4 x i16>
  store <4 x i16> %i.ngo, ptr %next.gep5051, align 2, !tbaa !57
  %index.next5053 = add nuw i64 %index5049, 4     ; 2 uses
  %i.ngp = icmp eq i64 %index.next5053, %n.vec5047
  br i1 %i.ngp, label %vec.epilog.middle.block5054, label %vec.epilog.vector.body5048, !llvm.loop !891

vec.epilog.middle.block5054:                      ; preds = %vec.epilog.vector.body5048
  %cmp.n5055 = icmp eq i64 %i.ned, %n.vec5047
  br i1 %cmp.n5055, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i1040.preheader

.lr.ph131.i.i1040.preheader:                      ; preds = %iter.check5041, %vec.epilog.iter.check5042, %vec.epilog.middle.block5054
  %.2130.i.i1041.ph = phi ptr [ %.1.lcssa.i49.i1039, %iter.check5041 ], [ %i.neh, %vec.epilog.iter.check5042 ], [ %i.nfs, %vec.epilog.middle.block5054 ] ; 3 uses
  %.227129.i.i1042.ph = phi i32 [ %.126.lcssa.i48.i1038, %iter.check5041 ], [ %i.nej, %vec.epilog.iter.check5042 ], [ %i.nfu, %vec.epilog.middle.block5054 ] ; 4 uses
  %.230128.i.i1043.ph = phi ptr [ %.129.lcssa.i47.i1037, %iter.check5041 ], [ %i.nek, %vec.epilog.iter.check5042 ], [ %i.nfv, %vec.epilog.middle.block5054 ] ; 3 uses
  %i.ngq = sub i32 %i.mic, %.227129.i.i1042.ph
  %.neg8012 = add i32 %.227129.i.i1042.ph, 1
  %xtraiter7810 = and i32 %i.ngq, 1
  %lcmp.mod7811.not = icmp eq i32 %xtraiter7810, 0
  br i1 %lcmp.mod7811.not, label %.lr.ph131.i.i1040.prol.loopexit, label %.lr.ph131.i.i1040.prol

.lr.ph131.i.i1040.prol:                           ; preds = %.lr.ph131.i.i1040.preheader
  %i.ngr = getelementptr inbounds nuw i8, ptr %.2130.i.i1041.ph, i64 2
  %i.ngs = load i16, ptr %.2130.i.i1041.ph, align 2, !tbaa !57
  %i.ngt = zext i16 %i.ngs to i32
  %i.ngu = shl nuw i32 %i.ngt, 16
  %i.ngv = bitcast i32 %i.ngu to float
  %i.ngw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ngv, float %i.nas)
  %i.ngx = bitcast float %i.ngw to i32
  %i.ngy = lshr i32 %i.ngx, 16
  %i.ngz = trunc nuw i32 %i.ngy to i16
  %i.nha = getelementptr inbounds nuw i8, ptr %.230128.i.i1043.ph, i64 2
  store i16 %i.ngz, ptr %.230128.i.i1043.ph, align 2, !tbaa !57
  %i.nhb = add nuw nsw i32 %.227129.i.i1042.ph, 1
  br label %.lr.ph131.i.i1040.prol.loopexit

.lr.ph131.i.i1040.prol.loopexit:                  ; preds = %.lr.ph131.i.i1040.prol, %.lr.ph131.i.i1040.preheader
  %.2130.i.i1041.unr = phi ptr [ %.2130.i.i1041.ph, %.lr.ph131.i.i1040.preheader ], [ %i.ngr, %.lr.ph131.i.i1040.prol ]
  %.227129.i.i1042.unr = phi i32 [ %.227129.i.i1042.ph, %.lr.ph131.i.i1040.preheader ], [ %i.nhb, %.lr.ph131.i.i1040.prol ]
  %.230128.i.i1043.unr = phi ptr [ %.230128.i.i1043.ph, %.lr.ph131.i.i1040.preheader ], [ %i.nha, %.lr.ph131.i.i1040.prol ]
  %i.nhc = icmp eq i32 %i.mic, %.neg8012
  br i1 %i.nhc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i1040

bb.kh:                                            ; preds = %bb.kh, %.lr.ph124.i.i1044
  %.1123.i.i1046 = phi ptr [ %.0.lcssa.i45.i1035, %.lr.ph124.i.i1044 ], [ %i.nix, %bb.kh ] ; 2 uses
  %.126122.i.i1047 = phi i32 [ %.025.lcssa.i44.i1034, %.lr.ph124.i.i1044 ], [ %i.niz, %bb.kh ]
  %.129121.i.i1048 = phi ptr [ %.028.lcssa.i43.i1033, %.lr.ph124.i.i1044 ], [ %i.niy, %bb.kh ] ; 2 uses
  %i.nhd = load i64, ptr %.1123.i.i1046, align 1, !tbaa !60
  %i.nhe = insertelement <2 x i64> poison, i64 %i.nhd, i64 0
  %i.nhf = bitcast <2 x i64> %i.nhe to <8 x i16>
  %i.nhg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nhf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.nhh = bitcast <8 x i16> %i.nhg to <4 x float> ; 3 uses
  %i.nhi = fcmp fast oeq <4 x float> %i.nhh, zeroinitializer ; 2 uses
  %.not111.i.i1049 = or <4 x i1> %i.nbu, %i.nhi
  %i.nhj = fcmp fast olt <4 x float> %i.nhh, zeroinitializer
  %i.nhk = select <4 x i1> %i.nhj, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.nhl = select <4 x i1> %i.nbv, <4 x float> %i.nhk, <4 x float> zeroinitializer
  %i.nhm = fmul fast <4 x float> %i.nhh, %i.nby   ; 2 uses
  %i.nhn = bitcast <4 x float> %i.nhm to <4 x i32>
  %i.nho = and <4 x i32> %i.nhn, splat (i32 -2147483648)
  %i.nhp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nhm) ; 3 uses
  %i.nhq = fcmp fast ogt <4 x float> %i.nhp, splat (float 1.000000e+00) ; 2 uses
  %i.nhr = select <4 x i1> %i.nhq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.nhp
  %i.nhs = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nhp, <4 x float> splat (float 1.000000e+00))
  %i.nht = fdiv fast <4 x float> %i.nhr, %i.nhs   ; 3 uses
  %i.nhu = fmul fast <4 x float> %i.nht, %i.nht   ; 3 uses
  %i.nhv = fmul fast <4 x float> %i.nhu, %i.nhu   ; 7 uses
  %i.nhw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nhx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) %i.nhw, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nhy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) %i.nhx, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nhz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) %i.nhz, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nib = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) %i.nia, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nic = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) %i.nib, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.nid = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhu, <4 x float> nofpclass(nan inf) %i.nhy, <4 x float> nofpclass(nan inf) %i.nic)
  %i.nie = fmul fast <4 x float> %i.nid, %i.nht
  %i.nif = select <4 x i1> %i.nhq, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.nig = fadd fast <4 x float> %i.nie, %i.nif
  %i.nih = bitcast <4 x float> %i.nig to <4 x i32>
  %i.nii = or <4 x i32> %i.nho, %i.nih
  %i.nij = bitcast <4 x i32> %i.nii to <4 x float>
  %i.nik = fadd fast <4 x float> %i.nhl, %i.nij
  %i.nil = bitcast <8 x i16> %i.nhg to <4 x i32>
  %i.nim = and <4 x i32> %i.nil, splat (i32 -2147483648)
  %i.nin = or disjoint <4 x i32> %i.nim, splat (i32 1070137344)
  %i.nio = bitcast <4 x float> %i.nik to <4 x i32>
  %i.nip = select <4 x i1> %.not111.i.i1049, <4 x i32> zeroinitializer, <4 x i32> %i.nio
  %i.niq = select <4 x i1> %i.nbu, <4 x i32> %i.nin, <4 x i32> zeroinitializer
  %i.nir = select <4 x i1> %i.nhi, <4 x i32> %i.nbx, <4 x i32> %i.niq
  %i.nis = or <4 x i32> %i.nip, %i.nir
  %i.nit = lshr <4 x i32> %i.nis, splat (i32 16)
  %i.niu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nit, <4 x i32> poison)
  %i.niv = bitcast <8 x i16> %i.niu to <2 x i64>
  %i.niw = extractelement <2 x i64> %i.niv, i64 0
  store i64 %i.niw, ptr %.129121.i.i1048, align 1, !tbaa !60
  %i.nix = getelementptr inbounds nuw i8, ptr %.1123.i.i1046, i64 8 ; 2 uses
  %i.niy = getelementptr inbounds nuw i8, ptr %.129121.i.i1048, i64 8 ; 2 uses
  %i.niz = add nuw nsw i32 %.126122.i.i1047, 4    ; 3 uses
  %i.nja = or disjoint i32 %i.niz, 3
  %i.njb = icmp slt i32 %i.nja, %i.mic
  br i1 %i.njb, label %bb.kh, label %.preheader.i46.i1036, !llvm.loop !892

.lr.ph131.i.i1040:                                ; preds = %.lr.ph131.i.i1040.prol.loopexit, %.lr.ph131.i.i1040
  %.2130.i.i1041 = phi ptr [ %i.njm, %.lr.ph131.i.i1040 ], [ %.2130.i.i1041.unr, %.lr.ph131.i.i1040.prol.loopexit ] ; 3 uses
  %.227129.i.i1042 = phi i32 [ %i.njw, %.lr.ph131.i.i1040 ], [ %.227129.i.i1042.unr, %.lr.ph131.i.i1040.prol.loopexit ]
  %.230128.i.i1043 = phi ptr [ %i.njv, %.lr.ph131.i.i1040 ], [ %.230128.i.i1043.unr, %.lr.ph131.i.i1040.prol.loopexit ] ; 3 uses
  %i.njc = getelementptr inbounds nuw i8, ptr %.2130.i.i1041, i64 2
  %i.njd = load i16, ptr %.2130.i.i1041, align 2, !tbaa !57
  %i.nje = zext i16 %i.njd to i32
  %i.njf = shl nuw i32 %i.nje, 16
  %i.njg = bitcast i32 %i.njf to float
  %i.njh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.njg, float %i.nas)
  %i.nji = bitcast float %i.njh to i32
  %i.njj = lshr i32 %i.nji, 16
  %i.njk = trunc nuw i32 %i.njj to i16
  %i.njl = getelementptr inbounds nuw i8, ptr %.230128.i.i1043, i64 2
  store i16 %i.njk, ptr %.230128.i.i1043, align 2, !tbaa !57
  %i.njm = getelementptr inbounds nuw i8, ptr %.2130.i.i1041, i64 4
  %i.njn = load i16, ptr %i.njc, align 2, !tbaa !57
  %i.njo = zext i16 %i.njn to i32
  %i.njp = shl nuw i32 %i.njo, 16
  %i.njq = bitcast i32 %i.njp to float
  %i.njr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.njq, float %i.nas)
  %i.njs = bitcast float %i.njr to i32
  %i.njt = lshr i32 %i.njs, 16
  %i.nju = trunc nuw i32 %i.njt to i16
  %i.njv = getelementptr inbounds nuw i8, ptr %.230128.i.i1043, i64 4
  store i16 %i.nju, ptr %i.njl, align 2, !tbaa !57
  %i.njw = add nuw nsw i32 %.227129.i.i1042, 2    ; 2 uses
  %exitcond.not.i50.i.1 = icmp eq i32 %i.njw, %i.mic
  br i1 %exitcond.not.i50.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i1040, !llvm.loop !893

bb.ki:                                            ; preds = %bb.ka, %bb.jp
  %i.njx = icmp eq i32 %6, 1
  br i1 %i.njx, label %bb.kj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kj:                                            ; preds = %bb.ki
  %i.njy = icmp eq i32 %3, %4
  br i1 %i.njy, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  switch i32 %.sroa.speculated.i1023, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i55.i1031
    i32 4, label %.preheader106.i.i
  ]

.preheader106.i.i:                                ; preds = %bb.kk
  %i.njz = icmp sgt i32 %.sroa.speculated75.i, 0
  br i1 %i.njz, label %.lr.ph.i53.i1030, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i55.i1031:                             ; preds = %bb.kk
  %i.nka = icmp sgt i32 %.sroa.speculated75.i, 0
  br i1 %i.nka, label %.lr.ph116.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph116.i.i:                                    ; preds = %.preheader.i55.i1031, %.lr.ph116.i.i
  %.020115.i.i = phi ptr [ %i.nmk, %.lr.ph116.i.i ], [ %0, %.preheader.i55.i1031 ] ; 2 uses
  %.021114.i.i = phi i32 [ %i.nmn, %.lr.ph116.i.i ], [ 0, %.preheader.i55.i1031 ]
  %.022113.i.i = phi ptr [ %i.nml, %.lr.ph116.i.i ], [ %1, %.preheader.i55.i1031 ] ; 2 uses
  %.024112.i.i = phi ptr [ %i.nmm, %.lr.ph116.i.i ], [ %2, %.preheader.i55.i1031 ] ; 2 uses
  %i.nkb = load <8 x i16>, ptr %.020115.i.i, align 1, !tbaa !60 ; 2 uses
  %i.nkc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nkb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nkd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nkb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nke = shufflevector <8 x i16> %i.nkc, <8 x i16> %i.nkd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.nkf = bitcast <16 x i16> %i.nke to <8 x float> ; 3 uses
  %i.nkg = load i16, ptr %.022113.i.i, align 2, !tbaa !57
  %i.nkh = zext i16 %i.nkg to i32
  %i.nki = shl nuw i32 %i.nkh, 16
  %i.nkj = insertelement <8 x i32> poison, i32 %i.nki, i64 0
  %i.nkk = bitcast <8 x i32> %i.nkj to <8 x float>
  %i.nkl = shufflevector <8 x float> %i.nkk, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nkm = fcmp fast ueq <8 x float> %i.nkf, zeroinitializer ; 2 uses
  %i.nkn = fcmp fast ueq <8 x float> %i.nkl, zeroinitializer ; 2 uses
  %.not105.i.i = or <8 x i1> %i.nkm, %i.nkn
  %i.nko = bitcast <8 x float> %i.nkl to <8 x i32>
  %i.nkp = and <8 x i32> %i.nko, splat (i32 -2147483648)
  %i.nkq = fcmp fast olt <8 x float> %i.nkf, zeroinitializer
  %i.nkr = fcmp fast olt <8 x float> %i.nkl, zeroinitializer
  %i.nks = select <8 x i1> %i.nkr, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nkt = select <8 x i1> %i.nkq, <8 x float> %i.nks, <8 x float> zeroinitializer
  %i.nku = fdiv fast <8 x float> %i.nkl, %i.nkf   ; 2 uses
  %i.nkv = bitcast <8 x float> %i.nku to <8 x i32>
  %i.nkw = and <8 x i32> %i.nkv, splat (i32 -2147483648)
  %i.nkx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nku) ; 3 uses
  %i.nky = fcmp fast ogt <8 x float> %i.nkx, splat (float 1.000000e+00) ; 2 uses
  %i.nkz = select <8 x i1> %i.nky, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nkx
  %i.nla = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nkx, <8 x float> splat (float 1.000000e+00))
  %i.nlb = fdiv fast <8 x float> %i.nkz, %i.nla   ; 3 uses
  %i.nlc = fmul fast <8 x float> %i.nlb, %i.nlb   ; 3 uses
  %i.nld = fmul fast <8 x float> %i.nlc, %i.nlc   ; 7 uses
  %i.nle = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nld, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nlf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nld, <8 x float> nofpclass(nan inf) %i.nle, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nlg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nld, <8 x float> nofpclass(nan inf) %i.nlf, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nlh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nld, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nli = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nld, <8 x float> nofpclass(nan inf) %i.nlh, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nlj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nld, <8 x float> nofpclass(nan inf) %i.nli, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
end_hunk_10
begin_hunk_11_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.nnm = select <4 x i1> %i.nnl, <4 x float> splat (float -1.000000e+00), <4 x float> %i.nnk
  %i.nnn = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nnk, <4 x float> splat (float 1.000000e+00))
  %i.nno = fdiv fast <4 x float> %i.nnm, %i.nnn   ; 3 uses
  %i.nnp = fmul fast <4 x float> %i.nno, %i.nno   ; 3 uses
  %i.nnq = fmul fast <4 x float> %i.nnp, %i.nnp   ; 7 uses
  %i.nnr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnq, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnq, <4 x float> nofpclass(nan inf) %i.nnr, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nnt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnq, <4 x float> nofpclass(nan inf) %i.nns, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nnu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnq, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nnv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnq, <4 x float> nofpclass(nan inf) %i.nnu, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nnw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnq, <4 x float> nofpclass(nan inf) %i.nnv, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nnx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnq, <4 x float> nofpclass(nan inf) %i.nnw, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.nny = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnp, <4 x float> nofpclass(nan inf) %i.nnt, <4 x float> nofpclass(nan inf) %i.nnx)
  %i.nnz = fmul fast <4 x float> %i.nny, %i.nno
  %i.noa = select <4 x i1> %i.nnl, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.nob = fadd fast <4 x float> %i.nnz, %i.noa
  %i.noc = bitcast <4 x float> %i.nob to <4 x i32>
  %i.nod = or <4 x i32> %i.nnj, %i.noc
  %i.noe = bitcast <4 x i32> %i.nod to <4 x float>
  %i.nof = fadd fast <4 x float> %i.nng, %i.noe
  %i.nog = bitcast <8 x i16> %i.nmr to <4 x i32>
  %i.noh = and <4 x i32> %i.nog, splat (i32 -2147483648)
  %i.noi = or disjoint <4 x i32> %i.noh, splat (i32 1078530011)
  %i.noj = bitcast <4 x i32> %i.noi to <4 x float>
  %i.nok = fcmp fast uge <4 x float> %i.noj, zeroinitializer
  %i.nol = or disjoint <4 x i32> %i.nnc, splat (i32 1070137344)
  %i.nom = select <4 x i1> %i.nok, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.non = bitcast <4 x float> %i.nof to <4 x i32>
  %i.noo = select <4 x i1> %.not102.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.non
  %i.nop = select <4 x i1> %i.nmz, <4 x i32> %i.nol, <4 x i32> zeroinitializer
  %i.noq = select <4 x i1> %i.nna, <4 x i32> %i.nom, <4 x i32> %i.nop
  %i.nor = or <4 x i32> %i.noo, %i.noq
  %i.nos = lshr <4 x i32> %i.nor, splat (i32 16)
  %i.not = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nos, <4 x i32> poison)
  %i.nou = bitcast <8 x i16> %i.not to <2 x i64>
  %i.nov = extractelement <2 x i64> %i.nou, i64 0
  store i64 %i.nov, ptr %.125108.i.i, align 1, !tbaa !60
  %i.now = getelementptr inbounds nuw i8, ptr %.1110.i.i, i64 8
  %i.nox = getelementptr inbounds nuw i8, ptr %.123109.i.i, i64 2
  %i.noy = getelementptr inbounds nuw i8, ptr %.125108.i.i, i64 8
  %i.noz = add nuw nsw i32 %.0111.i.i, 1          ; 2 uses
  %exitcond.not.i54.i = icmp eq i32 %i.noz, %.sroa.speculated75.i
  br i1 %exitcond.not.i54.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i53.i1030, !llvm.loop !895

bb.kl:                                            ; preds = %bb.kj
  %i.npa = icmp eq i32 %4, 1
  br i1 %i.npa, label %bb.km, label %bb.kp

bb.km:                                            ; preds = %bb.kl
  %.val.i1025 = load i16, ptr %1, align 2, !tbaa !57
  %i.npb = zext i16 %.val.i1025 to i32
  %i.npc = shl nuw i32 %i.npb, 16
  %i.npd = bitcast i32 %i.npc to float            ; 15 uses
  %i.npe = insertelement <8 x float> poison, float %i.npd, i64 0
  %i.npf = shufflevector <8 x float> %i.npe, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.npg = icmp sgt i32 %i.mic, 7
  br i1 %i.npg, label %.lr.ph.i62.i, label %._crit_edge.i.i1026

.lr.ph.i62.i:                                     ; preds = %bb.km
  %i.nph = fcmp fast ueq <8 x float> %i.npf, zeroinitializer ; 2 uses
  %i.npi = bitcast <8 x float> %i.npf to <8 x i32>
  %i.npj = and <8 x i32> %i.npi, splat (i32 -2147483648)
  %i.npk = fcmp fast olt <8 x float> %i.npf, zeroinitializer
  %i.npl = select <8 x i1> %i.npk, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.npm = or disjoint <8 x i32> %i.npj, splat (i32 1070141403)
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kn, %.lr.ph.i62.i
  %.084.i.i = phi ptr [ %0, %.lr.ph.i62.i ], [ %i.nrk, %bb.kn ] ; 2 uses
  %.02283.i.i = phi i32 [ 0, %.lr.ph.i62.i ], [ %i.nrm, %bb.kn ]
  %.02582.i.i = phi ptr [ %2, %.lr.ph.i62.i ], [ %i.nrl, %bb.kn ] ; 2 uses
  %i.npn = load <8 x i16>, ptr %.084.i.i, align 1, !tbaa !60 ; 2 uses
  %i.npo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.npn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.npp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.npn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.npq = shufflevector <8 x i16> %i.npo, <8 x i16> %i.npp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.npr = bitcast <16 x i16> %i.npq to <8 x float> ; 3 uses
  %i.nps = fcmp fast ueq <8 x float> %i.npr, zeroinitializer ; 2 uses
  %.not81.i.i = or <8 x i1> %i.nph, %i.nps
  %i.npt = fcmp fast olt <8 x float> %i.npr, zeroinitializer
  %i.npu = select <8 x i1> %i.npt, <8 x float> %i.npl, <8 x float> zeroinitializer
  %i.npv = fdiv fast <8 x float> %i.npf, %i.npr   ; 2 uses
  %i.npw = bitcast <8 x float> %i.npv to <8 x i32>
  %i.npx = and <8 x i32> %i.npw, splat (i32 -2147483648)
  %i.npy = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.npv) ; 3 uses
  %i.npz = fcmp fast ogt <8 x float> %i.npy, splat (float 1.000000e+00) ; 2 uses
  %i.nqa = select <8 x i1> %i.npz, <8 x float> splat (float -1.000000e+00), <8 x float> %i.npy
  %i.nqb = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.npy, <8 x float> splat (float 1.000000e+00))
  %i.nqc = fdiv fast <8 x float> %i.nqa, %i.nqb   ; 3 uses
  %i.nqd = fmul fast <8 x float> %i.nqc, %i.nqc   ; 3 uses
  %i.nqe = fmul fast <8 x float> %i.nqd, %i.nqd   ; 7 uses
  %i.nqf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqe, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nqg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqe, <8 x float> nofpclass(nan inf) %i.nqf, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nqh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqe, <8 x float> nofpclass(nan inf) %i.nqg, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nqi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqe, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nqj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqe, <8 x float> nofpclass(nan inf) %i.nqi, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nqk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqe, <8 x float> nofpclass(nan inf) %i.nqj, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nql = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqe, <8 x float> nofpclass(nan inf) %i.nqk, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.nqm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nqd, <8 x float> nofpclass(nan inf) %i.nqh, <8 x float> nofpclass(nan inf) %i.nql)
  %i.nqn = fmul fast <8 x float> %i.nqm, %i.nqc
  %i.nqo = select <8 x i1> %i.npz, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.nqp = fadd fast <8 x float> %i.nqn, %i.nqo
  %i.nqq = bitcast <8 x float> %i.nqp to <8 x i32>
  %i.nqr = or <8 x i32> %i.npx, %i.nqq
  %i.nqs = bitcast <8 x i32> %i.nqr to <8 x float>
  %i.nqt = fadd fast <8 x float> %i.npu, %i.nqs
  %i.nqu = bitcast <16 x i16> %i.npq to <8 x i32>
  %i.nqv = and <8 x i32> %i.nqu, splat (i32 -2147483648)
  %i.nqw = or disjoint <8 x i32> %i.nqv, splat (i32 1078530011)
  %i.nqx = bitcast <8 x i32> %i.nqw to <8 x float>
  %i.nqy = fcmp fast uge <8 x float> %i.nqx, zeroinitializer
  %i.nqz = select <8 x i1> %i.nqy, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.nra = bitcast <8 x float> %i.nqt to <8 x i32>
  %i.nrb = select <8 x i1> %.not81.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.nra
  %i.nrc = select <8 x i1> %i.nps, <8 x i32> %i.npm, <8 x i32> zeroinitializer
  %i.nrd = select <8 x i1> %i.nph, <8 x i32> %i.nqz, <8 x i32> %i.nrc
  %i.nre = or <8 x i32> %i.nrb, %i.nrd            ; 2 uses
  %i.nrf = shufflevector <8 x i32> %i.nre, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nrg = shufflevector <8 x i32> %i.nre, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nrh = lshr <4 x i32> %i.nrf, splat (i32 16)
  %i.nri = lshr <4 x i32> %i.nrg, splat (i32 16)
  %i.nrj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nrh, <4 x i32> %i.nri)
  store <8 x i16> %i.nrj, ptr %.02582.i.i, align 1, !tbaa !60
  %i.nrk = getelementptr inbounds nuw i8, ptr %.084.i.i, i64 16 ; 2 uses
  %i.nrl = getelementptr inbounds nuw i8, ptr %.02582.i.i, i64 16 ; 2 uses
  %i.nrm = add nuw nsw i32 %.02283.i.i, 8         ; 2 uses
  %i.nrn = or disjoint i32 %i.nrm, 7
  %i.nro = icmp slt i32 %i.nrn, %i.mic
  br i1 %i.nro, label %bb.kn, label %._crit_edge.loopexit.i.i1029, !llvm.loop !896

._crit_edge.loopexit.i.i1029:                     ; preds = %bb.kn
  %i.nrp = and i32 %i.mic, 2147483640
  br label %._crit_edge.i.i1026

._crit_edge.i.i1026:                              ; preds = %._crit_edge.loopexit.i.i1029, %bb.km
  %.025.lcssa.i56.i = phi ptr [ %2, %bb.km ], [ %i.nrl, %._crit_edge.loopexit.i.i1029 ] ; 2 uses
  %.022.lcssa.i.i1027 = phi i32 [ 0, %bb.km ], [ %i.nrp, %._crit_edge.loopexit.i.i1029 ] ; 3 uses
  %.0.lcssa.i57.i = phi ptr [ %0, %bb.km ], [ %i.nrk, %._crit_edge.loopexit.i.i1029 ] ; 2 uses
  %i.nrq = insertelement <4 x float> poison, float %i.npd, i64 0
  %i.nrr = shufflevector <4 x float> %i.nrq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.nrs = or disjoint i32 %.022.lcssa.i.i1027, 3
  %i.nrt = icmp slt i32 %i.nrs, %i.mic
  br i1 %i.nrt, label %.lr.ph91.i.i, label %.preheader.i58.i

.lr.ph91.i.i:                                     ; preds = %._crit_edge.i.i1026
  %i.nru = fcmp fast oeq <4 x float> %i.nrr, zeroinitializer ; 2 uses
  %i.nrv = bitcast <4 x float> %i.nrr to <4 x i32>
  %i.nrw = and <4 x i32> %i.nrv, splat (i32 -2147483648)
  %i.nrx = fcmp fast olt <4 x float> %i.nrr, zeroinitializer
  %i.nry = select <4 x i1> %i.nrx, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.nrz = or disjoint <4 x i32> %i.nrw, splat (i32 1070137344)
  br label %bb.ko

.preheader.i58.i:                                 ; preds = %bb.ko, %._crit_edge.i.i1026
  %.126.lcssa.i59.i = phi ptr [ %.025.lcssa.i56.i, %._crit_edge.i.i1026 ], [ %i.nxb, %bb.ko ] ; 6 uses
  %.123.lcssa.i.i1028 = phi i32 [ %.022.lcssa.i.i1027, %._crit_edge.i.i1026 ], [ %i.nxc, %bb.ko ] ; 5 uses
  %.1.lcssa.i60.i = phi ptr [ %.0.lcssa.i57.i, %._crit_edge.i.i1026 ], [ %i.nxa, %bb.ko ] ; 6 uses
  %i.nsa = icmp slt i32 %.123.lcssa.i.i1028, %i.mic
  br i1 %i.nsa, label %iter.check5002, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5002:                                   ; preds = %.preheader.i58.i
  %.126.lcssa.i59.i4986 = ptrtoaddr ptr %.126.lcssa.i59.i to i64
  %.1.lcssa.i60.i4985 = ptrtoaddr ptr %.1.lcssa.i60.i to i64
  %i.nsb = xor i32 %.123.lcssa.i.i1028, -1
  %i.nsc = add i32 %i.mic, %i.nsb                 ; 3 uses
  %i.nsd = zext i32 %i.nsc to i64
  %i.nse = add nuw nsw i64 %i.nsd, 1              ; 5 uses
  %min.iters.check4987 = icmp ult i32 %i.nsc, 3
  %i.nsf = sub i64 %.1.lcssa.i60.i4985, %.126.lcssa.i59.i4986
  %diff.check4989 = icmp ugt i64 %i.nsf, -32
  %or.cond7115 = select i1 %min.iters.check4987, i1 true, i1 %diff.check4989
  br i1 %or.cond7115, label %.lr.ph98.i.i.preheader, label %vector.main.loop.iter.check4990

vector.main.loop.iter.check4990:                  ; preds = %iter.check5002
  %min.iters.check4991 = icmp ult i32 %i.nsc, 15
  br i1 %min.iters.check4991, label %vec.epilog.ph5006, label %vector.ph4992

vector.ph4992:                                    ; preds = %vector.main.loop.iter.check4990
  %i.nsg = and i64 %i.nse, 12
  %n.vec4993 = and i64 %i.nse, 8589934576         ; 5 uses
  %i.nsh = shl nuw nsw i64 %n.vec4993, 1          ; 2 uses
  %i.nsi = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.nsh
  %i.nsj = trunc i64 %n.vec4993 to i32
  %i.nsk = add i32 %.123.lcssa.i.i1028, %i.nsj
  %i.nsl = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.nsh
  %i.nsm = insertelement <8 x float> poison, float %i.npd, i64 0
  %i.nsn = shufflevector <8 x float> %i.nsm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nso = insertelement <4 x float> poison, float %i.npd, i64 0
  %i.nsp = shufflevector <4 x float> %i.nso, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body4994

vector.body4994:                                  ; preds = %vector.ph4992, %vector.body4994
  %index4995 = phi i64 [ 0, %vector.ph4992 ], [ %index.next4999, %vector.body4994 ] ; 2 uses
  %i.nsq = shl i64 %index4995, 1                  ; 2 uses
  %next.gep4996 = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.nsq
  %next.gep4997 = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.nsq
  %wide.load4998 = load <16 x i16>, ptr %next.gep4996, align 2, !tbaa !57
  %i.nsr = zext <16 x i16> %wide.load4998 to <16 x i32>
  %i.nss = shl nuw <16 x i32> %i.nsr, splat (i32 16)
  %i.nst = bitcast <16 x i32> %i.nss to <16 x float> ; 6 uses
  %i.nsu = extractelement <16 x float> %i.nst, i64 0
  %i.nsv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nsu)
  %i.nsw = extractelement <16 x float> %i.nst, i64 1
  %i.nsx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nsw)
  %i.nsy = extractelement <16 x float> %i.nst, i64 2
  %i.nsz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nsy)
  %i.nta = extractelement <16 x float> %i.nst, i64 3
  %i.ntb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nta)
  %i.ntc = shufflevector <16 x float> %i.nst, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ntd = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.nsp, <4 x float> %i.ntc)
  %i.nte = shufflevector <16 x float> %i.nst, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ntf = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.nsn, <8 x float> %i.nte)
  %i.ntg = insertelement <16 x float> poison, float %i.nsv, i64 0
  %i.nth = insertelement <16 x float> %i.ntg, float %i.nsx, i64 1
  %i.nti = insertelement <16 x float> %i.nth, float %i.nsz, i64 2
  %i.ntj = insertelement <16 x float> %i.nti, float %i.ntb, i64 3
  %i.ntk = shufflevector <4 x float> %i.ntd, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ntl = shufflevector <16 x float> %i.ntj, <16 x float> %i.ntk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ntm = shufflevector <8 x float> %i.ntf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ntn = shufflevector <16 x float> %i.ntl, <16 x float> %i.ntm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.nto = bitcast <16 x float> %i.ntn to <16 x i32>
  %i.ntp = lshr <16 x i32> %i.nto, splat (i32 16)
  %i.ntq = trunc nuw <16 x i32> %i.ntp to <16 x i16>
  store <16 x i16> %i.ntq, ptr %next.gep4997, align 2, !tbaa !57
  %index.next4999 = add nuw i64 %index4995, 16    ; 2 uses
  %i.ntr = icmp eq i64 %index.next4999, %n.vec4993
  br i1 %i.ntr, label %middle.block5000, label %vector.body4994, !llvm.loop !897

middle.block5000:                                 ; preds = %vector.body4994
  %cmp.n5001 = icmp eq i64 %i.nse, %n.vec4993
  br i1 %cmp.n5001, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5003

vec.epilog.iter.check5003:                        ; preds = %middle.block5000
  %min.epilog.iters.check5005 = icmp eq i64 %i.nsg, 0
  br i1 %min.epilog.iters.check5005, label %.lr.ph98.i.i.preheader, label %vec.epilog.ph5006, !prof !64

vec.epilog.ph5006:                                ; preds = %vector.main.loop.iter.check4990, %vec.epilog.iter.check5003
  %vec.epilog.resume.val5007 = phi i64 [ %n.vec4993, %vec.epilog.iter.check5003 ], [ 0, %vector.main.loop.iter.check4990 ]
  %n.vec5008 = and i64 %i.nse, 8589934588         ; 4 uses
  %i.nts = shl nuw nsw i64 %n.vec5008, 1          ; 2 uses
  %i.ntt = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.nts
  %i.ntu = trunc i64 %n.vec5008 to i32
  %i.ntv = add i32 %.123.lcssa.i.i1028, %i.ntu
  %i.ntw = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.nts
  br label %vec.epilog.vector.body5009

vec.epilog.vector.body5009:                       ; preds = %vec.epilog.vector.body5009, %vec.epilog.ph5006
  %index5010 = phi i64 [ %vec.epilog.resume.val5007, %vec.epilog.ph5006 ], [ %index.next5014, %vec.epilog.vector.body5009 ] ; 2 uses
  %i.ntx = shl i64 %index5010, 1                  ; 2 uses
  %next.gep5011 = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.ntx
  %next.gep5012 = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.ntx
  %wide.load5013 = load <4 x i16>, ptr %next.gep5011, align 2, !tbaa !57
  %i.nty = zext <4 x i16> %wide.load5013 to <4 x i32>
  %i.ntz = shl nuw <4 x i32> %i.nty, splat (i32 16)
  %i.nua = bitcast <4 x i32> %i.ntz to <4 x float> ; 4 uses
  %i.nub = extractelement <4 x float> %i.nua, i64 0
  %i.nuc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nub)
  %i.nud = extractelement <4 x float> %i.nua, i64 1
  %i.nue = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nud)
  %i.nuf = extractelement <4 x float> %i.nua, i64 2
  %i.nug = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nuf)
  %i.nuh = extractelement <4 x float> %i.nua, i64 3
  %i.nui = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nuh)
  %i.nuj = insertelement <4 x float> poison, float %i.nuc, i64 0
  %i.nuk = insertelement <4 x float> %i.nuj, float %i.nue, i64 1
  %i.nul = insertelement <4 x float> %i.nuk, float %i.nug, i64 2
  %i.num = insertelement <4 x float> %i.nul, float %i.nui, i64 3
  %i.nun = bitcast <4 x float> %i.num to <4 x i32>
  %i.nuo = lshr <4 x i32> %i.nun, splat (i32 16)
  %i.nup = trunc nuw <4 x i32> %i.nuo to <4 x i16>
  store <4 x i16> %i.nup, ptr %next.gep5012, align 2, !tbaa !57
  %index.next5014 = add nuw i64 %index5010, 4     ; 2 uses
  %i.nuq = icmp eq i64 %index.next5014, %n.vec5008
  br i1 %i.nuq, label %vec.epilog.middle.block5015, label %vec.epilog.vector.body5009, !llvm.loop !898

vec.epilog.middle.block5015:                      ; preds = %vec.epilog.vector.body5009
  %cmp.n5016 = icmp eq i64 %i.nse, %n.vec5008
  br i1 %cmp.n5016, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i.i.preheader

.lr.ph98.i.i.preheader:                           ; preds = %iter.check5002, %vec.epilog.iter.check5003, %vec.epilog.middle.block5015
  %.297.i.i.ph = phi ptr [ %.1.lcssa.i60.i, %iter.check5002 ], [ %i.nsi, %vec.epilog.iter.check5003 ], [ %i.ntt, %vec.epilog.middle.block5015 ] ; 3 uses
  %.22496.i.i.ph = phi i32 [ %.123.lcssa.i.i1028, %iter.check5002 ], [ %i.nsk, %vec.epilog.iter.check5003 ], [ %i.ntv, %vec.epilog.middle.block5015 ] ; 4 uses
  %.22795.i.i.ph = phi ptr [ %.126.lcssa.i59.i, %iter.check5002 ], [ %i.nsl, %vec.epilog.iter.check5003 ], [ %i.ntw, %vec.epilog.middle.block5015 ] ; 3 uses
  %i.nur = sub i32 %i.mic, %.22496.i.i.ph
  %.neg8011 = add i32 %.22496.i.i.ph, 1
  %xtraiter7808 = and i32 %i.nur, 1
  %lcmp.mod7809.not = icmp eq i32 %xtraiter7808, 0
  br i1 %lcmp.mod7809.not, label %.lr.ph98.i.i.prol.loopexit, label %.lr.ph98.i.i.prol

.lr.ph98.i.i.prol:                                ; preds = %.lr.ph98.i.i.preheader
  %i.nus = getelementptr inbounds nuw i8, ptr %.297.i.i.ph, i64 2
  %i.nut = load i16, ptr %.297.i.i.ph, align 2, !tbaa !57
  %i.nuu = zext i16 %i.nut to i32
  %i.nuv = shl nuw i32 %i.nuu, 16
  %i.nuw = bitcast i32 %i.nuv to float
  %i.nux = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nuw)
  %i.nuy = bitcast float %i.nux to i32
  %i.nuz = lshr i32 %i.nuy, 16
  %i.nva = trunc nuw i32 %i.nuz to i16
  %i.nvb = getelementptr inbounds nuw i8, ptr %.22795.i.i.ph, i64 2
  store i16 %i.nva, ptr %.22795.i.i.ph, align 2, !tbaa !57
  %i.nvc = add nuw nsw i32 %.22496.i.i.ph, 1
  br label %.lr.ph98.i.i.prol.loopexit

.lr.ph98.i.i.prol.loopexit:                       ; preds = %.lr.ph98.i.i.prol, %.lr.ph98.i.i.preheader
  %.297.i.i.unr = phi ptr [ %.297.i.i.ph, %.lr.ph98.i.i.preheader ], [ %i.nus, %.lr.ph98.i.i.prol ]
  %.22496.i.i.unr = phi i32 [ %.22496.i.i.ph, %.lr.ph98.i.i.preheader ], [ %i.nvc, %.lr.ph98.i.i.prol ]
  %.22795.i.i.unr = phi ptr [ %.22795.i.i.ph, %.lr.ph98.i.i.preheader ], [ %i.nvb, %.lr.ph98.i.i.prol ]
  %i.nvd = icmp eq i32 %i.mic, %.neg8011
  br i1 %i.nvd, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i.i

bb.ko:                                            ; preds = %bb.ko, %.lr.ph91.i.i
  %.189.i.i = phi ptr [ %.0.lcssa.i57.i, %.lr.ph91.i.i ], [ %i.nxa, %bb.ko ] ; 2 uses
  %.12388.i.i = phi i32 [ %.022.lcssa.i.i1027, %.lr.ph91.i.i ], [ %i.nxc, %bb.ko ]
  %.12687.i.i = phi ptr [ %.025.lcssa.i56.i, %.lr.ph91.i.i ], [ %i.nxb, %bb.ko ] ; 2 uses
  %i.nve = load i64, ptr %.189.i.i, align 1, !tbaa !60
  %i.nvf = insertelement <2 x i64> poison, i64 %i.nve, i64 0
  %i.nvg = bitcast <2 x i64> %i.nvf to <8 x i16>
  %i.nvh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nvg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.nvi = bitcast <8 x i16> %i.nvh to <4 x float> ; 3 uses
  %i.nvj = fcmp fast oeq <4 x float> %i.nvi, zeroinitializer ; 2 uses
  %.not78.i.i = or <4 x i1> %i.nru, %i.nvj
  %i.nvk = fcmp fast olt <4 x float> %i.nvi, zeroinitializer
  %i.nvl = select <4 x i1> %i.nvk, <4 x float> %i.nry, <4 x float> zeroinitializer
  %i.nvm = fdiv fast <4 x float> %i.nrr, %i.nvi   ; 2 uses
  %i.nvn = bitcast <4 x float> %i.nvm to <4 x i32>
  %i.nvo = and <4 x i32> %i.nvn, splat (i32 -2147483648)
  %i.nvp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nvm) ; 3 uses
  %i.nvq = fcmp fast ogt <4 x float> %i.nvp, splat (float 1.000000e+00) ; 2 uses
  %i.nvr = select <4 x i1> %i.nvq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.nvp
  %i.nvs = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nvp, <4 x float> splat (float 1.000000e+00))
  %i.nvt = fdiv fast <4 x float> %i.nvr, %i.nvs   ; 3 uses
  %i.nvu = fmul fast <4 x float> %i.nvt, %i.nvt   ; 3 uses
  %i.nvv = fmul fast <4 x float> %i.nvu, %i.nvu   ; 7 uses
  %i.nvw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvv, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nvx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvv, <4 x float> nofpclass(nan inf) %i.nvw, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nvy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvv, <4 x float> nofpclass(nan inf) %i.nvx, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nvz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvv, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nwa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvv, <4 x float> nofpclass(nan inf) %i.nvz, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nwb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvv, <4 x float> nofpclass(nan inf) %i.nwa, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nwc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvv, <4 x float> nofpclass(nan inf) %i.nwb, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.nwd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nvu, <4 x float> nofpclass(nan inf) %i.nvy, <4 x float> nofpclass(nan inf) %i.nwc)
  %i.nwe = fmul fast <4 x float> %i.nwd, %i.nvt
  %i.nwf = select <4 x i1> %i.nvq, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.nwg = fadd fast <4 x float> %i.nwe, %i.nwf
  %i.nwh = bitcast <4 x float> %i.nwg to <4 x i32>
  %i.nwi = or <4 x i32> %i.nvo, %i.nwh
  %i.nwj = bitcast <4 x i32> %i.nwi to <4 x float>
  %i.nwk = fadd fast <4 x float> %i.nvl, %i.nwj
  %i.nwl = bitcast <8 x i16> %i.nvh to <4 x i32>
  %i.nwm = and <4 x i32> %i.nwl, splat (i32 -2147483648)
  %i.nwn = or disjoint <4 x i32> %i.nwm, splat (i32 1078530011)
  %i.nwo = bitcast <4 x i32> %i.nwn to <4 x float>
  %i.nwp = fcmp fast uge <4 x float> %i.nwo, zeroinitializer
  %i.nwq = select <4 x i1> %i.nwp, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.nwr = bitcast <4 x float> %i.nwk to <4 x i32>
  %i.nws = select <4 x i1> %.not78.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.nwr
  %i.nwt = select <4 x i1> %i.nvj, <4 x i32> %i.nrz, <4 x i32> zeroinitializer
  %i.nwu = select <4 x i1> %i.nru, <4 x i32> %i.nwq, <4 x i32> %i.nwt
  %i.nwv = or <4 x i32> %i.nws, %i.nwu
  %i.nww = lshr <4 x i32> %i.nwv, splat (i32 16)
  %i.nwx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nww, <4 x i32> poison)
  %i.nwy = bitcast <8 x i16> %i.nwx to <2 x i64>
  %i.nwz = extractelement <2 x i64> %i.nwy, i64 0
  store i64 %i.nwz, ptr %.12687.i.i, align 1, !tbaa !60
  %i.nxa = getelementptr inbounds nuw i8, ptr %.189.i.i, i64 8 ; 2 uses
  %i.nxb = getelementptr inbounds nuw i8, ptr %.12687.i.i, i64 8 ; 2 uses
  %i.nxc = add nuw nsw i32 %.12388.i.i, 4         ; 3 uses
  %i.nxd = or disjoint i32 %i.nxc, 3
  %i.nxe = icmp slt i32 %i.nxd, %i.mic
  br i1 %i.nxe, label %bb.ko, label %.preheader.i58.i, !llvm.loop !899

.lr.ph98.i.i:                                     ; preds = %.lr.ph98.i.i.prol.loopexit, %.lr.ph98.i.i
  %.297.i.i = phi ptr [ %i.nxp, %.lr.ph98.i.i ], [ %.297.i.i.unr, %.lr.ph98.i.i.prol.loopexit ] ; 3 uses
  %.22496.i.i = phi i32 [ %i.nxz, %.lr.ph98.i.i ], [ %.22496.i.i.unr, %.lr.ph98.i.i.prol.loopexit ]
  %.22795.i.i = phi ptr [ %i.nxy, %.lr.ph98.i.i ], [ %.22795.i.i.unr, %.lr.ph98.i.i.prol.loopexit ] ; 3 uses
  %i.nxf = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 2
  %i.nxg = load i16, ptr %.297.i.i, align 2, !tbaa !57
  %i.nxh = zext i16 %i.nxg to i32
  %i.nxi = shl nuw i32 %i.nxh, 16
  %i.nxj = bitcast i32 %i.nxi to float
  %i.nxk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nxj)
  %i.nxl = bitcast float %i.nxk to i32
  %i.nxm = lshr i32 %i.nxl, 16
  %i.nxn = trunc nuw i32 %i.nxm to i16
  %i.nxo = getelementptr inbounds nuw i8, ptr %.22795.i.i, i64 2
  store i16 %i.nxn, ptr %.22795.i.i, align 2, !tbaa !57
  %i.nxp = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 4
  %i.nxq = load i16, ptr %i.nxf, align 2, !tbaa !57
  %i.nxr = zext i16 %i.nxq to i32
  %i.nxs = shl nuw i32 %i.nxr, 16
  %i.nxt = bitcast i32 %i.nxs to float
  %i.nxu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.npd, float %i.nxt)
  %i.nxv = bitcast float %i.nxu to i32
  %i.nxw = lshr i32 %i.nxv, 16
  %i.nxx = trunc nuw i32 %i.nxw to i16
  %i.nxy = getelementptr inbounds nuw i8, ptr %.22795.i.i, i64 4
  store i16 %i.nxx, ptr %i.nxo, align 2, !tbaa !57
  %i.nxz = add nuw nsw i32 %.22496.i.i, 2         ; 2 uses
  %exitcond.not.i61.i.1 = icmp eq i32 %i.nxz, %i.mic
  br i1 %exitcond.not.i61.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i.i, !llvm.loop !900

bb.kp:                                            ; preds = %bb.kl
  %i.nya = icmp eq i32 %3, 1
  br i1 %i.nya, label %bb.kq, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kq:                                            ; preds = %bb.kp
  switch i32 %.sroa.speculated.i1023, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.lr.ph109.i.i
    i32 4, label %.lr.ph.i63.i
  ]

.lr.ph109.i.i:                                    ; preds = %bb.kq
  %i.nyb = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.nyc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nyb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nyd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nyb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nye = shufflevector <8 x i16> %i.nyc, <8 x i16> %i.nyd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.nyf = bitcast <16 x i16> %i.nye to <8 x float> ; 3 uses
  %i.nyg = fcmp fast ueq <8 x float> %i.nyf, zeroinitializer ; 2 uses
  %i.nyh = fcmp fast olt <8 x float> %i.nyf, zeroinitializer
  %i.nyi = bitcast <16 x i16> %i.nye to <8 x i32>
  %i.nyj = and <8 x i32> %i.nyi, splat (i32 -2147483648)
  %i.nyk = or disjoint <8 x i32> %i.nyj, splat (i32 1078530011)
  %i.nyl = bitcast <8 x i32> %i.nyk to <8 x float>
  %i.nym = fcmp fast uge <8 x float> %i.nyl, zeroinitializer
  %i.nyn = select <8 x i1> %i.nym, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.nyo = fdiv fast <8 x float> splat (float 1.000000e+00), %i.nyf
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kr, %.lr.ph109.i.i
  %.018108.i.i = phi ptr [ %1, %.lr.ph109.i.i ], [ %i.oal, %bb.kr ] ; 2 uses
  %.019107.i.i = phi i32 [ 0, %.lr.ph109.i.i ], [ %i.oan, %bb.kr ]
  %.020106.i.i = phi ptr [ %2, %.lr.ph109.i.i ], [ %i.oam, %bb.kr ] ; 2 uses
  %i.nyp = load i16, ptr %.018108.i.i, align 2, !tbaa !57
  %i.nyq = zext i16 %i.nyp to i32
  %i.nyr = shl nuw i32 %i.nyq, 16
  %i.nys = insertelement <8 x i32> poison, i32 %i.nyr, i64 0
  %i.nyt = bitcast <8 x i32> %i.nys to <8 x float>
  %i.nyu = shufflevector <8 x float> %i.nyt, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nyv = fcmp fast ueq <8 x float> %i.nyu, zeroinitializer ; 2 uses
  %.not101.i.i1024 = or <8 x i1> %i.nyg, %i.nyv
  %i.nyw = bitcast <8 x float> %i.nyu to <8 x i32>
  %i.nyx = and <8 x i32> %i.nyw, splat (i32 -2147483648)
  %i.nyy = fcmp fast olt <8 x float> %i.nyu, zeroinitializer
  %i.nyz = select <8 x i1> %i.nyy, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nza = select <8 x i1> %i.nyh, <8 x float> %i.nyz, <8 x float> zeroinitializer
  %i.nzb = fmul fast <8 x float> %i.nyu, %i.nyo   ; 2 uses
  %i.nzc = bitcast <8 x float> %i.nzb to <8 x i32>
  %i.nzd = and <8 x i32> %i.nzc, splat (i32 -2147483648)
  %i.nze = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nzb) ; 3 uses
  %i.nzf = fcmp fast ogt <8 x float> %i.nze, splat (float 1.000000e+00) ; 2 uses
  %i.nzg = select <8 x i1> %i.nzf, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nze
  %i.nzh = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nze, <8 x float> splat (float 1.000000e+00))
  %i.nzi = fdiv fast <8 x float> %i.nzg, %i.nzh   ; 3 uses
  %i.nzj = fmul fast <8 x float> %i.nzi, %i.nzi   ; 3 uses
  %i.nzk = fmul fast <8 x float> %i.nzj, %i.nzj   ; 7 uses
  %i.nzl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nzm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzl, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nzn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzm, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nzo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nzp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzo, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nzq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzp, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nzr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzq, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
end_hunk_11
