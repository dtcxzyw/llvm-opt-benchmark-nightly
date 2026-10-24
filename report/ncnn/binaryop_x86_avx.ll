Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx?download=true
inline.NumInlined: 420
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 268
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.230190.i.i = phi ptr [ %i.eiq, %.lr.ph192.i.i ], [ %.230190.i.i.unr, %.lr.ph192.i.i.prol.loopexit ] ; 5 uses
  %.233189.i.i = phi i32 [ %i.eis, %.lr.ph192.i.i ], [ %.233189.i.i.unr, %.lr.ph192.i.i.prol.loopexit ]
  %.236188.i.i = phi ptr [ %i.eir, %.lr.ph192.i.i ], [ %.236188.i.i.unr, %.lr.ph192.i.i.prol.loopexit ] ; 5 uses
  %i.ehu = load float, ptr %.2191.i.i, align 4, !tbaa !59
  %i.ehv = load float, ptr %.230190.i.i, align 4, !tbaa !59
  %i.ehw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ehu, float %i.ehv)
  store float %i.ehw, ptr %.236188.i.i, align 4, !tbaa !59
  %i.ehx = getelementptr inbounds nuw i8, ptr %.2191.i.i, i64 4
  %i.ehy = getelementptr inbounds nuw i8, ptr %.230190.i.i, i64 4
  %i.ehz = getelementptr inbounds nuw i8, ptr %.236188.i.i, i64 4
  %i.eia = load float, ptr %i.ehx, align 4, !tbaa !59
  %i.eib = load float, ptr %i.ehy, align 4, !tbaa !59
  %i.eic = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eia, float %i.eib)
  store float %i.eic, ptr %i.ehz, align 4, !tbaa !59
  %i.eid = getelementptr inbounds nuw i8, ptr %.2191.i.i, i64 8
  %i.eie = getelementptr inbounds nuw i8, ptr %.230190.i.i, i64 8
  %i.eif = getelementptr inbounds nuw i8, ptr %.236188.i.i, i64 8
  %i.eig = load float, ptr %i.eid, align 4, !tbaa !59
  %i.eih = load float, ptr %i.eie, align 4, !tbaa !59
  %i.eii = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eig, float %i.eih)
  store float %i.eii, ptr %i.eif, align 4, !tbaa !59
  %i.eij = getelementptr inbounds nuw i8, ptr %.2191.i.i, i64 12
  %i.eik = getelementptr inbounds nuw i8, ptr %.230190.i.i, i64 12
  %i.eil = getelementptr inbounds nuw i8, ptr %.236188.i.i, i64 12
  %i.eim = load float, ptr %i.eij, align 4, !tbaa !59
  %i.ein = load float, ptr %i.eik, align 4, !tbaa !59
  %i.eio = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eim, float %i.ein)
  store float %i.eio, ptr %i.eil, align 4, !tbaa !59
  %i.eip = getelementptr inbounds nuw i8, ptr %.2191.i.i, i64 16
  %i.eiq = getelementptr inbounds nuw i8, ptr %.230190.i.i, i64 16
  %i.eir = getelementptr inbounds nuw i8, ptr %.236188.i.i, i64 16
  %i.eis = add nuw nsw i32 %.233189.i.i, 4        ; 2 uses
  %exitcond.not.i.i833.3 = icmp eq i32 %i.eis, %i.eax
  br i1 %exitcond.not.i.i833.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph192.i.i, !llvm.loop !263

bb.es:                                            ; preds = %bb.eq
  %i.eit = icmp eq i32 %4, 1
  br i1 %i.eit, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.eiu = load float, ptr %1, align 4, !tbaa !59 ; 11 uses
  %i.eiv = icmp eq i32 %.sroa.speculated.i800, 4
  br i1 %i.eiv, label %.thread.i.i823, label %bb.eu

.thread.i.i823:                                   ; preds = %bb.et
  %i.eiw = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.eix = insertelement <4 x float> poison, float %i.eiu, i64 0
  %i.eiy = shufflevector <4 x float> %i.eix, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eiz = icmp eq i32 %.sroa.speculated.i800, 8
  br i1 %i.eiz, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.eja = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu, %.thread.i.i823
  %i.ejb = phi <4 x float> [ %i.eiw, %.thread.i.i823 ], [ %i.eiy, %bb.eu ] ; 2 uses
  %i.ejc = shufflevector <4 x float> %i.ejb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.ejd = phi <4 x float> [ %i.eiy, %bb.ev ], [ %i.ejb, %bb.ew ]
  %i.eje = phi fast <8 x float> [ %i.eja, %bb.ev ], [ %i.ejc, %bb.ew ]
  %i.ejf = icmp sgt i32 %i.eax, 7
  br i1 %i.ejf, label %.lr.ph.i39.i, label %.preheader170.i.i

.preheader170.loopexit.i.i:                       ; preds = %.lr.ph.i39.i
  %i.ejg = and i32 %i.eax, 2147483640
  br label %.preheader170.i.i

.preheader170.i.i:                                ; preds = %.preheader170.loopexit.i.i, %bb.ex
  %.030.lcssa.i.i815 = phi i32 [ 0, %bb.ex ], [ %i.ejg, %.preheader170.loopexit.i.i ] ; 3 uses
  %.027.lcssa.i.i816 = phi ptr [ %2, %bb.ex ], [ %i.ely, %.preheader170.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i817 = phi ptr [ %0, %bb.ex ], [ %i.elx, %.preheader170.loopexit.i.i ] ; 2 uses
  %i.ejh = or disjoint i32 %.030.lcssa.i.i815, 3
  %i.eji = icmp slt i32 %i.ejh, %i.eax
  br i1 %i.eji, label %.lr.ph179.i.i, label %.preheader.i35.i818

.lr.ph.i39.i:                                     ; preds = %bb.ex, %.lr.ph.i39.i
  %.0173.i.i = phi ptr [ %i.elx, %.lr.ph.i39.i ], [ %0, %bb.ex ] ; 2 uses
  %.027172.i.i = phi ptr [ %i.ely, %.lr.ph.i39.i ], [ %2, %bb.ex ] ; 2 uses
  %.030171.i.i = phi i32 [ %i.elz, %.lr.ph.i39.i ], [ 0, %bb.ex ]
  %i.ejj = load <8 x float>, ptr %.0173.i.i, align 1, !tbaa !60
  %i.ejk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ejj, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ejl = bitcast <8 x float> %i.ejk to <8 x i32>
  %i.ejm = bitcast <8 x float> %i.ejk to <8 x i32>
  %i.ejn = and <8 x i32> %i.ejm, splat (i32 -2139095041)
  %i.ejo = or disjoint <8 x i32> %i.ejn, splat (i32 1056964608)
  %i.ejp = bitcast <8 x i32> %i.ejo to <8 x float> ; 3 uses
  %i.ejq = lshr <8 x i32> %i.ejl, splat (i32 23)
  %i.ejr = add nsw <8 x i32> %i.ejq, splat (i32 -127)
  %i.ejs = sitofp fast <8 x i32> %i.ejr to <8 x float> ; 2 uses
  %i.ejt = fadd fast <8 x float> %i.ejs, splat (float 1.000000e+00)
  %i.eju = fcmp fast olt <8 x float> %i.ejp, splat (float f0x3F3504F3) ; 2 uses
  %i.ejv = select <8 x i1> %i.eju, <8 x float> %i.ejp, <8 x float> zeroinitializer
  %i.ejw = fadd fast <8 x float> %i.ejp, splat (float -1.000000e+00)
  %i.ejx = select fast <8 x i1> %i.eju, <8 x float> %i.ejs, <8 x float> %i.ejt
  %i.ejy = fadd fast <8 x float> %i.ejw, %i.ejv   ; 12 uses
  %i.ejz = fmul fast <8 x float> %i.ejy, %i.ejy
  %i.eka = fmul fast <8 x float> %i.ejy, splat (float f0x3D9021BB)
  %i.ekb = fadd fast <8 x float> %i.eka, splat (float f0xBDEBD1B8)
  %i.ekc = fmul fast <8 x float> %i.ekb, %i.ejy
  %i.ekd = fadd fast <8 x float> %i.ekc, splat (float f0x3DEF251A)
  %i.eke = fmul fast <8 x float> %i.ekd, %i.ejy
  %i.ekf = fadd fast <8 x float> %i.eke, splat (float f0xBDFE5D4F)
  %i.ekg = fmul fast <8 x float> %i.ekf, %i.ejy
  %i.ekh = fadd fast <8 x float> %i.ekg, splat (float f0x3E11E9BF)
  %i.eki = fmul fast <8 x float> %i.ekh, %i.ejy
  %i.ekj = fadd fast <8 x float> %i.eki, splat (float f0xBE2AAE50)
  %i.ekk = fmul fast <8 x float> %i.ekj, %i.ejy
  %i.ekl = fadd fast <8 x float> %i.ekk, splat (float f0x3E4CCEAC)
  %i.ekm = fmul fast <8 x float> %i.ekl, %i.ejy
  %i.ekn = fadd fast <8 x float> %i.ekm, splat (float f0xBE7FFFFC)
  %i.eko = fmul fast <8 x float> %i.ekn, %i.ejy
  %i.ekp = fadd fast <8 x float> %i.eko, splat (float f0x3EAAAAAA)
  %i.ekq = fmul fast <8 x float> %i.ekp, %i.ejy
  %reass.mul167.i40.i = fmul fast <8 x float> %i.ejx, splat (float f0x3F317218)
  %reass.add168.i.i = fadd fast <8 x float> %i.ekq, splat (float -5.000000e-01)
  %reass.mul169.i.i = fmul fast <8 x float> %i.ejz, %reass.add168.i.i
  %i.ekr = fadd fast <8 x float> %reass.mul167.i40.i, %i.ejy
  %i.eks = fadd fast <8 x float> %i.ekr, %reass.mul169.i.i
  %i.ekt = fmul fast <8 x float> %i.eks, %i.eje
  %i.eku = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ekt, <8 x float> splat (float f0x42B0C0A5))
  %i.ekv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eku, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ekw = fmul fast <8 x float> %i.ekv, splat (float f0x3FB8AA3B)
  %i.ekx = fadd fast <8 x float> %i.ekw, splat (float 5.000000e-01) ; 2 uses
  %i.eky = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ekx, i32 1) ; 2 uses
  %i.ekz = fcmp fast ogt <8 x float> %i.eky, %i.ekx
  %i.ela = select <8 x i1> %i.ekz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.elb = fsub fast <8 x float> %i.eky, %i.ela   ; 2 uses
  %i.elc = fmul fast <8 x float> %i.elb, splat (float f0x3F317218)
  %i.eld = fsub fast <8 x float> %i.ekv, %i.elc   ; 8 uses
  %i.ele = fmul fast <8 x float> %i.eld, %i.eld
  %i.elf = fmul fast <8 x float> %i.eld, splat (float f0x39506967)
  %i.elg = fadd fast <8 x float> %i.elf, splat (float f0x3AB743CE)
  %i.elh = fmul fast <8 x float> %i.elg, %i.eld
  %i.eli = fadd fast <8 x float> %i.elh, splat (float f0x3C088908)
  %i.elj = fmul fast <8 x float> %i.eli, %i.eld
  %i.elk = fadd fast <8 x float> %i.elj, splat (float f0x3D2AA9C1)
  %i.ell = fmul fast <8 x float> %i.elk, %i.eld
  %i.elm = fadd fast <8 x float> %i.ell, splat (float f0x3E2AAAAA)
  %i.eln = fmul fast <8 x float> %i.elm, %i.eld
  %i.elo = fadd fast <8 x float> %i.eln, splat (float 5.000000e-01)
  %i.elp = fmul fast <8 x float> %i.ele, %i.elo
  %i.elq = fadd fast <8 x float> %i.eld, splat (float 1.000000e+00)
  %i.elr = fadd fast <8 x float> %i.elq, %i.elp
  %i.els = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.elb)
  %i.elt = shl <8 x i32> %i.els, splat (i32 23)
  %i.elu = add <8 x i32> %i.elt, splat (i32 1065353216)
  %i.elv = bitcast <8 x i32> %i.elu to <8 x float>
  %i.elw = fmul fast <8 x float> %i.elr, %i.elv
  store <8 x float> %i.elw, ptr %.027172.i.i, align 1, !tbaa !60
  %i.elx = getelementptr inbounds nuw i8, ptr %.0173.i.i, i64 32 ; 2 uses
  %i.ely = getelementptr inbounds nuw i8, ptr %.027172.i.i, i64 32 ; 2 uses
  %i.elz = add nuw nsw i32 %.030171.i.i, 8        ; 2 uses
  %i.ema = or disjoint i32 %i.elz, 7
  %i.emb = icmp slt i32 %i.ema, %i.eax
  br i1 %i.emb, label %.lr.ph.i39.i, label %.preheader170.loopexit.i.i, !llvm.loop !264

.preheader.i35.i818:                              ; preds = %.lr.ph179.i.i, %.preheader170.i.i
  %.131.lcssa.i.i819 = phi i32 [ %.030.lcssa.i.i815, %.preheader170.i.i ], [ %i.eqf, %.lr.ph179.i.i ] ; 4 uses
  %.128.lcssa.i.i820 = phi ptr [ %.027.lcssa.i.i816, %.preheader170.i.i ], [ %i.eqe, %.lr.ph179.i.i ] ; 4 uses
  %.1.lcssa.i36.i821 = phi ptr [ %.0.lcssa.i34.i817, %.preheader170.i.i ], [ %i.eqd, %.lr.ph179.i.i ] ; 4 uses
  %i.emc = icmp slt i32 %.131.lcssa.i.i819, %i.eax
  br i1 %i.emc, label %.lr.ph186.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph186.i.i.preheader:                          ; preds = %.preheader.i35.i818
  %.1.lcssa.i36.i8215522 = ptrtoaddr ptr %.1.lcssa.i36.i821 to i64
  %.128.lcssa.i.i8205521 = ptrtoaddr ptr %.128.lcssa.i.i820 to i64
  %i.emd = xor i32 %.131.lcssa.i.i819, -1
  %i.eme = add i32 %i.eax, %i.emd                 ; 2 uses
  %i.emf = zext i32 %i.eme to i64
  %i.emg = add nuw nsw i64 %i.emf, 1              ; 2 uses
  %min.iters.check5524 = icmp ult i32 %i.eme, 7
  %i.emh = sub i64 %.1.lcssa.i36.i8215522, %.128.lcssa.i.i8205521
  %diff.check5526 = icmp ugt i64 %i.emh, -32
  %or.cond6400 = select i1 %min.iters.check5524, i1 true, i1 %diff.check5526
  br i1 %or.cond6400, label %.lr.ph186.i.i.preheader6622, label %vector.ph5527

vector.ph5527:                                    ; preds = %.lr.ph186.i.i.preheader
  %n.vec5528 = and i64 %i.emg, 8589934584         ; 4 uses
  %i.emi = shl nuw nsw i64 %n.vec5528, 2          ; 2 uses
  %i.emj = getelementptr i8, ptr %.1.lcssa.i36.i821, i64 %i.emi
  %i.emk = getelementptr i8, ptr %.128.lcssa.i.i820, i64 %i.emi
  %i.eml = trunc i64 %n.vec5528 to i32
  %i.emm = add i32 %.131.lcssa.i.i819, %i.eml
  %i.emn = insertelement <4 x float> poison, float %i.eiu, i64 0
  %i.emo = shufflevector <4 x float> %i.emn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5529

vector.body5529:                                  ; preds = %vector.body5529, %vector.ph5527
  %index5530 = phi i64 [ 0, %vector.ph5527 ], [ %index.next5534, %vector.body5529 ] ; 2 uses
  %i.emp = shl i64 %index5530, 2                  ; 2 uses
  %next.gep5531 = getelementptr i8, ptr %.1.lcssa.i36.i821, i64 %i.emp
  %next.gep5532 = getelementptr i8, ptr %.128.lcssa.i.i820, i64 %i.emp
  %wide.load5533 = load <8 x float>, ptr %next.gep5531, align 4, !tbaa !59 ; 5 uses
  %i.emq = extractelement <8 x float> %wide.load5533, i64 0
  %i.emr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.emq, float %i.eiu)
  %i.ems = extractelement <8 x float> %wide.load5533, i64 1
  %i.emt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ems, float %i.eiu)
  %i.emu = extractelement <8 x float> %wide.load5533, i64 2
  %i.emv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.emu, float %i.eiu)
  %i.emw = extractelement <8 x float> %wide.load5533, i64 3
  %i.emx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.emw, float %i.eiu)
  %i.emy = shufflevector <8 x float> %wide.load5533, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.emz = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.emy, <4 x float> %i.emo)
  %i.ena = insertelement <8 x float> poison, float %i.emr, i64 0
  %i.enb = insertelement <8 x float> %i.ena, float %i.emt, i64 1
  %i.enc = insertelement <8 x float> %i.enb, float %i.emv, i64 2
  %i.end = insertelement <8 x float> %i.enc, float %i.emx, i64 3
  %i.ene = shufflevector <4 x float> %i.emz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.enf = shufflevector <8 x float> %i.end, <8 x float> %i.ene, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.enf, ptr %next.gep5532, align 4, !tbaa !59
  %index.next5534 = add nuw i64 %index5530, 8     ; 2 uses
  %i.eng = icmp eq i64 %index.next5534, %n.vec5528
  br i1 %i.eng, label %middle.block5535, label %vector.body5529, !llvm.loop !265

middle.block5535:                                 ; preds = %vector.body5529
  %cmp.n5536 = icmp eq i64 %i.emg, %n.vec5528
  br i1 %cmp.n5536, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph186.i.i.preheader6622

.lr.ph186.i.i.preheader6622:                      ; preds = %.lr.ph186.i.i.preheader, %middle.block5535
  %.2185.i.i.ph = phi ptr [ %.1.lcssa.i36.i821, %.lr.ph186.i.i.preheader ], [ %i.emj, %middle.block5535 ] ; 2 uses
  %.229184.i.i.ph = phi ptr [ %.128.lcssa.i.i820, %.lr.ph186.i.i.preheader ], [ %i.emk, %middle.block5535 ] ; 2 uses
  %.232183.i.i.ph = phi i32 [ %.131.lcssa.i.i819, %.lr.ph186.i.i.preheader ], [ %i.emm, %middle.block5535 ] ; 4 uses
  %i.enh = sub i32 %i.eax, %.232183.i.i.ph
  %xtraiter7627 = and i32 %i.enh, 3               ; 2 uses
  %lcmp.mod7628.not = icmp eq i32 %xtraiter7627, 0
  br i1 %lcmp.mod7628.not, label %.lr.ph186.i.i.prol.loopexit, label %.lr.ph186.i.i.prol

.lr.ph186.i.i.prol:                               ; preds = %.lr.ph186.i.i.preheader6622, %.lr.ph186.i.i.prol
  %.2185.i.i.prol = phi ptr [ %i.enk, %.lr.ph186.i.i.prol ], [ %.2185.i.i.ph, %.lr.ph186.i.i.preheader6622 ] ; 2 uses
  %.229184.i.i.prol = phi ptr [ %i.enl, %.lr.ph186.i.i.prol ], [ %.229184.i.i.ph, %.lr.ph186.i.i.preheader6622 ] ; 2 uses
  %.232183.i.i.prol = phi i32 [ %i.enm, %.lr.ph186.i.i.prol ], [ %.232183.i.i.ph, %.lr.ph186.i.i.preheader6622 ]
  %prol.iter7629 = phi i32 [ %prol.iter7629.next, %.lr.ph186.i.i.prol ], [ 0, %.lr.ph186.i.i.preheader6622 ]
  %i.eni = load float, ptr %.2185.i.i.prol, align 4, !tbaa !59
  %i.enj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eni, float %i.eiu)
  store float %i.enj, ptr %.229184.i.i.prol, align 4, !tbaa !59
  %i.enk = getelementptr inbounds nuw i8, ptr %.2185.i.i.prol, i64 4 ; 2 uses
  %i.enl = getelementptr inbounds nuw i8, ptr %.229184.i.i.prol, i64 4 ; 2 uses
  %i.enm = add nuw nsw i32 %.232183.i.i.prol, 1   ; 2 uses
  %prol.iter7629.next = add i32 %prol.iter7629, 1 ; 2 uses
  %prol.iter7629.cmp.not = icmp eq i32 %prol.iter7629.next, %xtraiter7627
  br i1 %prol.iter7629.cmp.not, label %.lr.ph186.i.i.prol.loopexit, label %.lr.ph186.i.i.prol, !llvm.loop !266

.lr.ph186.i.i.prol.loopexit:                      ; preds = %.lr.ph186.i.i.prol, %.lr.ph186.i.i.preheader6622
  %.2185.i.i.unr = phi ptr [ %.2185.i.i.ph, %.lr.ph186.i.i.preheader6622 ], [ %i.enk, %.lr.ph186.i.i.prol ]
  %.229184.i.i.unr = phi ptr [ %.229184.i.i.ph, %.lr.ph186.i.i.preheader6622 ], [ %i.enl, %.lr.ph186.i.i.prol ]
  %.232183.i.i.unr = phi i32 [ %.232183.i.i.ph, %.lr.ph186.i.i.preheader6622 ], [ %i.enm, %.lr.ph186.i.i.prol ]
  %i.enn = sub i32 %.232183.i.i.ph, %i.eax
  %i.eno = icmp ugt i32 %i.enn, -4
  br i1 %i.eno, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph186.i.i

.lr.ph179.i.i:                                    ; preds = %.preheader170.i.i, %.lr.ph179.i.i
  %.1178.i.i = phi ptr [ %i.eqd, %.lr.ph179.i.i ], [ %.0.lcssa.i34.i817, %.preheader170.i.i ] ; 2 uses
  %.128177.i.i = phi ptr [ %i.eqe, %.lr.ph179.i.i ], [ %.027.lcssa.i.i816, %.preheader170.i.i ] ; 2 uses
  %.131176.i.i = phi i32 [ %i.eqf, %.lr.ph179.i.i ], [ %.030.lcssa.i.i815, %.preheader170.i.i ]
  %i.enp = load <4 x float>, ptr %.1178.i.i, align 1, !tbaa !60
  %i.enq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.enp, <4 x float> splat (float f0x00800000))
  %i.enr = bitcast <4 x float> %i.enq to <4 x i32> ; 2 uses
  %i.ens = lshr <4 x i32> %i.enr, splat (i32 23)
  %i.ent = and <4 x i32> %i.enr, splat (i32 -2139095041)
  %i.enu = or disjoint <4 x i32> %i.ent, splat (i32 1056964608)
  %i.env = bitcast <4 x i32> %i.enu to <4 x float> ; 3 uses
  %i.enw = add nsw <4 x i32> %i.ens, splat (i32 -127)
  %i.enx = sitofp fast <4 x i32> %i.enw to <4 x float> ; 2 uses
  %i.eny = fadd fast <4 x float> %i.enx, splat (float 1.000000e+00)
  %i.enz = fcmp fast olt <4 x float> %i.env, splat (float f0x3F3504F3) ; 2 uses
  %i.eoa = select <4 x i1> %i.enz, <4 x float> %i.env, <4 x float> zeroinitializer
  %i.eob = fadd fast <4 x float> %i.env, splat (float -1.000000e+00)
  %i.eoc = select fast <4 x i1> %i.enz, <4 x float> %i.enx, <4 x float> %i.eny
  %i.eod = fadd fast <4 x float> %i.eob, %i.eoa   ; 12 uses
  %i.eoe = fmul fast <4 x float> %i.eod, %i.eod
  %i.eof = fmul fast <4 x float> %i.eod, splat (float f0x3D9021BB)
  %i.eog = fadd fast <4 x float> %i.eof, splat (float f0xBDEBD1B8)
  %i.eoh = fmul fast <4 x float> %i.eog, %i.eod
  %i.eoi = fadd fast <4 x float> %i.eoh, splat (float f0x3DEF251A)
  %i.eoj = fmul fast <4 x float> %i.eoi, %i.eod
  %i.eok = fadd fast <4 x float> %i.eoj, splat (float f0xBDFE5D4F)
  %i.eol = fmul fast <4 x float> %i.eok, %i.eod
  %i.eom = fadd fast <4 x float> %i.eol, splat (float f0x3E11E9BF)
  %i.eon = fmul fast <4 x float> %i.eom, %i.eod
  %i.eoo = fadd fast <4 x float> %i.eon, splat (float f0xBE2AAE50)
  %i.eop = fmul fast <4 x float> %i.eoo, %i.eod
  %i.eoq = fadd fast <4 x float> %i.eop, splat (float f0x3E4CCEAC)
  %i.eor = fmul fast <4 x float> %i.eoq, %i.eod
  %i.eos = fadd fast <4 x float> %i.eor, splat (float f0xBE7FFFFC)
  %i.eot = fmul fast <4 x float> %i.eos, %i.eod
  %i.eou = fadd fast <4 x float> %i.eot, splat (float f0x3EAAAAAA)
  %i.eov = fmul fast <4 x float> %i.eou, %i.eod
  %reass.mul.i38.i = fmul fast <4 x float> %i.eoc, splat (float f0x3F317218)
  %reass.add165.i.i = fadd fast <4 x float> %i.eov, splat (float -5.000000e-01)
  %reass.mul166.i.i = fmul fast <4 x float> %i.eoe, %reass.add165.i.i
  %i.eow = fadd fast <4 x float> %reass.mul.i38.i, %i.eod
  %i.eox = fadd fast <4 x float> %i.eow, %reass.mul166.i.i
  %i.eoy = fmul fast <4 x float> %i.eox, %i.ejd
  %i.eoz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eoy, <4 x float> splat (float f0x42B0C0A5))
  %i.epa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eoz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.epb = fmul fast <4 x float> %i.epa, splat (float f0x3FB8AA3B)
  %i.epc = fadd fast <4 x float> %i.epb, splat (float 5.000000e-01) ; 2 uses
  %i.epd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.epc)
  %i.epe = sitofp fast <4 x i32> %i.epd to <4 x float> ; 2 uses
  %i.epf = fcmp fast olt <4 x float> %i.epc, %i.epe
  %i.epg = select <4 x i1> %i.epf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eph = fsub fast <4 x float> %i.epe, %i.epg   ; 2 uses
  %i.epi = fmul fast <4 x float> %i.eph, splat (float f0x3F317218)
  %i.epj = fsub fast <4 x float> %i.epa, %i.epi   ; 8 uses
  %i.epk = fmul fast <4 x float> %i.epj, %i.epj
  %i.epl = fmul fast <4 x float> %i.epj, splat (float f0x39506967)
  %i.epm = fadd fast <4 x float> %i.epl, splat (float f0x3AB743CE)
  %i.epn = fmul fast <4 x float> %i.epm, %i.epj
  %i.epo = fadd fast <4 x float> %i.epn, splat (float f0x3C088908)
  %i.epp = fmul fast <4 x float> %i.epo, %i.epj
  %i.epq = fadd fast <4 x float> %i.epp, splat (float f0x3D2AA9C1)
  %i.epr = fmul fast <4 x float> %i.epq, %i.epj
  %i.eps = fadd fast <4 x float> %i.epr, splat (float f0x3E2AAAAA)
  %i.ept = fmul fast <4 x float> %i.eps, %i.epj
  %i.epu = fadd fast <4 x float> %i.ept, splat (float 5.000000e-01)
  %i.epv = fmul fast <4 x float> %i.epk, %i.epu
  %i.epw = fadd fast <4 x float> %i.epj, splat (float 1.000000e+00)
  %i.epx = fadd fast <4 x float> %i.epw, %i.epv
  %i.epy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eph)
  %i.epz = shl <4 x i32> %i.epy, splat (i32 23)
  %i.eqa = add <4 x i32> %i.epz, splat (i32 1065353216)
  %i.eqb = bitcast <4 x i32> %i.eqa to <4 x float>
  %i.eqc = fmul fast <4 x float> %i.epx, %i.eqb
  store <4 x float> %i.eqc, ptr %.128177.i.i, align 1, !tbaa !60
  %i.eqd = getelementptr inbounds nuw i8, ptr %.1178.i.i, i64 16 ; 2 uses
  %i.eqe = getelementptr inbounds nuw i8, ptr %.128177.i.i, i64 16 ; 2 uses
  %i.eqf = add nuw nsw i32 %.131176.i.i, 4        ; 3 uses
  %i.eqg = or disjoint i32 %i.eqf, 3
  %i.eqh = icmp slt i32 %i.eqg, %i.eax
  br i1 %i.eqh, label %.lr.ph179.i.i, label %.preheader.i35.i818, !llvm.loop !267

.lr.ph186.i.i:                                    ; preds = %.lr.ph186.i.i.prol.loopexit, %.lr.ph186.i.i
  %.2185.i.i = phi ptr [ %i.eqw, %.lr.ph186.i.i ], [ %.2185.i.i.unr, %.lr.ph186.i.i.prol.loopexit ] ; 5 uses
  %.229184.i.i = phi ptr [ %i.eqx, %.lr.ph186.i.i ], [ %.229184.i.i.unr, %.lr.ph186.i.i.prol.loopexit ] ; 5 uses
  %.232183.i.i = phi i32 [ %i.eqy, %.lr.ph186.i.i ], [ %.232183.i.i.unr, %.lr.ph186.i.i.prol.loopexit ]
  %i.eqi = load float, ptr %.2185.i.i, align 4, !tbaa !59
  %i.eqj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eqi, float %i.eiu)
  store float %i.eqj, ptr %.229184.i.i, align 4, !tbaa !59
  %i.eqk = getelementptr inbounds nuw i8, ptr %.2185.i.i, i64 4
  %i.eql = getelementptr inbounds nuw i8, ptr %.229184.i.i, i64 4
  %i.eqm = load float, ptr %i.eqk, align 4, !tbaa !59
  %i.eqn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eqm, float %i.eiu)
  store float %i.eqn, ptr %i.eql, align 4, !tbaa !59
  %i.eqo = getelementptr inbounds nuw i8, ptr %.2185.i.i, i64 8
  %i.eqp = getelementptr inbounds nuw i8, ptr %.229184.i.i, i64 8
  %i.eqq = load float, ptr %i.eqo, align 4, !tbaa !59
  %i.eqr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.eqq, float %i.eiu)
  store float %i.eqr, ptr %i.eqp, align 4, !tbaa !59
  %i.eqs = getelementptr inbounds nuw i8, ptr %.2185.i.i, i64 12
  %i.eqt = getelementptr inbounds nuw i8, ptr %.229184.i.i, i64 12
  %i.equ = load float, ptr %i.eqs, align 4, !tbaa !59
  %i.eqv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.equ, float %i.eiu)
  store float %i.eqv, ptr %i.eqt, align 4, !tbaa !59
  %i.eqw = getelementptr inbounds nuw i8, ptr %.2185.i.i, i64 16
  %i.eqx = getelementptr inbounds nuw i8, ptr %.229184.i.i, i64 16
  %i.eqy = add nuw nsw i32 %.232183.i.i, 4        ; 2 uses
  %exitcond.not.i37.i822.3 = icmp eq i32 %i.eqy, %i.eax
  br i1 %exitcond.not.i37.i822.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph186.i.i, !llvm.loop !268

bb.ey:                                            ; preds = %bb.es
  %i.eqz = icmp eq i32 %3, 1
  br i1 %i.eqz, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey
  %i.era = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.erb = icmp eq i32 %.sroa.speculated.i800, 4
  br i1 %i.erb, label %.thread.i81.i, label %bb.fa

.thread.i81.i:                                    ; preds = %bb.ez
  %i.erc = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.erd = insertelement <4 x float> poison, float %i.era, i64 0
  %i.ere = shufflevector <4 x float> %i.erd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.erf = icmp eq i32 %.sroa.speculated.i800, 8
  br i1 %i.erf, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.erg = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa, %.thread.i81.i
  %i.erh = phi <4 x float> [ %i.erc, %.thread.i81.i ], [ %i.ere, %bb.fa ] ; 2 uses
  %i.eri = shufflevector <4 x float> %i.erh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.erj = phi <4 x float> [ %i.ere, %bb.fb ], [ %i.erh, %bb.fc ]
  %i.erk = phi fast <8 x float> [ %i.erg, %bb.fb ], [ %i.eri, %bb.fc ]
  %i.erl = icmp sgt i32 %i.eax, 7
  br i1 %i.erl, label %.lr.ph.i63.i814, label %.preheader170.i43.i

.lr.ph.i63.i814:                                  ; preds = %bb.fd
  %i.erm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.erk, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ern = bitcast <8 x float> %i.erm to <8 x i32>
  %i.ero = bitcast <8 x float> %i.erm to <8 x i32>
  %i.erp = and <8 x i32> %i.ero, splat (i32 -2139095041)
  %i.erq = or disjoint <8 x i32> %i.erp, splat (i32 1056964608)
  %i.err = bitcast <8 x i32> %i.erq to <8 x float> ; 3 uses
  %i.ers = lshr <8 x i32> %i.ern, splat (i32 23)
  %i.ert = add nsw <8 x i32> %i.ers, splat (i32 -127)
  %i.eru = sitofp fast <8 x i32> %i.ert to <8 x float> ; 2 uses
  %i.erv = fadd fast <8 x float> %i.eru, splat (float 1.000000e+00)
  %i.erw = fcmp fast olt <8 x float> %i.err, splat (float f0x3F3504F3) ; 2 uses
  %i.erx = select <8 x i1> %i.erw, <8 x float> %i.err, <8 x float> zeroinitializer
  %i.ery = fadd fast <8 x float> %i.err, splat (float -1.000000e+00)
  %i.erz = select fast <8 x i1> %i.erw, <8 x float> %i.eru, <8 x float> %i.erv
  %i.esa = fadd fast <8 x float> %i.ery, %i.erx   ; 12 uses
  %i.esb = fmul fast <8 x float> %i.esa, %i.esa
  %i.esc = fmul fast <8 x float> %i.esa, splat (float f0x3D9021BB)
  %i.esd = fadd fast <8 x float> %i.esc, splat (float f0xBDEBD1B8)
  %i.ese = fmul fast <8 x float> %i.esd, %i.esa
  %i.esf = fadd fast <8 x float> %i.ese, splat (float f0x3DEF251A)
  %i.esg = fmul fast <8 x float> %i.esf, %i.esa
  %i.esh = fadd fast <8 x float> %i.esg, splat (float f0xBDFE5D4F)
  %i.esi = fmul fast <8 x float> %i.esh, %i.esa
  %i.esj = fadd fast <8 x float> %i.esi, splat (float f0x3E11E9BF)
  %i.esk = fmul fast <8 x float> %i.esj, %i.esa
  %i.esl = fadd fast <8 x float> %i.esk, splat (float f0xBE2AAE50)
  %i.esm = fmul fast <8 x float> %i.esl, %i.esa
  %i.esn = fadd fast <8 x float> %i.esm, splat (float f0x3E4CCEAC)
  %i.eso = fmul fast <8 x float> %i.esn, %i.esa
  %i.esp = fadd fast <8 x float> %i.eso, splat (float f0xBE7FFFFC)
  %i.esq = fmul fast <8 x float> %i.esp, %i.esa
  %i.esr = fadd fast <8 x float> %i.esq, splat (float f0x3EAAAAAA)
  %i.ess = fmul fast <8 x float> %i.esr, %i.esa
  %reass.mul167.i69.i = fmul fast <8 x float> %i.erz, splat (float f0x3F317218)
  %reass.add168.i70.i = fadd fast <8 x float> %i.ess, splat (float -5.000000e-01)
  %reass.mul169.i71.i = fmul fast <8 x float> %i.esb, %reass.add168.i70.i
  %i.est = fadd fast <8 x float> %reass.mul167.i69.i, %i.esa
  %i.esu = fadd fast <8 x float> %i.est, %reass.mul169.i71.i
  br label %bb.fe

.preheader170.loopexit.i80.i:                     ; preds = %bb.fe
  %i.esv = and i32 %i.eax, 2147483640
  br label %.preheader170.i43.i

.preheader170.i43.i:                              ; preds = %.preheader170.loopexit.i80.i, %bb.fd
  %.030.lcssa.i44.i = phi i32 [ 0, %bb.fd ], [ %i.esv, %.preheader170.loopexit.i80.i ] ; 3 uses
  %.027.lcssa.i45.i = phi ptr [ %2, %bb.fd ], [ %i.evm, %.preheader170.loopexit.i80.i ] ; 2 uses
  %.0.lcssa.i46.i = phi ptr [ %1, %bb.fd ], [ %i.evl, %.preheader170.loopexit.i80.i ] ; 2 uses
  %i.esw = or disjoint i32 %.030.lcssa.i44.i, 3
  %i.esx = icmp slt i32 %i.esw, %i.eax
  br i1 %i.esx, label %.lr.ph179.i56.i, label %.preheader.i47.i

.lr.ph179.i56.i:                                  ; preds = %.preheader170.i43.i
  %i.esy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.erj, <4 x float> splat (float f0x00800000))
  %i.esz = bitcast <4 x float> %i.esy to <4 x i32> ; 2 uses
  %i.eta = lshr <4 x i32> %i.esz, splat (i32 23)
  %i.etb = and <4 x i32> %i.esz, splat (i32 -2139095041)
  %i.etc = or disjoint <4 x i32> %i.etb, splat (i32 1056964608)
  %i.etd = bitcast <4 x i32> %i.etc to <4 x float> ; 3 uses
  %i.ete = add nsw <4 x i32> %i.eta, splat (i32 -127)
  %i.etf = sitofp fast <4 x i32> %i.ete to <4 x float> ; 2 uses
  %i.etg = fadd fast <4 x float> %i.etf, splat (float 1.000000e+00)
  %i.eth = fcmp fast olt <4 x float> %i.etd, splat (float f0x3F3504F3) ; 2 uses
  %i.eti = select <4 x i1> %i.eth, <4 x float> %i.etd, <4 x float> zeroinitializer
  %i.etj = fadd fast <4 x float> %i.etd, splat (float -1.000000e+00)
  %i.etk = select fast <4 x i1> %i.eth, <4 x float> %i.etf, <4 x float> %i.etg
  %i.etl = fadd fast <4 x float> %i.etj, %i.eti   ; 12 uses
  %i.etm = fmul fast <4 x float> %i.etl, %i.etl
  %i.etn = fmul fast <4 x float> %i.etl, splat (float f0x3D9021BB)
  %i.eto = fadd fast <4 x float> %i.etn, splat (float f0xBDEBD1B8)
  %i.etp = fmul fast <4 x float> %i.eto, %i.etl
  %i.etq = fadd fast <4 x float> %i.etp, splat (float f0x3DEF251A)
  %i.etr = fmul fast <4 x float> %i.etq, %i.etl
  %i.ets = fadd fast <4 x float> %i.etr, splat (float f0xBDFE5D4F)
  %i.ett = fmul fast <4 x float> %i.ets, %i.etl
  %i.etu = fadd fast <4 x float> %i.ett, splat (float f0x3E11E9BF)
  %i.etv = fmul fast <4 x float> %i.etu, %i.etl
  %i.etw = fadd fast <4 x float> %i.etv, splat (float f0xBE2AAE50)
  %i.etx = fmul fast <4 x float> %i.etw, %i.etl
  %i.ety = fadd fast <4 x float> %i.etx, splat (float f0x3E4CCEAC)
  %i.etz = fmul fast <4 x float> %i.ety, %i.etl
  %i.eua = fadd fast <4 x float> %i.etz, splat (float f0xBE7FFFFC)
  %i.eub = fmul fast <4 x float> %i.eua, %i.etl
  %i.euc = fadd fast <4 x float> %i.eub, splat (float f0x3EAAAAAA)
  %i.eud = fmul fast <4 x float> %i.euc, %i.etl
  %reass.mul.i57.i = fmul fast <4 x float> %i.etk, splat (float f0x3F317218)
  %reass.add165.i58.i = fadd fast <4 x float> %i.eud, splat (float -5.000000e-01)
  %reass.mul166.i59.i = fmul fast <4 x float> %i.etm, %reass.add165.i58.i
  %i.eue = fadd fast <4 x float> %reass.mul.i57.i, %i.etl
  %i.euf = fadd fast <4 x float> %i.eue, %reass.mul166.i59.i
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fe, %.lr.ph.i63.i814
  %.0173.i72.i = phi ptr [ %1, %.lr.ph.i63.i814 ], [ %i.evl, %bb.fe ] ; 2 uses
  %.027172.i73.i = phi ptr [ %2, %.lr.ph.i63.i814 ], [ %i.evm, %bb.fe ] ; 2 uses
  %.030171.i74.i = phi i32 [ 0, %.lr.ph.i63.i814 ], [ %i.evn, %bb.fe ]
  %i.eug = load <8 x float>, ptr %.0173.i72.i, align 1, !tbaa !60
  %i.euh = fmul fast <8 x float> %i.eug, %i.esu
  %i.eui = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.euh, <8 x float> splat (float f0x42B0C0A5))
  %i.euj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eui, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.euk = fmul fast <8 x float> %i.euj, splat (float f0x3FB8AA3B)
  %i.eul = fadd fast <8 x float> %i.euk, splat (float 5.000000e-01) ; 2 uses
  %i.eum = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eul, i32 1) ; 2 uses
  %i.eun = fcmp fast ogt <8 x float> %i.eum, %i.eul
  %i.euo = select <8 x i1> %i.eun, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eup = fsub fast <8 x float> %i.eum, %i.euo   ; 2 uses
  %i.euq = fmul fast <8 x float> %i.eup, splat (float f0x3F317218)
  %i.eur = fsub fast <8 x float> %i.euj, %i.euq   ; 8 uses
  %i.eus = fmul fast <8 x float> %i.eur, %i.eur
  %i.eut = fmul fast <8 x float> %i.eur, splat (float f0x39506967)
  %i.euu = fadd fast <8 x float> %i.eut, splat (float f0x3AB743CE)
  %i.euv = fmul fast <8 x float> %i.euu, %i.eur
  %i.euw = fadd fast <8 x float> %i.euv, splat (float f0x3C088908)
  %i.eux = fmul fast <8 x float> %i.euw, %i.eur
  %i.euy = fadd fast <8 x float> %i.eux, splat (float f0x3D2AA9C1)
  %i.euz = fmul fast <8 x float> %i.euy, %i.eur
  %i.eva = fadd fast <8 x float> %i.euz, splat (float f0x3E2AAAAA)
  %i.evb = fmul fast <8 x float> %i.eva, %i.eur
  %i.evc = fadd fast <8 x float> %i.evb, splat (float 5.000000e-01)
  %i.evd = fmul fast <8 x float> %i.eus, %i.evc
  %i.eve = fadd fast <8 x float> %i.eur, splat (float 1.000000e+00)
  %i.evf = fadd fast <8 x float> %i.eve, %i.evd
  %i.evg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eup)
  %i.evh = shl <8 x i32> %i.evg, splat (i32 23)
  %i.evi = add <8 x i32> %i.evh, splat (i32 1065353216)
  %i.evj = bitcast <8 x i32> %i.evi to <8 x float>
  %i.evk = fmul fast <8 x float> %i.evf, %i.evj
  store <8 x float> %i.evk, ptr %.027172.i73.i, align 1, !tbaa !60
  %i.evl = getelementptr inbounds nuw i8, ptr %.0173.i72.i, i64 32 ; 2 uses
  %i.evm = getelementptr inbounds nuw i8, ptr %.027172.i73.i, i64 32 ; 2 uses
  %i.evn = add nuw nsw i32 %.030171.i74.i, 8      ; 2 uses
  %i.evo = or disjoint i32 %i.evn, 7
  %i.evp = icmp slt i32 %i.evo, %i.eax
  br i1 %i.evp, label %bb.fe, label %.preheader170.loopexit.i80.i, !llvm.loop !269

.preheader.i47.i:                                 ; preds = %bb.ff, %.preheader170.i43.i
  %.131.lcssa.i48.i = phi i32 [ %.030.lcssa.i44.i, %.preheader170.i43.i ], [ %i.eyl, %bb.ff ] ; 4 uses
  %.128.lcssa.i49.i = phi ptr [ %.027.lcssa.i45.i, %.preheader170.i43.i ], [ %i.eyk, %bb.ff ] ; 4 uses
  %.1.lcssa.i50.i = phi ptr [ %.0.lcssa.i46.i, %.preheader170.i43.i ], [ %i.eyj, %bb.ff ] ; 4 uses
  %i.evq = icmp slt i32 %.131.lcssa.i48.i, %i.eax
  br i1 %i.evq, label %.lr.ph186.i51.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph186.i51.i.preheader:                        ; preds = %.preheader.i47.i
  %.1.lcssa.i50.i5499 = ptrtoaddr ptr %.1.lcssa.i50.i to i64
  %.128.lcssa.i49.i5498 = ptrtoaddr ptr %.128.lcssa.i49.i to i64
  %i.evr = xor i32 %.131.lcssa.i48.i, -1
  %i.evs = add i32 %i.eax, %i.evr                 ; 2 uses
  %i.evt = zext i32 %i.evs to i64
  %i.evu = add nuw nsw i64 %i.evt, 1              ; 2 uses
  %min.iters.check5501 = icmp ult i32 %i.evs, 7
  %i.evv = sub i64 %.1.lcssa.i50.i5499, %.128.lcssa.i49.i5498
  %diff.check5503 = icmp ugt i64 %i.evv, -32
  %or.cond6401 = select i1 %min.iters.check5501, i1 true, i1 %diff.check5503
  br i1 %or.cond6401, label %.lr.ph186.i51.i.preheader6629, label %vector.ph5504

vector.ph5504:                                    ; preds = %.lr.ph186.i51.i.preheader
  %n.vec5505 = and i64 %i.evu, 8589934584         ; 4 uses
  %i.evw = shl nuw nsw i64 %n.vec5505, 2          ; 2 uses
  %i.evx = getelementptr i8, ptr %.1.lcssa.i50.i, i64 %i.evw
  %i.evy = getelementptr i8, ptr %.128.lcssa.i49.i, i64 %i.evw
  %i.evz = trunc i64 %n.vec5505 to i32
  %i.ewa = add i32 %.131.lcssa.i48.i, %i.evz
  %i.ewb = insertelement <4 x float> poison, float %i.era, i64 0
  %i.ewc = shufflevector <4 x float> %i.ewb, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5506

vector.body5506:                                  ; preds = %vector.body5506, %vector.ph5504
  %index5507 = phi i64 [ 0, %vector.ph5504 ], [ %index.next5511, %vector.body5506 ] ; 2 uses
  %i.ewd = shl i64 %index5507, 2                  ; 2 uses
  %next.gep5508 = getelementptr i8, ptr %.1.lcssa.i50.i, i64 %i.ewd
  %next.gep5509 = getelementptr i8, ptr %.128.lcssa.i49.i, i64 %i.ewd
  %wide.load5510 = load <8 x float>, ptr %next.gep5508, align 4, !tbaa !59 ; 5 uses
  %i.ewe = extractelement <8 x float> %wide.load5510, i64 0
  %i.ewf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.ewe)
  %i.ewg = extractelement <8 x float> %wide.load5510, i64 1
  %i.ewh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.ewg)
  %i.ewi = extractelement <8 x float> %wide.load5510, i64 2
  %i.ewj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.ewi)
  %i.ewk = extractelement <8 x float> %wide.load5510, i64 3
  %i.ewl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.ewk)
  %i.ewm = shufflevector <8 x float> %wide.load5510, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ewn = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ewc, <4 x float> %i.ewm)
  %i.ewo = insertelement <8 x float> poison, float %i.ewf, i64 0
  %i.ewp = insertelement <8 x float> %i.ewo, float %i.ewh, i64 1
  %i.ewq = insertelement <8 x float> %i.ewp, float %i.ewj, i64 2
  %i.ewr = insertelement <8 x float> %i.ewq, float %i.ewl, i64 3
  %i.ews = shufflevector <4 x float> %i.ewn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ewt = shufflevector <8 x float> %i.ewr, <8 x float> %i.ews, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.ewt, ptr %next.gep5509, align 4, !tbaa !59
  %index.next5511 = add nuw i64 %index5507, 8     ; 2 uses
  %i.ewu = icmp eq i64 %index.next5511, %n.vec5505
  br i1 %i.ewu, label %middle.block5512, label %vector.body5506, !llvm.loop !270

middle.block5512:                                 ; preds = %vector.body5506
  %cmp.n5513 = icmp eq i64 %i.evu, %n.vec5505
  br i1 %cmp.n5513, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph186.i51.i.preheader6629

.lr.ph186.i51.i.preheader6629:                    ; preds = %.lr.ph186.i51.i.preheader, %middle.block5512
  %.2185.i52.i.ph = phi ptr [ %.1.lcssa.i50.i, %.lr.ph186.i51.i.preheader ], [ %i.evx, %middle.block5512 ] ; 2 uses
  %.229184.i53.i.ph = phi ptr [ %.128.lcssa.i49.i, %.lr.ph186.i51.i.preheader ], [ %i.evy, %middle.block5512 ] ; 2 uses
  %.232183.i54.i.ph = phi i32 [ %.131.lcssa.i48.i, %.lr.ph186.i51.i.preheader ], [ %i.ewa, %middle.block5512 ] ; 4 uses
  %i.ewv = sub i32 %i.eax, %.232183.i54.i.ph
  %xtraiter7624 = and i32 %i.ewv, 3               ; 2 uses
  %lcmp.mod7625.not = icmp eq i32 %xtraiter7624, 0
  br i1 %lcmp.mod7625.not, label %.lr.ph186.i51.i.prol.loopexit, label %.lr.ph186.i51.i.prol

.lr.ph186.i51.i.prol:                             ; preds = %.lr.ph186.i51.i.preheader6629, %.lr.ph186.i51.i.prol
  %.2185.i52.i.prol = phi ptr [ %i.ewy, %.lr.ph186.i51.i.prol ], [ %.2185.i52.i.ph, %.lr.ph186.i51.i.preheader6629 ] ; 2 uses
  %.229184.i53.i.prol = phi ptr [ %i.ewz, %.lr.ph186.i51.i.prol ], [ %.229184.i53.i.ph, %.lr.ph186.i51.i.preheader6629 ] ; 2 uses
  %.232183.i54.i.prol = phi i32 [ %i.exa, %.lr.ph186.i51.i.prol ], [ %.232183.i54.i.ph, %.lr.ph186.i51.i.preheader6629 ]
  %prol.iter7626 = phi i32 [ %prol.iter7626.next, %.lr.ph186.i51.i.prol ], [ 0, %.lr.ph186.i51.i.preheader6629 ]
  %i.eww = load float, ptr %.2185.i52.i.prol, align 4, !tbaa !59
  %i.ewx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.eww)
  store float %i.ewx, ptr %.229184.i53.i.prol, align 4, !tbaa !59
  %i.ewy = getelementptr inbounds nuw i8, ptr %.2185.i52.i.prol, i64 4 ; 2 uses
  %i.ewz = getelementptr inbounds nuw i8, ptr %.229184.i53.i.prol, i64 4 ; 2 uses
  %i.exa = add nuw nsw i32 %.232183.i54.i.prol, 1 ; 2 uses
  %prol.iter7626.next = add i32 %prol.iter7626, 1 ; 2 uses
  %prol.iter7626.cmp.not = icmp eq i32 %prol.iter7626.next, %xtraiter7624
  br i1 %prol.iter7626.cmp.not, label %.lr.ph186.i51.i.prol.loopexit, label %.lr.ph186.i51.i.prol, !llvm.loop !271

.lr.ph186.i51.i.prol.loopexit:                    ; preds = %.lr.ph186.i51.i.prol, %.lr.ph186.i51.i.preheader6629
  %.2185.i52.i.unr = phi ptr [ %.2185.i52.i.ph, %.lr.ph186.i51.i.preheader6629 ], [ %i.ewy, %.lr.ph186.i51.i.prol ]
  %.229184.i53.i.unr = phi ptr [ %.229184.i53.i.ph, %.lr.ph186.i51.i.preheader6629 ], [ %i.ewz, %.lr.ph186.i51.i.prol ]
  %.232183.i54.i.unr = phi i32 [ %.232183.i54.i.ph, %.lr.ph186.i51.i.preheader6629 ], [ %i.exa, %.lr.ph186.i51.i.prol ]
  %i.exb = sub i32 %.232183.i54.i.ph, %i.eax
  %i.exc = icmp ugt i32 %i.exb, -4
  br i1 %i.exc, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph186.i51.i

bb.ff:                                            ; preds = %bb.ff, %.lr.ph179.i56.i
  %.1178.i60.i = phi ptr [ %.0.lcssa.i46.i, %.lr.ph179.i56.i ], [ %i.eyj, %bb.ff ] ; 2 uses
  %.128177.i61.i = phi ptr [ %.027.lcssa.i45.i, %.lr.ph179.i56.i ], [ %i.eyk, %bb.ff ] ; 2 uses
  %.131176.i62.i = phi i32 [ %.030.lcssa.i44.i, %.lr.ph179.i56.i ], [ %i.eyl, %bb.ff ]
  %i.exd = load <4 x float>, ptr %.1178.i60.i, align 1, !tbaa !60
  %i.exe = fmul fast <4 x float> %i.exd, %i.euf
  %i.exf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.exe, <4 x float> splat (float f0x42B0C0A5))
  %i.exg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.exf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.exh = fmul fast <4 x float> %i.exg, splat (float f0x3FB8AA3B)
  %i.exi = fadd fast <4 x float> %i.exh, splat (float 5.000000e-01) ; 2 uses
  %i.exj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.exi)
  %i.exk = sitofp fast <4 x i32> %i.exj to <4 x float> ; 2 uses
  %i.exl = fcmp fast olt <4 x float> %i.exi, %i.exk
  %i.exm = select <4 x i1> %i.exl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.exn = fsub fast <4 x float> %i.exk, %i.exm   ; 2 uses
  %i.exo = fmul fast <4 x float> %i.exn, splat (float f0x3F317218)
  %i.exp = fsub fast <4 x float> %i.exg, %i.exo   ; 8 uses
  %i.exq = fmul fast <4 x float> %i.exp, %i.exp
  %i.exr = fmul fast <4 x float> %i.exp, splat (float f0x39506967)
  %i.exs = fadd fast <4 x float> %i.exr, splat (float f0x3AB743CE)
  %i.ext = fmul fast <4 x float> %i.exs, %i.exp
  %i.exu = fadd fast <4 x float> %i.ext, splat (float f0x3C088908)
  %i.exv = fmul fast <4 x float> %i.exu, %i.exp
  %i.exw = fadd fast <4 x float> %i.exv, splat (float f0x3D2AA9C1)
  %i.exx = fmul fast <4 x float> %i.exw, %i.exp
  %i.exy = fadd fast <4 x float> %i.exx, splat (float f0x3E2AAAAA)
  %i.exz = fmul fast <4 x float> %i.exy, %i.exp
  %i.eya = fadd fast <4 x float> %i.exz, splat (float 5.000000e-01)
  %i.eyb = fmul fast <4 x float> %i.exq, %i.eya
  %i.eyc = fadd fast <4 x float> %i.exp, splat (float 1.000000e+00)
  %i.eyd = fadd fast <4 x float> %i.eyc, %i.eyb
  %i.eye = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.exn)
  %i.eyf = shl <4 x i32> %i.eye, splat (i32 23)
  %i.eyg = add <4 x i32> %i.eyf, splat (i32 1065353216)
  %i.eyh = bitcast <4 x i32> %i.eyg to <4 x float>
  %i.eyi = fmul fast <4 x float> %i.eyd, %i.eyh
  store <4 x float> %i.eyi, ptr %.128177.i61.i, align 1, !tbaa !60
  %i.eyj = getelementptr inbounds nuw i8, ptr %.1178.i60.i, i64 16 ; 2 uses
  %i.eyk = getelementptr inbounds nuw i8, ptr %.128177.i61.i, i64 16 ; 2 uses
  %i.eyl = add nuw nsw i32 %.131176.i62.i, 4      ; 3 uses
  %i.eym = or disjoint i32 %i.eyl, 3
  %i.eyn = icmp slt i32 %i.eym, %i.eax
  br i1 %i.eyn, label %bb.ff, label %.preheader.i47.i, !llvm.loop !272

.lr.ph186.i51.i:                                  ; preds = %.lr.ph186.i51.i.prol.loopexit, %.lr.ph186.i51.i
  %.2185.i52.i = phi ptr [ %i.ezc, %.lr.ph186.i51.i ], [ %.2185.i52.i.unr, %.lr.ph186.i51.i.prol.loopexit ] ; 5 uses
  %.229184.i53.i = phi ptr [ %i.ezd, %.lr.ph186.i51.i ], [ %.229184.i53.i.unr, %.lr.ph186.i51.i.prol.loopexit ] ; 5 uses
  %.232183.i54.i = phi i32 [ %i.eze, %.lr.ph186.i51.i ], [ %.232183.i54.i.unr, %.lr.ph186.i51.i.prol.loopexit ]
  %i.eyo = load float, ptr %.2185.i52.i, align 4, !tbaa !59
  %i.eyp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.eyo)
  store float %i.eyp, ptr %.229184.i53.i, align 4, !tbaa !59
  %i.eyq = getelementptr inbounds nuw i8, ptr %.2185.i52.i, i64 4
  %i.eyr = getelementptr inbounds nuw i8, ptr %.229184.i53.i, i64 4
  %i.eys = load float, ptr %i.eyq, align 4, !tbaa !59
  %i.eyt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.eys)
  store float %i.eyt, ptr %i.eyr, align 4, !tbaa !59
  %i.eyu = getelementptr inbounds nuw i8, ptr %.2185.i52.i, i64 8
  %i.eyv = getelementptr inbounds nuw i8, ptr %.229184.i53.i, i64 8
  %i.eyw = load float, ptr %i.eyu, align 4, !tbaa !59
  %i.eyx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.eyw)
  store float %i.eyx, ptr %i.eyv, align 4, !tbaa !59
  %i.eyy = getelementptr inbounds nuw i8, ptr %.2185.i52.i, i64 12
  %i.eyz = getelementptr inbounds nuw i8, ptr %.229184.i53.i, i64 12
  %i.eza = load float, ptr %i.eyy, align 4, !tbaa !59
  %i.ezb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.era, float %i.eza)
  store float %i.ezb, ptr %i.eyz, align 4, !tbaa !59
  %i.ezc = getelementptr inbounds nuw i8, ptr %.2185.i52.i, i64 16
  %i.ezd = getelementptr inbounds nuw i8, ptr %.229184.i53.i, i64 16
  %i.eze = add nuw nsw i32 %.232183.i54.i, 4      ; 2 uses
  %exitcond.not.i55.i.3 = icmp eq i32 %i.eze, %i.eax
  br i1 %exitcond.not.i55.i.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph186.i51.i, !llvm.loop !273

bb.fg:                                            ; preds = %bb.ey, %bb.ep
  %i.ezf = icmp eq i32 %6, 1
  br i1 %i.ezf, label %bb.fh, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.fh:                                            ; preds = %bb.fg
  %i.ezg = icmp eq i32 %3, %4
  br i1 %i.ezg, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.ezh = icmp eq i32 %.sroa.speculated.i800, 8
  %i.ezi = icmp sgt i32 %.sroa.speculated113.i, 0
  %or.cond.i.i808 = and i1 %i.ezi, %i.ezh
  br i1 %or.cond.i.i808, label %.lr.ph.i84.i, label %.loopexit264.i.i

.lr.ph.i84.i:                                     ; preds = %bb.fi, %.lr.ph.i84.i
  %.0268.i.i = phi ptr [ %i.fca, %.lr.ph.i84.i ], [ %0, %bb.fi ] ; 2 uses
  %.032267.i.i = phi ptr [ %i.fcb, %.lr.ph.i84.i ], [ %1, %bb.fi ] ; 2 uses
  %.038266.i.i = phi ptr [ %i.fcc, %.lr.ph.i84.i ], [ %2, %bb.fi ] ; 2 uses
  %.042265.i.i = phi i32 [ %i.fcd, %.lr.ph.i84.i ], [ 0, %bb.fi ]
  %i.ezj = load <8 x float>, ptr %.0268.i.i, align 1, !tbaa !60
  %i.ezk = load float, ptr %.032267.i.i, align 4, !tbaa !59
  %i.ezl = insertelement <8 x float> poison, float %i.ezk, i64 0
  %i.ezm = shufflevector <8 x float> %i.ezl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ezn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ezj, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ezo = bitcast <8 x float> %i.ezn to <8 x i32>
  %i.ezp = bitcast <8 x float> %i.ezn to <8 x i32>
  %i.ezq = and <8 x i32> %i.ezp, splat (i32 -2139095041)
  %i.ezr = or disjoint <8 x i32> %i.ezq, splat (i32 1056964608)
  %i.ezs = bitcast <8 x i32> %i.ezr to <8 x float> ; 3 uses
  %i.ezt = lshr <8 x i32> %i.ezo, splat (i32 23)
  %i.ezu = add nsw <8 x i32> %i.ezt, splat (i32 -127)
  %i.ezv = sitofp fast <8 x i32> %i.ezu to <8 x float> ; 2 uses
  %i.ezw = fadd fast <8 x float> %i.ezv, splat (float 1.000000e+00)
  %i.ezx = fcmp fast olt <8 x float> %i.ezs, splat (float f0x3F3504F3) ; 2 uses
  %i.ezy = select <8 x i1> %i.ezx, <8 x float> %i.ezs, <8 x float> zeroinitializer
  %i.ezz = fadd fast <8 x float> %i.ezs, splat (float -1.000000e+00)
  %i.faa = select fast <8 x i1> %i.ezx, <8 x float> %i.ezv, <8 x float> %i.ezw
  %i.fab = fadd fast <8 x float> %i.ezz, %i.ezy   ; 12 uses
  %i.fac = fmul fast <8 x float> %i.fab, %i.fab
  %i.fad = fmul fast <8 x float> %i.fab, splat (float f0x3D9021BB)
  %i.fae = fadd fast <8 x float> %i.fad, splat (float f0xBDEBD1B8)
  %i.faf = fmul fast <8 x float> %i.fae, %i.fab
  %i.fag = fadd fast <8 x float> %i.faf, splat (float f0x3DEF251A)
  %i.fah = fmul fast <8 x float> %i.fag, %i.fab
  %i.fai = fadd fast <8 x float> %i.fah, splat (float f0xBDFE5D4F)
  %i.faj = fmul fast <8 x float> %i.fai, %i.fab
  %i.fak = fadd fast <8 x float> %i.faj, splat (float f0x3E11E9BF)
  %i.fal = fmul fast <8 x float> %i.fak, %i.fab
  %i.fam = fadd fast <8 x float> %i.fal, splat (float f0xBE2AAE50)
  %i.fan = fmul fast <8 x float> %i.fam, %i.fab
  %i.fao = fadd fast <8 x float> %i.fan, splat (float f0x3E4CCEAC)
  %i.fap = fmul fast <8 x float> %i.fao, %i.fab
  %i.faq = fadd fast <8 x float> %i.fap, splat (float f0xBE7FFFFC)
  %i.far = fmul fast <8 x float> %i.faq, %i.fab
  %i.fas = fadd fast <8 x float> %i.far, splat (float f0x3EAAAAAA)
  %i.fat = fmul fast <8 x float> %i.fas, %i.fab
  %reass.mul259.i.i = fmul fast <8 x float> %i.faa, splat (float f0x3F317218)
  %reass.add260.i.i = fadd fast <8 x float> %i.fat, splat (float -5.000000e-01)
  %reass.mul261.i.i = fmul fast <8 x float> %i.fac, %reass.add260.i.i
  %i.fau = fadd fast <8 x float> %reass.mul259.i.i, %i.fab
  %i.fav = fadd fast <8 x float> %i.fau, %reass.mul261.i.i
  %i.faw = fmul fast <8 x float> %i.fav, %i.ezm
  %i.fax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.faw, <8 x float> splat (float f0x42B0C0A5))
  %i.fay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fax, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.faz = fmul fast <8 x float> %i.fay, splat (float f0x3FB8AA3B)
  %i.fba = fadd fast <8 x float> %i.faz, splat (float 5.000000e-01) ; 2 uses
  %i.fbb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fba, i32 1) ; 2 uses
  %i.fbc = fcmp fast ogt <8 x float> %i.fbb, %i.fba
  %i.fbd = select <8 x i1> %i.fbc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fbe = fsub fast <8 x float> %i.fbb, %i.fbd   ; 2 uses
  %i.fbf = fmul fast <8 x float> %i.fbe, splat (float f0x3F317218)
  %i.fbg = fsub fast <8 x float> %i.fay, %i.fbf   ; 8 uses
  %i.fbh = fmul fast <8 x float> %i.fbg, %i.fbg
  %i.fbi = fmul fast <8 x float> %i.fbg, splat (float f0x39506967)
  %i.fbj = fadd fast <8 x float> %i.fbi, splat (float f0x3AB743CE)
  %i.fbk = fmul fast <8 x float> %i.fbj, %i.fbg
  %i.fbl = fadd fast <8 x float> %i.fbk, splat (float f0x3C088908)
  %i.fbm = fmul fast <8 x float> %i.fbl, %i.fbg
  %i.fbn = fadd fast <8 x float> %i.fbm, splat (float f0x3D2AA9C1)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a

.thread.i.i1131:                                  ; preds = %bb.hq
  %i.hvp = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  %i.hvq = insertelement <4 x float> poison, float %i.hvn, i64 0
  %i.hvr = shufflevector <4 x float> %i.hvq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hvs = icmp eq i32 %.sroa.speculated.i1103, 8
  br i1 %i.hvs, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.hvt = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hr, %.thread.i.i1131
  %i.hvu = phi <4 x float> [ %i.hvp, %.thread.i.i1131 ], [ %i.hvr, %bb.hr ] ; 2 uses
  %i.hvv = shufflevector <4 x float> %i.hvu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.hvw = phi <4 x float> [ %i.hvr, %bb.hs ], [ %i.hvu, %bb.ht ]
  %i.hvx = phi fast <8 x float> [ %i.hvt, %bb.hs ], [ %i.hvv, %bb.ht ]
  %i.hvy = icmp sgt i32 %i.hnq, 7
  br i1 %i.hvy, label %.lr.ph.i39.i1129, label %.preheader157.i.i

.lr.ph.i39.i1129:                                 ; preds = %bb.hu
  %i.hvz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hvx, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.hwa = bitcast <8 x float> %i.hvz to <8 x i32>
  %i.hwb = bitcast <8 x float> %i.hvz to <8 x i32>
  %i.hwc = and <8 x i32> %i.hwb, splat (i32 -2139095041)
  %i.hwd = or disjoint <8 x i32> %i.hwc, splat (i32 1056964608)
  %i.hwe = bitcast <8 x i32> %i.hwd to <8 x float> ; 3 uses
  %i.hwf = lshr <8 x i32> %i.hwa, splat (i32 23)
  %i.hwg = add nsw <8 x i32> %i.hwf, splat (i32 -127)
  %i.hwh = sitofp fast <8 x i32> %i.hwg to <8 x float> ; 2 uses
  %i.hwi = fadd fast <8 x float> %i.hwh, splat (float 1.000000e+00)
  %i.hwj = fcmp fast olt <8 x float> %i.hwe, splat (float f0x3F3504F3) ; 2 uses
  %i.hwk = select <8 x i1> %i.hwj, <8 x float> %i.hwe, <8 x float> zeroinitializer
  %i.hwl = fadd fast <8 x float> %i.hwe, splat (float -1.000000e+00)
  %i.hwm = select fast <8 x i1> %i.hwj, <8 x float> %i.hwh, <8 x float> %i.hwi
  %i.hwn = fadd fast <8 x float> %i.hwl, %i.hwk   ; 12 uses
  %i.hwo = fmul fast <8 x float> %i.hwn, %i.hwn
  %i.hwp = fmul fast <8 x float> %i.hwn, splat (float f0x3D9021BB)
  %i.hwq = fadd fast <8 x float> %i.hwp, splat (float f0xBDEBD1B8)
  %i.hwr = fmul fast <8 x float> %i.hwq, %i.hwn
  %i.hws = fadd fast <8 x float> %i.hwr, splat (float f0x3DEF251A)
  %i.hwt = fmul fast <8 x float> %i.hws, %i.hwn
  %i.hwu = fadd fast <8 x float> %i.hwt, splat (float f0xBDFE5D4F)
  %i.hwv = fmul fast <8 x float> %i.hwu, %i.hwn
  %i.hww = fadd fast <8 x float> %i.hwv, splat (float f0x3E11E9BF)
  %i.hwx = fmul fast <8 x float> %i.hww, %i.hwn
  %i.hwy = fadd fast <8 x float> %i.hwx, splat (float f0xBE2AAE50)
  %i.hwz = fmul fast <8 x float> %i.hwy, %i.hwn
  %i.hxa = fadd fast <8 x float> %i.hwz, splat (float f0x3E4CCEAC)
  %i.hxb = fmul fast <8 x float> %i.hxa, %i.hwn
  %i.hxc = fadd fast <8 x float> %i.hxb, splat (float f0xBE7FFFFC)
  %i.hxd = fmul fast <8 x float> %i.hxc, %i.hwn
  %i.hxe = fadd fast <8 x float> %i.hxd, splat (float f0x3EAAAAAA)
  %i.hxf = fmul fast <8 x float> %i.hxe, %i.hwn
  %reass.mul154.i45.i = fmul fast <8 x float> %i.hwm, splat (float f0x3F317218)
  %reass.add155.i.i = fadd fast <8 x float> %i.hxf, splat (float -5.000000e-01)
  %reass.mul156.i.i = fmul fast <8 x float> %i.hwo, %reass.add155.i.i
  %i.hxg = fadd fast <8 x float> %reass.mul154.i45.i, %i.hwn
  %i.hxh = fadd fast <8 x float> %i.hxg, %reass.mul156.i.i
  br label %bb.hv

.preheader157.loopexit.i.i:                       ; preds = %bb.hv
  %i.hxi = and i32 %i.hnq, 2147483640
  br label %.preheader157.i.i

.preheader157.i.i:                                ; preds = %.preheader157.loopexit.i.i, %bb.hu
  %.030.lcssa.i.i1119 = phi i32 [ 0, %bb.hu ], [ %i.hxi, %.preheader157.loopexit.i.i ] ; 3 uses
  %.027.lcssa.i.i1120 = phi ptr [ %2, %bb.hu ], [ %i.hzz, %.preheader157.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1121 = phi ptr [ %0, %bb.hu ], [ %i.hzy, %.preheader157.loopexit.i.i ] ; 2 uses
  %i.hxj = or disjoint i32 %.030.lcssa.i.i1119, 3
  %i.hxk = icmp slt i32 %i.hxj, %i.hnq
  br i1 %i.hxk, label %.lr.ph166.i.i, label %.preheader.i35.i1122

.lr.ph166.i.i:                                    ; preds = %.preheader157.i.i
  %i.hxl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hvw, <4 x float> splat (float f0x00800000))
  %i.hxm = bitcast <4 x float> %i.hxl to <4 x i32> ; 2 uses
  %i.hxn = lshr <4 x i32> %i.hxm, splat (i32 23)
  %i.hxo = and <4 x i32> %i.hxm, splat (i32 -2139095041)
  %i.hxp = or disjoint <4 x i32> %i.hxo, splat (i32 1056964608)
  %i.hxq = bitcast <4 x i32> %i.hxp to <4 x float> ; 3 uses
  %i.hxr = add nsw <4 x i32> %i.hxn, splat (i32 -127)
  %i.hxs = sitofp fast <4 x i32> %i.hxr to <4 x float> ; 2 uses
  %i.hxt = fadd fast <4 x float> %i.hxs, splat (float 1.000000e+00)
  %i.hxu = fcmp fast olt <4 x float> %i.hxq, splat (float f0x3F3504F3) ; 2 uses
  %i.hxv = select <4 x i1> %i.hxu, <4 x float> %i.hxq, <4 x float> zeroinitializer
  %i.hxw = fadd fast <4 x float> %i.hxq, splat (float -1.000000e+00)
  %i.hxx = select fast <4 x i1> %i.hxu, <4 x float> %i.hxs, <4 x float> %i.hxt
  %i.hxy = fadd fast <4 x float> %i.hxw, %i.hxv   ; 12 uses
  %i.hxz = fmul fast <4 x float> %i.hxy, %i.hxy
  %i.hya = fmul fast <4 x float> %i.hxy, splat (float f0x3D9021BB)
  %i.hyb = fadd fast <4 x float> %i.hya, splat (float f0xBDEBD1B8)
  %i.hyc = fmul fast <4 x float> %i.hyb, %i.hxy
  %i.hyd = fadd fast <4 x float> %i.hyc, splat (float f0x3DEF251A)
  %i.hye = fmul fast <4 x float> %i.hyd, %i.hxy
  %i.hyf = fadd fast <4 x float> %i.hye, splat (float f0xBDFE5D4F)
  %i.hyg = fmul fast <4 x float> %i.hyf, %i.hxy
  %i.hyh = fadd fast <4 x float> %i.hyg, splat (float f0x3E11E9BF)
  %i.hyi = fmul fast <4 x float> %i.hyh, %i.hxy
  %i.hyj = fadd fast <4 x float> %i.hyi, splat (float f0xBE2AAE50)
  %i.hyk = fmul fast <4 x float> %i.hyj, %i.hxy
  %i.hyl = fadd fast <4 x float> %i.hyk, splat (float f0x3E4CCEAC)
  %i.hym = fmul fast <4 x float> %i.hyl, %i.hxy
  %i.hyn = fadd fast <4 x float> %i.hym, splat (float f0xBE7FFFFC)
  %i.hyo = fmul fast <4 x float> %i.hyn, %i.hxy
  %i.hyp = fadd fast <4 x float> %i.hyo, splat (float f0x3EAAAAAA)
  %i.hyq = fmul fast <4 x float> %i.hyp, %i.hxy
  %reass.mul.i38.i1127 = fmul fast <4 x float> %i.hxx, splat (float f0x3F317218)
  %reass.add152.i.i = fadd fast <4 x float> %i.hyq, splat (float -5.000000e-01)
  %reass.mul153.i.i = fmul fast <4 x float> %i.hxz, %reass.add152.i.i
  %i.hyr = fadd fast <4 x float> %reass.mul.i38.i1127, %i.hxy
  %i.hys = fadd fast <4 x float> %i.hyr, %reass.mul153.i.i
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hv, %.lr.ph.i39.i1129
  %.0160.i.i1130 = phi ptr [ %0, %.lr.ph.i39.i1129 ], [ %i.hzy, %bb.hv ] ; 2 uses
  %.027159.i.i = phi ptr [ %2, %.lr.ph.i39.i1129 ], [ %i.hzz, %bb.hv ] ; 2 uses
  %.030158.i.i = phi i32 [ 0, %.lr.ph.i39.i1129 ], [ %i.iaa, %bb.hv ]
  %i.hyt = load <8 x float>, ptr %.0160.i.i1130, align 1, !tbaa !60
  %i.hyu = fmul fast <8 x float> %i.hyt, %i.hxh
  %i.hyv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hyu, <8 x float> splat (float f0x42B0C0A5))
  %i.hyw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hyv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hyx = fmul fast <8 x float> %i.hyw, splat (float f0x3FB8AA3B)
  %i.hyy = fadd fast <8 x float> %i.hyx, splat (float 5.000000e-01) ; 2 uses
  %i.hyz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hyy, i32 1) ; 2 uses
  %i.hza = fcmp fast ogt <8 x float> %i.hyz, %i.hyy
  %i.hzb = select <8 x i1> %i.hza, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hzc = fsub fast <8 x float> %i.hyz, %i.hzb   ; 2 uses
  %i.hzd = fmul fast <8 x float> %i.hzc, splat (float f0x3F317218)
  %i.hze = fsub fast <8 x float> %i.hyw, %i.hzd   ; 8 uses
  %i.hzf = fmul fast <8 x float> %i.hze, %i.hze
  %i.hzg = fmul fast <8 x float> %i.hze, splat (float f0x39506967)
  %i.hzh = fadd fast <8 x float> %i.hzg, splat (float f0x3AB743CE)
  %i.hzi = fmul fast <8 x float> %i.hzh, %i.hze
  %i.hzj = fadd fast <8 x float> %i.hzi, splat (float f0x3C088908)
  %i.hzk = fmul fast <8 x float> %i.hzj, %i.hze
  %i.hzl = fadd fast <8 x float> %i.hzk, splat (float f0x3D2AA9C1)
  %i.hzm = fmul fast <8 x float> %i.hzl, %i.hze
  %i.hzn = fadd fast <8 x float> %i.hzm, splat (float f0x3E2AAAAA)
  %i.hzo = fmul fast <8 x float> %i.hzn, %i.hze
  %i.hzp = fadd fast <8 x float> %i.hzo, splat (float 5.000000e-01)
  %i.hzq = fmul fast <8 x float> %i.hzf, %i.hzp
  %i.hzr = fadd fast <8 x float> %i.hze, splat (float 1.000000e+00)
  %i.hzs = fadd fast <8 x float> %i.hzr, %i.hzq
  %i.hzt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hzc)
  %i.hzu = shl <8 x i32> %i.hzt, splat (i32 23)
  %i.hzv = add <8 x i32> %i.hzu, splat (i32 1065353216)
  %i.hzw = bitcast <8 x i32> %i.hzv to <8 x float>
  %i.hzx = fmul fast <8 x float> %i.hzs, %i.hzw
  store <8 x float> %i.hzx, ptr %.027159.i.i, align 1, !tbaa !60
  %i.hzy = getelementptr inbounds nuw i8, ptr %.0160.i.i1130, i64 32 ; 2 uses
  %i.hzz = getelementptr inbounds nuw i8, ptr %.027159.i.i, i64 32 ; 2 uses
  %i.iaa = add nuw nsw i32 %.030158.i.i, 8        ; 2 uses
  %i.iab = or disjoint i32 %i.iaa, 7
  %i.iac = icmp slt i32 %i.iab, %i.hnq
  br i1 %i.iac, label %bb.hv, label %.preheader157.loopexit.i.i, !llvm.loop !348

.preheader.i35.i1122:                             ; preds = %bb.hw, %.preheader157.i.i
  %.131.lcssa.i.i1123 = phi i32 [ %.030.lcssa.i.i1119, %.preheader157.i.i ], [ %i.icy, %bb.hw ] ; 4 uses
  %.128.lcssa.i.i1124 = phi ptr [ %.027.lcssa.i.i1120, %.preheader157.i.i ], [ %i.icx, %bb.hw ] ; 4 uses
  %.1.lcssa.i36.i1125 = phi ptr [ %.0.lcssa.i34.i1121, %.preheader157.i.i ], [ %i.icw, %bb.hw ] ; 4 uses
  %i.iad = icmp slt i32 %.131.lcssa.i.i1123, %i.hnq
  br i1 %i.iad, label %.lr.ph173.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph173.i.i.preheader:                          ; preds = %.preheader.i35.i1122
  %.1.lcssa.i36.i11255224 = ptrtoaddr ptr %.1.lcssa.i36.i1125 to i64
  %.128.lcssa.i.i11245223 = ptrtoaddr ptr %.128.lcssa.i.i1124 to i64
  %i.iae = xor i32 %.131.lcssa.i.i1123, -1
  %i.iaf = add i32 %i.hnq, %i.iae                 ; 2 uses
  %i.iag = zext i32 %i.iaf to i64
  %i.iah = add nuw nsw i64 %i.iag, 1              ; 2 uses
  %min.iters.check5226 = icmp ult i32 %i.iaf, 7
  %i.iai = sub i64 %.1.lcssa.i36.i11255224, %.128.lcssa.i.i11245223
  %diff.check5228 = icmp ugt i64 %i.iai, -32
  %or.cond6406 = select i1 %min.iters.check5226, i1 true, i1 %diff.check5228
  br i1 %or.cond6406, label %.lr.ph173.i.i.preheader6724, label %vector.ph5229

vector.ph5229:                                    ; preds = %.lr.ph173.i.i.preheader
  %n.vec5230 = and i64 %i.iah, 8589934584         ; 4 uses
  %i.iaj = shl nuw nsw i64 %n.vec5230, 2          ; 2 uses
  %i.iak = getelementptr i8, ptr %.1.lcssa.i36.i1125, i64 %i.iaj
  %i.ial = getelementptr i8, ptr %.128.lcssa.i.i1124, i64 %i.iaj
  %i.iam = trunc i64 %n.vec5230 to i32
  %i.ian = add i32 %.131.lcssa.i.i1123, %i.iam
  %i.iao = insertelement <4 x float> poison, float %i.hvn, i64 0
  %i.iap = shufflevector <4 x float> %i.iao, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5231

vector.body5231:                                  ; preds = %vector.body5231, %vector.ph5229
  %index5232 = phi i64 [ 0, %vector.ph5229 ], [ %index.next5236, %vector.body5231 ] ; 2 uses
  %i.iaq = shl i64 %index5232, 2                  ; 2 uses
  %next.gep5233 = getelementptr i8, ptr %.1.lcssa.i36.i1125, i64 %i.iaq
  %next.gep5234 = getelementptr i8, ptr %.128.lcssa.i.i1124, i64 %i.iaq
  %wide.load5235 = load <8 x float>, ptr %next.gep5233, align 4, !tbaa !59 ; 5 uses
  %i.iar = extractelement <8 x float> %wide.load5235, i64 0
  %i.ias = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.iar)
  %i.iat = extractelement <8 x float> %wide.load5235, i64 1
  %i.iau = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.iat)
  %i.iav = extractelement <8 x float> %wide.load5235, i64 2
  %i.iaw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.iav)
  %i.iax = extractelement <8 x float> %wide.load5235, i64 3
  %i.iay = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.iax)
  %i.iaz = shufflevector <8 x float> %wide.load5235, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.iba = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.iap, <4 x float> %i.iaz)
  %i.ibb = insertelement <8 x float> poison, float %i.ias, i64 0
  %i.ibc = insertelement <8 x float> %i.ibb, float %i.iau, i64 1
  %i.ibd = insertelement <8 x float> %i.ibc, float %i.iaw, i64 2
  %i.ibe = insertelement <8 x float> %i.ibd, float %i.iay, i64 3
  %i.ibf = shufflevector <4 x float> %i.iba, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ibg = shufflevector <8 x float> %i.ibe, <8 x float> %i.ibf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.ibg, ptr %next.gep5234, align 4, !tbaa !59
  %index.next5236 = add nuw i64 %index5232, 8     ; 2 uses
  %i.ibh = icmp eq i64 %index.next5236, %n.vec5230
  br i1 %i.ibh, label %middle.block5237, label %vector.body5231, !llvm.loop !349

middle.block5237:                                 ; preds = %vector.body5231
  %cmp.n5238 = icmp eq i64 %i.iah, %n.vec5230
  br i1 %cmp.n5238, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph173.i.i.preheader6724

.lr.ph173.i.i.preheader6724:                      ; preds = %.lr.ph173.i.i.preheader, %middle.block5237
  %.2172.i.i.ph = phi ptr [ %.1.lcssa.i36.i1125, %.lr.ph173.i.i.preheader ], [ %i.iak, %middle.block5237 ] ; 2 uses
  %.229171.i.i.ph = phi ptr [ %.128.lcssa.i.i1124, %.lr.ph173.i.i.preheader ], [ %i.ial, %middle.block5237 ] ; 2 uses
  %.232170.i.i.ph = phi i32 [ %.131.lcssa.i.i1123, %.lr.ph173.i.i.preheader ], [ %i.ian, %middle.block5237 ] ; 4 uses
  %i.ibi = sub i32 %i.hnq, %.232170.i.i.ph
  %xtraiter7463 = and i32 %i.ibi, 3               ; 2 uses
  %lcmp.mod7464.not = icmp eq i32 %xtraiter7463, 0
  br i1 %lcmp.mod7464.not, label %.lr.ph173.i.i.prol.loopexit, label %.lr.ph173.i.i.prol

.lr.ph173.i.i.prol:                               ; preds = %.lr.ph173.i.i.preheader6724, %.lr.ph173.i.i.prol
  %.2172.i.i.prol = phi ptr [ %i.ibl, %.lr.ph173.i.i.prol ], [ %.2172.i.i.ph, %.lr.ph173.i.i.preheader6724 ] ; 2 uses
  %.229171.i.i.prol = phi ptr [ %i.ibm, %.lr.ph173.i.i.prol ], [ %.229171.i.i.ph, %.lr.ph173.i.i.preheader6724 ] ; 2 uses
  %.232170.i.i.prol = phi i32 [ %i.ibn, %.lr.ph173.i.i.prol ], [ %.232170.i.i.ph, %.lr.ph173.i.i.preheader6724 ]
  %prol.iter7465 = phi i32 [ %prol.iter7465.next, %.lr.ph173.i.i.prol ], [ 0, %.lr.ph173.i.i.preheader6724 ]
  %i.ibj = load float, ptr %.2172.i.i.prol, align 4, !tbaa !59
  %i.ibk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.ibj)
  store float %i.ibk, ptr %.229171.i.i.prol, align 4, !tbaa !59
  %i.ibl = getelementptr inbounds nuw i8, ptr %.2172.i.i.prol, i64 4 ; 2 uses
  %i.ibm = getelementptr inbounds nuw i8, ptr %.229171.i.i.prol, i64 4 ; 2 uses
  %i.ibn = add nuw nsw i32 %.232170.i.i.prol, 1   ; 2 uses
  %prol.iter7465.next = add i32 %prol.iter7465, 1 ; 2 uses
  %prol.iter7465.cmp.not = icmp eq i32 %prol.iter7465.next, %xtraiter7463
  br i1 %prol.iter7465.cmp.not, label %.lr.ph173.i.i.prol.loopexit, label %.lr.ph173.i.i.prol, !llvm.loop !350

.lr.ph173.i.i.prol.loopexit:                      ; preds = %.lr.ph173.i.i.prol, %.lr.ph173.i.i.preheader6724
  %.2172.i.i.unr = phi ptr [ %.2172.i.i.ph, %.lr.ph173.i.i.preheader6724 ], [ %i.ibl, %.lr.ph173.i.i.prol ]
  %.229171.i.i.unr = phi ptr [ %.229171.i.i.ph, %.lr.ph173.i.i.preheader6724 ], [ %i.ibm, %.lr.ph173.i.i.prol ]
  %.232170.i.i.unr = phi i32 [ %.232170.i.i.ph, %.lr.ph173.i.i.preheader6724 ], [ %i.ibn, %.lr.ph173.i.i.prol ]
  %i.ibo = sub i32 %.232170.i.i.ph, %i.hnq
  %i.ibp = icmp ugt i32 %i.ibo, -4
  br i1 %i.ibp, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph173.i.i

bb.hw:                                            ; preds = %bb.hw, %.lr.ph166.i.i
  %.1165.i.i1128 = phi ptr [ %.0.lcssa.i34.i1121, %.lr.ph166.i.i ], [ %i.icw, %bb.hw ] ; 2 uses
  %.128164.i.i = phi ptr [ %.027.lcssa.i.i1120, %.lr.ph166.i.i ], [ %i.icx, %bb.hw ] ; 2 uses
  %.131163.i.i = phi i32 [ %.030.lcssa.i.i1119, %.lr.ph166.i.i ], [ %i.icy, %bb.hw ]
  %i.ibq = load <4 x float>, ptr %.1165.i.i1128, align 1, !tbaa !60
  %i.ibr = fmul fast <4 x float> %i.ibq, %i.hys
  %i.ibs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ibr, <4 x float> splat (float f0x42B0C0A5))
  %i.ibt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ibs, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ibu = fmul fast <4 x float> %i.ibt, splat (float f0x3FB8AA3B)
  %i.ibv = fadd fast <4 x float> %i.ibu, splat (float 5.000000e-01) ; 2 uses
  %i.ibw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ibv)
  %i.ibx = sitofp fast <4 x i32> %i.ibw to <4 x float> ; 2 uses
  %i.iby = fcmp fast olt <4 x float> %i.ibv, %i.ibx
  %i.ibz = select <4 x i1> %i.iby, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ica = fsub fast <4 x float> %i.ibx, %i.ibz   ; 2 uses
  %i.icb = fmul fast <4 x float> %i.ica, splat (float f0x3F317218)
  %i.icc = fsub fast <4 x float> %i.ibt, %i.icb   ; 8 uses
  %i.icd = fmul fast <4 x float> %i.icc, %i.icc
  %i.ice = fmul fast <4 x float> %i.icc, splat (float f0x39506967)
  %i.icf = fadd fast <4 x float> %i.ice, splat (float f0x3AB743CE)
  %i.icg = fmul fast <4 x float> %i.icf, %i.icc
  %i.ich = fadd fast <4 x float> %i.icg, splat (float f0x3C088908)
  %i.ici = fmul fast <4 x float> %i.ich, %i.icc
  %i.icj = fadd fast <4 x float> %i.ici, splat (float f0x3D2AA9C1)
  %i.ick = fmul fast <4 x float> %i.icj, %i.icc
  %i.icl = fadd fast <4 x float> %i.ick, splat (float f0x3E2AAAAA)
  %i.icm = fmul fast <4 x float> %i.icl, %i.icc
  %i.icn = fadd fast <4 x float> %i.icm, splat (float 5.000000e-01)
  %i.ico = fmul fast <4 x float> %i.icd, %i.icn
  %i.icp = fadd fast <4 x float> %i.icc, splat (float 1.000000e+00)
  %i.icq = fadd fast <4 x float> %i.icp, %i.ico
  %i.icr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ica)
  %i.ics = shl <4 x i32> %i.icr, splat (i32 23)
  %i.ict = add <4 x i32> %i.ics, splat (i32 1065353216)
  %i.icu = bitcast <4 x i32> %i.ict to <4 x float>
  %i.icv = fmul fast <4 x float> %i.icq, %i.icu
  store <4 x float> %i.icv, ptr %.128164.i.i, align 1, !tbaa !60
  %i.icw = getelementptr inbounds nuw i8, ptr %.1165.i.i1128, i64 16 ; 2 uses
  %i.icx = getelementptr inbounds nuw i8, ptr %.128164.i.i, i64 16 ; 2 uses
  %i.icy = add nuw nsw i32 %.131163.i.i, 4        ; 3 uses
  %i.icz = or disjoint i32 %i.icy, 3
  %i.ida = icmp slt i32 %i.icz, %i.hnq
  br i1 %i.ida, label %bb.hw, label %.preheader.i35.i1122, !llvm.loop !351

.lr.ph173.i.i:                                    ; preds = %.lr.ph173.i.i.prol.loopexit, %.lr.ph173.i.i
  %.2172.i.i = phi ptr [ %i.idp, %.lr.ph173.i.i ], [ %.2172.i.i.unr, %.lr.ph173.i.i.prol.loopexit ] ; 5 uses
  %.229171.i.i = phi ptr [ %i.idq, %.lr.ph173.i.i ], [ %.229171.i.i.unr, %.lr.ph173.i.i.prol.loopexit ] ; 5 uses
  %.232170.i.i = phi i32 [ %i.idr, %.lr.ph173.i.i ], [ %.232170.i.i.unr, %.lr.ph173.i.i.prol.loopexit ]
  %i.idb = load float, ptr %.2172.i.i, align 4, !tbaa !59
  %i.idc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.idb)
  store float %i.idc, ptr %.229171.i.i, align 4, !tbaa !59
  %i.idd = getelementptr inbounds nuw i8, ptr %.2172.i.i, i64 4
  %i.ide = getelementptr inbounds nuw i8, ptr %.229171.i.i, i64 4
  %i.idf = load float, ptr %i.idd, align 4, !tbaa !59
  %i.idg = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.idf)
  store float %i.idg, ptr %i.ide, align 4, !tbaa !59
  %i.idh = getelementptr inbounds nuw i8, ptr %.2172.i.i, i64 8
  %i.idi = getelementptr inbounds nuw i8, ptr %.229171.i.i, i64 8
  %i.idj = load float, ptr %i.idh, align 4, !tbaa !59
  %i.idk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.idj)
  store float %i.idk, ptr %i.idi, align 4, !tbaa !59
  %i.idl = getelementptr inbounds nuw i8, ptr %.2172.i.i, i64 12
  %i.idm = getelementptr inbounds nuw i8, ptr %.229171.i.i, i64 12
  %i.idn = load float, ptr %i.idl, align 4, !tbaa !59
  %i.ido = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hvn, float %i.idn)
  store float %i.ido, ptr %i.idm, align 4, !tbaa !59
  %i.idp = getelementptr inbounds nuw i8, ptr %.2172.i.i, i64 16
  %i.idq = getelementptr inbounds nuw i8, ptr %.229171.i.i, i64 16
  %i.idr = add nuw nsw i32 %.232170.i.i, 4        ; 2 uses
  %exitcond.not.i37.i1126.3 = icmp eq i32 %i.idr, %i.hnq
  br i1 %exitcond.not.i37.i1126.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph173.i.i, !llvm.loop !352

bb.hx:                                            ; preds = %bb.hp
  %i.ids = icmp eq i32 %3, 1
  br i1 %i.ids, label %bb.hy, label %bb.id

bb.hy:                                            ; preds = %bb.hx
  %i.idt = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.idu = icmp eq i32 %.sroa.speculated.i1103, 4
  br i1 %i.idu, label %.thread.i89.i, label %bb.hz

.thread.i89.i:                                    ; preds = %bb.hy
  %i.idv = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %i.idw = insertelement <4 x float> poison, float %i.idt, i64 0
  %i.idx = shufflevector <4 x float> %i.idw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.idy = icmp eq i32 %.sroa.speculated.i1103, 8
  br i1 %i.idy, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.idz = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hz, %.thread.i89.i
  %i.iea = phi <4 x float> [ %i.idv, %.thread.i89.i ], [ %i.idx, %bb.hz ] ; 2 uses
  %i.ieb = shufflevector <4 x float> %i.iea, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.iec = phi <4 x float> [ %i.idx, %bb.ia ], [ %i.iea, %bb.ib ]
  %i.ied = phi fast <8 x float> [ %i.idz, %bb.ia ], [ %i.ieb, %bb.ib ]
  %i.iee = icmp sgt i32 %i.hnq, 7
  br i1 %i.iee, label %.lr.ph.i71.i1118, label %.preheader157.i51.i

.preheader157.loopexit.i88.i:                     ; preds = %.lr.ph.i71.i1118
  %i.ief = and i32 %i.hnq, 2147483640
  br label %.preheader157.i51.i

.preheader157.i51.i:                              ; preds = %.preheader157.loopexit.i88.i, %bb.ic
  %.030.lcssa.i52.i = phi i32 [ 0, %bb.ic ], [ %i.ief, %.preheader157.loopexit.i88.i ] ; 3 uses
  %.027.lcssa.i53.i = phi ptr [ %2, %bb.ic ], [ %i.igx, %.preheader157.loopexit.i88.i ] ; 2 uses
  %.0.lcssa.i54.i = phi ptr [ %1, %bb.ic ], [ %i.igw, %.preheader157.loopexit.i88.i ] ; 2 uses
  %i.ieg = or disjoint i32 %.030.lcssa.i52.i, 3
  %i.ieh = icmp slt i32 %i.ieg, %i.hnq
  br i1 %i.ieh, label %.lr.ph166.i64.i, label %.preheader.i55.i

.lr.ph.i71.i1118:                                 ; preds = %bb.ic, %.lr.ph.i71.i1118
  %.0160.i72.i = phi ptr [ %i.igw, %.lr.ph.i71.i1118 ], [ %1, %bb.ic ] ; 2 uses
  %.027159.i73.i = phi ptr [ %i.igx, %.lr.ph.i71.i1118 ], [ %2, %bb.ic ] ; 2 uses
  %.030158.i74.i = phi i32 [ %i.igy, %.lr.ph.i71.i1118 ], [ 0, %bb.ic ]
  %i.iei = load <8 x float>, ptr %.0160.i72.i, align 1, !tbaa !60
  %i.iej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.iei, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.iek = bitcast <8 x float> %i.iej to <8 x i32>
  %i.iel = bitcast <8 x float> %i.iej to <8 x i32>
  %i.iem = and <8 x i32> %i.iel, splat (i32 -2139095041)
  %i.ien = or disjoint <8 x i32> %i.iem, splat (i32 1056964608)
  %i.ieo = bitcast <8 x i32> %i.ien to <8 x float> ; 3 uses
  %i.iep = lshr <8 x i32> %i.iek, splat (i32 23)
  %i.ieq = add nsw <8 x i32> %i.iep, splat (i32 -127)
  %i.ier = sitofp fast <8 x i32> %i.ieq to <8 x float> ; 2 uses
  %i.ies = fadd fast <8 x float> %i.ier, splat (float 1.000000e+00)
  %i.iet = fcmp fast olt <8 x float> %i.ieo, splat (float f0x3F3504F3) ; 2 uses
  %i.ieu = select <8 x i1> %i.iet, <8 x float> %i.ieo, <8 x float> zeroinitializer
  %i.iev = fadd fast <8 x float> %i.ieo, splat (float -1.000000e+00)
  %i.iew = select fast <8 x i1> %i.iet, <8 x float> %i.ier, <8 x float> %i.ies
  %i.iex = fadd fast <8 x float> %i.iev, %i.ieu   ; 12 uses
  %i.iey = fmul fast <8 x float> %i.iex, %i.iex
  %i.iez = fmul fast <8 x float> %i.iex, splat (float f0x3D9021BB)
  %i.ifa = fadd fast <8 x float> %i.iez, splat (float f0xBDEBD1B8)
  %i.ifb = fmul fast <8 x float> %i.ifa, %i.iex
  %i.ifc = fadd fast <8 x float> %i.ifb, splat (float f0x3DEF251A)
  %i.ifd = fmul fast <8 x float> %i.ifc, %i.iex
  %i.ife = fadd fast <8 x float> %i.ifd, splat (float f0xBDFE5D4F)
  %i.iff = fmul fast <8 x float> %i.ife, %i.iex
  %i.ifg = fadd fast <8 x float> %i.iff, splat (float f0x3E11E9BF)
  %i.ifh = fmul fast <8 x float> %i.ifg, %i.iex
  %i.ifi = fadd fast <8 x float> %i.ifh, splat (float f0xBE2AAE50)
  %i.ifj = fmul fast <8 x float> %i.ifi, %i.iex
  %i.ifk = fadd fast <8 x float> %i.ifj, splat (float f0x3E4CCEAC)
  %i.ifl = fmul fast <8 x float> %i.ifk, %i.iex
  %i.ifm = fadd fast <8 x float> %i.ifl, splat (float f0xBE7FFFFC)
  %i.ifn = fmul fast <8 x float> %i.ifm, %i.iex
  %i.ifo = fadd fast <8 x float> %i.ifn, splat (float f0x3EAAAAAA)
  %i.ifp = fmul fast <8 x float> %i.ifo, %i.iex
  %reass.mul154.i80.i = fmul fast <8 x float> %i.iew, splat (float f0x3F317218)
  %reass.add155.i81.i = fadd fast <8 x float> %i.ifp, splat (float -5.000000e-01)
  %reass.mul156.i82.i = fmul fast <8 x float> %i.iey, %reass.add155.i81.i
  %i.ifq = fadd fast <8 x float> %reass.mul154.i80.i, %i.iex
  %i.ifr = fadd fast <8 x float> %i.ifq, %reass.mul156.i82.i
  %i.ifs = fmul fast <8 x float> %i.ifr, %i.ied
  %i.ift = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ifs, <8 x float> splat (float f0x42B0C0A5))
  %i.ifu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ift, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ifv = fmul fast <8 x float> %i.ifu, splat (float f0x3FB8AA3B)
  %i.ifw = fadd fast <8 x float> %i.ifv, splat (float 5.000000e-01) ; 2 uses
  %i.ifx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ifw, i32 1) ; 2 uses
  %i.ify = fcmp fast ogt <8 x float> %i.ifx, %i.ifw
  %i.ifz = select <8 x i1> %i.ify, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.iga = fsub fast <8 x float> %i.ifx, %i.ifz   ; 2 uses
  %i.igb = fmul fast <8 x float> %i.iga, splat (float f0x3F317218)
  %i.igc = fsub fast <8 x float> %i.ifu, %i.igb   ; 8 uses
  %i.igd = fmul fast <8 x float> %i.igc, %i.igc
  %i.ige = fmul fast <8 x float> %i.igc, splat (float f0x39506967)
  %i.igf = fadd fast <8 x float> %i.ige, splat (float f0x3AB743CE)
  %i.igg = fmul fast <8 x float> %i.igf, %i.igc
  %i.igh = fadd fast <8 x float> %i.igg, splat (float f0x3C088908)
  %i.igi = fmul fast <8 x float> %i.igh, %i.igc
  %i.igj = fadd fast <8 x float> %i.igi, splat (float f0x3D2AA9C1)
  %i.igk = fmul fast <8 x float> %i.igj, %i.igc
  %i.igl = fadd fast <8 x float> %i.igk, splat (float f0x3E2AAAAA)
  %i.igm = fmul fast <8 x float> %i.igl, %i.igc
  %i.ign = fadd fast <8 x float> %i.igm, splat (float 5.000000e-01)
  %i.igo = fmul fast <8 x float> %i.igd, %i.ign
  %i.igp = fadd fast <8 x float> %i.igc, splat (float 1.000000e+00)
  %i.igq = fadd fast <8 x float> %i.igp, %i.igo
  %i.igr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iga)
  %i.igs = shl <8 x i32> %i.igr, splat (i32 23)
  %i.igt = add <8 x i32> %i.igs, splat (i32 1065353216)
  %i.igu = bitcast <8 x i32> %i.igt to <8 x float>
  %i.igv = fmul fast <8 x float> %i.igq, %i.igu
  store <8 x float> %i.igv, ptr %.027159.i73.i, align 1, !tbaa !60
  %i.igw = getelementptr inbounds nuw i8, ptr %.0160.i72.i, i64 32 ; 2 uses
  %i.igx = getelementptr inbounds nuw i8, ptr %.027159.i73.i, i64 32 ; 2 uses
  %i.igy = add nuw nsw i32 %.030158.i74.i, 8      ; 2 uses
  %i.igz = or disjoint i32 %i.igy, 7
  %i.iha = icmp slt i32 %i.igz, %i.hnq
  br i1 %i.iha, label %.lr.ph.i71.i1118, label %.preheader157.loopexit.i88.i, !llvm.loop !353

.preheader.i55.i:                                 ; preds = %.lr.ph166.i64.i, %.preheader157.i51.i
  %.131.lcssa.i56.i = phi i32 [ %.030.lcssa.i52.i, %.preheader157.i51.i ], [ %i.ile, %.lr.ph166.i64.i ] ; 4 uses
  %.128.lcssa.i57.i = phi ptr [ %.027.lcssa.i53.i, %.preheader157.i51.i ], [ %i.ild, %.lr.ph166.i64.i ] ; 4 uses
  %.1.lcssa.i58.i = phi ptr [ %.0.lcssa.i54.i, %.preheader157.i51.i ], [ %i.ilc, %.lr.ph166.i64.i ] ; 4 uses
  %i.ihb = icmp slt i32 %.131.lcssa.i56.i, %i.hnq
  br i1 %i.ihb, label %.lr.ph173.i59.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph173.i59.i.preheader:                        ; preds = %.preheader.i55.i
  %.1.lcssa.i58.i5201 = ptrtoaddr ptr %.1.lcssa.i58.i to i64
  %.128.lcssa.i57.i5200 = ptrtoaddr ptr %.128.lcssa.i57.i to i64
  %i.ihc = xor i32 %.131.lcssa.i56.i, -1
  %i.ihd = add i32 %i.hnq, %i.ihc                 ; 2 uses
  %i.ihe = zext i32 %i.ihd to i64
  %i.ihf = add nuw nsw i64 %i.ihe, 1              ; 2 uses
  %min.iters.check5203 = icmp ult i32 %i.ihd, 7
  %i.ihg = sub i64 %.1.lcssa.i58.i5201, %.128.lcssa.i57.i5200
  %diff.check5205 = icmp ugt i64 %i.ihg, -32
  %or.cond6407 = select i1 %min.iters.check5203, i1 true, i1 %diff.check5205
  br i1 %or.cond6407, label %.lr.ph173.i59.i.preheader6731, label %vector.ph5206

vector.ph5206:                                    ; preds = %.lr.ph173.i59.i.preheader
  %n.vec5207 = and i64 %i.ihf, 8589934584         ; 4 uses
  %i.ihh = shl nuw nsw i64 %n.vec5207, 2          ; 2 uses
  %i.ihi = getelementptr i8, ptr %.1.lcssa.i58.i, i64 %i.ihh
  %i.ihj = getelementptr i8, ptr %.128.lcssa.i57.i, i64 %i.ihh
  %i.ihk = trunc i64 %n.vec5207 to i32
  %i.ihl = add i32 %.131.lcssa.i56.i, %i.ihk
  %i.ihm = insertelement <4 x float> poison, float %i.idt, i64 0
  %i.ihn = shufflevector <4 x float> %i.ihm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5208

vector.body5208:                                  ; preds = %vector.body5208, %vector.ph5206
  %index5209 = phi i64 [ 0, %vector.ph5206 ], [ %index.next5213, %vector.body5208 ] ; 2 uses
  %i.iho = shl i64 %index5209, 2                  ; 2 uses
  %next.gep5210 = getelementptr i8, ptr %.1.lcssa.i58.i, i64 %i.iho
  %next.gep5211 = getelementptr i8, ptr %.128.lcssa.i57.i, i64 %i.iho
  %wide.load5212 = load <8 x float>, ptr %next.gep5210, align 4, !tbaa !59 ; 5 uses
  %i.ihp = extractelement <8 x float> %wide.load5212, i64 0
  %i.ihq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ihp, float %i.idt)
  %i.ihr = extractelement <8 x float> %wide.load5212, i64 1
  %i.ihs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ihr, float %i.idt)
  %i.iht = extractelement <8 x float> %wide.load5212, i64 2
  %i.ihu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iht, float %i.idt)
  %i.ihv = extractelement <8 x float> %wide.load5212, i64 3
  %i.ihw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ihv, float %i.idt)
  %i.ihx = shufflevector <8 x float> %wide.load5212, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ihy = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ihx, <4 x float> %i.ihn)
  %i.ihz = insertelement <8 x float> poison, float %i.ihq, i64 0
  %i.iia = insertelement <8 x float> %i.ihz, float %i.ihs, i64 1
  %i.iib = insertelement <8 x float> %i.iia, float %i.ihu, i64 2
  %i.iic = insertelement <8 x float> %i.iib, float %i.ihw, i64 3
  %i.iid = shufflevector <4 x float> %i.ihy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iie = shufflevector <8 x float> %i.iic, <8 x float> %i.iid, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.iie, ptr %next.gep5211, align 4, !tbaa !59
  %index.next5213 = add nuw i64 %index5209, 8     ; 2 uses
  %i.iif = icmp eq i64 %index.next5213, %n.vec5207
  br i1 %i.iif, label %middle.block5214, label %vector.body5208, !llvm.loop !354

middle.block5214:                                 ; preds = %vector.body5208
  %cmp.n5215 = icmp eq i64 %i.ihf, %n.vec5207
  br i1 %cmp.n5215, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph173.i59.i.preheader6731

.lr.ph173.i59.i.preheader6731:                    ; preds = %.lr.ph173.i59.i.preheader, %middle.block5214
  %.2172.i60.i.ph = phi ptr [ %.1.lcssa.i58.i, %.lr.ph173.i59.i.preheader ], [ %i.ihi, %middle.block5214 ] ; 2 uses
  %.229171.i61.i.ph = phi ptr [ %.128.lcssa.i57.i, %.lr.ph173.i59.i.preheader ], [ %i.ihj, %middle.block5214 ] ; 2 uses
  %.232170.i62.i.ph = phi i32 [ %.131.lcssa.i56.i, %.lr.ph173.i59.i.preheader ], [ %i.ihl, %middle.block5214 ] ; 4 uses
  %i.iig = sub i32 %i.hnq, %.232170.i62.i.ph
  %xtraiter7460 = and i32 %i.iig, 3               ; 2 uses
  %lcmp.mod7461.not = icmp eq i32 %xtraiter7460, 0
  br i1 %lcmp.mod7461.not, label %.lr.ph173.i59.i.prol.loopexit, label %.lr.ph173.i59.i.prol

.lr.ph173.i59.i.prol:                             ; preds = %.lr.ph173.i59.i.preheader6731, %.lr.ph173.i59.i.prol
  %.2172.i60.i.prol = phi ptr [ %i.iij, %.lr.ph173.i59.i.prol ], [ %.2172.i60.i.ph, %.lr.ph173.i59.i.preheader6731 ] ; 2 uses
  %.229171.i61.i.prol = phi ptr [ %i.iik, %.lr.ph173.i59.i.prol ], [ %.229171.i61.i.ph, %.lr.ph173.i59.i.preheader6731 ] ; 2 uses
  %.232170.i62.i.prol = phi i32 [ %i.iil, %.lr.ph173.i59.i.prol ], [ %.232170.i62.i.ph, %.lr.ph173.i59.i.preheader6731 ]
  %prol.iter7462 = phi i32 [ %prol.iter7462.next, %.lr.ph173.i59.i.prol ], [ 0, %.lr.ph173.i59.i.preheader6731 ]
  %i.iih = load float, ptr %.2172.i60.i.prol, align 4, !tbaa !59
  %i.iii = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iih, float %i.idt)
  store float %i.iii, ptr %.229171.i61.i.prol, align 4, !tbaa !59
  %i.iij = getelementptr inbounds nuw i8, ptr %.2172.i60.i.prol, i64 4 ; 2 uses
  %i.iik = getelementptr inbounds nuw i8, ptr %.229171.i61.i.prol, i64 4 ; 2 uses
  %i.iil = add nuw nsw i32 %.232170.i62.i.prol, 1 ; 2 uses
  %prol.iter7462.next = add i32 %prol.iter7462, 1 ; 2 uses
  %prol.iter7462.cmp.not = icmp eq i32 %prol.iter7462.next, %xtraiter7460
  br i1 %prol.iter7462.cmp.not, label %.lr.ph173.i59.i.prol.loopexit, label %.lr.ph173.i59.i.prol, !llvm.loop !355

.lr.ph173.i59.i.prol.loopexit:                    ; preds = %.lr.ph173.i59.i.prol, %.lr.ph173.i59.i.preheader6731
  %.2172.i60.i.unr = phi ptr [ %.2172.i60.i.ph, %.lr.ph173.i59.i.preheader6731 ], [ %i.iij, %.lr.ph173.i59.i.prol ]
  %.229171.i61.i.unr = phi ptr [ %.229171.i61.i.ph, %.lr.ph173.i59.i.preheader6731 ], [ %i.iik, %.lr.ph173.i59.i.prol ]
  %.232170.i62.i.unr = phi i32 [ %.232170.i62.i.ph, %.lr.ph173.i59.i.preheader6731 ], [ %i.iil, %.lr.ph173.i59.i.prol ]
  %i.iim = sub i32 %.232170.i62.i.ph, %i.hnq
  %i.iin = icmp ugt i32 %i.iim, -4
  br i1 %i.iin, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph173.i59.i

.lr.ph166.i64.i:                                  ; preds = %.preheader157.i51.i, %.lr.ph166.i64.i
  %.1165.i65.i = phi ptr [ %i.ilc, %.lr.ph166.i64.i ], [ %.0.lcssa.i54.i, %.preheader157.i51.i ] ; 2 uses
  %.128164.i66.i = phi ptr [ %i.ild, %.lr.ph166.i64.i ], [ %.027.lcssa.i53.i, %.preheader157.i51.i ] ; 2 uses
  %.131163.i67.i = phi i32 [ %i.ile, %.lr.ph166.i64.i ], [ %.030.lcssa.i52.i, %.preheader157.i51.i ]
  %i.iio = load <4 x float>, ptr %.1165.i65.i, align 1, !tbaa !60
  %i.iip = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iio, <4 x float> splat (float f0x00800000))
  %i.iiq = bitcast <4 x float> %i.iip to <4 x i32> ; 2 uses
  %i.iir = lshr <4 x i32> %i.iiq, splat (i32 23)
  %i.iis = and <4 x i32> %i.iiq, splat (i32 -2139095041)
  %i.iit = or disjoint <4 x i32> %i.iis, splat (i32 1056964608)
  %i.iiu = bitcast <4 x i32> %i.iit to <4 x float> ; 3 uses
  %i.iiv = add nsw <4 x i32> %i.iir, splat (i32 -127)
  %i.iiw = sitofp fast <4 x i32> %i.iiv to <4 x float> ; 2 uses
  %i.iix = fadd fast <4 x float> %i.iiw, splat (float 1.000000e+00)
  %i.iiy = fcmp fast olt <4 x float> %i.iiu, splat (float f0x3F3504F3) ; 2 uses
  %i.iiz = select <4 x i1> %i.iiy, <4 x float> %i.iiu, <4 x float> zeroinitializer
  %i.ija = fadd fast <4 x float> %i.iiu, splat (float -1.000000e+00)
  %i.ijb = select fast <4 x i1> %i.iiy, <4 x float> %i.iiw, <4 x float> %i.iix
  %i.ijc = fadd fast <4 x float> %i.ija, %i.iiz   ; 12 uses
  %i.ijd = fmul fast <4 x float> %i.ijc, %i.ijc
  %i.ije = fmul fast <4 x float> %i.ijc, splat (float f0x3D9021BB)
  %i.ijf = fadd fast <4 x float> %i.ije, splat (float f0xBDEBD1B8)
  %i.ijg = fmul fast <4 x float> %i.ijf, %i.ijc
  %i.ijh = fadd fast <4 x float> %i.ijg, splat (float f0x3DEF251A)
  %i.iji = fmul fast <4 x float> %i.ijh, %i.ijc
  %i.ijj = fadd fast <4 x float> %i.iji, splat (float f0xBDFE5D4F)
  %i.ijk = fmul fast <4 x float> %i.ijj, %i.ijc
  %i.ijl = fadd fast <4 x float> %i.ijk, splat (float f0x3E11E9BF)
  %i.ijm = fmul fast <4 x float> %i.ijl, %i.ijc
  %i.ijn = fadd fast <4 x float> %i.ijm, splat (float f0xBE2AAE50)
  %i.ijo = fmul fast <4 x float> %i.ijn, %i.ijc
  %i.ijp = fadd fast <4 x float> %i.ijo, splat (float f0x3E4CCEAC)
  %i.ijq = fmul fast <4 x float> %i.ijp, %i.ijc
  %i.ijr = fadd fast <4 x float> %i.ijq, splat (float f0xBE7FFFFC)
  %i.ijs = fmul fast <4 x float> %i.ijr, %i.ijc
  %i.ijt = fadd fast <4 x float> %i.ijs, splat (float f0x3EAAAAAA)
  %i.iju = fmul fast <4 x float> %i.ijt, %i.ijc
  %reass.mul.i68.i = fmul fast <4 x float> %i.ijb, splat (float f0x3F317218)
  %reass.add152.i69.i = fadd fast <4 x float> %i.iju, splat (float -5.000000e-01)
  %reass.mul153.i70.i = fmul fast <4 x float> %i.ijd, %reass.add152.i69.i
  %i.ijv = fadd fast <4 x float> %reass.mul.i68.i, %i.ijc
  %i.ijw = fadd fast <4 x float> %i.ijv, %reass.mul153.i70.i
  %i.ijx = fmul fast <4 x float> %i.ijw, %i.iec
  %i.ijy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ijx, <4 x float> splat (float f0x42B0C0A5))
  %i.ijz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ijy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ika = fmul fast <4 x float> %i.ijz, splat (float f0x3FB8AA3B)
  %i.ikb = fadd fast <4 x float> %i.ika, splat (float 5.000000e-01) ; 2 uses
  %i.ikc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ikb)
  %i.ikd = sitofp fast <4 x i32> %i.ikc to <4 x float> ; 2 uses
  %i.ike = fcmp fast olt <4 x float> %i.ikb, %i.ikd
  %i.ikf = select <4 x i1> %i.ike, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ikg = fsub fast <4 x float> %i.ikd, %i.ikf   ; 2 uses
  %i.ikh = fmul fast <4 x float> %i.ikg, splat (float f0x3F317218)
  %i.iki = fsub fast <4 x float> %i.ijz, %i.ikh   ; 8 uses
  %i.ikj = fmul fast <4 x float> %i.iki, %i.iki
  %i.ikk = fmul fast <4 x float> %i.iki, splat (float f0x39506967)
  %i.ikl = fadd fast <4 x float> %i.ikk, splat (float f0x3AB743CE)
  %i.ikm = fmul fast <4 x float> %i.ikl, %i.iki
  %i.ikn = fadd fast <4 x float> %i.ikm, splat (float f0x3C088908)
  %i.iko = fmul fast <4 x float> %i.ikn, %i.iki
  %i.ikp = fadd fast <4 x float> %i.iko, splat (float f0x3D2AA9C1)
  %i.ikq = fmul fast <4 x float> %i.ikp, %i.iki
  %i.ikr = fadd fast <4 x float> %i.ikq, splat (float f0x3E2AAAAA)
  %i.iks = fmul fast <4 x float> %i.ikr, %i.iki
  %i.ikt = fadd fast <4 x float> %i.iks, splat (float 5.000000e-01)
  %i.iku = fmul fast <4 x float> %i.ikj, %i.ikt
  %i.ikv = fadd fast <4 x float> %i.iki, splat (float 1.000000e+00)
  %i.ikw = fadd fast <4 x float> %i.ikv, %i.iku
  %i.ikx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ikg)
  %i.iky = shl <4 x i32> %i.ikx, splat (i32 23)
  %i.ikz = add <4 x i32> %i.iky, splat (i32 1065353216)
  %i.ila = bitcast <4 x i32> %i.ikz to <4 x float>
  %i.ilb = fmul fast <4 x float> %i.ikw, %i.ila
  store <4 x float> %i.ilb, ptr %.128164.i66.i, align 1, !tbaa !60
  %i.ilc = getelementptr inbounds nuw i8, ptr %.1165.i65.i, i64 16 ; 2 uses
  %i.ild = getelementptr inbounds nuw i8, ptr %.128164.i66.i, i64 16 ; 2 uses
  %i.ile = add nuw nsw i32 %.131163.i67.i, 4      ; 3 uses
  %i.ilf = or disjoint i32 %i.ile, 3
  %i.ilg = icmp slt i32 %i.ilf, %i.hnq
  br i1 %i.ilg, label %.lr.ph166.i64.i, label %.preheader.i55.i, !llvm.loop !356

.lr.ph173.i59.i:                                  ; preds = %.lr.ph173.i59.i.prol.loopexit, %.lr.ph173.i59.i
  %.2172.i60.i = phi ptr [ %i.ilv, %.lr.ph173.i59.i ], [ %.2172.i60.i.unr, %.lr.ph173.i59.i.prol.loopexit ] ; 5 uses
  %.229171.i61.i = phi ptr [ %i.ilw, %.lr.ph173.i59.i ], [ %.229171.i61.i.unr, %.lr.ph173.i59.i.prol.loopexit ] ; 5 uses
  %.232170.i62.i = phi i32 [ %i.ilx, %.lr.ph173.i59.i ], [ %.232170.i62.i.unr, %.lr.ph173.i59.i.prol.loopexit ]
  %i.ilh = load float, ptr %.2172.i60.i, align 4, !tbaa !59
  %i.ili = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ilh, float %i.idt)
  store float %i.ili, ptr %.229171.i61.i, align 4, !tbaa !59
  %i.ilj = getelementptr inbounds nuw i8, ptr %.2172.i60.i, i64 4
  %i.ilk = getelementptr inbounds nuw i8, ptr %.229171.i61.i, i64 4
  %i.ill = load float, ptr %i.ilj, align 4, !tbaa !59
  %i.ilm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ill, float %i.idt)
  store float %i.ilm, ptr %i.ilk, align 4, !tbaa !59
  %i.iln = getelementptr inbounds nuw i8, ptr %.2172.i60.i, i64 8
  %i.ilo = getelementptr inbounds nuw i8, ptr %.229171.i61.i, i64 8
  %i.ilp = load float, ptr %i.iln, align 4, !tbaa !59
  %i.ilq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ilp, float %i.idt)
  store float %i.ilq, ptr %i.ilo, align 4, !tbaa !59
  %i.ilr = getelementptr inbounds nuw i8, ptr %.2172.i60.i, i64 12
  %i.ils = getelementptr inbounds nuw i8, ptr %.229171.i61.i, i64 12
  %i.ilt = load float, ptr %i.ilr, align 4, !tbaa !59
  %i.ilu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ilt, float %i.idt)
  store float %i.ilu, ptr %i.ils, align 4, !tbaa !59
  %i.ilv = getelementptr inbounds nuw i8, ptr %.2172.i60.i, i64 16
  %i.ilw = getelementptr inbounds nuw i8, ptr %.229171.i61.i, i64 16
  %i.ilx = add nuw nsw i32 %.232170.i62.i, 4      ; 2 uses
  %exitcond.not.i63.i.3 = icmp eq i32 %i.ilx, %i.hnq
  br i1 %exitcond.not.i63.i.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph173.i59.i, !llvm.loop !357

bb.id:                                            ; preds = %bb.hx, %bb.hm
  %i.ily = icmp eq i32 %6, 1
  br i1 %i.ily, label %bb.ie, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ie:                                            ; preds = %bb.id
  %i.ilz = icmp eq i32 %3, %4
  br i1 %i.ilz, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.ima = icmp eq i32 %.sroa.speculated.i1103, 8
  %i.imb = icmp sgt i32 %.sroa.speculated145.i, 0
  %or.cond.i.i1110 = and i1 %i.imb, %i.ima
  br i1 %or.cond.i.i1110, label %.lr.ph.i102.i, label %.loopexit251.i.i

.lr.ph.i102.i:                                    ; preds = %bb.if, %.lr.ph.i102.i
  %.0255.i.i = phi ptr [ %i.iot, %.lr.ph.i102.i ], [ %0, %bb.if ] ; 2 uses
  %.032254.i.i = phi ptr [ %i.iou, %.lr.ph.i102.i ], [ %1, %bb.if ] ; 2 uses
  %.038253.i.i = phi ptr [ %i.iov, %.lr.ph.i102.i ], [ %2, %bb.if ] ; 2 uses
  %.042252.i.i = phi i32 [ %i.iow, %.lr.ph.i102.i ], [ 0, %bb.if ]
  %i.imc = load <8 x float>, ptr %.0255.i.i, align 1, !tbaa !60
  %i.imd = load float, ptr %.032254.i.i, align 4, !tbaa !59
  %i.ime = insertelement <8 x float> poison, float %i.imd, i64 0
  %i.imf = shufflevector <8 x float> %i.ime, <8 x float> poison, <8 x i32> zeroinitializer
  %i.img = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.imf, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.imh = bitcast <8 x float> %i.img to <8 x i32>
  %i.imi = bitcast <8 x float> %i.img to <8 x i32>
  %i.imj = and <8 x i32> %i.imi, splat (i32 -2139095041)
  %i.imk = or disjoint <8 x i32> %i.imj, splat (i32 1056964608)
  %i.iml = bitcast <8 x i32> %i.imk to <8 x float> ; 3 uses
  %i.imm = lshr <8 x i32> %i.imh, splat (i32 23)
  %i.imn = add nsw <8 x i32> %i.imm, splat (i32 -127)
  %i.imo = sitofp fast <8 x i32> %i.imn to <8 x float> ; 2 uses
  %i.imp = fadd fast <8 x float> %i.imo, splat (float 1.000000e+00)
  %i.imq = fcmp fast olt <8 x float> %i.iml, splat (float f0x3F3504F3) ; 2 uses
  %i.imr = select <8 x i1> %i.imq, <8 x float> %i.iml, <8 x float> zeroinitializer
  %i.ims = fadd fast <8 x float> %i.iml, splat (float -1.000000e+00)
  %i.imt = select fast <8 x i1> %i.imq, <8 x float> %i.imo, <8 x float> %i.imp
  %i.imu = fadd fast <8 x float> %i.ims, %i.imr   ; 12 uses
  %i.imv = fmul fast <8 x float> %i.imu, %i.imu
  %i.imw = fmul fast <8 x float> %i.imu, splat (float f0x3D9021BB)
  %i.imx = fadd fast <8 x float> %i.imw, splat (float f0xBDEBD1B8)
  %i.imy = fmul fast <8 x float> %i.imx, %i.imu
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  br i1 %i.jpa, label %.lr.ph121.i.i, label %.preheader.i.i1182, !llvm.loop !369

.lr.ph130.i.i:                                    ; preds = %.lr.ph130.i.i.prol.loopexit, %.lr.ph130.i.i
  %.2129.i.i = phi ptr [ %i.jpw, %.lr.ph130.i.i ], [ %.2129.i.i.unr, %.lr.ph130.i.i.prol.loopexit ] ; 5 uses
  %.230128.i.i = phi ptr [ %i.jpx, %.lr.ph130.i.i ], [ %.230128.i.i.unr, %.lr.ph130.i.i.prol.loopexit ] ; 5 uses
  %.233127.i.i = phi i32 [ %i.jpz, %.lr.ph130.i.i ], [ %.233127.i.i.unr, %.lr.ph130.i.i.prol.loopexit ]
  %.236126.i.i = phi ptr [ %i.jpy, %.lr.ph130.i.i ], [ %.236126.i.i.unr, %.lr.ph130.i.i.prol.loopexit ] ; 5 uses
  %i.jpb = load float, ptr %.2129.i.i, align 4, !tbaa !59
  %i.jpc = load float, ptr %.230128.i.i, align 4, !tbaa !59
  %i.jpd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jpb, float %i.jpc)
  store float %i.jpd, ptr %.236126.i.i, align 4, !tbaa !59
  %i.jpe = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 4
  %i.jpf = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 4
  %i.jpg = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 4
  %i.jph = load float, ptr %i.jpe, align 4, !tbaa !59
  %i.jpi = load float, ptr %i.jpf, align 4, !tbaa !59
  %i.jpj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jph, float %i.jpi)
  store float %i.jpj, ptr %i.jpg, align 4, !tbaa !59
  %i.jpk = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 8
  %i.jpl = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 8
  %i.jpm = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 8
  %i.jpn = load float, ptr %i.jpk, align 4, !tbaa !59
  %i.jpo = load float, ptr %i.jpl, align 4, !tbaa !59
  %i.jpp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jpn, float %i.jpo)
  store float %i.jpp, ptr %i.jpm, align 4, !tbaa !59
  %i.jpq = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 12
  %i.jpr = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 12
  %i.jps = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 12
  %i.jpt = load float, ptr %i.jpq, align 4, !tbaa !59
  %i.jpu = load float, ptr %i.jpr, align 4, !tbaa !59
  %i.jpv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jpt, float %i.jpu)
  store float %i.jpv, ptr %i.jps, align 4, !tbaa !59
  %i.jpw = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 16
  %i.jpx = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 16
  %i.jpy = getelementptr inbounds nuw i8, ptr %.236126.i.i, i64 16
  %i.jpz = add nuw nsw i32 %.233127.i.i, 4        ; 2 uses
  %exitcond.not.i.i1187.3 = icmp eq i32 %i.jpz, %i.jjk
  br i1 %exitcond.not.i.i1187.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph130.i.i, !llvm.loop !370

bb.ir:                                            ; preds = %bb.ip
  %i.jqa = icmp eq i32 %4, 1
  br i1 %i.jqa, label %bb.is, label %bb.iz

bb.is:                                            ; preds = %bb.ir
  %i.jqb = load float, ptr %1, align 4, !tbaa !59 ; 11 uses
  %i.jqc = icmp eq i32 %.sroa.speculated.i1150, 4
  br i1 %i.jqc, label %.thread.i.i1177, label %bb.it

.thread.i.i1177:                                  ; preds = %bb.is
  %i.jqd = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.iv

bb.it:                                            ; preds = %bb.is
  %i.jqe = insertelement <4 x float> poison, float %i.jqb, i64 0
  %i.jqf = shufflevector <4 x float> %i.jqe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jqg = icmp eq i32 %.sroa.speculated.i1150, 8
  br i1 %i.jqg, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.jqh = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it, %.thread.i.i1177
  %i.jqi = phi <4 x float> [ %i.jqd, %.thread.i.i1177 ], [ %i.jqf, %bb.it ] ; 2 uses
  %i.jqj = shufflevector <4 x float> %i.jqi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.jqk = phi <4 x float> [ %i.jqf, %bb.iu ], [ %i.jqi, %bb.iv ] ; 4 uses
  %i.jql = phi fast <8 x float> [ %i.jqh, %bb.iu ], [ %i.jqj, %bb.iv ] ; 4 uses
  %i.jqm = icmp sgt i32 %i.jjk, 7
  br i1 %i.jqm, label %.lr.ph.i39.i1176, label %.preheader108.i.i

.lr.ph.i39.i1176:                                 ; preds = %bb.iw
  %i.jqn = fcmp fast ueq <8 x float> %i.jql, zeroinitializer ; 2 uses
  %i.jqo = fcmp fast olt <8 x float> %i.jql, zeroinitializer
  %i.jqp = bitcast <8 x float> %i.jql to <8 x i32>
  %isneg.inv105.i.i = icmp slt <8 x i32> %i.jqp, zeroinitializer
  %i.jqq = select <8 x i1> %isneg.inv105.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.jqr = fdiv fast <8 x float> splat (float 1.000000e+00), %i.jql
  br label %bb.ix

.preheader108.loopexit.i.i:                       ; preds = %bb.ix
  %i.jqs = and i32 %i.jjk, 2147483640
  br label %.preheader108.i.i

.preheader108.i.i:                                ; preds = %.preheader108.loopexit.i.i, %bb.iw
  %.030.lcssa.i.i1168 = phi i32 [ 0, %bb.iw ], [ %i.jqs, %.preheader108.loopexit.i.i ] ; 3 uses
  %.027.lcssa.i.i1169 = phi ptr [ %2, %bb.iw ], [ %i.jsv, %.preheader108.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1170 = phi ptr [ %0, %bb.iw ], [ %i.jsu, %.preheader108.loopexit.i.i ] ; 2 uses
  %i.jqt = or disjoint i32 %.030.lcssa.i.i1168, 3
  %i.jqu = icmp slt i32 %i.jqt, %i.jjk
  br i1 %i.jqu, label %.lr.ph117.i.i, label %.preheader.i35.i1171

.lr.ph117.i.i:                                    ; preds = %.preheader108.i.i
  %i.jqv = fcmp fast oeq <4 x float> %i.jqk, zeroinitializer ; 2 uses
  %i.jqw = fcmp fast olt <4 x float> %i.jqk, zeroinitializer
  %i.jqx = bitcast <4 x float> %i.jqk to <4 x i32>
  %isneg.inv.i38.i = icmp slt <4 x i32> %i.jqx, zeroinitializer
  %i.jqy = select <4 x i1> %isneg.inv.i38.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.jqz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.jqk
  br label %bb.iy

bb.ix:                                            ; preds = %bb.ix, %.lr.ph.i39.i1176
  %.0111.i.i = phi ptr [ %0, %.lr.ph.i39.i1176 ], [ %i.jsu, %bb.ix ] ; 2 uses
  %.027110.i.i = phi ptr [ %2, %.lr.ph.i39.i1176 ], [ %i.jsv, %bb.ix ] ; 2 uses
  %.030109.i.i = phi i32 [ 0, %.lr.ph.i39.i1176 ], [ %i.jsw, %bb.ix ]
  %i.jra = load <8 x float>, ptr %.0111.i.i, align 1, !tbaa !60 ; 4 uses
  %i.jrb = fcmp fast ueq <8 x float> %i.jra, zeroinitializer ; 2 uses
  %.not107.i.i = or <8 x i1> %i.jqn, %i.jrb
  %i.jrc = bitcast <8 x float> %i.jra to <8 x i32>
  %i.jrd = and <8 x i32> %i.jrc, splat (i32 -2147483648)
  %i.jre = fcmp fast olt <8 x float> %i.jra, zeroinitializer
  %i.jrf = select <8 x i1> %i.jre, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.jrg = select <8 x i1> %i.jqo, <8 x float> %i.jrf, <8 x float> zeroinitializer
  %i.jrh = fmul fast <8 x float> %i.jra, %i.jqr   ; 2 uses
  %i.jri = bitcast <8 x float> %i.jrh to <8 x i32>
  %i.jrj = and <8 x i32> %i.jri, splat (i32 -2147483648)
  %i.jrk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jrh) ; 3 uses
  %i.jrl = fcmp fast ogt <8 x float> %i.jrk, splat (float 1.000000e+00) ; 2 uses
  %i.jrm = select <8 x i1> %i.jrl, <8 x float> splat (float -1.000000e+00), <8 x float> %i.jrk
  %i.jrn = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jrk, <8 x float> splat (float 1.000000e+00))
  %i.jro = fdiv fast <8 x float> %i.jrm, %i.jrn   ; 3 uses
  %i.jrp = fmul fast <8 x float> %i.jro, %i.jro   ; 3 uses
  %i.jrq = fmul fast <8 x float> %i.jrp, %i.jrp   ; 7 uses
  %i.jrr = fmul fast <8 x float> %i.jrq, splat (float f0x3C83A25C)
  %i.jrs = fsub fast <8 x float> splat (float f0xBD99B01E), %i.jrr
  %i.jrt = fmul fast <8 x float> %i.jrs, %i.jrq
  %i.jru = fadd fast <8 x float> %i.jrt, splat (float f0xBE117200)
  %i.jrv = fmul fast <8 x float> %i.jru, %i.jrq
  %i.jrw = fadd fast <8 x float> %i.jrv, splat (float f0xBEAAAA53)
  %i.jrx = fmul fast <8 x float> %i.jrq, splat (float f0x3B3AC537)
  %i.jry = fadd fast <8 x float> %i.jrx, splat (float f0x3D2EDD4E)
  %i.jrz = fmul fast <8 x float> %i.jry, %i.jrq
  %i.jsa = fadd fast <8 x float> %i.jrz, splat (float f0x3DD9ED24)
  %i.jsb = fmul fast <8 x float> %i.jsa, %i.jrq
  %i.jsc = fadd fast <8 x float> %i.jsb, splat (float f0x3E4CB974)
  %i.jsd = fmul fast <8 x float> %i.jsc, %i.jrq
  %i.jse = fadd fast <8 x float> %i.jsd, splat (float 1.000000e+00)
  %i.jsf = fmul fast <8 x float> %i.jrw, %i.jrp
  %i.jsg = fadd fast <8 x float> %i.jse, %i.jsf
  %i.jsh = fmul fast <8 x float> %i.jsg, %i.jro
  %i.jsi = select <8 x i1> %i.jrl, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.jsj = fadd fast <8 x float> %i.jsh, %i.jsi
  %i.jsk = bitcast <8 x float> %i.jsj to <8 x i32>
  %i.jsl = or <8 x i32> %i.jrj, %i.jsk
  %i.jsm = bitcast <8 x i32> %i.jsl to <8 x float>
  %i.jsn = fadd fast <8 x float> %i.jrg, %i.jsm
  %i.jso = or disjoint <8 x i32> %i.jrd, splat (i32 1070141403)
  %i.jsp = bitcast <8 x float> %i.jsn to <8 x i32>
  %i.jsq = select <8 x i1> %.not107.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.jsp
  %i.jsr = select <8 x i1> %i.jqn, <8 x i32> %i.jso, <8 x i32> zeroinitializer
  %i.jss = select <8 x i1> %i.jrb, <8 x i32> %i.jqq, <8 x i32> %i.jsr
  %i.jst = or <8 x i32> %i.jsq, %i.jss
  store <8 x i32> %i.jst, ptr %.027110.i.i, align 1, !tbaa !60
  %i.jsu = getelementptr inbounds nuw i8, ptr %.0111.i.i, i64 32 ; 2 uses
  %i.jsv = getelementptr inbounds nuw i8, ptr %.027110.i.i, i64 32 ; 2 uses
  %i.jsw = add nuw nsw i32 %.030109.i.i, 8        ; 2 uses
  %i.jsx = or disjoint i32 %i.jsw, 7
  %i.jsy = icmp slt i32 %i.jsx, %i.jjk
  br i1 %i.jsy, label %bb.ix, label %.preheader108.loopexit.i.i, !llvm.loop !371

.preheader.i35.i1171:                             ; preds = %bb.iy, %.preheader108.i.i
  %.131.lcssa.i.i1172 = phi i32 [ %.030.lcssa.i.i1168, %.preheader108.i.i ], [ %i.jwi, %bb.iy ] ; 4 uses
  %.128.lcssa.i.i1173 = phi ptr [ %.027.lcssa.i.i1169, %.preheader108.i.i ], [ %i.jwh, %bb.iy ] ; 4 uses
  %.1.lcssa.i36.i1174 = phi ptr [ %.0.lcssa.i34.i1170, %.preheader108.i.i ], [ %i.jwg, %bb.iy ] ; 4 uses
  %i.jsz = icmp slt i32 %.131.lcssa.i.i1172, %i.jjk
  br i1 %i.jsz, label %.lr.ph124.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i.i.preheader:                          ; preds = %.preheader.i35.i1171
  %.1.lcssa.i36.i11745146 = ptrtoaddr ptr %.1.lcssa.i36.i1174 to i64
  %.128.lcssa.i.i11735145 = ptrtoaddr ptr %.128.lcssa.i.i1173 to i64
  %i.jta = xor i32 %.131.lcssa.i.i1172, -1
  %i.jtb = add i32 %i.jjk, %i.jta                 ; 2 uses
  %i.jtc = zext i32 %i.jtb to i64
  %i.jtd = add nuw nsw i64 %i.jtc, 1              ; 2 uses
  %min.iters.check5148 = icmp ult i32 %i.jtb, 7
  %i.jte = sub i64 %.1.lcssa.i36.i11745146, %.128.lcssa.i.i11735145
  %diff.check5150 = icmp ugt i64 %i.jte, -32
  %or.cond6408 = select i1 %min.iters.check5148, i1 true, i1 %diff.check5150
  br i1 %or.cond6408, label %.lr.ph124.i.i.preheader6759, label %vector.ph5151

vector.ph5151:                                    ; preds = %.lr.ph124.i.i.preheader
  %n.vec5152 = and i64 %i.jtd, 8589934584         ; 4 uses
  %i.jtf = shl nuw nsw i64 %n.vec5152, 2          ; 2 uses
  %i.jtg = getelementptr i8, ptr %.1.lcssa.i36.i1174, i64 %i.jtf
  %i.jth = getelementptr i8, ptr %.128.lcssa.i.i1173, i64 %i.jtf
  %i.jti = trunc i64 %n.vec5152 to i32
  %i.jtj = add i32 %.131.lcssa.i.i1172, %i.jti
  %i.jtk = insertelement <4 x float> poison, float %i.jqb, i64 0
  %i.jtl = shufflevector <4 x float> %i.jtk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5153

vector.body5153:                                  ; preds = %vector.body5153, %vector.ph5151
  %index5154 = phi i64 [ 0, %vector.ph5151 ], [ %index.next5158, %vector.body5153 ] ; 2 uses
  %i.jtm = shl i64 %index5154, 2                  ; 2 uses
  %next.gep5155 = getelementptr i8, ptr %.1.lcssa.i36.i1174, i64 %i.jtm
  %next.gep5156 = getelementptr i8, ptr %.128.lcssa.i.i1173, i64 %i.jtm
  %wide.load5157 = load <8 x float>, ptr %next.gep5155, align 4, !tbaa !59 ; 5 uses
  %i.jtn = extractelement <8 x float> %wide.load5157, i64 0
  %i.jto = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jtn, float %i.jqb)
  %i.jtp = extractelement <8 x float> %wide.load5157, i64 1
  %i.jtq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jtp, float %i.jqb)
  %i.jtr = extractelement <8 x float> %wide.load5157, i64 2
  %i.jts = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jtr, float %i.jqb)
  %i.jtt = extractelement <8 x float> %wide.load5157, i64 3
  %i.jtu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jtt, float %i.jqb)
  %i.jtv = shufflevector <8 x float> %wide.load5157, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jtw = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.jtv, <4 x float> %i.jtl)
  %i.jtx = insertelement <8 x float> poison, float %i.jto, i64 0
  %i.jty = insertelement <8 x float> %i.jtx, float %i.jtq, i64 1
  %i.jtz = insertelement <8 x float> %i.jty, float %i.jts, i64 2
  %i.jua = insertelement <8 x float> %i.jtz, float %i.jtu, i64 3
  %i.jub = shufflevector <4 x float> %i.jtw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.juc = shufflevector <8 x float> %i.jua, <8 x float> %i.jub, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.juc, ptr %next.gep5156, align 4, !tbaa !59
  %index.next5158 = add nuw i64 %index5154, 8     ; 2 uses
  %i.jud = icmp eq i64 %index.next5158, %n.vec5152
  br i1 %i.jud, label %middle.block5159, label %vector.body5153, !llvm.loop !372

middle.block5159:                                 ; preds = %vector.body5153
  %cmp.n5160 = icmp eq i64 %i.jtd, %n.vec5152
  br i1 %cmp.n5160, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i.preheader6759

.lr.ph124.i.i.preheader6759:                      ; preds = %.lr.ph124.i.i.preheader, %middle.block5159
  %.2123.i.i.ph = phi ptr [ %.1.lcssa.i36.i1174, %.lr.ph124.i.i.preheader ], [ %i.jtg, %middle.block5159 ] ; 2 uses
  %.229122.i.i.ph = phi ptr [ %.128.lcssa.i.i1173, %.lr.ph124.i.i.preheader ], [ %i.jth, %middle.block5159 ] ; 2 uses
  %.232121.i.i.ph = phi i32 [ %.131.lcssa.i.i1172, %.lr.ph124.i.i.preheader ], [ %i.jtj, %middle.block5159 ] ; 4 uses
  %i.jue = sub i32 %i.jjk, %.232121.i.i.ph
  %xtraiter7454 = and i32 %i.jue, 3               ; 2 uses
  %lcmp.mod7455.not = icmp eq i32 %xtraiter7454, 0
  br i1 %lcmp.mod7455.not, label %.lr.ph124.i.i.prol.loopexit, label %.lr.ph124.i.i.prol

.lr.ph124.i.i.prol:                               ; preds = %.lr.ph124.i.i.preheader6759, %.lr.ph124.i.i.prol
  %.2123.i.i.prol = phi ptr [ %i.juh, %.lr.ph124.i.i.prol ], [ %.2123.i.i.ph, %.lr.ph124.i.i.preheader6759 ] ; 2 uses
  %.229122.i.i.prol = phi ptr [ %i.jui, %.lr.ph124.i.i.prol ], [ %.229122.i.i.ph, %.lr.ph124.i.i.preheader6759 ] ; 2 uses
  %.232121.i.i.prol = phi i32 [ %i.juj, %.lr.ph124.i.i.prol ], [ %.232121.i.i.ph, %.lr.ph124.i.i.preheader6759 ]
  %prol.iter7456 = phi i32 [ %prol.iter7456.next, %.lr.ph124.i.i.prol ], [ 0, %.lr.ph124.i.i.preheader6759 ]
  %i.juf = load float, ptr %.2123.i.i.prol, align 4, !tbaa !59
  %i.jug = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.juf, float %i.jqb)
  store float %i.jug, ptr %.229122.i.i.prol, align 4, !tbaa !59
  %i.juh = getelementptr inbounds nuw i8, ptr %.2123.i.i.prol, i64 4 ; 2 uses
  %i.jui = getelementptr inbounds nuw i8, ptr %.229122.i.i.prol, i64 4 ; 2 uses
  %i.juj = add nuw nsw i32 %.232121.i.i.prol, 1   ; 2 uses
  %prol.iter7456.next = add i32 %prol.iter7456, 1 ; 2 uses
  %prol.iter7456.cmp.not = icmp eq i32 %prol.iter7456.next, %xtraiter7454
  br i1 %prol.iter7456.cmp.not, label %.lr.ph124.i.i.prol.loopexit, label %.lr.ph124.i.i.prol, !llvm.loop !373

.lr.ph124.i.i.prol.loopexit:                      ; preds = %.lr.ph124.i.i.prol, %.lr.ph124.i.i.preheader6759
  %.2123.i.i.unr = phi ptr [ %.2123.i.i.ph, %.lr.ph124.i.i.preheader6759 ], [ %i.juh, %.lr.ph124.i.i.prol ]
  %.229122.i.i.unr = phi ptr [ %.229122.i.i.ph, %.lr.ph124.i.i.preheader6759 ], [ %i.jui, %.lr.ph124.i.i.prol ]
  %.232121.i.i.unr = phi i32 [ %.232121.i.i.ph, %.lr.ph124.i.i.preheader6759 ], [ %i.juj, %.lr.ph124.i.i.prol ]
  %i.juk = sub i32 %.232121.i.i.ph, %i.jjk
  %i.jul = icmp ugt i32 %i.juk, -4
  br i1 %i.jul, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i

bb.iy:                                            ; preds = %bb.iy, %.lr.ph117.i.i
  %.1116.i.i = phi ptr [ %.0.lcssa.i34.i1170, %.lr.ph117.i.i ], [ %i.jwg, %bb.iy ] ; 2 uses
  %.128115.i.i = phi ptr [ %.027.lcssa.i.i1169, %.lr.ph117.i.i ], [ %i.jwh, %bb.iy ] ; 2 uses
  %.131114.i.i = phi i32 [ %.030.lcssa.i.i1168, %.lr.ph117.i.i ], [ %i.jwi, %bb.iy ]
  %i.jum = load <4 x float>, ptr %.1116.i.i, align 1, !tbaa !60 ; 4 uses
  %i.jun = fcmp fast oeq <4 x float> %i.jum, zeroinitializer ; 2 uses
  %.not104.i.i = or <4 x i1> %i.jqv, %i.jun
  %i.juo = bitcast <4 x float> %i.jum to <4 x i32>
  %i.jup = and <4 x i32> %i.juo, splat (i32 -2147483648)
  %i.juq = fcmp fast olt <4 x float> %i.jum, zeroinitializer
  %i.jur = select <4 x i1> %i.juq, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.jus = select <4 x i1> %i.jqw, <4 x float> %i.jur, <4 x float> zeroinitializer
  %i.jut = fmul fast <4 x float> %i.jum, %i.jqz   ; 2 uses
  %i.juu = bitcast <4 x float> %i.jut to <4 x i32>
  %i.juv = and <4 x i32> %i.juu, splat (i32 -2147483648)
  %i.juw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jut) ; 3 uses
  %i.jux = fcmp fast ogt <4 x float> %i.juw, splat (float 1.000000e+00) ; 2 uses
  %i.juy = select <4 x i1> %i.jux, <4 x float> splat (float -1.000000e+00), <4 x float> %i.juw
  %i.juz = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.juw, <4 x float> splat (float 1.000000e+00))
  %i.jva = fdiv fast <4 x float> %i.juy, %i.juz   ; 3 uses
  %i.jvb = fmul fast <4 x float> %i.jva, %i.jva   ; 3 uses
  %i.jvc = fmul fast <4 x float> %i.jvb, %i.jvb   ; 7 uses
  %i.jvd = fmul fast <4 x float> %i.jvc, splat (float f0x3C83A25C)
  %i.jve = fsub fast <4 x float> splat (float f0xBD99B01E), %i.jvd
  %i.jvf = fmul fast <4 x float> %i.jve, %i.jvc
  %i.jvg = fadd fast <4 x float> %i.jvf, splat (float f0xBE117200)
  %i.jvh = fmul fast <4 x float> %i.jvg, %i.jvc
  %i.jvi = fadd fast <4 x float> %i.jvh, splat (float f0xBEAAAA53)
  %i.jvj = fmul fast <4 x float> %i.jvc, splat (float f0x3B3AC537)
  %i.jvk = fadd fast <4 x float> %i.jvj, splat (float f0x3D2EDD4E)
  %i.jvl = fmul fast <4 x float> %i.jvk, %i.jvc
  %i.jvm = fadd fast <4 x float> %i.jvl, splat (float f0x3DD9ED24)
  %i.jvn = fmul fast <4 x float> %i.jvm, %i.jvc
  %i.jvo = fadd fast <4 x float> %i.jvn, splat (float f0x3E4CB974)
  %i.jvp = fmul fast <4 x float> %i.jvo, %i.jvc
  %i.jvq = fadd fast <4 x float> %i.jvp, splat (float 1.000000e+00)
  %i.jvr = fmul fast <4 x float> %i.jvi, %i.jvb
  %i.jvs = fadd fast <4 x float> %i.jvq, %i.jvr
  %i.jvt = fmul fast <4 x float> %i.jvs, %i.jva
  %i.jvu = select <4 x i1> %i.jux, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.jvv = fadd fast <4 x float> %i.jvt, %i.jvu
  %i.jvw = bitcast <4 x float> %i.jvv to <4 x i32>
  %i.jvx = or <4 x i32> %i.juv, %i.jvw
  %i.jvy = bitcast <4 x i32> %i.jvx to <4 x float>
  %i.jvz = fadd fast <4 x float> %i.jus, %i.jvy
  %i.jwa = or disjoint <4 x i32> %i.jup, splat (i32 1070141403)
  %i.jwb = bitcast <4 x float> %i.jvz to <4 x i32>
  %i.jwc = select <4 x i1> %.not104.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.jwb
  %i.jwd = select <4 x i1> %i.jqv, <4 x i32> %i.jwa, <4 x i32> zeroinitializer
  %i.jwe = select <4 x i1> %i.jun, <4 x i32> %i.jqy, <4 x i32> %i.jwd
  %i.jwf = or <4 x i32> %i.jwc, %i.jwe
  store <4 x i32> %i.jwf, ptr %.128115.i.i, align 1, !tbaa !60
  %i.jwg = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 16 ; 2 uses
  %i.jwh = getelementptr inbounds nuw i8, ptr %.128115.i.i, i64 16 ; 2 uses
  %i.jwi = add nuw nsw i32 %.131114.i.i, 4        ; 3 uses
  %i.jwj = or disjoint i32 %i.jwi, 3
  %i.jwk = icmp slt i32 %i.jwj, %i.jjk
  br i1 %i.jwk, label %bb.iy, label %.preheader.i35.i1171, !llvm.loop !374

.lr.ph124.i.i:                                    ; preds = %.lr.ph124.i.i.prol.loopexit, %.lr.ph124.i.i
  %.2123.i.i = phi ptr [ %i.jwz, %.lr.ph124.i.i ], [ %.2123.i.i.unr, %.lr.ph124.i.i.prol.loopexit ] ; 5 uses
  %.229122.i.i = phi ptr [ %i.jxa, %.lr.ph124.i.i ], [ %.229122.i.i.unr, %.lr.ph124.i.i.prol.loopexit ] ; 5 uses
  %.232121.i.i = phi i32 [ %i.jxb, %.lr.ph124.i.i ], [ %.232121.i.i.unr, %.lr.ph124.i.i.prol.loopexit ]
  %i.jwl = load float, ptr %.2123.i.i, align 4, !tbaa !59
  %i.jwm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jwl, float %i.jqb)
  store float %i.jwm, ptr %.229122.i.i, align 4, !tbaa !59
  %i.jwn = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 4
  %i.jwo = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 4
  %i.jwp = load float, ptr %i.jwn, align 4, !tbaa !59
  %i.jwq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jwp, float %i.jqb)
  store float %i.jwq, ptr %i.jwo, align 4, !tbaa !59
  %i.jwr = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 8
  %i.jws = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 8
  %i.jwt = load float, ptr %i.jwr, align 4, !tbaa !59
  %i.jwu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jwt, float %i.jqb)
  store float %i.jwu, ptr %i.jws, align 4, !tbaa !59
  %i.jwv = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 12
  %i.jww = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 12
  %i.jwx = load float, ptr %i.jwv, align 4, !tbaa !59
  %i.jwy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jwx, float %i.jqb)
  store float %i.jwy, ptr %i.jww, align 4, !tbaa !59
  %i.jwz = getelementptr inbounds nuw i8, ptr %.2123.i.i, i64 16
  %i.jxa = getelementptr inbounds nuw i8, ptr %.229122.i.i, i64 16
  %i.jxb = add nuw nsw i32 %.232121.i.i, 4        ; 2 uses
  %exitcond.not.i37.i1175.3 = icmp eq i32 %i.jxb, %i.jjk
  br i1 %exitcond.not.i37.i1175.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i, !llvm.loop !375

bb.iz:                                            ; preds = %bb.ir
  %i.jxc = icmp eq i32 %3, 1
  br i1 %i.jxc, label %bb.ja, label %bb.jh

bb.ja:                                            ; preds = %bb.iz
  %i.jxd = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.jxe = icmp eq i32 %.sroa.speculated.i1150, 4
  br i1 %i.jxe, label %.thread.i66.i, label %bb.jb

.thread.i66.i:                                    ; preds = %bb.ja
  %i.jxf = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.jxg = insertelement <4 x float> poison, float %i.jxd, i64 0
  %i.jxh = shufflevector <4 x float> %i.jxg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jxi = icmp eq i32 %.sroa.speculated.i1150, 8
  br i1 %i.jxi, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.jxj = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.je

bb.jd:                                            ; preds = %bb.jb, %.thread.i66.i
  %i.jxk = phi <4 x float> [ %i.jxf, %.thread.i66.i ], [ %i.jxh, %bb.jb ] ; 2 uses
  %i.jxl = shufflevector <4 x float> %i.jxk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.jxm = phi <4 x float> [ %i.jxh, %bb.jc ], [ %i.jxk, %bb.jd ] ; 4 uses
  %i.jxn = phi fast <8 x float> [ %i.jxj, %bb.jc ], [ %i.jxl, %bb.jd ] ; 4 uses
  %i.jxo = icmp sgt i32 %i.jjk, 7
  br i1 %i.jxo, label %.lr.ph.i59.i, label %.preheader108.i40.i

.lr.ph.i59.i:                                     ; preds = %bb.je
  %i.jxp = fcmp fast ueq <8 x float> %i.jxn, zeroinitializer ; 2 uses
  %i.jxq = bitcast <8 x float> %i.jxn to <8 x i32>
  %i.jxr = and <8 x i32> %i.jxq, splat (i32 -2147483648)
  %i.jxs = fcmp fast olt <8 x float> %i.jxn, zeroinitializer
  %i.jxt = select <8 x i1> %i.jxs, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.jxu = or disjoint <8 x i32> %i.jxr, splat (i32 1070141403)
  br label %bb.jf

.preheader108.loopexit.i65.i:                     ; preds = %bb.jf
  %i.jxv = and i32 %i.jjk, 2147483640
  br label %.preheader108.i40.i

.preheader108.i40.i:                              ; preds = %.preheader108.loopexit.i65.i, %bb.je
  %.030.lcssa.i41.i = phi i32 [ 0, %bb.je ], [ %i.jxv, %.preheader108.loopexit.i65.i ] ; 3 uses
  %.027.lcssa.i42.i = phi ptr [ %2, %bb.je ], [ %i.jzx, %.preheader108.loopexit.i65.i ] ; 2 uses
  %.0.lcssa.i43.i = phi ptr [ %1, %bb.je ], [ %i.jzw, %.preheader108.loopexit.i65.i ] ; 2 uses
  %i.jxw = or disjoint i32 %.030.lcssa.i41.i, 3
  %i.jxx = icmp slt i32 %i.jxw, %i.jjk
  br i1 %i.jxx, label %.lr.ph117.i53.i, label %.preheader.i44.i

.lr.ph117.i53.i:                                  ; preds = %.preheader108.i40.i
  %i.jxy = fcmp fast oeq <4 x float> %i.jxm, zeroinitializer ; 2 uses
  %i.jxz = bitcast <4 x float> %i.jxm to <4 x i32>
  %i.jya = and <4 x i32> %i.jxz, splat (i32 -2147483648)
  %i.jyb = fcmp fast olt <4 x float> %i.jxm, zeroinitializer
  %i.jyc = select <4 x i1> %i.jyb, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.jyd = or disjoint <4 x i32> %i.jya, splat (i32 1070141403)
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jf, %.lr.ph.i59.i
  %.0111.i60.i = phi ptr [ %1, %.lr.ph.i59.i ], [ %i.jzw, %bb.jf ] ; 2 uses
  %.027110.i61.i = phi ptr [ %2, %.lr.ph.i59.i ], [ %i.jzx, %bb.jf ] ; 2 uses
  %.030109.i62.i = phi i32 [ 0, %.lr.ph.i59.i ], [ %i.jzy, %bb.jf ]
  %i.jye = load <8 x float>, ptr %.0111.i60.i, align 1, !tbaa !60 ; 4 uses
  %i.jyf = fcmp fast ueq <8 x float> %i.jye, zeroinitializer ; 2 uses
  %.not107.i63.i = or <8 x i1> %i.jxp, %i.jyf
  %i.jyg = fcmp fast olt <8 x float> %i.jye, zeroinitializer
  %i.jyh = select <8 x i1> %i.jyg, <8 x float> %i.jxt, <8 x float> zeroinitializer
  %i.jyi = fdiv fast <8 x float> %i.jxn, %i.jye   ; 2 uses
  %i.jyj = bitcast <8 x float> %i.jyi to <8 x i32>
  %i.jyk = and <8 x i32> %i.jyj, splat (i32 -2147483648)
  %i.jyl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jyi) ; 3 uses
  %i.jym = fcmp fast ogt <8 x float> %i.jyl, splat (float 1.000000e+00) ; 2 uses
  %i.jyn = select <8 x i1> %i.jym, <8 x float> splat (float -1.000000e+00), <8 x float> %i.jyl
  %i.jyo = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jyl, <8 x float> splat (float 1.000000e+00))
  %i.jyp = fdiv fast <8 x float> %i.jyn, %i.jyo   ; 3 uses
  %i.jyq = fmul fast <8 x float> %i.jyp, %i.jyp   ; 3 uses
  %i.jyr = fmul fast <8 x float> %i.jyq, %i.jyq   ; 7 uses
  %i.jys = fmul fast <8 x float> %i.jyr, splat (float f0x3C83A25C)
  %i.jyt = fsub fast <8 x float> splat (float f0xBD99B01E), %i.jys
  %i.jyu = fmul fast <8 x float> %i.jyt, %i.jyr
  %i.jyv = fadd fast <8 x float> %i.jyu, splat (float f0xBE117200)
  %i.jyw = fmul fast <8 x float> %i.jyv, %i.jyr
  %i.jyx = fadd fast <8 x float> %i.jyw, splat (float f0xBEAAAA53)
  %i.jyy = fmul fast <8 x float> %i.jyr, splat (float f0x3B3AC537)
  %i.jyz = fadd fast <8 x float> %i.jyy, splat (float f0x3D2EDD4E)
  %i.jza = fmul fast <8 x float> %i.jyz, %i.jyr
  %i.jzb = fadd fast <8 x float> %i.jza, splat (float f0x3DD9ED24)
  %i.jzc = fmul fast <8 x float> %i.jzb, %i.jyr
  %i.jzd = fadd fast <8 x float> %i.jzc, splat (float f0x3E4CB974)
  %i.jze = fmul fast <8 x float> %i.jzd, %i.jyr
  %i.jzf = fadd fast <8 x float> %i.jze, splat (float 1.000000e+00)
  %i.jzg = fmul fast <8 x float> %i.jyx, %i.jyq
  %i.jzh = fadd fast <8 x float> %i.jzf, %i.jzg
  %i.jzi = fmul fast <8 x float> %i.jzh, %i.jyp
  %i.jzj = select <8 x i1> %i.jym, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.jzk = fadd fast <8 x float> %i.jzi, %i.jzj
  %i.jzl = bitcast <8 x float> %i.jzk to <8 x i32>
  %i.jzm = or <8 x i32> %i.jyk, %i.jzl
  %i.jzn = bitcast <8 x i32> %i.jzm to <8 x float>
  %i.jzo = fadd fast <8 x float> %i.jyh, %i.jzn
  %i.jzp = bitcast <8 x float> %i.jye to <8 x i32>
  %isneg.inv105.i64.i = icmp slt <8 x i32> %i.jzp, zeroinitializer
  %i.jzq = select <8 x i1> %isneg.inv105.i64.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.jzr = bitcast <8 x float> %i.jzo to <8 x i32>
  %i.jzs = select <8 x i1> %.not107.i63.i, <8 x i32> zeroinitializer, <8 x i32> %i.jzr
  %i.jzt = select <8 x i1> %i.jyf, <8 x i32> %i.jxu, <8 x i32> zeroinitializer
  %i.jzu = select <8 x i1> %i.jxp, <8 x i32> %i.jzq, <8 x i32> %i.jzt
  %i.jzv = or <8 x i32> %i.jzs, %i.jzu
  store <8 x i32> %i.jzv, ptr %.027110.i61.i, align 1, !tbaa !60
  %i.jzw = getelementptr inbounds nuw i8, ptr %.0111.i60.i, i64 32 ; 2 uses
  %i.jzx = getelementptr inbounds nuw i8, ptr %.027110.i61.i, i64 32 ; 2 uses
  %i.jzy = add nuw nsw i32 %.030109.i62.i, 8      ; 2 uses
  %i.jzz = or disjoint i32 %i.jzy, 7
  %i.kaa = icmp slt i32 %i.jzz, %i.jjk
  br i1 %i.kaa, label %bb.jf, label %.preheader108.loopexit.i65.i, !llvm.loop !376

.preheader.i44.i:                                 ; preds = %bb.jg, %.preheader108.i40.i
  %.131.lcssa.i45.i = phi i32 [ %.030.lcssa.i41.i, %.preheader108.i40.i ], [ %i.kdi, %bb.jg ] ; 4 uses
  %.128.lcssa.i46.i = phi ptr [ %.027.lcssa.i42.i, %.preheader108.i40.i ], [ %i.kdh, %bb.jg ] ; 4 uses
  %.1.lcssa.i47.i = phi ptr [ %.0.lcssa.i43.i, %.preheader108.i40.i ], [ %i.kdg, %bb.jg ] ; 4 uses
  %i.kab = icmp slt i32 %.131.lcssa.i45.i, %i.jjk
  br i1 %i.kab, label %.lr.ph124.i48.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i48.i.preheader:                        ; preds = %.preheader.i44.i
  %.1.lcssa.i47.i5123 = ptrtoaddr ptr %.1.lcssa.i47.i to i64
  %.128.lcssa.i46.i5122 = ptrtoaddr ptr %.128.lcssa.i46.i to i64
  %i.kac = xor i32 %.131.lcssa.i45.i, -1
  %i.kad = add i32 %i.jjk, %i.kac                 ; 2 uses
  %i.kae = zext i32 %i.kad to i64
  %i.kaf = add nuw nsw i64 %i.kae, 1              ; 2 uses
  %min.iters.check5125 = icmp ult i32 %i.kad, 7
  %i.kag = sub i64 %.1.lcssa.i47.i5123, %.128.lcssa.i46.i5122
  %diff.check5127 = icmp ugt i64 %i.kag, -32
  %or.cond6409 = select i1 %min.iters.check5125, i1 true, i1 %diff.check5127
  br i1 %or.cond6409, label %.lr.ph124.i48.i.preheader6766, label %vector.ph5128

vector.ph5128:                                    ; preds = %.lr.ph124.i48.i.preheader
  %n.vec5129 = and i64 %i.kaf, 8589934584         ; 4 uses
  %i.kah = shl nuw nsw i64 %n.vec5129, 2          ; 2 uses
  %i.kai = getelementptr i8, ptr %.1.lcssa.i47.i, i64 %i.kah
  %i.kaj = getelementptr i8, ptr %.128.lcssa.i46.i, i64 %i.kah
  %i.kak = trunc i64 %n.vec5129 to i32
  %i.kal = add i32 %.131.lcssa.i45.i, %i.kak
  %i.kam = insertelement <4 x float> poison, float %i.jxd, i64 0
  %i.kan = shufflevector <4 x float> %i.kam, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5130

vector.body5130:                                  ; preds = %vector.body5130, %vector.ph5128
  %index5131 = phi i64 [ 0, %vector.ph5128 ], [ %index.next5135, %vector.body5130 ] ; 2 uses
  %i.kao = shl i64 %index5131, 2                  ; 2 uses
  %next.gep5132 = getelementptr i8, ptr %.1.lcssa.i47.i, i64 %i.kao
  %next.gep5133 = getelementptr i8, ptr %.128.lcssa.i46.i, i64 %i.kao
  %wide.load5134 = load <8 x float>, ptr %next.gep5132, align 4, !tbaa !59 ; 5 uses
  %i.kap = extractelement <8 x float> %wide.load5134, i64 0
  %i.kaq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kap)
  %i.kar = extractelement <8 x float> %wide.load5134, i64 1
  %i.kas = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kar)
  %i.kat = extractelement <8 x float> %wide.load5134, i64 2
  %i.kau = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kat)
  %i.kav = extractelement <8 x float> %wide.load5134, i64 3
  %i.kaw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kav)
  %i.kax = shufflevector <8 x float> %wide.load5134, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kay = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.kan, <4 x float> %i.kax)
  %i.kaz = insertelement <8 x float> poison, float %i.kaq, i64 0
  %i.kba = insertelement <8 x float> %i.kaz, float %i.kas, i64 1
  %i.kbb = insertelement <8 x float> %i.kba, float %i.kau, i64 2
  %i.kbc = insertelement <8 x float> %i.kbb, float %i.kaw, i64 3
  %i.kbd = shufflevector <4 x float> %i.kay, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kbe = shufflevector <8 x float> %i.kbc, <8 x float> %i.kbd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.kbe, ptr %next.gep5133, align 4, !tbaa !59
  %index.next5135 = add nuw i64 %index5131, 8     ; 2 uses
  %i.kbf = icmp eq i64 %index.next5135, %n.vec5129
  br i1 %i.kbf, label %middle.block5136, label %vector.body5130, !llvm.loop !377

middle.block5136:                                 ; preds = %vector.body5130
  %cmp.n5137 = icmp eq i64 %i.kaf, %n.vec5129
  br i1 %cmp.n5137, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i.preheader6766

.lr.ph124.i48.i.preheader6766:                    ; preds = %.lr.ph124.i48.i.preheader, %middle.block5136
  %.2123.i49.i.ph = phi ptr [ %.1.lcssa.i47.i, %.lr.ph124.i48.i.preheader ], [ %i.kai, %middle.block5136 ] ; 2 uses
  %.229122.i50.i.ph = phi ptr [ %.128.lcssa.i46.i, %.lr.ph124.i48.i.preheader ], [ %i.kaj, %middle.block5136 ] ; 2 uses
  %.232121.i51.i.ph = phi i32 [ %.131.lcssa.i45.i, %.lr.ph124.i48.i.preheader ], [ %i.kal, %middle.block5136 ] ; 4 uses
  %i.kbg = sub i32 %i.jjk, %.232121.i51.i.ph
  %xtraiter7451 = and i32 %i.kbg, 3               ; 2 uses
  %lcmp.mod7452.not = icmp eq i32 %xtraiter7451, 0
  br i1 %lcmp.mod7452.not, label %.lr.ph124.i48.i.prol.loopexit, label %.lr.ph124.i48.i.prol

.lr.ph124.i48.i.prol:                             ; preds = %.lr.ph124.i48.i.preheader6766, %.lr.ph124.i48.i.prol
  %.2123.i49.i.prol = phi ptr [ %i.kbj, %.lr.ph124.i48.i.prol ], [ %.2123.i49.i.ph, %.lr.ph124.i48.i.preheader6766 ] ; 2 uses
  %.229122.i50.i.prol = phi ptr [ %i.kbk, %.lr.ph124.i48.i.prol ], [ %.229122.i50.i.ph, %.lr.ph124.i48.i.preheader6766 ] ; 2 uses
  %.232121.i51.i.prol = phi i32 [ %i.kbl, %.lr.ph124.i48.i.prol ], [ %.232121.i51.i.ph, %.lr.ph124.i48.i.preheader6766 ]
  %prol.iter7453 = phi i32 [ %prol.iter7453.next, %.lr.ph124.i48.i.prol ], [ 0, %.lr.ph124.i48.i.preheader6766 ]
  %i.kbh = load float, ptr %.2123.i49.i.prol, align 4, !tbaa !59
  %i.kbi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kbh)
  store float %i.kbi, ptr %.229122.i50.i.prol, align 4, !tbaa !59
  %i.kbj = getelementptr inbounds nuw i8, ptr %.2123.i49.i.prol, i64 4 ; 2 uses
  %i.kbk = getelementptr inbounds nuw i8, ptr %.229122.i50.i.prol, i64 4 ; 2 uses
  %i.kbl = add nuw nsw i32 %.232121.i51.i.prol, 1 ; 2 uses
  %prol.iter7453.next = add i32 %prol.iter7453, 1 ; 2 uses
  %prol.iter7453.cmp.not = icmp eq i32 %prol.iter7453.next, %xtraiter7451
  br i1 %prol.iter7453.cmp.not, label %.lr.ph124.i48.i.prol.loopexit, label %.lr.ph124.i48.i.prol, !llvm.loop !378

.lr.ph124.i48.i.prol.loopexit:                    ; preds = %.lr.ph124.i48.i.prol, %.lr.ph124.i48.i.preheader6766
  %.2123.i49.i.unr = phi ptr [ %.2123.i49.i.ph, %.lr.ph124.i48.i.preheader6766 ], [ %i.kbj, %.lr.ph124.i48.i.prol ]
  %.229122.i50.i.unr = phi ptr [ %.229122.i50.i.ph, %.lr.ph124.i48.i.preheader6766 ], [ %i.kbk, %.lr.ph124.i48.i.prol ]
  %.232121.i51.i.unr = phi i32 [ %.232121.i51.i.ph, %.lr.ph124.i48.i.preheader6766 ], [ %i.kbl, %.lr.ph124.i48.i.prol ]
  %i.kbm = sub i32 %.232121.i51.i.ph, %i.jjk
  %i.kbn = icmp ugt i32 %i.kbm, -4
  br i1 %i.kbn, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i

bb.jg:                                            ; preds = %bb.jg, %.lr.ph117.i53.i
  %.1116.i54.i = phi ptr [ %.0.lcssa.i43.i, %.lr.ph117.i53.i ], [ %i.kdg, %bb.jg ] ; 2 uses
  %.128115.i55.i = phi ptr [ %.027.lcssa.i42.i, %.lr.ph117.i53.i ], [ %i.kdh, %bb.jg ] ; 2 uses
  %.131114.i56.i = phi i32 [ %.030.lcssa.i41.i, %.lr.ph117.i53.i ], [ %i.kdi, %bb.jg ]
  %i.kbo = load <4 x float>, ptr %.1116.i54.i, align 1, !tbaa !60 ; 4 uses
  %i.kbp = fcmp fast oeq <4 x float> %i.kbo, zeroinitializer ; 2 uses
  %.not104.i57.i = or <4 x i1> %i.jxy, %i.kbp
  %i.kbq = fcmp fast olt <4 x float> %i.kbo, zeroinitializer
  %i.kbr = select <4 x i1> %i.kbq, <4 x float> %i.jyc, <4 x float> zeroinitializer
  %i.kbs = fdiv fast <4 x float> %i.jxm, %i.kbo   ; 2 uses
  %i.kbt = bitcast <4 x float> %i.kbs to <4 x i32>
  %i.kbu = and <4 x i32> %i.kbt, splat (i32 -2147483648)
  %i.kbv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kbs) ; 3 uses
  %i.kbw = fcmp fast ogt <4 x float> %i.kbv, splat (float 1.000000e+00) ; 2 uses
  %i.kbx = select <4 x i1> %i.kbw, <4 x float> splat (float -1.000000e+00), <4 x float> %i.kbv
  %i.kby = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.kbv, <4 x float> splat (float 1.000000e+00))
  %i.kbz = fdiv fast <4 x float> %i.kbx, %i.kby   ; 3 uses
  %i.kca = fmul fast <4 x float> %i.kbz, %i.kbz   ; 3 uses
  %i.kcb = fmul fast <4 x float> %i.kca, %i.kca   ; 7 uses
  %i.kcc = fmul fast <4 x float> %i.kcb, splat (float f0x3C83A25C)
  %i.kcd = fsub fast <4 x float> splat (float f0xBD99B01E), %i.kcc
  %i.kce = fmul fast <4 x float> %i.kcd, %i.kcb
  %i.kcf = fadd fast <4 x float> %i.kce, splat (float f0xBE117200)
  %i.kcg = fmul fast <4 x float> %i.kcf, %i.kcb
  %i.kch = fadd fast <4 x float> %i.kcg, splat (float f0xBEAAAA53)
  %i.kci = fmul fast <4 x float> %i.kcb, splat (float f0x3B3AC537)
  %i.kcj = fadd fast <4 x float> %i.kci, splat (float f0x3D2EDD4E)
  %i.kck = fmul fast <4 x float> %i.kcj, %i.kcb
  %i.kcl = fadd fast <4 x float> %i.kck, splat (float f0x3DD9ED24)
  %i.kcm = fmul fast <4 x float> %i.kcl, %i.kcb
  %i.kcn = fadd fast <4 x float> %i.kcm, splat (float f0x3E4CB974)
  %i.kco = fmul fast <4 x float> %i.kcn, %i.kcb
  %i.kcp = fadd fast <4 x float> %i.kco, splat (float 1.000000e+00)
  %i.kcq = fmul fast <4 x float> %i.kch, %i.kca
  %i.kcr = fadd fast <4 x float> %i.kcp, %i.kcq
  %i.kcs = fmul fast <4 x float> %i.kcr, %i.kbz
  %i.kct = select <4 x i1> %i.kbw, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.kcu = fadd fast <4 x float> %i.kcs, %i.kct
  %i.kcv = bitcast <4 x float> %i.kcu to <4 x i32>
  %i.kcw = or <4 x i32> %i.kbu, %i.kcv
  %i.kcx = bitcast <4 x i32> %i.kcw to <4 x float>
  %i.kcy = fadd fast <4 x float> %i.kbr, %i.kcx
  %i.kcz = bitcast <4 x float> %i.kbo to <4 x i32>
  %isneg.inv.i58.i = icmp slt <4 x i32> %i.kcz, zeroinitializer
  %i.kda = select <4 x i1> %isneg.inv.i58.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.kdb = bitcast <4 x float> %i.kcy to <4 x i32>
  %i.kdc = select <4 x i1> %.not104.i57.i, <4 x i32> zeroinitializer, <4 x i32> %i.kdb
  %i.kdd = select <4 x i1> %i.kbp, <4 x i32> %i.jyd, <4 x i32> zeroinitializer
  %i.kde = select <4 x i1> %i.jxy, <4 x i32> %i.kda, <4 x i32> %i.kdd
  %i.kdf = or <4 x i32> %i.kdc, %i.kde
  store <4 x i32> %i.kdf, ptr %.128115.i55.i, align 1, !tbaa !60
  %i.kdg = getelementptr inbounds nuw i8, ptr %.1116.i54.i, i64 16 ; 2 uses
  %i.kdh = getelementptr inbounds nuw i8, ptr %.128115.i55.i, i64 16 ; 2 uses
  %i.kdi = add nuw nsw i32 %.131114.i56.i, 4      ; 3 uses
  %i.kdj = or disjoint i32 %i.kdi, 3
  %i.kdk = icmp slt i32 %i.kdj, %i.jjk
  br i1 %i.kdk, label %bb.jg, label %.preheader.i44.i, !llvm.loop !379

.lr.ph124.i48.i:                                  ; preds = %.lr.ph124.i48.i.prol.loopexit, %.lr.ph124.i48.i
  %.2123.i49.i = phi ptr [ %i.kdz, %.lr.ph124.i48.i ], [ %.2123.i49.i.unr, %.lr.ph124.i48.i.prol.loopexit ] ; 5 uses
  %.229122.i50.i = phi ptr [ %i.kea, %.lr.ph124.i48.i ], [ %.229122.i50.i.unr, %.lr.ph124.i48.i.prol.loopexit ] ; 5 uses
  %.232121.i51.i = phi i32 [ %i.keb, %.lr.ph124.i48.i ], [ %.232121.i51.i.unr, %.lr.ph124.i48.i.prol.loopexit ]
  %i.kdl = load float, ptr %.2123.i49.i, align 4, !tbaa !59
  %i.kdm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kdl)
  store float %i.kdm, ptr %.229122.i50.i, align 4, !tbaa !59
  %i.kdn = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 4
  %i.kdo = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 4
  %i.kdp = load float, ptr %i.kdn, align 4, !tbaa !59
  %i.kdq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kdp)
  store float %i.kdq, ptr %i.kdo, align 4, !tbaa !59
  %i.kdr = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 8
  %i.kds = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 8
  %i.kdt = load float, ptr %i.kdr, align 4, !tbaa !59
  %i.kdu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kdt)
  store float %i.kdu, ptr %i.kds, align 4, !tbaa !59
  %i.kdv = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 12
  %i.kdw = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 12
  %i.kdx = load float, ptr %i.kdv, align 4, !tbaa !59
  %i.kdy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.jxd, float %i.kdx)
  store float %i.kdy, ptr %i.kdw, align 4, !tbaa !59
  %i.kdz = getelementptr inbounds nuw i8, ptr %.2123.i49.i, i64 16
  %i.kea = getelementptr inbounds nuw i8, ptr %.229122.i50.i, i64 16
  %i.keb = add nuw nsw i32 %.232121.i51.i, 4      ; 2 uses
  %exitcond.not.i52.i1167.3 = icmp eq i32 %i.keb, %i.jjk
  br i1 %exitcond.not.i52.i1167.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i, !llvm.loop !380

bb.jh:                                            ; preds = %bb.iz, %bb.io
  %i.kec = icmp eq i32 %6, 1
  br i1 %i.kec, label %bb.ji, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ji:                                            ; preds = %bb.jh
  %i.ked = icmp eq i32 %3, %4
  br i1 %i.ked, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.kee = icmp eq i32 %.sroa.speculated.i1150, 8
  %i.kef = icmp sgt i32 %.sroa.speculated91.i, 0
  %or.cond.i.i1158 = and i1 %i.kef, %i.kee
  br i1 %or.cond.i.i1158, label %.lr.ph.i69.i, label %.loopexit156.i.i

.lr.ph.i69.i:                                     ; preds = %bb.jj, %.lr.ph.i69.i
  %.0160.i.i1166 = phi ptr [ %i.kgh, %.lr.ph.i69.i ], [ %0, %bb.jj ] ; 2 uses
  %.032159.i.i = phi ptr [ %i.kgi, %.lr.ph.i69.i ], [ %1, %bb.jj ] ; 2 uses
  %.038158.i.i = phi ptr [ %i.kgj, %.lr.ph.i69.i ], [ %2, %bb.jj ] ; 2 uses
  %.042157.i.i = phi i32 [ %i.kgk, %.lr.ph.i69.i ], [ 0, %bb.jj ]
  %i.keg = load <8 x float>, ptr %.0160.i.i1166, align 1, !tbaa !60 ; 4 uses
  %i.keh = load float, ptr %.032159.i.i, align 4, !tbaa !59
  %i.kei = insertelement <8 x float> poison, float %i.keh, i64 0
  %i.kej = shufflevector <8 x float> %i.kei, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.kek = fcmp fast ueq <8 x float> %i.kej, zeroinitializer ; 2 uses
  %i.kel = fcmp fast ueq <8 x float> %i.keg, zeroinitializer ; 2 uses
  %.not153.i.i = or <8 x i1> %i.kel, %i.kek
  %i.kem = bitcast <8 x float> %i.keg to <8 x i32>
  %i.ken = and <8 x i32> %i.kem, splat (i32 -2147483648)
  %i.keo = fcmp fast olt <8 x float> %i.kej, zeroinitializer
  %i.kep = fcmp fast olt <8 x float> %i.keg, zeroinitializer
  %i.keq = select <8 x i1> %i.kep, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.ker = select <8 x i1> %i.keo, <8 x float> %i.keq, <8 x float> zeroinitializer
  %i.kes = fdiv fast <8 x float> %i.keg, %i.kej   ; 2 uses
  %i.ket = bitcast <8 x float> %i.kes to <8 x i32>
  %i.keu = and <8 x i32> %i.ket, splat (i32 -2147483648)
  %i.kev = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kes) ; 3 uses
  %i.kew = fcmp fast ogt <8 x float> %i.kev, splat (float 1.000000e+00) ; 2 uses
  %i.kex = select <8 x i1> %i.kew, <8 x float> splat (float -1.000000e+00), <8 x float> %i.kev
  %i.key = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kev, <8 x float> splat (float 1.000000e+00))
  %i.kez = fdiv fast <8 x float> %i.kex, %i.key   ; 3 uses
  %i.kfa = fmul fast <8 x float> %i.kez, %i.kez   ; 3 uses
  %i.kfb = fmul fast <8 x float> %i.kfa, %i.kfa   ; 7 uses
  %i.kfc = fmul fast <8 x float> %i.kfb, splat (float f0x3C83A25C)
  %i.kfd = fsub fast <8 x float> splat (float f0xBD99B01E), %i.kfc
  %i.kfe = fmul fast <8 x float> %i.kfd, %i.kfb
  %i.kff = fadd fast <8 x float> %i.kfe, splat (float f0xBE117200)
  %i.kfg = fmul fast <8 x float> %i.kff, %i.kfb
  %i.kfh = fadd fast <8 x float> %i.kfg, splat (float f0xBEAAAA53)
  %i.kfi = fmul fast <8 x float> %i.kfb, splat (float f0x3B3AC537)
  %i.kfj = fadd fast <8 x float> %i.kfi, splat (float f0x3D2EDD4E)
  %i.kfk = fmul fast <8 x float> %i.kfj, %i.kfb
  %i.kfl = fadd fast <8 x float> %i.kfk, splat (float f0x3DD9ED24)
  %i.kfm = fmul fast <8 x float> %i.kfl, %i.kfb
  %i.kfn = fadd fast <8 x float> %i.kfm, splat (float f0x3E4CB974)
  %i.kfo = fmul fast <8 x float> %i.kfn, %i.kfb
  %i.kfp = fadd fast <8 x float> %i.kfo, splat (float 1.000000e+00)
  %i.kfq = fmul fast <8 x float> %i.kfh, %i.kfa
  %i.kfr = fadd fast <8 x float> %i.kfp, %i.kfq
  %i.kfs = fmul fast <8 x float> %i.kfr, %i.kez
  %i.kft = select <8 x i1> %i.kew, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.kfu = fadd fast <8 x float> %i.kfs, %i.kft
  %i.kfv = bitcast <8 x float> %i.kfu to <8 x i32>
  %i.kfw = or <8 x i32> %i.keu, %i.kfv
  %i.kfx = bitcast <8 x i32> %i.kfw to <8 x float>
  %i.kfy = fadd fast <8 x float> %i.ker, %i.kfx
end_hunk_2
begin_hunk_3_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.lci = icmp slt i32 %i.lch, %i.kws
  br i1 %i.lci, label %.lr.ph121.i.i1326, label %.preheader.i.i1315, !llvm.loop !392

.lr.ph130.i.i1320:                                ; preds = %.lr.ph130.i.i1320.prol.loopexit, %.lr.ph130.i.i1320
  %.2129.i.i1321 = phi ptr [ %i.lde, %.lr.ph130.i.i1320 ], [ %.2129.i.i1321.unr, %.lr.ph130.i.i1320.prol.loopexit ] ; 5 uses
  %.230128.i.i1322 = phi ptr [ %i.ldf, %.lr.ph130.i.i1320 ], [ %.230128.i.i1322.unr, %.lr.ph130.i.i1320.prol.loopexit ] ; 5 uses
  %.233127.i.i1323 = phi i32 [ %i.ldh, %.lr.ph130.i.i1320 ], [ %.233127.i.i1323.unr, %.lr.ph130.i.i1320.prol.loopexit ]
  %.236126.i.i1324 = phi ptr [ %i.ldg, %.lr.ph130.i.i1320 ], [ %.236126.i.i1324.unr, %.lr.ph130.i.i1320.prol.loopexit ] ; 5 uses
  %i.lcj = load float, ptr %.230128.i.i1322, align 4, !tbaa !59
  %i.lck = load float, ptr %.2129.i.i1321, align 4, !tbaa !59
  %i.lcl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lcj, float %i.lck)
  store float %i.lcl, ptr %.236126.i.i1324, align 4, !tbaa !59
  %i.lcm = getelementptr inbounds nuw i8, ptr %.2129.i.i1321, i64 4
  %i.lcn = getelementptr inbounds nuw i8, ptr %.230128.i.i1322, i64 4
  %i.lco = getelementptr inbounds nuw i8, ptr %.236126.i.i1324, i64 4
  %i.lcp = load float, ptr %i.lcn, align 4, !tbaa !59
  %i.lcq = load float, ptr %i.lcm, align 4, !tbaa !59
  %i.lcr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lcp, float %i.lcq)
  store float %i.lcr, ptr %i.lco, align 4, !tbaa !59
  %i.lcs = getelementptr inbounds nuw i8, ptr %.2129.i.i1321, i64 8
  %i.lct = getelementptr inbounds nuw i8, ptr %.230128.i.i1322, i64 8
  %i.lcu = getelementptr inbounds nuw i8, ptr %.236126.i.i1324, i64 8
  %i.lcv = load float, ptr %i.lct, align 4, !tbaa !59
  %i.lcw = load float, ptr %i.lcs, align 4, !tbaa !59
  %i.lcx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lcv, float %i.lcw)
  store float %i.lcx, ptr %i.lcu, align 4, !tbaa !59
  %i.lcy = getelementptr inbounds nuw i8, ptr %.2129.i.i1321, i64 12
  %i.lcz = getelementptr inbounds nuw i8, ptr %.230128.i.i1322, i64 12
  %i.lda = getelementptr inbounds nuw i8, ptr %.236126.i.i1324, i64 12
  %i.ldb = load float, ptr %i.lcz, align 4, !tbaa !59
  %i.ldc = load float, ptr %i.lcy, align 4, !tbaa !59
  %i.ldd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldb, float %i.ldc)
  store float %i.ldd, ptr %i.lda, align 4, !tbaa !59
  %i.lde = getelementptr inbounds nuw i8, ptr %.2129.i.i1321, i64 16
  %i.ldf = getelementptr inbounds nuw i8, ptr %.230128.i.i1322, i64 16
  %i.ldg = getelementptr inbounds nuw i8, ptr %.236126.i.i1324, i64 16
  %i.ldh = add nuw nsw i32 %.233127.i.i1323, 4    ; 2 uses
  %exitcond.not.i.i1325.3 = icmp eq i32 %i.ldh, %i.kws
  br i1 %exitcond.not.i.i1325.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph130.i.i1320, !llvm.loop !393

bb.jx:                                            ; preds = %bb.jv
  %i.ldi = icmp eq i32 %4, 1
  br i1 %i.ldi, label %bb.jy, label %bb.kf

bb.jy:                                            ; preds = %bb.jx
  %i.ldj = load float, ptr %1, align 4, !tbaa !59 ; 11 uses
  %i.ldk = icmp eq i32 %.sroa.speculated.i1190, 4
  br i1 %i.ldk, label %.thread.i.i1309, label %bb.jz

.thread.i.i1309:                                  ; preds = %bb.jy
  %i.ldl = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jy
  %i.ldm = insertelement <4 x float> poison, float %i.ldj, i64 0
  %i.ldn = shufflevector <4 x float> %i.ldm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ldo = icmp eq i32 %.sroa.speculated.i1190, 8
  br i1 %i.ldo, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.ldp = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jz, %.thread.i.i1309
  %i.ldq = phi <4 x float> [ %i.ldl, %.thread.i.i1309 ], [ %i.ldn, %bb.jz ] ; 2 uses
  %i.ldr = shufflevector <4 x float> %i.ldq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.lds = phi <4 x float> [ %i.ldn, %bb.ka ], [ %i.ldq, %bb.kb ] ; 4 uses
  %i.ldt = phi fast <8 x float> [ %i.ldp, %bb.ka ], [ %i.ldr, %bb.kb ] ; 4 uses
  %i.ldu = icmp sgt i32 %i.kws, 7
  br i1 %i.ldu, label %.lr.ph.i39.i1302, label %.preheader108.i.i1283

.lr.ph.i39.i1302:                                 ; preds = %bb.kc
  %i.ldv = fcmp fast ueq <8 x float> %i.ldt, zeroinitializer ; 2 uses
  %i.ldw = bitcast <8 x float> %i.ldt to <8 x i32>
  %i.ldx = and <8 x i32> %i.ldw, splat (i32 -2147483648)
  %i.ldy = fcmp fast olt <8 x float> %i.ldt, zeroinitializer
  %i.ldz = select <8 x i1> %i.ldy, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lea = or disjoint <8 x i32> %i.ldx, splat (i32 1070141403)
  br label %bb.kd

.preheader108.loopexit.i.i1308:                   ; preds = %bb.kd
  %i.leb = and i32 %i.kws, 2147483640
  br label %.preheader108.i.i1283

.preheader108.i.i1283:                            ; preds = %.preheader108.loopexit.i.i1308, %bb.kc
  %.030.lcssa.i.i1284 = phi i32 [ 0, %bb.kc ], [ %i.leb, %.preheader108.loopexit.i.i1308 ] ; 3 uses
  %.027.lcssa.i.i1285 = phi ptr [ %2, %bb.kc ], [ %i.lgd, %.preheader108.loopexit.i.i1308 ] ; 2 uses
  %.0.lcssa.i34.i1286 = phi ptr [ %0, %bb.kc ], [ %i.lgc, %.preheader108.loopexit.i.i1308 ] ; 2 uses
  %i.lec = or disjoint i32 %.030.lcssa.i.i1284, 3
  %i.led = icmp slt i32 %i.lec, %i.kws
  br i1 %i.led, label %.lr.ph117.i.i1296, label %.preheader.i35.i1287

.lr.ph117.i.i1296:                                ; preds = %.preheader108.i.i1283
  %i.lee = fcmp fast oeq <4 x float> %i.lds, zeroinitializer ; 2 uses
  %i.lef = bitcast <4 x float> %i.lds to <4 x i32>
  %i.leg = and <4 x i32> %i.lef, splat (i32 -2147483648)
  %i.leh = fcmp fast olt <4 x float> %i.lds, zeroinitializer
  %i.lei = select <4 x i1> %i.leh, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.lej = or disjoint <4 x i32> %i.leg, splat (i32 1070141403)
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kd, %.lr.ph.i39.i1302
  %.0111.i.i1303 = phi ptr [ %0, %.lr.ph.i39.i1302 ], [ %i.lgc, %bb.kd ] ; 2 uses
  %.027110.i.i1304 = phi ptr [ %2, %.lr.ph.i39.i1302 ], [ %i.lgd, %bb.kd ] ; 2 uses
  %.030109.i.i1305 = phi i32 [ 0, %.lr.ph.i39.i1302 ], [ %i.lge, %bb.kd ]
  %i.lek = load <8 x float>, ptr %.0111.i.i1303, align 1, !tbaa !60 ; 4 uses
  %i.lel = fcmp fast ueq <8 x float> %i.lek, zeroinitializer ; 2 uses
  %.not107.i.i1306 = or <8 x i1> %i.ldv, %i.lel
  %i.lem = fcmp fast olt <8 x float> %i.lek, zeroinitializer
  %i.len = select <8 x i1> %i.lem, <8 x float> %i.ldz, <8 x float> zeroinitializer
  %i.leo = fdiv fast <8 x float> %i.ldt, %i.lek   ; 2 uses
  %i.lep = bitcast <8 x float> %i.leo to <8 x i32>
  %i.leq = and <8 x i32> %i.lep, splat (i32 -2147483648)
  %i.ler = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.leo) ; 3 uses
  %i.les = fcmp fast ogt <8 x float> %i.ler, splat (float 1.000000e+00) ; 2 uses
  %i.let = select <8 x i1> %i.les, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ler
  %i.leu = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ler, <8 x float> splat (float 1.000000e+00))
  %i.lev = fdiv fast <8 x float> %i.let, %i.leu   ; 3 uses
  %i.lew = fmul fast <8 x float> %i.lev, %i.lev   ; 3 uses
  %i.lex = fmul fast <8 x float> %i.lew, %i.lew   ; 7 uses
  %i.ley = fmul fast <8 x float> %i.lex, splat (float f0x3C83A25C)
  %i.lez = fsub fast <8 x float> splat (float f0xBD99B01E), %i.ley
  %i.lfa = fmul fast <8 x float> %i.lez, %i.lex
  %i.lfb = fadd fast <8 x float> %i.lfa, splat (float f0xBE117200)
  %i.lfc = fmul fast <8 x float> %i.lfb, %i.lex
  %i.lfd = fadd fast <8 x float> %i.lfc, splat (float f0xBEAAAA53)
  %i.lfe = fmul fast <8 x float> %i.lex, splat (float f0x3B3AC537)
  %i.lff = fadd fast <8 x float> %i.lfe, splat (float f0x3D2EDD4E)
  %i.lfg = fmul fast <8 x float> %i.lff, %i.lex
  %i.lfh = fadd fast <8 x float> %i.lfg, splat (float f0x3DD9ED24)
  %i.lfi = fmul fast <8 x float> %i.lfh, %i.lex
  %i.lfj = fadd fast <8 x float> %i.lfi, splat (float f0x3E4CB974)
  %i.lfk = fmul fast <8 x float> %i.lfj, %i.lex
  %i.lfl = fadd fast <8 x float> %i.lfk, splat (float 1.000000e+00)
  %i.lfm = fmul fast <8 x float> %i.lfd, %i.lew
  %i.lfn = fadd fast <8 x float> %i.lfl, %i.lfm
  %i.lfo = fmul fast <8 x float> %i.lfn, %i.lev
  %i.lfp = select <8 x i1> %i.les, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.lfq = fadd fast <8 x float> %i.lfo, %i.lfp
  %i.lfr = bitcast <8 x float> %i.lfq to <8 x i32>
  %i.lfs = or <8 x i32> %i.leq, %i.lfr
  %i.lft = bitcast <8 x i32> %i.lfs to <8 x float>
  %i.lfu = fadd fast <8 x float> %i.len, %i.lft
  %i.lfv = bitcast <8 x float> %i.lek to <8 x i32>
  %isneg.inv105.i.i1307 = icmp slt <8 x i32> %i.lfv, zeroinitializer
  %i.lfw = select <8 x i1> %isneg.inv105.i.i1307, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.lfx = bitcast <8 x float> %i.lfu to <8 x i32>
  %i.lfy = select <8 x i1> %.not107.i.i1306, <8 x i32> zeroinitializer, <8 x i32> %i.lfx
  %i.lfz = select <8 x i1> %i.lel, <8 x i32> %i.lea, <8 x i32> zeroinitializer
  %i.lga = select <8 x i1> %i.ldv, <8 x i32> %i.lfw, <8 x i32> %i.lfz
  %i.lgb = or <8 x i32> %i.lfy, %i.lga
  store <8 x i32> %i.lgb, ptr %.027110.i.i1304, align 1, !tbaa !60
  %i.lgc = getelementptr inbounds nuw i8, ptr %.0111.i.i1303, i64 32 ; 2 uses
  %i.lgd = getelementptr inbounds nuw i8, ptr %.027110.i.i1304, i64 32 ; 2 uses
  %i.lge = add nuw nsw i32 %.030109.i.i1305, 8    ; 2 uses
  %i.lgf = or disjoint i32 %i.lge, 7
  %i.lgg = icmp slt i32 %i.lgf, %i.kws
  br i1 %i.lgg, label %bb.kd, label %.preheader108.loopexit.i.i1308, !llvm.loop !394

.preheader.i35.i1287:                             ; preds = %bb.ke, %.preheader108.i.i1283
  %.131.lcssa.i.i1288 = phi i32 [ %.030.lcssa.i.i1284, %.preheader108.i.i1283 ], [ %i.ljo, %bb.ke ] ; 4 uses
  %.128.lcssa.i.i1289 = phi ptr [ %.027.lcssa.i.i1285, %.preheader108.i.i1283 ], [ %i.ljn, %bb.ke ] ; 4 uses
  %.1.lcssa.i36.i1290 = phi ptr [ %.0.lcssa.i34.i1286, %.preheader108.i.i1283 ], [ %i.ljm, %bb.ke ] ; 4 uses
  %i.lgh = icmp slt i32 %.131.lcssa.i.i1288, %i.kws
  br i1 %i.lgh, label %.lr.ph124.i.i1291.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i.i1291.preheader:                      ; preds = %.preheader.i35.i1287
  %.1.lcssa.i36.i12905068 = ptrtoaddr ptr %.1.lcssa.i36.i1290 to i64
  %.128.lcssa.i.i12895067 = ptrtoaddr ptr %.128.lcssa.i.i1289 to i64
  %i.lgi = xor i32 %.131.lcssa.i.i1288, -1
  %i.lgj = add i32 %i.kws, %i.lgi                 ; 2 uses
  %i.lgk = zext i32 %i.lgj to i64
  %i.lgl = add nuw nsw i64 %i.lgk, 1              ; 2 uses
  %min.iters.check5070 = icmp ult i32 %i.lgj, 7
  %i.lgm = sub i64 %.1.lcssa.i36.i12905068, %.128.lcssa.i.i12895067
  %diff.check5072 = icmp ugt i64 %i.lgm, -32
  %or.cond6410 = select i1 %min.iters.check5070, i1 true, i1 %diff.check5072
  br i1 %or.cond6410, label %.lr.ph124.i.i1291.preheader6794, label %vector.ph5073

vector.ph5073:                                    ; preds = %.lr.ph124.i.i1291.preheader
  %n.vec5074 = and i64 %i.lgl, 8589934584         ; 4 uses
  %i.lgn = shl nuw nsw i64 %n.vec5074, 2          ; 2 uses
  %i.lgo = getelementptr i8, ptr %.1.lcssa.i36.i1290, i64 %i.lgn
  %i.lgp = getelementptr i8, ptr %.128.lcssa.i.i1289, i64 %i.lgn
  %i.lgq = trunc i64 %n.vec5074 to i32
  %i.lgr = add i32 %.131.lcssa.i.i1288, %i.lgq
  %i.lgs = insertelement <4 x float> poison, float %i.ldj, i64 0
  %i.lgt = shufflevector <4 x float> %i.lgs, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5075

vector.body5075:                                  ; preds = %vector.body5075, %vector.ph5073
  %index5076 = phi i64 [ 0, %vector.ph5073 ], [ %index.next5080, %vector.body5075 ] ; 2 uses
  %i.lgu = shl i64 %index5076, 2                  ; 2 uses
  %next.gep5077 = getelementptr i8, ptr %.1.lcssa.i36.i1290, i64 %i.lgu
  %next.gep5078 = getelementptr i8, ptr %.128.lcssa.i.i1289, i64 %i.lgu
  %wide.load5079 = load <8 x float>, ptr %next.gep5077, align 4, !tbaa !59 ; 5 uses
  %i.lgv = extractelement <8 x float> %wide.load5079, i64 0
  %i.lgw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.lgv)
  %i.lgx = extractelement <8 x float> %wide.load5079, i64 1
  %i.lgy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.lgx)
  %i.lgz = extractelement <8 x float> %wide.load5079, i64 2
  %i.lha = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.lgz)
  %i.lhb = extractelement <8 x float> %wide.load5079, i64 3
  %i.lhc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.lhb)
  %i.lhd = shufflevector <8 x float> %wide.load5079, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lhe = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.lgt, <4 x float> %i.lhd)
  %i.lhf = insertelement <8 x float> poison, float %i.lgw, i64 0
  %i.lhg = insertelement <8 x float> %i.lhf, float %i.lgy, i64 1
  %i.lhh = insertelement <8 x float> %i.lhg, float %i.lha, i64 2
  %i.lhi = insertelement <8 x float> %i.lhh, float %i.lhc, i64 3
  %i.lhj = shufflevector <4 x float> %i.lhe, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lhk = shufflevector <8 x float> %i.lhi, <8 x float> %i.lhj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.lhk, ptr %next.gep5078, align 4, !tbaa !59
  %index.next5080 = add nuw i64 %index5076, 8     ; 2 uses
  %i.lhl = icmp eq i64 %index.next5080, %n.vec5074
  br i1 %i.lhl, label %middle.block5081, label %vector.body5075, !llvm.loop !395

middle.block5081:                                 ; preds = %vector.body5075
  %cmp.n5082 = icmp eq i64 %i.lgl, %n.vec5074
  br i1 %cmp.n5082, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i1291.preheader6794

.lr.ph124.i.i1291.preheader6794:                  ; preds = %.lr.ph124.i.i1291.preheader, %middle.block5081
  %.2123.i.i1292.ph = phi ptr [ %.1.lcssa.i36.i1290, %.lr.ph124.i.i1291.preheader ], [ %i.lgo, %middle.block5081 ] ; 2 uses
  %.229122.i.i1293.ph = phi ptr [ %.128.lcssa.i.i1289, %.lr.ph124.i.i1291.preheader ], [ %i.lgp, %middle.block5081 ] ; 2 uses
  %.232121.i.i1294.ph = phi i32 [ %.131.lcssa.i.i1288, %.lr.ph124.i.i1291.preheader ], [ %i.lgr, %middle.block5081 ] ; 4 uses
  %i.lhm = sub i32 %i.kws, %.232121.i.i1294.ph
  %xtraiter7445 = and i32 %i.lhm, 3               ; 2 uses
  %lcmp.mod7446.not = icmp eq i32 %xtraiter7445, 0
  br i1 %lcmp.mod7446.not, label %.lr.ph124.i.i1291.prol.loopexit, label %.lr.ph124.i.i1291.prol

.lr.ph124.i.i1291.prol:                           ; preds = %.lr.ph124.i.i1291.preheader6794, %.lr.ph124.i.i1291.prol
  %.2123.i.i1292.prol = phi ptr [ %i.lhp, %.lr.ph124.i.i1291.prol ], [ %.2123.i.i1292.ph, %.lr.ph124.i.i1291.preheader6794 ] ; 2 uses
  %.229122.i.i1293.prol = phi ptr [ %i.lhq, %.lr.ph124.i.i1291.prol ], [ %.229122.i.i1293.ph, %.lr.ph124.i.i1291.preheader6794 ] ; 2 uses
  %.232121.i.i1294.prol = phi i32 [ %i.lhr, %.lr.ph124.i.i1291.prol ], [ %.232121.i.i1294.ph, %.lr.ph124.i.i1291.preheader6794 ]
  %prol.iter7447 = phi i32 [ %prol.iter7447.next, %.lr.ph124.i.i1291.prol ], [ 0, %.lr.ph124.i.i1291.preheader6794 ]
  %i.lhn = load float, ptr %.2123.i.i1292.prol, align 4, !tbaa !59
  %i.lho = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.lhn)
  store float %i.lho, ptr %.229122.i.i1293.prol, align 4, !tbaa !59
  %i.lhp = getelementptr inbounds nuw i8, ptr %.2123.i.i1292.prol, i64 4 ; 2 uses
  %i.lhq = getelementptr inbounds nuw i8, ptr %.229122.i.i1293.prol, i64 4 ; 2 uses
  %i.lhr = add nuw nsw i32 %.232121.i.i1294.prol, 1 ; 2 uses
  %prol.iter7447.next = add i32 %prol.iter7447, 1 ; 2 uses
  %prol.iter7447.cmp.not = icmp eq i32 %prol.iter7447.next, %xtraiter7445
  br i1 %prol.iter7447.cmp.not, label %.lr.ph124.i.i1291.prol.loopexit, label %.lr.ph124.i.i1291.prol, !llvm.loop !396

.lr.ph124.i.i1291.prol.loopexit:                  ; preds = %.lr.ph124.i.i1291.prol, %.lr.ph124.i.i1291.preheader6794
  %.2123.i.i1292.unr = phi ptr [ %.2123.i.i1292.ph, %.lr.ph124.i.i1291.preheader6794 ], [ %i.lhp, %.lr.ph124.i.i1291.prol ]
  %.229122.i.i1293.unr = phi ptr [ %.229122.i.i1293.ph, %.lr.ph124.i.i1291.preheader6794 ], [ %i.lhq, %.lr.ph124.i.i1291.prol ]
  %.232121.i.i1294.unr = phi i32 [ %.232121.i.i1294.ph, %.lr.ph124.i.i1291.preheader6794 ], [ %i.lhr, %.lr.ph124.i.i1291.prol ]
  %i.lhs = sub i32 %.232121.i.i1294.ph, %i.kws
  %i.lht = icmp ugt i32 %i.lhs, -4
  br i1 %i.lht, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i1291

bb.ke:                                            ; preds = %bb.ke, %.lr.ph117.i.i1296
  %.1116.i.i1297 = phi ptr [ %.0.lcssa.i34.i1286, %.lr.ph117.i.i1296 ], [ %i.ljm, %bb.ke ] ; 2 uses
  %.128115.i.i1298 = phi ptr [ %.027.lcssa.i.i1285, %.lr.ph117.i.i1296 ], [ %i.ljn, %bb.ke ] ; 2 uses
  %.131114.i.i1299 = phi i32 [ %.030.lcssa.i.i1284, %.lr.ph117.i.i1296 ], [ %i.ljo, %bb.ke ]
  %i.lhu = load <4 x float>, ptr %.1116.i.i1297, align 1, !tbaa !60 ; 4 uses
  %i.lhv = fcmp fast oeq <4 x float> %i.lhu, zeroinitializer ; 2 uses
  %.not104.i.i1300 = or <4 x i1> %i.lee, %i.lhv
  %i.lhw = fcmp fast olt <4 x float> %i.lhu, zeroinitializer
  %i.lhx = select <4 x i1> %i.lhw, <4 x float> %i.lei, <4 x float> zeroinitializer
  %i.lhy = fdiv fast <4 x float> %i.lds, %i.lhu   ; 2 uses
  %i.lhz = bitcast <4 x float> %i.lhy to <4 x i32>
  %i.lia = and <4 x i32> %i.lhz, splat (i32 -2147483648)
  %i.lib = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lhy) ; 3 uses
  %i.lic = fcmp fast ogt <4 x float> %i.lib, splat (float 1.000000e+00) ; 2 uses
  %i.lid = select <4 x i1> %i.lic, <4 x float> splat (float -1.000000e+00), <4 x float> %i.lib
  %i.lie = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lib, <4 x float> splat (float 1.000000e+00))
  %i.lif = fdiv fast <4 x float> %i.lid, %i.lie   ; 3 uses
  %i.lig = fmul fast <4 x float> %i.lif, %i.lif   ; 3 uses
  %i.lih = fmul fast <4 x float> %i.lig, %i.lig   ; 7 uses
  %i.lii = fmul fast <4 x float> %i.lih, splat (float f0x3C83A25C)
  %i.lij = fsub fast <4 x float> splat (float f0xBD99B01E), %i.lii
  %i.lik = fmul fast <4 x float> %i.lij, %i.lih
  %i.lil = fadd fast <4 x float> %i.lik, splat (float f0xBE117200)
  %i.lim = fmul fast <4 x float> %i.lil, %i.lih
  %i.lin = fadd fast <4 x float> %i.lim, splat (float f0xBEAAAA53)
  %i.lio = fmul fast <4 x float> %i.lih, splat (float f0x3B3AC537)
  %i.lip = fadd fast <4 x float> %i.lio, splat (float f0x3D2EDD4E)
  %i.liq = fmul fast <4 x float> %i.lip, %i.lih
  %i.lir = fadd fast <4 x float> %i.liq, splat (float f0x3DD9ED24)
  %i.lis = fmul fast <4 x float> %i.lir, %i.lih
  %i.lit = fadd fast <4 x float> %i.lis, splat (float f0x3E4CB974)
  %i.liu = fmul fast <4 x float> %i.lit, %i.lih
  %i.liv = fadd fast <4 x float> %i.liu, splat (float 1.000000e+00)
  %i.liw = fmul fast <4 x float> %i.lin, %i.lig
  %i.lix = fadd fast <4 x float> %i.liv, %i.liw
  %i.liy = fmul fast <4 x float> %i.lix, %i.lif
  %i.liz = select <4 x i1> %i.lic, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.lja = fadd fast <4 x float> %i.liy, %i.liz
  %i.ljb = bitcast <4 x float> %i.lja to <4 x i32>
  %i.ljc = or <4 x i32> %i.lia, %i.ljb
  %i.ljd = bitcast <4 x i32> %i.ljc to <4 x float>
  %i.lje = fadd fast <4 x float> %i.lhx, %i.ljd
  %i.ljf = bitcast <4 x float> %i.lhu to <4 x i32>
  %isneg.inv.i38.i1301 = icmp slt <4 x i32> %i.ljf, zeroinitializer
  %i.ljg = select <4 x i1> %isneg.inv.i38.i1301, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.ljh = bitcast <4 x float> %i.lje to <4 x i32>
  %i.lji = select <4 x i1> %.not104.i.i1300, <4 x i32> zeroinitializer, <4 x i32> %i.ljh
  %i.ljj = select <4 x i1> %i.lhv, <4 x i32> %i.lej, <4 x i32> zeroinitializer
  %i.ljk = select <4 x i1> %i.lee, <4 x i32> %i.ljg, <4 x i32> %i.ljj
  %i.ljl = or <4 x i32> %i.lji, %i.ljk
  store <4 x i32> %i.ljl, ptr %.128115.i.i1298, align 1, !tbaa !60
  %i.ljm = getelementptr inbounds nuw i8, ptr %.1116.i.i1297, i64 16 ; 2 uses
  %i.ljn = getelementptr inbounds nuw i8, ptr %.128115.i.i1298, i64 16 ; 2 uses
  %i.ljo = add nuw nsw i32 %.131114.i.i1299, 4    ; 3 uses
  %i.ljp = or disjoint i32 %i.ljo, 3
  %i.ljq = icmp slt i32 %i.ljp, %i.kws
  br i1 %i.ljq, label %bb.ke, label %.preheader.i35.i1287, !llvm.loop !397

.lr.ph124.i.i1291:                                ; preds = %.lr.ph124.i.i1291.prol.loopexit, %.lr.ph124.i.i1291
  %.2123.i.i1292 = phi ptr [ %i.lkf, %.lr.ph124.i.i1291 ], [ %.2123.i.i1292.unr, %.lr.ph124.i.i1291.prol.loopexit ] ; 5 uses
  %.229122.i.i1293 = phi ptr [ %i.lkg, %.lr.ph124.i.i1291 ], [ %.229122.i.i1293.unr, %.lr.ph124.i.i1291.prol.loopexit ] ; 5 uses
  %.232121.i.i1294 = phi i32 [ %i.lkh, %.lr.ph124.i.i1291 ], [ %.232121.i.i1294.unr, %.lr.ph124.i.i1291.prol.loopexit ]
  %i.ljr = load float, ptr %.2123.i.i1292, align 4, !tbaa !59
  %i.ljs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.ljr)
  store float %i.ljs, ptr %.229122.i.i1293, align 4, !tbaa !59
  %i.ljt = getelementptr inbounds nuw i8, ptr %.2123.i.i1292, i64 4
  %i.lju = getelementptr inbounds nuw i8, ptr %.229122.i.i1293, i64 4
  %i.ljv = load float, ptr %i.ljt, align 4, !tbaa !59
  %i.ljw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.ljv)
  store float %i.ljw, ptr %i.lju, align 4, !tbaa !59
  %i.ljx = getelementptr inbounds nuw i8, ptr %.2123.i.i1292, i64 8
  %i.ljy = getelementptr inbounds nuw i8, ptr %.229122.i.i1293, i64 8
  %i.ljz = load float, ptr %i.ljx, align 4, !tbaa !59
  %i.lka = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.ljz)
  store float %i.lka, ptr %i.ljy, align 4, !tbaa !59
  %i.lkb = getelementptr inbounds nuw i8, ptr %.2123.i.i1292, i64 12
  %i.lkc = getelementptr inbounds nuw i8, ptr %.229122.i.i1293, i64 12
  %i.lkd = load float, ptr %i.lkb, align 4, !tbaa !59
  %i.lke = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ldj, float %i.lkd)
  store float %i.lke, ptr %i.lkc, align 4, !tbaa !59
  %i.lkf = getelementptr inbounds nuw i8, ptr %.2123.i.i1292, i64 16
  %i.lkg = getelementptr inbounds nuw i8, ptr %.229122.i.i1293, i64 16
  %i.lkh = add nuw nsw i32 %.232121.i.i1294, 4    ; 2 uses
  %exitcond.not.i37.i1295.3 = icmp eq i32 %i.lkh, %i.kws
  br i1 %exitcond.not.i37.i1295.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i.i1291, !llvm.loop !398

bb.kf:                                            ; preds = %bb.jx
  %i.lki = icmp eq i32 %3, 1
  br i1 %i.lki, label %bb.kg, label %bb.kn

bb.kg:                                            ; preds = %bb.kf
  %i.lkj = load float, ptr %0, align 4, !tbaa !59 ; 11 uses
  %i.lkk = icmp eq i32 %.sroa.speculated.i1190, 4
  br i1 %i.lkk, label %.thread.i66.i1282, label %bb.kh

.thread.i66.i1282:                                ; preds = %bb.kg
  %i.lkl = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.lkm = insertelement <4 x float> poison, float %i.lkj, i64 0
  %i.lkn = shufflevector <4 x float> %i.lkm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lko = icmp eq i32 %.sroa.speculated.i1190, 8
  br i1 %i.lko, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.lkp = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh, %.thread.i66.i1282
  %i.lkq = phi <4 x float> [ %i.lkl, %.thread.i66.i1282 ], [ %i.lkn, %bb.kh ] ; 2 uses
  %i.lkr = shufflevector <4 x float> %i.lkq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.lks = phi <4 x float> [ %i.lkn, %bb.ki ], [ %i.lkq, %bb.kj ] ; 4 uses
  %i.lkt = phi fast <8 x float> [ %i.lkp, %bb.ki ], [ %i.lkr, %bb.kj ] ; 4 uses
  %i.lku = icmp sgt i32 %i.kws, 7
  br i1 %i.lku, label %.lr.ph.i59.i1280, label %.preheader108.i40.i1266

.lr.ph.i59.i1280:                                 ; preds = %bb.kk
  %i.lkv = fcmp fast ueq <8 x float> %i.lkt, zeroinitializer ; 2 uses
  %i.lkw = fcmp fast olt <8 x float> %i.lkt, zeroinitializer
  %i.lkx = bitcast <8 x float> %i.lkt to <8 x i32>
  %isneg.inv105.i60.i = icmp slt <8 x i32> %i.lkx, zeroinitializer
  %i.lky = select <8 x i1> %isneg.inv105.i60.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.lkz = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lkt
  br label %bb.kl

.preheader108.loopexit.i65.i1281:                 ; preds = %bb.kl
  %i.lla = and i32 %i.kws, 2147483640
  br label %.preheader108.i40.i1266

.preheader108.i40.i1266:                          ; preds = %.preheader108.loopexit.i65.i1281, %bb.kk
  %.030.lcssa.i41.i1267 = phi i32 [ 0, %bb.kk ], [ %i.lla, %.preheader108.loopexit.i65.i1281 ] ; 3 uses
  %.027.lcssa.i42.i1268 = phi ptr [ %2, %bb.kk ], [ %i.lnd, %.preheader108.loopexit.i65.i1281 ] ; 2 uses
  %.0.lcssa.i43.i1269 = phi ptr [ %1, %bb.kk ], [ %i.lnc, %.preheader108.loopexit.i65.i1281 ] ; 2 uses
  %i.llb = or disjoint i32 %.030.lcssa.i41.i1267, 3
  %i.llc = icmp slt i32 %i.llb, %i.kws
  br i1 %i.llc, label %.lr.ph117.i53.i1279, label %.preheader.i44.i1270

.lr.ph117.i53.i1279:                              ; preds = %.preheader108.i40.i1266
  %i.lld = fcmp fast oeq <4 x float> %i.lks, zeroinitializer ; 2 uses
  %i.lle = fcmp fast olt <4 x float> %i.lks, zeroinitializer
  %i.llf = bitcast <4 x float> %i.lks to <4 x i32>
  %isneg.inv.i54.i = icmp slt <4 x i32> %i.llf, zeroinitializer
  %i.llg = select <4 x i1> %isneg.inv.i54.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.llh = fdiv fast <4 x float> splat (float 1.000000e+00), %i.lks
  br label %bb.km

bb.kl:                                            ; preds = %bb.kl, %.lr.ph.i59.i1280
  %.0111.i61.i = phi ptr [ %1, %.lr.ph.i59.i1280 ], [ %i.lnc, %bb.kl ] ; 2 uses
  %.027110.i62.i = phi ptr [ %2, %.lr.ph.i59.i1280 ], [ %i.lnd, %bb.kl ] ; 2 uses
  %.030109.i63.i = phi i32 [ 0, %.lr.ph.i59.i1280 ], [ %i.lne, %bb.kl ]
  %i.lli = load <8 x float>, ptr %.0111.i61.i, align 1, !tbaa !60 ; 4 uses
  %i.llj = fcmp fast ueq <8 x float> %i.lli, zeroinitializer ; 2 uses
  %.not107.i64.i = or <8 x i1> %i.lkv, %i.llj
  %i.llk = bitcast <8 x float> %i.lli to <8 x i32>
  %i.lll = and <8 x i32> %i.llk, splat (i32 -2147483648)
  %i.llm = fcmp fast olt <8 x float> %i.lli, zeroinitializer
  %i.lln = select <8 x i1> %i.llm, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.llo = select <8 x i1> %i.lkw, <8 x float> %i.lln, <8 x float> zeroinitializer
  %i.llp = fmul fast <8 x float> %i.lli, %i.lkz   ; 2 uses
  %i.llq = bitcast <8 x float> %i.llp to <8 x i32>
  %i.llr = and <8 x i32> %i.llq, splat (i32 -2147483648)
  %i.lls = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.llp) ; 3 uses
  %i.llt = fcmp fast ogt <8 x float> %i.lls, splat (float 1.000000e+00) ; 2 uses
  %i.llu = select <8 x i1> %i.llt, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lls
  %i.llv = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lls, <8 x float> splat (float 1.000000e+00))
  %i.llw = fdiv fast <8 x float> %i.llu, %i.llv   ; 3 uses
  %i.llx = fmul fast <8 x float> %i.llw, %i.llw   ; 3 uses
  %i.lly = fmul fast <8 x float> %i.llx, %i.llx   ; 7 uses
  %i.llz = fmul fast <8 x float> %i.lly, splat (float f0x3C83A25C)
  %i.lma = fsub fast <8 x float> splat (float f0xBD99B01E), %i.llz
  %i.lmb = fmul fast <8 x float> %i.lma, %i.lly
  %i.lmc = fadd fast <8 x float> %i.lmb, splat (float f0xBE117200)
  %i.lmd = fmul fast <8 x float> %i.lmc, %i.lly
  %i.lme = fadd fast <8 x float> %i.lmd, splat (float f0xBEAAAA53)
  %i.lmf = fmul fast <8 x float> %i.lly, splat (float f0x3B3AC537)
  %i.lmg = fadd fast <8 x float> %i.lmf, splat (float f0x3D2EDD4E)
  %i.lmh = fmul fast <8 x float> %i.lmg, %i.lly
  %i.lmi = fadd fast <8 x float> %i.lmh, splat (float f0x3DD9ED24)
  %i.lmj = fmul fast <8 x float> %i.lmi, %i.lly
  %i.lmk = fadd fast <8 x float> %i.lmj, splat (float f0x3E4CB974)
  %i.lml = fmul fast <8 x float> %i.lmk, %i.lly
  %i.lmm = fadd fast <8 x float> %i.lml, splat (float 1.000000e+00)
  %i.lmn = fmul fast <8 x float> %i.lme, %i.llx
  %i.lmo = fadd fast <8 x float> %i.lmm, %i.lmn
  %i.lmp = fmul fast <8 x float> %i.lmo, %i.llw
  %i.lmq = select <8 x i1> %i.llt, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.lmr = fadd fast <8 x float> %i.lmp, %i.lmq
  %i.lms = bitcast <8 x float> %i.lmr to <8 x i32>
  %i.lmt = or <8 x i32> %i.llr, %i.lms
  %i.lmu = bitcast <8 x i32> %i.lmt to <8 x float>
  %i.lmv = fadd fast <8 x float> %i.llo, %i.lmu
  %i.lmw = or disjoint <8 x i32> %i.lll, splat (i32 1070141403)
  %i.lmx = bitcast <8 x float> %i.lmv to <8 x i32>
  %i.lmy = select <8 x i1> %.not107.i64.i, <8 x i32> zeroinitializer, <8 x i32> %i.lmx
  %i.lmz = select <8 x i1> %i.lkv, <8 x i32> %i.lmw, <8 x i32> zeroinitializer
  %i.lna = select <8 x i1> %i.llj, <8 x i32> %i.lky, <8 x i32> %i.lmz
  %i.lnb = or <8 x i32> %i.lmy, %i.lna
  store <8 x i32> %i.lnb, ptr %.027110.i62.i, align 1, !tbaa !60
  %i.lnc = getelementptr inbounds nuw i8, ptr %.0111.i61.i, i64 32 ; 2 uses
  %i.lnd = getelementptr inbounds nuw i8, ptr %.027110.i62.i, i64 32 ; 2 uses
  %i.lne = add nuw nsw i32 %.030109.i63.i, 8      ; 2 uses
  %i.lnf = or disjoint i32 %i.lne, 7
  %i.lng = icmp slt i32 %i.lnf, %i.kws
  br i1 %i.lng, label %bb.kl, label %.preheader108.loopexit.i65.i1281, !llvm.loop !399

.preheader.i44.i1270:                             ; preds = %bb.km, %.preheader108.i40.i1266
  %.131.lcssa.i45.i1271 = phi i32 [ %.030.lcssa.i41.i1267, %.preheader108.i40.i1266 ], [ %i.lqq, %bb.km ] ; 4 uses
  %.128.lcssa.i46.i1272 = phi ptr [ %.027.lcssa.i42.i1268, %.preheader108.i40.i1266 ], [ %i.lqp, %bb.km ] ; 4 uses
  %.1.lcssa.i47.i1273 = phi ptr [ %.0.lcssa.i43.i1269, %.preheader108.i40.i1266 ], [ %i.lqo, %bb.km ] ; 4 uses
  %i.lnh = icmp slt i32 %.131.lcssa.i45.i1271, %i.kws
  br i1 %i.lnh, label %.lr.ph124.i48.i1274.preheader, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph124.i48.i1274.preheader:                    ; preds = %.preheader.i44.i1270
  %.1.lcssa.i47.i12735045 = ptrtoaddr ptr %.1.lcssa.i47.i1273 to i64
  %.128.lcssa.i46.i12725044 = ptrtoaddr ptr %.128.lcssa.i46.i1272 to i64
  %i.lni = xor i32 %.131.lcssa.i45.i1271, -1
  %i.lnj = add i32 %i.kws, %i.lni                 ; 2 uses
  %i.lnk = zext i32 %i.lnj to i64
  %i.lnl = add nuw nsw i64 %i.lnk, 1              ; 2 uses
  %min.iters.check5047 = icmp ult i32 %i.lnj, 7
  %i.lnm = sub i64 %.1.lcssa.i47.i12735045, %.128.lcssa.i46.i12725044
  %diff.check5049 = icmp ugt i64 %i.lnm, -32
  %or.cond6411 = select i1 %min.iters.check5047, i1 true, i1 %diff.check5049
  br i1 %or.cond6411, label %.lr.ph124.i48.i1274.preheader6801, label %vector.ph5050

vector.ph5050:                                    ; preds = %.lr.ph124.i48.i1274.preheader
  %n.vec5051 = and i64 %i.lnl, 8589934584         ; 4 uses
  %i.lnn = shl nuw nsw i64 %n.vec5051, 2          ; 2 uses
  %i.lno = getelementptr i8, ptr %.1.lcssa.i47.i1273, i64 %i.lnn
  %i.lnp = getelementptr i8, ptr %.128.lcssa.i46.i1272, i64 %i.lnn
  %i.lnq = trunc i64 %n.vec5051 to i32
  %i.lnr = add i32 %.131.lcssa.i45.i1271, %i.lnq
  %i.lns = insertelement <4 x float> poison, float %i.lkj, i64 0
  %i.lnt = shufflevector <4 x float> %i.lns, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5052

vector.body5052:                                  ; preds = %vector.body5052, %vector.ph5050
  %index5053 = phi i64 [ 0, %vector.ph5050 ], [ %index.next5057, %vector.body5052 ] ; 2 uses
  %i.lnu = shl i64 %index5053, 2                  ; 2 uses
  %next.gep5054 = getelementptr i8, ptr %.1.lcssa.i47.i1273, i64 %i.lnu
  %next.gep5055 = getelementptr i8, ptr %.128.lcssa.i46.i1272, i64 %i.lnu
  %wide.load5056 = load <8 x float>, ptr %next.gep5054, align 4, !tbaa !59 ; 5 uses
  %i.lnv = extractelement <8 x float> %wide.load5056, i64 0
  %i.lnw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lnv, float %i.lkj)
  %i.lnx = extractelement <8 x float> %wide.load5056, i64 1
  %i.lny = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lnx, float %i.lkj)
  %i.lnz = extractelement <8 x float> %wide.load5056, i64 2
  %i.loa = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lnz, float %i.lkj)
  %i.lob = extractelement <8 x float> %wide.load5056, i64 3
  %i.loc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lob, float %i.lkj)
  %i.lod = shufflevector <8 x float> %wide.load5056, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.loe = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.lod, <4 x float> %i.lnt)
  %i.lof = insertelement <8 x float> poison, float %i.lnw, i64 0
  %i.log = insertelement <8 x float> %i.lof, float %i.lny, i64 1
  %i.loh = insertelement <8 x float> %i.log, float %i.loa, i64 2
  %i.loi = insertelement <8 x float> %i.loh, float %i.loc, i64 3
  %i.loj = shufflevector <4 x float> %i.loe, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lok = shufflevector <8 x float> %i.loi, <8 x float> %i.loj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.lok, ptr %next.gep5055, align 4, !tbaa !59
  %index.next5057 = add nuw i64 %index5053, 8     ; 2 uses
  %i.lol = icmp eq i64 %index.next5057, %n.vec5051
  br i1 %i.lol, label %middle.block5058, label %vector.body5052, !llvm.loop !400

middle.block5058:                                 ; preds = %vector.body5052
  %cmp.n5059 = icmp eq i64 %i.lnl, %n.vec5051
  br i1 %cmp.n5059, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i1274.preheader6801

.lr.ph124.i48.i1274.preheader6801:                ; preds = %.lr.ph124.i48.i1274.preheader, %middle.block5058
  %.2123.i49.i1275.ph = phi ptr [ %.1.lcssa.i47.i1273, %.lr.ph124.i48.i1274.preheader ], [ %i.lno, %middle.block5058 ] ; 2 uses
  %.229122.i50.i1276.ph = phi ptr [ %.128.lcssa.i46.i1272, %.lr.ph124.i48.i1274.preheader ], [ %i.lnp, %middle.block5058 ] ; 2 uses
  %.232121.i51.i1277.ph = phi i32 [ %.131.lcssa.i45.i1271, %.lr.ph124.i48.i1274.preheader ], [ %i.lnr, %middle.block5058 ] ; 4 uses
  %i.lom = sub i32 %i.kws, %.232121.i51.i1277.ph
  %xtraiter7442 = and i32 %i.lom, 3               ; 2 uses
  %lcmp.mod7443.not = icmp eq i32 %xtraiter7442, 0
  br i1 %lcmp.mod7443.not, label %.lr.ph124.i48.i1274.prol.loopexit, label %.lr.ph124.i48.i1274.prol

.lr.ph124.i48.i1274.prol:                         ; preds = %.lr.ph124.i48.i1274.preheader6801, %.lr.ph124.i48.i1274.prol
  %.2123.i49.i1275.prol = phi ptr [ %i.lop, %.lr.ph124.i48.i1274.prol ], [ %.2123.i49.i1275.ph, %.lr.ph124.i48.i1274.preheader6801 ] ; 2 uses
  %.229122.i50.i1276.prol = phi ptr [ %i.loq, %.lr.ph124.i48.i1274.prol ], [ %.229122.i50.i1276.ph, %.lr.ph124.i48.i1274.preheader6801 ] ; 2 uses
  %.232121.i51.i1277.prol = phi i32 [ %i.lor, %.lr.ph124.i48.i1274.prol ], [ %.232121.i51.i1277.ph, %.lr.ph124.i48.i1274.preheader6801 ]
  %prol.iter7444 = phi i32 [ %prol.iter7444.next, %.lr.ph124.i48.i1274.prol ], [ 0, %.lr.ph124.i48.i1274.preheader6801 ]
  %i.lon = load float, ptr %.2123.i49.i1275.prol, align 4, !tbaa !59
  %i.loo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lon, float %i.lkj)
  store float %i.loo, ptr %.229122.i50.i1276.prol, align 4, !tbaa !59
  %i.lop = getelementptr inbounds nuw i8, ptr %.2123.i49.i1275.prol, i64 4 ; 2 uses
  %i.loq = getelementptr inbounds nuw i8, ptr %.229122.i50.i1276.prol, i64 4 ; 2 uses
  %i.lor = add nuw nsw i32 %.232121.i51.i1277.prol, 1 ; 2 uses
  %prol.iter7444.next = add i32 %prol.iter7444, 1 ; 2 uses
  %prol.iter7444.cmp.not = icmp eq i32 %prol.iter7444.next, %xtraiter7442
  br i1 %prol.iter7444.cmp.not, label %.lr.ph124.i48.i1274.prol.loopexit, label %.lr.ph124.i48.i1274.prol, !llvm.loop !401

.lr.ph124.i48.i1274.prol.loopexit:                ; preds = %.lr.ph124.i48.i1274.prol, %.lr.ph124.i48.i1274.preheader6801
  %.2123.i49.i1275.unr = phi ptr [ %.2123.i49.i1275.ph, %.lr.ph124.i48.i1274.preheader6801 ], [ %i.lop, %.lr.ph124.i48.i1274.prol ]
  %.229122.i50.i1276.unr = phi ptr [ %.229122.i50.i1276.ph, %.lr.ph124.i48.i1274.preheader6801 ], [ %i.loq, %.lr.ph124.i48.i1274.prol ]
  %.232121.i51.i1277.unr = phi i32 [ %.232121.i51.i1277.ph, %.lr.ph124.i48.i1274.preheader6801 ], [ %i.lor, %.lr.ph124.i48.i1274.prol ]
  %i.los = sub i32 %.232121.i51.i1277.ph, %i.kws
  %i.lot = icmp ugt i32 %i.los, -4
  br i1 %i.lot, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i1274

bb.km:                                            ; preds = %bb.km, %.lr.ph117.i53.i1279
  %.1116.i55.i = phi ptr [ %.0.lcssa.i43.i1269, %.lr.ph117.i53.i1279 ], [ %i.lqo, %bb.km ] ; 2 uses
  %.128115.i56.i = phi ptr [ %.027.lcssa.i42.i1268, %.lr.ph117.i53.i1279 ], [ %i.lqp, %bb.km ] ; 2 uses
  %.131114.i57.i = phi i32 [ %.030.lcssa.i41.i1267, %.lr.ph117.i53.i1279 ], [ %i.lqq, %bb.km ]
  %i.lou = load <4 x float>, ptr %.1116.i55.i, align 1, !tbaa !60 ; 4 uses
  %i.lov = fcmp fast oeq <4 x float> %i.lou, zeroinitializer ; 2 uses
  %.not104.i58.i = or <4 x i1> %i.lld, %i.lov
  %i.low = bitcast <4 x float> %i.lou to <4 x i32>
  %i.lox = and <4 x i32> %i.low, splat (i32 -2147483648)
  %i.loy = fcmp fast olt <4 x float> %i.lou, zeroinitializer
  %i.loz = select <4 x i1> %i.loy, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.lpa = select <4 x i1> %i.lle, <4 x float> %i.loz, <4 x float> zeroinitializer
  %i.lpb = fmul fast <4 x float> %i.lou, %i.llh   ; 2 uses
  %i.lpc = bitcast <4 x float> %i.lpb to <4 x i32>
  %i.lpd = and <4 x i32> %i.lpc, splat (i32 -2147483648)
  %i.lpe = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lpb) ; 3 uses
  %i.lpf = fcmp fast ogt <4 x float> %i.lpe, splat (float 1.000000e+00) ; 2 uses
  %i.lpg = select <4 x i1> %i.lpf, <4 x float> splat (float -1.000000e+00), <4 x float> %i.lpe
  %i.lph = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lpe, <4 x float> splat (float 1.000000e+00))
  %i.lpi = fdiv fast <4 x float> %i.lpg, %i.lph   ; 3 uses
  %i.lpj = fmul fast <4 x float> %i.lpi, %i.lpi   ; 3 uses
  %i.lpk = fmul fast <4 x float> %i.lpj, %i.lpj   ; 7 uses
  %i.lpl = fmul fast <4 x float> %i.lpk, splat (float f0x3C83A25C)
  %i.lpm = fsub fast <4 x float> splat (float f0xBD99B01E), %i.lpl
  %i.lpn = fmul fast <4 x float> %i.lpm, %i.lpk
  %i.lpo = fadd fast <4 x float> %i.lpn, splat (float f0xBE117200)
  %i.lpp = fmul fast <4 x float> %i.lpo, %i.lpk
  %i.lpq = fadd fast <4 x float> %i.lpp, splat (float f0xBEAAAA53)
  %i.lpr = fmul fast <4 x float> %i.lpk, splat (float f0x3B3AC537)
  %i.lps = fadd fast <4 x float> %i.lpr, splat (float f0x3D2EDD4E)
  %i.lpt = fmul fast <4 x float> %i.lps, %i.lpk
  %i.lpu = fadd fast <4 x float> %i.lpt, splat (float f0x3DD9ED24)
  %i.lpv = fmul fast <4 x float> %i.lpu, %i.lpk
  %i.lpw = fadd fast <4 x float> %i.lpv, splat (float f0x3E4CB974)
  %i.lpx = fmul fast <4 x float> %i.lpw, %i.lpk
  %i.lpy = fadd fast <4 x float> %i.lpx, splat (float 1.000000e+00)
  %i.lpz = fmul fast <4 x float> %i.lpq, %i.lpj
  %i.lqa = fadd fast <4 x float> %i.lpy, %i.lpz
  %i.lqb = fmul fast <4 x float> %i.lqa, %i.lpi
  %i.lqc = select <4 x i1> %i.lpf, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.lqd = fadd fast <4 x float> %i.lqb, %i.lqc
  %i.lqe = bitcast <4 x float> %i.lqd to <4 x i32>
  %i.lqf = or <4 x i32> %i.lpd, %i.lqe
  %i.lqg = bitcast <4 x i32> %i.lqf to <4 x float>
  %i.lqh = fadd fast <4 x float> %i.lpa, %i.lqg
  %i.lqi = or disjoint <4 x i32> %i.lox, splat (i32 1070141403)
  %i.lqj = bitcast <4 x float> %i.lqh to <4 x i32>
  %i.lqk = select <4 x i1> %.not104.i58.i, <4 x i32> zeroinitializer, <4 x i32> %i.lqj
  %i.lql = select <4 x i1> %i.lld, <4 x i32> %i.lqi, <4 x i32> zeroinitializer
  %i.lqm = select <4 x i1> %i.lov, <4 x i32> %i.llg, <4 x i32> %i.lql
  %i.lqn = or <4 x i32> %i.lqk, %i.lqm
  store <4 x i32> %i.lqn, ptr %.128115.i56.i, align 1, !tbaa !60
  %i.lqo = getelementptr inbounds nuw i8, ptr %.1116.i55.i, i64 16 ; 2 uses
  %i.lqp = getelementptr inbounds nuw i8, ptr %.128115.i56.i, i64 16 ; 2 uses
  %i.lqq = add nuw nsw i32 %.131114.i57.i, 4      ; 3 uses
  %i.lqr = or disjoint i32 %i.lqq, 3
  %i.lqs = icmp slt i32 %i.lqr, %i.kws
  br i1 %i.lqs, label %bb.km, label %.preheader.i44.i1270, !llvm.loop !402

.lr.ph124.i48.i1274:                              ; preds = %.lr.ph124.i48.i1274.prol.loopexit, %.lr.ph124.i48.i1274
  %.2123.i49.i1275 = phi ptr [ %i.lrh, %.lr.ph124.i48.i1274 ], [ %.2123.i49.i1275.unr, %.lr.ph124.i48.i1274.prol.loopexit ] ; 5 uses
  %.229122.i50.i1276 = phi ptr [ %i.lri, %.lr.ph124.i48.i1274 ], [ %.229122.i50.i1276.unr, %.lr.ph124.i48.i1274.prol.loopexit ] ; 5 uses
  %.232121.i51.i1277 = phi i32 [ %i.lrj, %.lr.ph124.i48.i1274 ], [ %.232121.i51.i1277.unr, %.lr.ph124.i48.i1274.prol.loopexit ]
  %i.lqt = load float, ptr %.2123.i49.i1275, align 4, !tbaa !59
  %i.lqu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqt, float %i.lkj)
  store float %i.lqu, ptr %.229122.i50.i1276, align 4, !tbaa !59
  %i.lqv = getelementptr inbounds nuw i8, ptr %.2123.i49.i1275, i64 4
  %i.lqw = getelementptr inbounds nuw i8, ptr %.229122.i50.i1276, i64 4
  %i.lqx = load float, ptr %i.lqv, align 4, !tbaa !59
  %i.lqy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqx, float %i.lkj)
  store float %i.lqy, ptr %i.lqw, align 4, !tbaa !59
  %i.lqz = getelementptr inbounds nuw i8, ptr %.2123.i49.i1275, i64 8
  %i.lra = getelementptr inbounds nuw i8, ptr %.229122.i50.i1276, i64 8
  %i.lrb = load float, ptr %i.lqz, align 4, !tbaa !59
  %i.lrc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lrb, float %i.lkj)
  store float %i.lrc, ptr %i.lra, align 4, !tbaa !59
  %i.lrd = getelementptr inbounds nuw i8, ptr %.2123.i49.i1275, i64 12
  %i.lre = getelementptr inbounds nuw i8, ptr %.229122.i50.i1276, i64 12
  %i.lrf = load float, ptr %i.lrd, align 4, !tbaa !59
  %i.lrg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lrf, float %i.lkj)
  store float %i.lrg, ptr %i.lre, align 4, !tbaa !59
  %i.lrh = getelementptr inbounds nuw i8, ptr %.2123.i49.i1275, i64 16
  %i.lri = getelementptr inbounds nuw i8, ptr %.229122.i50.i1276, i64 16
  %i.lrj = add nuw nsw i32 %.232121.i51.i1277, 4  ; 2 uses
  %exitcond.not.i52.i1278.3 = icmp eq i32 %i.lrj, %i.kws
  br i1 %exitcond.not.i52.i1278.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph124.i48.i1274, !llvm.loop !403

bb.kn:                                            ; preds = %bb.kf, %bb.ju
  %i.lrk = icmp eq i32 %6, 1
  br i1 %i.lrk, label %bb.ko, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ko:                                            ; preds = %bb.kn
  %i.lrl = icmp eq i32 %3, %4
  br i1 %i.lrl, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  %i.lrm = icmp eq i32 %.sroa.speculated.i1190, 8
  %i.lrn = icmp sgt i32 %.sroa.speculated91.i1189, 0
  %or.cond.i.i1234 = and i1 %i.lrn, %i.lrm
  br i1 %or.cond.i.i1234, label %.lr.ph.i69.i1258, label %.loopexit156.i.i1235

.lr.ph.i69.i1258:                                 ; preds = %bb.kp, %.lr.ph.i69.i1258
  %.0160.i.i1259 = phi ptr [ %i.ltp, %.lr.ph.i69.i1258 ], [ %0, %bb.kp ] ; 2 uses
  %.032159.i.i1260 = phi ptr [ %i.ltq, %.lr.ph.i69.i1258 ], [ %1, %bb.kp ] ; 2 uses
  %.038158.i.i1261 = phi ptr [ %i.ltr, %.lr.ph.i69.i1258 ], [ %2, %bb.kp ] ; 2 uses
  %.042157.i.i1262 = phi i32 [ %i.lts, %.lr.ph.i69.i1258 ], [ 0, %bb.kp ]
  %i.lro = load <8 x float>, ptr %.0160.i.i1259, align 1, !tbaa !60 ; 4 uses
  %i.lrp = load float, ptr %.032159.i.i1260, align 4, !tbaa !59
  %i.lrq = insertelement <8 x float> poison, float %i.lrp, i64 0
  %i.lrr = shufflevector <8 x float> %i.lrq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.lrs = fcmp fast ueq <8 x float> %i.lro, zeroinitializer ; 2 uses
  %i.lrt = fcmp fast ueq <8 x float> %i.lrr, zeroinitializer ; 2 uses
  %.not153.i.i1263 = or <8 x i1> %i.lrs, %i.lrt
  %i.lru = bitcast <8 x float> %i.lrr to <8 x i32>
  %i.lrv = and <8 x i32> %i.lru, splat (i32 -2147483648)
  %i.lrw = fcmp fast olt <8 x float> %i.lro, zeroinitializer
  %i.lrx = fcmp fast olt <8 x float> %i.lrr, zeroinitializer
  %i.lry = select <8 x i1> %i.lrx, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lrz = select <8 x i1> %i.lrw, <8 x float> %i.lry, <8 x float> zeroinitializer
  %i.lsa = fdiv fast <8 x float> %i.lrr, %i.lro   ; 2 uses
  %i.lsb = bitcast <8 x float> %i.lsa to <8 x i32>
  %i.lsc = and <8 x i32> %i.lsb, splat (i32 -2147483648)
  %i.lsd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lsa) ; 3 uses
  %i.lse = fcmp fast ogt <8 x float> %i.lsd, splat (float 1.000000e+00) ; 2 uses
  %i.lsf = select <8 x i1> %i.lse, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lsd
  %i.lsg = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lsd, <8 x float> splat (float 1.000000e+00))
  %i.lsh = fdiv fast <8 x float> %i.lsf, %i.lsg   ; 3 uses
  %i.lsi = fmul fast <8 x float> %i.lsh, %i.lsh   ; 3 uses
  %i.lsj = fmul fast <8 x float> %i.lsi, %i.lsi   ; 7 uses
  %i.lsk = fmul fast <8 x float> %i.lsj, splat (float f0x3C83A25C)
  %i.lsl = fsub fast <8 x float> splat (float f0xBD99B01E), %i.lsk
  %i.lsm = fmul fast <8 x float> %i.lsl, %i.lsj
  %i.lsn = fadd fast <8 x float> %i.lsm, splat (float f0xBE117200)
  %i.lso = fmul fast <8 x float> %i.lsn, %i.lsj
  %i.lsp = fadd fast <8 x float> %i.lso, splat (float f0xBEAAAA53)
  %i.lsq = fmul fast <8 x float> %i.lsj, splat (float f0x3B3AC537)
  %i.lsr = fadd fast <8 x float> %i.lsq, splat (float f0x3D2EDD4E)
  %i.lss = fmul fast <8 x float> %i.lsr, %i.lsj
  %i.lst = fadd fast <8 x float> %i.lss, splat (float f0x3DD9ED24)
  %i.lsu = fmul fast <8 x float> %i.lst, %i.lsj
  %i.lsv = fadd fast <8 x float> %i.lsu, splat (float f0x3E4CB974)
  %i.lsw = fmul fast <8 x float> %i.lsv, %i.lsj
  %i.lsx = fadd fast <8 x float> %i.lsw, splat (float 1.000000e+00)
  %i.lsy = fmul fast <8 x float> %i.lsp, %i.lsi
  %i.lsz = fadd fast <8 x float> %i.lsx, %i.lsy
  %i.lta = fmul fast <8 x float> %i.lsz, %i.lsh
  %i.ltb = select <8 x i1> %i.lse, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ltc = fadd fast <8 x float> %i.lta, %i.ltb
  %i.ltd = bitcast <8 x float> %i.ltc to <8 x i32>
  %i.lte = or <8 x i32> %i.lsc, %i.ltd
  %i.ltf = bitcast <8 x i32> %i.lte to <8 x float>
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.fao = add nuw nsw i32 %.226196.i.i, 2        ; 2 uses
  %exitcond.not.i.i713.1 = icmp eq i32 %i.fao, %i.eqc
  br i1 %exitcond.not.i.i713.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph198.i.i, !llvm.loop !763

bb.es:                                            ; preds = %bb.eq
  %i.fap = icmp eq i32 %4, 1
  br i1 %i.fap, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.faq = load i16, ptr %1, align 2, !tbaa !57
  %i.far = zext i16 %i.faq to i32
  %i.fas = shl nuw i32 %i.far, 16
  %i.fat = bitcast i32 %i.fas to float            ; 14 uses
  %i.fau = icmp eq i32 %.sroa.speculated.i689, 4
  br i1 %i.fau, label %.thread.i.i703, label %bb.eu

.thread.i.i703:                                   ; preds = %bb.et
  %i.fav = load i64, ptr %1, align 2, !tbaa !60
  %i.faw = insertelement <2 x i64> poison, i64 %i.fav, i64 0
  %i.fax = bitcast <2 x i64> %i.faw to <8 x i16>
  %i.fay = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fax, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.faz = bitcast <8 x i16> %i.fay to <4 x float>
  br label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.fba = insertelement <4 x float> poison, float %i.fat, i64 0
  %i.fbb = shufflevector <4 x float> %i.fba, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fbc = icmp eq i32 %.sroa.speculated.i689, 8
  br i1 %i.fbc, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.fbd = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.fbe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fbd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fbf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fbd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fbg = shufflevector <8 x i16> %i.fbe, <8 x i16> %i.fbf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fbh = bitcast <16 x i16> %i.fbg to <8 x float>
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu, %.thread.i.i703
  %i.fbi = phi <4 x float> [ %i.faz, %.thread.i.i703 ], [ %i.fbb, %bb.eu ] ; 2 uses
  %i.fbj = shufflevector <4 x float> %i.fbi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.fbk = phi <4 x float> [ %i.fbb, %bb.ev ], [ %i.fbi, %bb.ew ]
  %i.fbl = phi fast <8 x float> [ %i.fbh, %bb.ev ], [ %i.fbj, %bb.ew ]
  %i.fbm = icmp sgt i32 %i.eqc, 7
  br i1 %i.fbm, label %.lr.ph.i42.i, label %.preheader177.i34.i

.preheader177.loopexit.i48.i:                     ; preds = %.lr.ph.i42.i
  %i.fbn = and i32 %i.eqc, 2147483640
  br label %.preheader177.i34.i

.preheader177.i34.i:                              ; preds = %.preheader177.loopexit.i48.i, %bb.ex
  %.028.lcssa.i.i695 = phi ptr [ %2, %bb.ex ], [ %i.fep, %.preheader177.loopexit.i48.i ] ; 2 uses
  %.025.lcssa.i.i696 = phi i32 [ 0, %bb.ex ], [ %i.fbn, %.preheader177.loopexit.i48.i ] ; 3 uses
  %.0.lcssa.i35.i697 = phi ptr [ %0, %bb.ex ], [ %i.feo, %.preheader177.loopexit.i48.i ] ; 2 uses
  %i.fbo = or disjoint i32 %.025.lcssa.i.i696, 3
  %i.fbp = icmp slt i32 %i.fbo, %i.eqc
  br i1 %i.fbp, label %.lr.ph186.i.i, label %.preheader.i36.i698

.lr.ph.i42.i:                                     ; preds = %bb.ex, %.lr.ph.i42.i
  %.0180.i.i = phi ptr [ %i.feo, %.lr.ph.i42.i ], [ %0, %bb.ex ] ; 2 uses
  %.025179.i.i = phi i32 [ %i.feq, %.lr.ph.i42.i ], [ 0, %bb.ex ]
  %.028178.i.i = phi ptr [ %i.fep, %.lr.ph.i42.i ], [ %2, %bb.ex ] ; 2 uses
  %i.fbq = load <8 x i16>, ptr %.0180.i.i, align 1, !tbaa !60 ; 2 uses
  %i.fbr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fbq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fbs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fbq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fbt = shufflevector <8 x i16> %i.fbr, <8 x i16> %i.fbs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fbu = bitcast <16 x i16> %i.fbt to <8 x float>
  %i.fbv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fbu, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.fbw = bitcast <8 x float> %i.fbv to <8 x i32>
  %i.fbx = bitcast <8 x float> %i.fbv to <8 x i32>
  %i.fby = and <8 x i32> %i.fbx, splat (i32 -2139095041)
  %i.fbz = or disjoint <8 x i32> %i.fby, splat (i32 1056964608)
  %i.fca = bitcast <8 x i32> %i.fbz to <8 x float> ; 3 uses
  %i.fcb = lshr <8 x i32> %i.fbw, splat (i32 23)
  %i.fcc = add nsw <8 x i32> %i.fcb, splat (i32 -127)
  %i.fcd = sitofp fast <8 x i32> %i.fcc to <8 x float> ; 2 uses
  %i.fce = fadd fast <8 x float> %i.fcd, splat (float 1.000000e+00)
  %i.fcf = fcmp fast olt <8 x float> %i.fca, splat (float f0x3F3504F3) ; 2 uses
  %i.fcg = select <8 x i1> %i.fcf, <8 x float> %i.fca, <8 x float> zeroinitializer
  %i.fch = fadd fast <8 x float> %i.fca, splat (float -1.000000e+00)
  %i.fci = select fast <8 x i1> %i.fcf, <8 x float> %i.fcd, <8 x float> %i.fce
  %i.fcj = fadd fast <8 x float> %i.fch, %i.fcg   ; 12 uses
  %i.fck = fmul fast <8 x float> %i.fcj, %i.fcj
  %i.fcl = fmul fast <8 x float> %i.fcj, splat (float f0x3D9021BB)
  %i.fcm = fadd fast <8 x float> %i.fcl, splat (float f0xBDEBD1B8)
  %i.fcn = fmul fast <8 x float> %i.fcm, %i.fcj
  %i.fco = fadd fast <8 x float> %i.fcn, splat (float f0x3DEF251A)
  %i.fcp = fmul fast <8 x float> %i.fco, %i.fcj
  %i.fcq = fadd fast <8 x float> %i.fcp, splat (float f0xBDFE5D4F)
  %i.fcr = fmul fast <8 x float> %i.fcq, %i.fcj
  %i.fcs = fadd fast <8 x float> %i.fcr, splat (float f0x3E11E9BF)
  %i.fct = fmul fast <8 x float> %i.fcs, %i.fcj
  %i.fcu = fadd fast <8 x float> %i.fct, splat (float f0xBE2AAE50)
  %i.fcv = fmul fast <8 x float> %i.fcu, %i.fcj
  %i.fcw = fadd fast <8 x float> %i.fcv, splat (float f0x3E4CCEAC)
  %i.fcx = fmul fast <8 x float> %i.fcw, %i.fcj
  %i.fcy = fadd fast <8 x float> %i.fcx, splat (float f0xBE7FFFFC)
  %i.fcz = fmul fast <8 x float> %i.fcy, %i.fcj
  %i.fda = fadd fast <8 x float> %i.fcz, splat (float f0x3EAAAAAA)
  %i.fdb = fmul fast <8 x float> %i.fda, %i.fcj
  %reass.mul174.i43.i = fmul fast <8 x float> %i.fci, splat (float f0x3F317218)
  %reass.add175.i44.i = fadd fast <8 x float> %i.fdb, splat (float -5.000000e-01)
  %reass.mul176.i45.i = fmul fast <8 x float> %i.fck, %reass.add175.i44.i
  %i.fdc = fadd fast <8 x float> %reass.mul174.i43.i, %i.fcj
  %i.fdd = fadd fast <8 x float> %i.fdc, %reass.mul176.i45.i
  %i.fde = fmul fast <8 x float> %i.fdd, %i.fbl
  %i.fdf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fde, <8 x float> splat (float f0x42B0C0A5))
  %i.fdg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fdf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fdh = fmul fast <8 x float> %i.fdg, splat (float f0x3FB8AA3B)
  %i.fdi = fadd fast <8 x float> %i.fdh, splat (float 5.000000e-01) ; 2 uses
  %i.fdj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fdi, i32 1) ; 2 uses
  %i.fdk = fcmp fast ogt <8 x float> %i.fdj, %i.fdi
  %i.fdl = select <8 x i1> %i.fdk, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fdm = fsub fast <8 x float> %i.fdj, %i.fdl   ; 2 uses
  %i.fdn = fmul fast <8 x float> %i.fdm, splat (float f0x3F317218)
  %i.fdo = fsub fast <8 x float> %i.fdg, %i.fdn   ; 8 uses
  %i.fdp = fmul fast <8 x float> %i.fdo, %i.fdo
  %i.fdq = fmul fast <8 x float> %i.fdo, splat (float f0x39506967)
  %i.fdr = fadd fast <8 x float> %i.fdq, splat (float f0x3AB743CE)
  %i.fds = fmul fast <8 x float> %i.fdr, %i.fdo
  %i.fdt = fadd fast <8 x float> %i.fds, splat (float f0x3C088908)
  %i.fdu = fmul fast <8 x float> %i.fdt, %i.fdo
  %i.fdv = fadd fast <8 x float> %i.fdu, splat (float f0x3D2AA9C1)
  %i.fdw = fmul fast <8 x float> %i.fdv, %i.fdo
  %i.fdx = fadd fast <8 x float> %i.fdw, splat (float f0x3E2AAAAA)
  %i.fdy = fmul fast <8 x float> %i.fdx, %i.fdo
  %i.fdz = fadd fast <8 x float> %i.fdy, splat (float 5.000000e-01)
  %i.fea = fmul fast <8 x float> %i.fdp, %i.fdz
  %i.feb = fadd fast <8 x float> %i.fdo, splat (float 1.000000e+00)
  %i.fec = fadd fast <8 x float> %i.feb, %i.fea
  %i.fed = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fdm)
  %i.fee = shl <8 x i32> %i.fed, splat (i32 23)
  %i.fef = add <8 x i32> %i.fee, splat (i32 1065353216)
  %i.feg = bitcast <8 x i32> %i.fef to <8 x float>
  %i.feh = fmul fast <8 x float> %i.fec, %i.feg
  %i.fei = bitcast <8 x float> %i.feh to <8 x i32> ; 2 uses
  %i.fej = shufflevector <8 x i32> %i.fei, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fek = shufflevector <8 x i32> %i.fei, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fel = lshr <4 x i32> %i.fej, splat (i32 16)
  %i.fem = lshr <4 x i32> %i.fek, splat (i32 16)
  %i.fen = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fel, <4 x i32> %i.fem)
  store <8 x i16> %i.fen, ptr %.028178.i.i, align 1, !tbaa !60
  %i.feo = getelementptr inbounds nuw i8, ptr %.0180.i.i, i64 16 ; 2 uses
  %i.fep = getelementptr inbounds nuw i8, ptr %.028178.i.i, i64 16 ; 2 uses
  %i.feq = add nuw nsw i32 %.025179.i.i, 8        ; 2 uses
  %i.fer = or disjoint i32 %i.feq, 7
  %i.fes = icmp slt i32 %i.fer, %i.eqc
  br i1 %i.fes, label %.lr.ph.i42.i, label %.preheader177.loopexit.i48.i, !llvm.loop !764

.preheader.i36.i698:                              ; preds = %.lr.ph186.i.i, %.preheader177.i34.i
  %.129.lcssa.i.i699 = phi ptr [ %.028.lcssa.i.i695, %.preheader177.i34.i ], [ %i.fkv, %.lr.ph186.i.i ] ; 6 uses
  %.126.lcssa.i.i700 = phi i32 [ %.025.lcssa.i.i696, %.preheader177.i34.i ], [ %i.fkw, %.lr.ph186.i.i ] ; 5 uses
  %.1.lcssa.i37.i701 = phi ptr [ %.0.lcssa.i35.i697, %.preheader177.i34.i ], [ %i.fku, %.lr.ph186.i.i ] ; 6 uses
  %i.fet = icmp slt i32 %.126.lcssa.i.i700, %i.eqc
  br i1 %i.fet, label %iter.check5950, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5950:                                   ; preds = %.preheader.i36.i698
  %.129.lcssa.i.i6995934 = ptrtoaddr ptr %.129.lcssa.i.i699 to i64
  %.1.lcssa.i37.i7015933 = ptrtoaddr ptr %.1.lcssa.i37.i701 to i64
  %i.feu = xor i32 %.126.lcssa.i.i700, -1
  %i.fev = add i32 %i.eqc, %i.feu                 ; 3 uses
  %i.few = zext i32 %i.fev to i64
  %i.fex = add nuw nsw i64 %i.few, 1              ; 5 uses
  %min.iters.check5935 = icmp ult i32 %i.fev, 3
  %i.fey = sub i64 %.1.lcssa.i37.i7015933, %.129.lcssa.i.i6995934
  %diff.check5937 = icmp ugt i64 %i.fey, -32
  %or.cond7109 = select i1 %min.iters.check5935, i1 true, i1 %diff.check5937
  br i1 %or.cond7109, label %.lr.ph193.i.i.preheader, label %vector.main.loop.iter.check5938

vector.main.loop.iter.check5938:                  ; preds = %iter.check5950
  %min.iters.check5939 = icmp ult i32 %i.fev, 15
  br i1 %min.iters.check5939, label %vec.epilog.ph5954, label %vector.ph5940

vector.ph5940:                                    ; preds = %vector.main.loop.iter.check5938
  %i.fez = and i64 %i.fex, 12
  %n.vec5941 = and i64 %i.fex, 8589934576         ; 5 uses
  %i.ffa = shl nuw nsw i64 %n.vec5941, 1          ; 2 uses
  %i.ffb = getelementptr i8, ptr %.1.lcssa.i37.i701, i64 %i.ffa
  %i.ffc = trunc i64 %n.vec5941 to i32
  %i.ffd = add i32 %.126.lcssa.i.i700, %i.ffc
  %i.ffe = getelementptr i8, ptr %.129.lcssa.i.i699, i64 %i.ffa
  %i.fff = insertelement <8 x float> poison, float %i.fat, i64 0
  %i.ffg = shufflevector <8 x float> %i.fff, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ffh = insertelement <4 x float> poison, float %i.fat, i64 0
  %i.ffi = shufflevector <4 x float> %i.ffh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5942

vector.body5942:                                  ; preds = %vector.ph5940, %vector.body5942
  %index5943 = phi i64 [ 0, %vector.ph5940 ], [ %index.next5947, %vector.body5942 ] ; 2 uses
  %i.ffj = shl i64 %index5943, 1                  ; 2 uses
  %next.gep5944 = getelementptr i8, ptr %.1.lcssa.i37.i701, i64 %i.ffj
  %next.gep5945 = getelementptr i8, ptr %.129.lcssa.i.i699, i64 %i.ffj
  %wide.load5946 = load <16 x i16>, ptr %next.gep5944, align 2, !tbaa !57
  %i.ffk = zext <16 x i16> %wide.load5946 to <16 x i32>
  %i.ffl = shl nuw <16 x i32> %i.ffk, splat (i32 16)
  %i.ffm = bitcast <16 x i32> %i.ffl to <16 x float> ; 6 uses
  %i.ffn = extractelement <16 x float> %i.ffm, i64 0
  %i.ffo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ffn, float %i.fat)
  %i.ffp = extractelement <16 x float> %i.ffm, i64 1
  %i.ffq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ffp, float %i.fat)
  %i.ffr = extractelement <16 x float> %i.ffm, i64 2
  %i.ffs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ffr, float %i.fat)
  %i.fft = extractelement <16 x float> %i.ffm, i64 3
  %i.ffu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fft, float %i.fat)
  %i.ffv = shufflevector <16 x float> %i.ffm, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ffw = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ffv, <4 x float> %i.ffi)
  %i.ffx = shufflevector <16 x float> %i.ffm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ffy = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.ffx, <8 x float> %i.ffg)
  %i.ffz = insertelement <16 x float> poison, float %i.ffo, i64 0
  %i.fga = insertelement <16 x float> %i.ffz, float %i.ffq, i64 1
  %i.fgb = insertelement <16 x float> %i.fga, float %i.ffs, i64 2
  %i.fgc = insertelement <16 x float> %i.fgb, float %i.ffu, i64 3
  %i.fgd = shufflevector <4 x float> %i.ffw, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fge = shufflevector <16 x float> %i.fgc, <16 x float> %i.fgd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fgf = shufflevector <8 x float> %i.ffy, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fgg = shufflevector <16 x float> %i.fge, <16 x float> %i.fgf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fgh = bitcast <16 x float> %i.fgg to <16 x i32>
  %i.fgi = lshr <16 x i32> %i.fgh, splat (i32 16)
  %i.fgj = trunc nuw <16 x i32> %i.fgi to <16 x i16>
  store <16 x i16> %i.fgj, ptr %next.gep5945, align 2, !tbaa !57
  %index.next5947 = add nuw i64 %index5943, 16    ; 2 uses
  %i.fgk = icmp eq i64 %index.next5947, %n.vec5941
  br i1 %i.fgk, label %middle.block5948, label %vector.body5942, !llvm.loop !765

middle.block5948:                                 ; preds = %vector.body5942
  %cmp.n5949 = icmp eq i64 %i.fex, %n.vec5941
  br i1 %cmp.n5949, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5951

vec.epilog.iter.check5951:                        ; preds = %middle.block5948
  %min.epilog.iters.check5953 = icmp eq i64 %i.fez, 0
  br i1 %min.epilog.iters.check5953, label %.lr.ph193.i.i.preheader, label %vec.epilog.ph5954, !prof !64

vec.epilog.ph5954:                                ; preds = %vector.main.loop.iter.check5938, %vec.epilog.iter.check5951
  %vec.epilog.resume.val5955 = phi i64 [ %n.vec5941, %vec.epilog.iter.check5951 ], [ 0, %vector.main.loop.iter.check5938 ]
  %n.vec5956 = and i64 %i.fex, 8589934588         ; 4 uses
  %i.fgl = shl nuw nsw i64 %n.vec5956, 1          ; 2 uses
  %i.fgm = getelementptr i8, ptr %.1.lcssa.i37.i701, i64 %i.fgl
  %i.fgn = trunc i64 %n.vec5956 to i32
  %i.fgo = add i32 %.126.lcssa.i.i700, %i.fgn
  %i.fgp = getelementptr i8, ptr %.129.lcssa.i.i699, i64 %i.fgl
  br label %vec.epilog.vector.body5957

vec.epilog.vector.body5957:                       ; preds = %vec.epilog.vector.body5957, %vec.epilog.ph5954
  %index5958 = phi i64 [ %vec.epilog.resume.val5955, %vec.epilog.ph5954 ], [ %index.next5962, %vec.epilog.vector.body5957 ] ; 2 uses
  %i.fgq = shl i64 %index5958, 1                  ; 2 uses
  %next.gep5959 = getelementptr i8, ptr %.1.lcssa.i37.i701, i64 %i.fgq
  %next.gep5960 = getelementptr i8, ptr %.129.lcssa.i.i699, i64 %i.fgq
  %wide.load5961 = load <4 x i16>, ptr %next.gep5959, align 2, !tbaa !57
  %i.fgr = zext <4 x i16> %wide.load5961 to <4 x i32>
  %i.fgs = shl nuw <4 x i32> %i.fgr, splat (i32 16)
  %i.fgt = bitcast <4 x i32> %i.fgs to <4 x float> ; 4 uses
  %i.fgu = extractelement <4 x float> %i.fgt, i64 0
  %i.fgv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fgu, float %i.fat)
  %i.fgw = extractelement <4 x float> %i.fgt, i64 1
  %i.fgx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fgw, float %i.fat)
  %i.fgy = extractelement <4 x float> %i.fgt, i64 2
  %i.fgz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fgy, float %i.fat)
  %i.fha = extractelement <4 x float> %i.fgt, i64 3
  %i.fhb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fha, float %i.fat)
  %i.fhc = insertelement <4 x float> poison, float %i.fgv, i64 0
  %i.fhd = insertelement <4 x float> %i.fhc, float %i.fgx, i64 1
  %i.fhe = insertelement <4 x float> %i.fhd, float %i.fgz, i64 2
  %i.fhf = insertelement <4 x float> %i.fhe, float %i.fhb, i64 3
  %i.fhg = bitcast <4 x float> %i.fhf to <4 x i32>
  %i.fhh = lshr <4 x i32> %i.fhg, splat (i32 16)
  %i.fhi = trunc nuw <4 x i32> %i.fhh to <4 x i16>
  store <4 x i16> %i.fhi, ptr %next.gep5960, align 2, !tbaa !57
  %index.next5962 = add nuw i64 %index5958, 4     ; 2 uses
  %i.fhj = icmp eq i64 %index.next5962, %n.vec5956
  br i1 %i.fhj, label %vec.epilog.middle.block5963, label %vec.epilog.vector.body5957, !llvm.loop !766

vec.epilog.middle.block5963:                      ; preds = %vec.epilog.vector.body5957
  %cmp.n5964 = icmp eq i64 %i.fex, %n.vec5956
  br i1 %cmp.n5964, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i.i.preheader

.lr.ph193.i.i.preheader:                          ; preds = %iter.check5950, %vec.epilog.iter.check5951, %vec.epilog.middle.block5963
  %.2192.i.i.ph = phi ptr [ %.1.lcssa.i37.i701, %iter.check5950 ], [ %i.ffb, %vec.epilog.iter.check5951 ], [ %i.fgm, %vec.epilog.middle.block5963 ] ; 3 uses
  %.227191.i.i.ph = phi i32 [ %.126.lcssa.i.i700, %iter.check5950 ], [ %i.ffd, %vec.epilog.iter.check5951 ], [ %i.fgo, %vec.epilog.middle.block5963 ] ; 4 uses
  %.230190.i.i.ph = phi ptr [ %.129.lcssa.i.i699, %iter.check5950 ], [ %i.ffe, %vec.epilog.iter.check5951 ], [ %i.fgp, %vec.epilog.middle.block5963 ] ; 3 uses
  %i.fhk = sub i32 %i.eqc, %.227191.i.i.ph
  %.neg8044 = add i32 %.227191.i.i.ph, 1
  %xtraiter7885 = and i32 %i.fhk, 1
  %lcmp.mod7886.not = icmp eq i32 %xtraiter7885, 0
  br i1 %lcmp.mod7886.not, label %.lr.ph193.i.i.prol.loopexit, label %.lr.ph193.i.i.prol

.lr.ph193.i.i.prol:                               ; preds = %.lr.ph193.i.i.preheader
  %i.fhl = getelementptr inbounds nuw i8, ptr %.2192.i.i.ph, i64 2
  %i.fhm = load i16, ptr %.2192.i.i.ph, align 2, !tbaa !57
  %i.fhn = zext i16 %i.fhm to i32
  %i.fho = shl nuw i32 %i.fhn, 16
  %i.fhp = bitcast i32 %i.fho to float
  %i.fhq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fhp, float %i.fat)
  %i.fhr = bitcast float %i.fhq to i32
  %i.fhs = lshr i32 %i.fhr, 16
  %i.fht = trunc nuw i32 %i.fhs to i16
  %i.fhu = getelementptr inbounds nuw i8, ptr %.230190.i.i.ph, i64 2
  store i16 %i.fht, ptr %.230190.i.i.ph, align 2, !tbaa !57
  %i.fhv = add nuw nsw i32 %.227191.i.i.ph, 1
  br label %.lr.ph193.i.i.prol.loopexit

.lr.ph193.i.i.prol.loopexit:                      ; preds = %.lr.ph193.i.i.prol, %.lr.ph193.i.i.preheader
  %.2192.i.i.unr = phi ptr [ %.2192.i.i.ph, %.lr.ph193.i.i.preheader ], [ %i.fhl, %.lr.ph193.i.i.prol ]
  %.227191.i.i.unr = phi i32 [ %.227191.i.i.ph, %.lr.ph193.i.i.preheader ], [ %i.fhv, %.lr.ph193.i.i.prol ]
  %.230190.i.i.unr = phi ptr [ %.230190.i.i.ph, %.lr.ph193.i.i.preheader ], [ %i.fhu, %.lr.ph193.i.i.prol ]
  %i.fhw = icmp eq i32 %i.eqc, %.neg8044
  br i1 %i.fhw, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i.i

.lr.ph186.i.i:                                    ; preds = %.preheader177.i34.i, %.lr.ph186.i.i
  %.1185.i.i = phi ptr [ %i.fku, %.lr.ph186.i.i ], [ %.0.lcssa.i35.i697, %.preheader177.i34.i ] ; 2 uses
  %.126184.i.i = phi i32 [ %i.fkw, %.lr.ph186.i.i ], [ %.025.lcssa.i.i696, %.preheader177.i34.i ]
  %.129183.i.i = phi ptr [ %i.fkv, %.lr.ph186.i.i ], [ %.028.lcssa.i.i695, %.preheader177.i34.i ] ; 2 uses
  %i.fhx = load i64, ptr %.1185.i.i, align 1, !tbaa !60
  %i.fhy = insertelement <2 x i64> poison, i64 %i.fhx, i64 0
  %i.fhz = bitcast <2 x i64> %i.fhy to <8 x i16>
  %i.fia = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fib = bitcast <8 x i16> %i.fia to <4 x float>
  %i.fic = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fib, <4 x float> splat (float f0x00800000))
  %i.fid = bitcast <4 x float> %i.fic to <4 x i32> ; 2 uses
  %i.fie = lshr <4 x i32> %i.fid, splat (i32 23)
  %i.fif = and <4 x i32> %i.fid, splat (i32 -2139095041)
  %i.fig = or disjoint <4 x i32> %i.fif, splat (i32 1056964608)
  %i.fih = bitcast <4 x i32> %i.fig to <4 x float> ; 3 uses
  %i.fii = add nsw <4 x i32> %i.fie, splat (i32 -127)
  %i.fij = sitofp fast <4 x i32> %i.fii to <4 x float> ; 2 uses
  %i.fik = fadd fast <4 x float> %i.fij, splat (float 1.000000e+00)
  %i.fil = fcmp fast olt <4 x float> %i.fih, splat (float f0x3F3504F3) ; 2 uses
  %i.fim = select <4 x i1> %i.fil, <4 x float> %i.fih, <4 x float> zeroinitializer
  %i.fin = fadd fast <4 x float> %i.fih, splat (float -1.000000e+00)
  %i.fio = select fast <4 x i1> %i.fil, <4 x float> %i.fij, <4 x float> %i.fik
  %i.fip = fadd fast <4 x float> %i.fin, %i.fim   ; 12 uses
  %i.fiq = fmul fast <4 x float> %i.fip, %i.fip
  %i.fir = fmul fast <4 x float> %i.fip, splat (float f0x3D9021BB)
  %i.fis = fadd fast <4 x float> %i.fir, splat (float f0xBDEBD1B8)
  %i.fit = fmul fast <4 x float> %i.fis, %i.fip
  %i.fiu = fadd fast <4 x float> %i.fit, splat (float f0x3DEF251A)
  %i.fiv = fmul fast <4 x float> %i.fiu, %i.fip
  %i.fiw = fadd fast <4 x float> %i.fiv, splat (float f0xBDFE5D4F)
  %i.fix = fmul fast <4 x float> %i.fiw, %i.fip
  %i.fiy = fadd fast <4 x float> %i.fix, splat (float f0x3E11E9BF)
  %i.fiz = fmul fast <4 x float> %i.fiy, %i.fip
  %i.fja = fadd fast <4 x float> %i.fiz, splat (float f0xBE2AAE50)
  %i.fjb = fmul fast <4 x float> %i.fja, %i.fip
  %i.fjc = fadd fast <4 x float> %i.fjb, splat (float f0x3E4CCEAC)
  %i.fjd = fmul fast <4 x float> %i.fjc, %i.fip
  %i.fje = fadd fast <4 x float> %i.fjd, splat (float f0xBE7FFFFC)
  %i.fjf = fmul fast <4 x float> %i.fje, %i.fip
  %i.fjg = fadd fast <4 x float> %i.fjf, splat (float f0x3EAAAAAA)
  %i.fjh = fmul fast <4 x float> %i.fjg, %i.fip
  %reass.mul.i39.i = fmul fast <4 x float> %i.fio, splat (float f0x3F317218)
  %reass.add172.i40.i = fadd fast <4 x float> %i.fjh, splat (float -5.000000e-01)
  %reass.mul173.i41.i = fmul fast <4 x float> %i.fiq, %reass.add172.i40.i
  %i.fji = fadd fast <4 x float> %reass.mul.i39.i, %i.fip
  %i.fjj = fadd fast <4 x float> %i.fji, %reass.mul173.i41.i
  %i.fjk = fmul fast <4 x float> %i.fjj, %i.fbk
  %i.fjl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fjk, <4 x float> splat (float f0x42B0C0A5))
  %i.fjm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fjl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fjn = fmul fast <4 x float> %i.fjm, splat (float f0x3FB8AA3B)
  %i.fjo = fadd fast <4 x float> %i.fjn, splat (float 5.000000e-01) ; 2 uses
  %i.fjp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fjo)
  %i.fjq = sitofp fast <4 x i32> %i.fjp to <4 x float> ; 2 uses
  %i.fjr = fcmp fast olt <4 x float> %i.fjo, %i.fjq
  %i.fjs = select <4 x i1> %i.fjr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fjt = fsub fast <4 x float> %i.fjq, %i.fjs   ; 2 uses
  %i.fju = fmul fast <4 x float> %i.fjt, splat (float f0x3F317218)
  %i.fjv = fsub fast <4 x float> %i.fjm, %i.fju   ; 8 uses
  %i.fjw = fmul fast <4 x float> %i.fjv, %i.fjv
  %i.fjx = fmul fast <4 x float> %i.fjv, splat (float f0x39506967)
  %i.fjy = fadd fast <4 x float> %i.fjx, splat (float f0x3AB743CE)
  %i.fjz = fmul fast <4 x float> %i.fjy, %i.fjv
  %i.fka = fadd fast <4 x float> %i.fjz, splat (float f0x3C088908)
  %i.fkb = fmul fast <4 x float> %i.fka, %i.fjv
  %i.fkc = fadd fast <4 x float> %i.fkb, splat (float f0x3D2AA9C1)
  %i.fkd = fmul fast <4 x float> %i.fkc, %i.fjv
  %i.fke = fadd fast <4 x float> %i.fkd, splat (float f0x3E2AAAAA)
  %i.fkf = fmul fast <4 x float> %i.fke, %i.fjv
  %i.fkg = fadd fast <4 x float> %i.fkf, splat (float 5.000000e-01)
  %i.fkh = fmul fast <4 x float> %i.fjw, %i.fkg
  %i.fki = fadd fast <4 x float> %i.fjv, splat (float 1.000000e+00)
  %i.fkj = fadd fast <4 x float> %i.fki, %i.fkh
  %i.fkk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fjt)
  %i.fkl = shl <4 x i32> %i.fkk, splat (i32 23)
  %i.fkm = add <4 x i32> %i.fkl, splat (i32 1065353216)
  %i.fkn = bitcast <4 x i32> %i.fkm to <4 x float>
  %i.fko = fmul fast <4 x float> %i.fkj, %i.fkn
  %i.fkp = bitcast <4 x float> %i.fko to <4 x i32>
  %i.fkq = lshr <4 x i32> %i.fkp, splat (i32 16)
  %i.fkr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fkq, <4 x i32> poison)
  %i.fks = bitcast <8 x i16> %i.fkr to <2 x i64>
  %i.fkt = extractelement <2 x i64> %i.fks, i64 0
  store i64 %i.fkt, ptr %.129183.i.i, align 1, !tbaa !60
  %i.fku = getelementptr inbounds nuw i8, ptr %.1185.i.i, i64 8 ; 2 uses
  %i.fkv = getelementptr inbounds nuw i8, ptr %.129183.i.i, i64 8 ; 2 uses
  %i.fkw = add nuw nsw i32 %.126184.i.i, 4        ; 3 uses
  %i.fkx = or disjoint i32 %i.fkw, 3
  %i.fky = icmp slt i32 %i.fkx, %i.eqc
  br i1 %i.fky, label %.lr.ph186.i.i, label %.preheader.i36.i698, !llvm.loop !767

.lr.ph193.i.i:                                    ; preds = %.lr.ph193.i.i.prol.loopexit, %.lr.ph193.i.i
  %.2192.i.i = phi ptr [ %i.flj, %.lr.ph193.i.i ], [ %.2192.i.i.unr, %.lr.ph193.i.i.prol.loopexit ] ; 3 uses
  %.227191.i.i = phi i32 [ %i.flt, %.lr.ph193.i.i ], [ %.227191.i.i.unr, %.lr.ph193.i.i.prol.loopexit ]
  %.230190.i.i = phi ptr [ %i.fls, %.lr.ph193.i.i ], [ %.230190.i.i.unr, %.lr.ph193.i.i.prol.loopexit ] ; 3 uses
  %i.fkz = getelementptr inbounds nuw i8, ptr %.2192.i.i, i64 2
  %i.fla = load i16, ptr %.2192.i.i, align 2, !tbaa !57
  %i.flb = zext i16 %i.fla to i32
  %i.flc = shl nuw i32 %i.flb, 16
  %i.fld = bitcast i32 %i.flc to float
  %i.fle = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fld, float %i.fat)
  %i.flf = bitcast float %i.fle to i32
  %i.flg = lshr i32 %i.flf, 16
  %i.flh = trunc nuw i32 %i.flg to i16
  %i.fli = getelementptr inbounds nuw i8, ptr %.230190.i.i, i64 2
  store i16 %i.flh, ptr %.230190.i.i, align 2, !tbaa !57
  %i.flj = getelementptr inbounds nuw i8, ptr %.2192.i.i, i64 4
  %i.flk = load i16, ptr %i.fkz, align 2, !tbaa !57
  %i.fll = zext i16 %i.flk to i32
  %i.flm = shl nuw i32 %i.fll, 16
  %i.fln = bitcast i32 %i.flm to float
  %i.flo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fln, float %i.fat)
  %i.flp = bitcast float %i.flo to i32
  %i.flq = lshr i32 %i.flp, 16
  %i.flr = trunc nuw i32 %i.flq to i16
  %i.fls = getelementptr inbounds nuw i8, ptr %.230190.i.i, i64 4
  store i16 %i.flr, ptr %i.fli, align 2, !tbaa !57
  %i.flt = add nuw nsw i32 %.227191.i.i, 2        ; 2 uses
  %exitcond.not.i38.i702.1 = icmp eq i32 %i.flt, %i.eqc
  br i1 %exitcond.not.i38.i702.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i.i, !llvm.loop !768

bb.ey:                                            ; preds = %bb.es
  %i.flu = icmp eq i32 %3, 1
  br i1 %i.flu, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey
  %i.flv = load i16, ptr %0, align 2, !tbaa !57
  %i.flw = zext i16 %i.flv to i32
  %i.flx = shl nuw i32 %i.flw, 16
  %i.fly = bitcast i32 %i.flx to float            ; 14 uses
  %i.flz = icmp eq i32 %.sroa.speculated.i689, 4
  br i1 %i.flz, label %.thread.i87.i, label %bb.fa

.thread.i87.i:                                    ; preds = %bb.ez
  %i.fma = load i64, ptr %0, align 2, !tbaa !60
  %i.fmb = insertelement <2 x i64> poison, i64 %i.fma, i64 0
  %i.fmc = bitcast <2 x i64> %i.fmb to <8 x i16>
  %i.fmd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fmc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fme = bitcast <8 x i16> %i.fmd to <4 x float>
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.fmf = insertelement <4 x float> poison, float %i.fly, i64 0
  %i.fmg = shufflevector <4 x float> %i.fmf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fmh = icmp eq i32 %.sroa.speculated.i689, 8
  br i1 %i.fmh, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.fmi = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.fmj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fmi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fmk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fmi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fml = shufflevector <8 x i16> %i.fmj, <8 x i16> %i.fmk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fmm = bitcast <16 x i16> %i.fml to <8 x float>
end_hunk_4
begin_hunk_5_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.fmp = phi <4 x float> [ %i.fmg, %bb.fb ], [ %i.fmn, %bb.fc ]
  %i.fmq = phi fast <8 x float> [ %i.fmm, %bb.fb ], [ %i.fmo, %bb.fc ]
  %i.fmr = icmp sgt i32 %i.eqc, 7
  br i1 %i.fmr, label %.lr.ph.i69.i, label %.preheader177.i49.i

.lr.ph.i69.i:                                     ; preds = %bb.fd
  %i.fms = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fmq, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.fmt = bitcast <8 x float> %i.fms to <8 x i32>
  %i.fmu = bitcast <8 x float> %i.fms to <8 x i32>
  %i.fmv = and <8 x i32> %i.fmu, splat (i32 -2139095041)
  %i.fmw = or disjoint <8 x i32> %i.fmv, splat (i32 1056964608)
  %i.fmx = bitcast <8 x i32> %i.fmw to <8 x float> ; 3 uses
  %i.fmy = lshr <8 x i32> %i.fmt, splat (i32 23)
  %i.fmz = add nsw <8 x i32> %i.fmy, splat (i32 -127)
  %i.fna = sitofp fast <8 x i32> %i.fmz to <8 x float> ; 2 uses
  %i.fnb = fadd fast <8 x float> %i.fna, splat (float 1.000000e+00)
  %i.fnc = fcmp fast olt <8 x float> %i.fmx, splat (float f0x3F3504F3) ; 2 uses
  %i.fnd = select <8 x i1> %i.fnc, <8 x float> %i.fmx, <8 x float> zeroinitializer
  %i.fne = fadd fast <8 x float> %i.fmx, splat (float -1.000000e+00)
  %i.fnf = select fast <8 x i1> %i.fnc, <8 x float> %i.fna, <8 x float> %i.fnb
  %i.fng = fadd fast <8 x float> %i.fne, %i.fnd   ; 12 uses
  %i.fnh = fmul fast <8 x float> %i.fng, %i.fng
  %i.fni = fmul fast <8 x float> %i.fng, splat (float f0x3D9021BB)
  %i.fnj = fadd fast <8 x float> %i.fni, splat (float f0xBDEBD1B8)
  %i.fnk = fmul fast <8 x float> %i.fnj, %i.fng
  %i.fnl = fadd fast <8 x float> %i.fnk, splat (float f0x3DEF251A)
  %i.fnm = fmul fast <8 x float> %i.fnl, %i.fng
  %i.fnn = fadd fast <8 x float> %i.fnm, splat (float f0xBDFE5D4F)
  %i.fno = fmul fast <8 x float> %i.fnn, %i.fng
  %i.fnp = fadd fast <8 x float> %i.fno, splat (float f0x3E11E9BF)
  %i.fnq = fmul fast <8 x float> %i.fnp, %i.fng
  %i.fnr = fadd fast <8 x float> %i.fnq, splat (float f0xBE2AAE50)
  %i.fns = fmul fast <8 x float> %i.fnr, %i.fng
  %i.fnt = fadd fast <8 x float> %i.fns, splat (float f0x3E4CCEAC)
  %i.fnu = fmul fast <8 x float> %i.fnt, %i.fng
  %i.fnv = fadd fast <8 x float> %i.fnu, splat (float f0xBE7FFFFC)
  %i.fnw = fmul fast <8 x float> %i.fnv, %i.fng
  %i.fnx = fadd fast <8 x float> %i.fnw, splat (float f0x3EAAAAAA)
  %i.fny = fmul fast <8 x float> %i.fnx, %i.fng
  %reass.mul174.i75.i = fmul fast <8 x float> %i.fnf, splat (float f0x3F317218)
  %reass.add175.i76.i = fadd fast <8 x float> %i.fny, splat (float -5.000000e-01)
  %reass.mul176.i77.i = fmul fast <8 x float> %i.fnh, %reass.add175.i76.i
  %i.fnz = fadd fast <8 x float> %reass.mul174.i75.i, %i.fng
  %i.foa = fadd fast <8 x float> %i.fnz, %reass.mul176.i77.i
  br label %bb.fe

.preheader177.loopexit.i86.i:                     ; preds = %bb.fe
  %i.fob = and i32 %i.eqc, 2147483640
  br label %.preheader177.i49.i

.preheader177.i49.i:                              ; preds = %.preheader177.loopexit.i86.i, %bb.fd
  %.028.lcssa.i50.i = phi ptr [ %2, %bb.fd ], [ %i.frc, %.preheader177.loopexit.i86.i ] ; 2 uses
  %.025.lcssa.i51.i = phi i32 [ 0, %bb.fd ], [ %i.fob, %.preheader177.loopexit.i86.i ] ; 3 uses
  %.0.lcssa.i52.i = phi ptr [ %1, %bb.fd ], [ %i.frb, %.preheader177.loopexit.i86.i ] ; 2 uses
  %i.foc = or disjoint i32 %.025.lcssa.i51.i, 3
  %i.fod = icmp slt i32 %i.foc, %i.eqc
  br i1 %i.fod, label %.lr.ph186.i62.i, label %.preheader.i53.i

.lr.ph186.i62.i:                                  ; preds = %.preheader177.i49.i
  %i.foe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fmp, <4 x float> splat (float f0x00800000))
  %i.fof = bitcast <4 x float> %i.foe to <4 x i32> ; 2 uses
  %i.fog = lshr <4 x i32> %i.fof, splat (i32 23)
  %i.foh = and <4 x i32> %i.fof, splat (i32 -2139095041)
  %i.foi = or disjoint <4 x i32> %i.foh, splat (i32 1056964608)
  %i.foj = bitcast <4 x i32> %i.foi to <4 x float> ; 3 uses
  %i.fok = add nsw <4 x i32> %i.fog, splat (i32 -127)
  %i.fol = sitofp fast <4 x i32> %i.fok to <4 x float> ; 2 uses
  %i.fom = fadd fast <4 x float> %i.fol, splat (float 1.000000e+00)
  %i.fon = fcmp fast olt <4 x float> %i.foj, splat (float f0x3F3504F3) ; 2 uses
  %i.foo = select <4 x i1> %i.fon, <4 x float> %i.foj, <4 x float> zeroinitializer
  %i.fop = fadd fast <4 x float> %i.foj, splat (float -1.000000e+00)
  %i.foq = select fast <4 x i1> %i.fon, <4 x float> %i.fol, <4 x float> %i.fom
  %i.for = fadd fast <4 x float> %i.fop, %i.foo   ; 12 uses
  %i.fos = fmul fast <4 x float> %i.for, %i.for
  %i.fot = fmul fast <4 x float> %i.for, splat (float f0x3D9021BB)
  %i.fou = fadd fast <4 x float> %i.fot, splat (float f0xBDEBD1B8)
  %i.fov = fmul fast <4 x float> %i.fou, %i.for
  %i.fow = fadd fast <4 x float> %i.fov, splat (float f0x3DEF251A)
  %i.fox = fmul fast <4 x float> %i.fow, %i.for
  %i.foy = fadd fast <4 x float> %i.fox, splat (float f0xBDFE5D4F)
  %i.foz = fmul fast <4 x float> %i.foy, %i.for
  %i.fpa = fadd fast <4 x float> %i.foz, splat (float f0x3E11E9BF)
  %i.fpb = fmul fast <4 x float> %i.fpa, %i.for
  %i.fpc = fadd fast <4 x float> %i.fpb, splat (float f0xBE2AAE50)
  %i.fpd = fmul fast <4 x float> %i.fpc, %i.for
  %i.fpe = fadd fast <4 x float> %i.fpd, splat (float f0x3E4CCEAC)
  %i.fpf = fmul fast <4 x float> %i.fpe, %i.for
  %i.fpg = fadd fast <4 x float> %i.fpf, splat (float f0xBE7FFFFC)
  %i.fph = fmul fast <4 x float> %i.fpg, %i.for
  %i.fpi = fadd fast <4 x float> %i.fph, splat (float f0x3EAAAAAA)
  %i.fpj = fmul fast <4 x float> %i.fpi, %i.for
  %reass.mul.i63.i = fmul fast <4 x float> %i.foq, splat (float f0x3F317218)
  %reass.add172.i64.i = fadd fast <4 x float> %i.fpj, splat (float -5.000000e-01)
  %reass.mul173.i65.i = fmul fast <4 x float> %i.fos, %reass.add172.i64.i
  %i.fpk = fadd fast <4 x float> %reass.mul.i63.i, %i.for
  %i.fpl = fadd fast <4 x float> %i.fpk, %reass.mul173.i65.i
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fe, %.lr.ph.i69.i
  %.0180.i78.i = phi ptr [ %1, %.lr.ph.i69.i ], [ %i.frb, %bb.fe ] ; 2 uses
  %.025179.i79.i = phi i32 [ 0, %.lr.ph.i69.i ], [ %i.frd, %bb.fe ]
  %.028178.i80.i = phi ptr [ %2, %.lr.ph.i69.i ], [ %i.frc, %bb.fe ] ; 2 uses
  %i.fpm = load <8 x i16>, ptr %.0180.i78.i, align 1, !tbaa !60 ; 2 uses
  %i.fpn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fpm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fpo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fpm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fpp = shufflevector <8 x i16> %i.fpn, <8 x i16> %i.fpo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fpq = bitcast <16 x i16> %i.fpp to <8 x float>
  %i.fpr = fmul fast <8 x float> %i.foa, %i.fpq
  %i.fps = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fpr, <8 x float> splat (float f0x42B0C0A5))
  %i.fpt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fps, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fpu = fmul fast <8 x float> %i.fpt, splat (float f0x3FB8AA3B)
  %i.fpv = fadd fast <8 x float> %i.fpu, splat (float 5.000000e-01) ; 2 uses
  %i.fpw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fpv, i32 1) ; 2 uses
  %i.fpx = fcmp fast ogt <8 x float> %i.fpw, %i.fpv
  %i.fpy = select <8 x i1> %i.fpx, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fpz = fsub fast <8 x float> %i.fpw, %i.fpy   ; 2 uses
  %i.fqa = fmul fast <8 x float> %i.fpz, splat (float f0x3F317218)
  %i.fqb = fsub fast <8 x float> %i.fpt, %i.fqa   ; 8 uses
  %i.fqc = fmul fast <8 x float> %i.fqb, %i.fqb
  %i.fqd = fmul fast <8 x float> %i.fqb, splat (float f0x39506967)
  %i.fqe = fadd fast <8 x float> %i.fqd, splat (float f0x3AB743CE)
  %i.fqf = fmul fast <8 x float> %i.fqe, %i.fqb
  %i.fqg = fadd fast <8 x float> %i.fqf, splat (float f0x3C088908)
  %i.fqh = fmul fast <8 x float> %i.fqg, %i.fqb
  %i.fqi = fadd fast <8 x float> %i.fqh, splat (float f0x3D2AA9C1)
  %i.fqj = fmul fast <8 x float> %i.fqi, %i.fqb
  %i.fqk = fadd fast <8 x float> %i.fqj, splat (float f0x3E2AAAAA)
  %i.fql = fmul fast <8 x float> %i.fqk, %i.fqb
  %i.fqm = fadd fast <8 x float> %i.fql, splat (float 5.000000e-01)
  %i.fqn = fmul fast <8 x float> %i.fqc, %i.fqm
  %i.fqo = fadd fast <8 x float> %i.fqb, splat (float 1.000000e+00)
  %i.fqp = fadd fast <8 x float> %i.fqo, %i.fqn
  %i.fqq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fpz)
  %i.fqr = shl <8 x i32> %i.fqq, splat (i32 23)
  %i.fqs = add <8 x i32> %i.fqr, splat (i32 1065353216)
  %i.fqt = bitcast <8 x i32> %i.fqs to <8 x float>
  %i.fqu = fmul fast <8 x float> %i.fqp, %i.fqt
  %i.fqv = bitcast <8 x float> %i.fqu to <8 x i32> ; 2 uses
  %i.fqw = shufflevector <8 x i32> %i.fqv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fqx = shufflevector <8 x i32> %i.fqv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fqy = lshr <4 x i32> %i.fqw, splat (i32 16)
  %i.fqz = lshr <4 x i32> %i.fqx, splat (i32 16)
  %i.fra = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fqy, <4 x i32> %i.fqz)
  store <8 x i16> %i.fra, ptr %.028178.i80.i, align 1, !tbaa !60
  %i.frb = getelementptr inbounds nuw i8, ptr %.0180.i78.i, i64 16 ; 2 uses
  %i.frc = getelementptr inbounds nuw i8, ptr %.028178.i80.i, i64 16 ; 2 uses
  %i.frd = add nuw nsw i32 %.025179.i79.i, 8      ; 2 uses
  %i.fre = or disjoint i32 %i.frd, 7
  %i.frf = icmp slt i32 %i.fre, %i.eqc
  br i1 %i.frf, label %bb.fe, label %.preheader177.loopexit.i86.i, !llvm.loop !769

.preheader.i53.i:                                 ; preds = %bb.ff, %.preheader177.i49.i
  %.129.lcssa.i54.i = phi ptr [ %.028.lcssa.i50.i, %.preheader177.i49.i ], [ %i.fwa, %bb.ff ] ; 6 uses
  %.126.lcssa.i55.i = phi i32 [ %.025.lcssa.i51.i, %.preheader177.i49.i ], [ %i.fwb, %bb.ff ] ; 5 uses
  %.1.lcssa.i56.i = phi ptr [ %.0.lcssa.i52.i, %.preheader177.i49.i ], [ %i.fvz, %bb.ff ] ; 6 uses
  %i.frg = icmp slt i32 %.126.lcssa.i55.i, %i.eqc
  br i1 %i.frg, label %iter.check5911, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5911:                                   ; preds = %.preheader.i53.i
  %.129.lcssa.i54.i5895 = ptrtoaddr ptr %.129.lcssa.i54.i to i64
  %.1.lcssa.i56.i5894 = ptrtoaddr ptr %.1.lcssa.i56.i to i64
  %i.frh = xor i32 %.126.lcssa.i55.i, -1
  %i.fri = add i32 %i.eqc, %i.frh                 ; 3 uses
  %i.frj = zext i32 %i.fri to i64
  %i.frk = add nuw nsw i64 %i.frj, 1              ; 5 uses
  %min.iters.check5896 = icmp ult i32 %i.fri, 3
  %i.frl = sub i64 %.1.lcssa.i56.i5894, %.129.lcssa.i54.i5895
  %diff.check5898 = icmp ugt i64 %i.frl, -32
  %or.cond7110 = select i1 %min.iters.check5896, i1 true, i1 %diff.check5898
  br i1 %or.cond7110, label %.lr.ph193.i57.i.preheader, label %vector.main.loop.iter.check5899

vector.main.loop.iter.check5899:                  ; preds = %iter.check5911
  %min.iters.check5900 = icmp ult i32 %i.fri, 15
  br i1 %min.iters.check5900, label %vec.epilog.ph5915, label %vector.ph5901

vector.ph5901:                                    ; preds = %vector.main.loop.iter.check5899
  %i.frm = and i64 %i.frk, 12
  %n.vec5902 = and i64 %i.frk, 8589934576         ; 5 uses
  %i.frn = shl nuw nsw i64 %n.vec5902, 1          ; 2 uses
  %i.fro = getelementptr i8, ptr %.1.lcssa.i56.i, i64 %i.frn
  %i.frp = trunc i64 %n.vec5902 to i32
  %i.frq = add i32 %.126.lcssa.i55.i, %i.frp
  %i.frr = getelementptr i8, ptr %.129.lcssa.i54.i, i64 %i.frn
  %i.frs = insertelement <8 x float> poison, float %i.fly, i64 0
  %i.frt = shufflevector <8 x float> %i.frs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fru = insertelement <4 x float> poison, float %i.fly, i64 0
  %i.frv = shufflevector <4 x float> %i.fru, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5903

vector.body5903:                                  ; preds = %vector.ph5901, %vector.body5903
  %index5904 = phi i64 [ 0, %vector.ph5901 ], [ %index.next5908, %vector.body5903 ] ; 2 uses
  %i.frw = shl i64 %index5904, 1                  ; 2 uses
  %next.gep5905 = getelementptr i8, ptr %.1.lcssa.i56.i, i64 %i.frw
  %next.gep5906 = getelementptr i8, ptr %.129.lcssa.i54.i, i64 %i.frw
  %wide.load5907 = load <16 x i16>, ptr %next.gep5905, align 2, !tbaa !57
  %i.frx = zext <16 x i16> %wide.load5907 to <16 x i32>
  %i.fry = shl nuw <16 x i32> %i.frx, splat (i32 16)
  %i.frz = bitcast <16 x i32> %i.fry to <16 x float> ; 6 uses
  %i.fsa = extractelement <16 x float> %i.frz, i64 0
  %i.fsb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fsa)
  %i.fsc = extractelement <16 x float> %i.frz, i64 1
  %i.fsd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fsc)
  %i.fse = extractelement <16 x float> %i.frz, i64 2
  %i.fsf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fse)
  %i.fsg = extractelement <16 x float> %i.frz, i64 3
  %i.fsh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fsg)
  %i.fsi = shufflevector <16 x float> %i.frz, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fsj = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.frv, <4 x float> %i.fsi)
  %i.fsk = shufflevector <16 x float> %i.frz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fsl = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.frt, <8 x float> %i.fsk)
  %i.fsm = insertelement <16 x float> poison, float %i.fsb, i64 0
  %i.fsn = insertelement <16 x float> %i.fsm, float %i.fsd, i64 1
  %i.fso = insertelement <16 x float> %i.fsn, float %i.fsf, i64 2
  %i.fsp = insertelement <16 x float> %i.fso, float %i.fsh, i64 3
  %i.fsq = shufflevector <4 x float> %i.fsj, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fsr = shufflevector <16 x float> %i.fsp, <16 x float> %i.fsq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fss = shufflevector <8 x float> %i.fsl, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fst = shufflevector <16 x float> %i.fsr, <16 x float> %i.fss, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fsu = bitcast <16 x float> %i.fst to <16 x i32>
  %i.fsv = lshr <16 x i32> %i.fsu, splat (i32 16)
  %i.fsw = trunc nuw <16 x i32> %i.fsv to <16 x i16>
  store <16 x i16> %i.fsw, ptr %next.gep5906, align 2, !tbaa !57
  %index.next5908 = add nuw i64 %index5904, 16    ; 2 uses
  %i.fsx = icmp eq i64 %index.next5908, %n.vec5902
  br i1 %i.fsx, label %middle.block5909, label %vector.body5903, !llvm.loop !770

middle.block5909:                                 ; preds = %vector.body5903
  %cmp.n5910 = icmp eq i64 %i.frk, %n.vec5902
  br i1 %cmp.n5910, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5912

vec.epilog.iter.check5912:                        ; preds = %middle.block5909
  %min.epilog.iters.check5914 = icmp eq i64 %i.frm, 0
  br i1 %min.epilog.iters.check5914, label %.lr.ph193.i57.i.preheader, label %vec.epilog.ph5915, !prof !64

vec.epilog.ph5915:                                ; preds = %vector.main.loop.iter.check5899, %vec.epilog.iter.check5912
  %vec.epilog.resume.val5916 = phi i64 [ %n.vec5902, %vec.epilog.iter.check5912 ], [ 0, %vector.main.loop.iter.check5899 ]
  %n.vec5917 = and i64 %i.frk, 8589934588         ; 4 uses
  %i.fsy = shl nuw nsw i64 %n.vec5917, 1          ; 2 uses
  %i.fsz = getelementptr i8, ptr %.1.lcssa.i56.i, i64 %i.fsy
  %i.fta = trunc i64 %n.vec5917 to i32
  %i.ftb = add i32 %.126.lcssa.i55.i, %i.fta
  %i.ftc = getelementptr i8, ptr %.129.lcssa.i54.i, i64 %i.fsy
  br label %vec.epilog.vector.body5918

vec.epilog.vector.body5918:                       ; preds = %vec.epilog.vector.body5918, %vec.epilog.ph5915
  %index5919 = phi i64 [ %vec.epilog.resume.val5916, %vec.epilog.ph5915 ], [ %index.next5923, %vec.epilog.vector.body5918 ] ; 2 uses
  %i.ftd = shl i64 %index5919, 1                  ; 2 uses
  %next.gep5920 = getelementptr i8, ptr %.1.lcssa.i56.i, i64 %i.ftd
  %next.gep5921 = getelementptr i8, ptr %.129.lcssa.i54.i, i64 %i.ftd
  %wide.load5922 = load <4 x i16>, ptr %next.gep5920, align 2, !tbaa !57
  %i.fte = zext <4 x i16> %wide.load5922 to <4 x i32>
  %i.ftf = shl nuw <4 x i32> %i.fte, splat (i32 16)
  %i.ftg = bitcast <4 x i32> %i.ftf to <4 x float> ; 4 uses
  %i.fth = extractelement <4 x float> %i.ftg, i64 0
  %i.fti = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fth)
  %i.ftj = extractelement <4 x float> %i.ftg, i64 1
  %i.ftk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.ftj)
  %i.ftl = extractelement <4 x float> %i.ftg, i64 2
  %i.ftm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.ftl)
  %i.ftn = extractelement <4 x float> %i.ftg, i64 3
  %i.fto = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.ftn)
  %i.ftp = insertelement <4 x float> poison, float %i.fti, i64 0
  %i.ftq = insertelement <4 x float> %i.ftp, float %i.ftk, i64 1
  %i.ftr = insertelement <4 x float> %i.ftq, float %i.ftm, i64 2
  %i.fts = insertelement <4 x float> %i.ftr, float %i.fto, i64 3
  %i.ftt = bitcast <4 x float> %i.fts to <4 x i32>
  %i.ftu = lshr <4 x i32> %i.ftt, splat (i32 16)
  %i.ftv = trunc nuw <4 x i32> %i.ftu to <4 x i16>
  store <4 x i16> %i.ftv, ptr %next.gep5921, align 2, !tbaa !57
  %index.next5923 = add nuw i64 %index5919, 4     ; 2 uses
  %i.ftw = icmp eq i64 %index.next5923, %n.vec5917
  br i1 %i.ftw, label %vec.epilog.middle.block5924, label %vec.epilog.vector.body5918, !llvm.loop !771

vec.epilog.middle.block5924:                      ; preds = %vec.epilog.vector.body5918
  %cmp.n5925 = icmp eq i64 %i.frk, %n.vec5917
  br i1 %cmp.n5925, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i57.i.preheader

.lr.ph193.i57.i.preheader:                        ; preds = %iter.check5911, %vec.epilog.iter.check5912, %vec.epilog.middle.block5924
  %.2192.i58.i.ph = phi ptr [ %.1.lcssa.i56.i, %iter.check5911 ], [ %i.fro, %vec.epilog.iter.check5912 ], [ %i.fsz, %vec.epilog.middle.block5924 ] ; 3 uses
  %.227191.i59.i.ph = phi i32 [ %.126.lcssa.i55.i, %iter.check5911 ], [ %i.frq, %vec.epilog.iter.check5912 ], [ %i.ftb, %vec.epilog.middle.block5924 ] ; 4 uses
  %.230190.i60.i.ph = phi ptr [ %.129.lcssa.i54.i, %iter.check5911 ], [ %i.frr, %vec.epilog.iter.check5912 ], [ %i.ftc, %vec.epilog.middle.block5924 ] ; 3 uses
  %i.ftx = sub i32 %i.eqc, %.227191.i59.i.ph
  %.neg8043 = add i32 %.227191.i59.i.ph, 1
  %xtraiter7883 = and i32 %i.ftx, 1
  %lcmp.mod7884.not = icmp eq i32 %xtraiter7883, 0
  br i1 %lcmp.mod7884.not, label %.lr.ph193.i57.i.prol.loopexit, label %.lr.ph193.i57.i.prol

.lr.ph193.i57.i.prol:                             ; preds = %.lr.ph193.i57.i.preheader
  %i.fty = getelementptr inbounds nuw i8, ptr %.2192.i58.i.ph, i64 2
  %i.ftz = load i16, ptr %.2192.i58.i.ph, align 2, !tbaa !57
  %i.fua = zext i16 %i.ftz to i32
  %i.fub = shl nuw i32 %i.fua, 16
  %i.fuc = bitcast i32 %i.fub to float
  %i.fud = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fuc)
  %i.fue = bitcast float %i.fud to i32
  %i.fuf = lshr i32 %i.fue, 16
  %i.fug = trunc nuw i32 %i.fuf to i16
  %i.fuh = getelementptr inbounds nuw i8, ptr %.230190.i60.i.ph, i64 2
  store i16 %i.fug, ptr %.230190.i60.i.ph, align 2, !tbaa !57
  %i.fui = add nuw nsw i32 %.227191.i59.i.ph, 1
  br label %.lr.ph193.i57.i.prol.loopexit

.lr.ph193.i57.i.prol.loopexit:                    ; preds = %.lr.ph193.i57.i.prol, %.lr.ph193.i57.i.preheader
  %.2192.i58.i.unr = phi ptr [ %.2192.i58.i.ph, %.lr.ph193.i57.i.preheader ], [ %i.fty, %.lr.ph193.i57.i.prol ]
  %.227191.i59.i.unr = phi i32 [ %.227191.i59.i.ph, %.lr.ph193.i57.i.preheader ], [ %i.fui, %.lr.ph193.i57.i.prol ]
  %.230190.i60.i.unr = phi ptr [ %.230190.i60.i.ph, %.lr.ph193.i57.i.preheader ], [ %i.fuh, %.lr.ph193.i57.i.prol ]
  %i.fuj = icmp eq i32 %i.eqc, %.neg8043
  br i1 %i.fuj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i57.i

bb.ff:                                            ; preds = %bb.ff, %.lr.ph186.i62.i
  %.1185.i66.i = phi ptr [ %.0.lcssa.i52.i, %.lr.ph186.i62.i ], [ %i.fvz, %bb.ff ] ; 2 uses
  %.126184.i67.i = phi i32 [ %.025.lcssa.i51.i, %.lr.ph186.i62.i ], [ %i.fwb, %bb.ff ]
  %.129183.i68.i = phi ptr [ %.028.lcssa.i50.i, %.lr.ph186.i62.i ], [ %i.fwa, %bb.ff ] ; 2 uses
  %i.fuk = load i64, ptr %.1185.i66.i, align 1, !tbaa !60
  %i.ful = insertelement <2 x i64> poison, i64 %i.fuk, i64 0
  %i.fum = bitcast <2 x i64> %i.ful to <8 x i16>
  %i.fun = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fum, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fuo = bitcast <8 x i16> %i.fun to <4 x float>
  %i.fup = fmul fast <4 x float> %i.fpl, %i.fuo
  %i.fuq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fup, <4 x float> splat (float f0x42B0C0A5))
  %i.fur = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fuq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fus = fmul fast <4 x float> %i.fur, splat (float f0x3FB8AA3B)
  %i.fut = fadd fast <4 x float> %i.fus, splat (float 5.000000e-01) ; 2 uses
  %i.fuu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fut)
  %i.fuv = sitofp fast <4 x i32> %i.fuu to <4 x float> ; 2 uses
  %i.fuw = fcmp fast olt <4 x float> %i.fut, %i.fuv
  %i.fux = select <4 x i1> %i.fuw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fuy = fsub fast <4 x float> %i.fuv, %i.fux   ; 2 uses
  %i.fuz = fmul fast <4 x float> %i.fuy, splat (float f0x3F317218)
  %i.fva = fsub fast <4 x float> %i.fur, %i.fuz   ; 8 uses
  %i.fvb = fmul fast <4 x float> %i.fva, %i.fva
  %i.fvc = fmul fast <4 x float> %i.fva, splat (float f0x39506967)
  %i.fvd = fadd fast <4 x float> %i.fvc, splat (float f0x3AB743CE)
  %i.fve = fmul fast <4 x float> %i.fvd, %i.fva
  %i.fvf = fadd fast <4 x float> %i.fve, splat (float f0x3C088908)
  %i.fvg = fmul fast <4 x float> %i.fvf, %i.fva
  %i.fvh = fadd fast <4 x float> %i.fvg, splat (float f0x3D2AA9C1)
  %i.fvi = fmul fast <4 x float> %i.fvh, %i.fva
  %i.fvj = fadd fast <4 x float> %i.fvi, splat (float f0x3E2AAAAA)
  %i.fvk = fmul fast <4 x float> %i.fvj, %i.fva
  %i.fvl = fadd fast <4 x float> %i.fvk, splat (float 5.000000e-01)
  %i.fvm = fmul fast <4 x float> %i.fvb, %i.fvl
  %i.fvn = fadd fast <4 x float> %i.fva, splat (float 1.000000e+00)
  %i.fvo = fadd fast <4 x float> %i.fvn, %i.fvm
  %i.fvp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fuy)
  %i.fvq = shl <4 x i32> %i.fvp, splat (i32 23)
  %i.fvr = add <4 x i32> %i.fvq, splat (i32 1065353216)
  %i.fvs = bitcast <4 x i32> %i.fvr to <4 x float>
  %i.fvt = fmul fast <4 x float> %i.fvo, %i.fvs
  %i.fvu = bitcast <4 x float> %i.fvt to <4 x i32>
  %i.fvv = lshr <4 x i32> %i.fvu, splat (i32 16)
  %i.fvw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fvv, <4 x i32> poison)
  %i.fvx = bitcast <8 x i16> %i.fvw to <2 x i64>
  %i.fvy = extractelement <2 x i64> %i.fvx, i64 0
  store i64 %i.fvy, ptr %.129183.i68.i, align 1, !tbaa !60
  %i.fvz = getelementptr inbounds nuw i8, ptr %.1185.i66.i, i64 8 ; 2 uses
  %i.fwa = getelementptr inbounds nuw i8, ptr %.129183.i68.i, i64 8 ; 2 uses
  %i.fwb = add nuw nsw i32 %.126184.i67.i, 4      ; 3 uses
  %i.fwc = or disjoint i32 %i.fwb, 3
  %i.fwd = icmp slt i32 %i.fwc, %i.eqc
  br i1 %i.fwd, label %bb.ff, label %.preheader.i53.i, !llvm.loop !772

.lr.ph193.i57.i:                                  ; preds = %.lr.ph193.i57.i.prol.loopexit, %.lr.ph193.i57.i
  %.2192.i58.i = phi ptr [ %i.fwo, %.lr.ph193.i57.i ], [ %.2192.i58.i.unr, %.lr.ph193.i57.i.prol.loopexit ] ; 3 uses
  %.227191.i59.i = phi i32 [ %i.fwy, %.lr.ph193.i57.i ], [ %.227191.i59.i.unr, %.lr.ph193.i57.i.prol.loopexit ]
  %.230190.i60.i = phi ptr [ %i.fwx, %.lr.ph193.i57.i ], [ %.230190.i60.i.unr, %.lr.ph193.i57.i.prol.loopexit ] ; 3 uses
  %i.fwe = getelementptr inbounds nuw i8, ptr %.2192.i58.i, i64 2
  %i.fwf = load i16, ptr %.2192.i58.i, align 2, !tbaa !57
  %i.fwg = zext i16 %i.fwf to i32
  %i.fwh = shl nuw i32 %i.fwg, 16
  %i.fwi = bitcast i32 %i.fwh to float
  %i.fwj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fwi)
  %i.fwk = bitcast float %i.fwj to i32
  %i.fwl = lshr i32 %i.fwk, 16
  %i.fwm = trunc nuw i32 %i.fwl to i16
  %i.fwn = getelementptr inbounds nuw i8, ptr %.230190.i60.i, i64 2
  store i16 %i.fwm, ptr %.230190.i60.i, align 2, !tbaa !57
  %i.fwo = getelementptr inbounds nuw i8, ptr %.2192.i58.i, i64 4
  %i.fwp = load i16, ptr %i.fwe, align 2, !tbaa !57
  %i.fwq = zext i16 %i.fwp to i32
  %i.fwr = shl nuw i32 %i.fwq, 16
  %i.fws = bitcast i32 %i.fwr to float
  %i.fwt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.fly, float %i.fws)
  %i.fwu = bitcast float %i.fwt to i32
  %i.fwv = lshr i32 %i.fwu, 16
  %i.fww = trunc nuw i32 %i.fwv to i16
  %i.fwx = getelementptr inbounds nuw i8, ptr %.230190.i60.i, i64 4
  store i16 %i.fww, ptr %i.fwn, align 2, !tbaa !57
  %i.fwy = add nuw nsw i32 %.227191.i59.i, 2      ; 2 uses
  %exitcond.not.i61.i.1 = icmp eq i32 %i.fwy, %i.eqc
  br i1 %exitcond.not.i61.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i57.i, !llvm.loop !773

bb.fg:                                            ; preds = %bb.ey, %bb.ep
  %i.fwz = icmp eq i32 %6, 1
  br i1 %i.fwz, label %bb.fh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.fh:                                            ; preds = %bb.fg
  %i.fxa = icmp eq i32 %3, %4
  br i1 %i.fxa, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  switch i32 %.sroa.speculated.i689, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i91.i
    i32 4, label %.preheader167.i.i
  ]

.preheader167.i.i:                                ; preds = %bb.fi
  %i.fxb = icmp sgt i32 %.sroa.speculated122.i, 0
  br i1 %i.fxb, label %.lr.ph.i88.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i91.i:                                 ; preds = %bb.fi
  %i.fxc = icmp sgt i32 %.sroa.speculated122.i, 0
  br i1 %i.fxc, label %.lr.ph177.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph177.i.i:                                    ; preds = %.preheader.i91.i, %.lr.ph177.i.i
  %.020176.i.i = phi ptr [ %i.gah, %.lr.ph177.i.i ], [ %0, %.preheader.i91.i ] ; 2 uses
  %.021175.i.i = phi i32 [ %i.gak, %.lr.ph177.i.i ], [ 0, %.preheader.i91.i ]
  %.022174.i.i = phi ptr [ %i.gai, %.lr.ph177.i.i ], [ %1, %.preheader.i91.i ] ; 2 uses
  %.024173.i.i = phi ptr [ %i.gaj, %.lr.ph177.i.i ], [ %2, %.preheader.i91.i ] ; 2 uses
  %i.fxd = load <8 x i16>, ptr %.020176.i.i, align 1, !tbaa !60 ; 2 uses
  %i.fxe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fxd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fxf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fxd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fxg = shufflevector <8 x i16> %i.fxe, <8 x i16> %i.fxf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fxh = bitcast <16 x i16> %i.fxg to <8 x float>
  %i.fxi = load i16, ptr %.022174.i.i, align 2, !tbaa !57
  %i.fxj = zext i16 %i.fxi to i32
  %i.fxk = shl nuw i32 %i.fxj, 16
  %i.fxl = insertelement <8 x i32> poison, i32 %i.fxk, i64 0
  %i.fxm = bitcast <8 x i32> %i.fxl to <8 x float>
  %i.fxn = shufflevector <8 x float> %i.fxm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fxo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fxh, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.fxp = bitcast <8 x float> %i.fxo to <8 x i32>
  %i.fxq = bitcast <8 x float> %i.fxo to <8 x i32>
  %i.fxr = and <8 x i32> %i.fxq, splat (i32 -2139095041)
  %i.fxs = or disjoint <8 x i32> %i.fxr, splat (i32 1056964608)
  %i.fxt = bitcast <8 x i32> %i.fxs to <8 x float> ; 3 uses
  %i.fxu = lshr <8 x i32> %i.fxp, splat (i32 23)
  %i.fxv = add nsw <8 x i32> %i.fxu, splat (i32 -127)
  %i.fxw = sitofp fast <8 x i32> %i.fxv to <8 x float> ; 2 uses
  %i.fxx = fadd fast <8 x float> %i.fxw, splat (float 1.000000e+00)
  %i.fxy = fcmp fast olt <8 x float> %i.fxt, splat (float f0x3F3504F3) ; 2 uses
  %i.fxz = select <8 x i1> %i.fxy, <8 x float> %i.fxt, <8 x float> zeroinitializer
  %i.fya = fadd fast <8 x float> %i.fxt, splat (float -1.000000e+00)
  %i.fyb = select fast <8 x i1> %i.fxy, <8 x float> %i.fxw, <8 x float> %i.fxx
  %i.fyc = fadd fast <8 x float> %i.fya, %i.fxz   ; 12 uses
  %i.fyd = fmul fast <8 x float> %i.fyc, %i.fyc
  %i.fye = fmul fast <8 x float> %i.fyc, splat (float f0x3D9021BB)
  %i.fyf = fadd fast <8 x float> %i.fye, splat (float f0xBDEBD1B8)
  %i.fyg = fmul fast <8 x float> %i.fyf, %i.fyc
  %i.fyh = fadd fast <8 x float> %i.fyg, splat (float f0x3DEF251A)
  %i.fyi = fmul fast <8 x float> %i.fyh, %i.fyc
  %i.fyj = fadd fast <8 x float> %i.fyi, splat (float f0xBDFE5D4F)
  %i.fyk = fmul fast <8 x float> %i.fyj, %i.fyc
  %i.fyl = fadd fast <8 x float> %i.fyk, splat (float f0x3E11E9BF)
  %i.fym = fmul fast <8 x float> %i.fyl, %i.fyc
  %i.fyn = fadd fast <8 x float> %i.fym, splat (float f0xBE2AAE50)
  %i.fyo = fmul fast <8 x float> %i.fyn, %i.fyc
  %i.fyp = fadd fast <8 x float> %i.fyo, splat (float f0x3E4CCEAC)
  %i.fyq = fmul fast <8 x float> %i.fyp, %i.fyc
  %i.fyr = fadd fast <8 x float> %i.fyq, splat (float f0xBE7FFFFC)
  %i.fys = fmul fast <8 x float> %i.fyr, %i.fyc
end_hunk_5
begin_hunk_6_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.gcp = fsub fast <4 x float> %i.gcg, %i.gco   ; 8 uses
  %i.gcq = fmul fast <4 x float> %i.gcp, %i.gcp
  %i.gcr = fmul fast <4 x float> %i.gcp, splat (float f0x39506967)
  %i.gcs = fadd fast <4 x float> %i.gcr, splat (float f0x3AB743CE)
  %i.gct = fmul fast <4 x float> %i.gcs, %i.gcp
  %i.gcu = fadd fast <4 x float> %i.gct, splat (float f0x3C088908)
  %i.gcv = fmul fast <4 x float> %i.gcu, %i.gcp
  %i.gcw = fadd fast <4 x float> %i.gcv, splat (float f0x3D2AA9C1)
  %i.gcx = fmul fast <4 x float> %i.gcw, %i.gcp
  %i.gcy = fadd fast <4 x float> %i.gcx, splat (float f0x3E2AAAAA)
  %i.gcz = fmul fast <4 x float> %i.gcy, %i.gcp
  %i.gda = fadd fast <4 x float> %i.gcz, splat (float 5.000000e-01)
  %i.gdb = fmul fast <4 x float> %i.gcq, %i.gda
  %i.gdc = fadd fast <4 x float> %i.gcp, splat (float 1.000000e+00)
  %i.gdd = fadd fast <4 x float> %i.gdc, %i.gdb
  %i.gde = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gcn)
  %i.gdf = shl <4 x i32> %i.gde, splat (i32 23)
  %i.gdg = add <4 x i32> %i.gdf, splat (i32 1065353216)
  %i.gdh = bitcast <4 x i32> %i.gdg to <4 x float>
  %i.gdi = fmul fast <4 x float> %i.gdd, %i.gdh
  %i.gdj = bitcast <4 x float> %i.gdi to <4 x i32>
  %i.gdk = lshr <4 x i32> %i.gdj, splat (i32 16)
  %i.gdl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gdk, <4 x i32> poison)
  %i.gdm = bitcast <8 x i16> %i.gdl to <2 x i64>
  %i.gdn = extractelement <2 x i64> %i.gdm, i64 0
  store i64 %i.gdn, ptr %.125169.i.i, align 1, !tbaa !60
  %i.gdo = getelementptr inbounds nuw i8, ptr %.1171.i.i, i64 8
  %i.gdp = getelementptr inbounds nuw i8, ptr %.123170.i.i, i64 2
  %i.gdq = getelementptr inbounds nuw i8, ptr %.125169.i.i, i64 8
  %i.gdr = add nuw nsw i32 %.0172.i.i, 1          ; 2 uses
  %exitcond.not.i90.i = icmp eq i32 %i.gdr, %.sroa.speculated122.i
  br i1 %exitcond.not.i90.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i88.i, !llvm.loop !775

bb.fj:                                            ; preds = %bb.fh
  %i.gds = icmp eq i32 %4, 1
  br i1 %i.gds, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %.val.i690 = load i16, ptr %1, align 2, !tbaa !57
  %i.gdt = zext i16 %.val.i690 to i32
  %i.gdu = shl nuw i32 %i.gdt, 16
  %i.gdv = bitcast i32 %i.gdu to float            ; 15 uses
  %i.gdw = insertelement <8 x float> poison, float %i.gdv, i64 0
  %i.gdx = shufflevector <8 x float> %i.gdw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gdy = icmp sgt i32 %i.eqc, 7
  br i1 %i.gdy, label %.lr.ph.i101.i, label %._crit_edge.i.i691

.lr.ph.i101.i:                                    ; preds = %bb.fk, %.lr.ph.i101.i
  %.0132.i.i = phi ptr [ %i.ggx, %.lr.ph.i101.i ], [ %0, %bb.fk ] ; 2 uses
  %.022131.i.i = phi i32 [ %i.ggz, %.lr.ph.i101.i ], [ 0, %bb.fk ]
  %.025130.i.i = phi ptr [ %i.ggy, %.lr.ph.i101.i ], [ %2, %bb.fk ] ; 2 uses
  %i.gdz = load <8 x i16>, ptr %.0132.i.i, align 1, !tbaa !60 ; 2 uses
  %i.gea = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gdz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.geb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gdz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gec = shufflevector <8 x i16> %i.gea, <8 x i16> %i.geb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ged = bitcast <16 x i16> %i.gec to <8 x float>
  %i.gee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ged, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gef = bitcast <8 x float> %i.gee to <8 x i32>
  %i.geg = bitcast <8 x float> %i.gee to <8 x i32>
  %i.geh = and <8 x i32> %i.geg, splat (i32 -2139095041)
  %i.gei = or disjoint <8 x i32> %i.geh, splat (i32 1056964608)
  %i.gej = bitcast <8 x i32> %i.gei to <8 x float> ; 3 uses
  %i.gek = lshr <8 x i32> %i.gef, splat (i32 23)
  %i.gel = add nsw <8 x i32> %i.gek, splat (i32 -127)
  %i.gem = sitofp fast <8 x i32> %i.gel to <8 x float> ; 2 uses
  %i.gen = fadd fast <8 x float> %i.gem, splat (float 1.000000e+00)
  %i.geo = fcmp fast olt <8 x float> %i.gej, splat (float f0x3F3504F3) ; 2 uses
  %i.gep = select <8 x i1> %i.geo, <8 x float> %i.gej, <8 x float> zeroinitializer
  %i.geq = fadd fast <8 x float> %i.gej, splat (float -1.000000e+00)
  %i.ger = select fast <8 x i1> %i.geo, <8 x float> %i.gem, <8 x float> %i.gen
  %i.ges = fadd fast <8 x float> %i.geq, %i.gep   ; 12 uses
  %i.get = fmul fast <8 x float> %i.ges, %i.ges
  %i.geu = fmul fast <8 x float> %i.ges, splat (float f0x3D9021BB)
  %i.gev = fadd fast <8 x float> %i.geu, splat (float f0xBDEBD1B8)
  %i.gew = fmul fast <8 x float> %i.gev, %i.ges
  %i.gex = fadd fast <8 x float> %i.gew, splat (float f0x3DEF251A)
  %i.gey = fmul fast <8 x float> %i.gex, %i.ges
  %i.gez = fadd fast <8 x float> %i.gey, splat (float f0xBDFE5D4F)
  %i.gfa = fmul fast <8 x float> %i.gez, %i.ges
  %i.gfb = fadd fast <8 x float> %i.gfa, splat (float f0x3E11E9BF)
  %i.gfc = fmul fast <8 x float> %i.gfb, %i.ges
  %i.gfd = fadd fast <8 x float> %i.gfc, splat (float f0xBE2AAE50)
  %i.gfe = fmul fast <8 x float> %i.gfd, %i.ges
  %i.gff = fadd fast <8 x float> %i.gfe, splat (float f0x3E4CCEAC)
  %i.gfg = fmul fast <8 x float> %i.gff, %i.ges
  %i.gfh = fadd fast <8 x float> %i.gfg, splat (float f0xBE7FFFFC)
  %i.gfi = fmul fast <8 x float> %i.gfh, %i.ges
  %i.gfj = fadd fast <8 x float> %i.gfi, splat (float f0x3EAAAAAA)
  %i.gfk = fmul fast <8 x float> %i.gfj, %i.ges
  %reass.mul127.i.i = fmul fast <8 x float> %i.ger, splat (float f0x3F317218)
  %reass.add128.i.i = fadd fast <8 x float> %i.gfk, splat (float -5.000000e-01)
  %reass.mul129.i.i = fmul fast <8 x float> %i.get, %reass.add128.i.i
  %i.gfl = fadd fast <8 x float> %reass.mul127.i.i, %i.ges
  %i.gfm = fadd fast <8 x float> %i.gfl, %reass.mul129.i.i
  %i.gfn = fmul fast <8 x float> %i.gfm, %i.gdx
  %i.gfo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gfn, <8 x float> splat (float f0x42B0C0A5))
  %i.gfp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gfo, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gfq = fmul fast <8 x float> %i.gfp, splat (float f0x3FB8AA3B)
  %i.gfr = fadd fast <8 x float> %i.gfq, splat (float 5.000000e-01) ; 2 uses
  %i.gfs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gfr, i32 1) ; 2 uses
  %i.gft = fcmp fast ogt <8 x float> %i.gfs, %i.gfr
  %i.gfu = select <8 x i1> %i.gft, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gfv = fsub fast <8 x float> %i.gfs, %i.gfu   ; 2 uses
  %i.gfw = fmul fast <8 x float> %i.gfv, splat (float f0x3F317218)
  %i.gfx = fsub fast <8 x float> %i.gfp, %i.gfw   ; 8 uses
  %i.gfy = fmul fast <8 x float> %i.gfx, %i.gfx
  %i.gfz = fmul fast <8 x float> %i.gfx, splat (float f0x39506967)
  %i.gga = fadd fast <8 x float> %i.gfz, splat (float f0x3AB743CE)
  %i.ggb = fmul fast <8 x float> %i.gga, %i.gfx
  %i.ggc = fadd fast <8 x float> %i.ggb, splat (float f0x3C088908)
  %i.ggd = fmul fast <8 x float> %i.ggc, %i.gfx
  %i.gge = fadd fast <8 x float> %i.ggd, splat (float f0x3D2AA9C1)
  %i.ggf = fmul fast <8 x float> %i.gge, %i.gfx
  %i.ggg = fadd fast <8 x float> %i.ggf, splat (float f0x3E2AAAAA)
  %i.ggh = fmul fast <8 x float> %i.ggg, %i.gfx
  %i.ggi = fadd fast <8 x float> %i.ggh, splat (float 5.000000e-01)
  %i.ggj = fmul fast <8 x float> %i.gfy, %i.ggi
  %i.ggk = fadd fast <8 x float> %i.gfx, splat (float 1.000000e+00)
  %i.ggl = fadd fast <8 x float> %i.ggk, %i.ggj
  %i.ggm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gfv)
  %i.ggn = shl <8 x i32> %i.ggm, splat (i32 23)
  %i.ggo = add <8 x i32> %i.ggn, splat (i32 1065353216)
  %i.ggp = bitcast <8 x i32> %i.ggo to <8 x float>
  %i.ggq = fmul fast <8 x float> %i.ggl, %i.ggp
  %i.ggr = bitcast <8 x float> %i.ggq to <8 x i32> ; 2 uses
  %i.ggs = shufflevector <8 x i32> %i.ggr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ggt = shufflevector <8 x i32> %i.ggr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ggu = lshr <4 x i32> %i.ggs, splat (i32 16)
  %i.ggv = lshr <4 x i32> %i.ggt, splat (i32 16)
  %i.ggw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ggu, <4 x i32> %i.ggv)
  store <8 x i16> %i.ggw, ptr %.025130.i.i, align 1, !tbaa !60
  %i.ggx = getelementptr inbounds nuw i8, ptr %.0132.i.i, i64 16 ; 2 uses
  %i.ggy = getelementptr inbounds nuw i8, ptr %.025130.i.i, i64 16 ; 2 uses
  %i.ggz = add nuw nsw i32 %.022131.i.i, 8        ; 2 uses
  %i.gha = or disjoint i32 %i.ggz, 7
  %i.ghb = icmp slt i32 %i.gha, %i.eqc
  br i1 %i.ghb, label %.lr.ph.i101.i, label %._crit_edge.loopexit.i.i694, !llvm.loop !776

._crit_edge.loopexit.i.i694:                      ; preds = %.lr.ph.i101.i
  %i.ghc = and i32 %i.eqc, 2147483640
  br label %._crit_edge.i.i691

._crit_edge.i.i691:                               ; preds = %._crit_edge.loopexit.i.i694, %bb.fk
  %.025.lcssa.i94.i = phi ptr [ %2, %bb.fk ], [ %i.ggy, %._crit_edge.loopexit.i.i694 ] ; 2 uses
  %.022.lcssa.i.i692 = phi i32 [ 0, %bb.fk ], [ %i.ghc, %._crit_edge.loopexit.i.i694 ] ; 3 uses
  %.0.lcssa.i95.i = phi ptr [ %0, %bb.fk ], [ %i.ggx, %._crit_edge.loopexit.i.i694 ] ; 2 uses
  %i.ghd = insertelement <4 x float> poison, float %i.gdv, i64 0
  %i.ghe = shufflevector <4 x float> %i.ghd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ghf = or disjoint i32 %.022.lcssa.i.i692, 3
  %i.ghg = icmp slt i32 %i.ghf, %i.eqc
  br i1 %i.ghg, label %.lr.ph139.i.i, label %.preheader.i96.i

.preheader.i96.i:                                 ; preds = %.lr.ph139.i.i, %._crit_edge.i.i691
  %.126.lcssa.i97.i = phi ptr [ %.025.lcssa.i94.i, %._crit_edge.i.i691 ], [ %i.gnj, %.lr.ph139.i.i ] ; 6 uses
  %.123.lcssa.i.i693 = phi i32 [ %.022.lcssa.i.i692, %._crit_edge.i.i691 ], [ %i.gnk, %.lr.ph139.i.i ] ; 5 uses
  %.1.lcssa.i98.i = phi ptr [ %.0.lcssa.i95.i, %._crit_edge.i.i691 ], [ %i.gni, %.lr.ph139.i.i ] ; 6 uses
  %i.ghh = icmp slt i32 %.123.lcssa.i.i693, %i.eqc
  br i1 %i.ghh, label %iter.check5872, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5872:                                   ; preds = %.preheader.i96.i
  %.126.lcssa.i97.i5856 = ptrtoaddr ptr %.126.lcssa.i97.i to i64
  %.1.lcssa.i98.i5855 = ptrtoaddr ptr %.1.lcssa.i98.i to i64
  %i.ghi = xor i32 %.123.lcssa.i.i693, -1
  %i.ghj = add i32 %i.eqc, %i.ghi                 ; 3 uses
  %i.ghk = zext i32 %i.ghj to i64
  %i.ghl = add nuw nsw i64 %i.ghk, 1              ; 5 uses
  %min.iters.check5857 = icmp ult i32 %i.ghj, 3
  %i.ghm = sub i64 %.1.lcssa.i98.i5855, %.126.lcssa.i97.i5856
  %diff.check5859 = icmp ugt i64 %i.ghm, -32
  %or.cond7111 = select i1 %min.iters.check5857, i1 true, i1 %diff.check5859
  br i1 %or.cond7111, label %.lr.ph146.i.i.preheader, label %vector.main.loop.iter.check5860

vector.main.loop.iter.check5860:                  ; preds = %iter.check5872
  %min.iters.check5861 = icmp ult i32 %i.ghj, 15
  br i1 %min.iters.check5861, label %vec.epilog.ph5876, label %vector.ph5862

vector.ph5862:                                    ; preds = %vector.main.loop.iter.check5860
  %i.ghn = and i64 %i.ghl, 12
  %n.vec5863 = and i64 %i.ghl, 8589934576         ; 5 uses
  %i.gho = shl nuw nsw i64 %n.vec5863, 1          ; 2 uses
  %i.ghp = getelementptr i8, ptr %.1.lcssa.i98.i, i64 %i.gho
  %i.ghq = trunc i64 %n.vec5863 to i32
  %i.ghr = add i32 %.123.lcssa.i.i693, %i.ghq
  %i.ghs = getelementptr i8, ptr %.126.lcssa.i97.i, i64 %i.gho
  %i.ght = insertelement <8 x float> poison, float %i.gdv, i64 0
  %i.ghu = shufflevector <8 x float> %i.ght, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ghv = insertelement <4 x float> poison, float %i.gdv, i64 0
  %i.ghw = shufflevector <4 x float> %i.ghv, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5864

vector.body5864:                                  ; preds = %vector.ph5862, %vector.body5864
  %index5865 = phi i64 [ 0, %vector.ph5862 ], [ %index.next5869, %vector.body5864 ] ; 2 uses
  %i.ghx = shl i64 %index5865, 1                  ; 2 uses
  %next.gep5866 = getelementptr i8, ptr %.1.lcssa.i98.i, i64 %i.ghx
  %next.gep5867 = getelementptr i8, ptr %.126.lcssa.i97.i, i64 %i.ghx
  %wide.load5868 = load <16 x i16>, ptr %next.gep5866, align 2, !tbaa !57
  %i.ghy = zext <16 x i16> %wide.load5868 to <16 x i32>
  %i.ghz = shl nuw <16 x i32> %i.ghy, splat (i32 16)
  %i.gia = bitcast <16 x i32> %i.ghz to <16 x float> ; 6 uses
  %i.gib = extractelement <16 x float> %i.gia, i64 0
  %i.gic = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gib, float %i.gdv)
  %i.gid = extractelement <16 x float> %i.gia, i64 1
  %i.gie = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gid, float %i.gdv)
  %i.gif = extractelement <16 x float> %i.gia, i64 2
  %i.gig = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gif, float %i.gdv)
  %i.gih = extractelement <16 x float> %i.gia, i64 3
  %i.gii = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gih, float %i.gdv)
  %i.gij = shufflevector <16 x float> %i.gia, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gik = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.gij, <4 x float> %i.ghw)
  %i.gil = shufflevector <16 x float> %i.gia, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gim = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.gil, <8 x float> %i.ghu)
  %i.gin = insertelement <16 x float> poison, float %i.gic, i64 0
  %i.gio = insertelement <16 x float> %i.gin, float %i.gie, i64 1
  %i.gip = insertelement <16 x float> %i.gio, float %i.gig, i64 2
  %i.giq = insertelement <16 x float> %i.gip, float %i.gii, i64 3
  %i.gir = shufflevector <4 x float> %i.gik, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gis = shufflevector <16 x float> %i.giq, <16 x float> %i.gir, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.git = shufflevector <8 x float> %i.gim, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.giu = shufflevector <16 x float> %i.gis, <16 x float> %i.git, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.giv = bitcast <16 x float> %i.giu to <16 x i32>
  %i.giw = lshr <16 x i32> %i.giv, splat (i32 16)
  %i.gix = trunc nuw <16 x i32> %i.giw to <16 x i16>
  store <16 x i16> %i.gix, ptr %next.gep5867, align 2, !tbaa !57
  %index.next5869 = add nuw i64 %index5865, 16    ; 2 uses
  %i.giy = icmp eq i64 %index.next5869, %n.vec5863
  br i1 %i.giy, label %middle.block5870, label %vector.body5864, !llvm.loop !777

middle.block5870:                                 ; preds = %vector.body5864
  %cmp.n5871 = icmp eq i64 %i.ghl, %n.vec5863
  br i1 %cmp.n5871, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5873

vec.epilog.iter.check5873:                        ; preds = %middle.block5870
  %min.epilog.iters.check5875 = icmp eq i64 %i.ghn, 0
  br i1 %min.epilog.iters.check5875, label %.lr.ph146.i.i.preheader, label %vec.epilog.ph5876, !prof !64

vec.epilog.ph5876:                                ; preds = %vector.main.loop.iter.check5860, %vec.epilog.iter.check5873
  %vec.epilog.resume.val5877 = phi i64 [ %n.vec5863, %vec.epilog.iter.check5873 ], [ 0, %vector.main.loop.iter.check5860 ]
  %n.vec5878 = and i64 %i.ghl, 8589934588         ; 4 uses
  %i.giz = shl nuw nsw i64 %n.vec5878, 1          ; 2 uses
  %i.gja = getelementptr i8, ptr %.1.lcssa.i98.i, i64 %i.giz
  %i.gjb = trunc i64 %n.vec5878 to i32
  %i.gjc = add i32 %.123.lcssa.i.i693, %i.gjb
  %i.gjd = getelementptr i8, ptr %.126.lcssa.i97.i, i64 %i.giz
  br label %vec.epilog.vector.body5879

vec.epilog.vector.body5879:                       ; preds = %vec.epilog.vector.body5879, %vec.epilog.ph5876
  %index5880 = phi i64 [ %vec.epilog.resume.val5877, %vec.epilog.ph5876 ], [ %index.next5884, %vec.epilog.vector.body5879 ] ; 2 uses
  %i.gje = shl i64 %index5880, 1                  ; 2 uses
  %next.gep5881 = getelementptr i8, ptr %.1.lcssa.i98.i, i64 %i.gje
  %next.gep5882 = getelementptr i8, ptr %.126.lcssa.i97.i, i64 %i.gje
  %wide.load5883 = load <4 x i16>, ptr %next.gep5881, align 2, !tbaa !57
  %i.gjf = zext <4 x i16> %wide.load5883 to <4 x i32>
  %i.gjg = shl nuw <4 x i32> %i.gjf, splat (i32 16)
  %i.gjh = bitcast <4 x i32> %i.gjg to <4 x float> ; 4 uses
  %i.gji = extractelement <4 x float> %i.gjh, i64 0
  %i.gjj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gji, float %i.gdv)
  %i.gjk = extractelement <4 x float> %i.gjh, i64 1
  %i.gjl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gjk, float %i.gdv)
  %i.gjm = extractelement <4 x float> %i.gjh, i64 2
  %i.gjn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gjm, float %i.gdv)
  %i.gjo = extractelement <4 x float> %i.gjh, i64 3
  %i.gjp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gjo, float %i.gdv)
  %i.gjq = insertelement <4 x float> poison, float %i.gjj, i64 0
  %i.gjr = insertelement <4 x float> %i.gjq, float %i.gjl, i64 1
  %i.gjs = insertelement <4 x float> %i.gjr, float %i.gjn, i64 2
  %i.gjt = insertelement <4 x float> %i.gjs, float %i.gjp, i64 3
  %i.gju = bitcast <4 x float> %i.gjt to <4 x i32>
  %i.gjv = lshr <4 x i32> %i.gju, splat (i32 16)
  %i.gjw = trunc nuw <4 x i32> %i.gjv to <4 x i16>
  store <4 x i16> %i.gjw, ptr %next.gep5882, align 2, !tbaa !57
  %index.next5884 = add nuw i64 %index5880, 4     ; 2 uses
  %i.gjx = icmp eq i64 %index.next5884, %n.vec5878
  br i1 %i.gjx, label %vec.epilog.middle.block5885, label %vec.epilog.vector.body5879, !llvm.loop !778

vec.epilog.middle.block5885:                      ; preds = %vec.epilog.vector.body5879
  %cmp.n5886 = icmp eq i64 %i.ghl, %n.vec5878
  br i1 %cmp.n5886, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph146.i.i.preheader

.lr.ph146.i.i.preheader:                          ; preds = %iter.check5872, %vec.epilog.iter.check5873, %vec.epilog.middle.block5885
  %.2145.i.i.ph = phi ptr [ %.1.lcssa.i98.i, %iter.check5872 ], [ %i.ghp, %vec.epilog.iter.check5873 ], [ %i.gja, %vec.epilog.middle.block5885 ] ; 3 uses
  %.224144.i.i.ph = phi i32 [ %.123.lcssa.i.i693, %iter.check5872 ], [ %i.ghr, %vec.epilog.iter.check5873 ], [ %i.gjc, %vec.epilog.middle.block5885 ] ; 4 uses
  %.227143.i.i.ph = phi ptr [ %.126.lcssa.i97.i, %iter.check5872 ], [ %i.ghs, %vec.epilog.iter.check5873 ], [ %i.gjd, %vec.epilog.middle.block5885 ] ; 3 uses
  %i.gjy = sub i32 %i.eqc, %.224144.i.i.ph
  %.neg8042 = add i32 %.224144.i.i.ph, 1
  %xtraiter7881 = and i32 %i.gjy, 1
  %lcmp.mod7882.not = icmp eq i32 %xtraiter7881, 0
  br i1 %lcmp.mod7882.not, label %.lr.ph146.i.i.prol.loopexit, label %.lr.ph146.i.i.prol

.lr.ph146.i.i.prol:                               ; preds = %.lr.ph146.i.i.preheader
  %i.gjz = getelementptr inbounds nuw i8, ptr %.2145.i.i.ph, i64 2
  %i.gka = load i16, ptr %.2145.i.i.ph, align 2, !tbaa !57
  %i.gkb = zext i16 %i.gka to i32
  %i.gkc = shl nuw i32 %i.gkb, 16
  %i.gkd = bitcast i32 %i.gkc to float
  %i.gke = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gkd, float %i.gdv)
  %i.gkf = bitcast float %i.gke to i32
  %i.gkg = lshr i32 %i.gkf, 16
  %i.gkh = trunc nuw i32 %i.gkg to i16
  %i.gki = getelementptr inbounds nuw i8, ptr %.227143.i.i.ph, i64 2
  store i16 %i.gkh, ptr %.227143.i.i.ph, align 2, !tbaa !57
  %i.gkj = add nuw nsw i32 %.224144.i.i.ph, 1
  br label %.lr.ph146.i.i.prol.loopexit

.lr.ph146.i.i.prol.loopexit:                      ; preds = %.lr.ph146.i.i.prol, %.lr.ph146.i.i.preheader
  %.2145.i.i.unr = phi ptr [ %.2145.i.i.ph, %.lr.ph146.i.i.preheader ], [ %i.gjz, %.lr.ph146.i.i.prol ]
  %.224144.i.i.unr = phi i32 [ %.224144.i.i.ph, %.lr.ph146.i.i.preheader ], [ %i.gkj, %.lr.ph146.i.i.prol ]
  %.227143.i.i.unr = phi ptr [ %.227143.i.i.ph, %.lr.ph146.i.i.preheader ], [ %i.gki, %.lr.ph146.i.i.prol ]
  %i.gkk = icmp eq i32 %i.eqc, %.neg8042
  br i1 %i.gkk, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph146.i.i

.lr.ph139.i.i:                                    ; preds = %._crit_edge.i.i691, %.lr.ph139.i.i
  %.1137.i.i = phi ptr [ %i.gni, %.lr.ph139.i.i ], [ %.0.lcssa.i95.i, %._crit_edge.i.i691 ] ; 2 uses
  %.123136.i.i = phi i32 [ %i.gnk, %.lr.ph139.i.i ], [ %.022.lcssa.i.i692, %._crit_edge.i.i691 ]
  %.126135.i.i = phi ptr [ %i.gnj, %.lr.ph139.i.i ], [ %.025.lcssa.i94.i, %._crit_edge.i.i691 ] ; 2 uses
  %i.gkl = load i64, ptr %.1137.i.i, align 1, !tbaa !60
  %i.gkm = insertelement <2 x i64> poison, i64 %i.gkl, i64 0
  %i.gkn = bitcast <2 x i64> %i.gkm to <8 x i16>
  %i.gko = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gkn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gkp = bitcast <8 x i16> %i.gko to <4 x float>
  %i.gkq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gkp, <4 x float> splat (float f0x00800000))
  %i.gkr = bitcast <4 x float> %i.gkq to <4 x i32> ; 2 uses
  %i.gks = lshr <4 x i32> %i.gkr, splat (i32 23)
  %i.gkt = and <4 x i32> %i.gkr, splat (i32 -2139095041)
  %i.gku = or disjoint <4 x i32> %i.gkt, splat (i32 1056964608)
  %i.gkv = bitcast <4 x i32> %i.gku to <4 x float> ; 3 uses
  %i.gkw = add nsw <4 x i32> %i.gks, splat (i32 -127)
  %i.gkx = sitofp fast <4 x i32> %i.gkw to <4 x float> ; 2 uses
  %i.gky = fadd fast <4 x float> %i.gkx, splat (float 1.000000e+00)
  %i.gkz = fcmp fast olt <4 x float> %i.gkv, splat (float f0x3F3504F3) ; 2 uses
  %i.gla = select <4 x i1> %i.gkz, <4 x float> %i.gkv, <4 x float> zeroinitializer
  %i.glb = fadd fast <4 x float> %i.gkv, splat (float -1.000000e+00)
  %i.glc = select fast <4 x i1> %i.gkz, <4 x float> %i.gkx, <4 x float> %i.gky
  %i.gld = fadd fast <4 x float> %i.glb, %i.gla   ; 12 uses
  %i.gle = fmul fast <4 x float> %i.gld, %i.gld
  %i.glf = fmul fast <4 x float> %i.gld, splat (float f0x3D9021BB)
  %i.glg = fadd fast <4 x float> %i.glf, splat (float f0xBDEBD1B8)
  %i.glh = fmul fast <4 x float> %i.glg, %i.gld
  %i.gli = fadd fast <4 x float> %i.glh, splat (float f0x3DEF251A)
  %i.glj = fmul fast <4 x float> %i.gli, %i.gld
  %i.glk = fadd fast <4 x float> %i.glj, splat (float f0xBDFE5D4F)
  %i.gll = fmul fast <4 x float> %i.glk, %i.gld
  %i.glm = fadd fast <4 x float> %i.gll, splat (float f0x3E11E9BF)
  %i.gln = fmul fast <4 x float> %i.glm, %i.gld
  %i.glo = fadd fast <4 x float> %i.gln, splat (float f0xBE2AAE50)
  %i.glp = fmul fast <4 x float> %i.glo, %i.gld
  %i.glq = fadd fast <4 x float> %i.glp, splat (float f0x3E4CCEAC)
  %i.glr = fmul fast <4 x float> %i.glq, %i.gld
  %i.gls = fadd fast <4 x float> %i.glr, splat (float f0xBE7FFFFC)
  %i.glt = fmul fast <4 x float> %i.gls, %i.gld
  %i.glu = fadd fast <4 x float> %i.glt, splat (float f0x3EAAAAAA)
  %i.glv = fmul fast <4 x float> %i.glu, %i.gld
  %reass.mul.i100.i = fmul fast <4 x float> %i.glc, splat (float f0x3F317218)
  %reass.add125.i.i = fadd fast <4 x float> %i.glv, splat (float -5.000000e-01)
  %reass.mul126.i.i = fmul fast <4 x float> %i.gle, %reass.add125.i.i
  %i.glw = fadd fast <4 x float> %reass.mul.i100.i, %i.gld
  %i.glx = fadd fast <4 x float> %i.glw, %reass.mul126.i.i
  %i.gly = fmul fast <4 x float> %i.glx, %i.ghe
  %i.glz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gly, <4 x float> splat (float f0x42B0C0A5))
  %i.gma = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.glz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gmb = fmul fast <4 x float> %i.gma, splat (float f0x3FB8AA3B)
  %i.gmc = fadd fast <4 x float> %i.gmb, splat (float 5.000000e-01) ; 2 uses
  %i.gmd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gmc)
  %i.gme = sitofp fast <4 x i32> %i.gmd to <4 x float> ; 2 uses
  %i.gmf = fcmp fast olt <4 x float> %i.gmc, %i.gme
  %i.gmg = select <4 x i1> %i.gmf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gmh = fsub fast <4 x float> %i.gme, %i.gmg   ; 2 uses
  %i.gmi = fmul fast <4 x float> %i.gmh, splat (float f0x3F317218)
  %i.gmj = fsub fast <4 x float> %i.gma, %i.gmi   ; 8 uses
  %i.gmk = fmul fast <4 x float> %i.gmj, %i.gmj
  %i.gml = fmul fast <4 x float> %i.gmj, splat (float f0x39506967)
  %i.gmm = fadd fast <4 x float> %i.gml, splat (float f0x3AB743CE)
  %i.gmn = fmul fast <4 x float> %i.gmm, %i.gmj
  %i.gmo = fadd fast <4 x float> %i.gmn, splat (float f0x3C088908)
  %i.gmp = fmul fast <4 x float> %i.gmo, %i.gmj
  %i.gmq = fadd fast <4 x float> %i.gmp, splat (float f0x3D2AA9C1)
  %i.gmr = fmul fast <4 x float> %i.gmq, %i.gmj
  %i.gms = fadd fast <4 x float> %i.gmr, splat (float f0x3E2AAAAA)
  %i.gmt = fmul fast <4 x float> %i.gms, %i.gmj
  %i.gmu = fadd fast <4 x float> %i.gmt, splat (float 5.000000e-01)
  %i.gmv = fmul fast <4 x float> %i.gmk, %i.gmu
  %i.gmw = fadd fast <4 x float> %i.gmj, splat (float 1.000000e+00)
  %i.gmx = fadd fast <4 x float> %i.gmw, %i.gmv
  %i.gmy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gmh)
  %i.gmz = shl <4 x i32> %i.gmy, splat (i32 23)
  %i.gna = add <4 x i32> %i.gmz, splat (i32 1065353216)
  %i.gnb = bitcast <4 x i32> %i.gna to <4 x float>
  %i.gnc = fmul fast <4 x float> %i.gmx, %i.gnb
  %i.gnd = bitcast <4 x float> %i.gnc to <4 x i32>
  %i.gne = lshr <4 x i32> %i.gnd, splat (i32 16)
  %i.gnf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gne, <4 x i32> poison)
  %i.gng = bitcast <8 x i16> %i.gnf to <2 x i64>
  %i.gnh = extractelement <2 x i64> %i.gng, i64 0
  store i64 %i.gnh, ptr %.126135.i.i, align 1, !tbaa !60
  %i.gni = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 8 ; 2 uses
  %i.gnj = getelementptr inbounds nuw i8, ptr %.126135.i.i, i64 8 ; 2 uses
  %i.gnk = add nuw nsw i32 %.123136.i.i, 4        ; 3 uses
  %i.gnl = or disjoint i32 %i.gnk, 3
  %i.gnm = icmp slt i32 %i.gnl, %i.eqc
  br i1 %i.gnm, label %.lr.ph139.i.i, label %.preheader.i96.i, !llvm.loop !779

.lr.ph146.i.i:                                    ; preds = %.lr.ph146.i.i.prol.loopexit, %.lr.ph146.i.i
  %.2145.i.i = phi ptr [ %i.gnx, %.lr.ph146.i.i ], [ %.2145.i.i.unr, %.lr.ph146.i.i.prol.loopexit ] ; 3 uses
  %.224144.i.i = phi i32 [ %i.goh, %.lr.ph146.i.i ], [ %.224144.i.i.unr, %.lr.ph146.i.i.prol.loopexit ]
  %.227143.i.i = phi ptr [ %i.gog, %.lr.ph146.i.i ], [ %.227143.i.i.unr, %.lr.ph146.i.i.prol.loopexit ] ; 3 uses
  %i.gnn = getelementptr inbounds nuw i8, ptr %.2145.i.i, i64 2
  %i.gno = load i16, ptr %.2145.i.i, align 2, !tbaa !57
  %i.gnp = zext i16 %i.gno to i32
  %i.gnq = shl nuw i32 %i.gnp, 16
  %i.gnr = bitcast i32 %i.gnq to float
  %i.gns = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gnr, float %i.gdv)
  %i.gnt = bitcast float %i.gns to i32
  %i.gnu = lshr i32 %i.gnt, 16
  %i.gnv = trunc nuw i32 %i.gnu to i16
  %i.gnw = getelementptr inbounds nuw i8, ptr %.227143.i.i, i64 2
  store i16 %i.gnv, ptr %.227143.i.i, align 2, !tbaa !57
  %i.gnx = getelementptr inbounds nuw i8, ptr %.2145.i.i, i64 4
  %i.gny = load i16, ptr %i.gnn, align 2, !tbaa !57
  %i.gnz = zext i16 %i.gny to i32
  %i.goa = shl nuw i32 %i.gnz, 16
  %i.gob = bitcast i32 %i.goa to float
  %i.goc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gob, float %i.gdv)
  %i.god = bitcast float %i.goc to i32
  %i.goe = lshr i32 %i.god, 16
  %i.gof = trunc nuw i32 %i.goe to i16
  %i.gog = getelementptr inbounds nuw i8, ptr %.227143.i.i, i64 4
  store i16 %i.gof, ptr %i.gnw, align 2, !tbaa !57
  %i.goh = add nuw nsw i32 %.224144.i.i, 2        ; 2 uses
  %exitcond.not.i99.i.1 = icmp eq i32 %i.goh, %i.eqc
  br i1 %exitcond.not.i99.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph146.i.i, !llvm.loop !780

bb.fl:                                            ; preds = %bb.fj
  %i.goi = icmp eq i32 %3, 1
  br i1 %i.goi, label %bb.fm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.fm:                                            ; preds = %bb.fl
  switch i32 %.sroa.speculated.i689, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.lr.ph170.i.i
    i32 4, label %.lr.ph.i104.i
  ]

.lr.ph170.i.i:                                    ; preds = %bb.fm
  %i.goj = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.gok = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.goj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gol = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.goj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gom = shufflevector <8 x i16> %i.gok, <8 x i16> %i.gol, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gon = bitcast <16 x i16> %i.gom to <8 x float>
  %i.goo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gon, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gop = bitcast <8 x float> %i.goo to <8 x i32>
  %i.goq = bitcast <8 x float> %i.goo to <8 x i32>
  %i.gor = and <8 x i32> %i.goq, splat (i32 -2139095041)
  %i.gos = or disjoint <8 x i32> %i.gor, splat (i32 1056964608)
  %i.got = bitcast <8 x i32> %i.gos to <8 x float> ; 3 uses
  %i.gou = lshr <8 x i32> %i.gop, splat (i32 23)
  %i.gov = add nsw <8 x i32> %i.gou, splat (i32 -127)
  %i.gow = sitofp fast <8 x i32> %i.gov to <8 x float> ; 2 uses
  %i.gox = fadd fast <8 x float> %i.gow, splat (float 1.000000e+00)
  %i.goy = fcmp fast olt <8 x float> %i.got, splat (float f0x3F3504F3) ; 2 uses
  %i.goz = select <8 x i1> %i.goy, <8 x float> %i.got, <8 x float> zeroinitializer
  %i.gpa = fadd fast <8 x float> %i.got, splat (float -1.000000e+00)
  %i.gpb = select fast <8 x i1> %i.goy, <8 x float> %i.gow, <8 x float> %i.gox
  %i.gpc = fadd fast <8 x float> %i.gpa, %i.goz   ; 12 uses
  %i.gpd = fmul fast <8 x float> %i.gpc, %i.gpc
end_hunk_6
begin_hunk_7_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.jdk = phi <4 x float> [ %i.jdb, %bb.hp ], [ %i.jdi, %bb.hq ]
  %i.jdl = phi fast <8 x float> [ %i.jdh, %bb.hp ], [ %i.jdj, %bb.hq ]
  %i.jdm = icmp sgt i32 %i.isc, 7
  br i1 %i.jdm, label %.lr.ph.i42.i988, label %.preheader164.i34.i

.lr.ph.i42.i988:                                  ; preds = %bb.hr
  %i.jdn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jdl, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.jdo = bitcast <8 x float> %i.jdn to <8 x i32>
  %i.jdp = bitcast <8 x float> %i.jdn to <8 x i32>
  %i.jdq = and <8 x i32> %i.jdp, splat (i32 -2139095041)
  %i.jdr = or disjoint <8 x i32> %i.jdq, splat (i32 1056964608)
  %i.jds = bitcast <8 x i32> %i.jdr to <8 x float> ; 3 uses
  %i.jdt = lshr <8 x i32> %i.jdo, splat (i32 23)
  %i.jdu = add nsw <8 x i32> %i.jdt, splat (i32 -127)
  %i.jdv = sitofp fast <8 x i32> %i.jdu to <8 x float> ; 2 uses
  %i.jdw = fadd fast <8 x float> %i.jdv, splat (float 1.000000e+00)
  %i.jdx = fcmp fast olt <8 x float> %i.jds, splat (float f0x3F3504F3) ; 2 uses
  %i.jdy = select <8 x i1> %i.jdx, <8 x float> %i.jds, <8 x float> zeroinitializer
  %i.jdz = fadd fast <8 x float> %i.jds, splat (float -1.000000e+00)
  %i.jea = select fast <8 x i1> %i.jdx, <8 x float> %i.jdv, <8 x float> %i.jdw
  %i.jeb = fadd fast <8 x float> %i.jdz, %i.jdy   ; 12 uses
  %i.jec = fmul fast <8 x float> %i.jeb, %i.jeb
  %i.jed = fmul fast <8 x float> %i.jeb, splat (float f0x3D9021BB)
  %i.jee = fadd fast <8 x float> %i.jed, splat (float f0xBDEBD1B8)
  %i.jef = fmul fast <8 x float> %i.jee, %i.jeb
  %i.jeg = fadd fast <8 x float> %i.jef, splat (float f0x3DEF251A)
  %i.jeh = fmul fast <8 x float> %i.jeg, %i.jeb
  %i.jei = fadd fast <8 x float> %i.jeh, splat (float f0xBDFE5D4F)
  %i.jej = fmul fast <8 x float> %i.jei, %i.jeb
  %i.jek = fadd fast <8 x float> %i.jej, splat (float f0x3E11E9BF)
  %i.jel = fmul fast <8 x float> %i.jek, %i.jeb
  %i.jem = fadd fast <8 x float> %i.jel, splat (float f0xBE2AAE50)
  %i.jen = fmul fast <8 x float> %i.jem, %i.jeb
  %i.jeo = fadd fast <8 x float> %i.jen, splat (float f0x3E4CCEAC)
  %i.jep = fmul fast <8 x float> %i.jeo, %i.jeb
  %i.jeq = fadd fast <8 x float> %i.jep, splat (float f0xBE7FFFFC)
  %i.jer = fmul fast <8 x float> %i.jeq, %i.jeb
  %i.jes = fadd fast <8 x float> %i.jer, splat (float f0x3EAAAAAA)
  %i.jet = fmul fast <8 x float> %i.jes, %i.jeb
  %reass.mul161.i48.i = fmul fast <8 x float> %i.jea, splat (float f0x3F317218)
  %reass.add162.i49.i = fadd fast <8 x float> %i.jet, splat (float -5.000000e-01)
  %reass.mul163.i50.i = fmul fast <8 x float> %i.jec, %reass.add162.i49.i
  %i.jeu = fadd fast <8 x float> %reass.mul161.i48.i, %i.jeb
  %i.jev = fadd fast <8 x float> %i.jeu, %reass.mul163.i50.i
  br label %bb.hs

.preheader164.loopexit.i56.i:                     ; preds = %bb.hs
  %i.jew = and i32 %i.isc, 2147483640
  br label %.preheader164.i34.i

.preheader164.i34.i:                              ; preds = %.preheader164.loopexit.i56.i, %bb.hr
  %.028.lcssa.i.i979 = phi ptr [ %2, %bb.hr ], [ %i.jhx, %.preheader164.loopexit.i56.i ] ; 2 uses
  %.025.lcssa.i.i980 = phi i32 [ 0, %bb.hr ], [ %i.jew, %.preheader164.loopexit.i56.i ] ; 3 uses
  %.0.lcssa.i35.i981 = phi ptr [ %0, %bb.hr ], [ %i.jhw, %.preheader164.loopexit.i56.i ] ; 2 uses
  %i.jex = or disjoint i32 %.025.lcssa.i.i980, 3
  %i.jey = icmp slt i32 %i.jex, %i.isc
  br i1 %i.jey, label %.lr.ph173.i.i, label %.preheader.i36.i982

.lr.ph173.i.i:                                    ; preds = %.preheader164.i34.i
  %i.jez = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jdk, <4 x float> splat (float f0x00800000))
  %i.jfa = bitcast <4 x float> %i.jez to <4 x i32> ; 2 uses
  %i.jfb = lshr <4 x i32> %i.jfa, splat (i32 23)
  %i.jfc = and <4 x i32> %i.jfa, splat (i32 -2139095041)
  %i.jfd = or disjoint <4 x i32> %i.jfc, splat (i32 1056964608)
  %i.jfe = bitcast <4 x i32> %i.jfd to <4 x float> ; 3 uses
  %i.jff = add nsw <4 x i32> %i.jfb, splat (i32 -127)
  %i.jfg = sitofp fast <4 x i32> %i.jff to <4 x float> ; 2 uses
  %i.jfh = fadd fast <4 x float> %i.jfg, splat (float 1.000000e+00)
  %i.jfi = fcmp fast olt <4 x float> %i.jfe, splat (float f0x3F3504F3) ; 2 uses
  %i.jfj = select <4 x i1> %i.jfi, <4 x float> %i.jfe, <4 x float> zeroinitializer
  %i.jfk = fadd fast <4 x float> %i.jfe, splat (float -1.000000e+00)
  %i.jfl = select fast <4 x i1> %i.jfi, <4 x float> %i.jfg, <4 x float> %i.jfh
  %i.jfm = fadd fast <4 x float> %i.jfk, %i.jfj   ; 12 uses
  %i.jfn = fmul fast <4 x float> %i.jfm, %i.jfm
  %i.jfo = fmul fast <4 x float> %i.jfm, splat (float f0x3D9021BB)
  %i.jfp = fadd fast <4 x float> %i.jfo, splat (float f0xBDEBD1B8)
  %i.jfq = fmul fast <4 x float> %i.jfp, %i.jfm
  %i.jfr = fadd fast <4 x float> %i.jfq, splat (float f0x3DEF251A)
  %i.jfs = fmul fast <4 x float> %i.jfr, %i.jfm
  %i.jft = fadd fast <4 x float> %i.jfs, splat (float f0xBDFE5D4F)
  %i.jfu = fmul fast <4 x float> %i.jft, %i.jfm
  %i.jfv = fadd fast <4 x float> %i.jfu, splat (float f0x3E11E9BF)
  %i.jfw = fmul fast <4 x float> %i.jfv, %i.jfm
  %i.jfx = fadd fast <4 x float> %i.jfw, splat (float f0xBE2AAE50)
  %i.jfy = fmul fast <4 x float> %i.jfx, %i.jfm
  %i.jfz = fadd fast <4 x float> %i.jfy, splat (float f0x3E4CCEAC)
  %i.jga = fmul fast <4 x float> %i.jfz, %i.jfm
  %i.jgb = fadd fast <4 x float> %i.jga, splat (float f0xBE7FFFFC)
  %i.jgc = fmul fast <4 x float> %i.jgb, %i.jfm
  %i.jgd = fadd fast <4 x float> %i.jgc, splat (float f0x3EAAAAAA)
  %i.jge = fmul fast <4 x float> %i.jgd, %i.jfm
  %reass.mul.i39.i987 = fmul fast <4 x float> %i.jfl, splat (float f0x3F317218)
  %reass.add159.i40.i = fadd fast <4 x float> %i.jge, splat (float -5.000000e-01)
  %reass.mul160.i41.i = fmul fast <4 x float> %i.jfn, %reass.add159.i40.i
  %i.jgf = fadd fast <4 x float> %reass.mul.i39.i987, %i.jfm
  %i.jgg = fadd fast <4 x float> %i.jgf, %reass.mul160.i41.i
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hs, %.lr.ph.i42.i988
  %.0167.i.i = phi ptr [ %0, %.lr.ph.i42.i988 ], [ %i.jhw, %bb.hs ] ; 2 uses
  %.025166.i.i = phi i32 [ 0, %.lr.ph.i42.i988 ], [ %i.jhy, %bb.hs ]
  %.028165.i.i = phi ptr [ %2, %.lr.ph.i42.i988 ], [ %i.jhx, %bb.hs ] ; 2 uses
  %i.jgh = load <8 x i16>, ptr %.0167.i.i, align 1, !tbaa !60 ; 2 uses
  %i.jgi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jgh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jgj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jgh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jgk = shufflevector <8 x i16> %i.jgi, <8 x i16> %i.jgj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jgl = bitcast <16 x i16> %i.jgk to <8 x float>
  %i.jgm = fmul fast <8 x float> %i.jev, %i.jgl
  %i.jgn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jgm, <8 x float> splat (float f0x42B0C0A5))
  %i.jgo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jgn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jgp = fmul fast <8 x float> %i.jgo, splat (float f0x3FB8AA3B)
  %i.jgq = fadd fast <8 x float> %i.jgp, splat (float 5.000000e-01) ; 2 uses
  %i.jgr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jgq, i32 1) ; 2 uses
  %i.jgs = fcmp fast ogt <8 x float> %i.jgr, %i.jgq
  %i.jgt = select <8 x i1> %i.jgs, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.jgu = fsub fast <8 x float> %i.jgr, %i.jgt   ; 2 uses
  %i.jgv = fmul fast <8 x float> %i.jgu, splat (float f0x3F317218)
  %i.jgw = fsub fast <8 x float> %i.jgo, %i.jgv   ; 8 uses
  %i.jgx = fmul fast <8 x float> %i.jgw, %i.jgw
  %i.jgy = fmul fast <8 x float> %i.jgw, splat (float f0x39506967)
  %i.jgz = fadd fast <8 x float> %i.jgy, splat (float f0x3AB743CE)
  %i.jha = fmul fast <8 x float> %i.jgz, %i.jgw
  %i.jhb = fadd fast <8 x float> %i.jha, splat (float f0x3C088908)
  %i.jhc = fmul fast <8 x float> %i.jhb, %i.jgw
  %i.jhd = fadd fast <8 x float> %i.jhc, splat (float f0x3D2AA9C1)
  %i.jhe = fmul fast <8 x float> %i.jhd, %i.jgw
  %i.jhf = fadd fast <8 x float> %i.jhe, splat (float f0x3E2AAAAA)
  %i.jhg = fmul fast <8 x float> %i.jhf, %i.jgw
  %i.jhh = fadd fast <8 x float> %i.jhg, splat (float 5.000000e-01)
  %i.jhi = fmul fast <8 x float> %i.jgx, %i.jhh
  %i.jhj = fadd fast <8 x float> %i.jgw, splat (float 1.000000e+00)
  %i.jhk = fadd fast <8 x float> %i.jhj, %i.jhi
  %i.jhl = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jgu)
  %i.jhm = shl <8 x i32> %i.jhl, splat (i32 23)
  %i.jhn = add <8 x i32> %i.jhm, splat (i32 1065353216)
  %i.jho = bitcast <8 x i32> %i.jhn to <8 x float>
  %i.jhp = fmul fast <8 x float> %i.jhk, %i.jho
  %i.jhq = bitcast <8 x float> %i.jhp to <8 x i32> ; 2 uses
  %i.jhr = shufflevector <8 x i32> %i.jhq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jhs = shufflevector <8 x i32> %i.jhq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jht = lshr <4 x i32> %i.jhr, splat (i32 16)
  %i.jhu = lshr <4 x i32> %i.jhs, splat (i32 16)
  %i.jhv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jht, <4 x i32> %i.jhu)
  store <8 x i16> %i.jhv, ptr %.028165.i.i, align 1, !tbaa !60
  %i.jhw = getelementptr inbounds nuw i8, ptr %.0167.i.i, i64 16 ; 2 uses
  %i.jhx = getelementptr inbounds nuw i8, ptr %.028165.i.i, i64 16 ; 2 uses
  %i.jhy = add nuw nsw i32 %.025166.i.i, 8        ; 2 uses
  %i.jhz = or disjoint i32 %i.jhy, 7
  %i.jia = icmp slt i32 %i.jhz, %i.isc
  br i1 %i.jia, label %bb.hs, label %.preheader164.loopexit.i56.i, !llvm.loop !836

.preheader.i36.i982:                              ; preds = %bb.ht, %.preheader164.i34.i
  %.129.lcssa.i.i983 = phi ptr [ %.028.lcssa.i.i979, %.preheader164.i34.i ], [ %i.jmv, %bb.ht ] ; 6 uses
  %.126.lcssa.i.i984 = phi i32 [ %.025.lcssa.i.i980, %.preheader164.i34.i ], [ %i.jmw, %bb.ht ] ; 5 uses
  %.1.lcssa.i37.i985 = phi ptr [ %.0.lcssa.i35.i981, %.preheader164.i34.i ], [ %i.jmu, %bb.ht ] ; 6 uses
  %i.jib = icmp slt i32 %.126.lcssa.i.i984, %i.isc
  br i1 %i.jib, label %iter.check5425, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5425:                                   ; preds = %.preheader.i36.i982
  %.129.lcssa.i.i9835409 = ptrtoaddr ptr %.129.lcssa.i.i983 to i64
  %.1.lcssa.i37.i9855408 = ptrtoaddr ptr %.1.lcssa.i37.i985 to i64
  %i.jic = xor i32 %.126.lcssa.i.i984, -1
  %i.jid = add i32 %i.isc, %i.jic                 ; 3 uses
  %i.jie = zext i32 %i.jid to i64
  %i.jif = add nuw nsw i64 %i.jie, 1              ; 5 uses
  %min.iters.check5410 = icmp ult i32 %i.jid, 3
  %i.jig = sub i64 %.1.lcssa.i37.i9855408, %.129.lcssa.i.i9835409
  %diff.check5412 = icmp ugt i64 %i.jig, -32
  %or.cond7118 = select i1 %min.iters.check5410, i1 true, i1 %diff.check5412
  br i1 %or.cond7118, label %.lr.ph180.i.i.preheader, label %vector.main.loop.iter.check5413

vector.main.loop.iter.check5413:                  ; preds = %iter.check5425
  %min.iters.check5414 = icmp ult i32 %i.jid, 15
  br i1 %min.iters.check5414, label %vec.epilog.ph5429, label %vector.ph5415

vector.ph5415:                                    ; preds = %vector.main.loop.iter.check5413
  %i.jih = and i64 %i.jif, 12
  %n.vec5416 = and i64 %i.jif, 8589934576         ; 5 uses
  %i.jii = shl nuw nsw i64 %n.vec5416, 1          ; 2 uses
  %i.jij = getelementptr i8, ptr %.1.lcssa.i37.i985, i64 %i.jii
  %i.jik = trunc i64 %n.vec5416 to i32
  %i.jil = add i32 %.126.lcssa.i.i984, %i.jik
  %i.jim = getelementptr i8, ptr %.129.lcssa.i.i983, i64 %i.jii
  %i.jin = insertelement <8 x float> poison, float %i.jct, i64 0
  %i.jio = shufflevector <8 x float> %i.jin, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jip = insertelement <4 x float> poison, float %i.jct, i64 0
  %i.jiq = shufflevector <4 x float> %i.jip, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5417

vector.body5417:                                  ; preds = %vector.ph5415, %vector.body5417
  %index5418 = phi i64 [ 0, %vector.ph5415 ], [ %index.next5422, %vector.body5417 ] ; 2 uses
  %i.jir = shl i64 %index5418, 1                  ; 2 uses
  %next.gep5419 = getelementptr i8, ptr %.1.lcssa.i37.i985, i64 %i.jir
  %next.gep5420 = getelementptr i8, ptr %.129.lcssa.i.i983, i64 %i.jir
  %wide.load5421 = load <16 x i16>, ptr %next.gep5419, align 2, !tbaa !57
  %i.jis = zext <16 x i16> %wide.load5421 to <16 x i32>
  %i.jit = shl nuw <16 x i32> %i.jis, splat (i32 16)
  %i.jiu = bitcast <16 x i32> %i.jit to <16 x float> ; 6 uses
  %i.jiv = extractelement <16 x float> %i.jiu, i64 0
  %i.jiw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jiv)
  %i.jix = extractelement <16 x float> %i.jiu, i64 1
  %i.jiy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jix)
  %i.jiz = extractelement <16 x float> %i.jiu, i64 2
  %i.jja = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jiz)
  %i.jjb = extractelement <16 x float> %i.jiu, i64 3
  %i.jjc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jjb)
  %i.jjd = shufflevector <16 x float> %i.jiu, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jje = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.jiq, <4 x float> %i.jjd)
  %i.jjf = shufflevector <16 x float> %i.jiu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jjg = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.jio, <8 x float> %i.jjf)
  %i.jjh = insertelement <16 x float> poison, float %i.jiw, i64 0
  %i.jji = insertelement <16 x float> %i.jjh, float %i.jiy, i64 1
  %i.jjj = insertelement <16 x float> %i.jji, float %i.jja, i64 2
  %i.jjk = insertelement <16 x float> %i.jjj, float %i.jjc, i64 3
  %i.jjl = shufflevector <4 x float> %i.jje, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jjm = shufflevector <16 x float> %i.jjk, <16 x float> %i.jjl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jjn = shufflevector <8 x float> %i.jjg, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jjo = shufflevector <16 x float> %i.jjm, <16 x float> %i.jjn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.jjp = bitcast <16 x float> %i.jjo to <16 x i32>
  %i.jjq = lshr <16 x i32> %i.jjp, splat (i32 16)
  %i.jjr = trunc nuw <16 x i32> %i.jjq to <16 x i16>
  store <16 x i16> %i.jjr, ptr %next.gep5420, align 2, !tbaa !57
  %index.next5422 = add nuw i64 %index5418, 16    ; 2 uses
  %i.jjs = icmp eq i64 %index.next5422, %n.vec5416
  br i1 %i.jjs, label %middle.block5423, label %vector.body5417, !llvm.loop !837

middle.block5423:                                 ; preds = %vector.body5417
  %cmp.n5424 = icmp eq i64 %i.jif, %n.vec5416
  br i1 %cmp.n5424, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5426

vec.epilog.iter.check5426:                        ; preds = %middle.block5423
  %min.epilog.iters.check5428 = icmp eq i64 %i.jih, 0
  br i1 %min.epilog.iters.check5428, label %.lr.ph180.i.i.preheader, label %vec.epilog.ph5429, !prof !64

vec.epilog.ph5429:                                ; preds = %vector.main.loop.iter.check5413, %vec.epilog.iter.check5426
  %vec.epilog.resume.val5430 = phi i64 [ %n.vec5416, %vec.epilog.iter.check5426 ], [ 0, %vector.main.loop.iter.check5413 ]
  %n.vec5431 = and i64 %i.jif, 8589934588         ; 4 uses
  %i.jjt = shl nuw nsw i64 %n.vec5431, 1          ; 2 uses
  %i.jju = getelementptr i8, ptr %.1.lcssa.i37.i985, i64 %i.jjt
  %i.jjv = trunc i64 %n.vec5431 to i32
  %i.jjw = add i32 %.126.lcssa.i.i984, %i.jjv
  %i.jjx = getelementptr i8, ptr %.129.lcssa.i.i983, i64 %i.jjt
  br label %vec.epilog.vector.body5432

vec.epilog.vector.body5432:                       ; preds = %vec.epilog.vector.body5432, %vec.epilog.ph5429
  %index5433 = phi i64 [ %vec.epilog.resume.val5430, %vec.epilog.ph5429 ], [ %index.next5437, %vec.epilog.vector.body5432 ] ; 2 uses
  %i.jjy = shl i64 %index5433, 1                  ; 2 uses
  %next.gep5434 = getelementptr i8, ptr %.1.lcssa.i37.i985, i64 %i.jjy
  %next.gep5435 = getelementptr i8, ptr %.129.lcssa.i.i983, i64 %i.jjy
  %wide.load5436 = load <4 x i16>, ptr %next.gep5434, align 2, !tbaa !57
  %i.jjz = zext <4 x i16> %wide.load5436 to <4 x i32>
  %i.jka = shl nuw <4 x i32> %i.jjz, splat (i32 16)
  %i.jkb = bitcast <4 x i32> %i.jka to <4 x float> ; 4 uses
  %i.jkc = extractelement <4 x float> %i.jkb, i64 0
  %i.jkd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jkc)
  %i.jke = extractelement <4 x float> %i.jkb, i64 1
  %i.jkf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jke)
  %i.jkg = extractelement <4 x float> %i.jkb, i64 2
  %i.jkh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jkg)
  %i.jki = extractelement <4 x float> %i.jkb, i64 3
  %i.jkj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jki)
  %i.jkk = insertelement <4 x float> poison, float %i.jkd, i64 0
  %i.jkl = insertelement <4 x float> %i.jkk, float %i.jkf, i64 1
  %i.jkm = insertelement <4 x float> %i.jkl, float %i.jkh, i64 2
  %i.jkn = insertelement <4 x float> %i.jkm, float %i.jkj, i64 3
  %i.jko = bitcast <4 x float> %i.jkn to <4 x i32>
  %i.jkp = lshr <4 x i32> %i.jko, splat (i32 16)
  %i.jkq = trunc nuw <4 x i32> %i.jkp to <4 x i16>
  store <4 x i16> %i.jkq, ptr %next.gep5435, align 2, !tbaa !57
  %index.next5437 = add nuw i64 %index5433, 4     ; 2 uses
  %i.jkr = icmp eq i64 %index.next5437, %n.vec5431
  br i1 %i.jkr, label %vec.epilog.middle.block5438, label %vec.epilog.vector.body5432, !llvm.loop !838

vec.epilog.middle.block5438:                      ; preds = %vec.epilog.vector.body5432
  %cmp.n5439 = icmp eq i64 %i.jif, %n.vec5431
  br i1 %cmp.n5439, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i.i.preheader

.lr.ph180.i.i.preheader:                          ; preds = %iter.check5425, %vec.epilog.iter.check5426, %vec.epilog.middle.block5438
  %.2179.i.i.ph = phi ptr [ %.1.lcssa.i37.i985, %iter.check5425 ], [ %i.jij, %vec.epilog.iter.check5426 ], [ %i.jju, %vec.epilog.middle.block5438 ] ; 3 uses
  %.227178.i.i.ph = phi i32 [ %.126.lcssa.i.i984, %iter.check5425 ], [ %i.jil, %vec.epilog.iter.check5426 ], [ %i.jjw, %vec.epilog.middle.block5438 ] ; 4 uses
  %.230177.i.i.ph = phi ptr [ %.129.lcssa.i.i983, %iter.check5425 ], [ %i.jim, %vec.epilog.iter.check5426 ], [ %i.jjx, %vec.epilog.middle.block5438 ] ; 3 uses
  %i.jks = sub i32 %i.isc, %.227178.i.i.ph
  %.neg8032 = add i32 %.227178.i.i.ph, 1
  %xtraiter7839 = and i32 %i.jks, 1
  %lcmp.mod7840.not = icmp eq i32 %xtraiter7839, 0
  br i1 %lcmp.mod7840.not, label %.lr.ph180.i.i.prol.loopexit, label %.lr.ph180.i.i.prol

.lr.ph180.i.i.prol:                               ; preds = %.lr.ph180.i.i.preheader
  %i.jkt = getelementptr inbounds nuw i8, ptr %.2179.i.i.ph, i64 2
  %i.jku = load i16, ptr %.2179.i.i.ph, align 2, !tbaa !57
  %i.jkv = zext i16 %i.jku to i32
  %i.jkw = shl nuw i32 %i.jkv, 16
  %i.jkx = bitcast i32 %i.jkw to float
  %i.jky = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jkx)
  %i.jkz = bitcast float %i.jky to i32
  %i.jla = lshr i32 %i.jkz, 16
  %i.jlb = trunc nuw i32 %i.jla to i16
  %i.jlc = getelementptr inbounds nuw i8, ptr %.230177.i.i.ph, i64 2
  store i16 %i.jlb, ptr %.230177.i.i.ph, align 2, !tbaa !57
  %i.jld = add nuw nsw i32 %.227178.i.i.ph, 1
  br label %.lr.ph180.i.i.prol.loopexit

.lr.ph180.i.i.prol.loopexit:                      ; preds = %.lr.ph180.i.i.prol, %.lr.ph180.i.i.preheader
  %.2179.i.i.unr = phi ptr [ %.2179.i.i.ph, %.lr.ph180.i.i.preheader ], [ %i.jkt, %.lr.ph180.i.i.prol ]
  %.227178.i.i.unr = phi i32 [ %.227178.i.i.ph, %.lr.ph180.i.i.preheader ], [ %i.jld, %.lr.ph180.i.i.prol ]
  %.230177.i.i.unr = phi ptr [ %.230177.i.i.ph, %.lr.ph180.i.i.preheader ], [ %i.jlc, %.lr.ph180.i.i.prol ]
  %i.jle = icmp eq i32 %i.isc, %.neg8032
  br i1 %i.jle, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i.i

bb.ht:                                            ; preds = %bb.ht, %.lr.ph173.i.i
  %.1172.i.i = phi ptr [ %.0.lcssa.i35.i981, %.lr.ph173.i.i ], [ %i.jmu, %bb.ht ] ; 2 uses
  %.126171.i.i = phi i32 [ %.025.lcssa.i.i980, %.lr.ph173.i.i ], [ %i.jmw, %bb.ht ]
  %.129170.i.i = phi ptr [ %.028.lcssa.i.i979, %.lr.ph173.i.i ], [ %i.jmv, %bb.ht ] ; 2 uses
  %i.jlf = load i64, ptr %.1172.i.i, align 1, !tbaa !60
  %i.jlg = insertelement <2 x i64> poison, i64 %i.jlf, i64 0
  %i.jlh = bitcast <2 x i64> %i.jlg to <8 x i16>
  %i.jli = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jlh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jlj = bitcast <8 x i16> %i.jli to <4 x float>
  %i.jlk = fmul fast <4 x float> %i.jgg, %i.jlj
  %i.jll = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jlk, <4 x float> splat (float f0x42B0C0A5))
  %i.jlm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jll, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jln = fmul fast <4 x float> %i.jlm, splat (float f0x3FB8AA3B)
  %i.jlo = fadd fast <4 x float> %i.jln, splat (float 5.000000e-01) ; 2 uses
  %i.jlp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jlo)
  %i.jlq = sitofp fast <4 x i32> %i.jlp to <4 x float> ; 2 uses
  %i.jlr = fcmp fast olt <4 x float> %i.jlo, %i.jlq
  %i.jls = select <4 x i1> %i.jlr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jlt = fsub fast <4 x float> %i.jlq, %i.jls   ; 2 uses
  %i.jlu = fmul fast <4 x float> %i.jlt, splat (float f0x3F317218)
  %i.jlv = fsub fast <4 x float> %i.jlm, %i.jlu   ; 8 uses
  %i.jlw = fmul fast <4 x float> %i.jlv, %i.jlv
  %i.jlx = fmul fast <4 x float> %i.jlv, splat (float f0x39506967)
  %i.jly = fadd fast <4 x float> %i.jlx, splat (float f0x3AB743CE)
  %i.jlz = fmul fast <4 x float> %i.jly, %i.jlv
  %i.jma = fadd fast <4 x float> %i.jlz, splat (float f0x3C088908)
  %i.jmb = fmul fast <4 x float> %i.jma, %i.jlv
  %i.jmc = fadd fast <4 x float> %i.jmb, splat (float f0x3D2AA9C1)
  %i.jmd = fmul fast <4 x float> %i.jmc, %i.jlv
  %i.jme = fadd fast <4 x float> %i.jmd, splat (float f0x3E2AAAAA)
  %i.jmf = fmul fast <4 x float> %i.jme, %i.jlv
  %i.jmg = fadd fast <4 x float> %i.jmf, splat (float 5.000000e-01)
  %i.jmh = fmul fast <4 x float> %i.jlw, %i.jmg
  %i.jmi = fadd fast <4 x float> %i.jlv, splat (float 1.000000e+00)
  %i.jmj = fadd fast <4 x float> %i.jmi, %i.jmh
  %i.jmk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jlt)
  %i.jml = shl <4 x i32> %i.jmk, splat (i32 23)
  %i.jmm = add <4 x i32> %i.jml, splat (i32 1065353216)
  %i.jmn = bitcast <4 x i32> %i.jmm to <4 x float>
  %i.jmo = fmul fast <4 x float> %i.jmj, %i.jmn
  %i.jmp = bitcast <4 x float> %i.jmo to <4 x i32>
  %i.jmq = lshr <4 x i32> %i.jmp, splat (i32 16)
  %i.jmr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jmq, <4 x i32> poison)
  %i.jms = bitcast <8 x i16> %i.jmr to <2 x i64>
  %i.jmt = extractelement <2 x i64> %i.jms, i64 0
  store i64 %i.jmt, ptr %.129170.i.i, align 1, !tbaa !60
  %i.jmu = getelementptr inbounds nuw i8, ptr %.1172.i.i, i64 8 ; 2 uses
  %i.jmv = getelementptr inbounds nuw i8, ptr %.129170.i.i, i64 8 ; 2 uses
  %i.jmw = add nuw nsw i32 %.126171.i.i, 4        ; 3 uses
  %i.jmx = or disjoint i32 %i.jmw, 3
  %i.jmy = icmp slt i32 %i.jmx, %i.isc
  br i1 %i.jmy, label %bb.ht, label %.preheader.i36.i982, !llvm.loop !839

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i.prol.loopexit, %.lr.ph180.i.i
  %.2179.i.i = phi ptr [ %i.jnj, %.lr.ph180.i.i ], [ %.2179.i.i.unr, %.lr.ph180.i.i.prol.loopexit ] ; 3 uses
  %.227178.i.i = phi i32 [ %i.jnt, %.lr.ph180.i.i ], [ %.227178.i.i.unr, %.lr.ph180.i.i.prol.loopexit ]
  %.230177.i.i = phi ptr [ %i.jns, %.lr.ph180.i.i ], [ %.230177.i.i.unr, %.lr.ph180.i.i.prol.loopexit ] ; 3 uses
  %i.jmz = getelementptr inbounds nuw i8, ptr %.2179.i.i, i64 2
  %i.jna = load i16, ptr %.2179.i.i, align 2, !tbaa !57
  %i.jnb = zext i16 %i.jna to i32
  %i.jnc = shl nuw i32 %i.jnb, 16
  %i.jnd = bitcast i32 %i.jnc to float
  %i.jne = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jnd)
  %i.jnf = bitcast float %i.jne to i32
  %i.jng = lshr i32 %i.jnf, 16
  %i.jnh = trunc nuw i32 %i.jng to i16
  %i.jni = getelementptr inbounds nuw i8, ptr %.230177.i.i, i64 2
  store i16 %i.jnh, ptr %.230177.i.i, align 2, !tbaa !57
  %i.jnj = getelementptr inbounds nuw i8, ptr %.2179.i.i, i64 4
  %i.jnk = load i16, ptr %i.jmz, align 2, !tbaa !57
  %i.jnl = zext i16 %i.jnk to i32
  %i.jnm = shl nuw i32 %i.jnl, 16
  %i.jnn = bitcast i32 %i.jnm to float
  %i.jno = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jct, float %i.jnn)
  %i.jnp = bitcast float %i.jno to i32
  %i.jnq = lshr i32 %i.jnp, 16
  %i.jnr = trunc nuw i32 %i.jnq to i16
  %i.jns = getelementptr inbounds nuw i8, ptr %.230177.i.i, i64 4
  store i16 %i.jnr, ptr %i.jni, align 2, !tbaa !57
  %i.jnt = add nuw nsw i32 %.227178.i.i, 2        ; 2 uses
  %exitcond.not.i38.i986.1 = icmp eq i32 %i.jnt, %i.isc
  br i1 %exitcond.not.i38.i986.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i.i, !llvm.loop !840

bb.hu:                                            ; preds = %bb.hm
  %i.jnu = icmp eq i32 %3, 1
  br i1 %i.jnu, label %bb.hv, label %bb.ia

bb.hv:                                            ; preds = %bb.hu
  %i.jnv = load i16, ptr %0, align 2, !tbaa !57
  %i.jnw = zext i16 %i.jnv to i32
  %i.jnx = shl nuw i32 %i.jnw, 16
  %i.jny = bitcast i32 %i.jnx to float            ; 14 uses
  %i.jnz = icmp eq i32 %.sroa.speculated.i956, 4
  br i1 %i.jnz, label %.thread.i95.i, label %bb.hw

.thread.i95.i:                                    ; preds = %bb.hv
  %i.joa = load i64, ptr %0, align 2, !tbaa !60
  %i.job = insertelement <2 x i64> poison, i64 %i.joa, i64 0
  %i.joc = bitcast <2 x i64> %i.job to <8 x i16>
  %i.jod = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.joc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.joe = bitcast <8 x i16> %i.jod to <4 x float>
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.jof = insertelement <4 x float> poison, float %i.jny, i64 0
  %i.jog = shufflevector <4 x float> %i.jof, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.joh = icmp eq i32 %.sroa.speculated.i956, 8
  br i1 %i.joh, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.joi = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.joj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.joi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jok = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.joi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jol = shufflevector <8 x i16> %i.joj, <8 x i16> %i.jok, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jom = bitcast <16 x i16> %i.jol to <8 x float>
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw, %.thread.i95.i
  %i.jon = phi <4 x float> [ %i.joe, %.thread.i95.i ], [ %i.jog, %bb.hw ] ; 2 uses
  %i.joo = shufflevector <4 x float> %i.jon, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.jop = phi <4 x float> [ %i.jog, %bb.hx ], [ %i.jon, %bb.hy ]
  %i.joq = phi fast <8 x float> [ %i.jom, %bb.hx ], [ %i.joo, %bb.hy ]
  %i.jor = icmp sgt i32 %i.isc, 7
  br i1 %i.jor, label %.lr.ph.i77.i978, label %.preheader164.i57.i

.preheader164.loopexit.i94.i:                     ; preds = %.lr.ph.i77.i978
  %i.jos = and i32 %i.isc, 2147483640
  br label %.preheader164.i57.i

.preheader164.i57.i:                              ; preds = %.preheader164.loopexit.i94.i, %bb.hz
  %.028.lcssa.i58.i = phi ptr [ %2, %bb.hz ], [ %i.jru, %.preheader164.loopexit.i94.i ] ; 2 uses
  %.025.lcssa.i59.i = phi i32 [ 0, %bb.hz ], [ %i.jos, %.preheader164.loopexit.i94.i ] ; 3 uses
  %.0.lcssa.i60.i = phi ptr [ %1, %bb.hz ], [ %i.jrt, %.preheader164.loopexit.i94.i ] ; 2 uses
  %i.jot = or disjoint i32 %.025.lcssa.i59.i, 3
  %i.jou = icmp slt i32 %i.jot, %i.isc
  br i1 %i.jou, label %.lr.ph173.i70.i, label %.preheader.i61.i

.lr.ph.i77.i978:                                  ; preds = %bb.hz, %.lr.ph.i77.i978
  %.0167.i78.i = phi ptr [ %i.jrt, %.lr.ph.i77.i978 ], [ %1, %bb.hz ] ; 2 uses
  %.025166.i79.i = phi i32 [ %i.jrv, %.lr.ph.i77.i978 ], [ 0, %bb.hz ]
  %.028165.i80.i = phi ptr [ %i.jru, %.lr.ph.i77.i978 ], [ %2, %bb.hz ] ; 2 uses
  %i.jov = load <8 x i16>, ptr %.0167.i78.i, align 1, !tbaa !60 ; 2 uses
  %i.jow = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jov, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jox = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jov, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.joy = shufflevector <8 x i16> %i.jow, <8 x i16> %i.jox, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.joz = bitcast <16 x i16> %i.joy to <8 x float>
  %i.jpa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.joz, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.jpb = bitcast <8 x float> %i.jpa to <8 x i32>
  %i.jpc = bitcast <8 x float> %i.jpa to <8 x i32>
  %i.jpd = and <8 x i32> %i.jpc, splat (i32 -2139095041)
  %i.jpe = or disjoint <8 x i32> %i.jpd, splat (i32 1056964608)
  %i.jpf = bitcast <8 x i32> %i.jpe to <8 x float> ; 3 uses
  %i.jpg = lshr <8 x i32> %i.jpb, splat (i32 23)
  %i.jph = add nsw <8 x i32> %i.jpg, splat (i32 -127)
  %i.jpi = sitofp fast <8 x i32> %i.jph to <8 x float> ; 2 uses
  %i.jpj = fadd fast <8 x float> %i.jpi, splat (float 1.000000e+00)
  %i.jpk = fcmp fast olt <8 x float> %i.jpf, splat (float f0x3F3504F3) ; 2 uses
  %i.jpl = select <8 x i1> %i.jpk, <8 x float> %i.jpf, <8 x float> zeroinitializer
  %i.jpm = fadd fast <8 x float> %i.jpf, splat (float -1.000000e+00)
  %i.jpn = select fast <8 x i1> %i.jpk, <8 x float> %i.jpi, <8 x float> %i.jpj
  %i.jpo = fadd fast <8 x float> %i.jpm, %i.jpl   ; 12 uses
  %i.jpp = fmul fast <8 x float> %i.jpo, %i.jpo
  %i.jpq = fmul fast <8 x float> %i.jpo, splat (float f0x3D9021BB)
  %i.jpr = fadd fast <8 x float> %i.jpq, splat (float f0xBDEBD1B8)
  %i.jps = fmul fast <8 x float> %i.jpr, %i.jpo
  %i.jpt = fadd fast <8 x float> %i.jps, splat (float f0x3DEF251A)
  %i.jpu = fmul fast <8 x float> %i.jpt, %i.jpo
  %i.jpv = fadd fast <8 x float> %i.jpu, splat (float f0xBDFE5D4F)
  %i.jpw = fmul fast <8 x float> %i.jpv, %i.jpo
  %i.jpx = fadd fast <8 x float> %i.jpw, splat (float f0x3E11E9BF)
  %i.jpy = fmul fast <8 x float> %i.jpx, %i.jpo
  %i.jpz = fadd fast <8 x float> %i.jpy, splat (float f0xBE2AAE50)
  %i.jqa = fmul fast <8 x float> %i.jpz, %i.jpo
  %i.jqb = fadd fast <8 x float> %i.jqa, splat (float f0x3E4CCEAC)
  %i.jqc = fmul fast <8 x float> %i.jqb, %i.jpo
  %i.jqd = fadd fast <8 x float> %i.jqc, splat (float f0xBE7FFFFC)
  %i.jqe = fmul fast <8 x float> %i.jqd, %i.jpo
  %i.jqf = fadd fast <8 x float> %i.jqe, splat (float f0x3EAAAAAA)
  %i.jqg = fmul fast <8 x float> %i.jqf, %i.jpo
  %reass.mul161.i86.i = fmul fast <8 x float> %i.jpn, splat (float f0x3F317218)
  %reass.add162.i87.i = fadd fast <8 x float> %i.jqg, splat (float -5.000000e-01)
  %reass.mul163.i88.i = fmul fast <8 x float> %i.jpp, %reass.add162.i87.i
  %i.jqh = fadd fast <8 x float> %reass.mul161.i86.i, %i.jpo
  %i.jqi = fadd fast <8 x float> %i.jqh, %reass.mul163.i88.i
  %i.jqj = fmul fast <8 x float> %i.jqi, %i.joq
  %i.jqk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jqj, <8 x float> splat (float f0x42B0C0A5))
  %i.jql = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jqk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jqm = fmul fast <8 x float> %i.jql, splat (float f0x3FB8AA3B)
  %i.jqn = fadd fast <8 x float> %i.jqm, splat (float 5.000000e-01) ; 2 uses
  %i.jqo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jqn, i32 1) ; 2 uses
  %i.jqp = fcmp fast ogt <8 x float> %i.jqo, %i.jqn
  %i.jqq = select <8 x i1> %i.jqp, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.jqr = fsub fast <8 x float> %i.jqo, %i.jqq   ; 2 uses
  %i.jqs = fmul fast <8 x float> %i.jqr, splat (float f0x3F317218)
  %i.jqt = fsub fast <8 x float> %i.jql, %i.jqs   ; 8 uses
  %i.jqu = fmul fast <8 x float> %i.jqt, %i.jqt
  %i.jqv = fmul fast <8 x float> %i.jqt, splat (float f0x39506967)
  %i.jqw = fadd fast <8 x float> %i.jqv, splat (float f0x3AB743CE)
  %i.jqx = fmul fast <8 x float> %i.jqw, %i.jqt
  %i.jqy = fadd fast <8 x float> %i.jqx, splat (float f0x3C088908)
  %i.jqz = fmul fast <8 x float> %i.jqy, %i.jqt
  %i.jra = fadd fast <8 x float> %i.jqz, splat (float f0x3D2AA9C1)
  %i.jrb = fmul fast <8 x float> %i.jra, %i.jqt
  %i.jrc = fadd fast <8 x float> %i.jrb, splat (float f0x3E2AAAAA)
  %i.jrd = fmul fast <8 x float> %i.jrc, %i.jqt
  %i.jre = fadd fast <8 x float> %i.jrd, splat (float 5.000000e-01)
  %i.jrf = fmul fast <8 x float> %i.jqu, %i.jre
  %i.jrg = fadd fast <8 x float> %i.jqt, splat (float 1.000000e+00)
  %i.jrh = fadd fast <8 x float> %i.jrg, %i.jrf
  %i.jri = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jqr)
  %i.jrj = shl <8 x i32> %i.jri, splat (i32 23)
  %i.jrk = add <8 x i32> %i.jrj, splat (i32 1065353216)
  %i.jrl = bitcast <8 x i32> %i.jrk to <8 x float>
  %i.jrm = fmul fast <8 x float> %i.jrh, %i.jrl
  %i.jrn = bitcast <8 x float> %i.jrm to <8 x i32> ; 2 uses
  %i.jro = shufflevector <8 x i32> %i.jrn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jrp = shufflevector <8 x i32> %i.jrn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jrq = lshr <4 x i32> %i.jro, splat (i32 16)
  %i.jrr = lshr <4 x i32> %i.jrp, splat (i32 16)
  %i.jrs = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jrq, <4 x i32> %i.jrr)
  store <8 x i16> %i.jrs, ptr %.028165.i80.i, align 1, !tbaa !60
  %i.jrt = getelementptr inbounds nuw i8, ptr %.0167.i78.i, i64 16 ; 2 uses
  %i.jru = getelementptr inbounds nuw i8, ptr %.028165.i80.i, i64 16 ; 2 uses
  %i.jrv = add nuw nsw i32 %.025166.i79.i, 8      ; 2 uses
  %i.jrw = or disjoint i32 %i.jrv, 7
  %i.jrx = icmp slt i32 %i.jrw, %i.isc
  br i1 %i.jrx, label %.lr.ph.i77.i978, label %.preheader164.loopexit.i94.i, !llvm.loop !841

.preheader.i61.i:                                 ; preds = %.lr.ph173.i70.i, %.preheader164.i57.i
  %.129.lcssa.i62.i = phi ptr [ %.028.lcssa.i58.i, %.preheader164.i57.i ], [ %i.jya, %.lr.ph173.i70.i ] ; 6 uses
  %.126.lcssa.i63.i = phi i32 [ %.025.lcssa.i59.i, %.preheader164.i57.i ], [ %i.jyb, %.lr.ph173.i70.i ] ; 5 uses
  %.1.lcssa.i64.i = phi ptr [ %.0.lcssa.i60.i, %.preheader164.i57.i ], [ %i.jxz, %.lr.ph173.i70.i ] ; 6 uses
  %i.jry = icmp slt i32 %.126.lcssa.i63.i, %i.isc
  br i1 %i.jry, label %iter.check5386, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5386:                                   ; preds = %.preheader.i61.i
  %.129.lcssa.i62.i5370 = ptrtoaddr ptr %.129.lcssa.i62.i to i64
  %.1.lcssa.i64.i5369 = ptrtoaddr ptr %.1.lcssa.i64.i to i64
  %i.jrz = xor i32 %.126.lcssa.i63.i, -1
  %i.jsa = add i32 %i.isc, %i.jrz                 ; 3 uses
  %i.jsb = zext i32 %i.jsa to i64
  %i.jsc = add nuw nsw i64 %i.jsb, 1              ; 5 uses
  %min.iters.check5371 = icmp ult i32 %i.jsa, 3
  %i.jsd = sub i64 %.1.lcssa.i64.i5369, %.129.lcssa.i62.i5370
  %diff.check5373 = icmp ugt i64 %i.jsd, -32
  %or.cond7119 = select i1 %min.iters.check5371, i1 true, i1 %diff.check5373
  br i1 %or.cond7119, label %.lr.ph180.i65.i.preheader, label %vector.main.loop.iter.check5374

vector.main.loop.iter.check5374:                  ; preds = %iter.check5386
  %min.iters.check5375 = icmp ult i32 %i.jsa, 15
  br i1 %min.iters.check5375, label %vec.epilog.ph5390, label %vector.ph5376

vector.ph5376:                                    ; preds = %vector.main.loop.iter.check5374
  %i.jse = and i64 %i.jsc, 12
  %n.vec5377 = and i64 %i.jsc, 8589934576         ; 5 uses
  %i.jsf = shl nuw nsw i64 %n.vec5377, 1          ; 2 uses
  %i.jsg = getelementptr i8, ptr %.1.lcssa.i64.i, i64 %i.jsf
  %i.jsh = trunc i64 %n.vec5377 to i32
  %i.jsi = add i32 %.126.lcssa.i63.i, %i.jsh
  %i.jsj = getelementptr i8, ptr %.129.lcssa.i62.i, i64 %i.jsf
  %i.jsk = insertelement <8 x float> poison, float %i.jny, i64 0
  %i.jsl = shufflevector <8 x float> %i.jsk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jsm = insertelement <4 x float> poison, float %i.jny, i64 0
  %i.jsn = shufflevector <4 x float> %i.jsm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5378

vector.body5378:                                  ; preds = %vector.ph5376, %vector.body5378
  %index5379 = phi i64 [ 0, %vector.ph5376 ], [ %index.next5383, %vector.body5378 ] ; 2 uses
  %i.jso = shl i64 %index5379, 1                  ; 2 uses
  %next.gep5380 = getelementptr i8, ptr %.1.lcssa.i64.i, i64 %i.jso
  %next.gep5381 = getelementptr i8, ptr %.129.lcssa.i62.i, i64 %i.jso
  %wide.load5382 = load <16 x i16>, ptr %next.gep5380, align 2, !tbaa !57
  %i.jsp = zext <16 x i16> %wide.load5382 to <16 x i32>
  %i.jsq = shl nuw <16 x i32> %i.jsp, splat (i32 16)
  %i.jsr = bitcast <16 x i32> %i.jsq to <16 x float> ; 6 uses
  %i.jss = extractelement <16 x float> %i.jsr, i64 0
  %i.jst = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jss, float %i.jny)
  %i.jsu = extractelement <16 x float> %i.jsr, i64 1
  %i.jsv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jsu, float %i.jny)
  %i.jsw = extractelement <16 x float> %i.jsr, i64 2
  %i.jsx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jsw, float %i.jny)
  %i.jsy = extractelement <16 x float> %i.jsr, i64 3
  %i.jsz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jsy, float %i.jny)
  %i.jta = shufflevector <16 x float> %i.jsr, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jtb = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.jta, <4 x float> %i.jsn)
  %i.jtc = shufflevector <16 x float> %i.jsr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jtd = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.jtc, <8 x float> %i.jsl)
  %i.jte = insertelement <16 x float> poison, float %i.jst, i64 0
  %i.jtf = insertelement <16 x float> %i.jte, float %i.jsv, i64 1
  %i.jtg = insertelement <16 x float> %i.jtf, float %i.jsx, i64 2
  %i.jth = insertelement <16 x float> %i.jtg, float %i.jsz, i64 3
  %i.jti = shufflevector <4 x float> %i.jtb, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jtj = shufflevector <16 x float> %i.jth, <16 x float> %i.jti, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jtk = shufflevector <8 x float> %i.jtd, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jtl = shufflevector <16 x float> %i.jtj, <16 x float> %i.jtk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.jtm = bitcast <16 x float> %i.jtl to <16 x i32>
  %i.jtn = lshr <16 x i32> %i.jtm, splat (i32 16)
  %i.jto = trunc nuw <16 x i32> %i.jtn to <16 x i16>
  store <16 x i16> %i.jto, ptr %next.gep5381, align 2, !tbaa !57
  %index.next5383 = add nuw i64 %index5379, 16    ; 2 uses
  %i.jtp = icmp eq i64 %index.next5383, %n.vec5377
  br i1 %i.jtp, label %middle.block5384, label %vector.body5378, !llvm.loop !842

middle.block5384:                                 ; preds = %vector.body5378
  %cmp.n5385 = icmp eq i64 %i.jsc, %n.vec5377
  br i1 %cmp.n5385, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5387

vec.epilog.iter.check5387:                        ; preds = %middle.block5384
  %min.epilog.iters.check5389 = icmp eq i64 %i.jse, 0
  br i1 %min.epilog.iters.check5389, label %.lr.ph180.i65.i.preheader, label %vec.epilog.ph5390, !prof !64

vec.epilog.ph5390:                                ; preds = %vector.main.loop.iter.check5374, %vec.epilog.iter.check5387
  %vec.epilog.resume.val5391 = phi i64 [ %n.vec5377, %vec.epilog.iter.check5387 ], [ 0, %vector.main.loop.iter.check5374 ]
  %n.vec5392 = and i64 %i.jsc, 8589934588         ; 4 uses
  %i.jtq = shl nuw nsw i64 %n.vec5392, 1          ; 2 uses
  %i.jtr = getelementptr i8, ptr %.1.lcssa.i64.i, i64 %i.jtq
  %i.jts = trunc i64 %n.vec5392 to i32
  %i.jtt = add i32 %.126.lcssa.i63.i, %i.jts
  %i.jtu = getelementptr i8, ptr %.129.lcssa.i62.i, i64 %i.jtq
  br label %vec.epilog.vector.body5393

vec.epilog.vector.body5393:                       ; preds = %vec.epilog.vector.body5393, %vec.epilog.ph5390
  %index5394 = phi i64 [ %vec.epilog.resume.val5391, %vec.epilog.ph5390 ], [ %index.next5398, %vec.epilog.vector.body5393 ] ; 2 uses
  %i.jtv = shl i64 %index5394, 1                  ; 2 uses
  %next.gep5395 = getelementptr i8, ptr %.1.lcssa.i64.i, i64 %i.jtv
  %next.gep5396 = getelementptr i8, ptr %.129.lcssa.i62.i, i64 %i.jtv
  %wide.load5397 = load <4 x i16>, ptr %next.gep5395, align 2, !tbaa !57
  %i.jtw = zext <4 x i16> %wide.load5397 to <4 x i32>
  %i.jtx = shl nuw <4 x i32> %i.jtw, splat (i32 16)
  %i.jty = bitcast <4 x i32> %i.jtx to <4 x float> ; 4 uses
  %i.jtz = extractelement <4 x float> %i.jty, i64 0
  %i.jua = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jtz, float %i.jny)
  %i.jub = extractelement <4 x float> %i.jty, i64 1
  %i.juc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jub, float %i.jny)
  %i.jud = extractelement <4 x float> %i.jty, i64 2
  %i.jue = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jud, float %i.jny)
  %i.juf = extractelement <4 x float> %i.jty, i64 3
  %i.jug = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.juf, float %i.jny)
  %i.juh = insertelement <4 x float> poison, float %i.jua, i64 0
  %i.jui = insertelement <4 x float> %i.juh, float %i.juc, i64 1
  %i.juj = insertelement <4 x float> %i.jui, float %i.jue, i64 2
  %i.juk = insertelement <4 x float> %i.juj, float %i.jug, i64 3
  %i.jul = bitcast <4 x float> %i.juk to <4 x i32>
  %i.jum = lshr <4 x i32> %i.jul, splat (i32 16)
  %i.jun = trunc nuw <4 x i32> %i.jum to <4 x i16>
  store <4 x i16> %i.jun, ptr %next.gep5396, align 2, !tbaa !57
  %index.next5398 = add nuw i64 %index5394, 4     ; 2 uses
  %i.juo = icmp eq i64 %index.next5398, %n.vec5392
  br i1 %i.juo, label %vec.epilog.middle.block5399, label %vec.epilog.vector.body5393, !llvm.loop !843

vec.epilog.middle.block5399:                      ; preds = %vec.epilog.vector.body5393
  %cmp.n5400 = icmp eq i64 %i.jsc, %n.vec5392
  br i1 %cmp.n5400, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i65.i.preheader

.lr.ph180.i65.i.preheader:                        ; preds = %iter.check5386, %vec.epilog.iter.check5387, %vec.epilog.middle.block5399
  %.2179.i66.i.ph = phi ptr [ %.1.lcssa.i64.i, %iter.check5386 ], [ %i.jsg, %vec.epilog.iter.check5387 ], [ %i.jtr, %vec.epilog.middle.block5399 ] ; 3 uses
  %.227178.i67.i.ph = phi i32 [ %.126.lcssa.i63.i, %iter.check5386 ], [ %i.jsi, %vec.epilog.iter.check5387 ], [ %i.jtt, %vec.epilog.middle.block5399 ] ; 4 uses
  %.230177.i68.i.ph = phi ptr [ %.129.lcssa.i62.i, %iter.check5386 ], [ %i.jsj, %vec.epilog.iter.check5387 ], [ %i.jtu, %vec.epilog.middle.block5399 ] ; 3 uses
  %i.jup = sub i32 %i.isc, %.227178.i67.i.ph
  %.neg8031 = add i32 %.227178.i67.i.ph, 1
  %xtraiter7837 = and i32 %i.jup, 1
  %lcmp.mod7838.not = icmp eq i32 %xtraiter7837, 0
  br i1 %lcmp.mod7838.not, label %.lr.ph180.i65.i.prol.loopexit, label %.lr.ph180.i65.i.prol

.lr.ph180.i65.i.prol:                             ; preds = %.lr.ph180.i65.i.preheader
  %i.juq = getelementptr inbounds nuw i8, ptr %.2179.i66.i.ph, i64 2
  %i.jur = load i16, ptr %.2179.i66.i.ph, align 2, !tbaa !57
  %i.jus = zext i16 %i.jur to i32
  %i.jut = shl nuw i32 %i.jus, 16
  %i.juu = bitcast i32 %i.jut to float
  %i.juv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.juu, float %i.jny)
  %i.juw = bitcast float %i.juv to i32
  %i.jux = lshr i32 %i.juw, 16
  %i.juy = trunc nuw i32 %i.jux to i16
  %i.juz = getelementptr inbounds nuw i8, ptr %.230177.i68.i.ph, i64 2
  store i16 %i.juy, ptr %.230177.i68.i.ph, align 2, !tbaa !57
  %i.jva = add nuw nsw i32 %.227178.i67.i.ph, 1
  br label %.lr.ph180.i65.i.prol.loopexit

.lr.ph180.i65.i.prol.loopexit:                    ; preds = %.lr.ph180.i65.i.prol, %.lr.ph180.i65.i.preheader
  %.2179.i66.i.unr = phi ptr [ %.2179.i66.i.ph, %.lr.ph180.i65.i.preheader ], [ %i.juq, %.lr.ph180.i65.i.prol ]
  %.227178.i67.i.unr = phi i32 [ %.227178.i67.i.ph, %.lr.ph180.i65.i.preheader ], [ %i.jva, %.lr.ph180.i65.i.prol ]
  %.230177.i68.i.unr = phi ptr [ %.230177.i68.i.ph, %.lr.ph180.i65.i.preheader ], [ %i.juz, %.lr.ph180.i65.i.prol ]
  %i.jvb = icmp eq i32 %i.isc, %.neg8031
  br i1 %i.jvb, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i65.i

.lr.ph173.i70.i:                                  ; preds = %.preheader164.i57.i, %.lr.ph173.i70.i
  %.1172.i71.i = phi ptr [ %i.jxz, %.lr.ph173.i70.i ], [ %.0.lcssa.i60.i, %.preheader164.i57.i ] ; 2 uses
  %.126171.i72.i = phi i32 [ %i.jyb, %.lr.ph173.i70.i ], [ %.025.lcssa.i59.i, %.preheader164.i57.i ]
  %.129170.i73.i = phi ptr [ %i.jya, %.lr.ph173.i70.i ], [ %.028.lcssa.i58.i, %.preheader164.i57.i ] ; 2 uses
  %i.jvc = load i64, ptr %.1172.i71.i, align 1, !tbaa !60
  %i.jvd = insertelement <2 x i64> poison, i64 %i.jvc, i64 0
  %i.jve = bitcast <2 x i64> %i.jvd to <8 x i16>
  %i.jvf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jve, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jvg = bitcast <8 x i16> %i.jvf to <4 x float>
  %i.jvh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jvg, <4 x float> splat (float f0x00800000))
  %i.jvi = bitcast <4 x float> %i.jvh to <4 x i32> ; 2 uses
  %i.jvj = lshr <4 x i32> %i.jvi, splat (i32 23)
  %i.jvk = and <4 x i32> %i.jvi, splat (i32 -2139095041)
  %i.jvl = or disjoint <4 x i32> %i.jvk, splat (i32 1056964608)
  %i.jvm = bitcast <4 x i32> %i.jvl to <4 x float> ; 3 uses
  %i.jvn = add nsw <4 x i32> %i.jvj, splat (i32 -127)
  %i.jvo = sitofp fast <4 x i32> %i.jvn to <4 x float> ; 2 uses
  %i.jvp = fadd fast <4 x float> %i.jvo, splat (float 1.000000e+00)
  %i.jvq = fcmp fast olt <4 x float> %i.jvm, splat (float f0x3F3504F3) ; 2 uses
  %i.jvr = select <4 x i1> %i.jvq, <4 x float> %i.jvm, <4 x float> zeroinitializer
  %i.jvs = fadd fast <4 x float> %i.jvm, splat (float -1.000000e+00)
  %i.jvt = select fast <4 x i1> %i.jvq, <4 x float> %i.jvo, <4 x float> %i.jvp
  %i.jvu = fadd fast <4 x float> %i.jvs, %i.jvr   ; 12 uses
  %i.jvv = fmul fast <4 x float> %i.jvu, %i.jvu
  %i.jvw = fmul fast <4 x float> %i.jvu, splat (float f0x3D9021BB)
  %i.jvx = fadd fast <4 x float> %i.jvw, splat (float f0xBDEBD1B8)
  %i.jvy = fmul fast <4 x float> %i.jvx, %i.jvu
  %i.jvz = fadd fast <4 x float> %i.jvy, splat (float f0x3DEF251A)
  %i.jwa = fmul fast <4 x float> %i.jvz, %i.jvu
  %i.jwb = fadd fast <4 x float> %i.jwa, splat (float f0xBDFE5D4F)
  %i.jwc = fmul fast <4 x float> %i.jwb, %i.jvu
  %i.jwd = fadd fast <4 x float> %i.jwc, splat (float f0x3E11E9BF)
  %i.jwe = fmul fast <4 x float> %i.jwd, %i.jvu
  %i.jwf = fadd fast <4 x float> %i.jwe, splat (float f0xBE2AAE50)
  %i.jwg = fmul fast <4 x float> %i.jwf, %i.jvu
  %i.jwh = fadd fast <4 x float> %i.jwg, splat (float f0x3E4CCEAC)
  %i.jwi = fmul fast <4 x float> %i.jwh, %i.jvu
  %i.jwj = fadd fast <4 x float> %i.jwi, splat (float f0xBE7FFFFC)
  %i.jwk = fmul fast <4 x float> %i.jwj, %i.jvu
  %i.jwl = fadd fast <4 x float> %i.jwk, splat (float f0x3EAAAAAA)
  %i.jwm = fmul fast <4 x float> %i.jwl, %i.jvu
  %reass.mul.i74.i = fmul fast <4 x float> %i.jvt, splat (float f0x3F317218)
  %reass.add159.i75.i = fadd fast <4 x float> %i.jwm, splat (float -5.000000e-01)
  %reass.mul160.i76.i = fmul fast <4 x float> %i.jvv, %reass.add159.i75.i
  %i.jwn = fadd fast <4 x float> %reass.mul.i74.i, %i.jvu
  %i.jwo = fadd fast <4 x float> %i.jwn, %reass.mul160.i76.i
  %i.jwp = fmul fast <4 x float> %i.jwo, %i.jop
  %i.jwq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jwp, <4 x float> splat (float f0x42B0C0A5))
  %i.jwr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jwq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jws = fmul fast <4 x float> %i.jwr, splat (float f0x3FB8AA3B)
  %i.jwt = fadd fast <4 x float> %i.jws, splat (float 5.000000e-01) ; 2 uses
  %i.jwu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jwt)
  %i.jwv = sitofp fast <4 x i32> %i.jwu to <4 x float> ; 2 uses
  %i.jww = fcmp fast olt <4 x float> %i.jwt, %i.jwv
  %i.jwx = select <4 x i1> %i.jww, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jwy = fsub fast <4 x float> %i.jwv, %i.jwx   ; 2 uses
  %i.jwz = fmul fast <4 x float> %i.jwy, splat (float f0x3F317218)
  %i.jxa = fsub fast <4 x float> %i.jwr, %i.jwz   ; 8 uses
  %i.jxb = fmul fast <4 x float> %i.jxa, %i.jxa
  %i.jxc = fmul fast <4 x float> %i.jxa, splat (float f0x39506967)
  %i.jxd = fadd fast <4 x float> %i.jxc, splat (float f0x3AB743CE)
  %i.jxe = fmul fast <4 x float> %i.jxd, %i.jxa
  %i.jxf = fadd fast <4 x float> %i.jxe, splat (float f0x3C088908)
  %i.jxg = fmul fast <4 x float> %i.jxf, %i.jxa
  %i.jxh = fadd fast <4 x float> %i.jxg, splat (float f0x3D2AA9C1)
  %i.jxi = fmul fast <4 x float> %i.jxh, %i.jxa
  %i.jxj = fadd fast <4 x float> %i.jxi, splat (float f0x3E2AAAAA)
  %i.jxk = fmul fast <4 x float> %i.jxj, %i.jxa
  %i.jxl = fadd fast <4 x float> %i.jxk, splat (float 5.000000e-01)
  %i.jxm = fmul fast <4 x float> %i.jxb, %i.jxl
  %i.jxn = fadd fast <4 x float> %i.jxa, splat (float 1.000000e+00)
  %i.jxo = fadd fast <4 x float> %i.jxn, %i.jxm
  %i.jxp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jwy)
  %i.jxq = shl <4 x i32> %i.jxp, splat (i32 23)
  %i.jxr = add <4 x i32> %i.jxq, splat (i32 1065353216)
  %i.jxs = bitcast <4 x i32> %i.jxr to <4 x float>
  %i.jxt = fmul fast <4 x float> %i.jxo, %i.jxs
  %i.jxu = bitcast <4 x float> %i.jxt to <4 x i32>
  %i.jxv = lshr <4 x i32> %i.jxu, splat (i32 16)
  %i.jxw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jxv, <4 x i32> poison)
  %i.jxx = bitcast <8 x i16> %i.jxw to <2 x i64>
  %i.jxy = extractelement <2 x i64> %i.jxx, i64 0
  store i64 %i.jxy, ptr %.129170.i73.i, align 1, !tbaa !60
  %i.jxz = getelementptr inbounds nuw i8, ptr %.1172.i71.i, i64 8 ; 2 uses
  %i.jya = getelementptr inbounds nuw i8, ptr %.129170.i73.i, i64 8 ; 2 uses
  %i.jyb = add nuw nsw i32 %.126171.i72.i, 4      ; 3 uses
  %i.jyc = or disjoint i32 %i.jyb, 3
  %i.jyd = icmp slt i32 %i.jyc, %i.isc
  br i1 %i.jyd, label %.lr.ph173.i70.i, label %.preheader.i61.i, !llvm.loop !844

.lr.ph180.i65.i:                                  ; preds = %.lr.ph180.i65.i.prol.loopexit, %.lr.ph180.i65.i
  %.2179.i66.i = phi ptr [ %i.jyo, %.lr.ph180.i65.i ], [ %.2179.i66.i.unr, %.lr.ph180.i65.i.prol.loopexit ] ; 3 uses
  %.227178.i67.i = phi i32 [ %i.jyy, %.lr.ph180.i65.i ], [ %.227178.i67.i.unr, %.lr.ph180.i65.i.prol.loopexit ]
  %.230177.i68.i = phi ptr [ %i.jyx, %.lr.ph180.i65.i ], [ %.230177.i68.i.unr, %.lr.ph180.i65.i.prol.loopexit ] ; 3 uses
  %i.jye = getelementptr inbounds nuw i8, ptr %.2179.i66.i, i64 2
  %i.jyf = load i16, ptr %.2179.i66.i, align 2, !tbaa !57
  %i.jyg = zext i16 %i.jyf to i32
  %i.jyh = shl nuw i32 %i.jyg, 16
  %i.jyi = bitcast i32 %i.jyh to float
  %i.jyj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jyi, float %i.jny)
  %i.jyk = bitcast float %i.jyj to i32
  %i.jyl = lshr i32 %i.jyk, 16
  %i.jym = trunc nuw i32 %i.jyl to i16
  %i.jyn = getelementptr inbounds nuw i8, ptr %.230177.i68.i, i64 2
  store i16 %i.jym, ptr %.230177.i68.i, align 2, !tbaa !57
  %i.jyo = getelementptr inbounds nuw i8, ptr %.2179.i66.i, i64 4
  %i.jyp = load i16, ptr %i.jye, align 2, !tbaa !57
  %i.jyq = zext i16 %i.jyp to i32
  %i.jyr = shl nuw i32 %i.jyq, 16
  %i.jys = bitcast i32 %i.jyr to float
  %i.jyt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.jys, float %i.jny)
  %i.jyu = bitcast float %i.jyt to i32
  %i.jyv = lshr i32 %i.jyu, 16
  %i.jyw = trunc nuw i32 %i.jyv to i16
  %i.jyx = getelementptr inbounds nuw i8, ptr %.230177.i68.i, i64 4
  store i16 %i.jyw, ptr %i.jyn, align 2, !tbaa !57
  %i.jyy = add nuw nsw i32 %.227178.i67.i, 2      ; 2 uses
  %exitcond.not.i69.i.1 = icmp eq i32 %i.jyy, %i.isc
  br i1 %exitcond.not.i69.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i65.i, !llvm.loop !845

bb.ia:                                            ; preds = %bb.hu, %bb.hj
  %i.jyz = icmp eq i32 %6, 1
  br i1 %i.jyz, label %bb.ib, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.ib:                                            ; preds = %bb.ia
  %i.jza = icmp eq i32 %3, %4
  br i1 %i.jza, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  switch i32 %.sroa.speculated.i956, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i99.i
    i32 4, label %.preheader154.i.i
  ]

.preheader154.i.i:                                ; preds = %bb.ic
  %i.jzb = icmp sgt i32 %.sroa.speculated151.i, 0
  br i1 %i.jzb, label %.lr.ph.i96.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i99.i:                                 ; preds = %bb.ic
  %i.jzc = icmp sgt i32 %.sroa.speculated151.i, 0
  br i1 %i.jzc, label %.lr.ph164.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph164.i.i:                                    ; preds = %.preheader.i99.i, %.lr.ph164.i.i
  %.020163.i.i = phi ptr [ %i.kch, %.lr.ph164.i.i ], [ %0, %.preheader.i99.i ] ; 2 uses
  %.021162.i.i = phi i32 [ %i.kck, %.lr.ph164.i.i ], [ 0, %.preheader.i99.i ]
  %.022161.i.i = phi ptr [ %i.kci, %.lr.ph164.i.i ], [ %1, %.preheader.i99.i ] ; 2 uses
  %.024160.i.i = phi ptr [ %i.kcj, %.lr.ph164.i.i ], [ %2, %.preheader.i99.i ] ; 2 uses
  %i.jzd = load <8 x i16>, ptr %.020163.i.i, align 1, !tbaa !60 ; 2 uses
  %i.jze = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jzd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jzf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.jzd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.jzg = shufflevector <8 x i16> %i.jze, <8 x i16> %i.jzf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jzh = bitcast <16 x i16> %i.jzg to <8 x float>
end_hunk_7
begin_hunk_8_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  br i1 %i.kfw, label %.lr.ph.i117.i, label %._crit_edge.i.i958

.lr.ph.i117.i:                                    ; preds = %bb.ie
  %i.kfx = insertelement <8 x float> poison, float %i.kfv, i64 0
  %i.kfy = shufflevector <8 x float> %i.kfx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kfz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kfy, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.kga = bitcast <8 x float> %i.kfz to <8 x i32>
  %i.kgb = bitcast <8 x float> %i.kfz to <8 x i32>
  %i.kgc = and <8 x i32> %i.kgb, splat (i32 -2139095041)
  %i.kgd = or disjoint <8 x i32> %i.kgc, splat (i32 1056964608)
  %i.kge = bitcast <8 x i32> %i.kgd to <8 x float> ; 3 uses
  %i.kgf = lshr <8 x i32> %i.kga, splat (i32 23)
  %i.kgg = add nsw <8 x i32> %i.kgf, splat (i32 -127)
  %i.kgh = sitofp fast <8 x i32> %i.kgg to <8 x float> ; 2 uses
  %i.kgi = fadd fast <8 x float> %i.kgh, splat (float 1.000000e+00)
  %i.kgj = fcmp fast olt <8 x float> %i.kge, splat (float f0x3F3504F3) ; 2 uses
  %i.kgk = select <8 x i1> %i.kgj, <8 x float> %i.kge, <8 x float> zeroinitializer
  %i.kgl = fadd fast <8 x float> %i.kge, splat (float -1.000000e+00)
  %i.kgm = select fast <8 x i1> %i.kgj, <8 x float> %i.kgh, <8 x float> %i.kgi
  %i.kgn = fadd fast <8 x float> %i.kgl, %i.kgk   ; 12 uses
  %i.kgo = fmul fast <8 x float> %i.kgn, %i.kgn
  %i.kgp = fmul fast <8 x float> %i.kgn, splat (float f0x3D9021BB)
  %i.kgq = fadd fast <8 x float> %i.kgp, splat (float f0xBDEBD1B8)
  %i.kgr = fmul fast <8 x float> %i.kgq, %i.kgn
  %i.kgs = fadd fast <8 x float> %i.kgr, splat (float f0x3DEF251A)
  %i.kgt = fmul fast <8 x float> %i.kgs, %i.kgn
  %i.kgu = fadd fast <8 x float> %i.kgt, splat (float f0xBDFE5D4F)
  %i.kgv = fmul fast <8 x float> %i.kgu, %i.kgn
  %i.kgw = fadd fast <8 x float> %i.kgv, splat (float f0x3E11E9BF)
  %i.kgx = fmul fast <8 x float> %i.kgw, %i.kgn
  %i.kgy = fadd fast <8 x float> %i.kgx, splat (float f0xBE2AAE50)
  %i.kgz = fmul fast <8 x float> %i.kgy, %i.kgn
  %i.kha = fadd fast <8 x float> %i.kgz, splat (float f0x3E4CCEAC)
  %i.khb = fmul fast <8 x float> %i.kha, %i.kgn
  %i.khc = fadd fast <8 x float> %i.khb, splat (float f0xBE7FFFFC)
  %i.khd = fmul fast <8 x float> %i.khc, %i.kgn
  %i.khe = fadd fast <8 x float> %i.khd, splat (float f0x3EAAAAAA)
  %i.khf = fmul fast <8 x float> %i.khe, %i.kgn
  %reass.mul127.i.i971 = fmul fast <8 x float> %i.kgm, splat (float f0x3F317218)
  %reass.add128.i.i972 = fadd fast <8 x float> %i.khf, splat (float -5.000000e-01)
  %reass.mul129.i.i973 = fmul fast <8 x float> %i.kgo, %reass.add128.i.i972
  %i.khg = fadd fast <8 x float> %reass.mul127.i.i971, %i.kgn
  %i.khh = fadd fast <8 x float> %i.khg, %reass.mul129.i.i973
  br label %bb.if

bb.if:                                            ; preds = %bb.if, %.lr.ph.i117.i
  %.0132.i.i974 = phi ptr [ %0, %.lr.ph.i117.i ], [ %i.kix, %bb.if ] ; 2 uses
  %.022131.i.i975 = phi i32 [ 0, %.lr.ph.i117.i ], [ %i.kiz, %bb.if ]
  %.025130.i.i976 = phi ptr [ %2, %.lr.ph.i117.i ], [ %i.kiy, %bb.if ] ; 2 uses
  %i.khi = load <8 x i16>, ptr %.0132.i.i974, align 1, !tbaa !60 ; 2 uses
  %i.khj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.khi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.khk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.khi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.khl = shufflevector <8 x i16> %i.khj, <8 x i16> %i.khk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.khm = bitcast <16 x i16> %i.khl to <8 x float>
  %i.khn = fmul fast <8 x float> %i.khh, %i.khm
  %i.kho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.khn, <8 x float> splat (float f0x42B0C0A5))
  %i.khp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kho, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.khq = fmul fast <8 x float> %i.khp, splat (float f0x3FB8AA3B)
  %i.khr = fadd fast <8 x float> %i.khq, splat (float 5.000000e-01) ; 2 uses
  %i.khs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.khr, i32 1) ; 2 uses
  %i.kht = fcmp fast ogt <8 x float> %i.khs, %i.khr
  %i.khu = select <8 x i1> %i.kht, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.khv = fsub fast <8 x float> %i.khs, %i.khu   ; 2 uses
  %i.khw = fmul fast <8 x float> %i.khv, splat (float f0x3F317218)
  %i.khx = fsub fast <8 x float> %i.khp, %i.khw   ; 8 uses
  %i.khy = fmul fast <8 x float> %i.khx, %i.khx
  %i.khz = fmul fast <8 x float> %i.khx, splat (float f0x39506967)
  %i.kia = fadd fast <8 x float> %i.khz, splat (float f0x3AB743CE)
  %i.kib = fmul fast <8 x float> %i.kia, %i.khx
  %i.kic = fadd fast <8 x float> %i.kib, splat (float f0x3C088908)
  %i.kid = fmul fast <8 x float> %i.kic, %i.khx
  %i.kie = fadd fast <8 x float> %i.kid, splat (float f0x3D2AA9C1)
  %i.kif = fmul fast <8 x float> %i.kie, %i.khx
  %i.kig = fadd fast <8 x float> %i.kif, splat (float f0x3E2AAAAA)
  %i.kih = fmul fast <8 x float> %i.kig, %i.khx
  %i.kii = fadd fast <8 x float> %i.kih, splat (float 5.000000e-01)
  %i.kij = fmul fast <8 x float> %i.khy, %i.kii
  %i.kik = fadd fast <8 x float> %i.khx, splat (float 1.000000e+00)
  %i.kil = fadd fast <8 x float> %i.kik, %i.kij
  %i.kim = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.khv)
  %i.kin = shl <8 x i32> %i.kim, splat (i32 23)
  %i.kio = add <8 x i32> %i.kin, splat (i32 1065353216)
  %i.kip = bitcast <8 x i32> %i.kio to <8 x float>
  %i.kiq = fmul fast <8 x float> %i.kil, %i.kip
  %i.kir = bitcast <8 x float> %i.kiq to <8 x i32> ; 2 uses
  %i.kis = shufflevector <8 x i32> %i.kir, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kit = shufflevector <8 x i32> %i.kir, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kiu = lshr <4 x i32> %i.kis, splat (i32 16)
  %i.kiv = lshr <4 x i32> %i.kit, splat (i32 16)
  %i.kiw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kiu, <4 x i32> %i.kiv)
  store <8 x i16> %i.kiw, ptr %.025130.i.i976, align 1, !tbaa !60
  %i.kix = getelementptr inbounds nuw i8, ptr %.0132.i.i974, i64 16 ; 2 uses
  %i.kiy = getelementptr inbounds nuw i8, ptr %.025130.i.i976, i64 16 ; 2 uses
  %i.kiz = add nuw nsw i32 %.022131.i.i975, 8     ; 2 uses
  %i.kja = or disjoint i32 %i.kiz, 7
  %i.kjb = icmp slt i32 %i.kja, %i.isc
  br i1 %i.kjb, label %bb.if, label %._crit_edge.loopexit.i.i977, !llvm.loop !848

._crit_edge.loopexit.i.i977:                      ; preds = %bb.if
  %i.kjc = and i32 %i.isc, 2147483640
  br label %._crit_edge.i.i958

._crit_edge.i.i958:                               ; preds = %._crit_edge.loopexit.i.i977, %bb.ie
  %.025.lcssa.i110.i = phi ptr [ %2, %bb.ie ], [ %i.kiy, %._crit_edge.loopexit.i.i977 ] ; 2 uses
  %.022.lcssa.i.i959 = phi i32 [ 0, %bb.ie ], [ %i.kjc, %._crit_edge.loopexit.i.i977 ] ; 3 uses
  %.0.lcssa.i111.i = phi ptr [ %0, %bb.ie ], [ %i.kix, %._crit_edge.loopexit.i.i977 ] ; 2 uses
  %i.kjd = or disjoint i32 %.022.lcssa.i.i959, 3
  %i.kje = icmp slt i32 %i.kjd, %i.isc
  br i1 %i.kje, label %.lr.ph139.i.i965, label %.preheader.i112.i

.lr.ph139.i.i965:                                 ; preds = %._crit_edge.i.i958
  %i.kjf = insertelement <4 x float> poison, float %i.kfv, i64 0
  %i.kjg = shufflevector <4 x float> %i.kjf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kjh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kjg, <4 x float> splat (float f0x00800000))
  %i.kji = bitcast <4 x float> %i.kjh to <4 x i32> ; 2 uses
  %i.kjj = lshr <4 x i32> %i.kji, splat (i32 23)
  %i.kjk = and <4 x i32> %i.kji, splat (i32 -2139095041)
  %i.kjl = or disjoint <4 x i32> %i.kjk, splat (i32 1056964608)
  %i.kjm = bitcast <4 x i32> %i.kjl to <4 x float> ; 3 uses
  %i.kjn = add nsw <4 x i32> %i.kjj, splat (i32 -127)
  %i.kjo = sitofp fast <4 x i32> %i.kjn to <4 x float> ; 2 uses
  %i.kjp = fadd fast <4 x float> %i.kjo, splat (float 1.000000e+00)
  %i.kjq = fcmp fast olt <4 x float> %i.kjm, splat (float f0x3F3504F3) ; 2 uses
  %i.kjr = select <4 x i1> %i.kjq, <4 x float> %i.kjm, <4 x float> zeroinitializer
  %i.kjs = fadd fast <4 x float> %i.kjm, splat (float -1.000000e+00)
  %i.kjt = select fast <4 x i1> %i.kjq, <4 x float> %i.kjo, <4 x float> %i.kjp
  %i.kju = fadd fast <4 x float> %i.kjs, %i.kjr   ; 12 uses
  %i.kjv = fmul fast <4 x float> %i.kju, %i.kju
  %i.kjw = fmul fast <4 x float> %i.kju, splat (float f0x3D9021BB)
  %i.kjx = fadd fast <4 x float> %i.kjw, splat (float f0xBDEBD1B8)
  %i.kjy = fmul fast <4 x float> %i.kjx, %i.kju
  %i.kjz = fadd fast <4 x float> %i.kjy, splat (float f0x3DEF251A)
  %i.kka = fmul fast <4 x float> %i.kjz, %i.kju
  %i.kkb = fadd fast <4 x float> %i.kka, splat (float f0xBDFE5D4F)
  %i.kkc = fmul fast <4 x float> %i.kkb, %i.kju
  %i.kkd = fadd fast <4 x float> %i.kkc, splat (float f0x3E11E9BF)
  %i.kke = fmul fast <4 x float> %i.kkd, %i.kju
  %i.kkf = fadd fast <4 x float> %i.kke, splat (float f0xBE2AAE50)
  %i.kkg = fmul fast <4 x float> %i.kkf, %i.kju
  %i.kkh = fadd fast <4 x float> %i.kkg, splat (float f0x3E4CCEAC)
  %i.kki = fmul fast <4 x float> %i.kkh, %i.kju
  %i.kkj = fadd fast <4 x float> %i.kki, splat (float f0xBE7FFFFC)
  %i.kkk = fmul fast <4 x float> %i.kkj, %i.kju
  %i.kkl = fadd fast <4 x float> %i.kkk, splat (float f0x3EAAAAAA)
  %i.kkm = fmul fast <4 x float> %i.kkl, %i.kju
  %reass.mul.i116.i = fmul fast <4 x float> %i.kjt, splat (float f0x3F317218)
  %reass.add125.i.i966 = fadd fast <4 x float> %i.kkm, splat (float -5.000000e-01)
  %reass.mul126.i.i967 = fmul fast <4 x float> %i.kjv, %reass.add125.i.i966
  %i.kkn = fadd fast <4 x float> %reass.mul.i116.i, %i.kju
  %i.kko = fadd fast <4 x float> %i.kkn, %reass.mul126.i.i967
  br label %bb.ig

.preheader.i112.i:                                ; preds = %bb.ig, %._crit_edge.i.i958
  %.126.lcssa.i113.i = phi ptr [ %.025.lcssa.i110.i, %._crit_edge.i.i958 ], [ %i.kpj, %bb.ig ] ; 6 uses
  %.123.lcssa.i.i960 = phi i32 [ %.022.lcssa.i.i959, %._crit_edge.i.i958 ], [ %i.kpk, %bb.ig ] ; 5 uses
  %.1.lcssa.i114.i = phi ptr [ %.0.lcssa.i111.i, %._crit_edge.i.i958 ], [ %i.kpi, %bb.ig ] ; 6 uses
  %i.kkp = icmp slt i32 %.123.lcssa.i.i960, %i.isc
  br i1 %i.kkp, label %iter.check5347, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5347:                                   ; preds = %.preheader.i112.i
  %.126.lcssa.i113.i5331 = ptrtoaddr ptr %.126.lcssa.i113.i to i64
  %.1.lcssa.i114.i5330 = ptrtoaddr ptr %.1.lcssa.i114.i to i64
  %i.kkq = xor i32 %.123.lcssa.i.i960, -1
  %i.kkr = add i32 %i.isc, %i.kkq                 ; 3 uses
  %i.kks = zext i32 %i.kkr to i64
  %i.kkt = add nuw nsw i64 %i.kks, 1              ; 5 uses
  %min.iters.check5332 = icmp ult i32 %i.kkr, 3
  %i.kku = sub i64 %.1.lcssa.i114.i5330, %.126.lcssa.i113.i5331
  %diff.check5334 = icmp ugt i64 %i.kku, -32
  %or.cond7120 = select i1 %min.iters.check5332, i1 true, i1 %diff.check5334
  br i1 %or.cond7120, label %.lr.ph146.i.i961.preheader, label %vector.main.loop.iter.check5335

vector.main.loop.iter.check5335:                  ; preds = %iter.check5347
  %min.iters.check5336 = icmp ult i32 %i.kkr, 15
  br i1 %min.iters.check5336, label %vec.epilog.ph5351, label %vector.ph5337

vector.ph5337:                                    ; preds = %vector.main.loop.iter.check5335
  %i.kkv = and i64 %i.kkt, 12
  %n.vec5338 = and i64 %i.kkt, 8589934576         ; 5 uses
  %i.kkw = shl nuw nsw i64 %n.vec5338, 1          ; 2 uses
  %i.kkx = getelementptr i8, ptr %.1.lcssa.i114.i, i64 %i.kkw
  %i.kky = trunc i64 %n.vec5338 to i32
  %i.kkz = add i32 %.123.lcssa.i.i960, %i.kky
  %i.kla = getelementptr i8, ptr %.126.lcssa.i113.i, i64 %i.kkw
  %i.klb = insertelement <8 x float> poison, float %i.kfv, i64 0
  %i.klc = shufflevector <8 x float> %i.klb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kld = insertelement <4 x float> poison, float %i.kfv, i64 0
  %i.kle = shufflevector <4 x float> %i.kld, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5339

vector.body5339:                                  ; preds = %vector.ph5337, %vector.body5339
  %index5340 = phi i64 [ 0, %vector.ph5337 ], [ %index.next5344, %vector.body5339 ] ; 2 uses
  %i.klf = shl i64 %index5340, 1                  ; 2 uses
  %next.gep5341 = getelementptr i8, ptr %.1.lcssa.i114.i, i64 %i.klf
  %next.gep5342 = getelementptr i8, ptr %.126.lcssa.i113.i, i64 %i.klf
  %wide.load5343 = load <16 x i16>, ptr %next.gep5341, align 2, !tbaa !57
  %i.klg = zext <16 x i16> %wide.load5343 to <16 x i32>
  %i.klh = shl nuw <16 x i32> %i.klg, splat (i32 16)
  %i.kli = bitcast <16 x i32> %i.klh to <16 x float> ; 6 uses
  %i.klj = extractelement <16 x float> %i.kli, i64 0
  %i.klk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.klj)
  %i.kll = extractelement <16 x float> %i.kli, i64 1
  %i.klm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kll)
  %i.kln = extractelement <16 x float> %i.kli, i64 2
  %i.klo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kln)
  %i.klp = extractelement <16 x float> %i.kli, i64 3
  %i.klq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.klp)
  %i.klr = shufflevector <16 x float> %i.kli, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kls = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.kle, <4 x float> %i.klr)
  %i.klt = shufflevector <16 x float> %i.kli, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.klu = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.klc, <8 x float> %i.klt)
  %i.klv = insertelement <16 x float> poison, float %i.klk, i64 0
  %i.klw = insertelement <16 x float> %i.klv, float %i.klm, i64 1
  %i.klx = insertelement <16 x float> %i.klw, float %i.klo, i64 2
  %i.kly = insertelement <16 x float> %i.klx, float %i.klq, i64 3
  %i.klz = shufflevector <4 x float> %i.kls, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kma = shufflevector <16 x float> %i.kly, <16 x float> %i.klz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kmb = shufflevector <8 x float> %i.klu, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kmc = shufflevector <16 x float> %i.kma, <16 x float> %i.kmb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.kmd = bitcast <16 x float> %i.kmc to <16 x i32>
  %i.kme = lshr <16 x i32> %i.kmd, splat (i32 16)
  %i.kmf = trunc nuw <16 x i32> %i.kme to <16 x i16>
  store <16 x i16> %i.kmf, ptr %next.gep5342, align 2, !tbaa !57
  %index.next5344 = add nuw i64 %index5340, 16    ; 2 uses
  %i.kmg = icmp eq i64 %index.next5344, %n.vec5338
  br i1 %i.kmg, label %middle.block5345, label %vector.body5339, !llvm.loop !849

middle.block5345:                                 ; preds = %vector.body5339
  %cmp.n5346 = icmp eq i64 %i.kkt, %n.vec5338
  br i1 %cmp.n5346, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5348

vec.epilog.iter.check5348:                        ; preds = %middle.block5345
  %min.epilog.iters.check5350 = icmp eq i64 %i.kkv, 0
  br i1 %min.epilog.iters.check5350, label %.lr.ph146.i.i961.preheader, label %vec.epilog.ph5351, !prof !64

vec.epilog.ph5351:                                ; preds = %vector.main.loop.iter.check5335, %vec.epilog.iter.check5348
  %vec.epilog.resume.val5352 = phi i64 [ %n.vec5338, %vec.epilog.iter.check5348 ], [ 0, %vector.main.loop.iter.check5335 ]
  %n.vec5353 = and i64 %i.kkt, 8589934588         ; 4 uses
  %i.kmh = shl nuw nsw i64 %n.vec5353, 1          ; 2 uses
  %i.kmi = getelementptr i8, ptr %.1.lcssa.i114.i, i64 %i.kmh
  %i.kmj = trunc i64 %n.vec5353 to i32
  %i.kmk = add i32 %.123.lcssa.i.i960, %i.kmj
  %i.kml = getelementptr i8, ptr %.126.lcssa.i113.i, i64 %i.kmh
  br label %vec.epilog.vector.body5354

vec.epilog.vector.body5354:                       ; preds = %vec.epilog.vector.body5354, %vec.epilog.ph5351
  %index5355 = phi i64 [ %vec.epilog.resume.val5352, %vec.epilog.ph5351 ], [ %index.next5359, %vec.epilog.vector.body5354 ] ; 2 uses
  %i.kmm = shl i64 %index5355, 1                  ; 2 uses
  %next.gep5356 = getelementptr i8, ptr %.1.lcssa.i114.i, i64 %i.kmm
  %next.gep5357 = getelementptr i8, ptr %.126.lcssa.i113.i, i64 %i.kmm
  %wide.load5358 = load <4 x i16>, ptr %next.gep5356, align 2, !tbaa !57
  %i.kmn = zext <4 x i16> %wide.load5358 to <4 x i32>
  %i.kmo = shl nuw <4 x i32> %i.kmn, splat (i32 16)
  %i.kmp = bitcast <4 x i32> %i.kmo to <4 x float> ; 4 uses
  %i.kmq = extractelement <4 x float> %i.kmp, i64 0
  %i.kmr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kmq)
  %i.kms = extractelement <4 x float> %i.kmp, i64 1
  %i.kmt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kms)
  %i.kmu = extractelement <4 x float> %i.kmp, i64 2
  %i.kmv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kmu)
  %i.kmw = extractelement <4 x float> %i.kmp, i64 3
  %i.kmx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kmw)
  %i.kmy = insertelement <4 x float> poison, float %i.kmr, i64 0
  %i.kmz = insertelement <4 x float> %i.kmy, float %i.kmt, i64 1
  %i.kna = insertelement <4 x float> %i.kmz, float %i.kmv, i64 2
  %i.knb = insertelement <4 x float> %i.kna, float %i.kmx, i64 3
  %i.knc = bitcast <4 x float> %i.knb to <4 x i32>
  %i.knd = lshr <4 x i32> %i.knc, splat (i32 16)
  %i.kne = trunc nuw <4 x i32> %i.knd to <4 x i16>
  store <4 x i16> %i.kne, ptr %next.gep5357, align 2, !tbaa !57
  %index.next5359 = add nuw i64 %index5355, 4     ; 2 uses
  %i.knf = icmp eq i64 %index.next5359, %n.vec5353
  br i1 %i.knf, label %vec.epilog.middle.block5360, label %vec.epilog.vector.body5354, !llvm.loop !850

vec.epilog.middle.block5360:                      ; preds = %vec.epilog.vector.body5354
  %cmp.n5361 = icmp eq i64 %i.kkt, %n.vec5353
  br i1 %cmp.n5361, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph146.i.i961.preheader

.lr.ph146.i.i961.preheader:                       ; preds = %iter.check5347, %vec.epilog.iter.check5348, %vec.epilog.middle.block5360
  %.2145.i.i962.ph = phi ptr [ %.1.lcssa.i114.i, %iter.check5347 ], [ %i.kkx, %vec.epilog.iter.check5348 ], [ %i.kmi, %vec.epilog.middle.block5360 ] ; 3 uses
  %.224144.i.i963.ph = phi i32 [ %.123.lcssa.i.i960, %iter.check5347 ], [ %i.kkz, %vec.epilog.iter.check5348 ], [ %i.kmk, %vec.epilog.middle.block5360 ] ; 4 uses
  %.227143.i.i964.ph = phi ptr [ %.126.lcssa.i113.i, %iter.check5347 ], [ %i.kla, %vec.epilog.iter.check5348 ], [ %i.kml, %vec.epilog.middle.block5360 ] ; 3 uses
  %i.kng = sub i32 %i.isc, %.224144.i.i963.ph
  %.neg8030 = add i32 %.224144.i.i963.ph, 1
  %xtraiter7835 = and i32 %i.kng, 1
  %lcmp.mod7836.not = icmp eq i32 %xtraiter7835, 0
  br i1 %lcmp.mod7836.not, label %.lr.ph146.i.i961.prol.loopexit, label %.lr.ph146.i.i961.prol

.lr.ph146.i.i961.prol:                            ; preds = %.lr.ph146.i.i961.preheader
  %i.knh = getelementptr inbounds nuw i8, ptr %.2145.i.i962.ph, i64 2
  %i.kni = load i16, ptr %.2145.i.i962.ph, align 2, !tbaa !57
  %i.knj = zext i16 %i.kni to i32
  %i.knk = shl nuw i32 %i.knj, 16
  %i.knl = bitcast i32 %i.knk to float
  %i.knm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.knl)
  %i.knn = bitcast float %i.knm to i32
  %i.kno = lshr i32 %i.knn, 16
  %i.knp = trunc nuw i32 %i.kno to i16
  %i.knq = getelementptr inbounds nuw i8, ptr %.227143.i.i964.ph, i64 2
  store i16 %i.knp, ptr %.227143.i.i964.ph, align 2, !tbaa !57
  %i.knr = add nuw nsw i32 %.224144.i.i963.ph, 1
  br label %.lr.ph146.i.i961.prol.loopexit

.lr.ph146.i.i961.prol.loopexit:                   ; preds = %.lr.ph146.i.i961.prol, %.lr.ph146.i.i961.preheader
  %.2145.i.i962.unr = phi ptr [ %.2145.i.i962.ph, %.lr.ph146.i.i961.preheader ], [ %i.knh, %.lr.ph146.i.i961.prol ]
  %.224144.i.i963.unr = phi i32 [ %.224144.i.i963.ph, %.lr.ph146.i.i961.preheader ], [ %i.knr, %.lr.ph146.i.i961.prol ]
  %.227143.i.i964.unr = phi ptr [ %.227143.i.i964.ph, %.lr.ph146.i.i961.preheader ], [ %i.knq, %.lr.ph146.i.i961.prol ]
  %i.kns = icmp eq i32 %i.isc, %.neg8030
  br i1 %i.kns, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph146.i.i961

bb.ig:                                            ; preds = %bb.ig, %.lr.ph139.i.i965
  %.1137.i.i968 = phi ptr [ %.0.lcssa.i111.i, %.lr.ph139.i.i965 ], [ %i.kpi, %bb.ig ] ; 2 uses
  %.123136.i.i969 = phi i32 [ %.022.lcssa.i.i959, %.lr.ph139.i.i965 ], [ %i.kpk, %bb.ig ]
  %.126135.i.i970 = phi ptr [ %.025.lcssa.i110.i, %.lr.ph139.i.i965 ], [ %i.kpj, %bb.ig ] ; 2 uses
  %i.knt = load i64, ptr %.1137.i.i968, align 1, !tbaa !60
  %i.knu = insertelement <2 x i64> poison, i64 %i.knt, i64 0
  %i.knv = bitcast <2 x i64> %i.knu to <8 x i16>
  %i.knw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.knv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.knx = bitcast <8 x i16> %i.knw to <4 x float>
  %i.kny = fmul fast <4 x float> %i.kko, %i.knx
  %i.knz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kny, <4 x float> splat (float f0x42B0C0A5))
  %i.koa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.knz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kob = fmul fast <4 x float> %i.koa, splat (float f0x3FB8AA3B)
  %i.koc = fadd fast <4 x float> %i.kob, splat (float 5.000000e-01) ; 2 uses
  %i.kod = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.koc)
  %i.koe = sitofp fast <4 x i32> %i.kod to <4 x float> ; 2 uses
  %i.kof = fcmp fast olt <4 x float> %i.koc, %i.koe
  %i.kog = select <4 x i1> %i.kof, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.koh = fsub fast <4 x float> %i.koe, %i.kog   ; 2 uses
  %i.koi = fmul fast <4 x float> %i.koh, splat (float f0x3F317218)
  %i.koj = fsub fast <4 x float> %i.koa, %i.koi   ; 8 uses
  %i.kok = fmul fast <4 x float> %i.koj, %i.koj
  %i.kol = fmul fast <4 x float> %i.koj, splat (float f0x39506967)
  %i.kom = fadd fast <4 x float> %i.kol, splat (float f0x3AB743CE)
  %i.kon = fmul fast <4 x float> %i.kom, %i.koj
  %i.koo = fadd fast <4 x float> %i.kon, splat (float f0x3C088908)
  %i.kop = fmul fast <4 x float> %i.koo, %i.koj
  %i.koq = fadd fast <4 x float> %i.kop, splat (float f0x3D2AA9C1)
  %i.kor = fmul fast <4 x float> %i.koq, %i.koj
  %i.kos = fadd fast <4 x float> %i.kor, splat (float f0x3E2AAAAA)
  %i.kot = fmul fast <4 x float> %i.kos, %i.koj
  %i.kou = fadd fast <4 x float> %i.kot, splat (float 5.000000e-01)
  %i.kov = fmul fast <4 x float> %i.kok, %i.kou
  %i.kow = fadd fast <4 x float> %i.koj, splat (float 1.000000e+00)
  %i.kox = fadd fast <4 x float> %i.kow, %i.kov
  %i.koy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.koh)
  %i.koz = shl <4 x i32> %i.koy, splat (i32 23)
  %i.kpa = add <4 x i32> %i.koz, splat (i32 1065353216)
  %i.kpb = bitcast <4 x i32> %i.kpa to <4 x float>
  %i.kpc = fmul fast <4 x float> %i.kox, %i.kpb
  %i.kpd = bitcast <4 x float> %i.kpc to <4 x i32>
  %i.kpe = lshr <4 x i32> %i.kpd, splat (i32 16)
  %i.kpf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kpe, <4 x i32> poison)
  %i.kpg = bitcast <8 x i16> %i.kpf to <2 x i64>
  %i.kph = extractelement <2 x i64> %i.kpg, i64 0
  store i64 %i.kph, ptr %.126135.i.i970, align 1, !tbaa !60
  %i.kpi = getelementptr inbounds nuw i8, ptr %.1137.i.i968, i64 8 ; 2 uses
  %i.kpj = getelementptr inbounds nuw i8, ptr %.126135.i.i970, i64 8 ; 2 uses
  %i.kpk = add nuw nsw i32 %.123136.i.i969, 4     ; 3 uses
  %i.kpl = or disjoint i32 %i.kpk, 3
  %i.kpm = icmp slt i32 %i.kpl, %i.isc
  br i1 %i.kpm, label %bb.ig, label %.preheader.i112.i, !llvm.loop !851

.lr.ph146.i.i961:                                 ; preds = %.lr.ph146.i.i961.prol.loopexit, %.lr.ph146.i.i961
  %.2145.i.i962 = phi ptr [ %i.kpx, %.lr.ph146.i.i961 ], [ %.2145.i.i962.unr, %.lr.ph146.i.i961.prol.loopexit ] ; 3 uses
  %.224144.i.i963 = phi i32 [ %i.kqh, %.lr.ph146.i.i961 ], [ %.224144.i.i963.unr, %.lr.ph146.i.i961.prol.loopexit ]
  %.227143.i.i964 = phi ptr [ %i.kqg, %.lr.ph146.i.i961 ], [ %.227143.i.i964.unr, %.lr.ph146.i.i961.prol.loopexit ] ; 3 uses
  %i.kpn = getelementptr inbounds nuw i8, ptr %.2145.i.i962, i64 2
  %i.kpo = load i16, ptr %.2145.i.i962, align 2, !tbaa !57
  %i.kpp = zext i16 %i.kpo to i32
  %i.kpq = shl nuw i32 %i.kpp, 16
  %i.kpr = bitcast i32 %i.kpq to float
  %i.kps = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kpr)
  %i.kpt = bitcast float %i.kps to i32
  %i.kpu = lshr i32 %i.kpt, 16
  %i.kpv = trunc nuw i32 %i.kpu to i16
  %i.kpw = getelementptr inbounds nuw i8, ptr %.227143.i.i964, i64 2
  store i16 %i.kpv, ptr %.227143.i.i964, align 2, !tbaa !57
  %i.kpx = getelementptr inbounds nuw i8, ptr %.2145.i.i962, i64 4
  %i.kpy = load i16, ptr %i.kpn, align 2, !tbaa !57
  %i.kpz = zext i16 %i.kpy to i32
  %i.kqa = shl nuw i32 %i.kpz, 16
  %i.kqb = bitcast i32 %i.kqa to float
  %i.kqc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.kfv, float %i.kqb)
  %i.kqd = bitcast float %i.kqc to i32
  %i.kqe = lshr i32 %i.kqd, 16
  %i.kqf = trunc nuw i32 %i.kqe to i16
  %i.kqg = getelementptr inbounds nuw i8, ptr %.227143.i.i964, i64 4
  store i16 %i.kqf, ptr %i.kpw, align 2, !tbaa !57
  %i.kqh = add nuw nsw i32 %.224144.i.i963, 2     ; 2 uses
  %exitcond.not.i115.i.1 = icmp eq i32 %i.kqh, %i.isc
  br i1 %exitcond.not.i115.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph146.i.i961, !llvm.loop !852

bb.ih:                                            ; preds = %bb.id
  %i.kqi = icmp eq i32 %3, 1
  br i1 %i.kqi, label %bb.ii, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.ii:                                            ; preds = %bb.ih
  switch i32 %.sroa.speculated.i956, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.ij
    i32 4, label %bb.ik
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.kqj = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.kqk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kqj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kql = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.kqj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kqm = shufflevector <8 x i16> %i.kqk, <8 x i16> %i.kql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kqn = bitcast <16 x i16> %i.kqm to <8 x float>
  br label %.lr.ph157.i.i

.lr.ph157.i.i:                                    ; preds = %.lr.ph157.i.i, %bb.ij
  %.018156.i.i = phi ptr [ %i.ktn, %.lr.ph157.i.i ], [ %1, %bb.ij ] ; 2 uses
  %.019155.i.i = phi i32 [ %i.ktp, %.lr.ph157.i.i ], [ 0, %bb.ij ]
  %.020154.i.i = phi ptr [ %i.kto, %.lr.ph157.i.i ], [ %2, %bb.ij ] ; 2 uses
  %i.kqo = load i16, ptr %.018156.i.i, align 2, !tbaa !57
  %i.kqp = zext i16 %i.kqo to i32
  %i.kqq = shl nuw i32 %i.kqp, 16
  %i.kqr = insertelement <8 x i32> poison, i32 %i.kqq, i64 0
  %i.kqs = bitcast <8 x i32> %i.kqr to <8 x float>
  %i.kqt = shufflevector <8 x float> %i.kqs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kqu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kqt, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.kqv = bitcast <8 x float> %i.kqu to <8 x i32>
  %i.kqw = bitcast <8 x float> %i.kqu to <8 x i32>
  %i.kqx = and <8 x i32> %i.kqw, splat (i32 -2139095041)
  %i.kqy = or disjoint <8 x i32> %i.kqx, splat (i32 1056964608)
  %i.kqz = bitcast <8 x i32> %i.kqy to <8 x float> ; 3 uses
  %i.kra = lshr <8 x i32> %i.kqv, splat (i32 23)
  %i.krb = add nsw <8 x i32> %i.kra, splat (i32 -127)
  %i.krc = sitofp fast <8 x i32> %i.krb to <8 x float> ; 2 uses
  %i.krd = fadd fast <8 x float> %i.krc, splat (float 1.000000e+00)
  %i.kre = fcmp fast olt <8 x float> %i.kqz, splat (float f0x3F3504F3) ; 2 uses
  %i.krf = select <8 x i1> %i.kre, <8 x float> %i.kqz, <8 x float> zeroinitializer
  %i.krg = fadd fast <8 x float> %i.kqz, splat (float -1.000000e+00)
  %i.krh = select fast <8 x i1> %i.kre, <8 x float> %i.krc, <8 x float> %i.krd
  %i.kri = fadd fast <8 x float> %i.krg, %i.krf   ; 12 uses
  %i.krj = fmul fast <8 x float> %i.kri, %i.kri
  %i.krk = fmul fast <8 x float> %i.kri, splat (float f0x3D9021BB)
  %i.krl = fadd fast <8 x float> %i.krk, splat (float f0xBDEBD1B8)
  %i.krm = fmul fast <8 x float> %i.krl, %i.kri
  %i.krn = fadd fast <8 x float> %i.krm, splat (float f0x3DEF251A)
  %i.kro = fmul fast <8 x float> %i.krn, %i.kri
  %i.krp = fadd fast <8 x float> %i.kro, splat (float f0xBDFE5D4F)
  %i.krq = fmul fast <8 x float> %i.krp, %i.kri
  %i.krr = fadd fast <8 x float> %i.krq, splat (float f0x3E11E9BF)
  %i.krs = fmul fast <8 x float> %i.krr, %i.kri
  %i.krt = fadd fast <8 x float> %i.krs, splat (float f0xBE2AAE50)
  %i.kru = fmul fast <8 x float> %i.krt, %i.kri
  %i.krv = fadd fast <8 x float> %i.kru, splat (float f0x3E4CCEAC)
  %i.krw = fmul fast <8 x float> %i.krv, %i.kri
  %i.krx = fadd fast <8 x float> %i.krw, splat (float f0xBE7FFFFC)
  %i.kry = fmul fast <8 x float> %i.krx, %i.kri
  %i.krz = fadd fast <8 x float> %i.kry, splat (float f0x3EAAAAAA)
  %i.ksa = fmul fast <8 x float> %i.krz, %i.kri
  %reass.mul147.i.i = fmul fast <8 x float> %i.krh, splat (float f0x3F317218)
  %reass.add148.i.i = fadd fast <8 x float> %i.ksa, splat (float -5.000000e-01)
  %reass.mul149.i.i = fmul fast <8 x float> %i.krj, %reass.add148.i.i
  %i.ksb = fadd fast <8 x float> %reass.mul147.i.i, %i.kri
  %i.ksc = fadd fast <8 x float> %i.ksb, %reass.mul149.i.i
  %i.ksd = fmul fast <8 x float> %i.ksc, %i.kqn
  %i.kse = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ksd, <8 x float> splat (float f0x42B0C0A5))
  %i.ksf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kse, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.lge = bitcast float %i.lgd to i32
  %i.lgf = lshr i32 %i.lge, 16
  %i.lgg = trunc nuw i32 %i.lgf to i16
  %i.lgh = getelementptr inbounds nuw i8, ptr %.232133.i.i, i64 4
  store i16 %i.lgg, ptr %i.lfs, align 2, !tbaa !57
  %i.lgi = add nuw nsw i32 %.226135.i.i, 2        ; 2 uses
  %exitcond.not.i.i1028.1 = icmp eq i32 %i.lgi, %i.kww
  br i1 %exitcond.not.i.i1028.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i, !llvm.loop !859

bb.io:                                            ; preds = %bb.im
  %i.lgj = icmp eq i32 %4, 1
  br i1 %i.lgj, label %bb.ip, label %bb.iw

bb.ip:                                            ; preds = %bb.io
  %i.lgk = load i16, ptr %1, align 2, !tbaa !57
  %i.lgl = zext i16 %i.lgk to i32
  %i.lgm = shl nuw i32 %i.lgl, 16
  %i.lgn = bitcast i32 %i.lgm to float            ; 14 uses
  %i.lgo = icmp eq i32 %.sroa.speculated.i1005, 4
  br i1 %i.lgo, label %.thread.i.i1018, label %bb.iq

.thread.i.i1018:                                  ; preds = %bb.ip
  %i.lgp = load i64, ptr %1, align 2, !tbaa !60
  %i.lgq = insertelement <2 x i64> poison, i64 %i.lgp, i64 0
  %i.lgr = bitcast <2 x i64> %i.lgq to <8 x i16>
  %i.lgs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lgr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lgt = bitcast <8 x i16> %i.lgs to <4 x float>
  br label %bb.is

bb.iq:                                            ; preds = %bb.ip
  %i.lgu = insertelement <4 x float> poison, float %i.lgn, i64 0
  %i.lgv = shufflevector <4 x float> %i.lgu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lgw = icmp eq i32 %.sroa.speculated.i1005, 8
  br i1 %i.lgw, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.lgx = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.lgy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lgx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lgz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lgx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lha = shufflevector <8 x i16> %i.lgy, <8 x i16> %i.lgz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lhb = bitcast <16 x i16> %i.lha to <8 x float>
  br label %bb.it

bb.is:                                            ; preds = %bb.iq, %.thread.i.i1018
  %i.lhc = phi <4 x float> [ %i.lgt, %.thread.i.i1018 ], [ %i.lgv, %bb.iq ] ; 2 uses
  %i.lhd = shufflevector <4 x float> %i.lhc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.lhe = phi <4 x float> [ %i.lgv, %bb.ir ], [ %i.lhc, %bb.is ] ; 4 uses
  %i.lhf = phi fast <8 x float> [ %i.lhb, %bb.ir ], [ %i.lhd, %bb.is ] ; 4 uses
  %i.lhg = icmp sgt i32 %i.kww, 7
  br i1 %i.lhg, label %.lr.ph.i38.i, label %.preheader115.i.i

.lr.ph.i38.i:                                     ; preds = %bb.it
  %i.lhh = fcmp fast ueq <8 x float> %i.lhf, zeroinitializer ; 2 uses
  %i.lhi = fcmp fast olt <8 x float> %i.lhf, zeroinitializer
  %i.lhj = bitcast <8 x float> %i.lhf to <8 x i32>
  %isneg.inv112.i.i = icmp slt <8 x i32> %i.lhj, zeroinitializer
  %i.lhk = select <8 x i1> %isneg.inv112.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.lhl = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lhf
  br label %bb.iu

.preheader115.loopexit.i.i:                       ; preds = %bb.iu
  %i.lhm = and i32 %i.kww, 2147483640
  br label %.preheader115.i.i

.preheader115.i.i:                                ; preds = %.preheader115.loopexit.i.i, %bb.it
  %.028.lcssa.i.i1014 = phi ptr [ %2, %bb.it ], [ %i.ljy, %.preheader115.loopexit.i.i ] ; 2 uses
  %.025.lcssa.i.i1015 = phi i32 [ 0, %bb.it ], [ %i.lhm, %.preheader115.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i34.i = phi ptr [ %0, %bb.it ], [ %i.ljx, %.preheader115.loopexit.i.i ] ; 2 uses
  %i.lhn = or disjoint i32 %.025.lcssa.i.i1015, 3
  %i.lho = icmp slt i32 %i.lhn, %i.kww
  br i1 %i.lho, label %.lr.ph124.i.i, label %.preheader.i35.i

.lr.ph124.i.i:                                    ; preds = %.preheader115.i.i
  %i.lhp = fcmp fast oeq <4 x float> %i.lhe, zeroinitializer ; 2 uses
  %i.lhq = fcmp fast olt <4 x float> %i.lhe, zeroinitializer
  %i.lhr = bitcast <4 x float> %i.lhe to <4 x i32>
  %isneg.inv.i.i = icmp slt <4 x i32> %i.lhr, zeroinitializer
  %i.lhs = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.lht = fdiv fast <4 x float> splat (float 1.000000e+00), %i.lhe
  br label %bb.iv

bb.iu:                                            ; preds = %bb.iu, %.lr.ph.i38.i
  %.0118.i.i = phi ptr [ %0, %.lr.ph.i38.i ], [ %i.ljx, %bb.iu ] ; 2 uses
  %.025117.i.i = phi i32 [ 0, %.lr.ph.i38.i ], [ %i.ljz, %bb.iu ]
  %.028116.i.i = phi ptr [ %2, %.lr.ph.i38.i ], [ %i.ljy, %bb.iu ] ; 2 uses
  %i.lhu = load <8 x i16>, ptr %.0118.i.i, align 1, !tbaa !60 ; 2 uses
  %i.lhv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lhu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lhw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lhu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lhx = shufflevector <8 x i16> %i.lhv, <8 x i16> %i.lhw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.lhy = bitcast <16 x i16> %i.lhx to <8 x float> ; 3 uses
  %i.lhz = fcmp fast ueq <8 x float> %i.lhy, zeroinitializer ; 2 uses
  %.not114.i.i = or <8 x i1> %i.lhh, %i.lhz
  %i.lia = fcmp fast olt <8 x float> %i.lhy, zeroinitializer
  %i.lib = select <8 x i1> %i.lia, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lic = select <8 x i1> %i.lhi, <8 x float> %i.lib, <8 x float> zeroinitializer
  %i.lid = fmul fast <8 x float> %i.lhy, %i.lhl   ; 2 uses
  %i.lie = bitcast <8 x float> %i.lid to <8 x i32>
  %i.lif = and <8 x i32> %i.lie, splat (i32 -2147483648)
  %i.lig = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lid) ; 3 uses
  %i.lih = fcmp fast ogt <8 x float> %i.lig, splat (float 1.000000e+00) ; 2 uses
  %i.lii = select <8 x i1> %i.lih, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lig
  %i.lij = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lig, <8 x float> splat (float 1.000000e+00))
  %i.lik = fdiv fast <8 x float> %i.lii, %i.lij   ; 3 uses
  %i.lil = fmul fast <8 x float> %i.lik, %i.lik   ; 3 uses
  %i.lim = fmul fast <8 x float> %i.lil, %i.lil   ; 7 uses
  %i.lin = fmul fast <8 x float> %i.lim, splat (float f0x3C83A25C)
  %i.lio = fsub fast <8 x float> splat (float f0xBD99B01E), %i.lin
  %i.lip = fmul fast <8 x float> %i.lio, %i.lim
  %i.liq = fadd fast <8 x float> %i.lip, splat (float f0xBE117200)
  %i.lir = fmul fast <8 x float> %i.liq, %i.lim
  %i.lis = fadd fast <8 x float> %i.lir, splat (float f0xBEAAAA53)
  %i.lit = fmul fast <8 x float> %i.lim, splat (float f0x3B3AC537)
  %i.liu = fadd fast <8 x float> %i.lit, splat (float f0x3D2EDD4E)
  %i.liv = fmul fast <8 x float> %i.liu, %i.lim
  %i.liw = fadd fast <8 x float> %i.liv, splat (float f0x3DD9ED24)
  %i.lix = fmul fast <8 x float> %i.liw, %i.lim
  %i.liy = fadd fast <8 x float> %i.lix, splat (float f0x3E4CB974)
  %i.liz = fmul fast <8 x float> %i.liy, %i.lim
  %i.lja = fadd fast <8 x float> %i.liz, splat (float 1.000000e+00)
  %i.ljb = fmul fast <8 x float> %i.lis, %i.lil
  %i.ljc = fadd fast <8 x float> %i.lja, %i.ljb
  %i.ljd = fmul fast <8 x float> %i.ljc, %i.lik
  %i.lje = select <8 x i1> %i.lih, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ljf = fadd fast <8 x float> %i.ljd, %i.lje
  %i.ljg = bitcast <8 x float> %i.ljf to <8 x i32>
  %i.ljh = or <8 x i32> %i.lif, %i.ljg
  %i.lji = bitcast <8 x i32> %i.ljh to <8 x float>
  %i.ljj = fadd fast <8 x float> %i.lic, %i.lji
  %i.ljk = bitcast <16 x i16> %i.lhx to <8 x i32>
  %i.ljl = and <8 x i32> %i.ljk, splat (i32 -2147483648)
  %i.ljm = or disjoint <8 x i32> %i.ljl, splat (i32 1070141403)
  %i.ljn = bitcast <8 x float> %i.ljj to <8 x i32>
  %i.ljo = select <8 x i1> %.not114.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.ljn
  %i.ljp = select <8 x i1> %i.lhh, <8 x i32> %i.ljm, <8 x i32> zeroinitializer
  %i.ljq = select <8 x i1> %i.lhz, <8 x i32> %i.lhk, <8 x i32> %i.ljp
  %i.ljr = or <8 x i32> %i.ljo, %i.ljq            ; 2 uses
  %i.ljs = shufflevector <8 x i32> %i.ljr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ljt = shufflevector <8 x i32> %i.ljr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lju = lshr <4 x i32> %i.ljs, splat (i32 16)
  %i.ljv = lshr <4 x i32> %i.ljt, splat (i32 16)
  %i.ljw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lju, <4 x i32> %i.ljv)
  store <8 x i16> %i.ljw, ptr %.028116.i.i, align 1, !tbaa !60
  %i.ljx = getelementptr inbounds nuw i8, ptr %.0118.i.i, i64 16 ; 2 uses
  %i.ljy = getelementptr inbounds nuw i8, ptr %.028116.i.i, i64 16 ; 2 uses
  %i.ljz = add nuw nsw i32 %.025117.i.i, 8        ; 2 uses
  %i.lka = or disjoint i32 %i.ljz, 7
  %i.lkb = icmp slt i32 %i.lka, %i.kww
  br i1 %i.lkb, label %bb.iu, label %.preheader115.loopexit.i.i, !llvm.loop !860

.preheader.i35.i:                                 ; preds = %bb.iv, %.preheader115.i.i
  %.129.lcssa.i.i1016 = phi ptr [ %.028.lcssa.i.i1014, %.preheader115.i.i ], [ %i.lpj, %bb.iv ] ; 6 uses
  %.126.lcssa.i.i1017 = phi i32 [ %.025.lcssa.i.i1015, %.preheader115.i.i ], [ %i.lpk, %bb.iv ] ; 5 uses
  %.1.lcssa.i36.i = phi ptr [ %.0.lcssa.i34.i, %.preheader115.i.i ], [ %i.lpi, %bb.iv ] ; 6 uses
  %i.lkc = icmp slt i32 %.126.lcssa.i.i1017, %i.kww
  br i1 %i.lkc, label %iter.check5258, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5258:                                   ; preds = %.preheader.i35.i
  %.129.lcssa.i.i10165242 = ptrtoaddr ptr %.129.lcssa.i.i1016 to i64
  %.1.lcssa.i36.i5241 = ptrtoaddr ptr %.1.lcssa.i36.i to i64
  %i.lkd = xor i32 %.126.lcssa.i.i1017, -1
  %i.lke = add i32 %i.kww, %i.lkd                 ; 3 uses
  %i.lkf = zext i32 %i.lke to i64
  %i.lkg = add nuw nsw i64 %i.lkf, 1              ; 5 uses
  %min.iters.check5243 = icmp ult i32 %i.lke, 3
  %i.lkh = sub i64 %.1.lcssa.i36.i5241, %.129.lcssa.i.i10165242
  %diff.check5245 = icmp ugt i64 %i.lkh, -32
  %or.cond7121 = select i1 %min.iters.check5243, i1 true, i1 %diff.check5245
  br i1 %or.cond7121, label %.lr.ph131.i.i.preheader, label %vector.main.loop.iter.check5246

vector.main.loop.iter.check5246:                  ; preds = %iter.check5258
  %min.iters.check5247 = icmp ult i32 %i.lke, 15
  br i1 %min.iters.check5247, label %vec.epilog.ph5262, label %vector.ph5248

vector.ph5248:                                    ; preds = %vector.main.loop.iter.check5246
  %i.lki = and i64 %i.lkg, 12
  %n.vec5249 = and i64 %i.lkg, 8589934576         ; 5 uses
  %i.lkj = shl nuw nsw i64 %n.vec5249, 1          ; 2 uses
  %i.lkk = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.lkj
  %i.lkl = trunc i64 %n.vec5249 to i32
  %i.lkm = add i32 %.126.lcssa.i.i1017, %i.lkl
  %i.lkn = getelementptr i8, ptr %.129.lcssa.i.i1016, i64 %i.lkj
  %i.lko = insertelement <8 x float> poison, float %i.lgn, i64 0
  %i.lkp = shufflevector <8 x float> %i.lko, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lkq = insertelement <4 x float> poison, float %i.lgn, i64 0
  %i.lkr = shufflevector <4 x float> %i.lkq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5250

vector.body5250:                                  ; preds = %vector.ph5248, %vector.body5250
  %index5251 = phi i64 [ 0, %vector.ph5248 ], [ %index.next5255, %vector.body5250 ] ; 2 uses
  %i.lks = shl i64 %index5251, 1                  ; 2 uses
  %next.gep5252 = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.lks
  %next.gep5253 = getelementptr i8, ptr %.129.lcssa.i.i1016, i64 %i.lks
  %wide.load5254 = load <16 x i16>, ptr %next.gep5252, align 2, !tbaa !57
  %i.lkt = zext <16 x i16> %wide.load5254 to <16 x i32>
  %i.lku = shl nuw <16 x i32> %i.lkt, splat (i32 16)
  %i.lkv = bitcast <16 x i32> %i.lku to <16 x float> ; 6 uses
  %i.lkw = extractelement <16 x float> %i.lkv, i64 0
  %i.lkx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lkw, float %i.lgn)
  %i.lky = extractelement <16 x float> %i.lkv, i64 1
  %i.lkz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lky, float %i.lgn)
  %i.lla = extractelement <16 x float> %i.lkv, i64 2
  %i.llb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lla, float %i.lgn)
  %i.llc = extractelement <16 x float> %i.lkv, i64 3
  %i.lld = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.llc, float %i.lgn)
  %i.lle = shufflevector <16 x float> %i.lkv, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.llf = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.lle, <4 x float> %i.lkr)
  %i.llg = shufflevector <16 x float> %i.lkv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.llh = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.llg, <8 x float> %i.lkp)
  %i.lli = insertelement <16 x float> poison, float %i.lkx, i64 0
  %i.llj = insertelement <16 x float> %i.lli, float %i.lkz, i64 1
  %i.llk = insertelement <16 x float> %i.llj, float %i.llb, i64 2
  %i.lll = insertelement <16 x float> %i.llk, float %i.lld, i64 3
  %i.llm = shufflevector <4 x float> %i.llf, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lln = shufflevector <16 x float> %i.lll, <16 x float> %i.llm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.llo = shufflevector <8 x float> %i.llh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.llp = shufflevector <16 x float> %i.lln, <16 x float> %i.llo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.llq = bitcast <16 x float> %i.llp to <16 x i32>
  %i.llr = lshr <16 x i32> %i.llq, splat (i32 16)
  %i.lls = trunc nuw <16 x i32> %i.llr to <16 x i16>
  store <16 x i16> %i.lls, ptr %next.gep5253, align 2, !tbaa !57
  %index.next5255 = add nuw i64 %index5251, 16    ; 2 uses
  %i.llt = icmp eq i64 %index.next5255, %n.vec5249
  br i1 %i.llt, label %middle.block5256, label %vector.body5250, !llvm.loop !861

middle.block5256:                                 ; preds = %vector.body5250
  %cmp.n5257 = icmp eq i64 %i.lkg, %n.vec5249
  br i1 %cmp.n5257, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5259

vec.epilog.iter.check5259:                        ; preds = %middle.block5256
  %min.epilog.iters.check5261 = icmp eq i64 %i.lki, 0
  br i1 %min.epilog.iters.check5261, label %.lr.ph131.i.i.preheader, label %vec.epilog.ph5262, !prof !64

vec.epilog.ph5262:                                ; preds = %vector.main.loop.iter.check5246, %vec.epilog.iter.check5259
  %vec.epilog.resume.val5263 = phi i64 [ %n.vec5249, %vec.epilog.iter.check5259 ], [ 0, %vector.main.loop.iter.check5246 ]
  %n.vec5264 = and i64 %i.lkg, 8589934588         ; 4 uses
  %i.llu = shl nuw nsw i64 %n.vec5264, 1          ; 2 uses
  %i.llv = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.llu
  %i.llw = trunc i64 %n.vec5264 to i32
  %i.llx = add i32 %.126.lcssa.i.i1017, %i.llw
  %i.lly = getelementptr i8, ptr %.129.lcssa.i.i1016, i64 %i.llu
  br label %vec.epilog.vector.body5265

vec.epilog.vector.body5265:                       ; preds = %vec.epilog.vector.body5265, %vec.epilog.ph5262
  %index5266 = phi i64 [ %vec.epilog.resume.val5263, %vec.epilog.ph5262 ], [ %index.next5270, %vec.epilog.vector.body5265 ] ; 2 uses
  %i.llz = shl i64 %index5266, 1                  ; 2 uses
  %next.gep5267 = getelementptr i8, ptr %.1.lcssa.i36.i, i64 %i.llz
  %next.gep5268 = getelementptr i8, ptr %.129.lcssa.i.i1016, i64 %i.llz
  %wide.load5269 = load <4 x i16>, ptr %next.gep5267, align 2, !tbaa !57
  %i.lma = zext <4 x i16> %wide.load5269 to <4 x i32>
  %i.lmb = shl nuw <4 x i32> %i.lma, splat (i32 16)
  %i.lmc = bitcast <4 x i32> %i.lmb to <4 x float> ; 4 uses
  %i.lmd = extractelement <4 x float> %i.lmc, i64 0
  %i.lme = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lmd, float %i.lgn)
  %i.lmf = extractelement <4 x float> %i.lmc, i64 1
  %i.lmg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lmf, float %i.lgn)
  %i.lmh = extractelement <4 x float> %i.lmc, i64 2
  %i.lmi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lmh, float %i.lgn)
  %i.lmj = extractelement <4 x float> %i.lmc, i64 3
  %i.lmk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lmj, float %i.lgn)
  %i.lml = insertelement <4 x float> poison, float %i.lme, i64 0
  %i.lmm = insertelement <4 x float> %i.lml, float %i.lmg, i64 1
  %i.lmn = insertelement <4 x float> %i.lmm, float %i.lmi, i64 2
  %i.lmo = insertelement <4 x float> %i.lmn, float %i.lmk, i64 3
  %i.lmp = bitcast <4 x float> %i.lmo to <4 x i32>
  %i.lmq = lshr <4 x i32> %i.lmp, splat (i32 16)
  %i.lmr = trunc nuw <4 x i32> %i.lmq to <4 x i16>
  store <4 x i16> %i.lmr, ptr %next.gep5268, align 2, !tbaa !57
  %index.next5270 = add nuw i64 %index5266, 4     ; 2 uses
  %i.lms = icmp eq i64 %index.next5270, %n.vec5264
  br i1 %i.lms, label %vec.epilog.middle.block5271, label %vec.epilog.vector.body5265, !llvm.loop !862

vec.epilog.middle.block5271:                      ; preds = %vec.epilog.vector.body5265
  %cmp.n5272 = icmp eq i64 %i.lkg, %n.vec5264
  br i1 %cmp.n5272, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i.preheader

.lr.ph131.i.i.preheader:                          ; preds = %iter.check5258, %vec.epilog.iter.check5259, %vec.epilog.middle.block5271
  %.2130.i.i.ph = phi ptr [ %.1.lcssa.i36.i, %iter.check5258 ], [ %i.lkk, %vec.epilog.iter.check5259 ], [ %i.llv, %vec.epilog.middle.block5271 ] ; 3 uses
  %.227129.i.i.ph = phi i32 [ %.126.lcssa.i.i1017, %iter.check5258 ], [ %i.lkm, %vec.epilog.iter.check5259 ], [ %i.llx, %vec.epilog.middle.block5271 ] ; 4 uses
  %.230128.i.i.ph = phi ptr [ %.129.lcssa.i.i1016, %iter.check5258 ], [ %i.lkn, %vec.epilog.iter.check5259 ], [ %i.lly, %vec.epilog.middle.block5271 ] ; 3 uses
  %i.lmt = sub i32 %i.kww, %.227129.i.i.ph
  %.neg8028 = add i32 %.227129.i.i.ph, 1
  %xtraiter7831 = and i32 %i.lmt, 1
  %lcmp.mod7832.not = icmp eq i32 %xtraiter7831, 0
  br i1 %lcmp.mod7832.not, label %.lr.ph131.i.i.prol.loopexit, label %.lr.ph131.i.i.prol

.lr.ph131.i.i.prol:                               ; preds = %.lr.ph131.i.i.preheader
  %i.lmu = getelementptr inbounds nuw i8, ptr %.2130.i.i.ph, i64 2
  %i.lmv = load i16, ptr %.2130.i.i.ph, align 2, !tbaa !57
  %i.lmw = zext i16 %i.lmv to i32
  %i.lmx = shl nuw i32 %i.lmw, 16
  %i.lmy = bitcast i32 %i.lmx to float
  %i.lmz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lmy, float %i.lgn)
  %i.lna = bitcast float %i.lmz to i32
  %i.lnb = lshr i32 %i.lna, 16
  %i.lnc = trunc nuw i32 %i.lnb to i16
  %i.lnd = getelementptr inbounds nuw i8, ptr %.230128.i.i.ph, i64 2
  store i16 %i.lnc, ptr %.230128.i.i.ph, align 2, !tbaa !57
  %i.lne = add nuw nsw i32 %.227129.i.i.ph, 1
  br label %.lr.ph131.i.i.prol.loopexit

.lr.ph131.i.i.prol.loopexit:                      ; preds = %.lr.ph131.i.i.prol, %.lr.ph131.i.i.preheader
  %.2130.i.i.unr = phi ptr [ %.2130.i.i.ph, %.lr.ph131.i.i.preheader ], [ %i.lmu, %.lr.ph131.i.i.prol ]
  %.227129.i.i.unr = phi i32 [ %.227129.i.i.ph, %.lr.ph131.i.i.preheader ], [ %i.lne, %.lr.ph131.i.i.prol ]
  %.230128.i.i.unr = phi ptr [ %.230128.i.i.ph, %.lr.ph131.i.i.preheader ], [ %i.lnd, %.lr.ph131.i.i.prol ]
  %i.lnf = icmp eq i32 %i.kww, %.neg8028
  br i1 %i.lnf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i

bb.iv:                                            ; preds = %bb.iv, %.lr.ph124.i.i
  %.1123.i.i = phi ptr [ %.0.lcssa.i34.i, %.lr.ph124.i.i ], [ %i.lpi, %bb.iv ] ; 2 uses
  %.126122.i.i = phi i32 [ %.025.lcssa.i.i1015, %.lr.ph124.i.i ], [ %i.lpk, %bb.iv ]
  %.129121.i.i = phi ptr [ %.028.lcssa.i.i1014, %.lr.ph124.i.i ], [ %i.lpj, %bb.iv ] ; 2 uses
  %i.lng = load i64, ptr %.1123.i.i, align 1, !tbaa !60
  %i.lnh = insertelement <2 x i64> poison, i64 %i.lng, i64 0
  %i.lni = bitcast <2 x i64> %i.lnh to <8 x i16>
  %i.lnj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lni, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.lnk = bitcast <8 x i16> %i.lnj to <4 x float> ; 3 uses
  %i.lnl = fcmp fast oeq <4 x float> %i.lnk, zeroinitializer ; 2 uses
  %.not111.i.i = or <4 x i1> %i.lhp, %i.lnl
  %i.lnm = fcmp fast olt <4 x float> %i.lnk, zeroinitializer
  %i.lnn = select <4 x i1> %i.lnm, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.lno = select <4 x i1> %i.lhq, <4 x float> %i.lnn, <4 x float> zeroinitializer
  %i.lnp = fmul fast <4 x float> %i.lnk, %i.lht   ; 2 uses
  %i.lnq = bitcast <4 x float> %i.lnp to <4 x i32>
  %i.lnr = and <4 x i32> %i.lnq, splat (i32 -2147483648)
  %i.lns = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lnp) ; 3 uses
  %i.lnt = fcmp fast ogt <4 x float> %i.lns, splat (float 1.000000e+00) ; 2 uses
  %i.lnu = select <4 x i1> %i.lnt, <4 x float> splat (float -1.000000e+00), <4 x float> %i.lns
  %i.lnv = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lns, <4 x float> splat (float 1.000000e+00))
  %i.lnw = fdiv fast <4 x float> %i.lnu, %i.lnv   ; 3 uses
  %i.lnx = fmul fast <4 x float> %i.lnw, %i.lnw   ; 3 uses
  %i.lny = fmul fast <4 x float> %i.lnx, %i.lnx   ; 7 uses
  %i.lnz = fmul fast <4 x float> %i.lny, splat (float f0x3C83A25C)
  %i.loa = fsub fast <4 x float> splat (float f0xBD99B01E), %i.lnz
  %i.lob = fmul fast <4 x float> %i.loa, %i.lny
  %i.loc = fadd fast <4 x float> %i.lob, splat (float f0xBE117200)
  %i.lod = fmul fast <4 x float> %i.loc, %i.lny
  %i.loe = fadd fast <4 x float> %i.lod, splat (float f0xBEAAAA53)
  %i.lof = fmul fast <4 x float> %i.lny, splat (float f0x3B3AC537)
  %i.log = fadd fast <4 x float> %i.lof, splat (float f0x3D2EDD4E)
  %i.loh = fmul fast <4 x float> %i.log, %i.lny
  %i.loi = fadd fast <4 x float> %i.loh, splat (float f0x3DD9ED24)
  %i.loj = fmul fast <4 x float> %i.loi, %i.lny
  %i.lok = fadd fast <4 x float> %i.loj, splat (float f0x3E4CB974)
  %i.lol = fmul fast <4 x float> %i.lok, %i.lny
  %i.lom = fadd fast <4 x float> %i.lol, splat (float 1.000000e+00)
  %i.lon = fmul fast <4 x float> %i.loe, %i.lnx
  %i.loo = fadd fast <4 x float> %i.lom, %i.lon
  %i.lop = fmul fast <4 x float> %i.loo, %i.lnw
  %i.loq = select <4 x i1> %i.lnt, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.lor = fadd fast <4 x float> %i.lop, %i.loq
  %i.los = bitcast <4 x float> %i.lor to <4 x i32>
  %i.lot = or <4 x i32> %i.lnr, %i.los
  %i.lou = bitcast <4 x i32> %i.lot to <4 x float>
  %i.lov = fadd fast <4 x float> %i.lno, %i.lou
  %i.low = bitcast <8 x i16> %i.lnj to <4 x i32>
  %i.lox = and <4 x i32> %i.low, splat (i32 -2147483648)
  %i.loy = or disjoint <4 x i32> %i.lox, splat (i32 1070137344)
  %i.loz = bitcast <4 x float> %i.lov to <4 x i32>
  %i.lpa = select <4 x i1> %.not111.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.loz
  %i.lpb = select <4 x i1> %i.lhp, <4 x i32> %i.loy, <4 x i32> zeroinitializer
  %i.lpc = select <4 x i1> %i.lnl, <4 x i32> %i.lhs, <4 x i32> %i.lpb
  %i.lpd = or <4 x i32> %i.lpa, %i.lpc
  %i.lpe = lshr <4 x i32> %i.lpd, splat (i32 16)
  %i.lpf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lpe, <4 x i32> poison)
  %i.lpg = bitcast <8 x i16> %i.lpf to <2 x i64>
  %i.lph = extractelement <2 x i64> %i.lpg, i64 0
  store i64 %i.lph, ptr %.129121.i.i, align 1, !tbaa !60
  %i.lpi = getelementptr inbounds nuw i8, ptr %.1123.i.i, i64 8 ; 2 uses
  %i.lpj = getelementptr inbounds nuw i8, ptr %.129121.i.i, i64 8 ; 2 uses
  %i.lpk = add nuw nsw i32 %.126122.i.i, 4        ; 3 uses
  %i.lpl = or disjoint i32 %i.lpk, 3
  %i.lpm = icmp slt i32 %i.lpl, %i.kww
  br i1 %i.lpm, label %bb.iv, label %.preheader.i35.i, !llvm.loop !863

.lr.ph131.i.i:                                    ; preds = %.lr.ph131.i.i.prol.loopexit, %.lr.ph131.i.i
  %.2130.i.i = phi ptr [ %i.lpx, %.lr.ph131.i.i ], [ %.2130.i.i.unr, %.lr.ph131.i.i.prol.loopexit ] ; 3 uses
  %.227129.i.i = phi i32 [ %i.lqh, %.lr.ph131.i.i ], [ %.227129.i.i.unr, %.lr.ph131.i.i.prol.loopexit ]
  %.230128.i.i = phi ptr [ %i.lqg, %.lr.ph131.i.i ], [ %.230128.i.i.unr, %.lr.ph131.i.i.prol.loopexit ] ; 3 uses
  %i.lpn = getelementptr inbounds nuw i8, ptr %.2130.i.i, i64 2
  %i.lpo = load i16, ptr %.2130.i.i, align 2, !tbaa !57
  %i.lpp = zext i16 %i.lpo to i32
  %i.lpq = shl nuw i32 %i.lpp, 16
  %i.lpr = bitcast i32 %i.lpq to float
  %i.lps = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lpr, float %i.lgn)
  %i.lpt = bitcast float %i.lps to i32
  %i.lpu = lshr i32 %i.lpt, 16
  %i.lpv = trunc nuw i32 %i.lpu to i16
  %i.lpw = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 2
  store i16 %i.lpv, ptr %.230128.i.i, align 2, !tbaa !57
  %i.lpx = getelementptr inbounds nuw i8, ptr %.2130.i.i, i64 4
  %i.lpy = load i16, ptr %i.lpn, align 2, !tbaa !57
  %i.lpz = zext i16 %i.lpy to i32
  %i.lqa = shl nuw i32 %i.lpz, 16
  %i.lqb = bitcast i32 %i.lqa to float
  %i.lqc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqb, float %i.lgn)
  %i.lqd = bitcast float %i.lqc to i32
  %i.lqe = lshr i32 %i.lqd, 16
  %i.lqf = trunc nuw i32 %i.lqe to i16
  %i.lqg = getelementptr inbounds nuw i8, ptr %.230128.i.i, i64 4
  store i16 %i.lqf, ptr %i.lpw, align 2, !tbaa !57
  %i.lqh = add nuw nsw i32 %.227129.i.i, 2        ; 2 uses
  %exitcond.not.i37.i.1 = icmp eq i32 %i.lqh, %i.kww
  br i1 %exitcond.not.i37.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i, !llvm.loop !864

bb.iw:                                            ; preds = %bb.io
  %i.lqi = icmp eq i32 %3, 1
  br i1 %i.lqi, label %bb.ix, label %bb.je

bb.ix:                                            ; preds = %bb.iw
  %i.lqj = load i16, ptr %0, align 2, !tbaa !57
  %i.lqk = zext i16 %i.lqj to i32
  %i.lql = shl nuw i32 %i.lqk, 16
  %i.lqm = bitcast i32 %i.lql to float            ; 14 uses
  %i.lqn = icmp eq i32 %.sroa.speculated.i1005, 4
  br i1 %i.lqn, label %.thread.i52.i, label %bb.iy

.thread.i52.i:                                    ; preds = %bb.ix
  %i.lqo = load i64, ptr %0, align 2, !tbaa !60
  %i.lqp = insertelement <2 x i64> poison, i64 %i.lqo, i64 0
  %i.lqq = bitcast <2 x i64> %i.lqp to <8 x i16>
  %i.lqr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lqq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lqs = bitcast <8 x i16> %i.lqr to <4 x float>
  br label %bb.ja

bb.iy:                                            ; preds = %bb.ix
  %i.lqt = insertelement <4 x float> poison, float %i.lqm, i64 0
  %i.lqu = shufflevector <4 x float> %i.lqt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lqv = icmp eq i32 %.sroa.speculated.i1005, 8
  br i1 %i.lqv, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.lqw = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.lqx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lqw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lqy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lqw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lqz = shufflevector <8 x i16> %i.lqx, <8 x i16> %i.lqy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lra = bitcast <16 x i16> %i.lqz to <8 x float>
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iy, %.thread.i52.i
  %i.lrb = phi <4 x float> [ %i.lqs, %.thread.i52.i ], [ %i.lqu, %bb.iy ] ; 2 uses
  %i.lrc = shufflevector <4 x float> %i.lrb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.lrd = phi <4 x float> [ %i.lqu, %bb.iz ], [ %i.lrb, %bb.ja ] ; 4 uses
  %i.lre = phi fast <8 x float> [ %i.lra, %bb.iz ], [ %i.lrc, %bb.ja ] ; 4 uses
  %i.lrf = icmp sgt i32 %i.kww, 7
  br i1 %i.lrf, label %.lr.ph.i49.i, label %.preheader116.i39.i

.lr.ph.i49.i:                                     ; preds = %bb.jb
  %i.lrg = fcmp fast ueq <8 x float> %i.lre, zeroinitializer ; 2 uses
  %i.lrh = bitcast <8 x float> %i.lre to <8 x i32>
  %i.lri = and <8 x i32> %i.lrh, splat (i32 -2147483648)
  %i.lrj = fcmp fast olt <8 x float> %i.lre, zeroinitializer
  %i.lrk = select <8 x i1> %i.lrj, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.lrl = or disjoint <8 x i32> %i.lri, splat (i32 1070141403)
  br label %bb.jc

.preheader116.loopexit.i51.i:                     ; preds = %bb.jc
  %i.lrm = and i32 %i.kww, 2147483640
  br label %.preheader116.i39.i

.preheader116.i39.i:                              ; preds = %.preheader116.loopexit.i51.i, %bb.jb
  %.028.lcssa.i40.i = phi ptr [ %2, %bb.jb ], [ %i.lub, %.preheader116.loopexit.i51.i ] ; 2 uses
  %.025.lcssa.i41.i = phi i32 [ 0, %bb.jb ], [ %i.lrm, %.preheader116.loopexit.i51.i ] ; 3 uses
  %.0.lcssa.i42.i = phi ptr [ %1, %bb.jb ], [ %i.lua, %.preheader116.loopexit.i51.i ] ; 2 uses
  %i.lrn = or disjoint i32 %.025.lcssa.i41.i, 3
  %i.lro = icmp slt i32 %i.lrn, %i.kww
  br i1 %i.lro, label %.lr.ph125.i.i, label %.preheader.i43.i

.lr.ph125.i.i:                                    ; preds = %.preheader116.i39.i
  %i.lrp = fcmp fast oeq <4 x float> %i.lrd, zeroinitializer ; 2 uses
  %i.lrq = bitcast <4 x float> %i.lrd to <4 x i32>
  %i.lrr = and <4 x i32> %i.lrq, splat (i32 -2147483648)
  %i.lrs = fcmp fast olt <4 x float> %i.lrd, zeroinitializer
  %i.lrt = select <4 x i1> %i.lrs, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.lru = or disjoint <4 x i32> %i.lrr, splat (i32 1070137344)
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jc, %.lr.ph.i49.i
  %.0119.i.i = phi ptr [ %1, %.lr.ph.i49.i ], [ %i.lua, %bb.jc ] ; 2 uses
  %.025118.i.i = phi i32 [ 0, %.lr.ph.i49.i ], [ %i.luc, %bb.jc ]
  %.028117.i.i = phi ptr [ %2, %.lr.ph.i49.i ], [ %i.lub, %bb.jc ] ; 2 uses
  %i.lrv = load <8 x i16>, ptr %.0119.i.i, align 1, !tbaa !60 ; 2 uses
  %i.lrw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lrv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lrx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lrv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lry = shufflevector <8 x i16> %i.lrw, <8 x i16> %i.lrx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.lrz = bitcast <16 x i16> %i.lry to <8 x float> ; 3 uses
  %i.lsa = fcmp fast ueq <8 x float> %i.lrz, zeroinitializer ; 2 uses
  %.not115.i50.i = or <8 x i1> %i.lrg, %i.lsa
  %i.lsb = fcmp fast olt <8 x float> %i.lrz, zeroinitializer
  %i.lsc = select <8 x i1> %i.lsb, <8 x float> %i.lrk, <8 x float> zeroinitializer
  %i.lsd = fdiv fast <8 x float> %i.lre, %i.lrz   ; 2 uses
  %i.lse = bitcast <8 x float> %i.lsd to <8 x i32>
  %i.lsf = and <8 x i32> %i.lse, splat (i32 -2147483648)
  %i.lsg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lsd) ; 3 uses
  %i.lsh = fcmp fast ogt <8 x float> %i.lsg, splat (float 1.000000e+00) ; 2 uses
  %i.lsi = select <8 x i1> %i.lsh, <8 x float> splat (float -1.000000e+00), <8 x float> %i.lsg
  %i.lsj = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lsg, <8 x float> splat (float 1.000000e+00))
  %i.lsk = fdiv fast <8 x float> %i.lsi, %i.lsj   ; 3 uses
  %i.lsl = fmul fast <8 x float> %i.lsk, %i.lsk   ; 3 uses
  %i.lsm = fmul fast <8 x float> %i.lsl, %i.lsl   ; 7 uses
  %i.lsn = fmul fast <8 x float> %i.lsm, splat (float f0x3C83A25C)
  %i.lso = fsub fast <8 x float> splat (float f0xBD99B01E), %i.lsn
  %i.lsp = fmul fast <8 x float> %i.lso, %i.lsm
  %i.lsq = fadd fast <8 x float> %i.lsp, splat (float f0xBE117200)
  %i.lsr = fmul fast <8 x float> %i.lsq, %i.lsm
  %i.lss = fadd fast <8 x float> %i.lsr, splat (float f0xBEAAAA53)
  %i.lst = fmul fast <8 x float> %i.lsm, splat (float f0x3B3AC537)
  %i.lsu = fadd fast <8 x float> %i.lst, splat (float f0x3D2EDD4E)
  %i.lsv = fmul fast <8 x float> %i.lsu, %i.lsm
  %i.lsw = fadd fast <8 x float> %i.lsv, splat (float f0x3DD9ED24)
  %i.lsx = fmul fast <8 x float> %i.lsw, %i.lsm
  %i.lsy = fadd fast <8 x float> %i.lsx, splat (float f0x3E4CB974)
  %i.lsz = fmul fast <8 x float> %i.lsy, %i.lsm
  %i.lta = fadd fast <8 x float> %i.lsz, splat (float 1.000000e+00)
  %i.ltb = fmul fast <8 x float> %i.lss, %i.lsl
  %i.ltc = fadd fast <8 x float> %i.lta, %i.ltb
  %i.ltd = fmul fast <8 x float> %i.ltc, %i.lsk
  %i.lte = select <8 x i1> %i.lsh, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ltf = fadd fast <8 x float> %i.ltd, %i.lte
  %i.ltg = bitcast <8 x float> %i.ltf to <8 x i32>
  %i.lth = or <8 x i32> %i.lsf, %i.ltg
  %i.lti = bitcast <8 x i32> %i.lth to <8 x float>
  %i.ltj = fadd fast <8 x float> %i.lsc, %i.lti
  %i.ltk = bitcast <16 x i16> %i.lry to <8 x i32>
  %i.ltl = and <8 x i32> %i.ltk, splat (i32 -2147483648)
  %i.ltm = or disjoint <8 x i32> %i.ltl, splat (i32 1078530011)
  %i.ltn = bitcast <8 x i32> %i.ltm to <8 x float>
  %i.lto = fcmp fast uge <8 x float> %i.ltn, zeroinitializer
  %i.ltp = select <8 x i1> %i.lto, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.ltq = bitcast <8 x float> %i.ltj to <8 x i32>
  %i.ltr = select <8 x i1> %.not115.i50.i, <8 x i32> zeroinitializer, <8 x i32> %i.ltq
  %i.lts = select <8 x i1> %i.lsa, <8 x i32> %i.lrl, <8 x i32> zeroinitializer
  %i.ltt = select <8 x i1> %i.lrg, <8 x i32> %i.ltp, <8 x i32> %i.lts
  %i.ltu = or <8 x i32> %i.ltr, %i.ltt            ; 2 uses
  %i.ltv = shufflevector <8 x i32> %i.ltu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ltw = shufflevector <8 x i32> %i.ltu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ltx = lshr <4 x i32> %i.ltv, splat (i32 16)
  %i.lty = lshr <4 x i32> %i.ltw, splat (i32 16)
  %i.ltz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ltx, <4 x i32> %i.lty)
  store <8 x i16> %i.ltz, ptr %.028117.i.i, align 1, !tbaa !60
  %i.lua = getelementptr inbounds nuw i8, ptr %.0119.i.i, i64 16 ; 2 uses
  %i.lub = getelementptr inbounds nuw i8, ptr %.028117.i.i, i64 16 ; 2 uses
  %i.luc = add nuw nsw i32 %.025118.i.i, 8        ; 2 uses
  %i.lud = or disjoint i32 %i.luc, 7
  %i.lue = icmp slt i32 %i.lud, %i.kww
  br i1 %i.lue, label %bb.jc, label %.preheader116.loopexit.i51.i, !llvm.loop !865

.preheader.i43.i:                                 ; preds = %bb.jd, %.preheader116.i39.i
  %.129.lcssa.i44.i = phi ptr [ %.028.lcssa.i40.i, %.preheader116.i39.i ], [ %i.lzo, %bb.jd ] ; 6 uses
  %.126.lcssa.i45.i = phi i32 [ %.025.lcssa.i41.i, %.preheader116.i39.i ], [ %i.lzp, %bb.jd ] ; 5 uses
  %.1.lcssa.i46.i = phi ptr [ %.0.lcssa.i42.i, %.preheader116.i39.i ], [ %i.lzn, %bb.jd ] ; 6 uses
  %i.luf = icmp slt i32 %.126.lcssa.i45.i, %i.kww
  br i1 %i.luf, label %iter.check5219, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5219:                                   ; preds = %.preheader.i43.i
  %.129.lcssa.i44.i5203 = ptrtoaddr ptr %.129.lcssa.i44.i to i64
  %.1.lcssa.i46.i5202 = ptrtoaddr ptr %.1.lcssa.i46.i to i64
  %i.lug = xor i32 %.126.lcssa.i45.i, -1
  %i.luh = add i32 %i.kww, %i.lug                 ; 3 uses
  %i.lui = zext i32 %i.luh to i64
  %i.luj = add nuw nsw i64 %i.lui, 1              ; 5 uses
  %min.iters.check5204 = icmp ult i32 %i.luh, 3
  %i.luk = sub i64 %.1.lcssa.i46.i5202, %.129.lcssa.i44.i5203
  %diff.check5206 = icmp ugt i64 %i.luk, -32
  %or.cond7122 = select i1 %min.iters.check5204, i1 true, i1 %diff.check5206
  br i1 %or.cond7122, label %.lr.ph132.i.i.preheader, label %vector.main.loop.iter.check5207

vector.main.loop.iter.check5207:                  ; preds = %iter.check5219
  %min.iters.check5208 = icmp ult i32 %i.luh, 15
  br i1 %min.iters.check5208, label %vec.epilog.ph5223, label %vector.ph5209

vector.ph5209:                                    ; preds = %vector.main.loop.iter.check5207
  %i.lul = and i64 %i.luj, 12
  %n.vec5210 = and i64 %i.luj, 8589934576         ; 5 uses
  %i.lum = shl nuw nsw i64 %n.vec5210, 1          ; 2 uses
  %i.lun = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.lum
  %i.luo = trunc i64 %n.vec5210 to i32
  %i.lup = add i32 %.126.lcssa.i45.i, %i.luo
  %i.luq = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.lum
  %i.lur = insertelement <8 x float> poison, float %i.lqm, i64 0
  %i.lus = shufflevector <8 x float> %i.lur, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lut = insertelement <4 x float> poison, float %i.lqm, i64 0
  %i.luu = shufflevector <4 x float> %i.lut, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5211

vector.body5211:                                  ; preds = %vector.ph5209, %vector.body5211
  %index5212 = phi i64 [ 0, %vector.ph5209 ], [ %index.next5216, %vector.body5211 ] ; 2 uses
  %i.luv = shl i64 %index5212, 1                  ; 2 uses
  %next.gep5213 = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.luv
  %next.gep5214 = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.luv
  %wide.load5215 = load <16 x i16>, ptr %next.gep5213, align 2, !tbaa !57
  %i.luw = zext <16 x i16> %wide.load5215 to <16 x i32>
  %i.lux = shl nuw <16 x i32> %i.luw, splat (i32 16)
  %i.luy = bitcast <16 x i32> %i.lux to <16 x float> ; 6 uses
  %i.luz = extractelement <16 x float> %i.luy, i64 0
  %i.lva = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.luz)
  %i.lvb = extractelement <16 x float> %i.luy, i64 1
  %i.lvc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lvb)
  %i.lvd = extractelement <16 x float> %i.luy, i64 2
  %i.lve = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lvd)
  %i.lvf = extractelement <16 x float> %i.luy, i64 3
  %i.lvg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lvf)
  %i.lvh = shufflevector <16 x float> %i.luy, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lvi = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.luu, <4 x float> %i.lvh)
  %i.lvj = shufflevector <16 x float> %i.luy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lvk = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.lus, <8 x float> %i.lvj)
  %i.lvl = insertelement <16 x float> poison, float %i.lva, i64 0
  %i.lvm = insertelement <16 x float> %i.lvl, float %i.lvc, i64 1
  %i.lvn = insertelement <16 x float> %i.lvm, float %i.lve, i64 2
  %i.lvo = insertelement <16 x float> %i.lvn, float %i.lvg, i64 3
  %i.lvp = shufflevector <4 x float> %i.lvi, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lvq = shufflevector <16 x float> %i.lvo, <16 x float> %i.lvp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lvr = shufflevector <8 x float> %i.lvk, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lvs = shufflevector <16 x float> %i.lvq, <16 x float> %i.lvr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.lvt = bitcast <16 x float> %i.lvs to <16 x i32>
  %i.lvu = lshr <16 x i32> %i.lvt, splat (i32 16)
  %i.lvv = trunc nuw <16 x i32> %i.lvu to <16 x i16>
  store <16 x i16> %i.lvv, ptr %next.gep5214, align 2, !tbaa !57
  %index.next5216 = add nuw i64 %index5212, 16    ; 2 uses
  %i.lvw = icmp eq i64 %index.next5216, %n.vec5210
  br i1 %i.lvw, label %middle.block5217, label %vector.body5211, !llvm.loop !866

middle.block5217:                                 ; preds = %vector.body5211
  %cmp.n5218 = icmp eq i64 %i.luj, %n.vec5210
  br i1 %cmp.n5218, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5220

vec.epilog.iter.check5220:                        ; preds = %middle.block5217
  %min.epilog.iters.check5222 = icmp eq i64 %i.lul, 0
  br i1 %min.epilog.iters.check5222, label %.lr.ph132.i.i.preheader, label %vec.epilog.ph5223, !prof !64

vec.epilog.ph5223:                                ; preds = %vector.main.loop.iter.check5207, %vec.epilog.iter.check5220
  %vec.epilog.resume.val5224 = phi i64 [ %n.vec5210, %vec.epilog.iter.check5220 ], [ 0, %vector.main.loop.iter.check5207 ]
  %n.vec5225 = and i64 %i.luj, 8589934588         ; 4 uses
  %i.lvx = shl nuw nsw i64 %n.vec5225, 1          ; 2 uses
  %i.lvy = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.lvx
  %i.lvz = trunc i64 %n.vec5225 to i32
  %i.lwa = add i32 %.126.lcssa.i45.i, %i.lvz
  %i.lwb = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.lvx
  br label %vec.epilog.vector.body5226

vec.epilog.vector.body5226:                       ; preds = %vec.epilog.vector.body5226, %vec.epilog.ph5223
  %index5227 = phi i64 [ %vec.epilog.resume.val5224, %vec.epilog.ph5223 ], [ %index.next5231, %vec.epilog.vector.body5226 ] ; 2 uses
  %i.lwc = shl i64 %index5227, 1                  ; 2 uses
  %next.gep5228 = getelementptr i8, ptr %.1.lcssa.i46.i, i64 %i.lwc
  %next.gep5229 = getelementptr i8, ptr %.129.lcssa.i44.i, i64 %i.lwc
  %wide.load5230 = load <4 x i16>, ptr %next.gep5228, align 2, !tbaa !57
  %i.lwd = zext <4 x i16> %wide.load5230 to <4 x i32>
  %i.lwe = shl nuw <4 x i32> %i.lwd, splat (i32 16)
  %i.lwf = bitcast <4 x i32> %i.lwe to <4 x float> ; 4 uses
  %i.lwg = extractelement <4 x float> %i.lwf, i64 0
  %i.lwh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lwg)
  %i.lwi = extractelement <4 x float> %i.lwf, i64 1
  %i.lwj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lwi)
  %i.lwk = extractelement <4 x float> %i.lwf, i64 2
  %i.lwl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lwk)
  %i.lwm = extractelement <4 x float> %i.lwf, i64 3
  %i.lwn = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lwm)
  %i.lwo = insertelement <4 x float> poison, float %i.lwh, i64 0
  %i.lwp = insertelement <4 x float> %i.lwo, float %i.lwj, i64 1
  %i.lwq = insertelement <4 x float> %i.lwp, float %i.lwl, i64 2
  %i.lwr = insertelement <4 x float> %i.lwq, float %i.lwn, i64 3
  %i.lws = bitcast <4 x float> %i.lwr to <4 x i32>
  %i.lwt = lshr <4 x i32> %i.lws, splat (i32 16)
  %i.lwu = trunc nuw <4 x i32> %i.lwt to <4 x i16>
  store <4 x i16> %i.lwu, ptr %next.gep5229, align 2, !tbaa !57
  %index.next5231 = add nuw i64 %index5227, 4     ; 2 uses
  %i.lwv = icmp eq i64 %index.next5231, %n.vec5225
  br i1 %i.lwv, label %vec.epilog.middle.block5232, label %vec.epilog.vector.body5226, !llvm.loop !867

vec.epilog.middle.block5232:                      ; preds = %vec.epilog.vector.body5226
  %cmp.n5233 = icmp eq i64 %i.luj, %n.vec5225
  br i1 %cmp.n5233, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i.preheader

.lr.ph132.i.i.preheader:                          ; preds = %iter.check5219, %vec.epilog.iter.check5220, %vec.epilog.middle.block5232
  %.2131.i.i.ph = phi ptr [ %.1.lcssa.i46.i, %iter.check5219 ], [ %i.lun, %vec.epilog.iter.check5220 ], [ %i.lvy, %vec.epilog.middle.block5232 ] ; 3 uses
  %.227130.i.i.ph = phi i32 [ %.126.lcssa.i45.i, %iter.check5219 ], [ %i.lup, %vec.epilog.iter.check5220 ], [ %i.lwa, %vec.epilog.middle.block5232 ] ; 4 uses
  %.230129.i.i.ph = phi ptr [ %.129.lcssa.i44.i, %iter.check5219 ], [ %i.luq, %vec.epilog.iter.check5220 ], [ %i.lwb, %vec.epilog.middle.block5232 ] ; 3 uses
  %i.lww = sub i32 %i.kww, %.227130.i.i.ph
  %.neg8027 = add i32 %.227130.i.i.ph, 1
  %xtraiter7829 = and i32 %i.lww, 1
  %lcmp.mod7830.not = icmp eq i32 %xtraiter7829, 0
  br i1 %lcmp.mod7830.not, label %.lr.ph132.i.i.prol.loopexit, label %.lr.ph132.i.i.prol

.lr.ph132.i.i.prol:                               ; preds = %.lr.ph132.i.i.preheader
  %i.lwx = getelementptr inbounds nuw i8, ptr %.2131.i.i.ph, i64 2
  %i.lwy = load i16, ptr %.2131.i.i.ph, align 2, !tbaa !57
  %i.lwz = zext i16 %i.lwy to i32
  %i.lxa = shl nuw i32 %i.lwz, 16
  %i.lxb = bitcast i32 %i.lxa to float
  %i.lxc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lxb)
  %i.lxd = bitcast float %i.lxc to i32
  %i.lxe = lshr i32 %i.lxd, 16
  %i.lxf = trunc nuw i32 %i.lxe to i16
  %i.lxg = getelementptr inbounds nuw i8, ptr %.230129.i.i.ph, i64 2
  store i16 %i.lxf, ptr %.230129.i.i.ph, align 2, !tbaa !57
  %i.lxh = add nuw nsw i32 %.227130.i.i.ph, 1
  br label %.lr.ph132.i.i.prol.loopexit

.lr.ph132.i.i.prol.loopexit:                      ; preds = %.lr.ph132.i.i.prol, %.lr.ph132.i.i.preheader
  %.2131.i.i.unr = phi ptr [ %.2131.i.i.ph, %.lr.ph132.i.i.preheader ], [ %i.lwx, %.lr.ph132.i.i.prol ]
  %.227130.i.i.unr = phi i32 [ %.227130.i.i.ph, %.lr.ph132.i.i.preheader ], [ %i.lxh, %.lr.ph132.i.i.prol ]
  %.230129.i.i.unr = phi ptr [ %.230129.i.i.ph, %.lr.ph132.i.i.preheader ], [ %i.lxg, %.lr.ph132.i.i.prol ]
  %i.lxi = icmp eq i32 %i.kww, %.neg8027
  br i1 %i.lxi, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i

bb.jd:                                            ; preds = %bb.jd, %.lr.ph125.i.i
  %.1124.i.i = phi ptr [ %.0.lcssa.i42.i, %.lr.ph125.i.i ], [ %i.lzn, %bb.jd ] ; 2 uses
  %.126123.i.i = phi i32 [ %.025.lcssa.i41.i, %.lr.ph125.i.i ], [ %i.lzp, %bb.jd ]
  %.129122.i.i = phi ptr [ %.028.lcssa.i40.i, %.lr.ph125.i.i ], [ %i.lzo, %bb.jd ] ; 2 uses
  %i.lxj = load i64, ptr %.1124.i.i, align 1, !tbaa !60
  %i.lxk = insertelement <2 x i64> poison, i64 %i.lxj, i64 0
  %i.lxl = bitcast <2 x i64> %i.lxk to <8 x i16>
  %i.lxm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lxl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.lxn = bitcast <8 x i16> %i.lxm to <4 x float> ; 3 uses
  %i.lxo = fcmp fast oeq <4 x float> %i.lxn, zeroinitializer ; 2 uses
  %.not112.i48.i = or <4 x i1> %i.lrp, %i.lxo
  %i.lxp = fcmp fast olt <4 x float> %i.lxn, zeroinitializer
  %i.lxq = select <4 x i1> %i.lxp, <4 x float> %i.lrt, <4 x float> zeroinitializer
  %i.lxr = fdiv fast <4 x float> %i.lrd, %i.lxn   ; 2 uses
  %i.lxs = bitcast <4 x float> %i.lxr to <4 x i32>
  %i.lxt = and <4 x i32> %i.lxs, splat (i32 -2147483648)
  %i.lxu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lxr) ; 3 uses
  %i.lxv = fcmp fast ogt <4 x float> %i.lxu, splat (float 1.000000e+00) ; 2 uses
  %i.lxw = select <4 x i1> %i.lxv, <4 x float> splat (float -1.000000e+00), <4 x float> %i.lxu
  %i.lxx = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lxu, <4 x float> splat (float 1.000000e+00))
  %i.lxy = fdiv fast <4 x float> %i.lxw, %i.lxx   ; 3 uses
  %i.lxz = fmul fast <4 x float> %i.lxy, %i.lxy   ; 3 uses
  %i.lya = fmul fast <4 x float> %i.lxz, %i.lxz   ; 7 uses
  %i.lyb = fmul fast <4 x float> %i.lya, splat (float f0x3C83A25C)
  %i.lyc = fsub fast <4 x float> splat (float f0xBD99B01E), %i.lyb
  %i.lyd = fmul fast <4 x float> %i.lyc, %i.lya
  %i.lye = fadd fast <4 x float> %i.lyd, splat (float f0xBE117200)
  %i.lyf = fmul fast <4 x float> %i.lye, %i.lya
  %i.lyg = fadd fast <4 x float> %i.lyf, splat (float f0xBEAAAA53)
  %i.lyh = fmul fast <4 x float> %i.lya, splat (float f0x3B3AC537)
  %i.lyi = fadd fast <4 x float> %i.lyh, splat (float f0x3D2EDD4E)
  %i.lyj = fmul fast <4 x float> %i.lyi, %i.lya
  %i.lyk = fadd fast <4 x float> %i.lyj, splat (float f0x3DD9ED24)
  %i.lyl = fmul fast <4 x float> %i.lyk, %i.lya
  %i.lym = fadd fast <4 x float> %i.lyl, splat (float f0x3E4CB974)
  %i.lyn = fmul fast <4 x float> %i.lym, %i.lya
  %i.lyo = fadd fast <4 x float> %i.lyn, splat (float 1.000000e+00)
  %i.lyp = fmul fast <4 x float> %i.lyg, %i.lxz
  %i.lyq = fadd fast <4 x float> %i.lyo, %i.lyp
  %i.lyr = fmul fast <4 x float> %i.lyq, %i.lxy
  %i.lys = select <4 x i1> %i.lxv, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.lyt = fadd fast <4 x float> %i.lyr, %i.lys
  %i.lyu = bitcast <4 x float> %i.lyt to <4 x i32>
  %i.lyv = or <4 x i32> %i.lxt, %i.lyu
  %i.lyw = bitcast <4 x i32> %i.lyv to <4 x float>
  %i.lyx = fadd fast <4 x float> %i.lxq, %i.lyw
  %i.lyy = bitcast <8 x i16> %i.lxm to <4 x i32>
  %i.lyz = and <4 x i32> %i.lyy, splat (i32 -2147483648)
  %i.lza = or disjoint <4 x i32> %i.lyz, splat (i32 1078530011)
  %i.lzb = bitcast <4 x i32> %i.lza to <4 x float>
  %i.lzc = fcmp fast uge <4 x float> %i.lzb, zeroinitializer
  %i.lzd = select <4 x i1> %i.lzc, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.lze = bitcast <4 x float> %i.lyx to <4 x i32>
  %i.lzf = select <4 x i1> %.not112.i48.i, <4 x i32> zeroinitializer, <4 x i32> %i.lze
  %i.lzg = select <4 x i1> %i.lxo, <4 x i32> %i.lru, <4 x i32> zeroinitializer
  %i.lzh = select <4 x i1> %i.lrp, <4 x i32> %i.lzd, <4 x i32> %i.lzg
  %i.lzi = or <4 x i32> %i.lzf, %i.lzh
  %i.lzj = lshr <4 x i32> %i.lzi, splat (i32 16)
  %i.lzk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lzj, <4 x i32> poison)
  %i.lzl = bitcast <8 x i16> %i.lzk to <2 x i64>
  %i.lzm = extractelement <2 x i64> %i.lzl, i64 0
  store i64 %i.lzm, ptr %.129122.i.i, align 1, !tbaa !60
  %i.lzn = getelementptr inbounds nuw i8, ptr %.1124.i.i, i64 8 ; 2 uses
  %i.lzo = getelementptr inbounds nuw i8, ptr %.129122.i.i, i64 8 ; 2 uses
  %i.lzp = add nuw nsw i32 %.126123.i.i, 4        ; 3 uses
  %i.lzq = or disjoint i32 %i.lzp, 3
  %i.lzr = icmp slt i32 %i.lzq, %i.kww
  br i1 %i.lzr, label %bb.jd, label %.preheader.i43.i, !llvm.loop !868

.lr.ph132.i.i:                                    ; preds = %.lr.ph132.i.i.prol.loopexit, %.lr.ph132.i.i
  %.2131.i.i = phi ptr [ %i.mac, %.lr.ph132.i.i ], [ %.2131.i.i.unr, %.lr.ph132.i.i.prol.loopexit ] ; 3 uses
  %.227130.i.i = phi i32 [ %i.mam, %.lr.ph132.i.i ], [ %.227130.i.i.unr, %.lr.ph132.i.i.prol.loopexit ]
  %.230129.i.i = phi ptr [ %i.mal, %.lr.ph132.i.i ], [ %.230129.i.i.unr, %.lr.ph132.i.i.prol.loopexit ] ; 3 uses
  %i.lzs = getelementptr inbounds nuw i8, ptr %.2131.i.i, i64 2
  %i.lzt = load i16, ptr %.2131.i.i, align 2, !tbaa !57
  %i.lzu = zext i16 %i.lzt to i32
  %i.lzv = shl nuw i32 %i.lzu, 16
  %i.lzw = bitcast i32 %i.lzv to float
  %i.lzx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.lzw)
  %i.lzy = bitcast float %i.lzx to i32
  %i.lzz = lshr i32 %i.lzy, 16
  %i.maa = trunc nuw i32 %i.lzz to i16
  %i.mab = getelementptr inbounds nuw i8, ptr %.230129.i.i, i64 2
  store i16 %i.maa, ptr %.230129.i.i, align 2, !tbaa !57
  %i.mac = getelementptr inbounds nuw i8, ptr %.2131.i.i, i64 4
  %i.mad = load i16, ptr %i.lzs, align 2, !tbaa !57
  %i.mae = zext i16 %i.mad to i32
  %i.maf = shl nuw i32 %i.mae, 16
  %i.mag = bitcast i32 %i.maf to float
  %i.mah = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.lqm, float %i.mag)
  %i.mai = bitcast float %i.mah to i32
  %i.maj = lshr i32 %i.mai, 16
  %i.mak = trunc nuw i32 %i.maj to i16
  %i.mal = getelementptr inbounds nuw i8, ptr %.230129.i.i, i64 4
  store i16 %i.mak, ptr %i.mab, align 2, !tbaa !57
  %i.mam = add nuw nsw i32 %.227130.i.i, 2        ; 2 uses
  %exitcond.not.i47.i.1 = icmp eq i32 %i.mam, %i.kww
  br i1 %exitcond.not.i47.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i, !llvm.loop !869

bb.je:                                            ; preds = %bb.iw, %bb.il
  %i.man = icmp eq i32 %6, 1
  br i1 %i.man, label %bb.jf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jf:                                            ; preds = %bb.je
  %i.mao = icmp eq i32 %3, %4
  br i1 %i.mao, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  switch i32 %.sroa.speculated.i1005, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i56.i
    i32 4, label %.preheader105.i.i
  ]

.preheader105.i.i:                                ; preds = %bb.jg
  %i.map = icmp sgt i32 %.sroa.speculated78.i, 0
  br i1 %i.map, label %.lr.ph.i53.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i56.i:                                 ; preds = %bb.jg
  %i.maq = icmp sgt i32 %.sroa.speculated78.i, 0
  br i1 %i.maq, label %.lr.ph115.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph115.i.i:                                    ; preds = %.preheader.i56.i, %.lr.ph115.i.i
  %.020114.i.i = phi ptr [ %i.mde, %.lr.ph115.i.i ], [ %0, %.preheader.i56.i ] ; 2 uses
  %.021113.i.i = phi i32 [ %i.mdh, %.lr.ph115.i.i ], [ 0, %.preheader.i56.i ]
  %.022112.i.i = phi ptr [ %i.mdf, %.lr.ph115.i.i ], [ %1, %.preheader.i56.i ] ; 2 uses
  %.024111.i.i = phi ptr [ %i.mdg, %.lr.ph115.i.i ], [ %2, %.preheader.i56.i ] ; 2 uses
  %i.mar = load <8 x i16>, ptr %.020114.i.i, align 1, !tbaa !60 ; 2 uses
  %i.mas = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mat = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mar, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mau = shufflevector <8 x i16> %i.mas, <8 x i16> %i.mat, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.mav = bitcast <16 x i16> %i.mau to <8 x float> ; 3 uses
  %i.maw = load i16, ptr %.022112.i.i, align 2, !tbaa !57
  %i.max = zext i16 %i.maw to i32
  %i.may = shl nuw i32 %i.max, 16
  %i.maz = insertelement <8 x i32> poison, i32 %i.may, i64 0
  %i.mba = bitcast <8 x i32> %i.maz to <8 x float>
  %i.mbb = shufflevector <8 x float> %i.mba, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.mbc = fcmp fast ueq <8 x float> %i.mbb, zeroinitializer ; 2 uses
  %i.mbd = fcmp fast ueq <8 x float> %i.mav, zeroinitializer ; 2 uses
  %.not104.i.i = or <8 x i1> %i.mbc, %i.mbd
  %i.mbe = fcmp fast olt <8 x float> %i.mbb, zeroinitializer
  %i.mbf = fcmp fast olt <8 x float> %i.mav, zeroinitializer
  %i.mbg = select <8 x i1> %i.mbf, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.mbh = select <8 x i1> %i.mbe, <8 x float> %i.mbg, <8 x float> zeroinitializer
  %i.mbi = fdiv fast <8 x float> %i.mav, %i.mbb   ; 2 uses
  %i.mbj = bitcast <8 x float> %i.mbi to <8 x i32>
  %i.mbk = and <8 x i32> %i.mbj, splat (i32 -2147483648)
  %i.mbl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.mbi) ; 3 uses
  %i.mbm = fcmp fast ogt <8 x float> %i.mbl, splat (float 1.000000e+00) ; 2 uses
  %i.mbn = select <8 x i1> %i.mbm, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mbl
  %i.mbo = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mbl, <8 x float> splat (float 1.000000e+00))
  %i.mbp = fdiv fast <8 x float> %i.mbn, %i.mbo   ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.mer = fmul fast <4 x float> %i.meq, %i.mei
  %i.mes = fadd fast <4 x float> %i.mer, splat (float f0x3DD9ED24)
  %i.met = fmul fast <4 x float> %i.mes, %i.mei
  %i.meu = fadd fast <4 x float> %i.met, splat (float f0x3E4CB974)
  %i.mev = fmul fast <4 x float> %i.meu, %i.mei
  %i.mew = fadd fast <4 x float> %i.mev, splat (float 1.000000e+00)
  %i.mex = fmul fast <4 x float> %i.meo, %i.meh
  %i.mey = fadd fast <4 x float> %i.mew, %i.mex
  %i.mez = fmul fast <4 x float> %i.mey, %i.meg
  %i.mfa = select <4 x i1> %i.med, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.mfb = fadd fast <4 x float> %i.mez, %i.mfa
  %i.mfc = bitcast <4 x float> %i.mfb to <4 x i32>
  %i.mfd = or <4 x i32> %i.meb, %i.mfc
  %i.mfe = bitcast <4 x i32> %i.mfd to <4 x float>
  %i.mff = fadd fast <4 x float> %i.mdy, %i.mfe
  %i.mfg = bitcast <4 x float> %i.mds to <4 x i32>
  %i.mfh = bitcast <8 x i16> %i.mdl to <4 x i32>
  %i.mfi = and <4 x i32> %i.mfh, splat (i32 -2147483648)
  %i.mfj = or disjoint <4 x i32> %i.mfi, splat (i32 1070137344)
  %isneg.inv.i54.i = icmp slt <4 x i32> %i.mfg, zeroinitializer
  %i.mfk = select <4 x i1> %isneg.inv.i54.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.mfl = bitcast <4 x float> %i.mff to <4 x i32>
  %i.mfm = select <4 x i1> %.not101.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.mfl
  %i.mfn = select <4 x i1> %i.mdt, <4 x i32> %i.mfj, <4 x i32> zeroinitializer
  %i.mfo = select <4 x i1> %i.mdu, <4 x i32> %i.mfk, <4 x i32> %i.mfn
  %i.mfp = or <4 x i32> %i.mfm, %i.mfo
  %i.mfq = lshr <4 x i32> %i.mfp, splat (i32 16)
  %i.mfr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mfq, <4 x i32> poison)
  %i.mfs = bitcast <8 x i16> %i.mfr to <2 x i64>
  %i.mft = extractelement <2 x i64> %i.mfs, i64 0
  store i64 %i.mft, ptr %.125107.i.i, align 1, !tbaa !60
  %i.mfu = getelementptr inbounds nuw i8, ptr %.1109.i.i, i64 8
  %i.mfv = getelementptr inbounds nuw i8, ptr %.123108.i.i, i64 2
  %i.mfw = getelementptr inbounds nuw i8, ptr %.125107.i.i, i64 8
  %i.mfx = add nuw nsw i32 %.0110.i.i, 1          ; 2 uses
  %exitcond.not.i55.i1013 = icmp eq i32 %i.mfx, %.sroa.speculated78.i
  br i1 %exitcond.not.i55.i1013, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i53.i, !llvm.loop !871

bb.jh:                                            ; preds = %bb.jf
  %i.mfy = icmp eq i32 %4, 1
  br i1 %i.mfy, label %bb.ji, label %bb.jl

bb.ji:                                            ; preds = %bb.jh
  %.val.i1007 = load i16, ptr %1, align 2, !tbaa !57
  %i.mfz = zext i16 %.val.i1007 to i32
  %i.mga = shl nuw i32 %i.mfz, 16
  %i.mgb = bitcast i32 %i.mga to float            ; 15 uses
  %i.mgc = icmp sgt i32 %i.kww, 7
  br i1 %i.mgc, label %.lr.ph.i64.i1011, label %._crit_edge.i.i1008

.lr.ph.i64.i1011:                                 ; preds = %bb.ji
  %i.mgd = insertelement <8 x float> poison, float %i.mgb, i64 0
  %i.mge = shufflevector <8 x float> %i.mgd, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.mgf = fcmp fast ueq <8 x float> %i.mge, zeroinitializer ; 2 uses
  %i.mgg = fcmp fast olt <8 x float> %i.mge, zeroinitializer
  %i.mgh = bitcast <8 x float> %i.mge to <8 x i32>
  %isneg.inv78.i.i = icmp slt <8 x i32> %i.mgh, zeroinitializer
  %i.mgi = select <8 x i1> %isneg.inv78.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.mgj = fdiv fast <8 x float> splat (float 1.000000e+00), %i.mge
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jj, %.lr.ph.i64.i1011
  %.083.i.i = phi ptr [ %0, %.lr.ph.i64.i1011 ], [ %i.min, %bb.jj ] ; 2 uses
  %.02282.i.i = phi i32 [ 0, %.lr.ph.i64.i1011 ], [ %i.mip, %bb.jj ]
  %.02581.i.i = phi ptr [ %2, %.lr.ph.i64.i1011 ], [ %i.mio, %bb.jj ] ; 2 uses
  %i.mgk = load <8 x i16>, ptr %.083.i.i, align 1, !tbaa !60 ; 2 uses
  %i.mgl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mgk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mgm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mgk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mgn = shufflevector <8 x i16> %i.mgl, <8 x i16> %i.mgm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.mgo = bitcast <16 x i16> %i.mgn to <8 x float> ; 3 uses
  %i.mgp = fcmp fast ueq <8 x float> %i.mgo, zeroinitializer ; 2 uses
  %.not80.i.i = or <8 x i1> %i.mgf, %i.mgp
  %i.mgq = fcmp fast olt <8 x float> %i.mgo, zeroinitializer
  %i.mgr = select <8 x i1> %i.mgq, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.mgs = select <8 x i1> %i.mgg, <8 x float> %i.mgr, <8 x float> zeroinitializer
  %i.mgt = fmul fast <8 x float> %i.mgo, %i.mgj   ; 2 uses
  %i.mgu = bitcast <8 x float> %i.mgt to <8 x i32>
  %i.mgv = and <8 x i32> %i.mgu, splat (i32 -2147483648)
  %i.mgw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.mgt) ; 3 uses
  %i.mgx = fcmp fast ogt <8 x float> %i.mgw, splat (float 1.000000e+00) ; 2 uses
  %i.mgy = select <8 x i1> %i.mgx, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mgw
  %i.mgz = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgw, <8 x float> splat (float 1.000000e+00))
  %i.mha = fdiv fast <8 x float> %i.mgy, %i.mgz   ; 3 uses
  %i.mhb = fmul fast <8 x float> %i.mha, %i.mha   ; 3 uses
  %i.mhc = fmul fast <8 x float> %i.mhb, %i.mhb   ; 7 uses
  %i.mhd = fmul fast <8 x float> %i.mhc, splat (float f0x3C83A25C)
  %i.mhe = fsub fast <8 x float> splat (float f0xBD99B01E), %i.mhd
  %i.mhf = fmul fast <8 x float> %i.mhe, %i.mhc
  %i.mhg = fadd fast <8 x float> %i.mhf, splat (float f0xBE117200)
  %i.mhh = fmul fast <8 x float> %i.mhg, %i.mhc
  %i.mhi = fadd fast <8 x float> %i.mhh, splat (float f0xBEAAAA53)
  %i.mhj = fmul fast <8 x float> %i.mhc, splat (float f0x3B3AC537)
  %i.mhk = fadd fast <8 x float> %i.mhj, splat (float f0x3D2EDD4E)
  %i.mhl = fmul fast <8 x float> %i.mhk, %i.mhc
  %i.mhm = fadd fast <8 x float> %i.mhl, splat (float f0x3DD9ED24)
  %i.mhn = fmul fast <8 x float> %i.mhm, %i.mhc
  %i.mho = fadd fast <8 x float> %i.mhn, splat (float f0x3E4CB974)
  %i.mhp = fmul fast <8 x float> %i.mho, %i.mhc
  %i.mhq = fadd fast <8 x float> %i.mhp, splat (float 1.000000e+00)
  %i.mhr = fmul fast <8 x float> %i.mhi, %i.mhb
  %i.mhs = fadd fast <8 x float> %i.mhq, %i.mhr
  %i.mht = fmul fast <8 x float> %i.mhs, %i.mha
  %i.mhu = select <8 x i1> %i.mgx, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.mhv = fadd fast <8 x float> %i.mht, %i.mhu
  %i.mhw = bitcast <8 x float> %i.mhv to <8 x i32>
  %i.mhx = or <8 x i32> %i.mgv, %i.mhw
  %i.mhy = bitcast <8 x i32> %i.mhx to <8 x float>
  %i.mhz = fadd fast <8 x float> %i.mgs, %i.mhy
  %i.mia = bitcast <16 x i16> %i.mgn to <8 x i32>
  %i.mib = and <8 x i32> %i.mia, splat (i32 -2147483648)
  %i.mic = or disjoint <8 x i32> %i.mib, splat (i32 1070141403)
  %i.mid = bitcast <8 x float> %i.mhz to <8 x i32>
  %i.mie = select <8 x i1> %.not80.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.mid
  %i.mif = select <8 x i1> %i.mgf, <8 x i32> %i.mic, <8 x i32> zeroinitializer
  %i.mig = select <8 x i1> %i.mgp, <8 x i32> %i.mgi, <8 x i32> %i.mif
  %i.mih = or <8 x i32> %i.mie, %i.mig            ; 2 uses
  %i.mii = shufflevector <8 x i32> %i.mih, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mij = shufflevector <8 x i32> %i.mih, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mik = lshr <4 x i32> %i.mii, splat (i32 16)
  %i.mil = lshr <4 x i32> %i.mij, splat (i32 16)
  %i.mim = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mik, <4 x i32> %i.mil)
  store <8 x i16> %i.mim, ptr %.02581.i.i, align 1, !tbaa !60
  %i.min = getelementptr inbounds nuw i8, ptr %.083.i.i, i64 16 ; 2 uses
  %i.mio = getelementptr inbounds nuw i8, ptr %.02581.i.i, i64 16 ; 2 uses
  %i.mip = add nuw nsw i32 %.02282.i.i, 8         ; 2 uses
  %i.miq = or disjoint i32 %i.mip, 7
  %i.mir = icmp slt i32 %i.miq, %i.kww
  br i1 %i.mir, label %bb.jj, label %._crit_edge.loopexit.i.i1012, !llvm.loop !872

._crit_edge.loopexit.i.i1012:                     ; preds = %bb.jj
  %i.mis = and i32 %i.kww, 2147483640
  br label %._crit_edge.i.i1008

._crit_edge.i.i1008:                              ; preds = %._crit_edge.loopexit.i.i1012, %bb.ji
  %.025.lcssa.i57.i = phi ptr [ %2, %bb.ji ], [ %i.mio, %._crit_edge.loopexit.i.i1012 ] ; 2 uses
  %.022.lcssa.i.i1009 = phi i32 [ 0, %bb.ji ], [ %i.mis, %._crit_edge.loopexit.i.i1012 ] ; 3 uses
  %.0.lcssa.i58.i = phi ptr [ %0, %bb.ji ], [ %i.min, %._crit_edge.loopexit.i.i1012 ] ; 2 uses
  %i.mit = or disjoint i32 %.022.lcssa.i.i1009, 3
  %i.miu = icmp slt i32 %i.mit, %i.kww
  br i1 %i.miu, label %.lr.ph90.i.i, label %.preheader.i59.i

.lr.ph90.i.i:                                     ; preds = %._crit_edge.i.i1008
  %i.miv = insertelement <4 x float> poison, float %i.mgb, i64 0
  %i.miw = shufflevector <4 x float> %i.miv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mix = fcmp fast oeq <4 x float> %i.miw, zeroinitializer ; 2 uses
  %i.miy = fcmp fast olt <4 x float> %i.miw, zeroinitializer
  %i.miz = bitcast <4 x float> %i.miw to <4 x i32>
  %isneg.inv.i63.i = icmp slt <4 x i32> %i.miz, zeroinitializer
  %i.mja = select <4 x i1> %isneg.inv.i63.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.mjb = fdiv fast <4 x float> splat (float 1.000000e+00), %i.miw
  br label %bb.jk

.preheader.i59.i:                                 ; preds = %bb.jk, %._crit_edge.i.i1008
  %.126.lcssa.i60.i = phi ptr [ %.025.lcssa.i57.i, %._crit_edge.i.i1008 ], [ %i.moj, %bb.jk ] ; 6 uses
  %.123.lcssa.i.i1010 = phi i32 [ %.022.lcssa.i.i1009, %._crit_edge.i.i1008 ], [ %i.mok, %bb.jk ] ; 5 uses
  %.1.lcssa.i61.i = phi ptr [ %.0.lcssa.i58.i, %._crit_edge.i.i1008 ], [ %i.moi, %bb.jk ] ; 6 uses
  %i.mjc = icmp slt i32 %.123.lcssa.i.i1010, %i.kww
  br i1 %i.mjc, label %iter.check5180, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5180:                                   ; preds = %.preheader.i59.i
  %.126.lcssa.i60.i5164 = ptrtoaddr ptr %.126.lcssa.i60.i to i64
  %.1.lcssa.i61.i5163 = ptrtoaddr ptr %.1.lcssa.i61.i to i64
  %i.mjd = xor i32 %.123.lcssa.i.i1010, -1
  %i.mje = add i32 %i.kww, %i.mjd                 ; 3 uses
  %i.mjf = zext i32 %i.mje to i64
  %i.mjg = add nuw nsw i64 %i.mjf, 1              ; 5 uses
  %min.iters.check5165 = icmp ult i32 %i.mje, 3
  %i.mjh = sub i64 %.1.lcssa.i61.i5163, %.126.lcssa.i60.i5164
  %diff.check5167 = icmp ugt i64 %i.mjh, -32
  %or.cond7123 = select i1 %min.iters.check5165, i1 true, i1 %diff.check5167
  br i1 %or.cond7123, label %.lr.ph97.i.i.preheader, label %vector.main.loop.iter.check5168

vector.main.loop.iter.check5168:                  ; preds = %iter.check5180
  %min.iters.check5169 = icmp ult i32 %i.mje, 15
  br i1 %min.iters.check5169, label %vec.epilog.ph5184, label %vector.ph5170

vector.ph5170:                                    ; preds = %vector.main.loop.iter.check5168
  %i.mji = and i64 %i.mjg, 12
  %n.vec5171 = and i64 %i.mjg, 8589934576         ; 5 uses
  %i.mjj = shl nuw nsw i64 %n.vec5171, 1          ; 2 uses
  %i.mjk = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.mjj
  %i.mjl = trunc i64 %n.vec5171 to i32
  %i.mjm = add i32 %.123.lcssa.i.i1010, %i.mjl
  %i.mjn = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.mjj
  %i.mjo = insertelement <8 x float> poison, float %i.mgb, i64 0
  %i.mjp = shufflevector <8 x float> %i.mjo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mjq = insertelement <4 x float> poison, float %i.mgb, i64 0
  %i.mjr = shufflevector <4 x float> %i.mjq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5172

vector.body5172:                                  ; preds = %vector.ph5170, %vector.body5172
  %index5173 = phi i64 [ 0, %vector.ph5170 ], [ %index.next5177, %vector.body5172 ] ; 2 uses
  %i.mjs = shl i64 %index5173, 1                  ; 2 uses
  %next.gep5174 = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.mjs
  %next.gep5175 = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.mjs
  %wide.load5176 = load <16 x i16>, ptr %next.gep5174, align 2, !tbaa !57
  %i.mjt = zext <16 x i16> %wide.load5176 to <16 x i32>
  %i.mju = shl nuw <16 x i32> %i.mjt, splat (i32 16)
  %i.mjv = bitcast <16 x i32> %i.mju to <16 x float> ; 6 uses
  %i.mjw = extractelement <16 x float> %i.mjv, i64 0
  %i.mjx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mjw, float %i.mgb)
  %i.mjy = extractelement <16 x float> %i.mjv, i64 1
  %i.mjz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mjy, float %i.mgb)
  %i.mka = extractelement <16 x float> %i.mjv, i64 2
  %i.mkb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mka, float %i.mgb)
  %i.mkc = extractelement <16 x float> %i.mjv, i64 3
  %i.mkd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mkc, float %i.mgb)
  %i.mke = shufflevector <16 x float> %i.mjv, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mkf = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.mke, <4 x float> %i.mjr)
  %i.mkg = shufflevector <16 x float> %i.mjv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mkh = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.mkg, <8 x float> %i.mjp)
  %i.mki = insertelement <16 x float> poison, float %i.mjx, i64 0
  %i.mkj = insertelement <16 x float> %i.mki, float %i.mjz, i64 1
  %i.mkk = insertelement <16 x float> %i.mkj, float %i.mkb, i64 2
  %i.mkl = insertelement <16 x float> %i.mkk, float %i.mkd, i64 3
  %i.mkm = shufflevector <4 x float> %i.mkf, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mkn = shufflevector <16 x float> %i.mkl, <16 x float> %i.mkm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mko = shufflevector <8 x float> %i.mkh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mkp = shufflevector <16 x float> %i.mkn, <16 x float> %i.mko, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.mkq = bitcast <16 x float> %i.mkp to <16 x i32>
  %i.mkr = lshr <16 x i32> %i.mkq, splat (i32 16)
  %i.mks = trunc nuw <16 x i32> %i.mkr to <16 x i16>
  store <16 x i16> %i.mks, ptr %next.gep5175, align 2, !tbaa !57
  %index.next5177 = add nuw i64 %index5173, 16    ; 2 uses
  %i.mkt = icmp eq i64 %index.next5177, %n.vec5171
  br i1 %i.mkt, label %middle.block5178, label %vector.body5172, !llvm.loop !873

middle.block5178:                                 ; preds = %vector.body5172
  %cmp.n5179 = icmp eq i64 %i.mjg, %n.vec5171
  br i1 %cmp.n5179, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5181

vec.epilog.iter.check5181:                        ; preds = %middle.block5178
  %min.epilog.iters.check5183 = icmp eq i64 %i.mji, 0
  br i1 %min.epilog.iters.check5183, label %.lr.ph97.i.i.preheader, label %vec.epilog.ph5184, !prof !64

vec.epilog.ph5184:                                ; preds = %vector.main.loop.iter.check5168, %vec.epilog.iter.check5181
  %vec.epilog.resume.val5185 = phi i64 [ %n.vec5171, %vec.epilog.iter.check5181 ], [ 0, %vector.main.loop.iter.check5168 ]
  %n.vec5186 = and i64 %i.mjg, 8589934588         ; 4 uses
  %i.mku = shl nuw nsw i64 %n.vec5186, 1          ; 2 uses
  %i.mkv = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.mku
  %i.mkw = trunc i64 %n.vec5186 to i32
  %i.mkx = add i32 %.123.lcssa.i.i1010, %i.mkw
  %i.mky = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.mku
  br label %vec.epilog.vector.body5187

vec.epilog.vector.body5187:                       ; preds = %vec.epilog.vector.body5187, %vec.epilog.ph5184
  %index5188 = phi i64 [ %vec.epilog.resume.val5185, %vec.epilog.ph5184 ], [ %index.next5192, %vec.epilog.vector.body5187 ] ; 2 uses
  %i.mkz = shl i64 %index5188, 1                  ; 2 uses
  %next.gep5189 = getelementptr i8, ptr %.1.lcssa.i61.i, i64 %i.mkz
  %next.gep5190 = getelementptr i8, ptr %.126.lcssa.i60.i, i64 %i.mkz
  %wide.load5191 = load <4 x i16>, ptr %next.gep5189, align 2, !tbaa !57
  %i.mla = zext <4 x i16> %wide.load5191 to <4 x i32>
  %i.mlb = shl nuw <4 x i32> %i.mla, splat (i32 16)
  %i.mlc = bitcast <4 x i32> %i.mlb to <4 x float> ; 4 uses
  %i.mld = extractelement <4 x float> %i.mlc, i64 0
  %i.mle = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mld, float %i.mgb)
  %i.mlf = extractelement <4 x float> %i.mlc, i64 1
  %i.mlg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mlf, float %i.mgb)
  %i.mlh = extractelement <4 x float> %i.mlc, i64 2
  %i.mli = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mlh, float %i.mgb)
  %i.mlj = extractelement <4 x float> %i.mlc, i64 3
  %i.mlk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mlj, float %i.mgb)
  %i.mll = insertelement <4 x float> poison, float %i.mle, i64 0
  %i.mlm = insertelement <4 x float> %i.mll, float %i.mlg, i64 1
  %i.mln = insertelement <4 x float> %i.mlm, float %i.mli, i64 2
  %i.mlo = insertelement <4 x float> %i.mln, float %i.mlk, i64 3
  %i.mlp = bitcast <4 x float> %i.mlo to <4 x i32>
  %i.mlq = lshr <4 x i32> %i.mlp, splat (i32 16)
  %i.mlr = trunc nuw <4 x i32> %i.mlq to <4 x i16>
  store <4 x i16> %i.mlr, ptr %next.gep5190, align 2, !tbaa !57
  %index.next5192 = add nuw i64 %index5188, 4     ; 2 uses
  %i.mls = icmp eq i64 %index.next5192, %n.vec5186
  br i1 %i.mls, label %vec.epilog.middle.block5193, label %vec.epilog.vector.body5187, !llvm.loop !874

vec.epilog.middle.block5193:                      ; preds = %vec.epilog.vector.body5187
  %cmp.n5194 = icmp eq i64 %i.mjg, %n.vec5186
  br i1 %cmp.n5194, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph97.i.i.preheader

.lr.ph97.i.i.preheader:                           ; preds = %iter.check5180, %vec.epilog.iter.check5181, %vec.epilog.middle.block5193
  %.296.i.i.ph = phi ptr [ %.1.lcssa.i61.i, %iter.check5180 ], [ %i.mjk, %vec.epilog.iter.check5181 ], [ %i.mkv, %vec.epilog.middle.block5193 ] ; 3 uses
  %.22495.i.i.ph = phi i32 [ %.123.lcssa.i.i1010, %iter.check5180 ], [ %i.mjm, %vec.epilog.iter.check5181 ], [ %i.mkx, %vec.epilog.middle.block5193 ] ; 4 uses
  %.22794.i.i.ph = phi ptr [ %.126.lcssa.i60.i, %iter.check5180 ], [ %i.mjn, %vec.epilog.iter.check5181 ], [ %i.mky, %vec.epilog.middle.block5193 ] ; 3 uses
  %i.mlt = sub i32 %i.kww, %.22495.i.i.ph
  %.neg8026 = add i32 %.22495.i.i.ph, 1
  %xtraiter7827 = and i32 %i.mlt, 1
  %lcmp.mod7828.not = icmp eq i32 %xtraiter7827, 0
  br i1 %lcmp.mod7828.not, label %.lr.ph97.i.i.prol.loopexit, label %.lr.ph97.i.i.prol

.lr.ph97.i.i.prol:                                ; preds = %.lr.ph97.i.i.preheader
  %i.mlu = getelementptr inbounds nuw i8, ptr %.296.i.i.ph, i64 2
  %i.mlv = load i16, ptr %.296.i.i.ph, align 2, !tbaa !57
  %i.mlw = zext i16 %i.mlv to i32
  %i.mlx = shl nuw i32 %i.mlw, 16
  %i.mly = bitcast i32 %i.mlx to float
  %i.mlz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mly, float %i.mgb)
  %i.mma = bitcast float %i.mlz to i32
  %i.mmb = lshr i32 %i.mma, 16
  %i.mmc = trunc nuw i32 %i.mmb to i16
  %i.mmd = getelementptr inbounds nuw i8, ptr %.22794.i.i.ph, i64 2
  store i16 %i.mmc, ptr %.22794.i.i.ph, align 2, !tbaa !57
  %i.mme = add nuw nsw i32 %.22495.i.i.ph, 1
  br label %.lr.ph97.i.i.prol.loopexit

.lr.ph97.i.i.prol.loopexit:                       ; preds = %.lr.ph97.i.i.prol, %.lr.ph97.i.i.preheader
  %.296.i.i.unr = phi ptr [ %.296.i.i.ph, %.lr.ph97.i.i.preheader ], [ %i.mlu, %.lr.ph97.i.i.prol ]
  %.22495.i.i.unr = phi i32 [ %.22495.i.i.ph, %.lr.ph97.i.i.preheader ], [ %i.mme, %.lr.ph97.i.i.prol ]
  %.22794.i.i.unr = phi ptr [ %.22794.i.i.ph, %.lr.ph97.i.i.preheader ], [ %i.mmd, %.lr.ph97.i.i.prol ]
  %i.mmf = icmp eq i32 %i.kww, %.neg8026
  br i1 %i.mmf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph97.i.i

bb.jk:                                            ; preds = %bb.jk, %.lr.ph90.i.i
  %.188.i.i = phi ptr [ %.0.lcssa.i58.i, %.lr.ph90.i.i ], [ %i.moi, %bb.jk ] ; 2 uses
  %.12387.i.i = phi i32 [ %.022.lcssa.i.i1009, %.lr.ph90.i.i ], [ %i.mok, %bb.jk ]
  %.12686.i.i = phi ptr [ %.025.lcssa.i57.i, %.lr.ph90.i.i ], [ %i.moj, %bb.jk ] ; 2 uses
  %i.mmg = load i64, ptr %.188.i.i, align 1, !tbaa !60
  %i.mmh = insertelement <2 x i64> poison, i64 %i.mmg, i64 0
  %i.mmi = bitcast <2 x i64> %i.mmh to <8 x i16>
  %i.mmj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mmi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.mmk = bitcast <8 x i16> %i.mmj to <4 x float> ; 3 uses
  %i.mml = fcmp fast oeq <4 x float> %i.mmk, zeroinitializer ; 2 uses
  %.not77.i.i = or <4 x i1> %i.mix, %i.mml
  %i.mmm = fcmp fast olt <4 x float> %i.mmk, zeroinitializer
  %i.mmn = select <4 x i1> %i.mmm, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.mmo = select <4 x i1> %i.miy, <4 x float> %i.mmn, <4 x float> zeroinitializer
  %i.mmp = fmul fast <4 x float> %i.mmk, %i.mjb   ; 2 uses
  %i.mmq = bitcast <4 x float> %i.mmp to <4 x i32>
  %i.mmr = and <4 x i32> %i.mmq, splat (i32 -2147483648)
  %i.mms = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mmp) ; 3 uses
  %i.mmt = fcmp fast ogt <4 x float> %i.mms, splat (float 1.000000e+00) ; 2 uses
  %i.mmu = select <4 x i1> %i.mmt, <4 x float> splat (float -1.000000e+00), <4 x float> %i.mms
  %i.mmv = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.mms, <4 x float> splat (float 1.000000e+00))
  %i.mmw = fdiv fast <4 x float> %i.mmu, %i.mmv   ; 3 uses
  %i.mmx = fmul fast <4 x float> %i.mmw, %i.mmw   ; 3 uses
  %i.mmy = fmul fast <4 x float> %i.mmx, %i.mmx   ; 7 uses
  %i.mmz = fmul fast <4 x float> %i.mmy, splat (float f0x3C83A25C)
  %i.mna = fsub fast <4 x float> splat (float f0xBD99B01E), %i.mmz
  %i.mnb = fmul fast <4 x float> %i.mna, %i.mmy
  %i.mnc = fadd fast <4 x float> %i.mnb, splat (float f0xBE117200)
  %i.mnd = fmul fast <4 x float> %i.mnc, %i.mmy
  %i.mne = fadd fast <4 x float> %i.mnd, splat (float f0xBEAAAA53)
  %i.mnf = fmul fast <4 x float> %i.mmy, splat (float f0x3B3AC537)
  %i.mng = fadd fast <4 x float> %i.mnf, splat (float f0x3D2EDD4E)
  %i.mnh = fmul fast <4 x float> %i.mng, %i.mmy
  %i.mni = fadd fast <4 x float> %i.mnh, splat (float f0x3DD9ED24)
  %i.mnj = fmul fast <4 x float> %i.mni, %i.mmy
  %i.mnk = fadd fast <4 x float> %i.mnj, splat (float f0x3E4CB974)
  %i.mnl = fmul fast <4 x float> %i.mnk, %i.mmy
  %i.mnm = fadd fast <4 x float> %i.mnl, splat (float 1.000000e+00)
  %i.mnn = fmul fast <4 x float> %i.mne, %i.mmx
  %i.mno = fadd fast <4 x float> %i.mnm, %i.mnn
  %i.mnp = fmul fast <4 x float> %i.mno, %i.mmw
  %i.mnq = select <4 x i1> %i.mmt, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.mnr = fadd fast <4 x float> %i.mnp, %i.mnq
  %i.mns = bitcast <4 x float> %i.mnr to <4 x i32>
  %i.mnt = or <4 x i32> %i.mmr, %i.mns
  %i.mnu = bitcast <4 x i32> %i.mnt to <4 x float>
  %i.mnv = fadd fast <4 x float> %i.mmo, %i.mnu
  %i.mnw = bitcast <8 x i16> %i.mmj to <4 x i32>
  %i.mnx = and <4 x i32> %i.mnw, splat (i32 -2147483648)
  %i.mny = or disjoint <4 x i32> %i.mnx, splat (i32 1070137344)
  %i.mnz = bitcast <4 x float> %i.mnv to <4 x i32>
  %i.moa = select <4 x i1> %.not77.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.mnz
  %i.mob = select <4 x i1> %i.mix, <4 x i32> %i.mny, <4 x i32> zeroinitializer
  %i.moc = select <4 x i1> %i.mml, <4 x i32> %i.mja, <4 x i32> %i.mob
  %i.mod = or <4 x i32> %i.moa, %i.moc
  %i.moe = lshr <4 x i32> %i.mod, splat (i32 16)
  %i.mof = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.moe, <4 x i32> poison)
  %i.mog = bitcast <8 x i16> %i.mof to <2 x i64>
  %i.moh = extractelement <2 x i64> %i.mog, i64 0
  store i64 %i.moh, ptr %.12686.i.i, align 1, !tbaa !60
  %i.moi = getelementptr inbounds nuw i8, ptr %.188.i.i, i64 8 ; 2 uses
  %i.moj = getelementptr inbounds nuw i8, ptr %.12686.i.i, i64 8 ; 2 uses
  %i.mok = add nuw nsw i32 %.12387.i.i, 4         ; 3 uses
  %i.mol = or disjoint i32 %i.mok, 3
  %i.mom = icmp slt i32 %i.mol, %i.kww
  br i1 %i.mom, label %bb.jk, label %.preheader.i59.i, !llvm.loop !875

.lr.ph97.i.i:                                     ; preds = %.lr.ph97.i.i.prol.loopexit, %.lr.ph97.i.i
  %.296.i.i = phi ptr [ %i.mox, %.lr.ph97.i.i ], [ %.296.i.i.unr, %.lr.ph97.i.i.prol.loopexit ] ; 3 uses
  %.22495.i.i = phi i32 [ %i.mph, %.lr.ph97.i.i ], [ %.22495.i.i.unr, %.lr.ph97.i.i.prol.loopexit ]
  %.22794.i.i = phi ptr [ %i.mpg, %.lr.ph97.i.i ], [ %.22794.i.i.unr, %.lr.ph97.i.i.prol.loopexit ] ; 3 uses
  %i.mon = getelementptr inbounds nuw i8, ptr %.296.i.i, i64 2
  %i.moo = load i16, ptr %.296.i.i, align 2, !tbaa !57
  %i.mop = zext i16 %i.moo to i32
  %i.moq = shl nuw i32 %i.mop, 16
  %i.mor = bitcast i32 %i.moq to float
  %i.mos = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mor, float %i.mgb)
  %i.mot = bitcast float %i.mos to i32
  %i.mou = lshr i32 %i.mot, 16
  %i.mov = trunc nuw i32 %i.mou to i16
  %i.mow = getelementptr inbounds nuw i8, ptr %.22794.i.i, i64 2
  store i16 %i.mov, ptr %.22794.i.i, align 2, !tbaa !57
  %i.mox = getelementptr inbounds nuw i8, ptr %.296.i.i, i64 4
  %i.moy = load i16, ptr %i.mon, align 2, !tbaa !57
  %i.moz = zext i16 %i.moy to i32
  %i.mpa = shl nuw i32 %i.moz, 16
  %i.mpb = bitcast i32 %i.mpa to float
  %i.mpc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mpb, float %i.mgb)
  %i.mpd = bitcast float %i.mpc to i32
  %i.mpe = lshr i32 %i.mpd, 16
  %i.mpf = trunc nuw i32 %i.mpe to i16
  %i.mpg = getelementptr inbounds nuw i8, ptr %.22794.i.i, i64 4
  store i16 %i.mpf, ptr %i.mow, align 2, !tbaa !57
  %i.mph = add nuw nsw i32 %.22495.i.i, 2         ; 2 uses
  %exitcond.not.i62.i.1 = icmp eq i32 %i.mph, %i.kww
  br i1 %exitcond.not.i62.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph97.i.i, !llvm.loop !876

bb.jl:                                            ; preds = %bb.jh
  %i.mpi = icmp eq i32 %3, 1
  br i1 %i.mpi, label %bb.jm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jm:                                            ; preds = %bb.jl
  switch i32 %.sroa.speculated.i1005, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.lr.ph108.i.i
    i32 4, label %.lr.ph.i65.i
  ]

.lr.ph108.i.i:                                    ; preds = %bb.jm
  %i.mpj = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.mpk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mpj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mpl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mpj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mpm = shufflevector <8 x i16> %i.mpk, <8 x i16> %i.mpl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.mpn = bitcast <16 x i16> %i.mpm to <8 x float> ; 3 uses
  %i.mpo = fcmp fast ueq <8 x float> %i.mpn, zeroinitializer ; 2 uses
  %i.mpp = fcmp fast olt <8 x float> %i.mpn, zeroinitializer
  %i.mpq = select <8 x i1> %i.mpp, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.mpr = bitcast <16 x i16> %i.mpm to <8 x i32>
  %i.mps = and <8 x i32> %i.mpr, splat (i32 -2147483648)
  %i.mpt = or disjoint <8 x i32> %i.mps, splat (i32 1070141403)
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jn, %.lr.ph108.i.i
  %.018107.i.i = phi ptr [ %1, %.lr.ph108.i.i ], [ %i.mrw, %bb.jn ] ; 2 uses
  %.019106.i.i = phi i32 [ 0, %.lr.ph108.i.i ], [ %i.mry, %bb.jn ]
  %.020105.i.i = phi ptr [ %2, %.lr.ph108.i.i ], [ %i.mrx, %bb.jn ] ; 2 uses
  %i.mpu = load i16, ptr %.018107.i.i, align 2, !tbaa !57
  %i.mpv = zext i16 %i.mpu to i32
  %i.mpw = shl nuw i32 %i.mpv, 16
  %i.mpx = insertelement <8 x i32> poison, i32 %i.mpw, i64 0
  %i.mpy = bitcast <8 x i32> %i.mpx to <8 x float>
  %i.mpz = shufflevector <8 x float> %i.mpy, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.mqa = fcmp fast ueq <8 x float> %i.mpz, zeroinitializer ; 2 uses
  %.not100.i.i = or <8 x i1> %i.mpo, %i.mqa
  %i.mqb = fcmp fast olt <8 x float> %i.mpz, zeroinitializer
  %i.mqc = select <8 x i1> %i.mqb, <8 x float> %i.mpq, <8 x float> zeroinitializer
  %i.mqd = fdiv fast <8 x float> %i.mpn, %i.mpz   ; 2 uses
  %i.mqe = bitcast <8 x float> %i.mqd to <8 x i32>
  %i.mqf = and <8 x i32> %i.mqe, splat (i32 -2147483648)
  %i.mqg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.mqd) ; 3 uses
  %i.mqh = fcmp fast ogt <8 x float> %i.mqg, splat (float 1.000000e+00) ; 2 uses
  %i.mqi = select <8 x i1> %i.mqh, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mqg
  %i.mqj = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mqg, <8 x float> splat (float 1.000000e+00))
  %i.mqk = fdiv fast <8 x float> %i.mqi, %i.mqj   ; 3 uses
  %i.mql = fmul fast <8 x float> %i.mqk, %i.mqk   ; 3 uses
  %i.mqm = fmul fast <8 x float> %i.mql, %i.mql   ; 7 uses
  %i.mqn = fmul fast <8 x float> %i.mqm, splat (float f0x3C83A25C)
  %i.mqo = fsub fast <8 x float> splat (float f0xBD99B01E), %i.mqn
  %i.mqp = fmul fast <8 x float> %i.mqo, %i.mqm
  %i.mqq = fadd fast <8 x float> %i.mqp, splat (float f0xBE117200)
  %i.mqr = fmul fast <8 x float> %i.mqq, %i.mqm
  %i.mqs = fadd fast <8 x float> %i.mqr, splat (float f0xBEAAAA53)
  %i.mqt = fmul fast <8 x float> %i.mqm, splat (float f0x3B3AC537)
end_hunk_10
begin_hunk_11_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.ndy = trunc nuw i32 %i.ndx to i16
  %i.ndz = getelementptr inbounds nuw i8, ptr %.232133.i.i1099, i64 4
  store i16 %i.ndy, ptr %i.ndk, align 2, !tbaa !57
  %i.nea = add nuw nsw i32 %.226135.i.i1097, 2    ; 2 uses
  %exitcond.not.i.i1100.1 = icmp eq i32 %i.nea, %i.muo
  br i1 %exitcond.not.i.i1100.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i1095, !llvm.loop !883

bb.js:                                            ; preds = %bb.jq
  %i.neb = icmp eq i32 %4, 1
  br i1 %i.neb, label %bb.jt, label %bb.ka

bb.jt:                                            ; preds = %bb.js
  %i.nec = load i16, ptr %1, align 2, !tbaa !57
  %i.ned = zext i16 %i.nec to i32
  %i.nee = shl nuw i32 %i.ned, 16
  %i.nef = bitcast i32 %i.nee to float            ; 14 uses
  %i.neg = icmp eq i32 %.sroa.speculated.i1030, 4
  br i1 %i.neg, label %.thread.i.i1084, label %bb.ju

.thread.i.i1084:                                  ; preds = %bb.jt
  %i.neh = load i64, ptr %1, align 2, !tbaa !60
  %i.nei = insertelement <2 x i64> poison, i64 %i.neh, i64 0
  %i.nej = bitcast <2 x i64> %i.nei to <8 x i16>
  %i.nek = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nel = bitcast <8 x i16> %i.nek to <4 x float>
  br label %bb.jw

bb.ju:                                            ; preds = %bb.jt
  %i.nem = insertelement <4 x float> poison, float %i.nef, i64 0
  %i.nen = shufflevector <4 x float> %i.nem, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.neo = icmp eq i32 %.sroa.speculated.i1030, 8
  br i1 %i.neo, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.nep = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.neq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nep, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ner = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nep, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nes = shufflevector <8 x i16> %i.neq, <8 x i16> %i.ner, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.net = bitcast <16 x i16> %i.nes to <8 x float>
  br label %bb.jx

bb.jw:                                            ; preds = %bb.ju, %.thread.i.i1084
  %i.neu = phi <4 x float> [ %i.nel, %.thread.i.i1084 ], [ %i.nen, %bb.ju ] ; 2 uses
  %i.nev = shufflevector <4 x float> %i.neu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.new = phi <4 x float> [ %i.nen, %bb.jv ], [ %i.neu, %bb.jw ] ; 4 uses
  %i.nex = phi fast <8 x float> [ %i.net, %bb.jv ], [ %i.nev, %bb.jw ] ; 4 uses
  %i.ney = icmp sgt i32 %i.muo, 7
  br i1 %i.ney, label %.lr.ph.i40.i1080, label %.preheader116.i34.i

.lr.ph.i40.i1080:                                 ; preds = %bb.jx
  %i.nez = fcmp fast ueq <8 x float> %i.nex, zeroinitializer ; 2 uses
  %i.nfa = bitcast <8 x float> %i.nex to <8 x i32>
  %i.nfb = and <8 x i32> %i.nfa, splat (i32 -2147483648)
  %i.nfc = fcmp fast olt <8 x float> %i.nex, zeroinitializer
  %i.nfd = select <8 x i1> %i.nfc, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nfe = or disjoint <8 x i32> %i.nfb, splat (i32 1070141403)
  br label %bb.jy

.preheader116.loopexit.i42.i:                     ; preds = %bb.jy
  %i.nff = and i32 %i.muo, 2147483640
  br label %.preheader116.i34.i

.preheader116.i34.i:                              ; preds = %.preheader116.loopexit.i42.i, %bb.jx
  %.028.lcssa.i.i1064 = phi ptr [ %2, %bb.jx ], [ %i.nhu, %.preheader116.loopexit.i42.i ] ; 2 uses
  %.025.lcssa.i.i1065 = phi i32 [ 0, %bb.jx ], [ %i.nff, %.preheader116.loopexit.i42.i ] ; 3 uses
  %.0.lcssa.i35.i1066 = phi ptr [ %0, %bb.jx ], [ %i.nht, %.preheader116.loopexit.i42.i ] ; 2 uses
  %i.nfg = or disjoint i32 %.025.lcssa.i.i1065, 3
  %i.nfh = icmp slt i32 %i.nfg, %i.muo
  br i1 %i.nfh, label %.lr.ph125.i.i1076, label %.preheader.i36.i1067

.lr.ph125.i.i1076:                                ; preds = %.preheader116.i34.i
  %i.nfi = fcmp fast oeq <4 x float> %i.new, zeroinitializer ; 2 uses
  %i.nfj = bitcast <4 x float> %i.new to <4 x i32>
  %i.nfk = and <4 x i32> %i.nfj, splat (i32 -2147483648)
  %i.nfl = fcmp fast olt <4 x float> %i.new, zeroinitializer
  %i.nfm = select <4 x i1> %i.nfl, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.nfn = or disjoint <4 x i32> %i.nfk, splat (i32 1070137344)
  br label %bb.jz

bb.jy:                                            ; preds = %bb.jy, %.lr.ph.i40.i1080
  %.0119.i.i1081 = phi ptr [ %0, %.lr.ph.i40.i1080 ], [ %i.nht, %bb.jy ] ; 2 uses
  %.025118.i.i1082 = phi i32 [ 0, %.lr.ph.i40.i1080 ], [ %i.nhv, %bb.jy ]
  %.028117.i.i1083 = phi ptr [ %2, %.lr.ph.i40.i1080 ], [ %i.nhu, %bb.jy ] ; 2 uses
  %i.nfo = load <8 x i16>, ptr %.0119.i.i1081, align 1, !tbaa !60 ; 2 uses
  %i.nfp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nfo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nfq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nfo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nfr = shufflevector <8 x i16> %i.nfp, <8 x i16> %i.nfq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.nfs = bitcast <16 x i16> %i.nfr to <8 x float> ; 3 uses
  %i.nft = fcmp fast ueq <8 x float> %i.nfs, zeroinitializer ; 2 uses
  %.not115.i41.i = or <8 x i1> %i.nez, %i.nft
  %i.nfu = fcmp fast olt <8 x float> %i.nfs, zeroinitializer
  %i.nfv = select <8 x i1> %i.nfu, <8 x float> %i.nfd, <8 x float> zeroinitializer
  %i.nfw = fdiv fast <8 x float> %i.nex, %i.nfs   ; 2 uses
  %i.nfx = bitcast <8 x float> %i.nfw to <8 x i32>
  %i.nfy = and <8 x i32> %i.nfx, splat (i32 -2147483648)
  %i.nfz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nfw) ; 3 uses
  %i.nga = fcmp fast ogt <8 x float> %i.nfz, splat (float 1.000000e+00) ; 2 uses
  %i.ngb = select <8 x i1> %i.nga, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nfz
  %i.ngc = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nfz, <8 x float> splat (float 1.000000e+00))
  %i.ngd = fdiv fast <8 x float> %i.ngb, %i.ngc   ; 3 uses
  %i.nge = fmul fast <8 x float> %i.ngd, %i.ngd   ; 3 uses
  %i.ngf = fmul fast <8 x float> %i.nge, %i.nge   ; 7 uses
  %i.ngg = fmul fast <8 x float> %i.ngf, splat (float f0x3C83A25C)
  %i.ngh = fsub fast <8 x float> splat (float f0xBD99B01E), %i.ngg
  %i.ngi = fmul fast <8 x float> %i.ngh, %i.ngf
  %i.ngj = fadd fast <8 x float> %i.ngi, splat (float f0xBE117200)
  %i.ngk = fmul fast <8 x float> %i.ngj, %i.ngf
  %i.ngl = fadd fast <8 x float> %i.ngk, splat (float f0xBEAAAA53)
  %i.ngm = fmul fast <8 x float> %i.ngf, splat (float f0x3B3AC537)
  %i.ngn = fadd fast <8 x float> %i.ngm, splat (float f0x3D2EDD4E)
  %i.ngo = fmul fast <8 x float> %i.ngn, %i.ngf
  %i.ngp = fadd fast <8 x float> %i.ngo, splat (float f0x3DD9ED24)
  %i.ngq = fmul fast <8 x float> %i.ngp, %i.ngf
  %i.ngr = fadd fast <8 x float> %i.ngq, splat (float f0x3E4CB974)
  %i.ngs = fmul fast <8 x float> %i.ngr, %i.ngf
  %i.ngt = fadd fast <8 x float> %i.ngs, splat (float 1.000000e+00)
  %i.ngu = fmul fast <8 x float> %i.ngl, %i.nge
  %i.ngv = fadd fast <8 x float> %i.ngt, %i.ngu
  %i.ngw = fmul fast <8 x float> %i.ngv, %i.ngd
  %i.ngx = select <8 x i1> %i.nga, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ngy = fadd fast <8 x float> %i.ngw, %i.ngx
  %i.ngz = bitcast <8 x float> %i.ngy to <8 x i32>
  %i.nha = or <8 x i32> %i.nfy, %i.ngz
  %i.nhb = bitcast <8 x i32> %i.nha to <8 x float>
  %i.nhc = fadd fast <8 x float> %i.nfv, %i.nhb
  %i.nhd = bitcast <16 x i16> %i.nfr to <8 x i32>
  %i.nhe = and <8 x i32> %i.nhd, splat (i32 -2147483648)
  %i.nhf = or disjoint <8 x i32> %i.nhe, splat (i32 1078530011)
  %i.nhg = bitcast <8 x i32> %i.nhf to <8 x float>
  %i.nhh = fcmp fast uge <8 x float> %i.nhg, zeroinitializer
  %i.nhi = select <8 x i1> %i.nhh, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.nhj = bitcast <8 x float> %i.nhc to <8 x i32>
  %i.nhk = select <8 x i1> %.not115.i41.i, <8 x i32> zeroinitializer, <8 x i32> %i.nhj
  %i.nhl = select <8 x i1> %i.nft, <8 x i32> %i.nfe, <8 x i32> zeroinitializer
  %i.nhm = select <8 x i1> %i.nez, <8 x i32> %i.nhi, <8 x i32> %i.nhl
  %i.nhn = or <8 x i32> %i.nhk, %i.nhm            ; 2 uses
  %i.nho = shufflevector <8 x i32> %i.nhn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nhp = shufflevector <8 x i32> %i.nhn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nhq = lshr <4 x i32> %i.nho, splat (i32 16)
  %i.nhr = lshr <4 x i32> %i.nhp, splat (i32 16)
  %i.nhs = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nhq, <4 x i32> %i.nhr)
  store <8 x i16> %i.nhs, ptr %.028117.i.i1083, align 1, !tbaa !60
  %i.nht = getelementptr inbounds nuw i8, ptr %.0119.i.i1081, i64 16 ; 2 uses
  %i.nhu = getelementptr inbounds nuw i8, ptr %.028117.i.i1083, i64 16 ; 2 uses
  %i.nhv = add nuw nsw i32 %.025118.i.i1082, 8    ; 2 uses
  %i.nhw = or disjoint i32 %i.nhv, 7
  %i.nhx = icmp slt i32 %i.nhw, %i.muo
  br i1 %i.nhx, label %bb.jy, label %.preheader116.loopexit.i42.i, !llvm.loop !884

.preheader.i36.i1067:                             ; preds = %bb.jz, %.preheader116.i34.i
  %.129.lcssa.i.i1068 = phi ptr [ %.028.lcssa.i.i1064, %.preheader116.i34.i ], [ %i.nnh, %bb.jz ] ; 6 uses
  %.126.lcssa.i.i1069 = phi i32 [ %.025.lcssa.i.i1065, %.preheader116.i34.i ], [ %i.nni, %bb.jz ] ; 5 uses
  %.1.lcssa.i37.i1070 = phi ptr [ %.0.lcssa.i35.i1066, %.preheader116.i34.i ], [ %i.nng, %bb.jz ] ; 6 uses
  %i.nhy = icmp slt i32 %.126.lcssa.i.i1069, %i.muo
  br i1 %i.nhy, label %iter.check5091, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5091:                                   ; preds = %.preheader.i36.i1067
  %.129.lcssa.i.i10685075 = ptrtoaddr ptr %.129.lcssa.i.i1068 to i64
  %.1.lcssa.i37.i10705074 = ptrtoaddr ptr %.1.lcssa.i37.i1070 to i64
  %i.nhz = xor i32 %.126.lcssa.i.i1069, -1
  %i.nia = add i32 %i.muo, %i.nhz                 ; 3 uses
  %i.nib = zext i32 %i.nia to i64
  %i.nic = add nuw nsw i64 %i.nib, 1              ; 5 uses
  %min.iters.check5076 = icmp ult i32 %i.nia, 3
  %i.nid = sub i64 %.1.lcssa.i37.i10705074, %.129.lcssa.i.i10685075
  %diff.check5078 = icmp ugt i64 %i.nid, -32
  %or.cond7124 = select i1 %min.iters.check5076, i1 true, i1 %diff.check5078
  br i1 %or.cond7124, label %.lr.ph132.i.i1071.preheader, label %vector.main.loop.iter.check5079

vector.main.loop.iter.check5079:                  ; preds = %iter.check5091
  %min.iters.check5080 = icmp ult i32 %i.nia, 15
  br i1 %min.iters.check5080, label %vec.epilog.ph5095, label %vector.ph5081

vector.ph5081:                                    ; preds = %vector.main.loop.iter.check5079
  %i.nie = and i64 %i.nic, 12
  %n.vec5082 = and i64 %i.nic, 8589934576         ; 5 uses
  %i.nif = shl nuw nsw i64 %n.vec5082, 1          ; 2 uses
  %i.nig = getelementptr i8, ptr %.1.lcssa.i37.i1070, i64 %i.nif
  %i.nih = trunc i64 %n.vec5082 to i32
  %i.nii = add i32 %.126.lcssa.i.i1069, %i.nih
  %i.nij = getelementptr i8, ptr %.129.lcssa.i.i1068, i64 %i.nif
  %i.nik = insertelement <8 x float> poison, float %i.nef, i64 0
  %i.nil = shufflevector <8 x float> %i.nik, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nim = insertelement <4 x float> poison, float %i.nef, i64 0
  %i.nin = shufflevector <4 x float> %i.nim, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5083

vector.body5083:                                  ; preds = %vector.ph5081, %vector.body5083
  %index5084 = phi i64 [ 0, %vector.ph5081 ], [ %index.next5088, %vector.body5083 ] ; 2 uses
  %i.nio = shl i64 %index5084, 1                  ; 2 uses
  %next.gep5085 = getelementptr i8, ptr %.1.lcssa.i37.i1070, i64 %i.nio
  %next.gep5086 = getelementptr i8, ptr %.129.lcssa.i.i1068, i64 %i.nio
  %wide.load5087 = load <16 x i16>, ptr %next.gep5085, align 2, !tbaa !57
  %i.nip = zext <16 x i16> %wide.load5087 to <16 x i32>
  %i.niq = shl nuw <16 x i32> %i.nip, splat (i32 16)
  %i.nir = bitcast <16 x i32> %i.niq to <16 x float> ; 6 uses
  %i.nis = extractelement <16 x float> %i.nir, i64 0
  %i.nit = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.nis)
  %i.niu = extractelement <16 x float> %i.nir, i64 1
  %i.niv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.niu)
  %i.niw = extractelement <16 x float> %i.nir, i64 2
  %i.nix = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.niw)
  %i.niy = extractelement <16 x float> %i.nir, i64 3
  %i.niz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.niy)
  %i.nja = shufflevector <16 x float> %i.nir, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.njb = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.nin, <4 x float> %i.nja)
  %i.njc = shufflevector <16 x float> %i.nir, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.njd = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.nil, <8 x float> %i.njc)
  %i.nje = insertelement <16 x float> poison, float %i.nit, i64 0
  %i.njf = insertelement <16 x float> %i.nje, float %i.niv, i64 1
  %i.njg = insertelement <16 x float> %i.njf, float %i.nix, i64 2
  %i.njh = insertelement <16 x float> %i.njg, float %i.niz, i64 3
  %i.nji = shufflevector <4 x float> %i.njb, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.njj = shufflevector <16 x float> %i.njh, <16 x float> %i.nji, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.njk = shufflevector <8 x float> %i.njd, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.njl = shufflevector <16 x float> %i.njj, <16 x float> %i.njk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.njm = bitcast <16 x float> %i.njl to <16 x i32>
  %i.njn = lshr <16 x i32> %i.njm, splat (i32 16)
  %i.njo = trunc nuw <16 x i32> %i.njn to <16 x i16>
  store <16 x i16> %i.njo, ptr %next.gep5086, align 2, !tbaa !57
  %index.next5088 = add nuw i64 %index5084, 16    ; 2 uses
  %i.njp = icmp eq i64 %index.next5088, %n.vec5082
  br i1 %i.njp, label %middle.block5089, label %vector.body5083, !llvm.loop !885

middle.block5089:                                 ; preds = %vector.body5083
  %cmp.n5090 = icmp eq i64 %i.nic, %n.vec5082
  br i1 %cmp.n5090, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5092

vec.epilog.iter.check5092:                        ; preds = %middle.block5089
  %min.epilog.iters.check5094 = icmp eq i64 %i.nie, 0
  br i1 %min.epilog.iters.check5094, label %.lr.ph132.i.i1071.preheader, label %vec.epilog.ph5095, !prof !64

vec.epilog.ph5095:                                ; preds = %vector.main.loop.iter.check5079, %vec.epilog.iter.check5092
  %vec.epilog.resume.val5096 = phi i64 [ %n.vec5082, %vec.epilog.iter.check5092 ], [ 0, %vector.main.loop.iter.check5079 ]
  %n.vec5097 = and i64 %i.nic, 8589934588         ; 4 uses
  %i.njq = shl nuw nsw i64 %n.vec5097, 1          ; 2 uses
  %i.njr = getelementptr i8, ptr %.1.lcssa.i37.i1070, i64 %i.njq
  %i.njs = trunc i64 %n.vec5097 to i32
  %i.njt = add i32 %.126.lcssa.i.i1069, %i.njs
  %i.nju = getelementptr i8, ptr %.129.lcssa.i.i1068, i64 %i.njq
  br label %vec.epilog.vector.body5098

vec.epilog.vector.body5098:                       ; preds = %vec.epilog.vector.body5098, %vec.epilog.ph5095
  %index5099 = phi i64 [ %vec.epilog.resume.val5096, %vec.epilog.ph5095 ], [ %index.next5103, %vec.epilog.vector.body5098 ] ; 2 uses
  %i.njv = shl i64 %index5099, 1                  ; 2 uses
  %next.gep5100 = getelementptr i8, ptr %.1.lcssa.i37.i1070, i64 %i.njv
  %next.gep5101 = getelementptr i8, ptr %.129.lcssa.i.i1068, i64 %i.njv
  %wide.load5102 = load <4 x i16>, ptr %next.gep5100, align 2, !tbaa !57
  %i.njw = zext <4 x i16> %wide.load5102 to <4 x i32>
  %i.njx = shl nuw <4 x i32> %i.njw, splat (i32 16)
  %i.njy = bitcast <4 x i32> %i.njx to <4 x float> ; 4 uses
  %i.njz = extractelement <4 x float> %i.njy, i64 0
  %i.nka = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.njz)
  %i.nkb = extractelement <4 x float> %i.njy, i64 1
  %i.nkc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.nkb)
  %i.nkd = extractelement <4 x float> %i.njy, i64 2
  %i.nke = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.nkd)
  %i.nkf = extractelement <4 x float> %i.njy, i64 3
  %i.nkg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.nkf)
  %i.nkh = insertelement <4 x float> poison, float %i.nka, i64 0
  %i.nki = insertelement <4 x float> %i.nkh, float %i.nkc, i64 1
  %i.nkj = insertelement <4 x float> %i.nki, float %i.nke, i64 2
  %i.nkk = insertelement <4 x float> %i.nkj, float %i.nkg, i64 3
  %i.nkl = bitcast <4 x float> %i.nkk to <4 x i32>
  %i.nkm = lshr <4 x i32> %i.nkl, splat (i32 16)
  %i.nkn = trunc nuw <4 x i32> %i.nkm to <4 x i16>
  store <4 x i16> %i.nkn, ptr %next.gep5101, align 2, !tbaa !57
  %index.next5103 = add nuw i64 %index5099, 4     ; 2 uses
  %i.nko = icmp eq i64 %index.next5103, %n.vec5097
  br i1 %i.nko, label %vec.epilog.middle.block5104, label %vec.epilog.vector.body5098, !llvm.loop !886

vec.epilog.middle.block5104:                      ; preds = %vec.epilog.vector.body5098
  %cmp.n5105 = icmp eq i64 %i.nic, %n.vec5097
  br i1 %cmp.n5105, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i1071.preheader

.lr.ph132.i.i1071.preheader:                      ; preds = %iter.check5091, %vec.epilog.iter.check5092, %vec.epilog.middle.block5104
  %.2131.i.i1072.ph = phi ptr [ %.1.lcssa.i37.i1070, %iter.check5091 ], [ %i.nig, %vec.epilog.iter.check5092 ], [ %i.njr, %vec.epilog.middle.block5104 ] ; 3 uses
  %.227130.i.i1073.ph = phi i32 [ %.126.lcssa.i.i1069, %iter.check5091 ], [ %i.nii, %vec.epilog.iter.check5092 ], [ %i.njt, %vec.epilog.middle.block5104 ] ; 4 uses
  %.230129.i.i1074.ph = phi ptr [ %.129.lcssa.i.i1068, %iter.check5091 ], [ %i.nij, %vec.epilog.iter.check5092 ], [ %i.nju, %vec.epilog.middle.block5104 ] ; 3 uses
  %i.nkp = sub i32 %i.muo, %.227130.i.i1073.ph
  %.neg8024 = add i32 %.227130.i.i1073.ph, 1
  %xtraiter7823 = and i32 %i.nkp, 1
  %lcmp.mod7824.not = icmp eq i32 %xtraiter7823, 0
  br i1 %lcmp.mod7824.not, label %.lr.ph132.i.i1071.prol.loopexit, label %.lr.ph132.i.i1071.prol

.lr.ph132.i.i1071.prol:                           ; preds = %.lr.ph132.i.i1071.preheader
  %i.nkq = getelementptr inbounds nuw i8, ptr %.2131.i.i1072.ph, i64 2
  %i.nkr = load i16, ptr %.2131.i.i1072.ph, align 2, !tbaa !57
  %i.nks = zext i16 %i.nkr to i32
  %i.nkt = shl nuw i32 %i.nks, 16
  %i.nku = bitcast i32 %i.nkt to float
  %i.nkv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.nku)
  %i.nkw = bitcast float %i.nkv to i32
  %i.nkx = lshr i32 %i.nkw, 16
  %i.nky = trunc nuw i32 %i.nkx to i16
  %i.nkz = getelementptr inbounds nuw i8, ptr %.230129.i.i1074.ph, i64 2
  store i16 %i.nky, ptr %.230129.i.i1074.ph, align 2, !tbaa !57
  %i.nla = add nuw nsw i32 %.227130.i.i1073.ph, 1
  br label %.lr.ph132.i.i1071.prol.loopexit

.lr.ph132.i.i1071.prol.loopexit:                  ; preds = %.lr.ph132.i.i1071.prol, %.lr.ph132.i.i1071.preheader
  %.2131.i.i1072.unr = phi ptr [ %.2131.i.i1072.ph, %.lr.ph132.i.i1071.preheader ], [ %i.nkq, %.lr.ph132.i.i1071.prol ]
  %.227130.i.i1073.unr = phi i32 [ %.227130.i.i1073.ph, %.lr.ph132.i.i1071.preheader ], [ %i.nla, %.lr.ph132.i.i1071.prol ]
  %.230129.i.i1074.unr = phi ptr [ %.230129.i.i1074.ph, %.lr.ph132.i.i1071.preheader ], [ %i.nkz, %.lr.ph132.i.i1071.prol ]
  %i.nlb = icmp eq i32 %i.muo, %.neg8024
  br i1 %i.nlb, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i1071

bb.jz:                                            ; preds = %bb.jz, %.lr.ph125.i.i1076
  %.1124.i.i1077 = phi ptr [ %.0.lcssa.i35.i1066, %.lr.ph125.i.i1076 ], [ %i.nng, %bb.jz ] ; 2 uses
  %.126123.i.i1078 = phi i32 [ %.025.lcssa.i.i1065, %.lr.ph125.i.i1076 ], [ %i.nni, %bb.jz ]
  %.129122.i.i1079 = phi ptr [ %.028.lcssa.i.i1064, %.lr.ph125.i.i1076 ], [ %i.nnh, %bb.jz ] ; 2 uses
  %i.nlc = load i64, ptr %.1124.i.i1077, align 1, !tbaa !60
  %i.nld = insertelement <2 x i64> poison, i64 %i.nlc, i64 0
  %i.nle = bitcast <2 x i64> %i.nld to <8 x i16>
  %i.nlf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nle, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.nlg = bitcast <8 x i16> %i.nlf to <4 x float> ; 3 uses
  %i.nlh = fcmp fast oeq <4 x float> %i.nlg, zeroinitializer ; 2 uses
  %.not112.i39.i = or <4 x i1> %i.nfi, %i.nlh
  %i.nli = fcmp fast olt <4 x float> %i.nlg, zeroinitializer
  %i.nlj = select <4 x i1> %i.nli, <4 x float> %i.nfm, <4 x float> zeroinitializer
  %i.nlk = fdiv fast <4 x float> %i.new, %i.nlg   ; 2 uses
  %i.nll = bitcast <4 x float> %i.nlk to <4 x i32>
  %i.nlm = and <4 x i32> %i.nll, splat (i32 -2147483648)
  %i.nln = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nlk) ; 3 uses
  %i.nlo = fcmp fast ogt <4 x float> %i.nln, splat (float 1.000000e+00) ; 2 uses
  %i.nlp = select <4 x i1> %i.nlo, <4 x float> splat (float -1.000000e+00), <4 x float> %i.nln
  %i.nlq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nln, <4 x float> splat (float 1.000000e+00))
  %i.nlr = fdiv fast <4 x float> %i.nlp, %i.nlq   ; 3 uses
  %i.nls = fmul fast <4 x float> %i.nlr, %i.nlr   ; 3 uses
  %i.nlt = fmul fast <4 x float> %i.nls, %i.nls   ; 7 uses
  %i.nlu = fmul fast <4 x float> %i.nlt, splat (float f0x3C83A25C)
  %i.nlv = fsub fast <4 x float> splat (float f0xBD99B01E), %i.nlu
  %i.nlw = fmul fast <4 x float> %i.nlv, %i.nlt
  %i.nlx = fadd fast <4 x float> %i.nlw, splat (float f0xBE117200)
  %i.nly = fmul fast <4 x float> %i.nlx, %i.nlt
  %i.nlz = fadd fast <4 x float> %i.nly, splat (float f0xBEAAAA53)
  %i.nma = fmul fast <4 x float> %i.nlt, splat (float f0x3B3AC537)
  %i.nmb = fadd fast <4 x float> %i.nma, splat (float f0x3D2EDD4E)
  %i.nmc = fmul fast <4 x float> %i.nmb, %i.nlt
  %i.nmd = fadd fast <4 x float> %i.nmc, splat (float f0x3DD9ED24)
  %i.nme = fmul fast <4 x float> %i.nmd, %i.nlt
  %i.nmf = fadd fast <4 x float> %i.nme, splat (float f0x3E4CB974)
  %i.nmg = fmul fast <4 x float> %i.nmf, %i.nlt
  %i.nmh = fadd fast <4 x float> %i.nmg, splat (float 1.000000e+00)
  %i.nmi = fmul fast <4 x float> %i.nlz, %i.nls
  %i.nmj = fadd fast <4 x float> %i.nmh, %i.nmi
  %i.nmk = fmul fast <4 x float> %i.nmj, %i.nlr
  %i.nml = select <4 x i1> %i.nlo, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.nmm = fadd fast <4 x float> %i.nmk, %i.nml
  %i.nmn = bitcast <4 x float> %i.nmm to <4 x i32>
  %i.nmo = or <4 x i32> %i.nlm, %i.nmn
  %i.nmp = bitcast <4 x i32> %i.nmo to <4 x float>
  %i.nmq = fadd fast <4 x float> %i.nlj, %i.nmp
  %i.nmr = bitcast <8 x i16> %i.nlf to <4 x i32>
  %i.nms = and <4 x i32> %i.nmr, splat (i32 -2147483648)
  %i.nmt = or disjoint <4 x i32> %i.nms, splat (i32 1078530011)
  %i.nmu = bitcast <4 x i32> %i.nmt to <4 x float>
  %i.nmv = fcmp fast uge <4 x float> %i.nmu, zeroinitializer
  %i.nmw = select <4 x i1> %i.nmv, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.nmx = bitcast <4 x float> %i.nmq to <4 x i32>
  %i.nmy = select <4 x i1> %.not112.i39.i, <4 x i32> zeroinitializer, <4 x i32> %i.nmx
  %i.nmz = select <4 x i1> %i.nlh, <4 x i32> %i.nfn, <4 x i32> zeroinitializer
  %i.nna = select <4 x i1> %i.nfi, <4 x i32> %i.nmw, <4 x i32> %i.nmz
  %i.nnb = or <4 x i32> %i.nmy, %i.nna
  %i.nnc = lshr <4 x i32> %i.nnb, splat (i32 16)
  %i.nnd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nnc, <4 x i32> poison)
  %i.nne = bitcast <8 x i16> %i.nnd to <2 x i64>
  %i.nnf = extractelement <2 x i64> %i.nne, i64 0
  store i64 %i.nnf, ptr %.129122.i.i1079, align 1, !tbaa !60
  %i.nng = getelementptr inbounds nuw i8, ptr %.1124.i.i1077, i64 8 ; 2 uses
  %i.nnh = getelementptr inbounds nuw i8, ptr %.129122.i.i1079, i64 8 ; 2 uses
  %i.nni = add nuw nsw i32 %.126123.i.i1078, 4    ; 3 uses
  %i.nnj = or disjoint i32 %i.nni, 3
  %i.nnk = icmp slt i32 %i.nnj, %i.muo
  br i1 %i.nnk, label %bb.jz, label %.preheader.i36.i1067, !llvm.loop !887

.lr.ph132.i.i1071:                                ; preds = %.lr.ph132.i.i1071.prol.loopexit, %.lr.ph132.i.i1071
  %.2131.i.i1072 = phi ptr [ %i.nnv, %.lr.ph132.i.i1071 ], [ %.2131.i.i1072.unr, %.lr.ph132.i.i1071.prol.loopexit ] ; 3 uses
  %.227130.i.i1073 = phi i32 [ %i.nof, %.lr.ph132.i.i1071 ], [ %.227130.i.i1073.unr, %.lr.ph132.i.i1071.prol.loopexit ]
  %.230129.i.i1074 = phi ptr [ %i.noe, %.lr.ph132.i.i1071 ], [ %.230129.i.i1074.unr, %.lr.ph132.i.i1071.prol.loopexit ] ; 3 uses
  %i.nnl = getelementptr inbounds nuw i8, ptr %.2131.i.i1072, i64 2
  %i.nnm = load i16, ptr %.2131.i.i1072, align 2, !tbaa !57
  %i.nnn = zext i16 %i.nnm to i32
  %i.nno = shl nuw i32 %i.nnn, 16
  %i.nnp = bitcast i32 %i.nno to float
  %i.nnq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.nnp)
  %i.nnr = bitcast float %i.nnq to i32
  %i.nns = lshr i32 %i.nnr, 16
  %i.nnt = trunc nuw i32 %i.nns to i16
  %i.nnu = getelementptr inbounds nuw i8, ptr %.230129.i.i1074, i64 2
  store i16 %i.nnt, ptr %.230129.i.i1074, align 2, !tbaa !57
  %i.nnv = getelementptr inbounds nuw i8, ptr %.2131.i.i1072, i64 4
  %i.nnw = load i16, ptr %i.nnl, align 2, !tbaa !57
  %i.nnx = zext i16 %i.nnw to i32
  %i.nny = shl nuw i32 %i.nnx, 16
  %i.nnz = bitcast i32 %i.nny to float
  %i.noa = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nef, float %i.nnz)
  %i.nob = bitcast float %i.noa to i32
  %i.noc = lshr i32 %i.nob, 16
  %i.nod = trunc nuw i32 %i.noc to i16
  %i.noe = getelementptr inbounds nuw i8, ptr %.230129.i.i1074, i64 4
  store i16 %i.nod, ptr %i.nnu, align 2, !tbaa !57
  %i.nof = add nuw nsw i32 %.227130.i.i1073, 2    ; 2 uses
  %exitcond.not.i38.i1075.1 = icmp eq i32 %i.nof, %i.muo
  br i1 %exitcond.not.i38.i1075.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph132.i.i1071, !llvm.loop !888

bb.ka:                                            ; preds = %bb.js
  %i.nog = icmp eq i32 %3, 1
  br i1 %i.nog, label %bb.kb, label %bb.ki

bb.kb:                                            ; preds = %bb.ka
  %i.noh = load i16, ptr %0, align 2, !tbaa !57
  %i.noi = zext i16 %i.noh to i32
  %i.noj = shl nuw i32 %i.noi, 16
  %i.nok = bitcast i32 %i.noj to float            ; 14 uses
  %i.nol = icmp eq i32 %.sroa.speculated.i1030, 4
  br i1 %i.nol, label %.thread.i52.i1063, label %bb.kc

.thread.i52.i1063:                                ; preds = %bb.kb
  %i.nom = load i64, ptr %0, align 2, !tbaa !60
  %i.non = insertelement <2 x i64> poison, i64 %i.nom, i64 0
  %i.noo = bitcast <2 x i64> %i.non to <8 x i16>
  %i.nop = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.noo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.noq = bitcast <8 x i16> %i.nop to <4 x float>
  br label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  %i.nor = insertelement <4 x float> poison, float %i.nok, i64 0
  %i.nos = shufflevector <4 x float> %i.nor, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.not = icmp eq i32 %.sroa.speculated.i1030, 8
  br i1 %i.not, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.nou = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.nov = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nou, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.now = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nou, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nox = shufflevector <8 x i16> %i.nov, <8 x i16> %i.now, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.noy = bitcast <16 x i16> %i.nox to <8 x float>
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kc, %.thread.i52.i1063
  %i.noz = phi <4 x float> [ %i.noq, %.thread.i52.i1063 ], [ %i.nos, %bb.kc ] ; 2 uses
  %i.npa = shufflevector <4 x float> %i.noz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %i.npb = phi <4 x float> [ %i.nos, %bb.kd ], [ %i.noz, %bb.ke ] ; 4 uses
  %i.npc = phi fast <8 x float> [ %i.noy, %bb.kd ], [ %i.npa, %bb.ke ] ; 4 uses
  %i.npd = icmp sgt i32 %i.muo, 7
  br i1 %i.npd, label %.lr.ph.i51.i, label %.preheader115.i.i1039

.lr.ph.i51.i:                                     ; preds = %bb.kf
  %i.npe = fcmp fast ueq <8 x float> %i.npc, zeroinitializer ; 2 uses
  %i.npf = fcmp fast olt <8 x float> %i.npc, zeroinitializer
  %i.npg = bitcast <8 x float> %i.npc to <8 x i32>
  %isneg.inv112.i.i1057 = icmp slt <8 x i32> %i.npg, zeroinitializer
  %i.nph = select <8 x i1> %isneg.inv112.i.i1057, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.npi = fdiv fast <8 x float> splat (float 1.000000e+00), %i.npc
  br label %bb.kg

.preheader115.loopexit.i.i1062:                   ; preds = %bb.kg
  %i.npj = and i32 %i.muo, 2147483640
  br label %.preheader115.i.i1039

.preheader115.i.i1039:                            ; preds = %.preheader115.loopexit.i.i1062, %bb.kf
  %.028.lcssa.i43.i1040 = phi ptr [ %2, %bb.kf ], [ %i.nrv, %.preheader115.loopexit.i.i1062 ] ; 2 uses
  %.025.lcssa.i44.i1041 = phi i32 [ 0, %bb.kf ], [ %i.npj, %.preheader115.loopexit.i.i1062 ] ; 3 uses
  %.0.lcssa.i45.i1042 = phi ptr [ %1, %bb.kf ], [ %i.nru, %.preheader115.loopexit.i.i1062 ] ; 2 uses
  %i.npk = or disjoint i32 %.025.lcssa.i44.i1041, 3
  %i.npl = icmp slt i32 %i.npk, %i.muo
  br i1 %i.npl, label %.lr.ph124.i.i1051, label %.preheader.i46.i1043

.lr.ph124.i.i1051:                                ; preds = %.preheader115.i.i1039
  %i.npm = fcmp fast oeq <4 x float> %i.npb, zeroinitializer ; 2 uses
  %i.npn = fcmp fast olt <4 x float> %i.npb, zeroinitializer
  %i.npo = bitcast <4 x float> %i.npb to <4 x i32>
  %isneg.inv.i.i1052 = icmp slt <4 x i32> %i.npo, zeroinitializer
  %i.npp = select <4 x i1> %isneg.inv.i.i1052, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.npq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.npb
  br label %bb.kh

bb.kg:                                            ; preds = %bb.kg, %.lr.ph.i51.i
  %.0118.i.i1058 = phi ptr [ %1, %.lr.ph.i51.i ], [ %i.nru, %bb.kg ] ; 2 uses
  %.025117.i.i1059 = phi i32 [ 0, %.lr.ph.i51.i ], [ %i.nrw, %bb.kg ]
  %.028116.i.i1060 = phi ptr [ %2, %.lr.ph.i51.i ], [ %i.nrv, %bb.kg ] ; 2 uses
  %i.npr = load <8 x i16>, ptr %.0118.i.i1058, align 1, !tbaa !60 ; 2 uses
  %i.nps = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.npr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.npt = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.npr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.npu = shufflevector <8 x i16> %i.nps, <8 x i16> %i.npt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.npv = bitcast <16 x i16> %i.npu to <8 x float> ; 3 uses
  %i.npw = fcmp fast ueq <8 x float> %i.npv, zeroinitializer ; 2 uses
  %.not114.i.i1061 = or <8 x i1> %i.npe, %i.npw
  %i.npx = fcmp fast olt <8 x float> %i.npv, zeroinitializer
  %i.npy = select <8 x i1> %i.npx, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.npz = select <8 x i1> %i.npf, <8 x float> %i.npy, <8 x float> zeroinitializer
  %i.nqa = fmul fast <8 x float> %i.npv, %i.npi   ; 2 uses
  %i.nqb = bitcast <8 x float> %i.nqa to <8 x i32>
  %i.nqc = and <8 x i32> %i.nqb, splat (i32 -2147483648)
  %i.nqd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nqa) ; 3 uses
  %i.nqe = fcmp fast ogt <8 x float> %i.nqd, splat (float 1.000000e+00) ; 2 uses
  %i.nqf = select <8 x i1> %i.nqe, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nqd
  %i.nqg = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nqd, <8 x float> splat (float 1.000000e+00))
  %i.nqh = fdiv fast <8 x float> %i.nqf, %i.nqg   ; 3 uses
  %i.nqi = fmul fast <8 x float> %i.nqh, %i.nqh   ; 3 uses
  %i.nqj = fmul fast <8 x float> %i.nqi, %i.nqi   ; 7 uses
  %i.nqk = fmul fast <8 x float> %i.nqj, splat (float f0x3C83A25C)
  %i.nql = fsub fast <8 x float> splat (float f0xBD99B01E), %i.nqk
  %i.nqm = fmul fast <8 x float> %i.nql, %i.nqj
  %i.nqn = fadd fast <8 x float> %i.nqm, splat (float f0xBE117200)
  %i.nqo = fmul fast <8 x float> %i.nqn, %i.nqj
  %i.nqp = fadd fast <8 x float> %i.nqo, splat (float f0xBEAAAA53)
  %i.nqq = fmul fast <8 x float> %i.nqj, splat (float f0x3B3AC537)
  %i.nqr = fadd fast <8 x float> %i.nqq, splat (float f0x3D2EDD4E)
  %i.nqs = fmul fast <8 x float> %i.nqr, %i.nqj
  %i.nqt = fadd fast <8 x float> %i.nqs, splat (float f0x3DD9ED24)
  %i.nqu = fmul fast <8 x float> %i.nqt, %i.nqj
  %i.nqv = fadd fast <8 x float> %i.nqu, splat (float f0x3E4CB974)
  %i.nqw = fmul fast <8 x float> %i.nqv, %i.nqj
  %i.nqx = fadd fast <8 x float> %i.nqw, splat (float 1.000000e+00)
  %i.nqy = fmul fast <8 x float> %i.nqp, %i.nqi
  %i.nqz = fadd fast <8 x float> %i.nqx, %i.nqy
  %i.nra = fmul fast <8 x float> %i.nqz, %i.nqh
  %i.nrb = select <8 x i1> %i.nqe, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.nrc = fadd fast <8 x float> %i.nra, %i.nrb
  %i.nrd = bitcast <8 x float> %i.nrc to <8 x i32>
  %i.nre = or <8 x i32> %i.nqc, %i.nrd
  %i.nrf = bitcast <8 x i32> %i.nre to <8 x float>
  %i.nrg = fadd fast <8 x float> %i.npz, %i.nrf
  %i.nrh = bitcast <16 x i16> %i.npu to <8 x i32>
  %i.nri = and <8 x i32> %i.nrh, splat (i32 -2147483648)
  %i.nrj = or disjoint <8 x i32> %i.nri, splat (i32 1070141403)
  %i.nrk = bitcast <8 x float> %i.nrg to <8 x i32>
  %i.nrl = select <8 x i1> %.not114.i.i1061, <8 x i32> zeroinitializer, <8 x i32> %i.nrk
  %i.nrm = select <8 x i1> %i.npe, <8 x i32> %i.nrj, <8 x i32> zeroinitializer
  %i.nrn = select <8 x i1> %i.npw, <8 x i32> %i.nph, <8 x i32> %i.nrm
  %i.nro = or <8 x i32> %i.nrl, %i.nrn            ; 2 uses
  %i.nrp = shufflevector <8 x i32> %i.nro, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nrq = shufflevector <8 x i32> %i.nro, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nrr = lshr <4 x i32> %i.nrp, splat (i32 16)
  %i.nrs = lshr <4 x i32> %i.nrq, splat (i32 16)
  %i.nrt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nrr, <4 x i32> %i.nrs)
  store <8 x i16> %i.nrt, ptr %.028116.i.i1060, align 1, !tbaa !60
  %i.nru = getelementptr inbounds nuw i8, ptr %.0118.i.i1058, i64 16 ; 2 uses
  %i.nrv = getelementptr inbounds nuw i8, ptr %.028116.i.i1060, i64 16 ; 2 uses
  %i.nrw = add nuw nsw i32 %.025117.i.i1059, 8    ; 2 uses
  %i.nrx = or disjoint i32 %i.nrw, 7
  %i.nry = icmp slt i32 %i.nrx, %i.muo
  br i1 %i.nry, label %bb.kg, label %.preheader115.loopexit.i.i1062, !llvm.loop !889

.preheader.i46.i1043:                             ; preds = %bb.kh, %.preheader115.i.i1039
  %.129.lcssa.i47.i1044 = phi ptr [ %.028.lcssa.i43.i1040, %.preheader115.i.i1039 ], [ %i.nxg, %bb.kh ] ; 6 uses
  %.126.lcssa.i48.i1045 = phi i32 [ %.025.lcssa.i44.i1041, %.preheader115.i.i1039 ], [ %i.nxh, %bb.kh ] ; 5 uses
  %.1.lcssa.i49.i1046 = phi ptr [ %.0.lcssa.i45.i1042, %.preheader115.i.i1039 ], [ %i.nxf, %bb.kh ] ; 6 uses
  %i.nrz = icmp slt i32 %.126.lcssa.i48.i1045, %i.muo
  br i1 %i.nrz, label %iter.check5052, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5052:                                   ; preds = %.preheader.i46.i1043
  %.129.lcssa.i47.i10445036 = ptrtoaddr ptr %.129.lcssa.i47.i1044 to i64
  %.1.lcssa.i49.i10465035 = ptrtoaddr ptr %.1.lcssa.i49.i1046 to i64
  %i.nsa = xor i32 %.126.lcssa.i48.i1045, -1
  %i.nsb = add i32 %i.muo, %i.nsa                 ; 3 uses
  %i.nsc = zext i32 %i.nsb to i64
  %i.nsd = add nuw nsw i64 %i.nsc, 1              ; 5 uses
  %min.iters.check5037 = icmp ult i32 %i.nsb, 3
  %i.nse = sub i64 %.1.lcssa.i49.i10465035, %.129.lcssa.i47.i10445036
  %diff.check5039 = icmp ugt i64 %i.nse, -32
  %or.cond7125 = select i1 %min.iters.check5037, i1 true, i1 %diff.check5039
  br i1 %or.cond7125, label %.lr.ph131.i.i1047.preheader, label %vector.main.loop.iter.check5040

vector.main.loop.iter.check5040:                  ; preds = %iter.check5052
  %min.iters.check5041 = icmp ult i32 %i.nsb, 15
  br i1 %min.iters.check5041, label %vec.epilog.ph5056, label %vector.ph5042

vector.ph5042:                                    ; preds = %vector.main.loop.iter.check5040
  %i.nsf = and i64 %i.nsd, 12
  %n.vec5043 = and i64 %i.nsd, 8589934576         ; 5 uses
  %i.nsg = shl nuw nsw i64 %n.vec5043, 1          ; 2 uses
  %i.nsh = getelementptr i8, ptr %.1.lcssa.i49.i1046, i64 %i.nsg
  %i.nsi = trunc i64 %n.vec5043 to i32
  %i.nsj = add i32 %.126.lcssa.i48.i1045, %i.nsi
  %i.nsk = getelementptr i8, ptr %.129.lcssa.i47.i1044, i64 %i.nsg
  %i.nsl = insertelement <8 x float> poison, float %i.nok, i64 0
  %i.nsm = shufflevector <8 x float> %i.nsl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nsn = insertelement <4 x float> poison, float %i.nok, i64 0
  %i.nso = shufflevector <4 x float> %i.nsn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5044

vector.body5044:                                  ; preds = %vector.ph5042, %vector.body5044
  %index5045 = phi i64 [ 0, %vector.ph5042 ], [ %index.next5049, %vector.body5044 ] ; 2 uses
  %i.nsp = shl i64 %index5045, 1                  ; 2 uses
  %next.gep5046 = getelementptr i8, ptr %.1.lcssa.i49.i1046, i64 %i.nsp
  %next.gep5047 = getelementptr i8, ptr %.129.lcssa.i47.i1044, i64 %i.nsp
  %wide.load5048 = load <16 x i16>, ptr %next.gep5046, align 2, !tbaa !57
  %i.nsq = zext <16 x i16> %wide.load5048 to <16 x i32>
  %i.nsr = shl nuw <16 x i32> %i.nsq, splat (i32 16)
  %i.nss = bitcast <16 x i32> %i.nsr to <16 x float> ; 6 uses
  %i.nst = extractelement <16 x float> %i.nss, i64 0
  %i.nsu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nst, float %i.nok)
  %i.nsv = extractelement <16 x float> %i.nss, i64 1
  %i.nsw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nsv, float %i.nok)
  %i.nsx = extractelement <16 x float> %i.nss, i64 2
  %i.nsy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nsx, float %i.nok)
  %i.nsz = extractelement <16 x float> %i.nss, i64 3
  %i.nta = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nsz, float %i.nok)
  %i.ntb = shufflevector <16 x float> %i.nss, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ntc = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ntb, <4 x float> %i.nso)
  %i.ntd = shufflevector <16 x float> %i.nss, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nte = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.ntd, <8 x float> %i.nsm)
  %i.ntf = insertelement <16 x float> poison, float %i.nsu, i64 0
  %i.ntg = insertelement <16 x float> %i.ntf, float %i.nsw, i64 1
  %i.nth = insertelement <16 x float> %i.ntg, float %i.nsy, i64 2
  %i.nti = insertelement <16 x float> %i.nth, float %i.nta, i64 3
  %i.ntj = shufflevector <4 x float> %i.ntc, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ntk = shufflevector <16 x float> %i.nti, <16 x float> %i.ntj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ntl = shufflevector <8 x float> %i.nte, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ntm = shufflevector <16 x float> %i.ntk, <16 x float> %i.ntl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ntn = bitcast <16 x float> %i.ntm to <16 x i32>
  %i.nto = lshr <16 x i32> %i.ntn, splat (i32 16)
  %i.ntp = trunc nuw <16 x i32> %i.nto to <16 x i16>
  store <16 x i16> %i.ntp, ptr %next.gep5047, align 2, !tbaa !57
  %index.next5049 = add nuw i64 %index5045, 16    ; 2 uses
  %i.ntq = icmp eq i64 %index.next5049, %n.vec5043
  br i1 %i.ntq, label %middle.block5050, label %vector.body5044, !llvm.loop !890

middle.block5050:                                 ; preds = %vector.body5044
  %cmp.n5051 = icmp eq i64 %i.nsd, %n.vec5043
  br i1 %cmp.n5051, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5053

vec.epilog.iter.check5053:                        ; preds = %middle.block5050
  %min.epilog.iters.check5055 = icmp eq i64 %i.nsf, 0
  br i1 %min.epilog.iters.check5055, label %.lr.ph131.i.i1047.preheader, label %vec.epilog.ph5056, !prof !64

vec.epilog.ph5056:                                ; preds = %vector.main.loop.iter.check5040, %vec.epilog.iter.check5053
  %vec.epilog.resume.val5057 = phi i64 [ %n.vec5043, %vec.epilog.iter.check5053 ], [ 0, %vector.main.loop.iter.check5040 ]
  %n.vec5058 = and i64 %i.nsd, 8589934588         ; 4 uses
  %i.ntr = shl nuw nsw i64 %n.vec5058, 1          ; 2 uses
  %i.nts = getelementptr i8, ptr %.1.lcssa.i49.i1046, i64 %i.ntr
  %i.ntt = trunc i64 %n.vec5058 to i32
  %i.ntu = add i32 %.126.lcssa.i48.i1045, %i.ntt
  %i.ntv = getelementptr i8, ptr %.129.lcssa.i47.i1044, i64 %i.ntr
  br label %vec.epilog.vector.body5059

vec.epilog.vector.body5059:                       ; preds = %vec.epilog.vector.body5059, %vec.epilog.ph5056
  %index5060 = phi i64 [ %vec.epilog.resume.val5057, %vec.epilog.ph5056 ], [ %index.next5064, %vec.epilog.vector.body5059 ] ; 2 uses
  %i.ntw = shl i64 %index5060, 1                  ; 2 uses
  %next.gep5061 = getelementptr i8, ptr %.1.lcssa.i49.i1046, i64 %i.ntw
  %next.gep5062 = getelementptr i8, ptr %.129.lcssa.i47.i1044, i64 %i.ntw
  %wide.load5063 = load <4 x i16>, ptr %next.gep5061, align 2, !tbaa !57
  %i.ntx = zext <4 x i16> %wide.load5063 to <4 x i32>
  %i.nty = shl nuw <4 x i32> %i.ntx, splat (i32 16)
  %i.ntz = bitcast <4 x i32> %i.nty to <4 x float> ; 4 uses
  %i.nua = extractelement <4 x float> %i.ntz, i64 0
  %i.nub = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nua, float %i.nok)
  %i.nuc = extractelement <4 x float> %i.ntz, i64 1
  %i.nud = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nuc, float %i.nok)
  %i.nue = extractelement <4 x float> %i.ntz, i64 2
  %i.nuf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nue, float %i.nok)
  %i.nug = extractelement <4 x float> %i.ntz, i64 3
  %i.nuh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nug, float %i.nok)
  %i.nui = insertelement <4 x float> poison, float %i.nub, i64 0
  %i.nuj = insertelement <4 x float> %i.nui, float %i.nud, i64 1
  %i.nuk = insertelement <4 x float> %i.nuj, float %i.nuf, i64 2
  %i.nul = insertelement <4 x float> %i.nuk, float %i.nuh, i64 3
  %i.num = bitcast <4 x float> %i.nul to <4 x i32>
  %i.nun = lshr <4 x i32> %i.num, splat (i32 16)
  %i.nuo = trunc nuw <4 x i32> %i.nun to <4 x i16>
  store <4 x i16> %i.nuo, ptr %next.gep5062, align 2, !tbaa !57
  %index.next5064 = add nuw i64 %index5060, 4     ; 2 uses
  %i.nup = icmp eq i64 %index.next5064, %n.vec5058
  br i1 %i.nup, label %vec.epilog.middle.block5065, label %vec.epilog.vector.body5059, !llvm.loop !891

vec.epilog.middle.block5065:                      ; preds = %vec.epilog.vector.body5059
  %cmp.n5066 = icmp eq i64 %i.nsd, %n.vec5058
  br i1 %cmp.n5066, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i1047.preheader

.lr.ph131.i.i1047.preheader:                      ; preds = %iter.check5052, %vec.epilog.iter.check5053, %vec.epilog.middle.block5065
  %.2130.i.i1048.ph = phi ptr [ %.1.lcssa.i49.i1046, %iter.check5052 ], [ %i.nsh, %vec.epilog.iter.check5053 ], [ %i.nts, %vec.epilog.middle.block5065 ] ; 3 uses
  %.227129.i.i1049.ph = phi i32 [ %.126.lcssa.i48.i1045, %iter.check5052 ], [ %i.nsj, %vec.epilog.iter.check5053 ], [ %i.ntu, %vec.epilog.middle.block5065 ] ; 4 uses
  %.230128.i.i1050.ph = phi ptr [ %.129.lcssa.i47.i1044, %iter.check5052 ], [ %i.nsk, %vec.epilog.iter.check5053 ], [ %i.ntv, %vec.epilog.middle.block5065 ] ; 3 uses
  %i.nuq = sub i32 %i.muo, %.227129.i.i1049.ph
  %.neg8023 = add i32 %.227129.i.i1049.ph, 1
  %xtraiter7821 = and i32 %i.nuq, 1
  %lcmp.mod7822.not = icmp eq i32 %xtraiter7821, 0
  br i1 %lcmp.mod7822.not, label %.lr.ph131.i.i1047.prol.loopexit, label %.lr.ph131.i.i1047.prol

.lr.ph131.i.i1047.prol:                           ; preds = %.lr.ph131.i.i1047.preheader
  %i.nur = getelementptr inbounds nuw i8, ptr %.2130.i.i1048.ph, i64 2
  %i.nus = load i16, ptr %.2130.i.i1048.ph, align 2, !tbaa !57
  %i.nut = zext i16 %i.nus to i32
  %i.nuu = shl nuw i32 %i.nut, 16
  %i.nuv = bitcast i32 %i.nuu to float
  %i.nuw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nuv, float %i.nok)
  %i.nux = bitcast float %i.nuw to i32
  %i.nuy = lshr i32 %i.nux, 16
  %i.nuz = trunc nuw i32 %i.nuy to i16
  %i.nva = getelementptr inbounds nuw i8, ptr %.230128.i.i1050.ph, i64 2
  store i16 %i.nuz, ptr %.230128.i.i1050.ph, align 2, !tbaa !57
  %i.nvb = add nuw nsw i32 %.227129.i.i1049.ph, 1
  br label %.lr.ph131.i.i1047.prol.loopexit

.lr.ph131.i.i1047.prol.loopexit:                  ; preds = %.lr.ph131.i.i1047.prol, %.lr.ph131.i.i1047.preheader
  %.2130.i.i1048.unr = phi ptr [ %.2130.i.i1048.ph, %.lr.ph131.i.i1047.preheader ], [ %i.nur, %.lr.ph131.i.i1047.prol ]
  %.227129.i.i1049.unr = phi i32 [ %.227129.i.i1049.ph, %.lr.ph131.i.i1047.preheader ], [ %i.nvb, %.lr.ph131.i.i1047.prol ]
  %.230128.i.i1050.unr = phi ptr [ %.230128.i.i1050.ph, %.lr.ph131.i.i1047.preheader ], [ %i.nva, %.lr.ph131.i.i1047.prol ]
  %i.nvc = icmp eq i32 %i.muo, %.neg8023
  br i1 %i.nvc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i1047

bb.kh:                                            ; preds = %bb.kh, %.lr.ph124.i.i1051
  %.1123.i.i1053 = phi ptr [ %.0.lcssa.i45.i1042, %.lr.ph124.i.i1051 ], [ %i.nxf, %bb.kh ] ; 2 uses
  %.126122.i.i1054 = phi i32 [ %.025.lcssa.i44.i1041, %.lr.ph124.i.i1051 ], [ %i.nxh, %bb.kh ]
  %.129121.i.i1055 = phi ptr [ %.028.lcssa.i43.i1040, %.lr.ph124.i.i1051 ], [ %i.nxg, %bb.kh ] ; 2 uses
  %i.nvd = load i64, ptr %.1123.i.i1053, align 1, !tbaa !60
  %i.nve = insertelement <2 x i64> poison, i64 %i.nvd, i64 0
  %i.nvf = bitcast <2 x i64> %i.nve to <8 x i16>
  %i.nvg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nvf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.nvh = bitcast <8 x i16> %i.nvg to <4 x float> ; 3 uses
  %i.nvi = fcmp fast oeq <4 x float> %i.nvh, zeroinitializer ; 2 uses
  %.not111.i.i1056 = or <4 x i1> %i.npm, %i.nvi
  %i.nvj = fcmp fast olt <4 x float> %i.nvh, zeroinitializer
  %i.nvk = select <4 x i1> %i.nvj, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.nvl = select <4 x i1> %i.npn, <4 x float> %i.nvk, <4 x float> zeroinitializer
  %i.nvm = fmul fast <4 x float> %i.nvh, %i.npq   ; 2 uses
  %i.nvn = bitcast <4 x float> %i.nvm to <4 x i32>
  %i.nvo = and <4 x i32> %i.nvn, splat (i32 -2147483648)
  %i.nvp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nvm) ; 3 uses
  %i.nvq = fcmp fast ogt <4 x float> %i.nvp, splat (float 1.000000e+00) ; 2 uses
  %i.nvr = select <4 x i1> %i.nvq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.nvp
  %i.nvs = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nvp, <4 x float> splat (float 1.000000e+00))
  %i.nvt = fdiv fast <4 x float> %i.nvr, %i.nvs   ; 3 uses
  %i.nvu = fmul fast <4 x float> %i.nvt, %i.nvt   ; 3 uses
  %i.nvv = fmul fast <4 x float> %i.nvu, %i.nvu   ; 7 uses
  %i.nvw = fmul fast <4 x float> %i.nvv, splat (float f0x3C83A25C)
  %i.nvx = fsub fast <4 x float> splat (float f0xBD99B01E), %i.nvw
  %i.nvy = fmul fast <4 x float> %i.nvx, %i.nvv
  %i.nvz = fadd fast <4 x float> %i.nvy, splat (float f0xBE117200)
  %i.nwa = fmul fast <4 x float> %i.nvz, %i.nvv
  %i.nwb = fadd fast <4 x float> %i.nwa, splat (float f0xBEAAAA53)
  %i.nwc = fmul fast <4 x float> %i.nvv, splat (float f0x3B3AC537)
  %i.nwd = fadd fast <4 x float> %i.nwc, splat (float f0x3D2EDD4E)
  %i.nwe = fmul fast <4 x float> %i.nwd, %i.nvv
  %i.nwf = fadd fast <4 x float> %i.nwe, splat (float f0x3DD9ED24)
  %i.nwg = fmul fast <4 x float> %i.nwf, %i.nvv
  %i.nwh = fadd fast <4 x float> %i.nwg, splat (float f0x3E4CB974)
  %i.nwi = fmul fast <4 x float> %i.nwh, %i.nvv
  %i.nwj = fadd fast <4 x float> %i.nwi, splat (float 1.000000e+00)
  %i.nwk = fmul fast <4 x float> %i.nwb, %i.nvu
  %i.nwl = fadd fast <4 x float> %i.nwj, %i.nwk
  %i.nwm = fmul fast <4 x float> %i.nwl, %i.nvt
  %i.nwn = select <4 x i1> %i.nvq, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.nwo = fadd fast <4 x float> %i.nwm, %i.nwn
  %i.nwp = bitcast <4 x float> %i.nwo to <4 x i32>
  %i.nwq = or <4 x i32> %i.nvo, %i.nwp
  %i.nwr = bitcast <4 x i32> %i.nwq to <4 x float>
  %i.nws = fadd fast <4 x float> %i.nvl, %i.nwr
  %i.nwt = bitcast <8 x i16> %i.nvg to <4 x i32>
  %i.nwu = and <4 x i32> %i.nwt, splat (i32 -2147483648)
  %i.nwv = or disjoint <4 x i32> %i.nwu, splat (i32 1070137344)
  %i.nww = bitcast <4 x float> %i.nws to <4 x i32>
  %i.nwx = select <4 x i1> %.not111.i.i1056, <4 x i32> zeroinitializer, <4 x i32> %i.nww
  %i.nwy = select <4 x i1> %i.npm, <4 x i32> %i.nwv, <4 x i32> zeroinitializer
  %i.nwz = select <4 x i1> %i.nvi, <4 x i32> %i.npp, <4 x i32> %i.nwy
  %i.nxa = or <4 x i32> %i.nwx, %i.nwz
  %i.nxb = lshr <4 x i32> %i.nxa, splat (i32 16)
  %i.nxc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nxb, <4 x i32> poison)
  %i.nxd = bitcast <8 x i16> %i.nxc to <2 x i64>
  %i.nxe = extractelement <2 x i64> %i.nxd, i64 0
  store i64 %i.nxe, ptr %.129121.i.i1055, align 1, !tbaa !60
  %i.nxf = getelementptr inbounds nuw i8, ptr %.1123.i.i1053, i64 8 ; 2 uses
  %i.nxg = getelementptr inbounds nuw i8, ptr %.129121.i.i1055, i64 8 ; 2 uses
  %i.nxh = add nuw nsw i32 %.126122.i.i1054, 4    ; 3 uses
  %i.nxi = or disjoint i32 %i.nxh, 3
  %i.nxj = icmp slt i32 %i.nxi, %i.muo
  br i1 %i.nxj, label %bb.kh, label %.preheader.i46.i1043, !llvm.loop !892

.lr.ph131.i.i1047:                                ; preds = %.lr.ph131.i.i1047.prol.loopexit, %.lr.ph131.i.i1047
  %.2130.i.i1048 = phi ptr [ %i.nxu, %.lr.ph131.i.i1047 ], [ %.2130.i.i1048.unr, %.lr.ph131.i.i1047.prol.loopexit ] ; 3 uses
  %.227129.i.i1049 = phi i32 [ %i.nye, %.lr.ph131.i.i1047 ], [ %.227129.i.i1049.unr, %.lr.ph131.i.i1047.prol.loopexit ]
  %.230128.i.i1050 = phi ptr [ %i.nyd, %.lr.ph131.i.i1047 ], [ %.230128.i.i1050.unr, %.lr.ph131.i.i1047.prol.loopexit ] ; 3 uses
  %i.nxk = getelementptr inbounds nuw i8, ptr %.2130.i.i1048, i64 2
  %i.nxl = load i16, ptr %.2130.i.i1048, align 2, !tbaa !57
  %i.nxm = zext i16 %i.nxl to i32
  %i.nxn = shl nuw i32 %i.nxm, 16
  %i.nxo = bitcast i32 %i.nxn to float
  %i.nxp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nxo, float %i.nok)
  %i.nxq = bitcast float %i.nxp to i32
  %i.nxr = lshr i32 %i.nxq, 16
  %i.nxs = trunc nuw i32 %i.nxr to i16
  %i.nxt = getelementptr inbounds nuw i8, ptr %.230128.i.i1050, i64 2
  store i16 %i.nxs, ptr %.230128.i.i1050, align 2, !tbaa !57
  %i.nxu = getelementptr inbounds nuw i8, ptr %.2130.i.i1048, i64 4
  %i.nxv = load i16, ptr %i.nxk, align 2, !tbaa !57
  %i.nxw = zext i16 %i.nxv to i32
  %i.nxx = shl nuw i32 %i.nxw, 16
  %i.nxy = bitcast i32 %i.nxx to float
  %i.nxz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.nxy, float %i.nok)
  %i.nya = bitcast float %i.nxz to i32
  %i.nyb = lshr i32 %i.nya, 16
  %i.nyc = trunc nuw i32 %i.nyb to i16
  %i.nyd = getelementptr inbounds nuw i8, ptr %.230128.i.i1050, i64 4
  store i16 %i.nyc, ptr %i.nxt, align 2, !tbaa !57
  %i.nye = add nuw nsw i32 %.227129.i.i1049, 2    ; 2 uses
  %exitcond.not.i50.i.1 = icmp eq i32 %i.nye, %i.muo
  br i1 %exitcond.not.i50.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph131.i.i1047, !llvm.loop !893

bb.ki:                                            ; preds = %bb.ka, %bb.jp
  %i.nyf = icmp eq i32 %6, 1
  br i1 %i.nyf, label %bb.kj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kj:                                            ; preds = %bb.ki
  %i.nyg = icmp eq i32 %3, %4
  br i1 %i.nyg, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  switch i32 %.sroa.speculated.i1030, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.preheader.i55.i
    i32 4, label %.preheader106.i.i
  ]

.preheader106.i.i:                                ; preds = %bb.kk
  %i.nyh = icmp sgt i32 %.sroa.speculated75.i, 0
  br i1 %i.nyh, label %.lr.ph.i53.i1038, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i55.i:                                 ; preds = %bb.kk
  %i.nyi = icmp sgt i32 %.sroa.speculated75.i, 0
  br i1 %i.nyi, label %.lr.ph116.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph116.i.i:                                    ; preds = %.preheader.i55.i, %.lr.ph116.i.i
  %.020115.i.i = phi ptr [ %i.oba, %.lr.ph116.i.i ], [ %0, %.preheader.i55.i ] ; 2 uses
  %.021114.i.i = phi i32 [ %i.obd, %.lr.ph116.i.i ], [ 0, %.preheader.i55.i ]
  %.022113.i.i = phi ptr [ %i.obb, %.lr.ph116.i.i ], [ %1, %.preheader.i55.i ] ; 2 uses
  %.024112.i.i = phi ptr [ %i.obc, %.lr.ph116.i.i ], [ %2, %.preheader.i55.i ] ; 2 uses
  %i.nyj = load <8 x i16>, ptr %.020115.i.i, align 1, !tbaa !60 ; 2 uses
  %i.nyk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nyj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nyl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nyj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nym = shufflevector <8 x i16> %i.nyk, <8 x i16> %i.nyl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.nyn = bitcast <16 x i16> %i.nym to <8 x float> ; 3 uses
  %i.nyo = load i16, ptr %.022113.i.i, align 2, !tbaa !57
  %i.nyp = zext i16 %i.nyo to i32
  %i.nyq = shl nuw i32 %i.nyp, 16
  %i.nyr = insertelement <8 x i32> poison, i32 %i.nyq, i64 0
  %i.nys = bitcast <8 x i32> %i.nyr to <8 x float>
  %i.nyt = shufflevector <8 x float> %i.nys, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nyu = fcmp fast ueq <8 x float> %i.nyn, zeroinitializer ; 2 uses
  %i.nyv = fcmp fast ueq <8 x float> %i.nyt, zeroinitializer ; 2 uses
  %.not105.i.i = or <8 x i1> %i.nyu, %i.nyv
  %i.nyw = bitcast <8 x float> %i.nyt to <8 x i32>
  %i.nyx = and <8 x i32> %i.nyw, splat (i32 -2147483648)
  %i.nyy = fcmp fast olt <8 x float> %i.nyn, zeroinitializer
  %i.nyz = fcmp fast olt <8 x float> %i.nyt, zeroinitializer
  %i.nza = select <8 x i1> %i.nyz, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nzb = select <8 x i1> %i.nyy, <8 x float> %i.nza, <8 x float> zeroinitializer
  %i.nzc = fdiv fast <8 x float> %i.nyt, %i.nyn   ; 2 uses
  %i.nzd = bitcast <8 x float> %i.nzc to <8 x i32>
  %i.nze = and <8 x i32> %i.nzd, splat (i32 -2147483648)
  %i.nzf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nzc) ; 3 uses
  %i.nzg = fcmp fast ogt <8 x float> %i.nzf, splat (float 1.000000e+00) ; 2 uses
  %i.nzh = select <8 x i1> %i.nzg, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nzf
  %i.nzi = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nzf, <8 x float> splat (float 1.000000e+00))
  %i.nzj = fdiv fast <8 x float> %i.nzh, %i.nzi   ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.ocs = fadd fast <4 x float> %i.ocr, splat (float f0x3E4CB974)
  %i.oct = fmul fast <4 x float> %i.ocs, %i.ocg
  %i.ocu = fadd fast <4 x float> %i.oct, splat (float 1.000000e+00)
  %i.ocv = fmul fast <4 x float> %i.ocm, %i.ocf
  %i.ocw = fadd fast <4 x float> %i.ocu, %i.ocv
  %i.ocx = fmul fast <4 x float> %i.ocw, %i.oce
  %i.ocy = select <4 x i1> %i.ocb, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ocz = fadd fast <4 x float> %i.ocx, %i.ocy
  %i.oda = bitcast <4 x float> %i.ocz to <4 x i32>
  %i.odb = or <4 x i32> %i.obz, %i.oda
  %i.odc = bitcast <4 x i32> %i.odb to <4 x float>
  %i.odd = fadd fast <4 x float> %i.obw, %i.odc
  %i.ode = bitcast <8 x i16> %i.obh to <4 x i32>
  %i.odf = and <4 x i32> %i.ode, splat (i32 -2147483648)
  %i.odg = or disjoint <4 x i32> %i.odf, splat (i32 1078530011)
  %i.odh = bitcast <4 x i32> %i.odg to <4 x float>
  %i.odi = fcmp fast uge <4 x float> %i.odh, zeroinitializer
  %i.odj = or disjoint <4 x i32> %i.obs, splat (i32 1070137344)
  %i.odk = select <4 x i1> %i.odi, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.odl = bitcast <4 x float> %i.odd to <4 x i32>
  %i.odm = select <4 x i1> %.not102.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.odl
  %i.odn = select <4 x i1> %i.obp, <4 x i32> %i.odj, <4 x i32> zeroinitializer
  %i.odo = select <4 x i1> %i.obq, <4 x i32> %i.odk, <4 x i32> %i.odn
  %i.odp = or <4 x i32> %i.odm, %i.odo
  %i.odq = lshr <4 x i32> %i.odp, splat (i32 16)
  %i.odr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.odq, <4 x i32> poison)
  %i.ods = bitcast <8 x i16> %i.odr to <2 x i64>
  %i.odt = extractelement <2 x i64> %i.ods, i64 0
  store i64 %i.odt, ptr %.125108.i.i, align 1, !tbaa !60
  %i.odu = getelementptr inbounds nuw i8, ptr %.1110.i.i, i64 8
  %i.odv = getelementptr inbounds nuw i8, ptr %.123109.i.i, i64 2
  %i.odw = getelementptr inbounds nuw i8, ptr %.125108.i.i, i64 8
  %i.odx = add nuw nsw i32 %.0111.i.i, 1          ; 2 uses
  %exitcond.not.i54.i = icmp eq i32 %i.odx, %.sroa.speculated75.i
  br i1 %exitcond.not.i54.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i53.i1038, !llvm.loop !895

bb.kl:                                            ; preds = %bb.kj
  %i.ody = icmp eq i32 %4, 1
  br i1 %i.ody, label %bb.km, label %bb.kp

bb.km:                                            ; preds = %bb.kl
  %.val.i1032 = load i16, ptr %1, align 2, !tbaa !57
  %i.odz = zext i16 %.val.i1032 to i32
  %i.oea = shl nuw i32 %i.odz, 16
  %i.oeb = bitcast i32 %i.oea to float            ; 15 uses
  %i.oec = insertelement <8 x float> poison, float %i.oeb, i64 0
  %i.oed = shufflevector <8 x float> %i.oec, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.oee = icmp sgt i32 %i.muo, 7
  br i1 %i.oee, label %.lr.ph.i62.i, label %._crit_edge.i.i1033

.lr.ph.i62.i:                                     ; preds = %bb.km
  %i.oef = fcmp fast ueq <8 x float> %i.oed, zeroinitializer ; 2 uses
  %i.oeg = bitcast <8 x float> %i.oed to <8 x i32>
  %i.oeh = and <8 x i32> %i.oeg, splat (i32 -2147483648)
  %i.oei = fcmp fast olt <8 x float> %i.oed, zeroinitializer
  %i.oej = select <8 x i1> %i.oei, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.oek = or disjoint <8 x i32> %i.oeh, splat (i32 1070141403)
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kn, %.lr.ph.i62.i
  %.084.i.i = phi ptr [ %0, %.lr.ph.i62.i ], [ %i.ogq, %bb.kn ] ; 2 uses
  %.02283.i.i = phi i32 [ 0, %.lr.ph.i62.i ], [ %i.ogs, %bb.kn ]
  %.02582.i.i = phi ptr [ %2, %.lr.ph.i62.i ], [ %i.ogr, %bb.kn ] ; 2 uses
  %i.oel = load <8 x i16>, ptr %.084.i.i, align 1, !tbaa !60 ; 2 uses
  %i.oem = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oel, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oen = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.oel, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.oeo = shufflevector <8 x i16> %i.oem, <8 x i16> %i.oen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.oep = bitcast <16 x i16> %i.oeo to <8 x float> ; 3 uses
  %i.oeq = fcmp fast ueq <8 x float> %i.oep, zeroinitializer ; 2 uses
  %.not81.i.i = or <8 x i1> %i.oef, %i.oeq
  %i.oer = fcmp fast olt <8 x float> %i.oep, zeroinitializer
  %i.oes = select <8 x i1> %i.oer, <8 x float> %i.oej, <8 x float> zeroinitializer
  %i.oet = fdiv fast <8 x float> %i.oed, %i.oep   ; 2 uses
  %i.oeu = bitcast <8 x float> %i.oet to <8 x i32>
  %i.oev = and <8 x i32> %i.oeu, splat (i32 -2147483648)
  %i.oew = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oet) ; 3 uses
  %i.oex = fcmp fast ogt <8 x float> %i.oew, splat (float 1.000000e+00) ; 2 uses
  %i.oey = select <8 x i1> %i.oex, <8 x float> splat (float -1.000000e+00), <8 x float> %i.oew
  %i.oez = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.oew, <8 x float> splat (float 1.000000e+00))
  %i.ofa = fdiv fast <8 x float> %i.oey, %i.oez   ; 3 uses
  %i.ofb = fmul fast <8 x float> %i.ofa, %i.ofa   ; 3 uses
  %i.ofc = fmul fast <8 x float> %i.ofb, %i.ofb   ; 7 uses
  %i.ofd = fmul fast <8 x float> %i.ofc, splat (float f0x3C83A25C)
  %i.ofe = fsub fast <8 x float> splat (float f0xBD99B01E), %i.ofd
  %i.off = fmul fast <8 x float> %i.ofe, %i.ofc
  %i.ofg = fadd fast <8 x float> %i.off, splat (float f0xBE117200)
  %i.ofh = fmul fast <8 x float> %i.ofg, %i.ofc
  %i.ofi = fadd fast <8 x float> %i.ofh, splat (float f0xBEAAAA53)
  %i.ofj = fmul fast <8 x float> %i.ofc, splat (float f0x3B3AC537)
  %i.ofk = fadd fast <8 x float> %i.ofj, splat (float f0x3D2EDD4E)
  %i.ofl = fmul fast <8 x float> %i.ofk, %i.ofc
  %i.ofm = fadd fast <8 x float> %i.ofl, splat (float f0x3DD9ED24)
  %i.ofn = fmul fast <8 x float> %i.ofm, %i.ofc
  %i.ofo = fadd fast <8 x float> %i.ofn, splat (float f0x3E4CB974)
  %i.ofp = fmul fast <8 x float> %i.ofo, %i.ofc
  %i.ofq = fadd fast <8 x float> %i.ofp, splat (float 1.000000e+00)
  %i.ofr = fmul fast <8 x float> %i.ofi, %i.ofb
  %i.ofs = fadd fast <8 x float> %i.ofq, %i.ofr
  %i.oft = fmul fast <8 x float> %i.ofs, %i.ofa
  %i.ofu = select <8 x i1> %i.oex, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ofv = fadd fast <8 x float> %i.oft, %i.ofu
  %i.ofw = bitcast <8 x float> %i.ofv to <8 x i32>
  %i.ofx = or <8 x i32> %i.oev, %i.ofw
  %i.ofy = bitcast <8 x i32> %i.ofx to <8 x float>
  %i.ofz = fadd fast <8 x float> %i.oes, %i.ofy
  %i.oga = bitcast <16 x i16> %i.oeo to <8 x i32>
  %i.ogb = and <8 x i32> %i.oga, splat (i32 -2147483648)
  %i.ogc = or disjoint <8 x i32> %i.ogb, splat (i32 1078530011)
  %i.ogd = bitcast <8 x i32> %i.ogc to <8 x float>
  %i.oge = fcmp fast uge <8 x float> %i.ogd, zeroinitializer
  %i.ogf = select <8 x i1> %i.oge, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.ogg = bitcast <8 x float> %i.ofz to <8 x i32>
  %i.ogh = select <8 x i1> %.not81.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.ogg
  %i.ogi = select <8 x i1> %i.oeq, <8 x i32> %i.oek, <8 x i32> zeroinitializer
  %i.ogj = select <8 x i1> %i.oef, <8 x i32> %i.ogf, <8 x i32> %i.ogi
  %i.ogk = or <8 x i32> %i.ogh, %i.ogj            ; 2 uses
  %i.ogl = shufflevector <8 x i32> %i.ogk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ogm = shufflevector <8 x i32> %i.ogk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ogn = lshr <4 x i32> %i.ogl, splat (i32 16)
  %i.ogo = lshr <4 x i32> %i.ogm, splat (i32 16)
  %i.ogp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ogn, <4 x i32> %i.ogo)
  store <8 x i16> %i.ogp, ptr %.02582.i.i, align 1, !tbaa !60
  %i.ogq = getelementptr inbounds nuw i8, ptr %.084.i.i, i64 16 ; 2 uses
  %i.ogr = getelementptr inbounds nuw i8, ptr %.02582.i.i, i64 16 ; 2 uses
  %i.ogs = add nuw nsw i32 %.02283.i.i, 8         ; 2 uses
  %i.ogt = or disjoint i32 %i.ogs, 7
  %i.ogu = icmp slt i32 %i.ogt, %i.muo
  br i1 %i.ogu, label %bb.kn, label %._crit_edge.loopexit.i.i1037, !llvm.loop !896

._crit_edge.loopexit.i.i1037:                     ; preds = %bb.kn
  %i.ogv = and i32 %i.muo, 2147483640
  br label %._crit_edge.i.i1033

._crit_edge.i.i1033:                              ; preds = %._crit_edge.loopexit.i.i1037, %bb.km
  %.025.lcssa.i56.i = phi ptr [ %2, %bb.km ], [ %i.ogr, %._crit_edge.loopexit.i.i1037 ] ; 2 uses
  %.022.lcssa.i.i1034 = phi i32 [ 0, %bb.km ], [ %i.ogv, %._crit_edge.loopexit.i.i1037 ] ; 3 uses
  %.0.lcssa.i57.i = phi ptr [ %0, %bb.km ], [ %i.ogq, %._crit_edge.loopexit.i.i1037 ] ; 2 uses
  %i.ogw = insertelement <4 x float> poison, float %i.oeb, i64 0
  %i.ogx = shufflevector <4 x float> %i.ogw, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ogy = or disjoint i32 %.022.lcssa.i.i1034, 3
  %i.ogz = icmp slt i32 %i.ogy, %i.muo
  br i1 %i.ogz, label %.lr.ph91.i.i, label %.preheader.i58.i

.lr.ph91.i.i:                                     ; preds = %._crit_edge.i.i1033
  %i.oha = fcmp fast oeq <4 x float> %i.ogx, zeroinitializer ; 2 uses
  %i.ohb = bitcast <4 x float> %i.ogx to <4 x i32>
  %i.ohc = and <4 x i32> %i.ohb, splat (i32 -2147483648)
  %i.ohd = fcmp fast olt <4 x float> %i.ogx, zeroinitializer
  %i.ohe = select <4 x i1> %i.ohd, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ohf = or disjoint <4 x i32> %i.ohc, splat (i32 1070137344)
  br label %bb.ko

.preheader.i58.i:                                 ; preds = %bb.ko, %._crit_edge.i.i1033
  %.126.lcssa.i59.i = phi ptr [ %.025.lcssa.i56.i, %._crit_edge.i.i1033 ], [ %i.omp, %bb.ko ] ; 6 uses
  %.123.lcssa.i.i1035 = phi i32 [ %.022.lcssa.i.i1034, %._crit_edge.i.i1033 ], [ %i.omq, %bb.ko ] ; 5 uses
  %.1.lcssa.i60.i = phi ptr [ %.0.lcssa.i57.i, %._crit_edge.i.i1033 ], [ %i.omo, %bb.ko ] ; 6 uses
  %i.ohg = icmp slt i32 %.123.lcssa.i.i1035, %i.muo
  br i1 %i.ohg, label %iter.check5013, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5013:                                   ; preds = %.preheader.i58.i
  %.126.lcssa.i59.i4997 = ptrtoaddr ptr %.126.lcssa.i59.i to i64
  %.1.lcssa.i60.i4996 = ptrtoaddr ptr %.1.lcssa.i60.i to i64
  %i.ohh = xor i32 %.123.lcssa.i.i1035, -1
  %i.ohi = add i32 %i.muo, %i.ohh                 ; 3 uses
  %i.ohj = zext i32 %i.ohi to i64
  %i.ohk = add nuw nsw i64 %i.ohj, 1              ; 5 uses
  %min.iters.check4998 = icmp ult i32 %i.ohi, 3
  %i.ohl = sub i64 %.1.lcssa.i60.i4996, %.126.lcssa.i59.i4997
  %diff.check5000 = icmp ugt i64 %i.ohl, -32
  %or.cond7126 = select i1 %min.iters.check4998, i1 true, i1 %diff.check5000
  br i1 %or.cond7126, label %.lr.ph98.i.i.preheader, label %vector.main.loop.iter.check5001

vector.main.loop.iter.check5001:                  ; preds = %iter.check5013
  %min.iters.check5002 = icmp ult i32 %i.ohi, 15
  br i1 %min.iters.check5002, label %vec.epilog.ph5017, label %vector.ph5003

vector.ph5003:                                    ; preds = %vector.main.loop.iter.check5001
  %i.ohm = and i64 %i.ohk, 12
  %n.vec5004 = and i64 %i.ohk, 8589934576         ; 5 uses
  %i.ohn = shl nuw nsw i64 %n.vec5004, 1          ; 2 uses
  %i.oho = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.ohn
  %i.ohp = trunc i64 %n.vec5004 to i32
  %i.ohq = add i32 %.123.lcssa.i.i1035, %i.ohp
  %i.ohr = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.ohn
  %i.ohs = insertelement <8 x float> poison, float %i.oeb, i64 0
  %i.oht = shufflevector <8 x float> %i.ohs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ohu = insertelement <4 x float> poison, float %i.oeb, i64 0
  %i.ohv = shufflevector <4 x float> %i.ohu, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body5005

vector.body5005:                                  ; preds = %vector.ph5003, %vector.body5005
  %index5006 = phi i64 [ 0, %vector.ph5003 ], [ %index.next5010, %vector.body5005 ] ; 2 uses
  %i.ohw = shl i64 %index5006, 1                  ; 2 uses
  %next.gep5007 = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.ohw
  %next.gep5008 = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.ohw
  %wide.load5009 = load <16 x i16>, ptr %next.gep5007, align 2, !tbaa !57
  %i.ohx = zext <16 x i16> %wide.load5009 to <16 x i32>
  %i.ohy = shl nuw <16 x i32> %i.ohx, splat (i32 16)
  %i.ohz = bitcast <16 x i32> %i.ohy to <16 x float> ; 6 uses
  %i.oia = extractelement <16 x float> %i.ohz, i64 0
  %i.oib = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.oia)
  %i.oic = extractelement <16 x float> %i.ohz, i64 1
  %i.oid = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.oic)
  %i.oie = extractelement <16 x float> %i.ohz, i64 2
  %i.oif = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.oie)
  %i.oig = extractelement <16 x float> %i.ohz, i64 3
  %i.oih = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.oig)
  %i.oii = shufflevector <16 x float> %i.ohz, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.oij = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ohv, <4 x float> %i.oii)
  %i.oik = shufflevector <16 x float> %i.ohz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oil = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.oht, <8 x float> %i.oik)
  %i.oim = insertelement <16 x float> poison, float %i.oib, i64 0
  %i.oin = insertelement <16 x float> %i.oim, float %i.oid, i64 1
  %i.oio = insertelement <16 x float> %i.oin, float %i.oif, i64 2
  %i.oip = insertelement <16 x float> %i.oio, float %i.oih, i64 3
  %i.oiq = shufflevector <4 x float> %i.oij, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oir = shufflevector <16 x float> %i.oip, <16 x float> %i.oiq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ois = shufflevector <8 x float> %i.oil, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oit = shufflevector <16 x float> %i.oir, <16 x float> %i.ois, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.oiu = bitcast <16 x float> %i.oit to <16 x i32>
  %i.oiv = lshr <16 x i32> %i.oiu, splat (i32 16)
  %i.oiw = trunc nuw <16 x i32> %i.oiv to <16 x i16>
  store <16 x i16> %i.oiw, ptr %next.gep5008, align 2, !tbaa !57
  %index.next5010 = add nuw i64 %index5006, 16    ; 2 uses
  %i.oix = icmp eq i64 %index.next5010, %n.vec5004
  br i1 %i.oix, label %middle.block5011, label %vector.body5005, !llvm.loop !897

middle.block5011:                                 ; preds = %vector.body5005
  %cmp.n5012 = icmp eq i64 %i.ohk, %n.vec5004
  br i1 %cmp.n5012, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5014

vec.epilog.iter.check5014:                        ; preds = %middle.block5011
  %min.epilog.iters.check5016 = icmp eq i64 %i.ohm, 0
  br i1 %min.epilog.iters.check5016, label %.lr.ph98.i.i.preheader, label %vec.epilog.ph5017, !prof !64

vec.epilog.ph5017:                                ; preds = %vector.main.loop.iter.check5001, %vec.epilog.iter.check5014
  %vec.epilog.resume.val5018 = phi i64 [ %n.vec5004, %vec.epilog.iter.check5014 ], [ 0, %vector.main.loop.iter.check5001 ]
  %n.vec5019 = and i64 %i.ohk, 8589934588         ; 4 uses
  %i.oiy = shl nuw nsw i64 %n.vec5019, 1          ; 2 uses
  %i.oiz = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.oiy
  %i.oja = trunc i64 %n.vec5019 to i32
  %i.ojb = add i32 %.123.lcssa.i.i1035, %i.oja
  %i.ojc = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.oiy
  br label %vec.epilog.vector.body5020

vec.epilog.vector.body5020:                       ; preds = %vec.epilog.vector.body5020, %vec.epilog.ph5017
  %index5021 = phi i64 [ %vec.epilog.resume.val5018, %vec.epilog.ph5017 ], [ %index.next5025, %vec.epilog.vector.body5020 ] ; 2 uses
  %i.ojd = shl i64 %index5021, 1                  ; 2 uses
  %next.gep5022 = getelementptr i8, ptr %.1.lcssa.i60.i, i64 %i.ojd
  %next.gep5023 = getelementptr i8, ptr %.126.lcssa.i59.i, i64 %i.ojd
  %wide.load5024 = load <4 x i16>, ptr %next.gep5022, align 2, !tbaa !57
  %i.oje = zext <4 x i16> %wide.load5024 to <4 x i32>
  %i.ojf = shl nuw <4 x i32> %i.oje, splat (i32 16)
  %i.ojg = bitcast <4 x i32> %i.ojf to <4 x float> ; 4 uses
  %i.ojh = extractelement <4 x float> %i.ojg, i64 0
  %i.oji = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.ojh)
  %i.ojj = extractelement <4 x float> %i.ojg, i64 1
  %i.ojk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.ojj)
  %i.ojl = extractelement <4 x float> %i.ojg, i64 2
  %i.ojm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.ojl)
  %i.ojn = extractelement <4 x float> %i.ojg, i64 3
  %i.ojo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.ojn)
  %i.ojp = insertelement <4 x float> poison, float %i.oji, i64 0
  %i.ojq = insertelement <4 x float> %i.ojp, float %i.ojk, i64 1
  %i.ojr = insertelement <4 x float> %i.ojq, float %i.ojm, i64 2
  %i.ojs = insertelement <4 x float> %i.ojr, float %i.ojo, i64 3
  %i.ojt = bitcast <4 x float> %i.ojs to <4 x i32>
  %i.oju = lshr <4 x i32> %i.ojt, splat (i32 16)
  %i.ojv = trunc nuw <4 x i32> %i.oju to <4 x i16>
  store <4 x i16> %i.ojv, ptr %next.gep5023, align 2, !tbaa !57
  %index.next5025 = add nuw i64 %index5021, 4     ; 2 uses
  %i.ojw = icmp eq i64 %index.next5025, %n.vec5019
  br i1 %i.ojw, label %vec.epilog.middle.block5026, label %vec.epilog.vector.body5020, !llvm.loop !898

vec.epilog.middle.block5026:                      ; preds = %vec.epilog.vector.body5020
  %cmp.n5027 = icmp eq i64 %i.ohk, %n.vec5019
  br i1 %cmp.n5027, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i.i.preheader

.lr.ph98.i.i.preheader:                           ; preds = %iter.check5013, %vec.epilog.iter.check5014, %vec.epilog.middle.block5026
  %.297.i.i.ph = phi ptr [ %.1.lcssa.i60.i, %iter.check5013 ], [ %i.oho, %vec.epilog.iter.check5014 ], [ %i.oiz, %vec.epilog.middle.block5026 ] ; 3 uses
  %.22496.i.i.ph = phi i32 [ %.123.lcssa.i.i1035, %iter.check5013 ], [ %i.ohq, %vec.epilog.iter.check5014 ], [ %i.ojb, %vec.epilog.middle.block5026 ] ; 4 uses
  %.22795.i.i.ph = phi ptr [ %.126.lcssa.i59.i, %iter.check5013 ], [ %i.ohr, %vec.epilog.iter.check5014 ], [ %i.ojc, %vec.epilog.middle.block5026 ] ; 3 uses
  %i.ojx = sub i32 %i.muo, %.22496.i.i.ph
  %.neg8022 = add i32 %.22496.i.i.ph, 1
  %xtraiter7819 = and i32 %i.ojx, 1
  %lcmp.mod7820.not = icmp eq i32 %xtraiter7819, 0
  br i1 %lcmp.mod7820.not, label %.lr.ph98.i.i.prol.loopexit, label %.lr.ph98.i.i.prol

.lr.ph98.i.i.prol:                                ; preds = %.lr.ph98.i.i.preheader
  %i.ojy = getelementptr inbounds nuw i8, ptr %.297.i.i.ph, i64 2
  %i.ojz = load i16, ptr %.297.i.i.ph, align 2, !tbaa !57
  %i.oka = zext i16 %i.ojz to i32
  %i.okb = shl nuw i32 %i.oka, 16
  %i.okc = bitcast i32 %i.okb to float
  %i.okd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.okc)
  %i.oke = bitcast float %i.okd to i32
  %i.okf = lshr i32 %i.oke, 16
  %i.okg = trunc nuw i32 %i.okf to i16
  %i.okh = getelementptr inbounds nuw i8, ptr %.22795.i.i.ph, i64 2
  store i16 %i.okg, ptr %.22795.i.i.ph, align 2, !tbaa !57
  %i.oki = add nuw nsw i32 %.22496.i.i.ph, 1
  br label %.lr.ph98.i.i.prol.loopexit

.lr.ph98.i.i.prol.loopexit:                       ; preds = %.lr.ph98.i.i.prol, %.lr.ph98.i.i.preheader
  %.297.i.i.unr = phi ptr [ %.297.i.i.ph, %.lr.ph98.i.i.preheader ], [ %i.ojy, %.lr.ph98.i.i.prol ]
  %.22496.i.i.unr = phi i32 [ %.22496.i.i.ph, %.lr.ph98.i.i.preheader ], [ %i.oki, %.lr.ph98.i.i.prol ]
  %.22795.i.i.unr = phi ptr [ %.22795.i.i.ph, %.lr.ph98.i.i.preheader ], [ %i.okh, %.lr.ph98.i.i.prol ]
  %i.okj = icmp eq i32 %i.muo, %.neg8022
  br i1 %i.okj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i.i

bb.ko:                                            ; preds = %bb.ko, %.lr.ph91.i.i
  %.189.i.i = phi ptr [ %.0.lcssa.i57.i, %.lr.ph91.i.i ], [ %i.omo, %bb.ko ] ; 2 uses
  %.12388.i.i = phi i32 [ %.022.lcssa.i.i1034, %.lr.ph91.i.i ], [ %i.omq, %bb.ko ]
  %.12687.i.i = phi ptr [ %.025.lcssa.i56.i, %.lr.ph91.i.i ], [ %i.omp, %bb.ko ] ; 2 uses
  %i.okk = load i64, ptr %.189.i.i, align 1, !tbaa !60
  %i.okl = insertelement <2 x i64> poison, i64 %i.okk, i64 0
  %i.okm = bitcast <2 x i64> %i.okl to <8 x i16>
  %i.okn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.okm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oko = bitcast <8 x i16> %i.okn to <4 x float> ; 3 uses
  %i.okp = fcmp fast oeq <4 x float> %i.oko, zeroinitializer ; 2 uses
  %.not78.i.i = or <4 x i1> %i.oha, %i.okp
  %i.okq = fcmp fast olt <4 x float> %i.oko, zeroinitializer
  %i.okr = select <4 x i1> %i.okq, <4 x float> %i.ohe, <4 x float> zeroinitializer
  %i.oks = fdiv fast <4 x float> %i.ogx, %i.oko   ; 2 uses
  %i.okt = bitcast <4 x float> %i.oks to <4 x i32>
  %i.oku = and <4 x i32> %i.okt, splat (i32 -2147483648)
  %i.okv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oks) ; 3 uses
  %i.okw = fcmp fast ogt <4 x float> %i.okv, splat (float 1.000000e+00) ; 2 uses
  %i.okx = select <4 x i1> %i.okw, <4 x float> splat (float -1.000000e+00), <4 x float> %i.okv
  %i.oky = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.okv, <4 x float> splat (float 1.000000e+00))
  %i.okz = fdiv fast <4 x float> %i.okx, %i.oky   ; 3 uses
  %i.ola = fmul fast <4 x float> %i.okz, %i.okz   ; 3 uses
  %i.olb = fmul fast <4 x float> %i.ola, %i.ola   ; 7 uses
  %i.olc = fmul fast <4 x float> %i.olb, splat (float f0x3C83A25C)
  %i.old = fsub fast <4 x float> splat (float f0xBD99B01E), %i.olc
  %i.ole = fmul fast <4 x float> %i.old, %i.olb
  %i.olf = fadd fast <4 x float> %i.ole, splat (float f0xBE117200)
  %i.olg = fmul fast <4 x float> %i.olf, %i.olb
  %i.olh = fadd fast <4 x float> %i.olg, splat (float f0xBEAAAA53)
  %i.oli = fmul fast <4 x float> %i.olb, splat (float f0x3B3AC537)
  %i.olj = fadd fast <4 x float> %i.oli, splat (float f0x3D2EDD4E)
  %i.olk = fmul fast <4 x float> %i.olj, %i.olb
  %i.oll = fadd fast <4 x float> %i.olk, splat (float f0x3DD9ED24)
  %i.olm = fmul fast <4 x float> %i.oll, %i.olb
  %i.oln = fadd fast <4 x float> %i.olm, splat (float f0x3E4CB974)
  %i.olo = fmul fast <4 x float> %i.oln, %i.olb
  %i.olp = fadd fast <4 x float> %i.olo, splat (float 1.000000e+00)
  %i.olq = fmul fast <4 x float> %i.olh, %i.ola
  %i.olr = fadd fast <4 x float> %i.olp, %i.olq
  %i.ols = fmul fast <4 x float> %i.olr, %i.okz
  %i.olt = select <4 x i1> %i.okw, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.olu = fadd fast <4 x float> %i.ols, %i.olt
  %i.olv = bitcast <4 x float> %i.olu to <4 x i32>
  %i.olw = or <4 x i32> %i.oku, %i.olv
  %i.olx = bitcast <4 x i32> %i.olw to <4 x float>
  %i.oly = fadd fast <4 x float> %i.okr, %i.olx
  %i.olz = bitcast <8 x i16> %i.okn to <4 x i32>
  %i.oma = and <4 x i32> %i.olz, splat (i32 -2147483648)
  %i.omb = or disjoint <4 x i32> %i.oma, splat (i32 1078530011)
  %i.omc = bitcast <4 x i32> %i.omb to <4 x float>
  %i.omd = fcmp fast uge <4 x float> %i.omc, zeroinitializer
  %i.ome = select <4 x i1> %i.omd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.omf = bitcast <4 x float> %i.oly to <4 x i32>
  %i.omg = select <4 x i1> %.not78.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.omf
  %i.omh = select <4 x i1> %i.okp, <4 x i32> %i.ohf, <4 x i32> zeroinitializer
  %i.omi = select <4 x i1> %i.oha, <4 x i32> %i.ome, <4 x i32> %i.omh
  %i.omj = or <4 x i32> %i.omg, %i.omi
  %i.omk = lshr <4 x i32> %i.omj, splat (i32 16)
  %i.oml = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.omk, <4 x i32> poison)
  %i.omm = bitcast <8 x i16> %i.oml to <2 x i64>
  %i.omn = extractelement <2 x i64> %i.omm, i64 0
  store i64 %i.omn, ptr %.12687.i.i, align 1, !tbaa !60
  %i.omo = getelementptr inbounds nuw i8, ptr %.189.i.i, i64 8 ; 2 uses
  %i.omp = getelementptr inbounds nuw i8, ptr %.12687.i.i, i64 8 ; 2 uses
  %i.omq = add nuw nsw i32 %.12388.i.i, 4         ; 3 uses
  %i.omr = or disjoint i32 %i.omq, 3
  %i.oms = icmp slt i32 %i.omr, %i.muo
  br i1 %i.oms, label %bb.ko, label %.preheader.i58.i, !llvm.loop !899

.lr.ph98.i.i:                                     ; preds = %.lr.ph98.i.i.prol.loopexit, %.lr.ph98.i.i
  %.297.i.i = phi ptr [ %i.ond, %.lr.ph98.i.i ], [ %.297.i.i.unr, %.lr.ph98.i.i.prol.loopexit ] ; 3 uses
  %.22496.i.i = phi i32 [ %i.onn, %.lr.ph98.i.i ], [ %.22496.i.i.unr, %.lr.ph98.i.i.prol.loopexit ]
  %.22795.i.i = phi ptr [ %i.onm, %.lr.ph98.i.i ], [ %.22795.i.i.unr, %.lr.ph98.i.i.prol.loopexit ] ; 3 uses
  %i.omt = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 2
  %i.omu = load i16, ptr %.297.i.i, align 2, !tbaa !57
  %i.omv = zext i16 %i.omu to i32
  %i.omw = shl nuw i32 %i.omv, 16
  %i.omx = bitcast i32 %i.omw to float
  %i.omy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.omx)
  %i.omz = bitcast float %i.omy to i32
  %i.ona = lshr i32 %i.omz, 16
  %i.onb = trunc nuw i32 %i.ona to i16
  %i.onc = getelementptr inbounds nuw i8, ptr %.22795.i.i, i64 2
  store i16 %i.onb, ptr %.22795.i.i, align 2, !tbaa !57
  %i.ond = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 4
  %i.one = load i16, ptr %i.omt, align 2, !tbaa !57
  %i.onf = zext i16 %i.one to i32
  %i.ong = shl nuw i32 %i.onf, 16
  %i.onh = bitcast i32 %i.ong to float
  %i.oni = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oeb, float %i.onh)
  %i.onj = bitcast float %i.oni to i32
  %i.onk = lshr i32 %i.onj, 16
  %i.onl = trunc nuw i32 %i.onk to i16
  %i.onm = getelementptr inbounds nuw i8, ptr %.22795.i.i, i64 4
  store i16 %i.onl, ptr %i.onc, align 2, !tbaa !57
  %i.onn = add nuw nsw i32 %.22496.i.i, 2         ; 2 uses
  %exitcond.not.i61.i1036.1 = icmp eq i32 %i.onn, %i.muo
  br i1 %exitcond.not.i61.i1036.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph98.i.i, !llvm.loop !900

bb.kp:                                            ; preds = %bb.kl
  %i.ono = icmp eq i32 %3, 1
  br i1 %i.ono, label %bb.kq, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kq:                                            ; preds = %bb.kp
  switch i32 %.sroa.speculated.i1030, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_avx_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %.lr.ph109.i.i
    i32 4, label %.lr.ph.i63.i
  ]

.lr.ph109.i.i:                                    ; preds = %bb.kq
  %i.onp = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.onq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.onp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.onr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.onp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ons = shufflevector <8 x i16> %i.onq, <8 x i16> %i.onr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ont = bitcast <16 x i16> %i.ons to <8 x float> ; 3 uses
  %i.onu = fcmp fast ueq <8 x float> %i.ont, zeroinitializer ; 2 uses
  %i.onv = fcmp fast olt <8 x float> %i.ont, zeroinitializer
  %i.onw = bitcast <16 x i16> %i.ons to <8 x i32>
  %i.onx = and <8 x i32> %i.onw, splat (i32 -2147483648)
  %i.ony = or disjoint <8 x i32> %i.onx, splat (i32 1078530011)
  %i.onz = bitcast <8 x i32> %i.ony to <8 x float>
  %i.ooa = fcmp fast uge <8 x float> %i.onz, zeroinitializer
  %i.oob = select <8 x i1> %i.ooa, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.ooc = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ont
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kr, %.lr.ph109.i.i
  %.018108.i.i = phi ptr [ %1, %.lr.ph109.i.i ], [ %i.oqh, %bb.kr ] ; 2 uses
  %.019107.i.i = phi i32 [ 0, %.lr.ph109.i.i ], [ %i.oqj, %bb.kr ]
  %.020106.i.i = phi ptr [ %2, %.lr.ph109.i.i ], [ %i.oqi, %bb.kr ] ; 2 uses
  %i.ood = load i16, ptr %.018108.i.i, align 2, !tbaa !57
  %i.ooe = zext i16 %i.ood to i32
  %i.oof = shl nuw i32 %i.ooe, 16
  %i.oog = insertelement <8 x i32> poison, i32 %i.oof, i64 0
  %i.ooh = bitcast <8 x i32> %i.oog to <8 x float>
  %i.ooi = shufflevector <8 x float> %i.ooh, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ooj = fcmp fast ueq <8 x float> %i.ooi, zeroinitializer ; 2 uses
  %.not101.i.i1031 = or <8 x i1> %i.onu, %i.ooj
  %i.ook = bitcast <8 x float> %i.ooi to <8 x i32>
  %i.ool = and <8 x i32> %i.ook, splat (i32 -2147483648)
  %i.oom = fcmp fast olt <8 x float> %i.ooi, zeroinitializer
  %i.oon = select <8 x i1> %i.oom, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.ooo = select <8 x i1> %i.onv, <8 x float> %i.oon, <8 x float> zeroinitializer
  %i.oop = fmul fast <8 x float> %i.ooi, %i.ooc   ; 2 uses
  %i.ooq = bitcast <8 x float> %i.oop to <8 x i32>
  %i.oor = and <8 x i32> %i.ooq, splat (i32 -2147483648)
  %i.oos = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oop) ; 3 uses
  %i.oot = fcmp fast ogt <8 x float> %i.oos, splat (float 1.000000e+00) ; 2 uses
  %i.oou = select <8 x i1> %i.oot, <8 x float> splat (float -1.000000e+00), <8 x float> %i.oos
  %i.oov = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.oos, <8 x float> splat (float 1.000000e+00))
  %i.oow = fdiv fast <8 x float> %i.oou, %i.oov   ; 3 uses
  %i.oox = fmul fast <8 x float> %i.oow, %i.oow   ; 3 uses
end_hunk_12
