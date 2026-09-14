Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %.pre724.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33 ; 2 uses
  %i.cnk = trunc nuw i8 %.pre724.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next709.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond712.not.i = icmp eq i64 %indvars.iv.next709.i, %wide.trip.count711.i
  %or.cond756.i = select i1 %i.cnk, i1 true, i1 %exitcond712.not.i
  br i1 %or.cond756.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit: ; preds = %.thread754.i, %bb.dn
  %i.cnl = phi i8 [ 0, %.thread754.i ], [ %.pre724.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.do

bb.do:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit
  %i.cnm = phi i8 [ %.pre, %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge ], [ %i.cnl, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit ]
  %i.cnn = trunc nuw i8 %i.cnm to i1
  br i1 %i.cnn, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %2, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit [
    i32 1, label %bb.dq
    i32 0, label %bb.ei
    i32 2, label %bb.ey
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.cno = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 4 uses
  %i.cnp = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.cnq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.cnr = trunc nuw i8 %i.cnq to i1
  br i1 %i.cnr, label %bb.dr, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.cns = icmp eq i32 %.0, 11
  %i.cnt = select i1 %i.cns, i32 -1978629889, i32 -1 ; 2 uses
  store i32 %i.cnt, ptr %i.i, align 16, !tbaa !52
  %i.cnu = icmp eq i32 %.0, 8
  %i.cnv = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  br i1 %i.cnu, label %.thread70.i.i, label %bb.ds

.thread70.i.i:                                    ; preds = %bb.dr
  store i32 -1978629889, ptr %i.cnv, align 4, !tbaa !52
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -16733696, ptr %i.cnw, align 8, !tbaa !52
  br label %bb.du

bb.ds:                                            ; preds = %bb.dr
  store i32 -16777046, ptr %i.cnv, align 4, !tbaa !52
  %i.cnx = icmp eq i32 %.0, 9
  %i.cny = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.cnx, label %.thread69.i.i, label %bb.dt

.thread69.i.i:                                    ; preds = %bb.ds
  store i32 -1978629889, ptr %i.cny, align 8, !tbaa !52
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 -16733696, ptr %i.cny, align 8, !tbaa !52
  %i.cnz = icmp eq i32 %.0, 10
  br i1 %i.cnz, label %.loopexit.loopexit52.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %.thread69.i.i, %.thread70.i.i
  br label %.loopexit.loopexit52.i.i

.loopexit.loopexit52.i.i:                         ; preds = %bb.du, %bb.dt
  %i.coa = phi i32 [ -5636096, %bb.du ], [ -1978629889, %bb.dt ]
  %i.cob = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.coa, ptr %i.cob, align 4, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i: ; preds = %.loopexit.loopexit52.i.i, %.preheader.preheader.i.i
  %i.coc = phi i32 [ -1717986919, %.preheader.preheader.i.i ], [ %i.cnt, %.loopexit.loopexit52.i.i ]
  %i.cod = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30, !range !33, !noundef !34
  %i.coe = trunc nuw i8 %i.cod to i1
  br i1 %i.coe, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.cof = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.cog = load <3 x float>, ptr %i.cno, align 4
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.coh = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.coi = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !10
  %i.coj = fsub <3 x float> %i.coh, %i.coi        ; 5 uses
  %foldExtExtBinop262 = fmul <3 x float> %i.coj, %i.coj
  %i.cok = extractelement <3 x float> %foldExtExtBinop262, i64 1
  %i.col = extractelement <3 x float> %i.coj, i64 0 ; 2 uses
  %i.com = call float @llvm.fmuladd.f32(float %i.col, float %i.col, float %i.cok)
  %i.con = extractelement <3 x float> %i.coj, i64 2 ; 2 uses
  %i.coo = call float @llvm.fmuladd.f32(float %i.con, float %i.con, float %i.com)
  %sqrt.i.i.i.i111 = call noundef float @llvm.sqrt.f32(float %i.coo)
  %i.cop = fdiv float 1.000000e+00, %sqrt.i.i.i.i111
  %i.coq = insertelement <3 x float> poison, float %i.cop, i64 0
  %i.cor = shufflevector <3 x float> %i.coq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cos = fmul <3 x float> %i.coj, %i.cor
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.cot = phi <3 x float> [ %i.cos, %bb.dw ], [ %i.cog, %bb.dv ] ; 3 uses
  %i.cou = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.cov = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.cow = shufflevector <3 x float> %i.cot, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cox = fmul <4 x float> %i.cow, %i.cov
  %i.coy = shufflevector <3 x float> %i.cot, <3 x float> poison, <4 x i32> zeroinitializer
  %i.coz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.coy, <4 x float> %i.cou, <4 x float> %i.cox)
  %i.cpa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.cpb = shufflevector <3 x float> %i.cot, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cpc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cpb, <4 x float> %i.cpa, <4 x float> %i.coz)
  store <4 x float> %i.cpc, ptr %i.cno, align 4
  %i.cpd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.cpe = fmul float %i.cpd, 6.000000e-02
  store float %i.cpe, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.cpf = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cpg = getelementptr inbounds nuw i8, ptr %36, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %.sroa.02.0.copyload.i.i116 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i117 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i118 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cph = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cpi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cpj = fmul float %.sroa.12.0.copyload.i.i117, %i.cpi
  %i.cpk = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.cph, float %i.cpj)
  %i.cpl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cpm = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cpl, float %i.cpk)
  %i.cpn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cpo = fadd float %i.cpn, %i.cpm
  %i.cpp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cpq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cpr = fmul float %.sroa.12.0.copyload.i.i117, %i.cpq
  %i.cps = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.cpp, float %i.cpr)
  %i.cpt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cpu = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cpt, float %i.cps)
  %i.cpv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cpw = fadd float %i.cpv, %i.cpu
  %i.cpx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cpy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cpz = fmul float %.sroa.12.0.copyload.i.i117, %i.cpy
  %i.cqa = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.cpx, float %i.cpz)
  %i.cqb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cqc = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cqb, float %i.cqa)
  %i.cqd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cqe = fadd float %i.cqd, %i.cqc
  %i.cqf = fdiv float 5.000000e-01, %i.cqe        ; 2 uses
  %i.cqg = fmul float %i.cpo, %i.cqf
  %i.cqh = fmul float %i.cpw, %i.cqf
  %i.cqi = fadd float %i.cqh, 5.000000e-01
  %i.cqj = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cqg, i64 0
  %i.cqk = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cqi, i64 1
  %i.cql = fsub <2 x float> %i.cqj, %i.cqk
  %i.cqm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.cqn = fmul <2 x float> %i.cqm, %i.cql
  %i.cqo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.cqp = fadd <2 x float> %i.cqo, %i.cqn
  store <2 x float> %i.cqp, ptr %38, align 8
  %i.cqq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.cnp, ptr noundef nonnull align 4 dereferenceable(8) %38, float noundef %i.cqq, i32 noundef %i.coc, i32 noundef 64, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.cqr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.cqs = trunc nuw i8 %i.cqr to i1
  br i1 %i.cqs, label %bb.ee, label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.dz:                                            ; preds = %bb.ed, %bb.dx
  %indvars.iv118.i = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next119.i, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %36, i8 0, i64 512, i1 false), !tbaa !10
  %.cmp.i = icmp eq i64 %indvars.iv118.i, 2
  %i.cqt = sub nsw i64 1, %indvars.iv118.i
  %i.cqu = and i64 %i.cqt, 4294967295
  %i.cqv = select i1 %.cmp.i, i64 2, i64 %i.cqu
  %i.cqw = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %i.cqv
  %i.cqx = load float, ptr %i.cqw, align 4
  %i.cqy = sub nuw nsw i64 3, %indvars.iv118.i    ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %i.cqz = select i1 %.cmp113.not.i, i64 0, i64 %i.cqy
  %i.cra = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %i.cqz
  %i.crb = load float, ptr %i.cra, align 4
  %i.crc = call float @atan2f(float noundef %i.cqx, float noundef %i.crb) #19
  %i.crd = fadd float %i.crc, f0x3FC90FDB
  %i.cre = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %i.crf = icmp eq i64 %indvars.iv.next119.i, 3   ; 2 uses
  %i.crg = select i1 %i.crf, i64 0, i64 %indvars.iv.next119.i
  %i.crh = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.crg
  %i.cri = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.crj = add nuw nsw i32 %i.cri, 2
  %i.crk = urem i32 %i.crj, 3
  %i.crl = zext nneg i32 %i.crk to i64
  %i.crm = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.crl
  %65 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.crn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cro = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.crp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.crq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.crr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %i.crs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.crt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cru = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.crv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.crw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.crx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cry = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.crz = fmul float %.sroa.12.0.copyload.i50.i, %i.cry
  %i.csa = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.crx, float %i.crz)
  %i.csb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.csc = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.csb, float %i.csa)
  %i.csd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cse = fadd float %i.csd, %i.csc
  %i.csf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.csg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.csh = fmul float %.sroa.12.0.copyload.i50.i, %i.csg
  %i.csi = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.csf, float %i.csh)
  %i.csj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.csk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.csj, float %i.csi)
  %i.csl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.csm = fadd float %i.csl, %i.csk
  %i.csn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cso = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.csp = fmul float %.sroa.12.0.copyload.i50.i, %i.cso
  %i.csq = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.csn, float %i.csp)
  %i.csr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.css = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.csr, float %i.csq)
  %i.cst = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.csu = fadd float %i.cst, %i.css
  %i.csv = fdiv float 5.000000e-01, %i.csu        ; 2 uses
  %i.csw = fmul float %i.cse, %i.csv
  %i.csx = fmul float %i.csm, %i.csv
  %i.csy = fadd float %i.csw, 5.000000e-01
  %i.csz = fadd float %i.csx, 5.000000e-01
  %i.cta = fsub float 1.000000e+00, %i.csz
  %i.ctb = extractelement <2 x float> %i.crv, i64 0
  %i.ctc = fmul float %i.ctb, %i.csy
  %i.ctd = extractelement <2 x float> %i.crv, i64 1
  %i.cte = fmul float %i.ctd, %i.cta
  %i.ctf = extractelement <2 x float> %i.crw, i64 0
  %i.ctg = fadd float %i.ctf, %i.ctc
  %i.cth = extractelement <2 x float> %i.crw, i64 1
  %i.cti = fadd float %i.cth, %i.cte
  %.val44.i = load float, ptr %36, align 16, !tbaa !76
  %.val45.i = load float, ptr %i.cpg, align 4, !tbaa !77
  %i.ctj = fsub float %i.ctg, %.val44.i           ; 2 uses
  %i.ctk = fsub float %i.cti, %.val45.i           ; 2 uses
  %i.ctl = fmul float %i.ctk, %i.ctk
  %i.ctm = call noundef float @llvm.fmuladd.f32(float %i.ctj, float %i.ctj, float %i.ctl)
  %sqrt.i115 = call float @llvm.sqrt.f32(float %i.ctm) ; 2 uses
  %i.ctn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.cto = fcmp ogt float %sqrt.i115, %i.ctn
  br i1 %i.cto, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i112 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i113, %bb.eb ] ; 3 uses
  %i.ctp = trunc nuw nsw i64 %indvars.iv.i112 to i32
  %i.ctq = uitofp nneg i32 %i.ctp to float
  %i.ctr = fmul nnan float %i.ctq, 1.562500e-02
  %i.cts = call float @llvm.fmuladd.f32(float %i.ctr, float f0x40490FDB, float %i.crd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.ctt = call float @cosf(float noundef %i.cts) #19
  %i.ctu = call float @sinf(float noundef %i.cts) #19
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.ctt, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.ctu, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.cpf, align 8
  %i.ctv = load float, ptr %i.cre, align 4, !tbaa !10
  %i.ctw = load float, ptr %i.crh, align 4, !tbaa !10
  %i.ctx = load float, ptr %i.crm, align 4, !tbaa !10
  %66 = fmul float %65, %i.ctw                    ; 2 uses
  %67 = fmul float %65, %i.ctv                    ; 2 uses
  %68 = fmul float %65, %i.ctx                    ; 2 uses
  %69 = insertelement <2 x float> poison, float %66, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cty = fmul <2 x float> %i.cro, %70
  %71 = insertelement <2 x float> poison, float %67, i64 0
  %i.ctz = shufflevector <2 x float> %71, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cua = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctz, <2 x float> %i.crn, <2 x float> %i.cty)
  %72 = insertelement <2 x float> poison, float %68, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> %i.crp, <2 x float> %i.cua)
  %75 = fadd <2 x float> %i.crq, %74
  %76 = fmul float %i.crs, %66
  %77 = call float @llvm.fmuladd.f32(float %67, float %i.crr, float %76)
  %i.cub = call float @llvm.fmuladd.f32(float %68, float %i.crt, float %77)
  %i.cuc = fadd float %i.cru, %i.cub
  %i.cud = fdiv float 5.000000e-01, %i.cuc
  %i.cue = insertelement <2 x float> poison, float %i.cud, i64 0
  %i.cuf = shufflevector <2 x float> %i.cue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cug = fmul <2 x float> %75, %i.cuf           ; 2 uses
  %i.cuh = extractelement <2 x float> %i.cug, i64 1
  %i.cui = fadd float %i.cuh, 5.000000e-01
  %i.cuj = insertelement <2 x float> %i.cug, float 1.000000e+00, i64 1
  %i.cuk = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cui, i64 1
  %i.cul = fsub <2 x float> %i.cuj, %i.cuk
  %i.cum = fmul <2 x float> %i.crv, %i.cul
  %i.cun = fadd <2 x float> %i.crw, %i.cum
  %i.cuo = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i112
  store <2 x float> %i.cun, ptr %i.cuo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, 64
  br i1 %exitcond.not.i114, label %bb.ea, label %bb.eb, !llvm.loop !64

bb.ec:                                            ; preds = %bb.ea
  store float %sqrt.i115, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.cup = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cqy
  %i.cuq = load i32, ptr %i.cup, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cnp, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.cuq, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %i.crf, label %bb.dy, label %bb.dz, !llvm.loop !65

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !10
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cur = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.cus = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.cut = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.cuu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.cuv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.cuw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.cux = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.cuy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 3 uses
  %i.cuz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10
  %i.cva = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 2 uses
  %i.cvb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cvc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cvd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10 ; 5 uses
  %i.cve = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 2 uses
  %i.cvf = shufflevector <2 x float> %i.cvd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cvg = insertelement <2 x float> %i.cvf, float %.sroa.12.0.copyload.i75.i, i64 1
  %i.cvh = shufflevector <2 x float> %i.cvg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cvi = shufflevector <2 x float> %i.cvd, <2 x float> %i.cve, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.cvj = insertelement <4 x float> %i.cvi, float %i.cut, i64 3
  %i.cvk = fmul <4 x float> %i.cvh, %i.cvj
  %i.cvl = shufflevector <2 x float> %i.cvd, <2 x float> %i.cuz, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cvm = shufflevector <2 x float> %i.cvb, <2 x float> %i.cva, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 2 uses
  %i.cvn = shufflevector <2 x float> %i.cvd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cvo = shufflevector <4 x float> %i.cvn, <4 x float> %i.cvm, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.cvp = insertelement <4 x float> %i.cvo, float %i.cvc, i64 2
  %i.cvq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvl, <4 x float> %i.cvp, <4 x float> %i.cvk) ; 3 uses
  %i.cvr = extractelement <4 x float> %i.cvq, i64 0
  %i.cvs = call noundef float @llvm.fmuladd.f32(float %i.cuy, float %i.cuy, float %i.cvr) ; 2 uses
  %i.cvt = fcmp olt float %i.cvs, f0x34000000
  %i.cvu = extractelement <4 x float> %i.cvq, i64 3
  %i.cvv = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i76.i, float %i.cuu, float %i.cvu)
  %i.cvw = fadd float %i.cuv, %i.cvv
  %i.cvx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !10 ; 3 uses
  %.sroa.8.0.copyload.i121 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !10 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !10 ; 3 uses
  %i.cvy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cvz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %sqrt.i.i122 = call float @llvm.sqrt.f32(float %i.cvs)
  %i.cwa = insertelement <2 x float> poison, float %i.cvw, i64 0
  %i.cwb = insertelement <2 x float> %i.cwa, float %sqrt.i.i122, i64 1
  %i.cwc = fdiv <2 x float> <float 5.000000e-01, float 1.000000e+00>, %i.cwb ; 3 uses
  %i.cwd = insertelement <2 x float> %i.cvd, float %i.cuy, i64 1
  %i.cwe = shufflevector <2 x float> %i.cwc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cwf = fmul <2 x float> %i.cwd, %i.cwe        ; 6 uses
  %i.cwg = fmul <2 x float> %i.cwf, %i.cwf
  %i.cwh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4
  %i.cwi = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.sroa.22.0.copyload.i76.i, i64 0
  %i.cwj = shufflevector <4 x float> %i.cwi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cwk = shufflevector <2 x float> %i.cur, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cwl = shufflevector <4 x float> %i.cwk, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cwm = shufflevector <4 x float> %i.cvq, <4 x float> %i.cwh, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.cwn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cwj, <4 x float> %i.cwl, <4 x float> %i.cwm) ; 2 uses
  %i.cwo = shufflevector <2 x float> %i.cus, <2 x float> %i.cwc, <4 x i32> <i32 0, i32 1, i32 3, i32 3> ; 2 uses
  %i.cwp = fadd <4 x float> %i.cwo, %i.cwn
  %i.cwq = fmul <4 x float> %i.cwo, %i.cwn        ; 3 uses
  %i.cwr = shufflevector <4 x float> %i.cwp, <4 x float> %i.cwq, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cws = shufflevector <2 x float> %i.cwc, <2 x float> %i.cwf, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.cwt = shufflevector <4 x float> %i.cws, <4 x float> %i.cwr, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.cwu = fmul <4 x float> %i.cwt, %i.cwr        ; 4 uses
  %i.cwv = extractelement <4 x float> %i.cwu, i64 1
  %i.cww = fadd float %i.cwv, 5.000000e-01
  %i.cwx = shufflevector <4 x float> %i.cwu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cwy = insertelement <2 x float> %i.cwx, float 1.000000e+00, i64 1
  %i.cwz = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cww, i64 1
  %i.cxa = fsub <2 x float> %i.cwy, %i.cwz
  %i.cxb = fmul <2 x float> %i.cuw, %i.cxa
  %i.cxc = fadd <2 x float> %i.cux, %i.cxb
  store <2 x float> %i.cxc, ptr %39, align 16
  %i.cxd = shufflevector <4 x float> %i.cwq, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cxe = shufflevector <2 x float> %i.cwf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cxf = extractelement <2 x float> %i.cvx, i64 0 ; 2 uses
  %i.cxg = shufflevector <2 x float> %i.cvx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cxh = shufflevector <2 x float> %i.cva, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cxi = shufflevector <2 x float> %i.cwf, <2 x float> %i.cxd, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cxj = shufflevector <2 x float> %i.cwf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cxk = fmul <4 x float> %i.cxi, %i.cxj        ; 2 uses
  %i.cxl = shufflevector <2 x float> %i.cve, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.cxm = extractelement <4 x float> %i.cwu, i64 2
  %i.cxn = shufflevector <4 x float> %i.cwq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cxo = shufflevector <4 x float> %i.cxn, <4 x float> %i.cxe, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cxp = shufflevector <4 x float> %i.cxo, <4 x float> %i.cwu, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.cxq = shufflevector <4 x float> %i.cxp, <4 x float> %i.cxk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cxr = shufflevector <4 x float> %i.cxk, <4 x float> %i.cxe, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.cxs = shufflevector <2 x float> %i.cvx, <2 x float> %i.cuz, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cxt = insertelement <4 x float> %i.cxl, float %i.cut, i64 3
  %i.cxu = shufflevector <4 x float> %i.cxt, <4 x float> %i.cxg, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.cxv = shufflevector <4 x float> %i.cxu, <4 x float> %i.cxh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.cnp, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cnp, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.cxw = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.cxx = sext i32 %.0 to i64
  %i.cxy = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.cxx
  %i.cxz = getelementptr i8, ptr %i.cxy, i64 -64
  %i.cya = load ptr, ptr %i.cxz, align 8, !tbaa !78
  %i.cyb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !73 ; 2 uses
  %i.cyc = fdiv float %i.cyb, f0x40490FDB
  %i.cyd = fmul float %i.cyc, 1.800000e+02
  %i.cye = fpext float %i.cyd to double
  %i.cyf = fpext float %i.cyb to double
  %i.cyg = load <2 x float>, ptr %i.cxw, align 8, !tbaa !10 ; 2 uses
  %i.cyh = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.cya, double noundef %i.cye, double noundef %i.cyf) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.cyi = fadd <2 x float> %i.cyg, splat (float 1.500000e+01)
  store <2 x float> %i.cyi, ptr %40, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cnp, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.cyj = fadd <2 x float> %i.cyg, splat (float 1.400000e+01)
  store <2 x float> %i.cyj, ptr %41, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cnp, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, %bb.ee
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ] ; 3 uses
  br i1 %i.cvt, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.cyk = trunc i64 %indvars.iv123.i to i32
  %i.cyl = add i32 %i.cyk, -1
  %i.cym = uitofp i32 %i.cyl to float
  %i.cyn = fdiv nnan float %i.cym, 6.300000e+01
  %i.cyo = fmul float %i.cvz, %i.cyn              ; 2 uses
  %i.cyp = call float @sinf(float noundef %i.cyo) #19
  %i.cyq = call float @cosf(float noundef %i.cyo) #19 ; 3 uses
  %i.cyr = fsub float 1.000000e+00, %i.cyq        ; 3 uses
  %i.cys = call float @llvm.fmuladd.f32(float %i.cxm, float %i.cyr, float %i.cyq)
  %i.cyt = insertelement <2 x float> poison, float %i.cyr, i64 0
  %i.cyu = shufflevector <2 x float> %i.cyt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyv = insertelement <2 x float> poison, float %i.cyq, i64 0
  %i.cyw = shufflevector <2 x float> %i.cyv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cwg, <2 x float> %i.cyu, <2 x float> %i.cyw)
  %i.cyy = insertelement <4 x float> poison, float %i.cyp, i64 0
  %i.cyz = insertelement <4 x float> %i.cyy, float %i.cyr, i64 1 ; 2 uses
  %i.cza = shufflevector <4 x float> %i.cyz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.czb = fmul <4 x float> %i.cxq, %i.cza        ; 4 uses
  %i.czc = shufflevector <4 x float> %i.cyz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.czd = fmul <4 x float> %i.cxr, %i.czc        ; 4 uses
  %foldExtExtBinop264 = fsub <4 x float> %i.czd, %i.czb
  %i.cze = extractelement <4 x float> %foldExtExtBinop264, i64 0
  %foldExtExtBinop266 = fsub <4 x float> %i.czb, %i.czd
  %i.czf = extractelement <4 x float> %foldExtExtBinop266, i64 2
  %i.czg = fadd <4 x float> %i.czb, %i.czd
  %i.czh = fsub <4 x float> %i.czb, %i.czd
  %i.czi = shufflevector <4 x float> %i.czg, <4 x float> %i.czh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.czj = fmul float %.sroa.8.0.copyload.i121, %i.cys
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123: ; preds = %bb.eh, %bb.eg
  %.sroa.11.0.i = phi float [ %i.czf, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.cze, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink59.i.i125 = phi float [ %i.czj, %bb.eh ], [ %.sroa.8.0.copyload.i121, %bb.eg ]
  %i.czk = phi <4 x float> [ %i.czi, %bb.eh ], [ zeroinitializer, %bb.eg ] ; 4 uses
  %i.czl = phi <2 x float> [ %i.cyx, %bb.eh ], [ splat (float 1.000000e+00), %bb.eg ] ; 2 uses
  %i.czm = fmul float %.sroa.8.0.copyload.i121, %.sroa.11.0.i
  %i.czn = extractelement <2 x float> %i.czl, i64 0
  %i.czo = call float @llvm.fmuladd.f32(float %i.cxf, float %i.czn, float %i.czm)
  %i.czp = extractelement <4 x float> %i.czk, i64 0
  %i.czq = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czp, float %i.czo)
  %i.czr = fadd float %i.czq, 0.000000e+00
  %i.czs = extractelement <4 x float> %i.czk, i64 2
  %i.czt = call float @llvm.fmuladd.f32(float %i.cxf, float %i.czs, float %.sink59.i.i125)
  %i.czu = extractelement <4 x float> %i.czk, i64 3
  %i.czv = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czu, float %i.czt)
end_hunk_0
