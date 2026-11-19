Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/pinv?download=true
inline.NumInlined: 9165
inline.NumDeleted: 4463
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS5_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS4_IKNS7_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSA_IKNS5_IKS3_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179, !nonnull !62, !align !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  store i64 %i.g, ptr %i.c, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load double, ptr %i.i, align 8, !tbaa !43 ; 7 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.j, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !91   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.not8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 noundef 1, i64 noundef %i.o)
          to label %bb.b unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !74 ; 8 uses
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !47 ; 8 uses
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16 = ptrtoaddr ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.q = sdiv i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.r = shl nsw i64 %i.q, 1                      ; 6 uses
  %i.s = icmp sgt i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.t = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.u = icmp slt i64 %i.r, %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.v = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.r ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 2
  %i.w = sub i64 %i.m, %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i16
  %diff.check = icmp ugt i64 %i.w, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.x = and i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %n.vec = sub nuw i64 %i.v, %i.x                 ; 2 uses
  %i.y = add i64 %i.r, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add i64 %i.r, %index                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.z
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !38
  %i.ac = fdiv <2 x double> %broadcast.splat, %wide.load
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ] ; 4 uses
  %i.ae = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38 ]
  %i.af = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !38
  %i.ai = fdiv double %i.j, %i.ah
  store double %i.ai, ptr %i.af, align 8, !tbaa !38
  %i.aj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1177

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader38 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ak = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !38
  %i.ap = fdiv double %i.j, %i.ao
  store double %i.ap, ptr %i.am, align 8, !tbaa !38
  %i.aq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !38
  %i.au = fdiv double %i.j, %i.at
  store double %i.au, ptr %i.ar, align 8, !tbaa !38
  %i.av = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !38
  %i.az = fdiv double %i.j, %i.ay
  store double %i.az, ptr %i.aw, align 8, !tbaa !38
  %i.ba = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ba
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !38
  %i.be = fdiv double %i.j, %i.bd
  store double %i.be, ptr %i.bb, align 8, !tbaa !38
  %i.bf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bf, %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1178

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = load <2 x double>, ptr %i.bh, align 1, !tbaa !35
  %i.bj = fdiv <2 x double> %i.t, %i.bi
  store <2 x double> %i.bj, ptr %i.bg, align 16, !tbaa !35
  %i.bk = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.r
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

common.resume:                                    ; preds = %bb.e, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ec, %bb.e ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !47
  call void @free(ptr noundef %i.bn) #19
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !47
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !196
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.br = load i64, ptr %i.n, align 8, !tbaa !91
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !91
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !91
  store <2 x i64> %i.bv, ptr %i.bs, align 8, !tbaa !91
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !91 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.bz, %i.bx
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.bx, i64 noundef 1)
          to label %thread-pre-split unwind label %bb.e

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i64, ptr %i.by, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit
  %i.ca = phi i64 [ %.pr, %thread-pre-split ], [ %i.bx, %_ZN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS3_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS2_IKNS5_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNS8_IKNS3_IKNS9_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEC2ERKS17_.exit ] ; 7 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.cd = icmp sgt i64 %i.ca, 0
  br i1 %i.cd, label %.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS8_IKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS7_IKNSA_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS8_IKS5_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERS1E_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ce = load i64, ptr %i.bs, align 8, !tbaa !91 ; 2 uses
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !91 ; 5 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !177 ; 2 uses
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !91  ; 4 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.cg, i64 %i.ce ; 4 uses
  %i.ci = load ptr, ptr %i.bo, align 8, !tbaa !198 ; 5 uses
  %min.iters.check21 = icmp ugt i64 %i.ca, 17
  %ident.check.not = icmp eq i64 %i.ch, 1
  %or.cond37 = select i1 %min.iters.check21, i1 %ident.check.not, i1 false
  br i1 %or.cond37, label %vector.memcheck22, label %scalar.ph20.preheader

vector.memcheck22:                                ; preds = %.lr.ph.i
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = ptrtoaddr ptr %i.cg to i64
  %i.cl = shl i64 %i.cf, 3                        ; 2 uses
  %i.cm = shl i64 %i.ce, 3
  %i.cn = add i64 %i.cl, %i.ck
  %i.co = add i64 %i.cn, %i.cm
  %i.cp = sub i64 %i.co, %i.cc
  %diff.check23 = icmp ugt i64 %i.cp, -32
  %i.cq = add i64 %i.cl, %i.cj
  %i.cr = sub i64 %i.cq, %i.cc
  %diff.check24 = icmp ugt i64 %i.cr, -32
  %conflict.rdx = or i1 %diff.check23, %diff.check24
  br i1 %conflict.rdx, label %scalar.ph20.preheader, label %vector.ph25

vector.ph25:                                      ; preds = %vector.memcheck22
  %n.vec26 = and i64 %i.ca, 9223372036854775804   ; 3 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph25
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next33, %vector.body27 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index28 ; 2 uses
  %i.ct = add nsw i64 %index28, %i.cf             ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ct ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %wide.load29 = load <2 x double>, ptr %i.cu, align 8, !tbaa !38
  %wide.load30 = load <2 x double>, ptr %i.cv, align 8, !tbaa !38
  %i.cw = getelementptr [8 x i8], ptr %i.ci, i64 %i.ct ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %wide.load31 = load <2 x double>, ptr %i.cw, align 8, !tbaa !38
  %wide.load32 = load <2 x double>, ptr %i.cx, align 8, !tbaa !38
  %i.cy = fmul <2 x double> %wide.load29, %wide.load31
  %i.cz = fmul <2 x double> %wide.load30, %wide.load32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x double> %i.cy, ptr %i.cs, align 8, !tbaa !38
  store <2 x double> %i.cz, ptr %i.da, align 8, !tbaa !38
  %index.next33 = add nuw i64 %index28, 4         ; 2 uses
  %i.db = icmp eq i64 %index.next33, %n.vec26
  br i1 %i.db, label %middle.block34, label %vector.body27, !llvm.loop !1179

middle.block34:                                   ; preds = %vector.body27
  %cmp.n35 = icmp eq i64 %i.ca, %n.vec26
  br i1 %cmp.n35, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS8_IKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS7_IKNSA_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS8_IKS5_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERS1E_.exit, label %scalar.ph20.preheader

scalar.ph20.preheader:                            ; preds = %vector.memcheck22, %.lr.ph.i, %middle.block34
  %.05.i.ph = phi i64 [ 0, %vector.memcheck22 ], [ 0, %.lr.ph.i ], [ %n.vec26, %middle.block34 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter39 = and i64 %i.ca, 1
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %scalar.ph20.prol.loopexit, label %scalar.ph20.prol

scalar.ph20.prol:                                 ; preds = %scalar.ph20.preheader
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.05.i.ph
  %i.dd = add nsw i64 %.05.i.ph, %i.cf            ; 2 uses
  %i.de = mul nsw i64 %i.dd, %i.ch
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.de
  %i.df = load double, ptr %gep.i.prol, align 8, !tbaa !38
  %i.dg = getelementptr [8 x i8], ptr %i.ci, i64 %i.dd
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !38
  %i.di = fmul double %i.df, %i.dh
  store double %i.di, ptr %i.dc, align 8, !tbaa !38
  %i.dj = or disjoint i64 %.05.i.ph, 1
  br label %scalar.ph20.prol.loopexit

scalar.ph20.prol.loopexit:                        ; preds = %scalar.ph20.prol, %scalar.ph20.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %scalar.ph20.preheader ], [ %i.dj, %scalar.ph20.prol ]
  %i.dk = icmp eq i64 %i.ca, %.neg
  br i1 %i.dk, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS8_IKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS7_IKNSA_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS8_IKS5_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERS1E_.exit, label %scalar.ph20

scalar.ph20:                                      ; preds = %scalar.ph20.prol.loopexit, %scalar.ph20
  %.05.i = phi i64 [ %i.ea, %scalar.ph20 ], [ %.05.i.unr, %scalar.ph20.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.05.i
  %i.dm = add nsw i64 %.05.i, %i.cf               ; 2 uses
  %i.dn = mul nsw i64 %i.dm, %i.ch
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dn
  %i.do = load double, ptr %gep.i, align 8, !tbaa !38
  %i.dp = getelementptr [8 x i8], ptr %i.ci, i64 %i.dm
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !38
  %i.dr = fmul double %i.do, %i.dq
  store double %i.dr, ptr %i.dl, align 8, !tbaa !38
  %i.ds = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ds
  %i.du = add nsw i64 %i.ds, %i.cf                ; 2 uses
  %i.dv = mul nsw i64 %i.du, %i.ch
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.dv
  %i.dw = load double, ptr %gep.i.1, align 8, !tbaa !38
  %i.dx = getelementptr [8 x i8], ptr %i.ci, i64 %i.du
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !38
  %i.dz = fmul double %i.dw, %i.dy
  store double %i.dz, ptr %i.dt, align 8, !tbaa !38
  %i.ea = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ea, %i.ca
  br i1 %exitcond.not.i.1, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS8_IKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS7_IKNSA_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS8_IKS5_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERS1E_.exit, label %scalar.ph20, !llvm.loop !1180

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_9TransposeIKNS_5BlockIKNS_13MatrixWrapperINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_12ArrayWrapperIKNS8_IKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEEKNS_9ReplicateINS7_IKNSA_INS0_18scalar_quotient_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEKNSD_IKNS8_IKS5_Lin1ELi1ELb0EEEEEEEEELin1ELi1EEEEEEELi1ELin1ELb0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERS1E_.exit: ; preds = %scalar.ph20.prol.loopexit, %scalar.ph20, %middle.block34, %bb.d
  %i.eb = load ptr, ptr %i.h, align 8, !tbaa !47
  call void @free(ptr noundef %i.eb) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !47
  call void @free(ptr noundef %i.ed) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #19
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #19
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !158 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !159 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !160 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !106    ; 2 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = sdiv i64 %i.v, %3                        ; 2 uses
  %.not114 = icmp sgt i64 %i.s, %i.w
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 576460752303423484
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.w, 3                      ; 2 uses
  %i.z = srem i64 %i.y, 4
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.speculated153 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !106
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !106
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !106
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !106
end_hunk_0
