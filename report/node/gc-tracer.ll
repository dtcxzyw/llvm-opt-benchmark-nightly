inline.NumInlined: 1245
inline.NumDeleted: 558
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN2v88internal8GCTracer25ReportFullCycleToRecorderEv:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  store i64 %i.fc, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ff = load i64, ptr %i.fd, align 8
  %i.fg = load i64, ptr %i.fe, align 8
  %i.fh = add nsw i64 %i.fg, %i.ff
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = add nsw i64 %i.fh, %i.fj                ; 3 uses
  store i64 %i.fk, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.fm = load i64, ptr %i.fl, align 8            ; 3 uses
  store i64 %i.fm, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.fn = add nsw i64 %i.fk, %i.fc
  %i.fo = add nsw i64 %i.fn, %i.fm
  store i64 %i.fo, ptr %6, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.fs = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.fv = load i64, ptr %i.ft, align 8
  %i.fw = load i64, ptr %i.fu, align 8
  %i.fx = add nsw i64 %i.fw, %i.fv                ; 2 uses
  %i.fy = add nsw i64 %i.fs, %i.fq
  %i.fz = add nsw i64 %i.fy, %i.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gc = load i64, ptr %i.ga, align 8
  %i.gd = load i64, ptr %i.gb, align 8
  %i.ge = add nsw i64 %i.gd, %i.gc                ; 2 uses
  store i64 %i.ge, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.gf = add nsw i64 %i.ge, %i.fk
  store i64 %i.gf, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gh = load i64, ptr %i.gg, align 8
  store i64 %i.gh, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gk = load i64, ptr %i.gi, align 8
  %i.gl = load i64, ptr %i.gj, align 8
  %i.gm = add nsw i64 %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = add nsw i64 %i.gm, %i.go
  store i64 %i.gp, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gr = load i64, ptr %i.gq, align 8            ; 2 uses
  store i64 %i.gr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.gs = add nsw i64 %i.gr, %i.fm
  store i64 %i.gs, ptr %12, align 8
  %i.gt = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.gt, ptr %i.gu, align 8
  %i.gv = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  store i64 %i.gv, ptr %i.gw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.gx = load i64, ptr %6, align 8
  %i.gy = add nsw i64 %i.fz, %i.gx
  store i64 %i.gy, ptr %13, align 8
  %i.gz = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #19
  store i64 %i.gz, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ha = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 %i.ha, ptr %i.hb, align 8
  %i.hc = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.hc, ptr %i.hd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.he = load i64, ptr %8, align 8
  %i.hf = add nsw i64 %i.he, %i.fq
  store i64 %i.hf, ptr %14, align 8
  %i.hg = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.hg, ptr %i.hh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.hi = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #19 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.hi, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %i.hi, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %i.hi, ptr %i.hl, align 8
  %i.hm = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.hm, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 %i.hm, ptr %i.ho, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.hp = load i64, ptr %10, align 8
  %i.hq = add nsw i64 %i.hp, %i.fx
  store i64 %i.hq, ptr %15, align 8
  %i.hr = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.hr, ptr %i.hs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ht = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 %i.ht, ptr %i.hu, align 8
  %i.hv = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.hv, ptr %i.hw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.hx = load i64, ptr %12, align 8
  %i.hy = add nsw i64 %i.hx, %i.fs
  store i64 %i.hy, ptr %16, align 8
  %i.hz = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #19
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.hz, ptr %i.ia, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.ib = load i32, ptr %i.be, align 8
  %i.ic = icmp eq i32 %i.ib, 2
  br i1 %i.ic, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.id = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.id, ptr %i.ie, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.01.0.copyload = load i64, ptr %i.ig, align 8
  %i.ih = load i64, ptr %i.if, align 8
  %i.ii = sub nsw i64 %i.ih, %.sroa.01.0.copyload
  store i64 %i.ii, ptr %17, align 8
  %i.ij = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  store i64 %i.ij, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 -1, ptr %i.ik, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.il = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 %i.il, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.io = load i64, ptr %i.in, align 8            ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %i.io, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load i64, ptr %i.iq, align 8            ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %i.ir, ptr %i.is, align 8
  %i.it = sub i64 %i.io, %i.ir                    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %i.it, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.iw = load i64, ptr %i.iv, align 8            ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 %i.iw, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.iz = load i64, ptr %i.iy, align 8            ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 %i.iz, ptr %i.ja, align 8
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %i.iw, i64 %i.iz)
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i64 %spec.select, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.je = load <2 x i64>, ptr %i.jc, align 8
  store <2 x i64> %i.je, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i64 %i.jg, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jk = load <2 x i64>, ptr %i.jj, align 8
  store <2 x i64> %i.jk, ptr %i.ji, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.jn = load <2 x i64>, ptr %i.jl, align 8
  store <2 x i64> %i.jn, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 %i.jp, ptr %i.jq, align 8
  %i.jr = icmp eq i64 %i.io, 0
  %i.js = sitofp i64 %i.it to double              ; 2 uses
  %i.jt = sitofp i64 %i.io to double
  %i.ju = fdiv double %i.js, %i.jt
  %storemerge43 = select i1 %i.jr, double 0.000000e+00, double %i.ju
  store double %storemerge43, ptr %i.at, align 8
  %i.jv = icmp eq i64 %i.io, %i.ir
  br i1 %i.jv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jw = load i64, ptr %i.as, align 8
  %18 = load i64, ptr %i.gw, align 8
  %19 = sitofp i64 %18 to double
  %i.jx = sitofp i64 %i.jw to double
  %20 = insertelement <2 x double> poison, double %i.js, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x double> poison, double %i.jx, i64 0
  %23 = insertelement <2 x double> %22, double %19, i64 1
  %24 = fdiv <2 x double> %21, %23
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %25 = phi <2 x double> [ %24, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %26 = extractelement <2 x double> %25, i64 0
  store double %26, ptr %i.av, align 8
  %27 = extractelement <2 x double> %25, i64 1
  store double %27, ptr %i.ax, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 3752 ; 4 uses
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double 0.000000e+00, ptr %i.az, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.kb = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jy) #19
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 %i.kb, ptr %i.kc, align 8
  %i.kd = load i64, ptr %i.as, align 8
  %i.ke = sitofp i64 %i.kd to double
  %i.kf = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jy) #19
  %i.kg = sitofp i64 %i.kf to double
  %i.kh = fdiv double %i.ke, %i.kg
  store double %i.kh, ptr %i.az, align 8
  %i.ki = load i64, ptr %i.gw, align 8
  %i.kj = sitofp i64 %i.ki to double
  %i.kk = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jy) #19
  %i.kl = sitofp i64 %i.kk to double
  %i.km = fdiv double %i.kj, %i.kl
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge45 = phi double [ %i.km, %bb.w ], [ 0.000000e+00, %bb.v ]
  store double %storemerge45, ptr %i.bb, align 8
  %i.kn = load ptr, ptr %i.i, align 8
  %i.ko = load ptr, ptr %0, align 8
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = add i64 %i.kp, -55464
  %i.kr = inttoptr i64 %i.kq to ptr               ; 7 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 344
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ks, align 8 ; 2 uses
  %i.kt = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.kt, label %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 560 ; 3 uses
  %i.kv = load ptr, ptr %i.ku, align 8            ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 568 ; 3 uses
  %i.kx = load ptr, ptr %i.kw, align 8            ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 576 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 8
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 8
  %i.lb = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.lc = inttoptr i64 %i.lb to ptr
  %i.ld = load atomic volatile i64, ptr %i.lc monotonic, align 8
  %i.le = add i64 %i.ld, 31
  %i.lf = inttoptr i64 %i.le to ptr
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = icmp eq ptr %i.kv, %i.kx
  br i1 %i.lh, label %bb.z, label %bb.aa, !prof !28

bb.z:                                             ; preds = %bb.y
  %i.li = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.kr) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i.i = phi ptr [ %i.li, %bb.z ], [ %i.kv, %bb.y ] ; 3 uses
  %i.lj = ptrtoint ptr %.0.i.i.i to i64
  %i.lk = add i64 %i.lj, 8
  %i.ll = inttoptr i64 %i.lk to ptr
  store ptr %i.ll, ptr %i.ku, align 8
  store i64 %i.lg, ptr %.0.i.i.i, align 8
  %i.lm = call i64 @_ZN2v88internal7Isolate30GetOrRegisterRecorderContextIdENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %i.kr, ptr nonnull %.0.i.i.i) #19 ; 2 uses
  store ptr %i.kv, ptr %i.ku, align 8
  %i.ln = load i32, ptr %i.ky, align 8
  %i.lo = add nsw i32 %i.ln, -1
  store i32 %i.lo, ptr %i.ky, align 8
  %i.lp = load ptr, ptr %i.kw, align 8
  %.not.i.i = icmp eq ptr %i.lp, %i.kx
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.kx, ptr %i.kw, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.kr) #19
  br label %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit: ; preds = %bb.x, %bb.aa, %bb.ab
  %.sroa.04.0.i = phi i64 [ 0, %bb.x ], [ %i.lm, %bb.ab ], [ %i.lm, %bb.aa ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.lr, null
  br i1 %.not.i, label %_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics26GarbageCollectionFullCycleEEEvRKT_NS4_8Recorder9ContextIdE.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(608) %1, i64 %.sroa.04.0.i) #19, !inline_history !30
  br label %_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics26GarbageCollectionFullCycleEEEvRKT_NS4_8Recorder9ContextIdE.exit

_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics26GarbageCollectionFullCycleEEEvRKT_NS4_8Recorder9ContextIdE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_112GetContextIdEPNS0_7IsolateE.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN2v87metrics30GarbageCollectionBatchedEventsINS0_47GarbageCollectionFullMainThreadIncrementalSweepEED2Ev.exit, %bb.e, %_ZN2v88internal7metrics8Recorder18AddMainThreadEventINS_7metrics26GarbageCollectionFullCycleEEEvRKT_NS4_8Recorder9ContextIdE.exit
  ret void
}

declare void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN2v88internal4Heap19PrintFreeListsStatsEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2040
  %i.h = load ptr, ptr %i.g, align 8
  %.not1 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5073 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !5
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %.not1, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef 1)
  store i8 0, ptr %i.c, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5074
  store i8 0, ptr %i.l, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer24StopYoungCycleIfFinishedEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 3
  br i1 %.not, label %bb.b, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5075 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2040
  %i.i = load ptr, ptr %i.h, align 8
  %.not1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5077 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !range !5
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not1, i1 %i.l, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5076 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !range !5
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond6 = select i1 %or.cond.not, i1 true, i1 %i.o
  br i1 %or.cond6, label %bb.d, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5078
  %i.q = load i8, ptr %i.p, align 2, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i32, ptr %i.a, align 8
  %i.t = icmp eq i32 %i.s, 0
  %i.u = select i1 %i.t, i32 0, i32 2
  tail call void @_ZN2v88internal8GCTracer9StopCycleENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(6440) %0, i32 noundef %i.u)
  store i8 0, ptr %i.d, align 1
  store i8 0, ptr %i.j, align 1
  store i8 0, ptr %i.m, align 4
  br i1 %i.r, label %bb.e, label %_ZN2v88internal8GCTracer23StopFullCycleIfFinishedEv.exit
end_hunk_0
