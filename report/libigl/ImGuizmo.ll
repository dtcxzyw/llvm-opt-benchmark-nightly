Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a

bb.dm:                                            ; preds = %bb.dl, %bb.cb
  %i.clt = load i8, ptr %i.biy, align 8, !tbaa !47, !range !33, !noundef !34
  %i.clu = trunc nuw i8 %i.clt to i1
  br i1 %i.clu, label %bb.dn, label %.thread754.i

.thread754.i:                                     ; preds = %bb.dm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next709.old.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond712.not.old.i = icmp eq i64 %indvars.iv.next709.old.i, %wide.trip.count711.i
  br i1 %exitcond712.not.old.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread754.i, %bb.dn
  %indvars.iv708.i.be = phi i64 [ %indvars.iv.next709.old.i, %.thread754.i ], [ %indvars.iv.next709.i, %bb.dn ]
  br label %.backedge, !llvm.loop !63

bb.dn:                                            ; preds = %bb.dm
  %.pre724.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33 ; 2 uses
  %i.clv = trunc nuw i8 %.pre724.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next709.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond712.not.i = icmp eq i64 %indvars.iv.next709.i, %wide.trip.count711.i
  %or.cond756.i = select i1 %i.clv, i1 true, i1 %exitcond712.not.i
  br i1 %or.cond756.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit: ; preds = %.thread754.i, %bb.dn
  %i.clw = phi i8 [ 0, %.thread754.i ], [ %.pre724.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.do

bb.do:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit
  %i.clx = phi i8 [ %.pre, %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge ], [ %i.clw, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit ]
  %i.cly = trunc nuw i8 %i.clx to i1
  br i1 %i.cly, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %2, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit [
    i32 1, label %bb.dq
    i32 0, label %bb.ei
    i32 2, label %bb.ey
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.clz = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 4 uses
  %i.cma = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.cmb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.cmc = trunc nuw i8 %i.cmb to i1
  br i1 %i.cmc, label %bb.dr, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.cmd = icmp eq i32 %.0, 11
  %i.cme = select i1 %i.cmd, i32 -1978629889, i32 -1 ; 2 uses
  store i32 %i.cme, ptr %i.i, align 16, !tbaa !52
  %i.cmf = icmp eq i32 %.0, 8
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  br i1 %i.cmf, label %.thread70.i.i, label %bb.ds

.thread70.i.i:                                    ; preds = %bb.dr
  store i32 -1978629889, ptr %i.cmg, align 4, !tbaa !52
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -16733696, ptr %i.cmh, align 8, !tbaa !52
  br label %bb.du

bb.ds:                                            ; preds = %bb.dr
  store i32 -16777046, ptr %i.cmg, align 4, !tbaa !52
  %i.cmi = icmp eq i32 %.0, 9
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.cmi, label %.thread69.i.i, label %bb.dt

.thread69.i.i:                                    ; preds = %bb.ds
  store i32 -1978629889, ptr %i.cmj, align 8, !tbaa !52
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 -16733696, ptr %i.cmj, align 8, !tbaa !52
  %i.cmk = icmp eq i32 %.0, 10
  br i1 %i.cmk, label %.loopexit.loopexit52.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %.thread69.i.i, %.thread70.i.i
  br label %.loopexit.loopexit52.i.i

.loopexit.loopexit52.i.i:                         ; preds = %bb.du, %bb.dt
  %i.cml = phi i32 [ -5636096, %bb.du ], [ -1978629889, %bb.dt ]
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.cml, ptr %i.cmm, align 4, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i: ; preds = %.loopexit.loopexit52.i.i, %.preheader.preheader.i.i
  %i.cmn = phi i32 [ -1717986919, %.preheader.preheader.i.i ], [ %i.cme, %.loopexit.loopexit52.i.i ]
  %i.cmo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30, !range !33, !noundef !34
  %i.cmp = trunc nuw i8 %i.cmo to i1
  br i1 %i.cmp, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.cmq = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %.phi.trans.insert128.i = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.cmr = load <2 x float>, ptr %i.clz, align 4
  %.pre129.i = load float, ptr %.phi.trans.insert128.i, align 4
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.cms = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.cmt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !10
  %i.cmu = fsub <2 x float> %i.cms, %i.cmt        ; 4 uses
  %i.cmv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  %i.cmw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 548), align 4, !tbaa !13
  %i.cmx = fsub float %i.cmv, %i.cmw              ; 3 uses
  %foldExtExtBinop269 = fmul <2 x float> %i.cmu, %i.cmu
  %i.cmy = extractelement <2 x float> %foldExtExtBinop269, i64 1
  %i.cmz = extractelement <2 x float> %i.cmu, i64 0 ; 2 uses
  %i.cna = call float @llvm.fmuladd.f32(float %i.cmz, float %i.cmz, float %i.cmy)
  %i.cnb = call float @llvm.fmuladd.f32(float %i.cmx, float %i.cmx, float %i.cna)
  %sqrt.i.i.i.i111 = call noundef float @llvm.sqrt.f32(float %i.cnb)
  %i.cnc = fdiv float 1.000000e+00, %sqrt.i.i.i.i111 ; 2 uses
  %i.cnd = insertelement <2 x float> poison, float %i.cnc, i64 0
  %i.cne = shufflevector <2 x float> %i.cnd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnf = fmul <2 x float> %i.cmu, %i.cne
  %i.cng = fmul float %i.cmx, %i.cnc
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.cnh = phi float [ %i.cng, %bb.dw ], [ %.pre129.i, %bb.dv ]
  %i.cni = phi <2 x float> [ %i.cnf, %bb.dw ], [ %i.cmr, %bb.dv ] ; 2 uses
  %i.cnj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.cnk = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.cnl = shufflevector <2 x float> %i.cni, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cnm = fmul <4 x float> %i.cnl, %i.cnk
  %i.cnn = shufflevector <2 x float> %i.cni, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cno = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cnn, <4 x float> %i.cnj, <4 x float> %i.cnm)
  %i.cnp = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.cnq = insertelement <4 x float> poison, float %i.cnh, i64 0
  %i.cnr = shufflevector <4 x float> %i.cnq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cns = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cnr, <4 x float> %i.cnp, <4 x float> %i.cno)
  store <4 x float> %i.cns, ptr %i.clz, align 4
  %i.cnt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.cnu = fmul float %i.cnt, 6.000000e-02
  store float %i.cnu, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.cnv = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cnw = getelementptr inbounds nuw i8, ptr %36, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %.sroa.02.0.copyload.i.i116 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i117 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i118 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cnx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cny = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cnz = fmul float %.sroa.12.0.copyload.i.i117, %i.cny
  %i.coa = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.cnx, float %i.cnz)
  %i.cob = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.coc = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cob, float %i.coa)
  %i.cod = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.coe = fadd float %i.cod, %i.coc
  %i.cof = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cog = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.coh = fmul float %.sroa.12.0.copyload.i.i117, %i.cog
  %i.coi = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.cof, float %i.coh)
  %i.coj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cok = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.coj, float %i.coi)
  %i.col = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.com = fadd float %i.col, %i.cok
  %i.con = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.coo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cop = fmul float %.sroa.12.0.copyload.i.i117, %i.coo
  %i.coq = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.con, float %i.cop)
  %i.cor = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cos = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cor, float %i.coq)
  %i.cot = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cou = fadd float %i.cot, %i.cos
  %i.cov = fdiv float 5.000000e-01, %i.cou        ; 2 uses
  %i.cow = fmul float %i.coe, %i.cov
  %i.cox = fmul float %i.com, %i.cov
  %i.coy = fadd float %i.cox, 5.000000e-01
  %i.coz = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cow, i64 0
  %i.cpa = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.coy, i64 1
  %i.cpb = fsub <2 x float> %i.coz, %i.cpa
  %i.cpc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.cpd = fmul <2 x float> %i.cpc, %i.cpb
  %i.cpe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.cpf = fadd <2 x float> %i.cpe, %i.cpd
  store <2 x float> %i.cpf, ptr %38, align 8
  %i.cpg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.cma, ptr noundef nonnull align 4 dereferenceable(8) %38, float noundef %i.cpg, i32 noundef %i.cmn, i32 noundef 64, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.cph = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.cpi = trunc nuw i8 %i.cph to i1
  br i1 %i.cpi, label %bb.ee, label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.dz:                                            ; preds = %bb.ed, %bb.dx
  %indvars.iv118.i = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next119.i, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %36, i8 0, i64 512, i1 false), !tbaa !10
  %.cmp.i = icmp eq i64 %indvars.iv118.i, 2
  %i.cpj = sub nsw i64 1, %indvars.iv118.i
  %i.cpk = and i64 %i.cpj, 4294967295
  %i.cpl = select i1 %.cmp.i, i64 2, i64 %i.cpk
  %i.cpm = getelementptr inbounds nuw [4 x i8], ptr %i.clz, i64 %i.cpl
  %i.cpn = load float, ptr %i.cpm, align 4
  %65 = sub nuw nsw i64 3, %indvars.iv118.i       ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %66 = select i1 %.cmp113.not.i, i64 0, i64 %65
  %i.cpo = getelementptr inbounds nuw [4 x i8], ptr %i.clz, i64 %66
  %i.cpp = load float, ptr %i.cpo, align 4
  %i.cpq = call float @atan2f(float noundef %i.cpn, float noundef %i.cpp) #19
  %i.cpr = fadd float %i.cpq, f0x3FC90FDB
  %i.cps = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %i.cpt = icmp eq i64 %indvars.iv.next119.i, 3   ; 2 uses
  %i.cpu = select i1 %i.cpt, i64 0, i64 %indvars.iv.next119.i
  %i.cpv = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cpu
  %67 = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.cpw = add nuw nsw i32 %67, 2
  %i.cpx = urem i32 %i.cpw, 3
  %i.cpy = zext nneg i32 %i.cpx to i64
  %i.cpz = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cpy
  %i.cqa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cqb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cqc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cqd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.cqe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.cqf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %i.cqg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cqh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cqi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.cqj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.cqk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cql = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cqm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cqn = fmul float %.sroa.12.0.copyload.i50.i, %i.cqm
  %i.cqo = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cql, float %i.cqn)
  %i.cqp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cqq = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cqp, float %i.cqo)
  %i.cqr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cqs = fadd float %i.cqr, %i.cqq
  %i.cqt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cqu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cqv = fmul float %.sroa.12.0.copyload.i50.i, %i.cqu
  %i.cqw = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cqt, float %i.cqv)
  %i.cqx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cqy = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cqx, float %i.cqw)
  %i.cqz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cra = fadd float %i.cqz, %i.cqy
  %i.crb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.crc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.crd = fmul float %.sroa.12.0.copyload.i50.i, %i.crc
  %i.cre = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.crb, float %i.crd)
  %i.crf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.crg = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.crf, float %i.cre)
  %i.crh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cri = fadd float %i.crh, %i.crg
  %i.crj = fdiv float 5.000000e-01, %i.cri        ; 2 uses
  %i.crk = fmul float %i.cqs, %i.crj
  %i.crl = fmul float %i.cra, %i.crj
  %i.crm = fadd float %i.crk, 5.000000e-01
  %i.crn = fadd float %i.crl, 5.000000e-01
  %i.cro = fsub float 1.000000e+00, %i.crn
  %i.crp = extractelement <2 x float> %i.cqj, i64 0
  %i.crq = fmul float %i.crp, %i.crm
  %i.crr = extractelement <2 x float> %i.cqj, i64 1
  %i.crs = fmul float %i.crr, %i.cro
  %i.crt = extractelement <2 x float> %i.cqk, i64 0
  %i.cru = fadd float %i.crt, %i.crq
  %i.crv = extractelement <2 x float> %i.cqk, i64 1
  %i.crw = fadd float %i.crv, %i.crs
  %.val44.i = load float, ptr %36, align 16, !tbaa !76
  %.val45.i = load float, ptr %i.cnw, align 4, !tbaa !77
  %i.crx = fsub float %i.cru, %.val44.i           ; 2 uses
  %i.cry = fsub float %i.crw, %.val45.i           ; 2 uses
  %i.crz = fmul float %i.cry, %i.cry
  %i.csa = call noundef float @llvm.fmuladd.f32(float %i.crx, float %i.crx, float %i.crz)
  %sqrt.i115 = call float @llvm.sqrt.f32(float %i.csa) ; 2 uses
  %i.csb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.csc = fcmp ogt float %sqrt.i115, %i.csb
  br i1 %i.csc, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i112 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i113, %bb.eb ] ; 3 uses
  %i.csd = trunc nuw nsw i64 %indvars.iv.i112 to i32
  %i.cse = uitofp nneg i32 %i.csd to float
  %i.csf = fmul nnan float %i.cse, 1.562500e-02
  %i.csg = call float @llvm.fmuladd.f32(float %i.csf, float f0x40490FDB, float %i.cpr) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.csh = call float @cosf(float noundef %i.csg) #19
  %i.csi = call float @sinf(float noundef %i.csg) #19
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.csh, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.csi, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.cnv, align 8
  %i.csj = load float, ptr %i.cps, align 4, !tbaa !10
  %i.csk = load float, ptr %i.cpv, align 4, !tbaa !10
  %i.csl = load float, ptr %i.cpz, align 4, !tbaa !10
  %i.csm = fmul float %i.cqa, %i.csj              ; 2 uses
  %i.csn = fmul float %i.cqa, %i.csk              ; 2 uses
  %i.cso = fmul float %i.cqa, %i.csl              ; 2 uses
  %i.csp = insertelement <2 x float> poison, float %i.csn, i64 0
  %i.csq = shufflevector <2 x float> %i.csp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csr = fmul <2 x float> %i.cqc, %i.csq
  %i.css = insertelement <2 x float> poison, float %i.csm, i64 0
  %i.cst = shufflevector <2 x float> %i.css, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cst, <2 x float> %i.cqb, <2 x float> %i.csr)
  %i.csv = insertelement <2 x float> poison, float %i.cso, i64 0
  %i.csw = shufflevector <2 x float> %i.csv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csw, <2 x float> %i.cqd, <2 x float> %i.csu)
  %i.csy = fadd <2 x float> %i.cqe, %i.csx
  %i.csz = fmul float %i.cqg, %i.csn
  %i.cta = call float @llvm.fmuladd.f32(float %i.csm, float %i.cqf, float %i.csz)
  %i.ctb = call float @llvm.fmuladd.f32(float %i.cso, float %i.cqh, float %i.cta)
  %i.ctc = fadd float %i.cqi, %i.ctb
  %i.ctd = fdiv float 5.000000e-01, %i.ctc
  %i.cte = insertelement <2 x float> poison, float %i.ctd, i64 0
  %i.ctf = shufflevector <2 x float> %i.cte, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ctg = fmul <2 x float> %i.csy, %i.ctf        ; 2 uses
  %i.cth = extractelement <2 x float> %i.ctg, i64 1
  %i.cti = fadd float %i.cth, 5.000000e-01
  %i.ctj = insertelement <2 x float> %i.ctg, float 1.000000e+00, i64 1
  %i.ctk = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cti, i64 1
  %i.ctl = fsub <2 x float> %i.ctj, %i.ctk
  %i.ctm = fmul <2 x float> %i.cqj, %i.ctl
  %i.ctn = fadd <2 x float> %i.cqk, %i.ctm
  %i.cto = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i112
  store <2 x float> %i.ctn, ptr %i.cto, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, 64
  br i1 %exitcond.not.i114, label %bb.ea, label %bb.eb, !llvm.loop !64

bb.ec:                                            ; preds = %bb.ea
  store float %sqrt.i115, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.ctp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %65
  %i.ctq = load i32, ptr %i.ctp, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cma, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.ctq, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %i.cpt, label %bb.dy, label %bb.dz, !llvm.loop !65

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !10
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.ctr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.cts = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.ctt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.ctu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.ctv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.ctw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.ctx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.cty = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 3 uses
  %i.ctz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10
  %i.cua = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 2 uses
  %i.cub = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cuc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cud = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10 ; 5 uses
  %i.cue = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 2 uses
  %i.cuf = shufflevector <2 x float> %i.cud, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cug = insertelement <2 x float> %i.cuf, float %.sroa.12.0.copyload.i75.i, i64 1
  %i.cuh = shufflevector <2 x float> %i.cug, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cui = shufflevector <2 x float> %i.cud, <2 x float> %i.cue, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.cuj = insertelement <4 x float> %i.cui, float %i.ctt, i64 3
  %i.cuk = fmul <4 x float> %i.cuh, %i.cuj
  %i.cul = shufflevector <2 x float> %i.cud, <2 x float> %i.ctz, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cum = shufflevector <2 x float> %i.cub, <2 x float> %i.cua, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 2 uses
  %i.cun = shufflevector <2 x float> %i.cud, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cuo = shufflevector <4 x float> %i.cun, <4 x float> %i.cum, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.cup = insertelement <4 x float> %i.cuo, float %i.cuc, i64 2
  %i.cuq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cul, <4 x float> %i.cup, <4 x float> %i.cuk) ; 3 uses
  %i.cur = extractelement <4 x float> %i.cuq, i64 0
  %i.cus = call noundef float @llvm.fmuladd.f32(float %i.cty, float %i.cty, float %i.cur) ; 2 uses
  %i.cut = fcmp olt float %i.cus, f0x34000000
  %i.cuu = extractelement <4 x float> %i.cuq, i64 3
  %i.cuv = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i76.i, float %i.ctu, float %i.cuu)
  %i.cuw = fadd float %i.ctv, %i.cuv
  %i.cux = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !10 ; 3 uses
  %.sroa.8.0.copyload.i121 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !10 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !10 ; 3 uses
  %i.cuy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cuz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %sqrt.i.i122 = call float @llvm.sqrt.f32(float %i.cus)
  %i.cva = insertelement <2 x float> poison, float %i.cuw, i64 0
  %i.cvb = insertelement <2 x float> %i.cva, float %sqrt.i.i122, i64 1
  %i.cvc = fdiv <2 x float> <float 5.000000e-01, float 1.000000e+00>, %i.cvb ; 3 uses
  %i.cvd = insertelement <2 x float> %i.cud, float %i.cty, i64 1
  %i.cve = shufflevector <2 x float> %i.cvc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cvf = fmul <2 x float> %i.cvd, %i.cve        ; 6 uses
  %i.cvg = fmul <2 x float> %i.cvf, %i.cvf
  %i.cvh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4
  %i.cvi = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.sroa.22.0.copyload.i76.i, i64 0
  %i.cvj = shufflevector <4 x float> %i.cvi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cvk = shufflevector <2 x float> %i.ctr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cvl = shufflevector <4 x float> %i.cvk, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cvm = shufflevector <4 x float> %i.cuq, <4 x float> %i.cvh, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.cvn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvj, <4 x float> %i.cvl, <4 x float> %i.cvm) ; 2 uses
  %i.cvo = shufflevector <2 x float> %i.cts, <2 x float> %i.cvc, <4 x i32> <i32 0, i32 1, i32 3, i32 3> ; 2 uses
  %i.cvp = fadd <4 x float> %i.cvo, %i.cvn
  %i.cvq = fmul <4 x float> %i.cvo, %i.cvn        ; 3 uses
  %i.cvr = shufflevector <4 x float> %i.cvp, <4 x float> %i.cvq, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cvs = shufflevector <2 x float> %i.cvc, <2 x float> %i.cvf, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.cvt = shufflevector <4 x float> %i.cvs, <4 x float> %i.cvr, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.cvu = fmul <4 x float> %i.cvt, %i.cvr        ; 4 uses
  %i.cvv = extractelement <4 x float> %i.cvu, i64 1
  %i.cvw = fadd float %i.cvv, 5.000000e-01
  %i.cvx = shufflevector <4 x float> %i.cvu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cvy = insertelement <2 x float> %i.cvx, float 1.000000e+00, i64 1
  %i.cvz = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cvw, i64 1
  %i.cwa = fsub <2 x float> %i.cvy, %i.cvz
  %i.cwb = fmul <2 x float> %i.ctw, %i.cwa
  %i.cwc = fadd <2 x float> %i.ctx, %i.cwb
  store <2 x float> %i.cwc, ptr %39, align 16
  %i.cwd = shufflevector <4 x float> %i.cvq, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cwe = shufflevector <2 x float> %i.cvf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cwf = extractelement <2 x float> %i.cux, i64 0 ; 2 uses
  %i.cwg = shufflevector <2 x float> %i.cux, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cwh = shufflevector <2 x float> %i.cua, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cwi = shufflevector <2 x float> %i.cvf, <2 x float> %i.cwd, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cwj = shufflevector <2 x float> %i.cvf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cwk = fmul <4 x float> %i.cwi, %i.cwj        ; 2 uses
  %i.cwl = shufflevector <2 x float> %i.cue, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.cwm = extractelement <4 x float> %i.cvu, i64 2
  %i.cwn = shufflevector <4 x float> %i.cvq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cwo = shufflevector <4 x float> %i.cwn, <4 x float> %i.cwe, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cwp = shufflevector <4 x float> %i.cwo, <4 x float> %i.cvu, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.cwq = shufflevector <4 x float> %i.cwp, <4 x float> %i.cwk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cwr = shufflevector <4 x float> %i.cwk, <4 x float> %i.cwe, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.cws = shufflevector <2 x float> %i.cux, <2 x float> %i.ctz, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cwt = insertelement <4 x float> %i.cwl, float %i.ctt, i64 3
  %i.cwu = shufflevector <4 x float> %i.cwt, <4 x float> %i.cwg, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.cwv = shufflevector <4 x float> %i.cwu, <4 x float> %i.cwh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.cma, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cma, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.cww = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.cwx = sext i32 %.0 to i64
  %i.cwy = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.cwx
  %i.cwz = getelementptr i8, ptr %i.cwy, i64 -64
  %i.cxa = load ptr, ptr %i.cwz, align 8, !tbaa !78
  %i.cxb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !73 ; 2 uses
  %i.cxc = fdiv float %i.cxb, f0x40490FDB
  %i.cxd = fmul float %i.cxc, 1.800000e+02
  %i.cxe = fpext float %i.cxd to double
  %i.cxf = fpext float %i.cxb to double
  %i.cxg = load <2 x float>, ptr %i.cww, align 8, !tbaa !10 ; 2 uses
  %i.cxh = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.cxa, double noundef %i.cxe, double noundef %i.cxf) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.cxi = fadd <2 x float> %i.cxg, splat (float 1.500000e+01)
  store <2 x float> %i.cxi, ptr %40, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cma, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.cxj = fadd <2 x float> %i.cxg, splat (float 1.400000e+01)
  store <2 x float> %i.cxj, ptr %41, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cma, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, %bb.ee
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ] ; 3 uses
  br i1 %i.cut, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.cxk = trunc i64 %indvars.iv123.i to i32
  %i.cxl = add i32 %i.cxk, -1
  %i.cxm = uitofp i32 %i.cxl to float
  %i.cxn = fdiv nnan float %i.cxm, 6.300000e+01
  %i.cxo = fmul float %i.cuz, %i.cxn              ; 2 uses
  %i.cxp = call float @sinf(float noundef %i.cxo) #19
  %i.cxq = call float @cosf(float noundef %i.cxo) #19 ; 3 uses
  %i.cxr = fsub float 1.000000e+00, %i.cxq        ; 3 uses
  %i.cxs = call float @llvm.fmuladd.f32(float %i.cwm, float %i.cxr, float %i.cxq)
  %i.cxt = insertelement <2 x float> poison, float %i.cxr, i64 0
  %i.cxu = shufflevector <2 x float> %i.cxt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxv = insertelement <2 x float> poison, float %i.cxq, i64 0
  %i.cxw = shufflevector <2 x float> %i.cxv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cvg, <2 x float> %i.cxu, <2 x float> %i.cxw)
  %i.cxy = insertelement <4 x float> poison, float %i.cxp, i64 0
  %i.cxz = insertelement <4 x float> %i.cxy, float %i.cxr, i64 1 ; 2 uses
  %i.cya = shufflevector <4 x float> %i.cxz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cyb = fmul <4 x float> %i.cwq, %i.cya        ; 4 uses
  %i.cyc = shufflevector <4 x float> %i.cxz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.cyd = fmul <4 x float> %i.cwr, %i.cyc        ; 4 uses
  %foldExtExtBinop271 = fsub <4 x float> %i.cyd, %i.cyb
  %i.cye = extractelement <4 x float> %foldExtExtBinop271, i64 0
  %foldExtExtBinop273 = fsub <4 x float> %i.cyb, %i.cyd
  %i.cyf = extractelement <4 x float> %foldExtExtBinop273, i64 2
  %i.cyg = fadd <4 x float> %i.cyb, %i.cyd
  %i.cyh = fsub <4 x float> %i.cyb, %i.cyd
  %i.cyi = shufflevector <4 x float> %i.cyg, <4 x float> %i.cyh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cyj = fmul float %.sroa.8.0.copyload.i121, %i.cxs
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123: ; preds = %bb.eh, %bb.eg
  %.sroa.11.0.i = phi float [ %i.cyf, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.cye, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink59.i.i125 = phi float [ %i.cyj, %bb.eh ], [ %.sroa.8.0.copyload.i121, %bb.eg ]
  %i.cyk = phi <4 x float> [ %i.cyi, %bb.eh ], [ zeroinitializer, %bb.eg ] ; 4 uses
  %i.cyl = phi <2 x float> [ %i.cxx, %bb.eh ], [ splat (float 1.000000e+00), %bb.eg ] ; 2 uses
  %i.cym = fmul float %.sroa.8.0.copyload.i121, %.sroa.11.0.i
  %i.cyn = extractelement <2 x float> %i.cyl, i64 0
  %i.cyo = call float @llvm.fmuladd.f32(float %i.cwf, float %i.cyn, float %i.cym)
  %i.cyp = extractelement <4 x float> %i.cyk, i64 0
  %i.cyq = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyp, float %i.cyo)
  %i.cyr = fadd float %i.cyq, 0.000000e+00
  %i.cys = extractelement <4 x float> %i.cyk, i64 2
  %i.cyt = call float @llvm.fmuladd.f32(float %i.cwf, float %i.cys, float %.sink59.i.i125)
  %i.cyu = extractelement <4 x float> %i.cyk, i64 3
  %i.cyv = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyu, float %i.cyt)
  %i.cyw = fadd float %i.cyv, 0.000000e+00
  %i.cyx = extractelement <2 x float> %i.cyl, i64 1
  %i.cyy = fmul float %i.cuy, %i.cyr
  %i.cyz = fmul float %i.cuy, %i.cyw
  %i.cza = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cyy, i64 1
  %i.czb = shufflevector <2 x float> %i.cza, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czc = fadd <4 x float> %i.cws, %i.czb
  %i.czd = shufflevector <4 x float> %i.cyk, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cze = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cyz, i64 1
  %i.czf = shufflevector <2 x float> %i.czd, <2 x float> %i.ctz, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.czg = shufflevector <2 x float> %i.cze, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czh = fadd <4 x float> %i.czf, %i.czg
  %i.czi = fmul <4 x float> %i.cwv, %i.czh
  %i.czj = insertelement <4 x float> %i.cum, float %.sroa.7.0.i, i64 0
  %i.czk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.czc, <4 x float> %i.czj, <4 x float> %i.czi) ; 3 uses
  %i.czl = extractelement <4 x float> %i.czk, i64 0
  %i.czm = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.cyx, float %i.czl)
  %i.czn = fadd float %i.czm, 0.000000e+00
  %i.czo = fmul float %i.cuy, %i.czn
  %i.czp = extractelement <4 x float> %i.czk, i64 3
end_hunk_0
