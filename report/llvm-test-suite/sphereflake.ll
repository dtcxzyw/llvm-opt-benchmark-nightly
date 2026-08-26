Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sphereflake?download=true
inline.NumInlined: 106
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  %i.fz = fmul double %i.ce, %.sroa.9.1.us.i
  %i.ga = fadd <2 x double> %i.fy, zeroinitializer
  %i.gb = fadd double %i.fz, -4.500000e+00
  %i.gc = fmul <2 x double> %i.fn, splat (double f0x3D719799812DEA11)
  %i.gd = fmul double %.sroa.767.1.us.i, f0x3D719799812DEA11
  %i.ge = fadd <2 x double> %i.ga, %i.gc          ; 2 uses
  %i.gf = fadd double %i.gd, %i.gb                ; 2 uses
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.s, %bb.o
  %.01328.i.us.i = phi ptr [ %.2.i.us.i, %bb.s ], [ %i.s, %bb.o ] ; 9 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 16
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !24, !noalias !67
  %i.gi = fsub double %i.gh, %i.gf                ; 3 uses
  %i.gj = fmul double %i.be, %i.gi
  %i.gk = load <2 x double>, ptr %.01328.i.us.i, align 8, !tbaa !25, !noalias !67
  %i.gl = fsub <2 x double> %i.gk, %i.ge          ; 3 uses
  %i.gm = fmul <2 x double> %i.gl, %i.bh          ; 2 uses
  %shift80 = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop81 = fsub <2 x double> %shift80, %i.gm
  %i.gn = extractelement <2 x double> %foldExtExtBinop81, i64 0
  %i.go = fsub double %i.gn, %i.gj                ; 4 uses
  %i.gp = fmul double %i.go, %i.go
  %i.gq = fmul <2 x double> %i.gl, %i.gl          ; 2 uses
  %shift83 = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop84 = fadd <2 x double> %i.gq, %shift83
  %i.gr = extractelement <2 x double> %foldExtExtBinop84, i64 0
  %i.gs = fmul double %i.gi, %i.gi
  %i.gt = fadd double %i.gr, %i.gs
  %i.gu = fsub double %i.gp, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 24
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !59 ; 2 uses
  %i.gx = fmul double %i.gw, %i.gw
  %i.gy = fadd double %i.gx, %i.gu                ; 3 uses
  %i.gz = fcmp olt double %i.gy, 0.000000e+00
  br i1 %i.gz, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.us.i
  %i.ha = fcmp oeq double %i.gy, +inf
  br i1 %i.ha, label %_ZL8LLVMsqrtd.exit.i.i.us.i, label %.preheader.i.i.i.us.i

.preheader.i.i.i.us.i:                            ; preds = %bb.p, %.preheader.i.i.i.us.i
  %.016.i.i.i.us.i = phi i32 [ %i.hh, %.preheader.i.i.i.us.i ], [ 100, %bb.p ]
  %.01015.i.i.i.us.i = phi double [ %i.hd, %.preheader.i.i.i.us.i ], [ 1.000000e+00, %bb.p ] ; 3 uses
  %i.hb = fdiv double %i.gy, %.01015.i.i.i.us.i
  %i.hc = fadd double %.01015.i.i.i.us.i, %i.hb
  %i.hd = fmul double %i.hc, 5.000000e-01         ; 3 uses
  %i.he = fsub double %i.hd, %.01015.i.i.i.us.i
  %i.hf = tail call double @llvm.fabs.f64(double %i.he)
  %i.hg = fcmp ule double %i.hf, f0x3D719799812DEA11
  %i.hh = add nsw i32 %.016.i.i.i.us.i, -1        ; 2 uses
  %.not.i.i.i23.us.i = icmp eq i32 %i.hh, 0
  %or.cond.i.i.i.us.i = select i1 %i.hg, i1 true, i1 %.not.i.i.i23.us.i
  br i1 %or.cond.i.i.i.us.i, label %_ZL8LLVMsqrtd.exit.i.i.us.i, label %.preheader.i.i.i.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i.i.us.i:                      ; preds = %.preheader.i.i.i.us.i, %bb.p
  %.1.i.i.i.us.i = phi double [ +inf, %bb.p ], [ %i.hd, %.preheader.i.i.i.us.i ] ; 2 uses
  %i.hi = fadd double %i.go, %.1.i.i.i.us.i       ; 2 uses
  %i.hj = fcmp olt double %i.hi, 0.000000e+00
  br i1 %i.hj, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i:     ; preds = %_ZL8LLVMsqrtd.exit.i.i.us.i
  %i.hk = fsub double %i.go, %.1.i.i.i.us.i       ; 2 uses
  %i.hl = fcmp ogt double %i.hk, 0.000000e+00
  %i.hm = select i1 %i.hl, double %i.hk, double %i.hi
  %i.hn = fcmp une double %i.hm, +inf
  br i1 %i.hn, label %bb.q, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i

bb.q:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 48
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !24, !noalias !70
  %i.hr = fsub double %i.hq, %i.gf                ; 3 uses
  %i.hs = fmul double %i.be, %i.hr
  %i.ht = load <2 x double>, ptr %i.ho, align 8, !tbaa !25, !noalias !70
  %i.hu = fsub <2 x double> %i.ht, %i.ge          ; 3 uses
  %i.hv = fmul <2 x double> %i.hu, %i.bh          ; 2 uses
  %shift86 = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop87 = fsub <2 x double> %shift86, %i.hv
  %i.hw = extractelement <2 x double> %foldExtExtBinop87, i64 0
  %i.hx = fsub double %i.hw, %i.hs                ; 4 uses
  %i.hy = fmul double %i.hx, %i.hx
  %i.hz = fmul <2 x double> %i.hu, %i.hu          ; 2 uses
  %shift89 = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop90 = fadd <2 x double> %i.hz, %shift89
  %i.ia = extractelement <2 x double> %foldExtExtBinop90, i64 0
  %i.ib = fmul double %i.hr, %i.hr
  %i.ic = fadd double %i.ia, %i.ib
  %i.id = fsub double %i.hy, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 56
  %i.if = load double, ptr %i.ie, align 8, !tbaa !59 ; 2 uses
  %i.ig = fmul double %i.if, %i.if
  %i.ih = fadd double %i.ig, %i.id                ; 3 uses
  %i.ii = fcmp olt double %i.ih, 0.000000e+00
  br i1 %i.ii, label %.thread.i.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ij = fcmp oeq double %i.ih, +inf
  br i1 %i.ij, label %_ZL8LLVMsqrtd.exit.i20.i.us.i, label %.preheader.i.i15.i.us.i

.preheader.i.i15.i.us.i:                          ; preds = %bb.r, %.preheader.i.i15.i.us.i
  %.016.i.i16.i.us.i = phi i32 [ %i.iq, %.preheader.i.i15.i.us.i ], [ 100, %bb.r ]
  %.01015.i.i17.i.us.i = phi double [ %i.im, %.preheader.i.i15.i.us.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %i.ik = fdiv double %i.ih, %.01015.i.i17.i.us.i
  %i.il = fadd double %.01015.i.i17.i.us.i, %i.ik
  %i.im = fmul double %i.il, 5.000000e-01         ; 3 uses
  %i.in = fsub double %i.im, %.01015.i.i17.i.us.i
  %i.io = tail call double @llvm.fabs.f64(double %i.in)
  %i.ip = fcmp ule double %i.io, f0x3D719799812DEA11
  %i.iq = add nsw i32 %.016.i.i16.i.us.i, -1      ; 2 uses
  %.not.i.i18.i.us.i = icmp eq i32 %i.iq, 0
  %or.cond.i.i19.i.us.i = select i1 %i.ip, i1 true, i1 %.not.i.i18.i.us.i
  br i1 %or.cond.i.i19.i.us.i, label %_ZL8LLVMsqrtd.exit.i20.i.us.i, label %.preheader.i.i15.i.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i20.i.us.i:                    ; preds = %.preheader.i.i15.i.us.i, %bb.r
  %.1.i.i21.i.us.i = phi double [ +inf, %bb.r ], [ %i.im, %.preheader.i.i15.i.us.i ] ; 2 uses
  %i.ir = fadd double %i.hx, %.1.i.i21.i.us.i     ; 2 uses
  %i.is = fcmp olt double %i.ir, 0.000000e+00
  br i1 %i.is, label %.thread.i.us.i, label %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i:   ; preds = %_ZL8LLVMsqrtd.exit.i20.i.us.i
  %i.it = fsub double %i.hx, %.1.i.i21.i.us.i     ; 2 uses
  %i.iu = fcmp ogt double %i.it, 0.000000e+00
  %i.iv = select i1 %i.iu, double %i.it, double %i.ir ; 2 uses
  %i.iw = fcmp ueq double %i.iv, +inf
  br i1 %i.iw, label %.thread.i.us.i, label %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i

.thread.i.us.i:                                   ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i, %_ZL8LLVMsqrtd.exit.i20.i.us.i, %bb.q
  %i.ix = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 72
  br label %bb.s

_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i: ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i, %_ZL8LLVMsqrtd.exit.i.i.us.i, %.lr.ph.i.us.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 64
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !61
  %i.ja = getelementptr inbounds [72 x i8], ptr %.01328.i.us.i, i64 %i.iz
  br label %bb.s

bb.s:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, %.thread.i.us.i
  %.2.i.us.i = phi ptr [ %i.ja, %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i ], [ %i.ix, %.thread.i.us.i ] ; 2 uses
  %i.jb = icmp ult ptr %.2.i.us.i, %i.t
  br i1 %i.jb, label %.lr.ph.i.us.i, label %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i, !llvm.loop !73

_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i: ; preds = %bb.s, %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i
  %.sroa.3.0.us.i = phi double [ %i.iv, %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i ], [ +inf, %bb.s ]
  %i.jc = fcmp oeq double %.sroa.3.0.us.i, +inf
  %i.jd = select i1 %i.jc, double %i.fv, double 0.000000e+00
  br label %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i

_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i:         ; preds = %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i, %bb.n, %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i
  %.0.i.us.i = phi double [ %i.jd, %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i ]
  %i.je = fadd double %.01784.us.i, %.0.i.us.i    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.split.us.loopexit.i, label %.preheader.split.us.i, !llvm.loop !74

bb.t:                                             ; preds = %.split.us.i
  %i.jf = fadd double %.sroa.7.088.i, -1.000000e+00
  %i.jg = add nsw i32 %.01989.i, -1               ; 2 uses
  %.not.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i, label %bb.c, label %.preheader76.i, !llvm.loop !75

.split.us.loopexit.i:                             ; preds = %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i
  %i.jh = fmul double %i.je, 6.400000e+01
  %i.ji = fptosi double %i.jh to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %.preheader.i
  %.us-phi.i = phi i32 [ %i.ji, %.split.us.loopexit.i ], [ 0, %.preheader.i ]
  %i.jj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.us-phi.i)
  %i.jk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.jl = fadd double %.sroa.038.186.i, 1.000000e+00
  %i.jm = add nsw i32 %.01887.i, -1               ; 2 uses
  %.not22.i = icmp eq i32 %i.jm, 0
  br i1 %.not22.i, label %bb.t, label %.preheader.i, !llvm.loop !76

_ZL10trace_rgssii.exit:                           ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi i8 [ %i.ay, %bb.e ], [ %i.bc, %bb.f ]
  %i.jn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
  %i.jo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jn) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef initializes((0, 72)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.v_t) align 8 captures(none) %3, ptr noundef byval(%struct.v_t) align 8 %4, double noundef %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.basis_t, align 8            ; 7 uses
  %7 = alloca %struct.v_t, align 16               ; 3 uses
  %8 = alloca %struct.v_t, align 16               ; 3 uses
  %9 = alloca %struct.v_t, align 16               ; 3 uses
  %10 = alloca %struct.v_t, align 16              ; 3 uses
  %i.a = fmul double %5, 2.000000e+00
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %12 = icmp sgt i32 %1, 1
  %13 = select i1 %12, i32 %2, i32 1
  %14 = sext i32 %13 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.a, ptr %i.b, align 8, !tbaa !25
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %5, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %14, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = icmp slt i32 %1, 2
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %2, -9
  %i.g = sdiv i32 %i.f, 9
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN7basis_tC2ERK3v_t(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.h = fdiv double %5, 3.000000e+00             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.n = add nsw i32 %1, -1                       ; 2 uses
  %i.o = fadd double %5, %i.h                     ; 3 uses
  %i.p = load <2 x double>, ptr %3, align 8, !tbaa !25, !noalias !77 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !24, !noalias !77 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = insertelement <2 x double> poison, double %i.o, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNK3v_t4normEv.exit
  %i.v = fadd double %i.do, f0xBFD657184AE74487
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.p

bb.d:                                             ; preds = %bb.b, %_ZNK3v_t4normEv.exit
  %.033128 = phi i32 [ 0, %bb.b ], [ %i.dp, %_ZNK3v_t4normEv.exit ]
  %.034127 = phi double [ 0.000000e+00, %bb.b ], [ %i.do, %_ZNK3v_t4normEv.exit ] ; 5 uses
  %.036126 = phi ptr [ %i.d, %bb.b ], [ %i.dn, %_ZNK3v_t4normEv.exit ]
  %i.x = load <2 x double>, ptr %4, align 8, !tbaa !25, !noalias !80
  %i.y = fmul <2 x double> %i.x, splat (double 2.000000e-01)
  %i.z = load double, ptr %i.i, align 8, !tbaa !24, !noalias !80
  %i.aa = fmul double %i.z, 2.000000e-01
  %i.ab = fcmp olt double %.034127, 0.000000e+00
  br i1 %i.ab, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi double [ %.034127, %bb.d ], [ %i.ad, %.lr.ph.i ] ; 3 uses
  %i.ac = fcmp ogt double %.0.lcssa.i, f0x401921FB54411744
  br i1 %i.ac, label %.lr.ph28.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.026.i = phi double [ %i.ad, %.lr.ph.i ], [ %.034127, %bb.d ]
  %i.ad = fadd double %.026.i, f0x401921FB54411744 ; 3 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %.lr.ph.i, label %.preheader.i, !llvm.loop !83

.lr.ph28.i:                                       ; preds = %.preheader.i, %.lr.ph28.i
  %.127.i = phi double [ %i.af, %.lr.ph28.i ], [ %.0.lcssa.i, %.preheader.i ]
  %i.af = fadd double %.127.i, f0xC01921FB54411744 ; 3 uses
  %i.ag = fcmp ogt double %i.af, f0x401921FB54411744
  br i1 %i.ag, label %.lr.ph28.i, label %._crit_edge.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %.lr.ph28.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.0.lcssa.i, %.preheader.i ], [ %i.af, %.lr.ph28.i ] ; 7 uses
  %i.ah = fcmp ogt double %.1.lcssa.i, f0x4012D97C7F713E20
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ai = fsub double f0x401921FB54411744, %.1.lcssa.i
  br label %_ZL7LLVMsind.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.aj = fcmp ogt double %.1.lcssa.i, f0x400921FB5496FD7F
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = fadd double %.1.lcssa.i, f0xC00921FB5496FD7F
  br label %_ZL7LLVMsind.exit

bb.h:                                             ; preds = %bb.f
  %i.al = fcmp ogt double %.1.lcssa.i, f0x3FF921FB54524550
  br i1 %i.al, label %bb.i, label %_ZL7LLVMsind.exit

bb.i:                                             ; preds = %bb.h
  %i.am = fsub double f0x400921FB5496FD7F, %.1.lcssa.i
  br label %_ZL7LLVMsind.exit

_ZL7LLVMsind.exit:                                ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %.019.i = phi double [ -1.000000e+00, %bb.e ], [ -1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.h ]
  %.2.i = phi double [ %i.ai, %bb.e ], [ %i.ak, %bb.g ], [ %i.am, %bb.i ], [ %.1.lcssa.i, %bb.h ] ; 6 uses
  %i.an = fmul double %.2.i, %.2.i
  %i.ao = fmul double %.2.i, %i.an                ; 2 uses
  %i.ap = fmul double %.2.i, %i.ao
  %i.aq = fmul double %.2.i, %i.ap
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = fdiv <2 x double> %i.as, <double 6.000000e+00, double 1.200000e+02> ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = fsub double %.2.i, %i.au
  %i.aw = extractelement <2 x double> %i.at, i64 1
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fmul double %.019.i, %i.ax              ; 2 uses
  %i.az = fcmp ogt double %i.ay, 1.000000e+00
  %.3.i = select i1 %i.az, double 1.000000e+00, double %i.ay ; 2 uses
  %i.ba = fcmp olt double %.3.i, -1.000000e+00
  %.4.i = select i1 %i.ba, double -1.000000e+00, double %.3.i ; 2 uses
  %i.bb = load <2 x double>, ptr %i.j, align 8, !tbaa !25, !noalias !85
  %i.bc = insertelement <2 x double> poison, double %.4.i, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bb, %i.bd
  %i.bf = load double, ptr %i.k, align 8, !tbaa !24, !noalias !85
  %i.bg = fmul double %i.bf, %.4.i
  %i.bh = fsub <2 x double> %i.be, %i.y
  %i.bi = fsub double %i.bg, %i.aa
  %i.bj = fadd double %.034127, f0x3FF921FB54524550 ; 3 uses
  %i.bk = fcmp olt double %i.bj, 0.000000e+00
  br i1 %i.bk, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %_ZL7LLVMsind.exit
  %.0.lcssa.i.i = phi double [ %i.bj, %_ZL7LLVMsind.exit ], [ %i.bm, %.lr.ph.i.i ] ; 3 uses
  %i.bl = fcmp ogt double %.0.lcssa.i.i, f0x401921FB54411744
  br i1 %i.bl, label %.lr.ph28.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZL7LLVMsind.exit, %.lr.ph.i.i
  %.026.i.i = phi double [ %i.bm, %.lr.ph.i.i ], [ %i.bj, %_ZL7LLVMsind.exit ]
  %i.bm = fadd double %.026.i.i, f0x401921FB54411744 ; 3 uses
  %i.bn = fcmp olt double %i.bm, 0.000000e+00
  br i1 %i.bn, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !83

.lr.ph28.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph28.i.i
  %.127.i.i = phi double [ %i.bo, %.lr.ph28.i.i ], [ %.0.lcssa.i.i, %.preheader.i.i ]
  %i.bo = fadd double %.127.i.i, f0xC01921FB54411744 ; 3 uses
  %i.bp = fcmp ogt double %i.bo, f0x401921FB54411744
  br i1 %i.bp, label %.lr.ph28.i.i, label %._crit_edge.i.i, !llvm.loop !84

._crit_edge.i.i:                                  ; preds = %.lr.ph28.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi double [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.bo, %.lr.ph28.i.i ] ; 7 uses
  %i.bq = fcmp ogt double %.1.lcssa.i.i, f0x4012D97C7F713E20
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.br = fsub double f0x401921FB54411744, %.1.lcssa.i.i
  br label %_ZL7LLVMcosd.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bs = fcmp ogt double %.1.lcssa.i.i, f0x400921FB5496FD7F
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = fadd double %.1.lcssa.i.i, f0xC00921FB5496FD7F
  br label %_ZL7LLVMcosd.exit

bb.m:                                             ; preds = %bb.k
  %i.bu = fcmp ogt double %.1.lcssa.i.i, f0x3FF921FB54524550
  br i1 %i.bu, label %bb.n, label %_ZL7LLVMcosd.exit

bb.n:                                             ; preds = %bb.m
  %i.bv = fsub double f0x400921FB5496FD7F, %.1.lcssa.i.i
  br label %_ZL7LLVMcosd.exit

_ZL7LLVMcosd.exit:                                ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  %.019.i.i = phi double [ -1.000000e+00, %bb.j ], [ -1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %bb.m ]
  %.2.i.i = phi double [ %i.br, %bb.j ], [ %i.bt, %bb.l ], [ %i.bv, %bb.n ], [ %.1.lcssa.i.i, %bb.m ] ; 6 uses
  %i.bw = fmul double %.2.i.i, %.2.i.i
  %i.bx = fmul double %.2.i.i, %i.bw              ; 2 uses
  %i.by = fmul double %.2.i.i, %i.bx
  %i.bz = fmul double %.2.i.i, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fdiv <2 x double> %i.cb, <double 6.000000e+00, double 1.200000e+02> ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = fsub double %.2.i.i, %i.cd
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = fadd double %i.ce, %i.cf
  %i.ch = fmul double %.019.i.i, %i.cg            ; 2 uses
  %i.ci = fcmp ogt double %i.ch, 1.000000e+00
  %.3.i.i = select i1 %i.ci, double 1.000000e+00, double %i.ch ; 2 uses
  %i.cj = fcmp olt double %.3.i.i, -1.000000e+00
  %.4.i.i = select i1 %i.cj, double -1.000000e+00, double %.3.i.i ; 2 uses
  %i.ck = load double, ptr %i.m, align 8, !tbaa !24, !noalias !88
  %i.cl = fmul double %i.ck, %.4.i.i
  %i.cm = load <2 x double>, ptr %i.l, align 8, !tbaa !25, !noalias !88
  %i.cn = insertelement <2 x double> poison, double %.4.i.i, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.cm, %i.co
  %i.cq = fadd <2 x double> %i.bh, %i.cp          ; 3 uses
  %i.cr = fadd double %i.bi, %i.cl                ; 3 uses
  %i.cs = fmul <2 x double> %i.cq, %i.cq          ; 2 uses
  %shift = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cs, %shift
  %i.ct = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cu = fmul double %i.cr, %i.cr
  %i.cv = fadd double %i.cu, %i.ct                ; 2 uses
  %i.cw = fcmp oeq double %i.cv, +inf
  br i1 %i.cw, label %_ZNK3v_t4normEv.exit, label %.preheader.i.i39

.preheader.i.i39:                                 ; preds = %_ZL7LLVMcosd.exit, %.preheader.i.i39
  %.016.i.i = phi i32 [ %i.dd, %.preheader.i.i39 ], [ 100, %_ZL7LLVMcosd.exit ]
  %.01015.i.i = phi double [ %i.cz, %.preheader.i.i39 ], [ 1.000000e+00, %_ZL7LLVMcosd.exit ] ; 3 uses
  %i.cx = fdiv double %i.cv, %.01015.i.i
  %i.cy = fadd double %.01015.i.i, %i.cx
end_hunk_0
