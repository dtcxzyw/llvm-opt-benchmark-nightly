inline.NumInlined: 106
inline.NumDeleted: 42
begin_hunk_0_@main:bb.a
  %i.hb = fmul double %i.bc, %i.gt
  %i.hc = fsub double %i.ha, %i.hb
  %i.hd = fmul double %i.be, %i.gz
  %i.he = fsub double %i.hc, %i.hd                ; 4 uses
  %i.hf = fmul double %i.he, %i.he
  %i.hg = fmul double %i.gt, %i.gt
  %i.hh = fmul double %i.gw, %i.gw
  %i.hi = fadd double %i.hg, %i.hh
  %i.hj = fmul double %i.gz, %i.gz
  %i.hk = fadd double %i.hi, %i.hj
  %i.hl = fsub double %i.hf, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 24
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !59 ; 2 uses
  %i.ho = fmul double %i.hn, %i.hn
  %i.hp = fadd double %i.ho, %i.hl                ; 3 uses
  %i.hq = fcmp olt double %i.hp, 0.000000e+00
  br i1 %i.hq, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.us.i
  %i.hr = fcmp oeq double %i.hp, +inf
  br i1 %i.hr, label %_ZL8LLVMsqrtd.exit.i.i.us.i, label %.preheader.i.i.i.us.i

.preheader.i.i.i.us.i:                            ; preds = %bb.p, %.preheader.i.i.i.us.i
  %.016.i.i.i.us.i = phi i32 [ %i.hy, %.preheader.i.i.i.us.i ], [ 100, %bb.p ]
  %.01015.i.i.i.us.i = phi double [ %i.hu, %.preheader.i.i.i.us.i ], [ 1.000000e+00, %bb.p ] ; 3 uses
  %i.hs = fdiv double %i.hp, %.01015.i.i.i.us.i
  %i.ht = fadd double %.01015.i.i.i.us.i, %i.hs
  %i.hu = fmul double %i.ht, 5.000000e-01         ; 3 uses
  %i.hv = fsub double %i.hu, %.01015.i.i.i.us.i
  %i.hw = tail call double @llvm.fabs.f64(double %i.hv)
  %i.hx = fcmp ule double %i.hw, f0x3D719799812DEA11
  %i.hy = add nsw i32 %.016.i.i.i.us.i, -1        ; 2 uses
  %.not.i.i.i23.us.i = icmp eq i32 %i.hy, 0
  %or.cond.i.i.i.us.i = select i1 %i.hx, i1 true, i1 %.not.i.i.i23.us.i
  br i1 %or.cond.i.i.i.us.i, label %_ZL8LLVMsqrtd.exit.i.i.us.i, label %.preheader.i.i.i.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i.i.us.i:                      ; preds = %.preheader.i.i.i.us.i, %bb.p
  %.1.i.i.i.us.i = phi double [ +inf, %bb.p ], [ %i.hu, %.preheader.i.i.i.us.i ] ; 2 uses
  %i.hz = fadd double %i.he, %.1.i.i.i.us.i       ; 2 uses
  %i.ia = fcmp olt double %i.hz, 0.000000e+00
  br i1 %i.ia, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i:     ; preds = %_ZL8LLVMsqrtd.exit.i.i.us.i
  %i.ib = fsub double %i.he, %.1.i.i.i.us.i       ; 2 uses
  %i.ic = fcmp ogt double %i.ib, 0.000000e+00
  %i.id = select i1 %i.ic, double %i.ib, double %i.hz
  %i.ie = fcmp une double %i.id, +inf
  br i1 %i.ie, label %bb.q, label %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i

bb.q:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i
  %i.if = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 32
  %i.ig = load double, ptr %i.if, align 8, !tbaa !15, !noalias !70
  %i.ih = fsub double %i.ig, %i.gp                ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 40
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !23, !noalias !70
  %i.ik = fsub double %i.ij, %i.gq                ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 48
  %i.im = load double, ptr %i.il, align 8, !tbaa !24, !noalias !70
  %i.in = fsub double %i.im, %i.gr                ; 3 uses
  %i.io = fmul double %i.ik, %i.bf
  %i.ip = fmul double %i.bc, %i.ih
  %i.iq = fsub double %i.io, %i.ip
  %i.ir = fmul double %i.be, %i.in
  %i.is = fsub double %i.iq, %i.ir                ; 4 uses
  %i.it = fmul double %i.is, %i.is
  %i.iu = fmul double %i.ih, %i.ih
  %i.iv = fmul double %i.ik, %i.ik
  %i.iw = fadd double %i.iu, %i.iv
  %i.ix = fmul double %i.in, %i.in
  %i.iy = fadd double %i.iw, %i.ix
  %i.iz = fsub double %i.it, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 56
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !59 ; 2 uses
  %i.jc = fmul double %i.jb, %i.jb
  %i.jd = fadd double %i.jc, %i.iz                ; 3 uses
  %i.je = fcmp olt double %i.jd, 0.000000e+00
  br i1 %i.je, label %.thread.i.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jf = fcmp oeq double %i.jd, +inf
  br i1 %i.jf, label %_ZL8LLVMsqrtd.exit.i20.i.us.i, label %.preheader.i.i15.i.us.i

.preheader.i.i15.i.us.i:                          ; preds = %bb.r, %.preheader.i.i15.i.us.i
  %.016.i.i16.i.us.i = phi i32 [ %i.jm, %.preheader.i.i15.i.us.i ], [ 100, %bb.r ]
  %.01015.i.i17.i.us.i = phi double [ %i.ji, %.preheader.i.i15.i.us.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %i.jg = fdiv double %i.jd, %.01015.i.i17.i.us.i
  %i.jh = fadd double %.01015.i.i17.i.us.i, %i.jg
  %i.ji = fmul double %i.jh, 5.000000e-01         ; 3 uses
  %i.jj = fsub double %i.ji, %.01015.i.i17.i.us.i
  %i.jk = tail call double @llvm.fabs.f64(double %i.jj)
  %i.jl = fcmp ule double %i.jk, f0x3D719799812DEA11
  %i.jm = add nsw i32 %.016.i.i16.i.us.i, -1      ; 2 uses
  %.not.i.i18.i.us.i = icmp eq i32 %i.jm, 0
  %or.cond.i.i19.i.us.i = select i1 %i.jl, i1 true, i1 %.not.i.i18.i.us.i
  br i1 %or.cond.i.i19.i.us.i, label %_ZL8LLVMsqrtd.exit.i20.i.us.i, label %.preheader.i.i15.i.us.i, !llvm.loop !14

_ZL8LLVMsqrtd.exit.i20.i.us.i:                    ; preds = %.preheader.i.i15.i.us.i, %bb.r
  %.1.i.i21.i.us.i = phi double [ +inf, %bb.r ], [ %i.ji, %.preheader.i.i15.i.us.i ] ; 2 uses
  %i.jn = fadd double %i.is, %.1.i.i21.i.us.i     ; 2 uses
  %i.jo = fcmp olt double %i.jn, 0.000000e+00
  br i1 %i.jo, label %.thread.i.us.i, label %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i

_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i:   ; preds = %_ZL8LLVMsqrtd.exit.i20.i.us.i
  %i.jp = fsub double %i.is, %.1.i.i21.i.us.i     ; 2 uses
  %i.jq = fcmp ogt double %i.jp, 0.000000e+00
  %i.jr = select i1 %i.jq, double %i.jp, double %i.jn ; 2 uses
  %i.js = fcmp ueq double %i.jr, +inf
  br i1 %i.js, label %.thread.i.us.i, label %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i

.thread.i.us.i:                                   ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i, %_ZL8LLVMsqrtd.exit.i20.i.us.i, %bb.q
  %i.jt = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 72
  br label %bb.s

_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i: ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.us.i, %_ZL8LLVMsqrtd.exit.i.i.us.i, %.lr.ph.i.us.i
  %i.ju = getelementptr inbounds nuw i8, ptr %.01328.i.us.i, i64 64
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !61
  %i.jw = getelementptr inbounds [72 x i8], ptr %.01328.i.us.i, i64 %i.jv
  br label %bb.s

bb.s:                                             ; preds = %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i, %.thread.i.us.i
  %.2.i.us.i = phi ptr [ %i.jw, %_ZNK8sphere_t9intersectERK5ray_t.exit.i.thread.us.i ], [ %i.jt, %.thread.i.us.i ] ; 2 uses
  %i.jx = icmp ult ptr %.2.i.us.i, %i.t
  br i1 %i.jx, label %.lr.ph.i.us.i, label %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i, !llvm.loop !73

_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i: ; preds = %bb.s, %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i
  %.sroa.3.0.us.i = phi double [ %i.jr, %_ZNK8sphere_t9intersectERK5ray_t.exit23.i.us.i ], [ +inf, %bb.s ]
  %i.jy = fcmp oeq double %.sroa.3.0.us.i, +inf
  %i.jz = select i1 %i.jy, double %i.gf, double 0.000000e+00
  br label %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i

_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i:         ; preds = %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i, %bb.n, %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i
  %.0.i.us.i = phi double [ %i.jz, %_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t.exit.us.i ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t.exit.us.i ]
  %i.ka = fadd double %.01782.us.i, %.0.i.us.i    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.split.us.loopexit.i, label %.preheader.split.us.i, !llvm.loop !74

bb.t:                                             ; preds = %.split.us.i
  %i.kb = fadd double %.sroa.7.086.i, -1.000000e+00
  %i.kc = add nsw i32 %.01987.i, -1               ; 2 uses
  %.not.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i, label %bb.c, label %.preheader74.i, !llvm.loop !75

.split.us.loopexit.i:                             ; preds = %_ZL9ray_tracePK6node_tRK5ray_t.exit.us.i
  %i.kd = fmul double %i.ka, 6.400000e+01
  %i.ke = fptosi double %i.kd to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %.preheader.i
  %.us-phi.i = phi i32 [ %i.ke, %.split.us.loopexit.i ], [ 0, %.preheader.i ]
  %i.kf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.us-phi.i)
  %i.kg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.kh = fadd double %.sroa.038.184.i, 1.000000e+00
  %i.ki = add nsw i32 %.01885.i, -1               ; 2 uses
  %.not22.i = icmp eq i32 %i.ki, 0
  br i1 %.not22.i, label %bb.t, label %.preheader.i, !llvm.loop !76

_ZL10trace_rgssii.exit:                           ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi i8 [ %i.ax, %bb.e ], [ %i.bb, %bb.f ]
  %i.kj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i)
  %i.kk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kj) ; 0 uses
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
  %7 = alloca %struct.v_t, align 8                ; 4 uses
  %8 = alloca %struct.v_t, align 16               ; 3 uses
  %9 = alloca %struct.v_t, align 8                ; 4 uses
  %10 = alloca %struct.v_t, align 16              ; 3 uses
  %i.a = fmul double %5, 2.000000e+00
  %i.b = icmp sgt i32 %1, 1
  %i.c = select i1 %i.b, i32 %2, i32 1
  %i.d = sext i32 %i.c to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.a, ptr %.sroa.4116.0..sroa_idx, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %5, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.d, ptr %i.f, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = icmp slt i32 %1, 2
  br i1 %i.h, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %2, -9
  %11 = udiv i32 %i.i, 9
  %12 = icmp slt i32 %2, 18
  %13 = select i1 %12, i32 1, i32 %11             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN7basis_tC2ERK3v_t(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.j = fdiv double %5, 3.000000e+00             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.p = add nsw i32 %1, -1                       ; 2 uses
  %i.q = fadd double %5, %i.j                     ; 6 uses
  %i.r = load double, ptr %3, align 8, !tbaa !15, !noalias !77 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !23, !noalias !77 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !24, !noalias !77 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.d

bb.c:                                             ; preds = %_ZNK3v_t4normEv.exit
  %i.y = fadd double %i.dq, f0xBFD657184AE74487
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.p

bb.d:                                             ; preds = %bb.b, %_ZNK3v_t4normEv.exit
  %.033128 = phi i32 [ 0, %bb.b ], [ %i.dr, %_ZNK3v_t4normEv.exit ]
  %.034127 = phi double [ 0.000000e+00, %bb.b ], [ %i.dq, %_ZNK3v_t4normEv.exit ] ; 5 uses
  %.036126 = phi ptr [ %i.g, %bb.b ], [ %i.dp, %_ZNK3v_t4normEv.exit ]
  %i.ab = load <2 x double>, ptr %4, align 8, !tbaa !25, !noalias !80
  %i.ac = fmul <2 x double> %i.ab, splat (double 2.000000e-01)
  %i.ad = load double, ptr %i.k, align 8, !tbaa !24, !noalias !80
  %i.ae = fmul double %i.ad, 2.000000e-01
  %i.af = fcmp olt double %.034127, 0.000000e+00
  br i1 %i.af, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi double [ %.034127, %bb.d ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.ag = fcmp ogt double %.0.lcssa.i, f0x401921FB54411744
  br i1 %i.ag, label %.lr.ph28.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.026.i = phi double [ %i.ah, %.lr.ph.i ], [ %.034127, %bb.d ]
  %i.ah = fadd double %.026.i, f0x401921FB54411744 ; 3 uses
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %.lr.ph.i, label %.preheader.i, !llvm.loop !83

.lr.ph28.i:                                       ; preds = %.preheader.i, %.lr.ph28.i
  %.127.i = phi double [ %i.aj, %.lr.ph28.i ], [ %.0.lcssa.i, %.preheader.i ]
  %i.aj = fadd double %.127.i, f0xC01921FB54411744 ; 3 uses
  %i.ak = fcmp ogt double %i.aj, f0x401921FB54411744
  br i1 %i.ak, label %.lr.ph28.i, label %._crit_edge.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %.lr.ph28.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.0.lcssa.i, %.preheader.i ], [ %i.aj, %.lr.ph28.i ] ; 7 uses
  %i.al = fcmp ogt double %.1.lcssa.i, f0x4012D97C7F713E20
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.am = fsub double f0x401921FB54411744, %.1.lcssa.i
  br label %_ZL7LLVMsind.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.an = fcmp ogt double %.1.lcssa.i, f0x400921FB5496FD7F
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = fadd double %.1.lcssa.i, f0xC00921FB5496FD7F
  br label %_ZL7LLVMsind.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = fcmp ogt double %.1.lcssa.i, f0x3FF921FB54524550
  br i1 %i.ap, label %bb.i, label %_ZL7LLVMsind.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = fsub double f0x400921FB5496FD7F, %.1.lcssa.i
  br label %_ZL7LLVMsind.exit

_ZL7LLVMsind.exit:                                ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %.019.i = phi double [ -1.000000e+00, %bb.e ], [ -1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.h ]
  %.2.i = phi double [ %i.am, %bb.e ], [ %i.ao, %bb.g ], [ %i.aq, %bb.i ], [ %.1.lcssa.i, %bb.h ] ; 6 uses
  %i.ar = fmul double %.2.i, %.2.i
  %i.as = fmul double %.2.i, %i.ar                ; 2 uses
  %i.at = fmul double %.2.i, %i.as
  %i.au = fmul double %.2.i, %i.at
  %i.av = fdiv double %i.as, 6.000000e+00
  %i.aw = fdiv double %i.au, 1.200000e+02
  %i.ax = fsub double %.2.i, %i.av
  %i.ay = fadd double %i.ax, %i.aw
  %i.az = fmul double %.019.i, %i.ay              ; 2 uses
  %i.ba = fcmp ogt double %i.az, 1.000000e+00
  %.3.i = select i1 %i.ba, double 1.000000e+00, double %i.az ; 2 uses
  %i.bb = fcmp olt double %.3.i, -1.000000e+00
  %.4.i = select i1 %i.bb, double -1.000000e+00, double %.3.i ; 2 uses
  %i.bc = load <2 x double>, ptr %i.l, align 8, !tbaa !25, !noalias !85
  %i.bd = insertelement <2 x double> poison, double %.4.i, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = load double, ptr %i.m, align 8, !tbaa !24, !noalias !85
  %i.bh = fmul double %i.bg, %.4.i
  %i.bi = fsub <2 x double> %i.bf, %i.ac
  %i.bj = fsub double %i.bh, %i.ae
  %i.bk = fadd double %.034127, f0x3FF921FB54524550 ; 3 uses
  %i.bl = fcmp olt double %i.bk, 0.000000e+00
  br i1 %i.bl, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %_ZL7LLVMsind.exit
  %.0.lcssa.i.i = phi double [ %i.bk, %_ZL7LLVMsind.exit ], [ %i.bn, %.lr.ph.i.i ] ; 3 uses
  %i.bm = fcmp ogt double %.0.lcssa.i.i, f0x401921FB54411744
  br i1 %i.bm, label %.lr.ph28.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZL7LLVMsind.exit, %.lr.ph.i.i
  %.026.i.i = phi double [ %i.bn, %.lr.ph.i.i ], [ %i.bk, %_ZL7LLVMsind.exit ]
  %i.bn = fadd double %.026.i.i, f0x401921FB54411744 ; 3 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  br i1 %i.bo, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !83

.lr.ph28.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph28.i.i
  %.127.i.i = phi double [ %i.bp, %.lr.ph28.i.i ], [ %.0.lcssa.i.i, %.preheader.i.i ]
  %i.bp = fadd double %.127.i.i, f0xC01921FB54411744 ; 3 uses
  %i.bq = fcmp ogt double %i.bp, f0x401921FB54411744
  br i1 %i.bq, label %.lr.ph28.i.i, label %._crit_edge.i.i, !llvm.loop !84

._crit_edge.i.i:                                  ; preds = %.lr.ph28.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi double [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.bp, %.lr.ph28.i.i ] ; 7 uses
  %i.br = fcmp ogt double %.1.lcssa.i.i, f0x4012D97C7F713E20
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bs = fsub double f0x401921FB54411744, %.1.lcssa.i.i
  br label %_ZL7LLVMcosd.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bt = fcmp ogt double %.1.lcssa.i.i, f0x400921FB5496FD7F
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = fadd double %.1.lcssa.i.i, f0xC00921FB5496FD7F
  br label %_ZL7LLVMcosd.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = fcmp ogt double %.1.lcssa.i.i, f0x3FF921FB54524550
  br i1 %i.bv, label %bb.n, label %_ZL7LLVMcosd.exit

bb.n:                                             ; preds = %bb.m
  %i.bw = fsub double f0x400921FB5496FD7F, %.1.lcssa.i.i
  br label %_ZL7LLVMcosd.exit

_ZL7LLVMcosd.exit:                                ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  %.019.i.i = phi double [ -1.000000e+00, %bb.j ], [ -1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %bb.m ]
  %.2.i.i = phi double [ %i.bs, %bb.j ], [ %i.bu, %bb.l ], [ %i.bw, %bb.n ], [ %.1.lcssa.i.i, %bb.m ] ; 6 uses
  %i.bx = fmul double %.2.i.i, %.2.i.i
  %i.by = fmul double %.2.i.i, %i.bx              ; 2 uses
  %i.bz = fmul double %.2.i.i, %i.by
  %i.ca = fmul double %.2.i.i, %i.bz
  %i.cb = fdiv double %i.by, 6.000000e+00
  %i.cc = fdiv double %i.ca, 1.200000e+02
  %i.cd = fsub double %.2.i.i, %i.cb
  %i.ce = fadd double %i.cd, %i.cc
  %i.cf = fmul double %.019.i.i, %i.ce            ; 2 uses
  %i.cg = fcmp ogt double %i.cf, 1.000000e+00
  %.3.i.i = select i1 %i.cg, double 1.000000e+00, double %i.cf ; 2 uses
  %i.ch = fcmp olt double %.3.i.i, -1.000000e+00
  %.4.i.i = select i1 %i.ch, double -1.000000e+00, double %.3.i.i ; 2 uses
  %i.ci = load double, ptr %i.o, align 8, !tbaa !24, !noalias !88
  %i.cj = fmul double %i.ci, %.4.i.i
  %i.ck = load <2 x double>, ptr %i.n, align 8, !tbaa !25, !noalias !88
  %i.cl = insertelement <2 x double> poison, double %.4.i.i, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x double> %i.ck, %i.cm
  %i.co = fadd <2 x double> %i.bi, %i.cn          ; 3 uses
  %i.cp = fadd double %i.bj, %i.cj                ; 3 uses
  %i.cq = fmul <2 x double> %i.co, %i.co          ; 2 uses
  %shift = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cq, %shift
  %i.cr = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cs = fmul double %i.cp, %i.cp
  %i.ct = fadd double %i.cs, %i.cr                ; 2 uses
  %i.cu = fcmp oeq double %i.ct, +inf
  br i1 %i.cu, label %_ZNK3v_t4normEv.exit, label %.preheader.i.i39

.preheader.i.i39:                                 ; preds = %_ZL7LLVMcosd.exit, %.preheader.i.i39
  %.016.i.i = phi i32 [ %i.db, %.preheader.i.i39 ], [ 100, %_ZL7LLVMcosd.exit ]
  %.01015.i.i = phi double [ %i.cx, %.preheader.i.i39 ], [ 1.000000e+00, %_ZL7LLVMcosd.exit ] ; 3 uses
  %i.cv = fdiv double %i.ct, %.01015.i.i
  %i.cw = fadd double %.01015.i.i, %i.cv
  %i.cx = fmul double %i.cw, 5.000000e-01         ; 3 uses
  %i.cy = fsub double %i.cx, %.01015.i.i
  %i.cz = call double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp ule double %i.cz, f0x3D719799812DEA11
  %i.db = add nsw i32 %.016.i.i, -1               ; 2 uses
  %.not.i.i = icmp eq i32 %i.db, 0
  %or.cond.i.i = select i1 %i.da, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZNK3v_t4normEv.exit, label %.preheader.i.i39, !llvm.loop !14

_ZNK3v_t4normEv.exit:                             ; preds = %.preheader.i.i39, %_ZL7LLVMcosd.exit
  %.1.i.i = phi double [ +inf, %_ZL7LLVMcosd.exit ], [ %i.cx, %.preheader.i.i39 ]
  %i.dc = fdiv double 1.000000e+00, %.1.i.i       ; 2 uses
  %i.dd = fmul double %i.cp, %i.dc                ; 2 uses
  %i.de = fmul double %i.q, %i.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.df = fadd double %i.de, %i.v
  store double %i.df, ptr %i.x, align 8, !tbaa !24, !alias.scope !77
  %i.dg = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.co, %i.dh          ; 3 uses
  %i.dj = extractelement <2 x double> %i.di, i64 0
  %i.dk = fmul double %i.q, %i.dj
  %i.dl = extractelement <2 x double> %i.di, i64 1
  %i.dm = fmul double %i.q, %i.dl
  %i.dn = fadd double %i.r, %i.dk
  %i.do = fadd double %i.t, %i.dm
  store double %i.dn, ptr %7, align 8, !tbaa !15, !alias.scope !77
  store double %i.do, ptr %i.w, align 8, !tbaa !23, !alias.scope !77
  store <2 x double> %i.di, ptr %8, align 16, !tbaa !25
  store double %i.dd, ptr %.sroa.7109.0..sroa_idx, align 16, !tbaa !25
  %i.dp = call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %.036126, i32 noundef %i.p, i32 noundef %13, ptr noundef nonnull byval(%struct.v_t) align 8 %7, ptr noundef nonnull byval(%struct.v_t) align 8 %8, double noundef %i.j) ; 2 uses
  %i.dq = fadd double %.034127, f0x3FF0C152382D7365 ; 2 uses
  %i.dr = add nuw nsw i32 %.033128, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, 6
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !91

bb.o:                                             ; preds = %_ZNK3v_t4normEv.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.aa

bb.p:                                             ; preds = %bb.c, %_ZNK3v_t4normEv.exit72
  %.0131 = phi i32 [ 0, %bb.c ], [ %i.hi, %_ZNK3v_t4normEv.exit72 ]
  %.1130 = phi double [ %i.y, %bb.c ], [ %i.hh, %_ZNK3v_t4normEv.exit72 ] ; 5 uses
  %.137129 = phi ptr [ %i.dp, %bb.c ], [ %i.hg, %_ZNK3v_t4normEv.exit72 ]
  %i.ds = load <2 x double>, ptr %4, align 8, !tbaa !25, !noalias !92
  %i.dt = fmul <2 x double> %i.ds, splat (double 6.000000e-01)
  %i.du = load double, ptr %i.k, align 8, !tbaa !24, !noalias !92
  %i.dv = fmul double %i.du, 6.000000e-01
  %i.dw = fcmp olt double %.1130, 0.000000e+00
  br i1 %i.dw, label %.lr.ph.i50, label %.preheader.i40

.preheader.i40:                                   ; preds = %.lr.ph.i50, %bb.p
  %.0.lcssa.i41 = phi double [ %.1130, %bb.p ], [ %i.dy, %.lr.ph.i50 ] ; 3 uses
  %i.dx = fcmp ogt double %.0.lcssa.i41, f0x401921FB54411744
  br i1 %i.dx, label %.lr.ph28.i48, label %._crit_edge.i42

.lr.ph.i50:                                       ; preds = %bb.p, %.lr.ph.i50
  %.026.i51 = phi double [ %i.dy, %.lr.ph.i50 ], [ %.1130, %bb.p ]
  %i.dy = fadd double %.026.i51, f0x401921FB54411744 ; 3 uses
  %i.dz = fcmp olt double %i.dy, 0.000000e+00
  br i1 %i.dz, label %.lr.ph.i50, label %.preheader.i40, !llvm.loop !83

.lr.ph28.i48:                                     ; preds = %.preheader.i40, %.lr.ph28.i48
  %.127.i49 = phi double [ %i.ea, %.lr.ph28.i48 ], [ %.0.lcssa.i41, %.preheader.i40 ]
  %i.ea = fadd double %.127.i49, f0xC01921FB54411744 ; 3 uses
  %i.eb = fcmp ogt double %i.ea, f0x401921FB54411744
  br i1 %i.eb, label %.lr.ph28.i48, label %._crit_edge.i42, !llvm.loop !84

._crit_edge.i42:                                  ; preds = %.lr.ph28.i48, %.preheader.i40
  %.1.lcssa.i43 = phi double [ %.0.lcssa.i41, %.preheader.i40 ], [ %i.ea, %.lr.ph28.i48 ] ; 7 uses
  %i.ec = fcmp ogt double %.1.lcssa.i43, f0x4012D97C7F713E20
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i42
  %i.ed = fsub double f0x401921FB54411744, %.1.lcssa.i43
  br label %_ZL7LLVMsind.exit52

bb.r:                                             ; preds = %._crit_edge.i42
  %i.ee = fcmp ogt double %.1.lcssa.i43, f0x400921FB5496FD7F
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ef = fadd double %.1.lcssa.i43, f0xC00921FB5496FD7F
  br label %_ZL7LLVMsind.exit52

bb.t:                                             ; preds = %bb.r
  %i.eg = fcmp ogt double %.1.lcssa.i43, f0x3FF921FB54524550
  br i1 %i.eg, label %bb.u, label %_ZL7LLVMsind.exit52

bb.u:                                             ; preds = %bb.t
  %i.eh = fsub double f0x400921FB5496FD7F, %.1.lcssa.i43
  br label %_ZL7LLVMsind.exit52

_ZL7LLVMsind.exit52:                              ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %.019.i44 = phi double [ -1.000000e+00, %bb.q ], [ -1.000000e+00, %bb.s ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %bb.t ]
  %.2.i45 = phi double [ %i.ed, %bb.q ], [ %i.ef, %bb.s ], [ %i.eh, %bb.u ], [ %.1.lcssa.i43, %bb.t ] ; 6 uses
  %i.ei = fmul double %.2.i45, %.2.i45
  %i.ej = fmul double %.2.i45, %i.ei              ; 2 uses
  %i.ek = fmul double %.2.i45, %i.ej
  %i.el = fmul double %.2.i45, %i.ek
  %i.em = fdiv double %i.ej, 6.000000e+00
  %i.en = fdiv double %i.el, 1.200000e+02
  %i.eo = fsub double %.2.i45, %i.em
  %i.ep = fadd double %i.eo, %i.en
  %i.eq = fmul double %.019.i44, %i.ep            ; 2 uses
  %i.er = fcmp ogt double %i.eq, 1.000000e+00
  %.3.i46 = select i1 %i.er, double 1.000000e+00, double %i.eq ; 2 uses
  %i.es = fcmp olt double %.3.i46, -1.000000e+00
  %.4.i47 = select i1 %i.es, double -1.000000e+00, double %.3.i46 ; 2 uses
  %i.et = load <2 x double>, ptr %i.l, align 8, !tbaa !25, !noalias !95
  %i.eu = insertelement <2 x double> poison, double %.4.i47, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.et, %i.ev
  %i.ex = load double, ptr %i.m, align 8, !tbaa !24, !noalias !95
  %i.ey = fmul double %i.ex, %.4.i47
  %i.ez = fadd <2 x double> %i.dt, %i.ew
  %i.fa = fadd double %i.dv, %i.ey
  %i.fb = fadd double %.1130, f0x3FF921FB54524550 ; 3 uses
  %i.fc = fcmp olt double %i.fb, 0.000000e+00
  br i1 %i.fc, label %.lr.ph.i.i63, label %.preheader.i.i53

.preheader.i.i53:                                 ; preds = %.lr.ph.i.i63, %_ZL7LLVMsind.exit52
  %.0.lcssa.i.i54 = phi double [ %i.fb, %_ZL7LLVMsind.exit52 ], [ %i.fe, %.lr.ph.i.i63 ] ; 3 uses
  %i.fd = fcmp ogt double %.0.lcssa.i.i54, f0x401921FB54411744
  br i1 %i.fd, label %.lr.ph28.i.i61, label %._crit_edge.i.i55

.lr.ph.i.i63:                                     ; preds = %_ZL7LLVMsind.exit52, %.lr.ph.i.i63
  %.026.i.i64 = phi double [ %i.fe, %.lr.ph.i.i63 ], [ %i.fb, %_ZL7LLVMsind.exit52 ]
  %i.fe = fadd double %.026.i.i64, f0x401921FB54411744 ; 3 uses
  %i.ff = fcmp olt double %i.fe, 0.000000e+00
  br i1 %i.ff, label %.lr.ph.i.i63, label %.preheader.i.i53, !llvm.loop !83

.lr.ph28.i.i61:                                   ; preds = %.preheader.i.i53, %.lr.ph28.i.i61
  %.127.i.i62 = phi double [ %i.fg, %.lr.ph28.i.i61 ], [ %.0.lcssa.i.i54, %.preheader.i.i53 ]
  %i.fg = fadd double %.127.i.i62, f0xC01921FB54411744 ; 3 uses
  %i.fh = fcmp ogt double %i.fg, f0x401921FB54411744
  br i1 %i.fh, label %.lr.ph28.i.i61, label %._crit_edge.i.i55, !llvm.loop !84

._crit_edge.i.i55:                                ; preds = %.lr.ph28.i.i61, %.preheader.i.i53
  %.1.lcssa.i.i56 = phi double [ %.0.lcssa.i.i54, %.preheader.i.i53 ], [ %i.fg, %.lr.ph28.i.i61 ] ; 7 uses
  %i.fi = fcmp ogt double %.1.lcssa.i.i56, f0x4012D97C7F713E20
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i55
  %i.fj = fsub double f0x401921FB54411744, %.1.lcssa.i.i56
  br label %_ZL7LLVMcosd.exit65

bb.w:                                             ; preds = %._crit_edge.i.i55
  %i.fk = fcmp ogt double %.1.lcssa.i.i56, f0x400921FB5496FD7F
  br i1 %i.fk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fl = fadd double %.1.lcssa.i.i56, f0xC00921FB5496FD7F
  br label %_ZL7LLVMcosd.exit65

bb.y:                                             ; preds = %bb.w
  %i.fm = fcmp ogt double %.1.lcssa.i.i56, f0x3FF921FB54524550
  br i1 %i.fm, label %bb.z, label %_ZL7LLVMcosd.exit65

bb.z:                                             ; preds = %bb.y
  %i.fn = fsub double f0x400921FB5496FD7F, %.1.lcssa.i.i56
  br label %_ZL7LLVMcosd.exit65

_ZL7LLVMcosd.exit65:                              ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %.019.i.i57 = phi double [ -1.000000e+00, %bb.v ], [ -1.000000e+00, %bb.x ], [ 1.000000e+00, %bb.z ], [ 1.000000e+00, %bb.y ]
  %.2.i.i58 = phi double [ %i.fj, %bb.v ], [ %i.fl, %bb.x ], [ %i.fn, %bb.z ], [ %.1.lcssa.i.i56, %bb.y ] ; 6 uses
  %i.fo = fmul double %.2.i.i58, %.2.i.i58
  %i.fp = fmul double %.2.i.i58, %i.fo            ; 2 uses
  %i.fq = fmul double %.2.i.i58, %i.fp
  %i.fr = fmul double %.2.i.i58, %i.fq
  %i.fs = fdiv double %i.fp, 6.000000e+00
  %i.ft = fdiv double %i.fr, 1.200000e+02
  %i.fu = fsub double %.2.i.i58, %i.fs
  %i.fv = fadd double %i.fu, %i.ft
  %i.fw = fmul double %.019.i.i57, %i.fv          ; 2 uses
  %i.fx = fcmp ogt double %i.fw, 1.000000e+00
  %.3.i.i59 = select i1 %i.fx, double 1.000000e+00, double %i.fw ; 2 uses
  %i.fy = fcmp olt double %.3.i.i59, -1.000000e+00
  %.4.i.i60 = select i1 %i.fy, double -1.000000e+00, double %.3.i.i59 ; 2 uses
  %i.fz = load double, ptr %i.o, align 8, !tbaa !24, !noalias !98
  %i.ga = fmul double %i.fz, %.4.i.i60
  %i.gb = load <2 x double>, ptr %i.n, align 8, !tbaa !25, !noalias !98
  %i.gc = insertelement <2 x double> poison, double %.4.i.i60, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x double> %i.gb, %i.gd
  %i.gf = fadd <2 x double> %i.ez, %i.ge          ; 3 uses
  %i.gg = fadd double %i.fa, %i.ga                ; 3 uses
  %i.gh = fmul <2 x double> %i.gf, %i.gf          ; 2 uses
  %shift185 = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop186 = fadd <2 x double> %i.gh, %shift185
  %i.gi = extractelement <2 x double> %foldExtExtBinop186, i64 0
  %i.gj = fmul double %i.gg, %i.gg
  %i.gk = fadd double %i.gj, %i.gi                ; 2 uses
  %i.gl = fcmp oeq double %i.gk, +inf
  br i1 %i.gl, label %_ZNK3v_t4normEv.exit72, label %.preheader.i.i66

.preheader.i.i66:                                 ; preds = %_ZL7LLVMcosd.exit65, %.preheader.i.i66
  %.016.i.i67 = phi i32 [ %i.gs, %.preheader.i.i66 ], [ 100, %_ZL7LLVMcosd.exit65 ]
  %.01015.i.i68 = phi double [ %i.go, %.preheader.i.i66 ], [ 1.000000e+00, %_ZL7LLVMcosd.exit65 ] ; 3 uses
  %i.gm = fdiv double %i.gk, %.01015.i.i68
  %i.gn = fadd double %.01015.i.i68, %i.gm
  %i.go = fmul double %i.gn, 5.000000e-01         ; 3 uses
  %i.gp = fsub double %i.go, %.01015.i.i68
  %i.gq = call double @llvm.fabs.f64(double %i.gp)
  %i.gr = fcmp ule double %i.gq, f0x3D719799812DEA11
  %i.gs = add nsw i32 %.016.i.i67, -1             ; 2 uses
  %.not.i.i69 = icmp eq i32 %i.gs, 0
  %or.cond.i.i70 = select i1 %i.gr, i1 true, i1 %.not.i.i69
  br i1 %or.cond.i.i70, label %_ZNK3v_t4normEv.exit72, label %.preheader.i.i66, !llvm.loop !14

_ZNK3v_t4normEv.exit72:                           ; preds = %.preheader.i.i66, %_ZL7LLVMcosd.exit65
  %.1.i.i71 = phi double [ +inf, %_ZL7LLVMcosd.exit65 ], [ %i.go, %.preheader.i.i66 ]
  %i.gt = fdiv double 1.000000e+00, %.1.i.i71     ; 2 uses
  %i.gu = fmul double %i.gg, %i.gt                ; 2 uses
  %i.gv = fmul double %i.q, %i.gu
  %i.gw = fadd double %i.gv, %i.v
  store double %i.gw, ptr %i.aa, align 8, !tbaa !24, !alias.scope !101
  %i.gx = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x double> %i.gf, %i.gy          ; 3 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0
  %i.hb = fmul double %i.q, %i.ha
  %i.hc = extractelement <2 x double> %i.gz, i64 1
  %i.hd = fmul double %i.q, %i.hc
  %i.he = fadd double %i.r, %i.hb
  %i.hf = fadd double %i.t, %i.hd
  store double %i.he, ptr %9, align 8, !tbaa !15, !alias.scope !101
  store double %i.hf, ptr %i.z, align 8, !tbaa !23, !alias.scope !101
  store <2 x double> %i.gz, ptr %10, align 16, !tbaa !25
  store double %i.gu, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !25
  %i.hg = call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %.137129, i32 noundef %i.p, i32 noundef %13, ptr noundef nonnull byval(%struct.v_t) align 8 %9, ptr noundef nonnull byval(%struct.v_t) align 8 %10, double noundef %i.j) ; 2 uses
  %i.hh = fadd double %.1130, f0x4000C152382D7365
  %i.hi = add nuw nsw i32 %.0131, 1               ; 2 uses
  %exitcond144.not = icmp eq i32 %i.hi, 3
  br i1 %exitcond144.not, label %bb.o, label %bb.p, !llvm.loop !104

bb.aa:                                            ; preds = %bb.a, %bb.o
  %.035 = phi ptr [ %i.hg, %bb.o ], [ %i.g, %bb.a ]
  ret ptr %.035
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7basis_tC2ERK3v_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !15, !noalias !105 ; 3 uses
  %i.b = fmul double %i.a, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !23, !noalias !105 ; 3 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = fadd double %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !24, !noalias !105 ; 3 uses
  %i.i = fmul double %i.h, %i.h
  %i.j = fadd double %i.f, %i.i                   ; 2 uses
  %i.k = fcmp oeq double %i.j, +inf
  br i1 %i.k, label %_ZNK3v_t4normEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.016.i.i = phi i32 [ %i.r, %.preheader.i.i ], [ 100, %bb.a ]
  %.01015.i.i = phi double [ %i.n, %.preheader.i.i ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %i.l = fdiv double %i.j, %.01015.i.i
  %i.m = fadd double %.01015.i.i, %i.l
  %i.n = fmul double %i.m, 5.000000e-01           ; 3 uses
  %i.o = fsub double %i.n, %.01015.i.i
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ule double %i.p, f0x3D719799812DEA11
  %i.r = add nsw i32 %.016.i.i, -1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.r, 0
  %or.cond.i.i = select i1 %i.q, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZNK3v_t4normEv.exit, label %.preheader.i.i, !llvm.loop !14

_ZNK3v_t4normEv.exit:                             ; preds = %.preheader.i.i, %bb.a
  %.1.i.i = phi double [ +inf, %bb.a ], [ %i.n, %.preheader.i.i ]
  %i.s = fdiv double 1.000000e+00, %.1.i.i        ; 3 uses
  %i.t = fmul double %i.a, %i.s                   ; 12 uses
  %i.u = fmul double %i.d, %i.s                   ; 12 uses
  %i.v = fmul double %i.h, %i.s                   ; 12 uses
  %i.w = fmul double %i.t, %i.t                   ; 3 uses
  %i.x = fcmp une double %i.w, 1.000000e+00
  %i.y = fmul double %i.u, %i.u                   ; 3 uses
  %i.z = fcmp une double %i.y, 1.000000e+00
  %i.aa = and i1 %i.x, %i.z
  %i.ab = fmul double %i.v, %i.v                  ; 3 uses
  %i.ac = fcmp une double %i.ab, 1.000000e+00
  %i.ad = and i1 %i.ac, %i.aa
  br i1 %i.ad, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZNK3v_t4normEv.exit
  %i.ae = fcmp ogt double %i.y, %i.w
  br i1 %i.ae, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.af = fcmp ogt double %i.y, %i.ab
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = fneg double %i.u
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ah = fneg double %i.v
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ai = fcmp ogt double %i.ab, %i.w
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = fneg double %i.v
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = fneg double %i.t
  br label %bb.i

bb.i:                                             ; preds = %_ZNK3v_t4normEv.exit, %bb.e, %bb.d, %bb.h, %bb.g
  %i.al = phi double [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.ak, %bb.h ], [ %i.t, %bb.g ], [ %i.v, %_ZNK3v_t4normEv.exit ] ; 2 uses
  %i.am = phi double [ %i.u, %bb.e ], [ %i.ag, %bb.d ], [ %i.u, %bb.h ], [ %i.u, %bb.g ], [ %i.t, %_ZNK3v_t4normEv.exit ] ; 2 uses
  %i.an = phi double [ %i.ah, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %bb.h ], [ %i.aj, %bb.g ], [ %i.u, %_ZNK3v_t4normEv.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.t, ptr %0, align 8, !tbaa !25
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.u, ptr %.sroa.8.0..sroa_idx13, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.v, ptr %.sroa.12.0..sroa_idx17, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = fmul double %i.u, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = fmul double %i.v, %i.am
  %i.au = fsub double %i.ar, %i.at                ; 3 uses
  %i.av = fmul double %i.v, %i.al
  %i.aw = fmul double %i.t, %i.an
  %i.ax = fsub double %i.av, %i.aw                ; 3 uses
  %i.ay = fmul double %i.t, %i.am
  %i.az = fmul double %i.u, %i.al
  %i.ba = fsub double %i.ay, %i.az                ; 3 uses
  store double %i.au, ptr %i.ap, align 8, !tbaa !25
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ax, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !25
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ba, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !25
  %i.bb = fmul double %i.u, %i.ba
  %i.bc = fmul double %i.v, %i.ax
  %i.bd = fsub double %i.bb, %i.bc
  %i.be = fmul double %i.v, %i.au
  %i.bf = fmul double %i.t, %i.ba
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = fmul double %i.t, %i.ax
  %i.bi = fmul double %i.u, %i.au
  %i.bj = fsub double %i.bh, %i.bi
  store double %i.bd, ptr %i.ao, align 8, !tbaa !25
  store double %i.bg, ptr %i.as, align 8, !tbaa !25
  store double %i.bj, ptr %i.aq, align 8, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_sphereflake.cpp() #8 section ".text.startup" {
bb.a:
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %bb.a
  %.016.i.i.i = phi i32 [ %i.g, %.preheader.i.i.i ], [ 100, %bb.a ]
  %.01015.i.i.i = phi double [ %i.c, %.preheader.i.i.i ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %i.a = fdiv double f0x3FF7B851EB851EB9, %.01015.i.i.i
  %i.b = fadd double %.01015.i.i.i, %i.a
  %i.c = fmul double %i.b, 5.000000e-01           ; 3 uses
  %i.d = fsub double %i.c, %.01015.i.i.i
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp ule double %i.e, f0x3D719799812DEA11
  %i.g = add nsw i32 %.016.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  %or.cond.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %__cxx_global_var_init.exit, label %.preheader.i.i.i, !llvm.loop !14

__cxx_global_var_init.exit:                       ; preds = %.preheader.i.i.i
  %i.h = fdiv double 1.000000e+00, %i.c           ; 2 uses
  %i.i = fmul double %i.h, 9.000000e-01
  %i.j = insertelement <2 x double> poison, double %i.h, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, <double -5.000000e-01, double -6.500000e-01>
  store <2 x double> %i.l, ptr @_ZL5light, align 16, !tbaa !25, !alias.scope !108
  store double %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL5light, i64 16), align 16, !tbaa !24, !alias.scope !108
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZL5light) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{null}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTS3v_t", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"double", !6, i64 0}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_ZNK3v_tmlEd: argument 0"}
!20 = distinct !{!20, !"_ZNK3v_tmlEd"}
!21 = distinct !{!21, !22, !"_ZNK3v_t4normEv: argument 0"}
!22 = distinct !{!22, !"_ZNK3v_t4normEv"}
!23 = !{!16, !17, i64 8}
!24 = !{!16, !17, i64 16}
!25 = !{!17, !17, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !7, i64 0}
!28 = !{!29, !42, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !39, i64 216, !6, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !33, i64 28, !33, i64 32, !34, i64 40, !35, i64 48, !6, i64 64, !5, i64 192, !36, i64 200, !37, i64 208}
!31 = !{!"long", !6, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !31, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!39 = !{!"p1 _ZTSSo", !10, i64 0}
!40 = !{!"bool", !6, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!45 = !{!46, !6, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !40, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!49 = !{!"p1 int", !10, i64 0}
!50 = !{!"p1 short", !10, i64 0}
!51 = !{!6, !6, i64 0}
!52 = distinct !{null, null, null, null, null}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK3v_tplERKS_: argument 0"}
!55 = distinct !{!55, !"_ZNK3v_tplERKS_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK3v_tmiERKS_: argument 0"}
!58 = distinct !{!58, !"_ZNK3v_tmiERKS_"}
!59 = !{!60, !17, i64 24}
!60 = !{!"_ZTS8sphere_t", !16, i64 0, !17, i64 24}
!61 = !{!62, !31, i64 64}
!62 = !{!"_ZTS6node_t", !60, i64 0, !60, i64 32, !31, i64 64}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNK3v_tmiERKS_: argument 0"}
!65 = distinct !{!65, !"_ZNK3v_tmiERKS_"}
!66 = distinct !{!66, !13}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK3v_tmiERKS_: argument 0"}
!69 = distinct !{!69, !"_ZNK3v_tmiERKS_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK3v_tmiERKS_: argument 0"}
!72 = distinct !{!72, !"_ZNK3v_tmiERKS_"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK3v_tplERKS_: argument 0"}
!79 = distinct !{!79, !"_ZNK3v_tplERKS_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK3v_tmlEd: argument 0"}
!82 = distinct !{!82, !"_ZNK3v_tmlEd"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK3v_tmlEd: argument 0"}
!87 = distinct !{!87, !"_ZNK3v_tmlEd"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK3v_tmlEd: argument 0"}
!90 = distinct !{!90, !"_ZNK3v_tmlEd"}
!91 = distinct !{!91, !13}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNK3v_tmlEd: argument 0"}
!94 = distinct !{!94, !"_ZNK3v_tmlEd"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK3v_tmlEd: argument 0"}
!97 = distinct !{!97, !"_ZNK3v_tmlEd"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNK3v_tmlEd: argument 0"}
!100 = distinct !{!100, !"_ZNK3v_tmlEd"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK3v_tplERKS_: argument 0"}
!103 = distinct !{!103, !"_ZNK3v_tplERKS_"}
!104 = distinct !{!104, !13}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK3v_t4normEv: argument 0"}
!107 = distinct !{!107, !"_ZNK3v_t4normEv"}
!108 = !{!109, !111}
!109 = distinct !{!109, !110, !"_ZNK3v_tmlEd: argument 0"}
!110 = distinct !{!110, !"_ZNK3v_tmlEd"}
!111 = distinct !{!111, !112, !"_ZNK3v_t4normEv: argument 0"}
!112 = distinct !{!112, !"_ZNK3v_t4normEv"}
end_hunk_0
