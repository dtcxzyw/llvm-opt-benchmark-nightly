Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLi3EE12unblocked_luERNS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bk = zext nneg i32 %i.ar to i64              ; 9 uses
  %i.bl = xor i64 %i.bk, 3                        ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bl ; 10 uses
  %i.bn = load double, ptr %i.af, align 8, !tbaa !36, !noalias !682 ; 5 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = and i64 %i.bo, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.bq = lshr exact i64 %i.bo, 3
  %i.br = and i64 %i.bq, 1                        ; 3 uses
  %i.bs = sub nuw nsw i64 %i.bk, %i.br            ; 3 uses
  %i.bt = and i64 %i.bs, 2
  %i.bu = or disjoint i64 %i.bt, %i.br            ; 2 uses
  %.not179 = icmp eq i64 %i.br, 0
  br i1 %.not179, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.f
  %i.bv = phi i64 [ %i.bu, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.bk, %bb.f ] ; 2 uses
  %i.bw = phi i64 [ %i.bs, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.0.i.i.i.i.i.i.i178 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.bk, %bb.f ] ; 3 uses
  %i.bx = load double, ptr %i.bm, align 8, !tbaa !36
  %i.by = fdiv double %i.bx, %i.bn
  store double %i.by, ptr %i.bm, align 8, !tbaa !36
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i178, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !36
  %i.cb = fdiv double %i.ca, %i.bn
  store double %i.cb, ptr %i.bz, align 8, !tbaa !36
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cc = phi i64 [ %i.bu, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %i.cd = phi i64 [ %i.bs, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i177 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i178, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.0.i.i.i.i.i.i.i178, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %i.ce = icmp samesign ugt i64 %i.cd, 1
  br i1 %i.ce, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cf = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.0.i.i.i.i.i.i.i177 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.ch, align 16, !tbaa !20
  %i.cj = fdiv <2 x double> %i.ci, %i.cg
  store <2 x double> %i.cj, ptr %i.ch, align 16, !tbaa !20
  %i.ck = add nuw nsw i64 %.0.i.i.i.i.i.i.i177, 2 ; 2 uses
  %i.cl = icmp slt i64 %i.ck, %i.cc
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.3, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cm = icmp samesign ult i64 %i.cc, %i.bk
  br i1 %i.cm, label %.lr.ph.i17.i.i.i.i.i.i, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cc ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !36
  %i.cp = fdiv double %i.co, %i.bn
  store double %i.cp, ptr %i.cn, align 8, !tbaa !36
  %i.cq = add nsw i64 %i.cc, 1                    ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.cq, %i.bk
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.1

.lr.ph.i17.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cq ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !36
  %i.ct = fdiv double %i.cs, %i.bn
  store double %i.ct, ptr %i.cr, align 8, !tbaa !36
  br label %.loopexit

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ck ; 2 uses
  %i.cv = load <2 x double>, ptr %i.cu, align 16, !tbaa !20
  %i.cw = fdiv <2 x double> %i.cv, %i.cg
  store <2 x double> %i.cw, ptr %i.cu, align 16, !tbaa !20
  %i.cx = add nuw nsw i64 %.0.i.i.i.i.i.i.i177, 4 ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %i.cc
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.2, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cx ; 2 uses
  %i.da = load <2 x double>, ptr %i.cz, align 16, !tbaa !20
  %i.db = fdiv <2 x double> %i.da, %i.cg
  store <2 x double> %i.db, ptr %i.cz, align 16, !tbaa !20
  %i.dc = add nuw nsw i64 %.0.i.i.i.i.i.i.i177, 6 ; 2 uses
  %i.dd = icmp slt i64 %i.dc, %i.cc
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.3:                             ; preds = %.lr.ph.i.i.i.i.i.i.2
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.dc ; 2 uses
  %i.df = load <2 x double>, ptr %i.de, align 16, !tbaa !20
  %i.dg = fdiv <2 x double> %i.df, %i.cg
  store <2 x double> %i.dg, ptr %i.de, align 16, !tbaa !20
  br label %._crit_edge.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.dh = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.dh, i64 %.052170, i64 %.0171
  %.pre = zext nneg i32 %i.ar to i64              ; 2 uses
  %.pre172 = xor i64 %.pre, 3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.1, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %i.bl, %._crit_edge.i.i.i.i.i.i ], [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.1 ], [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.bk, %._crit_edge.i.i.i.i.i.i ], [ %i.bk, %.lr.ph.i17.i.i.i.i.i.i.1 ], [ %i.bk, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i.1 ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !134, !noalias !683 ; 3 uses
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !136, !noalias !683 ; 8 uses
  %i.dk = mul nuw nsw i64 %i.dj, %.052170
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.pre-phi173 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.052170 ; 2 uses
  %i.do = mul nsw i64 %i.dj, %.pre-phi173         ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.pre-phi173
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.do ; 2 uses
  store ptr %i.dr, ptr %7, align 8, !tbaa !212, !alias.scope !684
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !136, !alias.scope !684
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !136, !alias.scope !684
  store ptr %0, ptr %i.d, align 8, !tbaa !685, !alias.scope !684
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !136, !alias.scope !684
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !136, !alias.scope !684
  store i64 %i.dj, ptr %i.g, align 8, !tbaa !686, !alias.scope !684
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.dm, ptr %3, align 8
  store i64 %.pre-phi, ptr %.sroa.484.0..sroa_idx, align 8
  store ptr %i.dl, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.888.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.989.0..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.1090.0..sroa_idx, align 8
  store i64 %i.dj, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.1292.0..sroa_idx, align 8
  store i64 %i.dj, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr %i.dp, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %.sroa.18.96..sroa_idx, align 8
  store ptr %i.dn, ptr %.sroa.19.96..sroa_idx, align 8
  store ptr %0, ptr %.sroa.21.96..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.22.96..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.24.96..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.26.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.27.96..sroa_idx, align 8
  store ptr %i.dm, ptr %i.i, align 8, !tbaa !217
  store i64 %i.dj, ptr %i.j, align 8, !tbaa !136
  store ptr %i.dp, ptr %i.k, align 8, !tbaa !219
  store i64 %i.dj, ptr %i.l, align 8, !tbaa !136
  store i64 1, ptr %i.m, align 8, !tbaa !707
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.dr, ptr %4, align 8, !tbaa !226
  store i64 %i.dj, ptr %i.n, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !708
  store ptr %3, ptr %i.o, align 8, !tbaa !709
  store ptr %6, ptr %i.p, align 8, !tbaa !230
  store ptr %7, ptr %i.q, align 8, !tbaa !710
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.aa, label %bb.c, label %bb.b, !llvm.loop !680
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739, !nonnull !178, !align !232 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !136  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !136  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !178, !align !232 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !178, !align !232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !226  ; 3 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !136  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !740, !noalias !741 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !742, !noalias !743 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !744, !noalias !743, !nonnull !178, !align !232
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !136, !noalias !743 ; 3 uses
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul i64 %i.s, %i.y
  %i.aa = shl i64 %i.j, 3
  %i.ab = add i64 %i.z, %i.j
  %i.ac = shl i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ac
  %scevgep63 = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ad = mul i64 %i.x, %i.y
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep64 = getelementptr i8, ptr %i.af, i64 8
  %1 = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x ptr> poison, ptr %scevgep63, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %scevgep64, i64 1
  %5 = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.u, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %10 = insertelement <2 x i64> %9, i64 %i.x, i64 1
  %bound065 = icmp ult i64 %i.j, 8
  %11 = icmp ult <2 x ptr> %2, %4
  %12 = icmp ult <2 x ptr> %6, %8
  %13 = and <2 x i64> %10, splat (i64 1152921504606846976)
  %14 = and <2 x i1> %11, %12
  %15 = icmp ne <2 x i64> %13, zeroinitializer
  %16 = or <2 x i1> %14, %15
  %17 = bitcast <2 x i1> %16 to i2
  %.not104 = icmp eq i2 %17, 0
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bd, %._crit_edge.i ] ; 3 uses
  %i.ag = mul nsw i64 %.0810.i, %i.s
  %i.ah = getelementptr [8 x i8], ptr %i.r, i64 %i.ag ; 4 uses
  %i.ai = mul nsw i64 %.0810.i, %i.x
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ai ; 4 uses
  %.not104.not = xor i1 %.not104, true
  %brmerge = select i1 %bound065, i1 true, i1 %.not104.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36, !alias.scope !745
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !36, !alias.scope !746
  %wide.load70.a = load <2 x double>, ptr %i.an, align 8, !tbaa !36, !alias.scope !746
  %i.ao = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ap = fmul <2 x double> %wide.load70.a, %broadcast.splat
  %i.aq = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %wide.load71.a = load <2 x double>, ptr %i.al, align 8, !tbaa !36, !alias.scope !747, !noalias !748
  %wide.load72 = load <2 x double>, ptr %i.aq, align 8, !tbaa !36, !alias.scope !747, !noalias !748
  %i.ar = fsub <2 x double> %wide.load71.a, %i.ao
  %i.as = fsub <2 x double> %wide.load72, %i.ap
  store <2 x double> %i.ar, ptr %i.al, align 8, !tbaa !36, !alias.scope !747, !noalias !748
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !36, !alias.scope !747, !noalias !748
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !719

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i.ph ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !36
  %i.ax = load double, ptr %i.aj, align 8, !tbaa !36
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = load double, ptr %i.au, align 8, !tbaa !36
  %i.ba = fsub double %i.az, %i.ay
  store double %i.ba, ptr %i.au, align 8, !tbaa !36
  %i.bb = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.j, %.neg
  br i1 %i.bc, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bd = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !720

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bt, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !36
  %i.bh = load double, ptr %i.aj, align 8, !tbaa !36
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = load double, ptr %i.be, align 8, !tbaa !36
  %i.bk = fsub double %i.bj, %i.bi
  store double %i.bk, ptr %i.be, align 8, !tbaa !36
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ah, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !36
  %i.bp = load double, ptr %i.aj, align 8, !tbaa !36
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = load double, ptr %i.bm, align 8, !tbaa !36
  %i.bs = fsub double %i.br, %i.bq
  store double %i.bs, ptr %i.bm, align 8, !tbaa !36
  %i.bt = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bt, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !721

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !136 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !136 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !749, !nonnull !178, !align !232
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !136
  %i.cc = and i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.bx, 0
  br i1 %i.cd, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li3ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi3ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ce = lshr exact i64 %i.d, 3
  %i.cf = and i64 %i.ce, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 %i.bv)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ci = shl i64 %i.bv, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.fz, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.cg, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cj = shl i64 %.03451, 3                      ; 2 uses
  %i.ck = sub i64 %i.bv, %.03550                  ; 3 uses
  %i.cl = and i64 %i.ck, -2                       ; 2 uses
  %i.cm = add nsw i64 %i.cl, %.03550              ; 6 uses
  %i.cn = icmp sgt i64 %.03550, 0
  br i1 %i.cn, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !750, !nonnull !178, !align !232 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !742, !noalias !751
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !744, !noalias !751, !nonnull !178, !align !232
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !136, !noalias !751
  %i.cv = mul nsw i64 %i.cu, %.03451
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cv
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !740, !noalias !752
  %i.cy = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !178, !align !232 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !226
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !136
  %i.dc = mul nsw i64 %i.db, %.03451
  %i.dd = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = load double, ptr %i.cx, align 8, !tbaa !36
  %i.df = load double, ptr %i.cw, align 8, !tbaa !36
  %i.dg = fmul double %i.de, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !36
  %i.di = fsub double %i.dh, %i.dg
  store double %i.di, ptr %i.dd, align 8, !tbaa !36
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dj = icmp sgt i64 %i.ck, 1
  br i1 %i.dj, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.dk = icmp slt i64 %i.cm, %i.bv
  br i1 %i.dk, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !753, !nonnull !178, !align !232 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !226 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !136 ; 2 uses
  %i.dp = mul nsw i64 %i.do, %.03451
  %i.dq = getelementptr [8 x i8], ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = load ptr, ptr %i.ch, align 8, !tbaa !750, !nonnull !178, !align !232 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !740, !noalias !754 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !742, !noalias !755 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !744, !noalias !755, !nonnull !178, !align !232
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !136, !noalias !755 ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %.03451
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dz ; 3 uses
  %i.eb = add i64 %.03550, %i.cl
  %i.ec = sub i64 %i.bv, %i.eb                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.ec, 10
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph49
  %i.ed = mul i64 %i.do, %i.cj                    ; 2 uses
  %i.ee = shl i64 %i.ck, 3
  %i.ef = and i64 %i.ee, -16                      ; 2 uses
  %i.eg = shl i64 %.03550, 3                      ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dm, i64 %i.ed
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ef
  %scevgep74.a = getelementptr i8, ptr %i.ei, i64 %i.eg ; 2 uses
  %scevgep75.a = getelementptr i8, ptr %i.dm, i64 %i.ci
  %scevgep76.a = getelementptr i8, ptr %scevgep75.a, i64 %i.ed ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ds, i64 %i.ef
  %scevgep77.a = getelementptr i8, ptr %i.ej, i64 %i.eg
  %scevgep78.a = getelementptr i8, ptr %i.ds, i64 %i.ci
  %scevgep79.a = getelementptr i8, ptr %i.du, i64 8
  %i.ek = mul i64 %i.dy, %i.cj
  %scevgep80 = getelementptr i8, ptr %scevgep79.a, i64 %i.ek
  %bound081 = icmp ult ptr %scevgep74.a, %scevgep78.a
  %bound182 = icmp ult ptr %scevgep77.a, %scevgep76.a
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %scevgep74.a, %scevgep80
  %bound185 = icmp ult ptr %i.ea, %scevgep76.a
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck73
  %n.vec91 = and i64 %i.ec, -4                    ; 3 uses
  %i.el = add i64 %i.cm, %n.vec91
  %i.em = load double, ptr %i.ea, align 8, !tbaa !36, !alias.scope !756
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLi7EE12unblocked_luERNS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !36
  %i.do = fdiv double %i.dn, %i.cx
  store double %i.do, ptr %i.dm, align 8, !tbaa !36
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !36
  %i.dr = fdiv double %i.dq, %i.cx
  store double %i.dr, ptr %i.dp, align 8, !tbaa !36
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !36
  %i.du = fdiv double %i.dt, %i.cx
  store double %i.du, ptr %i.ds, align 8, !tbaa !36
  %exitcond.not.i.i.i.i.i.i.i.4 = icmp eq i64 %.0.i.i.i.i.i.i.i, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i.4, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.i.5:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !36
  %i.dx = fdiv double %i.dw, %i.cx
  store double %i.dx, ptr %i.dv, align 8, !tbaa !36
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.5, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dy = icmp sgt i64 %i.dd, 1
  br i1 %i.dy, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dz = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eb = icmp slt i64 %i.dg, %i.cu
  br i1 %i.eb, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ec = add nsw i64 %.0.i.i.i.i.i.i.i, %i.df
  %i.ed = sub nsw i64 %i.cu, %i.ec                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ed, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader178, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ed, -2                      ; 3 uses
  %i.ee = add nsw i64 %i.dg, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = getelementptr [8 x i8], ptr %i.cw, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = getelementptr [8 x i8], ptr %i.ef, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.eg, align 8, !tbaa !36
  %i.eh = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.eh, ptr %i.eg, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !781

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader178

.lr.ph.i17.i.i.i.i.i.i.preheader178:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dg, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ee, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader178, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader178 ] ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !36
  %i.el = fdiv double %i.ek, %i.cx
  store double %i.el, ptr %i.ej, align 8, !tbaa !36
  %i.em = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.em, %i.cu
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !782

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.eo = load <2 x double>, ptr %i.en, align 16, !tbaa !20
  %i.ep = fdiv <2 x double> %i.eo, %i.ea
  store <2 x double> %i.ep, ptr %i.en, align 16, !tbaa !20
  %i.eq = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.er = icmp slt i64 %i.eq, %i.dg
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !783

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.es = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.es, i64 %.052170, i64 %.0171
  %.pre = zext nneg i32 %i.bl to i64              ; 2 uses
  %.pre172 = xor i64 %.pre, 7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %i.cv, %._crit_edge.i.i.i.i.i.i ], [ %i.cv, %middle.block ], [ %i.cv, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.cu, %._crit_edge.i.i.i.i.i.i ], [ %i.cu, %middle.block ], [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %middle.block ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !250, !noalias !791 ; 3 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !136, !noalias !791 ; 8 uses
  %i.ev = mul nsw i64 %i.eu, %.052170
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.pre-phi173 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.052170 ; 2 uses
  %i.ez = mul nsw i64 %i.eu, %.pre-phi173         ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.pre-phi173
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  store ptr %i.fc, ptr %7, align 8, !tbaa !252, !alias.scope !792
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !136, !alias.scope !792
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !136, !alias.scope !792
  store ptr %0, ptr %i.d, align 8, !tbaa !793, !alias.scope !792
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !136, !alias.scope !792
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !136, !alias.scope !792
  store i64 %i.eu, ptr %i.g, align 8, !tbaa !794, !alias.scope !792
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ex, ptr %3, align 8
  store i64 %.pre-phi, ptr %.sroa.484.0..sroa_idx, align 8
  store ptr %i.ew, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.888.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.989.0..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.1090.0..sroa_idx, align 8
  store i64 %i.eu, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.1292.0..sroa_idx, align 8
  store i64 %i.eu, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr %i.fa, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %.sroa.18.96..sroa_idx, align 8
  store ptr %i.ey, ptr %.sroa.19.96..sroa_idx, align 8
  store ptr %0, ptr %.sroa.21.96..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.22.96..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.24.96..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.26.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.27.96..sroa_idx, align 8
  store ptr %i.ex, ptr %i.i, align 8, !tbaa !257
  store i64 %i.eu, ptr %i.j, align 8, !tbaa !136
  store ptr %i.fa, ptr %i.k, align 8, !tbaa !259
  store i64 %i.eu, ptr %i.l, align 8, !tbaa !136
  store i64 1, ptr %i.m, align 8, !tbaa !815
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.fc, ptr %4, align 8, !tbaa !266
  store i64 %i.eu, ptr %i.n, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !816
  store ptr %3, ptr %i.o, align 8, !tbaa !817
  store ptr %6, ptr %i.p, align 8, !tbaa !230
  store ptr %7, ptr %i.q, align 8, !tbaa !818
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fd = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, 6
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !788
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !847, !nonnull !178, !align !232 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !252
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !136  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !136  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !178, !align !232 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !178, !align !232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !266  ; 3 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !136  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !848, !noalias !849 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !850, !noalias !851 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !852, !noalias !851, !nonnull !178, !align !232
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !136, !noalias !851 ; 3 uses
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul i64 %i.s, %i.y
  %i.aa = shl i64 %i.j, 3
  %i.ab = add i64 %i.z, %i.j
  %i.ac = shl i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ac
  %scevgep63 = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ad = mul i64 %i.x, %i.y
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep64 = getelementptr i8, ptr %i.af, i64 8
  %1 = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x ptr> poison, ptr %scevgep63, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %scevgep64, i64 1
  %5 = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.u, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %10 = insertelement <2 x i64> %9, i64 %i.x, i64 1
  %bound065 = icmp ult i64 %i.j, 8
  %11 = icmp ult <2 x ptr> %2, %4
  %12 = icmp ult <2 x ptr> %6, %8
  %13 = and <2 x i64> %10, splat (i64 1152921504606846976)
  %14 = and <2 x i1> %11, %12
  %15 = icmp ne <2 x i64> %13, zeroinitializer
  %16 = or <2 x i1> %14, %15
  %17 = bitcast <2 x i1> %16 to i2
  %.not104 = icmp eq i2 %17, 0
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bd, %._crit_edge.i ] ; 3 uses
  %i.ag = mul nsw i64 %.0810.i, %i.s
  %i.ah = getelementptr [8 x i8], ptr %i.r, i64 %i.ag ; 4 uses
  %i.ai = mul nsw i64 %.0810.i, %i.x
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ai ; 4 uses
  %.not104.not = xor i1 %.not104, true
  %brmerge = select i1 %bound065, i1 true, i1 %.not104.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36, !alias.scope !853
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !36, !alias.scope !854
  %wide.load70.a = load <2 x double>, ptr %i.an, align 8, !tbaa !36, !alias.scope !854
  %i.ao = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ap = fmul <2 x double> %wide.load70.a, %broadcast.splat
  %i.aq = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %wide.load71.a = load <2 x double>, ptr %i.al, align 8, !tbaa !36, !alias.scope !855, !noalias !856
  %wide.load72 = load <2 x double>, ptr %i.aq, align 8, !tbaa !36, !alias.scope !855, !noalias !856
  %i.ar = fsub <2 x double> %wide.load71.a, %i.ao
  %i.as = fsub <2 x double> %wide.load72, %i.ap
  store <2 x double> %i.ar, ptr %i.al, align 8, !tbaa !36, !alias.scope !855, !noalias !856
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !36, !alias.scope !855, !noalias !856
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !827

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i.ph ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !36
  %i.ax = load double, ptr %i.aj, align 8, !tbaa !36
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = load double, ptr %i.au, align 8, !tbaa !36
  %i.ba = fsub double %i.az, %i.ay
  store double %i.ba, ptr %i.au, align 8, !tbaa !36
  %i.bb = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.j, %.neg
  br i1 %i.bc, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bd = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !828

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bt, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !36
  %i.bh = load double, ptr %i.aj, align 8, !tbaa !36
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = load double, ptr %i.be, align 8, !tbaa !36
  %i.bk = fsub double %i.bj, %i.bi
  store double %i.bk, ptr %i.be, align 8, !tbaa !36
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ah, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !36
  %i.bp = load double, ptr %i.aj, align 8, !tbaa !36
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = load double, ptr %i.bm, align 8, !tbaa !36
  %i.bs = fsub double %i.br, %i.bq
  store double %i.bs, ptr %i.bm, align 8, !tbaa !36
  %i.bt = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bt, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !829

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !136 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !136 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !857, !nonnull !178, !align !232
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !136
  %i.cc = and i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.bx, 0
  br i1 %i.cd, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ce = lshr exact i64 %i.d, 3
  %i.cf = and i64 %i.ce, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 %i.bv)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ci = shl i64 %i.bv, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.fz, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.cg, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cj = shl i64 %.03451, 3                      ; 2 uses
  %i.ck = sub i64 %i.bv, %.03550                  ; 3 uses
  %i.cl = and i64 %i.ck, -2                       ; 2 uses
  %i.cm = add nsw i64 %i.cl, %.03550              ; 6 uses
  %i.cn = icmp sgt i64 %.03550, 0
  br i1 %i.cn, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !858, !nonnull !178, !align !232 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !850, !noalias !859
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !852, !noalias !859, !nonnull !178, !align !232
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !136, !noalias !859
  %i.cv = mul nsw i64 %i.cu, %.03451
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cv
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !848, !noalias !860
  %i.cy = load ptr, ptr %0, align 8, !tbaa !861, !nonnull !178, !align !232 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !266
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !136
  %i.dc = mul nsw i64 %i.db, %.03451
  %i.dd = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = load double, ptr %i.cx, align 8, !tbaa !36
  %i.df = load double, ptr %i.cw, align 8, !tbaa !36
  %i.dg = fmul double %i.de, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !36
  %i.di = fsub double %i.dh, %i.dg
  store double %i.di, ptr %i.dd, align 8, !tbaa !36
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dj = icmp sgt i64 %i.ck, 1
  br i1 %i.dj, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.dk = icmp slt i64 %i.cm, %i.bv
  br i1 %i.dk, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !861, !nonnull !178, !align !232 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !266 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !136 ; 2 uses
  %i.dp = mul nsw i64 %i.do, %.03451
  %i.dq = getelementptr [8 x i8], ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = load ptr, ptr %i.ch, align 8, !tbaa !858, !nonnull !178, !align !232 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !848, !noalias !862 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !850, !noalias !863 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !852, !noalias !863, !nonnull !178, !align !232
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !136, !noalias !863 ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %.03451
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dz ; 3 uses
  %i.eb = add i64 %.03550, %i.cl
  %i.ec = sub i64 %i.bv, %i.eb                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.ec, 10
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph49
  %i.ed = mul i64 %i.do, %i.cj                    ; 2 uses
  %i.ee = shl i64 %i.ck, 3
  %i.ef = and i64 %i.ee, -16                      ; 2 uses
  %i.eg = shl i64 %.03550, 3                      ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dm, i64 %i.ed
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ef
  %scevgep74.a = getelementptr i8, ptr %i.ei, i64 %i.eg ; 2 uses
  %scevgep75.a = getelementptr i8, ptr %i.dm, i64 %i.ci
  %scevgep76.a = getelementptr i8, ptr %scevgep75.a, i64 %i.ed ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ds, i64 %i.ef
  %scevgep77.a = getelementptr i8, ptr %i.ej, i64 %i.eg
  %scevgep78.a = getelementptr i8, ptr %i.ds, i64 %i.ci
  %scevgep79.a = getelementptr i8, ptr %i.du, i64 8
  %i.ek = mul i64 %i.dy, %i.cj
  %scevgep80 = getelementptr i8, ptr %scevgep79.a, i64 %i.ek
  %bound081 = icmp ult ptr %scevgep74.a, %scevgep78.a
  %bound182 = icmp ult ptr %scevgep77.a, %scevgep76.a
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %scevgep74.a, %scevgep80
  %bound185 = icmp ult ptr %i.ea, %scevgep76.a
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck73
  %n.vec91 = and i64 %i.ec, -4                    ; 3 uses
  %i.el = add i64 %i.cm, %n.vec91
  %i.em = load double, ptr %i.ea, align 8, !tbaa !36, !alias.scope !864
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

end_hunk_1
