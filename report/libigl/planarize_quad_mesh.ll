Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/planarize_quad_mesh?download=true
inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN3igl17PlanarizerShapeUpIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEE9assemblePEv:bb.a
  store double %i.li, ptr %i.lf, align 8, !tbaa !59
  %i.lj = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 4
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62, !llvm.loop !752

.lr.ph.i.i.i.i.i.i.i.i.i.i65:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59
  %i.lk = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.0.i.i.i.i.i.i.i.i.i.i.i60
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.0.i.i.i.i.i.i.i.i.i.i.i60
  %i.ln = load <2 x double>, ptr %i.lm, align 1, !tbaa !77
  %i.lo = fmul <2 x double> %i.lk, %i.ln
  store <2 x double> %i.lo, ptr %i.ll, align 16, !tbaa !77
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i61

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i61
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.lp = load i32, ptr %i.c, align 8, !tbaa !72  ; 2 uses
  %i.lq = sext i32 %i.lp to i64
  %i.lr = icmp slt i64 %indvars.iv.next128, %i.lq
  br i1 %i.lr, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59, label %._crit_edge120, !llvm.loop !753

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ac ], [ %i.ii, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.ab ], [ %.pn.pn.pn.pn.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.if, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body48

.body48:                                          ; preds = %bb.l, %bb.ag
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ag ], [ %i.cp, %bb.l ]
  %i.ls = load ptr, ptr %10, align 8, !tbaa !75
  call void @free(ptr noundef %i.ls) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.lt = load ptr, ptr %8, align 8, !tbaa !58
  call void @free(ptr noundef %i.lt) #27
  br label %bb.ah

bb.ah:                                            ; preds = %.body48, %bb.o
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn, %.body48 ], [ %i.cs, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn, %bb.ah ], [ %i.ce, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.n
  %.pn41.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn, %bb.ai ], [ %i.cr, %bb.n ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !75
  tail call void @free(ptr noundef %i.f) #27
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #30 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !31
  store i64 %3, ptr %i.c, align 8, !tbaa !91
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12eigenvectorsEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.464") align 16 %0, ptr noundef nonnull align 16 dereferenceable(560) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit
  %.02583 = phi i64 [ 0, %bb.a ], [ %i.gm, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit ] ; 6 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.02583
  %i.f = load <2 x double>, ptr %i.e, align 16, !tbaa !59
  %i.g = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.f) ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fmul double %i.h, f0x3CC0000000000000
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = fcmp ole double %i.j, %i.i
  %i.l = add nsw i64 %.02583, 1                   ; 5 uses
  %i.m = icmp eq i64 %i.l, 3
  %i.n = select i1 %i.k, i1 true, i1 %i.m
  %.idx.i.i.i.i = mul i64 %.02583, 24             ; 3 uses
  %.idx.i.i.i.i27 = mul i64 %.02583, 48           ; 4 uses
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.idx.i39 = mul i64 %i.l, 24                    ; 2 uses
  %.idx.i43 = mul i64 %i.l, 48                    ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %.idx.i.i.i.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !59 ; 6 uses
  %i.q = getelementptr i8, ptr %1, i64 %.idx.i39
  %i.r = load double, ptr %i.q, align 8, !tbaa !59 ; 6 uses
  %i.s = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i27 ; 6 uses
  store double %i.p, ptr %i.s, align 16
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double %i.r, ptr %.sroa.454.0..sroa_idx, align 8, !tbaa !77
  %i.t = fneg double %i.r
  %i.u = getelementptr i8, ptr %0, i64 %.idx.i43  ; 6 uses
  store double %i.p, ptr %i.u, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.t, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !77
  %i.v = getelementptr i8, ptr %i.b, i64 %.idx.i.i.i.i
  %i.w = getelementptr i8, ptr %i.b, i64 %.idx.i39
  %i.x = getelementptr i8, ptr %i.c, i64 %.idx.i.i.i.i27 ; 2 uses
  %.sroa.454.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.y = getelementptr i8, ptr %i.c, i64 %.idx.i43 ; 2 uses
  %.sroa.452.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.z = load <2 x double>, ptr %i.v, align 8, !tbaa !59 ; 6 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0 ; 2 uses
  store double %i.aa, ptr %i.x, align 16
  %i.ab = load <2 x double>, ptr %i.w, align 8, !tbaa !59 ; 6 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  store double %i.ac, ptr %.sroa.454.0..sroa_idx.1, align 8, !tbaa !77
  %i.ad = fneg double %i.ac
  store double %i.aa, ptr %i.y, align 16
  store double %i.ad, ptr %.sroa.452.0..sroa_idx.1, align 8, !tbaa !77
  %i.ae = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i.i27 ; 2 uses
  %i.af = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  store double %i.af, ptr %i.ae, align 16
  %.sroa.454.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  store double %i.ag, ptr %.sroa.454.0..sroa_idx.2, align 8, !tbaa !77
  %i.ah = fneg double %i.ag
  %i.ai = getelementptr i8, ptr %i.d, i64 %.idx.i43 ; 2 uses
  store double %i.af, ptr %i.ai, align 16
  %.sroa.452.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double %i.ah, ptr %.sroa.452.0..sroa_idx.2, align 8, !tbaa !77
  %i.aj = fmul double %i.r, %i.r
  %i.ak = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.aj)
  %i.al = fmul <2 x double> %i.ab, %i.ab
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.al) ; 2 uses
  %shift = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.am, %shift
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ao = fadd double %i.ak, %i.an                ; 2 uses
  %i.ap = fcmp ogt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit33

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i27 ; 8 uses
  %2 = load double, ptr %i.aq, align 8, !tbaa !59 ; 3 uses
  store double %2, ptr %i.ar, align 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.a, align 8, !tbaa !77
  %3 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.a, align 8, !tbaa !77
  %4 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %5 = tail call noundef double @llvm.fmuladd.f64(double %2, double %2, double 0.000000e+00)
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !59 ; 4 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  store double %i.au, ptr %3, align 16
  %i.av = extractelement <2 x double> %i.at, i64 1
  store double %i.av, ptr %4, align 16
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> zeroinitializer) ; 2 uses
  %shift88 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop89 = fadd <2 x double> %6, %shift88
  %i.aw = extractelement <2 x double> %foldExtExtBinop89, i64 0
  %i.ax = fadd double %5, %i.aw                   ; 2 uses
  %i.ay = fcmp ogt double %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.e, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit

bb.e:                                             ; preds = %bb.d
  %.scalar.i = tail call double @llvm.sqrt.f64(double %i.ax)
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar.i, i64 0 ; 3 uses
  %i.az = bitcast <2 x double> %.sroa.0.8.vec.insert.i to <2 x i64>
  %i.ba = load <4 x i32>, ptr %i.ar, align 16, !tbaa !77 ; 2 uses
  %i.bb = or disjoint <2 x i64> %i.az, <i64 0, i64 -9223372036854775808> ; 2 uses
  %i.bc = bitcast <2 x i64> %i.bb to <2 x double> ; 3 uses
  %i.bd = bitcast <4 x i32> %i.ba to <2 x double>
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.be, %i.bc
  %i.bg = bitcast <4 x i32> %i.ba to <2 x double>
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = bitcast <2 x i64> %i.bb to <2 x double>
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.bk = fmul <2 x double> %i.bj, %i.bh
  %i.bl = bitcast <2 x double> %i.bk to <2 x i64>
  %i.bm = xor <2 x i64> %i.bl, <i64 -9223372036854775808, i64 0>
  %i.bn = bitcast <2 x i64> %i.bm to <2 x double>
  %i.bo = fadd <2 x double> %i.bf, %i.bn
  %i.bp = fmul <2 x double> %.sroa.0.8.vec.insert.i, %.sroa.0.8.vec.insert.i ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.br = fadd <2 x double> %i.bp, %i.bq          ; 3 uses
  %i.bs = fdiv <2 x double> %i.bo, %i.br
  store <2 x double> %i.bs, ptr %i.ar, align 16, !tbaa !77
  %i.bt = load <4 x i32>, ptr %3, align 16, !tbaa !77 ; 2 uses
  %i.bu = bitcast <4 x i32> %i.bt to <2 x double>
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bv, %i.bc
  %i.bx = bitcast <4 x i32> %i.bt to <2 x double>
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x double> %i.bj, %i.by
  %i.ca = bitcast <2 x double> %i.bz to <2 x i64>
  %i.cb = xor <2 x i64> %i.ca, <i64 -9223372036854775808, i64 0>
  %i.cc = bitcast <2 x i64> %i.cb to <2 x double>
  %i.cd = fadd <2 x double> %i.bw, %i.cc
  %i.ce = fdiv <2 x double> %i.cd, %i.br
  store <2 x double> %i.ce, ptr %3, align 16, !tbaa !77
  %i.cf = load <4 x i32>, ptr %4, align 16, !tbaa !77 ; 2 uses
  %i.cg = bitcast <4 x i32> %i.cf to <2 x double>
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.ch, %i.bc
  %i.cj = bitcast <4 x i32> %i.cf to <2 x double>
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fmul <2 x double> %i.bj, %i.ck
  %i.cm = bitcast <2 x double> %i.cl to <2 x i64>
  %i.cn = xor <2 x i64> %i.cm, <i64 -9223372036854775808, i64 0>
  %i.co = bitcast <2 x i64> %i.cn to <2 x double>
  %i.cp = fadd <2 x double> %i.ci, %i.co
  %i.cq = fdiv <2 x double> %i.cp, %i.br
  store <2 x double> %i.cq, ptr %4, align 16, !tbaa !77
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit

bb.f:                                             ; preds = %.preheader
  %i.cr = getelementptr i8, ptr %i.s, i64 32      ; 2 uses
  %i.cs = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %.scalar.i31 = tail call double @llvm.sqrt.f64(double %i.ao)
  %.sroa.0.8.vec.insert.i32 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar.i31, i64 0 ; 3 uses
  %i.ct = bitcast <2 x double> %.sroa.0.8.vec.insert.i32 to <2 x i64>
  %i.cu = load <4 x i32>, ptr %i.s, align 16, !tbaa !77 ; 2 uses
  %i.cv = or disjoint <2 x i64> %i.ct, <i64 0, i64 -9223372036854775808> ; 2 uses
  %i.cw = bitcast <2 x i64> %i.cv to <2 x double> ; 3 uses
  %i.cx = bitcast <4 x i32> %i.cu to <2 x double>
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cy, %i.cw
  %i.da = bitcast <4 x i32> %i.cu to <2 x double>
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = bitcast <2 x i64> %i.cv to <2 x double>
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.de = fmul <2 x double> %i.dd, %i.db
  %i.df = bitcast <2 x double> %i.de to <2 x i64>
  %i.dg = xor <2 x i64> %i.df, <i64 -9223372036854775808, i64 0>
  %i.dh = bitcast <2 x i64> %i.dg to <2 x double>
  %i.di = fadd <2 x double> %i.cz, %i.dh
  %i.dj = fmul <2 x double> %.sroa.0.8.vec.insert.i32, %.sroa.0.8.vec.insert.i32 ; 2 uses
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = fadd <2 x double> %i.dj, %i.dk          ; 3 uses
  %i.dm = fdiv <2 x double> %i.di, %i.dl
  store <2 x double> %i.dm, ptr %i.s, align 16, !tbaa !77
  %i.dn = load <4 x i32>, ptr %i.cs, align 16, !tbaa !77 ; 2 uses
  %i.do = bitcast <4 x i32> %i.dn to <2 x double>
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.cw
  %i.dr = bitcast <4 x i32> %i.dn to <2 x double>
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = fmul <2 x double> %i.dd, %i.ds
  %i.du = bitcast <2 x double> %i.dt to <2 x i64>
  %i.dv = xor <2 x i64> %i.du, <i64 -9223372036854775808, i64 0>
  %i.dw = bitcast <2 x i64> %i.dv to <2 x double>
  %i.dx = fadd <2 x double> %i.dq, %i.dw
  %i.dy = fdiv <2 x double> %i.dx, %i.dl
  store <2 x double> %i.dy, ptr %i.cs, align 16, !tbaa !77
  %i.dz = load <4 x i32>, ptr %i.cr, align 16, !tbaa !77 ; 2 uses
  %i.ea = bitcast <4 x i32> %i.dz to <2 x double>
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.eb, %i.cw
  %i.ed = bitcast <4 x i32> %i.dz to <2 x double>
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ef = fmul <2 x double> %i.dd, %i.ee
  %i.eg = bitcast <2 x double> %i.ef to <2 x i64>
  %i.eh = xor <2 x i64> %i.eg, <i64 -9223372036854775808, i64 0>
  %i.ei = bitcast <2 x i64> %i.eh to <2 x double>
  %i.ej = fadd <2 x double> %i.ec, %i.ei
  %i.ek = fdiv <2 x double> %i.ej, %i.dl
  store <2 x double> %i.ek, ptr %i.cr, align 16, !tbaa !77
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit33

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit33: ; preds = %.preheader, %bb.f
  %i.el = fmul double %i.r, %i.r
  %i.em = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.el)
  %i.en = fmul <2 x double> %i.ab, %i.ab
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.en) ; 2 uses
  %shift91 = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop92 = fadd <2 x double> %i.eo, %shift91
  %i.ep = extractelement <2 x double> %foldExtExtBinop92, i64 0
  %i.eq = fadd double %i.em, %i.ep                ; 2 uses
  %i.er = fcmp ogt double %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.g, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit

bb.g:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit33
  %i.es = getelementptr i8, ptr %i.u, i64 32      ; 2 uses
  %i.et = getelementptr i8, ptr %i.u, i64 16      ; 2 uses
  %.scalar.i36 = tail call double @llvm.sqrt.f64(double %i.eq)
  %.sroa.0.8.vec.insert.i37 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar.i36, i64 0 ; 3 uses
  %i.eu = bitcast <2 x double> %.sroa.0.8.vec.insert.i37 to <2 x i64>
  %i.ev = load <4 x i32>, ptr %i.u, align 16, !tbaa !77 ; 2 uses
  %i.ew = or disjoint <2 x i64> %i.eu, <i64 0, i64 -9223372036854775808> ; 2 uses
  %i.ex = bitcast <2 x i64> %i.ew to <2 x double> ; 3 uses
  %i.ey = bitcast <4 x i32> %i.ev to <2 x double>
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.ez, %i.ex
  %i.fb = bitcast <4 x i32> %i.ev to <2 x double>
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = bitcast <2 x i64> %i.ew to <2 x double>
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ff = fmul <2 x double> %i.fe, %i.fc
  %i.fg = bitcast <2 x double> %i.ff to <2 x i64>
  %i.fh = xor <2 x i64> %i.fg, <i64 -9223372036854775808, i64 0>
  %i.fi = bitcast <2 x i64> %i.fh to <2 x double>
  %i.fj = fadd <2 x double> %i.fa, %i.fi
  %i.fk = fmul <2 x double> %.sroa.0.8.vec.insert.i37, %.sroa.0.8.vec.insert.i37 ; 2 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = fadd <2 x double> %i.fk, %i.fl          ; 3 uses
  %i.fn = fdiv <2 x double> %i.fj, %i.fm
  store <2 x double> %i.fn, ptr %i.u, align 16, !tbaa !77
  %i.fo = load <4 x i32>, ptr %i.et, align 16, !tbaa !77 ; 2 uses
  %i.fp = bitcast <4 x i32> %i.fo to <2 x double>
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x double> %i.fq, %i.ex
  %i.fs = bitcast <4 x i32> %i.fo to <2 x double>
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = fmul <2 x double> %i.fe, %i.ft
  %i.fv = bitcast <2 x double> %i.fu to <2 x i64>
  %i.fw = xor <2 x i64> %i.fv, <i64 -9223372036854775808, i64 0>
  %i.fx = bitcast <2 x i64> %i.fw to <2 x double>
  %i.fy = fadd <2 x double> %i.fr, %i.fx
  %i.fz = fdiv <2 x double> %i.fy, %i.fm
  store <2 x double> %i.fz, ptr %i.et, align 16, !tbaa !77
  %i.ga = load <4 x i32>, ptr %i.es, align 16, !tbaa !77 ; 2 uses
  %i.gb = bitcast <4 x i32> %i.ga to <2 x double>
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x double> %i.gc, %i.ex
  %i.ge = bitcast <4 x i32> %i.ga to <2 x double>
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = fmul <2 x double> %i.fe, %i.gf
  %i.gh = bitcast <2 x double> %i.gg to <2 x i64>
  %i.gi = xor <2 x i64> %i.gh, <i64 -9223372036854775808, i64 0>
  %i.gj = bitcast <2 x i64> %i.gi to <2 x double>
  %i.gk = fadd <2 x double> %i.gd, %i.gj
  %i.gl = fdiv <2 x double> %i.gk, %i.fm
  store <2 x double> %i.gl, ptr %i.es, align 16, !tbaa !77
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit: ; preds = %bb.g, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit33, %bb.e, %bb.d
  %.1 = phi i64 [ %.02583, %bb.e ], [ %.02583, %bb.d ], [ %i.l, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit33 ], [ %i.l, %bb.g ] ; 2 uses
  %i.gm = add nsw i64 %.1, 1
  %i.gn = icmp slt i64 %.1, 2
  br i1 %i.gn, label %bb.c, label %bb.b, !llvm.loop !763
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_7ProductIS3_S3_Li2EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::evaluator.528", align 8 ; 17 uses
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !774, !nonnull !74, !align !118 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !775, !nonnull !74, !align !118 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.e, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.m = shl i64 %i.i, 2
  %i.n = add i64 %i.m, 4
  %calloc189 = tail call ptr @calloc(i64 1, i64 %i.n) ; 2 uses
  store ptr %calloc189, ptr %i.l, align 8, !tbaa !92
  %.not6.i = icmp eq ptr %calloc189, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.q) #27
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  store i64 %i.i, ptr %i.j, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.a, ptr %2, align 8, !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !171
  invoke void @_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIdLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_ZN5Eigen8internal9evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEEEC2ERKS5_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.e, %.body70
  %common.resume.op = phi { ptr, i32 } [ %.pn47.pn, %.body70 ], [ %i.t, %bb.e ], [ %i.p, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5Eigen8internal9evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEEEC2ERKS5_.exit: ; preds = %bb.d
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !775, !nonnull !74, !align !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !63   ; 5 uses
  %i.x = load i8, ptr %1, align 8, !tbaa !173, !range !128, !noundef !74
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.u
end_hunk_0
