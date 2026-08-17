inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN5Eigen8internal33selfadjoint_rank2_update_selectorIflNS_5BlockINS2_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEENS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELi1EE3runEPflRKS6_RKS8_RKf:bb.a
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.dq ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <4 x float>, ptr %i.ds, align 4, !tbaa !19, !alias.scope !148
  %wide.load77 = load <4 x float>, ptr %i.dt, align 4, !tbaa !19, !alias.scope !148
  %i.du = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dv = fmul <4 x float> %broadcast.splat, %wide.load77
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.dq ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load78 = load <4 x float>, ptr %i.dw, align 4, !tbaa !19, !alias.scope !151
  %wide.load79 = load <4 x float>, ptr %i.dx, align 4, !tbaa !19, !alias.scope !151
  %i.dy = fmul <4 x float> %broadcast.splat76, %wide.load78
  %i.dz = fmul <4 x float> %broadcast.splat76, %wide.load79
  %i.ea = fadd <4 x float> %i.du, %i.dy
  %i.eb = fadd <4 x float> %i.dv, %i.dz
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load80 = load <4 x float>, ptr %i.dr, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %wide.load81 = load <4 x float>, ptr %i.ec, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %i.ed = fadd <4 x float> %wide.load80, %i.ea
  %i.ee = fadd <4 x float> %wide.load81, %i.eb
  store <4 x float> %i.ed, ptr %i.dr, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  store <4 x float> %i.ee, ptr %i.ec, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader114

.lr.ph.i17.i.i.i.i.i.i.preheader114:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dp, %middle.block ] ; 7 uses
  %i.eg = add i64 %.062, %.05.i18.i.i.i.i.i.i.ph
  %i.eh = sub i64 %i.b, %i.eg
  %xtraiter116 = and i64 %i.eh, 1
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader114
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !19
  %i.el = fmul float %i.v, %i.ek
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.en = load float, ptr %i.em, align 4, !tbaa !19
  %i.eo = fmul float %i.ad, %i.en
  %i.ep = fadd float %i.el, %i.eo
  %i.eq = load float, ptr %i.ei, align 4, !tbaa !19
  %i.er = fadd float %i.eq, %i.ep
  store float %i.er, ptr %i.ei, align 4, !tbaa !19
  %i.es = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader114
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader114 ], [ %i.es, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.et = icmp eq i64 %i.n, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.et, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.05.i18.i.i.i.i.i.i
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !19
  %i.ex = fmul float %i.v, %i.ew
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05.i18.i.i.i.i.i.i
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !19
  %i.fa = fmul float %i.ad, %i.ez
  %i.fb = fadd float %i.ex, %i.fa
  %i.fc = load float, ptr %i.eu, align 4, !tbaa !19
  %i.fd = fadd float %i.fc, %i.fb
  store float %i.fd, ptr %i.eu, align 4, !tbaa !19
  %i.fe = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 3 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.fe
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !19
  %i.fi = fmul float %i.v, %i.fh
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.fe
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !19
  %i.fl = fmul float %i.ad, %i.fk
  %i.fm = fadd float %i.fi, %i.fl
  %i.fn = load float, ptr %i.ff, align 4, !tbaa !19
  %i.fo = fadd float %i.fn, %i.fm
  store float %i.fo, ptr %i.ff, align 4, !tbaa !19
  %i.fp = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fp, %i.w
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !157

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ga, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.021.i.i.i.i.i.i
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !tbaa !47
  %i.ft = fmul <4 x float> %i.cy, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.021.i.i.i.i.i.i
  %i.fv = load <4 x float>, ptr %i.fu, align 1, !tbaa !47
  %i.fw = fmul <4 x float> %i.da, %i.fv
  %i.fx = fadd <4 x float> %i.ft, %i.fw
  %i.fy = load <4 x float>, ptr %i.fq, align 16, !tbaa !47
  %i.fz = fadd <4 x float> %i.fy, %i.fx
  store <4 x float> %i.fz, ptr %i.fq, align 16, !tbaa !47
  %i.ga = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.as
  br i1 %i.gb, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !158

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  %i.gc = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gc, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %5 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %7 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %9 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::Block.439", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 8, !tbaa !19
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.af = icmp eq i64 %i.b, 1
  br i1 %i.af, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ag = sub i64 2, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ag, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.0.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.0107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.0107 = add nsw i64 %.0.in106, -1              ; 7 uses
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.ai = add i64 %i.ah, %.0107                   ; 7 uses
  %i.aj = sub i64 2, %i.ai                        ; 4 uses
  %i.ak = load i8, ptr %i.h, align 8, !tbaa !42, !range !163, !noundef !161
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ai
  %.idx.i.i.i.i = shl nsw i64 %i.ai, 3
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %.idx.i.i.i.i ; 2 uses
  %i.ao = add nsw i64 %i.ah, %.0.in106            ; 5 uses
  %i.ap = sub nsw i64 2, %i.ao                    ; 2 uses
  %.idx.i.i.i.i.i = shl nsw i64 %.0107, 3         ; 3 uses
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.an, ptr %3, align 8, !tbaa !125, !alias.scope !164
  store i64 %i.aj, ptr %i.u, align 8, !tbaa !81, !alias.scope !164
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !81, !alias.scope !164
  store ptr %1, ptr %i.w, align 8, !tbaa !38, !alias.scope !164
  store i64 %i.ai, ptr %i.x, align 8, !tbaa !81, !alias.scope !164
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !81, !alias.scope !164
  store i64 2, ptr %i.z, align 8, !tbaa !167, !alias.scope !164
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !160, !noalias !176, !nonnull !161, !align !162 ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i.i.i.i.i
  store ptr %i.as, ptr %4, align 8, !tbaa !177, !alias.scope !176
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !81, !alias.scope !176
  store ptr %i.aq, ptr %i.ab, align 8, !tbaa !38, !alias.scope !176
  store i64 %i.ao, ptr %i.ac, align 8, !tbaa !81, !alias.scope !176
  store i64 %.0107, ptr %i.ad, align 8, !tbaa !81, !alias.scope !176
  store i64 2, ptr %i.ae, align 8, !tbaa !179, !alias.scope !176
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.an, ptr %5, align 8, !tbaa !125, !alias.scope !183
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !81, !alias.scope !183
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !81, !alias.scope !183
  store ptr %1, ptr %i.k, align 8, !tbaa !38, !alias.scope !183
  store i64 %i.ai, ptr %i.l, align 8, !tbaa !81, !alias.scope !183
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !81, !alias.scope !183
  store i64 2, ptr %i.n, align 8, !tbaa !167, !alias.scope !183
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.av = load ptr, ptr %0, align 8, !tbaa !160, !noalias !192, !nonnull !161, !align !162 ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i.i.i.i
  store ptr %i.ax, ptr %6, align 8, !tbaa !177, !alias.scope !192
  store i64 %i.ap, ptr %i.o, align 8, !tbaa !81, !alias.scope !192
  store ptr %i.av, ptr %i.p, align 8, !tbaa !38, !alias.scope !192
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !81, !alias.scope !192
  store i64 %.0107, ptr %i.r, align 8, !tbaa !81, !alias.scope !192
  store i64 2, ptr %i.s, align 8, !tbaa !179, !alias.scope !192
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bb = sub nsw i64 2, %.0.in106                ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.0.in106 ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = lshr exact i64 %i.bd, 2
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = and i64 %i.bf, 3
  %i.bh = call i64 @llvm.smin.i64(i64 %i.bg, i64 %i.bb) ; 8 uses
  %i.bi = sub nsw i64 %i.bb, %i.bh                ; 3 uses
  %i.bj = and i64 %i.bi, -4
  %i.bk = add i64 %i.bj, %i.bh                    ; 2 uses
  %i.bl = icmp sgt i64 %i.bh, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = shl nuw nsw i64 %i.bh, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bc, i8 0, i64 %i.bm, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = icmp sgt i64 %i.bi, 3
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = shl nuw i64 %i.bh, 2
  %scevgep.i = getelementptr i8, ptr %i.bc, i64 %i.bo
  %i.bp = add nsw i64 %i.bh, 4
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bk, i64 %i.bp)
  %i.bq = xor i64 %i.bh, -1
  %i.br = add i64 %smax.i, %i.bq
  %i.bs = shl i64 %i.br, 2
  %i.bt = and i64 %i.bs, -16
  %i.bu = add i64 %i.bt, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bu, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = icmp slt i64 %i.bk, %i.bb
  br i1 %i.bv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = shl i64 %i.bi, 2                        ; 2 uses
  %i.bx = and i64 %i.bw, -16
  %i.by = shl nuw i64 %i.bh, 2
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.bx
  %scevgep1.i = getelementptr i8, ptr %i.bz, i64 %i.by
  %i.ca = and i64 %i.bw, 12
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.ca, i1 false), !tbaa !19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cb = icmp samesign ugt i64 %.0.in106, 1
  br i1 %i.cb, label %bb.c, label %.preheader, !llvm.loop !193

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.052109 = phi i64 [ %i.df, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = shl nuw nsw i64 %.052109, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cd = sub nsw i64 1, %.052109                 ; 3 uses
  %i.ce = getelementptr [4 x i8], ptr %i.cc, i64 %.052109
  %i.cf = getelementptr i8, ptr %i.ce, i64 4      ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = and i64 %i.ci, 3
  %i.ck = call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.cd) ; 8 uses
  %i.cl = sub i64 %i.cd, %i.ck                    ; 3 uses
  %i.cm = sdiv i64 %i.cl, 4                       ; 2 uses
  %i.cn = shl nsw i64 %i.cm, 2                    ; 2 uses
  %i.co = add i64 %i.cn, %i.ck                    ; 2 uses
  %i.cp = icmp sgt i64 %i.ck, 0
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cq = shl nuw nsw i64 %i.ck, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cf, i8 0, i64 %i.cq, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cr = icmp sgt i64 %i.cl, 3
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cs = shl nuw i64 %i.ck, 2
  %scevgep.i65 = getelementptr i8, ptr %i.cf, i64 %i.cs
  %i.ct = add nsw i64 %i.ck, 4
  %smax.i66 = call i64 @llvm.smax.i64(i64 %i.co, i64 %i.ct)
  %i.cu = xor i64 %i.ck, -1
  %i.cv = add i64 %smax.i66, %i.cu
  %i.cw = shl i64 %i.cv, 2
  %i.cx = and i64 %i.cw, -16
  %i.cy = add i64 %i.cx, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i65, i8 0, i64 %i.cy, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cz = icmp slt i64 %i.co, %i.cd
  br i1 %i.cz, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.da = shl i64 %i.cm, 4
  %i.db = shl nuw i64 %i.ck, 2
  %i.dc = getelementptr i8, ptr %i.cf, i64 %i.da
  %scevgep1.i63 = getelementptr i8, ptr %i.dc, i64 %i.db
  %i.dd = sub i64 %i.cl, %i.cn
  %i.de = shl nuw i64 %i.dd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i63, i8 0, i64 %i.de, i1 false), !tbaa !19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.df = add nuw nsw i64 %.052109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !194

bb.f:                                             ; preds = %bb.a
  %i.dg = icmp sgt i64 %i.b, 48
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !19
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.dh = icmp sgt i64 %i.b, 0
  br i1 %i.dh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.051.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.051104, %bb.l ] ; 3 uses
  %.051104 = add nsw i64 %.051.in103, -1          ; 7 uses
  %i.eh = load i64, ptr %i.di, align 8, !tbaa !46 ; 2 uses
  %i.ei = add i64 %i.eh, %.051104                 ; 7 uses
  %i.ej = sub i64 2, %i.ei                        ; 4 uses
  %i.ek = load i8, ptr %i.dj, align 8, !tbaa !42, !range !163, !noundef !161
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ei
  %.idx.i.i.i.i69 = shl nsw i64 %i.ei, 3
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.eo = add nsw i64 %i.eh, %.051.in103          ; 5 uses
  %i.ep = sub nsw i64 2, %i.eo                    ; 2 uses
  %.idx.i.i.i.i.i70 = shl nsw i64 %.051104, 3     ; 2 uses
  br i1 %i.el, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.en, ptr %7, align 8, !tbaa !125, !alias.scope !195
  store i64 %i.ej, ptr %i.dw, align 8, !tbaa !81, !alias.scope !195
  store i64 %i.ej, ptr %i.dx, align 8, !tbaa !81, !alias.scope !195
  store ptr %1, ptr %i.dy, align 8, !tbaa !38, !alias.scope !195
  store i64 %i.ei, ptr %i.dz, align 8, !tbaa !81, !alias.scope !195
  store i64 %i.ei, ptr %i.ea, align 8, !tbaa !81, !alias.scope !195
  store i64 2, ptr %i.eb, align 8, !tbaa !167, !alias.scope !195
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.eq = load ptr, ptr %0, align 8, !tbaa !160, !noalias !204, !nonnull !161, !align !162 ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i.i.i.i.i70
  store ptr %i.es, ptr %8, align 8, !tbaa !177, !alias.scope !204
  store i64 %i.ep, ptr %i.ec, align 8, !tbaa !81, !alias.scope !204
  store ptr %i.eq, ptr %i.ed, align 8, !tbaa !38, !alias.scope !204
  store i64 %i.eo, ptr %i.ee, align 8, !tbaa !81, !alias.scope !204
  store i64 %.051104, ptr %i.ef, align 8, !tbaa !81, !alias.scope !204
  store i64 2, ptr %i.eg, align 8, !tbaa !179, !alias.scope !204
  %i.et = load ptr, ptr %i.dv, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.eu, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.en, ptr %9, align 8, !tbaa !125, !alias.scope !205
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !81, !alias.scope !205
  store i64 %i.ej, ptr %i.dl, align 8, !tbaa !81, !alias.scope !205
  store ptr %1, ptr %i.dm, align 8, !tbaa !38, !alias.scope !205
  store i64 %i.ei, ptr %i.dn, align 8, !tbaa !81, !alias.scope !205
  store i64 %i.ei, ptr %i.do, align 8, !tbaa !81, !alias.scope !205
  store i64 2, ptr %i.dp, align 8, !tbaa !167, !alias.scope !205
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ev = load ptr, ptr %0, align 8, !tbaa !160, !noalias !214, !nonnull !161, !align !162 ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.eo
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx.i.i.i.i.i70
  store ptr %i.ex, ptr %10, align 8, !tbaa !177, !alias.scope !214
  store i64 %i.ep, ptr %i.dq, align 8, !tbaa !81, !alias.scope !214
  store ptr %i.ev, ptr %i.dr, align 8, !tbaa !38, !alias.scope !214
  store i64 %i.eo, ptr %i.ds, align 8, !tbaa !81, !alias.scope !214
  store i64 %.051104, ptr %i.dt, align 8, !tbaa !81, !alias.scope !214
  store i64 2, ptr %i.du, align 8, !tbaa !179, !alias.scope !214
  %i.ey = load ptr, ptr %i.dv, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.ez, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fa = icmp samesign ugt i64 %.051.in103, 1
  br i1 %i.fa, label %bb.i, label %.loopexit, !llvm.loop !215

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.660", align 8 ; 19 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.551", align 8 ; 14 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.570", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.574", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Map.462", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load float, ptr %2, align 4, !tbaa !19   ; 2 uses
  br i1 %i.c, label %.preheader.lr.ph.i.i.i.i.i.i, label %bb.b

.preheader.lr.ph.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %i.d            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81   ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.lr.ph.i.i.i.i.i.i
  %i.i = load ptr, ptr %0, align 8, !tbaa !125    ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %.preheader.i.i.i.i.i.i
  %n.vec178 = and i64 %i.g, 9223372036854775800   ; 3 uses
  %broadcast.splatinsert179 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat180 = shufflevector <4 x float> %broadcast.splatinsert179, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next185, %vector.body181 ] ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %index182 ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16       ; 2 uses
  %wide.load183 = load <4 x float>, ptr %i.j, align 4, !tbaa !19
  %wide.load184 = load <4 x float>, ptr %i.k, align 4, !tbaa !19
  %i.l = fmul <4 x float> %broadcast.splat180, %wide.load183
  %i.m = fmul <4 x float> %broadcast.splat180, %wide.load184
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !19
  store <4 x float> %i.m, ptr %i.k, align 4, !tbaa !19
  %index.next185 = add nuw i64 %index182, 8       ; 2 uses
  %i.n = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.n, label %middle.block186, label %vector.body181, !llvm.loop !216

middle.block186:                                  ; preds = %vector.body181
  %cmp.n187 = icmp eq i64 %i.g, %n.vec178
  br i1 %cmp.n187, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %.preheader.i.i.i.i.i.i, %middle.block186
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %n.vec178, %middle.block186 ]
  br label %scalar.ph175

scalar.ph175:                                     ; preds = %scalar.ph175.preheader, %scalar.ph175
  %.09.i.i.i.i.i.i = phi i64 [ %i.r, %scalar.ph175 ], [ %.09.i.i.i.i.i.i.ph, %scalar.ph175.preheader ] ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.i, i64 %.09.i.i.i.i.i.i ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fmul float %i.e, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !19
  %i.r = add nuw nsw i64 %.09.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.r, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph175, !llvm.loop !217

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp une float %i.d, 0.000000e+00
  br i1 %i.s, label %bb.c, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !81   ; 11 uses
  store ptr %3, ptr %9, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !81
  %i.w = add nsw i64 %i.b, -1                     ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !125    ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8        ; 5 uses
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store ptr %i.y, ptr %5, align 8
  %.sroa.048.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %.sroa.048.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 0, ptr %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 1, ptr %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 2, ptr %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 160
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !220
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !177
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !222
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %i.w, ptr %i.ad, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %3, ptr %6, align 8, !tbaa !239
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !241
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.af, align 8, !tbaa !243
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.ag, align 8, !tbaa !245
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ah, align 8, !tbaa !247
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSC_IKSD_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ai = load ptr, ptr %0, align 8, !tbaa !125, !noalias !249 ; 17 uses
  %i.aj = load ptr, ptr %9, align 8, !tbaa !218   ; 18 uses
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !81  ; 9 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3
  %i.aq = call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ak)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.d ], [ %i.ak, %bb.c ] ; 13 uses
  %i.ar = sub nsw i64 %i.ak, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.as = sdiv i64 %i.ar, 4                       ; 3 uses
  %i.at = shl nsw i64 %i.as, 2
  %i.au = add nsw i64 %i.at, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.av = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader194, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aw = shl i64 %.0.i.i.i.i.i.i.i, 2            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.aw
  %scevgep63 = getelementptr i8, ptr %i.ai, i64 %i.aw
  %bound0 = icmp ult ptr %i.aj, %scevgep63
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader194, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !19, !alias.scope !252
  %wide.load64 = load <4 x float>, ptr %i.az, align 4, !tbaa !19, !alias.scope !252
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load65 = load <4 x float>, ptr %i.ax, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  %wide.load66 = load <4 x float>, ptr %i.ba, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  %i.bb = fadd <4 x float> %wide.load, %wide.load65
  %i.bc = fadd <4 x float> %wide.load64, %wide.load66
  store <4 x float> %i.bb, ptr %i.ax, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  store <4 x float> %i.bc, ptr %i.ba, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader194

.lr.ph.i.i.i.i.i.i.i.preheader194:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
