Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %.pre717.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33 ; 2 uses
  %i.cqq = trunc nuw i8 %.pre717.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %indvars.iv.next702.i = add nuw nsw i64 %indvars.iv701.i, 1 ; 2 uses
  %exitcond705.not.i = icmp eq i64 %indvars.iv.next702.i, %wide.trip.count704.i
  %or.cond749.i = select i1 %i.cqq, i1 true, i1 %exitcond705.not.i
  br i1 %or.cond749.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit: ; preds = %.thread747.i, %bb.dn
  %i.cqr = phi i8 [ 0, %.thread747.i ], [ %.pre717.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.do

bb.do:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit
  %i.cqs = phi i8 [ %.pre, %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge ], [ %i.cqr, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit ]
  %i.cqt = trunc nuw i8 %i.cqs to i1
  br i1 %i.cqt, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %2, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit [
    i32 1, label %bb.dq
    i32 0, label %bb.ei
    i32 2, label %bb.ey
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.cqu = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 4 uses
  %i.cqv = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.cqw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.cqx = trunc nuw i8 %i.cqw to i1
  br i1 %i.cqx, label %bb.dr, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.cqy = icmp eq i32 %.0, 11
  %i.cqz = select i1 %i.cqy, i32 -1978629889, i32 -1 ; 2 uses
  store i32 %i.cqz, ptr %i.i, align 16, !tbaa !52
  %i.cra = icmp eq i32 %.0, 8
  %i.crb = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  br i1 %i.cra, label %.thread70.i.i, label %bb.ds

.thread70.i.i:                                    ; preds = %bb.dr
  store i32 -1978629889, ptr %i.crb, align 4, !tbaa !52
  %i.crc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -16733696, ptr %i.crc, align 8, !tbaa !52
  br label %bb.du

bb.ds:                                            ; preds = %bb.dr
  store i32 -16777046, ptr %i.crb, align 4, !tbaa !52
  %i.crd = icmp eq i32 %.0, 9
  %i.cre = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.crd, label %.thread69.i.i, label %bb.dt

.thread69.i.i:                                    ; preds = %bb.ds
  store i32 -1978629889, ptr %i.cre, align 8, !tbaa !52
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 -16733696, ptr %i.cre, align 8, !tbaa !52
  %i.crf = icmp eq i32 %.0, 10
  br i1 %i.crf, label %.loopexit.loopexit52.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %.thread69.i.i, %.thread70.i.i
  br label %.loopexit.loopexit52.i.i

.loopexit.loopexit52.i.i:                         ; preds = %bb.du, %bb.dt
  %i.crg = phi i32 [ -5636096, %bb.du ], [ -1978629889, %bb.dt ]
  %i.crh = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.crg, ptr %i.crh, align 4, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i: ; preds = %.loopexit.loopexit52.i.i, %.preheader.preheader.i.i
  %i.cri = phi i32 [ -1717986919, %.preheader.preheader.i.i ], [ %i.cqz, %.loopexit.loopexit52.i.i ]
  %i.crj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30, !range !33, !noundef !34
  %i.crk = trunc nuw i8 %i.crj to i1
  br i1 %i.crk, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.crl = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %.phi.trans.insert128.i = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.crm = load <2 x float>, ptr %i.cqu, align 4
  %.pre129.i = load float, ptr %.phi.trans.insert128.i, align 4
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.crn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.cro = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !10
  %i.crp = fsub <2 x float> %i.crn, %i.cro        ; 4 uses
  %i.crq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  %i.crr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 548), align 4, !tbaa !13
  %i.crs = fsub float %i.crq, %i.crr              ; 3 uses
  %foldExtExtBinop258 = fmul <2 x float> %i.crp, %i.crp
  %i.crt = extractelement <2 x float> %foldExtExtBinop258, i64 1
  %i.cru = extractelement <2 x float> %i.crp, i64 0 ; 2 uses
  %i.crv = call float @llvm.fmuladd.f32(float %i.cru, float %i.cru, float %i.crt)
  %i.crw = call float @llvm.fmuladd.f32(float %i.crs, float %i.crs, float %i.crv)
  %i.crx = call noundef float @sqrtf(float noundef %i.crw) #20
  %i.cry = fdiv float 1.000000e+00, %i.crx        ; 2 uses
  %i.crz = insertelement <2 x float> poison, float %i.cry, i64 0
  %i.csa = shufflevector <2 x float> %i.crz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csb = fmul <2 x float> %i.crp, %i.csa
  %i.csc = fmul float %i.crs, %i.cry
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.csd = phi float [ %i.csc, %bb.dw ], [ %.pre129.i, %bb.dv ]
  %i.cse = phi <2 x float> [ %i.csb, %bb.dw ], [ %i.crm, %bb.dv ] ; 2 uses
  %i.csf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.csg = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.csh = shufflevector <2 x float> %i.cse, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.csi = fmul <4 x float> %i.csh, %i.csg
  %i.csj = shufflevector <2 x float> %i.cse, <2 x float> poison, <4 x i32> zeroinitializer
  %i.csk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.csj, <4 x float> %i.csf, <4 x float> %i.csi)
  %i.csl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.csm = insertelement <4 x float> poison, float %i.csd, i64 0
  %i.csn = shufflevector <4 x float> %i.csm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cso = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.csn, <4 x float> %i.csl, <4 x float> %i.csk)
  store <4 x float> %i.cso, ptr %i.cqu, align 4
  %i.csp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.csq = fmul float %i.csp, 6.000000e-02
  store float %i.csq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.csr = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.css = getelementptr inbounds nuw i8, ptr %36, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %.sroa.02.0.copyload.i.i99 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i100 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i101 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cst = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.csu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.csv = fmul float %.sroa.12.0.copyload.i.i100, %i.csu
  %i.csw = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i99, float %i.cst, float %i.csv)
  %i.csx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.csy = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i101, float %i.csx, float %i.csw)
  %i.csz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cta = fadd float %i.csz, %i.csy
  %i.ctb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.ctc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.ctd = fmul float %.sroa.12.0.copyload.i.i100, %i.ctc
  %i.cte = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i99, float %i.ctb, float %i.ctd)
  %i.ctf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.ctg = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i101, float %i.ctf, float %i.cte)
  %i.cth = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cti = fadd float %i.cth, %i.ctg
  %i.ctj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.ctk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.ctl = fmul float %.sroa.12.0.copyload.i.i100, %i.ctk
  %i.ctm = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i99, float %i.ctj, float %i.ctl)
  %i.ctn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cto = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i101, float %i.ctn, float %i.ctm)
  %i.ctp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.ctq = fadd float %i.ctp, %i.cto
  %i.ctr = fdiv float 5.000000e-01, %i.ctq        ; 2 uses
  %i.cts = fmul float %i.cta, %i.ctr
  %i.ctt = fmul float %i.cti, %i.ctr
  %i.ctu = fadd float %i.ctt, 5.000000e-01
  %i.ctv = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cts, i64 0
  %i.ctw = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.ctu, i64 1
  %i.ctx = fsub <2 x float> %i.ctv, %i.ctw
  %i.cty = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.ctz = fmul <2 x float> %i.cty, %i.ctx
  %i.cua = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.cub = fadd <2 x float> %i.cua, %i.ctz
  store <2 x float> %i.cub, ptr %38, align 8
  %i.cuc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqv, ptr noundef nonnull align 4 dereferenceable(8) %38, float noundef %i.cuc, i32 noundef %i.cri, i32 noundef 64, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %i.cud = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.cue = trunc nuw i8 %i.cud to i1
  br i1 %i.cue, label %bb.ee, label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.dz:                                            ; preds = %bb.ed, %bb.dx
  %indvars.iv118.i = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next119.i, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %36, i8 0, i64 512, i1 false), !tbaa !10
  %.cmp.i = icmp eq i64 %indvars.iv118.i, 2
  %i.cuf = sub nsw i64 1, %indvars.iv118.i
  %i.cug = and i64 %i.cuf, 4294967295
  %i.cuh = select i1 %.cmp.i, i64 2, i64 %i.cug
  %i.cui = getelementptr inbounds nuw [4 x i8], ptr %i.cqu, i64 %i.cuh
  %i.cuj = load float, ptr %i.cui, align 4
  %i.cuk = sub nuw nsw i64 3, %indvars.iv118.i    ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %i.cul = select i1 %.cmp113.not.i, i64 0, i64 %i.cuk
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %i.cqu, i64 %i.cul
  %i.cun = load float, ptr %i.cum, align 4
  %i.cuo = call float @atan2f(float noundef %i.cuj, float noundef %i.cun) #20
  %i.cup = fadd float %i.cuo, f0x3FC90FDB
  %i.cuq = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %.not.i95 = icmp eq i64 %indvars.iv.next119.i, 3 ; 2 uses
  %i.cur = select i1 %.not.i95, i64 0, i64 %indvars.iv.next119.i, !prof !77
  %i.cus = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cur
  %i.cut = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.cuu = add nuw nsw i32 %i.cut, 2
  %i.cuv = urem i32 %i.cuu, 3
  %i.cuw = zext nneg i32 %i.cuv to i64
  %i.cux = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cuw
  %i.cuy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cuz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cva = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cvb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.cvc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.cvd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %i.cve = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cvf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cvg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.cvh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.cvi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cvj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cvk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cvl = fmul float %.sroa.12.0.copyload.i50.i, %i.cvk
  %i.cvm = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvj, float %i.cvl)
  %i.cvn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cvo = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvn, float %i.cvm)
  %i.cvp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cvq = fadd float %i.cvp, %i.cvo
  %i.cvr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cvs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cvt = fmul float %.sroa.12.0.copyload.i50.i, %i.cvs
  %i.cvu = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvr, float %i.cvt)
  %i.cvv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.cvw = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cvv, float %i.cvu)
  %i.cvx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cvy = fadd float %i.cvx, %i.cvw
  %i.cvz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cwa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cwb = fmul float %.sroa.12.0.copyload.i50.i, %i.cwa
  %i.cwc = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cvz, float %i.cwb)
  %i.cwd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cwe = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cwd, float %i.cwc)
  %i.cwf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cwg = fadd float %i.cwf, %i.cwe
  %i.cwh = fdiv float 5.000000e-01, %i.cwg        ; 2 uses
  %i.cwi = fmul float %i.cvq, %i.cwh
  %i.cwj = fmul float %i.cvy, %i.cwh
  %i.cwk = fadd float %i.cwi, 5.000000e-01
  %i.cwl = fadd float %i.cwj, 5.000000e-01
  %i.cwm = fsub float 1.000000e+00, %i.cwl
  %i.cwn = extractelement <2 x float> %i.cvh, i64 0
  %i.cwo = fmul float %i.cwn, %i.cwk
  %i.cwp = extractelement <2 x float> %i.cvh, i64 1
  %i.cwq = fmul float %i.cwp, %i.cwm
  %i.cwr = extractelement <2 x float> %i.cvi, i64 0
  %i.cws = fadd float %i.cwr, %i.cwo
  %i.cwt = extractelement <2 x float> %i.cvi, i64 1
  %i.cwu = fadd float %i.cwt, %i.cwq
  %.val44.i = load float, ptr %36, align 16, !tbaa !78
  %.val45.i = load float, ptr %i.css, align 4, !tbaa !79
  %i.cwv = fsub float %i.cws, %.val44.i           ; 2 uses
  %i.cww = fsub float %i.cwu, %.val45.i           ; 2 uses
  %i.cwx = fmul float %i.cww, %i.cww
  %i.cwy = call noundef float @llvm.fmuladd.f32(float %i.cwv, float %i.cwv, float %i.cwx)
  %i.cwz = call float @sqrtf(float noundef %i.cwy) #20 ; 2 uses
  %i.cxa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.cxb = fcmp ogt float %i.cwz, %i.cxa
  br i1 %i.cxb, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i96 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i97, %bb.eb ] ; 3 uses
  %i.cxc = trunc nuw nsw i64 %indvars.iv.i96 to i32
  %i.cxd = uitofp nneg i32 %i.cxc to float
  %i.cxe = fmul nnan float %i.cxd, 1.562500e-02
  %i.cxf = call float @llvm.fmuladd.f32(float %i.cxe, float f0x40490FDB, float %i.cup) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.cxg = call float @cosf(float noundef %i.cxf) #20
  %i.cxh = call float @sinf(float noundef %i.cxf) #20
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.cxg, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.cxh, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.csr, align 8
  %i.cxi = load float, ptr %i.cuq, align 4, !tbaa !10
  %i.cxj = load float, ptr %i.cus, align 4, !tbaa !10
  %i.cxk = load float, ptr %i.cux, align 4, !tbaa !10
  %i.cxl = fmul float %i.cuy, %i.cxi              ; 2 uses
  %i.cxm = fmul float %i.cuy, %i.cxj              ; 2 uses
  %i.cxn = fmul float %i.cuy, %i.cxk              ; 2 uses
  %i.cxo = insertelement <2 x float> poison, float %i.cxm, i64 0
  %i.cxp = shufflevector <2 x float> %i.cxo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxq = fmul <2 x float> %i.cva, %i.cxp
  %i.cxr = insertelement <2 x float> poison, float %i.cxl, i64 0
  %i.cxs = shufflevector <2 x float> %i.cxr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxs, <2 x float> %i.cuz, <2 x float> %i.cxq)
  %i.cxu = insertelement <2 x float> poison, float %i.cxn, i64 0
  %i.cxv = shufflevector <2 x float> %i.cxu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxv, <2 x float> %i.cvb, <2 x float> %i.cxt)
  %i.cxx = fadd <2 x float> %i.cvc, %i.cxw
  %i.cxy = fmul float %i.cve, %i.cxm
  %i.cxz = call float @llvm.fmuladd.f32(float %i.cxl, float %i.cvd, float %i.cxy)
  %i.cya = call float @llvm.fmuladd.f32(float %i.cxn, float %i.cvf, float %i.cxz)
  %i.cyb = fadd float %i.cvg, %i.cya
  %i.cyc = fdiv float 5.000000e-01, %i.cyb
  %i.cyd = insertelement <2 x float> poison, float %i.cyc, i64 0
  %i.cye = shufflevector <2 x float> %i.cyd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyf = fmul <2 x float> %i.cxx, %i.cye        ; 2 uses
  %i.cyg = extractelement <2 x float> %i.cyf, i64 1
  %i.cyh = fadd float %i.cyg, 5.000000e-01
  %i.cyi = insertelement <2 x float> %i.cyf, float 1.000000e+00, i64 1
  %i.cyj = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cyh, i64 1
  %i.cyk = fsub <2 x float> %i.cyi, %i.cyj
  %i.cyl = fmul <2 x float> %i.cvh, %i.cyk
  %i.cym = fadd <2 x float> %i.cvi, %i.cyl
  %i.cyn = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i96
  store <2 x float> %i.cym, ptr %i.cyn, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i97, 64
  br i1 %exitcond.not.i98, label %bb.ea, label %bb.eb, !llvm.loop !65

bb.ec:                                            ; preds = %bb.ea
  store float %i.cwz, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.cyo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cuk
  %i.cyp = load i32, ptr %i.cyo, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqv, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.cyp, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br i1 %.not.i95, label %bb.dy, label %bb.dz, !llvm.loop !66

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !10
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 2 uses
  %i.cyq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.cyr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.cys = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.cyt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.cyu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.cyv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.cyw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 2 uses
  %i.cyx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10
  %i.cyy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 2 uses
  %i.cyz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cza = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.czb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10 ; 5 uses
  %i.czc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4, !tbaa !14
  %i.czd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 2 uses
  %i.cze = shufflevector <2 x float> %i.czb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.czf = insertelement <2 x float> %i.cze, float %.sroa.12.0.copyload.i75.i, i64 1
  %i.czg = shufflevector <2 x float> %i.czf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czh = shufflevector <2 x float> %i.czb, <2 x float> %i.czd, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.czi = insertelement <4 x float> %i.czh, float %i.cyr, i64 3
  %i.czj = fmul <4 x float> %i.czg, %i.czi
  %i.czk = shufflevector <2 x float> %i.czb, <2 x float> %i.cyx, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.czl = shufflevector <2 x float> %i.cyz, <2 x float> %i.cyy, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 2 uses
  %i.czm = shufflevector <2 x float> %i.czb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.czn = shufflevector <4 x float> %i.czm, <4 x float> %i.czl, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.czo = insertelement <4 x float> %i.czn, float %i.cza, i64 2
  %i.czp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.czk, <4 x float> %i.czo, <4 x float> %i.czj)
  %i.czq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.czr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.czs = insertelement <4 x float> poison, float %i.cyw, i64 0 ; 2 uses
  %i.czt = insertelement <4 x float> %i.czs, float %.sroa.22.0.copyload.i76.i, i64 1
  %i.czu = shufflevector <4 x float> %i.czt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czv = shufflevector <2 x float> %i.czq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.czw = shufflevector <4 x float> %i.czs, <4 x float> %i.czv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.czx = insertelement <4 x float> %i.czw, float %i.cys, i64 3
  %i.czy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.czu, <4 x float> %i.czx, <4 x float> %i.czp) ; 3 uses
  %i.czz = extractelement <4 x float> %i.czy, i64 0 ; 2 uses
  %i.daa = fcmp olt float %i.czz, f0x34000000
  %i.dab = extractelement <4 x float> %i.czy, i64 3
  %i.dac = fadd float %i.cyt, %i.dab
  %i.dad = fdiv float 5.000000e-01, %i.dac
  %i.dae = shufflevector <4 x float> %i.czy, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.daf = fadd <2 x float> %i.cyq, %i.dae
  %i.dag = insertelement <2 x float> poison, float %i.dad, i64 0
  %i.dah = shufflevector <2 x float> %i.dag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dai = fmul <2 x float> %i.daf, %i.dah        ; 2 uses
  %i.daj = extractelement <2 x float> %i.dai, i64 1
  %i.dak = fadd float %i.daj, 5.000000e-01
  %i.dal = insertelement <2 x float> %i.dai, float 1.000000e+00, i64 1
  %i.dam = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dak, i64 1
  %i.dan = fsub <2 x float> %i.dal, %i.dam
  %i.dao = fmul <2 x float> %i.cyu, %i.dan
  %i.dap = fadd <2 x float> %i.cyv, %i.dao
  store <2 x float> %i.dap, ptr %39, align 16, !tbaa !10
  %i.daq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !10 ; 3 uses
  %.sroa.8.0.copyload.i104 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !10 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !10 ; 3 uses
  %i.dar = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.das = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %i.dat = extractelement <2 x float> %i.daq, i64 0 ; 2 uses
  %i.dau = shufflevector <2 x float> %i.daq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dav = shufflevector <2 x float> %i.cyy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.daw = extractelement <2 x float> %i.czb, i64 0
  %i.dax = shufflevector <2 x float> %i.czd, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.day = insertelement <2 x float> %i.czq, float %i.czr, i64 1
  %i.daz = shufflevector <2 x float> %i.daq, <2 x float> %i.cyx, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.dba = insertelement <4 x float> %i.dax, float %i.cyr, i64 3
  %i.dbb = shufflevector <4 x float> %i.dba, <4 x float> %i.dau, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.dbc = shufflevector <4 x float> %i.dbb, <4 x float> %i.dav, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.cqv, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cqv, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.dbd = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.dbe = sext i32 %.0 to i64
  %i.dbf = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.dbe
  %i.dbg = getelementptr i8, ptr %i.dbf, i64 -64
  %i.dbh = load ptr, ptr %i.dbg, align 8, !tbaa !80
  %i.dbi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !74 ; 2 uses
  %i.dbj = fdiv float %i.dbi, f0x40490FDB
  %i.dbk = fmul float %i.dbj, 1.800000e+02
  %i.dbl = fpext float %i.dbk to double
  %i.dbm = fpext float %i.dbi to double
  %i.dbn = load <2 x float>, ptr %i.dbd, align 8, !tbaa !10 ; 2 uses
  %i.dbo = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.dbh, double noundef %i.dbl, double noundef %i.dbm) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.dbp = fadd <2 x float> %i.dbn, splat (float 1.500000e+01)
  store <2 x float> %i.dbp, ptr %40, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cqv, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.dbq = fadd <2 x float> %i.dbn, splat (float 1.400000e+01)
  store <2 x float> %i.dbq, ptr %41, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cqv, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105, %bb.ee
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105 ] ; 3 uses
  br i1 %i.daa, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.dbr = trunc i64 %indvars.iv123.i to i32
  %i.dbs = add i32 %i.dbr, -1
  %i.dbt = uitofp i32 %i.dbs to float
  %i.dbu = fdiv nnan float %i.dbt, 6.300000e+01
  %i.dbv = fmul float %i.das, %i.dbu              ; 2 uses
  %i.dbw = call float @sqrtf(float noundef %i.czz) #20
  %i.dbx = fdiv float 1.000000e+00, %i.dbw        ; 3 uses
  %i.dby = fmul float %i.daw, %i.dbx              ; 5 uses
  %i.dbz = fmul float %i.czc, %i.dbx              ; 5 uses
  %i.dca = fmul float %i.cyw, %i.dbx              ; 5 uses
  %i.dcb = call float @sinf(float noundef %i.dbv) #20 ; 3 uses
  %i.dcc = call float @cosf(float noundef %i.dbv) #20 ; 4 uses
  %i.dcd = fsub float 1.000000e+00, %i.dcc        ; 6 uses
  %i.dce = fmul float %i.dby, %i.dby
  %i.dcf = call float @llvm.fmuladd.f32(float %i.dce, float %i.dcd, float %i.dcc)
  %i.dcg = fmul float %i.dbz, %i.dbz
  %i.dch = call float @llvm.fmuladd.f32(float %i.dcg, float %i.dcd, float %i.dcc)
  %i.dci = fmul float %i.dca, %i.dca
  %i.dcj = call float @llvm.fmuladd.f32(float %i.dci, float %i.dcd, float %i.dcc)
  %i.dck = fmul float %i.dby, %i.dbz
  %i.dcl = fmul float %i.dck, %i.dcd              ; 2 uses
  %i.dcm = fmul float %i.dbz, %i.dca
  %i.dcn = fmul float %i.dcm, %i.dcd              ; 2 uses
  %i.dco = fmul float %i.dca, %i.dby
  %i.dcp = fmul float %i.dco, %i.dcd              ; 2 uses
  %i.dcq = fmul float %i.dcb, %i.dby              ; 2 uses
  %i.dcr = fmul float %i.dcb, %i.dbz              ; 2 uses
  %i.dcs = fmul float %i.dcb, %i.dca              ; 2 uses
  %i.dct = fadd float %i.dcs, %i.dcl
  %i.dcu = fsub float %i.dcp, %i.dcr
  %i.dcv = fsub float %i.dcl, %i.dcs
  %i.dcw = fadd float %i.dcq, %i.dcn
  %i.dcx = fadd float %i.dcr, %i.dcp
  %i.dcy = fsub float %i.dcn, %i.dcq
  %i.dcz = fmul float %.sroa.8.0.copyload.i104, %i.dch
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105: ; preds = %bb.eh, %bb.eg
  %.sroa.22.0.i = phi float [ %i.dcy, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.11.0.i = phi float [ %i.dcv, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.20.0.i = phi float [ %i.dcx, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.15.0.i = phi float [ %i.dcw, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.dcu, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.4.0.i = phi float [ %i.dct, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink60.i.i106 = phi float [ %i.dcf, %bb.eh ], [ 1.000000e+00, %bb.eg ]
  %.sink59.i.i107 = phi float [ %i.dcz, %bb.eh ], [ %.sroa.8.0.copyload.i104, %bb.eg ]
  %.sink.i.i108 = phi float [ %i.dcj, %bb.eh ], [ 1.000000e+00, %bb.eg ]
  %i.dda = fmul float %.sroa.8.0.copyload.i104, %.sroa.11.0.i
  %i.ddb = call float @llvm.fmuladd.f32(float %i.dat, float %.sink60.i.i106, float %i.dda)
  %i.ddc = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %.sroa.20.0.i, float %i.ddb)
  %i.ddd = fadd float %i.ddc, 0.000000e+00
  %i.dde = call float @llvm.fmuladd.f32(float %i.dat, float %.sroa.4.0.i, float %.sink59.i.i107)
  %i.ddf = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %.sroa.22.0.i, float %i.dde)
  %i.ddg = fadd float %i.ddf, 0.000000e+00
  %i.ddh = fmul float %i.dar, %i.ddd
  %i.ddi = fmul float %i.dar, %i.ddg
  %i.ddj = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.ddh, i64 1
  %i.ddk = shufflevector <2 x float> %i.ddj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ddl = fadd <4 x float> %i.daz, %i.ddk
  %i.ddm = insertelement <2 x float> %i.cyx, float %.sroa.15.0.i, i64 0
  %i.ddn = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.ddi, i64 1
  %i.ddo = fadd <2 x float> %i.ddm, %i.ddn
  %i.ddp = shufflevector <2 x float> %i.ddo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ddq = fmul <4 x float> %i.dbc, %i.ddp
  %i.ddr = insertelement <4 x float> %i.czl, float %.sroa.7.0.i, i64 0
  %i.dds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ddl, <4 x float> %i.ddr, <4 x float> %i.ddq) ; 3 uses
  %i.ddt = extractelement <4 x float> %i.dds, i64 0
  %i.ddu = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %.sink.i.i108, float %i.ddt)
  %i.ddv = fadd float %i.ddu, 0.000000e+00
  %i.ddw = fmul float %i.dar, %i.ddv
  %i.ddx = extractelement <4 x float> %i.dds, i64 3
  %i.ddy = fadd float %.sroa.22.0.copyload.i76.i, %i.ddw ; 2 uses
  %i.ddz = insertelement <2 x float> poison, float %i.ddy, i64 0
  %i.dea = shufflevector <2 x float> %i.ddz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.deb = shufflevector <4 x float> %i.dds, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dea, <2 x float> %i.day, <2 x float> %i.deb)
  %i.ded = fadd <2 x float> %i.cyq, %i.dec
  %i.dee = call float @llvm.fmuladd.f32(float %i.ddy, float %i.cys, float %i.ddx)
  %i.def = fadd float %i.cyt, %i.dee
  %i.deg = fdiv float 5.000000e-01, %i.def
  %i.deh = insertelement <2 x float> poison, float %i.deg, i64 0
  %i.dei = shufflevector <2 x float> %i.deh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dej = fmul <2 x float> %i.ded, %i.dei        ; 2 uses
  %i.dek = extractelement <2 x float> %i.dej, i64 1
  %i.del = fadd float %i.dek, 5.000000e-01
  %i.dem = insertelement <2 x float> %i.dej, float 1.000000e+00, i64 1
  %i.den = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.del, i64 1
  %i.deo = fsub <2 x float> %i.dem, %i.den
  %i.dep = fmul <2 x float> %i.cyu, %i.deo
  %i.deq = fadd <2 x float> %i.cyv, %i.dep
  %i.der = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %indvars.iv123.i
  store <2 x float> %i.deq, ptr %i.der, align 8, !tbaa !10
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 64
  br i1 %exitcond126.not.i, label %bb.ef, label %bb.eg, !llvm.loop !67

_ZN8ImGuizmoL17DrawRotationGizmoEi.exit:          ; preds = %bb.dy, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ei:                                            ; preds = %bb.dp
  %i.des = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 11 uses
  %.not.i112 = icmp eq ptr %i.des, null
  br i1 %.not.i112, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.det = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.deu = trunc nuw i8 %i.det to i1
  br i1 %i.deu, label %bb.ek, label %.preheader.preheader.i.i113

.preheader.preheader.i.i113:                      ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114

bb.ek:                                            ; preds = %bb.ej
  %i.dev = icmp eq i32 %.0, 7                     ; 2 uses
  %i.dew = select i1 %i.dev, i32 -1978629889, i32 -1
  store i32 %i.dew, ptr %i.e, align 16, !tbaa !52
  br i1 %i.dev, label %.loopexit.loopexit.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.ek
  %i.dex = icmp eq i32 %.0, 1
  %i.dey = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.dex, label %.split.1.thread61.i.i, label %bb.el

.split.1.thread61.i.i:                            ; preds = %.split.preheader.i.i
  store i32 -1978629889, ptr %i.dey, align 4, !tbaa !52
  %i.dez = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1627390122, ptr %i.dez, align 16, !tbaa !52
  br label %.thread63.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ek
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1978629889, ptr %i.dfb, align 4, !tbaa !52
  store <4 x i32> <i32 -16777046, i32 -16733696, i32 -5636096, i32 -1978629889>, ptr %i.dfa, align 4, !tbaa !52
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 -1978629889, ptr %i.dfc, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114

bb.el:                                            ; preds = %.split.preheader.i.i
  store i32 -16777046, ptr %i.dey, align 4, !tbaa !52
  %i.dfd = icmp eq i32 %.0, 4
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dfd, label %.split.1.thread.i.i, label %.split.1.i.i

.split.1.thread.i.i:                              ; preds = %bb.el
  store i32 -1978629889, ptr %i.dfe, align 16, !tbaa !52
  br label %.thread63.i.i

.split.1.i.i:                                     ; preds = %bb.el
  store i32 1627390122, ptr %i.dfe, align 16, !tbaa !52
  %i.dff = icmp eq i32 %.0, 2
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.dff, label %.split.2.thread64.i.i, label %bb.em

.split.2.thread64.i.i:                            ; preds = %.split.1.i.i
  store i32 -1978629889, ptr %i.dfg, align 8, !tbaa !52
  br label %.thread67.i.i

.thread63.i.i:                                    ; preds = %.split.1.thread.i.i, %.split.1.thread61.i.i
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -16733696, ptr %i.dfh, align 8, !tbaa !52
  br label %.split.2.i.i

bb.em:                                            ; preds = %.split.1.i.i
  store i32 -16733696, ptr %i.dfg, align 8, !tbaa !52
  %i.dfi = icmp eq i32 %.0, 5
  br i1 %i.dfi, label %.thread67.i.i, label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.em, %.thread63.i.i
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.e, i64 20
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.dlw = fmul <4 x float> %i.dlj, %i.dlv
  %i.dlx = shufflevector <1 x float> %i.dkw, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dly = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dlo, <4 x float> %i.dlx, <4 x float> %i.dlw)
  %i.dlz = shufflevector <1 x float> %i.dky, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dma = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dlu, <4 x float> %i.dlz, <4 x float> %i.dly)
  %i.dmb = shufflevector <1 x float> %i.dkz, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dmc = fadd <4 x float> %i.dmb, %i.dma
  %i.dmd = fdiv <4 x float> splat (float 5.000000e-01), %i.dmc ; 2 uses
  %i.dme = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 2 uses
  %i.dmf = shufflevector <2 x float> %i.dme, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dmg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 2 uses
  %i.dmh = shufflevector <2 x float> %i.dmg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dmi = shufflevector <4 x float> %i.dlj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dmj = fmul <4 x float> %i.dmi, %i.dmh
  %i.dmk = shufflevector <4 x float> %i.dlo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dml = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dmk, <4 x float> %i.dmf, <4 x float> %i.dmj)
  %i.dmm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 2 uses
  %i.dmn = shufflevector <2 x float> %i.dmm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dmo = shufflevector <4 x float> %i.dlu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dmp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dmo, <4 x float> %i.dmn, <4 x float> %i.dml)
  %i.dmq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 2 uses
  %i.dmr = shufflevector <2 x float> %i.dmq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dms = fadd <4 x float> %i.dmr, %i.dmp
  %i.dmt = shufflevector <4 x float> %i.dmd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dmu = fmul <4 x float> %i.dms, %i.dmt        ; 3 uses
  %i.dmv = shufflevector <4 x float> %i.dmu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dmw = insertelement <2 x float> %i.dmv, float 1.000000e+00, i64 1
  %i.dmx = shufflevector <4 x float> %i.dmu, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dmy = insertelement <2 x float> %i.dmx, float 1.000000e+00, i64 1
  %i.dmz = shufflevector <4 x float> %i.dlj, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dna = shufflevector <2 x float> %i.dmg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dnb = fmul <4 x float> %i.dmz, %i.dna
  %i.dnc = shufflevector <4 x float> %i.dlo, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dnd = shufflevector <2 x float> %i.dme, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dne = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dnc, <4 x float> %i.dnd, <4 x float> %i.dnb)
  %i.dnf = shufflevector <4 x float> %i.dlu, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dng = shufflevector <2 x float> %i.dmm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dnh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dnf, <4 x float> %i.dng, <4 x float> %i.dne)
  %i.dni = shufflevector <2 x float> %i.dmq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dnj = fadd <4 x float> %i.dni, %i.dnh
  %i.dnk = shufflevector <4 x float> %i.dmd, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dnl = fmul <4 x float> %i.dnj, %i.dnk        ; 3 uses
  %i.dnm = shufflevector <4 x float> %i.dnl, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dnn = insertelement <2 x float> %i.dnm, float 1.000000e+00, i64 1
  %i.dno = shufflevector <4 x float> %i.dmu, <4 x float> %i.dnl, <4 x i32> <i32 1, i32 3, i32 6, i32 7>
  %i.dnp = fadd <4 x float> %i.dno, splat (float 5.000000e-01) ; 4 uses
  %i.dnq = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.dnp, <2 x i32> <i32 0, i32 4>
  %i.dnr = fsub <2 x float> %i.dmw, %i.dnq
  %i.dns = fmul <2 x float> %i.dla, %i.dnr
  %i.dnt = fadd <2 x float> %i.dlb, %i.dns
  store <2 x float> %i.dnt, ptr %27, align 16, !tbaa !10
  %i.dnu = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.dnp, <2 x i32> <i32 0, i32 5>
  %i.dnv = fsub <2 x float> %i.dmy, %i.dnu
  %i.dnw = fmul <2 x float> %i.dla, %i.dnv
  %i.dnx = fadd <2 x float> %i.dlb, %i.dnw
  store <2 x float> %i.dnx, ptr %i.dhb, align 8, !tbaa !10
  %i.dny = shufflevector <4 x float> %i.dnp, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.dnz = insertelement <2 x float> %i.dny, float -5.000000e-01, i64 0
  %i.doa = fsub <2 x float> %i.dnn, %i.dnz
  %i.dob = fmul <2 x float> %i.dla, %i.doa
  %i.doc = fadd <2 x float> %i.dlb, %i.dob
  store <2 x float> %i.doc, ptr %i.dhc, align 16, !tbaa !10
  %i.dod = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.dnl, <2 x i32> <i32 5, i32 1>
  %i.doe = shufflevector <4 x float> %i.dnp, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.dof = insertelement <2 x float> %i.doe, float -5.000000e-01, i64 0
  %i.dog = fsub <2 x float> %i.dod, %i.dof
  %i.doh = fmul <2 x float> %i.dla, %i.dog
  %i.doi = fadd <2 x float> %i.dlb, %i.doh
  store <2 x float> %i.doi, ptr %i.dhd, align 8, !tbaa !10
  %i.doj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8ImGuizmoL14directionColorE, i64 %indvars.iv.i118
  %i.dok = load i32, ptr %i.doj, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.dok, i32 noundef 1, float noundef 1.000000e+00)
  %i.dol = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i118
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dol, i64 16
  %i.don = load i32, ptr %i.dom, align 4, !tbaa !52
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.don)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.ev

bb.ev:                                            ; preds = %.preheader.i121, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, 3
  br i1 %exitcond.not.i120, label %bb.ep, label %bb.eq, !llvm.loop !68

bb.ew:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.doo = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8
  %i.dop = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.doq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 2 uses
  %i.dor = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16 ; 2 uses
  %i.dos = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.dot = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.dou = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %.sroa.22.0.copyload.i125.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dov = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10 ; 2 uses
  %i.dow = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dox = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.doy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 4 uses
  %i.doz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i124.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 2 uses
  %i.dpa = shufflevector <2 x float> %i.dov, <2 x float> %i.doy, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dpb = shufflevector <2 x float> %i.doy, <2 x float> %i.doz, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.dpc = insertelement <4 x float> %i.dpb, float %i.doq, i64 1
  %i.dpd = insertelement <4 x float> %i.dpc, float %i.dos, i64 2
  %i.dpe = fmul <4 x float> %i.dpa, %i.dpd
  %i.dpf = shufflevector <2 x float> %i.dov, <2 x float> %i.doz, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.dpg = shufflevector <2 x float> %i.dow, <2 x float> %i.doy, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dph = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dpf, <4 x float> %i.dpg, <4 x float> %i.dpe)
  %i.dpi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dpj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dpk = insertelement <4 x float> %i.doo, float %.sroa.22.0.copyload.i125.i, i64 1
  %i.dpl = shufflevector <4 x float> %i.dpk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dpm = shufflevector <2 x float> %i.dpi, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dpn = insertelement <3 x float> %i.dpm, float %i.dot, i64 2
  %i.dpo = shufflevector <3 x float> %i.dpn, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dpp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dpl, <4 x float> %i.dpo, <4 x float> %i.dph) ; 4 uses
  %i.dpq = extractelement <4 x float> %i.dpp, i64 0
  %i.dpr = fadd float %i.dop, %i.dpq
  %i.dps = extractelement <4 x float> %i.dpp, i64 1
  %i.dpt = fadd float %i.dor, %i.dps
  %i.dpu = extractelement <4 x float> %i.dpp, i64 2
  %i.dpv = fadd float %i.dou, %i.dpu
  %i.dpw = fdiv float 5.000000e-01, %i.dpv        ; 2 uses
  %i.dpx = fmul float %i.dpr, %i.dpw
  %i.dpy = fmul float %i.dpt, %i.dpw
  %i.dpz = fadd float %i.dpy, 5.000000e-01
  %i.dqa = extractelement <4 x float> %i.dpp, i64 3
  %i.dqb = fadd float %i.dop, %i.dqa
  %i.dqc = fmul float %i.doq, %.sroa.12.0.copyload.i124.i
  %i.dqd = extractelement <2 x float> %i.doz, i64 0 ; 2 uses
  %i.dqe = call float @llvm.fmuladd.f32(float %i.dqd, float %i.dox, float %i.dqc)
  %i.dqf = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dpj, float %i.dqe)
  %i.dqg = fadd float %i.dor, %i.dqf
  %i.dqh = fmul float %i.dos, %.sroa.12.0.copyload.i124.i
  %i.dqi = extractelement <2 x float> %i.doy, i64 0
  %i.dqj = call float @llvm.fmuladd.f32(float %i.dqd, float %i.dqi, float %i.dqh)
  %i.dqk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dot, float %i.dqj)
  %i.dql = fadd float %i.dou, %i.dqk
  %i.dqm = fdiv float 5.000000e-01, %i.dql        ; 2 uses
  %i.dqn = fmul float %i.dqb, %i.dqm
  %i.dqo = fmul float %i.dqg, %i.dqm
  %i.dqp = fadd float %i.dqo, 5.000000e-01
  %i.dqq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dpx, i64 0
  %i.dqr = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dpz, i64 1
  %i.dqs = fsub <2 x float> %i.dqq, %i.dqr
  %i.dqt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.dqu = fmul <2 x float> %i.dqt, %i.dqs
  %i.dqv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.dqw = fadd <2 x float> %i.dqv, %i.dqu        ; 2 uses
  store <2 x float> %i.dqw, ptr %28, align 8
  %i.dqx = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dqn, i64 0
  %i.dqy = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dqp, i64 1
  %i.dqz = fsub <2 x float> %i.dqx, %i.dqy
  %i.dra = fmul <2 x float> %i.dqt, %i.dqz
  %i.drb = fadd <2 x float> %i.dqv, %i.dra        ; 2 uses
  store <2 x float> %i.drb, ptr %29, align 8
  %i.drc = fsub <2 x float> %i.drb, %i.dqw        ; 4 uses
  %foldExtExtBinop268 = fmul <2 x float> %i.drc, %i.drc
  %i.drd = extractelement <2 x float> %foldExtExtBinop268, i64 1
  %i.dre = extractelement <2 x float> %i.drc, i64 0 ; 2 uses
  %i.drf = call float @llvm.fmuladd.f32(float %i.dre, float %i.dre, float %i.drd)
  %i.drg = fadd float %i.drf, 0.000000e+00
  %i.drh = call noundef float @sqrtf(float noundef %i.drg) #20
  %i.dri = fdiv float 1.000000e+00, %i.drh
  %i.drj = insertelement <2 x float> poison, float %i.dri, i64 0
  %i.drk = shufflevector <2 x float> %i.drj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.drl = fmul <2 x float> %i.drk, %i.drc
  %i.drm = fmul <2 x float> %i.drl, splat (float 5.000000e+00) ; 2 uses
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %28, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %29, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.drn = load <2 x float>, ptr %28, align 8, !tbaa !10
  %i.dro = fadd <2 x float> %i.drn, %i.drm
  store <2 x float> %i.dro, ptr %30, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.drp = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.drq = fsub <2 x float> %i.drp, %i.drm
  store <2 x float> %i.drq, ptr %31, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef -1431655766, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.drr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.drs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10
  %i.drt = fsub <2 x float> %i.drr, %i.drs
  %i.dru = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10
  %i.drv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10
  %i.drw = fsub <2 x float> %i.dru, %i.drv
  store <2 x float> %i.drt, ptr %32, align 8
  %i.drx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <2 x float> %i.drw, ptr %i.drx, align 8
  %i.dry = add nsw i32 %.0, -1                    ; 2 uses
  %i.drz = mul nsw i32 %i.dry, 3
  %i.dsa = sext i32 %i.dry to i64
  %i.dsb = getelementptr inbounds [8 x i8], ptr @_ZN8ImGuizmoL19translationInfoMaskE, i64 %i.dsa
  %i.dsc = load ptr, ptr %i.dsb, align 8, !tbaa !80
  %i.dsd = sext i32 %i.drz to i64
  %i.dse = getelementptr inbounds [4 x i8], ptr @_ZN8ImGuizmoL20translationInfoIndexE, i64 %i.dsd ; 3 uses
  %i.dsf = load i32, ptr %i.dse, align 4, !tbaa !52
  %i.dsg = sext i32 %i.dsf to i64
  %i.dsh = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dsg
  %i.dsi = load float, ptr %i.dsh, align 4, !tbaa !10
  %i.dsj = fpext float %i.dsi to double
  %i.dsk = getelementptr i8, ptr %i.dse, i64 4
  %i.dsl = load i32, ptr %i.dsk, align 4, !tbaa !52
  %i.dsm = sext i32 %i.dsl to i64
  %i.dsn = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dsm
  %i.dso = load float, ptr %i.dsn, align 4, !tbaa !10
  %i.dsp = fpext float %i.dso to double
  %i.dsq = getelementptr i8, ptr %i.dse, i64 8
  %i.dsr = load i32, ptr %i.dsq, align 4, !tbaa !52
  %i.dss = sext i32 %i.dsr to i64
  %i.dst = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dss
  %i.dsu = load float, ptr %i.dst, align 4, !tbaa !10
  %i.dsv = fpext float %i.dsu to double
  %i.dsw = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.h, i64 noundef 512, ptr noundef %i.dsc, double noundef %i.dsj, double noundef %i.dsp, double noundef %i.dsv) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.dsx = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dsy = fadd <2 x float> %i.dsx, splat (float 1.500000e+01)
  store <2 x float> %i.dsy, ptr %33, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %33, i32 noundef -16777216, ptr noundef nonnull %i.h, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.dsz = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dta = fadd <2 x float> %i.dsz, splat (float 1.400000e+01)
  store <2 x float> %i.dta, ptr %34, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %34, i32 noundef -1, ptr noundef nonnull %i.h, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ey:                                            ; preds = %bb.dp
  %i.dtb = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.dtc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.dtd = trunc nuw i8 %i.dtc to i1
  br i1 %i.dtd, label %bb.ez, label %.preheader.preheader.i.i126

.preheader.preheader.i.i126:                      ; preds = %bb.ey
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127

bb.ez:                                            ; preds = %bb.ey
  %i.dte = icmp eq i32 %.0, 15
  %i.dtf = select i1 %i.dte, i32 -1978629889, i32 -1
  store i32 %i.dtf, ptr %i.a, align 16, !tbaa !52
  %i.dtg = icmp eq i32 %.0, 12
  %i.dth = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %i.dtg, label %.thread73.i.i, label %bb.fa

.thread73.i.i:                                    ; preds = %bb.ez
  store i32 -1978629889, ptr %i.dth, align 4, !tbaa !52
  %i.dti = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -16733696, ptr %i.dti, align 8, !tbaa !52
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  store i32 -16777046, ptr %i.dth, align 4, !tbaa !52
  %i.dtj = icmp eq i32 %.0, 13
  %i.dtk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.dtj, label %.thread72.i.i, label %bb.fb

.thread72.i.i:                                    ; preds = %bb.fa
  store i32 -1978629889, ptr %i.dtk, align 8, !tbaa !52
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 -16733696, ptr %i.dtk, align 8, !tbaa !52
  %i.dtl = icmp eq i32 %.0, 14
  br i1 %i.dtl, label %.loopexit.loopexit53.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.thread72.i.i, %.thread73.i.i
  br label %.loopexit.loopexit53.i.i

.loopexit.loopexit53.i.i:                         ; preds = %bb.fc, %bb.fb
  %i.dtm = phi i32 [ -5636096, %bb.fc ], [ -1978629889, %bb.fb ]
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dtm, ptr %i.dtn, align 4, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127: ; preds = %.loopexit.loopexit53.i.i, %.preheader.preheader.i.i126
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) @__const._ZN8ImGuizmoL14DrawScaleGizmoEi.scaleDisplay, i64 16, i1 false)
  %i.dto = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dtp = trunc nuw i8 %i.dto to i1
  br i1 %i.dtp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), i64 16, i1 false), !tbaa.struct !17
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127
  %i.dtq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dtr = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fm
  %i.dts = load i32, ptr %i.a, align 16, !tbaa !52
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dtb, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %i.dts, i32 noundef 32)
  %i.dtt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dtu = trunc nuw i8 %i.dtt to i1
  br i1 %i.dtu, label %bb.fn, label %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit

bb.fg:                                            ; preds = %bb.fm, %bb.fe
  %indvars.iv.i128 = phi i64 [ 0, %bb.fe ], [ %indvars.iv.next.i129, %bb.fm ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.dtv = trunc nuw nsw i64 %indvars.iv.i128 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.dtv, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.dtw = load i8, ptr %i.b, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dtx = trunc nuw i8 %i.dtw to i1
  br i1 %i.dtx, label %bb.fh, label %bb.fm

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.dty = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 4 uses
  %i.dtz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16 ; 2 uses
  %i.dua = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16 ; 2 uses
  %i.dub = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16 ; 2 uses
  %i.duc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.dud = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.due = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i128
  %i.duf = load float, ptr %i.due, align 4, !tbaa !10
  %i.dug = load <2 x float>, ptr %12, align 8, !tbaa !10 ; 5 uses
  %i.duh = extractelement <2 x float> %i.dug, i64 0
  %i.dui = fmul float %i.duh, 1.000000e-01
  %i.duj = extractelement <2 x float> %i.dug, i64 1
  %i.duk = fmul float %i.duj, 1.000000e-01
  %i.dul = insertelement <2 x float> poison, float %i.duf, i64 0
  %i.dum = shufflevector <2 x float> %i.dul, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dun = fmul <2 x float> %i.dug, %i.dum        ; 3 uses
  %i.duo = load <2 x float>, ptr %i.dtq, align 8, !tbaa !10 ; 3 uses
  %i.dup = extractelement <2 x float> %i.duo, i64 0
  %i.duq = fmul float %i.dup, 1.000000e-01
  %i.dur = fmul float %i.duq, %i.dty              ; 3 uses
  %i.dus = fmul <2 x float> %i.duo, %i.dum        ; 2 uses
  %i.dut = shufflevector <2 x float> %i.dug, <2 x float> %i.dun, <2 x i32> <i32 1, i32 3>
  %i.duu = insertelement <2 x float> poison, float %i.dty, i64 0
  %i.duv = shufflevector <2 x float> %i.duu, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.duw = fmul <2 x float> %i.dut, %i.duv        ; 4 uses
  %i.dux = shufflevector <2 x float> %i.dug, <2 x float> %i.dun, <2 x i32> <i32 0, i32 2>
  %i.duy = fmul <2 x float> %i.dux, %i.duv        ; 4 uses
  %i.duz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 2 uses
  %i.dva = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 400), align 8, !tbaa !16 ; 2 uses
  %i.dvb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 3 uses
  %i.dvc = extractelement <2 x float> %i.duw, i64 0
  %i.dvd = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.duk, i64 0
  %i.dve = shufflevector <2 x float> %i.duw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dvf = insertelement <2 x float> %i.dve, float %i.dty, i64 0
  %i.dvg = fmul <2 x float> %i.dvd, %i.dvf
  %i.dvh = shufflevector <2 x float> %i.dvg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dvi = extractelement <2 x float> %i.duy, i64 0
  %i.dvj = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dui, i64 0
  %i.dvk = shufflevector <2 x float> %i.duy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dvl = insertelement <2 x float> %i.dvk, float %i.dty, i64 0
  %i.dvm = fmul <2 x float> %i.dvj, %i.dvl
  %i.dvn = shufflevector <2 x float> %i.dvm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dvo = shufflevector <2 x float> %i.duz, <2 x float> %i.dvb, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dvp = shufflevector <2 x float> %i.duo, <2 x float> %i.dus, <2 x i32> <i32 0, i32 2>
  %i.dvq = fmul <2 x float> %i.dvp, %i.duv        ; 3 uses
  %i.dvr = insertelement <2 x float> poison, float %i.dtz, i64 0
  %i.dvs = shufflevector <2 x float> %i.dvr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvt = fmul <2 x float> %i.duw, %i.dvs
  %i.dvu = shufflevector <2 x float> %i.dvb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.duy, <2 x float> %i.dvu, <2 x float> %i.dvt)
  %i.dvw = insertelement <2 x float> poison, float %i.dua, i64 0
  %i.dvx = shufflevector <2 x float> %i.dvw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dvq, <2 x float> %i.dvx, <2 x float> %i.dvv)
  %i.dvz = insertelement <2 x float> poison, float %i.dub, i64 0
  %i.dwa = shufflevector <2 x float> %i.dvz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dwb = fadd <2 x float> %i.dwa, %i.dvy
  %i.dwc = fdiv <2 x float> splat (float 5.000000e-01), %i.dwb ; 2 uses
  %i.dwd = extractelement <2 x float> %i.dwc, i64 0 ; 2 uses
  %i.dwe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 3 uses
  %i.dwf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8, !tbaa !16 ; 2 uses
  %i.dwg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16
  %i.dwh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 2 uses
  %i.dwi = shufflevector <2 x float> %i.dvb, <2 x float> %i.dwh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dwj = insertelement <4 x float> %i.dwi, float %i.dtz, i64 2
  %i.dwk = shufflevector <4 x float> %i.dwj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dwl = fmul <4 x float> %i.dvh, %i.dwk
  %i.dwm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dvn, <4 x float> %i.dvo, <4 x float> %i.dwl) ; 4 uses
  %i.dwn = extractelement <4 x float> %i.dwm, i64 0
  %i.dwo = extractelement <2 x float> %i.dwe, i64 0
  %i.dwp = call float @llvm.fmuladd.f32(float %i.dur, float %i.dwo, float %i.dwn)
  %i.dwq = extractelement <4 x float> %i.dwm, i64 1
  %i.dwr = call float @llvm.fmuladd.f32(float %i.dur, float %i.dwf, float %i.dwq)
  %i.dws = extractelement <4 x float> %i.dwm, i64 2
  %i.dwt = call float @llvm.fmuladd.f32(float %i.dur, float %i.dua, float %i.dws)
  %i.dwu = fadd float %i.dub, %i.dwt
  %i.dwv = fdiv float 5.000000e-01, %i.dwu        ; 2 uses
  %i.dww = fmul float %i.dvc, %i.dwg
  %i.dwx = call float @llvm.fmuladd.f32(float %i.dvi, float %i.dva, float %i.dww)
  %i.dwy = shufflevector <2 x float> %i.dvq, <2 x float> %i.duy, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.dwz = shufflevector <2 x float> %i.duz, <2 x float> %i.dwe, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %i.dxa = insertelement <4 x float> %i.dwz, float %i.dva, i64 3
  %i.dxb = shufflevector <4 x float> %i.dwm, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.dxc = insertelement <4 x float> %i.dxb, float %i.dwx, i64 1
  %i.dxd = shufflevector <2 x float> %i.dwh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dxe = shufflevector <2 x float> %i.duw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.dxf = fmul <4 x float> %i.dxd, %i.dxe
  %i.dxg = shufflevector <4 x float> %i.dxc, <4 x float> %i.dxf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dxh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dwy, <4 x float> %i.dxa, <4 x float> %i.dxg) ; 3 uses
  %i.dxi = extractelement <4 x float> %i.dxh, i64 0
  %i.dxj = extractelement <4 x float> %i.dxh, i64 1
  %i.dxk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 3 uses
  %i.dxl = extractelement <2 x float> %i.dxk, i64 0 ; 2 uses
  %i.dxm = fadd float %i.dxl, %i.dwp
  %i.dxn = extractelement <2 x float> %i.dxk, i64 1 ; 2 uses
  %i.dxo = fadd float %i.dxn, %i.dwr
  %i.dxp = fmul float %i.dxm, %i.dwv
  %i.dxq = fmul float %i.dxo, %i.dwv
  %i.dxr = fadd float %i.dxq, 5.000000e-01
  %i.dxs = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dxp, i64 0
  %i.dxt = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dxr, i64 1
  %i.dxu = fsub <2 x float> %i.dxs, %i.dxt
  %i.dxv = fmul <2 x float> %i.duc, %i.dxu
  %i.dxw = fadd <2 x float> %i.dud, %i.dxv
  store <2 x float> %i.dxw, ptr %13, align 8
  %i.dxx = fadd float %i.dxl, %i.dxi
  %i.dxy = fadd float %i.dxn, %i.dxj
  %i.dxz = fmul float %i.dxx, %i.dwd
  %i.dya = fmul float %i.dxy, %i.dwd
  %i.dyb = fadd float %i.dya, 5.000000e-01
  %i.dyc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dxz, i64 0
  %i.dyd = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dyb, i64 1
  %i.dye = fsub <2 x float> %i.dyc, %i.dyd
  %i.dyf = fmul <2 x float> %i.duc, %i.dye
  %i.dyg = fadd <2 x float> %i.dud, %i.dyf
  store <2 x float> %i.dyg, ptr %14, align 8
  %i.dyh = shufflevector <2 x float> %i.dvq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dyi = insertelement <2 x float> %i.dwe, float %i.dwf, i64 1
  %i.dyj = shufflevector <4 x float> %i.dxh, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dyk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dyh, <2 x float> %i.dyi, <2 x float> %i.dyj)
  %i.dyl = fadd <2 x float> %i.dxk, %i.dyk
  %i.dym = shufflevector <2 x float> %i.dwc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dyn = fmul <2 x float> %i.dyl, %i.dym        ; 2 uses
  %i.dyo = extractelement <2 x float> %i.dyn, i64 1
  %i.dyp = fadd float %i.dyo, 5.000000e-01
  %i.dyq = insertelement <2 x float> %i.dyn, float 1.000000e+00, i64 1
  %i.dyr = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dyp, i64 1
  %i.dys = fsub <2 x float> %i.dyq, %i.dyr
  %i.dyt = fmul <2 x float> %i.duc, %i.dys
  %i.dyu = fadd <2 x float> %i.dud, %i.dyt
  store <2 x float> %i.dyu, ptr %15, align 8
  %i.dyv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dyw = trunc nuw i8 %i.dyv to i1
  br i1 %i.dyw, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dtb, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef -12566464, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dtb, ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef 6.000000e+00, i32 noundef -12566464, i32 noundef 0)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.dyx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i128
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dyx, i64 4
  %i.dyz = load i32, ptr %i.dyy, align 4, !tbaa !52 ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dtb, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.dyz, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dtb, ptr noundef nonnull align 4 dereferenceable(8) %15, float noundef 6.000000e+00, i32 noundef %i.dyz, i32 noundef 0)
  %i.dza = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %indvars.iv.i128
  %i.dzb = load float, ptr %i.dza, align 4, !tbaa !10
  %i.dzc = fcmp olt float %i.dzb, 0.000000e+00
  br i1 %i.dzc, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store <2 x float> %i.dun, ptr %16, align 8
  store <2 x float> %i.dus, ptr %i.dtr, align 8
  call fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr noundef nonnull align 4 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i128, 1 ; 2 uses
  %exitcond.not.i130 = icmp eq i64 %indvars.iv.next.i129, 3
  br i1 %exitcond.not.i130, label %bb.ff, label %bb.fg, !llvm.loop !69

bb.fn:                                            ; preds = %bb.ff
  %.sroa.02.0.copyload.i66.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i67.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i68.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dzd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dze = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.dzf = fmul float %.sroa.12.0.copyload.i67.i, %i.dze
  %i.dzg = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.dzd, float %i.dzf)
  %i.dzh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dzi = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.dzh, float %i.dzg)
  %i.dzj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.dzk = fadd float %i.dzj, %i.dzi
  %i.dzl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dzm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dzn = fmul float %.sroa.12.0.copyload.i67.i, %i.dzm
  %i.dzo = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.dzl, float %i.dzn)
  %i.dzp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dzq = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.dzp, float %i.dzo)
  %i.dzr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dzs = fadd float %i.dzr, %i.dzq
  %i.dzt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dzu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.dzv = fmul float %.sroa.12.0.copyload.i67.i, %i.dzu
  %i.dzw = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.dzt, float %i.dzv)
  %i.dzx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.dzy = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.dzx, float %i.dzw)
  %i.dzz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.eaa = fadd float %i.dzz, %i.dzy
  %i.eab = fdiv float 5.000000e-01, %i.eaa        ; 2 uses
  %i.eac = fmul float %i.dzk, %i.eab
  %i.ead = fmul float %i.dzs, %i.eab
  %i.eae = fadd float %i.ead, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.eaf = add nsw i32 %.0, -12                   ; 2 uses
  %i.eag = mul nsw i32 %i.eaf, 3
  %i.eah = sext i32 %i.eaf to i64
  %i.eai = getelementptr inbounds [8 x i8], ptr @_ZN8ImGuizmoL13scaleInfoMaskE, i64 %i.eah
  %i.eaj = load ptr, ptr %i.eai, align 8, !tbaa !80
  %i.eak = sext i32 %i.eag to i64
  %i.eal = getelementptr inbounds [4 x i8], ptr @_ZN8ImGuizmoL20translationInfoIndexE, i64 %i.eak
  %i.eam = load i32, ptr %i.eal, align 4, !tbaa !52
  %i.ean = sext i32 %i.eam to i64
  %i.eao = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ean
  %i.eap = load float, ptr %i.eao, align 4, !tbaa !10
  %i.eaq = fpext float %i.eap to double
  %i.ear = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.eac, i64 0
  %i.eas = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.eae, i64 1
  %i.eat = fsub <2 x float> %i.ear, %i.eas
  %i.eau = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.eav = fmul <2 x float> %i.eau, %i.eat
  %i.eaw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.eax = fadd <2 x float> %i.eaw, %i.eav        ; 2 uses
  %i.eay = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.d, i64 noundef 512, ptr noundef %i.eaj, double noundef %i.eaq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.eaz = fadd <2 x float> %i.eax, splat (float 1.500000e+01)
  store <2 x float> %i.eaz, ptr %17, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.dtb, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef -16777216, ptr noundef nonnull %i.d, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.eba = fadd <2 x float> %i.eax, splat (float 1.400000e+01)
  store <2 x float> %i.eba, ptr %18, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.dtb, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit

_ZN8ImGuizmoL14DrawScaleGizmoEi.exit:             ; preds = %bb.ff, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit:       ; preds = %bb.do, %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit, %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit, %bb.dp, %bb.ei, %bb.ex, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo8DrawCubeEPKfS1_S1_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %3 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 6 uses
  %4 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 16 uses
  %5 = alloca [4 x %struct.ImVec2], align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %0, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.y = load <16 x float>, ptr %4, align 4, !tbaa !10 ; 8 uses
  %i.z = load <1 x float>, ptr %i.r, align 4
  %i.aa = load <1 x float>, ptr %i.q, align 4
  %i.ab = load <1 x float>, ptr %i.p, align 4
  %i.ac = load <1 x float>, ptr %i.f, align 4
  %i.ad = load <1 x float>, ptr %i.d, align 4
  %i.ae = load <1 x float>, ptr %i.b, align 4
  %i.af = insertelement <4 x float> poison, float %i.k, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 13, i32 9, i32 1, i32 5>
  %i.ai = fmul <4 x float> %i.ag, %i.ah
  %i.aj = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 12, i32 8, i32 0, i32 4>
  %i.ak = insertelement <4 x float> poison, float %i.i, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.al, <4 x float> %i.ai)
  %i.an = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 14, i32 10, i32 2, i32 6>
  %i.ao = insertelement <4 x float> poison, float %i.m, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.ap, <4 x float> %i.am)
  %i.ar = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 4 uses
  %i.as = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.at = load <2 x float>, ptr %i.e, align 4, !tbaa !10 ; 4 uses
  %i.au = load <2 x float>, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aw = shufflevector <1 x float> %i.ae, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %i.as
  %i.ay = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ar, <2 x float> %i.ax)
  %i.ba = shufflevector <1 x float> %i.ad, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.at, <2 x float> %i.az)
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bd = shufflevector <1 x float> %i.ac, <1 x float> poison, <4 x i32> zeroinitializer
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.av, <4 x float> %i.bc) ; 2 uses
  %i.bf = shufflevector <1 x float> %i.ab, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.as, %i.bf
  %i.bh = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ar, <2 x float> %i.bg)
  %i.bj = shufflevector <1 x float> %i.aa, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.at, <2 x float> %i.bi)
  %i.bl = shufflevector <1 x float> %i.z, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.au, <2 x float> %i.bk) ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bo = load <1 x float>, ptr %i.u, align 4
  %i.bp = load <1 x float>, ptr %i.t, align 4
  %i.bq = load <1 x float>, ptr %i.s, align 4
  %i.br = shufflevector <1 x float> %i.bq, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.as, %i.br
  %i.bt = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ar, <2 x float> %i.bs)
  %i.bv = shufflevector <1 x float> %i.bp, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.at, <2 x float> %i.bu)
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.by = shufflevector <1 x float> %i.bo, <1 x float> poison, <4 x i32> zeroinitializer
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.av, <4 x float> %i.bx) ; 2 uses
  %i.ca = load float, ptr %i.x, align 4, !tbaa !10
  %i.cb = load float, ptr %i.w, align 4, !tbaa !10
  %i.cc = load float, ptr %i.v, align 4, !tbaa !10
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.as, %i.ce
  %i.cg = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 12, i32 12>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ar, <2 x float> %i.cf)
  %i.ci = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.at, <2 x float> %i.ch)
  %i.cl = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.au, <2 x float> %i.ck) ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cp = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 15, i32 11, i32 3, i32 7>
  %i.cq = insertelement <4 x float> poison, float %i.o, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %i.aq) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.df = load float, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dn = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dp = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dq = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dr = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ds = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dt = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.du = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.043203 = phi i32 [ 0, %bb.a ], [ %i.ms, %.loopexit ] ; 5 uses
  %.urem = add nsw i32 %.043203, -3
  %.cmp = icmp samesign ult i32 %.043203, 3
  %i.dv = select i1 %.cmp, i32 %.043203, i32 %.urem ; 3 uses
  %i.dw = add nuw nsw i32 %i.dv, 1                ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 3
  %i.dy = select i1 %i.dx, i32 0, i32 %i.dw
  %i.dz = add nuw nsw i32 %i.dv, 2
  %i.ea = urem i32 %i.dz, 3
  %i.eb = icmp samesign ugt i32 %.043203, 2
  %i.ec = select i1 %i.eb, float -1.000000e+00, float 1.000000e+00 ; 15 uses
  %i.ed = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.ed ; 3 uses
  %i.ef = zext nneg i32 %i.dy to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.ef ; 3 uses
  %i.eh = load float, ptr %i.ee, align 16, !tbaa !12 ; 3 uses
  %i.ei = load float, ptr %i.eg, align 16, !tbaa !12 ; 2 uses
  %i.ej = fadd float %i.eh, %i.ei                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !14 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
end_hunk_1
begin_hunk_2_@_ZN8ImGuizmo8DrawCubeEPKfS1_S1_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.gc = fsub float %i.et, %i.fc
  %i.gd = fsub float %i.eo, %i.ez
  %i.ge = fsub float %i.ej, %i.ew
  %i.gf = fmul float %i.ge, 5.000000e-01
  %i.gg = fmul float %i.gd, 5.000000e-01
  %i.gh = fmul float %i.gc, 5.000000e-01
  %i.gi = fmul float %i.ec, %i.gf                 ; 2 uses
  %i.gj = fmul float %i.ec, %i.gg                 ; 2 uses
  %i.gk = fmul float %i.ec, %i.gh                 ; 2 uses
  %i.gl = fmul float %i.gj, %i.fo
  %i.gm = call float @llvm.fmuladd.f32(float %i.gi, float %i.fn, float %i.gl)
  %i.gn = call float @llvm.fmuladd.f32(float %i.gk, float %i.fp, float %i.gm)
  %i.go = fadd float %i.fq, %i.gn
  %i.gp = fcmp uge float %i.go, 1.000000e-03
  br i1 %i.gp, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.gq = fmul float %i.fh, 5.000000e-01
  %i.gr = fmul float %i.fi, 5.000000e-01
  %i.gs = fmul float %i.fj, 5.000000e-01
  %i.gt = fmul float %i.ec, %i.gq                 ; 3 uses
  %i.gu = fmul float %i.ec, %i.gr                 ; 3 uses
  %i.gv = fmul float %i.ec, %i.gs                 ; 3 uses
  %i.gw = fmul float %i.gu, %i.fo
  %i.gx = call float @llvm.fmuladd.f32(float %i.gt, float %i.fn, float %i.gw)
  %i.gy = call float @llvm.fmuladd.f32(float %i.gv, float %i.fp, float %i.gx)
  %i.gz = fadd float %i.fq, %i.gy
  %i.ha = fcmp uge float %i.gz, 1.000000e-03
  br i1 %i.ha, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.hb = fmul float %i.fk, 5.000000e-01
  %i.hc = fmul float %i.fl, 5.000000e-01
  %i.hd = fmul float %i.fm, 5.000000e-01
  %i.he = fmul float %i.ec, %i.hb                 ; 3 uses
  %i.hf = fmul float %i.ec, %i.hc                 ; 3 uses
  %i.hg = fmul float %i.ec, %i.hd                 ; 3 uses
  %i.hh = fmul float %i.hf, %i.fo
  %i.hi = call float @llvm.fmuladd.f32(float %i.he, float %i.fn, float %i.hh)
  %i.hj = call float @llvm.fmuladd.f32(float %i.hg, float %i.fp, float %i.hi)
  %i.hk = fadd float %i.fq, %i.hj
  %i.hl = fcmp uge float %i.hk, 1.000000e-03
  br i1 %i.hl, label %.critedge.loopexit, label %.loopexit

.critedge.loopexit:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.hm = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.hn = insertelement <4 x float> %i.hm, float %i.gj, i64 1 ; 2 uses
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hp = fmul <4 x float> %i.bn, %i.ho
  %i.hq = insertelement <4 x float> %i.hn, float %i.gu, i64 2
  %i.hr = insertelement <4 x float> %i.hq, float %i.hf, i64 3
  %i.hs = fmul <4 x float> %i.dq, %i.hr
  %i.ht = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.hu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.hv = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.hw = insertelement <4 x float> %i.hv, float %i.gi, i64 1 ; 2 uses
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hx, <4 x float> %i.be, <4 x float> %i.hp)
  %i.hz = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.ia = insertelement <4 x float> %i.hz, float %i.gk, i64 1 ; 2 uses
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.bz, <4 x float> %i.hy)
  %i.id = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.ie = insertelement <4 x float> %i.id, float %i.hf, i64 1
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ig = fmul <4 x float> %i.ds, %i.if
  %i.ih = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.ii = insertelement <4 x float> %i.ih, float %i.he, i64 1
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> %i.dr, <4 x float> %i.ig)
  %i.il = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.im = insertelement <4 x float> %i.il, float %i.hg, i64 1
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> %i.dt, <4 x float> %i.ik)
  %i.ip = insertelement <4 x float> %i.hw, float %i.gt, i64 2
  %i.iq = insertelement <4 x float> %i.ip, float %i.he, i64 3
  %i.ir = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iq, <4 x float> %i.dp, <4 x float> %i.hs)
  %i.is = insertelement <4 x float> %i.ia, float %i.gv, i64 2
  %i.it = insertelement <4 x float> %i.is, float %i.hg, i64 3
  %i.iu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.it, <4 x float> %i.do, <4 x float> %i.ir)
  %i.iv = fadd <4 x float> %i.dn, %i.iu
  %i.iw = fdiv <4 x float> splat (float 5.000000e-01), %i.iv ; 2 uses
  %i.ix = fadd <4 x float> %i.co, %i.ic
  %i.iy = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.iz = fmul <4 x float> %i.ix, %i.iy           ; 3 uses
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.jb = insertelement <2 x float> %i.ja, float 1.000000e+00, i64 1
  %i.jc = shufflevector <4 x float> %i.iz, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jd = insertelement <2 x float> %i.jc, float 1.000000e+00, i64 1
  %i.je = fadd <4 x float> %i.du, %i.io
  %i.jf = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.jg = fmul <4 x float> %i.je, %i.jf           ; 3 uses
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ji = insertelement <2 x float> %i.jh, float 1.000000e+00, i64 1
  %i.jj = shufflevector <4 x float> %i.iz, <4 x float> %i.jg, <4 x i32> <i32 1, i32 3, i32 6, i32 7>
  %i.jk = fadd <4 x float> %i.jj, splat (float 5.000000e-01) ; 4 uses
  %i.jl = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.jk, <2 x i32> <i32 0, i32 4>
  %i.jm = fsub <2 x float> %i.jb, %i.jl
  %i.jn = fmul <2 x float> %i.ht, %i.jm
  %i.jo = fadd <2 x float> %i.hu, %i.jn
  store <2 x float> %i.jo, ptr %5, align 16, !tbaa !10
  %i.jp = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.jk, <2 x i32> <i32 0, i32 5>
  %i.jq = fsub <2 x float> %i.jd, %i.jp
  %i.jr = fmul <2 x float> %i.ht, %i.jq
  %i.js = fadd <2 x float> %i.hu, %i.jr
  store <2 x float> %i.js, ptr %i.dk, align 8, !tbaa !10
  %i.jt = shufflevector <4 x float> %i.jk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ju = insertelement <2 x float> %i.jt, float -5.000000e-01, i64 0
  %i.jv = fsub <2 x float> %i.ji, %i.ju
  %i.jw = fmul <2 x float> %i.ht, %i.jv
  %i.jx = fadd <2 x float> %i.hu, %i.jw
  store <2 x float> %i.jx, ptr %i.dl, align 16, !tbaa !10
  %i.jy = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.jg, <2 x i32> <i32 5, i32 1>
  %i.jz = shufflevector <4 x float> %i.jk, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ka = insertelement <2 x float> %i.jz, float -5.000000e-01, i64 0
  %i.kb = fsub <2 x float> %i.jy, %i.ka
  %i.kc = fmul <2 x float> %i.ht, %i.kb
  %i.kd = fadd <2 x float> %i.hu, %i.kc
  store <2 x float> %i.kd, ptr %i.dm, align 8, !tbaa !10
  %i.ke = load float, ptr %2, align 4, !tbaa !16  ; 2 uses
  %i.kf = load float, ptr %i.ct, align 4, !tbaa !16 ; 2 uses
  %i.kg = fmul float %i.fv, %i.kf
  %i.kh = call float @llvm.fmuladd.f32(float %i.fu, float %i.ke, float %i.kg)
  %i.ki = load float, ptr %i.cu, align 4, !tbaa !16 ; 2 uses
  %i.kj = call float @llvm.fmuladd.f32(float %i.fw, float %i.ki, float %i.kh)
  %i.kk = load float, ptr %i.cv, align 4, !tbaa !16
  %i.kl = fadd float %i.kk, %i.kj
  %i.km = load float, ptr %i.cw, align 4, !tbaa !16 ; 2 uses
  %i.kn = load float, ptr %i.cx, align 4, !tbaa !16 ; 2 uses
  %i.ko = fmul float %i.fv, %i.kn
  %i.kp = call float @llvm.fmuladd.f32(float %i.fu, float %i.km, float %i.ko)
  %i.kq = load float, ptr %i.cy, align 4, !tbaa !16 ; 2 uses
  %i.kr = call float @llvm.fmuladd.f32(float %i.fw, float %i.kq, float %i.kp)
  %i.ks = load float, ptr %i.cz, align 4, !tbaa !16
  %i.kt = fadd float %i.ks, %i.kr
  %i.ku = load float, ptr %i.da, align 4, !tbaa !16 ; 2 uses
  %i.kv = load float, ptr %i.db, align 4, !tbaa !16 ; 2 uses
  %i.kw = fmul float %i.fv, %i.kv
  %i.kx = call float @llvm.fmuladd.f32(float %i.fu, float %i.ku, float %i.kw)
  %i.ky = load float, ptr %i.dc, align 4, !tbaa !16 ; 2 uses
  %i.kz = call float @llvm.fmuladd.f32(float %i.fw, float %i.ky, float %i.kx)
  %i.la = load float, ptr %i.dd, align 4, !tbaa !16
  %i.lb = fadd float %i.la, %i.kz
  %i.lc = fmul float %i.ec, %i.eh                 ; 3 uses
  %i.ld = fmul float %i.ec, %i.el                 ; 3 uses
  %i.le = fmul float %i.ec, %i.eq                 ; 3 uses
  %i.lf = fmul float %i.ld, %i.kf
  %i.lg = call float @llvm.fmuladd.f32(float %i.lc, float %i.ke, float %i.lf)
  %i.lh = call float @llvm.fmuladd.f32(float %i.le, float %i.ki, float %i.lg) ; 3 uses
  %i.li = fmul float %i.ld, %i.kn
  %i.lj = call float @llvm.fmuladd.f32(float %i.lc, float %i.km, float %i.li)
  %i.lk = call float @llvm.fmuladd.f32(float %i.le, float %i.kq, float %i.lj) ; 3 uses
  %i.ll = fmul float %i.ld, %i.kv
  %i.lm = call float @llvm.fmuladd.f32(float %i.lc, float %i.ku, float %i.ll)
  %i.ln = call float @llvm.fmuladd.f32(float %i.le, float %i.ky, float %i.lm) ; 3 uses
  %i.lo = fsub float %i.kl, %i.df                 ; 3 uses
  %i.lp = fsub float %i.kt, %i.dh                 ; 3 uses
  %i.lq = fsub float %i.lb, %i.dj                 ; 3 uses
  %i.lr = fmul float %i.lp, %i.lp
  %i.ls = call float @llvm.fmuladd.f32(float %i.lo, float %i.lo, float %i.lr)
  %i.lt = call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %i.ls)
  %i.lu = call noundef float @sqrtf(float noundef %i.lt) #20
  %i.lv = fmul float %i.lk, %i.lk
  %i.lw = call float @llvm.fmuladd.f32(float %i.lh, float %i.lh, float %i.lv)
  %i.lx = call float @llvm.fmuladd.f32(float %i.ln, float %i.ln, float %i.lw)
  %i.ly = call noundef float @sqrtf(float noundef %i.lx) #20
  %i.lz = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.ma = insertelement <2 x float> %i.lz, float %i.ly, i64 1
  %i.mb = fdiv <2 x float> splat (float 1.000000e+00), %i.ma ; 2 uses
  %i.mc = extractelement <2 x float> %i.mb, i64 1 ; 3 uses
  %i.md = extractelement <2 x float> %i.mb, i64 0 ; 3 uses
  %i.me = fmul float %i.lo, %i.md
  %i.mf = fmul float %i.lp, %i.md
  %i.mg = fmul float %i.lq, %i.md
  %i.mh = fmul float %i.lh, %i.mc
  %i.mi = fmul float %i.lk, %i.mc
  %i.mj = fmul float %i.ln, %i.mc
  %i.mk = fmul float %i.mf, %i.mi
  %i.ml = call float @llvm.fmuladd.f32(float %i.me, float %i.mh, float %i.mk)
  %i.mm = call noundef float @llvm.fmuladd.f32(float %i.mg, float %i.mj, float %i.ml)
  %i.mn = fcmp ogt float %i.mm, 0.000000e+00
  br i1 %i.mn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.loopexit
  %i.mo = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8ImGuizmoL14directionColorE, i64 %i.ed
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !52
  %i.mr = or i32 %i.mq, 8421504
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.mo, ptr noundef nonnull %5, i32 noundef 4, i32 noundef %i.mr)
  br label %bb.h

bb.h:                                             ; preds = %.critedge.loopexit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.h
  %i.ms = add nuw nsw i32 %.043203, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ms, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !81
}

declare void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo8DrawGridEPKfS1_S1_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3) local_unnamed_addr #14 {
bb.a:
  %4 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 17 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = load float, ptr %i.m, align 4, !tbaa !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load float, ptr %i.o, align 8, !tbaa !10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !10 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load float, ptr %i.s, align 8, !tbaa !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ac = load <2 x float>, ptr %i.c, align 8, !tbaa !10 ; 3 uses
  %i.ad = load <4 x float>, ptr %i.e, align 4
  %i.ae = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.h, i64 0 ; 2 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.l, i64 0 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ak = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.n, i64 0 ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ao = load <8 x float>, ptr %i.w, align 8, !tbaa !10 ; 5 uses
  %i.ap = load float, ptr %i.y, align 4, !tbaa !10
  %i.aq = load <2 x float>, ptr %4, align 8, !tbaa !10 ; 3 uses
  %i.ar = load float, ptr %i.a, align 4, !tbaa !10
  %i.as = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.au = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aw = load <2 x float>, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ay = load <2 x float>, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ba = fmul float %i.ar, %i.j
  %i.bb = load <2 x float>, ptr %i.x, align 4, !tbaa !10 ; 2 uses
  %i.bc = shufflevector <2 x float> %i.aq, <2 x float> %i.bb, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.bd = fmul <4 x float> %i.av, %i.bc
  %i.be = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 4, i32 0> ; 2 uses
  %i.bf = shufflevector <2 x float> %i.aq, <2 x float> %i.be, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.at, <4 x float> %i.bd)
  %i.bh = shufflevector <2 x float> %i.ac, <2 x float> %i.bb, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.ax, <4 x float> %i.bg)
  %i.bj = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.bl = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, float %i.ba, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.af, <4 x float> %i.bm)
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.aj, <4 x float> %i.bn)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.an, <4 x float> %i.bo) ; 2 uses
  %i.bq = insertelement <4 x float> %i.ad, float %i.ap, i64 1
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.az, <4 x float> %i.bi) ; 6 uses
  %i.bt = load float, ptr %i.ab, align 4, !tbaa !10
  %i.bu = load float, ptr %i.aa, align 8, !tbaa !10
  %i.bv = load float, ptr %i.z, align 4, !tbaa !10
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.au, %i.bx
  %i.bz = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.as, <2 x float> %i.by)
  %i.cb = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.aw, <2 x float> %i.ca)
  %i.ce = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ay, <2 x float> %i.cd) ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ci = fcmp ult float %3, 0.000000e+00
  br i1 %i.ci, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.cj = fneg float %3                           ; 5 uses
  %i.ck = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.cl = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cm = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.cn = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.co, <2 x float> %i.cs)
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cn, <2 x float> %i.ct)
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cl, <2 x float> %i.cu) ; 2 uses
  %i.cw = fmul float %i.j, %i.r
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.p, float %i.h, float %i.cw)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.t, float %i.l, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.v, float %i.n, float %i.cy)
  %i.da = insertelement <2 x float> poison, float %i.r, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.au, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.p, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.as, <2 x float> %i.dc)
  %i.dg = insertelement <2 x float> poison, float %i.t, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.aw, <2 x float> %i.df)
  %i.dj = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.ay, <2 x float> %i.di)
  %i.dm = fmul <2 x float> %i.dl, zeroinitializer ; 4 uses
  %i.dn = extractelement <4 x float> %i.bs, i64 0
  %i.do = extractelement <2 x float> %i.dm, i64 0
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.dn, float %i.do)
  %i.dq = extractelement <4 x float> %i.bs, i64 2
  %i.dr = extractelement <2 x float> %i.dm, i64 1
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.dq, float %i.dr)
  %i.dt = insertelement <2 x float> poison, float %3, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dv, <2 x float> %i.dm)
  %i.dx = fmul float %i.cz, 0.000000e+00
  %i.dy = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %3, i64 1 ; 2 uses
  %i.ea = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> zeroinitializer
  %i.eb = insertelement <2 x float> poison, float %i.dx, i64 0 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ea, <2 x float> %i.ec)
  %i.ee = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ef = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eg = shufflevector <2 x float> %i.eb, <2 x float> %i.ed, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.eh = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ei = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %3, i64 1
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.el = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.em = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.en = shufflevector <4 x float> %i.bs, <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 3>
  %i.eo = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ep = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.eq = insertelement <4 x float> %i.ep, float %i.dp, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.ds, i64 3
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.098 = phi float [ %i.cj, %.lr.ph ], [ %i.gw, %bb.b ] ; 4 uses
  %i.es = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.et = insertelement <4 x float> poison, float %.098, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.bs, <4 x float> %i.er) ; 2 uses
  %i.ew = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.ex = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ey = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.el, <4 x float> %i.ey)
  %i.fa = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.098, i64 0 ; 2 uses
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.bp, <4 x float> %i.eg)
  %i.fd = shufflevector <4 x float> %i.eh, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.fe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.ef, <4 x float> %i.fc)
  %i.ff = fadd <4 x float> %i.ee, %i.fe
  %i.fg = fdiv <4 x float> splat (float 5.000000e-01), %i.ff ; 2 uses
  %i.fh = fadd <4 x float> %i.ch, %i.ez
  %i.fi = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fj = fmul <4 x float> %i.fh, %i.fi           ; 3 uses
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fl = insertelement <2 x float> %i.fk, float 1.000000e+00, i64 1
  %i.fm = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.fj, <2 x i32> <i32 5, i32 1>
  %i.fn = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %.098, i64 2
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fp = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %i.en, <4 x float> %i.fq)
  %i.fs = fadd <4 x float> %i.em, %i.fr
  %i.ft = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.fu = fmul <4 x float> %i.fs, %i.ft           ; 3 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fw = insertelement <2 x float> %i.fv, float 1.000000e+00, i64 1
  %i.fx = shufflevector <4 x float> %i.fj, <4 x float> %i.fu, <4 x i32> <i32 2, i32 3, i32 5, i32 7>
  %i.fy = fadd <4 x float> %i.fx, splat (float 5.000000e-01) ; 4 uses
  %i.fz = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.fy, <2 x i32> <i32 0, i32 4>
  %i.ga = fsub <2 x float> %i.fl, %i.fz
  %i.gb = fmul <2 x float> %i.ga, %i.ew
  %i.gc = fadd <2 x float> %i.gb, %i.ex
  store <2 x float> %i.gc, ptr %5, align 8
  %i.gd = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.fy, <2 x i32> <i32 0, i32 5>
  %i.ge = fsub <2 x float> %i.fm, %i.gd
  %i.gf = fmul <2 x float> %i.ge, %i.ew
  %i.gg = fadd <2 x float> %i.gf, %i.ex
  store <2 x float> %i.gg, ptr %6, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.es, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef -8355712, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.gh = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.gi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.gj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.gk = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.gl = insertelement <2 x float> %i.gk, float -5.000000e-01, i64 0
  %i.gm = fsub <2 x float> %i.fw, %i.gl
  %i.gn = fmul <2 x float> %i.gm, %i.gi
  %i.go = fadd <2 x float> %i.gn, %i.gj
  store <2 x float> %i.go, ptr %7, align 8
  %i.gp = shufflevector <4 x float> %i.fu, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gq = insertelement <2 x float> %i.gp, float 1.000000e+00, i64 1
  %i.gr = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.gs = insertelement <2 x float> %i.gr, float -5.000000e-01, i64 0
  %i.gt = fsub <2 x float> %i.gq, %i.gs
  %i.gu = fmul <2 x float> %i.gt, %i.gi
  %i.gv = fadd <2 x float> %i.gu, %i.gj
  store <2 x float> %i.gv, ptr %8, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.gh, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef -8355712, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.gw = fadd float %.098, 1.000000e+00          ; 2 uses
  %i.gx = fcmp ugt float %i.gw, %3
  br i1 %i.gx, label %._crit_edge, label %bb.b, !llvm.loop !82
}

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef range(i32 0, 3) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %5) unnamed_addr #16 {
bb.a:
  %i.a = zext nneg i32 %0 to i64                  ; 7 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !17
  %i.c = add nuw nsw i32 %0, 1                    ; 2 uses
  %i.d = icmp eq i32 %i.c, 3
  %i.e = select i1 %i.d, i32 0, i32 %i.c
  %i.f = zext nneg i32 %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !17
  %.urem = add nsw i32 %0, -1
  %.cmp = icmp eq i32 %0, 0
  %i.h = select i1 %.cmp, i32 2, i32 %.urem
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !17
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 796), i64 %i.a
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47, !range !33, !noundef !34
  store i8 %i.n, ptr %4, align 1, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 799), i64 %i.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !47, !range !33, !noundef !34
  store i8 %i.p, ptr %5, align 1, !tbaa !47
  %i.q = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %i.a
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %i.s = load <4 x float>, ptr %2, align 4, !tbaa !10
  %i.t = insertelement <4 x float> poison, float %i.r, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = fmul <4 x float> %i.u, %i.s
  store <4 x float> %i.v, ptr %2, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %i.f
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = load <4 x float>, ptr %3, align 4, !tbaa !10
  %i.z = insertelement <4 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = fmul <4 x float> %i.aa, %i.y
  store <4 x float> %i.ab, ptr %3, align 4, !tbaa !10
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16 ; 6 uses
  %i.ad = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16 ; 6 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16 ; 6 uses
  %i.af = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i = load float, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.ai = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !10 ; 5 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1
  %i.ak = extractelement <2 x float> %i.ai, i64 0
  %i.al = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> %i.ai, float 0.000000e+00, i64 1 ; 3 uses
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.0.0.copyload.i, i64 0 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ar = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x float> poison, float %i.af, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %i.an
  %i.ay = fneg float %.sroa.0.0.copyload.i        ; 3 uses
  %i.az = fneg float %i.ak                        ; 3 uses
  %i.ba = fneg float %i.aj                        ; 3 uses
  %i.bb = fmul float %i.ac, %i.az
  %i.bc = fmul float %i.ad, %i.az
  %.sroa.8.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.13.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 4 uses
  %i.be = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 400), align 8, !tbaa !16 ; 4 uses
  %i.bf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 4 uses
  %i.bg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 4 uses
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ap, <2 x float> %i.ao)
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.as, <2 x float> %i.bi)
  %i.bk = fadd <2 x float> %i.au, %i.bj           ; 2 uses
  %i.bl = fdiv <2 x float> splat (float 1.000000e+00), %i.bk ; 2 uses
  %i.bm = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bk)
  %i.bn = fcmp ogt <2 x float> %i.bm, splat (float f0x34000000) ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bo, %i.an
  %i.bq = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.ap, <2 x float> %i.bp)
  %i.bs = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ap, <2 x float> %i.ax)
  %i.bu = fmul float %i.bg, %i.az
  %i.bv = extractelement <2 x float> %i.bd, i64 0 ; 4 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bv, float %i.bu)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.be, float %i.bb)
  %i.by = extractelement <2 x float> %i.bf, i64 0 ; 4 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.by, float %i.bc)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ae, float %i.bz)
  %i.cb = fadd float %i.af, %i.ca                 ; 2 uses
  %i.cc = tail call float @llvm.fabs.f32(float %i.cb)
  %i.cd = fcmp ogt float %i.cc, f0x34000000       ; 2 uses
  %i.ce = fdiv float 1.000000e+00, %i.cb          ; 2 uses
  %i.cf = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cg = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 5 uses
  %i.ci = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 5 uses
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.cj, <2 x float> %i.br)
  %i.co = fadd <2 x float> %i.ck, %i.cn           ; 2 uses
  %i.cp = fmul <2 x float> %i.co, %i.bl
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.cl, <2 x float> %i.bt)
  %i.cr = fadd <2 x float> %i.cm, %i.cq           ; 2 uses
  %i.cs = fmul <2 x float> %i.cr, %i.bl
  %i.ct = select <2 x i1> %i.bn, <2 x float> %i.cs, <2 x float> %i.cr ; 3 uses
  %i.cu = select <2 x i1> %i.bn, <2 x float> %i.cp, <2 x float> %i.co ; 3 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = extractelement <2 x float> %i.cu, i64 1 ; 5 uses
  %i.cx = fsub float %i.cv, %i.cw                 ; 2 uses
  %i.cy = extractelement <2 x float> %i.ct, i64 0
  %i.cz = extractelement <2 x float> %i.ct, i64 1 ; 5 uses
  %i.da = fsub float %i.cy, %i.cz
  %i.db = fdiv float %i.da, %i.ag                 ; 2 uses
  %i.dc = fmul float %i.db, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.dc)
  %i.de = tail call noundef float @sqrtf(float noundef %i.dd) #20 ; 2 uses
  %i.df = load float, ptr %i.ah, align 4, !tbaa !15
  %i.dg = extractelement <2 x float> %i.ch, i64 0 ; 4 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.dg, float %i.bw)
  %i.di = extractelement <2 x float> %i.ci, i64 0 ; 4 uses
  %i.dj = fadd float %i.di, %i.dh                 ; 2 uses
  %i.dk = extractelement <2 x float> %i.ch, i64 1 ; 4 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.dk, float %i.bx)
  %i.dm = extractelement <2 x float> %i.ci, i64 1 ; 4 uses
  %i.dn = fadd float %i.dm, %i.dl                 ; 2 uses
  %i.do = fmul float %i.dj, %i.ce
  %i.dp = fmul float %i.dn, %i.ce
  %.sroa.8.0.i71 = select i1 %i.cd, float %i.dp, float %i.dn
  %.sroa.0.0.i72 = select i1 %i.cd, float %i.do, float %i.dj
  %i.dq = fsub float %.sroa.0.0.i72, %i.cw        ; 2 uses
  %i.dr = fsub float %.sroa.8.0.i71, %i.cz
  %i.ds = fdiv float %i.dr, %i.ag                 ; 2 uses
  %i.dt = fmul float %i.ds, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dt)
  %i.dv = tail call noundef float @sqrtf(float noundef %i.du) #20 ; 2 uses
  %.sroa.0.0.copyload.i80 = load float, ptr %2, align 4, !tbaa !10 ; 4 uses
  %.sroa.8.0.copyload.i82 = load float, ptr %.sroa.8.0..sroa_idx.i81, align 4, !tbaa !10 ; 4 uses
  %.sroa.13.0.copyload.i84 = load float, ptr %.sroa.13.0..sroa_idx.i83, align 4, !tbaa !10 ; 4 uses
  %i.dw = fmul float %i.bg, %.sroa.8.0.copyload.i82
  %i.dx = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i80, float %i.bv, float %i.dw)
  %i.dy = tail call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i84, float %i.dg, float %i.dx)
  %i.dz = fadd float %i.di, %i.dy                 ; 2 uses
  %i.ea = fmul float %i.ac, %.sroa.8.0.copyload.i82
  %i.eb = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i80, float %i.be, float %i.ea)
  %i.ec = tail call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i84, float %i.dk, float %i.eb)
  %i.ed = fadd float %i.dm, %i.ec                 ; 2 uses
  %i.ee = fmul float %i.ad, %.sroa.8.0.copyload.i82
  %i.ef = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i80, float %i.by, float %i.ee)
  %i.eg = tail call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i84, float %i.ae, float %i.ef)
  %i.eh = fadd float %i.af, %i.eg                 ; 2 uses
  %i.ei = tail call float @llvm.fabs.f32(float %i.eh)
  %i.ej = fcmp ogt float %i.ei, f0x34000000       ; 2 uses
  %i.ek = fdiv float 1.000000e+00, %i.eh          ; 2 uses
  %i.el = fmul float %i.dz, %i.ek
  %i.em = fmul float %i.ed, %i.ek
  %.sroa.8.0.i85 = select i1 %i.ej, float %i.em, float %i.ed
  %.sroa.0.0.i86 = select i1 %i.ej, float %i.el, float %i.dz
  %i.en = fsub float %.sroa.0.0.i86, %i.cw        ; 2 uses
  %i.eo = fsub float %.sroa.8.0.i85, %i.cz
  %i.ep = fdiv float %i.eo, %i.ag                 ; 2 uses
  %i.eq = fmul float %i.ep, %i.ep
  %i.er = tail call float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.eq)
  %i.es = tail call noundef float @sqrtf(float noundef %i.er) #20 ; 2 uses
  %i.et = fneg float %.sroa.0.0.copyload.i80      ; 3 uses
  %i.eu = fneg float %.sroa.8.0.copyload.i82      ; 3 uses
  %i.ev = fneg float %.sroa.13.0.copyload.i84     ; 3 uses
  %i.ew = fmul float %i.bg, %i.eu
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.et, float %i.bv, float %i.ew)
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.dg, float %i.ex)
  %i.ez = fadd float %i.di, %i.ey                 ; 2 uses
  %i.fa = fmul float %i.ac, %i.eu
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.et, float %i.be, float %i.fa)
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.dk, float %i.fb)
  %i.fd = fadd float %i.dm, %i.fc                 ; 2 uses
  %i.fe = fmul float %i.ad, %i.eu
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.et, float %i.by, float %i.fe)
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ae, float %i.ff)
  %i.fh = fadd float %i.af, %i.fg                 ; 2 uses
  %i.fi = tail call float @llvm.fabs.f32(float %i.fh)
end_hunk_2
begin_hunk_3_@_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf:bb.a
  %i.i = fcmp ogt float %i.f, 5.000000e-01
  br i1 %i.i, label %bb.e, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

bb.e:                                             ; preds = %bb.d
  %i.j = fsub float %i.c, %i.d
  %i.k = fcmp olt float %i.c, 0.000000e+00
  %i.l = select i1 %i.k, float -1.000000e+00, float 1.000000e+00
  %i.m = tail call float @llvm.fmuladd.f32(float %i.a, float %i.l, float %i.j)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %.sink.i = phi float [ %i.h, %bb.c ], [ %i.m, %bb.e ]
  store float %.sink.i, ptr %0, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

_ZN8ImGuizmoL11ComputeSnapEPff.exit:              ; preds = %bb.a, %bb.d, %.sink.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 4 uses
  %i.q = fcmp ugt float %i.p, f0x34000000
  br i1 %i.q, label %bb.f, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.f:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.r = load float, ptr %i.n, align 4, !tbaa !10 ; 4 uses
  %i.s = tail call float @fmodf(float noundef %i.r, float noundef %i.p) #20 ; 3 uses
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fdiv float %i.t, %i.p                    ; 2 uses
  %i.v = fcmp olt float %i.u, 5.000000e-01
  br i1 %i.v, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = fcmp ogt float %i.u, 5.000000e-01
  br i1 %i.w, label %bb.h, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.h:                                             ; preds = %bb.g
  %i.x = fsub float %i.r, %i.s
  %i.y = fcmp olt float %i.r, 0.000000e+00
  %i.z = select i1 %i.y, float -1.000000e+00, float 1.000000e+00
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.p, float %i.z, float %i.x)
  br label %.sink.split.i.1

bb.i:                                             ; preds = %bb.f
  %i.ab = fsub float %i.r, %i.s
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi float [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  store float %.sink.i.1, ptr %i.n, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

_ZN8ImGuizmoL11ComputeSnapEPff.exit.1:            ; preds = %.sink.split.i.1, %bb.g, %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10 ; 4 uses
  %i.af = fcmp ugt float %i.ae, f0x34000000
  br i1 %i.af, label %bb.j, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.j:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !10 ; 4 uses
  %i.ah = tail call float @fmodf(float noundef %i.ag, float noundef %i.ae) #20 ; 3 uses
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fdiv float %i.ai, %i.ae                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, 5.000000e-01
  br i1 %i.ak, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = fcmp ogt float %i.aj, 5.000000e-01
  br i1 %i.al, label %bb.l, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.l:                                             ; preds = %bb.k
  %i.am = fsub float %i.ag, %i.ah
  %i.an = fcmp olt float %i.ag, 0.000000e+00
  %i.ao = select i1 %i.an, float -1.000000e+00, float 1.000000e+00
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.am)
  br label %.sink.split.i.2

bb.m:                                             ; preds = %bb.j
  %i.aq = fsub float %i.ag, %i.ah
  br label %.sink.split.i.2

.sink.split.i.2:                                  ; preds = %bb.m, %bb.l
  %.sink.i.2 = phi float [ %i.aq, %bb.m ], [ %i.ap, %bb.l ]
  store float %.sink.i.2, ptr %i.ac, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

_ZN8ImGuizmoL11ComputeSnapEPff.exit.2:            ; preds = %.sink.split.i.2, %bb.k, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare noundef i32 @_Z14ImFormatStringPcmPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #12

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #12

declare void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #12

declare void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #14 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.052 = phi i32 [ 1, %bb.a ], [ %i.bx, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.c = shl nuw nsw i32 %.052, 1                 ; 2 uses
  %i.d = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.e = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.f = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.g = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.h = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.j = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = or disjoint i32 %i.c, 1
  %i.l = load <1 x float>, ptr %0, align 4
  %i.m = shufflevector <1 x float> %i.l, <1 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.n = load float, ptr %i.a, align 4, !tbaa !14
  %i.o = load float, ptr %i.b, align 4, !tbaa !13
  %i.p = insertelement <3 x float> %i.m, float %i.n, i64 1
  %i.q = insertelement <3 x float> %i.p, float %i.o, i64 2
  %i.r = fmul <3 x float> %i.q, splat (float 5.000000e-02) ; 3 uses
  %i.s = uitofp nneg i32 %i.c to float
  %i.t = uitofp nneg i32 %i.k to float
  %i.u = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = insertelement <2 x float> poison, float %i.s, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.t, i64 1 ; 3 uses
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = shufflevector <1 x float> %i.d, <1 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x float> %i.y, %i.x              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ab = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.w
  %i.ad = fmul <2 x float> %i.ac, %i.y            ; 2 uses
  %i.ae = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.af = fmul <2 x float> %i.ae, %i.w
  %i.ag = fmul <2 x float> %i.y, %i.af            ; 2 uses
  %i.ah = shufflevector <1 x float> %i.f, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.z, %i.ah
  %i.aj = shufflevector <1 x float> %i.e, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ak = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.aj, <2 x float> %i.ai)
  %i.al = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  %i.am = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = shufflevector <1 x float> %i.h, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fadd <2 x float> %i.an, %i.am
  %i.ap = fdiv <2 x float> splat (float 5.000000e-01), %i.ao
  %i.aq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.as = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = fmul <4 x float> %i.aa, %i.at
  %i.av = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.ar, <4 x float> %i.au)
  %i.ax = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.az = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ay, <4 x float> %i.aw)
  %i.bb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bd = fadd <4 x float> %i.bc, %i.ba
  %i.be = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bf = fmul <4 x float> %i.bd, %i.be           ; 4 uses
  %i.bg = extractelement <4 x float> %i.bf, i64 1
  %i.bh = fadd float %i.bg, 5.000000e-01
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float 1.000000e+00, i64 1
  %i.bk = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bh, i64 1
  %i.bl = fsub <2 x float> %i.bj, %i.bk
  %i.bm = fmul <2 x float> %i.i, %i.bl
  %i.bn = fadd <2 x float> %i.j, %i.bm
  store <2 x float> %i.bn, ptr %1, align 8
  %i.bo = extractelement <4 x float> %i.bf, i64 3
  %i.bp = fadd float %i.bo, 5.000000e-01
  %i.bq = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float 1.000000e+00, i64 1
  %i.bs = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bp, i64 1
  %i.bt = fsub <2 x float> %i.br, %i.bs
  %i.bu = fmul <2 x float> %i.i, %i.bt
  %i.bv = fadd <2 x float> %i.j, %i.bu
  store <2 x float> %i.bv, ptr %2, align 8
  %i.bw = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bw, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -2147483648, float noundef 6.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.bx = add nuw nsw i32 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_ImGuizmo.cpp() #19 section ".text.startup" {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), i8 0, i64 24, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZN8ImGuizmoL14directionUnaryE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN8ImGuizmo5vec_tE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 4}
!15 = !{!11, !9, i64 12}
!16 = !{!5, !5, i64 0}
!17 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTS10ImDrawList", !18, i64 0}
!20 = !{!"_ZTSN8ImGuizmo4MODEE", !5, i64 0}
!21 = !{!"_ZTSN8ImGuizmo8matrix_tE", !5, i64 0}
!22 = !{!"_ZTS6ImVec2", !9, i64 0, !9, i64 4}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"_ZTSN8ImGuizmo7ContextE", !19, i64 0, !20, i64 8, !21, i64 12, !21, i64 76, !21, i64 140, !21, i64 204, !21, i64 268, !21, i64 332, !21, i64 396, !21, i64 460, !11, i64 524, !11, i64 540, !11, i64 556, !11, i64 572, !11, i64 588, !11, i64 604, !11, i64 620, !9, i64 636, !22, i64 640, !22, i64 648, !22, i64 656, !9, i64 664, !11, i64 668, !23, i64 684, !23, i64 685, !11, i64 688, !11, i64 704, !11, i64 720, !11, i64 736, !9, i64 752, !9, i64 756, !11, i64 760, !11, i64 776, !9, i64 792, !5, i64 796, !5, i64 799, !5, i64 804, !11, i64 816, !11, i64 832, !11, i64 848, !11, i64 864, !6, i64 880, !5, i64 884, !23, i64 892, !21, i64 896, !6, i64 960, !9, i64 964, !9, i64 968, !9, i64 972, !9, i64 976, !9, i64 980, !9, i64 984, !9, i64 988, !23, i64 992}
!25 = !{!24, !9, i64 972}
!26 = !{!24, !9, i64 976}
!27 = !{!24, !9, i64 980}
!28 = !{!24, !9, i64 984}
!29 = !{!24, !9, i64 988}
!30 = !{!24, !23, i64 992}
!31 = !{!24, !19, i64 0}
!32 = !{!24, !23, i64 684}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"p1 _ZTS11ImFontAtlas", !18, i64 0}
!37 = !{!"p1 _ZTS6ImFont", !18, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!"p1 short", !18, i64 0}
!40 = !{!"_ZTS8ImVectorItE", !6, i64 0, !6, i64 4, !39, i64 8}
!41 = !{!"_ZTS7ImGuiIO", !6, i64 0, !6, i64 4, !22, i64 8, !9, i64 16, !9, i64 20, !35, i64 24, !35, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52, !9, i64 140, !9, i64 144, !18, i64 152, !36, i64 160, !9, i64 168, !23, i64 172, !37, i64 176, !22, i64 184, !23, i64 192, !23, i64 193, !23, i64 194, !23, i64 195, !23, i64 196, !23, i64 197, !9, i64 200, !35, i64 208, !35, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !22, i64 288, !5, i64 296, !9, i64 304, !9, i64 308, !23, i64 312, !23, i64 313, !23, i64 314, !23, i64 315, !5, i64 316, !5, i64 828, !23, i64 908, !23, i64 909, !23, i64 910, !23, i64 911, !23, i64 912, !23, i64 913, !23, i64 914, !9, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !22, i64 940, !23, i64 948, !6, i64 952, !6, i64 956, !22, i64 960, !5, i64 968, !5, i64 1008, !5, i64 1048, !5, i64 1053, !5, i64 1058, !5, i64 1063, !5, i64 1068, !5, i64 1073, !5, i64 1080, !5, i64 1100, !5, i64 1120, !5, i64 1160, !5, i64 1180, !5, i64 3228, !5, i64 5276, !5, i64 5356, !9, i64 5436, !23, i64 5440, !38, i64 5442, !40, i64 5448}
!42 = !{!41, !9, i64 288}
!43 = !{!24, !9, i64 648}
!44 = !{!41, !9, i64 292}
!45 = !{!24, !9, i64 652}
!46 = !{!24, !9, i64 664}
!47 = !{!23, !23, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!24, !9, i64 636}
!50 = !{!24, !23, i64 685}
!51 = !{!24, !23, i64 892}
!52 = !{!6, !6, i64 0}
!53 = !{!"branch_weights", i32 1, i32 1048575}
!54 = !{!24, !9, i64 964}
!55 = !{!24, !9, i64 968}
!56 = distinct !{!56, !48}
!57 = distinct !{!57, !48}
!58 = !{!24, !9, i64 640}
!59 = !{!24, !9, i64 644}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = distinct !{!68, !48}
!69 = distinct !{!69, !48}
!70 = !{!24, !20, i64 8}
!71 = !{i64 0, i64 64, !16}
!72 = !{!24, !6, i64 960}
!73 = !{!24, !9, i64 756}
!74 = !{!24, !9, i64 752}
!75 = !{!24, !9, i64 792}
!76 = !{!24, !6, i64 880}
!77 = !{!"branch_weights", i32 1, i32 2}
!78 = !{!22, !9, i64 0}
!79 = !{!22, !9, i64 4}
!80 = !{!35, !35, i64 0}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !48}
end_hunk_3
