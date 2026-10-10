Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.el = fmul <2 x double> %i.dz, %i.ek
  %i.em = fadd <2 x double> %.0394425, %i.el      ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %i.dd, i64 %i.ea
  %i.eo = load <2 x double>, ptr %i.en, align 1, !tbaa !81
  %i.ep = fmul <2 x double> %i.dz, %i.eo
  %i.eq = fadd <2 x double> %.0396424, %i.ep      ; 2 uses
  %i.er = add nuw nsw i64 %.0185428, 1            ; 2 uses
  %i.es = icmp slt i64 %i.er, %.sroa.speculated
  br i1 %i.es, label %bb.d, label %._crit_edge430, !llvm.loop !1639

bb.e:                                             ; preds = %._crit_edge430, %._crit_edge422
  %.1 = phi i64 [ %i.du, %._crit_edge430 ], [ %.0187.lcssa, %._crit_edge422 ] ; 5 uses
  %i.et = icmp slt i64 %.1, %i.c
  br i1 %i.et, label %.lr.ph439, label %bb.g

.lr.ph439:                                        ; preds = %bb.e
  %i.eu = load ptr, ptr %3, align 8, !tbaa !518
  %i.ev = load i64, ptr %i.o, align 8, !tbaa !519
  %i.ew = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.1 ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = getelementptr i8, ptr %i.ew, i64 32
  br label %bb.f

._crit_edge440:                                   ; preds = %bb.f
  %i.ez = getelementptr inbounds [8 x i8], ptr %4, i64 %.1 ; 4 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !81
  %i.fb = fmul <2 x double> %i.l, %i.fv
  %i.fc = fadd <2 x double> %i.fb, %i.fa
  store <2 x double> %i.fc, ptr %i.ez, align 1, !tbaa !81
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.fd, align 1, !tbaa !81
  %i.ff = fmul <2 x double> %i.l, %i.fz
  %i.fg = fadd <2 x double> %i.ff, %i.fe
  store <2 x double> %i.fg, ptr %i.fd, align 1, !tbaa !81
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.fi = load <2 x double>, ptr %i.fh, align 1, !tbaa !81
  %i.fj = fmul <2 x double> %i.l, %i.gd
  %i.fk = fadd <2 x double> %i.fj, %i.fi
  store <2 x double> %i.fk, ptr %i.fh, align 1, !tbaa !81
  %i.fl = add nsw i64 %.1, 6
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph439, %bb.f
  %.0184438 = phi i64 [ %.0188462, %.lr.ph439 ], [ %i.ge, %bb.f ] ; 3 uses
  %.0397437 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fv, %bb.f ]
  %.0398436 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fz, %bb.f ]
  %.0399435 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.gd, %bb.f ]
  %i.fm = mul nsw i64 %i.ev, %.0184438
  %i.fn = getelementptr [8 x i8], ptr %i.eu, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !128
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fr = mul nsw i64 %.0184438, %.sroa.22.0.copyload ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ew, i64 %i.fr
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !81
  %i.fu = fmul <2 x double> %i.ft, %i.fq
  %i.fv = fadd <2 x double> %.0397437, %i.fu      ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.ex, i64 %i.fr
  %i.fx = load <2 x double>, ptr %i.fw, align 1, !tbaa !81
  %i.fy = fmul <2 x double> %i.fx, %i.fq
  %i.fz = fadd <2 x double> %.0398436, %i.fy      ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.ey, i64 %i.fr
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !81
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = fadd <2 x double> %.0399435, %i.gc      ; 2 uses
  %i.ge = add nuw nsw i64 %.0184438, 1            ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %.sroa.speculated
  br i1 %i.gf, label %bb.f, label %._crit_edge440, !llvm.loop !1640

bb.g:                                             ; preds = %._crit_edge440, %bb.e
  %.2 = phi i64 [ %i.fl, %._crit_edge440 ], [ %.1, %bb.e ] ; 5 uses
  %i.gg = icmp slt i64 %.2, %i.d
  br i1 %i.gg, label %.lr.ph447, label %bb.i

.lr.ph447:                                        ; preds = %bb.g
  %i.gh = load ptr, ptr %3, align 8, !tbaa !518
  %i.gi = load i64, ptr %i.o, align 8, !tbaa !519
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.2 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  br label %bb.h

._crit_edge448:                                   ; preds = %bb.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %.2 ; 3 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !81
  %i.gn = fmul <2 x double> %i.l, %i.hd
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gl, align 1, !tbaa !81
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !81
  %i.gr = fmul <2 x double> %i.l, %i.hh
  %i.gs = fadd <2 x double> %i.gr, %i.gq
  store <2 x double> %i.gs, ptr %i.gp, align 1, !tbaa !81
  %i.gt = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.hi, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hh, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hd, %bb.h ]
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !128
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !81
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !81
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !1641

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !518
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !519
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !81
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !81
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !128
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !81
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !1642

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !518
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !519
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !128
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !128
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !1643

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !128
  %i.is = load double, ptr %i.iq, align 8, !tbaa !128
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !1644
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS4_IKNS_5BlockISB_Li1ELin1ELb0EEEEENS4_INSD_ISA_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSP_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.619", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1649, !nonnull !439, !align !513 ; 4 uses
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 6 uses
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !128
  %i.c = icmp ugt i64 %.sroa.533.0.copyload, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = shl nuw i64 %.sroa.533.0.copyload, 3     ; 2 uses
  %i.f = icmp samesign ugt i64 %.sroa.533.0.copyload, 16384 ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.e) #41 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = add nuw nsw i64 %i.e, 15
  %i.k = alloca i8, i64 %i.j, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.c ] ; 9 uses
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 24
  %i.m = load i64, ptr %.in, align 8, !tbaa !544  ; 6 uses
  %min.iters.check = icmp ugt i64 %.sroa.533.0.copyload, 3
  %ident.check.not = icmp eq i64 %i.m, 1
  %or.cond47 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond47, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !128
  %wide.load46 = load <2 x double>, ptr %i.p, align 8, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> %wide.load, ptr %i.n, align 8, !tbaa !128
  store <2 x double> %wide.load46, ptr %i.q, align 8, !tbaa !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1645

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.t = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !128
  store double %i.v, ptr %i.s, align 8, !tbaa !128
  %i.w = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1646

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader49
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.x = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i
  %i.aa = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !128
  store double %i.ac, ptr %i.z, align 8, !tbaa !128
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = mul nsw i64 %i.ad, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !128
  store double %i.ah, ptr %i.ae, align 8, !tbaa !128
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %i.ak = mul nsw i64 %i.ai, %i.m
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !128
  store double %i.am, ptr %i.aj, align 8, !tbaa !128
  %i.an = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = mul nsw i64 %i.an, %i.m
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !128
  store double %i.ar, ptr %i.ao, align 8, !tbaa !128
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.as, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1647

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.at = phi i1 [ false, %bb.e ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.au = phi ptr [ %i.k, %bb.e ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !544
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !544
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !559
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !544
  store ptr %i.az, ptr %4, align 8, !tbaa !518
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !519
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.au, ptr %5, align 8, !tbaa !515
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !516
  %i.be = load ptr, ptr %2, align 8, !tbaa !1651
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.24.copyload, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !544
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.aw, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.be, i64 noundef %i.bg, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.at, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.au) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.at, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.au) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5, double noundef %6) local_unnamed_addr #26 comdat align 2 {
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
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !81 ; 8 uses
  %i.ad = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0224419 ; 8 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.j
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !81
  %i.ag = fmul <2 x double> %i.ac, %i.af
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS_10DenseShapeES4_Li8EE13scaleAndAddToIS3_EEvRT_RKS3_SA_RKd:bb.a
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.j, label %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %0, align 8, !tbaa !403, !noalias !1738 ; 3 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !403, !noalias !1739 ; 7 uses
  %i.bu = icmp eq i64 %i.h, 1
  br i1 %i.bu, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bv = load double, ptr %3, align 8, !tbaa !128
  %i.bw = load ptr, ptr %2, align 8, !tbaa !403, !noalias !1740 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !413, !noalias !1740 ; 4 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load double, ptr %i.bt, align 8, !tbaa !128
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !128
  %i.cc = fmul double %i.ca, %i.cb                ; 3 uses
  %i.cd = icmp sgt i64 %i.by, 1
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i29.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i

.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %bb.l
  %i.ce = add nsw i64 %i.by, -1                   ; 2 uses
  %i.cf = add nsw i64 %i.by, -2
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i29.epil.preheader, label %.lr.ph.i.i.i.i.i.i29.preheader.new

.lr.ph.i.i.i.i.i.i29.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i29.preheader
  %unroll_iter = and i64 %i.ce, -4
  br label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i29.preheader.new
  %.01724.i.i.i.i.i.i30 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dm, %.lr.ph.i.i.i.i.i.i29 ] ; 6 uses
  %.02223.i.i.i.i.i.i31 = phi double [ %i.cc, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dl, %.lr.ph.i.i.i.i.i.i29 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i29 ]
  %i.ch = mul nsw i64 %.01724.i.i.i.i.i.i30, %i.e
  %i.ci = getelementptr [8 x i8], ptr %i.bt, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !128
  %i.ck = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !128
  %i.cm = fmul double %i.cj, %i.cl
  %i.cn = fadd double %.02223.i.i.i.i.i.i31, %i.cm
  %i.co = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 1 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %i.e
  %i.cq = getelementptr [8 x i8], ptr %i.bt, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !128
  %i.cs = getelementptr [8 x i8], ptr %i.bw, i64 %i.co
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !128
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fadd double %i.cn, %i.cu
  %i.cw = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 2 ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.e
  %i.cy = getelementptr [8 x i8], ptr %i.bt, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !128
  %i.da = getelementptr [8 x i8], ptr %i.bw, i64 %i.cw
  %i.db = load double, ptr %i.da, align 8, !tbaa !128
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.cv, %i.dc
  %i.de = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 3 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.e
  %i.dg = getelementptr [8 x i8], ptr %i.bt, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !128
  %i.di = getelementptr [8 x i8], ptr %i.bw, i64 %i.de
  %i.dj = load double, ptr %i.di, align 8, !tbaa !128
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = fadd double %i.dd, %i.dk                ; 3 uses
  %i.dm = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i29, !llvm.loop !1733

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i29
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil.preheader

.lr.ph.i.i.i.i.i.i29.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.preheader
  %.01724.i.i.i.i.i.i30.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i31.epil.init = phi double [ %i.cc, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.i.i.i.i29.epil

.lr.ph.i.i.i.i.i.i29.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i29.epil, %.lr.ph.i.i.i.i.i.i29.epil.preheader
  %.01724.i.i.i.i.i.i30.epil = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.01724.i.i.i.i.i.i30.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i31.epil = phi double [ %i.dt, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.02223.i.i.i.i.i.i31.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i29.epil ], [ 0, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %i.dn = mul nsw i64 %.01724.i.i.i.i.i.i30.epil, %i.e
  %i.do = getelementptr [8 x i8], ptr %i.bt, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !128
  %i.dq = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30.epil
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !128
  %i.ds = fmul double %i.dp, %i.dr
  %i.dt = fadd double %.02223.i.i.i.i.i.i31.epil, %i.ds ; 2 uses
  %i.du = add nuw nsw i64 %.01724.i.i.i.i.i.i30.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil, !llvm.loop !1734

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.epil, %bb.l, %bb.k
  %.0.i.i.i.i28 = phi double [ 0.000000e+00, %bb.k ], [ %i.cc, %bb.l ], [ %i.dl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ], [ %i.dt, %.lr.ph.i.i.i.i.i.i29.epil ]
  %i.dv = load double, ptr %i.bs, align 8, !tbaa !128
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.bv, double %.0.i.i.i.i28, double %i.dv)
  store double %i.dw, ptr %i.bs, align 8, !tbaa !128
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr %i.bt, ptr %6, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.bs, ptr %4, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.741.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.943.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIS7_Li1ELin1ELb0EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.i
  %i.dx = load double, ptr %3, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bq, ptr %i.dy, align 8, !tbaa !573
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.dz, align 8, !tbaa !576
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.ea, align 8, !tbaa !572
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i64 noundef 1)
  %i.eb = load i64, ptr %i.dy, align 8, !tbaa !573
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !572 ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !589
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !576
  %i.eg = mul nsw i64 %i.ef, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !590
  %i.ei = load i64, ptr %i.d, align 8, !tbaa !413 ; 2 uses
  %i.ej = load i64, ptr %i.g, align 8, !tbaa !414
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !414
  %i.el = load ptr, ptr %1, align 8, !tbaa !403
  %i.em = load ptr, ptr %2, align 8, !tbaa !403
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !413
  %i.ep = load ptr, ptr %0, align 8, !tbaa !403
  %i.eq = load i64, ptr %i.bp, align 8, !tbaa !413
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.ei, i64 noundef %i.ej, i64 noundef %i.ek, ptr noundef nonnull %i.el, i64 noundef %i.ei, ptr noundef nonnull %i.em, i64 noundef %i.eo, ptr noundef nonnull %i.ep, i64 noundef 1, i64 noundef %i.eq, double noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SD_SD_b.exit unwind label %bb.n

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SD_SD_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.er = load ptr, ptr %9, align 8, !tbaa !578
  call void @free(ptr noundef %i.er) #35
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !579
  call void @free(ptr noundef %i.et) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SD_SD_b.exit
  ret void

bb.n:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %9, align 8, !tbaa !578
  call void @free(ptr noundef %i.ev) #35
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !579
  call void @free(ptr noundef %i.ex) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  resume { ptr, i32 } %i.eu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIS7_Li1ELin1ELb0EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.619", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !592, !nonnull !439, !align !513 ; 3 uses
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 6 uses
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !128
  %i.c = icmp ugt i64 %.sroa.533.0.copyload, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = shl nuw i64 %.sroa.533.0.copyload, 3     ; 2 uses
  %i.f = icmp samesign ugt i64 %.sroa.533.0.copyload, 16384 ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.e) #41 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = add nuw nsw i64 %i.e, 15
  %i.k = alloca i8, i64 %i.j, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.c ] ; 9 uses
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %i.m = load i64, ptr %.in, align 8, !tbaa !413  ; 6 uses
  %min.iters.check = icmp ugt i64 %.sroa.533.0.copyload, 3
  %ident.check.not = icmp eq i64 %i.m, 1
  %or.cond47 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond47, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !128
  %wide.load46 = load <2 x double>, ptr %i.p, align 8, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> %wide.load, ptr %i.n, align 8, !tbaa !128
  store <2 x double> %wide.load46, ptr %i.q, align 8, !tbaa !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1741

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.t = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !128
  store double %i.v, ptr %i.s, align 8, !tbaa !128
  %i.w = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1742

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader49
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.x = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i
  %i.aa = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !128
  store double %i.ac, ptr %i.z, align 8, !tbaa !128
  %i.ad = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = mul nsw i64 %i.ad, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !128
  store double %i.ah, ptr %i.ae, align 8, !tbaa !128
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %i.ak = mul nsw i64 %i.ai, %i.m
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !128
  store double %i.am, ptr %i.aj, align 8, !tbaa !128
  %i.an = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = mul nsw i64 %i.an, %i.m
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !128
  store double %i.ar, ptr %i.ao, align 8, !tbaa !128
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.as, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1743

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.at = phi i1 [ false, %bb.e ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.au = phi ptr [ %i.k, %bb.e ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !414
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !413 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !403
  store ptr %i.az, ptr %4, align 8, !tbaa !518
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !519
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.au, ptr %5, align 8, !tbaa !515
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bb, align 8, !tbaa !516
  %i.bc = load ptr, ptr %2, align 8, !tbaa !594
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6.24.copyload, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !413
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.aw, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bc, i64 noundef %i.be, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.at, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.au) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.at, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.au) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.bf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS3_EENS_10DenseShapeES7_Li8EE13scaleAndAddToIS3_EEvRT_RS5_RKS6_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Transpose.978", align 8 ; 8 uses
  %5 = alloca %"class.Eigen::Transpose.1094", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::Transpose.817", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::const_blas_data_mapper.619", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::gemm_blocking_space.590", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !414  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !413  ; 9 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !592    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !413  ; 8 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !414  ; 3 uses
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !403, !noalias !1760 ; 3 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !403, !noalias !1761 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !414, !noalias !1761 ; 4 uses
  %i.r = icmp eq i64 %i.e, 1
  %i.s = load double, ptr %3, align 8, !tbaa !128 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !403, !noalias !1762 ; 6 uses
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load double, ptr %i.t, align 8, !tbaa !128
  %i.w = load double, ptr %i.o, align 8, !tbaa !128
  %i.x = fmul double %i.v, %i.w                   ; 3 uses
  %i.y = icmp sgt i64 %i.q, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.g
  %i.z = add nsw i64 %i.q, -1                     ; 2 uses
  %i.aa = add nsw i64 %i.q, -2
  %xtraiter70 = and i64 %i.z, 3                   ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 3
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter75 = and i64 %i.z, -4
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bh, %.lr.ph.i.i.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i = phi double [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i.i.i.i ]
  %niter76 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter76.next.3, %.lr.ph.i.i.i.i.i.i ]
  %i.ac = getelementptr [8 x i8], ptr %i.t, i64 %.01724.i.i.i.i.i.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !128
  %i.ae = mul nsw i64 %.01724.i.i.i.i.i.i, %i.i
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS3_EENS_10DenseShapeES7_Li8EE13scaleAndAddToIS3_EEvRT_RS5_RKS6_RKd:bb.a
  %i.cv = mul nsw i64 %i.cu, %i.e
  %i.cw = getelementptr [8 x i8], ptr %i.bz, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !128
  %i.cy = getelementptr [8 x i8], ptr %i.cc, i64 %i.cu
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !128
  %i.da = fmul double %i.cx, %i.cz
  %i.db = fadd double %i.ct, %i.da
  %i.dc = add nuw nsw i64 %.01724.i.i.i.i.i.i29, 2 ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.e
  %i.de = getelementptr [8 x i8], ptr %i.bz, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !128
  %i.dg = getelementptr [8 x i8], ptr %i.cc, i64 %i.dc
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !128
  %i.di = fmul double %i.df, %i.dh
  %i.dj = fadd double %i.db, %i.di
  %i.dk = add nuw nsw i64 %.01724.i.i.i.i.i.i29, 3 ; 2 uses
  %i.dl = mul nsw i64 %i.dk, %i.e
  %i.dm = getelementptr [8 x i8], ptr %i.bz, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !128
  %i.do = getelementptr [8 x i8], ptr %i.cc, i64 %i.dk
  %i.dp = load double, ptr %i.do, align 8, !tbaa !128
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = fadd double %i.dj, %i.dq                ; 3 uses
  %i.ds = add nuw nsw i64 %.01724.i.i.i.i.i.i29, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !1758

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i28
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph.i.i.i.i.i.i28.epil.preheader

.lr.ph.i.i.i.i.i.i28.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i28.preheader
  %.01724.i.i.i.i.i.i29.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i28.preheader ], [ %i.ds, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i30.epil.init = phi double [ %i.ci, %.lr.ph.i.i.i.i.i.i28.preheader ], [ %i.dr, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i.i.i.i.i.i28.epil

.lr.ph.i.i.i.i.i.i28.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i28.epil, %.lr.ph.i.i.i.i.i.i28.epil.preheader
  %.01724.i.i.i.i.i.i29.epil = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i.i28.epil ], [ %.01724.i.i.i.i.i.i29.epil.init, %.lr.ph.i.i.i.i.i.i28.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i30.epil = phi double [ %i.dz, %.lr.ph.i.i.i.i.i.i28.epil ], [ %.02223.i.i.i.i.i.i30.epil.init, %.lr.ph.i.i.i.i.i.i28.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i28.epil ], [ 0, %.lr.ph.i.i.i.i.i.i28.epil.preheader ]
  %i.dt = mul nsw i64 %.01724.i.i.i.i.i.i29.epil, %i.e
  %i.du = getelementptr [8 x i8], ptr %i.bz, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !128
  %i.dw = getelementptr [8 x i8], ptr %i.cc, i64 %.01724.i.i.i.i.i.i29.epil
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !128
  %i.dy = fmul double %i.dv, %i.dx
  %i.dz = fadd double %.02223.i.i.i.i.i.i30.epil, %i.dy ; 2 uses
  %i.ea = add nuw nsw i64 %.01724.i.i.i.i.i.i29.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph.i.i.i.i.i.i28.epil, !llvm.loop !1759

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i28.epil, %bb.l, %bb.k
  %.0.i.i.i.i27 = phi double [ 0.000000e+00, %bb.k ], [ %i.ci, %bb.l ], [ %i.dr, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.loopexit.unr-lcssa ], [ %i.dz, %.lr.ph.i.i.i.i.i.i28.epil ]
  %i.eb = load double, ptr %i.by, align 8, !tbaa !128
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.cb, double %.0.i.i.i.i27, double %i.eb)
  store double %i.ec, ptr %i.by, align 8, !tbaa !128
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr %i.bz, ptr %6, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.by, ptr %4, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.639.0..sroa_idx, align 8
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.942.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.942.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.g, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIS7_Li1ELin1ELb0EEEEENS4_INSB_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSN_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit

bb.n:                                             ; preds = %bb.i
  %i.ed = load double, ptr %3, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bw, ptr %i.ee, align 8, !tbaa !573
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.ef, align 8, !tbaa !576
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.eg, align 8, !tbaa !572
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i64 noundef 1)
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !573
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !572 ; 2 uses
  %i.ej = mul nsw i64 %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !589
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !576
  %i.em = mul nsw i64 %i.el, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.em, ptr %i.en, align 8, !tbaa !590
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !413 ; 2 uses
  %i.ep = load ptr, ptr %2, align 8, !tbaa !592, !nonnull !439, !align !513
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !413 ; 2 uses
  %i.es = icmp eq i64 %i.er, -1
  %i.et = load i64, ptr %i.h, align 8, !tbaa !413 ; 2 uses
  %..i.i = select i1 %i.es, i64 %i.et, i64 %i.er
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !414
  %i.ev = load ptr, ptr %1, align 8, !tbaa !403
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !403
  %i.ex = load ptr, ptr %0, align 8, !tbaa !403
  %i.ey = load i64, ptr %i.bv, align 8, !tbaa !413
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.eo, i64 noundef %..i.i, i64 noundef %i.eu, ptr noundef nonnull %i.ev, i64 noundef %i.eo, ptr noundef nonnull %i.ew, i64 noundef %i.et, ptr noundef nonnull %i.ex, i64 noundef 1, i64 noundef %i.ey, double noundef %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EES6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit unwind label %bb.o

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EES6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit: ; preds = %bb.n
  %i.ez = load ptr, ptr %9, align 8, !tbaa !578
  call void @free(ptr noundef %i.ez) #35
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !579
  call void @free(ptr noundef %i.fb) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EES6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit
  ret void

bb.o:                                             ; preds = %bb.n
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %9, align 8, !tbaa !578
  call void @free(ptr noundef %i.fd) #35
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !579
  call void @free(ptr noundef %i.ff) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  resume { ptr, i32 } %i.fc
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIS7_Li1ELin1ELb0EEEEENS4_INSB_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSN_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.619", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !592, !nonnull !439, !align !513 ; 3 uses
  %.sroa.040.0.copyload = load ptr, ptr %1, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.542.0..sroa_idx, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !544  ; 10 uses
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.g = shl nuw i64 %i.d, 3                      ; 2 uses
  %i.h = icmp samesign ugt i64 %i.d, 16384        ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #41 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.m = add nuw nsw i64 %i.g, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.thread, %bb.e
  %i.p = phi ptr [ %i.k, %.thread ], [ %i.o, %bb.e ] ; 4 uses
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.n, %bb.e ] ; 9 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !594    ; 6 uses
  %.pn = load ptr, ptr %i.p, align 8, !tbaa !1774, !nonnull !439, !align !513
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.s = load i64, ptr %.in, align 8, !tbaa !413  ; 6 uses
  %min.iters.check = icmp ugt i64 %i.d, 3
  %ident.check.not = icmp eq i64 %i.s, 1
  %or.cond68 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond68, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader74

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.d, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !128
  %wide.load51 = load <2 x double>, ptr %i.v, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %wide.load, ptr %i.t, align 8, !tbaa !128
  store <2 x double> %wide.load51, ptr %i.w, align 8, !tbaa !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader74

.lr.ph.i.i.i.i.i.i.i.i.preheader74:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader74, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader74 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader74 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.z = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.s
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !128
  store double %i.ab, ptr %i.y, align 8, !tbaa !128
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1767

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader74
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader74 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ad = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.d
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i
  %i.ag = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.s
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !128
  store double %i.ai, ptr %i.af, align 8, !tbaa !128
  %i.aj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj
  %i.al = mul nsw i64 %i.aj, %i.s
  %i.am = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !128
  store double %i.an, ptr %i.ak, align 8, !tbaa !128
  %i.ao = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao
  %i.aq = mul nsw i64 %i.ao, %i.s
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !128
  store double %i.as, ptr %i.ap, align 8, !tbaa !128
  %i.at = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.at
  %i.av = mul nsw i64 %i.at, %i.s
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !128
  store double %i.ax, ptr %i.au, align 8, !tbaa !128
  %i.ay = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ay, %i.d
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1768

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.az = phi ptr [ %i.o, %bb.e ], [ %i.p, %middle.block ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ba = phi i1 [ false, %bb.e ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bb = phi ptr [ %i.n, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !413 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !414
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !403
  store ptr %i.bh, ptr %4, align 8, !tbaa !515
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.be, ptr %i.bi, align 8, !tbaa !516
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !413
  store ptr %.sroa.040.0.copyload, ptr %5, align 8, !tbaa !518
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !519
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.be, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.bb, i64 noundef 1, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.bm = load ptr, ptr %2, align 8, !tbaa !594   ; 7 uses
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !1774, !nonnull !439, !align !513
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !413 ; 6 uses
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !544 ; 7 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i26.preheader:               ; preds = %bb.f
  %i.bs = ptrtoaddr ptr %i.bm to i64
  %min.iters.check57 = icmp ult i64 %i.bq, 10
  %ident.check53.not = icmp ne i64 %i.bp, 1
  %or.cond69.not72 = select i1 %min.iters.check57, i1 true, i1 %ident.check53.not
  %i.bt = sub i64 %i.bc, %i.bs
  %diff.check55 = icmp ugt i64 %i.bt, -32
  %or.cond70 = select i1 %or.cond69.not72, i1 true, i1 %diff.check55
  br i1 %or.cond70, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader73, label %vector.ph58

vector.ph58:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader
  %n.vec59 = and i64 %i.bq, 9223372036854775804   ; 3 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next64, %vector.body60 ] ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %index61 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index61 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load62 = load <2 x double>, ptr %i.bv, align 8, !tbaa !128
  %wide.load63 = load <2 x double>, ptr %i.bw, align 8, !tbaa !128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x double> %wide.load62, ptr %i.bu, align 8, !tbaa !128
  store <2 x double> %wide.load63, ptr %i.bx, align 8, !tbaa !128
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.by, label %middle.block65, label %vector.body60, !llvm.loop !1769

middle.block65:                                   ; preds = %vector.body60
  %cmp.n66 = icmp eq i64 %i.bq, %n.vec59
  br i1 %cmp.n66, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader73

.lr.ph.i.i.i.i.i.i.i.i26.preheader73:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader, %middle.block65
  %.05.i.i.i.i.i.i.i.i27.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader ], [ %n.vec59, %middle.block65 ] ; 3 uses
  %xtraiter75 = and i64 %i.bq, 3                  ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i26.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader73, %.lr.ph.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader73 ] ; 3 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader73 ]
  %i.bz = mul nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, %i.bp
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.05.i.i.i.i.i.i.i.i27.prol
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !128
  store double %i.cc, ptr %i.ca, align 8, !tbaa !128
  %i.cd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol, !llvm.loop !1770

.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i26.preheader73
  %.05.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader73 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i26.prol ]
  %i.ce = sub nsw i64 %.05.i.i.i.i.i.i.i.i27.ph, %i.bq
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i27 = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.cg = mul nsw i64 %.05.i.i.i.i.i.i.i.i27, %i.bp
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.05.i.i.i.i.i.i.i.i27
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !128
  store double %i.cj, ptr %i.ch, align 8, !tbaa !128
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %i.bp
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ck
  %i.co = load double, ptr %i.cn, align 8, !tbaa !128
  store double %i.co, ptr %i.cm, align 8, !tbaa !128
  %i.cp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %i.bp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cp
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !128
  store double %i.ct, ptr %i.cr, align 8, !tbaa !128
  %i.cu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.bp
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cu
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !128
  store double %i.cy, ptr %i.cw, align 8, !tbaa !128
  %i.cz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.cz, %i.bq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i28.3, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !1771

_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26, %middle.block65, %bb.f
  br i1 %i.ba, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

end_hunk_2
