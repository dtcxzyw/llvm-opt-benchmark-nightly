Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.er = add nuw nsw i64 %.0185428, 1            ; 2 uses
  %i.es = icmp slt i64 %i.er, %.sroa.speculated
  br i1 %i.es, label %bb.d, label %._crit_edge430, !llvm.loop !974

bb.e:                                             ; preds = %._crit_edge430, %._crit_edge422
  %.1 = phi i64 [ %i.du, %._crit_edge430 ], [ %.0187.lcssa, %._crit_edge422 ] ; 5 uses
  %i.et = icmp slt i64 %.1, %i.c
  br i1 %i.et, label %.lr.ph439, label %bb.g

.lr.ph439:                                        ; preds = %bb.e
  %i.eu = load ptr, ptr %3, align 8, !tbaa !397
  %i.ev = load i64, ptr %i.o, align 8, !tbaa !398
  %i.ew = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.1 ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = getelementptr i8, ptr %i.ew, i64 32
  br label %bb.f

._crit_edge440:                                   ; preds = %bb.f
  %i.ez = getelementptr inbounds [8 x i8], ptr %4, i64 %.1 ; 4 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !182
  %i.fb = fmul <2 x double> %i.l, %i.fv
  %i.fc = fadd <2 x double> %i.fb, %i.fa
  store <2 x double> %i.fc, ptr %i.ez, align 1, !tbaa !182
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.fd, align 1, !tbaa !182
  %i.ff = fmul <2 x double> %i.l, %i.fz
  %i.fg = fadd <2 x double> %i.ff, %i.fe
  store <2 x double> %i.fg, ptr %i.fd, align 1, !tbaa !182
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.fi = load <2 x double>, ptr %i.fh, align 1, !tbaa !182
  %i.fj = fmul <2 x double> %i.l, %i.gd
  %i.fk = fadd <2 x double> %i.fj, %i.fi
  store <2 x double> %i.fk, ptr %i.fh, align 1, !tbaa !182
  %i.fl = add nsw i64 %.1, 6
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph439, %bb.f
  %.0184438 = phi i64 [ %.0188462, %.lr.ph439 ], [ %i.ge, %bb.f ] ; 3 uses
  %.0397437 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fv, %bb.f ]
  %.0398436 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fz, %bb.f ]
  %.0399435 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.gd, %bb.f ]
  %i.fm = mul nsw i64 %i.ev, %.0184438
  %i.fn = getelementptr [8 x i8], ptr %i.eu, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !189
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fr = mul nsw i64 %.0184438, %.sroa.22.0.copyload ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ew, i64 %i.fr
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !182
  %i.fu = fmul <2 x double> %i.ft, %i.fq
  %i.fv = fadd <2 x double> %.0397437, %i.fu      ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.ex, i64 %i.fr
  %i.fx = load <2 x double>, ptr %i.fw, align 1, !tbaa !182
  %i.fy = fmul <2 x double> %i.fx, %i.fq
  %i.fz = fadd <2 x double> %.0398436, %i.fy      ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.ey, i64 %i.fr
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !182
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = fadd <2 x double> %.0399435, %i.gc      ; 2 uses
  %i.ge = add nuw nsw i64 %.0184438, 1            ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %.sroa.speculated
  br i1 %i.gf, label %bb.f, label %._crit_edge440, !llvm.loop !975

bb.g:                                             ; preds = %._crit_edge440, %bb.e
  %.2 = phi i64 [ %i.fl, %._crit_edge440 ], [ %.1, %bb.e ] ; 5 uses
  %i.gg = icmp slt i64 %.2, %i.d
  br i1 %i.gg, label %.lr.ph447, label %bb.i

.lr.ph447:                                        ; preds = %bb.g
  %i.gh = load ptr, ptr %3, align 8, !tbaa !397
  %i.gi = load i64, ptr %i.o, align 8, !tbaa !398
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.2 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  br label %bb.h

._crit_edge448:                                   ; preds = %bb.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %.2 ; 3 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !182
  %i.gn = fmul <2 x double> %i.l, %i.hd
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gl, align 1, !tbaa !182
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !182
  %i.gr = fmul <2 x double> %i.l, %i.hh
  %i.gs = fadd <2 x double> %i.gr, %i.gq
  store <2 x double> %i.gs, ptr %i.gp, align 1, !tbaa !182
  %i.gt = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.hi, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hh, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hd, %bb.h ]
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !189
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !182
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !182
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !976

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !397
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !398
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !182
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !182
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !189
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !182
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !977

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !397
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !398
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !189
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !189
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !978

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !189
  %i.is = load double, ptr %i.iq, align 8, !tbaa !189
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !979
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS4_IKNS5_IKNS5_IKS7_Lin1ELin1ELb0EEELi1ELin1ELb0EEEEENS4_INS5_IS7_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSP_6ScalarE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.662", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %.sroa.041.0.copyload = load ptr, ptr %0, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.542.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.643.0.copyload = load i64, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.744.0.copyload = load ptr, ptr %.sroa.744.0..sroa_idx, align 8
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 7 uses
  %.sroa.031.0.copyload47 = ptrtoaddr ptr %.sroa.031.0.copyload to i64
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 10 uses
  %.sroa.1240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.1240.0.copyload = load ptr, ptr %.sroa.1240.0..sroa_idx, align 8
  %i.a = load double, ptr %3, align 8, !tbaa !189
  %i.b = icmp ugt i64 %.sroa.533.0.copyload, 2305843009213693951
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.c, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.d = shl nuw i64 %.sroa.533.0.copyload, 3     ; 2 uses
  %i.e = icmp samesign ugt i64 %.sroa.533.0.copyload, 16384 ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.d) #38 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = add nuw nsw i64 %i.d, 15
  %i.j = alloca i8, i64 %i.i, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ %i.f, %bb.c ] ; 10 uses
  %6 = ptrtoaddr ptr %i.k to i64
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.1240.0.copyload, i64 8
  %i.l = load i64, ptr %.in, align 8, !tbaa !305  ; 6 uses
  %min.iters.check = icmp ult i64 %.sroa.533.0.copyload, 10
  %ident.check.not = icmp ne i64 %i.l, 1
  %or.cond.not50 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %7 = sub i64 %.sroa.031.0.copyload47, %6
  %diff.check = icmp ugt i64 %7, -32
  %or.cond49 = select i1 %or.cond.not50, i1 true, i1 %diff.check
  br i1 %or.cond49, label %.lr.ph.i.i.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x double>, ptr %i.n, align 8, !tbaa !189
  %wide.load48 = load <2 x double>, ptr %i.o, align 8, !tbaa !189
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !189
  store <2 x double> %wide.load48, ptr %i.p, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.i.i.preheader51:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader51 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader51 ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.s = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.l
  %i.t = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !189
  store double %i.u, ptr %i.r, align 8, !tbaa !189
  %i.v = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !981

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader51
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader51 ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.w = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.z = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.l
  %i.aa = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !189
  store double %i.ab, ptr %i.y, align 8, !tbaa !189
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ac
  %i.ae = mul nsw i64 %i.ac, %i.l
  %i.af = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !189
  store double %i.ag, ptr %i.ad, align 8, !tbaa !189
  %i.ah = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ah
  %i.aj = mul nsw i64 %i.ah, %i.l
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !189
  store double %i.al, ptr %i.ai, align 8, !tbaa !189
  %i.am = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.am
  %i.ao = mul nsw i64 %i.am, %i.l
  %i.ap = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !189
  store double %i.aq, ptr %i.an, align 8, !tbaa !189
  %i.ar = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ar, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !982

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.as = phi i1 [ false, %bb.e ], [ %i.e, %middle.block ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.at = phi ptr [ %i.j, %bb.e ], [ %i.k, %middle.block ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.744.0.copyload, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !305
  store ptr %.sroa.041.0.copyload, ptr %4, align 8, !tbaa !397
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store ptr %i.at, ptr %5, align 8, !tbaa !394
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.ax, align 8, !tbaa !395
  %i.ay = load ptr, ptr %2, align 8, !tbaa !340
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.6.24.copyload, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !305
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.643.0.copyload, i64 noundef %.sroa.542.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ay, i64 noundef %i.ba, double noundef %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %i.as, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.at) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %i.as, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.at) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5, double noundef %6) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %.sroa.0329.0.copyload = load ptr, ptr %2, align 8 ; 12 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8 ; 31 uses
  %i.a = shl i64 %.sroa.33.0.copyload, 3
  %i.b = icmp ult i64 %i.a, 32001
  %i.c = add nsw i64 %0, -7
  %i.d = add nsw i64 %0, -3                       ; 2 uses
  %i.e = add nsw i64 %0, -1                       ; 2 uses
  %i.f = icmp sgt i64 %0, 7
  %i.g = and i1 %i.b, %i.f
  br i1 %i.g, label %.preheader409.lr.ph, label %.preheader408

.preheader409.lr.ph:                              ; preds = %bb.a
  %.not238410 = icmp slt i64 %1, 2
  %i.h = load ptr, ptr %3, align 8                ; 2 uses
  %i.i = and i64 %1, -2
  br label %.preheader409

.preheader409:                                    ; preds = %.preheader409.lr.ph, %._crit_edge439
  %.0226448 = phi i64 [ 0, %.preheader409.lr.ph ], [ %i.fm, %._crit_edge439 ] ; 25 uses
  br i1 %.not238410, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader409
  %i.j = mul nsw i64 %.0226448, %.sroa.33.0.copyload
  %i.k = or disjoint i64 %.0226448, 1
  %i.l = mul nsw i64 %i.k, %.sroa.33.0.copyload
  %i.m = or disjoint i64 %.0226448, 2
  %i.n = mul nsw i64 %i.m, %.sroa.33.0.copyload
  %i.o = or disjoint i64 %.0226448, 3
  %i.p = mul nsw i64 %i.o, %.sroa.33.0.copyload
  %i.q = or disjoint i64 %.0226448, 4
  %i.r = mul nsw i64 %i.q, %.sroa.33.0.copyload
  %i.s = or disjoint i64 %.0226448, 5
  %i.t = mul nsw i64 %i.s, %.sroa.33.0.copyload
  %i.u = or disjoint i64 %.0226448, 6
  %i.v = mul nsw i64 %i.u, %.sroa.33.0.copyload
  %i.w = or disjoint i64 %.0226448, 7
  %i.x = mul nsw i64 %i.w, %.sroa.33.0.copyload
  br label %bb.b

.preheader408:                                    ; preds = %._crit_edge439, %bb.a
  %.0226.lcssa = phi i64 [ 0, %bb.a ], [ %i.fm, %._crit_edge439 ] ; 3 uses
  %i.y = icmp slt i64 %.0226.lcssa, %i.d
  br i1 %i.y, label %.preheader407.lr.ph, label %.preheader406

.preheader407.lr.ph:                              ; preds = %.preheader408
  %.not237450 = icmp slt i64 %1, 2
  %i.z = and i64 %1, -2
  br label %.preheader407

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.aa = phi i64 [ 2, %.lr.ph ], [ %i.bk, %bb.b ] ; 2 uses
  %.0224419 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %.0389418 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ah, %bb.b ]
  %.0390417 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.al, %bb.b ]
  %.0391416 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ap, %bb.b ]
  %.0393415 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.at, %bb.b ]
  %.0394414 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ax, %bb.b ]
  %.0395413 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bb, %bb.b ]
  %.0396412 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bf, %bb.b ]
  %.0397411 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bj, %bb.b ]
  %i.ab = getelementptr [8 x i8], ptr %i.h, i64 %.0224419
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !182 ; 8 uses
  %i.ad = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0224419 ; 8 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.j
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !182
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %.0389418, %i.ag      ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ad, i64 %i.l
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !182
  %i.ak = fmul <2 x double> %i.ac, %i.aj
  %i.al = fadd <2 x double> %.0390417, %i.ak      ; 2 uses
end_hunk_0
