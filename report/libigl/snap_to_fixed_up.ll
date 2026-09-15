Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 157
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  store i64 %i.dk, ptr %i.y, align 8, !tbaa !187
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEENS2_IfLin1ELin1ELi0ELin1ELi3EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEENS2_IfLin1ELin1ELi0ELin1ELi3EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24: ; preds = %bb.s, %.noexc36
  %i.dn = mul nsw i64 %i.dk, %i.di                ; 7 uses
  %i.do = ptrtoint ptr %9 to i64                  ; 2 uses
  %i.dp = lshr exact i64 %i.do, 2
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = and i64 %i.dq, 2
  %i.ds = call i64 @llvm.smin.i64(i64 %i.dr, i64 %i.dn) ; 6 uses
  %i.dt = sub i64 %i.dn, %i.ds
  %i.du = and i64 %i.dt, -4                       ; 3 uses
  %i.dv = add nsw i64 %i.du, %i.ds                ; 5 uses
  %i.dw = icmp sgt i64 %i.ds, 0
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.i.i.i33, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25

.lr.ph.i.i.i.i.i.i.i.i.i33:                       ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEENS2_IfLin1ELin1ELi0ELin1ELi3EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24
  %i.dx = load float, ptr %i.df, align 4, !tbaa !12
  store float %i.dx, ptr %9, align 8, !tbaa !12
  %exitcond.not.i.i.i.i.i.i.i.i.i35 = icmp eq i64 %i.ds, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i35, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25, label %.lr.ph.i.i.i.i.i.i.i.i.i33.1

.lr.ph.i.i.i.i.i.i.i.i.i33.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i33
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  store float %i.ea, ptr %i.dy, align 4, !tbaa !12
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i.i.i.i.i33.1, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEENS2_IfLin1ELin1ELi0ELin1ELi3EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24
  %.not.i12.i.i.i.i.i.i.i26 = icmp eq i64 %i.du, 0
  br i1 %.not.i12.i.i.i.i.i.i.i26, label %._crit_edge.i.i.i.i.i.i.i.i29, label %.lr.ph.i.i.i.i.i.i.i.i27

._crit_edge.i.i.i.i.i.i.i.i29:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i27, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25
  %i.eb = icmp slt i64 %i.dv, %i.dn
  br i1 %i.eb, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader, label %.loopexit68

.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader:           ; preds = %._crit_edge.i.i.i.i.i.i.i.i29
  %i.ec = add i64 %i.ds, %i.du
  %i.ed = sub i64 %i.dn, %i.ec                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ed, 8
  %i.ee = sub i64 %i.dg, %i.do
  %diff.check = icmp ugt i64 %i.ee, -32
  %or.cond106 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond106, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader
  %n.vec = and i64 %i.ed, -8                      ; 3 uses
  %i.ef = add i64 %i.dv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = add i64 %i.dv, %index                   ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %9, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.eg ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load = load <4 x float>, ptr %i.ei, align 4, !tbaa !12
  %wide.load91 = load <4 x float>, ptr %i.ej, align 4, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <4 x float> %wide.load, ptr %i.eh, align 4, !tbaa !12
  store <4 x float> %wide.load91, ptr %i.ek, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit68, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108

.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108:        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i31.ph = phi i64 [ %i.dv, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader ], [ %i.ef, %middle.block ] ; 4 uses
  %i.em = sub i64 %i.dn, %.05.i18.i.i.i.i.i.i.i.i31.ph
  %xtraiter = and i64 %i.em, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol

.lr.ph.i17.i.i.i.i.i.i.i.i30.prol:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol
  %.05.i18.i.i.i.i.i.i.i.i31.prol = phi i64 [ %i.eq, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol ], [ %.05.i18.i.i.i.i.i.i.i.i31.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108 ]
  %i.en = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i18.i.i.i.i.i.i.i.i31.prol
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.05.i18.i.i.i.i.i.i.i.i31.prol
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !12
  store float %i.ep, ptr %i.en, align 4, !tbaa !12
  %i.eq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol, !llvm.loop !870

.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108
  %.05.i18.i.i.i.i.i.i.i.i31.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i31.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108 ], [ %i.eq, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol ]
  %i.er = sub i64 %.05.i18.i.i.i.i.i.i.i.i31.ph, %i.dn
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %.loopexit68, label %.lr.ph.i17.i.i.i.i.i.i.i.i30

.lr.ph.i17.i.i.i.i.i.i.i.i30:                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i30
  %.05.i18.i.i.i.i.i.i.i.i31 = phi i64 [ %i.fi, %.lr.ph.i17.i.i.i.i.i.i.i.i30 ], [ %.05.i18.i.i.i.i.i.i.i.i31.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i18.i.i.i.i.i.i.i.i31
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.05.i18.i.i.i.i.i.i.i.i31
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  store float %i.ev, ptr %i.et, align 4, !tbaa !12
  %i.ew = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 1 ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ew
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ew
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !12
  store float %i.ez, ptr %i.ex, align 4, !tbaa !12
  %i.fa = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 2 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %9, i64 %i.fa
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fa
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !12
  store float %i.fd, ptr %i.fb, align 4, !tbaa !12
  %i.fe = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 3 ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %9, i64 %i.fe
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fe
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !12
  store float %i.fh, ptr %i.ff, align 4, !tbaa !12
  %i.fi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i32.3 = icmp eq i64 %i.fi, %i.dn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i32.3, label %.loopexit68, label %.lr.ph.i17.i.i.i.i.i.i.i.i30, !llvm.loop !871

.lr.ph.i.i.i.i.i.i.i.i27:                         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25, %.lr.ph.i.i.i.i.i.i.i.i27
  %.021.i.i.i.i.i.i.i.i28 = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i27 ], [ %i.ds, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25 ] ; 3 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %9, i64 %.021.i.i.i.i.i.i.i.i28
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.021.i.i.i.i.i.i.i.i28
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !tbaa !13
  store <4 x float> %i.fl, ptr %i.fj, align 16, !tbaa !13
  %i.fm = add nsw i64 %.021.i.i.i.i.i.i.i.i28, 4  ; 2 uses
  %i.fn = icmp slt i64 %i.fm, %i.dv
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.i.i27, label %._crit_edge.i.i.i.i.i.i.i.i29, !llvm.loop !868

.loopexit68:                                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i30, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i29
  call void @free(ptr noundef %i.df) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.u:                                             ; preds = %.loopexit68, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !12
  %i.fp = load i64, ptr %i.y, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 3, ptr %i.fq, align 16, !tbaa !189
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 3, ptr %i.fr, align 8, !tbaa !190
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.fs, align 16, !tbaa !191
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ft, ptr %4, align 16, !tbaa !192
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !193
  %i.fw = load i64, ptr %i.x, align 8, !tbaa !186
  %i.fx = load ptr, ptr %0, align 8, !tbaa !99
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %.sroa.664.0.copyload, i64 noundef %i.fp, i64 noundef %.sroa.speculated47.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.063.0.copyload, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 noundef %i.fw, ptr noundef nonnull %i.fx, i64 noundef 1, i64 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fy = load ptr, ptr %8, align 8, !tbaa !182
  call void @free(ptr noundef %i.fy) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.w ], [ %i.dd, %bb.q ], [ %i.fo, %bb.t ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.w, %bb.f ]
  %i.ga = load ptr, ptr %8, align 8, !tbaa !182
  call void @free(ptr noundef %i.ga) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1755", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1763", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1770", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.563", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 2
  %7 = add i64 %6, -4                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hb, %.loopexit ] ; 15 uses
  %i.k = shl i64 %indvar, 2
  %8 = sub i64 %7, %i.k
  %i.l = shl i64 %indvar, 2
  %9 = sub i64 %7, %i.l
  %i.m = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.n = xor i64 %.047186, -1                     ; 2 uses
  %i.o = add i64 %i.c, %i.n                       ; 10 uses
  %.not193 = icmp eq i64 %i.o, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.p = add i64 %i.m, %i.n                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.q = load ptr, ptr %2, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.047186
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = fneg float %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !113, !noalias !892 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047186, 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg
  %i.x = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !893
  %i.y = sub nsw i64 %i.x, %i.o                   ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.y, 12
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ab = load ptr, ptr %0, align 8, !tbaa !182, !noalias !894
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !184, !noalias !894 ; 5 uses
  %i.ad = mul nsw i64 %i.ac, %.047186
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %i.af = sub nsw i64 %i.ac, %i.o                 ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af ; 5 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.aj = lshr exact i64 %i.ah, 2
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = and i64 %i.ak, 3                        ; 2 uses
  %i.am = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.o) ; 3 uses
  %i.an = sub nuw nsw i64 %i.o, %i.am             ; 4 uses
  %i.ao = lshr i64 %i.an, 2                       ; 2 uses
  %i.ap = and i64 %i.an, 9223372036854775804      ; 3 uses
  %i.aq = or disjoint i64 %i.ap, %i.am            ; 2 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ]
  %i.as = phi i64 [ %i.ap, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.at = phi i64 [ %i.ao, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.au = phi i64 [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.av = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 0, i64 %i.av, i1 false), !tbaa !12
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ax = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ap, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ay = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ao, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.az = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ba = icmp sgt i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ag, i64 %i.bb
  %i.bc = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aw, i64 %i.bc)
  %i.bd = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.be = add nsw i64 %smax.i.i.i.i.i, %i.bd
  %i.bf = shl i64 %i.be, 2
  %i.bg = and i64 %i.bf, -16
  %i.bh = add i64 %i.bg, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bh, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = icmp samesign ult i64 %i.aw, %i.o
  br i1 %i.bi, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = shl i64 %i.ay, 4
  %i.bk = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bl = getelementptr i8, ptr %i.ag, i64 %i.bj
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bm = sub nsw i64 %i.az, %i.ax
  %i.bn = shl nuw i64 %i.bm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bn, i1 false), !tbaa !12
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ag, ptr %3, align 8
  store i64 %i.o, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ae, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.af, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.aa, ptr %4, align 8
  store i64 %i.p, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.o, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.p, ptr %i.h, align 8, !alias.scope !895
  store float %i.t, ptr %i.i, align 8, !tbaa !199, !alias.scope !895
  store ptr %i.w, ptr %i.j, align 8
  store i64 %i.p, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.v, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.m, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bo = icmp sgt i64 %i.d, %.047186
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0185 = phi i64 [ %i.gr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bp = shl i64 %indvar198, 2
  %10 = sub i64 %7, %i.bp
  %i.bq = shl i64 %indvar198, 2                   ; 2 uses
  %i.br = shl i64 %indvar198, 2
  %11 = sub i64 %7, %i.br
  %i.bs = load ptr, ptr %0, align 8, !tbaa !182   ; 8 uses
  %i.bt = load i64, ptr %i.g, align 8, !tbaa !184 ; 7 uses
  %i.bu = mul nsw i64 %i.bt, %.047186
  %i.bv = getelementptr [4 x i8], ptr %i.bs, i64 %i.bu ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %.0185 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12 ; 10 uses
  %i.by = mul nsw i64 %i.bt, %.0185
  %i.bz = getelementptr [4 x i8], ptr %i.bs, i64 %i.by ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %.0185
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = fmul float %i.bx, %i.cb
  store float %i.cc, ptr %i.bw, align 4, !tbaa !12
  %i.cd = xor i64 %.0185, -1
  %i.ce = add i64 %i.c, %i.cd                     ; 10 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cg = sub nsw i64 %i.bt, %i.ce                ; 4 uses
  %i.ch = getelementptr [4 x i8], ptr %i.bz, i64 %i.cg ; 10 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cg ; 11 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cl = lshr exact i64 %i.cj, 2
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = and i64 %i.cm, 3                        ; 2 uses
  %i.co = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.ce) ; 3 uses
  %i.cp = sub nsw i64 %i.ce, %i.co                ; 3 uses
  %i.cq = sdiv i64 %i.cp, 4
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = or disjoint i64 %i.cr, %i.co            ; 2 uses
  %.not184 = icmp eq i64 %i.cn, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ce, %bb.d ] ; 3 uses
  %i.cu = phi i64 [ %i.cp, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.co, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ce, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 8
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cv = mul i64 %8, %i.bt
  %i.cw = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.cx = shl i64 %i.cg, 2                        ; 2 uses
  %i.cy = getelementptr i8, ptr %i.bs, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep207 = getelementptr i8, ptr %i.cz, i64 %i.cx
  %i.da = mul i64 %i.bt, %10
  %i.db = getelementptr i8, ptr %i.bs, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 %i.cw
  %scevgep208 = getelementptr i8, ptr %i.dc, i64 %i.cx
  %bound0209 = icmp ult ptr %i.ci, %scevgep208
  %bound1210 = icmp ult ptr %i.ch, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
  %n.vec215 = and i64 %.0.i.i.i.i.i.i.i196, -8    ; 3 uses
  %broadcast.splatinsert216 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat217 = shufflevector <4 x float> %broadcast.splatinsert216, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index219 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index219 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load220.a = load <4 x float>, ptr %i.de, align 4, !tbaa !12, !alias.scope !896
  %wide.load221.a = load <4 x float>, ptr %i.df, align 4, !tbaa !12, !alias.scope !896
  %i.dg = fmul <4 x float> %broadcast.splat217, %wide.load220.a
  %i.dh = fmul <4 x float> %broadcast.splat217, %wide.load221.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load222 = load <4 x float>, ptr %i.dd, align 4, !tbaa !12, !alias.scope !897, !noalias !896
  %wide.load223 = load <4 x float>, ptr %i.di, align 4, !tbaa !12, !alias.scope !897, !noalias !896
  %i.dj = fadd <4 x float> %i.dg, %wide.load222
  %i.dk = fadd <4 x float> %i.dh, %wide.load223
  store <4 x float> %i.dj, ptr %i.dd, align 4, !tbaa !12, !alias.scope !897, !noalias !896
  store <4 x float> %i.dk, ptr %i.di, align 4, !tbaa !12, !alias.scope !897, !noalias !896
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dl, label %middle.block225, label %vector.body218, !llvm.loop !883

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %.0.i.i.i.i.i.i.i196, %n.vec215
  br i1 %cmp.n226, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader229

.lr.ph.i.i.i.i.i.i.i.preheader229:                ; preds = %vector.memcheck206, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block225
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec215, %middle.block225 ] ; 5 uses
  %.neg233 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i196, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader229
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.05.i.i.i.i.i.i.i.ph
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fmul float %i.bx, %i.do
  %i.dq = load float, ptr %i.dm, align 4, !tbaa !12
  %i.dr = fadd float %i.dp, %i.dq
  store float %i.dr, ptr %i.dm, align 4, !tbaa !12
  %i.ds = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader229
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader229 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dt = icmp eq i64 %.0.i.i.i.i.i.i.i196, %.neg233
  br i1 %i.dt, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.05.i.i.i.i.i.i.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dx = fmul float %i.bx, %i.dw
  %i.dy = load float, ptr %i.du, align 4, !tbaa !12
  %i.dz = fadd float %i.dx, %i.dy
  store float %i.dz, ptr %i.du, align 4, !tbaa !12
  %i.ea = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ea
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !12
  %i.ee = fmul float %i.bx, %i.ed
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !12
  %i.eg = fadd float %i.ee, %i.ef
  store float %i.eg, ptr %i.eb, align 4, !tbaa !12
  %i.eh = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.eh, %.0.i.i.i.i.i.i.i196
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !884

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block225, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ei = phi i64 [ %i.cs, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ct, %middle.block225 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ej = phi i64 [ %i.cp, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cu, %middle.block225 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i197 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %middle.block225 ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ek = icmp sgt i64 %i.ej, 3
  br i1 %i.ek, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.el = insertelement <1 x float> poison, float %i.bx, i64 0
  %i.em = shufflevector <1 x float> %i.el, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.en = icmp samesign ult i64 %i.ei, %i.ce
  br i1 %i.en, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eo = sub nuw i64 %i.ce, %i.ei                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eo, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ep = mul i64 %9, %i.bt                       ; 2 uses
  %i.eq = shl i64 %i.ei, 2                        ; 2 uses
  %i.er = shl i64 %i.cg, 2                        ; 4 uses
  %i.es = getelementptr i8, ptr %i.bs, i64 %i.ep
  %i.et = getelementptr i8, ptr %i.es, i64 %i.eq
  %scevgep = getelementptr i8, ptr %i.et, i64 %i.er
  %i.eu = getelementptr i8, ptr %i.bs, i64 %i.bq
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.ep
  %scevgep200.a = getelementptr i8, ptr %i.ev, i64 %i.er
  %i.ew = mul i64 %i.bt, %11                      ; 2 uses
  %i.ex = getelementptr i8, ptr %i.bs, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.eq
  %scevgep201 = getelementptr i8, ptr %i.ey, i64 %i.er
  %i.ez = getelementptr i8, ptr %i.bs, i64 %i.bq
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ew
  %scevgep202 = getelementptr i8, ptr %i.fa, i64 %i.er
  %bound0 = icmp ult ptr %scevgep, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep200.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, 9223372036854775800     ; 3 uses
  %i.fb = add i64 %i.ei, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = add i64 %i.ei, %index                   ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fc ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <4 x float>, ptr %i.fe, align 4, !tbaa !12, !alias.scope !898
  %wide.load203.a = load <4 x float>, ptr %i.ff, align 4, !tbaa !12, !alias.scope !898
  %i.fg = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fh = fmul <4 x float> %broadcast.splat, %wide.load203.a
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fd, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  %wide.load205 = load <4 x float>, ptr %i.fi, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  %i.fj = fadd <4 x float> %i.fg, %wide.load204
  %i.fk = fadd <4 x float> %i.fh, %wide.load205
  store <4 x float> %i.fj, ptr %i.fd, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  store <4 x float> %i.fk, ptr %i.fi, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !888

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fb, %middle.block ] ; 6 uses
  %i.fm = sub i64 %i.ce, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fm, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !12
  %i.fq = fmul float %i.bx, %i.fp
  %i.fr = load float, ptr %i.fn, align 4, !tbaa !12
  %i.fs = fadd float %i.fq, %i.fr
  store float %i.fs, ptr %i.fn, align 4, !tbaa !12
  %i.ft = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.ft, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fu = icmp eq i64 %indvar198, %.neg234
  br i1 %i.fu, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.05.i18.i.i.i.i.i.i
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !12
  %i.fy = fmul float %i.bx, %i.fx
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !12
  %i.ga = fadd float %i.fy, %i.fz
  store float %i.ga, ptr %i.fv, align 4, !tbaa !12
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.gb
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = fmul float %i.bx, %i.ge
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !12
  %i.gh = fadd float %i.gf, %i.gg
  store float %i.gh, ptr %i.gc, align 4, !tbaa !12
  %i.gi = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gi, %i.ce
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !889

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.021.i.i.i.i.i.i
  %i.gl = load <4 x float>, ptr %i.gk, align 1, !tbaa !13
  %i.gm = fmul <4 x float> %i.em, %i.gl
  %i.gn = load <4 x float>, ptr %i.gj, align 16, !tbaa !13
  %i.go = fadd <4 x float> %i.gn, %i.gm
  store <4 x float> %i.go, ptr %i.gj, align 16, !tbaa !13
  %i.gp = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gq = icmp slt i64 %i.gp, %i.ei
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gr = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gs = icmp sgt i64 %i.gr, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gs, label %.lr.ph, label %.loopexit, !llvm.loop !890

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gt = load ptr, ptr %2, align 8, !tbaa !118
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.047186
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !12
  %i.gw = load ptr, ptr %0, align 8, !tbaa !182
  %i.gx = load i64, ptr %i.g, align 8, !tbaa !184
  %i.gy = mul nsw i64 %i.gx, %.047186
  %i.gz = getelementptr [4 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %.047186
  store float %i.gv, ptr %i.ha, align 4, !tbaa !12
  %i.hb = add nsw i64 %.047186, -1
  %i.hc = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hc, label %bb.b, label %._crit_edge, !llvm.loop !891
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1755", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1763", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1770", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.563", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 2
  %7 = add i64 %6, -4                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hb, %.loopexit ] ; 15 uses
  %i.k = shl i64 %indvar, 2
  %8 = sub i64 %7, %i.k
  %i.l = shl i64 %indvar, 2
  %9 = sub i64 %7, %i.l
  %i.m = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.n = xor i64 %.047186, -1                     ; 2 uses
  %i.o = add i64 %i.c, %i.n                       ; 10 uses
  %.not193 = icmp eq i64 %i.o, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.p = add i64 %i.m, %i.n                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.q = load ptr, ptr %2, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.047186
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = fneg float %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !113, !noalias !920 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047186, 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg
  %i.x = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !921
  %i.y = sub nsw i64 %i.x, %i.o                   ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.y, 12
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ab = load ptr, ptr %0, align 8, !tbaa !182, !noalias !922
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !184, !noalias !922 ; 5 uses
  %i.ad = mul nsw i64 %i.ac, %.047186
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %i.af = sub nsw i64 %i.ac, %i.o                 ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af ; 5 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.aj = lshr exact i64 %i.ah, 2
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = and i64 %i.ak, 3                        ; 2 uses
  %i.am = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.o) ; 3 uses
  %i.an = sub nuw nsw i64 %i.o, %i.am             ; 4 uses
  %i.ao = lshr i64 %i.an, 2                       ; 2 uses
  %i.ap = and i64 %i.an, 9223372036854775804      ; 3 uses
  %i.aq = or disjoint i64 %i.ap, %i.am            ; 2 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ]
  %i.as = phi i64 [ %i.ap, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.at = phi i64 [ %i.ao, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.au = phi i64 [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.av = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 0, i64 %i.av, i1 false), !tbaa !12
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ax = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ap, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ay = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ao, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.az = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ba = icmp sgt i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ag, i64 %i.bb
  %i.bc = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aw, i64 %i.bc)
  %i.bd = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.be = add nsw i64 %smax.i.i.i.i.i, %i.bd
  %i.bf = shl i64 %i.be, 2
  %i.bg = and i64 %i.bf, -16
  %i.bh = add i64 %i.bg, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bh, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = icmp samesign ult i64 %i.aw, %i.o
  br i1 %i.bi, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = shl i64 %i.ay, 4
  %i.bk = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bl = getelementptr i8, ptr %i.ag, i64 %i.bj
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bm = sub nsw i64 %i.az, %i.ax
  %i.bn = shl nuw i64 %i.bm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bn, i1 false), !tbaa !12
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ag, ptr %3, align 8
  store i64 %i.o, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ae, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.af, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.aa, ptr %4, align 8
  store i64 %i.p, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.o, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.p, ptr %i.h, align 8, !alias.scope !923
  store float %i.t, ptr %i.i, align 8, !tbaa !199, !alias.scope !923
  store ptr %i.w, ptr %i.j, align 8
  store i64 %i.p, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.v, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.m, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bo = icmp sgt i64 %i.d, %.047186
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0185 = phi i64 [ %i.gr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bp = shl i64 %indvar198, 2
  %10 = sub i64 %7, %i.bp
  %i.bq = shl i64 %indvar198, 2                   ; 2 uses
  %i.br = shl i64 %indvar198, 2
  %11 = sub i64 %7, %i.br
  %i.bs = load ptr, ptr %0, align 8, !tbaa !182   ; 8 uses
  %i.bt = load i64, ptr %i.g, align 8, !tbaa !184 ; 7 uses
  %i.bu = mul nsw i64 %i.bt, %.047186
  %i.bv = getelementptr [4 x i8], ptr %i.bs, i64 %i.bu ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %.0185 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12 ; 10 uses
  %i.by = mul nsw i64 %i.bt, %.0185
  %i.bz = getelementptr [4 x i8], ptr %i.bs, i64 %i.by ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %.0185
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = fmul float %i.bx, %i.cb
  store float %i.cc, ptr %i.bw, align 4, !tbaa !12
  %i.cd = xor i64 %.0185, -1
  %i.ce = add i64 %i.c, %i.cd                     ; 10 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cg = sub nsw i64 %i.bt, %i.ce                ; 4 uses
  %i.ch = getelementptr [4 x i8], ptr %i.bz, i64 %i.cg ; 10 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cg ; 11 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cl = lshr exact i64 %i.cj, 2
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = and i64 %i.cm, 3                        ; 2 uses
  %i.co = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.ce) ; 3 uses
  %i.cp = sub nsw i64 %i.ce, %i.co                ; 3 uses
  %i.cq = sdiv i64 %i.cp, 4
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = or disjoint i64 %i.cr, %i.co            ; 2 uses
  %.not184 = icmp eq i64 %i.cn, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ce, %bb.d ] ; 3 uses
  %i.cu = phi i64 [ %i.cp, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.co, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ce, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 8
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cv = mul i64 %8, %i.bt
  %i.cw = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.cx = shl i64 %i.cg, 2                        ; 2 uses
  %i.cy = getelementptr i8, ptr %i.bs, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep207 = getelementptr i8, ptr %i.cz, i64 %i.cx
  %i.da = mul i64 %i.bt, %10
  %i.db = getelementptr i8, ptr %i.bs, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 %i.cw
  %scevgep208 = getelementptr i8, ptr %i.dc, i64 %i.cx
  %bound0209 = icmp ult ptr %i.ci, %scevgep208
  %bound1210 = icmp ult ptr %i.ch, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
  %n.vec215 = and i64 %.0.i.i.i.i.i.i.i196, -8    ; 3 uses
  %broadcast.splatinsert216 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat217 = shufflevector <4 x float> %broadcast.splatinsert216, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index219 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index219 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load220.a = load <4 x float>, ptr %i.de, align 4, !tbaa !12, !alias.scope !924
  %wide.load221.a = load <4 x float>, ptr %i.df, align 4, !tbaa !12, !alias.scope !924
  %i.dg = fmul <4 x float> %broadcast.splat217, %wide.load220.a
  %i.dh = fmul <4 x float> %broadcast.splat217, %wide.load221.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load222 = load <4 x float>, ptr %i.dd, align 4, !tbaa !12, !alias.scope !925, !noalias !924
  %wide.load223 = load <4 x float>, ptr %i.di, align 4, !tbaa !12, !alias.scope !925, !noalias !924
  %i.dj = fadd <4 x float> %i.dg, %wide.load222
  %i.dk = fadd <4 x float> %i.dh, %wide.load223
  store <4 x float> %i.dj, ptr %i.dd, align 4, !tbaa !12, !alias.scope !925, !noalias !924
  store <4 x float> %i.dk, ptr %i.di, align 4, !tbaa !12, !alias.scope !925, !noalias !924
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dl, label %middle.block225, label %vector.body218, !llvm.loop !911

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %.0.i.i.i.i.i.i.i196, %n.vec215
  br i1 %cmp.n226, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader229

.lr.ph.i.i.i.i.i.i.i.preheader229:                ; preds = %vector.memcheck206, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block225
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec215, %middle.block225 ] ; 5 uses
  %.neg233 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i196, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader229
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.05.i.i.i.i.i.i.i.ph
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fmul float %i.bx, %i.do
  %i.dq = load float, ptr %i.dm, align 4, !tbaa !12
  %i.dr = fadd float %i.dp, %i.dq
  store float %i.dr, ptr %i.dm, align 4, !tbaa !12
  %i.ds = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader229
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader229 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dt = icmp eq i64 %.0.i.i.i.i.i.i.i196, %.neg233
  br i1 %i.dt, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.05.i.i.i.i.i.i.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dx = fmul float %i.bx, %i.dw
  %i.dy = load float, ptr %i.du, align 4, !tbaa !12
  %i.dz = fadd float %i.dx, %i.dy
  store float %i.dz, ptr %i.du, align 4, !tbaa !12
  %i.ea = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ea
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !12
  %i.ee = fmul float %i.bx, %i.ed
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !12
  %i.eg = fadd float %i.ee, %i.ef
  store float %i.eg, ptr %i.eb, align 4, !tbaa !12
  %i.eh = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.eh, %.0.i.i.i.i.i.i.i196
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !912

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block225, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ei = phi i64 [ %i.cs, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ct, %middle.block225 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ej = phi i64 [ %i.cp, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cu, %middle.block225 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i197 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %middle.block225 ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ek = icmp sgt i64 %i.ej, 3
  br i1 %i.ek, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.el = insertelement <1 x float> poison, float %i.bx, i64 0
  %i.em = shufflevector <1 x float> %i.el, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.en = icmp samesign ult i64 %i.ei, %i.ce
  br i1 %i.en, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eo = sub nuw i64 %i.ce, %i.ei                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eo, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ep = mul i64 %9, %i.bt                       ; 2 uses
  %i.eq = shl i64 %i.ei, 2                        ; 2 uses
  %i.er = shl i64 %i.cg, 2                        ; 4 uses
  %i.es = getelementptr i8, ptr %i.bs, i64 %i.ep
  %i.et = getelementptr i8, ptr %i.es, i64 %i.eq
  %scevgep = getelementptr i8, ptr %i.et, i64 %i.er
  %i.eu = getelementptr i8, ptr %i.bs, i64 %i.bq
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.ep
  %scevgep200.a = getelementptr i8, ptr %i.ev, i64 %i.er
  %i.ew = mul i64 %i.bt, %11                      ; 2 uses
  %i.ex = getelementptr i8, ptr %i.bs, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.eq
  %scevgep201 = getelementptr i8, ptr %i.ey, i64 %i.er
  %i.ez = getelementptr i8, ptr %i.bs, i64 %i.bq
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ew
  %scevgep202 = getelementptr i8, ptr %i.fa, i64 %i.er
  %bound0 = icmp ult ptr %scevgep, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep200.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, 9223372036854775800     ; 3 uses
  %i.fb = add i64 %i.ei, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = add i64 %i.ei, %index                   ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fc ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <4 x float>, ptr %i.fe, align 4, !tbaa !12, !alias.scope !926
  %wide.load203.a = load <4 x float>, ptr %i.ff, align 4, !tbaa !12, !alias.scope !926
  %i.fg = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fh = fmul <4 x float> %broadcast.splat, %wide.load203.a
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fd, align 4, !tbaa !12, !alias.scope !927, !noalias !926
  %wide.load205 = load <4 x float>, ptr %i.fi, align 4, !tbaa !12, !alias.scope !927, !noalias !926
  %i.fj = fadd <4 x float> %i.fg, %wide.load204
  %i.fk = fadd <4 x float> %i.fh, %wide.load205
  store <4 x float> %i.fj, ptr %i.fd, align 4, !tbaa !12, !alias.scope !927, !noalias !926
  store <4 x float> %i.fk, ptr %i.fi, align 4, !tbaa !12, !alias.scope !927, !noalias !926
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fb, %middle.block ] ; 6 uses
  %i.fm = sub i64 %i.ce, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fm, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !12
  %i.fq = fmul float %i.bx, %i.fp
  %i.fr = load float, ptr %i.fn, align 4, !tbaa !12
  %i.fs = fadd float %i.fq, %i.fr
  store float %i.fs, ptr %i.fn, align 4, !tbaa !12
  %i.ft = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.ft, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fu = icmp eq i64 %indvar198, %.neg234
  br i1 %i.fu, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.05.i18.i.i.i.i.i.i
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !12
  %i.fy = fmul float %i.bx, %i.fx
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !12
  %i.ga = fadd float %i.fy, %i.fz
  store float %i.ga, ptr %i.fv, align 4, !tbaa !12
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.gb
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = fmul float %i.bx, %i.ge
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !12
  %i.gh = fadd float %i.gf, %i.gg
  store float %i.gh, ptr %i.gc, align 4, !tbaa !12
  %i.gi = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gi, %i.ce
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !917

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.021.i.i.i.i.i.i
  %i.gl = load <4 x float>, ptr %i.gk, align 1, !tbaa !13
  %i.gm = fmul <4 x float> %i.em, %i.gl
  %i.gn = load <4 x float>, ptr %i.gj, align 16, !tbaa !13
  %i.go = fadd <4 x float> %i.gn, %i.gm
  store <4 x float> %i.go, ptr %i.gj, align 16, !tbaa !13
  %i.gp = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gq = icmp slt i64 %i.gp, %i.ei
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gr = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gs = icmp sgt i64 %i.gr, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gs, label %.lr.ph, label %.loopexit, !llvm.loop !918

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gt = load ptr, ptr %2, align 8, !tbaa !118
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.047186
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !12
  %i.gw = load ptr, ptr %0, align 8, !tbaa !182
  %i.gx = load i64, ptr %i.g, align 8, !tbaa !184
  %i.gy = mul nsw i64 %i.gx, %.047186
  %i.gz = getelementptr [4 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %.047186
  store float %i.gv, ptr %i.ha, align 4, !tbaa !12
  %i.hb = add nsw i64 %.047186, -1
  %i.hc = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hc, label %bb.b, label %._crit_edge, !llvm.loop !919
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %.sroa.065.0.copyload = load ptr, ptr %0, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.667.0.copyload = load i64, ptr %.sroa.667.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.055.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.758.0.copyload = load i64, ptr %.sroa.758.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = load float, ptr %3, align 4, !tbaa !12
  %i.f = fmul float %i.d, %i.e
  store float %i.f, ptr %i.a, align 4, !tbaa !12
  %i.g = icmp ugt i64 %.sroa.758.0.copyload, 4611686018427387903
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !180
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.055.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.i = shl nuw i64 %.sroa.758.0.copyload, 2     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.758.0.copyload, 32769
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #20 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !180
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.055.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.758.0.copyload, 32768 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !929
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %.sroa.667.0.copyload, i64 noundef %.sroa.566.0.copyload, ptr noundef %.sroa.065.0.copyload, i64 noundef 3, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.s, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25: ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %.sroa.speculated132 = tail call i64 @llvm.smin.i64(i64 %1, i64 %0) ; 4 uses
  %i.a = icmp sgt i64 %.sroa.speculated132, 0
  br i1 %i.a, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge147:                                   ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph146, %bb.k
  %indvars.iv = phi i64 [ %.sroa.speculated132, %.lr.ph146 ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.052144 = phi i64 [ 0, %.lr.ph146 ], [ %i.dw, %bb.k ] ; 6 uses
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 8) ; 2 uses
  %i.d = add i64 %smin, -2
  %i.e = add i64 %smin, -3
  %i.f = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.g = call i64 @llvm.umin.i64(i64 %i.f, i64 8)
  %i.h = sub nuw nsw i64 %.sroa.speculated132, %.052144 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.h, i64 8) ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.j = add nuw i64 %.sroa.speculated, %.052144  ; 3 uses
  %i.k = sub i64 %1, %i.j                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.0143 = phi i64 [ %i.do, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.m = sub i64 %i.d, %.0143                     ; 2 uses
  %i.n = sub i64 %i.e, %.0143
  %i.o = add nuw nsw i64 %.0143, %.052144         ; 5 uses
  %i.p = xor i64 %.0143, -1
  %i.q = add nsw i64 %.sroa.speculated, %i.p      ; 9 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = mul nsw i64 %i.o, %7
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.t = load float, ptr %8, align 4, !tbaa !12
  %i.u = mul nsw i64 %i.o, %3
  %i.v = getelementptr inbounds [4 x i8], ptr %2, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s ; 12 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 12 uses
  %i.y = and i64 %i.q, 9223372036854775800        ; 4 uses
  %i.z = and i64 %i.q, 9223372036854775804        ; 3 uses
  %.not.i.i.i = icmp samesign ult i64 %i.q, 4
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load <4 x float>, ptr %i.w, align 1, !tbaa !13
  %i.ab = load <4 x float>, ptr %i.x, align 1, !tbaa !13
  %i.ac = fmul <4 x float> %i.aa, %i.ab           ; 3 uses
  %i.ad = icmp samesign ugt i64 %i.q, 7
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !13
  %i.ai = fmul <4 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.q, 15
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %.075.lcssa.i.i.i = phi <4 x float> [ %i.ai, %bb.e ], [ %i.ay, %.lr.ph.i.i.i ]
  %.072.lcssa.i.i.i = phi <4 x float> [ %i.ac, %bb.e ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.ak = fadd <4 x float> %.075.lcssa.i.i.i, %.072.lcssa.i.i.i ; 2 uses
  %i.al = icmp samesign ugt i64 %i.z, %i.y
  br i1 %i.al, label %bb.f, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05480.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.e ] ; 4 uses
  %.054.in79.i.i.i = phi i64 [ %.05480.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %.07278.i.i.i = phi <4 x float> [ %i.ar, %.lr.ph.i.i.i ], [ %i.ac, %bb.e ]
  %.07577.i.i.i = phi <4 x float> [ %i.ay, %.lr.ph.i.i.i ], [ %i.ai, %bb.e ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05480.i.i.i
  %i.an = load <4 x float>, ptr %i.am, align 1, !tbaa !13
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.05480.i.i.i
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !13
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %i.ar = fadd <4 x float> %.07278.i.i.i, %i.aq   ; 2 uses
  %i.as = add nuw nsw i64 %.054.in79.i.i.i, 12    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %8, ptr %10, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELi3EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS0_IdLin1ELin1ELi0ELi2ELi3EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.r
  %i.cv = load ptr, ptr %5, align 8, !tbaa !419   ; 9 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !417 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !418 ; 3 uses
  %i.db = load i64, ptr %i.y, align 16, !tbaa !408
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.db, %i.cy
  %i.dc = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i.i22 = icmp eq i64 %i.dc, %i.da
  %or.cond.i.i.i.i.i.i.i.i23 = select i1 %.not.i.i.i.i.i.i.i.i21, i1 %.not8.i.i.i.i.i.i.i.i22, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i23, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, label %bb.s

bb.s:                                             ; preds = %.noexc31
  store i64 %i.cy, ptr %i.y, align 16, !tbaa !408
  store i64 %i.da, ptr %i.z, align 8, !tbaa !409
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24: ; preds = %bb.s, %.noexc31
  %i.dd = mul nsw i64 %i.da, %i.cy                ; 7 uses
  %i.de = sdiv i64 %i.dd, 2
  %i.df = shl nsw i64 %i.de, 1                    ; 6 uses
  %i.dg = icmp sgt i64 %i.dd, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25

._crit_edge.i.i.i.i.i.i.i.i25:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i29, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24
  %i.dh = icmp slt i64 %i.df, %i.dd
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, label %.loopexit63

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i25
  %i.di = sub i64 %i.dd, %i.df                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 8
  %i.dj = sub i64 %i.cw, %i.d
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond97 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.di, -4                      ; 3 uses
  %i.dk = add i64 %i.df, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %i.df, %index                   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <2 x double>, ptr %i.dn, align 8, !tbaa !15
  %wide.load82 = load <2 x double>, ptr %i.do, align 8, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %wide.load, ptr %i.dm, align 16, !tbaa !15
  store <2 x double> %wide.load82, ptr %i.dp, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader ], [ %i.dk, %middle.block ] ; 4 uses
  %i.dr = sub i64 %i.dd, %.05.i.i.i.i.i.i.i.i.i27.ph
  %xtraiter = and i64 %i.dr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i26.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.du = load double, ptr %i.dt, align 8, !tbaa !15
  store double %i.du, ptr %i.ds, align 8, !tbaa !15
  %i.dv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !1469

.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99
  %.05.i.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ]
  %i.dw = sub i64 %.05.i.i.i.i.i.i.i.i.i27.ph, %i.dd
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i.i26:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !15
  store double %i.ea, ptr %i.dy, align 8, !tbaa !15
  %i.eb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %9, i64 %i.eb
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !15
  store double %i.ee, ptr %i.ec, align 8, !tbaa !15
  %i.ef = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ef
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ef
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !15
  store double %i.ei, ptr %i.eg, align 8, !tbaa !15
  %i.ej = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ej
  %i.el = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ej
  %i.em = load double, ptr %i.el, align 8, !tbaa !15
  store double %i.em, ptr %i.ek, align 8, !tbaa !15
  %i.en = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.en, %i.dd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i28.3, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26, !llvm.loop !1470

.lr.ph.i.i.i.i.i.i.i.i29:                         ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i29
  %.011.i.i.i.i.i.i.i.i30 = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i29 ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i30
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.011.i.i.i.i.i.i.i.i30
  %i.eq = load <2 x double>, ptr %i.ep, align 16, !tbaa !13
  store <2 x double> %i.eq, ptr %i.eo, align 16, !tbaa !13
  %i.er = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i30, 2 ; 2 uses
  %i.es = icmp slt i64 %i.er, %i.df
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25, !llvm.loop !1467

.loopexit63:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i25
  call void @free(ptr noundef %i.cv) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.u:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !15
  %i.eu = load i64, ptr %i.z, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 3, ptr %i.ev, align 16, !tbaa !411
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 3, ptr %i.ew, align 8, !tbaa !412
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.ex, align 16, !tbaa !413
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ey, ptr %4, align 16, !tbaa !414
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !415
  %i.fb = load i64, ptr %i.y, align 16, !tbaa !408
  %i.fc = load ptr, ptr %0, align 8, !tbaa !321
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE(i64 noundef %.sroa.659.0.copyload, i64 noundef %i.eu, i64 noundef %.sroa.speculated40.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 3, ptr noundef nonnull align 16 dereferenceable(64) %9, i64 noundef %i.fb, ptr noundef nonnull %i.fc, i64 noundef 1, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fd = load ptr, ptr %8, align 8, !tbaa !404
  call void @free(ptr noundef %i.fd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.w ], [ %i.ct, %bb.q ], [ %i.et, %bb.t ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.x, %bb.f ]
  %i.ff = load ptr, ptr %8, align 8, !tbaa !404
  call void @free(ptr noundef %i.ff) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.4044", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.4052", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.4059", align 8 ; 15 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7114 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.2843", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7114.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7114, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8163.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12167.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 3                            ; 3 uses
  %7 = add i64 %6, -8                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph184, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph184 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047183 = phi i64 [ %i.d, %.lr.ph184 ], [ %i.gr, %.loopexit ] ; 15 uses
  %i.k = shl i64 %indvar, 3
  %8 = sub i64 %7, %i.k
  %9 = mul i64 %indvar, -8                        ; 2 uses
  %10 = add i64 %7, %9
  %11 = add i64 %6, %9
  %i.l = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.m = xor i64 %.047183, -1                     ; 2 uses
  %i.n = add i64 %i.c, %i.m                       ; 9 uses
  %.not190 = icmp eq i64 %i.n, 0
  br i1 %.not190, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047183, 1             ; 4 uses
  %i.o = add i64 %i.l, %i.m                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.p = load ptr, ptr %2, align 8, !tbaa !338
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.047183
  %i.r = load double, ptr %i.q, align 8, !tbaa !15
  %i.s = fneg double %i.r
  %i.t = load ptr, ptr %1, align 8, !tbaa !333, !noalias !1491 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047183, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7114.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.w = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !1492
  %i.x = sub nsw i64 %i.w, %i.n                   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.x, 24
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !404, !noalias !1493
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !406, !noalias !1493 ; 5 uses
  %i.ac = mul nsw i64 %i.ab, %.047183
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = sub nsw i64 %i.ab, %i.n                 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ag, 3
  %i.aj = and i64 %i.ai, 1                        ; 3 uses
  %i.ak = sub nuw nsw i64 %i.n, %i.aj             ; 4 uses
  %i.al = lshr i64 %i.ak, 1                       ; 2 uses
  %i.am = and i64 %i.ak, 9223372036854775806      ; 3 uses
  %i.an = or disjoint i64 %i.am, %i.aj            ; 2 uses
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = phi i64 [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ]
  %i.ap = phi i64 [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aq = phi i64 [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ar = phi i64 [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.as = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.as, i1 false), !tbaa !15
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.au = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.av = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aw = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.af, i64 %i.ay
  %i.az = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.at, i64 %i.az)
  %i.ba = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, -1
  %i.bb = add nsw i64 %smax.i.i.i.i.i, %i.ba
  %i.bc = shl i64 %i.bb, 3
  %i.bd = and i64 %i.bc, -16
  %i.be = add i64 %i.bd, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.be, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = icmp samesign ult i64 %i.at, %i.n
  br i1 %i.bf, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = shl i64 %i.av, 4
  %i.bh = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %i.bi = getelementptr i8, ptr %i.af, i64 %i.bg
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bj = sub nsw i64 %i.aw, %i.au
  %i.bk = shl nuw i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !15
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.af, ptr %3, align 8
  store i64 %i.n, ptr %.sroa.5176.0..sroa_idx, align 8
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ae, ptr %.sroa.15177.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.z, ptr %4, align 8
  store i64 %i.o, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.n, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !1494
  store double %i.s, ptr %i.i, align 8, !tbaa !421, !alias.scope !1494
  store ptr %i.v, ptr %i.j, align 8
  store i64 %i.o, ptr %.sroa.8163.32..sroa_idx, align 8
  store ptr %i.u, ptr %.sroa.10165.32..sroa_idx, align 8
  store i64 %i.l, ptr %.sroa.11166.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12167.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7114, i64 64, i1 false)
  store i64 0, ptr %.sroa.13168.32..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.14169.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15170.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16171.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18173.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bl = icmp sgt i64 %i.d, %.047183
  br i1 %i.bl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar192 = phi i64 [ %indvar.next193, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0182 = phi i64 [ %i.gh, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bm = shl i64 %indvar192, 3
  %12 = sub i64 %7, %i.bm
  %13 = mul i64 %indvar192, -8                    ; 2 uses
  %14 = add i64 %7, %13
  %15 = add i64 %6, %13
  %i.bn = load ptr, ptr %0, align 8, !tbaa !404   ; 8 uses
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !406 ; 9 uses
  %i.bp = mul nsw i64 %i.bo, %.047183
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.0182 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !15 ; 10 uses
  %i.bt = mul nsw i64 %i.bo, %.0182
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %i.bt ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %.0182
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !15
  %i.bx = fmul double %i.bs, %i.bw
  store double %i.bx, ptr %i.br, align 8, !tbaa !15
  %i.by = xor i64 %.0182, -1
  %i.bz = add i64 %i.c, %i.by                     ; 8 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.cb = sub nsw i64 %i.bo, %i.bz                ; 4 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bu, i64 %i.cb ; 10 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cb ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cf, 0
  %i.cg = lshr exact i64 %i.ce, 3
  %i.ch = and i64 %i.cg, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ch, i64 %i.bz ; 13 uses
  %i.ci = sub nsw i64 %i.bz, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cj = sdiv i64 %i.ci, 2                       ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 1                    ; 2 uses
  %i.cl = add nsw i64 %i.ck, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not181 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not181, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check206 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check206, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cm = mul i64 %8, %i.bo
  %i.cn = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.co = shl i64 %i.cb, 3                        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bn, i64 %i.cm
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn
  %scevgep200 = getelementptr i8, ptr %i.cq, i64 %i.co
  %i.cr = mul i64 %i.bo, %12
  %i.cs = getelementptr i8, ptr %i.bn, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cn
  %scevgep201 = getelementptr i8, ptr %i.ct, i64 %i.co
  %bound0202 = icmp ult ptr %i.cd, %scevgep201
  %bound1203 = icmp ult ptr %i.cc, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec208 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body211 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index212 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index212 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load213 = load <2 x double>, ptr %i.cv, align 8, !tbaa !15, !alias.scope !1495
  %wide.load214 = load <2 x double>, ptr %i.cw, align 8, !tbaa !15, !alias.scope !1495
  %i.cx = fmul <2 x double> %broadcast.splat210, %wide.load213
  %i.cy = fmul <2 x double> %broadcast.splat210, %wide.load214
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.cu, align 8, !tbaa !15, !alias.scope !1496, !noalias !1495
  %wide.load216 = load <2 x double>, ptr %i.cz, align 8, !tbaa !15, !alias.scope !1496, !noalias !1495
  %i.da = fadd <2 x double> %i.cx, %wide.load215
  %i.db = fadd <2 x double> %i.cy, %wide.load216
  store <2 x double> %i.da, ptr %i.cu, align 8, !tbaa !15, !alias.scope !1496, !noalias !1495
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !15, !alias.scope !1496, !noalias !1495
  %index.next217 = add nuw i64 %index212, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.dc, label %middle.block218, label %vector.body211, !llvm.loop !1482

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec208
  br i1 %cmp.n219, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader222

.lr.ph.i.i.i.i.i.i.i.preheader222:                ; preds = %vector.memcheck199, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block218
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck199 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec208, %middle.block218 ] ; 5 uses
  %.neg225 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader222
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i.ph
  %i.df = load double, ptr %i.de, align 8, !tbaa !15
  %i.dg = fmul double %i.bs, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !15
  %i.di = fadd double %i.dg, %i.dh
  store double %i.di, ptr %i.dd, align 8, !tbaa !15
  %i.dj = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader222
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader222 ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dk = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg225
  br i1 %i.dk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !15
  %i.do = fmul double %i.bs, %i.dn
  %i.dp = load double, ptr %i.dl, align 8, !tbaa !15
  %i.dq = fadd double %i.do, %i.dp
  store double %i.dq, ptr %i.dl, align 8, !tbaa !15
  %i.dr = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !15
  %i.dv = fmul double %i.bs, %i.du
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !15
  %i.dx = fadd double %i.dv, %i.dw
  store double %i.dx, ptr %i.ds, align 8, !tbaa !15
  %i.dy = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dy, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1483

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block218, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dz = icmp sgt i64 %i.ci, 1
  br i1 %i.dz, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ea = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eb = icmp slt i64 %i.cl, %i.bz
  br i1 %i.eb, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ec = add i64 %.0.i.i.i.i.i.i.i, %i.ck
  %i.ed = sub i64 %i.bz, %i.ec                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ed, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ee = mul i64 %10, %i.bo
  %i.ef = shl i64 %i.cj, 4                        ; 2 uses
  %i.eg = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.eh = shl i64 %i.cb, 3                        ; 2 uses
  %i.ei = getelementptr i8, ptr %i.bn, i64 %i.ee
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.eg
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.eh
  %i.el = mul i64 %11, %i.bo
  %scevgep191 = getelementptr i8, ptr %i.bn, i64 %i.el
  %i.em = mul i64 %i.bo, %14
  %i.en = getelementptr i8, ptr %i.bn, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.ef
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.eg
  %scevgep194 = getelementptr i8, ptr %i.ep, i64 %i.eh
  %i.eq = mul i64 %i.bo, %15
  %scevgep195 = getelementptr i8, ptr %i.bn, i64 %i.eq
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -4                      ; 3 uses
  %i.er = add i64 %i.cl, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add i64 %i.cl, %index                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x double>, ptr %i.eu, align 8, !tbaa !15, !alias.scope !1497
  %wide.load196 = load <2 x double>, ptr %i.ev, align 8, !tbaa !15, !alias.scope !1497
  %i.ew = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ex = fmul <2 x double> %broadcast.splat, %wide.load196
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load197 = load <2 x double>, ptr %i.et, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  %wide.load198 = load <2 x double>, ptr %i.ey, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  %i.ez = fadd <2 x double> %i.ew, %wide.load197
  %i.fa = fadd <2 x double> %i.ex, %wide.load198
  store <2 x double> %i.ez, ptr %i.et, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !1487

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader221

.lr.ph.i17.i.i.i.i.i.i.preheader221:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.er, %middle.block ] ; 6 uses
  %i.fc = sub i64 %i.bz, %.05.i18.i.i.i.i.i.i.ph
  %.neg226 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter223 = and i64 %i.fc, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !15
  %i.fg = fmul double %i.bs, %i.ff
  %i.fh = load double, ptr %i.fd, align 8, !tbaa !15
  %i.fi = fadd double %i.fg, %i.fh
  store double %i.fi, ptr %i.fd, align 8, !tbaa !15
  %i.fj = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader221 ], [ %i.fj, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fk = icmp eq i64 %indvar192, %.neg226
  br i1 %i.fk, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !15
  %i.fo = fmul double %i.bs, %i.fn
  %i.fp = load double, ptr %i.fl, align 8, !tbaa !15
  %i.fq = fadd double %i.fo, %i.fp
  store double %i.fq, ptr %i.fl, align 8, !tbaa !15
  %i.fr = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.fr
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !15
  %i.fv = fmul double %i.bs, %i.fu
  %i.fw = load double, ptr %i.fs, align 8, !tbaa !15
  %i.fx = fadd double %i.fv, %i.fw
  store double %i.fx, ptr %i.fs, align 8, !tbaa !15
  %i.fy = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fy, %i.bz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1488

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.021.i.i.i.i.i.i
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !13
  %i.gc = fmul <2 x double> %i.ea, %i.gb
  %i.gd = load <2 x double>, ptr %i.fz, align 16, !tbaa !13
  %i.ge = fadd <2 x double> %i.gd, %i.gc
  store <2 x double> %i.ge, ptr %i.fz, align 16, !tbaa !13
  %i.gf = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gg = icmp slt i64 %i.gf, %i.cl
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gh = add nsw i64 %.0182, -1                  ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, %.047183
  %indvar.next193 = add i64 %indvar192, 1
  br i1 %i.gi, label %.lr.ph, label %.loopexit, !llvm.loop !1489

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gj = load ptr, ptr %2, align 8, !tbaa !338
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.047183
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !15
  %i.gm = load ptr, ptr %0, align 8, !tbaa !404
  %i.gn = load i64, ptr %i.g, align 8, !tbaa !406
  %i.go = mul nsw i64 %i.gn, %.047183
  %i.gp = getelementptr [8 x i8], ptr %i.gm, i64 %i.go
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %.047183
  store double %i.gl, ptr %i.gq, align 8, !tbaa !15
  %i.gr = add nsw i64 %.047183, -1
  %i.gs = icmp sgt i64 %.047183, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gs, label %bb.b, label %._crit_edge, !llvm.loop !1490
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.4044", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.4052", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.4059", align 8 ; 15 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7114 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.2843", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7114.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7114, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8163.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12167.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 3                            ; 3 uses
  %7 = add i64 %6, -8                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph184, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph184 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047183 = phi i64 [ %i.d, %.lr.ph184 ], [ %i.gr, %.loopexit ] ; 15 uses
  %i.k = shl i64 %indvar, 3
  %8 = sub i64 %7, %i.k
  %9 = mul i64 %indvar, -8                        ; 2 uses
  %10 = add i64 %7, %9
  %11 = add i64 %6, %9
  %i.l = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.m = xor i64 %.047183, -1                     ; 2 uses
  %i.n = add i64 %i.c, %i.m                       ; 9 uses
  %.not190 = icmp eq i64 %i.n, 0
  br i1 %.not190, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047183, 1             ; 4 uses
  %i.o = add i64 %i.l, %i.m                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.p = load ptr, ptr %2, align 8, !tbaa !338
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.047183
  %i.r = load double, ptr %i.q, align 8, !tbaa !15
  %i.s = fneg double %i.r
  %i.t = load ptr, ptr %1, align 8, !tbaa !333, !noalias !1519 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047183, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7114.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.w = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !1520
  %i.x = sub nsw i64 %i.w, %i.n                   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.x, 24
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !404, !noalias !1521
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !406, !noalias !1521 ; 5 uses
  %i.ac = mul nsw i64 %i.ab, %.047183
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = sub nsw i64 %i.ab, %i.n                 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ag, 3
  %i.aj = and i64 %i.ai, 1                        ; 3 uses
  %i.ak = sub nuw nsw i64 %i.n, %i.aj             ; 4 uses
  %i.al = lshr i64 %i.ak, 1                       ; 2 uses
  %i.am = and i64 %i.ak, 9223372036854775806      ; 3 uses
  %i.an = or disjoint i64 %i.am, %i.aj            ; 2 uses
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = phi i64 [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ]
  %i.ap = phi i64 [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aq = phi i64 [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ar = phi i64 [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.as = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.as, i1 false), !tbaa !15
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.au = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.av = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aw = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.af, i64 %i.ay
  %i.az = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.at, i64 %i.az)
  %i.ba = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, -1
  %i.bb = add nsw i64 %smax.i.i.i.i.i, %i.ba
  %i.bc = shl i64 %i.bb, 3
  %i.bd = and i64 %i.bc, -16
  %i.be = add i64 %i.bd, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.be, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = icmp samesign ult i64 %i.at, %i.n
  br i1 %i.bf, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = shl i64 %i.av, 4
  %i.bh = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %i.bi = getelementptr i8, ptr %i.af, i64 %i.bg
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bj = sub nsw i64 %i.aw, %i.au
  %i.bk = shl nuw i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !15
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.af, ptr %3, align 8
  store i64 %i.n, ptr %.sroa.5176.0..sroa_idx, align 8
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ae, ptr %.sroa.15177.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.z, ptr %4, align 8
  store i64 %i.o, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.n, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !1522
  store double %i.s, ptr %i.i, align 8, !tbaa !421, !alias.scope !1522
  store ptr %i.v, ptr %i.j, align 8
  store i64 %i.o, ptr %.sroa.8163.32..sroa_idx, align 8
  store ptr %i.u, ptr %.sroa.10165.32..sroa_idx, align 8
  store i64 %i.l, ptr %.sroa.11166.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12167.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7114, i64 64, i1 false)
  store i64 0, ptr %.sroa.13168.32..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.14169.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15170.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16171.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18173.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bl = icmp sgt i64 %i.d, %.047183
  br i1 %i.bl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar192 = phi i64 [ %indvar.next193, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0182 = phi i64 [ %i.gh, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bm = shl i64 %indvar192, 3
  %12 = sub i64 %7, %i.bm
  %13 = mul i64 %indvar192, -8                    ; 2 uses
  %14 = add i64 %7, %13
  %15 = add i64 %6, %13
  %i.bn = load ptr, ptr %0, align 8, !tbaa !404   ; 8 uses
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !406 ; 9 uses
  %i.bp = mul nsw i64 %i.bo, %.047183
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.0182 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !15 ; 10 uses
  %i.bt = mul nsw i64 %i.bo, %.0182
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %i.bt ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %.0182
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !15
  %i.bx = fmul double %i.bs, %i.bw
  store double %i.bx, ptr %i.br, align 8, !tbaa !15
  %i.by = xor i64 %.0182, -1
  %i.bz = add i64 %i.c, %i.by                     ; 8 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.cb = sub nsw i64 %i.bo, %i.bz                ; 4 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bu, i64 %i.cb ; 10 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cb ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cf, 0
  %i.cg = lshr exact i64 %i.ce, 3
  %i.ch = and i64 %i.cg, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ch, i64 %i.bz ; 13 uses
  %i.ci = sub nsw i64 %i.bz, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cj = sdiv i64 %i.ci, 2                       ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 1                    ; 2 uses
  %i.cl = add nsw i64 %i.ck, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not181 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not181, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check206 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check206, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cm = mul i64 %8, %i.bo
  %i.cn = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.co = shl i64 %i.cb, 3                        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bn, i64 %i.cm
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn
  %scevgep200 = getelementptr i8, ptr %i.cq, i64 %i.co
  %i.cr = mul i64 %i.bo, %12
  %i.cs = getelementptr i8, ptr %i.bn, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cn
  %scevgep201 = getelementptr i8, ptr %i.ct, i64 %i.co
  %bound0202 = icmp ult ptr %i.cd, %scevgep201
  %bound1203 = icmp ult ptr %i.cc, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec208 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body211 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index212 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index212 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load213 = load <2 x double>, ptr %i.cv, align 8, !tbaa !15, !alias.scope !1523
  %wide.load214 = load <2 x double>, ptr %i.cw, align 8, !tbaa !15, !alias.scope !1523
  %i.cx = fmul <2 x double> %broadcast.splat210, %wide.load213
  %i.cy = fmul <2 x double> %broadcast.splat210, %wide.load214
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.cu, align 8, !tbaa !15, !alias.scope !1524, !noalias !1523
  %wide.load216 = load <2 x double>, ptr %i.cz, align 8, !tbaa !15, !alias.scope !1524, !noalias !1523
  %i.da = fadd <2 x double> %i.cx, %wide.load215
  %i.db = fadd <2 x double> %i.cy, %wide.load216
  store <2 x double> %i.da, ptr %i.cu, align 8, !tbaa !15, !alias.scope !1524, !noalias !1523
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !15, !alias.scope !1524, !noalias !1523
  %index.next217 = add nuw i64 %index212, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.dc, label %middle.block218, label %vector.body211, !llvm.loop !1510

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec208
  br i1 %cmp.n219, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader222

.lr.ph.i.i.i.i.i.i.i.preheader222:                ; preds = %vector.memcheck199, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block218
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck199 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec208, %middle.block218 ] ; 5 uses
  %.neg225 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader222
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i.ph
  %i.df = load double, ptr %i.de, align 8, !tbaa !15
  %i.dg = fmul double %i.bs, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !15
  %i.di = fadd double %i.dg, %i.dh
  store double %i.di, ptr %i.dd, align 8, !tbaa !15
  %i.dj = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader222
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader222 ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dk = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg225
  br i1 %i.dk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !15
  %i.do = fmul double %i.bs, %i.dn
  %i.dp = load double, ptr %i.dl, align 8, !tbaa !15
  %i.dq = fadd double %i.do, %i.dp
  store double %i.dq, ptr %i.dl, align 8, !tbaa !15
  %i.dr = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !15
  %i.dv = fmul double %i.bs, %i.du
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !15
  %i.dx = fadd double %i.dv, %i.dw
  store double %i.dx, ptr %i.ds, align 8, !tbaa !15
  %i.dy = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dy, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1511

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block218, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dz = icmp sgt i64 %i.ci, 1
  br i1 %i.dz, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ea = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eb = icmp slt i64 %i.cl, %i.bz
  br i1 %i.eb, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ec = add i64 %.0.i.i.i.i.i.i.i, %i.ck
  %i.ed = sub i64 %i.bz, %i.ec                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ed, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ee = mul i64 %10, %i.bo
  %i.ef = shl i64 %i.cj, 4                        ; 2 uses
  %i.eg = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.eh = shl i64 %i.cb, 3                        ; 2 uses
  %i.ei = getelementptr i8, ptr %i.bn, i64 %i.ee
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.eg
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.eh
  %i.el = mul i64 %11, %i.bo
  %scevgep191 = getelementptr i8, ptr %i.bn, i64 %i.el
  %i.em = mul i64 %i.bo, %14
  %i.en = getelementptr i8, ptr %i.bn, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.ef
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.eg
  %scevgep194 = getelementptr i8, ptr %i.ep, i64 %i.eh
  %i.eq = mul i64 %i.bo, %15
  %scevgep195 = getelementptr i8, ptr %i.bn, i64 %i.eq
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -4                      ; 3 uses
  %i.er = add i64 %i.cl, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add i64 %i.cl, %index                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x double>, ptr %i.eu, align 8, !tbaa !15, !alias.scope !1525
  %wide.load196 = load <2 x double>, ptr %i.ev, align 8, !tbaa !15, !alias.scope !1525
  %i.ew = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ex = fmul <2 x double> %broadcast.splat, %wide.load196
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load197 = load <2 x double>, ptr %i.et, align 8, !tbaa !15, !alias.scope !1526, !noalias !1525
  %wide.load198 = load <2 x double>, ptr %i.ey, align 8, !tbaa !15, !alias.scope !1526, !noalias !1525
  %i.ez = fadd <2 x double> %i.ew, %wide.load197
  %i.fa = fadd <2 x double> %i.ex, %wide.load198
  store <2 x double> %i.ez, ptr %i.et, align 8, !tbaa !15, !alias.scope !1526, !noalias !1525
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !15, !alias.scope !1526, !noalias !1525
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !1515

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader221

.lr.ph.i17.i.i.i.i.i.i.preheader221:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.er, %middle.block ] ; 6 uses
  %i.fc = sub i64 %i.bz, %.05.i18.i.i.i.i.i.i.ph
  %.neg226 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter223 = and i64 %i.fc, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !15
  %i.fg = fmul double %i.bs, %i.ff
  %i.fh = load double, ptr %i.fd, align 8, !tbaa !15
  %i.fi = fadd double %i.fg, %i.fh
  store double %i.fi, ptr %i.fd, align 8, !tbaa !15
  %i.fj = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader221 ], [ %i.fj, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fk = icmp eq i64 %indvar192, %.neg226
  br i1 %i.fk, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !15
  %i.fo = fmul double %i.bs, %i.fn
  %i.fp = load double, ptr %i.fl, align 8, !tbaa !15
  %i.fq = fadd double %i.fo, %i.fp
  store double %i.fq, ptr %i.fl, align 8, !tbaa !15
  %i.fr = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.fr
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !15
  %i.fv = fmul double %i.bs, %i.fu
  %i.fw = load double, ptr %i.fs, align 8, !tbaa !15
  %i.fx = fadd double %i.fv, %i.fw
  store double %i.fx, ptr %i.fs, align 8, !tbaa !15
  %i.fy = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fy, %i.bz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1516

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.021.i.i.i.i.i.i
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !13
  %i.gc = fmul <2 x double> %i.ea, %i.gb
  %i.gd = load <2 x double>, ptr %i.fz, align 16, !tbaa !13
  %i.ge = fadd <2 x double> %i.gd, %i.gc
  store <2 x double> %i.ge, ptr %i.fz, align 16, !tbaa !13
  %i.gf = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gg = icmp slt i64 %i.gf, %i.cl
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gh = add nsw i64 %.0182, -1                  ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, %.047183
  %indvar.next193 = add i64 %indvar192, 1
  br i1 %i.gi, label %.lr.ph, label %.loopexit, !llvm.loop !1517

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gj = load ptr, ptr %2, align 8, !tbaa !338
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.047183
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !15
  %i.gm = load ptr, ptr %0, align 8, !tbaa !404
  %i.gn = load i64, ptr %i.g, align 8, !tbaa !406
  %i.go = mul nsw i64 %i.gn, %.047183
  %i.gp = getelementptr [8 x i8], ptr %i.gm, i64 %i.go
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %.047183
  store double %i.gl, ptr %i.gq, align 8, !tbaa !15
  %i.gr = add nsw i64 %.047183, -1
  %i.gs = icmp sgt i64 %.047183, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gs, label %bb.b, label %._crit_edge, !llvm.loop !1518
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.sroa.063.0.copyload = load ptr, ptr %0, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.665.0.copyload = load i64, ptr %.sroa.665.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.053.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.756.0.copyload = load i64, ptr %.sroa.756.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = load double, ptr %3, align 8, !tbaa !15
  %i.f = fmul double %i.d, %i.e
  store double %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = icmp ugt i64 %.sroa.756.0.copyload, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !180
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.053.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = shl nuw i64 %.sroa.756.0.copyload, 3     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.756.0.copyload, 16385
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #20 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !180
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.053.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.756.0.copyload, 16384 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !1528
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EdLb0EdLb0ELi1ELi0EE3runEllPKdlS4_lPdlRS3_(i64 noundef %.sroa.665.0.copyload, i64 noundef %.sroa.564.0.copyload, ptr noundef %.sroa.063.0.copyload, i64 noundef 3, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.s, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25: ; preds = %bb.h, %bb.k
end_hunk_1
