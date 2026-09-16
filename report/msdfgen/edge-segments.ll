Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-segments?download=true
inline.NumInlined: 310
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7msdfgen16QuadraticSegment5boundERdS1_S1_S1_:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load double, ptr %2, align 8, !tbaa !14
  %i.e = fcmp olt double %.sroa.229.0.copyload, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %.sroa.229.0.copyload, ptr %2, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load double, ptr %3, align 8, !tbaa !14
  %i.g = fcmp ogt double %.sroa.028.0.copyload, %i.f
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %.sroa.028.0.copyload, ptr %3, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = load double, ptr %4, align 8, !tbaa !14
  %i.i = fcmp ogt double %.sroa.229.0.copyload, %i.h
  br i1 %i.i, label %bb.h, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit

bb.h:                                             ; preds = %bb.g
  store double %.sroa.229.0.copyload, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit: ; preds = %bb.g, %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.026.0.copyload = load double, ptr %i.j, align 8, !tbaa !14 ; 4 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.227.0.copyload = load double, ptr %.sroa.227.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %i.k = load double, ptr %1, align 8, !tbaa !14
  %i.l = fcmp olt double %.sroa.026.0.copyload, %i.k
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit
  store double %.sroa.026.0.copyload, ptr %1, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit
  %i.m = load double, ptr %2, align 8, !tbaa !14
  %i.n = fcmp olt double %.sroa.227.0.copyload, %i.m
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double %.sroa.227.0.copyload, ptr %2, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.o = load double, ptr %3, align 8, !tbaa !14
  %i.p = fcmp ogt double %.sroa.026.0.copyload, %i.o
  br i1 %i.p, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %.sroa.026.0.copyload, ptr %3, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.q = load double, ptr %4, align 8, !tbaa !14
  %i.r = fcmp ogt double %.sroa.227.0.copyload, %i.q
  br i1 %i.r, label %bb.o, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit50

bb.o:                                             ; preds = %bb.n
  store double %.sroa.227.0.copyload, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit50

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit50: ; preds = %bb.n, %bb.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.019.0.copyload = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.220.0.copyload = load double, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.017.0.copyload = load double, ptr %i.a, align 8, !tbaa !14
  %.sroa.218.0.copyload = load double, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !14
  %i.t = fsub double %.sroa.019.0.copyload, %.sroa.017.0.copyload ; 2 uses
  %i.u = fsub double %.sroa.220.0.copyload, %.sroa.218.0.copyload
  %.sroa.013.0.copyload = load double, ptr %i.j, align 8, !tbaa !14
  %.sroa.214.0.copyload = load double, ptr %.sroa.227.0..sroa_idx, align 8, !tbaa !14
  %i.v = fsub double %.sroa.013.0.copyload, %.sroa.019.0.copyload
  %i.w = fsub double %.sroa.214.0.copyload, %.sroa.220.0.copyload
  %i.x = fsub double %i.t, %i.v                   ; 2 uses
  %i.y = fsub double %i.u, %i.w                   ; 2 uses
  %i.z = fcmp une double %i.x, 0.000000e+00
  br i1 %i.z, label %bb.p, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit55

bb.p:                                             ; preds = %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit50
  %i.aa = fdiv double %i.t, %i.x                  ; 3 uses
  %i.ab = fcmp ogt double %i.aa, 0.000000e+00
  %i.ac = fcmp olt double %i.aa, 1.000000e+00
  %or.cond = and i1 %i.ab, %i.ac
  br i1 %or.cond, label %bb.q, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit55

bb.q:                                             ; preds = %bb.p
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call { double, double } %i.af(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %i.aa) ; 2 uses
  %i.ah = extractvalue { double, double } %i.ag, 0 ; 4 uses
  %i.ai = extractvalue { double, double } %i.ag, 1 ; 4 uses
  %i.aj = load double, ptr %1, align 8, !tbaa !14
  %i.ak = fcmp olt double %i.ah, %i.aj
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.ah, ptr %1, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = load double, ptr %2, align 8, !tbaa !14
  %i.am = fcmp olt double %i.ai, %i.al
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.ai, ptr %2, align 8, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.an = load double, ptr %3, align 8, !tbaa !14
  %i.ao = fcmp ogt double %i.ah, %i.an
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.ah, ptr %3, align 8, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ap = load double, ptr %4, align 8, !tbaa !14
  %i.aq = fcmp ogt double %i.ai, %i.ap
  br i1 %i.aq, label %bb.x, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit55

bb.x:                                             ; preds = %bb.w
  store double %i.ai, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit55

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit55: ; preds = %bb.x, %bb.w, %bb.p, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit50
  %i.ar = fcmp une double %i.y, 0.000000e+00
  br i1 %i.ar, label %bb.y, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit56

bb.y:                                             ; preds = %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit55
  %i.as = load double, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !17
  %i.at = load double, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !17
  %i.au = fsub double %i.as, %i.at
  %i.av = fdiv double %i.au, %i.y                 ; 3 uses
  %i.aw = fcmp ogt double %i.av, 0.000000e+00
  %i.ax = fcmp olt double %i.av, 1.000000e+00
  %or.cond3 = and i1 %i.aw, %i.ax
  br i1 %or.cond3, label %bb.z, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit56

bb.z:                                             ; preds = %bb.y
  %i.ay = load ptr, ptr %0, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call { double, double } %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %i.av) ; 2 uses
  %i.bc = extractvalue { double, double } %i.bb, 0 ; 4 uses
  %i.bd = extractvalue { double, double } %i.bb, 1 ; 4 uses
  %i.be = load double, ptr %1, align 8, !tbaa !14
  %i.bf = fcmp olt double %i.bc, %i.be
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.bc, ptr %1, align 8, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bg = load double, ptr %2, align 8, !tbaa !14
  %i.bh = fcmp olt double %i.bd, %i.bg
  br i1 %i.bh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.bd, ptr %2, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bi = load double, ptr %3, align 8, !tbaa !14
  %i.bj = fcmp ogt double %i.bc, %i.bi
  br i1 %i.bj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %i.bc, ptr %3, align 8, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bk = load double, ptr %4, align 8, !tbaa !14
  %i.bl = fcmp ogt double %i.bd, %i.bk
  br i1 %i.bl, label %bb.ag, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit56

bb.ag:                                            ; preds = %bb.af
  store double %i.bd, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit56

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit56: ; preds = %bb.ag, %bb.af, %bb.y, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen12CubicSegment5boundERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.050.0.copyload = load double, ptr %i.b, align 8, !tbaa !14 ; 4 uses
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.251.0.copyload = load double, ptr %.sroa.251.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %i.c = load double, ptr %1, align 8, !tbaa !14
  %i.d = fcmp olt double %.sroa.050.0.copyload, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %.sroa.050.0.copyload, ptr %1, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load double, ptr %2, align 8, !tbaa !14
  %i.f = fcmp olt double %.sroa.251.0.copyload, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %.sroa.251.0.copyload, ptr %2, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load double, ptr %3, align 8, !tbaa !14
  %i.h = fcmp ogt double %.sroa.050.0.copyload, %i.g
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %.sroa.050.0.copyload, ptr %3, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = load double, ptr %4, align 8, !tbaa !14
  %i.j = fcmp ogt double %.sroa.251.0.copyload, %i.i
  br i1 %i.j, label %bb.h, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit

bb.h:                                             ; preds = %bb.g
  store double %.sroa.251.0.copyload, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit: ; preds = %bb.g, %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.048.0.copyload = load double, ptr %i.k, align 8, !tbaa !14 ; 4 uses
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.249.0.copyload = load double, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %i.l = load double, ptr %1, align 8, !tbaa !14
  %i.m = fcmp olt double %.sroa.048.0.copyload, %i.l
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit
  store double %.sroa.048.0.copyload, ptr %1, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit
  %i.n = load double, ptr %2, align 8, !tbaa !14
  %i.o = fcmp olt double %.sroa.249.0.copyload, %i.n
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double %.sroa.249.0.copyload, ptr %2, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = load double, ptr %3, align 8, !tbaa !14
  %i.q = fcmp ogt double %.sroa.048.0.copyload, %i.p
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %.sroa.048.0.copyload, ptr %3, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.r = load double, ptr %4, align 8, !tbaa !14
  %i.s = fcmp ogt double %.sroa.249.0.copyload, %i.r
  br i1 %i.s, label %bb.o, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit72

bb.o:                                             ; preds = %bb.n
  store double %.sroa.249.0.copyload, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit72

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit72: ; preds = %bb.n, %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.045.0.copyload = load double, ptr %i.t, align 8, !tbaa !14 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.246.0.copyload = load double, ptr %i.u, align 8, !tbaa !14 ; 3 uses
  %.sroa.043.0.copyload = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.sroa.244.0.copyload = load double, ptr %.sroa.251.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %5 = fsub double %.sroa.045.0.copyload, %.sroa.043.0.copyload ; 2 uses
  %6 = fsub double %.sroa.246.0.copyload, %.sroa.244.0.copyload ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.035.0.copyload = load double, ptr %7, align 8, !tbaa !14 ; 2 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.236.0.copyload = load double, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %8 = fsub double %.sroa.035.0.copyload, %.sroa.045.0.copyload
  %9 = fsub double %.sroa.236.0.copyload, %.sroa.246.0.copyload
  %10 = fsub double %8, %5
  %11 = fmul double %10, 2.000000e+00
  %.sroa.024.0.copyload = load double, ptr %i.k, align 8, !tbaa !14
  %.sroa.225.0.copyload = load double, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !14
  %12 = fmul double %.sroa.035.0.copyload, 3.000000e+00
  %13 = fsub double %.sroa.024.0.copyload, %12
  %14 = fmul double %.sroa.045.0.copyload, 3.000000e+00
  %15 = fadd double %14, %13
  %16 = fsub double %15, %.sroa.043.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.v = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %16, double noundef %11, double noundef %5) ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit72
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit89, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit72
  %17 = fsub double %9, %6
  %18 = fmul double %17, 2.000000e+00
  %19 = fmul double %.sroa.236.0.copyload, 3.000000e+00
  %20 = fsub double %.sroa.225.0.copyload, %19
  %21 = fmul double %.sroa.246.0.copyload, 3.000000e+00
  %22 = fadd double %21, %20
  %23 = fsub double %22, %.sroa.244.0.copyload
  %i.x = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %23, double noundef %18, double noundef %6) ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %._crit_edge
  %wide.trip.count100 = zext nneg i32 %i.x to i64
  br label %.lr.ph94

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit89
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit89 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 3 uses
  %i.ab = fcmp ogt double %i.aa, 0.000000e+00
  %i.ac = fcmp olt double %i.aa, 1.000000e+00
  %or.cond = and i1 %i.ab, %i.ac
  br i1 %or.cond, label %bb.p, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit89

bb.p:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call { double, double } %i.af(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef %i.aa) ; 2 uses
  %i.ah = extractvalue { double, double } %i.ag, 0 ; 4 uses
  %i.ai = extractvalue { double, double } %i.ag, 1 ; 4 uses
  %i.aj = load double, ptr %1, align 8, !tbaa !14
  %i.ak = fcmp olt double %i.ah, %i.aj
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.ah, ptr %1, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.al = load double, ptr %2, align 8, !tbaa !14
  %i.am = fcmp olt double %i.ai, %i.al
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.ai, ptr %2, align 8, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.an = load double, ptr %3, align 8, !tbaa !14
  %i.ao = fcmp ogt double %i.ah, %i.an
  br i1 %i.ao, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store double %i.ah, ptr %3, align 8, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ap = load double, ptr %4, align 8, !tbaa !14
  %i.aq = fcmp ogt double %i.ai, %i.ap
  br i1 %i.aq, label %bb.w, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit89

bb.w:                                             ; preds = %bb.v
  store double %i.ai, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit89

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit89: ; preds = %bb.w, %bb.v, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge95:                                    ; preds = %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit90, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit90
  %indvars.iv97 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next98, %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit90 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.at = fcmp ogt double %i.as, 0.000000e+00
  %i.au = fcmp olt double %i.as, 1.000000e+00
  %or.cond71 = and i1 %i.at, %i.au
  br i1 %or.cond71, label %bb.x, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit90

bb.x:                                             ; preds = %.lr.ph94
  %i.av = load ptr, ptr %0, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call { double, double } %i.ax(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef %i.as) ; 2 uses
  %i.az = extractvalue { double, double } %i.ay, 0 ; 4 uses
  %i.ba = extractvalue { double, double } %i.ay, 1 ; 4 uses
  %i.bb = load double, ptr %1, align 8, !tbaa !14
  %i.bc = fcmp olt double %i.az, %i.bb
  br i1 %i.bc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store double %i.az, ptr %1, align 8, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bd = load double, ptr %2, align 8, !tbaa !14
  %i.be = fcmp olt double %i.ba, %i.bd
  br i1 %i.be, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.ba, ptr %2, align 8, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bf = load double, ptr %3, align 8, !tbaa !14
  %i.bg = fcmp ogt double %i.az, %i.bf
  br i1 %i.bg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.az, ptr %3, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bh = load double, ptr %4, align 8, !tbaa !14
  %i.bi = fcmp ogt double %i.ba, %i.bh
  br i1 %i.bi, label %bb.ae, label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit90

bb.ae:                                            ; preds = %bb.ad
  store double %i.ba, ptr %4, align 8, !tbaa !14
  br label %_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit90

_ZN7msdfgenL11pointBoundsENS_7Vector2ERdS1_S1_S1_.exit90: ; preds = %bb.ae, %bb.ad, %.lr.ph94
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7msdfgen13LinearSegment7reverseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load <2 x double>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !20
  store <2 x double> %.sroa.0.0.copyload, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7msdfgen16QuadraticSegment7reverseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load <2 x double>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !20
  store <2 x double> %.sroa.0.0.copyload, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7msdfgen12CubicSegment7reverseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load <2 x double>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !20
  store <2 x double> %.sroa.0.0.copyload, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload2 = load <2 x double>, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !20
  store <2 x double> %.sroa.0.0.copyload2, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7msdfgen13LinearSegment14moveStartPointENS_7Vector2E(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((16, 32)) %0, double %1, double %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %1, ptr %i.a, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7msdfgen16QuadraticSegment14moveStartPointENS_7Vector2E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, double %1, double %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load <2 x double>, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.e = load <2 x double>, ptr %i.b, align 8, !tbaa !14 ; 5 uses
  %i.f = fsub <2 x double> %i.d, %i.e             ; 4 uses
  %i.g = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x double> %i.h, double %1, i64 0
  %i.j = shufflevector <2 x double> %i.d, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.k = fsub <2 x double> %i.i, %i.j             ; 2 uses
  %i.l = insertelement <2 x double> %i.g, double %2, i64 0
  %i.m = shufflevector <2 x double> %i.d, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.n = fsub <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = fneg <2 x double> %i.k
  %i.p = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x double> %i.p, %i.o
  %i.r = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.n, <2 x double> %i.q) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.s, i64 1
  %i.v = fdiv double %i.t, %i.u
  %i.w = shufflevector <2 x double> %i.k, <2 x double> %i.n, <2 x i32> <i32 1, i32 3>
end_hunk_0
