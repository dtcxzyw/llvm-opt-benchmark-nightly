Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_calib?download=true
inline.NumInlined: 6074
inline.NumDeleted: 3139
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4rankEv:bb.a
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
  %i.cd = sub nsw i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
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
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26, !inline_history !85
  br label %_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit

_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i, %bb.c
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(640) dereferenceable(688) %i.a) #25, !inline_history !85
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o12EdgeSE3CalibD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 264), ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #26, !inline_history !85
  br label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i.i

_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZN3g2o12EdgeSE3CalibD0Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26, !inline_history !85
  br label %_ZN3g2o12EdgeSE3CalibD0Ev.exit

_ZN3g2o12EdgeSE3CalibD0Ev.exit:                   ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i.i, %bb.c
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(640) dereferenceable(688) %i.a) #25, !inline_history !85
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(688) %i.a, i64 noundef 688) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13HessianHelperESaIS6_EE17_M_default_appendEm:bb.a
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
  %i.av = sub nsw i64 %i.ap, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
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
  %i.ee = sub nsw i64 %i.dy, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
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
  %i.ib = sub nsw i64 %i.hv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i82 ; 2 uses
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
  %i.lc = icmp ult i64 %i.lb, %2
  br i1 %i.lc, label %bb.j, label %_ZNKSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE12_M_check_lenEmPKc.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZNKSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.i
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.la, i64 %2)
  %i.ld = add nsw i64 %.sroa.speculated.i, %i.la  ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.la
  %i.lf = tail call i64 @llvm.umin.i64(i64 %i.ld, i64 288230376151711743)
  %i.lg = select i1 %i.le, i64 288230376151711743, i64 %i.lf ; 3 uses
  %i.lh = ptrtoint ptr %1 to i64
  %i.li = sub i64 %i.lh, %i.ky
  %.not.i = icmp eq i64 %i.lg, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.lj = shl nuw nsw i64 %i.lg, 5
  %i.lk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #28
  br label %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE12_M_check_lenEmPKc.exit, %bb.k
  %i.ll = phi ptr [ %i.lk, %bb.k ], [ null, %_ZNKSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.li ; 2 uses
  %xtraiter268 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %.lr.ph.i.i.i.i97.prol.loopexit, label %.lr.ph.i.i.i.i97.prol

.lr.ph.i.i.i.i97.prol:                            ; preds = %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i97.prol
  %.014.i.i.i.i98.prol = phi ptr [ %i.lo, %.lr.ph.i.i.i.i97.prol ], [ %i.lm, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ] ; 2 uses
  %.01113.i.i.i.i99.prol = phi i64 [ %i.ln, %.lr.ph.i.i.i.i97.prol ], [ %2, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ]
  %prol.iter270 = phi i64 [ %prol.iter270.next, %.lr.ph.i.i.i.i97.prol ], [ 0, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.014.i.i.i.i98.prol, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.ln = add i64 %.01113.i.i.i.i99.prol, -1      ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98.prol, i64 32 ; 2 uses
  %prol.iter270.next = add i64 %prol.iter270, 1   ; 2 uses
  %prol.iter270.cmp.not = icmp eq i64 %prol.iter270.next, %xtraiter268
  br i1 %prol.iter270.cmp.not, label %.lr.ph.i.i.i.i97.prol.loopexit, label %.lr.ph.i.i.i.i97.prol, !llvm.loop !193

.lr.ph.i.i.i.i97.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i97.prol, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit
  %.014.i.i.i.i98.unr = phi ptr [ %i.lm, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ], [ %i.lo, %.lr.ph.i.i.i.i97.prol ]
  %.01113.i.i.i.i99.unr = phi i64 [ %2, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ], [ %i.ln, %.lr.ph.i.i.i.i97.prol ]
  %i.lp = icmp ult i64 %2, 4
  br i1 %i.lp, label %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102, label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %.lr.ph.i.i.i.i97.prol.loopexit, %.lr.ph.i.i.i.i97
  %.014.i.i.i.i98 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i97 ], [ %.014.i.i.i.i98.unr, %.lr.ph.i.i.i.i97.prol.loopexit ] ; 5 uses
  %.01113.i.i.i.i99 = phi i64 [ %i.lt, %.lr.ph.i.i.i.i97 ], [ %.01113.i.i.i.i99.unr, %.lr.ph.i.i.i.i97.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.014.i.i.i.i98, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.lq, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.lr, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.ls, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lt = add i64 %.01113.i.i.i.i99, -4           ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 128
  %.not.i.i.i.i100.3 = icmp eq i64 %i.lt, 0
  br i1 %.not.i.i.i.i100.3, label %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102, label %.lr.ph.i.i.i.i97, !llvm.loop !186

_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102: ; preds = %.lr.ph.i.i.i.i97, %.lr.ph.i.i.i.i97.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.kx, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i103

.lr.ph.i.i.i.i.i103:                              ; preds = %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102, %.lr.ph.i.i.i.i.i103
  %.015.i.i.i.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.i103 ], [ %i.ll, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i103 ], [ %i.kx, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(26) %.01214.i.i.i.i.i, i64 24, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i104 = icmp eq ptr %i.lv, %1
  br i1 %.not.i.i.i.i.i104, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i103, !llvm.loop !194

_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i103, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102
  %.0.lcssa.i.i.i.i.i105 = phi ptr [ %i.ll, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102 ], [ %i.lw, %.lr.ph.i.i.i.i.i103 ]
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %.0.lcssa.i.i.i.i.i105, i64 %2 ; 2 uses
  %.not13.i.i.i.i.i106 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i106, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112, label %.lr.ph.i.i.i.i.i107

.lr.ph.i.i.i.i.i107:                              ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %.lr.ph.i.i.i.i.i107
  %.015.i.i.i.i.i108 = phi ptr [ %i.lz, %.lr.ph.i.i.i.i.i107 ], [ %i.lx, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  %.01214.i.i.i.i.i109 = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i107 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.015.i.i.i.i.i108, ptr noundef nonnull align 8 dereferenceable(26) %.01214.i.i.i.i.i109, i64 24, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i109, i64 32 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i108, i64 32 ; 2 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.ly, %i.d
  br i1 %.not.i.i.i.i.i110, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112, label %.lr.ph.i.i.i.i.i107, !llvm.loop !194

_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112: ; preds = %.lr.ph.i.i.i.i.i107, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.0.lcssa.i.i.i.i.i111 = phi ptr [ %i.lx, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.lz, %.lr.ph.i.i.i.i.i107 ]
  %.not.i113 = icmp eq ptr %i.kx, null
  br i1 %.not.i113, label %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.l
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi4ELi0EE3runERSG_:bb.a
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bc ; 6 uses
  %i.be = mul nsw i64 %.0813.us18.i, %i.s
  %i.bf = getelementptr [8 x i8], ptr %i.r, i64 %i.be
  br label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i

.lr.ph.i.i.i.i.i.i.preheader.us.us.i:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, %.preheader.us17.i
  %.09.us10.us.i = phi i64 [ 0, %.preheader.us17.i ], [ %i.db, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.us10.us.i ; 6 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !8
  %i.bi = load double, ptr %i.bd, align 8, !tbaa !8
  %i.bj = fmul double %i.bh, %i.bi                ; 2 uses
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i

.lr.ph.i.i.i.i.i.i.us.us.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, %.lr.ph.i.i.i.i.i.i.us.us.i
  %.01724.i.i.i.i.i.i.us.us.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.us.us.i = phi double [ %i.co, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %i.bk = mul nsw i64 %.01724.i.i.i.i.i.i.us.us.i, %i.am
  %i.bl = getelementptr [8 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !8
  %i.bn = getelementptr [8 x i8], ptr %i.bd, i64 %.01724.i.i.i.i.i.i.us.us.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !8
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = fadd double %.02223.i.i.i.i.i.i.us.us.i, %i.bp
  %i.br = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 1 ; 2 uses
  %i.bs = mul nsw i64 %i.br, %i.am
  %i.bt = getelementptr [8 x i8], ptr %i.bg, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !8
  %i.bv = getelementptr [8 x i8], ptr %i.bd, i64 %i.br
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8
  %i.bx = fmul double %i.bu, %i.bw
  %i.by = fadd double %i.bq, %i.bx
  %i.bz = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 2 ; 2 uses
  %i.ca = mul nsw i64 %i.bz, %i.am
  %i.cb = getelementptr [8 x i8], ptr %i.bg, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !8
  %i.cd = getelementptr [8 x i8], ptr %i.bd, i64 %i.bz
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !8
  %i.cf = fmul double %i.cc, %i.ce
  %i.cg = fadd double %i.by, %i.cf
  %i.ch = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 3 ; 2 uses
  %i.ci = mul nsw i64 %i.ch, %i.am
  %i.cj = getelementptr [8 x i8], ptr %i.bg, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr [8 x i8], ptr %i.bd, i64 %i.ch
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !8
  %i.cn = fmul double %i.ck, %i.cm
  %i.co = fadd double %i.cg, %i.cn                ; 3 uses
  %i.cp = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us.us.i, !llvm.loop !299

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i
  br i1 %lcmp.mod153.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i
  %.01724.i.i.i.i.i.i.us.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.cp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  %.02223.i.i.i.i.i.i.us.us.i.epil.init = phi double [ %i.bj, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.co, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i.i.i.us.us.i.epil

.lr.ph.i.i.i.i.i.i.us.us.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader
  %.01724.i.i.i.i.i.i.us.us.i.epil = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.01724.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.us.us.i.epil = phi double [ %i.cw, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.02223.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %i.cq = mul nsw i64 %.01724.i.i.i.i.i.i.us.us.i.epil, %i.am
  %i.cr = getelementptr [8 x i8], ptr %i.bg, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr [8 x i8], ptr %i.bd, i64 %.01724.i.i.i.i.i.i.us.us.i.epil
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !8
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fadd double %.02223.i.i.i.i.i.i.us.us.i.epil, %i.cv ; 2 uses
  %i.cx = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter152
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil, !llvm.loop !300

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa
  %.lcssa150 = phi double [ %i.co, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ], [ %i.cw, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ]
  %i.cy = getelementptr [8 x i8], ptr %i.bf, i64 %.09.us10.us.i ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8
  %i.da = fadd double %.lcssa150, %i.cz
  store double %i.da, ptr %i.cy, align 8, !tbaa !8
  %i.db = add nuw nsw i64 %.09.us10.us.i, 1       ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.db, %i.j
  br i1 %exitcond22.not.i, label %._crit_edge.split.split.us.us.i, label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, !llvm.loop !301

._crit_edge.split.split.us.us.i:                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i
  %i.dc = add nuw nsw i64 %.0813.us18.i, 1        ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.dc, %i.g
  br i1 %exitcond23.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.us17.i, !llvm.loop !298

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.split.i
  %.0813.i = phi i64 [ %i.ea, %._crit_edge.split.split.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.dd = mul nsw i64 %.0813.i, %i.w
  %i.de = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.dd ; 4 uses
  %i.df = mul nsw i64 %.0813.i, %i.s
  %i.dg = getelementptr [8 x i8], ptr %i.r, i64 %i.df ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.dh = load double, ptr %i.de, align 8, !tbaa !8, !alias.scope !302
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dh, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load = load <2 x double>, ptr %i.di, align 8, !tbaa !8, !alias.scope !305
  %wide.load116 = load <2 x double>, ptr %i.dj, align 8, !tbaa !8, !alias.scope !305
  %i.dk = fmul <2 x double> %wide.load, %broadcast.splat
  %i.dl = fmul <2 x double> %wide.load116, %broadcast.splat
  %i.dm = getelementptr [8 x i8], ptr %i.dg, i64 %index ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 16     ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.dm, align 8, !tbaa !8, !alias.scope !307, !noalias !309
  %wide.load118 = load <2 x double>, ptr %i.dn, align 8, !tbaa !8, !alias.scope !307, !noalias !309
  %i.do = fadd <2 x double> %i.dk, %wide.load117
  %i.dp = fadd <2 x double> %i.dl, %wide.load118
  store <2 x double> %i.do, ptr %i.dm, align 8, !tbaa !8, !alias.scope !307, !noalias !309
  store <2 x double> %i.dp, ptr %i.dn, align 8, !tbaa !8, !alias.scope !307, !noalias !309
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader: ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.ph
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !8
  %i.dt = load double, ptr %i.de, align 8, !tbaa !8
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = getelementptr [8 x i8], ptr %i.dg, i64 %.09.i.ph ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !8
  %i.dx = fadd double %i.du, %i.dw
  store double %i.dx, ptr %i.dv, align 8, !tbaa !8
  %i.dy = or disjoint i64 %.09.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader ], [ %i.dy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol ]
  %i.dz = icmp eq i64 %i.j, %.neg
  br i1 %i.dz, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i

._crit_edge.split.split.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, %middle.block
  %i.ea = add nuw nsw i64 %.0813.i, 1             ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.ea, %i.g
  br i1 %exitcond21.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.i, !llvm.loop !298

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i
  %.09.i = phi i64 [ %i.eq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i ], [ %.09.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !8
  %i.ed = load double, ptr %i.de, align 8, !tbaa !8
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = getelementptr [8 x i8], ptr %i.dg, i64 %.09.i ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !8
  %i.eh = fadd double %i.ee, %i.eg
  store double %i.eh, ptr %i.ef, align 8, !tbaa !8
  %i.ei = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !8
  %i.el = load double, ptr %i.de, align 8, !tbaa !8
  %i.em = fmul double %i.ek, %i.el
  %i.en = getelementptr [8 x i8], ptr %i.dg, i64 %i.ei ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !8
  %i.ep = fadd double %i.em, %i.eo
  store double %i.ep, ptr %i.en, align 8, !tbaa !8
  %i.eq = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.eq, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, !llvm.loop !311

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !134 ; 8 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !134 ; 2 uses
  %i.ev = and i64 %i.es, 1
  %i.ew = icmp sgt i64 %i.eu, 0
  br i1 %i.ew, label %.lr.ph66, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.lr.ph66:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ex = lshr exact i64 %i.d, 3
  %i.ey = and i64 %i.ex, 1
  %i.ez = tail call i64 @llvm.smin.i64(i64 %i.ey, i64 %i.es)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %.03465 = phi i64 [ 0, %.lr.ph66 ], [ %i.lr, %._crit_edge ] ; 7 uses
  %.03564 = phi i64 [ %i.ez, %.lr.ph66 ], [ %.sroa.speculated, %._crit_edge ] ; 6 uses
  %i.fb = sub i64 %i.es, %.03564                  ; 2 uses
  %i.fc = and i64 %i.fb, -2                       ; 2 uses
  %i.fd = add nsw i64 %i.fc, %.03564              ; 6 uses
  %i.fe = icmp sgt i64 %.03564, 0
  br i1 %i.fe, label %.lr.ph, label %.preheader49

.lr.ph:                                           ; preds = %bb.c
  %i.ff = load ptr, ptr %0, align 8, !tbaa !312, !nonnull !106, !align !288 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !208
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !134
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !313, !nonnull !106, !align !288 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !289, !nonnull !106, !align !288 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !195, !noalias !314 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !123, !noalias !317
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !134, !noalias !317 ; 5 uses
  %i.fq = mul nsw i64 %i.fp, %.03465
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fq ; 6 uses
  %i.fs = icmp eq i64 %i.fp, 0
  %i.ft = mul nsw i64 %i.fi, %.03465
  %i.fu = getelementptr [8 x i8], ptr %i.fg, i64 %i.ft ; 4 uses
  br i1 %i.fs, label %.preheader49.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fv = icmp sgt i64 %i.fp, 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !197 ; 5 uses
  %i.fy = load double, ptr %i.fl, align 8, !tbaa !8
  %i.fz = load double, ptr %i.fr, align 8, !tbaa !8
  %i.ga = fmul double %i.fy, %i.fz                ; 3 uses
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.us.preheader, label %.preheader49.loopexit69

.lr.ph.i.i.i.i.i.i.us.preheader:                  ; preds = %.lr.ph.split
  %i.gb = add nsw i64 %i.fp, -1                   ; 2 uses
  %i.gc = add nsw i64 %i.fp, -2
  %xtraiter156 = and i64 %i.gb, 3                 ; 3 uses
  %i.gd = icmp ult i64 %i.gc, 3
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.preheader.new

.lr.ph.i.i.i.i.i.i.us.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i.i.us.preheader
  %unroll_iter161 = and i64 %i.gb, -4
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.lr.ph.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us.preheader.new
  %.01724.i.i.i.i.i.i.us = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %i.hj, %.lr.ph.i.i.i.i.i.i.us ] ; 6 uses
  %.02223.i.i.i.i.i.i.us = phi double [ %i.ga, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %i.hi, %.lr.ph.i.i.i.i.i.i.us ]
  %niter162 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %niter162.next.3, %.lr.ph.i.i.i.i.i.i.us ]
  %i.ge = mul nsw i64 %.01724.i.i.i.i.i.i.us, %i.fx
  %i.gf = getelementptr [8 x i8], ptr %i.fl, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !8
  %i.gh = getelementptr [8 x i8], ptr %i.fr, i64 %.01724.i.i.i.i.i.i.us
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !8
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = fadd double %.02223.i.i.i.i.i.i.us, %i.gj
  %i.gl = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.gm = mul nsw i64 %i.gl, %i.fx
  %i.gn = getelementptr [8 x i8], ptr %i.fl, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !8
  %i.gp = getelementptr [8 x i8], ptr %i.fr, i64 %i.gl
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !8
  %i.gr = fmul double %i.go, %i.gq
  %i.gs = fadd double %i.gk, %i.gr
  %i.gt = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.gu = mul nsw i64 %i.gt, %i.fx
  %i.gv = getelementptr [8 x i8], ptr %i.fl, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !8
  %i.gx = getelementptr [8 x i8], ptr %i.fr, i64 %i.gt
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !8
  %i.gz = fmul double %i.gw, %i.gy
  %i.ha = fadd double %i.gs, %i.gz
  %i.hb = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.hc = mul nsw i64 %i.hb, %i.fx
  %i.hd = getelementptr [8 x i8], ptr %i.fl, i64 %i.hc
  %i.he = load double, ptr %i.hd, align 8, !tbaa !8
  %i.hf = getelementptr [8 x i8], ptr %i.fr, i64 %i.hb
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !8
  %i.hh = fmul double %i.he, %i.hg
  %i.hi = fadd double %i.ha, %i.hh                ; 3 uses
  %i.hj = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %.preheader49.loopexit68.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !299

.preheader49.loopexit:                            ; preds = %.lr.ph
  %i.hk = load double, ptr %i.fu, align 8, !tbaa !8
  %i.hl = fadd double %i.hk, 0.000000e+00
  br label %.preheader49.sink.split

.preheader49.loopexit68.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i.i.i.us
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %.preheader49.loopexit68, label %.lr.ph.i.i.i.i.i.i.us.epil.preheader

.lr.ph.i.i.i.i.i.i.us.epil.preheader:             ; preds = %.preheader49.loopexit68.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.preheader
  %.01724.i.i.i.i.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.us.preheader ], [ %i.hj, %.preheader49.loopexit68.unr-lcssa ]
  %.02223.i.i.i.i.i.i.us.epil.init = phi double [ %i.ga, %.lr.ph.i.i.i.i.i.i.us.preheader ], [ %i.hi, %.preheader49.loopexit68.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.i.i.i.i.i.us.epil

.lr.ph.i.i.i.i.i.i.us.epil:                       ; preds = %.lr.ph.i.i.i.i.i.i.us.epil, %.lr.ph.i.i.i.i.i.i.us.epil.preheader
  %.01724.i.i.i.i.i.i.us.epil = phi i64 [ %i.ht, %.lr.ph.i.i.i.i.i.i.us.epil ], [ %.01724.i.i.i.i.i.i.us.epil.init, %.lr.ph.i.i.i.i.i.i.us.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.us.epil = phi double [ %i.hs, %.lr.ph.i.i.i.i.i.i.us.epil ], [ %.02223.i.i.i.i.i.i.us.epil.init, %.lr.ph.i.i.i.i.i.i.us.epil.preheader ]
  %epil.iter157 = phi i64 [ %epil.iter157.next, %.lr.ph.i.i.i.i.i.i.us.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.epil.preheader ]
  %i.hm = mul nsw i64 %.01724.i.i.i.i.i.i.us.epil, %i.fx
  %i.hn = getelementptr [8 x i8], ptr %i.fl, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !8
  %i.hp = getelementptr [8 x i8], ptr %i.fr, i64 %.01724.i.i.i.i.i.i.us.epil
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !8
  %i.hr = fmul double %i.ho, %i.hq
  %i.hs = fadd double %.02223.i.i.i.i.i.i.us.epil, %i.hr ; 2 uses
  %i.ht = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.epil, 1
  %epil.iter157.next = add i64 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i64 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %.preheader49.loopexit68, label %.lr.ph.i.i.i.i.i.i.us.epil, !llvm.loop !320

.preheader49.loopexit68:                          ; preds = %.lr.ph.i.i.i.i.i.i.us.epil, %.preheader49.loopexit68.unr-lcssa
  %.lcssa = phi double [ %i.hi, %.preheader49.loopexit68.unr-lcssa ], [ %i.hs, %.lr.ph.i.i.i.i.i.i.us.epil ]
  %i.hu = load double, ptr %i.fu, align 8, !tbaa !8
  %i.hv = fadd double %.lcssa, %i.hu
  br label %.preheader49.sink.split

.preheader49.loopexit69:                          ; preds = %.lr.ph.split
  %i.hw = load double, ptr %i.fu, align 8, !tbaa !8
  %i.hx = fadd double %i.ga, %i.hw
  br label %.preheader49.sink.split

.preheader49.sink.split:                          ; preds = %.preheader49.loopexit, %.preheader49.loopexit68, %.preheader49.loopexit69
  %.sink = phi double [ %i.hx, %.preheader49.loopexit69 ], [ %i.hv, %.preheader49.loopexit68 ], [ %i.hl, %.preheader49.loopexit ]
  store double %.sink, ptr %i.fu, align 8, !tbaa !8
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.sink.split, %bb.c
  %i.hy = icmp sgt i64 %i.fb, 1
  br i1 %i.hy, label %.lr.ph61, label %.preheader

.preheader:                                       ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit, %.preheader49
  %i.hz = icmp slt i64 %i.fd, %i.es
  br i1 %i.hz, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %.preheader
  %i.ia = load ptr, ptr %0, align 8, !tbaa !312, !nonnull !106, !align !288 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !208
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !134
  %i.ie = load ptr, ptr %i.fa, align 8, !tbaa !313, !nonnull !106, !align !288 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !289, !nonnull !106, !align !288 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !195, !noalias !321
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !123, !noalias !324
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !134, !noalias !324 ; 5 uses
  %i.il = mul nsw i64 %i.ik, %.03465
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.il ; 6 uses
  %i.in = icmp eq i64 %i.ik, 0
  %i.io = icmp sgt i64 %i.ik, 1
  %i.ip = mul nsw i64 %i.id, %.03465
  %i.iq = getelementptr [8 x i8], ptr %i.ib, i64 %i.ip ; 3 uses
  br i1 %i.in, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader, label %.lr.ph63.split

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader: ; preds = %.lr.ph63
  %i.ir = add i64 %.03564, %i.fc
  %i.is = sub i64 %i.es, %i.ir                    ; 3 uses
  %min.iters.check132 = icmp ult i64 %i.is, 4
  br i1 %min.iters.check132, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader144, label %vector.ph133

vector.ph133:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader
  %n.vec134 = and i64 %i.is, -4                   ; 3 uses
  %i.it = add i64 %i.fd, %n.vec134
  %i.iu = getelementptr [8 x i8], ptr %i.iq, i64 %i.fd
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 2 uses
  %i.iv = getelementptr [8 x i8], ptr %i.iu, i64 %index136 ; 3 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16     ; 2 uses
  %wide.load137 = load <2 x double>, ptr %i.iv, align 8, !tbaa !8
  %wide.load138 = load <2 x double>, ptr %i.iw, align 8, !tbaa !8
  %i.ix = fadd <2 x double> %wide.load137, zeroinitializer
  %i.iy = fadd <2 x double> %wide.load138, zeroinitializer
  store <2 x double> %i.ix, ptr %i.iv, align 8, !tbaa !8
  store <2 x double> %i.iy, ptr %i.iw, align 8, !tbaa !8
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.iz, label %middle.block140, label %vector.body135, !llvm.loop !327

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %i.is, %n.vec134
  br i1 %cmp.n141, label %._crit_edge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader144

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader144: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader, %middle.block140
  %.062.us.ph = phi i64 [ %i.fd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader ], [ %i.it, %middle.block140 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader144, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us
  %.062.us = phi i64 [ %i.jd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us ], [ %.062.us.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us.preheader144 ] ; 2 uses
  %i.ja = getelementptr [8 x i8], ptr %i.iq, i64 %.062.us ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !8
  %i.jc = fadd double %i.jb, 0.000000e+00
  store double %i.jc, ptr %i.ja, align 8, !tbaa !8
  %i.jd = add nsw i64 %.062.us, 1                 ; 2 uses
  %i.je = icmp slt i64 %i.jd, %i.es
  br i1 %i.je, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us, label %._crit_edge, !llvm.loop !328

.lr.ph63.split:                                   ; preds = %.lr.ph63
  %i.jf = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !197 ; 5 uses
  %i.jh = add i64 %i.ik, -1                       ; 2 uses
  %i.ji = add i64 %i.ik, -2
  %xtraiter170 = and i64 %i.jh, 3                 ; 3 uses
  %i.jj = icmp ult i64 %i.ji, 3
  %unroll_iter175 = and i64 %i.jh, -4
  %lcmp.mod172.not = icmp eq i64 %xtraiter170, 0
  %lcmp.mod174 = icmp ne i64 %xtraiter170, 0
  br label %bb.e

.lr.ph61:                                         ; preds = %.preheader49, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit
  %.03260 = phi i64 [ %i.ln, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit ], [ %.03564, %.preheader49 ] ; 3 uses
  %i.jk = load ptr, ptr %0, align 8, !tbaa !312, !nonnull !106, !align !288 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !208
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !134
  %i.jo = load ptr, ptr %i.fa, align 8, !tbaa !313, !nonnull !106, !align !288 ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 80
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !211 ; 5 uses
  %i.jr = icmp sgt i64 %i.jq, 0
  br i1 %i.jr, label %.lr.ph.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph61
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 72
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !329
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %.03260 ; 3 uses
  %i.jy = load i64, ptr %i.ju, align 8, !tbaa !207 ; 3 uses
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !208
  %i.ka = load i64, ptr %i.jv, align 8, !tbaa !134
  %i.kb = mul nsw i64 %i.ka, %.03465
  %i.kc = getelementptr [8 x i8], ptr %i.jz, i64 %i.kb ; 3 uses
  %xtraiter163 = and i64 %i.jq, 1
  %i.kd = icmp eq i64 %i.jq, 1
  br i1 %i.kd, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter168 = and i64 %i.jq, 9223372036854775806
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.new
  %i.ke = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.new ], [ %i.kx, %bb.d ]
  %.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.ky, %bb.d ] ; 4 uses
  %niter169 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter169.next.1, %bb.d ]
  %i.kf = mul nsw i64 %.012.i.i.i.i, %i.jy
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kf
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !60
  %i.ki = getelementptr [8 x i8], ptr %i.kc, i64 %.012.i.i.i.i
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !8
  %i.kk = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x double> %i.kh, %i.kl
  %i.kn = fadd <2 x double> %i.ke, %i.km
  %i.ko = or disjoint i64 %.012.i.i.i.i, 1        ; 2 uses
  %i.kp = mul nsw i64 %i.ko, %i.jy
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kp
  %i.kr = load <2 x double>, ptr %i.kq, align 1, !tbaa !60
  %i.ks = getelementptr [8 x i8], ptr %i.kc, i64 %i.ko
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !8
  %i.ku = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x double> %i.kr, %i.kv
  %i.kx = fadd <2 x double> %i.kn, %i.kw          ; 3 uses
  %i.ky = add nuw nsw i64 %.012.i.i.i.i, 2        ; 2 uses
  %niter169.next.1 = add nuw nsw i64 %niter169, 2 ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !330

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod165.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod165.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.kx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ]
  %.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ky, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod167 = trunc i64 %i.jq to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.kz = mul nsw i64 %.012.i.i.i.i.epil.init, %i.jy
  %i.la = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kz
  %i.lb = load <2 x double>, ptr %i.la, align 1, !tbaa !60
  %i.lc = getelementptr [8 x i8], ptr %i.kc, i64 %.012.i.i.i.i.epil.init
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !8
  %i.le = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = fmul <2 x double> %i.lb, %i.lf
  %i.lh = fadd <2 x double> %.epil.init, %i.lg
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa, %.lr.ph61
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph61 ], [ %i.kx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.loopexit.unr-lcssa ], [ %i.lh, %.epil.preheader ]
  %i.li = mul nsw i64 %i.jn, %.03465
  %i.lj = getelementptr [8 x i8], ptr %i.jl, i64 %i.li
  %i.lk = getelementptr [8 x i8], ptr %i.lj, i64 %.03260 ; 2 uses
  %i.ll = load <2 x double>, ptr %i.lk, align 16, !tbaa !60
  %i.lm = fadd <2 x double> %.0.i.i.i, %i.ll
  store <2 x double> %i.lm, ptr %i.lk, align 16, !tbaa !60
  %i.ln = add nsw i64 %.03260, 2                  ; 2 uses
  %i.lo = icmp slt i64 %i.ln, %i.fd
  br i1 %i.lo, label %.lr.ph61, label %.preheader, !llvm.loop !331

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42.us, %middle.block140, %.preheader
  %i.lp = add nsw i64 %.03564, %i.ev
  %i.lq = srem i64 %i.lp, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.lq)
  %i.lr = add nuw nsw i64 %.03465, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %i.lr, %i.eu
  br i1 %exitcond78.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %bb.c, !llvm.loop !332

bb.e:                                             ; preds = %.lr.ph63.split, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42
  %.062 = phi i64 [ %i.fd, %.lr.ph63.split ], [ %i.nn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42 ] ; 3 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %.062 ; 6 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !8
  %i.lu = load double, ptr %i.im, align 8, !tbaa !8
  %i.lv = fmul double %i.lt, %i.lu                ; 3 uses
  br i1 %i.io, label %.lr.ph.i.i.i.i.i.i38.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit42

.lr.ph.i.i.i.i.i.i38.preheader:                   ; preds = %bb.e
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i38.epil.preheader, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.preheader, %.lr.ph.i.i.i.i.i.i38
  %.01724.i.i.i.i.i.i39 = phi i64 [ %i.nb, %.lr.ph.i.i.i.i.i.i38 ], [ 1, %.lr.ph.i.i.i.i.i.i38.preheader ] ; 6 uses
  %.02223.i.i.i.i.i.i40 = phi double [ %i.na, %.lr.ph.i.i.i.i.i.i38 ], [ %i.lv, %.lr.ph.i.i.i.i.i.i38.preheader ]
  %niter176 = phi i64 [ %niter176.next.3, %.lr.ph.i.i.i.i.i.i38 ], [ 0, %.lr.ph.i.i.i.i.i.i38.preheader ]
  %i.lw = mul nsw i64 %.01724.i.i.i.i.i.i39, %i.jg
  %i.lx = getelementptr [8 x i8], ptr %i.ls, i64 %i.lw
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !8
  %i.lz = getelementptr [8 x i8], ptr %i.im, i64 %.01724.i.i.i.i.i.i39
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !8
  %i.mb = fmul double %i.ly, %i.ma
  %i.mc = fadd double %.02223.i.i.i.i.i.i40, %i.mb
  %i.md = add nuw nsw i64 %.01724.i.i.i.i.i.i39, 1 ; 2 uses
  %i.me = mul nsw i64 %i.md, %i.jg
  %i.mf = getelementptr [8 x i8], ptr %i.ls, i64 %i.me
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !8
  %i.mh = getelementptr [8 x i8], ptr %i.im, i64 %i.md
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !8
  %i.mj = fmul double %i.mg, %i.mi
  %i.mk = fadd double %i.mc, %i.mj
  %i.ml = add nuw nsw i64 %.01724.i.i.i.i.i.i39, 2 ; 2 uses
  %i.mm = mul nsw i64 %i.ml, %i.jg
  %i.mn = getelementptr [8 x i8], ptr %i.ls, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !8
  %i.mp = getelementptr [8 x i8], ptr %i.im, i64 %i.ml
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !8
  %i.mr = fmul double %i.mo, %i.mq
  %i.ms = fadd double %i.mk, %i.mr
  %i.mt = add nuw nsw i64 %.01724.i.i.i.i.i.i39, 3 ; 2 uses
  %i.mu = mul nsw i64 %i.mt, %i.jg
  %i.mv = getelementptr [8 x i8], ptr %i.ls, i64 %i.mu
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !8
  %i.mx = getelementptr [8 x i8], ptr %i.im, i64 %i.mt
  %i.my = load double, ptr %i.mx, align 8, !tbaa !8
  %i.mz = fmul double %i.mw, %i.my
  %i.na = fadd double %i.ms, %i.mz                ; 3 uses
end_hunk_2
