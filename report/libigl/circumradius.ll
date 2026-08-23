Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circumradius?download=true
inline.NumInlined: 27035
inline.NumDeleted: 14206
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 174
loop-unroll.NumUnrolled: 205
begin_hunk_0_@_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ao, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader117
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.as = load double, ptr %i.aq, align 8, !tbaa !30
  %i.at = load double, ptr %i.ar, align 8, !tbaa !30
  %i.au = fmul double %i.as, %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !30
  %i.ax = fmul double %i.au, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.az = load double, ptr %i.ay, align 8, !tbaa !30
  %i.ba = fmul double %i.az, 2.000000e+00
  %i.bb = fdiv double %i.ax, %i.ba
  store double %i.bb, ptr %i.ap, align 8, !tbaa !30
  %i.bc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader117
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader117 ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bd = icmp eq i64 %i.n, %.neg
  br i1 %i.bd, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_ISA_KNS_12ArrayWrapperINS_5BlockINS1_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEESG_EESG_EEKNS5_ISA_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_IS2_EEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !30
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !30
  %i.bj = fmul double %i.bh, %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !30
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !30
  %i.bp = fmul double %i.bo, 2.000000e+00
  %i.bq = fdiv double %i.bm, %i.bp
  store double %i.bq, ptr %i.be, align 8, !tbaa !30
  %i.br = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 5 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.br
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.br
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !30
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !30
  %i.bx = fmul double %i.bv, %i.bw
  %i.by = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.br
  %i.bz = load double, ptr %i.by, align 8, !tbaa !30
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.br
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !30
  %i.cd = fmul double %i.cc, 2.000000e+00
  %i.ce = fdiv double %i.ca, %i.cd
  store double %i.ce, ptr %i.bs, align 8, !tbaa !30
  %i.cf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cf, %i.n
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_ISA_KNS_12ArrayWrapperINS_5BlockINS1_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEESG_EESG_EEKNS5_ISA_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_IS2_EEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !171

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.011.i.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i.i.i.i.i
  %i.ci = load <2 x double>, ptr %i.ch, align 1, !tbaa !82
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.011.i.i.i.i.i.i.i.i
  %i.ck = load <2 x double>, ptr %i.cj, align 1, !tbaa !82
  %i.cl = fmul <2 x double> %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.011.i.i.i.i.i.i.i.i
  %i.cn = load <2 x double>, ptr %i.cm, align 1, !tbaa !82
  %i.co = fmul <2 x double> %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i.i.i.i
  %i.cq = load <2 x double>, ptr %i.cp, align 1, !tbaa !82
  %i.cr = fmul <2 x double> %i.cq, splat (double 2.000000e+00)
  %i.cs = fdiv <2 x double> %i.co, %i.cr
  store <2 x double> %i.cs, ptr %i.cg, align 16, !tbaa !82
  %i.ct = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.r
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !172

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_ISA_KNS_12ArrayWrapperINS_5BlockINS1_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEESG_EESG_EEKNS5_ISA_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSB_IS2_EEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.cv = load ptr, ptr %4, align 8, !tbaa !98
  call void @free(ptr noundef %i.cv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cw = load ptr, ptr %3, align 8, !tbaa !161
  call void @free(ptr noundef %i.cw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.e:                                             ; preds = %bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.f ], [ %i.cz, %bb.g ]
  %i.da = load ptr, ptr %4, align 8, !tbaa !98
  call void @free(ptr noundef %i.da) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.h ], [ %i.cx, %bb.e ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !161
  call void @free(ptr noundef %i.db) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), double noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.110", align 8 ; 9 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.929", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.1218", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1223", align 8 ; 7 uses
  %9 = alloca %"class.Eigen::Product.2772", align 8 ; 8 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 10 uses
  %12 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 16 uses
  %14 = alloca %"class.Eigen::Matrix.231", align 8 ; 14 uses
  %15 = alloca %"class.Eigen::Block.43", align 8  ; 11 uses
  %16 = alloca %"class.Eigen::Matrix.54", align 8 ; 10 uses
  %17 = alloca %"class.Eigen::Array", align 8     ; 10 uses
  %18 = alloca %"class.Eigen::Matrix.54", align 8 ; 10 uses
  %19 = alloca %"class.Eigen::ColPivHouseholderQR", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.c, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef %i.f)
  %i.g = load i64, ptr %i.b, align 8, !tbaa !9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.g, i64 noundef %i.h)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.o = ptrtoint ptr %14 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.ap = phi i64 [ %i.i, %.lr.ph ], [ %i.xs, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.aq = shl nuw nsw i64 %indvars.iv, 3
  %i.ar = add nuw i64 %i.aq, 8                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.as = load i64, ptr %i.a, align 8, !tbaa !19  ; 11 uses
  %i.at = add nsw i64 %i.as, 1                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = sdiv i64 9223372036854775807, %i.at
  %.not = icmp slt i64 %i.as, %i.av
  br i1 %.not, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.aw = mul nsw i64 %i.at, %i.at                ; 2 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 2305843009213693951
  br i1 %i.ax, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.ay = shl nuw i64 %i.aw, 3
  %i.az = call noalias ptr @malloc(i64 noundef %i.ay) #22 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.c
  %i.bb = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bb, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.az, ptr %13, align 8, !tbaa !20
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread

common.resume:                                    ; preds = %.body113, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.e ], [ %.pn71.pn.pn.pn.pn.pn.pn, %.body113 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.invoke
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.bd) #20
  br label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread: ; preds = %bb.b, %.sink.split.i
  %i.be = phi ptr [ %i.az, %.sink.split.i ], [ null, %bb.b ] ; 2 uses
  store i64 %i.at, ptr %i.k, align 8, !tbaa !21
  store i64 %i.at, ptr %i.l, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bf = load ptr, ptr %1, align 8, !tbaa !22, !noalias !175
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !173, !noalias !178 ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bi = load ptr, ptr %0, align 8, !tbaa !181   ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.as, 0      ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.bh, 0     ; 2 uses
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.loopexit226, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = sdiv i64 9223372036854775807, %i.bh
  %i.bl = icmp sgt i64 %i.as, %i.bk
  br i1 %i.bl, label %.invoke295, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.bm = mul nsw i64 %i.bh, %i.as                ; 4 uses
  %.not.i120 = icmp eq i64 %i.bm, 0
  br i1 %.not.i120, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %bb.i, label %.sink.split.i121

bb.i:                                             ; preds = %bb.h
  %i.bo = icmp samesign ugt i64 %i.bm, 2305843009213693951
  br i1 %i.bo, label %.invoke295, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i123

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i123: ; preds = %bb.i
  %i.bp = shl nuw i64 %i.bm, 3
  %i.bq = call noalias ptr @malloc(i64 noundef %i.bp) #22 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.invoke295, label %.sink.split.i121

.invoke295:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i123, %bb.i, %bb.g
  %i.bs = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bs, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.cont296 unwind label %bb.k

.cont296:                                         ; preds = %.invoke295
  unreachable

.sink.split.i121:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i123, %bb.h
  %.sink.i122 = phi ptr [ %i.bq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i123 ], [ null, %bb.h ] ; 2 uses
  store ptr %.sink.i122, ptr %14, align 8, !tbaa !181
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i121, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i
  %.pre.i = phi ptr [ %.sink.i122, %.sink.split.i121 ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.as, ptr %i.m, align 8, !tbaa !182
  store i64 %i.bh, ptr %i.n, align 8, !tbaa !173
  %i.bt = icmp sgt i64 %i.as, 0
  %i.bu = icmp sgt i64 %i.bh, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %.loopexit226

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.j
  %.pre.i432 = ptrtoaddr ptr %.pre.i to i64
  %i.bv = shl i64 %i.bh, 3
  %i.bw = shl i64 %i.bh, 3
  %min.iters.check435 = icmp ult i64 %i.bh, 6
  %n.vec437 = and i64 %i.bh, 9223372036854775804  ; 3 uses
  %cmp.n444 = icmp eq i64 %i.bh, %n.vec437
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i = phi i64 [ %i.cv, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.bx = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i, %i.bh
  %i.by = getelementptr [8 x i8], ptr %.pre.i, i64 %i.bx ; 6 uses
  %i.bz = mul nsw i64 %.0810.i.i.i.i.i.i.i, %i.ap
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !29
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = mul nsw i64 %i.bh, %i.cc
  %i.ce = getelementptr [8 x i8], ptr %i.bi, i64 %i.cd ; 6 uses
  br i1 %min.iters.check435, label %scalar.ph434.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %.preheader.i.i.i.i.i.i.i
  %i.cf = mul i64 %i.bv, %.0810.i.i.i.i.i.i.i
  %i.cg = mul i64 %i.bw, %i.cc
  %i.ch = add i64 %i.cf, %.pre.i432
  %i.ci = add i64 %i.cg, %i.bj
  %i.cj = sub i64 %i.ci, %i.ch
  %diff.check433 = icmp ugt i64 %i.cj, -32
  br i1 %diff.check433, label %scalar.ph434.preheader, label %vector.body438

vector.body438:                                   ; preds = %vector.memcheck431, %vector.body438
  %index439 = phi i64 [ %index.next442, %vector.body438 ], [ 0, %vector.memcheck431 ] ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.by, i64 %index439 ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ce, i64 %index439 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %wide.load440 = load <2 x double>, ptr %i.cl, align 8, !tbaa !30
  %wide.load441 = load <2 x double>, ptr %i.cm, align 8, !tbaa !30
  %i.cn = getelementptr i8, ptr %i.ck, i64 16
  store <2 x double> %wide.load440, ptr %i.ck, align 8, !tbaa !30
  store <2 x double> %wide.load441, ptr %i.cn, align 8, !tbaa !30
  %index.next442 = add nuw i64 %index439, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next442, %n.vec437
  br i1 %i.co, label %middle.block443, label %vector.body438, !llvm.loop !183

middle.block443:                                  ; preds = %vector.body438
  br i1 %cmp.n444, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph434.preheader

scalar.ph434.preheader:                           ; preds = %vector.memcheck431, %.preheader.i.i.i.i.i.i.i, %middle.block443
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck431 ], [ 0, %.preheader.i.i.i.i.i.i.i ], [ %n.vec437, %middle.block443 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol

scalar.ph434.prol:                                ; preds = %scalar.ph434.preheader, %scalar.ph434.prol
  %.09.i.i.i.i.i.i.i.prol = phi i64 [ %i.cs, %scalar.ph434.prol ], [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph434.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph434.prol ], [ 0, %scalar.ph434.preheader ]
  %i.cp = getelementptr [8 x i8], ptr %i.by, i64 %.09.i.i.i.i.i.i.i.prol
  %i.cq = getelementptr [8 x i8], ptr %i.ce, i64 %.09.i.i.i.i.i.i.i.prol
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !30
  store double %i.cr, ptr %i.cp, align 8, !tbaa !30
  %i.cs = add nuw nsw i64 %.09.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol, !llvm.loop !184

scalar.ph434.prol.loopexit:                       ; preds = %scalar.ph434.prol, %scalar.ph434.preheader
  %.09.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph434.preheader ], [ %i.cs, %scalar.ph434.prol ]
  %i.ct = sub nsw i64 %.09.i.i.i.i.i.i.i.ph, %i.bh
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph434

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434, %middle.block443
  %i.cv = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.as
  br i1 %exitcond12.not.i.i.i.i.i.i.i, label %.loopexit226.loopexit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !185

scalar.ph434:                                     ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.dl, %scalar.ph434 ], [ %.09.i.i.i.i.i.i.i.unr, %scalar.ph434.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr [8 x i8], ptr %i.by, i64 %.09.i.i.i.i.i.i.i
  %i.cx = getelementptr [8 x i8], ptr %i.ce, i64 %.09.i.i.i.i.i.i.i
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !30
  store double %i.cy, ptr %i.cw, align 8, !tbaa !30
  %i.cz = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.by, i64 %i.cz
  %i.db = getelementptr [8 x i8], ptr %i.ce, i64 %i.cz
  %i.dc = load double, ptr %i.db, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll:bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !166
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !161
  tail call void @free(ptr noundef %i.j) #20
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #22 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !161
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !166
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !246
  %i.i = shl nsw i64 %i.h, 2
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !241
  tail call void @free(ptr noundef %i.j) #20
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #22 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !241
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.110", align 8 ; 9 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.3493", align 8 ; 4 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.3497", align 8 ; 4 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3501", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"class.Eigen::Matrix.320", align 16 ; 17 uses
  %12 = alloca %"class.Eigen::Matrix.329", align 8 ; 15 uses
  %13 = alloca %"class.Eigen::CwiseBinaryOp.354", align 8 ; 7 uses
  %14 = alloca %"class.Eigen::Block.380", align 8 ; 10 uses
  %15 = alloca %"class.Eigen::Matrix.391", align 16 ; 6 uses
  %16 = alloca %"class.Eigen::Array.401", align 16 ; 7 uses
  %17 = alloca %"class.Eigen::Matrix.391", align 16 ; 8 uses
  %18 = alloca %"class.Eigen::ColPivHouseholderQR.451", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !173
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.c, i64 noundef %i.e)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.f, i64 noundef 3)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !280
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.j = ptrtoint ptr %12 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 304
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 305
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.aw = shl nuw nsw i64 %indvars.iv, 3
  %i.ax = add nuw i64 %i.aw, 8                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ay = load ptr, ptr %1, align 8, !tbaa !282, !noalias !283
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv ; 3 uses
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !173, !noalias !286 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !289
  %i.bb = load ptr, ptr %0, align 8, !tbaa !181, !noalias !289 ; 4 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %.loopexit182, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.b
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELin1ELi1ELi3ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 3, i64 noundef %i.ba)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !292, !alias.scope !289 ; 22 uses
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !294, !alias.scope !289 ; 9 uses
  %.pre.i.i227 = ptrtoaddr ptr %.pre.i.i to i64   ; 3 uses
  %i.bd = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.split.i.i.i.i.i.i.i.i, label %.loopexit182

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.be = load i64, ptr %i.a, align 8, !tbaa !280 ; 2 uses
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !29
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul nsw i64 %i.ba, %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bb, i64 %i.bh ; 6 uses
  %min.iters.check257 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check257, label %scalar.ph256.preheader, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.split.i.i.i.i.i.i.i.i
  %i.bj = shl i64 %i.ba, 3
  %i.bk = mul i64 %i.bj, %i.bg
  %i.bl = add i64 %i.bk, %i.bc
  %i.bm = sub i64 %i.bl, %.pre.i.i227
  %diff.check255 = icmp ugt i64 %i.bm, -32
  br i1 %diff.check255, label %scalar.ph256.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck254
  %n.vec259 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next264, %vector.body260 ] ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %.pre.i.i, i64 %index261 ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bi, i64 %index261 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %wide.load262 = load <2 x double>, ptr %i.bo, align 8, !tbaa !30
  %wide.load263 = load <2 x double>, ptr %i.bp, align 8, !tbaa !30
  %i.bq = getelementptr i8, ptr %i.bn, i64 16
  store <2 x double> %wide.load262, ptr %i.bn, align 8, !tbaa !30
  store <2 x double> %wide.load263, ptr %i.bq, align 8, !tbaa !30
  %index.next264 = add nuw i64 %index261, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next264, %n.vec259
  br i1 %i.br, label %middle.block265, label %vector.body260, !llvm.loop !295

middle.block265:                                  ; preds = %vector.body260
  %cmp.n266 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec259
  br i1 %cmp.n266, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph256.preheader

scalar.ph256.preheader:                           ; preds = %vector.memcheck254, %.split.i.i.i.i.i.i.i.i, %middle.block265
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck254 ], [ 0, %.split.i.i.i.i.i.i.i.i ], [ %n.vec259, %middle.block265 ] ; 3 uses
  %xtraiter = and i64 %.pr.i.i.i.i.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph256.prol.loopexit, label %scalar.ph256.prol

scalar.ph256.prol:                                ; preds = %scalar.ph256.preheader, %scalar.ph256.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bv, %scalar.ph256.prol ], [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph256.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph256.prol ], [ 0, %scalar.ph256.preheader ]
  %i.bs = getelementptr [8 x i8], ptr %.pre.i.i, i64 %.09.i.i.i.i.i.i.i.i.prol
  %i.bt = getelementptr [8 x i8], ptr %i.bi, i64 %.09.i.i.i.i.i.i.i.i.prol
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !30
  store double %i.bu, ptr %i.bs, align 8, !tbaa !30
  %i.bv = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph256.prol.loopexit, label %scalar.ph256.prol, !llvm.loop !296

scalar.ph256.prol.loopexit:                       ; preds = %scalar.ph256.prol, %scalar.ph256.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph256.preheader ], [ %i.bv, %scalar.ph256.prol ]
  %i.bw = sub nsw i64 %.09.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph256

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph256.prol.loopexit, %scalar.ph256, %middle.block265
  %i.by = getelementptr [8 x i8], ptr %.pre.i.i, i64 %.pr.i.i.i.i.i.i.i ; 6 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.be
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = mul nsw i64 %i.ba, %i.cb
  %i.cd = getelementptr [8 x i8], ptr %i.bb, i64 %i.cc ; 6 uses
  %min.iters.check243 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ce = shl i64 %.pr.i.i.i.i.i.i.i, 3
  %i.cf = add i64 %i.ce, %.pre.i.i227
  %i.cg = shl i64 %i.ba, 3
  %i.ch = mul i64 %i.cg, %i.cb
  %i.ci = add i64 %i.ch, %i.bc
  %i.cj = sub i64 %i.ci, %i.cf
  %diff.check241 = icmp ugt i64 %i.cj, -32
  br i1 %diff.check241, label %scalar.ph242.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck240
  %n.vec245 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next250, %vector.body246 ] ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.by, i64 %index247 ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.cd, i64 %index247 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %wide.load248 = load <2 x double>, ptr %i.cl, align 8, !tbaa !30
  %wide.load249 = load <2 x double>, ptr %i.cm, align 8, !tbaa !30
  %i.cn = getelementptr i8, ptr %i.ck, i64 16
  store <2 x double> %wide.load248, ptr %i.ck, align 8, !tbaa !30
  store <2 x double> %wide.load249, ptr %i.cn, align 8, !tbaa !30
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next250, %n.vec245
  br i1 %i.co, label %middle.block251, label %vector.body246, !llvm.loop !297

middle.block251:                                  ; preds = %vector.body246
  %cmp.n252 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec245
  br i1 %cmp.n252, label %._crit_edge.1.i.i.i.i.i.i.i.i, label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %vector.memcheck240, %._crit_edge.i.i.i.i.i.i.i.i, %middle.block251
  %.09.1.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck240 ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ], [ %n.vec245, %middle.block251 ] ; 3 uses
  %xtraiter268 = and i64 %.pr.i.i.i.i.i.i.i, 3    ; 2 uses
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %scalar.ph242.prol.loopexit, label %scalar.ph242.prol

scalar.ph242.prol:                                ; preds = %scalar.ph242.preheader, %scalar.ph242.prol
  %.09.1.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cs, %scalar.ph242.prol ], [ %.09.1.i.i.i.i.i.i.i.i.ph, %scalar.ph242.preheader ] ; 3 uses
  %prol.iter270 = phi i64 [ %prol.iter270.next, %scalar.ph242.prol ], [ 0, %scalar.ph242.preheader ]
  %i.cp = getelementptr [8 x i8], ptr %i.by, i64 %.09.1.i.i.i.i.i.i.i.i.prol
  %i.cq = getelementptr [8 x i8], ptr %i.cd, i64 %.09.1.i.i.i.i.i.i.i.i.prol
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !30
  store double %i.cr, ptr %i.cp, align 8, !tbaa !30
  %i.cs = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter270.next = add i64 %prol.iter270, 1   ; 2 uses
  %prol.iter270.cmp.not = icmp eq i64 %prol.iter270.next, %xtraiter268
  br i1 %prol.iter270.cmp.not, label %scalar.ph242.prol.loopexit, label %scalar.ph242.prol, !llvm.loop !298

scalar.ph242.prol.loopexit:                       ; preds = %scalar.ph242.prol, %scalar.ph242.preheader
  %.09.1.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.1.i.i.i.i.i.i.i.i.ph, %scalar.ph242.preheader ], [ %i.cs, %scalar.ph242.prol ]
  %i.ct = sub nsw i64 %.09.1.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.1.i.i.i.i.i.i.i.i, label %scalar.ph242

scalar.ph242:                                     ; preds = %scalar.ph242.prol.loopexit, %scalar.ph242
  %.09.1.i.i.i.i.i.i.i.i = phi i64 [ %i.dk, %scalar.ph242 ], [ %.09.1.i.i.i.i.i.i.i.i.unr, %scalar.ph242.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr [8 x i8], ptr %i.by, i64 %.09.1.i.i.i.i.i.i.i.i
  %i.cw = getelementptr [8 x i8], ptr %i.cd, i64 %.09.1.i.i.i.i.i.i.i.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30
  store double %i.cx, ptr %i.cv, align 8, !tbaa !30
  %i.cy = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.by, i64 %i.cy
  %i.da = getelementptr [8 x i8], ptr %i.cd, i64 %i.cy
  %i.db = load double, ptr %i.da, align 8, !tbaa !30
  store double %i.db, ptr %i.cz, align 8, !tbaa !30
  %i.dc = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.by, i64 %i.dc
  %i.de = getelementptr [8 x i8], ptr %i.cd, i64 %i.dc
  %i.df = load double, ptr %i.de, align 8, !tbaa !30
  store double %i.df, ptr %i.dd, align 8, !tbaa !30
  %i.dg = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.by, i64 %i.dg
  %i.di = getelementptr [8 x i8], ptr %i.cd, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !30
  store double %i.dj, ptr %i.dh, align 8, !tbaa !30
  %i.dk = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.1.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dk, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.1.not.i.i.i.i.i.i.i.i.3, label %._crit_edge.1.i.i.i.i.i.i.i.i, label %scalar.ph242, !llvm.loop !299

._crit_edge.1.i.i.i.i.i.i.i.i:                    ; preds = %scalar.ph242.prol.loopexit, %scalar.ph242, %middle.block251
  %.idx.i.i.i.i.i.i.i.i = shl i64 %.pr.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dl = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i ; 6 uses
  %.idx13.i.i.i.i.i.i.i.i = shl nsw i64 %i.be, 3
  %i.dm = getelementptr inbounds i8, ptr %i.az, i64 %.idx13.i.i.i.i.i.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = mul nsw i64 %i.ba, %i.do
  %i.dq = getelementptr [8 x i8], ptr %i.bb, i64 %i.dp ; 6 uses
  %min.iters.check229 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check229, label %scalar.ph228.preheader, label %vector.memcheck226

vector.memcheck226:                               ; preds = %._crit_edge.1.i.i.i.i.i.i.i.i
  %i.dr = add i64 %.idx.i.i.i.i.i.i.i.i, %.pre.i.i227
  %i.ds = shl i64 %i.ba, 3
  %i.dt = mul i64 %i.ds, %i.do
  %i.du = add i64 %i.dt, %i.bc
  %i.dv = sub i64 %i.du, %i.dr
  %diff.check = icmp ugt i64 %i.dv, -32
  br i1 %diff.check, label %scalar.ph228.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck226
  %n.vec231 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE:bb.a
  %i.ri = load ptr, ptr %18, align 8, !tbaa !98, !noalias !444 ; 4 uses
  %i.rj = load ptr, ptr %4, align 8, !tbaa !241, !noalias !447
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv ; 5 uses
  %i.rl = load i64, ptr %i.an, align 8, !tbaa !246 ; 3 uses
  %i.rm = load double, ptr %i.ri, align 8, !tbaa !30
  store double %i.rm, ptr %i.rk, align 8, !tbaa !30
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.rk, i64 %i.rl
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !30
  store double %i.rp, ptr %i.rn, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.rl, 4
  %i.rq = getelementptr inbounds i8, ptr %i.rk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !30
  store double %i.rs, ptr %i.rq, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.rl, 24
  %i.rt = getelementptr inbounds i8, ptr %i.rk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !30
  store double %i.rv, ptr %i.rt, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store ptr %i.rk, ptr %20, align 8
  store ptr %4, ptr %.sroa.5130.0..sroa_idx, align 8
  store i64 %indvars.iv, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.7131.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8132.0..sroa_idx, align 8
  store ptr %14, ptr %i.ao, align 8, !tbaa !47, !alias.scope !450
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.rw = load ptr, ptr %3, align 8, !tbaa !161, !noalias !453
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv
  store ptr %i.rx, ptr %21, align 8, !tbaa !456, !alias.scope !453
  store ptr %3, ptr %i.ap, align 8, !tbaa !459, !alias.scope !453
  store i64 %indvars.iv, ptr %i.aq, align 8, !tbaa !46, !alias.scope !453
  store i64 0, ptr %i.ar, align 8, !tbaa !46, !alias.scope !453
  store i64 1, ptr %i.as, align 8, !tbaa !461, !alias.scope !453
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEENS_7ProductINS2_INS3_IdLin1ELi4ELi0ELin1ELi4EEELi1ELi4ELb0EEENS3_IdLin1ELin1ELi0ELin1ELin1EEELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISF_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef null)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ry = load i64, ptr %i.a, align 8, !tbaa !19
  %i.rz = load ptr, ptr %18, align 8, !tbaa !98   ; 2 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.rz, i64 %i.ry
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !30
  %i.sc = load ptr, ptr %3, align 8, !tbaa !161, !noalias !464
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv ; 3 uses
  %i.se = load i64, ptr %i.at, align 8, !tbaa !166 ; 2 uses
  %i.sf = load double, ptr %i.sd, align 8, !tbaa !30 ; 2 uses
  %i.sg = fmul double %i.sf, %i.sf
  %i.sh = getelementptr [8 x i8], ptr %i.sd, i64 %i.se
  %i.si = load double, ptr %i.sh, align 8, !tbaa !30 ; 2 uses
  %i.sj = fmul double %i.si, %i.si
  %.idx.i.i.i.i.i.i.i = shl i64 %i.se, 4
  %i.sk = getelementptr i8, ptr %i.sd, i64 %.idx.i.i.i.i.i.i.i
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !30 ; 2 uses
  %i.sm = fmul double %i.sl, %i.sl
  %i.sn = fadd double %i.sj, %i.sm
  %i.so = fadd double %i.sg, %i.sn
  %i.sp = fadd double %i.sb, %i.so
  %i.sq = call double @sqrt(double noundef %i.sp) #20
  %i.sr = load ptr, ptr %2, align 8, !tbaa !98
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv
  store double %i.sq, ptr %i.ss, align 8, !tbaa !30
  call void @free(ptr noundef %i.rz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.st = load ptr, ptr %16, align 8, !tbaa !98
  call void @free(ptr noundef %i.st) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.su = load ptr, ptr %14, align 8, !tbaa !20
  call void @free(ptr noundef %i.su) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.sv = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.sv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sw = load i64, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.sx = icmp sgt i64 %i.sw, %indvars.iv.next
  br i1 %i.sx, label %bb.b, label %._crit_edge, !llvm.loop !467

.body118:                                         ; preds = %bb.m, %bb.n
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.ds, %bb.n ], [ %i.dk, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body116

bb.z:                                             ; preds = %.loopexit
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.body111, %bb.z
  %.pn65 = phi { ptr, i32 } [ %i.qz, %.body111 ], [ %i.sy, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.sz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ta = load ptr, ptr %18, align 8, !tbaa !98
  call void @free(ptr noundef %i.ta) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.sz, %bb.ab ], [ %.pn65, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body

.body:                                            ; preds = %.body104, %bb.ac, %bb.q
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.q ], [ %.pn71.pn.pn, %bb.ac ], [ %i.no, %.body104 ]
  %i.tb = load ptr, ptr %16, align 8, !tbaa !98
  call void @free(ptr noundef %i.tb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body116

.body116:                                         ; preds = %.body, %.body118, %bb.l
  %.pn71.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.l ], [ %.pn71.pn.pn.pn.pn, %.body ], [ %eh.lpad-body119, %.body118 ]
  %i.tc = load ptr, ptr %14, align 8, !tbaa !20
  call void @free(ptr noundef %i.tc) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.td = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.td) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.110", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.320", align 16 ; 17 uses
  %8 = alloca %"class.Eigen::Matrix.512", align 8 ; 14 uses
  %9 = alloca %"class.Eigen::CwiseBinaryOp.527", align 8 ; 7 uses
  %10 = alloca %"class.Eigen::Block.380", align 8 ; 10 uses
  %11 = alloca %"class.Eigen::Matrix.391", align 16 ; 6 uses
  %12 = alloca %"class.Eigen::Matrix.391", align 16 ; 8 uses
  %13 = alloca %"class.Eigen::ColPivHouseholderQR.451", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.c, i64 noundef %i.e)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.f, i64 noundef 3)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !280
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 304
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 305
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.as = shl nuw nsw i64 %indvars.iv, 3
  %i.at = add nuw i64 %i.as, 8                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.au = load ptr, ptr %1, align 8, !tbaa !282, !noalias !468
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv ; 3 uses
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !14, !noalias !471 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !474
  %i.ax = load ptr, ptr %0, align 8, !tbaa !20, !noalias !474 ; 6 uses
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !21, !noalias !474 ; 4 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %.loopexit190, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.b
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 3, i64 noundef %i.aw)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !477, !alias.scope !474 ; 12 uses
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !479, !alias.scope !474 ; 12 uses
  %i.az = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit190

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.ba = load i32, ptr %i.av, align 4, !tbaa !29
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ax, i64 %i.bb ; 5 uses
  %i.bd = getelementptr i8, ptr %.pre.i.i, i64 8  ; 5 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !280 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.ax, i64 %i.bh ; 5 uses
  %i.bj = getelementptr i8, ptr %.pre.i.i, i64 16 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.be, 3
  %i.bk = getelementptr inbounds i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !29
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.ax, i64 %i.bm ; 5 uses
  %min.iters.check249 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 30
  br i1 %min.iters.check249, label %scalar.ph248.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %ident.check = icmp ne i64 %i.ay, 1
  %i.bo = add nsw i64 %.pr.i.i.i.i.i.i.i, -1
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bo, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.bp = getelementptr i8, ptr %.pre.i.i, i64 %mul.result
  %i.bq = icmp ult ptr %i.bp, %.pre.i.i
  %i.br = getelementptr i8, ptr %i.bd, i64 %mul.result
  %i.bs = icmp ult ptr %i.br, %i.bd
  %i.bt = or i1 %i.bs, %mul.overflow
  %i.bu = getelementptr i8, ptr %i.bj, i64 %mul.result
  %i.bv = icmp ult ptr %i.bu, %i.bj
  %i.bw = or i1 %i.bq, %ident.check
  %i.bx = or i1 %i.bw, %i.bt
  %i.by = or i1 %i.bv, %i.bx
  br i1 %i.by, label %scalar.ph248.preheader, label %vector.memcheck232

vector.memcheck232:                               ; preds = %vector.scevcheck
  %i.bz = add i64 %.pr.i.i.i.i.i.i.i, %i.bm
  %i.ca = shl i64 %i.bz, 3
  %scevgep233 = getelementptr i8, ptr %i.ax, i64 %i.ca
  %i.cb = mul i64 %.pr.i.i.i.i.i.i.i, 24
  %scevgep234 = getelementptr i8, ptr %.pre.i.i, i64 %i.cb ; 3 uses
  %i.cc = add i64 %.pr.i.i.i.i.i.i.i, %i.bh
  %i.cd = shl i64 %i.cc, 3
  %scevgep235 = getelementptr i8, ptr %i.ax, i64 %i.cd
  %i.ce = add i64 %.pr.i.i.i.i.i.i.i, %i.bb
  %i.cf = shl i64 %i.ce, 3
  %scevgep236 = getelementptr i8, ptr %i.ax, i64 %i.cf
  %bound0237 = icmp ult ptr %i.bn, %scevgep234
  %bound1238 = icmp ult ptr %.pre.i.i, %scevgep233
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0240 = icmp ult ptr %i.bi, %scevgep234
  %bound1241 = icmp ult ptr %.pre.i.i, %scevgep235
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %found.conflict239, %found.conflict242
  %bound0244 = icmp ult ptr %i.bc, %scevgep234
  %bound1245 = icmp ult ptr %.pre.i.i, %scevgep236
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  br i1 %conflict.rdx247, label %scalar.ph248.preheader, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck232
  %n.vec251 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next256, %vector.body252 ] ; 5 uses
  %i.cg = mul i64 %index253, 24
  %i.ch = getelementptr i8, ptr %.pre.i.i, i64 %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.bc, i64 %index253
  %wide.load = load <2 x double>, ptr %i.ci, align 8, !tbaa !30, !alias.scope !480, !noalias !483
  %i.cj = getelementptr [8 x i8], ptr %i.bi, i64 %index253
  %wide.load254 = load <2 x double>, ptr %i.cj, align 8, !tbaa !30, !alias.scope !485, !noalias !483
  %i.ck = getelementptr [8 x i8], ptr %i.bn, i64 %index253
  %wide.load255 = load <2 x double>, ptr %i.ck, align 8, !tbaa !30, !alias.scope !487, !noalias !483
  %i.cl = shufflevector <2 x double> %wide.load, <2 x double> %wide.load254, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <2 x double> %wide.load255, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.cl, <4 x double> %i.cm, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.ch, align 8, !tbaa !30, !alias.scope !483
  %index.next256 = add nuw i64 %index253, 2       ; 2 uses
  %i.cn = icmp eq i64 %index.next256, %n.vec251
  br i1 %i.cn, label %middle.block257, label %vector.body252, !llvm.loop !489

middle.block257:                                  ; preds = %vector.body252
  %cmp.n258 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec251
  br i1 %cmp.n258, label %.loopexit190, label %scalar.ph248.preheader

scalar.ph248.preheader:                           ; preds = %vector.memcheck232, %vector.scevcheck, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block257
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck232 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %n.vec251, %middle.block257 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.pr.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph248.prol.loopexit, label %scalar.ph248.prol

scalar.ph248.prol:                                ; preds = %scalar.ph248.preheader
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul i64 %.05.i.i.i.i.i.i.i.i.ph, 24 ; 3 uses
  %i.co = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cp = mul nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.ay ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.bc, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !30
  store double %i.cr, ptr %i.co, align 8, !tbaa !30
  %i.cs = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ct = getelementptr [8 x i8], ptr %i.bi, i64 %i.cp
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !30
  store double %i.cu, ptr %i.cs, align 8, !tbaa !30
  %i.cv = getelementptr i8, ptr %i.bj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cw = getelementptr [8 x i8], ptr %i.bn, i64 %i.cp
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30
  store double %i.cx, ptr %i.cv, align 8, !tbaa !30
  %i.cy = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph248.prol.loopexit

scalar.ph248.prol.loopexit:                       ; preds = %scalar.ph248.prol, %scalar.ph248.preheader
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %scalar.ph248.preheader ], [ %i.cy, %scalar.ph248.prol ]
  %i.cz = icmp eq i64 %.pr.i.i.i.i.i.i.i, %.neg
  br i1 %i.cz, label %.loopexit190, label %scalar.ph248

scalar.ph248:                                     ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.dv, %scalar.ph248 ], [ %.05.i.i.i.i.i.i.i.i.unr, %scalar.ph248.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.05.i.i.i.i.i.i.i.i, 24 ; 3 uses
  %i.da = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.db = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.ay ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.bc, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !30
  store double %i.dd, ptr %i.da, align 8, !tbaa !30
  %i.de = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = getelementptr [8 x i8], ptr %i.bi, i64 %i.db
  %i.dg = load double, ptr %i.df, align 8, !tbaa !30
  store double %i.dg, ptr %i.de, align 8, !tbaa !30
  %i.dh = getelementptr i8, ptr %i.bj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.di = getelementptr [8 x i8], ptr %i.bn, i64 %i.db
  %i.dj = load double, ptr %i.di, align 8, !tbaa !30
  store double %i.dj, ptr %i.dh, align 8, !tbaa !30
  %i.dk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.dk, 24 ; 3 uses
  %i.dl = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.dm = mul nsw i64 %i.dk, %i.ay                ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.bc, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !30
  store double %i.do, ptr %i.dl, align 8, !tbaa !30
  %i.dp = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.dq = getelementptr [8 x i8], ptr %i.bi, i64 %i.dm
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !30
  store double %i.dr, ptr %i.dp, align 8, !tbaa !30
  %i.ds = getelementptr i8, ptr %i.bj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.dt = getelementptr [8 x i8], ptr %i.bn, i64 %i.dm
  %i.du = load double, ptr %i.dt, align 8, !tbaa !30
  store double %i.du, ptr %i.ds, align 8, !tbaa !30
  %i.dv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dv, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %.loopexit190, label %scalar.ph248, !llvm.loop !490

common.resume:                                    ; preds = %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.dw, %bb.d ], [ %.pn68.pn.pn.pn, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %8, align 8, !tbaa !479, !alias.scope !474
  call void @free(ptr noundef %i.dx) #20
  br label %common.resume

.loopexit190:                                     ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248, %middle.block257, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store double 2.000000e+00, ptr %i.k, align 8, !tbaa !52, !alias.scope !491
  store ptr %8, ptr %i.l, align 8
  store ptr %8, ptr %.sroa.5175.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %7, ptr %10, align 8, !tbaa !307, !alias.scope !494
  store i64 3, ptr %i.m, align 8, !tbaa !46, !alias.scope !494
  store i64 3, ptr %i.n, align 8, !tbaa !46, !alias.scope !494
  store ptr %7, ptr %i.o, align 8, !tbaa !312, !alias.scope !494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !494
  store i64 4, ptr %i.q, align 8, !tbaa !314, !alias.scope !494
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi3ELi3ELi0ELi3ELi3EEEEEKNS_7ProductINS3_IdLi3ELin1ELi0ELi3ELin1EEENS_9TransposeIKSH_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISS_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef null)
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal26call_dense_assignment_loopINS_5BlockINS2_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS2_IKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS3_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEENS0_13sub_assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %4, ptr %5, align 8, !tbaa !1326
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.by, align 8, !tbaa !1328
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.bz, align 8, !tbaa !1330
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.ca, align 8, !tbaa !1332
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cb = load ptr, ptr %3, align 8, !tbaa !98
  call void @free(ptr noundef %i.cb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cd = load ptr, ptr %3, align 8, !tbaa !98
  call void @free(ptr noundef %i.cd) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1334, !nonnull !64, !align !65 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1213
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !64, !align !65 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %0, align 8, !nonnull !64, !align !65 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !1324 ; 4 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !46   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !1336 ; 6 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !1312, !noalias !1339 ; 3 uses
  %i.u = add nuw i64 %i.g, 2305843009213693951
  %i.v = mul i64 %i.r, %i.u
  %i.w = shl i64 %i.j, 3
  %i.x = add i64 %i.v, %i.j
  %i.y = shl i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.s, i64 %i.w
  %i.z = shl i64 %i.g, 3
  %scevgep64 = getelementptr i8, ptr %i.t, i64 %i.z
  %min.iters.check = icmp ult i64 %i.j, 6
  %bound0 = icmp ult ptr %i.q, %scevgep63
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound065 = icmp ult ptr %i.q, %scevgep64
  %bound166 = icmp ult ptr %i.t, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %.mask = and i64 %i.r, 1152921504606846976
  %stride.check68 = icmp ne i64 %.mask, 0
  %i.aa = or i1 %found.conflict67, %stride.check68
  %conflict.rdx = or i1 %found.conflict, %i.aa
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ax, %._crit_edge.i ] ; 3 uses
  %i.ab = mul nsw i64 %.0810.i, %i.r
  %i.ac = getelementptr [8 x i8], ptr %i.q, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !30, !alias.scope !1342
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.ac, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !30, !alias.scope !1345
  %wide.load69 = load <2 x double>, ptr %i.ah, align 8, !tbaa !30, !alias.scope !1345
  %i.ai = fmul <2 x double> %wide.load, %broadcast.splat
  %i.aj = fmul <2 x double> %wide.load69, %broadcast.splat
  %i.ak = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.af, align 8, !tbaa !30, !alias.scope !1347, !noalias !1349
  %wide.load71 = load <2 x double>, ptr %i.ak, align 8, !tbaa !30, !alias.scope !1347, !noalias !1349
  %i.al = fsub <2 x double> %wide.load70, %i.ai
  %i.am = fsub <2 x double> %wide.load71, %i.aj
  store <2 x double> %i.al, ptr %i.af, align 8, !tbaa !30, !alias.scope !1347, !noalias !1349
  store <2 x double> %i.am, ptr %i.ak, align 8, !tbaa !30, !alias.scope !1347, !noalias !1349
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1350

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ao = getelementptr [8 x i8], ptr %i.ac, i64 %.09.i.ph ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.09.i.ph
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !30
  %i.ar = load double, ptr %i.ad, align 8, !tbaa !30
  %i.as = fmul double %i.aq, %i.ar
  %i.at = load double, ptr %i.ao, align 8, !tbaa !30
  %i.au = fsub double %i.at, %i.as
  store double %i.au, ptr %i.ao, align 8, !tbaa !30
  %i.av = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %i.aw = icmp eq i64 %i.j, %.neg
  br i1 %i.aw, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ax = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ax, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !1351

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bn, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %.09.i ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.09.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !30
  %i.bb = load double, ptr %i.ad, align 8, !tbaa !30
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !30
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.ay, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ac, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !30
  %i.bj = load double, ptr %i.ad, align 8, !tbaa !30
  %i.bk = fmul double %i.bi, %i.bj
  %i.bl = load double, ptr %i.bg, align 8, !tbaa !30
  %i.bm = fsub double %i.bl, %i.bk
  store double %i.bm, ptr %i.bg, align 8, !tbaa !30
  %i.bn = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bn, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1352

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !46 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !46 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1206, !nonnull !64, !align !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !96
  %i.bw = and i64 %i.bv, 1
  %i.bx = icmp sgt i64 %i.br, 0
  br i1 %i.bx, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.by = lshr exact i64 %i.d, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bp)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cc = shl i64 %i.bp, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.fg, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.ca, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cd = shl nuw nsw i64 %.03451, 3              ; 2 uses
  %i.ce = sub i64 %i.bp, %.03550                  ; 3 uses
  %i.cf = and i64 %i.ce, -2                       ; 2 uses
  %i.cg = add nsw i64 %i.cf, %.03550              ; 6 uses
  %i.ch = icmp sgt i64 %.03550, 0
  br i1 %i.ch, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !1353, !nonnull !64, !align !65 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1312, !noalias !1354
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.03451
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !98, !noalias !1357
  %i.cn = load ptr, ptr %0, align 8, !tbaa !1360, !nonnull !64, !align !65 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1324
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !46
  %i.cr = mul nsw i64 %i.cq, %.03451
  %i.cs = getelementptr [8 x i8], ptr %i.co, i64 %i.cr ; 2 uses
  %i.ct = load double, ptr %i.cm, align 8, !tbaa !30
  %i.cu = load double, ptr %i.cl, align 8, !tbaa !30
  %i.cv = fmul double %i.ct, %i.cu
  %i.cw = load double, ptr %i.cs, align 8, !tbaa !30
  %i.cx = fsub double %i.cw, %i.cv
  store double %i.cx, ptr %i.cs, align 8, !tbaa !30
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.cy = icmp sgt i64 %i.ce, 1
  br i1 %i.cy, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.cz = icmp slt i64 %i.cg, %i.bp
  br i1 %i.cz, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.da = load ptr, ptr %0, align 8, !tbaa !1360, !nonnull !64, !align !65 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1324 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !46 ; 2 uses
  %i.de = mul nsw i64 %i.dd, %.03451
  %i.df = getelementptr [8 x i8], ptr %i.db, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.cb, align 8, !tbaa !1353, !nonnull !64, !align !65 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !98, !noalias !1361 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1312, !noalias !1364 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.03451 ; 3 uses
  %i.dl = add i64 %.03550, %i.cf
  %i.dm = sub i64 %i.bp, %i.dl                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph49
  %i.dn = mul i64 %i.dd, %i.cd                    ; 2 uses
  %i.do = shl i64 %i.ce, 3
  %i.dp = and i64 %i.do, -16                      ; 2 uses
  %i.dq = shl i64 %.03550, 3                      ; 2 uses
  %i.dr = getelementptr i8, ptr %i.db, i64 %i.dn
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dp
  %scevgep73 = getelementptr i8, ptr %i.ds, i64 %i.dq ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.db, i64 %i.cc
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.dn ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dh, i64 %i.dp
  %scevgep76 = getelementptr i8, ptr %i.dt, i64 %i.dq
  %scevgep77 = getelementptr i8, ptr %i.dh, i64 %i.cc
  %i.du = getelementptr i8, ptr %i.dj, i64 %i.cd
  %scevgep78 = getelementptr i8, ptr %i.du, i64 8
  %bound079 = icmp ult ptr %scevgep73, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep73, %scevgep78
  %bound183 = icmp ult ptr %i.dk, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck72
  %n.vec89 = and i64 %i.dm, -4                    ; 3 uses
  %i.dv = add i64 %i.cg, %n.vec89
  %i.dw = load double, ptr %i.dk, align 8, !tbaa !30, !alias.scope !1367
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.dx = add i64 %i.cg, %index91                 ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.df, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dx ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dz, align 8, !tbaa !30, !alias.scope !1370
  %wide.load93 = load <2 x double>, ptr %i.ea, align 8, !tbaa !30, !alias.scope !1370
  %i.eb = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.ec = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.ed = getelementptr i8, ptr %i.dy, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dy, align 8, !tbaa !30, !alias.scope !1372, !noalias !1374
  %wide.load97 = load <2 x double>, ptr %i.ed, align 8, !tbaa !30, !alias.scope !1372, !noalias !1374
  %i.ee = fsub <2 x double> %wide.load96, %i.eb
  %i.ef = fsub <2 x double> %wide.load97, %i.ec
  store <2 x double> %i.ee, ptr %i.dy, align 8, !tbaa !30, !alias.scope !1372, !noalias !1374
  store <2 x double> %i.ef, ptr %i.ed, align 8, !tbaa !30, !alias.scope !1372, !noalias !1374
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.eg, label %middle.block99, label %vector.body90, !llvm.loop !1375

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.dm, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck72, %.lr.ph49, %middle.block99
  %.048.ph = phi i64 [ %i.cg, %vector.memcheck72 ], [ %i.cg, %.lr.ph49 ], [ %i.dv, %middle.block99 ]
  br label %scalar.ph86

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fc, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !1360, !nonnull !64, !align !65 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1324
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !46
  %i.el = mul nsw i64 %i.ek, %.03451
  %i.em = getelementptr [8 x i8], ptr %i.ei, i64 %i.el
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %.03246 ; 2 uses
  %i.eo = load ptr, ptr %i.cb, align 8, !tbaa !1353, !nonnull !64, !align !65 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !1376
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.03246
  %i.et = load <2 x double>, ptr %i.es, align 1, !tbaa !82
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !1314
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %.03451
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !30
  %i.ex = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.et, %i.ey
  %i.fa = load <2 x double>, ptr %i.en, align 16, !tbaa !82
  %i.fb = fsub <2 x double> %i.fa, %i.ez
  store <2 x double> %i.fb, ptr %i.en, align 16, !tbaa !82
  %i.fc = add nsw i64 %.03246, 2                  ; 2 uses
  %i.fd = icmp slt i64 %i.fc, %i.cg
  br i1 %i.fd, label %.lr.ph47, label %.preheader, !llvm.loop !1377

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.fe = add nsw i64 %.03550, %i.bw
  %i.ff = srem i64 %i.fe, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.ff)
  %i.fg = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.fg, %i.br
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !1378

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.048 = phi i64 [ %i.fo, %scalar.ph86 ], [ %.048.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.fh = getelementptr [8 x i8], ptr %i.df, i64 %.048 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.048
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !30
  %i.fk = load double, ptr %i.dk, align 8, !tbaa !30
  %i.fl = fmul double %i.fj, %i.fk
  %i.fm = load double, ptr %i.fh, align 8, !tbaa !30
  %i.fn = fsub double %i.fm, %i.fl
  store double %i.fn, ptr %i.fh, align 8, !tbaa !30
  %i.fo = add nsw i64 %.048, 1                    ; 2 uses
  %i.fp = icmp slt i64 %i.fo, %i.bp
  br i1 %i.fp, label %scalar.ph86, label %._crit_edge, !llvm.loop !1379

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1186   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #22 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

end_hunk_3
begin_hunk_4_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_:bb.a
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !30
  %i.ga = fdiv double %i.fz, %i.db
  store double %i.ga, ptr %i.fx, align 8, !tbaa !30
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !30
  %i.gf = fdiv double %i.ge, %i.db
  store double %i.gf, ptr %i.gc, align 8, !tbaa !30
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !30
  %i.gk = fdiv double %i.gj, %i.db
  store double %i.gk, ptr %i.gh, align 8, !tbaa !30
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %i.de
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi4ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1672

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !82
  %i.gp = fdiv <2 x double> %i.go, %i.ey
  store <2 x double> %i.gp, ptr %i.gm, align 16, !tbaa !82
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dn
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1673

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi4ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block52, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gs = load double, ptr %3, align 8, !tbaa !30 ; 2 uses
  %i.gt = fsub double %i.gs, %i.br
  %i.gu = fdiv double %i.gt, %i.gs
  store double %i.gu, ptr %2, align 8, !tbaa !30
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi4ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1674, !nonnull !64, !align !65 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1600
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !64, !align !1676 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %0, align 8, !nonnull !64, !align !65
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1654 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !1677, !noalias !1678 ; 3 uses
  %i.r = shl i64 %i.g, 5
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -32  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 5
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !30, !alias.scope !1681
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !30, !alias.scope !1684
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !30, !alias.scope !1684
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !30, !alias.scope !1686, !noalias !1688
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !30, !alias.scope !1686, !noalias !1688
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !30, !alias.scope !1686, !noalias !1688
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !30, !alias.scope !1686, !noalias !1688
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1689

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !30
  %i.al = load double, ptr %i.x, align 8, !tbaa !30
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !30
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !30
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !1690

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = load double, ptr %i.x, align 8, !tbaa !30
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !30
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !30
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load double, ptr %i.x, align 8, !tbaa !30
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !30
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1691

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 5
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1692, !nonnull !64, !align !1676 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !1677, !noalias !1693
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1696, !nonnull !64, !align !65
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1654
  %.idx.i.i.i = shl i64 %.03453, 5
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !30
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !30
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !30
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 5
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1696, !nonnull !64, !align !65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1654 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 5              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1692, !nonnull !64, !align !1676 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !1677, !noalias !1697 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !30, !alias.scope !1700
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !30, !alias.scope !1703
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !30, !alias.scope !1703
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1708

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1696, !nonnull !64, !align !65
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1654
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1692, !nonnull !64, !align !1676 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !1709
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !82
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !1642
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !82
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !82
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1710

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !1711

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !30
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !30
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !30
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !30
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1712

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS1_IdLi4ELi1ELi0ELi4ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(344) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.4036", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.4047", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Matrix.1717", align 8 ; 3 uses
  %6 = alloca %"class.Eigen::Matrix.391", align 16 ; 12 uses
  %7 = alloca %"class.Eigen::TriangularView.4005", align 8 ; 9 uses
  %8 = alloca %"class.Eigen::Block.432", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1563 ; 14 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1713
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.e = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i
end_hunk_4
begin_hunk_5_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.oi, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter172 = phi i64 [ %epil.iter172.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = shl i64 %.03453.i.i.i.i.i.i.epil, 5
  %i.og = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %.pre64.epil = load double, ptr %i.og, align 8, !tbaa !30
  %i.oh = fmul double %i.f, %.pre64.epil
  store double %i.oh, ptr %i.og, align 8, !tbaa !30
  %i.oi = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter172.next = add i64 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i64 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !1798

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.af, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter166, 0
  call void @llvm.assume(i1 %lcmp.mod168)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.om, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = shl i64 %.0810.i.i.i.i.i.i.i.epil, 5
  %i.oj = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !30
  %i.ol = fmul double %i.f, %i.ok
  store double %i.ol, ptr %i.oj, align 8, !tbaa !30
  %i.om = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter166
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !1799

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit137.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1800, !nonnull !64, !align !65 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1748
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !64, !align !1676 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %0, align 8, !nonnull !64, !align !65
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1790 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !1312, !noalias !1802 ; 3 uses
  %i.r = shl i64 %i.g, 5
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -32  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 5
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !30, !alias.scope !1805
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !30, !alias.scope !1808
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !30, !alias.scope !1808
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !30, !alias.scope !1810, !noalias !1812
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !30, !alias.scope !1810, !noalias !1812
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !30, !alias.scope !1810, !noalias !1812
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !30, !alias.scope !1810, !noalias !1812
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1813

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !30
  %i.al = load double, ptr %i.x, align 8, !tbaa !30
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !30
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !30
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %.preheader.i, !llvm.loop !1814

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = load double, ptr %i.x, align 8, !tbaa !30
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !30
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !30
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load double, ptr %i.x, align 8, !tbaa !30
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !30
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1815

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 5
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1816, !nonnull !64, !align !1676 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !1312, !noalias !1817
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1820, !nonnull !64, !align !65
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1790
  %.idx.i.i.i = shl i64 %.03453, 5
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !30
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !30
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !30
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 5
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1820, !nonnull !64, !align !65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1790 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 5              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1816, !nonnull !64, !align !1676 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !1312, !noalias !1821 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !30, !alias.scope !1824
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !30, !alias.scope !1827
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !30, !alias.scope !1827
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !30, !alias.scope !1829, !noalias !1831
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !30, !alias.scope !1829, !noalias !1831
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !30, !alias.scope !1829, !noalias !1831
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !30, !alias.scope !1829, !noalias !1831
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1832

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1820, !nonnull !64, !align !65
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1790
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1816, !nonnull !64, !align !1676 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !1709
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !82
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !1314
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !82
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !82
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1833

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %bb.c, !llvm.loop !1834

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !30
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !30
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !30
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !30
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1835

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_IKNS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS2_INS3_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1734   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #22 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.d
end_hunk_5
begin_hunk_6_@_ZN5Eigen8internal20generic_product_implINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEESA_EENS_9TransposeISA_EENS_10DenseShapeESG_Li8EE13scaleAndAddToINS8_IdLin1ELin1ELi0ELin1ELin1EEEEEvRT_RKSD_RKSF_RKd:bb.a

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1940 ; 3 uses
  %i.ba = icmp eq i64 %i.h, 1
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load double, ptr %3, align 8, !tbaa !30
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !161, !noalias !1943 ; 3 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !161 ; 3 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !30
  %i.bf = fmul double %i.ay, %i.be
  %i.bg = load double, ptr %i.bc, align 8, !tbaa !30
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bd, i64 %i.d
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !30
  %i.bk = fmul double %i.ay, %i.bj
  %i.bl = getelementptr i8, ptr %i.bc, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !30
  %i.bn = fmul double %i.bk, %i.bm
  %.idx = shl i64 %i.d, 4
  %i.bo = getelementptr i8, ptr %i.bd, i64 %.idx
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !30
  %i.bq = fmul double %i.ay, %i.bp
  %i.br = getelementptr i8, ptr %i.bc, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !30
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = fadd double %i.bn, %i.bt
  %i.bv = fadd double %i.bh, %i.bu
  %i.bw = load double, ptr %i.az, align 8, !tbaa !30
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bv, double %i.bw)
  store double %i.bx, ptr %i.az, align 8, !tbaa !30
  br label %_ZN5Eigen8internal20generic_product_implINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEESA_EEKNS_5BlockIKNS_9TransposeISA_EELi3ELi1ELb0EEENS_10DenseShapeESK_Li7EE13scaleAndAddToINSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEvRT_RKSD_RSJ_RKd.exit

bb.j:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !1946
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.az, ptr %4, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.736.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.937.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.f, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !alias.scope !1949
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %i.ay, ptr %i.cb, align 8, !tbaa !52, !alias.scope !1949
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.b, ptr %i.cc, align 8, !tbaa !459, !alias.scope !1949
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_IKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEEENS4_IKNS_5BlockIKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES7_EES7_EELi1ELi3ELb0EEEEENS4_INSB_INS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSY_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN5Eigen8internal20generic_product_implINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEESA_EEKNS_5BlockIKNS_9TransposeISA_EELi3ELi1ELb0EEENS_10DenseShapeESK_Li7EE13scaleAndAddToINSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEvRT_RKSD_RSJ_RKd.exit

bb.k:                                             ; preds = %bb.g
  %i.ce = load double, ptr %3, align 8, !tbaa !30
  %i.cf = fmul double %i.ce, %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.av, ptr %i.cg, align 8, !tbaa !733
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.ch, align 8, !tbaa !735
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 3, ptr %i.ci, align 8, !tbaa !736
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i64 noundef 1)
  %i.cj = load i64, ptr %i.cg, align 8, !tbaa !733
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !736 ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !1952
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !735
  %i.co = mul nsw i64 %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !1954
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !1923, !nonnull !64, !align !65
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !166
  %i.ct = load ptr, ptr %2, align 8, !tbaa !1926, !nonnull !64, !align !65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !166 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, -1
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !166 ; 2 uses
  %..i.i = select i1 %i.cw, i64 %i.cx, i64 %i.cv
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.cz = load i64, ptr %i.c, align 8, !tbaa !166
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.db = load ptr, ptr %0, align 8, !tbaa !20
  %i.dc = load i64, ptr %i.au, align 8, !tbaa !21
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.cs, i64 noundef %..i.i, i64 noundef 3, ptr noundef nonnull %i.cy, i64 noundef %i.cz, ptr noundef nonnull %i.da, i64 noundef %i.cx, ptr noundef nonnull %i.db, i64 noundef 1, i64 noundef %i.dc, double noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_9TransposeIKS6_EENS5_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELi3ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit unwind label %bb.l

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_9TransposeIKS6_EENS5_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELi3ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit: ; preds = %bb.k
  %i.dd = load ptr, ptr %9, align 8, !tbaa !740
  call void @free(ptr noundef %i.dd) #20
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !741
  call void @free(ptr noundef %i.df) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZN5Eigen8internal20generic_product_implINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEESA_EEKNS_5BlockIKNS_9TransposeISA_EELi3ELi1ELb0EEENS_10DenseShapeESK_Li7EE13scaleAndAddToINSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEvRT_RKSD_RSJ_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEESA_EEKNS_5BlockIKNS_9TransposeISA_EELi3ELi1ELb0EEENS_10DenseShapeESK_Li7EE13scaleAndAddToINSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEvRT_RKSD_RSJ_RKd.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.a, %bb.b, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_9TransposeIKS6_EENS5_IdLin1ELin1ELi0ELin1ELin1EEENS0_19gemm_blocking_spaceILi0EddLin1ELin1ELi3ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit
  ret void

bb.l:                                             ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %9, align 8, !tbaa !740
  call void @free(ptr noundef %i.dh) #20
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !741
  call void @free(ptr noundef %i.dj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  resume { ptr, i32 } %i.dg
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_7ProductINS2_IdLin1ELi3ELi0ELin1ELi3EEENS_9TransposeIKSE_EELi1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !52 ; 4 uses
  %.sroa.3.8.vec.insert = insertelement <2 x double> poison, double %i.b, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1955, !nonnull !64, !align !65 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !166  ; 8 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !166  ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %.not.i = icmp eq i64 %i.o, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %.not8.i = icmp eq i64 %i.q, %i.m
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.j, 0
  %i.s = icmp eq i64 %i.m, 0
  %or.cond.i.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sdiv i64 9223372036854775807, %i.m
  %i.u = icmp sgt i64 %i.j, %i.t
  br i1 %i.u, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.v = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.w = mul nsw i64 %i.m, %i.j
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.w, i64 noundef %i.j, i64 noundef %i.m)
  %.pr = load i64, ptr %i.p, align 8, !tbaa !14
  %.pre = load i64, ptr %i.n, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.x = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.j, %bb.a ] ; 12 uses
  %i.y = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.m, %bb.a ] ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !20     ; 4 uses
  %i.aa = and i64 %i.x, 1
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %.lr.ph52.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS_7ProductINS4_IdLin1ELi3ELi0ELin1ELi3EEENS_9TransposeIKSH_EELi1EEEEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSR_.exit

.lr.ph52.i.preheader:                             ; preds = %bb.d
  %i.ac = shufflevector <2 x double> %.sroa.3.8.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.j, 4
  %.idx12.i.i.i.i.i.i = shl i64 %i.m, 4
  %i.ad = shl i64 %i.x, 3                         ; 3 uses
  %i.ae = shl i64 %i.x, 3
  %i.af = getelementptr i8, ptr %i.z, i64 %i.ad
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %._crit_edge.i
  %.03150.i = phi i64 [ %i.em, %._crit_edge.i ], [ 0, %.lr.ph52.i.preheader ] ; 9 uses
  %.03249.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph52.i.preheader ] ; 7 uses
  %i.ag = mul i64 %i.ae, %.03150.i
  %scevgep35 = getelementptr i8, ptr %i.af, i64 %i.ag ; 6 uses
  %i.ah = shl nuw nsw i64 %.03150.i, 3
  %i.ai = add nuw i64 %i.ah, 8                    ; 3 uses
  %i.aj = sub i64 %i.x, %.03249.i                 ; 3 uses
  %i.ak = and i64 %i.aj, -2                       ; 2 uses
  %i.al = add nsw i64 %i.ak, %.03249.i            ; 6 uses
  %i.am = icmp sgt i64 %.03249.i, 0
  br i1 %i.am, label %.preheader41.loopexit.i, label %.preheader41.i

.preheader41.loopexit.i:                          ; preds = %.lr.ph52.i
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !161, !noalias !1957
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.03150.i ; 3 uses
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !166 ; 2 uses
  %.idx1.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.ap, 4
  %i.aq = getelementptr i8, ptr %i.ao, i64 %.idx1.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !166 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.ar, 4
  %i.as = getelementptr [8 x i8], ptr %i.ao, i64 %i.ap
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !1960 ; 3 uses
  %i.au = mul nsw i64 %.03150.i, %i.x
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.z, i64 %i.au
  %i.av = load double, ptr %i.at, align 8, !tbaa !30
  %i.aw = load double, ptr %i.ao, align 8, !tbaa !30
  %i.ax = fmul double %i.av, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ar
  %i.az = load double, ptr %i.ay, align 8, !tbaa !30
  %i.ba = load double, ptr %i.as, align 8, !tbaa !30
  %i.bb = fmul double %i.az, %i.ba
  %i.bc = getelementptr i8, ptr %i.at, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !30
  %i.be = load double, ptr %i.aq, align 8, !tbaa !30
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = fadd double %i.ax, %i.bg
  %i.bi = fmul double %i.b, %i.bh
  store double %i.bi, ptr %invariant.gep.i, align 8, !tbaa !30
  br label %.preheader41.i

.preheader41.i:                                   ; preds = %.preheader41.loopexit.i, %.lr.ph52.i
  %i.bj = icmp sgt i64 %i.aj, 1
  br i1 %i.bj, label %.lr.ph44.i.preheader, label %.preheader.i

.lr.ph44.i.preheader:                             ; preds = %.preheader41.i
  %i.bk = mul nsw i64 %.03150.i, %i.x
  %invariant.gep = getelementptr [8 x i8], ptr %i.z, i64 %i.bk
  %i.bl = getelementptr [8 x i8], ptr %i.k, i64 %.03150.i ; 3 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.m
  %i.bn = getelementptr i8, ptr %i.bl, i64 %.idx12.i.i.i.i.i.i
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %.lr.ph44.i, %.preheader41.i
  %i.bo = icmp slt i64 %i.al, %i.x
  br i1 %i.bo, label %.lr.ph46.i, label %._crit_edge.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.bp = mul nsw i64 %.03150.i, %i.x
  %invariant.gep47.i = getelementptr [8 x i8], ptr %i.z, i64 %i.bp ; 3 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !161, !noalias !1963 ; 8 uses
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !161, !noalias !1966 ; 4 uses
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %.03150.i ; 5 uses
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !166 ; 5 uses
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !166 ; 3 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bs, i64 %i.bu ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i34.i = shl i64 %i.bt, 4 ; 4 uses
  %.idx1.i.i.i.i.i.i.i.i.i.i35.i = shl i64 %i.bu, 4 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 %.idx1.i.i.i.i.i.i.i.i.i.i35.i ; 3 uses
  %i.bx = add i64 %.03249.i, %i.ak
  %i.by = sub i64 %i.x, %i.bx                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.by, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46.i
  %i.bz = shl i64 %i.aj, 3
  %i.ca = and i64 %i.bz, -16                      ; 3 uses
  %i.cb = shl i64 %.03249.i, 3                    ; 3 uses
  %i.cc = add i64 %i.ca, %i.cb                    ; 2 uses
  %scevgep = getelementptr i8, ptr %invariant.gep47.i, i64 %i.cc ; 6 uses
  %i.cd = getelementptr i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i34.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.ca
  %scevgep36 = getelementptr i8, ptr %i.ce, i64 %i.cb
  %scevgep37 = getelementptr i8, ptr %i.bq, i64 %i.ad
  %scevgep38 = getelementptr i8, ptr %scevgep37, i64 %.idx.i.i.i.i.i.i.i.i.i.i34.i
  %i.cf = shl i64 %i.bt, 3
  %i.cg = getelementptr i8, ptr %i.bq, i64 %i.ca
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.cb
  %scevgep39 = getelementptr i8, ptr %i.ch, i64 %i.cf
  %i.ci = add i64 %i.x, %i.bt
  %i.cj = shl i64 %i.ci, 3
  %scevgep40 = getelementptr i8, ptr %i.bq, i64 %i.cj
  %scevgep41 = getelementptr i8, ptr %i.bq, i64 %i.cc
  %scevgep42 = getelementptr i8, ptr %i.bq, i64 %i.ad
  %i.ck = getelementptr i8, ptr %i.br, i64 %i.ai
  %scevgep43 = getelementptr i8, ptr %i.ck, i64 %.idx1.i.i.i.i.i.i.i.i.i.i35.i
  %i.cl = shl i64 %i.bu, 3
  %i.cm = getelementptr i8, ptr %i.br, i64 %i.ai
  %scevgep44 = getelementptr i8, ptr %i.cm, i64 %i.cl
  %scevgep45 = getelementptr i8, ptr %i.br, i64 %i.ai
  %bound0 = icmp ult ptr %scevgep, %scevgep38
  %bound1 = icmp ult ptr %scevgep36, %scevgep35
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %scevgep, %scevgep40
  %bound147 = icmp ult ptr %scevgep39, %scevgep35
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  %bound049 = icmp ult ptr %scevgep, %scevgep42
  %bound150 = icmp ult ptr %scevgep41, %scevgep35
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx, %found.conflict51
  %bound053 = icmp ult ptr %scevgep, %scevgep43
  %bound154 = icmp ult ptr %i.bw, %scevgep35
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  %bound057 = icmp ult ptr %scevgep, %scevgep44
  %bound158 = icmp ult ptr %i.bv, %scevgep35
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  %bound061 = icmp ult ptr %scevgep, %scevgep45
  %bound162 = icmp ult ptr %i.bs, %scevgep35
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, -4                      ; 3 uses
  %i.cn = add i64 %i.al, %n.vec
  %i.co = load double, ptr %i.bs, align 8, !tbaa !30, !alias.scope !1969
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = load double, ptr %i.bv, align 8, !tbaa !30, !alias.scope !1972
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.cp, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = load double, ptr %i.bw, align 8, !tbaa !30, !alias.scope !1974
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %i.cq, i64 0
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = add i64 %i.al, %index                   ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cr ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <2 x double>, ptr %i.ct, align 8, !tbaa !30, !alias.scope !1976
  %wide.load65 = load <2 x double>, ptr %i.cu, align 8, !tbaa !30, !alias.scope !1976
  %i.cv = fmul <2 x double> %wide.load, %broadcast.splat67
  %i.cw = fmul <2 x double> %wide.load65, %broadcast.splat67
  %i.cx = getelementptr [8 x i8], ptr %i.ct, i64 %i.bt ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %wide.load68 = load <2 x double>, ptr %i.cx, align 8, !tbaa !30, !alias.scope !1978
  %wide.load69 = load <2 x double>, ptr %i.cy, align 8, !tbaa !30, !alias.scope !1978
  %i.cz = fmul <2 x double> %wide.load68, %broadcast.splat71
  %i.da = fmul <2 x double> %wide.load69, %broadcast.splat71
  %i.db = getelementptr i8, ptr %i.ct, i64 %.idx.i.i.i.i.i.i.i.i.i.i34.i ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %wide.load72 = load <2 x double>, ptr %i.db, align 8, !tbaa !30, !alias.scope !1980
  %wide.load73 = load <2 x double>, ptr %i.dc, align 8, !tbaa !30, !alias.scope !1980
  %i.dd = fmul <2 x double> %wide.load72, %broadcast.splat75
  %i.de = fmul <2 x double> %wide.load73, %broadcast.splat75
  %i.df = fadd <2 x double> %i.cz, %i.dd
  %i.dg = fadd <2 x double> %i.da, %i.de
  %i.dh = fadd <2 x double> %i.cv, %i.df
  %i.di = fadd <2 x double> %i.cw, %i.dg
  %i.dj = fmul <2 x double> %broadcast.splat, %i.dh
  %i.dk = fmul <2 x double> %broadcast.splat, %i.di
  %i.dl = getelementptr i8, ptr %i.cs, i64 16
  store <2 x double> %i.dj, ptr %i.cs, align 8, !tbaa !30, !alias.scope !1982, !noalias !1984
  store <2 x double> %i.dk, ptr %i.dl, align 8, !tbaa !30, !alias.scope !1982, !noalias !1984
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !1985

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph46.i, %middle.block
  %.045.i.ph = phi i64 [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph46.i ], [ %i.cn, %middle.block ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.02943.i = phi i64 [ %i.ei, %.lr.ph44.i ], [ %.03249.i, %.lr.ph44.i.preheader ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.02943.i
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.02943.i ; 3 uses
  %i.do = load <2 x double>, ptr %i.dn, align 1, !tbaa !82
  %i.dp = load double, ptr %i.bl, align 8, !tbaa !30
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %i.do, %i.dr
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.j
  %i.du = load <2 x double>, ptr %i.dt, align 1, !tbaa !82
  %i.dv = load double, ptr %i.bm, align 8, !tbaa !30
  %i.dw = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.du, %i.dx
  %i.dz = fadd <2 x double> %i.ds, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %i.dn, i64 %.idx.i.i.i.i.i.i
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !82
  %i.ec = load double, ptr %i.bn, align 8, !tbaa !30
  %i.ed = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x double> %i.eb, %i.ee
  %i.eg = fadd <2 x double> %i.dz, %i.ef
  %i.eh = fmul <2 x double> %i.ac, %i.eg
end_hunk_6
begin_hunk_7_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_:bb.a
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !30
  %i.ga = fdiv double %i.fz, %i.db
  store double %i.ga, ptr %i.fx, align 8, !tbaa !30
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !30
  %i.gf = fdiv double %i.ge, %i.db
  store double %i.gf, ptr %i.gc, align 8, !tbaa !30
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !30
  %i.gk = fdiv double %i.gj, %i.db
  store double %i.gk, ptr %i.gh, align 8, !tbaa !30
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %i.de
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi5ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2122

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !82
  %i.gp = fdiv <2 x double> %i.go, %i.ey
  store <2 x double> %i.gp, ptr %i.gm, align 16, !tbaa !82
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dn
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2123

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi5ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block52, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gs = load double, ptr %3, align 8, !tbaa !30 ; 2 uses
  %i.gt = fsub double %i.gs, %i.br
  %i.gu = fdiv double %i.gt, %i.gs
  store double %i.gu, ptr %2, align 8, !tbaa !30
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi5ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2124, !nonnull !64, !align !65 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2051
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !64, !align !65 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %0, align 8, !nonnull !64, !align !65
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2104 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !2126, !noalias !2127 ; 3 uses
  %i.r = mul i64 %i.g, 40
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -40  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = mul i64 %.0810.i, 40
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !30, !alias.scope !2130
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !30, !alias.scope !2133
  %wide.load70 = load <2 x double>, ptr %i.ab, align 8, !tbaa !30, !alias.scope !2133
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !30, !alias.scope !2135, !noalias !2137
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !30, !alias.scope !2135, !noalias !2137
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !30, !alias.scope !2135, !noalias !2137
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !30, !alias.scope !2135, !noalias !2137
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2138

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30
  %i.al = load double, ptr %i.x, align 8, !tbaa !30
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !30
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !30
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !2139

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = load double, ptr %i.x, align 8, !tbaa !30
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !30
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !30
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load double, ptr %i.x, align 8, !tbaa !30
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !30
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !2140

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.el, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = mul i64 %.03453, 40
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !2141, !nonnull !64, !align !65 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2126, !noalias !2142
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !2145, !nonnull !64, !align !65
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2104
  %.idx.i.i.i = mul i64 %.03453, 40
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 8, !tbaa !30
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !30
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !30
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = mul i64 %.03453, 40
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !2145, !nonnull !64, !align !65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2104 ; 3 uses
  %.idx.i.i.i38 = mul i64 %.03453, 40             ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !2141, !nonnull !64, !align !65 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2126, !noalias !2146 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !30, !alias.scope !2149
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !30, !alias.scope !2152
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !30, !alias.scope !2152
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !2157

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !2145, !nonnull !64, !align !65
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2104
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !2141, !nonnull !64, !align !65 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !2158
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !82
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !2091
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !82
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !82
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !2159

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = add nsw i64 %.03552, 1
  %i.ek = srem i64 %i.ej, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ek)
  %i.el = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !2160

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.et, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30
  %i.ep = load double, ptr %i.cs, align 8, !tbaa !30
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = load double, ptr %i.em, align 8, !tbaa !30
  %i.es = fsub double %i.er, %i.eq
  store double %i.es, ptr %i.em, align 8, !tbaa !30
  %i.et = add nsw i64 %.050, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.bj
  br i1 %i.eu, label %scalar.ph86, label %._crit_edge, !llvm.loop !2161

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE11_solve_implINS1_IdLi5ELi1ELi0ELi5ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.6013", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.6024", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Matrix.1717", align 8 ; 3 uses
  %6 = alloca %"class.Eigen::Matrix.709", align 8 ; 12 uses
  %7 = alloca %"class.Eigen::TriangularView.5982", align 8 ; 9 uses
  %8 = alloca %"class.Eigen::Block.748", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2014 ; 14 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !2162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.e = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.lr.ph.split.i.i

end_hunk_7
begin_hunk_8_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEEvRKT_RKdPd:bb.a

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.ot, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter171 = phi i64 [ %epil.iter171.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = mul i64 %.03453.i.i.i.i.i.i.epil, 40
  %i.oq = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %i.or = load double, ptr %i.oq, align 8, !tbaa !30
  %i.os = fmul double %i.e, %i.or
  store double %i.os, ptr %i.oq, align 8, !tbaa !30
  %i.ot = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter171.next = add i64 %epil.iter171, 1   ; 2 uses
  %epil.iter171.cmp.not = icmp eq i64 %epil.iter171.next, %xtraiter170
  br i1 %epil.iter171.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !2247

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ae, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter165, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.ox, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.i.i.epil, 40
  %i.ou = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !30
  %i.ow = fmul double %i.e, %i.ov
  store double %i.ow, ptr %i.ou, align 8, !tbaa !30
  %i.ox = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter165
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !2248

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS1_IKNS2_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_IKNS5_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSZ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2249, !nonnull !64, !align !65 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2197
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_IKNS5_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !64, !align !65 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_IKNS5_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %0, align 8, !nonnull !64, !align !65
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2239 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !1312, !noalias !2251 ; 3 uses
  %i.r = mul i64 %i.g, 40
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -40  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = mul i64 %.0810.i, 40
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !30, !alias.scope !2254
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !30, !alias.scope !2257
  %wide.load70 = load <2 x double>, ptr %i.ab, align 8, !tbaa !30, !alias.scope !2257
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !30, !alias.scope !2259, !noalias !2261
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !30, !alias.scope !2259, !noalias !2261
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !30, !alias.scope !2259, !noalias !2261
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !30, !alias.scope !2259, !noalias !2261
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2262

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30
  %i.al = load double, ptr %i.x, align 8, !tbaa !30
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !30
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !30
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_IKNS5_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %.preheader.i, !llvm.loop !2263

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = load double, ptr %i.x, align 8, !tbaa !30
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !30
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !30
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load double, ptr %i.x, align 8, !tbaa !30
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !30
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !2264

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_IKNS5_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.el, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = mul i64 %.03453, 40
  %i.bt = shl nuw nsw i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !2265, !nonnull !64, !align !65 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1312, !noalias !2266
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !2269, !nonnull !64, !align !65
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2239
  %.idx.i.i.i = mul i64 %.03453, 40
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 8, !tbaa !30
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !30
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !30
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = mul i64 %.03453, 40
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !2269, !nonnull !64, !align !65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2239 ; 3 uses
  %.idx.i.i.i38 = mul i64 %.03453, 40             ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !2265, !nonnull !64, !align !65 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1312, !noalias !2270 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !30, !alias.scope !2273
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !30, !alias.scope !2276
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !30, !alias.scope !2276
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !30, !alias.scope !2278, !noalias !2280
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !30, !alias.scope !2278, !noalias !2280
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !30, !alias.scope !2278, !noalias !2280
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !30, !alias.scope !2278, !noalias !2280
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !2281

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !2269, !nonnull !64, !align !65
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2239
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !2265, !nonnull !64, !align !65 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !2158
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !82
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !1314
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !82
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !82
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !2282

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = add nsw i64 %.03552, 1
  %i.ek = srem i64 %i.ej, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ek)
  %i.el = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_IKNS5_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit, label %bb.c, !llvm.loop !2283

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.et, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30
  %i.ep = load double, ptr %i.cs, align 8, !tbaa !30
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = load double, ptr %i.em, align 8, !tbaa !30
  %i.es = fsub double %i.er, %i.eq
  store double %i.es, ptr %i.em, align 8, !tbaa !30
  %i.et = add nsw i64 %.050, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.bj
  br i1 %i.eu, label %scalar.ph86, label %._crit_edge, !llvm.loop !2284

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_IKNS5_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSZ_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS2_INS3_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !2183   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #22 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

end_hunk_8
