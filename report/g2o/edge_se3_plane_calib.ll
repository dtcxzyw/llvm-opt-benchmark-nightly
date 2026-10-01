Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_plane_calib?download=true
inline.NumInlined: 7154
inline.NumDeleted: 3644
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.ep = fmul <2 x double> %i.dz, %i.eo
  %i.eq = fadd <2 x double> %.0396424, %i.ep      ; 2 uses
  %i.er = add nuw nsw i64 %.0185428, 1            ; 2 uses
  %i.es = icmp slt i64 %i.er, %.sroa.speculated
  br i1 %i.es, label %bb.d, label %._crit_edge430, !llvm.loop !353

bb.e:                                             ; preds = %._crit_edge430, %._crit_edge422
  %.1 = phi i64 [ %i.du, %._crit_edge430 ], [ %.0187.lcssa, %._crit_edge422 ] ; 5 uses
  %i.et = icmp slt i64 %.1, %i.c
  br i1 %i.et, label %.lr.ph439, label %bb.g

.lr.ph439:                                        ; preds = %bb.e
  %i.eu = load ptr, ptr %3, align 8, !tbaa !128
  %i.ev = load i64, ptr %i.o, align 8, !tbaa !129
  %i.ew = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.1 ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = getelementptr i8, ptr %i.ew, i64 32
  br label %bb.f

._crit_edge440:                                   ; preds = %bb.f
  %i.ez = getelementptr inbounds [8 x i8], ptr %4, i64 %.1 ; 4 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !8
  %i.fb = fmul <2 x double> %i.l, %i.fv
  %i.fc = fadd <2 x double> %i.fb, %i.fa
  store <2 x double> %i.fc, ptr %i.ez, align 1, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.fd, align 1, !tbaa !8
  %i.ff = fmul <2 x double> %i.l, %i.fz
  %i.fg = fadd <2 x double> %i.ff, %i.fe
  store <2 x double> %i.fg, ptr %i.fd, align 1, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.fi = load <2 x double>, ptr %i.fh, align 1, !tbaa !8
  %i.fj = fmul <2 x double> %i.l, %i.gd
  %i.fk = fadd <2 x double> %i.fj, %i.fi
  store <2 x double> %i.fk, ptr %i.fh, align 1, !tbaa !8
  %i.fl = add nsw i64 %.1, 6
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph439, %bb.f
  %.0184438 = phi i64 [ %.0188462, %.lr.ph439 ], [ %i.ge, %bb.f ] ; 3 uses
  %.0397437 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fv, %bb.f ]
  %.0398436 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fz, %bb.f ]
  %.0399435 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.gd, %bb.f ]
  %i.fm = mul nsw i64 %i.ev, %.0184438
  %i.fn = getelementptr [8 x i8], ptr %i.eu, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !43
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fr = mul nsw i64 %.0184438, %.sroa.22.0.copyload ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ew, i64 %i.fr
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !8
  %i.fu = fmul <2 x double> %i.ft, %i.fq
  %i.fv = fadd <2 x double> %.0397437, %i.fu      ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.ex, i64 %i.fr
  %i.fx = load <2 x double>, ptr %i.fw, align 1, !tbaa !8
  %i.fy = fmul <2 x double> %i.fx, %i.fq
  %i.fz = fadd <2 x double> %.0398436, %i.fy      ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.ey, i64 %i.fr
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !8
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = fadd <2 x double> %.0399435, %i.gc      ; 2 uses
  %i.ge = add nuw nsw i64 %.0184438, 1            ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %.sroa.speculated
  br i1 %i.gf, label %bb.f, label %._crit_edge440, !llvm.loop !354

bb.g:                                             ; preds = %._crit_edge440, %bb.e
  %.2 = phi i64 [ %i.fl, %._crit_edge440 ], [ %.1, %bb.e ] ; 5 uses
  %i.gg = icmp slt i64 %.2, %i.d
  br i1 %i.gg, label %.lr.ph447, label %bb.i

.lr.ph447:                                        ; preds = %bb.g
  %i.gh = load ptr, ptr %3, align 8, !tbaa !128
  %i.gi = load i64, ptr %i.o, align 8, !tbaa !129
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.2 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  br label %bb.h

._crit_edge448:                                   ; preds = %bb.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %.2 ; 3 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !8
  %i.gn = fmul <2 x double> %i.l, %i.hd
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gl, align 1, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !8
  %i.gr = fmul <2 x double> %i.l, %i.hh
  %i.gs = fadd <2 x double> %i.gr, %i.gq
  store <2 x double> %i.gs, ptr %i.gp, align 1, !tbaa !8
  %i.gt = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.hi, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hh, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hd, %bb.h ]
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !43
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !8
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !8
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !355

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !128
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !129
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !8
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !8
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !43
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !8
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !356

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !128
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !129
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !43
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !43
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !357

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !43
  %i.is = load double, ptr %i.iq, align 8, !tbaa !43
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !358
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS4_IKNS_5BlockIKS7_Li1ELin1ELb0EEEEENS4_INSD_ISA_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSQ_6ScalarE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.1283", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %.sroa.040.0.copyload = load ptr, ptr %0, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.541.0.copyload = load i64, ptr %.sroa.541.0..sroa_idx, align 8 ; 2 uses
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.743.0.copyload = load i64, ptr %.sroa.743.0..sroa_idx, align 8
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 6 uses
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8 ; 10 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %i.a = load double, ptr %3, align 8, !tbaa !43
  %i.b = icmp ugt i64 %.sroa.533.0.copyload, 2305843009213693951
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.c, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.d = shl nuw i64 %.sroa.533.0.copyload, 3     ; 2 uses
  %i.e = icmp samesign ugt i64 %.sroa.533.0.copyload, 16384 ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.d) #32 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = add nuw nsw i64 %i.d, 15
  %i.j = alloca i8, i64 %i.i, align 16            ; 2 uses
  %.not = icmp eq i64 %.sroa.533.0.copyload, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ %i.f, %bb.c ] ; 9 uses
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 8
  %i.l = load i64, ptr %.in, align 8, !tbaa !107  ; 6 uses
  %min.iters.check = icmp ugt i64 %.sroa.533.0.copyload, 3
  %ident.check.not = icmp eq i64 %i.l, 1
  %or.cond48 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond48, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader50

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.533.0.copyload, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x double>, ptr %i.n, align 8, !tbaa !43
  %wide.load47 = load <2 x double>, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !43
  store <2 x double> %wide.load47, ptr %i.p, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.533.0.copyload, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.i.preheader50:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.533.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader50 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader50 ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.s = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.l
  %i.t = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !43
  store double %i.u, ptr %i.r, align 8, !tbaa !43
  %i.v = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !360

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader50
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader50 ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.w = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.sroa.533.0.copyload
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.z = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.l
  %i.aa = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !43
  store double %i.ab, ptr %i.y, align 8, !tbaa !43
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ac
  %i.ae = mul nsw i64 %i.ac, %i.l
  %i.af = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !43
  store double %i.ag, ptr %i.ad, align 8, !tbaa !43
  %i.ah = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ah
  %i.aj = mul nsw i64 %i.ah, %i.l
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !43
  store double %i.al, ptr %i.ai, align 8, !tbaa !43
  %i.am = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.am
  %i.ao = mul nsw i64 %i.am, %i.l
  %i.ap = getelementptr inbounds [8 x i8], ptr %.sroa.031.0.copyload, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !43
  store double %i.aq, ptr %i.an, align 8, !tbaa !43
  %i.ar = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ar, %.sroa.533.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !361

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.as = phi i1 [ false, %bb.e ], [ %i.e, %middle.block ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.at = phi ptr [ %i.j, %bb.e ], [ %i.k, %middle.block ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %.sroa.040.0.copyload, ptr %4, align 8, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.541.0.copyload, ptr %i.au, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.at, ptr %5, align 8, !tbaa !125
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.av, align 8, !tbaa !126
  %i.aw = load ptr, ptr %2, align 8, !tbaa !140
  %.sroa.7.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.48.copyload = load i64, ptr %.sroa.7.48..sroa_idx, align 8
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.743.0.copyload, i64 noundef %.sroa.541.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.aw, i64 noundef %.sroa.7.48.copyload, double noundef %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.as, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.at) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.as, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.at) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit18: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5, double noundef %6) local_unnamed_addr #19 comdat align 2 {
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
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !8 ; 8 uses
  %i.ad = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0224419 ; 8 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.j
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !8
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %.0389418, %i.ag      ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ad, i64 %i.l
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !8
  %i.ak = fmul <2 x double> %i.ac, %i.aj
  %i.al = fadd <2 x double> %.0390417, %i.ak      ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.ad, i64 %i.n
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !8
  %i.ao = fmul <2 x double> %i.ac, %i.an
  %i.ap = fadd <2 x double> %.0391416, %i.ao      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal20generic_product_implINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_IS5_EENS_10DenseShapeESC_Li8EE13scaleAndAddToIS8_EEvRT_RKSA_RKSB_RKd:bb.a
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !43
  %i.cu = getelementptr [8 x i8], ptr %i.ch, i64 %.01724.i.i.i.i.i.i27
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !43
  %i.cw = fmul double %i.ct, %i.cv
  %i.cx = fadd double %.02223.i.i.i.i.i.i28, %i.cw
  %i.cy = add nuw nsw i64 %.01724.i.i.i.i.i.i27, 1 ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.ce, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !43
  %i.db = getelementptr [8 x i8], ptr %i.ch, i64 %i.cy
  %i.dc = load double, ptr %i.db, align 8, !tbaa !43
  %i.dd = fmul double %i.da, %i.dc
  %i.de = fadd double %i.cx, %i.dd
  %i.df = add nuw nsw i64 %.01724.i.i.i.i.i.i27, 2 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.ce, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !43
  %i.di = getelementptr [8 x i8], ptr %i.ch, i64 %i.df
  %i.dj = load double, ptr %i.di, align 8, !tbaa !43
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = fadd double %i.de, %i.dk
  %i.dm = add nuw nsw i64 %.01724.i.i.i.i.i.i27, 3 ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %i.ce, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !43
  %i.dp = getelementptr [8 x i8], ptr %i.ch, i64 %i.dm
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !43
  %i.dr = fmul double %i.do, %i.dq
  %i.ds = fadd double %i.dl, %i.dr                ; 3 uses
  %i.dt = add nuw nsw i64 %.01724.i.i.i.i.i.i27, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i26, !llvm.loop !539

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i26
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i, label %.lr.ph.i.i.i.i.i.i26.epil.preheader

.lr.ph.i.i.i.i.i.i26.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i26.preheader
  %.01724.i.i.i.i.i.i27.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i26.preheader ], [ %i.dt, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i28.epil.init = phi double [ %i.cn, %.lr.ph.i.i.i.i.i.i26.preheader ], [ %i.ds, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.i.i.i.i.i26.epil

.lr.ph.i.i.i.i.i.i26.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i26.epil, %.lr.ph.i.i.i.i.i.i26.epil.preheader
  %.01724.i.i.i.i.i.i27.epil = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i.i26.epil ], [ %.01724.i.i.i.i.i.i27.epil.init, %.lr.ph.i.i.i.i.i.i26.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i28.epil = phi double [ %i.dz, %.lr.ph.i.i.i.i.i.i26.epil ], [ %.02223.i.i.i.i.i.i28.epil.init, %.lr.ph.i.i.i.i.i.i26.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i26.epil ], [ 0, %.lr.ph.i.i.i.i.i.i26.epil.preheader ]
  %i.du = getelementptr [8 x i8], ptr %i.ce, i64 %.01724.i.i.i.i.i.i27.epil
  %i.dv = load double, ptr %i.du, align 8, !tbaa !43
  %i.dw = getelementptr [8 x i8], ptr %i.ch, i64 %.01724.i.i.i.i.i.i27.epil
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !43
  %i.dy = fmul double %i.dv, %i.dx
  %i.dz = fadd double %.02223.i.i.i.i.i.i28.epil, %i.dy ; 2 uses
  %i.ea = add nuw nsw i64 %.01724.i.i.i.i.i.i27.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i, label %.lr.ph.i.i.i.i.i.i26.epil, !llvm.loop !540

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i26.epil, %bb.l, %bb.k
  %.0.i.i.i.i25 = phi double [ 0.000000e+00, %bb.k ], [ %i.cn, %bb.l ], [ %i.ds, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i.loopexit.unr-lcssa ], [ %i.dz, %.lr.ph.i.i.i.i.i.i26.epil ]
  %i.eb = load double, ptr %i.cd, align 8, !tbaa !43
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.cg, double %.0.i.i.i.i25, double %i.eb)
  store double %i.ec, ptr %i.cd, align 8, !tbaa !43
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEENS3_IS6_EENS_10DenseShapeESG_Li7EE13scaleAndAddToINS2_IS9_Li1ELin1ELb0EEEEEvRT_RSE_RKSF_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.cd, ptr %4, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %.sroa.542.0..sroa_idx, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.1146.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.1146.56..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.g, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.ce, ptr %6, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.532.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ce, ptr %i.ef, align 8
  %.sroa.8.24..sroa_idx34 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.b, ptr %.sroa.8.24..sroa_idx34, align 8
  %.sroa.936.24..sroa_idx37 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.e, ptr %.sroa.936.24..sroa_idx37, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.12.56..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  store i64 %i.b, ptr %.sroa.12.56..sroa_idx, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIKNS4_IKNS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEEENS4_INSA_ISE_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNST_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEENS3_IS6_EENS_10DenseShapeESG_Li7EE13scaleAndAddToINS2_IS9_Li1ELin1ELb0EEEEEvRT_RSE_RKSF_RKd.exit

bb.n:                                             ; preds = %bb.i
  %.sroa.054.0.copyload = load ptr, ptr %1, align 8
  %i.eh = load double, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 %i.cb, ptr %i.ei, align 8, !tbaa !131
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.ej, align 8, !tbaa !132
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.ek, align 8, !tbaa !133
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i64 noundef 1)
  %i.el = load i64, ptr %i.ei, align 8, !tbaa !131
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !133 ; 2 uses
  %i.en = mul nsw i64 %i.em, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !135
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !132
  %i.eq = mul nsw i64 %i.ep, %i.em
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !136
  %i.es = load i64, ptr %i.d, align 8, !tbaa !99
  %i.et = load ptr, ptr %2, align 8, !tbaa !148, !nonnull !86, !align !123
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !107 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, -1
  %i.ex = load i64, ptr %i.h, align 8, !tbaa !107 ; 2 uses
  %..i.i = select i1 %i.ew, i64 %i.ex, i64 %i.ev
  %i.ey = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.ez = load ptr, ptr %0, align 8, !tbaa !91
  %i.fa = load i64, ptr %i.ca, align 8, !tbaa !99
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.es, i64 noundef %..i.i, i64 noundef %i.b, ptr noundef nonnull %.sroa.054.0.copyload, i64 noundef %i.b, ptr noundef nonnull %i.ey, i64 noundef %i.ex, ptr noundef nonnull %i.ez, i64 noundef 1, i64 noundef %i.fa, double noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi1ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IKS8_EESB_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SM_SM_b.exit unwind label %bb.o

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi1ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IKS8_EESB_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SM_SM_b.exit: ; preds = %bb.n
  %i.fb = load ptr, ptr %10, align 8, !tbaa !137
  call void @free(ptr noundef %i.fb) #27
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !138
  call void @free(ptr noundef %i.fd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEENS3_IS6_EENS_10DenseShapeESG_Li7EE13scaleAndAddToINS2_IS9_Li1ELin1ELb0EEEEEvRT_RSE_RKSF_RKd.exit

_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEENS3_IS6_EENS_10DenseShapeESG_Li7EE13scaleAndAddToINS2_IS9_Li1ELin1ELb0EEEEEvRT_RSE_RKSF_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IS5_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSL_17scalar_product_opIdSP_EEE10ReturnTypeERKNS0_ISN_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi1ELb0ELi0ELi1EEENS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IKS8_EESB_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SM_SM_b.exit, %_ZN5Eigen8internal20generic_product_implINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEKNS_5BlockIKNS2_IS5_EELin1ELi1ELb0EEENS_10DenseShapeESG_Li7EE13scaleAndAddToINSB_IS8_Lin1ELi1ELb1EEEEEvRT_RKSA_RSF_RKd.exit
  ret void

bb.o:                                             ; preds = %bb.n
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %10, align 8, !tbaa !137
  call void @free(ptr noundef %i.ff) #27
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !138
  call void @free(ptr noundef %i.fh) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  resume { ptr, i32 } %i.fe
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS_5BlockIKNS4_IS7_EELin1ELi1ELb0EEENSD_ISA_Lin1ELi1ELb1EEEEEvRKT_RKT0_RT1_RKNSO_6ScalarE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.1283", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %.sroa.039.0.copyload = load ptr, ptr %0, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.540.0.copyload = load i64, ptr %.sroa.540.0..sroa_idx, align 8 ; 2 uses
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.742.0.copyload = load i64, ptr %.sroa.742.0..sroa_idx, align 8
  %i.a = load double, ptr %3, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99   ; 10 uses
  %i.d = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.d, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.f = shl nuw i64 %i.c, 3                      ; 2 uses
  %i.g = icmp samesign ugt i64 %i.c, 16384        ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #32 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.k = add nuw nsw i64 %i.f, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c, %bb.e
  %i.m = phi ptr [ %i.l, %bb.e ], [ %i.h, %bb.c ] ; 9 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !554    ; 6 uses
  %.pn.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !148, !nonnull !86, !align !123
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.o = load i64, ptr %.in, align 8, !tbaa !107  ; 6 uses
  %min.iters.check = icmp ugt i64 %i.c, 3
  %ident.check.not = icmp eq i64 %i.o, 1
  %or.cond47 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond47, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.c, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !43
  %wide.load46 = load <2 x double>, ptr %i.r, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x double> %wide.load, ptr %i.p, align 8, !tbaa !43
  store <2 x double> %wide.load46, ptr %i.s, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.v = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.o
  %i.w = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !43
  store double %i.x, ptr %i.u, align 8, !tbaa !43
  %i.y = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !551

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader49
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.z = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.c
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.05.i.i.i.i.i.i.i.i
  %i.ac = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.o
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !43
  store double %i.ae, ptr %i.ab, align 8, !tbaa !43
  %i.af = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.af
  %i.ah = mul nsw i64 %i.af, %i.o
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !43
  store double %i.aj, ptr %i.ag, align 8, !tbaa !43
  %i.ak = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ak
  %i.am = mul nsw i64 %i.ak, %i.o
  %i.an = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !43
  store double %i.ao, ptr %i.al, align 8, !tbaa !43
  %i.ap = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ap
  %i.ar = mul nsw i64 %i.ap, %i.o
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !43
  store double %i.at, ptr %i.aq, align 8, !tbaa !43
  %i.au = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.au, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !552

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.av = phi i1 [ false, %bb.e ], [ %i.g, %middle.block ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.aw = phi ptr [ %i.l, %bb.e ], [ %i.m, %middle.block ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %.sroa.039.0.copyload, ptr %4, align 8, !tbaa !128
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.540.0.copyload, ptr %i.ax, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.aw, ptr %5, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.ay, align 8, !tbaa !126
  %i.az = load ptr, ptr %2, align 8, !tbaa !150
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.742.0.copyload, i64 noundef %.sroa.540.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.az, i64 noundef 1, double noundef %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.av, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.aw) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.av, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit26

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.aw) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit26

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit26: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.ba
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIKNS4_IKNS_3MapIS6_Li0ENS_6StrideILi0ELi0EEEEEEELi1ELin1ELb1EEEEENS4_INSA_ISE_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNST_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.1283", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !86, !align !123 ; 3 uses
  %.sroa.040.0.copyload = load ptr, ptr %1, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !99   ; 10 uses
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.g = shl nuw i64 %i.d, 3                      ; 2 uses
  %i.h = icmp samesign ugt i64 %i.d, 16384        ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #32 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.m = add nuw nsw i64 %i.g, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.thread, %bb.e
  %i.p = phi ptr [ %i.k, %.thread ], [ %i.o, %bb.e ] ; 4 uses
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.n, %bb.e ] ; 9 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !140    ; 6 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !99   ; 6 uses
  %min.iters.check = icmp ugt i64 %i.d, 3
  %ident.check.not = icmp eq i64 %i.s, 1
  %or.cond67 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond67, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader73

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.d, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !43
  %wide.load50 = load <2 x double>, ptr %i.v, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %wide.load, ptr %i.t, align 8, !tbaa !43
  store <2 x double> %wide.load50, ptr %i.w, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader73

.lr.ph.i.i.i.i.i.i.i.i.preheader73:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader73, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader73 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader73 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.z = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.s
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !43
  store double %i.ab, ptr %i.y, align 8, !tbaa !43
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !556

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader73
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader73 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ad = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.d
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i
  %i.ag = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.s
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !43
  store double %i.ai, ptr %i.af, align 8, !tbaa !43
  %i.aj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj
  %i.al = mul nsw i64 %i.aj, %i.s
  %i.am = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !43
  store double %i.an, ptr %i.ak, align 8, !tbaa !43
  %i.ao = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao
  %i.aq = mul nsw i64 %i.ao, %i.s
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  store double %i.as, ptr %i.ap, align 8, !tbaa !43
  %i.at = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.at
  %i.av = mul nsw i64 %i.at, %i.s
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !43
  store double %i.ax, ptr %i.au, align 8, !tbaa !43
  %i.ay = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ay, %i.d
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !557

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.az = phi ptr [ %i.o, %bb.e ], [ %i.p, %middle.block ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ba = phi i1 [ false, %bb.e ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bb = phi ptr [ %i.n, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !107 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !106
  store ptr %i.bh, ptr %4, align 8, !tbaa !125
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.be, ptr %i.bi, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %.sroa.040.0.copyload, ptr %5, align 8, !tbaa !128
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bj, align 8, !tbaa !129
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.be, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.bb, i64 noundef 1, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bk = load ptr, ptr %2, align 8, !tbaa !140   ; 7 uses
  %i.bl = load i64, ptr %i.az, align 8, !tbaa !99 ; 6 uses
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !99  ; 7 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader, label %_ZN5Eigen9TransposeINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEEaSINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi2ES6_EEEERS9_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i26.preheader:               ; preds = %bb.f
  %i.bo = ptrtoaddr ptr %i.bk to i64
  %min.iters.check56 = icmp ult i64 %i.bm, 10
  %ident.check52.not = icmp ne i64 %i.bl, 1
  %or.cond68.not71 = select i1 %min.iters.check56, i1 true, i1 %ident.check52.not
  %i.bp = sub i64 %i.bc, %i.bo
  %diff.check54 = icmp ugt i64 %i.bp, -32
  %or.cond69 = select i1 %or.cond68.not71, i1 true, i1 %diff.check54
  br i1 %or.cond69, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader72, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader
  %n.vec58 = and i64 %i.bm, 9223372036854775804   ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ] ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %index60 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index60 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load61 = load <2 x double>, ptr %i.br, align 8, !tbaa !43
  %wide.load62 = load <2 x double>, ptr %i.bs, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x double> %wide.load61, ptr %i.bq, align 8, !tbaa !43
  store <2 x double> %wide.load62, ptr %i.bt, align 8, !tbaa !43
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.bu, label %middle.block64, label %vector.body59, !llvm.loop !558

middle.block64:                                   ; preds = %vector.body59
  %cmp.n65 = icmp eq i64 %i.bm, %n.vec58
  br i1 %cmp.n65, label %_ZN5Eigen9TransposeINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEEaSINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi2ES6_EEEERS9_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader72

.lr.ph.i.i.i.i.i.i.i.i26.preheader72:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader, %middle.block64
  %.05.i.i.i.i.i.i.i.i27.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader ], [ %n.vec58, %middle.block64 ] ; 3 uses
  %xtraiter74 = and i64 %i.bm, 3                  ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i26.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader72, %.lr.ph.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader72 ] ; 3 uses
  %prol.iter76 = phi i64 [ %prol.iter76.next, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader72 ]
  %i.bv = mul nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, %i.bl
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.05.i.i.i.i.i.i.i.i27.prol
  %i.by = load double, ptr %i.bx, align 8, !tbaa !43
  store double %i.by, ptr %i.bw, align 8, !tbaa !43
  %i.bz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter76.next = add i64 %prol.iter76, 1     ; 2 uses
  %prol.iter76.cmp.not = icmp eq i64 %prol.iter76.next, %xtraiter74
  br i1 %prol.iter76.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol, !llvm.loop !559

.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i26.preheader72
  %.05.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader72 ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i26.prol ]
  %i.ca = sub nsw i64 %.05.i.i.i.i.i.i.i.i27.ph, %i.bm
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN5Eigen9TransposeINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEEaSINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi2ES6_EEEERS9_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i27 = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.cc = mul nsw i64 %.05.i.i.i.i.i.i.i.i27, %i.bl
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.05.i.i.i.i.i.i.i.i27
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !43
  store double %i.cf, ptr %i.cd, align 8, !tbaa !43
  %i.cg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.bl
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cg
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !43
  store double %i.ck, ptr %i.ci, align 8, !tbaa !43
  %i.cl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.cm = mul nsw i64 %i.cl, %i.bl
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cl
  %i.cp = load double, ptr %i.co, align 8, !tbaa !43
  store double %i.cp, ptr %i.cn, align 8, !tbaa !43
  %i.cq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.cr = mul nsw i64 %i.cq, %i.bl
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cq
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !43
  store double %i.cu, ptr %i.cs, align 8, !tbaa !43
  %i.cv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.cv, %i.bm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i28.3, label %_ZN5Eigen9TransposeINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEEaSINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi2ES6_EEEERS9_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !560

_ZN5Eigen9TransposeINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEEaSINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi2ES6_EEEERS9_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26, %middle.block64, %bb.f
  br i1 %i.ba, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %_ZN5Eigen9TransposeINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEEaSINS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi2ES6_EEEERS9_RKNS_9DenseBaseIT_EE.exit
  call void @free(ptr noundef nonnull %i.bb) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

end_hunk_1
