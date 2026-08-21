Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scaf?download=true
inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN3igl8triangle4scaf32compute_scaffold_gradient_matrixERNS0_8SCAFDataERN5Eigen12SparseMatrixIdLi0EiEES7_:bb.a
  br i1 %.not, label %._crit_edge388, label %.lr.ph387

.lr.ph387:                                        ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !120 ; 7 uses
  %i.dh = load ptr, ptr %i.o, align 8, !tbaa !108, !noalias !121 ; 8 uses
  %i.di = load i64, ptr %i.de, align 8, !tbaa !124, !noalias !125 ; 4 uses
  %i.dj = icmp eq i64 %i.di, 0                    ; 2 uses
  %i.dk = icmp sgt i64 %i.di, 1                   ; 2 uses
  %i.dl = add i64 %i.di, -1                       ; 6 uses
  %i.dm = add i64 %i.di, -2                       ; 2 uses
  %xtraiter471 = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dm, 0
  %unroll_iter = and i64 %i.dl, -2
  %lcmp.mod472.not = icmp eq i64 %xtraiter471, 0
  %lcmp.mod474 = trunc i64 %i.dl to i1
  %xtraiter475 = and i64 %i.dl, 1
  %i.do = icmp eq i64 %i.dm, 0
  %unroll_iter479 = and i64 %i.dl, -2
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  %lcmp.mod478 = trunc i64 %i.dl to i1
  br label %bb.k

._crit_edge388.loopexit:                          ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94
  %i.dp = fmul double %.sroa.speculated, 2.500000e-01
  br label %._crit_edge388

._crit_edge388:                                   ; preds = %._crit_edge388.loopexit, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit
  %.0360.lcssa = phi double [ +inf, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit ], [ %i.dp, %._crit_edge388.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i8 0, ptr %7, align 8, !tbaa !65
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 -1, ptr %i.dq, align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dr, i8 0, i64 56, i1 false)
  %i.dt = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #33 ; 3 uses
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !67
  %.not6.i108 = icmp eq ptr %i.dt, null
  br i1 %.not6.i108, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge388
  %i.du = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.du, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc109 unwind label %bb.h

.noexc109:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dw) #32
  br label %.body

bb.i:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.j:                                             ; preds = %bb.d
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ao

bb.k:                                             ; preds = %.lr.ph387, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94
  %indvars.iv402 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next403, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94 ] ; 2 uses
  %.034383 = phi i32 [ 0, %.lr.ph387 ], [ %i.eb, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94 ] ; 6 uses
  %.0360382 = phi double [ +inf, %.lr.ph387 ], [ %.sroa.speculated, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94 ] ; 8 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv402
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !70 ; 3 uses
  %i.eb = add nsw i32 %i.ea, %.034383             ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1                   ; 4 uses
  %i.ed = icmp slt i32 %.034383, %i.ec
  br i1 %i.ed, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  br i1 %i.dj, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader, label %.lr.ph.split

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader: ; preds = %.lr.ph
  %i.ee = add i32 %i.ea, 3
  %i.ef = add i32 %i.ea, -2
  %xtraiter481 = and i32 %i.ee, 3                 ; 2 uses
  %lcmp.mod482.not = icmp eq i32 %xtraiter481, 0
  br i1 %lcmp.mod482.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol
  %.0366.us.prol = phi i32 [ %i.eg, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol ], [ %.034383, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader ]
  %.1365.us.prol = phi double [ %.sroa.speculated349.us.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol ], [ %.0360382, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader ] ; 2 uses
  %prol.iter483 = phi i32 [ %prol.iter483.next, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol ], [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader ]
  %i.eg = add nsw i32 %.0366.us.prol, 1           ; 2 uses
  %i.eh = fcmp ogt double %.1365.us.prol, 0.000000e+00
  %.sroa.speculated349.us.prol = select i1 %i.eh, double 0.000000e+00, double %.1365.us.prol ; 3 uses
  %prol.iter483.next = add i32 %prol.iter483, 1   ; 2 uses
  %prol.iter483.cmp.not = icmp eq i32 %prol.iter483.next, %xtraiter481
  br i1 %prol.iter483.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol, !llvm.loop !128

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader
  %.sroa.speculated349.us.lcssa.unr = phi double [ poison, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader ], [ %.sroa.speculated349.us.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol ]
  %.0366.us.unr = phi i32 [ %.034383, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader ], [ %i.eg, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol ]
  %.1365.us.unr = phi double [ %.0360382, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.preheader ], [ %.sroa.speculated349.us.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol ]
  %i.ei = icmp ult i32 %i.ef, 3
  br i1 %i.ei, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us
  %.0366.us = phi i32 [ %i.ek, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us ], [ %.0366.us.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit ]
  %.1365.us = phi double [ %.sroa.speculated349.us, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us ], [ %.1365.us.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit ] ; 2 uses
  %i.ej = fcmp ogt double %.1365.us, 0.000000e+00
  %.sroa.speculated349.us = select i1 %i.ej, double 0.000000e+00, double %.1365.us ; 2 uses
  %i.ek = add nsw i32 %.0366.us, 4                ; 2 uses
  %exitcond401.not.3 = icmp eq i32 %i.ek, %i.ec
  br i1 %exitcond401.not.3, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us, !llvm.loop !129

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.el = load i64, ptr %i.df, align 8, !tbaa !9  ; 3 uses
  %i.em = sext i32 %.034383 to i64                ; 6 uses
  %wide.trip.count399 = sext i32 %i.ec to i64     ; 4 uses
  %.phi.trans.insert409 = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.em
  %.pre410 = load i32, ptr %.phi.trans.insert409, align 4, !tbaa !70 ; 2 uses
  %.phi.trans.insert411 = sext i32 %.pre410 to i64
  %.phi.trans.insert412 = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.phi.trans.insert411
  %.pre413 = load double, ptr %.phi.trans.insert412, align 8, !tbaa !54 ; 3 uses
  br i1 %i.dk, label %.lr.ph.i.i.i.i.preheader.us, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader: ; preds = %.lr.ph.split
  %i.en = sub nsw i64 %wide.trip.count399, %i.em
  %xtraiter468 = and i64 %i.en, 1
  %lcmp.mod469.not = icmp eq i64 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader
  %indvars.iv.next.prol = add nsw i64 %i.em, 1    ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv.next.prol
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !70
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !54 ; 2 uses
  %i.et = fsub double %.pre413, %i.es             ; 2 uses
  %i.eu = fmul double %i.et, %i.et                ; 2 uses
  %i.ev = fcmp olt double %i.eu, %.0360382
  %.sroa.speculated349.prol = select i1 %i.ev, double %i.eu, double %.0360382 ; 2 uses
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader
  %.sroa.speculated349.lcssa.unr = phi double [ poison, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader ], [ %.sroa.speculated349.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol ]
  %.unr = phi double [ %.pre413, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader ], [ %i.es, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol ]
  %indvars.iv.unr = phi i64 [ %i.em, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader ], [ %indvars.iv.next.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol ]
  %.1365.unr = phi double [ %.0360382, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.preheader ], [ %.sroa.speculated349.prol, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol ]
  %i.ew = add nsw i64 %wide.trip.count399, -1
  %i.ex = icmp eq i64 %i.ew, %i.em
  br i1 %i.ex, label %._crit_edge.thread, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit

.lr.ph.i.i.i.i.preheader.us:                      ; preds = %.lr.ph.split, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us
  %i.ey = phi double [ %i.fg, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us ], [ %.pre413, %.lr.ph.split ]
  %i.ez = phi i32 [ %i.fd, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us ], [ %.pre410, %.lr.ph.split ]
  %indvars.iv396 = phi i64 [ %indvars.iv.next397, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us ], [ %i.em, %.lr.ph.split ]
  %.1365.us372 = phi double [ %.sroa.speculated349.us375, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us ], [ %.0360382, %.lr.ph.split ] ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fa ; 3 uses
  %indvars.iv.next397 = add nsw i64 %indvars.iv396, 1 ; 3 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv.next397
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !70 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fe ; 4 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !54 ; 2 uses
  %i.fh = fsub double %i.ey, %i.fg                ; 2 uses
  %i.fi = fmul double %i.fh, %i.fh                ; 2 uses
  br i1 %i.dn, label %.lr.ph.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.preheader.us, %.lr.ph.i.i.i.i.us
  %.01724.i.i.i.i.us = phi i64 [ %i.ga, %.lr.ph.i.i.i.i.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us ] ; 3 uses
  %.02223.i.i.i.i.us = phi double [ %i.fz, %.lr.ph.i.i.i.i.us ], [ %i.fi, %.lr.ph.i.i.i.i.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us ]
  %i.fj = mul nsw i64 %.01724.i.i.i.i.us, %i.el   ; 2 uses
  %i.fk = getelementptr [8 x i8], ptr %i.fb, i64 %i.fj
  %i.fl = getelementptr [8 x i8], ptr %i.ff, i64 %i.fj
  %i.fm = load double, ptr %i.fk, align 8, !tbaa !54
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !54
  %i.fo = fsub double %i.fm, %i.fn                ; 2 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fadd double %.02223.i.i.i.i.us, %i.fp
  %i.fr = add nuw nsw i64 %.01724.i.i.i.i.us, 1
  %i.fs = mul nsw i64 %i.fr, %i.el                ; 2 uses
  %i.ft = getelementptr [8 x i8], ptr %i.fb, i64 %i.fs
  %i.fu = getelementptr [8 x i8], ptr %i.ff, i64 %i.fs
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !54
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !54
  %i.fx = fsub double %i.fv, %i.fw                ; 2 uses
  %i.fy = fmul double %i.fx, %i.fx
  %i.fz = fadd double %i.fq, %i.fy                ; 3 uses
  %i.ga = add nuw nsw i64 %.01724.i.i.i.i.us, 2   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.i.us, !llvm.loop !130

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us
  br i1 %lcmp.mod472.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us, label %.lr.ph.i.i.i.i.us.epil.preheader

.lr.ph.i.i.i.i.us.epil.preheader:                 ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us
  %.01724.i.i.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us ], [ %i.ga, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us.unr-lcssa ]
  %.02223.i.i.i.i.us.epil.init = phi double [ %i.fi, %.lr.ph.i.i.i.i.preheader.us ], [ %i.fz, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod474)
  %i.gb = mul nsw i64 %.01724.i.i.i.i.us.epil.init, %i.el ; 2 uses
  %i.gc = getelementptr [8 x i8], ptr %i.fb, i64 %i.gb
  %i.gd = getelementptr [8 x i8], ptr %i.ff, i64 %i.gb
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !54
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !54
  %i.gg = fsub double %i.ge, %i.gf                ; 2 uses
  %i.gh = fmul double %i.gg, %i.gg
  %i.gi = fadd double %.02223.i.i.i.i.us.epil.init, %i.gh
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.us.epil.preheader
  %.lcssa = phi double [ %i.fz, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us.unr-lcssa ], [ %i.gi, %.lr.ph.i.i.i.i.us.epil.preheader ] ; 2 uses
  %i.gj = fcmp olt double %.lcssa, %.1365.us372
  %.sroa.speculated349.us375 = select i1 %i.gj, double %.lcssa, double %.1365.us372 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %._crit_edge.thread, label %.lr.ph.i.i.i.i.preheader.us, !llvm.loop !129

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit
  %i.gk = phi double [ %i.gy, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit ], [ %.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit ], [ %indvars.iv.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit ] ; 2 uses
  %.1365 = phi double [ %.sroa.speculated349.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit ], [ %.1365.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit ] ; 2 uses
  %i.gl = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.gm = getelementptr i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !70
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !54 ; 2 uses
  %i.gr = fsub double %i.gk, %i.gq                ; 2 uses
  %i.gs = fmul double %i.gr, %i.gr                ; 2 uses
  %i.gt = fcmp olt double %i.gs, %.1365
  %.sroa.speculated349 = select i1 %i.gt, double %i.gs, double %.1365 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv.next.1
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !70
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !54 ; 2 uses
  %i.gz = fsub double %i.gq, %i.gy                ; 2 uses
  %i.ha = fmul double %i.gz, %i.gz                ; 2 uses
  %i.hb = fcmp olt double %i.ha, %.sroa.speculated349
  %.sroa.speculated349.1 = select i1 %i.hb, double %i.ha, double %.sroa.speculated349 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count399
  br i1 %exitcond.not.1, label %._crit_edge.thread, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.k
  br i1 %i.dj, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us, %._crit_edge
  %.1.lcssa431 = phi double [ %.0360382, %._crit_edge ], [ %.sroa.speculated349.us375, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.loopexit.us ], [ %.sroa.speculated349.lcssa.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.prol.loopexit ], [ %.sroa.speculated349.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit ] ; 3 uses
  %.pn440 = sext i32 %.034383 to i64
  %.pn439.in.in = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %.pn440
  %.pn439.in = load i32, ptr %.pn439.in.in, align 4, !tbaa !70
  %.pn439 = sext i32 %.pn439.in to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.pn439 ; 4 uses
  %.pn438 = sext i32 %i.ec to i64
  %.pn.in.in = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %.pn438
  %.pn.in = load i32, ptr %.pn.in.in, align 4, !tbaa !70
  %.pn = sext i32 %.pn.in to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.pn ; 4 uses
  %i.he = load i64, ptr %i.df, align 8, !tbaa !9  ; 3 uses
  %i.hf = load double, ptr %i.hc, align 8, !tbaa !54
  %i.hg = load double, ptr %i.hd, align 8, !tbaa !54
  %i.hh = fsub double %i.hf, %i.hg                ; 2 uses
  %i.hi = fmul double %i.hh, %i.hh                ; 3 uses
  br i1 %i.dk, label %.lr.ph.i.i.i.i90.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94

.lr.ph.i.i.i.i90.preheader:                       ; preds = %._crit_edge.thread
  br i1 %i.do, label %.lr.ph.i.i.i.i90.epil.preheader, label %.lr.ph.i.i.i.i90

.lr.ph.i.i.i.i90:                                 ; preds = %.lr.ph.i.i.i.i90.preheader, %.lr.ph.i.i.i.i90
  %.01724.i.i.i.i91 = phi i64 [ %i.ia, %.lr.ph.i.i.i.i90 ], [ 1, %.lr.ph.i.i.i.i90.preheader ] ; 3 uses
  %.02223.i.i.i.i92 = phi double [ %i.hz, %.lr.ph.i.i.i.i90 ], [ %i.hi, %.lr.ph.i.i.i.i90.preheader ]
  %niter480 = phi i64 [ %niter480.next.1, %.lr.ph.i.i.i.i90 ], [ 0, %.lr.ph.i.i.i.i90.preheader ]
  %i.hj = mul nsw i64 %.01724.i.i.i.i91, %i.he    ; 2 uses
  %i.hk = getelementptr [8 x i8], ptr %i.hc, i64 %i.hj
  %i.hl = getelementptr [8 x i8], ptr %i.hd, i64 %i.hj
  %i.hm = load double, ptr %i.hk, align 8, !tbaa !54
  %i.hn = load double, ptr %i.hl, align 8, !tbaa !54
  %i.ho = fsub double %i.hm, %i.hn                ; 2 uses
  %i.hp = fmul double %i.ho, %i.ho
  %i.hq = fadd double %.02223.i.i.i.i92, %i.hp
  %i.hr = add nuw nsw i64 %.01724.i.i.i.i91, 1
  %i.hs = mul nsw i64 %i.hr, %i.he                ; 2 uses
  %i.ht = getelementptr [8 x i8], ptr %i.hc, i64 %i.hs
  %i.hu = getelementptr [8 x i8], ptr %i.hd, i64 %i.hs
  %i.hv = load double, ptr %i.ht, align 8, !tbaa !54
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !54
  %i.hx = fsub double %i.hv, %i.hw                ; 2 uses
  %i.hy = fmul double %i.hx, %i.hx
  %i.hz = fadd double %i.hq, %i.hy                ; 3 uses
  %i.ia = add nuw nsw i64 %.01724.i.i.i.i91, 2    ; 2 uses
  %niter480.next.1 = add nuw nsw i64 %niter480, 2 ; 2 uses
  %niter480.ncmp.1 = icmp eq i64 %niter480.next.1, %unroll_iter479
  br i1 %niter480.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa, label %.lr.ph.i.i.i.i90, !llvm.loop !130

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa: ; preds = %.lr.ph.i.i.i.i90
  br i1 %lcmp.mod476.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94, label %.lr.ph.i.i.i.i90.epil.preheader

.lr.ph.i.i.i.i90.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa, %.lr.ph.i.i.i.i90.preheader
  %.01724.i.i.i.i91.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i90.preheader ], [ %i.ia, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa ]
  %.02223.i.i.i.i92.epil.init = phi double [ %i.hi, %.lr.ph.i.i.i.i90.preheader ], [ %i.hz, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod478)
  %i.ib = mul nsw i64 %.01724.i.i.i.i91.epil.init, %i.he ; 2 uses
  %i.ic = getelementptr [8 x i8], ptr %i.hc, i64 %i.ib
  %i.id = getelementptr [8 x i8], ptr %i.hd, i64 %i.ib
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !54
  %i.if = load double, ptr %i.id, align 8, !tbaa !54
  %i.ig = fsub double %i.ie, %i.if                ; 2 uses
  %i.ih = fmul double %i.ig, %i.ig
  %i.ii = fadd double %.02223.i.i.i.i92.epil.init, %i.ih
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94: ; preds = %.lr.ph.i.i.i.i90.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us, %._crit_edge.thread, %._crit_edge
  %.1.lcssa432 = phi double [ %.0360382, %._crit_edge ], [ %.1.lcssa431, %._crit_edge.thread ], [ %.sroa.speculated349.us, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us ], [ %.sroa.speculated349.us.lcssa.unr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit ], [ %.1.lcssa431, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa ], [ %.1.lcssa431, %.lr.ph.i.i.i.i90.epil.preheader ] ; 2 uses
  %.0.i.i89 = phi double [ 0.000000e+00, %._crit_edge ], [ %i.hi, %._crit_edge.thread ], [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us.prol.loopexit ], [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit.us ], [ %i.hz, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES9_EEE11squaredNormEv.exit94.loopexit460.unr-lcssa ], [ %i.ii, %.lr.ph.i.i.i.i90.epil.preheader ] ; 2 uses
  %i.ij = fcmp olt double %.0.i.i89, %.1.lcssa432
  %.sroa.speculated = select i1 %i.ij, double %.0.i.i89, double %.1.lcssa432 ; 2 uses
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next403, %i.dc
  br i1 %exitcond405.not, label %._crit_edge388.loopexit, label %bb.k, !llvm.loop !131

bb.l:                                             ; preds = %._crit_edge388
  store i64 0, ptr %i.dq, align 8, !tbaa !66
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 0, ptr %i.dt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store i8 0, ptr %8, align 8, !tbaa !65
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 -1, ptr %i.il, align 8, !tbaa !66
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.im, i8 0, i64 56, i1 false)
  %i.io = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #33 ; 3 uses
  store ptr %i.io, ptr %i.in, align 8, !tbaa !67
  %.not6.i114 = icmp eq ptr %i.io, null
  br i1 %.not6.i114, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ip = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ip, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.ip, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc115 unwind label %bb.n

.noexc115:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.iq = landingpad { ptr, i32 }
          cleanup
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ir) #32
  br label %.body96

bb.o:                                             ; preds = %bb.l
  store i64 0, ptr %i.il, align 8, !tbaa !66
  %i.is = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 0, ptr %i.io, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store i8 0, ptr %9, align 8, !tbaa !65
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 -1, ptr %i.it, align 8, !tbaa !66
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.iu, i8 0, i64 56, i1 false)
  %i.iw = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #33 ; 3 uses
  store ptr %i.iw, ptr %i.iv, align 8, !tbaa !67
  %.not6.i120 = icmp eq ptr %i.iw, null
  br i1 %.not6.i120, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ix = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ix, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.ix, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc121 unwind label %bb.q

.noexc121:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.iy = landingpad { ptr, i32 }
          cleanup
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.iz) #32
  br label %.body99

bb.r:                                             ; preds = %bb.o
  store i64 0, ptr %i.it, align 8, !tbaa !66
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %i.iw, align 4
  invoke void @_ZN3igl8triangle4scaf13adjusted_gradERN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERNS3_IiLin1ELin1ELi0ELin1ELin1EEEdRNS2_12SparseMatrixIdLi0EiEESA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %.0360.lcssa, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.t unwind label %bb.aj

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.jb = load ptr, ptr %10, align 8, !tbaa !108, !noalias !132 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !9, !noalias !132 ; 8 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jd
  %.idx = shl nsw i64 %i.jd, 4
  %i.jf = getelementptr inbounds i8, ptr %i.jb, i64 %.idx
  store i8 0, ptr %13, align 8, !tbaa !135, !alias.scope !137
  %i.jg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.jg, align 8, !alias.scope !137
  %i.jh = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.jh, align 8
  %.sroa.8271.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.jb, ptr %.sroa.8271.8..sroa_idx, align 8
  %.sroa.9272.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.jd, ptr %.sroa.9272.8..sroa_idx, align 8
  %.sroa.11274.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %10, ptr %.sroa.11274.8..sroa_idx, align 8
  %.sroa.12275.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 56
  %.sroa.14277.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12275.8..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.jd, ptr %.sroa.14277.8..sroa_idx, align 8
  %.sroa.15278.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 80
  store ptr %7, ptr %.sroa.15278.8..sroa_idx, align 8
  %.sroa.16279.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i8 0, ptr %.sroa.16279.8..sroa_idx, align 8
  %.sroa.18281.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 96
  store ptr %i.je, ptr %.sroa.18281.8..sroa_idx, align 8
  %.sroa.19282.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 104
  store i64 %i.jd, ptr %.sroa.19282.8..sroa_idx, align 8
  %.sroa.21284.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 120
  store ptr %10, ptr %.sroa.21284.8..sroa_idx, align 8
  %.sroa.22285.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 128
  store i64 0, ptr %.sroa.22285.8..sroa_idx, align 8
  %.sroa.23286.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 136
  store i64 1, ptr %.sroa.23286.8..sroa_idx, align 8
  %.sroa.24287.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 144
  store i64 %i.jd, ptr %.sroa.24287.8..sroa_idx, align 8
  %.sroa.25288.8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 152
  store ptr %8, ptr %.sroa.25288.8..sroa_idx, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %13, i64 168
  store i8 0, ptr %i.ji, align 8
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 176
  store ptr %i.jf, ptr %.sroa.5211.0..sroa_idx, align 8
  %.sroa.6212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 184
  store i64 %i.jd, ptr %.sroa.6212.0..sroa_idx, align 8
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 200
  store ptr %10, ptr %.sroa.8214.0..sroa_idx, align 8
  %.sroa.9215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 208
  store i64 0, ptr %.sroa.9215.0..sroa_idx, align 8
  %.sroa.10216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 216
  store i64 2, ptr %.sroa.10216.0..sroa_idx, align 8
  %.sroa.11217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 224
  store i64 %i.jd, ptr %.sroa.11217.0..sroa_idx, align 8
  %.sroa.12218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 232
  store ptr %9, ptr %.sroa.12218.0..sroa_idx, align 8
  %i.jj = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_IS6_KNS_7ProductINS_15DiagonalWrapperIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEES1_Li0EEESG_EESG_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.u unwind label %bb.ak      ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.jk = load ptr, ptr %11, align 8, !tbaa !108, !noalias !140 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !9, !noalias !140 ; 8 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jm
  %.idx361 = shl nsw i64 %i.jm, 4
  %i.jo = getelementptr inbounds i8, ptr %i.jk, i64 %.idx361
  store i8 0, ptr %14, align 8, !tbaa !135, !alias.scope !143
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.jp, align 8, !alias.scope !143
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 0, ptr %i.jq, align 8
  %.sroa.8190.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.jk, ptr %.sroa.8190.8..sroa_idx, align 8
  %.sroa.9191.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %i.jm, ptr %.sroa.9191.8..sroa_idx, align 8
  %.sroa.11193.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %11, ptr %.sroa.11193.8..sroa_idx, align 8
  %.sroa.12194.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 56
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12194.8..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.jm, ptr %.sroa.14.8..sroa_idx, align 8
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 80
  store ptr %7, ptr %.sroa.15.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i8 0, ptr %.sroa.16.8..sroa_idx, align 8
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 96
  store ptr %i.jn, ptr %.sroa.18.8..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@"_ZZN3igl8triangle4scaf17compute_jacobiansERNS0_8SCAFDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEbENK3$_0clES8_RKNS4_12SparseMatrixIdLi0EiEESD_RS6_":bb.a
  br i1 %i.wn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50, label %._crit_edge.i.i.i.i.i.i.i.i.i.i46

._crit_edge.i.i.i.i.i.i.i.i.i.i46:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i50, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i45
  %i.wo = icmp slt i64 %i.vi, %i.se
  br i1 %i.wo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit55

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i46
  %i.wp = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i44, %i.vh
  %i.wq = sub i64 %i.se, %i.wp                    ; 3 uses
  %min.iters.check225 = icmp ult i64 %i.wq, 10
  br i1 %min.iters.check225, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237, label %vector.memcheck222

vector.memcheck222:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader
  %i.wr = add i64 %.idx79, %i.sd
  %i.ws = sub i64 %i.uz, %i.wr
  %diff.check223 = icmp ugt i64 %i.ws, -32
  br i1 %diff.check223, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck222
  %n.vec227 = and i64 %i.wq, -4                   ; 3 uses
  %i.wt = add i64 %i.vi, %n.vec227
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next232, %vector.body228 ] ; 2 uses
  %i.wu = add i64 %i.vi, %index229                ; 2 uses
  %i.wv = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.wu ; 2 uses
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.wu ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %wide.load230 = load <2 x double>, ptr %i.ww, align 8, !tbaa !54
  %wide.load231 = load <2 x double>, ptr %i.wx, align 8, !tbaa !54
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store <2 x double> %wide.load230, ptr %i.wv, align 8, !tbaa !54
  store <2 x double> %wide.load231, ptr %i.wy, align 8, !tbaa !54
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.wz = icmp eq i64 %index.next232, %n.vec227
  br i1 %i.wz, label %middle.block233, label %vector.body228, !llvm.loop !406

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %i.wq, %n.vec227
  br i1 %cmp.n234, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit55, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237:    ; preds = %vector.memcheck222, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader, %middle.block233
  %.05.i18.i.i.i.i.i.i.i.i.i.i48.ph = phi i64 [ %i.vi, %vector.memcheck222 ], [ %i.vi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader ], [ %i.wt, %middle.block233 ] ; 4 uses
  %i.xa = sub i64 %i.se, %.05.i18.i.i.i.i.i.i.i.i.i.i48.ph
  %xtraiter278 = and i64 %i.xa, 3                 ; 2 uses
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i48.prol = phi i64 [ %i.xe, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i48.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237 ] ; 3 uses
  %prol.iter280 = phi i64 [ %prol.iter280.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237 ]
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48.prol
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48.prol
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !54
  store double %i.xd, ptr %i.xb, align 8, !tbaa !54
  %i.xe = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48.prol, 1 ; 2 uses
  %prol.iter280.next = add i64 %prol.iter280, 1   ; 2 uses
  %prol.iter280.cmp.not = icmp eq i64 %prol.iter280.next, %xtraiter278
  br i1 %prol.iter280.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol, !llvm.loop !407

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237
  %.05.i18.i.i.i.i.i.i.i.i.i.i48.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i48.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.preheader237 ], [ %i.xe, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol ]
  %i.xf = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48.ph, %i.se
  %i.xg = icmp ugt i64 %i.xf, -4
  br i1 %i.xg, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit55, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47
  %.05.i18.i.i.i.i.i.i.i.i.i.i48 = phi i64 [ %i.xw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i48.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol.loopexit ] ; 6 uses
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !54
  store double %i.xj, ptr %i.xh, align 8, !tbaa !54
  %i.xk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48, 1 ; 2 uses
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.xk
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.xk
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !54
  store double %i.xn, ptr %i.xl, align 8, !tbaa !54
  %i.xo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48, 2 ; 2 uses
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.xo
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.xo
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !54
  store double %i.xr, ptr %i.xp, align 8, !tbaa !54
  %i.xs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48, 3 ; 2 uses
  %i.xt = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.xs
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %i.xs
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !54
  store double %i.xv, ptr %i.xt, align 8, !tbaa !54
  %i.xw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i48, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i49.3 = icmp eq i64 %i.xw, %i.se
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i49.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit55, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47, !llvm.loop !408

.lr.ph.i.i.i.i.i.i.i.i.i.i50:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i45, %.lr.ph.i.i.i.i.i.i.i.i.i.i50
  %.021.i.i.i.i.i.i.i.i.i.i51 = phi i64 [ %i.ya, %.lr.ph.i.i.i.i.i.i.i.i.i.i50 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i44, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i45 ] ; 3 uses
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %.021.i.i.i.i.i.i.i.i.i.i51
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %.021.i.i.i.i.i.i.i.i.i.i51
  %i.xz = load <2 x double>, ptr %i.xy, align 1, !tbaa !116
  store <2 x double> %i.xz, ptr %i.xx, align 16, !tbaa !116
  %i.ya = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i51, 2 ; 2 uses
  %i.yb = icmp slt i64 %i.ya, %i.vi
  br i1 %i.yb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i50, label %._crit_edge.i.i.i.i.i.i.i.i.i.i46, !llvm.loop !372

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_7ProductINS_12SparseMatrixIdLi0EiEENS0_IKS2_Lin1ELi1ELb1EEELi0EEEEERS3_RKNS_9DenseBaseIT_EE.exit55: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i47, %middle.block233, %._crit_edge.i.i.i.i.i.i.i.i.i.i46
  %i.yc = load ptr, ptr %4, align 8, !tbaa !59
  call void @free(ptr noundef %i.yc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl8triangle4scaf29compute_energy_from_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IdLin1ELi1ELi0ELin1ELi1EEENS_17MappingEnergyTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 2
  %spec.store.select = select i1 %i.a, double -4.000000e+00, double 0.000000e+00
  %i.b = tail call noundef double @_ZN3igl29mapping_energy_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IdLin1ELi1ELi0ELin1ELi1EEENS_17MappingEnergyTypeEd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, double noundef 0.000000e+00)
  %i.c = fadd double %spec.store.select, %i.b
  ret double %i.c
}

declare noundef double @_ZN3igl29mapping_energy_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IdLin1ELi1ELi0ELin1ELi1EEENS_17MappingEnergyTypeEd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef double @_ZN3igl8triangle4scaf30compute_soft_constraint_energyERKNS0_8SCAFDataE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1032) %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %.not18 = icmp eq ptr %i.b, %i.c
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load double, ptr %i.d, align 8, !tbaa !410 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108, !noalias !411 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load i64, ptr %i.h, align 8, !tbaa !124, !noalias !411 ; 4 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  br i1 %i.j, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us, label %.lr.ph.split

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us: ; preds = %.lr.ph, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us
  %.020.us = phi double [ %i.m, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us ], [ 0.000000e+00, %.lr.ph ]
  %.sroa.015.019.us = phi ptr [ %i.n, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us ], [ %i.b, %.lr.ph ]
  %i.m = tail call double @llvm.fmuladd.f64(double %i.e, double 0.000000e+00, double %.020.us) ; 2 uses
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.019.us) #37 ; 2 uses
  %.not.us = icmp eq ptr %i.n, %i.c
  br i1 %.not.us, label %._crit_edge, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = icmp sgt i64 %i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader.us.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit

.lr.ph.i.i.i.i.preheader.us.preheader:            ; preds = %.lr.ph.split
  %i.p = add nsw i64 %i.i, -1                     ; 3 uses
  %xtraiter = and i64 %i.p, 1
  %i.q = icmp eq i64 %i.i, 2
  %unroll_iter = and i64 %i.p, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod52 = trunc i64 %i.p to i1
  br label %.lr.ph.i.i.i.i.preheader.us

.lr.ph.i.i.i.i.preheader.us:                      ; preds = %.lr.ph.i.i.i.i.preheader.us.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us
  %.020.us21 = phi double [ %i.bb, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us ], [ 0.000000e+00, %.lr.ph.i.i.i.i.preheader.us.preheader ]
  %.sroa.015.019.us22 = phi ptr [ %i.bc, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us ], [ %i.b, %.lr.ph.i.i.i.i.preheader.us.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.015.019.us22, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !414
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.019.us22, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !419  ; 4 uses
  %i.x = load double, ptr %i.u, align 8, !tbaa !54
  %i.y = load double, ptr %i.w, align 8, !tbaa !54
  %i.z = fsub double %i.y, %i.x                   ; 2 uses
  %i.aa = fmul double %i.z, %i.z                  ; 2 uses
  br i1 %i.q, label %.lr.ph.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.preheader.us, %.lr.ph.i.i.i.i.us
  %.01724.i.i.i.i.us = phi i64 [ %i.as, %.lr.ph.i.i.i.i.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us ] ; 4 uses
  %.02223.i.i.i.i.us = phi double [ %i.ar, %.lr.ph.i.i.i.i.us ], [ %i.aa, %.lr.ph.i.i.i.i.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us ]
  %i.ab = getelementptr [8 x i8], ptr %i.w, i64 %.01724.i.i.i.i.us
  %i.ac = mul nsw i64 %.01724.i.i.i.i.us, %i.l
  %i.ad = getelementptr [8 x i8], ptr %i.u, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !54
  %i.af = load double, ptr %i.ab, align 8, !tbaa !54
  %i.ag = fsub double %i.af, %i.ae                ; 2 uses
  %i.ah = fmul double %i.ag, %i.ag
  %i.ai = fadd double %.02223.i.i.i.i.us, %i.ah
  %i.aj = add nuw nsw i64 %.01724.i.i.i.i.us, 1   ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.w, i64 %i.aj
  %i.al = mul nsw i64 %i.aj, %i.l
  %i.am = getelementptr [8 x i8], ptr %i.u, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !54
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !54
  %i.ap = fsub double %i.ao, %i.an                ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = fadd double %i.ai, %i.aq                ; 3 uses
  %i.as = add nuw nsw i64 %.01724.i.i.i.i.us, 2   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.i.us, !llvm.loop !420

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us, label %.lr.ph.i.i.i.i.us.epil.preheader

.lr.ph.i.i.i.i.us.epil.preheader:                 ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us
  %.01724.i.i.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us ], [ %i.as, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.us.epil.init = phi double [ %i.aa, %.lr.ph.i.i.i.i.preheader.us ], [ %i.ar, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.at = getelementptr [8 x i8], ptr %i.w, i64 %.01724.i.i.i.i.us.epil.init
  %i.au = mul nsw i64 %.01724.i.i.i.i.us.epil.init, %i.l
  %i.av = getelementptr [8 x i8], ptr %i.u, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !54
  %i.ax = load double, ptr %i.at, align 8, !tbaa !54
  %i.ay = fsub double %i.ax, %i.aw                ; 2 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = fadd double %.02223.i.i.i.i.us.epil.init, %i.az
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.us.epil.preheader
  %.lcssa47 = phi double [ %i.ar, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa ], [ %i.ba, %.lr.ph.i.i.i.i.us.epil.preheader ]
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.e, double %.lcssa47, double %.020.us21) ; 2 uses
  %i.bc = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.019.us22) #37 ; 2 uses
  %.not.us25 = icmp eq ptr %i.bc, %i.c
  br i1 %.not.us25, label %._crit_edge, label %.lr.ph.i.i.i.i.preheader.us

._crit_edge:                                      ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.m, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.us ], [ %i.bb, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us ], [ %i.bn, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit ]
  ret double %.0.lcssa

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit: ; preds = %.lr.ph.split, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit
  %.020 = phi double [ %i.bn, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit ], [ 0.000000e+00, %.lr.ph.split ]
  %.sroa.015.019 = phi ptr [ %i.bo, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit ], [ %i.b, %.lr.ph.split ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !414
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !419
  %i.bj = load double, ptr %i.bg, align 8, !tbaa !54
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !54
  %i.bl = fsub double %i.bk, %i.bj                ; 2 uses
  %i.bm = fmul double %i.bl, %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.e, double %i.bm, double %.020) ; 2 uses
  %i.bo = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.019) #37 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.c
  br i1 %.not, label %._crit_edge, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_5BlockIKNS5_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEE11squaredNormEv.exit
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl8triangle4scaf14compute_energyERNS0_8SCAFDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEb(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN3igl8triangle4scaf17compute_jacobiansERNS0_8SCAFDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEb(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !421  ; 2 uses
  %i.e = icmp eq i32 %i.d, 2
  %spec.store.select.i = select i1 %i.e, double -4.000000e+00, double 0.000000e+00
  %i.f = tail call noundef double @_ZN3igl29mapping_energy_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IdLin1ELi1ELi0ELin1ELi1EEENS_17MappingEnergyTypeEd(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.d, double noundef 0.000000e+00)
  %i.g = fadd double %i.f, %spec.store.select.i   ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !422  ; 2 uses
  %i.l = icmp eq i32 %i.k, 2
  %spec.store.select.i15 = select i1 %i.l, double -4.000000e+00, double 0.000000e+00
  %i.m = tail call noundef double @_ZN3igl29mapping_energy_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IdLin1ELi1ELi0ELin1ELi1EEENS_17MappingEnergyTypeEd(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef %i.k, double noundef 0.000000e+00)
  %i.n = fadd double %i.m, %spec.store.select.i15
  %i.o = fadd double %i.g, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.o, %bb.b ], [ %i.g, %bb.a ]
  %i.p = tail call noundef double @_ZN3igl8triangle4scaf30compute_soft_constraint_energyERKNS0_8SCAFDataE(ptr noundef nonnull align 8 dereferenceable(1032) %0)
  %i.q = fadd double %.0, %i.p
  ret double %i.q
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl8triangle4scaf7buildAmERKN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEERKNS2_12SparseMatrixIdLi0EiEESA_RKNS3_IdLin1ELin1ELi0ELin1ELin1EEERS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::scalar_sum_op.603", align 1 ; 3 uses
  %6 = alloca %"class.std::vector.352", align 8   ; 11 uses
  %7 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %9 = alloca %"class.Eigen::Product.357", align 8 ; 7 uses
  %10 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %11 = alloca %"class.Eigen::Product.357", align 8 ; 7 uses
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.364", align 8 ; 5 uses
  %13 = alloca %"class.__gnu_cxx::__normal_iterator.364", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i8 0, ptr %7, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #33 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !67
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %.body.thread

.noexc:                                           ; preds = %bb.b
  unreachable

.body.thread:                                     ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit24

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store i8 0, ptr %9, align 8, !tbaa !423, !alias.scope !425
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  store i64 %i.j, ptr %i.i, align 8, !alias.scope !425
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !77, !alias.scope !425
  store i8 0, ptr %8, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false)
  invoke void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_7ProductINS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEES3_Li0EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.d unwind label %.body16

.body16:                                          ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.n) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.body

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i8 0, ptr %11, align 8, !tbaa !423, !alias.scope !428
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.j, ptr %i.o, align 8, !alias.scope !428
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %2, ptr %i.p, align 8, !tbaa !77, !alias.scope !428
  store i8 0, ptr %10, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i8 0, i64 64, i1 false)
  invoke void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_7ProductINS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEES3_Li0EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductINS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEES1_Li0EEEEERKNS_16SparseMatrixBaseIT_EE.exit20 unwind label %.body18

.body18:                                          ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.s) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.u

_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductINS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEES1_Li0EEEEERKNS_16SparseMatrixBaseIT_EE.exit20: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  invoke void @_ZN3igl11slim_buildAERKN5Eigen12SparseMatrixIdLi0EiEES4_S4_RKNS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEERSt6vectorINS0_7TripletIdiEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductINS_15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEES1_Li0EEEEERKNS_16SparseMatrixBaseIT_EE.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.t = load ptr, ptr %6, align 8, !tbaa !431
  store ptr %i.t, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !431
  store ptr %i.v, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 1 dead_on_return %5)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
end_hunk_1
begin_hunk_2_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEERKNS_9DenseBaseIT_EE:bb.a
  %i.t = icmp sgt i64 %i.s, 1
  %i.u = and i64 %i.q, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  %i.v = add i64 %i.s, -1                         ; 2 uses
  %i.w = add i64 %i.s, -2
  %xtraiter40 = and i64 %i.v, 3                   ; 3 uses
  %i.x = icmp ult i64 %i.w, 3
  %unroll_iter45 = and i64 %i.v, -4
  %lcmp.mod42.not = icmp eq i64 %xtraiter40, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter40, 0
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.dp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i ] ; 3 uses
  %i.y = mul nsw i64 %.010.i.i.i.i.i, %i.s
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.y ; 17 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1
  %i.ad = tail call i64 @llvm.smin.i64(i64 %i.ac, i64 %i.s)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.s, %bb.f ] ; 10 uses
  %i.ae = sub nsw i64 %i.s, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.af = sdiv i64 %i.ae, 4
  %i.ag = shl nsw i64 %i.af, 2                    ; 2 uses
  %i.ah = sdiv i64 %i.ae, 2
  %i.ai = shl nsw i64 %i.ah, 1                    ; 2 uses
  %i.aj = add nsw i64 %i.ag, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ak = add nsw i64 %i.ai, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ae, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr [8 x i8], ptr %i.z, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !116 ; 3 uses
  %i.an = icmp sgt i64 %i.ae, 3
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.al, i64 16
  %i.ap = load <2 x double>, ptr %i.ao, align 1, !tbaa !116 ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.ae, 7
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.i
  %.05478.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ap, %bb.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.am, %bb.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ar = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i) #40, !srcloc !836 ; 2 uses
  %i.as = icmp sgt i64 %i.ai, %i.ag
  br i1 %i.as, label %bb.j, label %bb.k

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = load <2 x double>, ptr %i.at, align 1, !tbaa !116
  %i.av = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.au) #40, !srcloc !836 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.z, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 48
  %i.ay = load <2 x double>, ptr %i.ax, align 1, !tbaa !116
  %i.az = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.ay) #40, !srcloc !836 ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ba = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i, %i.aj
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !837

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aj
  %i.bc = load <2 x double>, ptr %i.bb, align 1, !tbaa !116
  %i.bd = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ar, <2 x double> %i.bc) #40, !srcloc !836
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.275.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.am, %bb.h ], [ %i.bd, %bb.j ], [ %i.ar, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.be = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = select i1 %i.be, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.k
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.bh = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.bh, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ch, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.bf, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bm, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bl, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !54 ; 2 uses
  %i.bk = fcmp olt double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.bm = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !838

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.k
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bf, %bb.k ], [ %i.cg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.bn = icmp slt i64 %i.ak, %i.s
  br i1 %i.bn, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ch, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bf, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cg, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %i.bq = fcmp olt double %.07284.i.i.i.i.i.i.i.i.i.i.i.i, %i.bp
  %i.br = select i1 %i.bq, double %i.bp, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !54 ; 2 uses
  %i.bv = fcmp olt double %i.br, %i.bu
  %i.bw = select i1 %i.bv, double %i.bu, double %i.br ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !54 ; 2 uses
  %i.ca = fcmp olt double %i.bw, %i.bz
  %i.cb = select i1 %i.ca, double %i.bz, double %i.bw ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !54 ; 2 uses
  %i.cf = fcmp olt double %i.cb, %i.ce
  %i.cg = select i1 %i.cf, double %i.ce, double %i.cb ; 3 uses
  %i.ch = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !839

.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cl, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !54 ; 2 uses
  %i.ck = fcmp olt double %.189.i.i.i.i.i.i.i.i.i.i.i.i, %i.cj
  %i.cl = select i1 %i.ck, double %i.cj, double %.189.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cm = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %i.s
  br i1 %i.cn, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, !llvm.loop !840

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = load double, ptr %i.z, align 8, !tbaa !54 ; 3 uses
  br i1 %i.t, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.l
  br i1 %i.x, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  %.094.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dh, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.co, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %niter46 = phi i64 [ %niter46.next.3, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !54 ; 2 uses
  %i.cr = fcmp olt double %.293.i.i.i.i.i.i.i.i.i.i.i.i, %i.cq
  %i.cs = select i1 %i.cr, double %i.cq, double %.293.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !54 ; 2 uses
  %i.cw = fcmp olt double %i.cs, %i.cv
  %i.cx = select i1 %i.cw, double %i.cv, double %i.cs ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !54 ; 2 uses
  %i.db = fcmp olt double %i.cx, %i.da
  %i.dc = select i1 %i.db, double %i.da, double %i.cx ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load double, ptr %i.de, align 8, !tbaa !54 ; 2 uses
  %i.dg = fcmp olt double %i.dc, %i.df
  %i.dh = select i1 %i.dg, double %i.df, double %i.dc ; 3 uses
  %i.di = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter46.next.3 = add nuw nsw i64 %niter46, 4   ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !841

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod42.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.di, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.co, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.dn, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.dm, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter41 = phi i64 [ %epil.iter41.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !54 ; 2 uses
  %i.dl = fcmp olt double %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.dk
  %i.dm = select i1 %i.dl, double %i.dk, double %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.dn = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter41.next = add i64 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i64 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !842

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i: ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.l, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.3.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dm, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.co, %bb.l ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.cl, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.010.i.i.i.i.i
  store double %.3.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.do, align 8, !tbaa !54
  %i.dp = add nuw nsw i64 %.010.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dp, %i.m
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.f, !llvm.loop !843

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %bb.e
  ret void

bb.m:                                             ; preds = %bb.d, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.c
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %0, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.dr) #32
  resume { ptr, i32 } %i.dq
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !844, !nonnull !95, !align !158
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %i.c
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !844, !nonnull !95, !align !158 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !124  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %.not8.i.i.i.i.i = icmp eq i64 %i.l, %i.j
  br i1 %.not8.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.d
  %.pre24.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %.noexc5, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.m = phi i64 [ %.pre24.i.i.i.i, %.noexc5 ], [ %i.j, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !59
  %i.o = icmp sgt i64 %i.m, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !108, !noalias !847 ; 2 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9, !noalias !847 ; 9 uses
  %i.t = icmp sgt i64 %i.s, 1
  %i.u = and i64 %i.q, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  %i.v = add i64 %i.s, -1                         ; 2 uses
  %i.w = add i64 %i.s, -2
  %xtraiter40 = and i64 %i.v, 3                   ; 3 uses
  %i.x = icmp ult i64 %i.w, 3
  %unroll_iter45 = and i64 %i.v, -4
  %lcmp.mod42.not = icmp eq i64 %xtraiter40, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter40, 0
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.dp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i ] ; 3 uses
  %i.y = mul nsw i64 %.010.i.i.i.i.i, %i.s
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.y ; 17 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1
  %i.ad = tail call i64 @llvm.smin.i64(i64 %i.ac, i64 %i.s)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.s, %bb.f ] ; 10 uses
  %i.ae = sub nsw i64 %i.s, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.af = sdiv i64 %i.ae, 4
  %i.ag = shl nsw i64 %i.af, 2                    ; 2 uses
  %i.ah = sdiv i64 %i.ae, 2
  %i.ai = shl nsw i64 %i.ah, 1                    ; 2 uses
  %i.aj = add nsw i64 %i.ag, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ak = add nsw i64 %i.ai, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ae, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr [8 x i8], ptr %i.z, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !116 ; 3 uses
  %i.an = icmp sgt i64 %i.ae, 3
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.al, i64 16
  %i.ap = load <2 x double>, ptr %i.ao, align 1, !tbaa !116 ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.ae, 7
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.i
  %.05478.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ap, %bb.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.am, %bb.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ar = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i) #40, !srcloc !850 ; 2 uses
  %i.as = icmp sgt i64 %i.ai, %i.ag
  br i1 %i.as, label %bb.j, label %bb.k

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = load <2 x double>, ptr %i.at, align 1, !tbaa !116
  %i.av = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.au) #40, !srcloc !850 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.z, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 48
  %i.ay = load <2 x double>, ptr %i.ax, align 1, !tbaa !116
  %i.az = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.ay) #40, !srcloc !850 ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ba = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i, %i.aj
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !851

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aj
  %i.bc = load <2 x double>, ptr %i.bb, align 1, !tbaa !116
  %i.bd = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ar, <2 x double> %i.bc) #40, !srcloc !850
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.275.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.am, %bb.h ], [ %i.bd, %bb.j ], [ %i.ar, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 0 ; 2 uses
  %i.be = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = select i1 %i.be, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.k
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.bh = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.bh, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ch, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.bf, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bm, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bl, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !54 ; 2 uses
  %i.bk = fcmp olt double %i.bj, %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bl = select i1 %i.bk, double %i.bj, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.bm = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !852

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.k
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bf, %bb.k ], [ %i.cg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.bn = icmp slt i64 %i.ak, %i.s
  br i1 %i.bn, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ch, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bf, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cg, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %i.bq = fcmp olt double %i.bp, %.07284.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = select i1 %i.bq, double %i.bp, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !54 ; 2 uses
  %i.bv = fcmp olt double %i.bu, %i.br
  %i.bw = select i1 %i.bv, double %i.bu, double %i.br ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !54 ; 2 uses
  %i.ca = fcmp olt double %i.bz, %i.bw
  %i.cb = select i1 %i.ca, double %i.bz, double %i.bw ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !54 ; 2 uses
  %i.cf = fcmp olt double %i.ce, %i.cb
  %i.cg = select i1 %i.cf, double %i.ce, double %i.cb ; 3 uses
  %i.ch = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !853

.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cl, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !54 ; 2 uses
  %i.ck = fcmp olt double %i.cj, %.189.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cl = select i1 %i.ck, double %i.cj, double %.189.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cm = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %i.s
  br i1 %i.cn, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, !llvm.loop !854

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = load double, ptr %i.z, align 8, !tbaa !54 ; 3 uses
  br i1 %i.t, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.l
  br i1 %i.x, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  %.094.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dh, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.co, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %niter46 = phi i64 [ %niter46.next.3, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !54 ; 2 uses
  %i.cr = fcmp olt double %i.cq, %.293.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = select i1 %i.cr, double %i.cq, double %.293.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !54 ; 2 uses
  %i.cw = fcmp olt double %i.cv, %i.cs
  %i.cx = select i1 %i.cw, double %i.cv, double %i.cs ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !54 ; 2 uses
  %i.db = fcmp olt double %i.da, %i.cx
  %i.dc = select i1 %i.db, double %i.da, double %i.cx ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load double, ptr %i.de, align 8, !tbaa !54 ; 2 uses
  %i.dg = fcmp olt double %i.df, %i.dc
  %i.dh = select i1 %i.dg, double %i.df, double %i.dc ; 3 uses
  %i.di = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter46.next.3 = add nuw nsw i64 %niter46, 4   ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !855

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod42.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.di, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.co, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.dn, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.dm, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter41 = phi i64 [ %epil.iter41.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !54 ; 2 uses
  %i.dl = fcmp olt double %i.dk, %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dm = select i1 %i.dl, double %i.dk, double %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.dn = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter41.next = add i64 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i64 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !856

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i: ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.l, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.3.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dm, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.co, %bb.l ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.cl, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.010.i.i.i.i.i
  store double %.3.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.do, align 8, !tbaa !54
  %i.dp = add nuw nsw i64 %.010.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dp, %i.m
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.f, !llvm.loop !857

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %bb.e
  ret void

bb.m:                                             ; preds = %bb.d, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.c
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %0, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.dr) #32
  resume { ptr, i32 } %i.dq
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !168
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !120
  tail call void @free(ptr noundef %i.i) #32
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #33 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !120
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.632", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.632", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.760", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  %8 = alloca %"class.Eigen::Block.94", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !124
  %i.f = icmp eq i64 %i.e, %2
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 0
  %i.h = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sdiv i64 9223372036854775807, %2
  %i.j = icmp sgt i64 %1, %i.i
  br i1 %i.j, label %bb.e, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.c, %bb.d
  %i.l = mul nsw i64 %2, %1
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE18conservativeResizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %1, i64 noundef %2)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i64 0, ptr %7, align 8
  %i.m = icmp eq i64 %1, 0
  %i.n = icmp eq i64 %2, 0
  %or.cond.i.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = sdiv i64 9223372036854775807, %2
  %i.p = icmp sgt i64 %1, %i.o
  br i1 %i.p, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.g, %bb.f
  %i.r = mul nsw i64 %2, %1                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.u = icmp sgt i64 %i.r, 0
  br i1 %i.u, label %bb.i, label %.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i64 %i.r, 2305843009213693951
  br i1 %i.v, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

.noexc:                                           ; preds = %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.i
  %i.x = shl nuw i64 %i.r, 3
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.noexc20, label %.sink.split.i

.noexc20:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
end_hunk_2
begin_hunk_3_@_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.o = add nuw nsw i64 %i.m, 15
  %i.p = alloca i8, i64 %i.o, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.m) #33 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 6 uses
  %i.u = icmp ugt i64 %i.m, 131072                ; 2 uses
  %i.v = ashr exact i64 %sext, 30                 ; 5 uses
  %i.w = icmp ugt i64 %i.v, 131072                ; 3 uses
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #33 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc150 unwind label %bb.n

.noexc150:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.aa = add nuw nsw i64 %i.v, 15
  %i.ab = alloca i8, i64 %i.aa, align 16
  %i.ac = add nuw nsw i64 %i.v, 15
  %i.ad = alloca i8, i64 %i.ac, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.i:                                             ; preds = %bb.f
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.v) #33 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc155 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160

.noexc155:                                        ; preds = %bb.j
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit156:     ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.ab, %bb.h ], [ %i.x, %bb.i ] ; 8 uses
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !58
  %.not.i.i = icmp eq i64 %i.j, %i.al
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.am) #32
  %.not190 = icmp eq i64 %sext, 0
  br i1 %.not190, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.m) #33 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc158 unwind label %bb.o

.noexc158:                                        ; preds = %bb.l
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.an, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.aj, align 8, !tbaa !59
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156, %.sink.split.i.i
  store i64 %i.j, ptr %i.ak, align 8, !tbaa !58
  %i.aq = icmp sgt i32 %i.c, 0
  br i1 %i.aq, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !120 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !59 ; 2 uses
  %wide.trip.count231 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge211
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge215, label %bb.p, !llvm.loop !1138

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.o:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.p:                                             ; preds = %.lr.ph214, %bb.m
  %indvars.iv228 = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next229, %bb.m ] ; 11 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv228 ; 4 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv228
  %i.bk = trunc nuw nsw i64 %indvars.iv228 to i32 ; 3 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !70
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv228
  store i32 0, ptr %i.bl, align 4, !tbaa !70
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv228 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !70
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !70
  %i.br = sext i32 %i.bq to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !70
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.bo
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %i.br, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  %i.bw = icmp sgt i64 %.sink.i, %i.bo
  br i1 %i.bw, label %.lr.ph200, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bx = load double, ptr %i.bd, align 8, !tbaa !665
  %i.by = load double, ptr %i.be, align 8, !tbaa !1139
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.by)
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !54
  br label %._crit_edge211

.lr.ph200:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0100199 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0198 = phi i64 [ %i.dn, %.loopexit ], [ %i.bo, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.sroa.8.0198
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !70 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv228, %i.cc
  br i1 %.not, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph200
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.8.0198
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !54
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !54
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !54
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cc ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !70
  %i.ck = zext i32 %i.cj to i64
  %.not135191 = icmp eq i64 %indvars.iv228, %i.ck
  br i1 %.not135191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !120
  br label %bb.t

.lr.ph196.preheader:                              ; preds = %bb.t
  %i.cm = sext i32 %.0100199 to i64               ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.098193, 7
  br i1 %min.iters.check, label %.lr.ph196.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph196.preheader
  %i.cn = sub i64 %.098193, %i.cm
  %reass.sub = shl i64 %i.cn, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph196.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 9223372036854775800     ; 3 uses
  %i.co = sub i64 %i.cm, %n.vec                   ; 2 uses
  %2 = and i64 %i.db, 7
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = sub i64 %.098193, %index
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !70
  %wide.load254 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !70
  %i.ct = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !70
  store <4 x i32> %wide.load254, ptr %i.cv, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !1140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph196.preheader256

.lr.ph196.preheader256:                           ; preds = %vector.memcheck, %.lr.ph196.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph196.preheader ], [ %i.co, %middle.block ]
  %.1195.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph196.preheader ], [ %2, %middle.block ]
  br label %.lr.ph196

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %i.cx = phi ptr [ %i.ci, %.lr.ph ], [ %i.de, %bb.t ]
  %i.cy = phi i64 [ %i.cc, %.lr.ph ], [ %i.dd, %bb.t ]
  %.098193 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.t ] ; 5 uses
  %.099192 = phi i32 [ %i.cb, %.lr.ph ], [ %i.dc, %bb.t ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.098193
  store i32 %.099192, ptr %i.cz, align 4, !tbaa !70
  store i32 %i.bk, ptr %i.cx, align 4, !tbaa !70
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cy
  %i.db = add nuw nsw i64 %.098193, 1             ; 6 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !70 ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !70
  %i.dg = zext i32 %i.df to i64
  %.not135 = icmp eq i64 %indvars.iv228, %i.dg
  br i1 %.not135, label %.lr.ph196.preheader, label %bb.t, !llvm.loop !1141

.lr.ph196:                                        ; preds = %.lr.ph196.preheader256, %.lr.ph196
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph196 ], [ %indvars.iv.ph, %.lr.ph196.preheader256 ]
  %.1195 = phi i64 [ %i.dh, %.lr.ph196 ], [ %.1195.ph, %.lr.ph196.preheader256 ] ; 2 uses
  %i.dh = add nsw i64 %.1195, -1                  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !70
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !70
  %i.dl = icmp sgt i64 %.1195, 1
  br i1 %i.dl, label %.lr.ph196, label %.loopexit.loopexit, !llvm.loop !1142

.loopexit.loopexit:                               ; preds = %.lr.ph196, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %middle.block ], [ %indvars.iv.next, %.lr.ph196 ]
  %i.dm = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit, %.lr.ph200
  %.2 = phi i32 [ %.0100199, %.lr.ph200 ], [ %i.dm, %.loopexit.loopexit ], [ %.0100199, %bb.s ] ; 3 uses
  %i.dn = add nsw i64 %.sroa.8.0198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph200, !llvm.loop !1143

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bi, align 8, !tbaa !54
  %i.do = load double, ptr %i.bd, align 8, !tbaa !665
  %i.dp = load double, ptr %i.be, align 8, !tbaa !1139
  %i.dq = tail call double @llvm.fmuladd.f64(double %.pre, double %i.do, double %i.dp) ; 2 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !54
  %i.dr = icmp slt i32 %.2, %i.c
  br i1 %i.dr, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge
  %i.ds = sext i32 %.2 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %._crit_edge205
  %indvars.iv224 = phi i64 [ %i.ds, %.lr.ph210 ], [ %indvars.iv.next225, %._crit_edge205 ] ; 2 uses
  %.097208 = phi double [ %i.dq, %.lr.ph210 ], [ %i.ex, %._crit_edge205 ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv224
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !70
  %i.dv = sext i32 %i.du to i64                   ; 4 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !54 ; 3 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !54
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !54
  %i.ea = fdiv double %i.dx, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !70 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dv ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !70 ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sext i32 %i.ec to i64                   ; 2 uses
  %i.ei = icmp sgt i32 %i.ee, 0
  br i1 %i.ei, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.u, %.lr.ph204
  %.0202 = phi i64 [ %i.es, %.lr.ph204 ], [ %i.eh, %bb.u ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0202
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !54
  %i.el = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0202
  %i.em = load i32, ptr %i.el, align 4, !tbaa !70
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !54
  %i.eq = fneg double %i.ek
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.dx, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !54
  %i.es = add nsw i64 %.0202, 1                   ; 3 uses
  %i.et = icmp slt i64 %i.es, %i.eg
  br i1 %i.et, label %.lr.ph204, label %._crit_edge205, !llvm.loop !1144

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.u
  %.0.lcssa = phi i64 [ %i.eh, %bb.u ], [ %i.es, %.lr.ph204 ] ; 2 uses
  %i.eu = fmul double %i.dx, %i.ea
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bk, ptr %i.ev, align 4, !tbaa !70
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ea, ptr %i.ew, align 8, !tbaa !54
  %i.ex = fsub double %.097208, %i.eu             ; 2 uses
  %i.ey = load i32, ptr %i.ed, align 4, !tbaa !70
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ed, align 4, !tbaa !70
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count
  br i1 %exitcond227.not, label %._crit_edge211, label %bb.u, !llvm.loop !1145

._crit_edge211:                                   ; preds = %._crit_edge205, %._crit_edge.thread, %._crit_edge
  %.097.lcssa = phi double [ %i.dq, %._crit_edge ], [ %i.bz, %._crit_edge.thread ], [ %i.ex, %._crit_edge205 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv228
  store double %.097.lcssa, ptr %i.fa, align 8, !tbaa !54
  %i.fb = fcmp une double %.097.lcssa, 0.000000e+00
  br i1 %i.fb, label %bb.m, label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge211, %bb.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2106 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 0, %bb.m ], [ 1, %._crit_edge211 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2106, ptr %i.fc, align 4, !tbaa !659
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fd, align 8, !tbaa !663
  br i1 %i.w, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

bb.v:                                             ; preds = %._crit_edge215
  call void @free(ptr noundef nonnull %i.ai) #32
  call void @free(ptr noundef nonnull %i.ah) #32
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159: ; preds = %._crit_edge215, %bb.v
  br i1 %i.u, label %bb.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.w:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159
  call void @free(ptr noundef nonnull %i.t) #32
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159, %bb.w
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread: ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ai) #32
  br label %bb.x

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160: ; preds = %bb.j
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread
  %i.ff = phi ptr [ %i.ah, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.x, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  %.pn136.pn.pn.pn.pn.pn187 = phi { ptr, i32 } [ %i.bh, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.fe, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  call void @free(ptr noundef nonnull %i.ff) #32
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #32
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 0, ptr %3, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #33 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !67
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i
end_hunk_3
