Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rocket_landing_mpc?download=true
inline.NumInlined: 2427
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@main:bb.a
  %.idx705 = mul nsw i64 %i.hj, 24
  %i.hp = getelementptr inbounds i8, ptr %i.hh, i64 %.idx705
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store double 1.000000e+01, ptr %i.hq, align 8, !tbaa !35
  %.idx706 = shl nsw i64 %i.hj, 5
  %i.hr = getelementptr inbounds i8, ptr %i.hh, i64 %.idx706
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store double 1.000000e+01, ptr %i.hs, align 8, !tbaa !35
  %.idx707 = mul nsw i64 %i.hj, 40
  %i.ht = getelementptr inbounds i8, ptr %i.hh, i64 %.idx707
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store double 1.000000e+01, ptr %i.hu, align 8, !tbaa !35
  %.idx708 = mul nsw i64 %i.hj, 48
  %i.hv = getelementptr inbounds i8, ptr %i.hh, i64 %.idx708
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store double 1.000000e+01, ptr %i.hw, align 8, !tbaa !35
  %.idx709 = mul nsw i64 %i.hj, 56
  %i.hx = getelementptr inbounds i8, ptr %i.hh, i64 %.idx709
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store double 1.000000e+01, ptr %i.hy, align 8, !tbaa !35
  %.idx710 = shl nsw i64 %i.hj, 6
  %i.hz = getelementptr inbounds i8, ptr %i.hh, i64 %.idx710
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store double 1.000000e+01, ptr %i.ia, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hb, i64 1224 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hb, i64 1232 ; 4 uses
  br label %bb.bu

bb.as:                                            ; preds = %bb.o
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ct

bb.at:                                            ; preds = %bb.p
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.cs

bb.au:                                            ; preds = %.invoke
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.av:                                            ; preds = %.invoke713
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aw:                                            ; preds = %.sink.split.i309
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ad
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit201
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = load ptr, ptr %24, align 8, !tbaa !25
  call void @free(ptr noundef %i.ik) #20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.ij, %bb.ay ], [ %i.ii, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.il = load ptr, ptr %22, align 8, !tbaa !25
  call void @free(ptr noundef %i.il) #20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.az ], [ %i.ih, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %.body199

.body199:                                         ; preds = %bb.ac, %bb.ba
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ba ], [ %i.dn, %bb.ac ]
  %i.im = load ptr, ptr %21, align 8, !tbaa !25
  call void @free(ptr noundef %i.im) #20
  %i.in = load ptr, ptr %20, align 8, !tbaa !25
  call void @free(ptr noundef %i.in) #20
  br label %bb.bb

bb.bb:                                            ; preds = %.body199, %bb.av
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body199 ], [ %i.ig, %bb.av ]
  %i.io = load ptr, ptr %19, align 8, !tbaa !25
  call void @free(ptr noundef %i.io) #20
  br label %.body161

bb.bc:                                            ; preds = %.invoke715
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bd:                                            ; preds = %bb.aj
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.be:                                            ; preds = %bb.ak
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.al
  %i.is = landingpad { ptr, i32 }
          cleanup
  %i.it = load ptr, ptr %29, align 8, !tbaa !25
  call void @free(ptr noundef %i.it) #20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn87 = phi { ptr, i32 } [ %i.is, %bb.bf ], [ %i.ir, %bb.be ]
  %i.iu = load ptr, ptr %28, align 8, !tbaa !25
  call void @free(ptr noundef %i.iu) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %.pn87.pn = phi { ptr, i32 } [ %.pn87, %bb.bg ], [ %i.iq, %bb.bd ]
  %i.iv = load ptr, ptr %27, align 8, !tbaa !25
  call void @free(ptr noundef %i.iv) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bc
  %.pn87.pn.pn = phi { ptr, i32 } [ %.pn87.pn, %bb.bh ], [ %i.ip, %bb.bc ]
  %i.iw = load ptr, ptr %26, align 8, !tbaa !25
  call void @free(ptr noundef %i.iw) #20
  br label %.body161

bb.bj:                                            ; preds = %bb.am
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bk:                                            ; preds = %bb.an
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bl:                                            ; preds = %bb.ao
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bm:                                            ; preds = %bb.ap
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %bb.aq
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.ar
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = load ptr, ptr %35, align 8, !tbaa !32
  call void @free(ptr noundef %i.jd) #20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn91 = phi { ptr, i32 } [ %i.jc, %bb.bo ], [ %i.jb, %bb.bn ]
  %i.je = load ptr, ptr %34, align 8, !tbaa !126
  call void @free(ptr noundef %i.je) #20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.bp ], [ %i.ja, %bb.bm ]
  %i.jf = load ptr, ptr %33, align 8, !tbaa !126
  call void @free(ptr noundef %i.jf) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %bb.bq ], [ %i.iz, %bb.bl ]
  %i.jg = load ptr, ptr %32, align 8, !tbaa !32
  call void @free(ptr noundef %i.jg) #20
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bk
  %.pn91.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn, %bb.br ], [ %i.iy, %bb.bk ]
  %i.jh = load ptr, ptr %31, align 8, !tbaa !126
  call void @free(ptr noundef %i.jh) #20
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bj
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn, %bb.bs ], [ %i.ix, %bb.bj ]
  %i.ji = load ptr, ptr %30, align 8, !tbaa !126
  call void @free(ptr noundef %i.ji) #20
  br label %.body161

bb.bu:                                            ; preds = %.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.jj = trunc nuw nsw i64 %indvars.iv to i32
  %i.jk = uitofp nneg i32 %i.jj to double         ; 5 uses
  %i.jl = load ptr, ptr %i.ib, align 8, !tbaa !25, !noalias !135 ; 2 uses
  %i.jm = load i64, ptr %i.ic, align 8, !tbaa !26, !noalias !135 ; 7 uses
  %i.jn = mul nsw i64 %i.jm, %indvars.iv
  %.not.i.i.i.i.i239 = icmp eq ptr %i.jl, null
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.jn ; 6 uses
  %i.jp = select i1 %.not.i.i.i.i.i239, ptr null, ptr %i.jo
  %.sroa.15.56.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jq = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jr = and i64 %i.jq, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.js = lshr exact i64 %i.jq, 3
  %i.jt = and i64 %i.js, 1
  %i.ju = call i64 @llvm.smin.i64(i64 %i.jt, i64 %i.jm)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ju, %bb.bv ], [ %i.jm, %bb.bu ] ; 9 uses
  %i.jv = sub nsw i64 %i.jm, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jw = sdiv i64 %i.jv, 2
  %i.jx = shl nsw i64 %i.jw, 1                    ; 2 uses
  %i.jy = add nsw i64 %i.jx, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.jz = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check719 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check719, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823, label %vector.ph720

vector.ph720:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec721 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert722 = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat723 = shufflevector <2 x double> %broadcast.splatinsert722, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body724

vector.body724:                                   ; preds = %vector.body724, %vector.ph720
  %index725 = phi i64 [ 0, %vector.ph720 ], [ %index.next728, %vector.body724 ] ; 4 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %index725
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %index725
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %index725
  %wide.load726 = load <2 x double>, ptr %i.kc, align 16, !tbaa !35
  %wide.load727 = load <2 x double>, ptr %i.kb, align 16, !tbaa !35 ; 2 uses
  %i.kd = fsub <2 x double> %wide.load726, %wide.load727
  %i.ke = fmul <2 x double> %i.kd, %broadcast.splat723
  %i.kf = fdiv <2 x double> %i.ke, splat (double 9.900000e+01)
  %i.kg = fadd <2 x double> %wide.load727, %i.kf
  store <2 x double> %i.kg, ptr %i.ka, align 8, !tbaa !35
  %index.next728 = add nuw i64 %index725, 2       ; 2 uses
  %i.kh = icmp eq i64 %index.next728, %n.vec721
  br i1 %i.kh, label %middle.block729, label %vector.body724, !llvm.loop !78

middle.block729:                                  ; preds = %vector.body724
  %cmp.n730 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec721
  br i1 %cmp.n730, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block729
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec721, %middle.block729 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader823 ] ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !35
  %i.km = load double, ptr %i.kj, align 8, !tbaa !35 ; 2 uses
  %i.kn = fsub double %i.kl, %i.km
  %i.ko = fmul double %i.kn, %i.jk
  %i.kp = fdiv double %i.ko, 9.900000e+01
  %i.kq = fadd double %i.km, %i.kp
  store double %i.kq, ptr %i.ki, align 8, !tbaa !35
  %i.kr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kr, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !79

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block729, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ks = icmp sgt i64 %i.jv, 1
  br i1 %i.ks, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.kt = shufflevector <2 x double> %.sroa.15.56.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ku = icmp slt i64 %i.jy, %i.jm
  br i1 %i.ku, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %41 = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.jx
  %i.kv = sub i64 %i.jm, %41                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.kv, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec.a = and i64 %i.kv, -2                    ; 3 uses
  %i.kw = add i64 %i.jy, %n.vec.a
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kx = add i64 %i.jy, %index                   ; 3 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.kx
  %i.kz = getelementptr inbounds [8 x i8], ptr %36, i64 %i.kx
  %i.la = getelementptr inbounds [8 x i8], ptr %38, i64 %i.kx
  %wide.load = load <2 x double>, ptr %i.la, align 8, !tbaa !35
  %wide.load717 = load <2 x double>, ptr %i.kz, align 8, !tbaa !35 ; 2 uses
  %i.lb = fsub <2 x double> %wide.load, %wide.load717
  %i.lc = fmul <2 x double> %i.lb, %broadcast.splat
  %i.ld = fdiv <2 x double> %i.lc, splat (double 9.900000e+01)
  %i.le = fadd <2 x double> %wide.load717, %i.ld
  store <2 x double> %i.le, ptr %i.ky, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lf = icmp eq i64 %index.next, %n.vec.a
  br i1 %i.lf, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kv, %n.vec.a
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822:      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.jy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.kw, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader822 ] ; 4 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.lh = getelementptr inbounds [8 x i8], ptr %36, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.li = getelementptr inbounds [8 x i8], ptr %38, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.lj = load double, ptr %i.li, align 8, !tbaa !35
  %i.lk = load double, ptr %i.lh, align 8, !tbaa !35 ; 2 uses
  %i.ll = fsub double %i.lj, %i.lk
  %i.lm = fmul double %i.ll, %i.jk
  %i.ln = fdiv double %i.lm, 9.900000e+01
  %i.lo = fadd double %i.lk, %i.ln
  store double %i.lo, ptr %i.lg, align 8, !tbaa !35
  %i.lp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.lp, %i.jm
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !81

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.lr = getelementptr inbounds [8 x i8], ptr %36, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.ls = load <2 x double>, ptr %i.lr, align 8, !tbaa !17 ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %38, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.lu = load <2 x double>, ptr %i.lt, align 8, !tbaa !17
  %i.lv = fsub <2 x double> %i.lu, %i.ls
  %i.lw = fmul <2 x double> %i.kt, %i.lv
  %i.lx = fdiv <2 x double> %i.lw, splat (double 9.900000e+01)
  %i.ly = fadd <2 x double> %i.ls, %i.lx
  store <2 x double> %i.ly, ptr %i.lq, align 16, !tbaa !17
  %i.lz = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ma = icmp slt i64 %i.lz, %i.jy
  br i1 %i.ma, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !82

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.bw, label %bb.bu, !llvm.loop !83

bb.bw:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !136
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = load ptr, ptr %i.ib, align 8, !tbaa !25, !noalias !137 ; 2 uses
  %i.mf = load i64, ptr %i.ic, align 8, !tbaa !26, !noalias !137 ; 3 uses
  %.not.i.i.i.i.i240 = icmp eq ptr %i.me, null
  %.idx = mul nsw i64 %i.mf, 72
  %i.mg = getelementptr inbounds i8, ptr %i.me, i64 %.idx
  %i.mh = select i1 %.not.i.i.i.i.i240, ptr null, ptr %i.mg
  store ptr %i.md, ptr %39, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.mh, ptr %i.mi, align 8
  %.sroa.5441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 %i.mf, ptr %.sroa.5441.0..sroa_idx, align 8
  %.sroa.6443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 40
  store ptr %i.ib, ptr %.sroa.6443.0..sroa_idx, align 8
  %.sroa.7444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i64 0, ptr %.sroa.7444.0..sroa_idx, align 8
  %.sroa.8445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 56
  store i64 9, ptr %.sroa.8445.0..sroa_idx, align 8
  %.sroa.9446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 64
  store i64 %i.mf, ptr %.sroa.9446.0..sroa_idx, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !25, !noalias !138 ; 3 uses
  %i.ml = ptrtoaddr ptr %i.mk to i64              ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !26, !noalias !138 ; 9 uses
  %.idx642 = mul i64 %i.mn, 72                    ; 3 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mk, i64 %.idx642 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS2_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSD_RKSF_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(72) %39, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i unwind label %.body254

.body254:                                         ; preds = %bb.bw
  %i.mp = landingpad { ptr, i32 }
          cleanup
  %i.mq = load ptr, ptr %4, align 8, !tbaa !32
  call void @free(ptr noundef %i.mq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.cr

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i: ; preds = %bb.bw
  %.not.i.i.i.i.i241 = icmp eq ptr %i.mk, null
  %i.mr = select i1 %.not.i.i.i.i.i241, ptr null, ptr %i.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ms = load ptr, ptr %4, align 8, !tbaa !32    ; 14 uses
  %i.mt = ptrtoaddr ptr %i.ms to i64              ; 2 uses
  %i.mu = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mv = and i64 %i.mu, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i242 = icmp eq i64 %i.mv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i242, label %bb.bx, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243

bb.bx:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i
  %i.mw = lshr exact i64 %i.mu, 3
  %i.mx = and i64 %i.mw, 1
  %i.my = call i64 @llvm.smin.i64(i64 %i.mx, i64 %i.mn)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243: ; preds = %bb.bx, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i244 = phi i64 [ %i.my, %bb.bx ], [ %i.mn, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEERKT_.exit.i.i.i.i.i.i ] ; 11 uses
  %i.mz = sub nsw i64 %i.mn, %.0.i.i.i.i.i.i.i.i.i.i.i244 ; 2 uses
  %i.na = sdiv i64 %i.mz, 2
  %i.nb = shl nsw i64 %i.na, 1                    ; 2 uses
  %i.nc = add nsw i64 %i.nb, %.0.i.i.i.i.i.i.i.i.i.i.i244 ; 6 uses
  %i.nd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 0
  br i1 %i.nd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader:        ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243
  %min.iters.check733 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 10
  br i1 %min.iters.check733, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader
  %i.ne = add i64 %.idx642, %i.ml
  %i.nf = sub i64 %i.mt, %i.ne
  %diff.check = icmp ugt i64 %i.nf, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821, label %vector.ph734

vector.ph734:                                     ; preds = %vector.memcheck
  %n.vec735 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 9223372036854775804 ; 3 uses
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph734
  %index737 = phi i64 [ 0, %vector.ph734 ], [ %index.next740, %vector.body736 ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %index737 ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %index737 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %wide.load738 = load <2 x double>, ptr %i.nh, align 8, !tbaa !35
  %wide.load739 = load <2 x double>, ptr %i.ni, align 8, !tbaa !35
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store <2 x double> %wide.load738, ptr %i.ng, align 8, !tbaa !35
  store <2 x double> %wide.load739, ptr %i.nj, align 8, !tbaa !35
  %index.next740 = add nuw i64 %index737, 4       ; 2 uses
  %i.nk = icmp eq i64 %index.next740, %n.vec735
  br i1 %i.nk, label %middle.block741, label %vector.body736, !llvm.loop !88

middle.block741:                                  ; preds = %vector.body736
  %cmp.n742 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, %n.vec735
  br i1 %cmp.n742, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader, %middle.block741
  %.05.i.i.i.i.i.i.i.i.i.i.i252.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader ], [ %n.vec735, %middle.block741 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i252.prol = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i252.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821 ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.prol
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.prol
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !35
  store double %i.nn, ptr %i.nl, align 8, !tbaa !35
  %i.no = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol, !llvm.loop !89

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821
  %.05.i.i.i.i.i.i.i.i.i.i.i252.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i252.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.preheader821 ], [ %i.no, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol ]
  %i.np = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252.ph, %.0.i.i.i.i.i.i.i.i.i.i.i244
  %i.nq = icmp ugt i64 %i.np, -4
  br i1 %i.nq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251

.lr.ph.i.i.i.i.i.i.i.i.i.i.i251:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251
  %.05.i.i.i.i.i.i.i.i.i.i.i252 = phi i64 [ %i.og, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i252.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit ] ; 6 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.05.i.i.i.i.i.i.i.i.i.i.i252
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !35
  store double %i.nt, ptr %i.nr, align 8, !tbaa !35
  %i.nu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 1 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.nu
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.nu
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !35
  store double %i.nx, ptr %i.nv, align 8, !tbaa !35
  %i.ny = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 2 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.ny
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.ny
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !35
  store double %i.ob, ptr %i.nz, align 8, !tbaa !35
  %i.oc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 3 ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.oc
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.oc
  %i.of = load double, ptr %i.oe, align 8, !tbaa !35
  store double %i.of, ptr %i.od, align 8, !tbaa !35
  %i.og = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i252, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i253.3 = icmp eq i64 %i.og, %.0.i.i.i.i.i.i.i.i.i.i.i244
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i253.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251, !llvm.loop !90

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i251, %middle.block741, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i243
  %i.oh = icmp sgt i64 %i.mz, 1
  br i1 %i.oh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i249, label %._crit_edge.i.i.i.i.i.i.i.i.i.i245

._crit_edge.i.i.i.i.i.i.i.i.i.i245:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i249, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.oi = icmp slt i64 %i.nc, %i.mn
  br i1 %i.oi, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader, label %.loopexit643

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i245
  %42 = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i244, %i.nb
  %i.oj = sub i64 %i.mn, %42                      ; 3 uses
  %min.iters.check747 = icmp ult i64 %i.oj, 10
  br i1 %min.iters.check747, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820, label %vector.memcheck744

vector.memcheck744:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader
  %i.ok = add i64 %.idx642, %i.ml
  %i.ol = sub i64 %i.mt, %i.ok
  %diff.check745 = icmp ugt i64 %i.ol, -32
  br i1 %diff.check745, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820, label %vector.ph748

vector.ph748:                                     ; preds = %vector.memcheck744
  %n.vec749 = and i64 %i.oj, -4                   ; 3 uses
  %i.om = add i64 %i.nc, %n.vec749
  br label %vector.body750

vector.body750:                                   ; preds = %vector.body750, %vector.ph748
  %index751 = phi i64 [ 0, %vector.ph748 ], [ %index.next754, %vector.body750 ] ; 2 uses
  %i.on = add i64 %i.nc, %index751                ; 2 uses
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.on ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %wide.load752 = load <2 x double>, ptr %i.op, align 8, !tbaa !35
  %wide.load753 = load <2 x double>, ptr %i.oq, align 8, !tbaa !35
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store <2 x double> %wide.load752, ptr %i.oo, align 8, !tbaa !35
  store <2 x double> %wide.load753, ptr %i.or, align 8, !tbaa !35
  %index.next754 = add nuw i64 %index751, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next754, %n.vec749
  br i1 %i.os, label %middle.block755, label %vector.body750, !llvm.loop !91

middle.block755:                                  ; preds = %vector.body750
  %cmp.n756 = icmp eq i64 %i.oj, %n.vec749
  br i1 %cmp.n756, label %.loopexit643, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820:   ; preds = %vector.memcheck744, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader, %middle.block755
  %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph = phi i64 [ %i.nc, %vector.memcheck744 ], [ %i.nc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader ], [ %i.om, %middle.block755 ] ; 4 uses
  %i.ot = sub i64 %i.mn, %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph
  %xtraiter824 = and i64 %i.ot, 3                 ; 2 uses
  %lcmp.mod825.not = icmp eq i64 %xtraiter824, 0
  br i1 %lcmp.mod825.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol = phi i64 [ %i.ox, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820 ] ; 3 uses
  %prol.iter826 = phi i64 [ %prol.iter826.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820 ]
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !35
  store double %i.ow, ptr %i.ou, align 8, !tbaa !35
  %i.ox = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.prol, 1 ; 2 uses
  %prol.iter826.next = add i64 %prol.iter826, 1   ; 2 uses
  %prol.iter826.cmp.not = icmp eq i64 %prol.iter826.next, %xtraiter824
  br i1 %prol.iter826.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol, !llvm.loop !92

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820
  %.05.i18.i.i.i.i.i.i.i.i.i.i247.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.preheader820 ], [ %i.ox, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol ]
  %i.oy = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247.ph, %i.mn
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.loopexit643, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246
  %.05.i18.i.i.i.i.i.i.i.i.i.i247 = phi i64 [ %i.pp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i247.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !35
  store double %i.pc, ptr %i.pa, align 8, !tbaa !35
  %i.pd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 1 ; 2 uses
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.pd
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.pd
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !35
  store double %i.pg, ptr %i.pe, align 8, !tbaa !35
  %i.ph = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 2 ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.ph
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.ph
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !35
  store double %i.pk, ptr %i.pi, align 8, !tbaa !35
  %i.pl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 3 ; 2 uses
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.pl
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.pl
  %i.po = load double, ptr %i.pn, align 8, !tbaa !35
  store double %i.po, ptr %i.pm, align 8, !tbaa !35
  %i.pp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i247, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i248.3 = icmp eq i64 %i.pp, %i.mn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i248.3, label %.loopexit643, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246, !llvm.loop !93

.lr.ph.i.i.i.i.i.i.i.i.i.i249:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i249
  %.021.i.i.i.i.i.i.i.i.i.i250 = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i.i.i.i.i.i249 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i244, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %.021.i.i.i.i.i.i.i.i.i.i250
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %.021.i.i.i.i.i.i.i.i.i.i250
  %i.ps = load <2 x double>, ptr %i.pr, align 1, !tbaa !17
  store <2 x double> %i.ps, ptr %i.pq, align 16, !tbaa !17
  %i.pt = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i250, 2 ; 2 uses
  %i.pu = icmp slt i64 %i.pt, %i.nc
  br i1 %i.pu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i249, label %._crit_edge.i.i.i.i.i.i.i.i.i.i245, !llvm.loop !94

.loopexit643:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i246, %middle.block755, %._crit_edge.i.i.i.i.i.i.i.i.i.i245
  %i.pv = load ptr, ptr %4, align 8, !tbaa !32
  call void @free(ptr noundef %i.pv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %i.pw = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.py = getelementptr inbounds nuw i8, ptr %i.hb, i64 1160 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.hb, i64 40 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.qb = getelementptr inbounds nuw i8, ptr %i.hb, i64 1184
  %i.qc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1208
  %i.qd = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %.sroa.6362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %.sroa.7363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 32
  %.sroa.8364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 40
  %.sroa.10366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 56
  %.sroa.11367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 64
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 80
  %i.qe = getelementptr inbounds nuw i8, ptr %40, i64 96 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.hb, i64 1168
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.qm = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.bz

bb.by:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @free(ptr noundef %i.bq) #20
  call void @free(ptr noundef %i.az) #20
  %i.qn = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.qn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.qo = load ptr, ptr %15, align 8, !tbaa !25
  call void @free(ptr noundef %i.qo) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.qp = load ptr, ptr %12, align 8, !tbaa !32
  call void @free(ptr noundef %i.qp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.qq = load ptr, ptr %11, align 8, !tbaa !32
  call void @free(ptr noundef %i.qq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @free(ptr noundef %i.q) #20
  %i.qr = load ptr, ptr %9, align 8, !tbaa !25
  call void @free(ptr noundef %i.qr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.qs = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.qs) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0

bb.bz:                                            ; preds = %.loopexit643, %bb.cq
  %indvars.iv660 = phi i64 [ 0, %.loopexit643 ], [ %indvars.iv.next661, %bb.cq ] ; 2 uses
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 16)
          to label %bb.ca unwind label %bb.ch     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.qu = load ptr, ptr %i.ib, align 8, !tbaa !25, !noalias !139
  %i.qv = load i64, ptr %i.ic, align 8, !tbaa !26, !noalias !139
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.qv ; 3 uses
  %i.qx = load <2 x double>, ptr %37, align 16, !tbaa !17
  %i.qy = load <2 x double>, ptr %i.qw, align 1, !tbaa !17
  %i.qz = fsub <2 x double> %i.qx, %i.qy          ; 2 uses
  %i.ra = fmul <2 x double> %i.qz, %i.qz
  %i.rb = load <2 x double>, ptr %i.he, align 16, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rd = load <2 x double>, ptr %i.rc, align 1, !tbaa !17
  %i.re = fsub <2 x double> %i.rb, %i.rd          ; 2 uses
  %i.rf = fmul <2 x double> %i.re, %i.re
  %i.rg = load <2 x double>, ptr %i.hf, align 16, !tbaa !17
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.ri = load <2 x double>, ptr %i.rh, align 1, !tbaa !17
  %i.rj = fsub <2 x double> %i.rg, %i.ri          ; 2 uses
  %i.rk = fmul <2 x double> %i.rj, %i.rj
  %i.rl = fadd <2 x double> %i.rf, %i.rk
  %i.rm = fadd <2 x double> %i.ra, %i.rl          ; 2 uses
  %shift = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.rm, %shift
  %i.rn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.rn)
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %.scalar.i)
          to label %_ZNSolsEd.exit unwind label %.loopexit ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %bb.ca
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !23
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %i.ro, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 240
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i, label %bb.cb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.cb:                                            ; preds = %_ZNSolsEd.exit
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.noexc343 unwind label %.loopexit.split-lp

.noexc343:                                        ; preds = %bb.cb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEd.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 56
  %i.rw = load i8, ptr %i.rv, align 8, !tbaa !160
  %.not.i1.i.i = icmp eq i8 %i.rw, 0
  br i1 %.not.i1.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 67
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.cd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ru)
          to label %.noexc344 unwind label %.loopexit

.noexc344:                                        ; preds = %bb.cd
  %i.rz = load ptr, ptr %i.ru, align 8, !tbaa !23
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = invoke noundef signext i8 %i.sb(ptr noundef nonnull align 8 dereferenceable(570) %i.ru, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !97

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc344, %bb.cc
  %.0.i.i.i = phi i8 [ %i.ry, %bb.cc ], [ %i.sc, %.noexc344 ]
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ro, i8 noundef signext %.0.i.i.i)
          to label %.noexc346 unwind label %.loopexit

.noexc346:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.se = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sd)
          to label %bb.ce unwind label %.loopexit ; 0 uses

bb.ce:                                            ; preds = %.noexc346
  %i.sf = load ptr, ptr %i.pw, align 8, !tbaa !25, !noalias !161 ; 14 uses
  %i.sg = load i64, ptr %i.px, align 8, !tbaa !26, !noalias !161 ; 8 uses
  %i.sh = ptrtoint ptr %i.sf to i64               ; 4 uses
  %i.si = and i64 %i.sh, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i261 = icmp eq i64 %i.si, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i261, label %bb.cf, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i262

bb.cf:                                            ; preds = %bb.ce
  %i.sj = lshr exact i64 %i.sh, 3
  %i.sk = and i64 %i.sj, 1
  %i.sl = call i64 @llvm.smin.i64(i64 %i.sk, i64 %i.sg)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i262

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i262: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i.i.i.i.i.i263 = phi i64 [ %i.sl, %bb.cf ], [ %i.sg, %bb.ce ] ; 11 uses
  %i.sm = sub nsw i64 %i.sg, %.0.i.i.i.i.i.i.i.i.i.i.i263 ; 2 uses
  %i.sn = sdiv i64 %i.sm, 2
  %i.so = shl nsw i64 %i.sn, 1                    ; 2 uses
  %i.sp = add nsw i64 %i.so, %.0.i.i.i.i.i.i.i.i.i.i.i263 ; 5 uses
  %i.sq = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i263, 0
  br i1 %i.sq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader:        ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i262
  %min.iters.check803 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i263, 4
  %i.sr = sub i64 %i.b, %i.sh
  %diff.check801 = icmp ugt i64 %i.sr, -32
  %or.cond = or i1 %min.iters.check803, %diff.check801
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819, label %vector.ph804

vector.ph804:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader
  %n.vec805 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i263, 9223372036854775804 ; 3 uses
  br label %vector.body806

vector.body806:                                   ; preds = %vector.body806, %vector.ph804
  %index807 = phi i64 [ 0, %vector.ph804 ], [ %index.next810, %vector.body806 ] ; 3 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %index807 ; 2 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %index807 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %wide.load808 = load <2 x double>, ptr %i.st, align 16, !tbaa !35
  %wide.load809 = load <2 x double>, ptr %i.su, align 16, !tbaa !35
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  store <2 x double> %wide.load808, ptr %i.ss, align 8, !tbaa !35
  store <2 x double> %wide.load809, ptr %i.sv, align 8, !tbaa !35
  %index.next810 = add nuw i64 %index807, 4       ; 2 uses
  %i.sw = icmp eq i64 %index.next810, %n.vec805
  br i1 %i.sw, label %middle.block811, label %vector.body806, !llvm.loop !100

middle.block811:                                  ; preds = %vector.body806
  %cmp.n812 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i263, %n.vec805
  br i1 %cmp.n812, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819

.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader, %middle.block811
  %.05.i.i.i.i.i.i.i.i.i.i.i271.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader ], [ %n.vec805, %middle.block811 ] ; 3 uses
  %xtraiter827 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i263, 3 ; 2 uses
  %lcmp.mod828.not = icmp eq i64 %xtraiter827, 0
  br i1 %lcmp.mod828.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i271.prol = phi i64 [ %i.ta, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i271.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819 ] ; 3 uses
  %prol.iter829 = phi i64 [ %prol.iter829.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819 ]
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i271.prol
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %.05.i.i.i.i.i.i.i.i.i.i.i271.prol
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !35
  store double %i.sz, ptr %i.sx, align 8, !tbaa !35
  %i.ta = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i271.prol, 1 ; 2 uses
  %prol.iter829.next = add i64 %prol.iter829, 1   ; 2 uses
  %prol.iter829.cmp.not = icmp eq i64 %prol.iter829.next, %xtraiter827
  br i1 %prol.iter829.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol, !llvm.loop !101

.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819
  %.05.i.i.i.i.i.i.i.i.i.i.i271.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i271.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.preheader819 ], [ %i.ta, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol ]
  %i.tb = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i271.ph, %.0.i.i.i.i.i.i.i.i.i.i.i263
  %i.tc = icmp ugt i64 %i.tb, -4
  br i1 %i.tc, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270

.lr.ph.i.i.i.i.i.i.i.i.i.i.i270:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270
  %.05.i.i.i.i.i.i.i.i.i.i.i271 = phi i64 [ %i.ts, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i271.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol.loopexit ] ; 6 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %.05.i.i.i.i.i.i.i.i.i.i.i271
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %.05.i.i.i.i.i.i.i.i.i.i.i271
  %i.tf = load double, ptr %i.te, align 8, !tbaa !35
  store double %i.tf, ptr %i.td, align 8, !tbaa !35
  %i.tg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i271, 1 ; 2 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.tg
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %i.tg
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !35
  store double %i.tj, ptr %i.th, align 8, !tbaa !35
  %i.tk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i271, 2 ; 2 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.tk
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %i.tk
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !35
  store double %i.tn, ptr %i.tl, align 8, !tbaa !35
  %i.to = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i271, 3 ; 2 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.to
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %i.to
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !35
  store double %i.tr, ptr %i.tp, align 8, !tbaa !35
  %i.ts = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i271, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i272.3 = icmp eq i64 %i.ts, %.0.i.i.i.i.i.i.i.i.i.i.i263
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i272.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270, !llvm.loop !102

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i270, %middle.block811, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i262
  %i.tt = icmp sgt i64 %i.sm, 1
  br i1 %i.tt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i268, label %._crit_edge.i.i.i.i.i.i.i.i.i.i264

._crit_edge.i.i.i.i.i.i.i.i.i.i264:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i268, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.tu = icmp slt i64 %i.sp, %i.sg
  br i1 %i.tu, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.preheader

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.preheader: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265, %middle.block797, %._crit_edge.i.i.i.i.i.i.i.i.i.i264
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i264
  %43 = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i263, %i.so
  %i.tv = sub i64 %i.sg, %43                      ; 3 uses
  %min.iters.check789 = icmp ult i64 %i.tv, 4
  %i.tw = sub i64 %i.b, %i.sh
  %diff.check787 = icmp ugt i64 %i.tw, -32
  %or.cond814 = or i1 %min.iters.check789, %diff.check787
  br i1 %or.cond814, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818, label %vector.ph790

vector.ph790:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader
  %n.vec791 = and i64 %i.tv, -4                   ; 3 uses
  %i.tx = add i64 %i.sp, %n.vec791
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph790
  %index793 = phi i64 [ 0, %vector.ph790 ], [ %index.next796, %vector.body792 ] ; 2 uses
  %i.ty = add i64 %i.sp, %index793                ; 2 uses
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.ty ; 2 uses
  %i.ua = getelementptr inbounds [8 x i8], ptr %37, i64 %i.ty ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %wide.load794 = load <2 x double>, ptr %i.ua, align 8, !tbaa !35
  %wide.load795 = load <2 x double>, ptr %i.ub, align 8, !tbaa !35
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store <2 x double> %wide.load794, ptr %i.tz, align 8, !tbaa !35
  store <2 x double> %wide.load795, ptr %i.uc, align 8, !tbaa !35
  %index.next796 = add nuw i64 %index793, 4       ; 2 uses
  %i.ud = icmp eq i64 %index.next796, %n.vec791
  br i1 %i.ud, label %middle.block797, label %vector.body792, !llvm.loop !103

middle.block797:                                  ; preds = %vector.body792
  %cmp.n798 = icmp eq i64 %i.tv, %n.vec791
  br i1 %cmp.n798, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.preheader, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader, %middle.block797
  %.05.i18.i.i.i.i.i.i.i.i.i.i266.ph = phi i64 [ %i.sp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader ], [ %i.tx, %middle.block797 ] ; 4 uses
  %i.ue = sub i64 %i.sg, %.05.i18.i.i.i.i.i.i.i.i.i.i266.ph
  %xtraiter830 = and i64 %i.ue, 3                 ; 2 uses
  %lcmp.mod831.not = icmp eq i64 %xtraiter830, 0
  br i1 %lcmp.mod831.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i266.prol = phi i64 [ %i.ui, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i266.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818 ] ; 3 uses
  %prol.iter832 = phi i64 [ %prol.iter832.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818 ]
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266.prol
  %i.ug = getelementptr inbounds [8 x i8], ptr %37, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266.prol
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !35
  store double %i.uh, ptr %i.uf, align 8, !tbaa !35
  %i.ui = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266.prol, 1 ; 2 uses
  %prol.iter832.next = add i64 %prol.iter832, 1   ; 2 uses
  %prol.iter832.cmp.not = icmp eq i64 %prol.iter832.next, %xtraiter830
  br i1 %prol.iter832.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol, !llvm.loop !104

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol.loopexit:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818
  %.05.i18.i.i.i.i.i.i.i.i.i.i266.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i266.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.preheader818 ], [ %i.ui, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol ]
  %i.uj = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266.ph, %i.sg
  %i.uk = icmp ugt i64 %i.uj, -4
  br i1 %i.uk, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.preheader, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265
  %.05.i18.i.i.i.i.i.i.i.i.i.i266 = phi i64 [ %i.va, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i266.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265.prol.loopexit ] ; 6 uses
  %i.ul = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266
  %i.um = getelementptr inbounds [8 x i8], ptr %37, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266
  %i.un = load double, ptr %i.um, align 8, !tbaa !35
  store double %i.un, ptr %i.ul, align 8, !tbaa !35
  %i.uo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266, 1 ; 2 uses
  %i.up = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.uo
  %i.uq = getelementptr inbounds [8 x i8], ptr %37, i64 %i.uo
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !35
  store double %i.ur, ptr %i.up, align 8, !tbaa !35
  %i.us = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266, 2 ; 2 uses
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.us
  %i.uu = getelementptr inbounds [8 x i8], ptr %37, i64 %i.us
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !35
  store double %i.uv, ptr %i.ut, align 8, !tbaa !35
  %i.uw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266, 3 ; 2 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.uw
  %i.uy = getelementptr inbounds [8 x i8], ptr %37, i64 %i.uw
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !35
  store double %i.uz, ptr %i.ux, align 8, !tbaa !35
  %i.va = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i266, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i267.3 = icmp eq i64 %i.va, %i.sg
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i267.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.preheader, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i265, !llvm.loop !105

.lr.ph.i.i.i.i.i.i.i.i.i.i268:                    ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i268
  %.021.i.i.i.i.i.i.i.i.i.i269 = phi i64 [ %i.ve, %.lr.ph.i.i.i.i.i.i.i.i.i.i268 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i263, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLi6ELi1ELi0ELi6ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.vb = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %.021.i.i.i.i.i.i.i.i.i.i269
  %i.vc = getelementptr inbounds [8 x i8], ptr %37, i64 %.021.i.i.i.i.i.i.i.i.i.i269
  %i.vd = load <2 x double>, ptr %i.vc, align 8, !tbaa !17
  store <2 x double> %i.vd, ptr %i.vb, align 16, !tbaa !17
  %i.ve = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i269, 2 ; 2 uses
  %i.vf = icmp slt i64 %i.ve, %i.sp
  br i1 %i.vf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i268, label %._crit_edge.i.i.i.i.i.i.i.i.i.i264, !llvm.loop !106

bb.cg:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit290
  %i.vg = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.vh = invoke i32 @tiny_solve(ptr noundef %i.vg)
          to label %bb.ck unwind label %bb.ch     ; 0 uses

bb.ch:                                            ; preds = %bb.bz, %bb.cg
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit:                                        ; preds = %bb.ca, %bb.cd, %.noexc344, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc346
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp:                               ; preds = %bb.cb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.preheader, %bb.cj
  %indvars.iv656 = phi i64 [ %indvars.iv.next657, %bb.cj ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.preheader ] ; 5 uses
  %i.vj = add nuw nsw i64 %indvars.iv656, %indvars.iv660
  %i.vk = trunc nuw nsw i64 %i.vj to i32
  %i.vl = uitofp nneg i32 %i.vk to double         ; 5 uses
  %i.vm = load ptr, ptr %i.ib, align 8, !tbaa !25, !noalias !162 ; 2 uses
  %i.vn = load i64, ptr %i.ic, align 8, !tbaa !26, !noalias !162 ; 7 uses
  %i.vo = mul nsw i64 %i.vn, %indvars.iv656
  %.not.i.i.i.i.i273 = icmp eq ptr %i.vm, null
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.vm, i64 %i.vo ; 6 uses
  %i.vq = select i1 %.not.i.i.i.i.i273, ptr null, ptr %i.vp
  %.sroa.15.56.vec.insert.i.i.i.i.i.i.i.i.i274 = insertelement <2 x double> poison, double %i.vl, i64 0
  %i.vr = ptrtoint ptr %i.vq to i64               ; 2 uses
  %i.vs = and i64 %i.vr, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i276 = icmp eq i64 %i.vs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i276, label %bb.ci, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i277

bb.ci:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.vt = lshr exact i64 %i.vr, 3
  %i.vu = and i64 %i.vt, 1
  %i.vv = call i64 @llvm.smin.i64(i64 %i.vu, i64 %i.vn)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i277

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i277: ; preds = %bb.ci, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.0.i.i.i.i.i.i.i.i.i.i.i278 = phi i64 [ %i.vv, %bb.ci ], [ %i.vn, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 9 uses
  %i.vw = sub nsw i64 %i.vn, %.0.i.i.i.i.i.i.i.i.i.i.i278 ; 2 uses
  %i.vx = sdiv i64 %i.vw, 2
  %i.vy = shl nsw i64 %i.vx, 1                    ; 2 uses
  %i.vz = add nsw i64 %i.vy, %.0.i.i.i.i.i.i.i.i.i.i.i278 ; 5 uses
  %i.wa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i278, 0
  br i1 %i.wa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i279

.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader:        ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i277
  %min.iters.check773 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i278, 1
  br i1 %min.iters.check773, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader817, label %vector.ph774

vector.ph774:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader
  %n.vec775 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i278, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert776 = insertelement <2 x double> poison, double %i.vl, i64 0
  %broadcast.splat777 = shufflevector <2 x double> %broadcast.splatinsert776, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph774
  %index779 = phi i64 [ 0, %vector.ph774 ], [ %index.next782, %vector.body778 ] ; 4 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %index779
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %index779
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %index779
  %wide.load780 = load <2 x double>, ptr %i.wd, align 16, !tbaa !35
  %wide.load781 = load <2 x double>, ptr %i.wc, align 16, !tbaa !35 ; 2 uses
  %i.we = fsub <2 x double> %wide.load780, %wide.load781
  %i.wf = fmul <2 x double> %i.we, %broadcast.splat777
  %i.wg = fdiv <2 x double> %i.wf, splat (double 9.900000e+01)
  %i.wh = fadd <2 x double> %wide.load781, %i.wg
  store <2 x double> %i.wh, ptr %i.wb, align 8, !tbaa !35
  %index.next782 = add nuw i64 %index779, 2       ; 2 uses
  %i.wi = icmp eq i64 %index.next782, %n.vec775
  br i1 %i.wi, label %middle.block783, label %vector.body778, !llvm.loop !109

middle.block783:                                  ; preds = %vector.body778
  %cmp.n784 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i278, %n.vec775
  br i1 %cmp.n784, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i279, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader817

.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader817:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader, %middle.block783
  %.05.i.i.i.i.i.i.i.i.i.i.i288.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader ], [ %n.vec775, %middle.block783 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287

.lr.ph.i.i.i.i.i.i.i.i.i.i.i287:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader817, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287
  %.05.i.i.i.i.i.i.i.i.i.i.i288 = phi i64 [ %i.ws, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i288.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287.preheader817 ] ; 4 uses
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i288
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %.05.i.i.i.i.i.i.i.i.i.i.i288
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %.05.i.i.i.i.i.i.i.i.i.i.i288
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !35
  %i.wn = load double, ptr %i.wk, align 8, !tbaa !35 ; 2 uses
  %i.wo = fsub double %i.wm, %i.wn
  %i.wp = fmul double %i.wo, %i.vl
  %i.wq = fdiv double %i.wp, 9.900000e+01
  %i.wr = fadd double %i.wn, %i.wq
  store double %i.wr, ptr %i.wj, align 8, !tbaa !35
  %i.ws = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i288, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i289 = icmp eq i64 %i.ws, %.0.i.i.i.i.i.i.i.i.i.i.i278
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i289, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i279, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287, !llvm.loop !110

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i279: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i287, %middle.block783, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i277
  %i.wt = icmp sgt i64 %i.vw, 1
  br i1 %i.wt, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i284, label %._crit_edge.i.i.i.i.i.i.i.i.i.i280

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i284:          ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i279
  %i.wu = shufflevector <2 x double> %.sroa.15.56.vec.insert.i.i.i.i.i.i.i.i.i274, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i285

._crit_edge.i.i.i.i.i.i.i.i.i.i280:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i285, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS7_IdLi6ELi1ELi0ELi6ELi1EEEKNSB_INS0_18scalar_quotient_opIddEEKNSB_INS0_17scalar_product_opIddEEKNSB_INS0_20scalar_difference_opIddEESF_SF_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEESS_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i279
  %i.wv = icmp slt i64 %i.vz, %i.vn
  br i1 %i.wv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit290

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i280
  %44 = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i278, %i.vy
  %i.ww = sub i64 %i.vn, %44                      ; 3 uses
  %min.iters.check759 = icmp ult i64 %i.ww, 2
  br i1 %min.iters.check759, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader816, label %vector.ph760

vector.ph760:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader
  %n.vec761.a = and i64 %i.ww, -2                 ; 3 uses
  %i.wx = add i64 %i.vz, %n.vec761.a
  %broadcast.splatinsert762 = insertelement <2 x double> poison, double %i.vl, i64 0
  %broadcast.splat763 = shufflevector <2 x double> %broadcast.splatinsert762, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph760
  %index765 = phi i64 [ 0, %vector.ph760 ], [ %index.next768, %vector.body764 ] ; 2 uses
  %i.wy = add i64 %i.vz, %index765                ; 3 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.vp, i64 %i.wy
  %i.xa = getelementptr inbounds [8 x i8], ptr %36, i64 %i.wy
  %i.xb = getelementptr inbounds [8 x i8], ptr %38, i64 %i.wy
  %wide.load766 = load <2 x double>, ptr %i.xb, align 8, !tbaa !35
  %wide.load767 = load <2 x double>, ptr %i.xa, align 8, !tbaa !35 ; 2 uses
  %i.xc = fsub <2 x double> %wide.load766, %wide.load767
  %i.xd = fmul <2 x double> %i.xc, %broadcast.splat763
  %i.xe = fdiv <2 x double> %i.xd, splat (double 9.900000e+01)
  %i.xf = fadd <2 x double> %wide.load767, %i.xe
  store <2 x double> %i.xf, ptr %i.wz, align 8, !tbaa !35
  %index.next768 = add nuw i64 %index765, 2       ; 2 uses
  %i.xg = icmp eq i64 %index.next768, %n.vec761.a
  br i1 %i.xg, label %middle.block769, label %vector.body764, !llvm.loop !111

middle.block769:                                  ; preds = %vector.body764
  %cmp.n770 = icmp eq i64 %i.ww, %n.vec761.a
  br i1 %cmp.n770, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit290, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader816

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader816:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader, %middle.block769
  %.05.i18.i.i.i.i.i.i.i.i.i.i282.ph = phi i64 [ %i.vz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader ], [ %i.wx, %middle.block769 ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader816, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281
  %.05.i18.i.i.i.i.i.i.i.i.i.i282 = phi i64 [ %i.xq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i282.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281.preheader816 ] ; 4 uses
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.vp, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i282
  %i.xi = getelementptr inbounds [8 x i8], ptr %36, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i282
  %i.xj = getelementptr inbounds [8 x i8], ptr %38, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i282
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !35
  %i.xl = load double, ptr %i.xi, align 8, !tbaa !35 ; 2 uses
  %i.xm = fsub double %i.xk, %i.xl
  %i.xn = fmul double %i.xm, %i.vl
  %i.xo = fdiv double %i.xn, 9.900000e+01
  %i.xp = fadd double %i.xl, %i.xo
  store double %i.xp, ptr %i.xh, align 8, !tbaa !35
  %i.xq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i282, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i283 = icmp eq i64 %i.xq, %i.vn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i283, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit290, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281, !llvm.loop !112

.lr.ph.i.i.i.i.i.i.i.i.i.i285:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i285, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i284
  %.021.i.i.i.i.i.i.i.i.i.i286 = phi i64 [ %i.ya, %.lr.ph.i.i.i.i.i.i.i.i.i.i285 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i278, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i284 ] ; 4 uses
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.vp, i64 %.021.i.i.i.i.i.i.i.i.i.i286
  %i.xs = getelementptr inbounds [8 x i8], ptr %36, i64 %.021.i.i.i.i.i.i.i.i.i.i286
  %i.xt = load <2 x double>, ptr %i.xs, align 8, !tbaa !17 ; 2 uses
  %i.xu = getelementptr inbounds [8 x i8], ptr %38, i64 %.021.i.i.i.i.i.i.i.i.i.i286
  %i.xv = load <2 x double>, ptr %i.xu, align 8, !tbaa !17
  %i.xw = fsub <2 x double> %i.xv, %i.xt
  %i.xx = fmul <2 x double> %i.wu, %i.xw
  %i.xy = fdiv <2 x double> %i.xx, splat (double 9.900000e+01)
  %i.xz = fadd <2 x double> %i.xt, %i.xy
  store <2 x double> %i.xz, ptr %i.xr, align 16, !tbaa !17
  %i.ya = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i286, 2 ; 2 uses
  %i.yb = icmp slt i64 %i.ya, %i.vz
  br i1 %i.yb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i285, label %._crit_edge.i.i.i.i.i.i.i.i.i.i280, !llvm.loop !82

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit290: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i281, %middle.block769, %._crit_edge.i.i.i.i.i.i.i.i.i.i280
  %.not = icmp eq i64 %indvars.iv656, 9
  br i1 %.not, label %bb.cg, label %bb.cj

bb.cj:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_IdLi6ELi1ELi0ELi6ELi1EEEKNS5_INS6_18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESA_SA_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEESN_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit290
  %i.yc = load ptr, ptr %i.hg, align 8, !tbaa !25, !noalias !163
  %i.yd = load i64, ptr %i.hi, align 8, !tbaa !26, !noalias !163
  %i.ye = mul nsw i64 %i.yd, %indvars.iv656
  %i.yf = getelementptr inbounds [8 x i8], ptr %i.yc, i64 %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store double 1.000000e+01, ptr %i.yg, align 8, !tbaa !35
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLi6ELi1ELi0ELi6ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

bb.ck:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.yh = load ptr, ptr %i.pz, align 8, !tbaa !25, !noalias !164
  %i.yi = load i64, ptr %i.qa, align 8, !tbaa !26, !noalias !164 ; 2 uses
  store ptr %i.py, ptr %i.qd, align 8
  store ptr %37, ptr %.sroa.5361.0..sroa_idx, align 8
  store ptr %i.qb, ptr %.sroa.6362.0..sroa_idx, align 8
  store ptr %i.yh, ptr %.sroa.7363.0..sroa_idx, align 8
  store i64 %i.yi, ptr %.sroa.8364.0..sroa_idx, align 8
  store ptr %i.pz, ptr %.sroa.10366.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11367.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.yi, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %i.qc, ptr %i.qe, align 8, !tbaa !165, !alias.scope !166
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr null, ptr %i.qf, align 8, !tbaa !45
  %i.yj = load i64, ptr %i.qh, align 8, !tbaa !26 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i8 0, i64 16, i1 false)
  %.not.i.i.i.i.i348 = icmp eq i64 %i.yj, 0
  br i1 %.not.i.i.i.i.i348, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yk = icmp sgt i64 %i.yj, 0
  br i1 %i.yk, label %bb.cm, label %.sink.split.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.yl = icmp samesign ugt i64 %i.yj, 2305843009213693951
  br i1 %i.yl, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i: ; preds = %bb.cm
  %i.ym = shl nuw i64 %i.yj, 3
  %i.yn = call noalias ptr @malloc(i64 noundef %i.ym) #22 ; 2 uses
  %i.yo = icmp eq ptr %i.yn, null
  br i1 %i.yo, label %.invoke.i.i, label %.sink.split.i.i.i.i.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i, %bb.cm
  %i.yp = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.yp, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.yp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont.i.i unwind label %bb.cn

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.sink.split.i.i.i.i.i:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i, %bb.cl
  %.sink.i.i.i.i.i = phi ptr [ %i.yn, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i ], [ null, %bb.cl ] ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %i.qg, align 8, !tbaa !32
  br label %bb.co

bb.cn:                                            ; preds = %.invoke.i.i
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %.body294

bb.co:                                            ; preds = %.sink.split.i.i.i.i.i, %bb.ck
  %i.yr = phi ptr [ null, %bb.ck ], [ %.sink.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  store i64 %i.yj, ptr %i.qi, align 8, !tbaa !33
  store ptr %i.yr, ptr %i.qf, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr %i.py, ptr %0, align 8
  store ptr %37, ptr %i.qj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi6ELi1ELi0ELi6ELi1EEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %.noexc293 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %.body294

.noexc293:                                        ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.qk, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6362.0..sroa_idx)
          to label %bb.cq unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc293
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %.body294

bb.cq:                                            ; preds = %.noexc293
  %i.yu = load ptr, ptr %i.qe, align 8, !tbaa !171, !nonnull !54, !align !55
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !32 ; 4 uses
  store ptr %i.yv, ptr %i.ql, align 8, !tbaa !45
  %i.yw = load ptr, ptr %i.qf, align 8, !tbaa !173 ; 3 uses
  %i.yx = load <2 x double>, ptr %i.yw, align 16, !tbaa !17
  %i.yy = load ptr, ptr %i.qk, align 8, !tbaa !173 ; 3 uses
  %i.yz = load <2 x double>, ptr %i.yy, align 16, !tbaa !17
  %i.za = fadd <2 x double> %i.yx, %i.yz
  %i.zb = load <2 x double>, ptr %i.yv, align 16, !tbaa !17
  %i.zc = fadd <2 x double> %i.za, %i.zb
  store <2 x double> %i.zc, ptr %37, align 16, !tbaa !17
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.ze = load <2 x double>, ptr %i.zd, align 16, !tbaa !17
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.zg = load <2 x double>, ptr %i.zf, align 16, !tbaa !17
  %i.zh = fadd <2 x double> %i.ze, %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.zj = load <2 x double>, ptr %i.zi, align 16, !tbaa !17
  %i.zk = fadd <2 x double> %i.zh, %i.zj
  store <2 x double> %i.zk, ptr %i.he, align 16, !tbaa !17
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yw, i64 32
  %i.zm = load <2 x double>, ptr %i.zl, align 16, !tbaa !17
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  %i.zo = load <2 x double>, ptr %i.zn, align 16, !tbaa !17
  %i.zp = fadd <2 x double> %i.zm, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yv, i64 32
  %i.zr = load <2 x double>, ptr %i.zq, align 16, !tbaa !17
  %i.zs = fadd <2 x double> %i.zp, %i.zr
  store <2 x double> %i.zs, ptr %i.hf, align 16, !tbaa !17
  %i.zt = load ptr, ptr %i.qm, align 8, !tbaa !32
  call void @free(ptr noundef %i.zt) #20
  %i.zu = load ptr, ptr %i.qg, align 8, !tbaa !32
  call void @free(ptr noundef %i.zu) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next661, 90
  br i1 %exitcond663.not, label %bb.by, label %bb.bz, !llvm.loop !119

.body294:                                         ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cn, %bb.cp
  %.pn100 = phi { ptr, i32 } [ %i.yq, %bb.cn ], [ %i.yt, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ys, %bb.cp ]
  %i.zv = load ptr, ptr %i.qg, align 8, !tbaa !32
  call void @free(ptr noundef %i.zv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ch, %.body294, %.body254
  %.pn113 = phi { ptr, i32 } [ %i.mp, %.body254 ], [ %i.vi, %bb.ch ], [ %.pn100, %.body294 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %.body161

.body161:                                         ; preds = %bb.au, %bb.bb, %bb.bi, %bb.bt, %bb.cr
  %.pn113.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bb ], [ %.pn113, %bb.cr ], [ %.pn91.pn.pn.pn.pn, %bb.bt ], [ %i.if, %bb.au ], [ %.pn87.pn.pn, %bb.bi ]
  call void @free(ptr noundef %i.bq) #20
  br label %.body157

.body157:                                         ; preds = %bb.v, %.body161
  %.pn113.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn.pn, %.body161 ], [ %i.bt, %bb.v ]
  call void @free(ptr noundef %i.az) #20
  br label %.body154

.body154:                                         ; preds = %bb.s, %.body157
  %.pn113.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body157 ], [ %i.bc, %bb.s ]
  %i.zw = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.zw) #20
end_hunk_0
