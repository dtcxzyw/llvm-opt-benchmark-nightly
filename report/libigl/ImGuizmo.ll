Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a

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
  %i.cub = sub nsw i64 1, %indvars.iv118.i
  %i.cuc = and i64 %i.cub, 4294967295
  %i.cud = select i1 %.cmp.i, i64 2, i64 %i.cuc
  %i.cue = getelementptr inbounds nuw [4 x i8], ptr %i.cqr, i64 %i.cud
  %i.cuf = load float, ptr %i.cue, align 4
  %i.cug = sub nuw nsw i64 3, %indvars.iv118.i    ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %i.cuh = select i1 %.cmp113.not.i, i64 0, i64 %i.cug
  %i.cui = getelementptr inbounds nuw [4 x i8], ptr %i.cqr, i64 %i.cuh
  %i.cuj = load float, ptr %i.cui, align 4
  %i.cuk = call float @atan2f(float noundef %i.cuf, float noundef %i.cuj) #19
  %i.cul = fadd float %i.cuk, f0x3FC90FDB
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %i.cun = icmp eq i64 %indvars.iv.next119.i, 3   ; 2 uses
  %i.cuo = select i1 %i.cun, i64 0, i64 %indvars.iv.next119.i
  %i.cup = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cuo
  %i.cuq = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.cur = add nuw nsw i32 %i.cuq, 2
  %i.cus = urem i32 %i.cur, 3
  %i.cut = zext nneg i32 %i.cus to i64
  %i.cuu = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cut
  %i.cuv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !48 ; 3 uses
  %i.cuw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 3 uses
  %i.cux = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 3 uses
  %i.cuy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cuz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cva = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.cvb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.cvc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cvd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cve = fmul float %.sroa.12.0.copyload.i50.i, %i.cvd
  %i.cvf = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvc, float %i.cve)
  %i.cvg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cvh = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvg, float %i.cvf)
  %i.cvi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cvj = fadd float %i.cvi, %i.cvh
  %i.cvk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cvl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cvm = fmul float %.sroa.12.0.copyload.i50.i, %i.cvl
  %i.cvn = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvk, float %i.cvm)
  %i.cvo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cvp = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvo, float %i.cvn)
  %i.cvq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cvr = fadd float %i.cvq, %i.cvp
  %i.cvs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cvt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cvu = fmul float %.sroa.12.0.copyload.i50.i, %i.cvt
  %i.cvv = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvs, float %i.cvu)
  %i.cvw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cvx = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvw, float %i.cvv)
  %i.cvy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cvz = fadd float %i.cvy, %i.cvx
  %i.cwa = fdiv float 5.000000e-01, %i.cvz        ; 2 uses
  %i.cwb = fmul float %i.cvj, %i.cwa
  %i.cwc = fmul float %i.cvr, %i.cwa
  %i.cwd = fadd float %i.cwb, 5.000000e-01
  %i.cwe = fadd float %i.cwc, 5.000000e-01
  %i.cwf = fsub float 1.000000e+00, %i.cwe
  %i.cwg = extractelement <2 x float> %i.cuw, i64 0
  %i.cwh = fmul float %i.cwg, %i.cwd
  %i.cwi = extractelement <2 x float> %i.cuw, i64 1
  %i.cwj = fmul float %i.cwi, %i.cwf
  %i.cwk = extractelement <2 x float> %i.cux, i64 0
  %i.cwl = fadd float %i.cwk, %i.cwh
  %i.cwm = extractelement <2 x float> %i.cux, i64 1
  %i.cwn = fadd float %i.cwm, %i.cwj
  %.val44.i = load float, ptr %36, align 16, !tbaa !67
  %.val45.i = load float, ptr %i.cso, align 4, !tbaa !68
  %i.cwo = fsub float %i.cwl, %.val44.i           ; 2 uses
  %i.cwp = fsub float %i.cwn, %.val45.i           ; 2 uses
  %i.cwq = fmul float %i.cwp, %i.cwp
  %i.cwr = call noundef float @llvm.fmuladd.f32(float %i.cwo, float %i.cwo, float %i.cwq)
  %sqrt.i115 = call float @llvm.sqrt.f32(float %i.cwr) ; 2 uses
  %i.cws = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  %i.cwt = fcmp ogt float %sqrt.i115, %i.cws
  br i1 %i.cwt, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i112 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i113, %bb.eb ] ; 3 uses
  %i.cwu = trunc nuw nsw i64 %indvars.iv.i112 to i32
  %i.cwv = uitofp nneg i32 %i.cwu to float
  %i.cww = fmul nnan float %i.cwv, 1.562500e-02
  %i.cwx = call float @llvm.fmuladd.f32(float %i.cww, float f0x40490FDB, float %i.cul) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.cwy = call float @cosf(float noundef %i.cwx) #19
  %i.cwz = call float @sinf(float noundef %i.cwx) #19
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.cwy, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.cwz, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.csn, align 8
  %i.cxa = load float, ptr %i.cum, align 4, !tbaa !9
  %i.cxb = load float, ptr %i.cup, align 4, !tbaa !9
  %i.cxc = load float, ptr %i.cuu, align 4, !tbaa !9
  %i.cxd = fmul float %i.cuv, %i.cxa              ; 2 uses
  %i.cxe = fmul float %i.cuv, %i.cxb              ; 2 uses
  %i.cxf = fmul float %i.cuv, %i.cxc              ; 2 uses
  %65 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %66 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cxg = fmul float %i.cxe, %66
  %i.cxh = call float @llvm.fmuladd.f32(float %i.cxd, float %65, float %i.cxg)
  %67 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cxi = call float @llvm.fmuladd.f32(float %i.cxf, float %67, float %i.cxh)
  %68 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.cxj = fadd float %68, %i.cxi
  %i.cxk = fdiv float 5.000000e-01, %i.cxj
  %i.cxl = insertelement <2 x float> poison, float %i.cxe, i64 0
  %i.cxm = shufflevector <2 x float> %i.cxl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxn = fmul <2 x float> %i.cxm, %i.cuz
  %i.cxo = insertelement <2 x float> poison, float %i.cxd, i64 0
  %i.cxp = shufflevector <2 x float> %i.cxo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxp, <2 x float> %i.cuy, <2 x float> %i.cxn)
  %i.cxr = insertelement <2 x float> poison, float %i.cxf, i64 0
  %i.cxs = shufflevector <2 x float> %i.cxr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxs, <2 x float> %i.cva, <2 x float> %i.cxq)
  %i.cxu = fadd <2 x float> %i.cvb, %i.cxt
  %i.cxv = insertelement <2 x float> poison, float %i.cxk, i64 0
  %i.cxw = shufflevector <2 x float> %i.cxv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxx = fmul <2 x float> %i.cxu, %i.cxw        ; 2 uses
  %i.cxy = extractelement <2 x float> %i.cxx, i64 1
  %i.cxz = fadd float %i.cxy, 5.000000e-01
  %i.cya = insertelement <2 x float> %i.cxx, float 1.000000e+00, i64 1
  %i.cyb = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cxz, i64 1
  %i.cyc = fsub <2 x float> %i.cya, %i.cyb
  %i.cyd = fmul <2 x float> %i.cuw, %i.cyc
  %i.cye = fadd <2 x float> %i.cux, %i.cyd
  %i.cyf = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i112
  store <2 x float> %i.cye, ptr %i.cyf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, 64
  br i1 %exitcond.not.i114, label %bb.ea, label %bb.eb, !llvm.loop !72

bb.ec:                                            ; preds = %bb.ea
  store float %sqrt.i115, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !54
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cug
  %i.cyh = load i32, ptr %i.cyg, align 4, !tbaa !65
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqs, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.cyh, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %i.cun, label %bb.dy, label %bb.dz, !llvm.loop !73

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !9
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.cyi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 2 uses
  %i.cyj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.cyk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.cyl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.cym = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.cyn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.cyo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 2 uses
  %i.cyp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 2 uses
  %i.cyq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 3 uses
  %i.cyr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16 ; 2 uses
  %i.cys = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cyt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 3 uses
  %i.cyu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cyv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !9 ; 5 uses
  %i.cyw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9
  %69 = shufflevector <2 x float> %i.cyv, <2 x float> %i.cyw, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %70 = shufflevector <2 x float> %i.cyv, <2 x float> %i.cyt, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %71 = insertelement <4 x float> %70, float %i.cyi, i64 2
  %i.cyx = insertelement <4 x float> %71, float %i.cyl, i64 3
  %i.cyy = fmul <4 x float> %69, %i.cyx
  %i.cyz = shufflevector <2 x float> %i.cyv, <2 x float> %i.cyw, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %72 = shufflevector <2 x float> %i.cyv, <2 x float> %i.cyr, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cza = shufflevector <2 x float> %i.cyt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <4 x float> %72, <4 x float> %i.cza, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.czb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cyz, <4 x float> %73, <4 x float> %i.cyy) ; 3 uses
  %i.czc = extractelement <4 x float> %i.czb, i64 0
  %i.czd = call noundef float @llvm.fmuladd.f32(float %i.cyq, float %i.cyq, float %i.czc) ; 2 uses
  %i.cze = fcmp olt float %i.czd, f0x34000000
  %i.czf = extractelement <4 x float> %i.czb, i64 3
  %i.czg = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i76.i, float %i.cym, float %i.czf)
  %i.czh = fadd float %i.cyn, %i.czg
  %.sroa.8.0.copyload.i121 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !9 ; 4 uses
  %.sroa.092.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !9 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !9 ; 3 uses
  %i.czi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !48 ; 3 uses
  %i.czj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %sqrt.i.i122 = call float @llvm.sqrt.f32(float %i.czd)
  %i.czk = insertelement <2 x float> poison, float %i.czh, i64 0
  %i.czl = insertelement <2 x float> %i.czk, float %sqrt.i.i122, i64 1
  %i.czm = fdiv <2 x float> <float 5.000000e-01, float 1.000000e+00>, %i.czl ; 3 uses
  %i.czn = insertelement <2 x float> %i.cyv, float %i.cyq, i64 1
  %i.czo = shufflevector <2 x float> %i.czm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.czp = fmul <2 x float> %i.czn, %i.czo        ; 6 uses
  %i.czq = fmul <2 x float> %i.czp, %i.czp
  %i.czr = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4
  %i.czs = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.sroa.22.0.copyload.i76.i, i64 0
  %i.czt = shufflevector <4 x float> %i.czs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.czu = shufflevector <2 x float> %i.cyj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.czv = shufflevector <4 x float> %i.czu, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.czw = shufflevector <4 x float> %i.czb, <4 x float> %i.czr, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.czx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.czt, <4 x float> %i.czv, <4 x float> %i.czw) ; 2 uses
  %i.czy = shufflevector <2 x float> %i.cyk, <2 x float> %i.czm, <4 x i32> <i32 0, i32 1, i32 3, i32 3> ; 2 uses
  %i.czz = fadd <4 x float> %i.czy, %i.czx
  %i.daa = fmul <4 x float> %i.czy, %i.czx        ; 3 uses
  %i.dab = shufflevector <4 x float> %i.czz, <4 x float> %i.daa, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.dac = shufflevector <2 x float> %i.czm, <2 x float> %i.czp, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.dad = shufflevector <4 x float> %i.dac, <4 x float> %i.dab, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.dae = fmul <4 x float> %i.dad, %i.dab        ; 4 uses
  %i.daf = extractelement <4 x float> %i.dae, i64 1
  %i.dag = fadd float %i.daf, 5.000000e-01
  %i.dah = shufflevector <4 x float> %i.dae, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dai = insertelement <2 x float> %i.dah, float 1.000000e+00, i64 1
  %i.daj = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dag, i64 1
  %i.dak = fsub <2 x float> %i.dai, %i.daj
  %i.dal = fmul <2 x float> %i.cyo, %i.dak
  %i.dam = fadd <2 x float> %i.cyp, %i.dal
  store <2 x float> %i.dam, ptr %39, align 16
  %i.dan = shufflevector <4 x float> %i.daa, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %74 = extractelement <2 x float> %i.cyr, i64 0
  %i.dao = extractelement <2 x float> %i.cyt, i64 0
  %75 = shufflevector <2 x float> %i.czp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %76 = insertelement <4 x float> poison, float %.sroa.092.0.copyload.i, i64 0
  %77 = insertelement <4 x float> poison, float %.sroa.8.0.copyload.i121, i64 0
  %i.dap = shufflevector <2 x float> %i.czp, <2 x float> %i.dan, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.daq = shufflevector <2 x float> %i.czp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.dar = fmul <4 x float> %i.dap, %i.daq        ; 2 uses
  %78 = extractelement <2 x float> %i.cyw, i64 0
  %i.das = extractelement <4 x float> %i.dae, i64 2
  %i.dat = shufflevector <4 x float> %i.daa, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dau = shufflevector <4 x float> %i.dat, <4 x float> %75, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dav = shufflevector <4 x float> %i.dau, <4 x float> %i.dae, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.daw = shufflevector <4 x float> %i.dav, <4 x float> %i.dar, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dax = shufflevector <4 x float> %i.dar, <4 x float> %75, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %79 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4
  %80 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.cqs, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqs, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.day = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.daz = sext i32 %.0 to i64
  %i.dba = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.daz
  %i.dbb = getelementptr i8, ptr %i.dba, i64 -64
  %i.dbc = load ptr, ptr %i.dbb, align 8, !tbaa !74
  %i.dbd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !62 ; 2 uses
  %i.dbe = fdiv float %i.dbd, f0x40490FDB
  %i.dbf = fmul float %i.dbe, 1.800000e+02
  %i.dbg = fpext float %i.dbf to double
  %i.dbh = fpext float %i.dbd to double
  %i.dbi = load <2 x float>, ptr %i.day, align 8, !tbaa !9 ; 2 uses
  %i.dbj = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.dbc, double noundef %i.dbg, double noundef %i.dbh) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.dbk = fadd <2 x float> %i.dbi, splat (float 1.500000e+01)
  store <2 x float> %i.dbk, ptr %40, align 8, !tbaa !9
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cqs, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.dbl = fadd <2 x float> %i.dbi, splat (float 1.400000e+01)
  store <2 x float> %i.dbl, ptr %41, align 8, !tbaa !9
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cqs, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, %bb.ee
  %81 = phi float [ %i.cyn, %bb.ee ], [ %91, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %82 = phi float [ %i.cym, %bb.ee ], [ %92, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %83 = phi float [ %i.cyl, %bb.ee ], [ %93, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %84 = phi float [ %i.dao, %bb.ee ], [ %94, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %85 = phi float [ %i.cyi, %bb.ee ], [ %95, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %86 = phi float [ %i.cys, %bb.ee ], [ %96, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %87 = phi float [ %i.cyu, %bb.ee ], [ %97, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %88 = phi float [ %74, %bb.ee ], [ %98, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ] ; 3 uses
  %89 = phi <2 x float> [ %i.cyk, %bb.ee ], [ %99, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  %90 = phi <2 x float> [ %i.cyj, %bb.ee ], [ %100, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ]
  br i1 %i.cze, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.dbm = trunc i64 %indvars.iv123.i to i32
  %i.dbn = add i32 %i.dbm, -1
  %i.dbo = uitofp i32 %i.dbn to float
  %i.dbp = fdiv nnan float %i.dbo, 6.300000e+01
  %i.dbq = fmul float %i.czj, %i.dbp              ; 2 uses
  %i.dbr = call float @sinf(float noundef %i.dbq) #19
  %i.dbs = call float @cosf(float noundef %i.dbq) #19 ; 3 uses
  %i.dbt = fsub float 1.000000e+00, %i.dbs        ; 3 uses
  %i.dbu = call float @llvm.fmuladd.f32(float %i.das, float %i.dbt, float %i.dbs)
  %i.dbv = insertelement <2 x float> poison, float %i.dbt, i64 0
  %i.dbw = shufflevector <2 x float> %i.dbv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dbx = insertelement <2 x float> poison, float %i.dbs, i64 0
  %i.dby = shufflevector <2 x float> %i.dbx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dbz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.czq, <2 x float> %i.dbw, <2 x float> %i.dby)
  %i.dca = insertelement <4 x float> poison, float %i.dbr, i64 0
  %i.dcb = insertelement <4 x float> %i.dca, float %i.dbt, i64 1 ; 2 uses
  %i.dcc = shufflevector <4 x float> %i.dcb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dcd = fmul <4 x float> %i.daw, %i.dcc        ; 4 uses
  %i.dce = shufflevector <4 x float> %i.dcb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.dcf = fmul <4 x float> %i.dax, %i.dce        ; 4 uses
  %foldExtExtBinop257 = fsub <4 x float> %i.dcf, %i.dcd
  %i.dcg = extractelement <4 x float> %foldExtExtBinop257, i64 0
  %foldExtExtBinop259 = fsub <4 x float> %i.dcd, %i.dcf
  %i.dch = extractelement <4 x float> %foldExtExtBinop259, i64 2
  %i.dci = fadd <4 x float> %i.dcd, %i.dcf
  %i.dcj = fsub <4 x float> %i.dcd, %i.dcf
  %i.dck = shufflevector <4 x float> %i.dci, <4 x float> %i.dcj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dcl = fmul float %.sroa.8.0.copyload.i121, %i.dbu
  %.pre131.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %.pre134.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %.pre130.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %.pre135.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %.pre138.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %.pre139.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %.pre140.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %.pre141.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123: ; preds = %bb.eh, %bb.eg
  %91 = phi float [ %.pre141.i, %bb.eh ], [ %81, %bb.eg ] ; 2 uses
  %92 = phi float [ %.pre140.i, %bb.eh ], [ %82, %bb.eg ] ; 2 uses
  %93 = phi float [ %.pre139.i, %bb.eh ], [ %83, %bb.eg ] ; 2 uses
  %94 = phi float [ %.pre138.i, %bb.eh ], [ %84, %bb.eg ] ; 2 uses
  %95 = phi float [ %.pre135.i, %bb.eh ], [ %85, %bb.eg ] ; 2 uses
  %96 = phi float [ %.pre134.i, %bb.eh ], [ %86, %bb.eg ] ; 2 uses
  %97 = phi float [ %.pre131.i, %bb.eh ], [ %87, %bb.eg ] ; 2 uses
  %98 = phi float [ %.pre130.i, %bb.eh ], [ %88, %bb.eg ] ; 2 uses
  %.sroa.11.0.i = phi float [ %i.dch, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.dcg, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink59.i.i125 = phi float [ %i.dcl, %bb.eh ], [ %.sroa.8.0.copyload.i121, %bb.eg ]
  %i.dcm = phi <4 x float> [ %i.dck, %bb.eh ], [ zeroinitializer, %bb.eg ] ; 4 uses
  %i.dcn = phi <2 x float> [ %i.dbz, %bb.eh ], [ splat (float 1.000000e+00), %bb.eg ] ; 2 uses
  %99 = phi <2 x float> [ %80, %bb.eh ], [ %89, %bb.eg ] ; 2 uses
  %100 = phi <2 x float> [ %79, %bb.eh ], [ %90, %bb.eg ] ; 2 uses
  %i.dco = fmul float %.sroa.8.0.copyload.i121, %.sroa.11.0.i
  %i.dcp = extractelement <2 x float> %i.dcn, i64 0
  %i.dcq = call float @llvm.fmuladd.f32(float %.sroa.092.0.copyload.i, float %i.dcp, float %i.dco)
  %i.dcr = extractelement <4 x float> %i.dcm, i64 0
  %i.dcs = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.dcr, float %i.dcq)
  %i.dct = fadd float %i.dcs, 0.000000e+00
  %i.dcu = extractelement <4 x float> %i.dcm, i64 2
  %i.dcv = call float @llvm.fmuladd.f32(float %.sroa.092.0.copyload.i, float %i.dcu, float %.sink59.i.i125)
  %i.dcw = extractelement <4 x float> %i.dcm, i64 3
  %i.dcx = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.dcw, float %i.dcv)
  %i.dcy = fadd float %i.dcx, 0.000000e+00
  %i.dcz = extractelement <2 x float> %i.dcn, i64 1
  %i.dda = fmul float %i.czi, %i.dct
  %i.ddb = fmul float %i.czi, %i.dcy
  %101 = fadd float %78, %i.dda
  %102 = fadd float %.sroa.12.0.copyload.i75.i, %i.ddb
  %103 = insertelement <4 x float> %77, float %97, i64 1
  %104 = insertelement <4 x float> %103, float %95, i64 2
  %105 = insertelement <4 x float> %104, float %93, i64 3
  %i.ddc = shufflevector <4 x float> %i.dcm, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ddd = insertelement <2 x float> %i.ddc, float %102, i64 1
  %106 = shufflevector <2 x float> %i.ddd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %107 = fmul <4 x float> %105, %106
  %108 = insertelement <4 x float> %76, float %101, i64 1
  %i.dde = shufflevector <4 x float> %108, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %109 = insertelement <4 x float> poison, float %.sroa.7.0.i, i64 0
  %110 = insertelement <4 x float> %109, float %98, i64 1
  %111 = insertelement <4 x float> %110, float %96, i64 2
  %i.ddf = insertelement <4 x float> %111, float %94, i64 3
  %i.ddg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dde, <4 x float> %i.ddf, <4 x float> %107) ; 3 uses
  %i.ddh = extractelement <4 x float> %i.ddg, i64 0
  %i.ddi = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.dcz, float %i.ddh)
  %i.ddj = fadd float %i.ddi, 0.000000e+00
  %i.ddk = fmul float %i.czi, %i.ddj
  %i.ddl = fadd float %.sroa.22.0.copyload.i76.i, %i.ddk ; 2 uses
  %i.ddm = extractelement <4 x float> %i.ddg, i64 3
  %i.ddn = call float @llvm.fmuladd.f32(float %i.ddl, float %92, float %i.ddm)
  %i.ddo = fadd float %91, %i.ddn
  %i.ddp = fdiv float 5.000000e-01, %i.ddo
  %i.ddq = insertelement <2 x float> poison, float %i.ddl, i64 0
  %i.ddr = shufflevector <2 x float> %i.ddq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dds = shufflevector <4 x float> %i.ddg, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ddt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ddr, <2 x float> %100, <2 x float> %i.dds)
  %i.ddu = fadd <2 x float> %99, %i.ddt
  %i.ddv = insertelement <2 x float> poison, float %i.ddp, i64 0
  %i.ddw = shufflevector <2 x float> %i.ddv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ddx = fmul <2 x float> %i.ddu, %i.ddw        ; 2 uses
  %i.ddy = extractelement <2 x float> %i.ddx, i64 1
  %i.ddz = fadd float %i.ddy, 5.000000e-01
  %i.dea = insertelement <2 x float> %i.ddx, float 1.000000e+00, i64 1
  %i.deb = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.ddz, i64 1
  %i.dec = fsub <2 x float> %i.dea, %i.deb
  %i.ded = fmul <2 x float> %i.cyo, %i.dec
  %i.dee = fadd <2 x float> %i.cyp, %i.ded
  %i.def = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %indvars.iv123.i
  store <2 x float> %i.dee, ptr %i.def, align 8
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 64
  br i1 %exitcond126.not.i, label %bb.ef, label %bb.eg, !llvm.loop !75

_ZN8ImGuizmoL17DrawRotationGizmoEi.exit:          ; preds = %bb.dy, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ei:                                            ; preds = %bb.dp
  %i.deg = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !33 ; 11 uses
  %.not.i130 = icmp eq ptr %i.deg, null
  br i1 %.not.i130, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.deh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !56, !range !35, !noundef !36
  %i.dei = trunc nuw i8 %i.deh to i1
  br i1 %i.dei, label %bb.ek, label %.preheader.preheader.i.i131

.preheader.preheader.i.i131:                      ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 -103, i64 28, i1 false), !tbaa !65
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132

bb.ek:                                            ; preds = %bb.ej
  %i.dej = icmp eq i32 %.0, 7                     ; 2 uses
  %i.dek = select i1 %i.dej, i32 -1978629889, i32 -1
  store i32 %i.dek, ptr %i.e, align 16, !tbaa !65
  br i1 %i.dej, label %.loopexit.loopexit.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.ek
  %i.del = icmp eq i32 %.0, 1
  %i.dem = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.del, label %.split.1.thread61.i.i, label %bb.el

.split.1.thread61.i.i:                            ; preds = %.split.preheader.i.i
  store i32 -1978629889, ptr %i.dem, align 4, !tbaa !65
  %i.den = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1627390122, ptr %i.den, align 16, !tbaa !65
  br label %.thread63.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ek
  %i.deo = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dep = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1978629889, ptr %i.dep, align 4, !tbaa !65
  store <4 x i32> <i32 -16777046, i32 -16733696, i32 -5636096, i32 -1978629889>, ptr %i.deo, align 4, !tbaa !65
  %i.deq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 -1978629889, ptr %i.deq, align 8, !tbaa !65
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132

bb.el:                                            ; preds = %.split.preheader.i.i
  store i32 -16777046, ptr %i.dem, align 4, !tbaa !65
  %i.der = icmp eq i32 %.0, 4
  %i.des = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.der, label %.split.1.thread.i.i, label %.split.1.i.i

.split.1.thread.i.i:                              ; preds = %bb.el
  store i32 -1978629889, ptr %i.des, align 16, !tbaa !65
  br label %.thread63.i.i

.split.1.i.i:                                     ; preds = %bb.el
  store i32 1627390122, ptr %i.des, align 16, !tbaa !65
  %i.det = icmp eq i32 %.0, 2
  %i.deu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.det, label %.split.2.thread64.i.i, label %bb.em

.split.2.thread64.i.i:                            ; preds = %.split.1.i.i
  store i32 -1978629889, ptr %i.deu, align 8, !tbaa !65
  br label %.thread67.i.i

.thread63.i.i:                                    ; preds = %.split.1.thread.i.i, %.split.1.thread61.i.i
  %i.dev = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -16733696, ptr %i.dev, align 8, !tbaa !65
  br label %.split.2.i.i

bb.em:                                            ; preds = %.split.1.i.i
  store i32 -16733696, ptr %i.deu, align 8, !tbaa !65
  %i.dew = icmp eq i32 %.0, 5
  br i1 %i.dew, label %.thread67.i.i, label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.em, %.thread63.i.i
  %i.dex = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 1627433472, ptr %i.dex, align 4, !tbaa !65
  %i.dey = icmp eq i32 %.0, 3
  %i.dez = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  br i1 %i.dey, label %.thread65.i.i, label %bb.en

.thread65.i.i:                                    ; preds = %.split.2.i.i
  store i32 -1978629889, ptr %i.dez, align 4, !tbaa !65
  br label %bb.eo

.thread67.i.i:                                    ; preds = %bb.em, %.split.2.thread64.i.i
  %.sink.i.i145 = phi i32 [ 1627433472, %.split.2.thread64.i.i ], [ -1978629889, %bb.em ]
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sink.i.i145, ptr %i.dfa, align 4, !tbaa !65
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 -5636096, ptr %i.dfb, align 4, !tbaa !65
  br label %bb.eo

bb.en:                                            ; preds = %.split.2.i.i
  store i32 -5636096, ptr %i.dez, align 4, !tbaa !65
  %i.dfc = icmp eq i32 %.0, 6
  br i1 %i.dfc, label %.loopexit.loopexit51.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread67.i.i, %.thread65.i.i
  br label %.loopexit.loopexit51.i.i

.loopexit.loopexit51.i.i:                         ; preds = %bb.eo, %bb.en
  %i.dfd = phi i32 [ 1638531072, %bb.eo ], [ -1978629889, %bb.en ]
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.dfd, ptr %i.dfe, align 8, !tbaa !65
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132: ; preds = %.loopexit.loopexit51.i.i, %.loopexit.loopexit.i.i, %.preheader.preheader.i.i131
  %.sroa.02.0.copyload.i.i133 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 3 uses
  %.sroa.12.0.copyload.i.i134 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %.sroa.22.0.copyload.i.i135 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !9 ; 3 uses
  %i.dff = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dfg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.dfh = fmul float %.sroa.12.0.copyload.i.i134, %i.dfg
  %i.dfi = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i133, float %i.dff, float %i.dfh)
  %i.dfj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dfk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i135, float %i.dfj, float %i.dfi)
  %i.dfl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.dfm = fadd float %i.dfl, %i.dfk
  %i.dfn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dfo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dfp = fmul float %.sroa.12.0.copyload.i.i134, %i.dfo
  %i.dfq = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i133, float %i.dfn, float %i.dfp)
  %i.dfr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dfs = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i135, float %i.dfr, float %i.dfq)
  %i.dft = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dfu = fadd float %i.dft, %i.dfs
  %i.dfv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dfw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.dfx = fmul float %.sroa.12.0.copyload.i.i134, %i.dfw
  %i.dfy = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i133, float %i.dfv, float %i.dfx)
  %i.dfz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.dga = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i135, float %i.dfz, float %i.dfy)
  %i.dgb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.dgc = fadd float %i.dgb, %i.dga
  %i.dgd = fdiv float 5.000000e-01, %i.dgc        ; 2 uses
  %i.dge = fmul float %i.dfm, %i.dgd
  %i.dgf = fmul float %i.dfu, %i.dgd
  %i.dgg = fadd float %i.dgf, 5.000000e-01
  %i.dgh = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dge, i64 0
  %i.dgi = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dgg, i64 1
  %i.dgj = fsub <2 x float> %i.dgh, %i.dgi
  %i.dgk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9
  %i.dgl = fmul <2 x float> %i.dgk, %i.dgj
  %i.dgm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9
  %i.dgn = fadd <2 x float> %i.dgm, %i.dgl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.dgo = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dgp = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dgq = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dgr = getelementptr inbounds nuw i8, ptr %27, i64 24
  br label %bb.eq

bb.ep:                                            ; preds = %bb.ev
  %i.dgs = load i32, ptr %i.e, align 16, !tbaa !65
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.deg, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %i.dgs, i32 noundef 32)
  %i.dgt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !34, !range !35, !noundef !36
  %i.dgu = trunc nuw i8 %i.dgt to i1
  br i1 %i.dgu, label %bb.ew, label %bb.ex

bb.eq:                                            ; preds = %bb.ev, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132
  %indvars.iv.i136 = phi i64 [ 0, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132 ], [ %indvars.iv.next.i137, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.dgv = trunc nuw nsw i64 %indvars.iv.i136 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.dgv, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  %i.dgw = load i8, ptr %i.f, align 1, !tbaa !49, !range !35, !noundef !36
  %i.dgx = trunc nuw i8 %i.dgw to i1
  br i1 %i.dgx, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.dgy = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.dgz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.dha = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.dhb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.dhc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.dhd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !9 ; 2 uses
  %i.dhe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
end_hunk_0
