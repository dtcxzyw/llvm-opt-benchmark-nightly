Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/make_map?download=true
inline.NumInlined: 102
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@make_map_from_rectangle_groups:bb.a
  %i.ia = getelementptr [8 x i8], ptr %3, i64 %i.hn
  %i.ib = getelementptr i8, ptr %i.ia, i64 8      ; 3 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !24
  %i.id = load <2 x double>, ptr %i.hx, align 8, !tbaa !24 ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0
  %i.if = fdiv double %i.ie, %i.ht                ; 2 uses
  %i.ig = fmul <2 x double> %i.id, splat (double 5.000000e-01) ; 2 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0
  %i.ii = fsub double %i.hz, %i.ih                ; 2 uses
  %i.ij = extractelement <2 x double> %i.ig, i64 1
  %i.ik = fadd double %i.ic, %i.ij                ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.ii, double %i.ik, ptr noundef %i.d)
  %i.il = fadd double %i.ht, -1.000000e+00        ; 3 uses
  %i.im = fcmp ogt double %i.il, 0.000000e+00
  br i1 %i.im, label %.lr.ph290, label %.loopexit267.critedge

._crit_edge291:                                   ; preds = %.lr.ph290
  %i.in = load double, ptr %i.hy, align 8, !tbaa !24
  %i.io = load double, ptr %i.ib, align 8, !tbaa !24
  %i.ip = load <2 x double>, ptr %i.hx, align 8, !tbaa !24
  %i.iq = fmul <2 x double> %i.ip, splat (double 5.000000e-01) ; 2 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 0
  %i.is = fadd double %i.in, %i.ir                ; 2 uses
  %i.it = extractelement <2 x double> %i.iq, i64 1
  %i.iu = fsub double %i.io, %i.it                ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.is, double %i.iu, ptr noundef %i.d)
  br label %.lr.ph296

.lr.ph290:                                        ; preds = %bb.x, %.lr.ph290
  %.0217288 = phi double [ %i.iz, %.lr.ph290 ], [ 0.000000e+00, %bb.x ]
  %.sroa.0263.0287 = phi double [ %i.iv, %.lr.ph290 ], [ %i.ii, %bb.x ]
  %i.iv = fadd double %i.if, %.sroa.0263.0287     ; 2 uses
  %i.iw = call double @drand() #19
  %i.ix = fsub double 5.000000e-01, %i.iw
  %i.iy = call double @llvm.fmuladd.f64(double %i.ix, double %.sroa.6.0, double %i.ik)
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.iv, double %i.iy, ptr noundef %i.d)
  %i.iz = fadd double %.0217288, 1.000000e+00     ; 2 uses
  %i.ja = fcmp olt double %i.iz, %i.il
  br i1 %i.ja, label %.lr.ph290, label %._crit_edge291, !llvm.loop !80

.lr.ph296:                                        ; preds = %._crit_edge291, %.lr.ph296
  %.0216294 = phi double [ %i.jf, %.lr.ph296 ], [ 0.000000e+00, %._crit_edge291 ]
  %.sroa.0263.1293 = phi double [ %i.jb, %.lr.ph296 ], [ %i.is, %._crit_edge291 ]
  %i.jb = fsub double %.sroa.0263.1293, %i.if     ; 2 uses
  %i.jc = call double @drand() #19
  %i.jd = fsub double 5.000000e-01, %i.jc
  %i.je = call double @llvm.fmuladd.f64(double %i.jd, double %.sroa.6.0, double %i.iu)
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.jb, double %i.je, ptr noundef %i.d)
  %i.jf = fadd double %.0216294, 1.000000e+00     ; 2 uses
  %i.jg = fcmp olt double %i.jf, %i.il
  br i1 %i.jg, label %.lr.ph296, label %.loopexit267, !llvm.loop !81

.loopexit267.critedge:                            ; preds = %bb.x
  %i.jh = load double, ptr %i.hy, align 8, !tbaa !24
  %i.ji = load double, ptr %i.ib, align 8, !tbaa !24
  %i.jj = load <2 x double>, ptr %i.hx, align 8, !tbaa !24
  %i.jk = fmul <2 x double> %i.jj, splat (double 5.000000e-01) ; 2 uses
  %i.jl = extractelement <2 x double> %i.jk, i64 0
  %i.jm = fadd double %i.jh, %i.jl
  %i.jn = extractelement <2 x double> %i.jk, i64 1
  %i.jo = fsub double %i.ji, %i.jn
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.jm, double %i.jo, ptr noundef %i.d)
  br label %.loopexit267

.loopexit267:                                     ; preds = %.lr.ph296, %.loopexit267.critedge, %.split286
  %i.jp = fcmp ogt double %i.hv, 0.000000e+00
  br i1 %i.jp, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.loopexit267
  %i.jq = add nsw i64 %i.hn, 1                    ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jq
  %i.js = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hn ; 3 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !24
  %i.ju = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hn ; 3 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.jq ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !24
  %i.jx = load double, ptr %i.jr, align 8, !tbaa !24
  %i.jy = load <2 x double>, ptr %i.ju, align 8, !tbaa !24
  %i.jz = fdiv double %i.jx, %i.hv                ; 2 uses
  %i.ka = fmul <2 x double> %i.jy, splat (double 5.000000e-01) ; 2 uses
  %i.kb = extractelement <2 x double> %i.ka, i64 0
  %i.kc = fsub double %i.jt, %i.kb                ; 2 uses
  %i.kd = extractelement <2 x double> %i.ka, i64 1
  %i.ke = fsub double %i.jw, %i.kd                ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.kc, double %i.ke, ptr noundef %i.d)
  %i.kf = fadd double %i.hv, -1.000000e+00        ; 3 uses
  %i.kg = fcmp ogt double %i.kf, 0.000000e+00
  br i1 %i.kg, label %.lr.ph300, label %.loopexit.critedge

._crit_edge301:                                   ; preds = %.lr.ph300
  %i.kh = load double, ptr %i.js, align 8, !tbaa !24
  %i.ki = load double, ptr %i.jv, align 8, !tbaa !24
  %i.kj = load <2 x double>, ptr %i.ju, align 8, !tbaa !24
  %i.kk = fmul <2 x double> %i.kj, splat (double 5.000000e-01) ; 2 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0
  %i.km = fadd double %i.kh, %i.kl                ; 2 uses
  %i.kn = extractelement <2 x double> %i.kk, i64 1
  %i.ko = fadd double %i.ki, %i.kn                ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.km, double %i.ko, ptr noundef %i.d)
  br label %.lr.ph306

.lr.ph300:                                        ; preds = %bb.y, %.lr.ph300
  %.0215298 = phi double [ %i.kt, %.lr.ph300 ], [ 0.000000e+00, %bb.y ]
  %.sroa.20.0297 = phi double [ %i.ks, %.lr.ph300 ], [ %i.ke, %bb.y ]
  %i.kp = call double @drand() #19
  %i.kq = fsub double 5.000000e-01, %i.kp
  %i.kr = call double @llvm.fmuladd.f64(double %i.kq, double %.sroa.0.0, double %i.kc)
  %i.ks = fadd double %i.jz, %.sroa.20.0297       ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.kr, double %i.ks, ptr noundef %i.d)
  %i.kt = fadd double %.0215298, 1.000000e+00     ; 2 uses
  %i.ku = fcmp olt double %i.kt, %i.kf
  br i1 %i.ku, label %.lr.ph300, label %._crit_edge301, !llvm.loop !82

.lr.ph306:                                        ; preds = %._crit_edge301, %.lr.ph306
  %.0304 = phi double [ %i.kz, %.lr.ph306 ], [ 0.000000e+00, %._crit_edge301 ]
  %.sroa.20.1303 = phi double [ %i.ky, %.lr.ph306 ], [ %i.ko, %._crit_edge301 ]
  %i.kv = call double @drand() #19
  %i.kw = fsub double 5.000000e-01, %i.kv
  %i.kx = call double @llvm.fmuladd.f64(double %i.kw, double %.sroa.0.0, double %i.km)
  %i.ky = fsub double %.sroa.20.1303, %i.jz       ; 2 uses
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.kx, double %i.ky, ptr noundef %i.d)
  %i.kz = fadd double %.0304, 1.000000e+00        ; 2 uses
  %i.la = fcmp olt double %i.kz, %i.kf
  br i1 %i.la, label %.lr.ph306, label %.loopexit, !llvm.loop !83

.loopexit.critedge:                               ; preds = %bb.y
  %i.lb = load <2 x double>, ptr %i.ju, align 8, !tbaa !24
  %i.lc = fmul <2 x double> %i.lb, splat (double 5.000000e-01)
  %i.ld = load <2 x double>, ptr %i.js, align 8, !tbaa !24
  %i.le = fadd <2 x double> %i.ld, %i.lc          ; 2 uses
  %i.lf = extractelement <2 x double> %i.le, i64 0
  %i.lg = extractelement <2 x double> %i.le, i64 1
  call fastcc void @add_point(ptr noundef %i.b, i32 noundef %i.hm, ptr noundef %i.a, ptr noundef %i.c, double %i.lf, double %i.lg, ptr noundef %i.d)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph306, %.loopexit.critedge, %bb.w, %.loopexit267
  %i.lh = load i32, ptr %i.b, align 4, !tbaa !22  ; 2 uses
  %i.li = sub nsw i32 %i.lh, %1
  store i32 %i.li, ptr %9, align 4, !tbaa !22
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %._crit_edge310.loopexit, label %bb.w, !llvm.loop !84

._crit_edge310.loopexit:                          ; preds = %.loopexit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  %.pre350 = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge310

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit, %bb.v
  %i.lj = phi ptr [ %.pre350, %._crit_edge310.loopexit ], [ %i.du, %bb.v ] ; 2 uses
  %i.lk = phi ptr [ %.pre, %._crit_edge310.loopexit ], [ %i.cz, %bb.v ] ; 2 uses
  %i.ll = phi i32 [ %i.lh, %._crit_edge310.loopexit ], [ 0, %bb.v ]
  %i.lm = call fastcc i32 @make_map_internal(i1 noundef zeroext %0, i32 noundef %i.ll, i32 noundef %2, ptr noundef %i.lk, ptr noundef %i.lj, ptr noundef %6, double noundef %7, i32 noundef %8, i32 noundef %10, double noundef %.0219, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19)
  call void @free(ptr noundef %i.lj) #19
  call void @free(ptr noundef %i.lk) #19
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge310, %bb.f
  %.0218 = phi i32 [ %i.lm, %._crit_edge310 ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0218
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @make_map_internal(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef captures(address) %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, i32 noundef %7, i32 noundef %8, double noundef %9, ptr nofree noundef writeonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef captures(none) %12, ptr nofree noundef captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15, ptr nofree noundef writeonly captures(none) %16, i32 noundef %17) unnamed_addr #0 {
.preheader573:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 17 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %i.m = alloca [2 x double], align 16            ; 3 uses
  %i.n = alloca double, align 8                   ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca [2 x double], align 16            ; 7 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  %i.r = load <2 x double>, ptr %3, align 8, !tbaa !24 ; 6 uses
  %i.s = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.s, label %.preheader572.preheader, label %._crit_edge

.preheader572.preheader:                          ; preds = %.preheader573
  %i.t = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ugt i32 %1, 3
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond1309 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1309, label %vector.ph, label %.preheader572.preheader1364

vector.ph:                                        ; preds = %.preheader572.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %broadcast.splat1107 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %24, %vector.body ] ; 2 uses
  %vec.phi1108 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %25, %vector.body ] ; 2 uses
  %vec.phi1109 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %20, %vector.body ] ; 2 uses
  %vec.phi1110 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %21, %vector.body ] ; 2 uses
  %vec.phi.a = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.aa, %vector.body ] ; 2 uses
  %vec.phi1108.a = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ab, %vector.body ] ; 2 uses
  %vec.phi1109.a = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.w, %vector.body ] ; 2 uses
  %vec.phi1110.a = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.x, %vector.body ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %3, i64 %index ; 4 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !24
  %wide.load.a = load <2 x double>, ptr %18, align 8, !tbaa !24
  %19 = freeze <2 x double> %wide.load            ; 3 uses
  %i.v = freeze <2 x double> %wide.load.a         ; 3 uses
  %20 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1109, <2 x double> %19) ; 2 uses
  %21 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1110, <2 x double> %i.v) ; 2 uses
  %i.w = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1109.a, <2 x double> %19) ; 2 uses
  %i.x = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1110.a, <2 x double> %i.v) ; 2 uses
  %22 = getelementptr i8, ptr %i.u, i64 8
  %i.y = getelementptr i8, ptr %i.u, i64 24
  %wide.load1116 = load <2 x double>, ptr %22, align 8, !tbaa !24
  %wide.load1111 = load <2 x double>, ptr %i.y, align 8, !tbaa !24
  %23 = freeze <2 x double> %wide.load1116        ; 3 uses
  %i.z = freeze <2 x double> %wide.load1111       ; 3 uses
  %24 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %23) ; 2 uses
  %25 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1108, <2 x double> %i.z) ; 2 uses
  %i.aa = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi.a, <2 x double> %23) ; 2 uses
  %i.ab = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1108.a, <2 x double> %i.z) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %26 = fcmp uno <2 x double> %23, %19
  %i.ac = fcmp uno <2 x double> %i.z, %i.v
  %27 = or <2 x i1> %26, %i.ac
  %i.ad = bitcast <2 x i1> %27 to i2
  %i.ae = icmp ne i2 %i.ad, 0                     ; 11 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %28 = select i1 %i.ae, <2 x double> %vec.phi, <2 x double> %24
  %29 = select i1 %i.ae, <2 x double> %vec.phi1108, <2 x double> %25
  %30 = select i1 %i.ae, <2 x double> %vec.phi1109, <2 x double> %20
  %31 = select i1 %i.ae, <2 x double> %vec.phi1110, <2 x double> %21
  %i.ah = select i1 %i.ae, <2 x double> %vec.phi.a, <2 x double> %i.aa
  %i.ai = select i1 %i.ae, <2 x double> %vec.phi1108.a, <2 x double> %i.ab
  %i.aj = select i1 %i.ae, <2 x double> %vec.phi1109.a, <2 x double> %i.w
  %i.ak = select i1 %i.ae, <2 x double> %vec.phi1110.a, <2 x double> %i.x
  %i.al = select i1 %i.ae, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %28, <2 x double> %29)
  %i.am = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax)
  %rdx.minmax1118 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %30, <2 x double> %31)
  %i.an = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax1118)
  %rdx.minmax1119 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ah, <2 x double> %i.ai)
  %i.ao = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax1119)
  %rdx.minmax1120 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.aj, <2 x double> %i.ak)
  %i.ap = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax1120)
  %cmp.n = icmp ne i64 %n.vec, %wide.trip.count
  %.not1305 = or i1 %cmp.n, %i.ae
  %i.aq = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.am, i64 1 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ao, i64 1 ; 2 uses
  br i1 %.not1305, label %.preheader572.preheader1364, label %._crit_edge

.preheader572.preheader1364:                      ; preds = %.preheader572.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader572.preheader ], [ %i.al, %middle.block ]
  %.ph = phi <2 x double> [ %i.r, %.preheader572.preheader ], [ %i.ar, %middle.block ]
  %.ph1365 = phi <2 x double> [ %i.r, %.preheader572.preheader ], [ %i.at, %middle.block ]
  br label %.preheader572

.preheader572:                                    ; preds = %.preheader572.preheader1364, %.preheader572
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader572 ], [ %indvars.iv.ph, %.preheader572.preheader1364 ] ; 2 uses
  %i.au = phi <2 x double> [ %i.az, %.preheader572 ], [ %.ph, %.preheader572.preheader1364 ]
  %i.av = phi <2 x double> [ %i.ba, %.preheader572 ], [ %.ph1365, %.preheader572.preheader1364 ]
  %i.aw = mul nsw i64 %indvars.iv, %i.t
  %i.ax = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aw
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  %i.az = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.au, <2 x double> %i.ay) ; 2 uses
  %i.ba = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.av, <2 x double> %i.ay) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader572, !llvm.loop !86

._crit_edge:                                      ; preds = %.preheader572, %middle.block, %.preheader573
  %i.bb = phi <2 x double> [ %i.r, %.preheader573 ], [ %i.ar, %middle.block ], [ %i.az, %.preheader572 ] ; 5 uses
  %i.bc = phi <2 x double> [ %i.r, %.preheader573 ], [ %i.at, %middle.block ], [ %i.ba, %.preheader572 ] ; 5 uses
  %i.bd = fsub <2 x double> %i.bb, %i.bc          ; 6 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %shift = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bd, %shift ; 2 uses
  %i.bf = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bg = icmp eq i32 %7, 0
  br i1 %i.bg, label %bb.d, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.bh = icmp slt i32 %7, 0
  br i1 %i.bh, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bi = mul i32 %1, %7
  %i.bj = sub i32 0, %i.bi
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.0420 = phi i32 [ %spec.select, %bb.c ], [ %i.bj, %bb.b ], [ %1, %._crit_edge ] ; 4 uses
  %i.bk = fcmp olt double %9, 0.000000e+00
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = sitofp i32 %1 to double
  %i.bm = fdiv double %i.bf, %i.bl
  %i.bn = tail call double @sqrt(double noundef %i.bm) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0424 = phi double [ %i.bn, %bb.e ], [ %9, %bb.d ] ; 6 uses
  %i.bo = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not = icmp eq i8 %i.bo, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @flockfile(ptr noundef %i.bp) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  %i.bq = tail call i64 @time(ptr noundef null) #19
  store i64 %i.bq, ptr %i.q, align 8, !tbaa !36
  %i.br = call ptr @localtime(ptr noundef nonnull %i.q) #19 ; 6 uses
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !39
  %i.bv = add nsw i32 %i.bu, 1900
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !40
  %i.by = add nsw i32 %i.bx, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !43
  %i.cf = load i32, ptr %i.br, align 8, !tbaa !44
  %i.cg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 997, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.ca, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.cf) #20 ; 0 uses
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.40, i32 noundef %.0420, double noundef %.0424) #20 ; 0 uses
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc = call i32 @fputc(i32 10, ptr %i.cj)     ; 0 uses
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !19
  call void @funlockfile(ptr noundef %i.ck) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cl = icmp ne ptr %5, null
  %i.cm = icmp ne i32 %8, 0
  %or.cond = and i1 %i.cl, %i.cm
  br i1 %or.cond, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.41, i32 noundef %8) #20 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !152
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = mul nsw i32 %2, %1                      ; 3 uses
  %i.ct = mul i32 %8, %2
  %i.cu = mul i32 %i.ct, %i.cr
  %i.cv = add nsw i32 %i.cu, %i.cs                ; 3 uses
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.cx = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit

bb.j:                                             ; preds = %bb.i
  %mul.ov.i = icmp slt i32 %i.cv, 0
  br i1 %mul.ov.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.28, i64 noundef %i.cw, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.da = call noalias ptr @calloc(i64 noundef %i.cw, i64 noundef 8) #22 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.m, label %gv_calloc.exit

bb.m:                                             ; preds = %bb.l
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dd = shl nuw nsw i64 %i.cw, 3
  %i.de = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.29, i64 noundef %i.dd) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.l
  %i.df = phi ptr [ %i.cx, %.thread.i ], [ %i.da, %bb.l ] ; 4 uses
  %i.dg = icmp sgt i32 %i.cs, 0
  br i1 %i.dg, label %.lr.ph.preheader, label %._crit_edge596

.lr.ph.preheader:                                 ; preds = %gv_calloc.exit
  %i.dh = zext nneg i32 %i.cs to i64
  %i.di = shl nuw nsw i64 %i.dh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.df, ptr nonnull align 8 %3, i64 %i.di, i1 false), !tbaa !24
  br label %._crit_edge596

._crit_edge596:                                   ; preds = %.lr.ph.preheader, %gv_calloc.exit
  %i.dj = mul nsw i32 %8, %i.cr
  %i.dk = add nsw i32 %i.dj, %1                   ; 3 uses
  %i.dl = sext i32 %i.dk to i64                   ; 3 uses
  %.not.i496 = icmp eq i32 %i.dk, 0
  br i1 %.not.i496, label %.thread.i499, label %bb.n

.thread.i499:                                     ; preds = %._crit_edge596
  %i.dm = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit500

bb.n:                                             ; preds = %._crit_edge596
  %mul.ov.i498 = icmp slt i32 %i.dk, 0
  br i1 %mul.ov.i498, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.28, i64 noundef %i.dl, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.dp = call noalias ptr @calloc(i64 noundef %i.dl, i64 noundef 4) #22 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.q, label %gv_calloc.exit500

bb.q:                                             ; preds = %bb.p
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ds = shl nuw nsw i64 %i.dl, 2
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.29, i64 noundef %i.ds) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit500:                                ; preds = %.thread.i499, %bb.p
  %i.du = phi ptr [ %i.dm, %.thread.i499 ], [ %i.dp, %bb.p ] ; 12 uses
  br i1 %i.s, label %.lr.ph598.preheader, label %.preheader571

.lr.ph598.preheader:                              ; preds = %gv_calloc.exit500
  %i.dv = zext nneg i32 %1 to i64
  %i.dw = shl nuw nsw i64 %i.dv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.du, ptr align 4 %4, i64 %i.dw, i1 false), !tbaa !22
  br label %.preheader571

.preheader571:                                    ; preds = %.lr.ph598.preheader, %gv_calloc.exit500
end_hunk_0
