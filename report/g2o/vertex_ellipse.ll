Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_:bb.a
  br i1 %i.cb, label %bb.c, label %.preheader, !llvm.loop !257

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.051109 = phi i64 [ %i.df, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = shl nuw nsw i64 %.051109, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cd = sub nsw i64 1, %.051109                 ; 3 uses
  %i.ce = getelementptr [4 x i8], ptr %i.cc, i64 %.051109
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
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cf, i8 0, i64 %i.cq, i1 false), !tbaa !17
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
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i65, i8 0, i64 %i.cy, i1 false), !tbaa !44
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
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i63, i8 0, i64 %i.de, i1 false), !tbaa !17
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.df = add nuw nsw i64 %.051109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !258

bb.f:                                             ; preds = %bb.a
  %i.dg = icmp sgt i64 %i.b, 48
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !17
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
  %.0.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.0104, %bb.l ] ; 3 uses
  %.0104 = add nsw i64 %.0.in103, -1              ; 7 uses
  %i.eh = load i64, ptr %i.di, align 8, !tbaa !43 ; 2 uses
  %i.ei = add i64 %i.eh, %.0104                   ; 7 uses
  %i.ej = sub i64 2, %i.ei                        ; 4 uses
  %i.ek = load i8, ptr %i.dj, align 8, !tbaa !41, !range !70, !noundef !68
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ei
  %.idx.i.i.i.i69 = shl nsw i64 %i.ei, 3
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.eo = add nsw i64 %i.eh, %.0.in103            ; 5 uses
  %i.ep = sub nsw i64 2, %i.eo                    ; 2 uses
  %.idx.i.i.i.i.i70 = shl nuw nsw i64 %.0104, 3   ; 2 uses
  br i1 %i.el, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.en, ptr %7, align 8, !tbaa !66, !alias.scope !280
  store i64 %i.ej, ptr %i.dw, align 8, !tbaa !53, !alias.scope !280
  store i64 %i.ej, ptr %i.dx, align 8, !tbaa !53, !alias.scope !280
  store ptr %1, ptr %i.dy, align 8, !tbaa !36, !alias.scope !280
  store i64 %i.ei, ptr %i.dz, align 8, !tbaa !53, !alias.scope !280
  store i64 %i.ei, ptr %i.ea, align 8, !tbaa !53, !alias.scope !280
  store i64 2, ptr %i.eb, align 8, !tbaa !73, !alias.scope !280
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.eq = load ptr, ptr %0, align 8, !tbaa !67, !noalias !283, !nonnull !68, !align !69 ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i.i.i.i.i70
  store ptr %i.es, ptr %8, align 8, !tbaa !75, !alias.scope !283
  store i64 %i.ep, ptr %i.ec, align 8, !tbaa !53, !alias.scope !283
  store ptr %i.eq, ptr %i.ed, align 8, !tbaa !36, !alias.scope !283
  store i64 %i.eo, ptr %i.ee, align 8, !tbaa !53, !alias.scope !283
  store i64 %.0104, ptr %i.ef, align 8, !tbaa !53, !alias.scope !283
  store i64 2, ptr %i.eg, align 8, !tbaa !77, !alias.scope !283
  %i.et = load ptr, ptr %i.dv, align 8, !tbaa !78, !nonnull !68, !align !79
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.eu, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.en, ptr %9, align 8, !tbaa !66, !alias.scope !284
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !53, !alias.scope !284
  store i64 %i.ej, ptr %i.dl, align 8, !tbaa !53, !alias.scope !284
  store ptr %1, ptr %i.dm, align 8, !tbaa !36, !alias.scope !284
  store i64 %i.ei, ptr %i.dn, align 8, !tbaa !53, !alias.scope !284
  store i64 %i.ei, ptr %i.do, align 8, !tbaa !53, !alias.scope !284
  store i64 2, ptr %i.dp, align 8, !tbaa !73, !alias.scope !284
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.ev = load ptr, ptr %0, align 8, !tbaa !67, !noalias !287, !nonnull !68, !align !69 ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.eo
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx.i.i.i.i.i70
  store ptr %i.ex, ptr %10, align 8, !tbaa !75, !alias.scope !287
  store i64 %i.ep, ptr %i.dq, align 8, !tbaa !53, !alias.scope !287
  store ptr %i.ev, ptr %i.dr, align 8, !tbaa !36, !alias.scope !287
  store i64 %i.eo, ptr %i.ds, align 8, !tbaa !53, !alias.scope !287
  store i64 %.0104, ptr %i.dt, align 8, !tbaa !53, !alias.scope !287
  store i64 2, ptr %i.du, align 8, !tbaa !77, !alias.scope !287
  %i.ey = load ptr, ptr %i.dv, align 8, !tbaa !78, !nonnull !68, !align !79
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.ez, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fa = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.fa, label %bb.i, label %.loopexit, !llvm.loop !271

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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 5 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load float, ptr %2, align 4, !tbaa !17   ; 2 uses
  br i1 %i.c, label %.preheader.lr.ph.i.i.i.i.i.i, label %bb.b

.preheader.lr.ph.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %i.d            ; 2 uses
  %10 = load ptr, ptr %0, align 8, !tbaa !66      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.lr.ph.i.i.i.i.i.i
  %min.iters.check176 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %.preheader.i.i.i.i.i.i
  %n.vec178 = and i64 %i.g, 9223372036854775800   ; 3 uses
  %broadcast.splatinsert179 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat180 = shufflevector <4 x float> %broadcast.splatinsert179, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next185, %vector.body181 ] ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %10, i64 %index182 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %wide.load183 = load <4 x float>, ptr %i.i, align 4, !tbaa !17
  %wide.load184 = load <4 x float>, ptr %i.j, align 4, !tbaa !17
  %i.k = fmul <4 x float> %broadcast.splat180, %wide.load183
  %i.l = fmul <4 x float> %broadcast.splat180, %wide.load184
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !17
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !17
  %index.next185 = add nuw i64 %index182, 8       ; 2 uses
  %i.m = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.m, label %middle.block186, label %vector.body181, !llvm.loop !288

middle.block186:                                  ; preds = %vector.body181
  %cmp.n187 = icmp eq i64 %i.g, %n.vec178
  br i1 %cmp.n187, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %.preheader.i.i.i.i.i.i, %middle.block186
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %n.vec178, %middle.block186 ]
  br label %scalar.ph175

scalar.ph175:                                     ; preds = %scalar.ph175.preheader, %scalar.ph175
  %.09.i.i.i.i.i.i = phi i64 [ %i.q, %scalar.ph175 ], [ %.09.i.i.i.i.i.i.ph, %scalar.ph175.preheader ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %10, i64 %.09.i.i.i.i.i.i ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !17
  %i.p = fmul float %i.e, %i.o
  store float %i.p, ptr %i.n, align 4, !tbaa !17
  %i.q = add nuw nsw i64 %.09.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.q, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph175, !llvm.loop !289

bb.b:                                             ; preds = %bb.a
  %i.r = fcmp une float %i.d, 0.000000e+00
  br i1 %i.r, label %bb.c, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53   ; 11 uses
  store ptr %3, ptr %9, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !53
  %i.v = add nsw i64 %i.b, -1                     ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8        ; 5 uses
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store ptr %i.x, ptr %5, align 8
  %.sroa.048.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %.sroa.048.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 0, ptr %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 1, ptr %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 2, ptr %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 160
  store ptr %i.x, ptr %i.z, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !75
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %i.v, ptr %i.ac, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %3, ptr %6, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.t, ptr %i.ad, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !333
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.ae, align 8, !tbaa !334
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.af, align 8, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ag, align 8, !tbaa !335
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSC_IKSD_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ah = load ptr, ptr %0, align 8, !tbaa !66, !noalias !336 ; 17 uses
  %i.ai = load ptr, ptr %9, align 8, !tbaa !81    ; 18 uses
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !53  ; 9 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = and i64 %i.ak, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.am = lshr exact i64 %i.ak, 2
  %i.an = sub nsw i64 0, %i.am
  %i.ao = and i64 %i.an, 3
  %i.ap = call i64 @llvm.smin.i64(i64 %i.ao, i64 %i.aj)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.d ], [ %i.aj, %bb.c ] ; 13 uses
  %i.aq = sub nsw i64 %i.aj, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.ar = sdiv i64 %i.aq, 4                       ; 2 uses
  %i.as = shl nsw i64 %i.ar, 2                    ; 2 uses
  %i.at = add nsw i64 %i.as, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.au = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader194, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.av = shl i64 %.0.i.i.i.i.i.i.i, 2            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.av
  %scevgep63 = getelementptr i8, ptr %i.ah, i64 %i.av
  %bound0 = icmp ult ptr %i.ai, %scevgep63
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader194, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <4 x float>, ptr %i.ax, align 4, !tbaa !17, !alias.scope !337
  %wide.load64 = load <4 x float>, ptr %i.ay, align 4, !tbaa !17, !alias.scope !337
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load65 = load <4 x float>, ptr %i.aw, align 4, !tbaa !17, !alias.scope !338, !noalias !337
  %wide.load66 = load <4 x float>, ptr %i.az, align 4, !tbaa !17, !alias.scope !338, !noalias !337
  %i.ba = fadd <4 x float> %wide.load, %wide.load65
  %i.bb = fadd <4 x float> %wide.load64, %wide.load66
  store <4 x float> %i.ba, ptr %i.aw, align 4, !tbaa !17, !alias.scope !338, !noalias !337
  store <4 x float> %i.bb, ptr %i.az, align 4, !tbaa !17, !alias.scope !338, !noalias !337
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader194

.lr.ph.i.i.i.i.i.i.i.preheader194:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader194, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader194 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader194 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i.prol ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.05.i.i.i.i.i.i.i.prol
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = load float, ptr %i.bd, align 4, !tbaa !17
  %i.bh = fadd float %i.bf, %i.bg
  store float %i.bh, ptr %i.bd, align 4, !tbaa !17
  %i.bi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !296

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader194
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader194 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bj = sub nsw i64 %.05.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.05.i.i.i.i.i.i.i
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !17
  %i.bo = load float, ptr %i.bl, align 4, !tbaa !17
  %i.bp = fadd float %i.bn, %i.bo
  store float %i.bp, ptr %i.bl, align 4, !tbaa !17
  %i.bq = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bq
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !17
  %i.bu = load float, ptr %i.br, align 4, !tbaa !17
  %i.bv = fadd float %i.bt, %i.bu
  store float %i.bv, ptr %i.br, align 4, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_:bb.a
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load203
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fj, align 4, !tbaa !17, !alias.scope !556, !noalias !555
  %wide.load205 = load <4 x float>, ptr %i.fo, align 4, !tbaa !17, !alias.scope !556, !noalias !555
  %i.fp = fadd <4 x float> %i.fm, %wide.load204
  %i.fq = fadd <4 x float> %i.fn, %wide.load205
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !17, !alias.scope !556, !noalias !555
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !17, !alias.scope !556, !noalias !555
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %i.ck, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fs, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !17
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !17
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !17
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar198, %.neg234
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !17
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !17
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !17
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !17
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !17
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !17
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !546

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !44
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !44
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !44
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !547

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !114
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047186
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !17
  %i.hc = load ptr, ptr %0, align 8, !tbaa !118
  %i.hd = load i64, ptr %i.g, align 8, !tbaa !120
  %i.he = mul nsw i64 %i.hd, %.047186
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047186
  store float %i.hb, ptr %i.hg, align 4, !tbaa !17
  %i.hh = add nsw i64 %.047186, -1
  %i.hi = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !548
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.d = load float, ptr %i.c, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = load float, ptr %3, align 4, !tbaa !17
  %i.f = fmul float %i.d, %i.e
  store float %i.f, ptr %i.a, align 4, !tbaa !17
  %i.g = icmp ugt i64 %.sroa.758.0.copyload, 4611686018427387903
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
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
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.055.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.758.0.copyload, 32768 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !558
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %.sroa.667.0.copyload, i64 noundef %.sroa.566.0.copyload, ptr noundef %.sroa.065.0.copyload, i64 noundef 2, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.s, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25: ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
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

bb.b:                                             ; preds = %bb.k, %.lr.ph146
  %indvars.iv = phi i64 [ %.sroa.speculated132, %.lr.ph146 ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.052144 = phi i64 [ 0, %.lr.ph146 ], [ %i.du, %bb.k ] ; 6 uses
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 8) ; 2 uses
  %i.d = add i64 %smin, -2
  %i.e = add i64 %smin, -3
  %i.f = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.g = call i64 @llvm.umin.i64(i64 %i.f, i64 8)
  %i.h = sub nuw nsw i64 %.sroa.speculated132, %.052144
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.h, i64 8) ; 3 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  %i.i = add nuw i64 %.sroa.speculated, %.052144  ; 3 uses
  %i.j = sub i64 %1, %i.i                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.0143 = phi i64 [ %i.dm, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.l = sub i64 %i.d, %.0143                     ; 2 uses
  %i.m = sub i64 %i.e, %.0143
  %i.n = add nuw nsw i64 %.0143, %.052144         ; 5 uses
  %i.o = xor i64 %.0143, -1
  %i.p = add nsw i64 %.sroa.speculated, %i.o      ; 9 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = mul nsw i64 %i.n, %7
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.s = load float, ptr %8, align 4, !tbaa !17
  %i.t = mul nsw i64 %i.n, %3
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 12 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.r ; 12 uses
  %i.x = and i64 %i.p, 9223372036854775800        ; 4 uses
  %i.y = and i64 %i.p, 9223372036854775804        ; 3 uses
  %.not.i.i.i = icmp samesign ult i64 %i.p, 4
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load <4 x float>, ptr %i.v, align 1, !tbaa !44
  %i.aa = load <4 x float>, ptr %i.w, align 1, !tbaa !44
  %i.ab = fmul <4 x float> %i.z, %i.aa            ; 3 uses
  %i.ac = icmp samesign ugt i64 %i.p, 7
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ae = load <4 x float>, ptr %i.ad, align 1, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ag = load <4 x float>, ptr %i.af, align 1, !tbaa !44
  %i.ah = fmul <4 x float> %i.ae, %i.ag           ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.p, 15
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %.075.lcssa.i.i.i = phi <4 x float> [ %i.ah, %bb.e ], [ %i.ax, %.lr.ph.i.i.i ]
  %.072.lcssa.i.i.i = phi <4 x float> [ %i.ab, %bb.e ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.aj = fadd <4 x float> %.075.lcssa.i.i.i, %.072.lcssa.i.i.i ; 2 uses
  %i.ak = icmp samesign ugt i64 %i.y, %i.x
  br i1 %i.ak, label %bb.f, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05480.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.e ] ; 4 uses
  %.054.in79.i.i.i = phi i64 [ %.05480.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %.07278.i.i.i = phi <4 x float> [ %i.aq, %.lr.ph.i.i.i ], [ %i.ab, %bb.e ]
  %.07577.i.i.i = phi <4 x float> [ %i.ax, %.lr.ph.i.i.i ], [ %i.ah, %bb.e ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.05480.i.i.i
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !44
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05480.i.i.i
  %i.ao = load <4 x float>, ptr %i.an, align 1, !tbaa !44
  %i.ap = fmul <4 x float> %i.am, %i.ao
  %i.aq = fadd <4 x float> %.07278.i.i.i, %i.ap   ; 2 uses
  %i.ar = add nuw nsw i64 %.054.in79.i.i.i, 12    ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ar
  %i.at = load <4 x float>, ptr %i.as, align 1, !tbaa !44
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ar
  %i.av = load <4 x float>, ptr %i.au, align 1, !tbaa !44
  %i.aw = fmul <4 x float> %i.at, %i.av
  %i.ax = fadd <4 x float> %.07577.i.i.i, %i.aw   ; 2 uses
  %.054.i.i.i = add nuw nsw i64 %.05480.i.i.i, 8  ; 2 uses
  %i.ay = icmp samesign ult i64 %.054.i.i.i, %i.x
  br i1 %i.ay, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !559

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %i.ba = load <4 x float>, ptr %i.az, align 1, !tbaa !44
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !tbaa !44
  %i.bd = fmul <4 x float> %i.ba, %i.bc
  %i.be = fadd <4 x float> %i.aj, %i.bd
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i, %bb.d
  %.274.i.i.i = phi <4 x float> [ %i.ab, %bb.d ], [ %i.be, %bb.f ], [ %i.aj, %._crit_edge.i.i.i ] ; 2 uses
  %i.bf = shufflevector <4 x float> %.274.i.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bg = fadd <4 x float> %.274.i.i.i, %i.bf     ; 2 uses
  %shift = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bg, %shift
  %i.bh = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.not = icmp eq i64 %i.y, %i.p
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %bb.g, %.lr.ph85.i.i.i
  %.05283.i.i.i = phi i64 [ %i.bo, %.lr.ph85.i.i.i ], [ %i.y, %bb.g ] ; 3 uses
  %.182.i.i.i = phi float [ %i.bn, %.lr.ph85.i.i.i ], [ %i.bh, %bb.g ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.05283.i.i.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05283.i.i.i
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !17
  %i.bm = fmul float %i.bj, %i.bl
  %i.bn = fadd float %.182.i.i.i, %i.bm           ; 2 uses
  %i.bo = add nuw nsw i64 %.05283.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bo, %i.p
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !560

bb.h:                                             ; preds = %bb.c
  %i.bp = load float, ptr %i.v, align 4, !tbaa !17
  %i.bq = load float, ptr %i.w, align 4, !tbaa !17
  %i.br = fmul float %i.bp, %i.bq                 ; 3 uses
  %.not138 = icmp eq i64 %i.p, 1
  br i1 %.not138, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph90.i.i.i.preheader

.lr.ph90.i.i.i.preheader:                         ; preds = %bb.h
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.bs = icmp ult i64 %i.m, 3
  br i1 %i.bs, label %.lr.ph90.i.i.i.epil.preheader, label %.lr.ph90.i.i.i.preheader.new

.lr.ph90.i.i.i.preheader.new:                     ; preds = %.lr.ph90.i.i.i.preheader
  %unroll_iter = and i64 %i.l, -4
  br label %.lr.ph90.i.i.i

.lr.ph90.i.i.i:                                   ; preds = %.lr.ph90.i.i.i, %.lr.ph90.i.i.i.preheader.new
  %.088.i.i.i = phi i64 [ 1, %.lr.ph90.i.i.i.preheader.new ], [ %i.cu, %.lr.ph90.i.i.i ] ; 6 uses
  %.287.i.i.i = phi float [ %i.br, %.lr.ph90.i.i.i.preheader.new ], [ %i.ct, %.lr.ph90.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph90.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph90.i.i.i ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.088.i.i.i
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !17
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.088.i.i.i
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !17
  %i.bx = fmul float %i.bu, %i.bw
  %i.by = fadd float %.287.i.i.i, %i.bx
  %i.bz = add nuw nsw i64 %.088.i.i.i, 1          ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !17
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bz
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !17
  %i.ce = fmul float %i.cb, %i.cd
  %i.cf = fadd float %i.by, %i.ce
  %i.cg = add nuw nsw i64 %.088.i.i.i, 2          ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !17
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cg
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !17
  %i.cl = fmul float %i.ci, %i.ck
  %i.cm = fadd float %i.cf, %i.cl
  %i.cn = add nuw nsw i64 %.088.i.i.i, 3          ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !17
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cn
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !17
  %i.cs = fmul float %i.cp, %i.cr
  %i.ct = fadd float %i.cm, %i.cs                 ; 3 uses
  %i.cu = add nuw nsw i64 %.088.i.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit.loopexit.unr-lcssa, label %.lr.ph90.i.i.i, !llvm.loop !561

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph90.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph90.i.i.i.epil.preheader

.lr.ph90.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.preheader
  %.088.i.i.i.epil.init = phi i64 [ 1, %.lr.ph90.i.i.i.preheader ], [ %i.cu, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit.loopexit.unr-lcssa ]
  %.287.i.i.i.epil.init = phi float [ %i.br, %.lr.ph90.i.i.i.preheader ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph90.i.i.i.epil

.lr.ph90.i.i.i.epil:                              ; preds = %.lr.ph90.i.i.i.epil, %.lr.ph90.i.i.i.epil.preheader
  %.088.i.i.i.epil = phi i64 [ %i.db, %.lr.ph90.i.i.i.epil ], [ %.088.i.i.i.epil.init, %.lr.ph90.i.i.i.epil.preheader ] ; 3 uses
  %.287.i.i.i.epil = phi float [ %i.da, %.lr.ph90.i.i.i.epil ], [ %.287.i.i.i.epil.init, %.lr.ph90.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph90.i.i.i.epil ], [ 0, %.lr.ph90.i.i.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.088.i.i.i.epil
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !17
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.088.i.i.i.epil
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !17
  %i.cz = fmul float %i.cw, %i.cy
  %i.da = fadd float %.287.i.i.i.epil, %i.cz      ; 2 uses
  %i.db = add nuw nsw i64 %.088.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit, label %.lr.ph90.i.i.i.epil, !llvm.loop !562

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit: ; preds = %.lr.ph85.i.i.i, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.epil, %bb.g, %bb.h
  %.0.i = phi float [ %i.da, %.lr.ph90.i.i.i.epil ], [ %i.bh, %bb.g ], [ %i.br, %bb.h ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph85.i.i.i ]
  %i.dc = mul nsw i64 %i.n, %7                    ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dc ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !17
  %i.df = call float @llvm.fmuladd.f32(float %i.s, float %.0.i, float %i.de)
  store float %i.df, ptr %i.dd, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph._crit_edge, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit
  %.pre-phi = phi i64 [ %.pre, %.lr.ph._crit_edge ], [ %i.dc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_5BlockIKNS5_IKNS_3MapIKNS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb1EEELi1ELin1ELb0EEEKNS_9TransposeIKNS5_IKNS6_IKNS7_IfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEEEEE3sumEv.exit ]
  %i.dg = load float, ptr %8, align 4, !tbaa !17
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.n
  %i.di = load float, ptr %i.dh, align 4, !tbaa !17
end_hunk_1
