Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = fadd <2 x double> %.0399435, %i.gc      ; 2 uses
  %i.ge = add nuw nsw i64 %.0184438, 1            ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %.sroa.speculated
  br i1 %i.gf, label %bb.f, label %._crit_edge440, !llvm.loop !933

bb.g:                                             ; preds = %._crit_edge440, %bb.e
  %.2 = phi i64 [ %i.fl, %._crit_edge440 ], [ %.1, %bb.e ] ; 5 uses
  %i.gg = icmp slt i64 %.2, %i.d
  br i1 %i.gg, label %.lr.ph447, label %bb.i

.lr.ph447:                                        ; preds = %bb.g
  %i.gh = load ptr, ptr %3, align 8, !tbaa !182
  %i.gi = load i64, ptr %i.o, align 8, !tbaa !183
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.2 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  br label %bb.h

._crit_edge448:                                   ; preds = %bb.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %.2 ; 3 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !24
  %i.gn = fmul <2 x double> %i.l, %i.hd
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gl, align 1, !tbaa !24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !24
  %i.gr = fmul <2 x double> %i.l, %i.hh
  %i.gs = fadd <2 x double> %i.gr, %i.gq
  store <2 x double> %i.gs, ptr %i.gp, align 1, !tbaa !24
  %i.gt = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.hi, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hh, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hd, %bb.h ]
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !42
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !24
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !24
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !934

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !182
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !183
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !24
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !24
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !42
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !24
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !935

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !182
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !183
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !42
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !42
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !936

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !42
  %i.is = load double, ptr %i.iq, align 8, !tbaa !42
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !937
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_5BlockIKNS_7ProductINS_9TransposeINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES7_Li0EEELi1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.658", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEELi8ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !91
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !206
  %.not8.i = icmp eq i64 %i.h, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !205   ; 2 uses
  br i1 %.not8.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %.pre) #26
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.k = shl nuw i64 %i.f, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #30 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.l, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !205
  store i64 %i.f, ptr %i.g, align 8, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i
  %i.o = phi ptr [ %.pre, %bb.a ], [ %.sink.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i ] ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEESA_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !91   ; 7 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !158    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !148  ; 6 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.r ; 6 uses
  %min.iters.check = icmp ugt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.v, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = add i64 %i.r, %i.s
  %i.z = shl i64 %i.y, 3
  %i.aa = add i64 %i.z, %i.x
  %i.ab = sub i64 %i.aa, %i.p
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.w, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !42
  %wide.load14 = load <2 x double>, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !42
  store <2 x double> %wide.load14, ptr %i.ae, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !938

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEESA_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.prol = phi i64 [ %i.al, %scalar.ph.prol ], [ %.05.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.prol
  %i.ah = add nsw i64 %.05.i.prol, %i.s
  %i.ai = mul nsw i64 %i.ah, %i.v
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !42
  store double %i.ak, ptr %i.ag, align 8, !tbaa !42
  %i.al = add nuw nsw i64 %.05.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !939

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %.05.i.ph, %i.f
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEESA_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i = phi i64 [ %i.bl, %scalar.ph ], [ %.05.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i
  %i.ap = add nsw i64 %.05.i, %i.s
  %i.aq = mul nsw i64 %i.ap, %i.v
  %i.ar = getelementptr [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42
  store double %i.as, ptr %i.ao, align 8, !tbaa !42
  %i.at = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at
  %i.av = add nsw i64 %i.at, %i.s
  %i.aw = mul nsw i64 %i.av, %i.v
  %i.ax = getelementptr [8 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  store double %i.ay, ptr %i.au, align 8, !tbaa !42
  %i.az = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.az
  %i.bb = add nsw i64 %i.az, %i.s
  %i.bc = mul nsw i64 %i.bb, %i.v
  %i.bd = getelementptr [8 x i8], ptr %i.w, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42
  store double %i.be, ptr %i.ba, align 8, !tbaa !42
  %i.bf = add nuw nsw i64 %.05.i, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = add nsw i64 %i.bf, %i.s
  %i.bi = mul nsw i64 %i.bh, %i.v
  %i.bj = getelementptr [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  store double %i.bk, ptr %i.bg, align 8, !tbaa !42
  %i.bl = add nuw nsw i64 %.05.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bl, %i.f
  br i1 %exitcond.not.i.3, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEESA_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_.exit, label %scalar.ph, !llvm.loop !940

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEESA_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  call void @free(ptr noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  call void @free(ptr noundef %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.bo
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS5_IdLi1ELin1ELi1ELi1ELin1EEEEENS4_INS_5BlockIS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !187, !nonnull !88, !align !89 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !209, !nonnull !88, !align !89 ; 2 uses
  %i.c = load double, ptr %3, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !206  ; 4 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.j = icmp samesign ult i64 %i.e, 16385
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #30 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !40
  store ptr %i.w, ptr %4, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.q, ptr %5, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.y, align 8, !tbaa !186
  %i.z = load ptr, ptr %2, align 8, !tbaa !133
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.6.24.copyload, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.z, i64 noundef %i.ab, double noundef %i.c)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.r, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ac
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSA_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEELi1ELin1ELb0EEESC_NS_10DenseShapeESL_Li7EE13scaleAndAddToINS2_IS8_Li1ELin1ELb0EEEEEvRT_RSK_RKSC_RKd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bx = load ptr, ptr %0, align 8, !tbaa !133   ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !42
  %i.bz = call double @llvm.fmuladd.f64(double %i.e, double %.0.i.i.i, double %i.by)
  store double %i.bz, ptr %i.bx, align 8, !tbaa !42
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS2_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSB_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEELi1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSB_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEELi1ELin1ELb0EEEEERKT_.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.e ], [ %i.cf, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %10, align 8, !tbaa !205
  call void @free(ptr noundef %i.cb) #26
  br label %common.resume

_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSB_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEELi1ELin1ELb0EEEEERKT_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.cc = load i64, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cd = inttoptr i64 %i.cc to ptr
  store ptr %i.cd, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %10, ptr %6, align 8
  invoke void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS5_IdLi1ELin1ELi1ELi1ELin1EEEEENS4_INS_5BlockIS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSM_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSB_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEELi1ELin1ELb0EEEEERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ce = load ptr, ptr %10, align 8, !tbaa !205
  call void @free(ptr noundef %i.ce) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSA_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKSC_Lin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS4_6traitsIT_E6ScalarENS4_17scalar_product_opIdSU_EEE10ReturnTypeERKNS0_ISS_EE.exit
  ret void

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSB_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEELi1ELin1ELb0EEEEERKT_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %10, align 8, !tbaa !205
  call void @free(ptr noundef %i.cg) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal15unary_evaluatorINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEENS0_10IndexBasedEdEC2ERKSG_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !147
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116, !nonnull !88, !align !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i64 9223372036854775807, %i.j
  %i.m = icmp sgt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = mul nsw i64 %i.j, %i.f
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.o, i64 noundef %i.f, i64 noundef %i.j)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.q) #26
  br label %.body

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  store ptr %i.r, ptr %0, align 8, !tbaa !147
  store i64 %i.t, ptr %i.a, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS_7ProductINS9_INS_9TransposeIS3_EES3_Li0EEES3_Li0EEEEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSG_RKSI_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @free(ptr noundef %i.v) #26
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS2_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSB_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEELi1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1294", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5Eigen8internal15unary_evaluatorINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEENS0_10IndexBasedEdEC2ERKSG_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !91
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !206
  %.not8.i = icmp eq i64 %i.h, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !205   ; 2 uses
  br i1 %.not8.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %.pre) #26
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.k = shl nuw i64 %i.f, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #30 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.l, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !205
  store i64 %i.f, ptr %i.g, align 8, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i
  %i.o = phi ptr [ %.pre, %bb.a ], [ %.sink.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i ] ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !91   ; 7 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !158    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !148  ; 6 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.r ; 6 uses
  %min.iters.check = icmp ugt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.v, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = add i64 %i.r, %i.s
  %i.z = shl i64 %i.y, 3
  %i.aa = add i64 %i.z, %i.x
  %i.ab = sub i64 %i.aa, %i.p
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.w, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !42
  %wide.load14 = load <2 x double>, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !42
  store <2 x double> %wide.load14, ptr %i.ae, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.prol = phi i64 [ %i.al, %scalar.ph.prol ], [ %.05.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.prol
  %i.ah = add nsw i64 %.05.i.prol, %i.s
  %i.ai = mul nsw i64 %i.ah, %i.v
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !42
  store double %i.ak, ptr %i.ag, align 8, !tbaa !42
  %i.al = add nuw nsw i64 %.05.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1205

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %.05.i.ph, %i.f
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i = phi i64 [ %i.bl, %scalar.ph ], [ %.05.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i
  %i.ap = add nsw i64 %.05.i, %i.s
  %i.aq = mul nsw i64 %i.ap, %i.v
  %i.ar = getelementptr [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42
  store double %i.as, ptr %i.ao, align 8, !tbaa !42
  %i.at = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at
  %i.av = add nsw i64 %i.at, %i.s
  %i.aw = mul nsw i64 %i.av, %i.v
  %i.ax = getelementptr [8 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  store double %i.ay, ptr %i.au, align 8, !tbaa !42
  %i.az = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.az
  %i.bb = add nsw i64 %i.az, %i.s
  %i.bc = mul nsw i64 %i.bb, %i.v
  %i.bd = getelementptr [8 x i8], ptr %i.w, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42
  store double %i.be, ptr %i.ba, align 8, !tbaa !42
  %i.bf = add nuw nsw i64 %.05.i, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = add nsw i64 %i.bf, %i.s
  %i.bi = mul nsw i64 %i.bh, %i.v
  %i.bj = getelementptr [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  store double %i.bk, ptr %i.bg, align 8, !tbaa !42
  %i.bl = add nuw nsw i64 %.05.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bl, %i.f
  br i1 %exitcond.not.i.3, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit, label %scalar.ph, !llvm.loop !1206

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINSE_INS_9TransposeISC_EESC_Li0EEESC_Li0EEEEEEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  call void @free(ptr noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  call void @free(ptr noundef %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.bo
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS5_IdLi1ELin1ELi1ELi1ELin1EEEEENS4_INS_5BlockIS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSM_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !159, !nonnull !88, !align !89 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !209, !nonnull !88, !align !89
  %i.c = load double, ptr %3, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 10 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.h = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 16384        ; 4 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #30 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.n = add nuw nsw i64 %i.h, 15
  %i.o = alloca i8, i64 %i.n, align 16            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.thread, %bb.e
  %i.q = phi ptr [ %i.l, %.thread ], [ %i.p, %bb.e ] ; 4 uses
  %i.r = phi ptr [ %i.j, %.thread ], [ %i.o, %bb.e ] ; 9 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !133    ; 6 uses
  %.pn = load ptr, ptr %i.q, align 8, !tbaa !1213, !nonnull !88, !align !89
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.t = load i64, ptr %.in, align 8, !tbaa !38   ; 6 uses
  %min.iters.check = icmp ugt i64 %i.e, 3
  %ident.check.not = icmp eq i64 %i.t, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader67

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !42
  %wide.load48 = load <2 x double>, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !42
  store <2 x double> %wide.load48, ptr %i.x, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.i.i.preheader67:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader67 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader67 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.aa = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.t
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !42
  store double %i.ac, ptr %i.z, align 8, !tbaa !42
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS3_INS3_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEELi1ELin1ELb0EEES9_NS_10DenseShapeESM_Li7EE13scaleAndAddToINS2_IS9_Li1ELin1ELb0EEEEEvRT_RSL_RSA_RKd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_ISA_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS5_6traitsIT_E6ScalarENS5_17scalar_product_opIdSU_EEE10ReturnTypeERKNS0_ISS_EE.exit
  ret void

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEKNS4_INS4_INS_9TransposeISA_EESA_Li0EEESA_Li0EEEEEEESD_Li0EEELi1ELin1ELb0EEEEERKT_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %10, align 8, !tbaa !205
  call void @free(ptr noundef %i.bz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEELi8ENS_10DenseShapeESI_ddEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Product.338", align 8 ; 5 uses
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 -1, ptr %i.b, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116, !nonnull !88, !align !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sdiv i64 9223372036854775807, %i.k
  %i.n = icmp sgt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = mul nsw i64 %i.k, %i.g
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.p, i64 noundef %i.g, i64 noundef %i.k)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.r) #26
  br label %.body

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !38   ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !147
  store i64 %i.u, ptr %i.b, align 8, !tbaa !148
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !159, !nonnull !88, !align !89 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %i.ab = add nsw i64 %i.y, %i.aa
  %i.ac = icmp slt i64 %i.ab, 20
  %i.ad = icmp sgt i64 %i.x, 0
  %or.cond.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = ptrtoint ptr %i.v to i64
  store i64 %i.af, ptr %i.ae, align 8, !alias.scope !1246
  invoke void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS4_INS4_INS_9TransposeIS3_EES3_Li0EEES3_Li0EEEEEEENSA_IS9_EELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEESB_NS_10DenseShapeESH_Li8EE6evalToIS7_EEvRT_RKSG_RKSB_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = mul nsw i64 %i.aa, %i.u                 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.g
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !42
  invoke void @_ZN5Eigen8internal20generic_product_implINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEESB_NS_10DenseShapeESH_Li8EE13scaleAndAddToIS7_EEvRT_RKSG_RKSB_RKd(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEESB_NS_10DenseShapeESH_Li8EE6evalToIS7_EEvRT_RKSG_RKSB_.exit

_ZN5Eigen8internal20generic_product_implINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_7ProductINS9_INS_9TransposeIS7_EES7_Li0EEES7_Li0EEEEEEESB_NS_10DenseShapeESH_Li8EE6evalToIS7_EEvRT_RKSG_RKSB_.exit: ; preds = %.noexc8, %.noexc
  ret void

bb.h:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !40
  call void @free(ptr noundef %i.aj) #26
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS2_IdLin1ELin1ELi0ELin1ELin1EEEKNS5_INS5_INS_9TransposeISA_EESA_Li0EEESA_Li0EEEEEEESD_Li0EEELi1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1431", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEELi8ENS_10DenseShapeESI_ddEC2ERKSH_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !91
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !206
  %.not8.i = icmp eq i64 %i.h, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !205   ; 2 uses
  br i1 %.not8.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %.pre) #26
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.k = shl nuw i64 %i.f, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #30 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.l, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !205
  store i64 %i.f, ptr %i.g, align 8, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i
  %i.o = phi ptr [ %.pre, %bb.a ], [ %.sink.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i ] ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSS_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !91   ; 7 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !158    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !148  ; 6 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.r ; 6 uses
  %min.iters.check = icmp ugt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.v, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = add i64 %i.r, %i.s
  %i.z = shl i64 %i.y, 3
  %i.aa = add i64 %i.z, %i.x
  %i.ab = sub i64 %i.aa, %i.p
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.w, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !42
  %wide.load14 = load <2 x double>, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !42
  store <2 x double> %wide.load14, ptr %i.ae, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.prol = phi i64 [ %i.al, %scalar.ph.prol ], [ %.05.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.prol
  %i.ah = add nsw i64 %.05.i.prol, %i.s
  %i.ai = mul nsw i64 %i.ah, %i.v
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !42
  store double %i.ak, ptr %i.ag, align 8, !tbaa !42
  %i.al = add nuw nsw i64 %.05.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1248

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %.05.i.ph, %i.f
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSS_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i = phi i64 [ %i.bl, %scalar.ph ], [ %.05.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i
  %i.ap = add nsw i64 %.05.i, %i.s
  %i.aq = mul nsw i64 %i.ap, %i.v
  %i.ar = getelementptr [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42
  store double %i.as, ptr %i.ao, align 8, !tbaa !42
  %i.at = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at
  %i.av = add nsw i64 %i.at, %i.s
  %i.aw = mul nsw i64 %i.av, %i.v
  %i.ax = getelementptr [8 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  store double %i.ay, ptr %i.au, align 8, !tbaa !42
  %i.az = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.az
  %i.bb = add nsw i64 %i.az, %i.s
  %i.bc = mul nsw i64 %i.bb, %i.v
  %i.bd = getelementptr [8 x i8], ptr %i.w, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42
  store double %i.be, ptr %i.ba, align 8, !tbaa !42
  %i.bf = add nuw nsw i64 %.05.i, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = add nsw i64 %i.bf, %i.s
  %i.bi = mul nsw i64 %i.bh, %i.v
  %i.bj = getelementptr [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  store double %i.bk, ptr %i.bg, align 8, !tbaa !42
  %i.bl = add nuw nsw i64 %.05.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bl, %i.f
  br i1 %exitcond.not.i.3, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSS_.exit, label %scalar.ph, !llvm.loop !1249

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSS_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  call void @free(ptr noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  call void @free(ptr noundef %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.bo
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_Li0EEEKNS_5BlockIS9_Lin1ELi1ELb1EEENS_10DenseShapeESM_Li7EE13scaleAndAddToINSJ_IS8_Lin1ELi1ELb1EEEEEvRT_RKSI_RSL_RKd(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::internal::redux_evaluator.1500", align 8 ; 9 uses
  %8 = alloca %"class.Eigen::CwiseBinaryOp.1487", align 8 ; 13 uses
  %.sroa.512 = alloca [32 x i8], align 8          ; 4 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116, !nonnull !88, !align !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %3, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121, !noalias !1255, !nonnull !88, !align !89
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39, !noalias !1255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  %i.l = load ptr, ptr %2, align 8, !tbaa !129, !noalias !1256
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197, !noalias !1256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !91, !noalias !1256 ; 2 uses
  %.sroa.512.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.512, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.7.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.24..sroa_idx, i64 24, i1 false)
  %i.r = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !1256
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.416.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.k, ptr %.sroa.619.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  store ptr %i.l, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 2 uses
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.512, i64 32, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 176
  store i64 0, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 192
  store i64 %i.r, ptr %.sroa.814.0..sroa_idx, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEES9_Li0EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_ISA_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS5_6traitsIT_E6ScalarENS5_17scalar_product_opIdSV_EEE10ReturnTypeERKNS0_IST_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_Li0EEELi8ENS_10DenseShapeESJ_ddEC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.w = load i64, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !91 ; 2 uses
  store i64 %i.w, ptr %i.v, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.y = load i64, ptr %.sroa.517.0..sroa_idx, align 8, !tbaa !91 ; 5 uses
  store i64 %i.y, ptr %i.x, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !199 ; 5 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ac = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !197, !nonnull !88, !align !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !38
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !91
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !158
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !148 ; 4 uses
  %i.ai = mul nsw i64 %i.ah, %i.y
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.w ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load double, ptr %i.ak, align 8, !tbaa !42
  %i.am = load double, ptr %i.aa, align 8, !tbaa !42
  %i.an = fmul double %i.al, %i.am                ; 3 uses
  %i.ao = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !91 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_9TransposeIKNS_5BlockIKNS_7ProductINS7_INS_7InverseINS1_INS2_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS7_INS7_INS5_ISC_EESC_Li0EEESC_Li0EEEEEEESE_Li0EEESC_Li0EEELi1ELin1ELb0EEEEEKNS6_IKNS6_ISD_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEEE5reduxISA_EEdRKT_.exit.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.aq = add nsw i64 %i.ao, -1                   ; 3 uses
  %xtraiter = and i64 %i.aq, 1
  %i.ar = icmp eq i64 %i.ao, 2
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_7ProductINS3_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS3_INS3_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEES9_Li0EEELi1ELin1ELb0EEES9_NS_10DenseShapeESN_Li7EE13scaleAndAddToINS2_IS9_Li1ELin1ELb0EEEEEvRT_RSM_RSA_RKd:bb.a
  call void @free(ptr noundef %i.bx) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS9_EES9_Li0EEES9_Li0EEEEEEESC_Li0EEES9_Li0EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_ISA_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS5_6traitsIT_E6ScalarENS5_17scalar_product_opIdSV_EEE10ReturnTypeERKNS0_IST_EE.exit
  ret void

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEC2INS_5BlockIKNS_7ProductINS4_INS_7InverseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEKNS4_INS4_INS_9TransposeISA_EESA_Li0EEESA_Li0EEEEEEESD_Li0EEESA_Li0EEELi1ELin1ELb0EEEEERKT_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %10, align 8, !tbaa !205
  call void @free(ptr noundef %i.bz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_Li0EEELi8ENS_10DenseShapeESJ_ddEC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Product.318", align 8 ; 5 uses
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 -1, ptr %i.b, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116, !nonnull !88, !align !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121, !nonnull !88, !align !89
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sdiv i64 9223372036854775807, %i.k
  %i.n = icmp sgt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = mul nsw i64 %i.k, %i.g
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.p, i64 noundef %i.g, i64 noundef %i.k)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.r) #26
  br label %.body

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !38   ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !147
  store i64 %i.u, ptr %i.b, align 8, !tbaa !148
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !121, !nonnull !88, !align !89 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %i.ab = add nsw i64 %i.y, %i.aa
  %i.ac = icmp slt i64 %i.ab, 20
  %i.ad = icmp sgt i64 %i.x, 0
  %or.cond.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.v, ptr %i.ae, align 8, !tbaa !85, !alias.scope !1266
  invoke void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS4_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS4_INS4_INS_9TransposeIS3_EES3_Li0EEES3_Li0EEEEEEESB_Li0EEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_NS_10DenseShapeESI_Li8EE6evalToIS8_EEvRT_RKSH_RS9_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = mul nsw i64 %i.aa, %i.u                 ; 2 uses
  %i.ag = icmp slt i64 %i.af, 1
  br i1 %i.ag, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.g
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !42
  invoke void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_NS_10DenseShapeESI_Li8EE13scaleAndAddToIS8_EEvRT_RKSH_RS9_RKd(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_NS_10DenseShapeESI_Li8EE6evalToIS8_EEvRT_RKSH_RS9_.exit

_ZN5Eigen8internal20generic_product_implINS_7ProductINS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_NS_10DenseShapeESI_Li8EE6evalToIS8_EEvRT_RKSH_RS9_.exit: ; preds = %.noexc8, %.noexc
  ret void

bb.h:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !40
  call void @free(ptr noundef %i.ai) #26
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_5BlockIKNS_7ProductINS5_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS2_IdLin1ELin1ELi0ELin1ELin1EEEKNS5_INS5_INS_9TransposeISA_EESA_Li0EEESA_Li0EEEEEEESD_Li0EEESA_Li0EEELi1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1511", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS2_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS2_INS2_INS_9TransposeIS8_EES8_Li0EEES8_Li0EEEEEEESB_Li0EEES8_Li0EEELi8ENS_10DenseShapeESJ_ddEC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !91
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !206
  %.not8.i = icmp eq i64 %i.h, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !205   ; 2 uses
  br i1 %.not8.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %.pre) #26
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.k = shl nuw i64 %i.f, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #30 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.l, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !205
  store i64 %i.f, ptr %i.g, align 8, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i
  %i.o = phi ptr [ %.pre, %bb.a ], [ %.sink.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.i ] ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp sgt i64 %i.f, 0
  br i1 %i.q, label %.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS8_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEESD_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERST_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !91   ; 7 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !158    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !148  ; 6 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.r ; 6 uses
  %min.iters.check = icmp ugt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.v, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = add i64 %i.r, %i.s
  %i.z = shl i64 %i.y, 3
  %i.aa = add i64 %i.z, %i.x
  %i.ab = sub i64 %i.aa, %i.p
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.w, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !42
  %wide.load14 = load <2 x double>, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !42
  store <2 x double> %wide.load14, ptr %i.ae, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS8_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEESD_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERST_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.prol = phi i64 [ %i.al, %scalar.ph.prol ], [ %.05.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i.prol
  %i.ah = add nsw i64 %.05.i.prol, %i.s
  %i.ai = mul nsw i64 %i.ah, %i.v
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !42
  store double %i.ak, ptr %i.ag, align 8, !tbaa !42
  %i.al = add nuw nsw i64 %.05.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1268

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.unr = phi i64 [ %.05.i.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %.05.i.ph, %i.f
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS8_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEESD_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERST_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i = phi i64 [ %i.bl, %scalar.ph ], [ %.05.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i
  %i.ap = add nsw i64 %.05.i, %i.s
  %i.aq = mul nsw i64 %i.ap, %i.v
  %i.ar = getelementptr [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42
  store double %i.as, ptr %i.ao, align 8, !tbaa !42
  %i.at = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.at
  %i.av = add nsw i64 %i.at, %i.s
  %i.aw = mul nsw i64 %i.av, %i.v
  %i.ax = getelementptr [8 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  store double %i.ay, ptr %i.au, align 8, !tbaa !42
  %i.az = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.az
  %i.bb = add nsw i64 %i.az, %i.s
  %i.bc = mul nsw i64 %i.bb, %i.v
  %i.bd = getelementptr [8 x i8], ptr %i.w, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42
  store double %i.be, ptr %i.ba, align 8, !tbaa !42
  %i.bf = add nuw nsw i64 %.05.i, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = add nsw i64 %i.bf, %i.s
  %i.bi = mul nsw i64 %i.bh, %i.v
  %i.bj = getelementptr [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  store double %i.bk, ptr %i.bg, align 8, !tbaa !42
  %i.bl = add nuw nsw i64 %.05.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bl, %i.f
  br i1 %exitcond.not.i.3, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS8_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEESD_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERST_.exit, label %scalar.ph, !llvm.loop !1269

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS3_INS_5BlockIKNS_7ProductINS8_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IdLin1ELin1ELi0ELin1ELin1EEEKNS8_INS8_INS_9TransposeISD_EESD_Li0EEESD_Li0EEEEEEESG_Li0EEESD_Li0EEELi1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERST_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  call void @free(ptr noundef %i.bn) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  call void @free(ptr noundef %i.bq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.bo
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS_7ProductINS8_INS_9TransposeIS3_EES3_Li0EEENS4_INS0_20scalar_difference_opIddEES7_KNS8_IS3_S3_Li0EEEEELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN5Eigen8internal30assignment_from_xpr_op_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS_7ProductINS4_INS_9TransposeIS3_EES3_Li0EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KNS4_IS3_S3_Li0EEEEELi0EEENS0_9assign_opIddEENS0_13add_assign_opIddEEE3runINS8_INS0_13scalar_sum_opIddEESB_KSF_EESH_EEvRS3_RKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS_7ProductINS8_INS_9TransposeIS1_EES1_Li0EEENS3_INS4_20scalar_difference_opIddEES7_KNS8_IS1_S1_Li0EEEEELi0EEEEEEERKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.bm, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %5, align 8, !tbaa !40
  call void @free(ptr noundef %i.b) #26
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS_7ProductINS8_INS_9TransposeIS1_EES1_Li0EEENS3_INS4_20scalar_difference_opIddEES7_KNS8_IS1_S1_Li0EEEEELi0EEEEEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.c = load ptr, ptr %5, align 8, !tbaa !40     ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  %.not.i.i.i.i = icmp eq i64 %i.j, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS_7ProductINS8_INS_9TransposeIS1_EES1_Li0EEENS3_INS4_20scalar_difference_opIddEES7_KNS8_IS1_S1_Li0EEEEELi0EEEEEEERKT_.exit
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp sgt i64 %i.f, %i.n
  br i1 %i.o, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.p = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.q = mul nsw i64 %i.h, %i.f
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.f, i64 noundef %i.h)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !38
  %.pre20.i.i.i = load i64, ptr %i.k, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %.noexc4, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS_7ProductINS8_INS_9TransposeIS1_EES1_Li0EEENS3_INS4_20scalar_difference_opIddEES7_KNS8_IS1_S1_Li0EEEEELi0EEEEEEERKT_.exit
  %i.r = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.h, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS_7ProductINS8_INS_9TransposeIS1_EES1_Li0EEENS3_INS4_20scalar_difference_opIddEES7_KNS8_IS1_S1_Li0EEEEELi0EEEEEEERKT_.exit ]
  %i.s = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.f, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS_7ProductINS8_INS_9TransposeIS1_EES1_Li0EEENS3_INS4_20scalar_difference_opIddEES7_KNS8_IS1_S1_Li0EEEEELi0EEEEEEERKT_.exit ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !40     ; 8 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = mul nsw i64 %i.s, %i.r                   ; 7 uses
  %i.w = sdiv i64 %i.v, 2
  %i.x = shl nsw i64 %i.w, 1                      ; 6 uses
  %i.y = icmp sgt i64 %i.v, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.z = icmp slt i64 %i.x, %i.v
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.aa = sub i64 %i.v, %i.x                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  %i.ab = sub i64 %i.d, %i.u
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ac = add i64 %i.x, %n.vec
  br label %vector.body

end_hunk_3
