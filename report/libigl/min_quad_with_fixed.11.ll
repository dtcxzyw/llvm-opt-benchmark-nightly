Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.11?download=true
inline.NumInlined: 14995
inline.NumDeleted: 7635
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES4_S3_S3_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE:_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %i.ah
  %i.aj = load double, ptr %i.ae, align 8, !tbaa !65
  store double %i.aj, ptr %i.ai, align 8, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.preheader415, !llvm.loop !245

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader415
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader415.epil.preheader

.preheader415.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader415.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader415.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod628 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod628)
  br label %.preheader415.epil

.preheader415.epil:                               ; preds = %.preheader415.epil, %.preheader415.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader415.epil.preheader ], [ %indvars.iv.next.epil, %.preheader415.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader415.epil.preheader ], [ %epil.iter.next, %.preheader415.epil ]
  %i.ak = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.j, i64 %i.an
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !65
  store double %i.ap, ptr %i.ao, align 8, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader415.epil, !llvm.loop !246

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader415.epil, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !315, !range !25, !noundef !26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.ad

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !68 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !69 ; 8 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bh, align 8, !tbaa !71
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.a
  %.sink.i = phi ptr [ %i.bf, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.a ] ; 2 uses
  store ptr %.sink.i, ptr %27, align 8, !tbaa !63
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.ac, %bb.cq, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.c ], [ %.pn187.pn.pn, %bb.ac ], [ %.pn165.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cq ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.invoke
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %27, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.bj) #24
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.bk = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 7 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !68
  store i64 1, ptr %i.bb, align 8, !tbaa !72
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !72
  %i.bn = mul nsw i64 %i.bm, %i.aw
  %i.bo = icmp sgt i64 %i.bn, 0
  %i.bp = icmp sgt i64 %i.aw, 0
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %i.bq = ptrtoaddr ptr %i.bk to i64
  %i.br = load ptr, ptr %1, align 8, !tbaa !63    ; 7 uses
  %min.iters.check545 = icmp ult i64 %i.aw, 8
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bq
  %diff.check547 = icmp ugt i64 %i.bt, -32
  %or.cond620 = select i1 %min.iters.check545, i1 true, i1 %diff.check547
  br i1 %or.cond620, label %scalar.ph544.preheader, label %vector.ph548

vector.ph548:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %n.vec549 = and i64 %i.aw, 9223372036854775804  ; 3 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next554, %vector.body550 ] ; 3 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bk, i64 %index551 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.br, i64 %index551 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %wide.load552 = load <2 x double>, ptr %i.bv, align 8, !tbaa !65
  %wide.load553 = load <2 x double>, ptr %i.bw, align 8, !tbaa !65
  %i.bx = getelementptr i8, ptr %i.bu, i64 16
  store <2 x double> %wide.load552, ptr %i.bu, align 8, !tbaa !65
  store <2 x double> %wide.load553, ptr %i.bx, align 8, !tbaa !65
  %index.next554 = add nuw i64 %index551, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next554, %n.vec549
  br i1 %i.by, label %middle.block555, label %vector.body550, !llvm.loop !247

middle.block555:                                  ; preds = %vector.body550
  %cmp.n556 = icmp eq i64 %i.aw, %n.vec549
  br i1 %cmp.n556, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph544.preheader

scalar.ph544.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block555
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %n.vec549, %middle.block555 ] ; 3 uses
  %xtraiter637 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod638.not = icmp eq i64 %xtraiter637, 0
  br i1 %lcmp.mod638.not, label %scalar.ph544.prol.loopexit, label %scalar.ph544.prol

scalar.ph544.prol:                                ; preds = %scalar.ph544.preheader, %scalar.ph544.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cb, %scalar.ph544.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph544.preheader ] ; 3 uses
  %prol.iter639 = phi i64 [ %prol.iter639.next, %scalar.ph544.prol ], [ 0, %scalar.ph544.preheader ]
  %i.bz = getelementptr [8 x i8], ptr %i.bk, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %gep.i.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.br, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %i.ca = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !65
  store double %i.ca, ptr %i.bz, align 8, !tbaa !65
  %i.cb = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter639.next = add i64 %prol.iter639, 1   ; 2 uses
  %prol.iter639.cmp.not = icmp eq i64 %prol.iter639.next, %xtraiter637
  br i1 %prol.iter639.cmp.not, label %scalar.ph544.prol.loopexit, label %scalar.ph544.prol, !llvm.loop !248

scalar.ph544.prol.loopexit:                       ; preds = %scalar.ph544.prol, %scalar.ph544.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph544.preheader ], [ %i.cb, %scalar.ph544.prol ]
  %i.cc = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.aw
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph544

scalar.ph544:                                     ; preds = %scalar.ph544.prol.loopexit, %scalar.ph544
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cp, %scalar.ph544 ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph544.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bk, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.br, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.cf = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !65
  store double %i.cf, ptr %i.ce, align 8, !tbaa !65
  %i.cg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.bk, i64 %i.cg
  %gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.br, i64 %i.cg
  %i.ci = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !65
  store double %i.ci, ptr %i.ch, align 8, !tbaa !65
  %i.cj = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.bk, i64 %i.cj
  %gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %i.br, i64 %i.cj
  %i.cl = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !65
  store double %i.cl, ptr %i.ck, align 8, !tbaa !65
  %i.cm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bk, i64 %i.cm
  %gep.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %i.br, i64 %i.cm
  %i.co = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !65
  store double %i.co, ptr %i.cn, align 8, !tbaa !65
  %i.cp = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cp, %i.aw
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph544, !llvm.loop !249

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %scalar.ph544.prol.loopexit, %scalar.ph544, %middle.block555, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %i.cq = icmp sgt i64 %i.ay, 0
  br i1 %i.cq, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i193, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i193:          ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.cr = load ptr, ptr %27, align 8, !tbaa !63, !noalias !316 ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.aw ; 6 uses
  %i.ct = load ptr, ptr %3, align 8, !tbaa !61    ; 7 uses
  %min.iters.check561 = icmp ult i64 %i.ay, 10
  br i1 %min.iters.check561, label %scalar.ph560.preheader, label %vector.memcheck562

vector.memcheck562:                               ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i193
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = ptrtoaddr ptr %i.cr to i64
  %i.cw = shl nsw i64 %i.aw, 3
  %i.cx = add i64 %i.cw, %i.cv
  %i.cy = sub i64 %i.cu, %i.cx
  %diff.check563 = icmp ugt i64 %i.cy, -32
  br i1 %diff.check563, label %scalar.ph560.preheader, label %vector.ph564

vector.ph564:                                     ; preds = %vector.memcheck562
  %n.vec565 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph564
  %index567 = phi i64 [ 0, %vector.ph564 ], [ %index.next570, %vector.body566 ] ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cs, i64 %index567 ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.ct, i64 %index567 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load568 = load <2 x double>, ptr %i.da, align 8, !tbaa !65
  %wide.load569 = load <2 x double>, ptr %i.db, align 8, !tbaa !65
  %i.dc = fmul <2 x double> %wide.load568, splat (double -2.000000e+00)
  %i.dd = fmul <2 x double> %wide.load569, splat (double -2.000000e+00)
  %i.de = getelementptr i8, ptr %i.cz, i64 16
  store <2 x double> %i.dc, ptr %i.cz, align 8, !tbaa !65
  store <2 x double> %i.dd, ptr %i.de, align 8, !tbaa !65
  %index.next570 = add nuw i64 %index567, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next570, %n.vec565
  br i1 %i.df, label %middle.block571, label %vector.body566, !llvm.loop !252

middle.block571:                                  ; preds = %vector.body566
  %cmp.n572 = icmp eq i64 %i.ay, %n.vec565
  br i1 %cmp.n572, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph560.preheader

scalar.ph560.preheader:                           ; preds = %vector.memcheck562, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i193, %middle.block571
  %.09.i.i.i.i.i.i.i.i.i.i196.ph = phi i64 [ 0, %vector.memcheck562 ], [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i193 ], [ %n.vec565, %middle.block571 ] ; 3 uses
  %xtraiter640 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod641.not = icmp eq i64 %xtraiter640, 0
  br i1 %lcmp.mod641.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol

scalar.ph560.prol:                                ; preds = %scalar.ph560.preheader, %scalar.ph560.prol
  %.09.i.i.i.i.i.i.i.i.i.i196.prol = phi i64 [ %i.dk, %scalar.ph560.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i196.ph, %scalar.ph560.preheader ] ; 3 uses
  %prol.iter642 = phi i64 [ %prol.iter642.next, %scalar.ph560.prol ], [ 0, %scalar.ph560.preheader ]
  %i.dg = getelementptr [8 x i8], ptr %i.cs, i64 %.09.i.i.i.i.i.i.i.i.i.i196.prol
  %i.dh = getelementptr [8 x i8], ptr %i.ct, i64 %.09.i.i.i.i.i.i.i.i.i.i196.prol
  %i.di = load double, ptr %i.dh, align 8, !tbaa !65
  %i.dj = fmul double %i.di, -2.000000e+00
  store double %i.dj, ptr %i.dg, align 8, !tbaa !65
  %i.dk = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i196.prol, 1 ; 2 uses
  %prol.iter642.next = add i64 %prol.iter642, 1   ; 2 uses
  %prol.iter642.cmp.not = icmp eq i64 %prol.iter642.next, %xtraiter640
  br i1 %prol.iter642.cmp.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol, !llvm.loop !253

scalar.ph560.prol.loopexit:                       ; preds = %scalar.ph560.prol, %scalar.ph560.preheader
  %.09.i.i.i.i.i.i.i.i.i.i196.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i196.ph, %scalar.ph560.preheader ], [ %i.dk, %scalar.ph560.prol ]
  %i.dl = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i196.ph, %i.ay
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph560

scalar.ph560:                                     ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560
  %.09.i.i.i.i.i.i.i.i.i.i196 = phi i64 [ %i.eg, %scalar.ph560 ], [ %.09.i.i.i.i.i.i.i.i.i.i196.unr, %scalar.ph560.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr [8 x i8], ptr %i.cs, i64 %.09.i.i.i.i.i.i.i.i.i.i196
  %i.do = getelementptr [8 x i8], ptr %i.ct, i64 %.09.i.i.i.i.i.i.i.i.i.i196
  %i.dp = load double, ptr %i.do, align 8, !tbaa !65
  %i.dq = fmul double %i.dp, -2.000000e+00
  store double %i.dq, ptr %i.dn, align 8, !tbaa !65
  %i.dr = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i196, 1 ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.cs, i64 %i.dr
  %i.dt = getelementptr [8 x i8], ptr %i.ct, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !65
  %i.dv = fmul double %i.du, -2.000000e+00
  store double %i.dv, ptr %i.ds, align 8, !tbaa !65
  %i.dw = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i196, 2 ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.cs, i64 %i.dw
  %i.dy = getelementptr [8 x i8], ptr %i.ct, i64 %i.dw
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !65
  %i.ea = fmul double %i.dz, -2.000000e+00
  store double %i.ea, ptr %i.dx, align 8, !tbaa !65
  %i.eb = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i196, 3 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.cs, i64 %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.ct, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !65
  %i.ef = fmul double %i.ee, -2.000000e+00
  store double %i.ef, ptr %i.ec, align 8, !tbaa !65
  %i.eg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i196, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i197.3 = icmp eq i64 %i.eg, %i.ay
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i197.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph560, !llvm.loop !254

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560, %middle.block571, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9ReplicateIS2_Lin1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView") align 8 %29, ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_9ReplicateINS1_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_11IndexedViewIS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !62
  call void @free(ptr noundef %i.ej) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.ek = icmp eq i32 %i.c, 0
  br i1 %i.ek, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.el = load ptr, ptr %28, align 8, !tbaa !63   ; 8 uses
  %i.em = ptrtoaddr ptr %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !68 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !72 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.eo, 0    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, 0   ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.et = sdiv i64 9223372036854775807, %i.eq
  %i.eu = icmp sgt i64 %i.eo, %i.et
  br i1 %i.eu, label %.invoke518, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ev = mul nsw i64 %i.eq, %i.eo                ; 9 uses
  %.not.i281 = icmp eq i64 %i.ev, 0
  br i1 %.not.i281, label %._crit_edge454.thread510, label %bb.i

._crit_edge454.thread510:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.eo, ptr %i.er, align 8, !tbaa !68
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !72
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.ew = icmp sgt i64 %i.ev, 0
  br i1 %i.ew, label %bb.j, label %._crit_edge454.thread511

._crit_edge454.thread511:                         ; preds = %bb.i
  store i64 %i.eo, ptr %i.er, align 8, !tbaa !68
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !72
  %.nonneg = sub i64 0, %i.ev
  %i.ex = and i64 %.nonneg, -2
  %i.ey = sub i64 0, %i.ex
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ez = icmp samesign ugt i64 %i.ev, 2305843009213693951
  br i1 %i.ez, label %.invoke518, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i284

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i284: ; preds = %bb.j
  %i.fa = shl nuw i64 %i.ev, 3
  %i.fb = call noalias ptr @malloc(i64 noundef %i.fa) #25 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %.invoke518, label %._crit_edge454

.invoke518:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i284, %bb.j, %bb.h
  %i.fd = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fd, align 8, !tbaa !71
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont519 unwind label %bb.aa

.cont519:                                         ; preds = %.invoke518
  unreachable

._crit_edge454:                                   ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i284
  store ptr %i.fb, ptr %30, align 8, !tbaa !63
  store i64 %i.eo, ptr %i.er, align 8, !tbaa !68
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !72
  %i.fe = and i64 %i.ev, 2305843009213693950      ; 3 uses
  %.not = icmp eq i64 %i.ev, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge454.thread511, %._crit_edge454.thread510, %._crit_edge454
  %i.ff = phi i64 [ 0, %._crit_edge454.thread510 ], [ %i.ey, %._crit_edge454.thread511 ], [ %i.fe, %._crit_edge454 ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.fg = phi ptr [ null, %._crit_edge454.thread510 ], [ null, %._crit_edge454.thread511 ], [ %i.fb, %._crit_edge454 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi509 = phi i64 [ 0, %._crit_edge454.thread510 ], [ %i.ev, %._crit_edge454.thread511 ], [ 1, %._crit_edge454 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.fh = icmp slt i64 %i.ff, %.pre-phi509
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.fi = ptrtoaddr ptr %i.fg to i64
  %i.fj = sub i64 %.pre-phi509, %i.ff             ; 3 uses
  %min.iters.check577 = icmp ult i64 %i.fj, 8
  %i.fk = sub i64 %i.em, %i.fi
  %diff.check579 = icmp ugt i64 %i.fk, -32
  %or.cond621 = select i1 %min.iters.check577, i1 true, i1 %diff.check579
  br i1 %or.cond621, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader624, label %vector.ph580

vector.ph580:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec581 = and i64 %i.fj, -4                   ; 3 uses
  %i.fl = add i64 %i.ff, %n.vec581
  br label %vector.body582

vector.body582:                                   ; preds = %vector.body582, %vector.ph580
  %index583 = phi i64 [ 0, %vector.ph580 ], [ %index.next586, %vector.body582 ] ; 2 uses
  %i.fm = add i64 %i.ff, %index583                ; 2 uses
end_hunk_0
