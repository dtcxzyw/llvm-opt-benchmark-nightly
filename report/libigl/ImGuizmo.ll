Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  br i1 %i.cqm, label %bb.dn, label %.thread753.i

.thread753.i:                                     ; preds = %bb.dm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next708.old.i = add nuw nsw i64 %indvars.iv707.i, 1 ; 2 uses
  %exitcond711.not.old.i = icmp eq i64 %indvars.iv.next708.old.i, %wide.trip.count710.i
  br i1 %exitcond711.not.old.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread753.i, %bb.dn
  %indvars.iv707.i.be = phi i64 [ %indvars.iv.next708.old.i, %.thread753.i ], [ %indvars.iv.next708.i, %bb.dn ]
  br label %.backedge, !llvm.loop !71

bb.dn:                                            ; preds = %bb.dm
  %.pre723.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57, !range !35 ; 2 uses
  %i.cqn = trunc nuw i8 %.pre723.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next708.i = add nuw nsw i64 %indvars.iv707.i, 1 ; 2 uses
  %exitcond711.not.i = icmp eq i64 %indvars.iv.next708.i, %wide.trip.count710.i
  %or.cond755.i = select i1 %i.cqn, i1 true, i1 %exitcond711.not.i
  br i1 %or.cond755.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit: ; preds = %.thread753.i, %bb.dn
  %i.cqo = phi i8 [ 0, %.thread753.i ], [ %.pre723.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.do

bb.do:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit
  %i.cqp = phi i8 [ %.pre, %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge ], [ %i.cqo, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit ]
  %i.cqq = trunc nuw i8 %i.cqp to i1
  br i1 %i.cqq, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %2, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit [
    i32 1, label %bb.dq
    i32 0, label %bb.ei
    i32 2, label %bb.ey
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.cqr = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 4 uses
  %i.cqs = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !33 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.cqt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !56, !range !35, !noundef !36
  %i.cqu = trunc nuw i8 %i.cqt to i1
  br i1 %i.cqu, label %bb.dr, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 -103, i64 28, i1 false), !tbaa !65
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.cqv = icmp eq i32 %.0, 11
  %i.cqw = select i1 %i.cqv, i32 -1978629889, i32 -1 ; 2 uses
  store i32 %i.cqw, ptr %i.i, align 16, !tbaa !65
  %i.cqx = icmp eq i32 %.0, 8
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  br i1 %i.cqx, label %.thread70.i.i, label %bb.ds

.thread70.i.i:                                    ; preds = %bb.dr
  store i32 -1978629889, ptr %i.cqy, align 4, !tbaa !65
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -16733696, ptr %i.cqz, align 8, !tbaa !65
  br label %bb.du

bb.ds:                                            ; preds = %bb.dr
  store i32 -16777046, ptr %i.cqy, align 4, !tbaa !65
  %i.cra = icmp eq i32 %.0, 9
  %i.crb = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.cra, label %.thread69.i.i, label %bb.dt

.thread69.i.i:                                    ; preds = %bb.ds
  store i32 -1978629889, ptr %i.crb, align 8, !tbaa !65
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 -16733696, ptr %i.crb, align 8, !tbaa !65
  %i.crc = icmp eq i32 %.0, 10
  br i1 %i.crc, label %.loopexit.loopexit52.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %.thread69.i.i, %.thread70.i.i
  br label %.loopexit.loopexit52.i.i

.loopexit.loopexit52.i.i:                         ; preds = %bb.du, %bb.dt
  %i.crd = phi i32 [ -5636096, %bb.du ], [ -1978629889, %bb.dt ]
  %i.cre = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.crd, ptr %i.cre, align 4, !tbaa !65
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i: ; preds = %.loopexit.loopexit52.i.i, %.preheader.preheader.i.i
  %i.crf = phi i32 [ -1717986919, %.preheader.preheader.i.i ], [ %i.cqw, %.loopexit.loopexit52.i.i ]
  %i.crg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !32, !range !35, !noundef !36
  %i.crh = trunc nuw i8 %i.crg to i1
  br i1 %i.crh, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.cri = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.crj = load <2 x float>, ptr %i.cqr, align 4
  %.phi.trans.insert128.i = getelementptr inbounds nuw i8, ptr %35, i64 40
  %.pre129.i = load float, ptr %.phi.trans.insert128.i, align 4
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.crk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9
  %i.crl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !9
  %i.crm = fsub <2 x float> %i.crk, %i.crl        ; 4 uses
  %i.crn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  %i.cro = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 548), align 4, !tbaa !13
  %i.crp = fsub float %i.crn, %i.cro              ; 3 uses
  %foldExtExtBinop255 = fmul <2 x float> %i.crm, %i.crm
  %i.crq = extractelement <2 x float> %foldExtExtBinop255, i64 1
  %i.crr = extractelement <2 x float> %i.crm, i64 0 ; 2 uses
  %i.crs = call float @llvm.fmuladd.f32(float %i.crr, float %i.crr, float %i.crq)
  %i.crt = call float @llvm.fmuladd.f32(float %i.crp, float %i.crp, float %i.crs)
  %sqrt.i.i.i.i111 = call noundef float @llvm.sqrt.f32(float %i.crt)
  %i.cru = fdiv float 1.000000e+00, %sqrt.i.i.i.i111 ; 2 uses
  %i.crv = insertelement <2 x float> poison, float %i.cru, i64 0
  %i.crw = shufflevector <2 x float> %i.crv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.crx = fmul <2 x float> %i.crm, %i.crw
  %i.cry = fmul float %i.crp, %i.cru
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.crz = phi float [ %i.cry, %bb.dw ], [ %.pre129.i, %bb.dv ]
  %i.csa = phi <2 x float> [ %i.crx, %bb.dw ], [ %i.crj, %bb.dv ] ; 2 uses
  %i.csb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.csc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.csd = shufflevector <2 x float> %i.csa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cse = fmul <4 x float> %i.csd, %i.csc
  %i.csf = shufflevector <2 x float> %i.csa, <2 x float> poison, <4 x i32> zeroinitializer
  %i.csg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.csf, <4 x float> %i.csb, <4 x float> %i.cse)
  %i.csh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.csi = insertelement <4 x float> poison, float %i.crz, i64 0
  %i.csj = shufflevector <4 x float> %i.csi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.csk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.csj, <4 x float> %i.csh, <4 x float> %i.csg)
  store <4 x float> %i.csk, ptr %i.cqr, align 4
  %i.csl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !28
  %i.csm = fmul float %i.csl, 6.000000e-02
  store float %i.csm, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  %i.csn = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cso = getelementptr inbounds nuw i8, ptr %36, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %.sroa.02.0.copyload.i.i116 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i.i117 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %.sroa.22.0.copyload.i.i118 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.csp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.csq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.csr = fmul float %.sroa.12.0.copyload.i.i117, %i.csq
  %i.css = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.csp, float %i.csr)
  %i.cst = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.csu = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cst, float %i.css)
  %i.csv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.csw = fadd float %i.csv, %i.csu
  %i.csx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.csy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.csz = fmul float %.sroa.12.0.copyload.i.i117, %i.csy
  %i.cta = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.csx, float %i.csz)
  %i.ctb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.ctc = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.ctb, float %i.cta)
  %i.ctd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cte = fadd float %i.ctd, %i.ctc
  %i.ctf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.ctg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cth = fmul float %.sroa.12.0.copyload.i.i117, %i.ctg
  %i.cti = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.ctf, float %i.cth)
  %i.ctj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.ctk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.ctj, float %i.cti)
  %i.ctl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.ctm = fadd float %i.ctl, %i.ctk
  %i.ctn = fdiv float 5.000000e-01, %i.ctm        ; 2 uses
  %i.cto = fmul float %i.csw, %i.ctn
  %i.ctp = fmul float %i.cte, %i.ctn
  %i.ctq = fadd float %i.ctp, 5.000000e-01
  %i.ctr = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cto, i64 0
  %i.cts = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.ctq, i64 1
  %i.ctt = fsub <2 x float> %i.ctr, %i.cts
  %i.ctu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9
  %i.ctv = fmul <2 x float> %i.ctu, %i.ctt
  %i.ctw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9
  %i.ctx = fadd <2 x float> %i.ctw, %i.ctv
  store <2 x float> %i.ctx, ptr %38, align 8
  %i.cty = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqs, ptr noundef nonnull align 4 dereferenceable(8) %38, float noundef %i.cty, i32 noundef %i.crf, i32 noundef 64, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.ctz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !34, !range !35, !noundef !36
  %i.cua = trunc nuw i8 %i.ctz to i1
  br i1 %i.cua, label %bb.ee, label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.dz:                                            ; preds = %bb.ed, %bb.dx
  %indvars.iv118.i = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next119.i, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %36, i8 0, i64 512, i1 false), !tbaa !9
  %.cmp.i = icmp eq i64 %indvars.iv118.i, 2
  %i.cub = sub nuw nsw i64 1, %indvars.iv118.i
  %i.cuc = select i1 %.cmp.i, i64 2, i64 %i.cub
  %i.cud = getelementptr inbounds nuw [4 x i8], ptr %i.cqr, i64 %i.cuc
  %i.cue = load float, ptr %i.cud, align 4
  %i.cuf = sub nuw nsw i64 3, %indvars.iv118.i    ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %i.cug = select i1 %.cmp113.not.i, i64 0, i64 %i.cuf
  %i.cuh = getelementptr inbounds nuw [4 x i8], ptr %i.cqr, i64 %i.cug
  %i.cui = load float, ptr %i.cuh, align 4
  %i.cuj = call float @atan2f(float noundef %i.cue, float noundef %i.cui) #19
  %i.cuk = fadd float %i.cuj, f0x3FC90FDB
  %i.cul = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %i.cum = icmp eq i64 %indvars.iv.next119.i, 3   ; 2 uses
  %i.cun = select i1 %i.cum, i64 0, i64 %indvars.iv.next119.i
  %i.cuo = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cun
  %i.cup = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.cuq = add nuw nsw i32 %i.cup, 2
  %i.cur = urem i32 %i.cuq, 3
  %i.cus = zext nneg i32 %i.cur to i64
  %i.cut = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cus
  %i.cuu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !48 ; 3 uses
  %i.cuv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 3 uses
  %i.cuw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 3 uses
  %i.cux = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cuy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cuz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.cva = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.cvb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cvc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cvd = fmul float %.sroa.12.0.copyload.i50.i, %i.cvc
  %i.cve = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvb, float %i.cvd)
  %i.cvf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cvg = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvf, float %i.cve)
  %i.cvh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cvi = fadd float %i.cvh, %i.cvg
  %i.cvj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cvk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cvl = fmul float %.sroa.12.0.copyload.i50.i, %i.cvk
  %i.cvm = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvj, float %i.cvl)
  %i.cvn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cvo = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvn, float %i.cvm)
  %i.cvp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cvq = fadd float %i.cvp, %i.cvo
  %i.cvr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cvs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cvt = fmul float %.sroa.12.0.copyload.i50.i, %i.cvs
  %i.cvu = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvr, float %i.cvt)
  %i.cvv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cvw = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvv, float %i.cvu)
  %i.cvx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cvy = fadd float %i.cvx, %i.cvw
  %i.cvz = fdiv float 5.000000e-01, %i.cvy        ; 2 uses
  %i.cwa = fmul float %i.cvi, %i.cvz
  %i.cwb = fmul float %i.cvq, %i.cvz
  %i.cwc = fadd float %i.cwa, 5.000000e-01
  %i.cwd = fadd float %i.cwb, 5.000000e-01
  %i.cwe = fsub float 1.000000e+00, %i.cwd
  %i.cwf = extractelement <2 x float> %i.cuv, i64 0
  %i.cwg = fmul float %i.cwf, %i.cwc
  %i.cwh = extractelement <2 x float> %i.cuv, i64 1
  %i.cwi = fmul float %i.cwh, %i.cwe
  %i.cwj = extractelement <2 x float> %i.cuw, i64 0
  %i.cwk = fadd float %i.cwj, %i.cwg
  %i.cwl = extractelement <2 x float> %i.cuw, i64 1
  %i.cwm = fadd float %i.cwl, %i.cwi
  %.val44.i = load float, ptr %36, align 16, !tbaa !67
  %.val45.i = load float, ptr %i.cso, align 4, !tbaa !68
  %i.cwn = fsub float %i.cwk, %.val44.i           ; 2 uses
  %i.cwo = fsub float %i.cwm, %.val45.i           ; 2 uses
  %i.cwp = fmul float %i.cwo, %i.cwo
  %i.cwq = call noundef float @llvm.fmuladd.f32(float %i.cwn, float %i.cwn, float %i.cwp)
  %sqrt.i115 = call float @llvm.sqrt.f32(float %i.cwq) ; 2 uses
  %i.cwr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  %i.cws = fcmp ogt float %sqrt.i115, %i.cwr
  br i1 %i.cws, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i112 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i113, %bb.eb ] ; 3 uses
  %i.cwt = trunc nuw nsw i64 %indvars.iv.i112 to i32
  %i.cwu = uitofp nneg i32 %i.cwt to float
  %i.cwv = fmul nnan float %i.cwu, 1.562500e-02
  %i.cww = call float @llvm.fmuladd.f32(float %i.cwv, float f0x40490FDB, float %i.cuk) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.cwx = call float @cosf(float noundef %i.cww) #19
  %i.cwy = call float @sinf(float noundef %i.cww) #19
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.cwx, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.cwy, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.csn, align 8
  %i.cwz = load float, ptr %i.cul, align 4, !tbaa !9
  %i.cxa = load float, ptr %i.cuo, align 4, !tbaa !9
  %i.cxb = load float, ptr %i.cut, align 4, !tbaa !9
  %i.cxc = fmul float %i.cuu, %i.cwz              ; 2 uses
  %i.cxd = fmul float %i.cuu, %i.cxa              ; 2 uses
  %i.cxe = fmul float %i.cuu, %i.cxb              ; 2 uses
  %i.cxf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %i.cxg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cxh = fmul float %i.cxd, %i.cxg
  %i.cxi = call float @llvm.fmuladd.f32(float %i.cxc, float %i.cxf, float %i.cxh)
  %i.cxj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cxk = call float @llvm.fmuladd.f32(float %i.cxe, float %i.cxj, float %i.cxi)
  %i.cxl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.cxm = fadd float %i.cxl, %i.cxk
  %i.cxn = fdiv float 5.000000e-01, %i.cxm
  %i.cxo = insertelement <2 x float> poison, float %i.cxd, i64 0
  %i.cxp = shufflevector <2 x float> %i.cxo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxq = fmul <2 x float> %i.cxp, %i.cuy
  %i.cxr = insertelement <2 x float> poison, float %i.cxc, i64 0
  %i.cxs = shufflevector <2 x float> %i.cxr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxs, <2 x float> %i.cux, <2 x float> %i.cxq)
  %i.cxu = insertelement <2 x float> poison, float %i.cxe, i64 0
  %i.cxv = shufflevector <2 x float> %i.cxu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxv, <2 x float> %i.cuz, <2 x float> %i.cxt)
  %i.cxx = fadd <2 x float> %i.cva, %i.cxw
  %i.cxy = insertelement <2 x float> poison, float %i.cxn, i64 0
  %i.cxz = shufflevector <2 x float> %i.cxy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cya = fmul <2 x float> %i.cxx, %i.cxz        ; 2 uses
  %i.cyb = extractelement <2 x float> %i.cya, i64 1
  %i.cyc = fadd float %i.cyb, 5.000000e-01
  %i.cyd = insertelement <2 x float> %i.cya, float 1.000000e+00, i64 1
  %i.cye = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cyc, i64 1
  %i.cyf = fsub <2 x float> %i.cyd, %i.cye
  %i.cyg = fmul <2 x float> %i.cuv, %i.cyf
  %i.cyh = fadd <2 x float> %i.cuw, %i.cyg
  %i.cyi = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i112
  store <2 x float> %i.cyh, ptr %i.cyi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, 64
  br i1 %exitcond.not.i114, label %bb.ea, label %bb.eb, !llvm.loop !72

bb.ec:                                            ; preds = %bb.ea
  store float %sqrt.i115, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.cyj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cuf
  %i.cyk = load i32, ptr %i.cyj, align 4, !tbaa !65
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqs, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.cyk, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %i.cum, label %bb.dy, label %bb.dz, !llvm.loop !73

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !9
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.cyl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 2 uses
  %i.cym = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.cyn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.cyo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.cyp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.cyq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.cyr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 2 uses
  %i.cys = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 2 uses
  %i.cyt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 3 uses
  %i.cyu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16 ; 2 uses
  %i.cyv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cyw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 3 uses
  %i.cyx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cyy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !9 ; 5 uses
  %i.cyz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9
  %i.cza = shufflevector <2 x float> %i.cyy, <2 x float> %i.cyz, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.czb = shufflevector <2 x float> %i.cyy, <2 x float> %i.cyw, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.czc = insertelement <4 x float> %i.czb, float %i.cyl, i64 2
  %i.czd = insertelement <4 x float> %i.czc, float %i.cyo, i64 3
  %i.cze = fmul <4 x float> %i.cza, %i.czd
  %i.czf = shufflevector <2 x float> %i.cyy, <2 x float> %i.cyz, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.czg = shufflevector <2 x float> %i.cyy, <2 x float> %i.cyu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.czh = shufflevector <2 x float> %i.cyw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.czi = shufflevector <4 x float> %i.czg, <4 x float> %i.czh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.czj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.czf, <4 x float> %i.czi, <4 x float> %i.cze) ; 3 uses
  %i.czk = extractelement <4 x float> %i.czj, i64 0
  %i.czl = call noundef float @llvm.fmuladd.f32(float %i.cyt, float %i.cyt, float %i.czk) ; 2 uses
  %i.czm = fcmp olt float %i.czl, f0x34000000
  %i.czn = extractelement <4 x float> %i.czj, i64 3
  %i.czo = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i76.i, float %i.cyp, float %i.czn)
  %i.czp = fadd float %i.cyq, %i.czo
  %.sroa.8.0.copyload.i121 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !9 ; 4 uses
  %.sroa.092.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !9 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !9 ; 3 uses
  %i.czq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !48 ; 3 uses
  %i.czr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %sqrt.i.i122 = call float @llvm.sqrt.f32(float %i.czl)
  %i.czs = insertelement <2 x float> poison, float %i.czp, i64 0
  %i.czt = insertelement <2 x float> %i.czs, float %sqrt.i.i122, i64 1
  %i.czu = fdiv <2 x float> <float 5.000000e-01, float 1.000000e+00>, %i.czt ; 3 uses
  %i.czv = insertelement <2 x float> %i.cyy, float %i.cyt, i64 1
  %i.czw = shufflevector <2 x float> %i.czu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.czx = fmul <2 x float> %i.czv, %i.czw        ; 6 uses
  %i.czy = fmul <2 x float> %i.czx, %i.czx
  %i.czz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4
  %i.daa = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.sroa.22.0.copyload.i76.i, i64 0
  %i.dab = shufflevector <4 x float> %i.daa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dac = shufflevector <2 x float> %i.cym, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_0
