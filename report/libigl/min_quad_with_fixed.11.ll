Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.11?download=true
inline.NumInlined: 14995
inline.NumDeleted: 7635
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES4_S3_S3_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE:_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3702", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.3056", align 8 ; 5 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.3072", align 8 ; 5 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3702", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %14 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %15 = alloca %"struct.Eigen::internal::evaluator.3056", align 8 ; 5 uses
  %16 = alloca %"struct.Eigen::internal::evaluator.3072", align 8 ; 5 uses
  %17 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3702", align 8 ; 7 uses
  %18 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %19 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %20 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %21 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %22 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %23 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %24 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %25 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %26 = alloca %"struct.Eigen::internal::assign_op.3066", align 1 ; 3 uses
  %27 = alloca %"class.Eigen::Matrix.62", align 8 ; 14 uses
  %28 = alloca %"class.Eigen::Matrix.62", align 8 ; 12 uses
  %29 = alloca %"class.Eigen::IndexedView", align 8 ; 7 uses
  %30 = alloca %"class.Eigen::Matrix.62", align 8 ; 15 uses
  %31 = alloca %"class.Eigen::CwiseBinaryOp.100", align 8 ; 7 uses
  %32 = alloca %"class.Eigen::Solve", align 8     ; 6 uses
  %33 = alloca %"class.Eigen::Solve.115", align 8 ; 6 uses
  %34 = alloca %"class.Eigen::Solve.121", align 8 ; 6 uses
  %35 = alloca %"class.Eigen::Matrix.62", align 8 ; 16 uses
  %36 = alloca %"class.Eigen::Product.127", align 8 ; 11 uses
  %37 = alloca %"class.Eigen::Matrix.62", align 8 ; 7 uses
  %38 = alloca %"class.Eigen::IndexedView.150", align 8 ; 7 uses
  %39 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %40 = alloca %"class.Eigen::CwiseBinaryOp.156", align 8 ; 12 uses
  %41 = alloca %"class.Eigen::Matrix.62", align 8 ; 10 uses
  %42 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %43 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %44 = alloca %"class.Eigen::Product.172", align 8 ; 6 uses
  %45 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %46 = alloca %"class.Eigen::CwiseBinaryOp.179", align 8 ; 10 uses
  %47 = alloca %"class.Eigen::Matrix.62", align 8 ; 11 uses
  %48 = alloca %"class.Eigen::Matrix.62", align 8 ; 11 uses
  %49 = alloca %"class.Eigen::CwiseBinaryOp.193", align 8 ; 7 uses
  %50 = alloca %"class.Eigen::Matrix.62", align 8 ; 9 uses
  %51 = alloca %"class.Eigen::Matrix.62", align 8 ; 12 uses
  %52 = alloca %"class.Eigen::Matrix.62", align 8 ; 12 uses
  %53 = alloca %"class.Eigen::CwiseBinaryOp.200", align 8 ; 10 uses
  %54 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %55 = alloca %"class.Eigen::Product.172", align 8 ; 6 uses
  %56 = alloca %"class.Eigen::Block", align 8     ; 9 uses
  %57 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !30
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.e, i64 noundef %i.e, i64 noundef 1)
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.preheader417.lr.ph, label %._crit_edge

.preheader417.lr.ph:                              ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %2, align 8, !tbaa !74     ; 5 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !75   ; 5 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !76     ; 5 uses
  %wide.trip.count = and i64 %i.b, 2147483647
  %i.k = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.preheader417.epil.preheader, label %.preheader417.lr.ph.new

.preheader417.lr.ph.new:                          ; preds = %.preheader417.lr.ph
  %unroll_iter = and i64 %i.b, 2147483644
  br label %.preheader417

.preheader417:                                    ; preds = %.preheader417, %.preheader417.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader417.lr.ph.new ], [ %indvars.iv.next.3, %.preheader417 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader417.lr.ph.new ], [ %niter.next.3, %.preheader417 ]
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %i.j, i64 %i.p
  %i.r = load double, ptr %i.m, align 8, !tbaa !78
  store double %i.r, ptr %i.q, align 8, !tbaa !78
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !77
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load double, ptr %i.s, align 8, !tbaa !78
  store double %i.x, ptr %i.w, align 8, !tbaa !78
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load double, ptr %i.y, align 8, !tbaa !78
  store double %i.ad, ptr %i.ac, align 8, !tbaa !78
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %i.ah
  %i.aj = load double, ptr %i.ae, align 8, !tbaa !78
  store double %i.aj, ptr %i.ai, align 8, !tbaa !78
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.preheader417, !llvm.loop !79

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader417
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader417.epil.preheader

.preheader417.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader417.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader417.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod623 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod623)
  br label %.preheader417.epil

.preheader417.epil:                               ; preds = %.preheader417.epil, %.preheader417.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader417.epil.preheader ], [ %indvars.iv.next.epil, %.preheader417.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader417.epil.preheader ], [ %epil.iter.next, %.preheader417.epil ]
  %i.ak = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !77
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.j, i64 %i.an
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !78
  store double %i.ap, ptr %i.ao, align 8, !tbaa !78
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader417.epil, !llvm.loop !81

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader417.epil, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !83, !range !11, !noundef !12
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.ad

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !84 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !85 ; 8 uses
  %i.az = add nsw i64 %i.ay, %i.aw                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.bc = icmp sgt i64 %i.az, 0
  br i1 %i.bc, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %bb.a
  %i.bd = icmp samesign ugt i64 %i.az, 2305843009213693951
  br i1 %i.bd, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.b
  %i.be = shl nuw i64 %i.az, 3
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #25 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.b
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bh, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.a
  %.sink.i = phi ptr [ %i.bf, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.a ] ; 2 uses
  store ptr %.sink.i, ptr %27, align 8, !tbaa !76
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.ac, %bb.cs, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.c ], [ %.pn189.pn.pn, %bb.ac ], [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cs ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.invoke
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %27, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.bj) #24
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.bk = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 7 uses
  %58 = ptrtoaddr ptr %i.bk to i64
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !84
  store i64 1, ptr %i.bb, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !88
  %i.bn = mul nsw i64 %i.bm, %i.aw
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %59 = load ptr, ptr %1, align 8, !tbaa !76      ; 7 uses
  %60 = icmp sgt i64 %i.aw, 0
  br i1 %60, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader: ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bp = ptrtoaddr ptr %59 to i64
  %min.iters.check547 = icmp ult i64 %i.aw, 8
  %i.bq = sub i64 %i.bp, %58
  %diff.check545 = icmp ugt i64 %i.bq, -32
  %or.cond.a = select i1 %min.iters.check547, i1 true, i1 %diff.check545
  br i1 %or.cond.a, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619, label %vector.ph548

vector.ph548:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader
  %n.vec549 = and i64 %i.aw, 9223372036854775804  ; 3 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next554, %vector.body550 ] ; 3 uses
  %i.br = getelementptr [8 x i8], ptr %i.bk, i64 %index551 ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %59, i64 %index551 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %wide.load552 = load <2 x double>, ptr %i.bs, align 8, !tbaa !78
  %wide.load553 = load <2 x double>, ptr %i.bt, align 8, !tbaa !78
  %i.bu = getelementptr i8, ptr %i.br, i64 16
  store <2 x double> %wide.load552, ptr %i.br, align 8, !tbaa !78
  store <2 x double> %wide.load553, ptr %i.bu, align 8, !tbaa !78
  %index.next554 = add nuw i64 %index551, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next554, %n.vec549
  br i1 %i.bv, label %middle.block555, label %vector.body550, !llvm.loop !89

middle.block555:                                  ; preds = %vector.body550
  %cmp.n556 = icmp eq i64 %i.aw, %n.vec549
  br i1 %cmp.n556, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader, %middle.block555
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader ], [ %n.vec549, %middle.block555 ] ; 3 uses
  %xtraiter632 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod633.not = icmp eq i64 %xtraiter632, 0
  br i1 %lcmp.mod633.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol:    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.by, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619 ] ; 3 uses
  %prol.iter634 = phi i64 [ %prol.iter634.next, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619 ]
  %i.bw = getelementptr [8 x i8], ptr %i.bk, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %gep.i.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %59, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %i.bx = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !78
  store double %i.bx, ptr %i.bw, align 8, !tbaa !78
  %i.by = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter634.next = add i64 %prol.iter634, 1   ; 2 uses
  %prol.iter634.cmp.not = icmp eq i64 %prol.iter634.next, %xtraiter632
  br i1 %prol.iter634.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol, !llvm.loop !92

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader619 ], [ %i.by, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol ]
  %i.bz = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.aw
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr [8 x i8], ptr %i.bk, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %59, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.cc = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !78
  store double %i.cc, ptr %i.cb, align 8, !tbaa !78
  %i.cd = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bk, i64 %i.cd
  %gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %59, i64 %i.cd
  %i.cf = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !78
  store double %i.cf, ptr %i.ce, align 8, !tbaa !78
  %i.cg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.bk, i64 %i.cg
  %gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %59, i64 %i.cg
  %i.ci = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !78
  store double %i.ci, ptr %i.ch, align 8, !tbaa !78
  %i.cj = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.bk, i64 %i.cj
  %gep.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %59, i64 %i.cj
  %i.cl = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !78
  store double %i.cl, ptr %i.ck, align 8, !tbaa !78
  %i.cm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cm, %i.aw
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !93

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block555, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %i.cn = icmp sgt i64 %i.ay, 0
  br i1 %i.cn, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i195, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i195:          ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.co = load ptr, ptr %27, align 8, !tbaa !76, !noalias !94 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.aw ; 6 uses
  %i.cq = load ptr, ptr %3, align 8, !tbaa !74    ; 7 uses
  %min.iters.check561 = icmp ult i64 %i.ay, 10
  br i1 %min.iters.check561, label %scalar.ph560.preheader, label %vector.memcheck558

vector.memcheck558:                               ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i195
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = ptrtoaddr ptr %i.co to i64
  %i.ct = shl nsw i64 %i.aw, 3
  %i.cu = add i64 %i.ct, %i.cs
  %i.cv = sub i64 %i.cr, %i.cu
  %diff.check559 = icmp ugt i64 %i.cv, -32
  br i1 %diff.check559, label %scalar.ph560.preheader, label %vector.ph562

vector.ph562:                                     ; preds = %vector.memcheck558
  %n.vec563 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next568, %vector.body564 ] ; 3 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cp, i64 %index565 ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %i.cq, i64 %index565 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %wide.load566 = load <2 x double>, ptr %i.cx, align 8, !tbaa !78
  %wide.load567 = load <2 x double>, ptr %i.cy, align 8, !tbaa !78
  %i.cz = fmul <2 x double> %wide.load566, splat (double -2.000000e+00)
  %i.da = fmul <2 x double> %wide.load567, splat (double -2.000000e+00)
  %i.db = getelementptr i8, ptr %i.cw, i64 16
  store <2 x double> %i.cz, ptr %i.cw, align 8, !tbaa !78
  store <2 x double> %i.da, ptr %i.db, align 8, !tbaa !78
  %index.next568 = add nuw i64 %index565, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next568, %n.vec563
  br i1 %i.dc, label %middle.block569, label %vector.body564, !llvm.loop !97

middle.block569:                                  ; preds = %vector.body564
  %cmp.n570 = icmp eq i64 %i.ay, %n.vec563
  br i1 %cmp.n570, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph560.preheader

scalar.ph560.preheader:                           ; preds = %vector.memcheck558, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i195, %middle.block569
  %.09.i.i.i.i.i.i.i.i.i.i198.ph = phi i64 [ 0, %vector.memcheck558 ], [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i195 ], [ %n.vec563, %middle.block569 ] ; 3 uses
  %xtraiter635 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod636.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod636.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol

scalar.ph560.prol:                                ; preds = %scalar.ph560.preheader, %scalar.ph560.prol
  %.09.i.i.i.i.i.i.i.i.i.i198.prol = phi i64 [ %i.dh, %scalar.ph560.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i198.ph, %scalar.ph560.preheader ] ; 3 uses
  %prol.iter637 = phi i64 [ %prol.iter637.next, %scalar.ph560.prol ], [ 0, %scalar.ph560.preheader ]
  %i.dd = getelementptr [8 x i8], ptr %i.cp, i64 %.09.i.i.i.i.i.i.i.i.i.i198.prol
  %i.de = getelementptr [8 x i8], ptr %i.cq, i64 %.09.i.i.i.i.i.i.i.i.i.i198.prol
  %i.df = load double, ptr %i.de, align 8, !tbaa !78
  %i.dg = fmul double %i.df, -2.000000e+00
  store double %i.dg, ptr %i.dd, align 8, !tbaa !78
  %i.dh = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i198.prol, 1 ; 2 uses
  %prol.iter637.next = add i64 %prol.iter637, 1   ; 2 uses
  %prol.iter637.cmp.not = icmp eq i64 %prol.iter637.next, %xtraiter635
  br i1 %prol.iter637.cmp.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol, !llvm.loop !98

scalar.ph560.prol.loopexit:                       ; preds = %scalar.ph560.prol, %scalar.ph560.preheader
  %.09.i.i.i.i.i.i.i.i.i.i198.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i198.ph, %scalar.ph560.preheader ], [ %i.dh, %scalar.ph560.prol ]
  %i.di = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i198.ph, %i.ay
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph560

scalar.ph560:                                     ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560
  %.09.i.i.i.i.i.i.i.i.i.i198 = phi i64 [ %i.ed, %scalar.ph560 ], [ %.09.i.i.i.i.i.i.i.i.i.i198.unr, %scalar.ph560.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr [8 x i8], ptr %i.cp, i64 %.09.i.i.i.i.i.i.i.i.i.i198
  %i.dl = getelementptr [8 x i8], ptr %i.cq, i64 %.09.i.i.i.i.i.i.i.i.i.i198
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !78
  %i.dn = fmul double %i.dm, -2.000000e+00
  store double %i.dn, ptr %i.dk, align 8, !tbaa !78
  %i.do = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i198, 1 ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %i.cp, i64 %i.do
  %i.dq = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !78
  %i.ds = fmul double %i.dr, -2.000000e+00
  store double %i.ds, ptr %i.dp, align 8, !tbaa !78
  %i.dt = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i198, 2 ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.cp, i64 %i.dt
  %i.dv = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !78
  %i.dx = fmul double %i.dw, -2.000000e+00
  store double %i.dx, ptr %i.du, align 8, !tbaa !78
  %i.dy = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i198, 3 ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.cp, i64 %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dy
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !78
  %i.ec = fmul double %i.eb, -2.000000e+00
  store double %i.ec, ptr %i.dz, align 8, !tbaa !78
  %i.ed = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i198, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i199.3 = icmp eq i64 %i.ed, %i.ay
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i199.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph560, !llvm.loop !99

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560, %middle.block569, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView") align 8 %29, ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_11IndexedViewIS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ef = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !75
  call void @free(ptr noundef %i.eg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.eh = icmp eq i32 %i.c, 0
  br i1 %i.eh, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ei = load ptr, ptr %28, align 8, !tbaa !76   ; 8 uses
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !84 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !88 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.el, 0    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.en, 0   ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eq = sdiv i64 9223372036854775807, %i.en
  %i.er = icmp sgt i64 %i.el, %i.eq
  br i1 %i.er, label %.invoke520, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.es = mul nsw i64 %i.en, %i.el                ; 9 uses
  %.not.i283 = icmp eq i64 %i.es, 0
  br i1 %.not.i283, label %._crit_edge456.thread512, label %bb.i

._crit_edge456.thread512:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.el, ptr %i.eo, align 8, !tbaa !84
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !88
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %bb.j, label %._crit_edge456.thread513

._crit_edge456.thread513:                         ; preds = %bb.i
  store i64 %i.el, ptr %i.eo, align 8, !tbaa !84
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !88
  %.nonneg = sub i64 0, %i.es
  %i.eu = and i64 %.nonneg, -2
  %i.ev = sub i64 0, %i.eu
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ew = icmp samesign ugt i64 %i.es, 2305843009213693951
  br i1 %i.ew, label %.invoke520, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i286

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i286: ; preds = %bb.j
  %i.ex = shl nuw i64 %i.es, 3
  %i.ey = call noalias ptr @malloc(i64 noundef %i.ex) #25 ; 5 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.invoke520, label %._crit_edge456

.invoke520:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i286, %bb.j, %bb.h
  %i.fa = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fa, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont521 unwind label %bb.n

.cont521:                                         ; preds = %.invoke520
  unreachable

._crit_edge456:                                   ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i286
  store ptr %i.ey, ptr %30, align 8, !tbaa !76
  store i64 %i.el, ptr %i.eo, align 8, !tbaa !84
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !88
  %i.fb = and i64 %i.es, 2305843009213693950      ; 3 uses
  %.not = icmp eq i64 %i.es, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge456.thread513, %._crit_edge456.thread512, %._crit_edge456
  %i.fc = phi i64 [ 0, %._crit_edge456.thread512 ], [ %i.ev, %._crit_edge456.thread513 ], [ %i.fb, %._crit_edge456 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.fd = phi ptr [ null, %._crit_edge456.thread512 ], [ null, %._crit_edge456.thread513 ], [ %i.ey, %._crit_edge456 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi511 = phi i64 [ 0, %._crit_edge456.thread512 ], [ %i.es, %._crit_edge456.thread513 ], [ 1, %._crit_edge456 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.fe = icmp slt i64 %i.fc, %.pre-phi511
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ff = ptrtoaddr ptr %i.fd to i64
  %i.fg = sub i64 %.pre-phi511, %i.fc             ; 3 uses
end_hunk_0
