Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cotmatrix?download=true
inline.NumInlined: 11620
inline.NumDeleted: 5654
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_12SparseMatrixIT2_Li0EiEESL_SL_:bb.a
  %i.cu = ptrtoaddr ptr %i.co to i64
  %min.iters.check2352 = icmp ult i64 %i.cq, 14
  %ident.check2349 = icmp ne i64 %i.ce, 1
  %ident.check2350 = icmp ne i64 %i.cr, 1
  %i.cv = or i1 %ident.check2349, %ident.check2350
  %n.vec2354 = and i64 %i.cq, 9223372036854775804 ; 3 uses
  %cmp.n2360 = icmp eq i64 %i.cq, %n.vec2354
  %xtraiter = and i64 %i.cq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader.preheader, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEaSINS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit.loopexit
  %.01251279 = phi i64 [ %i.eq, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEaSINS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit.loopexit ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader.preheader ] ; 4 uses
  %i.cw = shl i64 %.01251279, 3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.01251279
  %i.cx = load i32, ptr %gep, align 4, !tbaa !24
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cy ; 6 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.01251279 ; 6 uses
  %brmerge = select i1 %min.iters.check2352, i1 true, i1 %i.cv
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader
  %i.db = shl nsw i64 %i.cy, 3
  %i.dc = add i64 %i.cw, %i.ct
  %i.dd = add i64 %i.db, %i.cu
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371, label %vector.body2355

vector.body2355:                                  ; preds = %vector.memcheck, %vector.body2355
  %index2356 = phi i64 [ %index.next2358, %vector.body2355 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.da, i64 %index2356 ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %index2356 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x double>, ptr %i.dg, align 8, !tbaa !25
  %wide.load2357 = load <2 x double>, ptr %i.dh, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x double> %wide.load, ptr %i.df, align 8, !tbaa !25
  store <2 x double> %wide.load2357, ptr %i.di, align 8, !tbaa !25
  %index.next2358 = add nuw i64 %index2356, 4     ; 2 uses
  %i.dj = icmp eq i64 %index.next2358, %n.vec2354
  br i1 %i.dj, label %middle.block2359, label %vector.body2355, !llvm.loop !214

middle.block2359:                                 ; preds = %vector.body2355
  br i1 %cmp.n2360, label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEaSINS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371

.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader, %vector.memcheck, %middle.block2359
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec2354, %middle.block2359 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371 ]
  %i.dk = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.ce
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dk
  %i.dm = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.cr
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !25
  store double %i.do, ptr %i.dl, align 8, !tbaa !25
  %i.dp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol, !llvm.loop !215

.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader2371 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol ]
  %i.dq = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.cq
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEaSINS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243

.lr.ph.i.i.i.i.i.i.i.i.i.i243:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i243
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i243 ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol.loopexit ] ; 6 uses
  %i.ds = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ce
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.ds
  %i.du = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.cr
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !25
  store double %i.dw, ptr %i.dt, align 8, !tbaa !25
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dy = mul nsw i64 %i.dx, %i.ce
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dy
  %i.ea = mul nsw i64 %i.dx, %i.cr
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !25
  store double %i.ec, ptr %i.dz, align 8, !tbaa !25
  %i.ed = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ee = mul nsw i64 %i.ed, %i.ce
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.ee
  %i.eg = mul nsw i64 %i.ed, %i.cr
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !25
  store double %i.ei, ptr %i.ef, align 8, !tbaa !25
  %i.ej = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ek = mul nsw i64 %i.ej, %i.ce
  %i.el = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.ek
  %i.em = mul nsw i64 %i.ej, %i.cr
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !25
  store double %i.eo, ptr %i.el, align 8, !tbaa !25
  %i.ep = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ep, %i.cq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEaSINS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243, !llvm.loop !216

_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEaSINS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i243.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i243, %middle.block2359
  %i.eq = add nuw nsw i64 %.01251279, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.eq, %i.cb
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.i.i.i.i.i.i.i.i.i.i243.preheader, !llvm.loop !217

._crit_edge.split:                                ; preds = %_ZN5Eigen5BlockINS0_INS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEaSINS0_IKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit.loopexit, %.lr.ph1280, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store i64 %i.cc, ptr %17, align 8, !tbaa !38, !alias.scope !285
  store i64 %i.cb, ptr %i.j, align 8, !tbaa !38, !alias.scope !285
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !40, !alias.scope !285
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %._crit_edge.split
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef %i.cc, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.j

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.h
  %i.er = load i64, ptr %i.l, align 8, !tbaa !42
  %.not.i.i.i.i.i.i.i245 = icmp eq i64 %i.er, %i.cc
  br i1 %.not.i.i.i.i.i.i.i245, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef %i.cc, i64 noundef 1)
          to label %.noexc.i.i246 unwind label %bb.j

.noexc.i.i246:                                    ; preds = %bb.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !42
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i246, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.es = phi i64 [ %i.cc, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i, %.noexc.i.i246 ] ; 2 uses
  %i.et = icmp slt i64 %i.es, 1
  br i1 %i.et, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.eu = load ptr, ptr %18, align 8, !tbaa !43
  %.idx.i.i.i.i.i.i.i.i247 = shl nuw nsw i64 %i.es, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.eu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i247, i1 false), !tbaa !25
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body251

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  br i1 %i.ci, label %._crit_edge1290, label %.lr.ph1289

.lr.ph1289:                                       ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.ew = load ptr, ptr %15, align 8, !tbaa !31, !noalias !286 ; 4 uses
  %i.ex = load i64, ptr %i.h, align 8, !tbaa !30  ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ex, 4 ; 4 uses
  %i.ey = load ptr, ptr %18, align 8
  br label %.lr.ph1287

bb.k:                                             ; preds = %._crit_edge.split
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.ac

.lr.ph1287:                                       ; preds = %.lr.ph1289, %..loopexit820_crit_edge.split.us
  %.01241288 = phi i64 [ 0, %.lr.ph1289 ], [ %i.fa, %..loopexit820_crit_edge.split.us ] ; 2 uses
  %i.fa = add nuw nsw i64 %.01241288, 1           ; 3 uses
  %i.fb = urem i64 %i.fa, %i.cb
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.01241288 ; 3 uses
  %i.fe = load double, ptr %i.fc, align 8, !tbaa !25
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !25 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ex
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ex
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !25
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !25 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.fl = getelementptr inbounds i8, ptr %i.fd, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.fm = load double, ptr %i.fk, align 8, !tbaa !25 ; 2 uses
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !25 ; 2 uses
  %i.fo = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fe, i64 1
  %i.fq = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.ff, i64 1 ; 2 uses
  %i.fs = fsub <2 x double> %i.fp, %i.fr          ; 6 uses
  %i.ft = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fm, i64 1
  %i.fv = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fn, i64 1 ; 2 uses
  %i.fx = fsub <2 x double> %i.fu, %i.fw          ; 4 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0 ; 2 uses
  %i.fz = extractelement <2 x double> %i.fs, i64 1 ; 2 uses
  %i.ga = fneg <2 x double> %i.fw
  %i.gb = fmul <2 x double> %i.fs, %i.ga
  %i.gc = shufflevector <2 x double> %i.fx, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.fr, <2 x double> %i.gb)
  %i.ge = fneg double %i.ff
  %i.gf = fmul double %i.fy, %i.ge
  %i.gg = call double @llvm.fmuladd.f64(double %i.fz, double %i.fj, double %i.gf)
  %i.gh = fneg <2 x double> %i.fx                 ; 3 uses
  %i.gi = fneg double %i.fz                       ; 2 uses
  %i.gj = load ptr, ptr %16, align 8
  %i.gk = load i64, ptr %i.m, align 8
  %42 = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = insertelement <2 x double> poison, double %i.gi, i64 0
  %43 = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1283.us

.lr.ph1283.us:                                    ; preds = %._crit_edge1284.us, %.lr.ph1287
  %.01231285.us = phi i64 [ 0, %.lr.ph1287 ], [ %i.ij, %._crit_edge1284.us ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.01231285.us ; 4 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.ex ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !25, !noalias !287 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.gm, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !25, !noalias !287 ; 2 uses
  %i.gr = load double, ptr %i.gm, align 8, !tbaa !25, !noalias !287 ; 2 uses
  %i.gs = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gr, i64 1
  %i.gu = fmul <2 x double> %i.gt, %i.gh
  %i.gv = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gq, i64 1
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.fs, <2 x double> %i.gu)
  %i.gy = fmul double %i.go, %i.gi
  %i.gz = call double @llvm.fmuladd.f64(double %i.gr, double %i.fy, double %i.gy)
  %i.ha = fmul <2 x double> %i.gd, %i.gx          ; 2 uses
  %shift = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ha, %shift
  %i.hb = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hc = fmul double %i.gg, %i.gz
  %i.hd = fadd double %i.hc, %i.hb
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.01231285.us ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !25
  %i.hg = call double @llvm.fmuladd.f64(double %i.hd, double -2.000000e+00, double %i.hf)
  store double %i.hg, ptr %i.he, align 8, !tbaa !25
  %i.hh = getelementptr [8 x i8], ptr %i.gj, i64 %.01231285.us
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph1283.us, %bb.l
  %.01221281.us = phi i64 [ 0, %.lr.ph1283.us ], [ %i.ii, %bb.l ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.01221281.us ; 3 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.ex
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !25, !noalias !288
  %i.hl = getelementptr inbounds i8, ptr %i.hi, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !25, !noalias !288 ; 2 uses
  %i.hn = load double, ptr %i.hi, align 8, !tbaa !25, !noalias !288 ; 2 uses
  %i.ho = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hn, i64 1
  %i.hq = fmul <2 x double> %i.hp, %i.gh
  %i.hr = insertelement <2 x double> poison, double %i.hk, i64 0 ; 2 uses
  %i.hs = insertelement <2 x double> %i.hr, double %i.hm, i64 1
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.fs, <2 x double> %i.hq)
  %i.hu = load double, ptr %i.gn, align 8, !tbaa !25, !noalias !289 ; 2 uses
  %i.hv = load double, ptr %i.gp, align 8, !tbaa !25, !noalias !289 ; 2 uses
  %44 = load double, ptr %i.gm, align 8, !tbaa !25, !noalias !289 ; 2 uses
  %45 = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hw = insertelement <2 x double> %45, double %44, i64 1
  %46 = fmul <2 x double> %i.hw, %i.gh
  %47 = insertelement <2 x double> poison, double %i.hu, i64 0
  %48 = insertelement <2 x double> %47, double %i.hv, i64 1
  %49 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %i.fs, <2 x double> %46)
  %i.hx = insertelement <2 x double> %i.hr, double %i.hu, i64 1
  %i.hy = fmul <2 x double> %i.hx, %43
  %i.hz = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %44, i64 1
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %42, <2 x double> %i.hy) ; 2 uses
  %i.ic = fmul <2 x double> %i.ht, %49            ; 2 uses
  %shift2363 = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2364 = fadd <2 x double> %i.ic, %shift2363
  %shift2366 = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2367 = fmul <2 x double> %i.ib, %shift2366
  %foldExtExtBinop2369 = fadd <2 x double> %foldExtExtBinop2367, %foldExtExtBinop2364
  %i.id = extractelement <2 x double> %foldExtExtBinop2369, i64 0
  %i.ie = mul nsw i64 %i.gk, %.01221281.us
  %i.if = getelementptr [8 x i8], ptr %i.hh, i64 %i.ie ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !25
  %i.ih = call double @llvm.fmuladd.f64(double %i.id, double 2.000000e+00, double %i.ig)
  store double %i.ih, ptr %i.if, align 8, !tbaa !25
  %i.ii = add nuw nsw i64 %.01221281.us, 1        ; 2 uses
  %exitcond1680.not = icmp eq i64 %i.ii, %i.cb
  br i1 %exitcond1680.not, label %._crit_edge1284.us, label %bb.l, !llvm.loop !232

._crit_edge1284.us:                               ; preds = %bb.l
  %i.ij = add nuw nsw i64 %.01231285.us, 1        ; 2 uses
  %exitcond1681.not = icmp eq i64 %i.ij, %i.cb
  br i1 %exitcond1681.not, label %..loopexit820_crit_edge.split.us, label %.lr.ph1283.us, !llvm.loop !233

..loopexit820_crit_edge.split.us:                 ; preds = %._crit_edge1284.us
  %exitcond1682.not = icmp eq i64 %i.fa, %i.cb
  br i1 %exitcond1682.not, label %._crit_edge1290, label %.lr.ph1287, !llvm.loop !234

._crit_edge1290:                                  ; preds = %..loopexit820_crit_edge.split.us, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.ik = load ptr, ptr %16, align 8, !tbaa !32, !noalias !290
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.cb ; 6 uses
  %i.im = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !290 ; 7 uses
  %i.in = load i64, ptr %i.m, align 8, !tbaa !19  ; 6 uses
  %i.io = icmp sgt i64 %i.im, 0
  br i1 %i.io, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit832

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %._crit_edge1290
  %min.iters.check = icmp ugt i64 %i.im, 3
  %ident.check.not = icmp eq i64 %i.in, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.im, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.il, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ip, align 8, !tbaa !25
  store <2 x double> splat (double 1.000000e+00), ptr %i.iq, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.im, %n.vec
  br i1 %cmp.n, label %.loopexit832, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter2669 = and i64 %i.im, 3                ; 2 uses
  %lcmp.mod2670.not = icmp eq i64 %xtraiter2669, 0
  br i1 %lcmp.mod2670.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.iu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372 ] ; 2 uses
  %prol.iter2671 = phi i64 [ %prol.iter2671.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372 ]
  %i.is = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, %i.in
  %i.it = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.is
  store double 1.000000e+00, ptr %i.it, align 8, !tbaa !25
  %i.iu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter2671.next = add i64 %prol.iter2671, 1 ; 2 uses
  %prol.iter2671.cmp.not = icmp eq i64 %prol.iter2671.next, %xtraiter2669
  br i1 %prol.iter2671.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !238

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader2372 ], [ %i.iu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.iv = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %i.im
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %.loopexit832, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ix = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.in
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.ix
  store double 1.000000e+00, ptr %i.iy, align 8, !tbaa !25
  %i.iz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ja = mul nsw i64 %i.iz, %i.in
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.ja
  store double 1.000000e+00, ptr %i.jb, align 8, !tbaa !25
  %i.jc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.jd = mul nsw i64 %i.jc, %i.in
  %i.je = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.jd
  store double 1.000000e+00, ptr %i.je, align 8, !tbaa !25
  %i.jf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.jg = mul nsw i64 %i.jf, %i.in
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.jg
  store double 1.000000e+00, ptr %i.jh, align 8, !tbaa !25
  %i.ji = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ji, %i.im
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit832, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !239

.loopexit832:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge1290
  %i.jj = load ptr, ptr %18, align 8, !tbaa !43
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.cb
  store double 1.000000e+00, ptr %i.jk, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(192) %20, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %.loopexit832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.jl = load i64, ptr %i.o, align 8, !tbaa !33
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.jl, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %.body267

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.m
  %i.jm = load i64, ptr %i.o, align 8, !tbaa !33  ; 2 uses
  %i.jn = load i64, ptr %i.p, align 8, !tbaa !42
  %.not.i.i.i.i.i265 = icmp eq i64 %i.jn, %i.jm
  br i1 %.not.i.i.i.i.i265, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.jm, i64 noundef 1)
          to label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i unwind label %.body267

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i: ; preds = %bb.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11_solve_implINS1_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(192) %20, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.o unwind label %.body267

.body267:                                         ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i, %bb.n, %bb.m
  %i.jo = landingpad { ptr, i32 }
          cleanup
  %i.jp = load ptr, ptr %19, align 8, !tbaa !43
  call void @free(ptr noundef %i.jp) #26
  call void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %20) #26
  br label %bb.t

bb.o:                                             ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i
  %i.jq = load ptr, ptr %i.q, align 8, !tbaa !45
  call void @free(ptr noundef %i.jq) #26
  %i.jr = load ptr, ptr %i.r, align 8, !tbaa !43
  call void @free(ptr noundef %i.jr) #26
  %i.js = load ptr, ptr %i.s, align 8, !tbaa !45
  call void @free(ptr noundef %i.js) #26
  %i.jt = load ptr, ptr %i.t, align 8, !tbaa !45
  call void @free(ptr noundef %i.jt) #26
  %i.ju = load ptr, ptr %i.u, align 8, !tbaa !45
  call void @free(ptr noundef %i.ju) #26
  %i.jv = load ptr, ptr %i.v, align 8, !tbaa !48
  call void @free(ptr noundef %i.jv) #26
  %i.jw = load ptr, ptr %i.w, align 8, !tbaa !28
  call void @free(ptr noundef %i.jw) #26
  %i.jx = load ptr, ptr %i.x, align 8, !tbaa !43
  call void @free(ptr noundef %i.jx) #26
  %i.jy = load ptr, ptr %20, align 8, !tbaa !32
  call void @free(ptr noundef %i.jy) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.jz = load ptr, ptr %15, align 8, !tbaa !31, !noalias !291 ; 3 uses
  %i.ka = load i64, ptr %i.h, align 8, !tbaa !30, !noalias !291 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.8..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.jz, ptr %i.z, align 8
  store i64 %i.cb, ptr %.sroa.7568.8..sroa_idx, align 8
  store ptr %15, ptr %.sroa.9570.8..sroa_idx, align 8
  store i64 %i.ka, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i64 %i.y, ptr %10, align 8
  %i.kb = load ptr, ptr %19, align 8, !tbaa !43
  store ptr %i.kb, ptr %i.aa, align 8, !tbaa !50
  store ptr %i.jz, ptr %i.ab, align 8, !tbaa !293
  store i64 %i.ka, ptr %i.ac, align 8, !tbaa !38
  %i.kc = load i64, ptr %i.p, align 8, !tbaa !42
  store i64 %i.kc, ptr %i.ad, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %14, ptr %11, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %11, ptr %12, align 8, !tbaa !304
  store ptr %10, ptr %i.ae, align 8, !tbaa !305
  store ptr %13, ptr %i.af, align 8, !tbaa !306
  store ptr %14, ptr %i.ag, align 8, !tbaa !307
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_7ProductINS_9TransposeIKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEENS_5BlockINS4_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi3ELb0EEELi1EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.cb ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ke = load i64, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %i.kf = load double, ptr %14, align 8, !tbaa !25
  store double %i.kf, ptr %i.kd, align 8, !tbaa !25
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ke
  %i.kh = load double, ptr %i.ah, align 8, !tbaa !25
  store double %i.kh, ptr %i.kg, align 8, !tbaa !25
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ke, 4
  %i.ki = getelementptr inbounds i8, ptr %i.kd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kj = load double, ptr %i.ai, align 8, !tbaa !25
  store double %i.kj, ptr %i.ki, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br i1 %i.ci, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %.lr.ph1296

.lr.ph1296:                                       ; preds = %bb.p
end_hunk_0
