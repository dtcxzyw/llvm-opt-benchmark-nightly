Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_:bb.a
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  %lcmp.mod141 = icmp ne i64 %xtraiter137, 0
  br label %bb.e

.lr.ph60:                                         ; preds = %.preheader49, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit
  %.03259 = phi i64 [ %i.ku, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit ], [ %.03563, %.preheader49 ] ; 3 uses
  %i.ir = load ptr, ptr %0, align 8, !tbaa !1150, !nonnull !88, !align !89 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !220
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !91
  %i.iv = load ptr, ptr %i.et, align 8, !tbaa !1151, !nonnull !88, !align !89 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !223 ; 5 uses
  %i.iy = icmp sgt i64 %i.ix, 0
  br i1 %i.iy, label %.lr.ph.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph60
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !220
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.03259 ; 3 uses
  %i.jf = load i64, ptr %i.jb, align 8, !tbaa !91 ; 3 uses
  %i.jg = load ptr, ptr %i.iz, align 8, !tbaa !220
  %i.jh = load i64, ptr %i.jc, align 8, !tbaa !91
  %i.ji = mul nsw i64 %i.jh, %.03464
  %i.jj = getelementptr [8 x i8], ptr %i.jg, i64 %i.ji ; 3 uses
  %xtraiter130 = and i64 %i.ix, 1
  %i.jk = icmp eq i64 %i.ix, 1
  br i1 %i.jk, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter135 = and i64 %i.ix, 9223372036854775806
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.new
  %i.jl = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.new ], [ %i.ke, %bb.d ]
  %.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.kf, %bb.d ] ; 4 uses
  %niter136 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter136.next.1, %bb.d ]
  %i.jm = mul nsw i64 %.012.i.i.i.i, %i.jf
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jm
  %i.jo = load <2 x double>, ptr %i.jn, align 1, !tbaa !24
  %i.jp = getelementptr [8 x i8], ptr %i.jj, i64 %.012.i.i.i.i
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !42
  %i.jr = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x double> %i.jo, %i.js
  %i.ju = fadd <2 x double> %i.jl, %i.jt
  %i.jv = or disjoint i64 %.012.i.i.i.i, 1        ; 2 uses
  %i.jw = mul nsw i64 %i.jv, %i.jf
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jw
  %i.jy = load <2 x double>, ptr %i.jx, align 1, !tbaa !24
  %i.jz = getelementptr [8 x i8], ptr %i.jj, i64 %i.jv
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !42
  %i.kb = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = fmul <2 x double> %i.jy, %i.kc
  %i.ke = fadd <2 x double> %i.ju, %i.kd          ; 3 uses
  %i.kf = add nuw nsw i64 %.012.i.i.i.i, 2        ; 2 uses
  %niter136.next.1 = add nuw nsw i64 %niter136, 2 ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1135

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod132.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod132.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.ke, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ]
  %.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.kf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.ix to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.kg = mul nsw i64 %.012.i.i.i.i.epil.init, %i.jf
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.kg
  %i.ki = load <2 x double>, ptr %i.kh, align 1, !tbaa !24
  %i.kj = getelementptr [8 x i8], ptr %i.jj, i64 %.012.i.i.i.i.epil.init
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !42
  %i.kl = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x double> %i.ki, %i.km
  %i.ko = fadd <2 x double> %.epil.init, %i.kn
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, %.lr.ph60
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph60 ], [ %i.ke, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ], [ %i.ko, %.epil.preheader ]
  %i.kp = mul nsw i64 %i.iu, %.03464
  %i.kq = getelementptr [8 x i8], ptr %i.is, i64 %i.kp
  %i.kr = getelementptr [8 x i8], ptr %i.kq, i64 %.03259 ; 2 uses
  %i.ks = load <2 x double>, ptr %i.kr, align 16, !tbaa !24
  %i.kt = fsub <2 x double> %i.ks, %.0.i.i.i
  store <2 x double> %i.kt, ptr %i.kr, align 16, !tbaa !24
  %i.ku = add nsw i64 %.03259, 2                  ; 2 uses
  %i.kv = icmp slt i64 %i.ku, %i.ew
  br i1 %i.kv, label %.lr.ph60, label %.preheader, !llvm.loop !1136

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42, %.lr.ph62, %.preheader
  %i.kw = add nsw i64 %.03563, %i.eo
  %i.kx = srem i64 %i.kw, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ej, i64 %i.kx)
  %i.ky = add nuw nsw i64 %.03464, 1              ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ky, %i.el
  br i1 %exitcond75.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %bb.c, !llvm.loop !1137

bb.e:                                             ; preds = %.lr.ph62.split, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42
  %.061 = phi i64 [ %i.ew, %.lr.ph62.split ], [ %i.mu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42 ] ; 3 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %.061 ; 6 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !42
  %i.lb = load double, ptr %i.if, align 8, !tbaa !42
  %i.lc = fmul double %i.la, %i.lb                ; 3 uses
  br i1 %i.ij, label %.lr.ph.i.i.i.i.i.i38.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42

.lr.ph.i.i.i.i.i.i38.preheader:                   ; preds = %bb.e
  br i1 %i.iq, label %.lr.ph.i.i.i.i.i.i38.epil.preheader, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.preheader, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.mi, %.lr.ph.i.i.i.i.i.i38 ], [ 1, %.lr.ph.i.i.i.i.i.i38.preheader ] ; 6 uses
  %.089.i.i.i.i.i.i40 = phi double [ %i.mh, %.lr.ph.i.i.i.i.i.i38 ], [ %i.lc, %.lr.ph.i.i.i.i.i.i38.preheader ]
  %niter143 = phi i64 [ %niter143.next.3, %.lr.ph.i.i.i.i.i.i38 ], [ 0, %.lr.ph.i.i.i.i.i.i38.preheader ]
  %i.ld = mul nsw i64 %.010.i.i.i.i.i.i39, %i.in
  %i.le = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !42
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.010.i.i.i.i.i.i39
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !42
  %i.li = fmul double %i.lf, %i.lh
  %i.lj = fadd double %.089.i.i.i.i.i.i40, %i.li
  %i.lk = add nuw nsw i64 %.010.i.i.i.i.i.i39, 1  ; 2 uses
  %i.ll = mul nsw i64 %i.lk, %i.in
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !42
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.lk
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !42
  %i.lq = fmul double %i.ln, %i.lp
  %i.lr = fadd double %i.lj, %i.lq
  %i.ls = add nuw nsw i64 %.010.i.i.i.i.i.i39, 2  ; 2 uses
  %i.lt = mul nsw i64 %i.ls, %i.in
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.lt
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !42
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ls
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !42
  %i.ly = fmul double %i.lv, %i.lx
  %i.lz = fadd double %i.lr, %i.ly
  %i.ma = add nuw nsw i64 %.010.i.i.i.i.i.i39, 3  ; 2 uses
  %i.mb = mul nsw i64 %i.ma, %i.in
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.mb
  %i.md = load double, ptr %i.mc, align 8, !tbaa !42
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ma
  %i.mf = load double, ptr %i.me, align 8, !tbaa !42
  %i.mg = fmul double %i.md, %i.mf
  %i.mh = fadd double %i.lz, %i.mg                ; 3 uses
  %i.mi = add nuw nsw i64 %.010.i.i.i.i.i.i39, 4  ; 2 uses
  %niter143.next.3 = add i64 %niter143, 4         ; 2 uses
  %niter143.ncmp.3 = icmp eq i64 %niter143.next.3, %unroll_iter142
  br i1 %niter143.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i38, !llvm.loop !1116

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i38
  br i1 %lcmp.mod139.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42, label %.lr.ph.i.i.i.i.i.i38.epil.preheader

.lr.ph.i.i.i.i.i.i38.epil.preheader:              ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i38.preheader
  %.010.i.i.i.i.i.i39.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i38.preheader ], [ %i.mi, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.loopexit.unr-lcssa ]
  %.089.i.i.i.i.i.i40.epil.init = phi double [ %i.lc, %.lr.ph.i.i.i.i.i.i38.preheader ], [ %i.mh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %.lr.ph.i.i.i.i.i.i38.epil

.lr.ph.i.i.i.i.i.i38.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i38.epil, %.lr.ph.i.i.i.i.i.i38.epil.preheader
  %.010.i.i.i.i.i.i39.epil = phi i64 [ %i.mq, %.lr.ph.i.i.i.i.i.i38.epil ], [ %.010.i.i.i.i.i.i39.epil.init, %.lr.ph.i.i.i.i.i.i38.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i40.epil = phi double [ %i.mp, %.lr.ph.i.i.i.i.i.i38.epil ], [ %.089.i.i.i.i.i.i40.epil.init, %.lr.ph.i.i.i.i.i.i38.epil.preheader ]
  %epil.iter138 = phi i64 [ %epil.iter138.next, %.lr.ph.i.i.i.i.i.i38.epil ], [ 0, %.lr.ph.i.i.i.i.i.i38.epil.preheader ]
  %i.mj = mul nsw i64 %.010.i.i.i.i.i.i39.epil, %i.in
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !42
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.010.i.i.i.i.i.i39.epil
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !42
  %i.mo = fmul double %i.ml, %i.mn
  %i.mp = fadd double %.089.i.i.i.i.i.i40.epil, %i.mo ; 2 uses
  %i.mq = add nuw nsw i64 %.010.i.i.i.i.i.i39.epil, 1
  %epil.iter138.next = add i64 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i64 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42, label %.lr.ph.i.i.i.i.i.i38.epil, !llvm.loop !1138

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i38.epil, %bb.e
  %.0.i.i.i.i37 = phi double [ %i.lc, %bb.e ], [ %i.mh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.loopexit.unr-lcssa ], [ %i.mp, %.lr.ph.i.i.i.i.i.i38.epil ]
  %i.mr = getelementptr [8 x i8], ptr %i.il, i64 %.061 ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !42
  %i.mt = fsub double %i.ms, %.0.i.i.i.i37
  store double %i.mt, ptr %i.mr, align 8, !tbaa !42
  %i.mu = add nsw i64 %.061, 1                    ; 2 uses
  %i.mv = icmp slt i64 %i.mu, %i.ej
  br i1 %i.mv, label %bb.e, label %._crit_edge, !llvm.loop !1139

_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit: ; preds = %._crit_edge.split.split.i, %._crit_edge.split.split.us.us.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.split.i, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS4_IKNS_5BlockISB_Li1ELin1ELb0EEEEENS4_INSD_ISA_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSP_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1160, !nonnull !88, !align !89 ; 4 uses
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 7 uses
  %.sroa.031.0.copyload45 = ptrtoaddr ptr %.sroa.031.0.copyload to i64
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !42
  %i.c = icmp ugt i64 %.sroa.533.0.copyload, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = shl nuw i64 %.sroa.533.0.copyload, 3     ; 2 uses
  %i.f = icmp samesign ugt i64 %.sroa.533.0.copyload, 16384 ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.e) #30 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = add nuw nsw i64 %i.e, 15
  %i.k = alloca i8, i64 %i.j, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.c ] ; 10 uses
  %6 = ptrtoaddr ptr %i.l to i64
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 24
  %i.m = load i64, ptr %.in, align 8, !tbaa !91   ; 6 uses
  %min.iters.check = icmp ult i64 %.sroa.533.0.copyload, 10
  %ident.check.not = icmp ne i64 %i.m, 1
  %or.cond.not48 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %7 = sub i64 %.sroa.031.0.copyload45, %6
  %diff.check = icmp ugt i64 %7, -32
  %or.cond47 = select i1 %or.cond.not48, i1 true, i1 %diff.check
  br i1 %or.cond47, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !42
  %wide.load46 = load <2 x double>, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> %wide.load, ptr %i.n, align 8, !tbaa !42
  store <2 x double> %wide.load46, ptr %i.q, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.t = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !42
  store double %i.v, ptr %i.s, align 8, !tbaa !42
  %i.w = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1157

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader49
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.x = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i
  %i.aa = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !42
  store double %i.ac, ptr %i.z, align 8, !tbaa !42
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = mul nsw i64 %i.ad, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !42
  store double %i.ah, ptr %i.ae, align 8, !tbaa !42
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %i.ak = mul nsw i64 %i.ai, %i.m
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !42
  store double %i.am, ptr %i.aj, align 8, !tbaa !42
  %i.an = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = mul nsw i64 %i.an, %i.m
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !42
  store double %i.ar, ptr %i.ao, align 8, !tbaa !42
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.as, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1158

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.at = phi i1 [ false, %bb.e ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.au = phi ptr [ %i.k, %bb.e ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !217
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !91
  store ptr %i.az, ptr %4, align 8, !tbaa !182
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.au, ptr %5, align 8, !tbaa !185
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !186
  %i.be = load ptr, ptr %2, align 8, !tbaa !1162
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.24.copyload, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !91
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.aw, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.be, i64 noundef %i.bg, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.at, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.au) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.at, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.au) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94
  %.not.i.i.i = icmp eq i64 %1, %i.b
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !97
  tail call void @free(ptr noundef %i.c) #26
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #30 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !97
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i.i
  store i64 %1, ptr %i.a, align 8, !tbaa !94
  %i.k = trunc i64 %1 to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %wide.trip.count.i = and i64 %1, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %1, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !43
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1163

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS2_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSB_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEELi1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.k = shl nuw i64 %i.f, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #30 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.l, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !205
  store i64 %i.f, ptr %i.g, align 8, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i
  %i.o = phi ptr [ %.pre, %bb.a ], [ %.sink.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i ] ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !91   ; 7 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !158    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !148  ; 6 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.r ; 6 uses
  %min.iters.check = icmp ugt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.v, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = add i64 %i.s, %i.r
  %i.z = shl i64 %i.y, 3
  %i.aa = add i64 %i.z, %i.x
  %i.ab = sub i64 %i.aa, %i.p
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.w, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !42
  %wide.load14 = load <2 x double>, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !42
  store <2 x double> %wide.load14, ptr %i.ae, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.prol = phi i64 [ %i.al, %scalar.ph.prol ], [ %.05.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.prol
  %i.ah = add nsw i64 %.05.i.prol, %i.s
  %i.ai = mul nsw i64 %i.ah, %i.v
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !42
  store double %i.ak, ptr %i.ag, align 8, !tbaa !42
  %i.al = add nuw nsw i64 %.05.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1205

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %.05.i.ph, %i.f
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i = phi i64 [ %i.bl, %scalar.ph ], [ %.05.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i
  %i.ap = add nsw i64 %.05.i, %i.s
  %i.aq = mul nsw i64 %i.ap, %i.v
  %i.ar = getelementptr [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42
  store double %i.as, ptr %i.ao, align 8, !tbaa !42
  %i.at = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at
  %i.av = add nsw i64 %i.at, %i.s
  %i.aw = mul nsw i64 %i.av, %i.v
  %i.ax = getelementptr [8 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  store double %i.ay, ptr %i.au, align 8, !tbaa !42
  %i.az = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.az
  %i.bb = add nsw i64 %i.az, %i.s
  %i.bc = mul nsw i64 %i.bb, %i.v
  %i.bd = getelementptr [8 x i8], ptr %i.w, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42
  store double %i.be, ptr %i.ba, align 8, !tbaa !42
  %i.bf = add nuw nsw i64 %.05.i, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = add nsw i64 %i.bf, %i.s
  %i.bi = mul nsw i64 %i.bh, %i.v
  %i.bj = getelementptr [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  store double %i.bk, ptr %i.bg, align 8, !tbaa !42
  %i.bl = add nuw nsw i64 %.05.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bl, %i.f
  br i1 %exitcond.not.i.3, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit, label %scalar.ph, !llvm.loop !1206

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  call void @free(ptr noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  call void @free(ptr noundef %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.bo
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS5_IdLi1ELin1ELi1ELi1ELin1EEEEENS4_INS_5BlockIS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSM_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !88, !align !89 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !209, !nonnull !88, !align !89
  %i.c = load double, ptr %3, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 10 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.h = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 16384        ; 4 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #30 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.n = add nuw nsw i64 %i.h, 15
  %i.o = alloca i8, i64 %i.n, align 16            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.thread, %bb.e
  %i.q = phi ptr [ %i.l, %.thread ], [ %i.p, %bb.e ] ; 4 uses
  %i.r = phi ptr [ %i.j, %.thread ], [ %i.o, %bb.e ] ; 10 uses
  %6 = ptrtoaddr ptr %i.r to i64
  %i.s = load ptr, ptr %2, align 8, !tbaa !133    ; 7 uses
  %7 = ptrtoaddr ptr %i.s to i64
  %.pn = load ptr, ptr %i.q, align 8, !tbaa !1213, !nonnull !88, !align !89
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.t = load i64, ptr %.in, align 8, !tbaa !38   ; 6 uses
  %min.iters.check = icmp ult i64 %i.e, 10
  %ident.check.not = icmp ne i64 %i.t, 1
  %or.cond.not68 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %8 = sub i64 %7, %6
  %diff.check = icmp ugt i64 %8, -32
  %or.cond65 = select i1 %or.cond.not68, i1 true, i1 %diff.check
  br i1 %or.cond65, label %.lr.ph.i.i.i.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !42
  %wide.load48 = load <2 x double>, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !42
  store <2 x double> %wide.load48, ptr %i.x, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.i.i.i.preheader71:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader71 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader71 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.aa = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.t
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !42
  store double %i.ac, ptr %i.z, align 8, !tbaa !42
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1208

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader71
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader71 ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ae = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.e
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.ah = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.t
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !42
  store double %i.aj, ptr %i.ag, align 8, !tbaa !42
  %i.ak = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak
  %i.am = mul nsw i64 %i.ak, %i.t
  %i.an = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !42
  store double %i.ao, ptr %i.al, align 8, !tbaa !42
  %i.ap = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ap
  %i.ar = mul nsw i64 %i.ap, %i.t
  %i.as = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !42
  store double %i.at, ptr %i.aq, align 8, !tbaa !42
  %i.au = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.au
  %i.aw = mul nsw i64 %i.au, %i.t
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  store double %i.ay, ptr %i.av, align 8, !tbaa !42
  %i.az = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.az, %i.e
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1209

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.ba = phi ptr [ %i.p, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bb = phi i1 [ false, %bb.e ], [ %i.i, %middle.block ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bc = phi ptr [ %i.o, %bb.e ], [ %i.r, %middle.block ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !40
  store ptr %i.bi, ptr %4, align 8, !tbaa !185
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bf, ptr %i.bj, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !205
  store ptr %i.bk, ptr %5, align 8, !tbaa !182
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bl, align 8, !tbaa !183
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.bf, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.bc, i64 noundef 1, double noundef %i.c)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bm = load ptr, ptr %2, align 8, !tbaa !133   ; 7 uses
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !1213, !nonnull !88, !align !89
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38 ; 6 uses
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !91  ; 7 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i26.preheader:               ; preds = %bb.f
  %i.bs = ptrtoaddr ptr %i.bm to i64
  %min.iters.check54 = icmp ult i64 %i.bq, 10
  %ident.check50.not = icmp ne i64 %i.bp, 1
  %or.cond66.not69 = select i1 %min.iters.check54, i1 true, i1 %ident.check50.not
  %i.bt = sub i64 %i.bd, %i.bs
  %diff.check52 = icmp ugt i64 %i.bt, -32
  %or.cond67 = select i1 %or.cond66.not69, i1 true, i1 %diff.check52
  br i1 %or.cond67, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader70, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader
  %n.vec56 = and i64 %i.bq, 9223372036854775804   ; 3 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next61, %vector.body57 ] ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %index58 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index58 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load59 = load <2 x double>, ptr %i.bv, align 8, !tbaa !42
  %wide.load60 = load <2 x double>, ptr %i.bw, align 8, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x double> %wide.load59, ptr %i.bu, align 8, !tbaa !42
  store <2 x double> %wide.load60, ptr %i.bx, align 8, !tbaa !42
  %index.next61 = add nuw i64 %index58, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.by, label %middle.block62, label %vector.body57, !llvm.loop !1210

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %i.bq, %n.vec56
  br i1 %cmp.n63, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader70

.lr.ph.i.i.i.i.i.i.i.i26.preheader70:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader, %middle.block62
  %.05.i.i.i.i.i.i.i.i27.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader ], [ %n.vec56, %middle.block62 ] ; 3 uses
  %xtraiter72 = and i64 %i.bq, 3                  ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i26.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader70, %.lr.ph.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader70 ] ; 3 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader70 ]
  %i.bz = mul nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, %i.bp
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05.i.i.i.i.i.i.i.i27.prol
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !42
  store double %i.cc, ptr %i.ca, align 8, !tbaa !42
  %i.cd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol, !llvm.loop !1211

.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i26.preheader70
  %.05.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader70 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i26.prol ]
  %i.ce = sub nsw i64 %.05.i.i.i.i.i.i.i.i27.ph, %i.bq
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i27 = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.cg = mul nsw i64 %.05.i.i.i.i.i.i.i.i27, %i.bp
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05.i.i.i.i.i.i.i.i27
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !42
  store double %i.cj, ptr %i.ch, align 8, !tbaa !42
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %i.bp
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ck
  %i.co = load double, ptr %i.cn, align 8, !tbaa !42
  store double %i.co, ptr %i.cm, align 8, !tbaa !42
  %i.cp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %i.bp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cp
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  store double %i.ct, ptr %i.cr, align 8, !tbaa !42
  %i.cu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.bp
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cu
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !42
  store double %i.cy, ptr %i.cw, align 8, !tbaa !42
  %i.cz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i28.3, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !1212

_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26, %middle.block62, %bb.f
  br i1 %i.bb, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductIS5_S5_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSC_:bb.a
  %xtraiter97 = and i64 %i.cx, 3                  ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 3
  %unroll_iter102 = and i64 %i.cx, -4
  %lcmp.mod99.not = icmp eq i64 %xtraiter97, 0
  %lcmp.mod101 = icmp ne i64 %xtraiter97, 0
  br label %bb.d

.lr.ph54:                                         ; preds = %.preheader45, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit
  %.02953 = phi i64 [ %i.ez, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit ], [ %.03259, %.preheader45 ] ; 3 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !1355, !nonnull !88, !align !89 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !158
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !148
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !1356, !nonnull !88, !align !89 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !247 ; 5 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph54
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !158
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.02953 ; 3 uses
  %i.do = load i64, ptr %i.dk, align 8, !tbaa !148 ; 3 uses
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !158
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !148
  %i.dr = mul nsw i64 %i.dq, %.03160
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %i.dp, i64 %i.dr ; 3 uses
  %xtraiter90 = and i64 %i.dg, 1
  %i.ds = icmp eq i64 %i.dg, 1
  br i1 %i.ds, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter95 = and i64 %i.dg, 9223372036854775806
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.new
  %i.dt = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.new ], [ %i.ek, %bb.c ]
  %.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.el, %bb.c ] ; 4 uses
  %niter96 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter96.next.1, %bb.c ]
  %i.du = mul nsw i64 %.012.i.i.i.i, %i.do
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.du
  %i.dw = load <2 x double>, ptr %i.dv, align 1, !tbaa !24
  %gep.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %.012.i.i.i.i
  %i.dx = load double, ptr %gep.i.i.i, align 8, !tbaa !42
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dw, %i.dz
  %i.eb = fadd <2 x double> %i.dt, %i.ea
  %i.ec = or disjoint i64 %.012.i.i.i.i, 1        ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %i.do
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ed
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !24
  %gep.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.ec
  %i.eg = load double, ptr %gep.i.i.i.1, align 8, !tbaa !42
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x double> %i.ef, %i.ei
  %i.ek = fadd <2 x double> %i.eb, %i.ej          ; 3 uses
  %i.el = add nuw nsw i64 %.012.i.i.i.i, 2        ; 2 uses
  %niter96.next.1 = add nuw nsw i64 %niter96, 2   ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod92.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod92.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.ek, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ]
  %.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.el, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i64 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.em = mul nsw i64 %.012.i.i.i.i.epil.init, %i.do
  %i.en = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.em
  %i.eo = load <2 x double>, ptr %i.en, align 1, !tbaa !24
  %gep.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %.012.i.i.i.i.epil.init
  %i.ep = load double, ptr %gep.i.i.i.epil, align 8, !tbaa !42
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x double> %i.eo, %i.er
  %i.et = fadd <2 x double> %.epil.init, %i.es
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, %.lr.ph54
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph54 ], [ %i.ek, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ], [ %i.et, %.epil.preheader ]
  %i.eu = getelementptr [8 x i8], ptr %i.db, i64 %.02953
  %i.ev = mul nsw i64 %i.dd, %.03160
  %i.ew = getelementptr [8 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = load <2 x double>, ptr %i.ew, align 16, !tbaa !24
  %i.ey = fsub <2 x double> %i.ex, %.0.i.i.i
  store <2 x double> %i.ey, ptr %i.ew, align 16, !tbaa !24
  %i.ez = add nsw i64 %.02953, 2                  ; 2 uses
  %i.fa = icmp slt i64 %i.ez, %i.l
  br i1 %i.fa, label %.lr.ph54, label %.preheader, !llvm.loop !1349

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39, %.lr.ph56, %.preheader
  %i.fb = add nsw i64 %.03259, %i.g
  %i.fc = srem i64 %i.fb, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.fc)
  %i.fd = add nuw nsw i64 %.03160, 1              ; 2 uses
  %exitcond70.not = icmp eq i64 %i.fd, %i.f
  br i1 %exitcond70.not, label %._crit_edge63, label %bb.b, !llvm.loop !1350

bb.d:                                             ; preds = %.lr.ph56.split, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39
  %.055 = phi i64 [ %i.l, %.lr.ph56.split ], [ %i.gy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39 ] ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %.055 ; 6 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !42
  %i.fg = load double, ptr %i.cr, align 8, !tbaa !42
  %i.fh = fmul double %i.ff, %i.fg                ; 3 uses
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i35.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39

.lr.ph.i.i.i.i.i.i35.preheader:                   ; preds = %bb.d
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i35.epil.preheader, label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35.preheader, %.lr.ph.i.i.i.i.i.i35
  %.010.i.i.i.i.i.i36 = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i.i35 ], [ 1, %.lr.ph.i.i.i.i.i.i35.preheader ] ; 6 uses
  %.089.i.i.i.i.i.i37 = phi double [ %i.gm, %.lr.ph.i.i.i.i.i.i35 ], [ %i.fh, %.lr.ph.i.i.i.i.i.i35.preheader ]
  %niter103 = phi i64 [ %niter103.next.3, %.lr.ph.i.i.i.i.i.i35 ], [ 0, %.lr.ph.i.i.i.i.i.i35.preheader ]
  %i.fi = mul nsw i64 %.010.i.i.i.i.i.i36, %i.cw
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !42
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.010.i.i.i.i.i.i36
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !42
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %.089.i.i.i.i.i.i37, %i.fn
  %i.fp = add nuw nsw i64 %.010.i.i.i.i.i.i36, 1  ; 2 uses
  %i.fq = mul nsw i64 %i.fp, %i.cw
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !42
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.fp
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !42
  %i.fv = fmul double %i.fs, %i.fu
  %i.fw = fadd double %i.fo, %i.fv
  %i.fx = add nuw nsw i64 %.010.i.i.i.i.i.i36, 2  ; 2 uses
  %i.fy = mul nsw i64 %i.fx, %i.cw
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !42
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.fx
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !42
  %i.gd = fmul double %i.ga, %i.gc
  %i.ge = fadd double %i.fw, %i.gd
  %i.gf = add nuw nsw i64 %.010.i.i.i.i.i.i36, 3  ; 2 uses
  %i.gg = mul nsw i64 %i.gf, %i.cw
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !42
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.gf
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !42
  %i.gl = fmul double %i.gi, %i.gk
  %i.gm = fadd double %i.ge, %i.gl                ; 3 uses
  %i.gn = add nuw nsw i64 %.010.i.i.i.i.i.i36, 4  ; 2 uses
  %niter103.next.3 = add i64 %niter103, 4         ; 2 uses
  %niter103.ncmp.3 = icmp eq i64 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35, !llvm.loop !4

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35
  br i1 %lcmp.mod99.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39, label %.lr.ph.i.i.i.i.i.i35.epil.preheader

.lr.ph.i.i.i.i.i.i35.epil.preheader:              ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.preheader
  %.010.i.i.i.i.i.i36.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.gn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa ]
  %.089.i.i.i.i.i.i37.epil.init = phi double [ %i.fh, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.gm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i.i.i.i.i.i35.epil

.lr.ph.i.i.i.i.i.i35.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i35.epil, %.lr.ph.i.i.i.i.i.i35.epil.preheader
  %.010.i.i.i.i.i.i36.epil = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i35.epil ], [ %.010.i.i.i.i.i.i36.epil.init, %.lr.ph.i.i.i.i.i.i35.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i37.epil = phi double [ %i.gu, %.lr.ph.i.i.i.i.i.i35.epil ], [ %.089.i.i.i.i.i.i37.epil.init, %.lr.ph.i.i.i.i.i.i35.epil.preheader ]
  %epil.iter98 = phi i64 [ %epil.iter98.next, %.lr.ph.i.i.i.i.i.i35.epil ], [ 0, %.lr.ph.i.i.i.i.i.i35.epil.preheader ]
  %i.go = mul nsw i64 %.010.i.i.i.i.i.i36.epil, %i.cw
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !42
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.010.i.i.i.i.i.i36.epil
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !42
  %i.gt = fmul double %i.gq, %i.gs
  %i.gu = fadd double %.089.i.i.i.i.i.i37.epil, %i.gt ; 2 uses
  %i.gv = add nuw nsw i64 %.010.i.i.i.i.i.i36.epil, 1
  %epil.iter98.next = add i64 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i64 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39, label %.lr.ph.i.i.i.i.i.i35.epil, !llvm.loop !1351

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.epil, %bb.d
  %.0.i.i.i.i34 = phi double [ %i.fh, %bb.d ], [ %i.gm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa ], [ %i.gu, %.lr.ph.i.i.i.i.i.i35.epil ]
  %gep58 = getelementptr [8 x i8], ptr %invariant.gep57, i64 %.055 ; 2 uses
  %i.gw = load double, ptr %gep58, align 8, !tbaa !42
  %i.gx = fsub double %i.gw, %.0.i.i.i.i34
  store double %i.gx, ptr %gep58, align 8, !tbaa !42
  %i.gy = add nsw i64 %.055, 1                    ; 2 uses
  %i.gz = icmp slt i64 %i.gy, %i.d
  br i1 %i.gz, label %bb.d, label %._crit_edge, !llvm.loop !1352
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIS7_Li1ELin1ELb0EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !187, !nonnull !88, !align !89 ; 3 uses
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 7 uses
  %.sroa.031.0.copyload45 = ptrtoaddr ptr %.sroa.031.0.copyload to i64
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !42
  %i.c = icmp ugt i64 %.sroa.533.0.copyload, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = shl nuw i64 %.sroa.533.0.copyload, 3     ; 2 uses
  %i.f = icmp samesign ugt i64 %.sroa.533.0.copyload, 16384 ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.e) #30 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = add nuw nsw i64 %i.e, 15
  %i.k = alloca i8, i64 %i.j, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.c ] ; 10 uses
  %6 = ptrtoaddr ptr %i.l to i64
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %i.m = load i64, ptr %.in, align 8, !tbaa !38   ; 6 uses
  %min.iters.check = icmp ult i64 %.sroa.533.0.copyload, 10
  %ident.check.not = icmp ne i64 %i.m, 1
  %or.cond.not48 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %7 = sub i64 %.sroa.031.0.copyload45, %6
  %diff.check = icmp ugt i64 %7, -32
  %or.cond47 = select i1 %or.cond.not48, i1 true, i1 %diff.check
  br i1 %or.cond47, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !42
  %wide.load46 = load <2 x double>, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> %wide.load, ptr %i.n, align 8, !tbaa !42
  store <2 x double> %wide.load46, ptr %i.q, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.t = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !42
  store double %i.v, ptr %i.s, align 8, !tbaa !42
  %i.w = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1362

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader49
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.x = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i
  %i.aa = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !42
  store double %i.ac, ptr %i.z, align 8, !tbaa !42
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = mul nsw i64 %i.ad, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !42
  store double %i.ah, ptr %i.ae, align 8, !tbaa !42
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %i.ak = mul nsw i64 %i.ai, %i.m
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !42
  store double %i.am, ptr %i.aj, align 8, !tbaa !42
  %i.an = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = mul nsw i64 %i.an, %i.m
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !42
  store double %i.ar, ptr %i.ao, align 8, !tbaa !42
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.as, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1363

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.at = phi i1 [ false, %bb.e ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.au = phi ptr [ %i.k, %bb.e ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !40
  store ptr %i.az, ptr %4, align 8, !tbaa !182
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.au, ptr %5, align 8, !tbaa !185
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bb, align 8, !tbaa !186
  %i.bc = load ptr, ptr %2, align 8, !tbaa !133
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6.24.copyload, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !38
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.aw, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bc, i64 noundef %i.be, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.at, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.au) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.at, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.au) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.bf
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEEKNS_5BlockIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS5_KNS2_IS5_S5_Li0EEEEELin1ELi1ELb1EEENS_10DenseShapeESJ_Li7EE13scaleAndAddToINS8_IS5_Lin1ELi1ELb1EEEEEvRT_RKS7_RSI_RKd(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::CwiseBinaryOp.1662", align 8 ; 9 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 11 uses
  %11 = alloca %"class.Eigen::Matrix.3", align 8  ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !174, !noalias !1368, !nonnull !88, !align !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39, !noalias !1368
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !91, !noalias !1369 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.i, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i64 %i.l, ptr %.sroa.513.0..sroa_idx, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS5_KNS2_IS5_S5_Li0EEEEELin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNSD_6traitsIT_E6ScalarENSD_17scalar_product_opIdSS_EEE10ReturnTypeERKNS0_ISQ_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.n = call noundef double @_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS_7ProductINS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEELi1ELin1ELb0EEEEEKNS6_IKNS6_IKNS1_INS2_20scalar_difference_opIddEEKS9_KNS7_IS9_S9_Li0EEEEELin1ELi1ELb1EEELin1ELi1ELb1EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS5_KNS2_IS5_S5_Li0EEEEELin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNSD_6traitsIT_E6ScalarENSD_17scalar_product_opIdSS_EEE10ReturnTypeERKNS0_ISQ_EE.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS5_KNS2_IS5_S5_Li0EEEEELin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNSD_6traitsIT_E6ScalarENSD_17scalar_product_opIdSS_EEE10ReturnTypeERKNS0_ISQ_EE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi double [ %i.n, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.o = load ptr, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !42
  %i.q = call double @llvm.fmuladd.f64(double %i.e, double %.0.i.i.i, double %i.p)
  store double %i.q, ptr %i.o, align 8, !tbaa !42
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIS1_EES1_Li0EEEEERKT_.exit unwind label %bb.e

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %10, align 8, !tbaa !40
  call void @free(ptr noundef %i.s) #26
  br label %common.resume
end_hunk_2
