Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_calib?download=true
inline.NumInlined: 6074
inline.NumDeleted: 3139
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4rankEv:bb.a
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE14linearizeOplusEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Matrix.28", align 16 ; 11 uses
  %2 = alloca %"class.g2o::ceres::internal::FixedArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %.sroa.049.0.copyload = load <2 x double>, ptr %i.a, align 16 ; 2 uses
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %.sroa.550.0.copyload = load <2 x double>, ptr %.sroa.550.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 5 uses
  %.sroa.6.0.copyload = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !60 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !86  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

._crit_edge59:                                    ; preds = %bb.o, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.b:                                             ; preds = %.lr.ph58, %bb.o
  %i.k = phi ptr [ %i.e, %.lr.ph58 ], [ %i.dy, %bb.o ] ; 2 uses
  %i.l = phi ptr [ %i.d, %.lr.ph58 ], [ %i.dz, %bb.o ]
  %.03055 = phi i64 [ 0, %.lr.ph58 ], [ %i.ea, %bb.o ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03055
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %i.p = load i8, ptr %i.o, align 4, !tbaa !89, !range !105, !noundef !106
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.s = load i32, ptr %i.r, align 8, !tbaa !133  ; 5 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %i.t, ptr %i.g, align 8, !tbaa !141
  %i.u = icmp ult i32 %i.s, 33
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i32 %i.s, 0
  br i1 %i.v, label %.noexc.i.i, label %.thread, !prof !143

.noexc.i.i:                                       ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.thread:                                          ; preds = %bb.d
  %i.w = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !144
  br label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.c
  %.pre64 = shl nuw nsw i64 %i.t, 3
  store ptr %2, ptr %i.h, align 8, !tbaa !144
  %.not6.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not6.i.i.i.i, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.e
  store <2 x double> %.sroa.049.0.copyload, ptr %i.a, align 16, !tbaa !60
  store <2 x double> %.sroa.550.0.copyload, ptr %.sroa.550.0..sroa_idx, align 16, !tbaa !60
  store <2 x double> %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !60
  br label %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.e, %.thread
  %.0.i.i.i76 = phi ptr [ %i.x, %.thread ], [ %2, %bb.e ]
  %.idx.i.pre-phi75 = phi i64 [ %i.w, %.thread ], [ %.pre64, %bb.e ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i76, i8 0, i64 %.idx.i.pre-phi75, i1 false), !tbaa !8
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5Eigen5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLi6ELi1ELi0ELi6ELi1EEEEESH_EEEERS7_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLi6ELi1ELi0ELi6ELi1EEEEESH_EEEERS7_RKNS_9DenseBaseIT_EE.exit ] ; 5 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !144 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store double 1.000000e-09, ptr %i.ac, align 8, !tbaa !8
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull %i.ab)
          to label %.noexc37 unwind label %bb.m, !inline_history !149

.noexc37:                                         ; preds = %bb.f
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit unwind label %bb.m, !inline_history !149

_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit:  ; preds = %.noexc37
  %i.aj = load ptr, ptr %0, align 16, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit
  %i.am = load <2 x double>, ptr %i.a, align 16, !tbaa !60
  %i.an = load <2 x double>, ptr %.sroa.550.0..sroa_idx, align 16, !tbaa !60
  %i.ao = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !60
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !144 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  store double -1.000000e-09, ptr %i.aw, align 8, !tbaa !8
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull %i.av)
          to label %.noexc39 unwind label %bb.m, !inline_history !149

.noexc39:                                         ; preds = %bb.i
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit41 unwind label %bb.m, !inline_history !149

_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit41: ; preds = %.noexc39
  %i.bd = load ptr, ptr %0, align 16, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit41
  %i.bg = load <2 x double>, ptr %i.a, align 16, !tbaa !60
  %i.bh = fsub <2 x double> %i.am, %i.bg
  store <2 x double> %i.bh, ptr %1, align 16, !tbaa !60
  %i.bi = load <2 x double>, ptr %.sroa.550.0..sroa_idx, align 16, !tbaa !60
  %i.bj = fsub <2 x double> %i.an, %i.bi
  store <2 x double> %i.bj, ptr %i.i, align 16, !tbaa !60
  %i.bk = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !60
  %i.bl = fsub <2 x double> %i.ao, %i.bk
  store <2 x double> %i.bl, ptr %i.j, align 16, !tbaa !60
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !8
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %.03055 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !123, !noalias !150
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !134, !noalias !150 ; 7 uses
  %i.bw = mul nsw i64 %i.bv, %indvars.iv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bw ; 6 uses
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = and i64 %i.by, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ca = lshr exact i64 %i.by, 3
  %i.cb = and i64 %i.ca, 1
  %i.cc = call i64 @llvm.smin.i64(i64 %i.cb, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %bb.k ] ; 9 uses
  %i.cd = sub i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ce = sdiv i64 %i.cd, 2
  %i.cf = shl nsw i64 %i.ce, 1                    ; 2 uses
  %i.cg = add nsw i64 %i.cf, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ch = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLi6ELi1ELi0ELi6ELi1EEEEESM_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check79 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check79, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader91, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec81 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next86, %vector.body82 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index83 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index83 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load84 = load <2 x double>, ptr %i.cj, align 16, !tbaa !8
  %wide.load85 = load <2 x double>, ptr %i.ck, align 16, !tbaa !8
  %i.cl = fmul <2 x double> %wide.load84, splat (double f0x41BDCD64FFFFFFFF)
  %i.cm = fmul <2 x double> %wide.load85, splat (double f0x41BDCD64FFFFFFFF)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x double> %i.cl, ptr %i.ci, align 8, !tbaa !8
  store <2 x double> %i.cm, ptr %i.cn, align 8, !tbaa !8
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.co, label %middle.block87, label %vector.body82, !llvm.loop !153

middle.block87:                                   ; preds = %vector.body82
  %cmp.n88 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec81
  br i1 %cmp.n88, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLi6ELi1ELi0ELi6ELi1EEEEESM_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader91

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader91:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block87
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec81, %middle.block87 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader91, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader91 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !8
  %i.cs = fmul double %i.cr, f0x41BDCD64FFFFFFFF
  store double %i.cs, ptr %i.cp, align 8, !tbaa !8
  %i.ct = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ct, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLi6ELi1ELi0ELi6ELi1EEEEESM_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !156

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLi6ELi1ELi0ELi6ELi1EEEEESM_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block87, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cu = icmp sgt i64 %i.cd, 1
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLi6ELi1ELi0ELi6ELi1EEEEESM_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.cv = icmp slt i64 %i.cg, %i.bv
  br i1 %i.cv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLi6ELi1ELi0ELi6ELi1EEEEESH_EEEERS7_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cw = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.cf
  %i.cx = sub i64 %i.bv, %i.cw                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cx, 4
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cx, -4                      ; 3 uses
  %i.cy = add i64 %i.cg, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %i.cg, %index                   ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cz ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <2 x double>, ptr %i.db, align 8, !tbaa !8
  %wide.load77 = load <2 x double>, ptr %i.dc, align 8, !tbaa !8
  %i.dd = fmul <2 x double> %wide.load, splat (double f0x41BDCD64FFFFFFFF)
  %i.de = fmul <2 x double> %wide.load77, splat (double f0x41BDCD64FFFFFFFF)
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x double> %i.dd, ptr %i.da, align 8, !tbaa !8
  store <2 x double> %i.de, ptr %i.df, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLi6ELi1ELi0ELi6ELi1EEEEESH_EEEERS7_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader90

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader90:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.cg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader90, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader90 ] ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds [8 x i8], ptr %1, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.dj = load double, ptr %i.di, align 8, !tbaa !8
  %i.dk = fmul double %i.dj, f0x41BDCD64FFFFFFFF
  store double %i.dk, ptr %i.dh, align 8, !tbaa !8
  %i.dl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, %i.bv
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLi6ELi1ELi0ELi6ELi1EEEEESH_EEEERS7_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !158

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLi6ELi1ELi0ELi6ELi1EEEEESM_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLi6ELi1ELi0ELi6ELi1EEEEESM_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.dn = getelementptr inbounds [8 x i8], ptr %1, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.do = load <2 x double>, ptr %i.dn, align 8, !tbaa !60
  %i.dp = fmul <2 x double> %i.do, splat (double f0x41BDCD64FFFFFFFF)
  store <2 x double> %i.dp, ptr %i.dm, align 16, !tbaa !60
  %i.dq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %i.cg
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !159

_ZN5Eigen5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLi6ELi1ELi0ELi6ELi1EEEEESH_EEEERS7_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160

bb.m:                                             ; preds = %.noexc39, %bb.i, %.noexc37, %bb.f, %bb.j, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit41, %bb.h, %bb.g, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit, %.lr.ph
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  %i.du = icmp ult i64 %i.dt, 33
  br i1 %i.du, label %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit42, label %bb.p

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLi6ELi1ELi0ELi6ELi1EEEEESH_EEEERS7_RKNS_9DenseBaseIT_EE.exit
  %.pre = load i64, ptr %i.g, align 8, !tbaa !161 ; 2 uses
  store <2 x double> %.sroa.049.0.copyload, ptr %i.a, align 16, !tbaa !60
  store <2 x double> %.sroa.550.0.copyload, ptr %.sroa.550.0..sroa_idx, align 16, !tbaa !60
  store <2 x double> %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !60
  %i.dv = icmp ult i64 %.pre, 33
  br i1 %i.dv, label %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.dx = shl i64 %.pre, 3
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dx) #26
  br label %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit

_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit: ; preds = %._crit_edge.thread, %._crit_edge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pre61 = load ptr, ptr %i.c, align 16, !tbaa !86
  %.pre62 = load ptr, ptr %i.b, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit
  %i.dy = phi ptr [ %i.k, %bb.b ], [ %.pre62, %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit ] ; 2 uses
  %i.dz = phi ptr [ %i.l, %bb.b ], [ %.pre61, %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit ] ; 2 uses
  %i.ea = add nuw i64 %.03055, 1                  ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = icmp ult i64 %i.ea, %i.ee
  br i1 %i.ef, label %bb.b, label %._crit_edge59, !llvm.loop !162

bb.p:                                             ; preds = %bb.m
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.eh = shl i64 %i.dt, 3
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.eh) #26
  br label %_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit42

_ZN3g2o5ceres8internal10FixedArrayIdLm18446744073709551615ESaIdEED2Ev.exit42: ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.ds
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o12EdgeSE3CalibD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 264), ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #26, !inline_history !85
  br label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i

_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = ptrtoint ptr %i.l to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperESaIS6_EE17_M_default_appendEm:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 72
  store i8 0, ptr %i.aw, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.av, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 112
  store i8 0, ptr %i.ay, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ax, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 152
  store i8 0, ptr %i.ba, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.az, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 192
  store i8 0, ptr %i.bc, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bb, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 200
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 232
  store i8 0, ptr %i.be, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bd, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 272
  store i8 0, ptr %i.bg, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bf, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 280
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 312
  store i8 0, ptr %i.bi, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bh, i8 0, i64 24, i1 false)
  %i.bj = add i64 %.01012.i.i.i42, -8             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 320
  %.not.i.i.i43.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i43.7, label %_ZSt27__uninitialized_default_n_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperEmS6_ET_S8_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !165

_ZSt27__uninitialized_default_n_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperEmS6_ET_S8_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40, %.lr.ph.i.i.i40.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperEmS6_ET_S8_T0_RSaIT1_E.exit45, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperEmS6_ET_S8_T0_RSaIT1_E.exit45 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperEmS6_ET_S8_T0_RSaIT1_E.exit45 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(33) %.01214.i.i.i.i.i, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !127, !range !105, !noundef !106
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !127
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !167

_ZSt34__uninitialized_move_if_noexcept_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperEmS6_ET_S8_T0_RSaIT1_E.exit45
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperESaIS6_EE13_M_deallocateEPS6_m.exit48, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.bq = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #26
  br label %_ZNSt12_Vector_baseIN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperESaIS6_EE13_M_deallocateEPS6_m.exit48

_ZNSt12_Vector_baseIN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperESaIS6_EE13_M_deallocateEPS6_m.exit48: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !81
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %1
  store ptr %i.br, ptr %i.a, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperEmS6_ET_S8_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperESaIS6_EE13_M_deallocateEPS6_m.exit48, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS6_S8_EEmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(26) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca [24 x i8], align 8            ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load ptr, ptr %3, align 8 ; 32 uses
  %.sroa.4.8.copyload161 = ptrtoaddr ptr %.sroa.4.8.copyload to i64 ; 4 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx, i64 16, i1 false)
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 5                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -32                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.n = add i64 %2, 576460752303423487
  %i.o = and i64 %i.n, 576460752303423487
  %xtraiter253 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.013.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(26) %.sroa.08.012.i.i.i.i.i.prol, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.prol, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !168

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.i.prol ]
  %i.r = icmp samesign ult i64 %i.o, 3
  br i1 %i.r, label %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(26) %.sroa.08.012.i.i.i.i.i, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.t, ptr noundef nonnull align 8 dereferenceable(26) %i.s, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.v, ptr noundef nonnull align 8 dereferenceable(26) %i.u, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.x, ptr noundef nonnull align 8 dereferenceable(26) %i.w, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 128 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.i.i.i.i.3, label %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !169

_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !88
  br label %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit

_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit.loopexit, %bb.d
  %i.aa = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %2
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !88
  %i.ac = ptrtoint ptr %i.m to i64
  %i.ad = sub i64 %i.ac, %i.i
  %i.ae = ashr exact i64 %i.ad, 5                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.dq, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i ], [ %i.ae, %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ah, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i ], [ %i.d, %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ag, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i ], [ %i.m, %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !123 ; 14 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !123 ; 14 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !134
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !134
  %i.ap = mul i64 %i.ao, %i.am                    ; 8 uses
  %i.aq = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.ar = and i64 %i.aq, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i69
  %i.as = lshr exact i64 %i.aq, 3
  %i.at = and i64 %i.as, 1
  %i.au = tail call i64 @llvm.smin.i64(i64 %i.at, i64 %i.ap)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i69
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.e ], [ %i.ap, %.lr.ph.i.i.i.i.i69 ] ; 11 uses
  %i.av = sub i64 %i.ap, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = shl nsw i64 %i.aw, 1                    ; 2 uses
  %i.ay = add nsw i64 %i.ax, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.az = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check194 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.ba = sub i64 %i.aj, %i.aq
  %diff.check192 = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check194, i1 true, i1 %diff.check192
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec196 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next201, %vector.body197 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index198 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index198 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load199 = load <2 x double>, ptr %i.bc, align 8, !tbaa !8
  %wide.load200 = load <2 x double>, ptr %i.bd, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %wide.load199, ptr %i.bb, align 8, !tbaa !8
  store <2 x double> %wide.load200, ptr %i.be, align 8, !tbaa !8
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.bf, label %middle.block202, label %vector.body197, !llvm.loop !170

middle.block202:                                  ; preds = %vector.body197
  %cmp.n203 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec196
  br i1 %cmp.n203, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block202
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec196, %middle.block202 ] ; 3 uses
  %xtraiter256 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242 ] ; 3 uses
  %prol.iter258 = phi i64 [ %prol.iter258.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242 ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !8
  store double %i.bi, ptr %i.bg, align 8, !tbaa !8
  %i.bj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter258.next = add i64 %prol.iter258, 1   ; 2 uses
  %prol.iter258.cmp.not = icmp eq i64 %prol.iter258.next, %xtraiter256
  br i1 %prol.iter258.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !171

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader242 ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bk = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !8
  store double %i.bo, ptr %i.bm, align 8, !tbaa !8
  %i.bp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !8
  store double %i.bs, ptr %i.bq, align 8, !tbaa !8
  %i.bt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bt
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8
  store double %i.bw, ptr %i.bu, align 8, !tbaa !8
  %i.bx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bx
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !8
  store double %i.ca, ptr %i.by, align 8, !tbaa !8
  %i.cb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !172

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block202, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = icmp sgt i64 %i.av, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = icmp slt i64 %i.ay, %i.ap
  br i1 %i.cd, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ax
  %i.cf = sub i64 %i.ap, %i.ce                    ; 3 uses
  %min.iters.check180 = icmp ult i64 %i.cf, 4
  %i.cg = sub i64 %i.aj, %i.aq
  %diff.check178 = icmp ugt i64 %i.cg, -32
  %or.cond233 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond233, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec182 = and i64 %i.cf, -4                   ; 3 uses
  %i.ch = add i64 %i.ay, %n.vec182
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next187, %vector.body183 ] ; 2 uses
  %i.ci = add i64 %i.ay, %index184                ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ci ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load185 = load <2 x double>, ptr %i.ck, align 8, !tbaa !8
  %wide.load186 = load <2 x double>, ptr %i.cl, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x double> %wide.load185, ptr %i.cj, align 8, !tbaa !8
  store <2 x double> %wide.load186, ptr %i.cm, align 8, !tbaa !8
  %index.next187 = add nuw i64 %index184, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.cn, label %middle.block188, label %vector.body183, !llvm.loop !173

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.cf, %n.vec182
  br i1 %cmp.n189, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block188
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ay, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block188 ] ; 4 uses
  %i.co = sub i64 %i.ap, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter259 = and i64 %i.co, 3                 ; 2 uses
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241 ] ; 3 uses
  %prol.iter261 = phi i64 [ %prol.iter261.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241 ]
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !8
  store double %i.cr, ptr %i.cp, align 8, !tbaa !8
  %i.cs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter261.next = add i64 %prol.iter261, 1   ; 2 uses
  %prol.iter261.cmp.not = icmp eq i64 %prol.iter261.next, %xtraiter259
  br i1 %prol.iter261.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !174

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader241 ], [ %i.cs, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ct = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.ap
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !8
  store double %i.cx, ptr %i.cv, align 8, !tbaa !8
  %i.cy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cy
  %i.db = load double, ptr %i.da, align 8, !tbaa !8
  store double %i.db, ptr %i.cz, align 8, !tbaa !8
  %i.dc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.dc
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dc
  %i.df = load double, ptr %i.de, align 8, !tbaa !8
  store double %i.df, ptr %i.dd, align 8, !tbaa !8
  %i.dg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !8
  store double %i.dj, ptr %i.dh, align 8, !tbaa !8
  %i.dk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dk, %i.ap
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !175

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = load <2 x double>, ptr %i.dm, align 1, !tbaa !60
  store <2 x double> %i.dn, ptr %i.dl, align 16, !tbaa !60
  %i.do = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dp = icmp slt i64 %i.do, %i.ay
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !176

_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block188, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dq = add nsw i64 %.010.i.i.i.i.i, -1
  %i.dr = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_ET0_T_S9_S8_.exit, !llvm.loop !177

_ZSt13move_backwardIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_ET0_T_S9_S8_.exit: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 5
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt13move_backwardIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_ET0_T_S9_S8_.exit, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.gz, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i ], [ %1, %_ZSt13move_backwardIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_ET0_T_S9_S8_.exit ] ; 4 uses
  %i.dt = load ptr, ptr %.06.i.i.i, align 8, !tbaa !123 ; 14 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !134
  %i.dw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !134
  %i.dy = mul i64 %i.dx, %i.dv                    ; 8 uses
  %i.dz = ptrtoint ptr %i.dt to i64               ; 4 uses
  %i.ea = and i64 %i.dz, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.eb = lshr exact i64 %i.dz, 3
  %i.ec = and i64 %i.eb, 1
  %i.ed = tail call i64 @llvm.smin.i64(i64 %i.ec, i64 %i.dy)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ed, %bb.f ], [ %i.dy, %.lr.ph.i.i.i ] ; 11 uses
  %i.ee = sub i64 %i.dy, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ef = sdiv i64 %i.ee, 2
  %i.eg = shl nsw i64 %i.ef, 1                    ; 2 uses
  %i.eh = add nsw i64 %i.eg, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ei = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check222 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.ej = sub i64 %.sroa.4.8.copyload161, %i.dz
  %diff.check220 = icmp ugt i64 %i.ej, -32
  %or.cond234 = select i1 %min.iters.check222, i1 true, i1 %diff.check220
  br i1 %or.cond234, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240, label %vector.ph223

vector.ph223:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec224 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph223
  %index226 = phi i64 [ 0, %vector.ph223 ], [ %index.next229, %vector.body225 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %index226 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %index226 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load227 = load <2 x double>, ptr %i.el, align 8, !tbaa !8
  %wide.load228 = load <2 x double>, ptr %i.em, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <2 x double> %wide.load227, ptr %i.ek, align 8, !tbaa !8
  store <2 x double> %wide.load228, ptr %i.en, align 8, !tbaa !8
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.eo, label %middle.block230, label %vector.body225, !llvm.loop !178

middle.block230:                                  ; preds = %vector.body225
  %cmp.n231 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec224
  br i1 %cmp.n231, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block230
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec224, %middle.block230 ] ; 3 uses
  %xtraiter262 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240 ] ; 3 uses
  %prol.iter264 = phi i64 [ %prol.iter264.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240 ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.er = load double, ptr %i.eq, align 8, !tbaa !8
  store double %i.er, ptr %i.ep, align 8, !tbaa !8
  %i.es = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter264.next = add i64 %prol.iter264, 1   ; 2 uses
  %prol.iter264.cmp.not = icmp eq i64 %prol.iter264.next, %xtraiter262
  br i1 %prol.iter264.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !179

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader240 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.et = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !8
  store double %i.ex, ptr %i.ev, align 8, !tbaa !8
  %i.ey = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.ey
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !8
  store double %i.fb, ptr %i.ez, align 8, !tbaa !8
  %i.fc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.fc
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !8
  store double %i.ff, ptr %i.fd, align 8, !tbaa !8
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.fg
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !8
  store double %i.fj, ptr %i.fh, align 8, !tbaa !8
  %i.fk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fk, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !180

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block230, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = icmp sgt i64 %i.ee, 1
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = icmp slt i64 %i.eh, %i.dy
  br i1 %i.fm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.eg
  %i.fo = sub i64 %i.dy, %i.fn                    ; 3 uses
  %min.iters.check208 = icmp ult i64 %i.fo, 4
  %i.fp = sub i64 %.sroa.4.8.copyload161, %i.dz
  %diff.check206 = icmp ugt i64 %i.fp, -32
  %or.cond235 = select i1 %min.iters.check208, i1 true, i1 %diff.check206
  br i1 %or.cond235, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec210 = and i64 %i.fo, -4                   ; 3 uses
  %i.fq = add i64 %i.eh, %n.vec210
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next215, %vector.body211 ] ; 2 uses
  %i.fr = add i64 %i.eh, %index212                ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.fr ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load213 = load <2 x double>, ptr %i.ft, align 8, !tbaa !8
  %wide.load214 = load <2 x double>, ptr %i.fu, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <2 x double> %wide.load213, ptr %i.fs, align 8, !tbaa !8
  store <2 x double> %wide.load214, ptr %i.fv, align 8, !tbaa !8
  %index.next215 = add nuw i64 %index212, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.fw, label %middle.block216, label %vector.body211, !llvm.loop !181

middle.block216:                                  ; preds = %vector.body211
  %cmp.n217 = icmp eq i64 %i.fo, %n.vec210
  br i1 %cmp.n217, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block216
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.eh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fq, %middle.block216 ] ; 4 uses
  %i.fx = sub i64 %i.dy, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter265 = and i64 %i.fx, 3                 ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239 ] ; 3 uses
  %prol.iter267 = phi i64 [ %prol.iter267.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239 ]
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fz = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !8
  store double %i.ga, ptr %i.fy, align 8, !tbaa !8
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter267.next = add i64 %prol.iter267, 1   ; 2 uses
  %prol.iter267.cmp.not = icmp eq i64 %prol.iter267.next, %xtraiter265
  br i1 %prol.iter267.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !182

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader239 ], [ %i.gb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gc = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.dy
  %i.gd = icmp ugt i64 %i.gc, -4
  br i1 %i.gd, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !8
  store double %i.gg, ptr %i.ge, align 8, !tbaa !8
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.gh
  %i.gj = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.gh
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !8
  store double %i.gk, ptr %i.gi, align 8, !tbaa !8
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.gl
  %i.go = load double, ptr %i.gn, align 8, !tbaa !8
  store double %i.go, ptr %i.gm, align 8, !tbaa !8
  %i.gp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.gp
  %i.gr = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.gp
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !8
  store double %i.gs, ptr %i.gq, align 8, !tbaa !8
  %i.gt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gt, %i.dy
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !183

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = load <2 x double>, ptr %i.gv, align 1, !tbaa !60
  store <2 x double> %i.gw, ptr %i.gu, align 16, !tbaa !60
  %i.gx = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gy = icmp slt i64 %i.gx, %i.eh
  br i1 %i.gy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !176

_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block216, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gz, %i.ds
  br i1 %.not.i.i.i, label %_ZSt4fillIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES6_EvT_S8_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !184

bb.g:                                             ; preds = %bb.c
  %i.ha = sub nuw i64 %2, %i.k                    ; 4 uses
  %.not12.i.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %xtraiter = and i64 %i.ha, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.014.i.i.i.i.prol = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01113.i.i.i.i.prol = phi i64 [ %i.hb, %.lr.ph.i.i.i.i.prol ], [ %i.ha, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store ptr %.sroa.4.8.copyload, ptr %.014.i.i.i.i.prol, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..014.i.i.i.i.sroa_idx.prol, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hb = add i64 %.01113.i.i.i.i.prol, -1        ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !185

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa246.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.hc, %.lr.ph.i.i.i.i.prol ]
  %.014.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.hc, %.lr.ph.i.i.i.i.prol ]
  %.01113.i.i.i.i.unr = phi i64 [ %i.ha, %.lr.ph.i.i.i.i.preheader ], [ %i.hb, %.lr.ph.i.i.i.i.prol ]
  %i.hd = sub i64 %i.k, %2
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i ], [ %.014.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01113.i.i.i.i = phi i64 [ %i.hi, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store ptr %.sroa.4.8.copyload, ptr %.014.i.i.i.i, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..014.i.i.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  store ptr %.sroa.4.8.copyload, ptr %i.hf, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..014.i.i.i.i.sroa_idx.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64
  store ptr %.sroa.4.8.copyload, ptr %i.hg, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..014.i.i.i.i.sroa_idx.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96
  store ptr %.sroa.4.8.copyload, ptr %i.hh, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..014.i.i.i.i.sroa_idx.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hi = add i64 %.01113.i.i.i.i, -4             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.hi, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !186

_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g
  %i.hk = phi ptr [ %i.d, %bb.g ], [ %.lcssa246.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.hj, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.hk, ptr %i.c, align 8, !tbaa !88
  %.not11.i.i.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i70, label %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i71

_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.j
  store ptr %i.hl, ptr %i.c, align 8, !tbaa !88
  br label %_ZSt4fillIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES6_EvT_S8_RKT0_.exit

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i71 ], [ %i.hk, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i71 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.013.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(26) %.sroa.08.012.i.i.i.i.i73, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 32 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 32
  %.not.i.i.i.i.i74 = icmp eq ptr %i.hm, %i.d
  br i1 %.not.i.i.i.i.i74, label %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit76, label %.lr.ph.i.i.i.i.i71, !llvm.loop !169

_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit76: ; preds = %.lr.ph.i.i.i.i.i71
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.j
  store ptr %i.hp, ptr %i.c, align 8, !tbaa !88
  br label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit76, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85
  %.06.i.i.i79 = phi ptr [ %i.kw, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85 ], [ %1, %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit76 ] ; 4 uses
  %i.hq = load ptr, ptr %.06.i.i.i79, align 8, !tbaa !123 ; 14 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !134
  %i.ht = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !134
  %i.hv = mul i64 %i.hu, %i.hs                    ; 8 uses
  %i.hw = ptrtoint ptr %i.hq to i64               ; 4 uses
  %i.hx = and i64 %i.hw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i80 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i80, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i81

bb.h:                                             ; preds = %.lr.ph.i.i.i78
  %i.hy = lshr exact i64 %i.hw, 3
  %i.hz = and i64 %i.hy, 1
  %i.ia = tail call i64 @llvm.smin.i64(i64 %i.hz, i64 %i.hv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i81

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i81: ; preds = %bb.h, %.lr.ph.i.i.i78
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82 = phi i64 [ %i.ia, %bb.h ], [ %i.hv, %.lr.ph.i.i.i78 ] ; 11 uses
  %i.ib = sub i64 %i.hv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82 ; 2 uses
  %i.ic = sdiv i64 %i.ib, 2
  %i.id = shl nsw i64 %i.ic, 1                    ; 2 uses
  %i.ie = add nsw i64 %i.id, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82 ; 5 uses
  %i.if = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82, 0
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i81
  %min.iters.check166 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82, 4
  %i.ig = sub i64 %.sroa.4.8.copyload161, %i.hw
  %diff.check164 = icmp ugt i64 %i.ig, -32
  %or.cond236 = select i1 %min.iters.check166, i1 true, i1 %diff.check164
  br i1 %or.cond236, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader
  %n.vec168 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82, 9223372036854775804 ; 3 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next173, %vector.body169 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %index170 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %index170 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load171 = load <2 x double>, ptr %i.ii, align 8, !tbaa !8
  %wide.load172 = load <2 x double>, ptr %i.ij, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <2 x double> %wide.load171, ptr %i.ih, align 8, !tbaa !8
  store <2 x double> %wide.load172, ptr %i.ik, align 8, !tbaa !8
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next173, %n.vec168
  br i1 %i.il, label %middle.block174, label %vector.body169, !llvm.loop !187

middle.block174:                                  ; preds = %vector.body169
  %cmp.n175 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82, %n.vec168
  br i1 %cmp.n175, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader, %middle.block174
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader ], [ %n.vec168, %middle.block174 ] ; 3 uses
  %xtraiter247 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82, 3 ; 2 uses
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.prol = phi i64 [ %i.ip, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244 ] ; 3 uses
  %prol.iter249 = phi i64 [ %prol.iter249.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244 ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.prol
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.prol
  %i.io = load double, ptr %i.in, align 8, !tbaa !8
  store double %i.io, ptr %i.im, align 8, !tbaa !8
  %i.ip = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.prol, 1 ; 2 uses
  %prol.iter249.next = add i64 %prol.iter249, 1   ; 2 uses
  %prol.iter249.cmp.not = icmp eq i64 %prol.iter249.next, %xtraiter247
  br i1 %prol.iter249.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol, !llvm.loop !188

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.preheader244 ], [ %i.ip, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol ]
  %i.iq = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82
  %i.ir = icmp ugt i64 %i.iq, -4
  br i1 %i.ir, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93 = phi i64 [ %i.jh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol.loopexit ] ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93
  %i.iu = load double, ptr %i.it, align 8, !tbaa !8
  store double %i.iu, ptr %i.is, align 8, !tbaa !8
  %i.iv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.iv
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.iv
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !8
  store double %i.iy, ptr %i.iw, align 8, !tbaa !8
  %i.iz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.iz
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !8
  store double %i.jc, ptr %i.ja, align 8, !tbaa !8
  %i.jd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93, 3 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.jd
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.jd
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !8
  store double %i.jg, ptr %i.je, align 8, !tbaa !8
  %i.jh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i93, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i94.3 = icmp eq i64 %i.jh, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i94.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92, !llvm.loop !189

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i92, %middle.block174, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i81
  %i.ji = icmp sgt i64 %i.ib, 1
  br i1 %i.ji, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i90, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i84

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i84:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i90, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83
  %i.jj = icmp slt i64 %i.ie, %i.hv
  br i1 %i.jj, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i84
  %i.jk = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82, %i.id
  %i.jl = sub i64 %i.hv, %i.jk                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.jl, 4
  %i.jm = sub i64 %.sroa.4.8.copyload161, %i.hw
  %diff.check = icmp ugt i64 %i.jm, -32
  %or.cond237 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond237, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader
  %n.vec = and i64 %i.jl, -4                      ; 3 uses
  %i.jn = add i64 %i.ie, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jo = add i64 %i.ie, %index                   ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.jo ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load = load <2 x double>, ptr %i.jq, align 8, !tbaa !8
  %wide.load162 = load <2 x double>, ptr %i.jr, align 8, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store <2 x double> %wide.load, ptr %i.jp, align 8, !tbaa !8
  store <2 x double> %wide.load162, ptr %i.js, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jl, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.ph = phi i64 [ %i.ie, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader ], [ %i.jn, %middle.block ] ; 4 uses
  %i.ju = sub i64 %i.hv, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.ph
  %xtraiter250 = and i64 %i.ju, 3                 ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol:        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.prol = phi i64 [ %i.jy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243 ] ; 3 uses
  %prol.iter252 = phi i64 [ %prol.iter252.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243 ]
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.prol
  %i.jw = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.prol
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !8
  store double %i.jx, ptr %i.jv, align 8, !tbaa !8
  %i.jy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.prol, 1 ; 2 uses
  %prol.iter252.next = add i64 %prol.iter252, 1   ; 2 uses
  %prol.iter252.cmp.not = icmp eq i64 %prol.iter252.next, %xtraiter250
  br i1 %prol.iter252.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol, !llvm.loop !191

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.preheader243 ], [ %i.jy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol ]
  %i.jz = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.ph, %i.hv
  %i.ka = icmp ugt i64 %i.jz, -4
  br i1 %i.ka, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88 = phi i64 [ %i.kq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol.loopexit ] ; 6 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88
  %i.kc = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !8
  store double %i.kd, ptr %i.kb, align 8, !tbaa !8
  %i.ke = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88, 1 ; 2 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.ke
  %i.kg = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.ke
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !8
  store double %i.kh, ptr %i.kf, align 8, !tbaa !8
  %i.ki = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88, 2 ; 2 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.ki
  %i.kk = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.ki
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !8
  store double %i.kl, ptr %i.kj, align 8, !tbaa !8
  %i.km = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88, 3 ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.km
  %i.ko = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %i.km
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !8
  store double %i.kp, ptr %i.kn, align 8, !tbaa !8
  %i.kq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i88, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i89.3 = icmp eq i64 %i.kq, %i.hv
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i89.3, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87, !llvm.loop !192

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i90:                 ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i90
  %.021.i.i.i.i.i.i.i.i.i.i.i.i91 = phi i64 [ %i.ku, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i90 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEESC_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i83 ] ; 3 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i91
  %i.ks = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i91
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !60
  store <2 x double> %i.kt, ptr %i.kr, align 16, !tbaa !60
  %i.ku = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i91, 2 ; 2 uses
  %i.kv = icmp slt i64 %i.ku, %i.ie
  br i1 %i.kv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i90, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i84, !llvm.loop !176

_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i87, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i84
  %i.kw = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 32 ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.kw, %i.d
  br i1 %.not.i.i.i86, label %_ZSt4fillIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES6_EvT_S8_RKT0_.exit, label %.lr.ph.i.i.i78, !llvm.loop !184

_ZSt4fillIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES6_EvT_S8_RKT0_.exit: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i85, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i, %_ZSt22__uninitialized_move_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit76.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.kx = load ptr, ptr %0, align 8, !tbaa !77    ; 5 uses
  %i.ky = ptrtoint ptr %i.kx to i64               ; 3 uses
  %i.kz = sub i64 %i.f, %i.ky
  %i.la = ashr exact i64 %i.kz, 5                 ; 4 uses
  %i.lb = sub nsw i64 288230376151711743, %i.la
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %i.bd = getelementptr [8 x i8], ptr %i.av, i64 %i.bc
  store ptr %i.bd, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.ax, i64 noundef %i.bb, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split180.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.be = icmp slt i64 %i.ba, %1
  br i1 %i.be, label %bb.m, label %..loopexit_crit_edge.split.us186.us.us, !llvm.loop !377

..loopexit_crit_edge.split.us186.us.us:           ; preds = %bb.n
  %i.bf = icmp slt i64 %i.aw, %2
  br i1 %i.bf, label %.lr.ph183.split.us.split.us204.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !378

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us186.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bg = icmp slt i64 %i.ar, %0
  br i1 %i.bg, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !379

.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.077182.us.us.us.us = phi i64 [ %i.bh, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bh = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bh)
  %i.bi = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.bj = mul nsw i64 %.077182.us.us.us.us, %4
  %i.bk = getelementptr [8 x i8], ptr %i.at, i64 %i.bj
  store ptr %i.bk, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bi, i64 noundef %i.as, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.us188.split.us.split.us.split.us

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.bl = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bm, %bb.q ] ; 4 uses
  %i.bm = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bm)
  %i.bn = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.bo = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bp = getelementptr [8 x i8], ptr %i.bl, i64 %i.bo
  store ptr %i.bp, ptr %17, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bi, i64 noundef %i.bn, i64 noundef 0, i64 noundef 0)
          to label %bb.p unwind label %.split.us.split.us.split.us.split.us.split.us

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.bq = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.br = getelementptr [8 x i8], ptr %i.av, i64 %i.bq
  store ptr %i.br, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.bi, i64 noundef %i.bn, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.q unwind label %.split180.us.split.us.split.us.split.us.split.us

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.bs = icmp slt i64 %i.bm, %1
  br i1 %i.bs, label %bb.o, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !377

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.q
  %i.bt = icmp slt i64 %i.bh, %2
  br i1 %i.bt, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !378

.split.us188.split.split.us.split.us:             ; preds = %.lr.ph183.split.us.split.us204.us
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

.split180.split.us.split.us.split.us:             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.split.us188.split.us.split.us.split.us:          ; preds = %.lr.ph183.split.us.split.us.us.us
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.x

.split180.us.split.us.split.us.split.us.split.us: ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us198
  %.078195.us = phi i64 [ %i.bz, %..loopexit177_crit_edge.split.us198 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bz = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bz)
  %i.ca = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.cb = getelementptr [8 x i8], ptr %3, i64 %.078195.us
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph183.us, %.loopexit.us
  %.077182.us196 = phi i64 [ 0, %.lr.ph183.us ], [ %i.cc, %.loopexit.us ] ; 3 uses
  %i.cc = add nsw i64 %.077182.us196, %i.b        ; 3 uses
  %.sroa.speculated124.us197 = call i64 @llvm.smin.i64(i64 %2, i64 %i.cc)
  %i.cd = sub nsw i64 %.sroa.speculated124.us197, %.077182.us196
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ce = mul nsw i64 %.077182.us196, %4
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.ce
  store ptr %i.cf, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.cd, i64 noundef %i.ca, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us

.loopexit.us:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.cg = icmp slt i64 %i.cc, %2
  br i1 %i.cg, label %bb.r, label %..loopexit177_crit_edge.split.us198, !llvm.loop !378

..loopexit177_crit_edge.split.us198:              ; preds = %.loopexit.us
  %i.ch = icmp slt i64 %i.bz, %0
  br i1 %i.ch, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !379

.split.split.us:                                  ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us198, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.l
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.s:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #25
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.s
  br i1 %i.u, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #25
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  ret void

bb.u:                                             ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.v:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

.split.us188:                                     ; preds = %.split.us188.split.split.us.split.us, %.split.us188.split.us.split.us.split.us, %.split.split.us
  %.us-phi = phi { ptr, i32 } [ %i.ci, %.split.split.us ], [ %i.bu, %.split.us188.split.split.us.split.us ], [ %i.bw, %.split.us188.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.x

bb.w:                                             ; preds = %.split180.us.split.us.split.us.split.us.split.us, %.split180.split.us.split.us.split.us
  %.us-phi181 = phi { ptr, i32 } [ %i.bv, %.split180.split.us.split.us.split.us ], [ %i.by, %.split180.us.split.us.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.x

bb.x:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %bb.w, %.split.us188
  %.pn.pn = phi { ptr, i32 } [ %.us-phi, %.split.us188 ], [ %.us-phi181, %bb.w ], [ %i.bx, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ai, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ag) #25
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.x, %bb.y, %bb.v, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %i.ck, %bb.v ], [ %.pn.pn, %bb.y ], [ %.pn.pn, %bb.x ]
  br i1 %i.u, label %bb.z, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.z:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #25
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !380
  %i.b = sdiv i64 %4, 4
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sub i64 %4, %i.c
  %i.e = sdiv i64 %i.d, 2
  %i.f = shl nsw i64 %i.e, 1
  %i.g = add i64 %i.f, %i.c                       ; 3 uses
  %i.h = icmp sgt i64 %4, 3
  br i1 %i.h, label %.preheader64.lr.ph, label %.preheader63

.preheader64.lr.ph:                               ; preds = %bb.a
  %i.i = icmp sgt i64 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.i, label %.preheader64.us.preheader, label %.preheader63

.preheader64.us.preheader:                        ; preds = %.preheader64.lr.ph
  %xtraiter = and i64 %3, 1
  %i.k = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod123 = trunc i64 %3 to i1
  br label %.preheader64.us

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge.us
  %.05568.us = phi i64 [ %i.ax, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 4 uses
  %.05667.us = phi i64 [ %.lcssa120, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader64.us.new

.preheader64.us.new:                              ; preds = %.preheader64.us, %.preheader64.us.new
  %.05466.us = phi i64 [ %i.ak, %.preheader64.us.new ], [ 0, %.preheader64.us ] ; 3 uses
  %.15765.us = phi i64 [ %i.aj, %.preheader64.us.new ], [ %.05667.us, %.preheader64.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.us.new ], [ 0, %.preheader64.us ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !260
  %i.m = load i64, ptr %i.j, align 8, !tbaa !262
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !60
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !60
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  store <2 x double> %i.q, ptr %i.u, align 16, !tbaa !60
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x double> %i.t, ptr %i.v, align 16, !tbaa !60
  %i.w = or disjoint i64 %.05466.us, 1
  %i.x = load ptr, ptr %2, align 8, !tbaa !260
  %i.y = load i64, ptr %i.j, align 8, !tbaa !262
  %i.z = mul nsw i64 %i.y, %i.w                   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %.05568.us ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !60
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !60
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %.15765.us ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  store <2 x double> %i.ac, ptr %i.ah, align 16, !tbaa !60
  %i.ai = getelementptr i8, ptr %i.ag, i64 48
  store <2 x double> %i.af, ptr %i.ai, align 16, !tbaa !60
  %i.aj = add nsw i64 %.15765.us, 8               ; 3 uses
  %i.ak = add nuw nsw i64 %.05466.us, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader64.us.new, !llvm.loop !381

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader64.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader64.us
  %.05466.us.epil.init = phi i64 [ 0, %.preheader64.us ], [ %i.ak, %._crit_edge.us.unr-lcssa ]
  %.15765.us.epil.init = phi i64 [ %.05667.us, %.preheader64.us ], [ %i.aj, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.al = load ptr, ptr %2, align 8, !tbaa !260
  %i.am = load i64, ptr %i.j, align 8, !tbaa !262
  %i.an = mul nsw i64 %i.am, %.05466.us.epil.init ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %.05568.us ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !60
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.an
  %i.at = load <2 x double>, ptr %i.as, align 1, !tbaa !60
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %.15765.us.epil.init ; 2 uses
  store <2 x double> %i.aq, ptr %i.au, align 16, !tbaa !60
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <2 x double> %i.at, ptr %i.av, align 16, !tbaa !60
  %i.aw = add nsw i64 %.15765.us.epil.init, 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa120 = phi i64 [ %i.aj, %._crit_edge.us.unr-lcssa ], [ %i.aw, %.epil.preheader ] ; 2 uses
  %i.ax = add nuw nsw i64 %.05568.us, 4           ; 3 uses
  %i.ay = icmp slt i64 %i.ax, %i.c
  br i1 %i.ay, label %.preheader64.us, label %.preheader63, !llvm.loop !382

.preheader63:                                     ; preds = %._crit_edge.us, %.preheader64.lr.ph, %bb.a
  %.056.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.preheader64.lr.ph ], [ %.lcssa120, %._crit_edge.us ] ; 3 uses
  %.055.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %.preheader64.lr.ph ], [ %i.ax, %._crit_edge.us ] ; 6 uses
  %i.az = icmp slt i64 %.055.lcssa, %i.g
  br i1 %i.az, label %.preheader62.lr.ph, label %.preheader61

.preheader62.lr.ph:                               ; preds = %.preheader63
  %i.ba = icmp sgt i64 %3, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.ba, label %.preheader62.us.preheader, label %.preheader62.preheader

.preheader62.us.preheader:                        ; preds = %.preheader62.lr.ph
  %xtraiter125 = and i64 %3, 1
  %i.bc = icmp eq i64 %3, 1
  %unroll_iter129 = and i64 %3, 9223372036854775806
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  %lcmp.mod128 = trunc i64 %3 to i1
  br label %.preheader62.us

.preheader62.preheader:                           ; preds = %.preheader62.lr.ph
  %i.bd = add i64 %.055.lcssa, 2
  %smax95 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.bd)
  %i.be = xor i64 %.055.lcssa, -1
  %i.bf = add i64 %smax95, %i.be
  %i.bg = and i64 %i.bf, -2
  %i.bh = add i64 %.055.lcssa, %i.bg
  %i.bi = add i64 %i.bh, 2
  br label %.preheader61

.preheader62.us:                                  ; preds = %.preheader62.us.preheader, %._crit_edge.us78
  %.175.us = phi i64 [ %i.cj, %._crit_edge.us78 ], [ %.055.lcssa, %.preheader62.us.preheader ] ; 4 uses
  %.25874.us = phi i64 [ %.lcssa118, %._crit_edge.us78 ], [ %.056.lcssa, %.preheader62.us.preheader ] ; 2 uses
  br i1 %i.bc, label %.epil.preheader124, label %.preheader62.us.new

.preheader62.us.new:                              ; preds = %.preheader62.us, %.preheader62.us.new
  %.05373.us = phi i64 [ %i.ca, %.preheader62.us.new ], [ 0, %.preheader62.us ] ; 3 uses
  %.372.us = phi i64 [ %i.bz, %.preheader62.us.new ], [ %.25874.us, %.preheader62.us ] ; 3 uses
  %niter130 = phi i64 [ %niter130.next.1, %.preheader62.us.new ], [ 0, %.preheader62.us ]
  %i.bj = load ptr, ptr %2, align 8, !tbaa !260
  %i.bk = load i64, ptr %i.bb, align 8, !tbaa !262
  %i.bl = mul nsw i64 %i.bk, %.05373.us
  %i.bm = getelementptr [8 x i8], ptr %i.bj, i64 %.175.us
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load <2 x double>, ptr %i.bn, align 1, !tbaa !60
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us
  store <2 x double> %i.bo, ptr %i.bp, align 16, !tbaa !60
  %i.bq = or disjoint i64 %.05373.us, 1
  %i.br = load ptr, ptr %2, align 8, !tbaa !260
  %i.bs = load i64, ptr %i.bb, align 8, !tbaa !262
  %i.bt = mul nsw i64 %i.bs, %i.bq
  %i.bu = getelementptr [8 x i8], ptr %i.br, i64 %.175.us
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load <2 x double>, ptr %i.bv, align 1, !tbaa !60
  %i.bx = getelementptr [8 x i8], ptr %1, i64 %.372.us
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  store <2 x double> %i.bw, ptr %i.by, align 16, !tbaa !60
  %i.bz = add nsw i64 %.372.us, 4                 ; 3 uses
  %i.ca = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter130.next.1 = add nuw nsw i64 %niter130, 2 ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !383

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod126.not, label %._crit_edge.us78, label %.epil.preheader124

.epil.preheader124:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.ca, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.cb = load ptr, ptr %2, align 8, !tbaa !260
  %i.cc = load i64, ptr %i.bb, align 8, !tbaa !262
  %i.cd = mul nsw i64 %i.cc, %.05373.us.epil.init
  %i.ce = getelementptr [8 x i8], ptr %i.cb, i64 %.175.us
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !60
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cg, ptr %i.ch, align 16, !tbaa !60
  %i.ci = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader124
  %.lcssa118 = phi i64 [ %i.bz, %._crit_edge.us78.unr-lcssa ], [ %i.ci, %.epil.preheader124 ] ; 2 uses
  %i.cj = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.ck = icmp slt i64 %i.cj, %i.g
  br i1 %i.ck, label %.preheader62.us, label %.preheader61, !llvm.loop !384

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa118, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bi, %.preheader62.preheader ], [ %i.cj, %._crit_edge.us78 ] ; 3 uses
  %i.cl = icmp slt i64 %.1.lcssa, %4
  %i.cm = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.cl, %i.cm
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %2, align 8, !tbaa !260   ; 2 uses
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !262 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 5
  %ident.check.not = icmp eq i64 %i.cq, 1
  %or.cond116 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter131 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.285 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %i.do, %._crit_edge ] ; 2 uses
  %.484 = phi i64 [ %.258.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cr = getelementptr [8 x i8], ptr %i.co, i64 %.285 ; 6 uses
  br i1 %or.cond116, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.cs = add i64 %.1.lcssa, %indvar
  %i.ct = shl i64 %i.cs, 3
  %i.cu = add i64 %i.ct, %i.cp
  %i.cv = sub i64 %i.a, %i.cu
  %i.cw = shl i64 %.484, 3
  %i.cx = add i64 %i.cv, %i.cw
  %i.cy = add i64 %i.cx, -1
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cz = add i64 %.484, %n.vec                   ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %1, i64 %.484
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = getelementptr [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %wide.load = load <2 x double>, ptr %i.db, align 8, !tbaa !8
  %wide.load114 = load <2 x double>, ptr %i.dc, align 8, !tbaa !8
  %i.dd = getelementptr [8 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %wide.load, ptr %i.dd, align 8, !tbaa !8
  store <2 x double> %wide.load114, ptr %i.de, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.083.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.582.ph = phi i64 [ %.484, %vector.memcheck ], [ %.484, %.preheader ], [ %i.cz, %middle.block ] ; 2 uses
  br i1 %lcmp.mod132.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.083.prol = phi i64 [ %i.dl, %scalar.ph.prol ], [ %.083.ph, %scalar.ph.preheader ] ; 2 uses
  %.582.prol = phi i64 [ %i.dj, %scalar.ph.prol ], [ %.582.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dg = mul nsw i64 %i.cq, %.083.prol
  %i.dh = getelementptr [8 x i8], ptr %i.cr, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8
  %i.dj = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.di, ptr %i.dk, align 8, !tbaa !8
  %i.dl = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !386

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa117.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.dj, %scalar.ph.prol ]
  %.083.unr = phi i64 [ %.083.ph, %scalar.ph.preheader ], [ %i.dl, %scalar.ph.prol ]
  %.582.unr = phi i64 [ %.582.ph, %scalar.ph.preheader ], [ %i.dj, %scalar.ph.prol ]
  %i.dm = sub nsw i64 %.083.ph, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cz, %middle.block ], [ %.lcssa117.unr, %scalar.ph.prol.loopexit ], [ %i.ej, %scalar.ph ]
  %i.do = add nuw nsw i64 %.285, 1                ; 2 uses
  %exitcond98.not = icmp eq i64 %i.do, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond98.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !387

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.em, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ej, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dp = mul nsw i64 %i.cq, %.083
  %i.dq = getelementptr [8 x i8], ptr %i.cr, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !8
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dr, ptr %i.ds, align 8, !tbaa !8
  %i.dt = add nuw nsw i64 %.083, 1
  %i.du = mul nsw i64 %i.cq, %i.dt
  %i.dv = getelementptr [8 x i8], ptr %i.cr, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !8
  %i.dx = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  store double %i.dw, ptr %i.dy, align 8, !tbaa !8
  %i.dz = add nuw nsw i64 %.083, 2
  %i.ea = mul nsw i64 %i.cq, %i.dz
  %i.eb = getelementptr [8 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !8
  %i.ed = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  store double %i.ec, ptr %i.ee, align 8, !tbaa !8
  %i.ef = add nuw nsw i64 %.083, 3
  %i.eg = mul nsw i64 %i.cq, %i.ef
  %i.eh = getelementptr [8 x i8], ptr %i.cr, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !8
  %i.ej = add nsw i64 %.582, 4                    ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.el = getelementptr i8, ptr %i.ek, i64 24
  store double %i.ei, ptr %i.el, align 8, !tbaa !8
  %i.em = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %i.em, %3
  br i1 %exitcond97.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !388

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !389
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !260    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !262  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %i.l = add nsw i64 %i.c, -4                     ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %min.iters.check = icmp ult i64 %3, 60
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.dc, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.ae = mul nsw i64 %i.g, %.04460.us
  %i.af = getelementptr [8 x i8], ptr %i.e, i64 %i.ae ; 4 uses
  %i.ag = or disjoint i64 %.04460.us, 1
  %i.ah = mul nsw i64 %i.g, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  %i.aj = or disjoint i64 %.04460.us, 2
  %i.ak = mul nsw i64 %i.g, %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.e, i64 %i.ak ; 4 uses
  %i.am = or disjoint i64 %.04460.us, 3
  %i.an = mul nsw i64 %i.g, %i.am
  %i.ao = getelementptr [8 x i8], ptr %i.e, i64 %i.an ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ap = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.ar = icmp ult ptr %i.aq, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.at = icmp ult ptr %i.as, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ap ; 2 uses
  %i.au = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.av = icmp ult ptr %i.au, %scevgep84
  %i.aw = or i1 %i.av, %mul.overflow
  %i.ax = or i1 %i.at, %i.ar
  %i.ay = or i1 %i.ax, %i.aw
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.az = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.az ; 4 uses
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.az ; 4 uses
  %bound0 = icmp ult ptr %scevgep85, %scevgep89
  %bound1 = icmp ult ptr %scevgep88, %scevgep87
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %scevgep85, %scevgep91
  %bound196 = icmp ult ptr %scevgep90, %scevgep87
  %found.conflict97 = and i1 %bound095, %bound196
  %i.ba = or i1 %found.conflict97, %stride.check98
  %conflict.rdx = or i1 %found.conflict, %i.ba
  %bound099 = icmp ult ptr %scevgep85, %scevgep93
  %bound1100 = icmp ult ptr %scevgep92, %scevgep87
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx103 = or i1 %found.conflict101, %conflict.rdx
  %bound0104 = icmp ult ptr %scevgep85, %scevgep94
  %bound1105 = icmp ult ptr %i.e, %scevgep87
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx108 = or i1 %found.conflict106, %conflict.rdx103
  br i1 %conflict.rdx108, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bb = add i64 %.04559.us, %i.ad               ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load = load <2 x double>, ptr %i.bd, align 8, !tbaa !8, !alias.scope !390
  %.idx = shl i64 %index, 5
  %i.be = getelementptr i8, ptr %i.bc, i64 %.idx
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bf, align 8, !tbaa !8, !alias.scope !393
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bg, align 8, !tbaa !8, !alias.scope !395
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bh, align 8, !tbaa !8, !alias.scope !397
  %i.bi = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bj = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bi, <4 x double> %i.bj, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.be, align 8, !tbaa !8, !alias.scope !399, !noalias !401
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.bb, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !8
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bm, ptr %i.bn, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !8
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  store double %i.bp, ptr %i.bq, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us.ph
  %i.bs = load double, ptr %i.br, align 8, !tbaa !8
  %i.bt = getelementptr i8, ptr %i.bn, i64 16
  store double %i.bs, ptr %i.bt, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us.ph
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !8
  %i.bw = getelementptr i8, ptr %i.bn, i64 24
  store double %i.bv, ptr %i.bw, align 8, !tbaa !8
  %i.bx = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.by = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bx, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.bx, %scalar.ph.prol ]
  %i.bz = icmp eq i64 %3, %.neg
  br i1 %i.bz, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.db, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.da, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !8
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cb, ptr %i.cc, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr i8, ptr %i.cc, i64 8
  store double %i.ce, ptr %i.cf, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !8
  %i.ci = getelementptr i8, ptr %i.cc, i64 16
  store double %i.ch, ptr %i.ci, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr i8, ptr %i.cc, i64 24
  store double %i.ck, ptr %i.cl, align 8, !tbaa !8
  %i.cm = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !8
  %i.cp = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 32
  store double %i.co, ptr %i.cq, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cm
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr i8, ptr %i.cp, i64 40
  store double %i.cs, ptr %i.ct, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cm
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr i8, ptr %i.cp, i64 48
  store double %i.cv, ptr %i.cw, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cm
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !8
  %i.cz = getelementptr i8, ptr %i.cp, i64 56
  store double %i.cy, ptr %i.cz, align 8, !tbaa !8
  %i.da = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.db = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.db, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !403

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.bb, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.da, %scalar.ph ] ; 2 uses
  %i.dc = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dd = icmp slt i64 %i.dc, %i.c
  br i1 %i.dd, label %.lr.ph.us, label %.preheader, !llvm.loop !404

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  %.2.lcssa = phi i64 [ %.1170, %.lr.ph.split ], [ %i.eh, %.preheader140 ] ; 2 uses
  %i.dk = icmp sge i64 %.0128.lcssa, %3
  %brmerge = or i1 %i.dk, %.not.not
  br i1 %brmerge, label %._crit_edge159.split, label %.preheader139.lr.ph.split.split

.preheader139.lr.ph.split.split:                  ; preds = %.preheader141
  %i.dl = load ptr, ptr %2, align 8, !tbaa !263
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !265 ; 4 uses
  %i.dn = mul nsw i64 %i.dm, %.1133167
  %i.do = add nsw i64 %.1133167, 1
  %i.dp = mul nsw i64 %i.dm, %i.do
  %i.dq = add nsw i64 %.1133167, 2
  %i.dr = mul nsw i64 %i.dm, %i.dq
  %i.ds = add nsw i64 %.1133167, 3
  %i.dt = mul nsw i64 %i.dm, %i.ds
  br label %.preheader139

.preheader140:                                    ; preds = %.preheader140.preheader, %.preheader140
  %.2146 = phi i64 [ %i.eh, %.preheader140 ], [ %.1170, %.preheader140.preheader ] ; 2 uses
  %.0128145 = phi i64 [ %i.ei, %.preheader140 ], [ 0, %.preheader140.preheader ] ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146 ; 2 uses
  %i.dv = load ptr, ptr %2, align 8, !tbaa !263
  %i.dw = load i64, ptr %i.e, align 8, !tbaa !265 ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.dv, i64 %.0128145 ; 2 uses
  %i.dy = mul nsw i64 %i.dw, %.1133167
  %i.dz = getelementptr [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !60 ; 2 uses
  %i.eb = mul nsw i64 %i.dw, %i.dj
  %i.ec = getelementptr [8 x i8], ptr %i.dx, i64 %i.eb
  %i.ed = load <2 x double>, ptr %i.ec, align 1, !tbaa !60 ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ea, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.ef = shufflevector <2 x double> %i.ea, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ef, ptr %i.du, align 16, !tbaa !60
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  store <2 x double> %i.ee, ptr %i.eg, align 16, !tbaa !60
  %i.eh = add nsw i64 %.2146, %i.t                ; 2 uses
  %i.ei = add nuw nsw i64 %.0128145, 2            ; 3 uses
  %i.ej = icmp slt i64 %i.ei, %i.c
  br i1 %i.ej, label %.preheader140, label %.preheader141, !llvm.loop !563

.preheader139:                                    ; preds = %.preheader139.lr.ph.split.split, %..loopexit_crit_edge
  %.4158 = phi i64 [ %.2.lcssa, %.preheader139.lr.ph.split.split ], [ %.lcssa256, %..loopexit_crit_edge ] ; 5 uses
  %.2130156 = phi i64 [ %.0128.lcssa, %.preheader139.lr.ph.split.split ], [ %i.fb, %..loopexit_crit_edge ] ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %i.dl, i64 %.2130156 ; 4 uses
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.dn
  %i.em = load double, ptr %i.el, align 8, !tbaa !8
  %i.en = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158
  store double %i.em, ptr %i.en, align 8, !tbaa !8
  %i.eo = getelementptr [8 x i8], ptr %i.ek, i64 %i.dp
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !8
  %i.eq = add nsw i64 %.4158, 2                   ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.es = getelementptr i8, ptr %i.er, i64 8
  store double %i.ep, ptr %i.es, align 8, !tbaa !8
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader139
  %i.et = getelementptr [8 x i8], ptr %i.ek, i64 %i.dr
  %i.eu = load double, ptr %i.et, align 8, !tbaa !8
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eq
  store double %i.eu, ptr %i.ev, align 8, !tbaa !8
  %i.ew = getelementptr [8 x i8], ptr %i.ek, i64 %i.dt
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !8
  %i.ey = add nsw i64 %.4158, 4
  %i.ez = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.fa = getelementptr i8, ptr %i.ez, i64 24
  store double %i.ex, ptr %i.fa, align 8, !tbaa !8
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.c, %.preheader139
  %.lcssa256 = phi i64 [ %i.ey, %bb.c ], [ %i.eq, %.preheader139 ] ; 2 uses
  %i.fb = add nuw nsw i64 %.2130156, 1            ; 2 uses
  %exitcond201.not = icmp eq i64 %i.fb, %3
  br i1 %exitcond201.not, label %._crit_edge159.split, label %.preheader139, !llvm.loop !564

._crit_edge159.split:                             ; preds = %..loopexit_crit_edge, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %.lcssa256, %..loopexit_crit_edge ] ; 2 uses
  %i.fc = add i64 %.1133167, %indvars.iv          ; 3 uses
  %i.fd = icmp slt i64 %i.fc, %i.r
  br i1 %i.fd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !562

._crit_edge:                                      ; preds = %._crit_edge159.split, %._crit_edge159.split.us.us, %bb.b
  %.1133.lcssa = phi i64 [ %.0132175, %bb.b ], [ %i.z, %._crit_edge159.split.us.us ], [ %i.fc, %._crit_edge159.split ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0122178, %bb.b ], [ %.4.lcssa.us, %._crit_edge159.split.us.us ], [ %.4.lcssa, %._crit_edge159.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %.preheader137, label %bb.b

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge182
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge182 ] ; 2 uses
  %.8185 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge182 ] ; 5 uses
  %.2134184 = phi i64 [ %.1133.lcssa, %.preheader.lr.ph.split ], [ %i.fx, %._crit_edge182 ] ; 2 uses
  %i.fe = mul nsw i64 %i.j, %.2134184
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.fe ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ff = mul i64 %i.o, %indvar
  %i.fg = add i64 %i.n, %i.ff
  %i.fh = shl i64 %.8185, 3
  %i.fi = add i64 %i.fg, %i.fh
  %i.fj = add i64 %i.fi, -1
  %diff.check = icmp ult i64 %i.fj, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fk = add i64 %.8185, %n.vec                  ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %1, i64 %.8185
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !8
  %wide.load250 = load <2 x double>, ptr %i.fn, align 8, !tbaa !8
  %i.fo = getelementptr [8 x i8], ptr %i.fl, i64 %index ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x double> %wide.load, ptr %i.fo, align 8, !tbaa !8
  store <2 x double> %wide.load250, ptr %i.fp, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !565

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge182, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.0180.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.9179.ph = phi i64 [ %.8185, %vector.memcheck ], [ %.8185, %.preheader ], [ %i.fk, %middle.block ] ; 2 uses
  br i1 %lcmp.mod263.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0180.prol = phi i64 [ %i.fu, %scalar.ph.prol ], [ %.0180.ph, %scalar.ph.preheader ] ; 2 uses
  %.9179.prol = phi i64 [ %i.fs, %scalar.ph.prol ], [ %.9179.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180.prol
  %i.fr = load double, ptr %gep.prol, align 8, !tbaa !8
  %i.fs = add nsw i64 %.9179.prol, 1              ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179.prol
  store double %i.fr, ptr %i.ft, align 8, !tbaa !8
  %i.fu = add nuw nsw i64 %.0180.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter262
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !566

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa252.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.fs, %scalar.ph.prol ]
  %.0180.unr = phi i64 [ %.0180.ph, %scalar.ph.preheader ], [ %i.fu, %scalar.ph.prol ]
  %.9179.unr = phi i64 [ %.9179.ph, %scalar.ph.preheader ], [ %i.fs, %scalar.ph.prol ]
  %i.fv = sub nsw i64 %.0180.ph, %3
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %._crit_edge182, label %scalar.ph

._crit_edge182:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.fk, %middle.block ], [ %.lcssa252.unr, %scalar.ph.prol.loopexit ], [ %i.gk, %scalar.ph ]
  %i.fx = add nuw nsw i64 %.2134184, 1            ; 2 uses
  %exitcond211.not = icmp eq i64 %i.fx, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond211.not, label %._crit_edge186.split, label %.preheader, !llvm.loop !567

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0180 = phi i64 [ %i.gn, %scalar.ph ], [ %.0180.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.9179 = phi i64 [ %i.gk, %scalar.ph ], [ %.9179.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %i.fy = load double, ptr %gep, align 8, !tbaa !8
  %i.fz = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.fy, ptr %i.fz, align 8, !tbaa !8
  %i.ga = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.ga, i64 8
  %i.gb = load double, ptr %gep.1, align 8, !tbaa !8
  %i.gc = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store double %i.gb, ptr %i.gd, align 8, !tbaa !8
  %i.ge = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.ge, i64 16
  %i.gf = load double, ptr %gep.2, align 8, !tbaa !8
  %i.gg = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  store double %i.gf, ptr %i.gh, align 8, !tbaa !8
  %i.gi = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.gi, i64 24
  %i.gj = load double, ptr %gep.3, align 8, !tbaa !8
  %i.gk = add nsw i64 %.9179, 4                   ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  store double %i.gj, ptr %i.gm, align 8, !tbaa !8
  %i.gn = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond210.not.3 = icmp eq i64 %i.gn, %3
  br i1 %exitcond210.not.3, label %._crit_edge182, label %scalar.ph, !llvm.loop !568

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS ROWMAJOR", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !569
  %i.b = sdiv i64 %4, 4                           ; 3 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 3 uses
  %i.d = icmp sgt i64 %4, 3
  %i.e = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader43.lr.ph.split.us, label %.preheader42

.preheader43.lr.ph.split.us:                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %2, align 8, !tbaa !263    ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !265  ; 4 uses
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep66 = getelementptr i8, ptr %1, i64 16
  %scevgep68 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep71 = getelementptr i8, ptr %1, i64 %i.j
  %7 = shl i64 %i.b, 5
  %8 = shl i64 %3, 3
  %9 = getelementptr i8, ptr %i.g, i64 %7
  %i.k = getelementptr i8, ptr %9, i64 %8
  %scevgep73 = getelementptr i8, ptr %i.k, i64 -8
  %min.iters.check = icmp ult i64 %3, 44
  %ident.check = icmp ne i64 %i.h, 1
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.l = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader43.us

.preheader43.us:                                  ; preds = %._crit_edge.us, %.preheader43.lr.ph.split.us
  %.03447.us = phi i64 [ 0, %.preheader43.lr.ph.split.us ], [ %i.cd, %._crit_edge.us ] ; 2 uses
  %.03546.us = phi i64 [ 0, %.preheader43.lr.ph.split.us ], [ %.lcssa64, %._crit_edge.us ] ; 7 uses
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %.03447.us ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader43.us
  %i.n = shl i64 %.03546.us, 3                    ; 3 uses
  %scevgep65 = getelementptr i8, ptr %scevgep, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %scevgep65, i64 %mul.result
  %i.p = icmp ult ptr %i.o, %scevgep65
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.n ; 2 uses
  %i.q = getelementptr i8, ptr %scevgep67, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %scevgep67
  %i.s = or i1 %i.r, %mul.overflow
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.n ; 2 uses
  %i.t = getelementptr i8, ptr %scevgep69, i64 %mul.result
  %i.u = icmp ult ptr %i.t, %scevgep69
  %i.v = or i1 %i.p, %ident.check
  %i.w = or i1 %i.v, %i.s
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.y = shl i64 %.03546.us, 3                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %1, i64 %i.y
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.y
  %bound0 = icmp ult ptr %scevgep70, %scevgep73
  %bound1 = icmp ult ptr %i.g, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.z = add i64 %.03546.us, %i.l                 ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %1, i64 %.03546.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !8, !alias.scope !570
  %.idx = shl i64 %index, 5
  %i.ac = getelementptr i8, ptr %i.aa, i64 %.idx
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load74 = load <2 x double>, ptr %i.ad, align 8, !tbaa !8, !alias.scope !570
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load75 = load <2 x double>, ptr %i.ae, align 8, !tbaa !8, !alias.scope !570
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %wide.load76 = load <2 x double>, ptr %i.af, align 8, !tbaa !8, !alias.scope !570
  %i.ag = shufflevector <2 x double> %wide.load, <2 x double> %wide.load74, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ah = shufflevector <2 x double> %wide.load75, <2 x double> %wide.load76, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.ag, <4 x double> %i.ah, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ac, align 8, !tbaa !8, !alias.scope !573, !noalias !570
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !575

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader43.us, %middle.block
  %.03345.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader43.us ], [ %n.vec, %middle.block ] ; 4 uses
  %.144.us.ph = phi i64 [ %.03546.us, %vector.memcheck ], [ %.03546.us, %vector.scevcheck ], [ %.03546.us, %.preheader43.us ], [ %i.z, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.03345.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aj = mul nsw i64 %i.h, %.03345.us.ph
  %i.ak = getelementptr [8 x i8], ptr %i.m, i64 %i.aj ; 4 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !8
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %.144.us.ph ; 4 uses
  store double %i.al, ptr %i.am, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  store double %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !8
  %i.as = getelementptr i8, ptr %i.am, i64 16
  store double %i.ar, ptr %i.as, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr i8, ptr %i.am, i64 24
  store double %i.au, ptr %i.av, align 8, !tbaa !8
  %i.aw = add nsw i64 %.144.us.ph, 4              ; 2 uses
  %i.ax = or disjoint i64 %.03345.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa96.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %.03345.us.unr = phi i64 [ %.03345.us.ph, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %.144.us.unr = phi i64 [ %.144.us.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %i.ay = icmp eq i64 %3, %.neg
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03345.us = phi i64 [ %i.cc, %scalar.ph ], [ %.03345.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.144.us = phi i64 [ %i.cb, %scalar.ph ], [ %.144.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.az = mul nsw i64 %i.h, %.03345.us
  %i.ba = getelementptr [8 x i8], ptr %i.m, i64 %i.az ; 4 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %.144.us ; 4 uses
  store double %i.bb, ptr %i.bc, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  store double %i.be, ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !8
  %i.bi = getelementptr i8, ptr %i.bc, i64 16
  store double %i.bh, ptr %i.bi, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr i8, ptr %i.bc, i64 24
  store double %i.bk, ptr %i.bl, align 8, !tbaa !8
  %i.bm = add nuw nsw i64 %.03345.us, 1
  %i.bn = mul nsw i64 %i.h, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.m, i64 %i.bn ; 4 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !8
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %.144.us ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  store double %i.bp, ptr %i.br, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !8
  %i.bu = getelementptr i8, ptr %i.bq, i64 40
  store double %i.bt, ptr %i.bu, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8
  %i.bx = getelementptr i8, ptr %i.bq, i64 48
  store double %i.bw, ptr %i.bx, align 8, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bz = load double, ptr %i.by, align 8, !tbaa !8
  %i.ca = getelementptr i8, ptr %i.bq, i64 56
  store double %i.bz, ptr %i.ca, align 8, !tbaa !8
  %i.cb = add nsw i64 %.144.us, 8                 ; 2 uses
  %i.cc = add nuw nsw i64 %.03345.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cc, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !576

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa64 = phi i64 [ %i.z, %middle.block ], [ %.lcssa96.unr, %scalar.ph.prol.loopexit ], [ %i.cb, %scalar.ph ] ; 2 uses
  %i.cd = add nuw nsw i64 %.03447.us, 4           ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %i.c
  br i1 %i.ce, label %.preheader43.us, label %.preheader42, !llvm.loop !577

.preheader42:                                     ; preds = %._crit_edge.us, %bb.a
  %.035.lcssa = phi i64 [ 0, %bb.a ], [ %.lcssa64, %._crit_edge.us ]
  %i.cf = icmp slt i64 %i.c, %4
  %i.cg = icmp sgt i64 %3, 0
  %or.cond63 = and i1 %i.cf, %i.cg
  br i1 %or.cond63, label %.preheader.lr.ph.split, label %._crit_edge53.split

.preheader.lr.ph.split:                           ; preds = %.preheader42
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %2, align 8, !tbaa !263   ; 2 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = load i64, ptr %i.ch, align 8, !tbaa !265 ; 6 uses
  %i.cl = shl i64 %i.b, 5
  %i.cm = add i64 %i.cl, %i.cj
  %min.iters.check82 = icmp ugt i64 %3, 5
  %ident.check79.not = icmp eq i64 %i.ck, 1
  %or.cond94 = select i1 %min.iters.check82, i1 %ident.check79.not, i1 false
  %n.vec84 = and i64 %3, 9223372036854775804      ; 4 uses
  %cmp.n91 = icmp eq i64 %3, %n.vec84
  %xtraiter97 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.03252 = phi i64 [ %i.c, %.preheader.lr.ph.split ], [ %i.dj, %._crit_edge ] ; 2 uses
  %.251 = phi i64 [ %.035.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cn = getelementptr [8 x i8], ptr %i.ci, i64 %.03252 ; 6 uses
  br i1 %or.cond94, label %vector.memcheck80, label %scalar.ph81.preheader

vector.memcheck80:                                ; preds = %.preheader
  %i.co = shl i64 %indvar, 3
  %i.cp = add i64 %i.cm, %i.co
  %i.cq = sub i64 %i.a, %i.cp
  %i.cr = shl i64 %.251, 3
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = add i64 %i.cs, -1
  %diff.check = icmp ult i64 %i.ct, 31
  br i1 %diff.check, label %scalar.ph81.preheader, label %vector.ph83

vector.ph83:                                      ; preds = %vector.memcheck80
  %i.cu = add i64 %.251, %n.vec84                 ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %1, i64 %.251
end_hunk_3
