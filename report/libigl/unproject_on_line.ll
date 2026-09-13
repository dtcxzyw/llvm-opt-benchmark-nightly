Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_line?download=true
inline.NumInlined: 9139
inline.NumDeleted: 4977
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE14computeInPlaceEv:bb.a
  store i64 0, ptr %i.c, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8, !tbaa !90, !alias.scope !304
  store i64 2, ptr %i.k, align 8, !tbaa !67, !alias.scope !304
  store ptr %0, ptr %i.l, align 8
  store ptr %0, ptr %.sroa.5107.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6108.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.7110.0..sroa_idx, align 8
  store i64 0, ptr %i.m, align 8, !tbaa !67, !alias.scope !304
  store i64 2, ptr %i.n, align 8, !tbaa !312, !alias.scope !304
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.s, ptr %1, align 8, !tbaa !93
  store i64 1, ptr %i.o, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.q, align 8, !tbaa !67
  store i64 2, ptr %i.r, align 8, !tbaa !317
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.z = load double, ptr %i.a, align 8, !tbaa !49 ; 2 uses
  store double %i.z, ptr %0, align 16, !tbaa !49
  %i.aa = call noundef double @llvm.fabs.f64(double %i.z) ; 2 uses
  %i.ab = load double, ptr %i.j, align 16, !tbaa !303
  %i.ac = fcmp ogt double %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %.split150

bb.d:                                             ; preds = %bb.c
  store double %i.aa, ptr %i.j, align 16, !tbaa !303
  br label %.split150

.split150:                                        ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.b, ptr %3, align 8, !tbaa !82, !alias.scope !318
  store i64 2, ptr %i.am, align 8, !tbaa !67, !alias.scope !318
  store i64 0, ptr %i.al, align 8, !tbaa !67, !alias.scope !318
  store ptr %0, ptr %i.ak, align 8, !tbaa !48, !alias.scope !318
  store i64 0, ptr %i.aj, align 8, !tbaa !67, !alias.scope !318
  store i64 1, ptr %i.ai, align 8, !tbaa !67, !alias.scope !318
  store i64 2, ptr %i.ah, align 8, !tbaa !85, !alias.scope !318
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.s, ptr %4, align 8, !tbaa !90, !alias.scope !319
  store i64 1, ptr %i.ag, align 8, !tbaa !67, !alias.scope !319
  store ptr %0, ptr %i.af, align 8
  store ptr %0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6102.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.7104.0..sroa_idx, align 8
  store i64 1, ptr %i.ae, align 8, !tbaa !67, !alias.scope !319
  store i64 2, ptr %i.ad, align 8, !tbaa !312, !alias.scope !319
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li2ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !58
  %i.ao = load i64, ptr %i.c, align 16, !tbaa !88
  %sext80 = shl i64 %i.ao, 32
  %i.ap = ashr exact i64 %sext80, 30
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !58
  store i32 0, ptr %i.aq, align 4, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 1, ptr %i.as, align 16, !tbaa !320
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.at, align 16, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li2ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.684", align 16 ; 19 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.702", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.484", align 8  ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67   ; 9 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !49  ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e           ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8, !tbaa !82     ; 11 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.g, align 8, !tbaa !67   ; 7 uses
  %i.l = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter159 = and i64 %i.k, 3                  ; 3 uses
  %i.m = icmp ult i64 %i.k, 4
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter162 = and i64 %i.k, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.af, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter163 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter163.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.n = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !49
  %i.p = fmul double %i.f, %i.o
  store double %i.p, ptr %i.n, align 8, !tbaa !49
  %i.q = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.r = getelementptr i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !49
  %i.u = fmul double %i.f, %i.t
  store double %i.u, ptr %i.s, align 8, !tbaa !49
  %i.v = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 32       ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !49
  %i.z = fmul double %i.f, %i.y
  store double %i.z, ptr %i.x, align 8, !tbaa !49
  %i.aa = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 48     ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !49
  %i.ae = fmul double %i.f, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !49
  %i.af = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter163.next.3 = add nuw nsw i64 %niter163, 4 ; 2 uses
  %niter163.ncmp.3 = icmp eq i64 %niter163.next.3, %unroll_iter162
  br i1 %niter163.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit130.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !321

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.l, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter164 = and i64 %i.k, 3                  ; 3 uses
  %i.ag = icmp ult i64 %i.k, 4
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter168 = and i64 %i.k, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.av, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter169 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter169.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %.pre64 = load double, ptr %i.ah, align 8, !tbaa !49
  %i.ai = fmul double %i.f, %.pre64
  store double %i.ai, ptr %i.ah, align 8, !tbaa !49
  %i.aj = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ak = getelementptr i8, ptr %i.h, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  %.pre64.1 = load double, ptr %i.al, align 8, !tbaa !49
  %i.am = fmul double %i.f, %.pre64.1
  store double %i.am, ptr %i.al, align 8, !tbaa !49
  %i.an = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ao = getelementptr i8, ptr %i.h, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 32     ; 2 uses
  %.pre64.2 = load double, ptr %i.ap, align 8, !tbaa !49
  %i.aq = fmul double %i.f, %.pre64.2
  store double %i.aq, ptr %i.ap, align 8, !tbaa !49
  %i.ar = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.as = getelementptr i8, ptr %i.h, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 48     ; 2 uses
  %.pre64.3 = load double, ptr %i.at, align 8, !tbaa !49
  %i.au = fmul double %i.f, %.pre64.3
  store double %i.au, ptr %i.at, align 8, !tbaa !49
  %i.av = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter169.next.3 = add nuw nsw i64 %niter169, 4 ; 2 uses
  %niter169.ncmp.3 = icmp eq i64 %niter169.next.3, %unroll_iter168
  br i1 %niter169.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !322

bb.d:                                             ; preds = %bb.a
  %i.aw = fcmp une double %i.e, 0.000000e+00
  br i1 %i.aw, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.az = add nsw i64 %i.c, -1                    ; 6 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !82    ; 16 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8      ; 15 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !95
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bf, align 8, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bg, align 8, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 2, ptr %i.bh, align 8, !tbaa !354
  %.sroa.039.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.039.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %.split.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bj = sdiv i64 %i.az, 4
  %i.bk = shl nsw i64 %i.bj, 2                    ; 4 uses
  %i.bl = sdiv i64 %i.az, 2
  %i.bm = shl nsw i64 %i.bl, 1                    ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.039.sroa.0.0.copyload, i64 16
  %i.bo = icmp sgt i64 %i.c, 8
  %i.bp = icmp sgt i64 %i.bm, %i.bk
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.bk
  %i.br = icmp slt i64 %i.bm, %i.az               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.c, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.preheader.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.split.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.ay, 13
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader132, label %vector.memcheck

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader132: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader
  %.011.us12.us.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.bs = sub i64 %i.ay, %.011.us12.us.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter145 = and i64 %i.bs, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader132
  %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.prol = shl nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.prol
  %i.bu = load double, ptr %.sroa.039.sroa.0.0.copyload, align 8, !tbaa !49
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !49
  %i.bw = fmul double %i.bu, %i.bv
  %i.bx = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph
  store double %i.bw, ptr %i.bx, align 8, !tbaa !49
  %i.by = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader132
  %.011.us12.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %.011.us12.us.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader132 ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol ]
  %i.bz = icmp eq i64 %i.ay, %.neg
  br i1 %i.bz, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader
  %i.ca = shl i64 %i.ay, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.ca  ; 2 uses
  %scevgep93 = getelementptr i8, ptr %.sroa.039.sroa.0.0.copyload, i64 8
  %i.cb = shl i64 %i.ay, 4
  %scevgep94 = getelementptr i8, ptr %i.ba, i64 %i.cb
  %bound0 = icmp ult ptr %3, %scevgep93
  %bound1 = icmp ult ptr %.sroa.039.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %3, %scevgep94
  %bound196 = icmp ult ptr %i.bb, %scevgep
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx = or i1 %found.conflict, %found.conflict97
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cc = and i64 %i.ay, 3                        ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = select i1 %i.cd, i64 4, i64 %i.cc
  %n.vec = sub nsw i64 %i.ay, %i.ce               ; 2 uses
  %i.cf = load double, ptr %.sroa.039.sroa.0.0.copyload, align 8, !tbaa !49, !alias.scope !355
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cg = shl nuw nsw i64 %index, 4
  %i.ch = shl i64 %index, 4
  %i.ci = shl i64 %index, 4
  %i.cj = shl i64 %index, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load double, ptr %i.ck, align 8, !tbaa !49, !alias.scope !356
  %i.cs = load double, ptr %i.cm, align 8, !tbaa !49, !alias.scope !356
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1
  %i.cv = load double, ptr %i.co, align 8, !tbaa !49, !alias.scope !356
  %i.cw = load double, ptr %i.cq, align 8, !tbaa !49, !alias.scope !356
  %i.cx = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cw, i64 1
  %i.cz = fmul <2 x double> %broadcast.splat, %i.cu
  %i.da = fmul <2 x double> %broadcast.splat, %i.cy
  %i.db = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  store <2 x double> %i.cz, ptr %i.db, align 8, !tbaa !49, !alias.scope !357, !noalias !358
  store <2 x double> %i.da, ptr %i.dc, align 8, !tbaa !49, !alias.scope !357, !noalias !358
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader132, label %vector.body, !llvm.loop !327

.preheader.i.preheader.i.i.i.i.i.i.i:             ; preds = %.split.i.i.i.i.i.i.i.i
  %9 = icmp sgt i64 %i.c, 4
  br i1 %9, label %.preheader.i.us.i.i.i.i.i.i.i.preheader, label %.preheader.i.preheader.split.i.i.i.i.i.i.i

.preheader.i.us.i.i.i.i.i.i.i.preheader:          ; preds = %.preheader.i.preheader.i.i.i.i.i.i.i
  %i.de = xor i64 %i.bm, -1
  %i.df = add i64 %i.c, %i.de
  %i.dg = add nsw i64 %i.c, -2
  %i.dh = sub i64 %i.dg, %i.bm
  %xtraiter142 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  %i.di = icmp ult i64 %i.dh, 3
  br label %.preheader.i.us.i.i.i.i.i.i.i

.preheader.i.us.i.i.i.i.i.i.i:                    ; preds = %.preheader.i.us.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i
  %.011.i.us.i.i.i.i.i.i.i = phi i64 [ %i.fw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i2.i.i.i.i.us.i.i.i.i.i.i.i = shl nuw nsw i64 %.011.i.us.i.i.i.i.i.i.i, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.i.us.i.i.i.i.i.i.i ; 10 uses
  %i.dk = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !10
  %i.dl = load <2 x double>, ptr %i.dj, align 1, !tbaa !10
  %i.dm = fmul <2 x double> %i.dk, %i.dl          ; 2 uses
  %i.dn = load <2 x double>, ptr %i.bn, align 1, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dp = load <2 x double>, ptr %i.do, align 1, !tbaa !10
  %i.dq = fmul <2 x double> %i.dn, %i.dp          ; 2 uses
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:            ; preds = %.preheader.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ 4, %.preheader.i.us.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.dm, %.preheader.i.us.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.dq, %.preheader.i.us.i.i.i.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.ds = load <2 x double>, ptr %i.dr, align 1, !tbaa !10
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.du = load <2 x double>, ptr %i.dt, align 1, !tbaa !10
  %i.dv = fmul <2 x double> %i.ds, %i.du
  %i.dw = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.dv ; 2 uses
  %i.dx = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.dx
  %i.dz = load <2 x double>, ptr %i.dy, align 1, !tbaa !10
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dx
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !10
  %i.ec = fmul <2 x double> %i.dz, %i.eb
  %i.ed = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.ec ; 2 uses
  %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ee = icmp slt i64 %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.bk
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, !llvm.loop !328

._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.us.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.dq, %.preheader.i.us.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.dm, %.preheader.i.us.i.i.i.i.i.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %i.ef = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.eg = load <2 x double>, ptr %i.bq, align 1, !tbaa !10
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.bk
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !10
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = fadd <2 x double> %i.ef, %i.ej
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.ef, %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.ek, %bb.f ]
  %i.el = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.br, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader: ; preds = %bb.g
  br i1 %lcmp.mod143.not, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol = phi i64 [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ %i.bm, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol = phi double [ %i.er, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ %i.el, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ]
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %i.en = load double, ptr %i.em, align 8, !tbaa !49
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !49
  %i.eq = fmul double %i.en, %i.ep
  %i.er = fadd double %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, %i.eq ; 3 uses
  %i.es = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, !llvm.loop !329

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader
  %.lcssa135.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.er, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr = phi double [ %i.el, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.er, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  br i1 %i.di, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %i.fu, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi double [ %i.ft, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !49
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !49
  %i.ex = fmul double %i.eu, %i.ew
  %i.ey = fadd double %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.ex
  %i.ez = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !49
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ez
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !49
  %i.fe = fmul double %i.fb, %i.fd
  %i.ff = fadd double %i.ey, %i.fe
  %i.fg = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !49
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fg
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !49
  %i.fl = fmul double %i.fi, %i.fk
  %i.fm = fadd double %i.ff, %i.fl
  %i.fn = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !49
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fn
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !49
  %i.fs = fmul double %i.fp, %i.fr
  %i.ft = fadd double %i.fm, %i.fs                ; 2 uses
  %i.fu = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fu, %i.az
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, !llvm.loop !330

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %bb.g
  %.0.i.i.i.i.i.us.i.i.i.i.i.i.i = phi double [ %i.el, %bb.g ], [ %.lcssa135.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ft, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %i.fv = getelementptr [8 x i8], ptr %3, i64 %.011.i.us.i.i.i.i.i.i.i
  store double %.0.i.i.i.i.i.us.i.i.i.i.i.i.i, ptr %i.fv, align 8, !tbaa !49
  %i.fw = add nuw nsw i64 %.011.i.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i.i.i.i = icmp eq i64 %i.fw, %i.ay
  br i1 %exitcond.not.i.us.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us.i.i.i.i.i.i.i, !llvm.loop !331

.preheader.i.preheader.split.i.i.i.i.i.i.i:       ; preds = %.preheader.i.preheader.i.i.i.i.i.i.i
  br i1 %i.br, label %.preheader.i.us21.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %.preheader.i.preheader.split.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.ay, 1
  %i.fx = icmp eq i64 %i.ay, 1
  br i1 %i.fx, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, 9223372036854775806
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.us21.i.i.i.i.i.i.i.preheader:        ; preds = %.preheader.i.preheader.split.i.i.i.i.i.i.i
  %i.fy = xor i64 %i.bm, -1
  %i.fz = add i64 %i.c, %i.fy
  %i.ga = add i64 %i.c, -2
  %i.gb = sub i64 %i.ga, %i.bm
  %xtraiter140 = and i64 %i.fz, 3                 ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  %i.gc = icmp ult i64 %i.gb, 3
  br label %.preheader.i.us21.i.i.i.i.i.i.i

.preheader.i.us21.i.i.i.i.i.i.i:                  ; preds = %.preheader.i.us21.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i
  %.011.i.us22.i.i.i.i.i.i.i = phi i64 [ %i.hs, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us21.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i2.i.i.i.i.us23.i.i.i.i.i.i.i = shl nuw nsw i64 %.011.i.us22.i.i.i.i.i.i.i, 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.i.us23.i.i.i.i.i.i.i ; 6 uses
  %i.ge = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !10
  %i.gf = load <2 x double>, ptr %i.gd, align 1, !tbaa !10
  %i.gg = fmul <2 x double> %i.ge, %i.gf
  %i.gh = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gg) ; 2 uses
  br i1 %lcmp.mod141.not, label %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol:   ; preds = %.preheader.i.us21.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol = phi i64 [ %i.go, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol ], [ %i.bm, %.preheader.i.us21.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol = phi double [ %i.gn, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol ], [ %i.gh, %.preheader.i.us21.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.us21.i.i.i.i.i.i.i ]
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !49
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !49
  %i.gm = fmul double %i.gj, %i.gl
  %i.gn = fadd double %.182.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol, %i.gm ; 3 uses
  %i.go = add nsw i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter140
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol, !llvm.loop !332

.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol, %.preheader.i.us21.i.i.i.i.i.i.i
  %.lcssa137.unr = phi double [ poison, %.preheader.i.us21.i.i.i.i.i.i.i ], [ %i.gn, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.unr = phi i64 [ %i.bm, %.preheader.i.us21.i.i.i.i.i.i.i ], [ %i.go, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.unr = phi double [ %i.gh, %.preheader.i.us21.i.i.i.i.i.i.i ], [ %i.gn, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol ]
  br i1 %i.gc, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i:        ; preds = %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i = phi i64 [ %i.hq, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i = phi double [ %i.hp, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit ]
  %i.gp = getelementptr inbounds [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !49
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !49
  %i.gt = fmul double %i.gq, %i.gs
  %i.gu = fadd double %.182.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i, %i.gt
  %i.gv = add nsw i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !49
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gv
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !49
  %i.ha = fmul double %i.gx, %i.gz
  %i.hb = fadd double %i.gu, %i.ha
  %i.hc = add nsw i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.hc
  %i.he = load double, ptr %i.hd, align 8, !tbaa !49
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hc
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !49
  %i.hh = fmul double %i.he, %i.hg
  %i.hi = fadd double %i.hb, %i.hh
  %i.hj = add nsw i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !49
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hj
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !49
  %i.ho = fmul double %i.hl, %i.hn
  %i.hp = fadd double %i.hi, %i.ho                ; 2 uses
  %i.hq = add nsw i64 %.05283.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hq, %i.az
  br i1 %exitcond.not.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i, !llvm.loop !330

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa137 = phi double [ %.lcssa137.unr, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i.prol.loopexit ], [ %i.hp, %.lr.ph85.i.i.i.i.i.i.i.us25.i.i.i.i.i.i.i ]
  %i.hr = getelementptr [8 x i8], ptr %3, i64 %.011.i.us22.i.i.i.i.i.i.i
  store double %.lcssa137, ptr %i.hr, align 8, !tbaa !49
  %i.hs = add nuw nsw i64 %.011.i.us22.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us33.i.i.i.i.i.i.i = icmp eq i64 %i.hs, %i.ay
  br i1 %exitcond.not.i.us33.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us21.i.i.i.i.i.i.i, !llvm.loop !331

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i
  %.011.us12.us.i.i.i.i.i.i.i.i = phi i64 [ %i.ie, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i ], [ %.011.us12.us.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i
  %i.hu = load double, ptr %.sroa.039.sroa.0.0.copyload, align 8, !tbaa !49
  %i.hv = load double, ptr %i.ht, align 8, !tbaa !49
  %i.hw = fmul double %i.hu, %i.hv
  %i.hx = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i
  store double %i.hw, ptr %i.hx, align 8, !tbaa !49
  %i.hy = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.hy, 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.1
  %i.ia = load double, ptr %.sroa.039.sroa.0.0.copyload, align 8, !tbaa !49
  %i.ib = load double, ptr %i.hz, align 8, !tbaa !49
  %i.ic = fmul double %i.ia, %i.ib
  %i.id = getelementptr [8 x i8], ptr %3, i64 %i.hy
  store double %i.ic, ptr %i.id, align 8, !tbaa !49
  %i.ie = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ie, %i.ay
  br i1 %exitcond24.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i, !llvm.loop !333

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.is, %.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i
  %i.ig = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !10
  %i.ih = load <2 x double>, ptr %i.if, align 1, !tbaa !10
  %i.ii = fmul <2 x double> %i.ig, %i.ih
  %i.ij = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ii)
  %i.ik = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i
  store double %i.ij, ptr %i.ik, align 8, !tbaa !49
  %i.il = or disjoint i64 %.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.il, 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.1
  %i.in = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !10
  %i.io = load <2 x double>, ptr %i.im, align 1, !tbaa !10
  %i.ip = fmul <2 x double> %i.in, %i.io
  %i.iq = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ip)
  %i.ir = getelementptr [8 x i8], ptr %3, i64 %i.il
  store double %i.iq, ptr %i.ir, align 8, !tbaa !49
  %i.is = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit138.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !331

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit138.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit138.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.is, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit138.unr-lcssa ] ; 2 uses
  %lcmp.mod139 = trunc i64 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.epil = shl nuw nsw i64 %.011.i.i.i.i.i.i.i.i.epil.init, 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.iu = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !10
  %i.iv = load <2 x double>, ptr %i.it, align 1, !tbaa !10
  %i.iw = fmul <2 x double> %i.iu, %i.iv
  %i.ix = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iw)
  %i.iy = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i.epil.init
  store double %i.ix, ptr %i.iy, align 8, !tbaa !49
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit138.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i
  %min.iters.check105 = icmp ult i64 %i.ay, 22
  br i1 %min.iters.check105, label %.split.i.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.iz = add nsw i64 %i.ay, -1                   ; 2 uses
  %mul.result = shl i64 %i.iz, 4
  %mul.overflow = icmp ugt i64 %i.iz, 1152921504606846975
  %i.ja = getelementptr i8, ptr %i.ba, i64 %mul.result
  %i.jb = icmp ult ptr %i.ja, %i.ba
  %i.jc = or i1 %i.jb, %mul.overflow
  br i1 %i.jc, label %.split.i.i.i.i.i.i.preheader, label %vector.memcheck98

vector.memcheck98:                                ; preds = %vector.scevcheck
  %i.jd = shl nuw i64 %i.ay, 3
  %scevgep99 = getelementptr i8, ptr %3, i64 %i.jd
  %i.je = shl i64 %i.ay, 4
  %i.jf = getelementptr i8, ptr %i.ba, i64 %i.je
  %scevgep100 = getelementptr i8, ptr %i.jf, i64 -8
  %bound0101 = icmp ult ptr %3, %scevgep100
  %bound1102 = icmp ult ptr %i.ba, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.split.i.i.i.i.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %n.vec107 = and i64 %i.ay, 2305843009213693948  ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next111, %vector.body108 ] ; 6 uses
  %i.jg = getelementptr [8 x i8], ptr %3, i64 %index109 ; 3 uses
  %i.jh = shl i64 %index109, 4
  %i.ji = shl i64 %index109, 4
  %i.jj = shl i64 %index109, 4
  %i.jk = shl i64 %index109, 4
  %i.jl = getelementptr i8, ptr %i.ba, i64 %i.jh
  %i.jm = getelementptr i8, ptr %i.ba, i64 %i.ji
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  %i.jo = getelementptr i8, ptr %i.ba, i64 %i.jj
  %i.jp = getelementptr i8, ptr %i.jo, i64 32
  %i.jq = getelementptr i8, ptr %i.ba, i64 %i.jk
  %i.jr = getelementptr i8, ptr %i.jq, i64 48
  %i.js = load double, ptr %i.jl, align 8, !tbaa !49, !alias.scope !359
  %i.jt = load double, ptr %i.jn, align 8, !tbaa !49, !alias.scope !359
  %i.ju = insertelement <2 x double> poison, double %i.js, i64 0
  %i.jv = insertelement <2 x double> %i.ju, double %i.jt, i64 1
  %i.jw = load double, ptr %i.jp, align 8, !tbaa !49, !alias.scope !359
  %i.jx = load double, ptr %i.jr, align 8, !tbaa !49, !alias.scope !359
  %i.jy = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.jx, i64 1
  %i.ka = getelementptr i8, ptr %i.jg, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jg, align 8, !tbaa !49, !alias.scope !360, !noalias !359
  %wide.load110 = load <2 x double>, ptr %i.ka, align 8, !tbaa !49, !alias.scope !360, !noalias !359
  %i.kb = fadd <2 x double> %i.jv, %wide.load
  %i.kc = fadd <2 x double> %i.jz, %wide.load110
  store <2 x double> %i.kb, ptr %i.jg, align 8, !tbaa !49, !alias.scope !360, !noalias !359
  store <2 x double> %i.kc, ptr %i.ka, align 8, !tbaa !49, !alias.scope !360, !noalias !359
  %index.next111 = add nuw i64 %index109, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next111, %n.vec107
  br i1 %i.kd, label %middle.block112, label %vector.body108, !llvm.loop !337

middle.block112:                                  ; preds = %vector.body108
  %cmp.n = icmp eq i64 %i.ay, %n.vec107
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i.preheader

.split.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck98, %vector.scevcheck, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, %middle.block112
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec107, %middle.block112 ] ; 5 uses
  %.neg170 = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  %xtraiter148 = and i64 %i.ay, 1
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.split.i.i.i.i.i.i.prol.loopexit, label %.split.i.i.i.i.i.i.prol

.split.i.i.i.i.i.i.prol:                          ; preds = %.split.i.i.i.i.i.i.preheader
  %i.ke = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8.prol = shl i64 %.09.i.i.i.i.i.i.ph, 4
  %i.kf = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i8.prol
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !49
  %i.kh = load double, ptr %i.ke, align 8, !tbaa !49
  %i.ki = fadd double %i.kg, %i.kh
  store double %i.ki, ptr %i.ke, align 8, !tbaa !49
  %i.kj = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  br label %.split.i.i.i.i.i.i.prol.loopexit

.split.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.split.i.i.i.i.i.i.prol, %.split.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.ph, %.split.i.i.i.i.i.i.preheader ], [ %i.kj, %.split.i.i.i.i.i.i.prol ]
  %i.kk = icmp eq i64 %i.ay, %.neg170
  br i1 %i.kk, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.kw, %.split.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.split.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.kl = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8 = shl i64 %.09.i.i.i.i.i.i, 4
  %i.km = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i8
  %i.kn = load double, ptr %i.km, align 8, !tbaa !49
  %i.ko = load double, ptr %i.kl, align 8, !tbaa !49
  %i.kp = fadd double %i.kn, %i.ko
  store double %i.kp, ptr %i.kl, align 8, !tbaa !49
  %i.kq = add nuw nsw i64 %.09.i.i.i.i.i.i, 1     ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %3, i64 %i.kq ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8.1 = shl i64 %i.kq, 4
  %i.ks = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i8.1
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !49
  %i.ku = load double, ptr %i.kr, align 8, !tbaa !49
  %i.kv = fadd double %i.kt, %i.ku
  store double %i.kv, ptr %i.kr, align 8, !tbaa !49
  %i.kw = add nuw nsw i64 %.09.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.kw, %i.ay
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i, !llvm.loop !338

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i, %middle.block112
  %i.kx = load double, ptr %2, align 8, !tbaa !49, !noalias !361 ; 3 uses
  %xtraiter151 = and i64 %i.ay, 1
  %i.ky = icmp eq i64 %i.ay, 1
  br i1 %i.ky, label %.split.i.i.i.i.i.i9.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter154 = and i64 %i.ay, 9223372036854775806
  br label %.split.i.i.i.i.i.i9

.split.i.i.i.i.i.i9:                              ; preds = %.split.i.i.i.i.i.i9, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.09.i.i.i.i.i.i10 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lm, %.split.i.i.i.i.i.i9 ] ; 4 uses
  %niter155 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter155.next.1, %.split.i.i.i.i.i.i9 ]
  %.idx.i.i.i.i.i.i.i.i.i11 = shl i64 %.09.i.i.i.i.i.i10, 4
  %i.kz = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i11 ; 2 uses
  %i.la = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i10
  %i.lb = load double, ptr %i.la, align 8, !tbaa !49
  %i.lc = fmul double %i.kx, %i.lb
  %i.ld = load double, ptr %i.kz, align 8, !tbaa !49
  %i.le = fsub double %i.ld, %i.lc
  store double %i.le, ptr %i.kz, align 8, !tbaa !49
  %i.lf = or disjoint i64 %.09.i.i.i.i.i.i10, 1   ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i11.1 = shl i64 %i.lf, 4
  %i.lg = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i11.1 ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %3, i64 %i.lf
  %i.li = load double, ptr %i.lh, align 8, !tbaa !49
  %i.lj = fmul double %i.kx, %i.li
  %i.lk = load double, ptr %i.lg, align 8, !tbaa !49
  %i.ll = fsub double %i.lk, %i.lj
  store double %i.ll, ptr %i.lg, align 8, !tbaa !49
  %i.lm = add nuw nsw i64 %.09.i.i.i.i.i.i10, 2   ; 2 uses
  %niter155.next.1 = add i64 %niter155, 2         ; 2 uses
  %niter155.ncmp.1 = icmp eq i64 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.split.i.i.i.i.i.i9, !llvm.loop !341

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.split.i.i.i.i.i.i9
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i9.epil.preheader

.split.i.i.i.i.i.i9.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.09.i.i.i.i.i.i10.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lm, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i64 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod153)
  %.idx.i.i.i.i.i.i.i.i.i11.epil = shl i64 %.09.i.i.i.i.i.i10.epil.init, 4
  %i.ln = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i11.epil ; 2 uses
  %i.lo = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i10.epil.init
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !49
  %i.lq = fmul double %i.kx, %i.lp
  %i.lr = load double, ptr %i.ln, align 8, !tbaa !49
  %i.ls = fsub double %i.lr, %i.lq
  store double %i.ls, ptr %i.ln, align 8, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.split.i.i.i.i.i.i9.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !49, !noalias !362
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.039.sroa.0.0.copyload, %bb.e ] ; 8 uses
  %i.lt = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.e, %bb.e ] ; 7 uses
  %.sroa.6.sroa.0.0.copyload115 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.039.sroa.4.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.lu, align 16, !tbaa !100
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.lt, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.sroa.4.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockINSD_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockINSD_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.lu, align 16, !tbaa !100
  %i.lv = sdiv i64 %.sroa.6.sroa.4.0.copyload, 2
  %i.lw = shl nsw i64 %i.lv, 1                    ; 3 uses
  %i.lx = icmp sgt i64 %.sroa.6.sroa.4.0.copyload, 1
  br i1 %i.lx, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockINSD_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ly = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockINSD_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.lz = phi i64 [ %i.lw, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockINSD_INS2_IdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit ], [ %i.lw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ma = icmp slt i64 %i.lz, %.sroa.6.sroa.4.0.copyload
  br i1 %i.ma, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_IS3_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mb = sub i64 %.sroa.6.sroa.4.0.copyload, %i.lz ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.mb, 6
  %i.mc = sub i64 %.sroa.6.sroa.0.0.copyload115, %i.a
  %diff.check = icmp ugt i64 %i.mc, -32
  %or.cond = select i1 %min.iters.check117, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131, label %vector.ph118

vector.ph118:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec119 = and i64 %i.mb, -4                   ; 3 uses
  %i.md = add i64 %i.lz, %n.vec119
  %broadcast.splatinsert120 = insertelement <2 x double> poison, double %i.lt, i64 0
  %broadcast.splat121 = shufflevector <2 x double> %broadcast.splatinsert120, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph118
  %index123 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body122 ] ; 2 uses
  %i.me = add i64 %i.lz, %index123                ; 2 uses
  %i.mf = getelementptr inbounds [8 x i8], ptr %4, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.me ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %wide.load124 = load <2 x double>, ptr %i.mg, align 8, !tbaa !49
  %wide.load125 = load <2 x double>, ptr %i.mh, align 8, !tbaa !49
  %i.mi = fmul <2 x double> %broadcast.splat121, %wide.load124
  %i.mj = fmul <2 x double> %broadcast.splat121, %wide.load125
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store <2 x double> %i.mi, ptr %i.mf, align 16, !tbaa !49
  store <2 x double> %i.mj, ptr %i.mk, align 16, !tbaa !49
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.ml = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.ml, label %middle.block127, label %vector.body122, !llvm.loop !344

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %i.mb, %n.vec119
  br i1 %cmp.n128, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_IS3_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block127
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.lz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.md, %middle.block127 ] ; 4 uses
  %i.mm = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter156 = and i64 %i.mm, 3                 ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.mr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131 ] ; 3 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131 ]
  %i.mn = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.mo = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !49
  %i.mq = fmul double %i.lt, %i.mp
  store double %i.mq, ptr %i.mn, align 8, !tbaa !49
  %i.mr = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !345

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader131 ], [ %i.mr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ms = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.mt = icmp ugt i64 %i.ms, -4
  br i1 %i.mt, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_IS3_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mv = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !49
  %i.mx = fmul double %i.lt, %i.mw
  store double %i.mx, ptr %i.mu, align 8, !tbaa !49
  %i.my = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.my
  %i.na = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.my
  %i.nb = load double, ptr %i.na, align 8, !tbaa !49
  %i.nc = fmul double %i.lt, %i.nb
  store double %i.nc, ptr %i.mz, align 8, !tbaa !49
  %i.nd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nd
  %i.nf = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nd
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !49
  %i.nh = fmul double %i.lt, %i.ng
  store double %i.nh, ptr %i.ne, align 8, !tbaa !49
  %i.ni = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ni
  %i.nk = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ni
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !49
  %i.nm = fmul double %i.lt, %i.nl
  store double %i.nm, ptr %i.nj, align 8, !tbaa !49
  %i.nn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.nn, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_IS3_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !346

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ns, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nq = load <2 x double>, ptr %i.np, align 1, !tbaa !10
  %i.nr = fmul <2 x double> %i.ly, %i.nq
  store <2 x double> %i.nr, ptr %i.no, align 16, !tbaa !10
  %i.ns = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nt = icmp slt i64 %i.ns, %i.lw
  br i1 %i.nt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !347

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_IS3_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block127, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.nu, align 16
  %.sroa.819.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.ay, ptr %.sroa.819.sroa.6.88..sroa_idx, align 16
  %i.nv = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.nv, align 16, !tbaa !102
  %i.nw = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.nw, align 8, !tbaa !104
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.ay, ptr %i.nx, align 8, !tbaa !67
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.ny, align 16, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.bb, ptr %5, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %5, ptr %6, align 8, !tbaa !368
  %i.nz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.nz, align 8, !tbaa !369
  %i.oa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.oa, align 8, !tbaa !116
  %i.ob = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.ob, align 8, !tbaa !370
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_INS4_IS6_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod166.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod166.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil.preheader

._crit_edge.i.i.i.i.i.i.epil.preheader:           ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.preheader
  %.03453.i.i.i.i.i.i.epil.init = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader ], [ %i.av, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter164, 0
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %._crit_edge.i.i.i.i.i.i.epil

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.oe, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter165 = phi i64 [ %epil.iter165.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = shl i64 %.03453.i.i.i.i.i.i.epil, 4
  %i.oc = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %.pre64.epil = load double, ptr %i.oc, align 8, !tbaa !49
  %i.od = fmul double %i.f, %.pre64.epil
  store double %i.od, ptr %i.oc, align 8, !tbaa !49
  %i.oe = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter165.next = add i64 %epil.iter165, 1   ; 2 uses
  %epil.iter165.cmp.not = icmp eq i64 %epil.iter165.next, %xtraiter164
  br i1 %epil.iter165.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !348

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit130.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit130.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.af, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit130.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter159, 0
  call void @llvm.assume(i1 %lcmp.mod161)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.oi, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = shl i64 %.0810.i.i.i.i.i.i.i.epil, 4
  %i.of = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !49
  %i.oh = fmul double %i.f, %i.og
  store double %i.oh, ptr %i.of, align 8, !tbaa !49
  %i.oi = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter159
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !349

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit130.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_INS1_IS3_Li2ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !90     ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %4 = load double, ptr %i.d, align 8, !tbaa !49
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !10 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !10 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 8
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !10 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !10 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !371

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !10 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = fadd <2 x double> %i.r, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <2 x double> [ %i.l, %bb.c ], [ %i.ag, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i ]
  %i.ah = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i) ; 3 uses
  %i.ai = icmp slt i64 %i.j, %i.c
  br i1 %i.ai, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.aj = xor i64 %i.j, -1
  %i.ak = add i64 %i.b, %i.aj
  %i.al = add i64 %i.b, -2
  %i.am = sub i64 %i.al, %i.j
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.prol ], [ %i.j, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.ah, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = fadd double %.182.i.i.i.i.prol, %i.ap   ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !372

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ah, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !49 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !49 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !373

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.f, align 8, !tbaa !49 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bp = phi double [ %i.bo, %bb.g ], [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.bq = load double, ptr %i.d, align 8, !tbaa !49 ; 6 uses
  %i.br = fcmp ugt double %i.bp, f0x0010000000000000
  br i1 %i.br, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bs = phi double [ %4, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !49
  store double %i.bs, ptr %3, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %1, align 8, !tbaa !93    ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !67 ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.by = lshr exact i64 %i.bw, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %i.bv, %bb.h ] ; 8 uses
  %i.cb = sub i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cc = sdiv i64 %i.cb, 2                       ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 1                    ; 2 uses
  %i.ce = add i64 %i.cd, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cg, i1 false), !tbaa !49
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = icmp sgt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cj)
  %i.ck = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cl = add i64 %smax.i, %i.ck
  %i.cm = shl i64 %i.cl, 3
  %i.cn = and i64 %i.cm, -16
  %i.co = add i64 %i.cn, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.co, i1 false), !tbaa !10
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.ce, %i.bv
  br i1 %i.cp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl i64 %i.cc, 4
  %i.cr = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cs = getelementptr i8, ptr %i.bu, i64 %i.cq
  %scevgep1.i = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.ct = sub i64 %i.cb, %i.cd
  %i.cu = shl nuw i64 %i.ct, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cu, i1 false), !tbaa !49
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.cv = fmul double %i.bq, %i.bq
  %i.cw = fadd double %i.bp, %i.cv
  %i.cx = tail call double @sqrt(double noundef %i.cw) #20 ; 2 uses
  %i.cy = fcmp ult double %i.bq, 0.000000e+00
  %i.cz = fneg double %i.cx
  %storemerge = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !49
  %i.da = fsub double %i.bq, %storemerge          ; 13 uses
  %.sroa.716.24.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = load ptr, ptr %1, align 8, !tbaa !93    ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !67 ; 8 uses
  %i.de = ptrtoint ptr %i.db to i64               ; 4 uses
  %i.df = and i64 %i.de, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.dg = lshr exact i64 %i.de, 3
  %i.dh = and i64 %i.dg, 1
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.dd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.j ], [ %i.dd, %.critedge ] ; 11 uses
  %i.dj = sub nsw i64 %i.dd, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dk = sdiv i64 %i.dj, 2
  %i.dl = shl nsw i64 %i.dk, 1                    ; 2 uses
  %i.dm = add nsw i64 %i.dl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.dn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.do = sub i64 %i.de, %i.e
  %i.dp = add i64 %i.do, -9
  %diff.check = icmp ult i64 %i.dp, 15
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !49
  %i.ds = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.du = sub nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter59 = and i64 %i.du, 3                  ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ] ; 3 uses
  %prol.iter61 = phi i64 [ %prol.iter61.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !49
  %i.dy = fdiv double %i.dx, %i.da
  store double %i.dy, ptr %i.dv, align 8, !tbaa !49
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter61.next = add i64 %prol.iter61, 1     ; 2 uses
  %prol.iter61.cmp.not = icmp eq i64 %prol.iter61.next, %xtraiter59
  br i1 %prol.iter61.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !375

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !49
  %i.ef = fdiv double %i.ee, %i.da
  store double %i.ef, ptr %i.ec, align 8, !tbaa !49
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !49
  %i.ek = fdiv double %i.ej, %i.da
  store double %i.ek, ptr %i.eh, align 8, !tbaa !49
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !49
  %i.ep = fdiv double %i.eo, %i.da
  store double %i.ep, ptr %i.em, align 8, !tbaa !49
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !49
  %i.eu = fdiv double %i.et, %i.da
  store double %i.eu, ptr %i.er, align 8, !tbaa !49
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !376

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ew = icmp sgt i64 %i.dj, 1
  br i1 %i.ew, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ex = shufflevector <2 x double> %.sroa.716.24.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ey = icmp slt i64 %i.dm, %i.dd
  br i1 %i.ey, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

end_hunk_0
begin_hunk_1_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !456

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader185
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader185 ], [ %i.ku, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.kv = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ky = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !49
  %i.la = fmul double %i.jw, %i.kz
  store double %i.la, ptr %i.kx, align 8, !tbaa !49
  %i.lb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lb
  %i.ld = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.lb
  %i.le = load double, ptr %i.ld, align 8, !tbaa !49
  %i.lf = fmul double %i.jw, %i.le
  store double %i.lf, ptr %i.lc, align 8, !tbaa !49
  %i.lg = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lg
  %i.li = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.lg
  %i.lj = load double, ptr %i.li, align 8, !tbaa !49
  %i.lk = fmul double %i.jw, %i.lj
  store double %i.lk, ptr %i.lh, align 8, !tbaa !49
  %i.ll = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ll
  %i.ln = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ll
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !49
  %i.lp = fmul double %i.jw, %i.lo
  store double %i.lp, ptr %i.lm, align 8, !tbaa !49
  %i.lq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.lq, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !457

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lt = load <2 x double>, ptr %i.ls, align 1, !tbaa !10
  %i.lu = fmul <2 x double> %i.kb, %i.lt
  store <2 x double> %i.lu, ptr %i.lr, align 16, !tbaa !10
  %i.lv = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.lw = icmp slt i64 %i.lv, %i.jz
  br i1 %i.lw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !458

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block151, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.lx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %4, ptr %i.ly, align 8, !tbaa !102
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ma = load ptr, ptr %i.lx, align 16, !tbaa !75
  store ptr %i.ma, ptr %i.lz, align 16, !tbaa !131
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 1, ptr %i.mb, align 16, !tbaa !480
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.bh, ptr %5, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %5, ptr %6, align 8, !tbaa !149
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.mc, align 8, !tbaa !481
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.md, align 8, !tbaa !116
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %13, ptr %i.me, align 8, !tbaa !152
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKNS5_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS11_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %.preheader.i.i.i.i.i.i.i, %.lr.ph51.i.i.i.i.i.i, %middle.block165, %middle.block179, %.preheader.i.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i.i.i, %bb.c, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.1279", align 16 ; 19 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.965", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1285", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.882", align 8  ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67   ; 9 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !49  ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e           ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8, !tbaa !66     ; 11 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.g, align 8, !tbaa !67   ; 7 uses
  %i.l = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter157 = and i64 %i.k, 3                  ; 3 uses
  %i.m = icmp ult i64 %i.k, 4
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter160 = and i64 %i.k, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.af, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter161 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter161.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.n = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !49
  %i.p = fmul double %i.f, %i.o
  store double %i.p, ptr %i.n, align 8, !tbaa !49
  %i.q = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.r = getelementptr i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !49
  %i.u = fmul double %i.f, %i.t
  store double %i.u, ptr %i.s, align 8, !tbaa !49
  %i.v = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 32       ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !49
  %i.z = fmul double %i.f, %i.y
  store double %i.z, ptr %i.x, align 8, !tbaa !49
  %i.aa = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 48     ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !49
  %i.ae = fmul double %i.f, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !49
  %i.af = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter161.next.3 = add nuw nsw i64 %niter161, 4 ; 2 uses
  %niter161.ncmp.3 = icmp eq i64 %niter161.next.3, %unroll_iter160
  br i1 %niter161.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit128.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !482

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.l, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter162 = and i64 %i.k, 3                  ; 3 uses
  %i.ag = icmp ult i64 %i.k, 4
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter166 = and i64 %i.k, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.av, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter167 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter167.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %.pre63 = load double, ptr %i.ah, align 8, !tbaa !49
  %i.ai = fmul double %i.f, %.pre63
  store double %i.ai, ptr %i.ah, align 8, !tbaa !49
  %i.aj = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ak = getelementptr i8, ptr %i.h, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  %.pre63.1 = load double, ptr %i.al, align 8, !tbaa !49
  %i.am = fmul double %i.f, %.pre63.1
  store double %i.am, ptr %i.al, align 8, !tbaa !49
  %i.an = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ao = getelementptr i8, ptr %i.h, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 32     ; 2 uses
  %.pre63.2 = load double, ptr %i.ap, align 8, !tbaa !49
  %i.aq = fmul double %i.f, %.pre63.2
  store double %i.aq, ptr %i.ap, align 8, !tbaa !49
  %i.ar = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.as = getelementptr i8, ptr %i.h, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 48     ; 2 uses
  %.pre63.3 = load double, ptr %i.at, align 8, !tbaa !49
  %i.au = fmul double %i.f, %.pre63.3
  store double %i.au, ptr %i.at, align 8, !tbaa !49
  %i.av = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter167.next.3 = add nuw nsw i64 %niter167, 4 ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !483

bb.d:                                             ; preds = %bb.a
  %i.aw = fcmp une double %i.e, 0.000000e+00
  br i1 %i.aw, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.az = add nsw i64 %i.c, -1                    ; 6 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !66    ; 14 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8      ; 15 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !122
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ay, ptr %i.bd, align 8, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bf, align 8, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bg, align 8, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 2, ptr %i.bh, align 8, !tbaa !127
  %.sroa.038.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bj = sdiv i64 %i.az, 4
  %i.bk = shl nsw i64 %i.bj, 2                    ; 4 uses
  %i.bl = sdiv i64 %i.az, 2
  %i.bm = shl nsw i64 %i.bl, 1                    ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.0.0.copyload, i64 16
  %i.bo = icmp sgt i64 %i.c, 8
  %i.bp = icmp sgt i64 %i.bm, %i.bk
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.bk
  %i.br = icmp slt i64 %i.bm, %i.az               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.c, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.ay, 13
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %i.bs = shl i64 %i.ay, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.bs  ; 2 uses
  %scevgep92 = getelementptr i8, ptr %.sroa.038.sroa.0.0.copyload, i64 8
  %i.bt = shl i64 %i.ay, 4
  %scevgep93 = getelementptr i8, ptr %i.ba, i64 %i.bt
  %bound0 = icmp ult ptr %3, %scevgep92
  %bound1 = icmp ult ptr %.sroa.038.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound094 = icmp ult ptr %3, %scevgep93
  %bound195 = icmp ult ptr %i.bb, %scevgep
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx = or i1 %found.conflict, %found.conflict96
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bu = and i64 %i.ay, 3                        ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 4, i64 %i.bu
  %n.vec = sub nsw i64 %i.ay, %i.bw               ; 2 uses
  %i.bx = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !49, !alias.scope !511
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.by = shl nuw nsw i64 %index, 4
  %i.bz = shl i64 %index, 4
  %i.ca = shl i64 %index, 4
  %i.cb = shl i64 %index, 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cb
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load double, ptr %i.cc, align 8, !tbaa !49, !alias.scope !512
  %i.ck = load double, ptr %i.ce, align 8, !tbaa !49, !alias.scope !512
  %i.cl = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ck, i64 1
  %i.cn = load double, ptr %i.cg, align 8, !tbaa !49, !alias.scope !512
  %i.co = load double, ptr %i.ci, align 8, !tbaa !49, !alias.scope !512
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = fmul <2 x double> %broadcast.splat, %i.cm
  %i.cs = fmul <2 x double> %broadcast.splat, %i.cq
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <2 x double> %i.cr, ptr %i.ct, align 8, !tbaa !49, !alias.scope !513, !noalias !514
  store <2 x double> %i.cs, ptr %i.cu, align 8, !tbaa !49, !alias.scope !513, !noalias !514
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader130, label %vector.body, !llvm.loop !488

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader130: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %.07.us8.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.cw = sub i64 %i.ay, %.07.us8.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter143 = and i64 %i.cw, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader130
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol = shl nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol
  %i.cy = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !49
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !49
  %i.da = fmul double %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i.ph
  store double %i.da, ptr %i.db, align 8, !tbaa !49
  %i.dc = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader130
  %.07.us8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.07.us8.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader130 ], [ %i.dc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol ]
  %i.dd = icmp eq i64 %i.ay, %.neg
  br i1 %i.dd, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %.07.us8.i.i.i.i.i.i.i.i = phi i64 [ %i.dp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i ], [ %.07.us8.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i
  %i.df = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !49
  %i.dg = load double, ptr %i.de, align 8, !tbaa !49
  %i.dh = fmul double %i.df, %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i
  store double %i.dh, ptr %i.di, align 8, !tbaa !49
  %i.dj = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.dj, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1
  %i.dl = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !49
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !49
  %i.dn = fmul double %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dj
  store double %i.dn, ptr %i.do, align 8, !tbaa !49
  %i.dp = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond36.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dp, %i.ay
  br i1 %exitcond36.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, !llvm.loop !489

.lr.ph.split.split.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %9 = icmp sgt i64 %i.c, 4
  br i1 %9, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  %i.dq = xor i64 %i.bm, -1
  %i.dr = add i64 %i.c, %i.dq
  %i.ds = add nsw i64 %i.c, -2
  %i.dt = sub i64 %i.ds, %i.bm
  %xtraiter140 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  %i.du = icmp ult i64 %i.dt, 3
  br label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i
  %.07.us12.i.i.i.i.i.i.i.i = phi i64 [ %i.gi, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i ; 10 uses
  %i.dw = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !10
  %i.dx = load <2 x double>, ptr %i.dv, align 1, !tbaa !10
  %i.dy = fmul <2 x double> %i.dw, %i.dx          ; 2 uses
  %i.dz = load <2 x double>, ptr %i.bn, align 1, !tbaa !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !10
  %i.ec = fmul <2 x double> %i.dz, %i.eb          ; 2 uses
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ei, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.dy, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ep, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ee = load <2 x double>, ptr %i.ed, align 1, !tbaa !10
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !10
  %i.eh = fmul <2 x double> %i.ee, %i.eg
  %i.ei = fadd <2 x double> %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.eh ; 2 uses
  %i.ej = add nuw nsw i64 %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.ej
  %i.el = load <2 x double>, ptr %i.ek, align 1, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ej
  %i.en = load <2 x double>, ptr %i.em, align 1, !tbaa !10
  %i.eo = fmul <2 x double> %i.el, %i.en
  %i.ep = fadd <2 x double> %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.eo ; 2 uses
  %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.eq = icmp slt i64 %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.bk
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !490

._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dy, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.er = fadd <2 x double> %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.es = load <2 x double>, ptr %i.bq, align 1, !tbaa !10
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.bk
  %i.eu = load <2 x double>, ptr %i.et, align 1, !tbaa !10
  %i.ev = fmul <2 x double> %i.es, %i.eu
  %i.ew = fadd <2 x double> %i.er, %i.ev
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.er, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ew, %bb.f ]
  %i.ex = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.br, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader:  ; preds = %bb.g
  br i1 %lcmp.mod141.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol:       ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fe, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.bm, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi double [ %i.fd, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.ex, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter142 = phi i64 [ %prol.iter142.next, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !49
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !49
  %i.fc = fmul double %i.ez, %i.fb
  %i.fd = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %i.fc ; 3 uses
  %i.fe = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter142.next = add i64 %prol.iter142, 1   ; 2 uses
  %prol.iter142.cmp.not = icmp eq i64 %prol.iter142.next, %xtraiter140
  br i1 %prol.iter142.cmp.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, !llvm.loop !491

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader
  %.lcssa133.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fd, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fe, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi double [ %i.ex, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fd, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.du, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.gg, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi double [ %i.gf, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !49
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !49
  %i.fj = fmul double %i.fg, %i.fi
  %i.fk = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.fj
  %i.fl = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !49
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fl
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !49
  %i.fq = fmul double %i.fn, %i.fp
  %i.fr = fadd double %i.fk, %i.fq
  %i.fs = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !49
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fs
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !49
  %i.fx = fmul double %i.fu, %i.fw
  %i.fy = fadd double %i.fr, %i.fx
  %i.fz = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !49
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fz
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !49
  %i.ge = fmul double %i.gb, %i.gd
  %i.gf = fadd double %i.fy, %i.ge                ; 2 uses
  %i.gg = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gg, %i.az
  br i1 %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !492

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %bb.g
  %.0.i.i.i.us15.i.i.i.i.i.i.i.i = phi double [ %i.ex, %bb.g ], [ %.lcssa133.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.gf, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us12.i.i.i.i.i.i.i.i
  store double %.0.i.i.i.us15.i.i.i.i.i.i.i.i, ptr %i.gh, align 8, !tbaa !49
  %i.gi = add nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond35.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gi, %i.ay
  br i1 %exitcond35.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, !llvm.loop !493

.lr.ph.split.split.split.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  br i1 %i.br, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.ay, 1
  %i.gj = icmp eq i64 %i.ay, 1
  br i1 %i.gj, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %i.gk = xor i64 %i.bm, -1
  %i.gl = add i64 %i.c, %i.gk
  %i.gm = add i64 %i.c, -2
  %i.gn = sub i64 %i.gm, %i.bm
  %xtraiter138 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  %i.go = icmp ult i64 %i.gn, 3
  br label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i
  %.07.us16.i.i.i.i.i.i.i.i = phi i64 [ %i.ie, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i ; 6 uses
  %i.gq = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !10
  %i.gr = load <2 x double>, ptr %i.gp, align 1, !tbaa !10
  %i.gs = fmul <2 x double> %i.gq, %i.gr
  %i.gt = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gs) ; 2 uses
  br i1 %lcmp.mod139.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.bm, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol = phi double [ %i.gz, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.gt, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %i.gu = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !49
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !49
  %i.gy = fmul double %i.gv, %i.gx
  %i.gz = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol, %i.gy ; 3 uses
  %i.ha = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter138
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, !llvm.loop !494

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i
  %.lcssa135.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.gz, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.ha, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr = phi double [ %i.gt, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.gz, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.go, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i = phi i64 [ %i.ic, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i = phi double [ %i.ib, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.hb = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !49
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.he = load double, ptr %i.hd, align 8, !tbaa !49
  %i.hf = fmul double %i.hc, %i.he
  %i.hg = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i, %i.hf
  %i.hh = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !49
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.hh
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !49
  %i.hm = fmul double %i.hj, %i.hl
  %i.hn = fadd double %i.hg, %i.hm
  %i.ho = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !49
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.ho
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !49
  %i.ht = fmul double %i.hq, %i.hs
  %i.hu = fadd double %i.hn, %i.ht
  %i.hv = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !49
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.hv
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !49
  %i.ia = fmul double %i.hx, %i.hz
  %i.ib = fadd double %i.hu, %i.ia                ; 2 uses
  %i.ic = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ic, %i.az
  br i1 %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, !llvm.loop !492

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa135 = phi double [ %.lcssa135.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ib, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa135, ptr %i.id, align 8, !tbaa !49
  %i.ie = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ie, %i.ay
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, !llvm.loop !493

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.is, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ig = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !10
  %i.ih = load <2 x double>, ptr %i.if, align 1, !tbaa !10
  %i.ii = fmul <2 x double> %i.ig, %i.ih
  %i.ij = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ii)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.ij, ptr %i.ik, align 8, !tbaa !49
  %i.il = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.il, 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.in = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !10
  %i.io = load <2 x double>, ptr %i.im, align 1, !tbaa !10
  %i.ip = fmul <2 x double> %i.in, %i.io
  %i.iq = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ip)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.il
  store double %i.iq, ptr %i.ir, align 8, !tbaa !49
  %i.is = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit136.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !493

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit136.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit136.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.is, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit136.unr-lcssa ] ; 2 uses
  %lcmp.mod137 = trunc i64 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = shl nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.iu = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !10
  %i.iv = load <2 x double>, ptr %i.it, align 1, !tbaa !10
  %i.iw = fmul <2 x double> %i.iu, %i.iv
  %i.ix = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iw)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.ix, ptr %i.iy, align 8, !tbaa !49
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit136.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %min.iters.check104 = icmp ult i64 %i.ay, 9
  br i1 %min.iters.check104, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.iz = shl i64 %i.ay, 3
  %scevgep98 = getelementptr i8, ptr %3, i64 %i.iz
  %i.ja = shl i64 %i.ay, 4
  %i.jb = getelementptr i8, ptr %i.ba, i64 %i.ja
  %scevgep99 = getelementptr i8, ptr %i.jb, i64 -8
  %bound0100 = icmp ult ptr %3, %scevgep99
  %bound1101 = icmp ult ptr %i.ba, %scevgep98
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck97
  %i.jc = and i64 %i.ay, 3                        ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = select i1 %i.jd, i64 4, i64 %i.jc
  %n.vec106 = sub nsw i64 %i.ay, %i.je            ; 2 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next110, %vector.body107 ] ; 6 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index108 ; 3 uses
  %i.jg = shl nuw nsw i64 %index108, 4
  %i.jh = shl i64 %index108, 4
  %i.ji = shl i64 %index108, 4
  %i.jj = shl i64 %index108, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.jg
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.jh
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ji
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.jj
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = load double, ptr %i.jk, align 8, !tbaa !49, !alias.scope !515
  %i.js = load double, ptr %i.jm, align 8, !tbaa !49, !alias.scope !515
  %i.jt = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %i.js, i64 1
  %i.jv = load double, ptr %i.jo, align 8, !tbaa !49, !alias.scope !515
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !49, !alias.scope !515
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jf, align 8, !tbaa !49, !alias.scope !516, !noalias !515
  %wide.load109 = load <2 x double>, ptr %i.jz, align 8, !tbaa !49, !alias.scope !516, !noalias !515
  %i.ka = fadd <2 x double> %i.ju, %wide.load
  %i.kb = fadd <2 x double> %i.jy, %wide.load109
  store <2 x double> %i.ka, ptr %i.jf, align 8, !tbaa !49, !alias.scope !516, !noalias !515
  store <2 x double> %i.kb, ptr %i.jz, align 8, !tbaa !49, !alias.scope !516, !noalias !515
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.kc, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body107, !llvm.loop !498

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body107, %vector.memcheck97, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck97 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec106, %vector.body107 ] ; 6 uses
  %i.kd = sub i64 %i.ay, %.05.i.i.i.i.i.i.ph
  %i.ke = add nsw i64 %i.ay, -1                   ; 2 uses
  %xtraiter146 = and i64 %i.kd, 1
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = shl nuw nsw i64 %.05.i.i.i.i.i.i.ph, 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !49
  %i.ki = load double, ptr %i.kf, align 8, !tbaa !49
  %i.kj = fadd double %i.kh, %i.ki
  store double %i.kj, ptr %i.kf, align 8, !tbaa !49
  %i.kk = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kk, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.kl = icmp eq i64 %i.ke, %.05.i.i.i.i.i.i.ph
  br i1 %i.kl, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.kx, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.05.i.i.i.i.i.i, 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !49
  %i.kp = load double, ptr %i.km, align 8, !tbaa !49
  %i.kq = fadd double %i.ko, %i.kp
  store double %i.kq, ptr %i.km, align 8, !tbaa !49
  %i.kr = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kr ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.kr, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !49
  %i.kv = load double, ptr %i.ks, align 8, !tbaa !49
  %i.kw = fadd double %i.ku, %i.kv
  store double %i.kw, ptr %i.ks, align 8, !tbaa !49
  %i.kx = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.kx, %i.ay
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !499

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.ky = load double, ptr %2, align 8, !tbaa !49, !noalias !517 ; 3 uses
  %xtraiter149 = and i64 %i.ay, 1
  %i.kz = icmp eq i64 %i.ke, 0
  br i1 %i.kz, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter152 = and i64 %i.ay, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.ln, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter153 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter153.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = shl nuw nsw i64 %.05.i.i.i.i.i.i9, 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !49
  %i.ld = fmul double %i.ky, %i.lc
  %i.le = load double, ptr %i.la, align 8, !tbaa !49
  %i.lf = fsub double %i.le, %i.ld
  store double %i.lf, ptr %i.la, align 8, !tbaa !49
  %i.lg = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = shl nuw nsw i64 %i.lg, 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.lg
  %i.lj = load double, ptr %i.li, align 8, !tbaa !49
  %i.lk = fmul double %i.ky, %i.lj
  %i.ll = load double, ptr %i.lh, align 8, !tbaa !49
  %i.lm = fsub double %i.ll, %i.lk
  store double %i.lm, ptr %i.lh, align 8, !tbaa !49
  %i.ln = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter153.next.1 = add i64 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !502

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.ln, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i64 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %.idx.i.i.i.i.i.i.i.i10.epil = shl nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !49
  %i.lr = fmul double %i.ky, %i.lq
  %i.ls = load double, ptr %i.lo, align 8, !tbaa !49
  %i.lt = fsub double %i.ls, %i.lr
  store double %i.lt, ptr %i.lo, align 8, !tbaa !49
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !49, !noalias !518
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 8 uses
  %i.lu = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.e, %bb.e ] ; 7 uses
  %.sroa.6.sroa.0.0.copyload114 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.lv, align 16, !tbaa !100
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.lu, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.sroa.4.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.lv, align 16, !tbaa !100
  %i.lw = sdiv i64 %.sroa.6.sroa.4.0.copyload, 2
  %i.lx = shl nsw i64 %i.lw, 1                    ; 3 uses
  %i.ly = icmp sgt i64 %.sroa.6.sroa.4.0.copyload, 1
  br i1 %i.ly, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lz = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.ma = phi i64 [ %i.lx, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.mb = icmp slt i64 %i.ma, %.sroa.6.sroa.4.0.copyload
  br i1 %i.mb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS1_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mc = sub i64 %.sroa.6.sroa.4.0.copyload, %i.ma ; 3 uses
  %min.iters.check116 = icmp ult i64 %i.mc, 6
  %i.md = sub i64 %.sroa.6.sroa.0.0.copyload114, %i.a
  %diff.check = icmp ugt i64 %i.md, -32
  %or.cond = select i1 %min.iters.check116, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader129, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec118 = and i64 %i.mc, -4                   ; 3 uses
  %i.me = add i64 %i.ma, %n.vec118
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.lu, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body121
end_hunk_1
