Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance?download=true
inline.NumInlined: 304
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3ShapeDistance:bb.a
  %exitcond2630.not.3 = icmp eq i16 %i.bb, 4
  br i1 %exitcond2630.not.3, label %._crit_edge, label %.split.us

.split.us:                                        ; preds = %bb.x
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @13, i64 4) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split1841.us:                                    ; preds = %.lr.ph.split.us.3, %.lr.ph.split.us.2
  %.lcssa4321 = phi i64 [ %i.fo, %.lr.ph.split.us.2 ], [ %i.hv, %.lr.ph.split.us.3 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @14, i64 %i.be, i64 %.lcssa4321) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split1848.us:                                    ; preds = %bb.s, %bb.m
  %.lcssa4328 = phi i64 [ %i.fs, %bb.m ], [ %i.hz, %bb.s ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 %i.bg, i64 %.lcssa4328) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split1855.us:                                    ; preds = %bb.t, %bb.n, %.lr.ph.split.us.1, %.lr.ph
  %.lcssa4339 = phi i64 [ %i.bq, %.lr.ph ], [ %i.dt, %.lr.ph.split.us.1 ], [ %i.ga, %bb.n ], [ %i.ih, %bb.t ]
  %.lcssa4334 = phi i64 [ %i.br, %.lr.ph ], [ %i.du, %.lr.ph.split.us.1 ], [ %i.gb, %bb.n ], [ %i.ii, %bb.t ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @16, i64 %.lcssa4339, i64 %.lcssa4334) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split1859.us:                                    ; preds = %bb.u, %bb.o, %bb.i, %bb.f
  %.lcssa4344 = phi i64 [ %i.bx, %bb.f ], [ %i.ea, %bb.i ], [ %i.gh, %bb.o ], [ %i.io, %bb.u ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @17, i64 %.lcssa4344) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split1862.us:                                    ; preds = %bb.v, %bb.p, %bb.j, %bb.g
  %.lcssa4351 = phi i64 [ %i.ce, %bb.g ], [ %i.eh, %bb.j ], [ %i.go, %bb.p ], [ %i.iv, %bb.v ]
  %.lcssa4348 = phi i64 [ %i.cf, %bb.g ], [ %i.ei, %bb.j ], [ %i.gp, %bb.p ], [ %i.iw, %bb.v ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @18, i64 %.lcssa4351, i64 %.lcssa4348) #8, !nosanitize !11
  unreachable, !nosanitize !11

.split1866.us:                                    ; preds = %bb.w, %bb.q, %bb.k
  %.lcssa4354 = phi i64 [ %i.jc, %bb.w ], [ %i.eo, %bb.k ], [ %i.gv, %bb.q ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @19, i64 %i.bh, i64 %.lcssa4354) #8, !nosanitize !11
  unreachable, !nosanitize !11

._crit_edge:                                      ; preds = %bb.x, %bb.r, %bb.l, %bb.h
  %i.kc = load float, ptr %2, align 4, !tbaa !53  ; 2 uses
  %i.kd = call fastcc float @b3GetMetric(ptr noundef %5) ; 3 uses
  %i.ke = fmul float %i.kc, 2.000000e+00
  %i.kf = fcmp olt float %i.ke, %i.kd
  br i1 %i.kf, label %.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.kg = fmul float %i.kc, 5.000000e-01
  %i.kh = fcmp olt float %i.kd, %i.kg
  %i.ki = fcmp olt float %i.kd, f0x34000000
  %or.cond = or i1 %i.kh, %i.ki
  br i1 %or.cond, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y, %._crit_edge
  store i32 0, ptr %i.ba, align 8, !tbaa !23
  br label %.thread2739

bb.z:                                             ; preds = %bb.y
  %.pr.pre = load i32, ptr %i.ba, align 8, !tbaa !23
  %i.kj = icmp eq i32 %.pr.pre, 0
  br i1 %i.kj, label %.thread2739, label %bb.ac

.thread2739:                                      ; preds = %bb.e, %.thread, %bb.z
  %i.kk = load ptr, ptr %1, align 8, !tbaa !18    ; 4 uses
  %i.kl = icmp ne ptr %i.kk, null, !nosanitize !11
  %i.km = ptrtoint ptr %i.kk to i64, !nosanitize !11 ; 2 uses
  %i.kn = and i64 %i.km, 3, !nosanitize !11
  %i.ko = icmp eq i64 %i.kn, 0, !nosanitize !11
  %i.kp = and i1 %i.kl, %i.ko, !nosanitize !11
  br i1 %i.kp, label %bb.ab, label %bb.aa, !prof !12, !nosanitize !11

bb.aa:                                            ; preds = %.thread2739
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @22, i64 %i.km) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ab:                                            ; preds = %.thread2739
  %.sroa.5341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.5341.0.copyload = load float, ptr %.sroa.5341.0..sroa_idx, align 4, !tbaa !19 ; 2 uses
  %.sroa.0339.0.copyload = load <2 x float>, ptr %i.kk, align 4, !tbaa !19 ; 2 uses
  %i.kq = load ptr, ptr %i.at, align 8, !tbaa !18 ; 2 uses
  %.sroa.0333.0.copyload = load <2 x float>, ptr %i.kq, align 4 ; 4 uses
  %.sroa.2334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %.sroa.2334.0.copyload = load float, ptr %.sroa.2334.0..sroa_idx, align 4 ; 2 uses
  %i.kr = shufflevector <2 x float> %.sroa.0333.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i552 = extractelement <2 x float> %.sroa.0333.0.copyload, i64 0
  %i.ks = fmul float %i.aq, %.sroa.0.0.vec.extract.i552
  %i.kt = extractelement <2 x float> %.sroa.0333.0.copyload, i64 1
  %i.ku = fmul float %i.aj, %i.kt
  %i.kv = fadd float %i.ks, %i.ku
  %i.kw = fmul float %i.as, %.sroa.2334.0.copyload
  %i.kx = fadd float %i.kw, %i.kv
  %i.ky = fmul <2 x float> %i.ag, %i.kr
  %i.kz = fmul <2 x float> %i.ah, %.sroa.0333.0.copyload
  %i.la = fadd <2 x float> %i.ky, %i.kz
  %i.lb = insertelement <2 x float> poison, float %.sroa.2334.0.copyload, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x float> %i.an, %i.lc
  %i.le = fadd <2 x float> %i.ld, %i.la
  %i.lf = fadd <2 x float> %.sroa.0438.0.copyload, %i.le ; 2 uses
  %i.lg = fadd float %.sroa.6441.0.copyload, %i.kx ; 2 uses
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.lh, align 8, !tbaa !51
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.li, align 4, !tbaa !52
  store <2 x float> %.sroa.0339.0.copyload, ptr %5, align 8, !tbaa !19
  %.sroa.5341.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.5341.0.copyload, ptr %.sroa.5341.0..sroa_idx342, align 8, !tbaa !19
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> %i.lf, ptr %i.lj, align 4, !tbaa !19
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.lg, ptr %.sroa.5338.0..sroa_idx, align 4, !tbaa !19
  %i.lk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ll = fsub <2 x float> %i.lf, %.sroa.0339.0.copyload
  %i.lm = fsub float %i.lg, %.sroa.5341.0.copyload
  store <2 x float> %i.ll, ptr %i.lk, align 8, !tbaa !19
  %.sroa.4320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.lm, ptr %.sroa.4320.0..sroa_idx, align 8, !tbaa !19
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float 0.000000e+00, ptr %i.ln, align 4, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %6, i8 0, i64 196, i1 false)
  %.not = icmp ne ptr %3, null                    ; 2 uses
  %i.lo = icmp sgt i32 %4, 0
  %or.cond531 = and i1 %.not, %i.lo
  %i.lp = ptrtoint ptr %3 to i64                  ; 5 uses
  br i1 %or.cond531, label %bb.ad, label %.split1890

bb.ad:                                            ; preds = %bb.ac
  %i.lq = and i64 %i.lp, 3, !nosanitize !11
  %i.lr = icmp eq i64 %i.lq, 0, !nosanitize !11
  br i1 %i.lr, label %bb.af, label %bb.ae, !prof !12, !nosanitize !11

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @24, i64 %i.lp) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %3, ptr noundef nonnull align 8 dereferenceable(196) %5, i64 196, i1 false), !tbaa.struct !54
  br label %.split1890

.split1890:                                       ; preds = %bb.ac, %bb.af
  %.0466 = phi i32 [ 1, %bb.af ], [ 0, %bb.ac ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %.sroa.10226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 27 uses
  %.sroa.17247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 27 uses
  %.sroa.24262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 41 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 18 uses
  %i.lt = icmp ult ptr %5, inttoptr (i64 -48 to ptr) ; 2 uses
  %.sroa.10181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 20 uses
  %.sroa.17202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 20 uses
  %.sroa.24217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 30 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 8 uses
  %i.lv = icmp ult ptr %5, inttoptr (i64 -96 to ptr) ; 2 uses
  %.sroa.10136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 8 uses
  %.sroa.17157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 8 uses
  %.sroa.24172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 132 ; 15 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.lx = icmp ult ptr %5, inttoptr (i64 -144 to ptr)
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 168
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 176
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 180 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not36.i.i579 = icmp ugt ptr %i.a, inttoptr (i64 -9 to ptr)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %.not.i509.i = icmp ugt ptr %i.b, inttoptr (i64 -5 to ptr)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not36.i510.i = icmp ugt ptr %i.b, inttoptr (i64 -9 to ptr)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not.i516.i = icmp ugt ptr %i.c, inttoptr (i64 -5 to ptr)
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not36.i517.i = icmp ugt ptr %i.c, inttoptr (i64 -9 to ptr)
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.not.i523.i = icmp ugt ptr %i.d, inttoptr (i64 -5 to ptr)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not36.i524.i = icmp ugt ptr %i.d, inttoptr (i64 -9 to ptr)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.not.i530.i = icmp ugt ptr %i.e, inttoptr (i64 -5 to ptr)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.not36.i531.i = icmp ugt ptr %i.e, inttoptr (i64 -9 to ptr)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i537.i = icmp ugt ptr %i.f, inttoptr (i64 -5 to ptr)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.not36.i538.i = icmp ugt ptr %i.f, inttoptr (i64 -9 to ptr)
  %.not453.i = icmp eq ptr %i.b, inttoptr (i64 -4 to ptr) ; 2 uses
  %.not454.i = icmp eq ptr %i.c, inttoptr (i64 -4 to ptr) ; 2 uses
  %.not455.i = icmp eq ptr %i.d, inttoptr (i64 -4 to ptr) ; 2 uses
  %.not456.i = icmp eq ptr %i.e, inttoptr (i64 -4 to ptr) ; 2 uses
  %.not457.i = icmp eq ptr %i.f, inttoptr (i64 -4 to ptr) ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %.not102.i.i = icmp ugt ptr %i.k, inttoptr (i64 -17 to ptr)
  %.not463.i = icmp eq ptr %i.k, inttoptr (i64 -16 to ptr)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.mt = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.mu = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.mv = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.mw = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.not36.i.i = icmp ugt ptr %i.l, inttoptr (i64 -9 to ptr)
  %i.my = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not36.i179.i = icmp ugt ptr %i.m, inttoptr (i64 -9 to ptr)
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.not36.i186.i = icmp ugt ptr %i.n, inttoptr (i64 -9 to ptr)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.not52.i = icmp ugt ptr %5, inttoptr (i64 -49 to ptr) ; 6 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %.not520 = icmp ugt ptr %5, inttoptr (i64 -97 to ptr) ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nj = ptrtoint ptr %5 to i64                  ; 34 uses
  %.pre = load i32, ptr %i.ba, align 8, !tbaa !23
  %i.nk = insertelement <2 x float> poison, float %i.as, i64 0
  %i.nl = insertelement <2 x float> %i.nk, float %i.aq, i64 1
  %i.nm = shufflevector <2 x float> %i.an, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.nn = shufflevector <2 x float> %i.ah, <2 x float> %i.an, <2 x i32> <i32 3, i32 0>
  br label %bb.ag

bb.ag:                                            ; preds = %.split1890, %bb.hn
  %i.no = phi i32 [ %.pre, %.split1890 ], [ %i.apk, %bb.hn ]
  %.11895 = phi i32 [ %.0466, %.split1890 ], [ %.2, %bb.hn ] ; 10 uses
  %.04671894 = phi float [ f0x7F7FFFFF, %.split1890 ], [ %i.aip, %bb.hn ]
  %.sroa.10.01893 = phi float [ 0.000000e+00, %.split1890 ], [ %i.akx, %bb.hn ]
  %.sroa.0295.01892 = phi <2 x float> [ zeroinitializer, %.split1890 ], [ %i.akw, %bb.hn ]
  %.04691891 = phi i32 [ 0, %.split1890 ], [ %i.apl, %bb.hn ] ; 6 uses
  switch i32 %i.no, label %.thread811.sink.split [
    i32 1, label %.critedge533
    i32 2, label %bb.ah
    i32 3, label %bb.ap
    i32 4, label %bb.bn
  ]

.critedge533:                                     ; preds = %bb.ag
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not52.i, label %bb.ai, label %bb.aj, !prof !20, !nosanitize !11

bb.ai:                                            ; preds = %bb.ah
  %i.np = add i64 %i.nj, 48, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @66, i64 %i.nj, i64 %i.np) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.aj:                                            ; preds = %bb.ah
  %.sroa.532.0.copyload.i = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %.sroa.030.0.copyload.i = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %i.nq = fsub float %.sroa.5.0.copyload.i, %.sroa.532.0.copyload.i ; 4 uses
  %i.nr = fmul float %i.nq, %i.nq
  %i.ns = fmul float %.sroa.5.0.copyload.i, %i.nq
  %i.nt = fsub <2 x float> %.sroa.028.0.copyload.i, %.sroa.030.0.copyload.i ; 6 uses
  %foldExtExtBinop3870 = fmul <2 x float> %i.nt, %i.nt
  %foldExtExtBinop3872 = fmul <2 x float> %i.nt, %i.nt
  %shift3874 = shufflevector <2 x float> %foldExtExtBinop3872, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3875 = fadd <2 x float> %foldExtExtBinop3870, %shift3874
  %i.nu = extractelement <2 x float> %foldExtExtBinop3875, i64 0
  %i.nv = fadd float %i.nr, %i.nu                 ; 2 uses
  %i.nw = fmul <2 x float> %.sroa.028.0.copyload.i, %i.nt ; 2 uses
  %shift3877 = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3878 = fadd <2 x float> %i.nw, %shift3877
  %i.nx = extractelement <2 x float> %foldExtExtBinop3878, i64 0
  %i.ny = fadd float %i.ns, %i.nx                 ; 2 uses
  %i.nz = fmul <2 x float> %.sroa.030.0.copyload.i, %i.nt ; 2 uses
  %shift3880 = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3881 = fadd <2 x float> %i.nz, %shift3880
  %i.oa = extractelement <2 x float> %foldExtExtBinop3881, i64 0
  %i.ob = fmul float %.sroa.532.0.copyload.i, %i.nq
  %i.oc = fadd float %i.ob, %i.oa                 ; 2 uses
  %i.od = fneg float %i.oc
  %i.oe = fcmp ult float %i.oc, 0.000000e+00
  br i1 %i.oe, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.of = fcmp ugt float %i.ny, 0.000000e+00
  br i1 %i.of, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.ls, i64 48, i1 false), !tbaa.struct !55
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.an:                                            ; preds = %bb.al
  %i.og = fcmp ugt float %i.nv, 0.000000e+00
  br i1 %i.og, label %bb.ao, label %.thread811.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.oh = fdiv float 1.000000e+00, %i.nv          ; 2 uses
  %i.oi = fmul float %i.ny, %i.oh                 ; 2 uses
  store float %i.oi, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.oj = fmul float %i.oh, %i.od
  store float %i.oj, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.ap:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.068.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1285.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  %.sroa.669.0.copyload.i = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19 ; 9 uses
  %.sroa.978.0.copyload.i = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.047.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1264.i)
  br i1 %i.lt, label %bb.ar, label %bb.aq, !prof !12, !nosanitize !11

bb.aq:                                            ; preds = %bb.ap
  %i.ok = add i64 %i.nj, 48, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @67, i64 %i.nj, i64 %i.ok) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ls, i64 24, i1 false), !tbaa.struct !55
  %.sroa.648.0.copyload.i = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19 ; 10 uses
  %.sroa.957.0.copyload.i = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  br i1 %i.lv, label %bb.at, label %bb.as, !prof !12, !nosanitize !11

bb.as:                                            ; preds = %bb.ar
  %i.ol = add i64 %i.nj, 96, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @68, i64 %i.nj, i64 %i.ol) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i64 24, i1 false), !tbaa.struct !55
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19 ; 10 uses
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.om = fsub <2 x float> %.sroa.648.0.copyload.i, %.sroa.669.0.copyload.i ; 4 uses
  %i.on = fsub float %.sroa.957.0.copyload.i, %.sroa.978.0.copyload.i ; 4 uses
  %i.oo = fmul float %.sroa.957.0.copyload.i, %i.on
  %i.op = shufflevector <2 x float> %.sroa.669.0.copyload.i, <2 x float> %.sroa.648.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.oq = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.or = fmul <2 x float> %i.op, %i.oq
  %i.os = shufflevector <2 x float> %.sroa.648.0.copyload.i, <2 x float> %.sroa.669.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.ot = fmul <2 x float> %i.os, %i.om
  %i.ou = fadd <2 x float> %i.or, %i.ot           ; 2 uses
  %i.ov = extractelement <2 x float> %i.ou, i64 0
  %i.ow = fadd float %i.oo, %i.ov                 ; 2 uses
  store float %i.ow, ptr %i.l, align 8, !tbaa !19
  %i.ox = fmul float %.sroa.978.0.copyload.i, %i.on
  %i.oy = extractelement <2 x float> %i.ou, i64 1
  %i.oz = fadd float %i.ox, %i.oy                 ; 2 uses
  %i.pa = fneg float %i.oz
  store float %i.pa, ptr %i.mw, align 4, !tbaa !19
  br i1 %.not36.i.i, label %bb.au, label %b3BarycentricCoordsEdge.exit.i, !prof !20, !nosanitize !11

bb.au:                                            ; preds = %bb.at
  %i.pb = ptrtoint ptr %i.l to i64, !nosanitize !11 ; 2 uses
  %i.pc = add i64 %i.pb, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.pb, i64 %i.pc) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit.i:                   ; preds = %bb.at
  %i.pd = fmul float %i.on, %i.on
  %i.pe = fmul <2 x float> %i.om, %i.om           ; 2 uses
  %shift3883 = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3884 = fadd <2 x float> %i.pe, %shift3883
  %i.pf = extractelement <2 x float> %foldExtExtBinop3884, i64 0
  %i.pg = fadd float %i.pd, %i.pf
  store float %i.pg, ptr %i.mx, align 8, !tbaa !19
  %i.ph = fsub <2 x float> %.sroa.6.0.copyload.i, %.sroa.648.0.copyload.i ; 4 uses
  %i.pi = fsub float %.sroa.9.0.copyload.i, %.sroa.957.0.copyload.i ; 4 uses
  %i.pj = fmul float %.sroa.9.0.copyload.i, %i.pi
  %i.pk = shufflevector <2 x float> %.sroa.648.0.copyload.i, <2 x float> %.sroa.6.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.pl = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pm = fmul <2 x float> %i.pk, %i.pl
  %i.pn = shufflevector <2 x float> %.sroa.6.0.copyload.i, <2 x float> %.sroa.648.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.po = fmul <2 x float> %i.pn, %i.ph
  %i.pp = fadd <2 x float> %i.pm, %i.po           ; 2 uses
  %i.pq = extractelement <2 x float> %i.pp, i64 0
  %i.pr = fadd float %i.pj, %i.pq                 ; 2 uses
  store float %i.pr, ptr %i.m, align 8, !tbaa !19
  %i.ps = fmul float %.sroa.957.0.copyload.i, %i.pi
  %i.pt = extractelement <2 x float> %i.pp, i64 1
end_hunk_0
begin_hunk_1_@b3ShapeDistance:bb.a
  %i.qo = extractelement <2 x float> %i.qk, i64 1
  %i.qp = fadd float %i.qn, %i.qo                 ; 2 uses
  %i.qq = fneg float %i.qp
  store float %i.qq, ptr %i.na, align 4, !tbaa !19
  br i1 %.not36.i186.i, label %bb.aw, label %b3BarycentricCoordsEdge.exit187.i, !prof !20, !nosanitize !11

bb.aw:                                            ; preds = %b3BarycentricCoordsEdge.exit180.i
  %i.qr = ptrtoint ptr %i.n to i64, !nosanitize !11 ; 2 uses
  %i.qs = add i64 %i.qr, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.qr, i64 %i.qs) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit187.i:                ; preds = %b3BarycentricCoordsEdge.exit180.i
  %i.qt = fmul float %i.qd, %i.qd
  %i.qu = fmul <2 x float> %i.qc, %i.qc           ; 2 uses
  %shift3889 = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3890 = fadd <2 x float> %i.qu, %shift3889
  %i.qv = extractelement <2 x float> %foldExtExtBinop3890, i64 0
  %i.qw = fadd float %i.qt, %i.qv
  store float %i.qw, ptr %i.nb, align 8, !tbaa !19
  %i.qx = fcmp ult float %i.oz, 0.000000e+00
  %i.qy = fcmp ugt float %i.qm, 0.000000e+00
  %or.cond.i = select i1 %i.qx, i1 true, i1 %i.qy
  br i1 %or.cond.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %b3BarycentricCoordsEdge.exit187.i
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  br label %b3SolveSimplex2.exit.thread806

bb.ay:                                            ; preds = %b3BarycentricCoordsEdge.exit187.i
  %i.qz = fcmp ult float %i.pu, 0.000000e+00
  %i.ra = fcmp ugt float %i.ow, 0.000000e+00
  %or.cond159.i = select i1 %i.qz, i1 true, i1 %i.ra
  br i1 %or.cond159.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ls, i64 24, i1 false)
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex2.exit.thread806

bb.ba:                                            ; preds = %bb.ay
  %i.rb = fcmp ult float %i.qp, 0.000000e+00
  %i.rc = fcmp ugt float %i.pr, 0.000000e+00
  %or.cond161.i = select i1 %i.rb, i1 true, i1 %i.rc
  br i1 %or.cond161.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i64 24, i1 false)
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex2.exit.thread806

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.o, <2 x float> %.sroa.669.0.copyload.i, float %.sroa.978.0.copyload.i, <2 x float> %.sroa.648.0.copyload.i, float %.sroa.957.0.copyload.i, <2 x float> %.sroa.6.0.copyload.i, float %.sroa.9.0.copyload.i)
  %i.rd = load float, ptr %i.nc, align 8, !tbaa !19 ; 2 uses
  %i.re = fcmp ole float %i.rd, 0.000000e+00
  %i.rf = load <2 x float>, ptr %i.l, align 8     ; 3 uses
  %i.rg = extractelement <2 x float> %i.rf, i64 0
  %i.rh = fcmp ogt float %i.rg, 0.000000e+00
  %or.cond163.i = select i1 %i.re, i1 %i.rh, i1 false
  %i.ri = extractelement <2 x float> %i.rf, i64 1
  %i.rj = fcmp ogt float %i.ri, 0.000000e+00
  %or.cond165.i = select i1 %or.cond163.i, i1 %i.rj, i1 false
  br i1 %or.cond165.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.669.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.978.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, i64 12, i1 false), !tbaa.struct !56
  %i.rk = load float, ptr %i.mx, align 8, !tbaa !19 ; 2 uses
  %i.rl = fcmp ugt float %i.rk, 0.000000e+00
  br i1 %i.rl, label %bb.be, label %b3SolveSimplex2.exit

bb.be:                                            ; preds = %bb.bd
  %i.rm = insertelement <2 x float> poison, float %i.rk, i64 0
  %i.rn = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ro = fdiv <2 x float> %i.rf, %i.rn           ; 2 uses
  %i.rp = extractelement <2 x float> %i.ro, i64 0 ; 2 uses
  store float %i.rp, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.rq = extractelement <2 x float> %i.ro, i64 1
  store float %i.rq, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread809

bb.bf:                                            ; preds = %bb.bc
  %i.rr = load float, ptr %i.o, align 16, !tbaa !19 ; 2 uses
  %i.rs = fcmp ole float %i.rr, 0.000000e+00
  %i.rt = load <2 x float>, ptr %i.m, align 8     ; 3 uses
  %i.ru = extractelement <2 x float> %i.rt, i64 0
  %i.rv = fcmp ogt float %i.ru, 0.000000e+00
  %or.cond167.i = select i1 %i.rs, i1 %i.rv, i1 false
  %i.rw = extractelement <2 x float> %i.rt, i64 1
  %i.rx = fcmp ogt float %i.rw, 0.000000e+00
  %or.cond169.i = select i1 %or.cond167.i, i1 %i.rx, i1 false
  br i1 %or.cond169.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, i64 12, i1 false), !tbaa.struct !56
  %i.ry = load float, ptr %i.mz, align 8, !tbaa !19 ; 2 uses
  %i.rz = fcmp ugt float %i.ry, 0.000000e+00
  br i1 %i.rz, label %bb.bh, label %b3SolveSimplex2.exit

bb.bh:                                            ; preds = %bb.bg
  %i.sa = insertelement <2 x float> poison, float %i.ry, i64 0
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sc = fdiv <2 x float> %i.rt, %i.sb           ; 2 uses
  %i.sd = extractelement <2 x float> %i.sc, i64 0 ; 2 uses
  store float %i.sd, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.se = extractelement <2 x float> %i.sc, i64 1
  store float %i.se, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread809

bb.bi:                                            ; preds = %bb.bf
  %i.sf = load float, ptr %i.nd, align 4, !tbaa !19 ; 2 uses
  %i.sg = fcmp ole float %i.sf, 0.000000e+00
  %i.sh = load <2 x float>, ptr %i.n, align 8     ; 3 uses
  %i.si = extractelement <2 x float> %i.sh, i64 0
  %i.sj = fcmp ogt float %i.si, 0.000000e+00
  %or.cond171.i = select i1 %i.sg, i1 %i.sj, i1 false
  %i.sk = extractelement <2 x float> %i.sh, i64 1
  %i.sl = fcmp ogt float %i.sk, 0.000000e+00
  %or.cond173.i = select i1 %or.cond171.i, i1 %i.sl, i1 false
  br i1 %or.cond173.i, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.669.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.978.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, i64 12, i1 false), !tbaa.struct !56
  %i.sm = load float, ptr %i.nb, align 8, !tbaa !19 ; 2 uses
  %i.sn = fcmp ugt float %i.sm, 0.000000e+00
  br i1 %i.sn, label %bb.bk, label %b3SolveSimplex2.exit

bb.bk:                                            ; preds = %bb.bj
  %i.so = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.sp = shufflevector <2 x float> %i.so, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sq = fdiv <2 x float> %i.sh, %i.sp           ; 2 uses
  %i.sr = extractelement <2 x float> %i.sq, i64 0 ; 2 uses
  store float %i.sr, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.ss = extractelement <2 x float> %i.sq, i64 1
  store float %i.ss, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread809

bb.bl:                                            ; preds = %bb.bi
  %i.st = load float, ptr %i.ne, align 4, !tbaa !19 ; 4 uses
  %i.su = fcmp ugt float %i.st, 0.000000e+00
  br i1 %i.su, label %bb.bm, label %b3SolveSimplex2.exit

bb.bm:                                            ; preds = %bb.bl
  %i.sv = fdiv float %i.rr, %i.st                 ; 2 uses
  store float %i.sv, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.sw = fdiv float %i.sf, %i.st
  store float %i.sw, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.sx = fdiv float %i.rd, %i.st
  store float %i.sx, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread809

bb.bn:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24262.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10226.0.copyload.i = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19 ; 20 uses
  %.sroa.17247.0.copyload.i = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24217.i)
  br i1 %i.lt, label %bb.bp, label %bb.bo, !prof !12, !nosanitize !11

bb.bo:                                            ; preds = %bb.bn
  %i.sy = add i64 %i.nj, 48, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @75, i64 %i.nj, i64 %i.sy) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ls, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10181.0.copyload.i = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19 ; 25 uses
  %.sroa.17202.0.copyload.i = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19 ; 18 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24172.i)
  br i1 %i.lv, label %bb.br, label %bb.bq, !prof !12, !nosanitize !11

bb.bq:                                            ; preds = %bb.bp
  %i.sz = add i64 %i.nj, 96, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @76, i64 %i.nj, i64 %i.sz) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10136.0.copyload.i = load <2 x float>, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19 ; 26 uses
  %.sroa.17157.0.copyload.i = load float, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19 ; 18 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  br i1 %i.lx, label %bb.bt, label %bb.bs, !prof !12, !nosanitize !11

bb.bs:                                            ; preds = %bb.br
  %i.ta = add i64 %i.nj, 144, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.nj, i64 %i.ta) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lw, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10.0.copyload.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !19 ; 25 uses
  %.sroa.17.0.copyload.i = load float, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !19 ; 18 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.tb = fsub <2 x float> %.sroa.10181.0.copyload.i, %.sroa.10226.0.copyload.i ; 6 uses
  %i.tc = fsub float %.sroa.17202.0.copyload.i, %.sroa.17247.0.copyload.i ; 5 uses
  %i.td = fmul float %.sroa.17202.0.copyload.i, %i.tc
  %i.te = shufflevector <2 x float> %.sroa.10226.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.tf = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tg = fmul <2 x float> %i.te, %i.tf
  %i.th = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.ti = fmul <2 x float> %i.th, %i.tb
  %i.tj = fadd <2 x float> %i.tg, %i.ti           ; 2 uses
  %i.tk = extractelement <2 x float> %i.tj, i64 0
  %i.tl = fadd float %i.td, %i.tk                 ; 2 uses
  store float %i.tl, ptr %i.a, align 8, !tbaa !19
  %i.tm = fmul float %.sroa.17247.0.copyload.i, %i.tc
  %i.tn = extractelement <2 x float> %i.tj, i64 1
  %i.to = fadd float %i.tm, %i.tn                 ; 2 uses
  %i.tp = fneg float %i.to
  store float %i.tp, ptr %i.ly, align 4, !tbaa !19
  br i1 %.not36.i.i579, label %bb.bu, label %b3BarycentricCoordsEdge.exit.i580, !prof !20, !nosanitize !11

bb.bu:                                            ; preds = %bb.bt
  %i.tq = ptrtoint ptr %i.a to i64, !nosanitize !11 ; 2 uses
  %i.tr = add i64 %i.tq, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.tq, i64 %i.tr) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit.i580:                ; preds = %bb.bt
  %i.ts = fmul float %i.tc, %i.tc
  %i.tt = fmul <2 x float> %i.tb, %i.tb           ; 2 uses
  %shift3892 = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3893 = fadd <2 x float> %i.tt, %shift3892
  %i.tu = extractelement <2 x float> %foldExtExtBinop3893, i64 0
  %i.tv = fadd float %i.ts, %i.tu
  store float %i.tv, ptr %i.lz, align 8, !tbaa !19
  %i.tw = fsub <2 x float> %.sroa.10136.0.copyload.i, %.sroa.10226.0.copyload.i ; 7 uses
  %i.tx = fsub float %.sroa.17157.0.copyload.i, %.sroa.17247.0.copyload.i ; 6 uses
  %i.ty = fmul float %.sroa.17157.0.copyload.i, %i.tx
  %i.tz = shufflevector <2 x float> %.sroa.10226.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.ua = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ub = fmul <2 x float> %i.tz, %i.ua
  %i.uc = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.ud = fmul <2 x float> %i.uc, %i.tw
  %i.ue = fadd <2 x float> %i.ub, %i.ud           ; 2 uses
  %i.uf = extractelement <2 x float> %i.ue, i64 0
  %i.ug = fadd float %i.ty, %i.uf                 ; 2 uses
  store float %i.ug, ptr %i.b, align 4, !tbaa !19
  %i.uh = fmul float %.sroa.17247.0.copyload.i, %i.tx
  %i.ui = extractelement <2 x float> %i.ue, i64 1
  %i.uj = fadd float %i.uh, %i.ui                 ; 2 uses
  br i1 %.not.i509.i, label %bb.bv, label %bb.bw, !prof !20, !nosanitize !11

bb.bv:                                            ; preds = %b3BarycentricCoordsEdge.exit.i580
  %i.uk = ptrtoint ptr %i.b to i64, !nosanitize !11 ; 2 uses
  %i.ul = add i64 %i.uk, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.uk, i64 %i.ul) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bw:                                            ; preds = %b3BarycentricCoordsEdge.exit.i580
  %i.um = fneg float %i.uj
  store float %i.um, ptr %i.ma, align 4, !tbaa !19
  br i1 %.not36.i510.i, label %bb.bx, label %b3BarycentricCoordsEdge.exit511.i, !prof !20, !nosanitize !11

bb.bx:                                            ; preds = %bb.bw
  %i.un = ptrtoint ptr %i.b to i64, !nosanitize !11 ; 2 uses
  %i.uo = add i64 %i.un, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.un, i64 %i.uo) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit511.i:                ; preds = %bb.bw
  %i.up = fmul float %i.tx, %i.tx
  %i.uq = fmul <2 x float> %i.tw, %i.tw           ; 2 uses
  %shift3895 = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3896 = fadd <2 x float> %i.uq, %shift3895
  %i.ur = extractelement <2 x float> %foldExtExtBinop3896, i64 0
  %i.us = fadd float %i.up, %i.ur
  store float %i.us, ptr %i.mb, align 4, !tbaa !19
  %i.ut = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10226.0.copyload.i ; 7 uses
  %i.uu = fsub float %.sroa.17.0.copyload.i, %.sroa.17247.0.copyload.i ; 6 uses
  %i.uv = fmul float %.sroa.17.0.copyload.i, %i.uu
  %i.uw = shufflevector <2 x float> %.sroa.10226.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.ux = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uy = fmul <2 x float> %i.uw, %i.ux
  %i.uz = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.va = fmul <2 x float> %i.uz, %i.ut
  %i.vb = fadd <2 x float> %i.uy, %i.va           ; 2 uses
  %i.vc = extractelement <2 x float> %i.vb, i64 0
  %i.vd = fadd float %i.uv, %i.vc                 ; 2 uses
  store float %i.vd, ptr %i.c, align 4, !tbaa !19
  %i.ve = fmul float %.sroa.17247.0.copyload.i, %i.uu
  %i.vf = extractelement <2 x float> %i.vb, i64 1
  %i.vg = fadd float %i.ve, %i.vf                 ; 2 uses
  br i1 %.not.i516.i, label %bb.by, label %bb.bz, !prof !20, !nosanitize !11

bb.by:                                            ; preds = %b3BarycentricCoordsEdge.exit511.i
  %i.vh = ptrtoint ptr %i.c to i64, !nosanitize !11 ; 2 uses
  %i.vi = add i64 %i.vh, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.vh, i64 %i.vi) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bz:                                            ; preds = %b3BarycentricCoordsEdge.exit511.i
  %i.vj = fneg float %i.vg
  store float %i.vj, ptr %i.mc, align 4, !tbaa !19
  br i1 %.not36.i517.i, label %bb.ca, label %b3BarycentricCoordsEdge.exit518.i, !prof !20, !nosanitize !11

bb.ca:                                            ; preds = %bb.bz
  %i.vk = ptrtoint ptr %i.c to i64, !nosanitize !11 ; 2 uses
  %i.vl = add i64 %i.vk, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.vk, i64 %i.vl) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit518.i:                ; preds = %bb.bz
  %i.vm = fmul float %i.uu, %i.uu
  %i.vn = fmul <2 x float> %i.ut, %i.ut           ; 2 uses
  %shift3898 = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3899 = fadd <2 x float> %i.vn, %shift3898
  %i.vo = extractelement <2 x float> %foldExtExtBinop3899, i64 0
  %i.vp = fadd float %i.vm, %i.vo
  store float %i.vp, ptr %i.md, align 4, !tbaa !19
  %i.vq = fsub <2 x float> %.sroa.10136.0.copyload.i, %.sroa.10181.0.copyload.i ; 4 uses
  %i.vr = fsub float %.sroa.17157.0.copyload.i, %.sroa.17202.0.copyload.i ; 4 uses
  %i.vs = fmul float %.sroa.17157.0.copyload.i, %i.vr
  %i.vt = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.vu = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vv = fmul <2 x float> %i.vt, %i.vu
  %i.vw = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.vx = fmul <2 x float> %i.vw, %i.vq
  %i.vy = fadd <2 x float> %i.vv, %i.vx           ; 2 uses
  %i.vz = extractelement <2 x float> %i.vy, i64 0
  %i.wa = fadd float %i.vs, %i.vz                 ; 2 uses
  store float %i.wa, ptr %i.d, align 4, !tbaa !19
  %i.wb = fmul float %.sroa.17202.0.copyload.i, %i.vr
  %i.wc = extractelement <2 x float> %i.vy, i64 1
  %i.wd = fadd float %i.wb, %i.wc                 ; 2 uses
  br i1 %.not.i523.i, label %bb.cb, label %bb.cc, !prof !20, !nosanitize !11

bb.cb:                                            ; preds = %b3BarycentricCoordsEdge.exit518.i
  %i.we = ptrtoint ptr %i.d to i64, !nosanitize !11 ; 2 uses
  %i.wf = add i64 %i.we, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.we, i64 %i.wf) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cc:                                            ; preds = %b3BarycentricCoordsEdge.exit518.i
  %i.wg = fneg float %i.wd
  store float %i.wg, ptr %i.me, align 4, !tbaa !19
  br i1 %.not36.i524.i, label %bb.cd, label %b3BarycentricCoordsEdge.exit525.i, !prof !20, !nosanitize !11

bb.cd:                                            ; preds = %bb.cc
  %i.wh = ptrtoint ptr %i.d to i64, !nosanitize !11 ; 2 uses
  %i.wi = add i64 %i.wh, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.wh, i64 %i.wi) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit525.i:                ; preds = %bb.cc
  %i.wj = fmul float %i.vr, %i.vr
  %i.wk = fmul <2 x float> %i.vq, %i.vq           ; 2 uses
  %shift3901 = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3902 = fadd <2 x float> %i.wk, %shift3901
  %i.wl = extractelement <2 x float> %foldExtExtBinop3902, i64 0
  %i.wm = fadd float %i.wj, %i.wl
  store float %i.wm, ptr %i.mf, align 4, !tbaa !19
  %i.wn = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10136.0.copyload.i ; 4 uses
  %i.wo = fsub float %.sroa.17.0.copyload.i, %.sroa.17157.0.copyload.i ; 4 uses
  %i.wp = fmul float %.sroa.17.0.copyload.i, %i.wo
  %i.wq = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.wr = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ws = fmul <2 x float> %i.wq, %i.wr
end_hunk_1
begin_hunk_2_@b3ShapeDistance:bb.a

bb.dv:                                            ; preds = %bb.dt
  %i.aae = load float, ptr %i.mc, align 4, !tbaa !19 ; 2 uses
  %i.aaf = fcmp ogt float %i.aae, 0.000000e+00
  br i1 %i.aaf, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.aag = load float, ptr %i.md, align 4, !tbaa !19 ; 2 uses
  %i.aah = fcmp ugt float %i.aag, 0.000000e+00
  br i1 %i.aah, label %bb.dx, label %b3SolveSimplex4.exit.thread829

bb.dx:                                            ; preds = %bb.dw
  %i.aai = insertelement <2 x float> poison, float %i.aac, i64 0
  %i.aaj = insertelement <2 x float> %i.aai, float %i.aae, i64 1
  %i.aak = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aal = shufflevector <2 x float> %i.aak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aam = fdiv <2 x float> %i.aaj, %i.aal        ; 2 uses
  %i.aan = extractelement <2 x float> %i.aam, i64 0
  store float %i.aan, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.dy:                                            ; preds = %bb.dv, %bb.ds, %bb.dr
  %i.aao = load float, ptr %i.g, align 16, !tbaa !19 ; 3 uses
  %i.aap = fcmp ugt float %i.aao, 0.000000e+00
  br i1 %i.aap, label %bb.ef, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aaq = load float, ptr %i.mq, align 8, !tbaa !19
  %i.aar = fcmp ole float %i.aaq, 0.000000e+00
  %i.aas = load float, ptr %i.d, align 4          ; 2 uses
  %i.aat = fcmp ogt float %i.aas, 0.000000e+00
  %or.cond484.i = select i1 %i.aar, i1 %i.aat, i1 false
  br i1 %or.cond484.i, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  br i1 %.not455.i, label %bb.eb, label %bb.ec, !prof !20, !nosanitize !11

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 -4, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ec:                                            ; preds = %bb.ea
  %i.aau = load float, ptr %i.me, align 4, !tbaa !19 ; 2 uses
  %i.aav = fcmp ogt float %i.aau, 0.000000e+00
  br i1 %i.aav, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  %i.aaw = load float, ptr %i.mf, align 4, !tbaa !19 ; 2 uses
  %i.aax = fcmp ugt float %i.aaw, 0.000000e+00
  br i1 %i.aax, label %bb.ee, label %b3SolveSimplex4.exit.thread829

bb.ee:                                            ; preds = %bb.ed
  %i.aay = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.aaz = insertelement <2 x float> %i.aay, float %i.aau, i64 1
  %i.aba = insertelement <2 x float> poison, float %i.aaw, i64 0
  %i.abb = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abc = fdiv <2 x float> %i.aaz, %i.abb        ; 2 uses
  %i.abd = extractelement <2 x float> %i.abc, i64 0
  store float %i.abd, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.ef:                                            ; preds = %bb.ec, %bb.dz, %bb.dy
  %i.abe = load float, ptr %i.i, align 16, !tbaa !19 ; 3 uses
  %i.abf = fcmp ole float %i.abe, 0.000000e+00
  %i.abg = load float, ptr %i.j, align 16         ; 3 uses
  %i.abh = fcmp ole float %i.abg, 0.000000e+00
  %or.cond486.not547.i = select i1 %i.abf, i1 %i.abh, i1 false
  %i.abi = load float, ptr %i.e, align 4          ; 2 uses
  %i.abj = fcmp ogt float %i.abi, 0.000000e+00
  %or.cond488.i = select i1 %or.cond486.not547.i, i1 %i.abj, i1 false
  br i1 %or.cond488.i, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  br i1 %.not456.i, label %bb.eh, label %bb.ei, !prof !20, !nosanitize !11

bb.eh:                                            ; preds = %bb.eg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 -4, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ei:                                            ; preds = %bb.eg
  %i.abk = load float, ptr %i.mg, align 4, !tbaa !19 ; 2 uses
  %i.abl = fcmp ogt float %i.abk, 0.000000e+00
  br i1 %i.abl, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.abm = load float, ptr %i.mh, align 4, !tbaa !19 ; 2 uses
  %i.abn = fcmp ugt float %i.abm, 0.000000e+00
  br i1 %i.abn, label %bb.ek, label %b3SolveSimplex4.exit.thread829

bb.ek:                                            ; preds = %bb.ej
  %i.abo = insertelement <2 x float> poison, float %i.abi, i64 0
  %i.abp = insertelement <2 x float> %i.abo, float %i.abk, i64 1
  %i.abq = insertelement <2 x float> poison, float %i.abm, i64 0
  %i.abr = shufflevector <2 x float> %i.abq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abs = fdiv <2 x float> %i.abp, %i.abr        ; 2 uses
  %i.abt = extractelement <2 x float> %i.abs, i64 0
  store float %i.abt, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.el:                                            ; preds = %bb.ei, %bb.ef
  %i.abu = load float, ptr %i.h, align 16, !tbaa !19 ; 3 uses
  %i.abv = fcmp ugt float %i.abu, 0.000000e+00
  br i1 %i.abv, label %bb.es, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.abw = load float, ptr %i.mr, align 4, !tbaa !19
  %i.abx = fcmp ole float %i.abw, 0.000000e+00
  %i.aby = load float, ptr %i.f, align 4          ; 2 uses
  %i.abz = fcmp ogt float %i.aby, 0.000000e+00
  %or.cond490.i = select i1 %i.abx, i1 %i.abz, i1 false
  br i1 %or.cond490.i, label %bb.en, label %bb.es

bb.en:                                            ; preds = %bb.em
  br i1 %.not457.i, label %bb.eo, label %bb.ep, !prof !20, !nosanitize !11

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 -4, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ep:                                            ; preds = %bb.en
  %i.aca = load float, ptr %i.mi, align 4, !tbaa !19 ; 2 uses
  %i.acb = fcmp ogt float %i.aca, 0.000000e+00
  br i1 %i.acb, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.acc = load float, ptr %i.mj, align 4, !tbaa !19 ; 2 uses
  %i.acd = fcmp ugt float %i.acc, 0.000000e+00
  br i1 %i.acd, label %bb.er, label %b3SolveSimplex4.exit.thread829

bb.er:                                            ; preds = %bb.eq
  %i.ace = insertelement <2 x float> poison, float %i.aby, i64 0
  %i.acf = insertelement <2 x float> %i.ace, float %i.aca, i64 1
  %i.acg = insertelement <2 x float> poison, float %i.acc, i64 0
  %i.ach = shufflevector <2 x float> %i.acg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aci = fdiv <2 x float> %i.acf, %i.ach        ; 2 uses
  %i.acj = extractelement <2 x float> %i.aci, i64 0
  store float %i.acj, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.es:                                            ; preds = %bb.ep, %bb.em, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.ack = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.acl = insertelement <2 x float> %i.ack, float %i.uu, i64 1
  %i.acm = fmul <2 x float> %i.tw, %i.acl
  %i.acn = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aco = insertelement <2 x float> %i.acn, float %i.tx, i64 1
  %i.acp = fmul <2 x float> %i.aco, %i.ut
  %i.acq = extractelement <2 x float> %i.ut, i64 0
  %i.acr = fmul float %i.tx, %i.acq
  %i.acs = extractelement <2 x float> %i.tw, i64 0
  %i.act = fmul float %i.acs, %i.uu
  %i.acu = fsub float %i.acr, %i.act
  %i.acv = extractelement <2 x float> %i.tb, i64 1
  %i.acw = fmul float %i.acv, %i.acu
  %i.acx = fsub <2 x float> %i.acm, %i.acp
  %i.acy = insertelement <2 x float> poison, float %i.tc, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> %i.tb, <2 x i32> <i32 0, i32 2>
  %i.ada = fmul <2 x float> %i.acz, %i.acx        ; 2 uses
  %i.adb = extractelement <2 x float> %i.ada, i64 1
  %i.adc = fadd float %i.adb, %i.acw
  %i.add = extractelement <2 x float> %i.ada, i64 0
  %i.ade = fadd float %i.add, %i.adc              ; 2 uses
  %i.adf = fcmp olt float %i.ade, 0.000000e+00
  %i.adg = select i1 %i.adf, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %11 = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %12 = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.adh = fmul <4 x float> %11, %12
  %13 = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %14 = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %i.adi = fmul <4 x float> %13, %14
  %15 = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <4 x i32> <i32 1, i32 3, i32 1, i32 2>
  %i.adj = insertelement <4 x float> poison, float %.sroa.17.0.copyload.i, i64 0
  %i.adk = insertelement <4 x float> %i.adj, float %.sroa.17157.0.copyload.i, i64 1
  %i.adl = insertelement <4 x float> %i.adk, float %.sroa.17202.0.copyload.i, i64 2
  %i.adm = shufflevector <4 x float> %i.adl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.adn = fmul <4 x float> %15, %i.adm
  %i.ado = insertelement <4 x float> poison, float %.sroa.17157.0.copyload.i, i64 0
  %i.adp = insertelement <4 x float> %i.ado, float %.sroa.17.0.copyload.i, i64 1
  %16 = shufflevector <4 x float> %i.adp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %17 = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.adq = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.adr = shufflevector <4 x float> %17, <4 x float> %i.adq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ads = fmul <4 x float> %16, %i.adr
  %18 = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.adt = shufflevector <4 x float> %18, <4 x float> %i.adq, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.adu = fmul <4 x float> %16, %i.adt
  %19 = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.adv = fmul <4 x float> %19, %i.adm
  %i.adw = fsub <4 x float> %i.adn, %i.ads
  %i.adx = fsub <4 x float> %i.adu, %i.adv
  %i.ady = fsub <4 x float> %i.adh, %i.adi
  %20 = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.adz = fmul <4 x float> %20, %i.adw
  %21 = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.aea = fmul <4 x float> %21, %i.adx
  %i.aeb = fadd <4 x float> %i.adz, %i.aea
  %22 = insertelement <4 x float> poison, float %.sroa.17202.0.copyload.i, i64 0
  %23 = insertelement <4 x float> %22, float %.sroa.17247.0.copyload.i, i64 1
  %i.aec = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aed = fmul <4 x float> %i.aec, %i.ady
  %i.aee = fadd <4 x float> %i.aed, %i.aeb
  %i.aef = insertelement <4 x float> poison, float %i.adg, i64 0
  %i.aeg = shufflevector <4 x float> %i.aef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeh = fmul <4 x float> %i.aee, %i.aeg        ; 6 uses
  %24 = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x float> %24, ptr %i.k, align 16, !tbaa !19
  br i1 %.not102.i.i, label %bb.et, label %b3BarycentricCoordsTet.exit.i, !prof !20, !nosanitize !11

bb.et:                                            ; preds = %bb.es
  %i.aei = ptrtoint ptr %i.k to i64, !nosanitize !11 ; 2 uses
  %i.aej = add i64 %i.aei, 16, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.aei, i64 %i.aej) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsTet.exit.i:                    ; preds = %bb.es
  %i.aek = fmul float %i.ade, %i.adg              ; 2 uses
  %i.ael = extractelement <4 x float> %i.aeh, i64 2
  %i.aem = fcmp olt float %i.ael, 0.000000e+00
  %i.aen = fcmp ogt float %i.aao, 0.000000e+00
  %or.cond492.i = and i1 %i.aem, %i.aen
  br i1 %or.cond492.i, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %b3BarycentricCoordsTet.exit.i
  %i.aeo = load float, ptr %i.ml, align 4, !tbaa !19 ; 2 uses
  %i.aep = fcmp ogt float %i.aeo, 0.000000e+00
  %i.aeq = fcmp ogt float %i.zi, 0.000000e+00
  %or.cond494.i = and i1 %i.aeq, %i.aep
  br i1 %or.cond494.i, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.aer = load float, ptr %i.mv, align 4, !tbaa !19 ; 4 uses
  %i.aes = fcmp ugt float %i.aer, 0.000000e+00
  br i1 %i.aes, label %bb.ew, label %b3SolveSimplex4.exit

bb.ew:                                            ; preds = %bb.ev
  %i.aet = fdiv float %i.aao, %i.aer              ; 2 uses
  store float %i.aet, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.aeu = fdiv float %i.aeo, %i.aer
  store float %i.aeu, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.aev = fdiv float %i.zi, %i.aer
  store float %i.aev, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread832

bb.ex:                                            ; preds = %bb.eu, %b3BarycentricCoordsTet.exit.i
  %i.aew = extractelement <4 x float> %i.aeh, i64 3
  %i.aex = fcmp olt float %i.aew, 0.000000e+00
  %i.aey = fcmp ogt float %i.abu, 0.000000e+00
  %or.cond496.i = and i1 %i.aex, %i.aey
  br i1 %or.cond496.i, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  %i.aez = load float, ptr %i.mp, align 4, !tbaa !19 ; 2 uses
  %i.afa = fcmp ogt float %i.aez, 0.000000e+00
  %i.afb = fcmp ogt float %i.yt, 0.000000e+00
  %or.cond498.i = and i1 %i.afb, %i.afa
  br i1 %or.cond498.i, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.afc = load float, ptr %i.mu, align 4, !tbaa !19 ; 4 uses
  %i.afd = fcmp ugt float %i.afc, 0.000000e+00
  br i1 %i.afd, label %bb.fa, label %b3SolveSimplex4.exit

bb.fa:                                            ; preds = %bb.ez
  %i.afe = fdiv float %i.abu, %i.afc              ; 2 uses
  store float %i.afe, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.aff = fdiv float %i.aez, %i.afc
  store float %i.aff, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.afg = fdiv float %i.yt, %i.afc
  store float %i.afg, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread832

bb.fb:                                            ; preds = %bb.ey, %bb.ex
  %i.afh = extractelement <4 x float> %i.aeh, i64 1
  %i.afi = fcmp olt float %i.afh, 0.000000e+00
  %i.afj = fcmp ogt float %i.abe, 0.000000e+00
  %or.cond500.i = and i1 %i.afi, %i.afj
  br i1 %or.cond500.i, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.afk = load float, ptr %i.mn, align 4, !tbaa !19 ; 2 uses
  %i.afl = fcmp ogt float %i.afk, 0.000000e+00
  %i.afm = fcmp ogt float %i.zy, 0.000000e+00
  %or.cond502.i = and i1 %i.afm, %i.afl
  br i1 %or.cond502.i, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  %i.afn = load float, ptr %i.mt, align 4, !tbaa !19 ; 4 uses
  %i.afo = fcmp ugt float %i.afn, 0.000000e+00
  br i1 %i.afo, label %bb.fe, label %b3SolveSimplex4.exit

bb.fe:                                            ; preds = %bb.fd
  %i.afp = fdiv float %i.abe, %i.afn              ; 2 uses
  store float %i.afp, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.afq = fdiv float %i.afk, %i.afn
  store float %i.afq, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.afr = fdiv float %i.zy, %i.afn
  store float %i.afr, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread832

bb.ff:                                            ; preds = %bb.fc, %bb.fb
  %i.afs = extractelement <4 x float> %i.aeh, i64 0
  %i.aft = fcmp olt float %i.afs, 0.000000e+00
  %i.afu = fcmp ogt float %i.abg, 0.000000e+00
  %or.cond504.i = select i1 %i.aft, i1 %i.afu, i1 false
  %25 = load float, ptr %i.mr, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  %or.cond504.i.a = select i1 %or.cond504.i, i1 %26, i1 false
  br i1 %or.cond504.i.a, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %i.afv = load float, ptr %i.mq, align 8, !tbaa !19
  %27 = load <2 x float>, ptr %i.mr, align 4, !tbaa !19
  %i.afw = fcmp ogt float %i.afv, 0.000000e+00
  br i1 %i.afw, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.afx = load float, ptr %i.ms, align 4, !tbaa !19 ; 3 uses
  %i.afy = fcmp ugt float %i.afx, 0.000000e+00
  br i1 %i.afy, label %bb.fi, label %b3SolveSimplex4.exit

bb.fi:                                            ; preds = %bb.fh
  %i.afz = fdiv float %i.abg, %i.afx              ; 2 uses
  store float %i.afz, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %28 = insertelement <2 x float> poison, float %i.afx, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fdiv <2 x float> %27, %29                 ; 2 uses
  %31 = extractelement <2 x float> %30, i64 0
  store float %31, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %32 = extractelement <2 x float> %30, i64 1
  store float %32, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread832

bb.fj:                                            ; preds = %bb.fg, %bb.ff
  br i1 %.not463.i, label %bb.fk, label %bb.fl, !prof !20, !nosanitize !11

bb.fk:                                            ; preds = %bb.fj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 -16, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fl:                                            ; preds = %bb.fj
  %i.aga = fcmp ugt float %i.aek, 0.000000e+00
  br i1 %i.aga, label %bb.fm, label %b3SolveSimplex4.exit

bb.fm:                                            ; preds = %bb.fl
  %i.agb = insertelement <4 x float> poison, float %i.aek, i64 0
  %i.agc = shufflevector <4 x float> %i.agb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agd = fdiv <4 x float> %i.aeh, %i.agc        ; 4 uses
  %i.age = extractelement <4 x float> %i.agd, i64 0 ; 2 uses
  store float %i.age, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.agf = extractelement <4 x float> %i.agd, i64 1
  store float %i.agf, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.agg = extractelement <4 x float> %i.agd, i64 3
  store float %i.agg, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  %i.agh = extractelement <4 x float> %i.agd, i64 2
  store float %i.agh, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread832

b3SolveSimplex4.exit.thread:                      ; preds = %bb.cq, %bb.cv, %bb.da, %bb.df
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24217.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24262.i)
  br label %b3SolveSimplex2.exit.thread

b3SolveSimplex4.exit.thread826:                   ; preds = %bb.dj, %bb.dq, %bb.dx, %bb.ee, %bb.ek, %bb.er
  %i.agi = phi <2 x float> [ %i.zg, %bb.dj ], [ %i.zw, %bb.dq ], [ %i.aam, %bb.dx ], [ %i.abc, %bb.ee ], [ %i.abs, %bb.ek ], [ %i.aci, %bb.er ] ; 2 uses
  %i.agj = extractelement <2 x float> %i.agi, i64 1
  store float %i.agj, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24217.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24262.i)
  %i.agk = extractelement <2 x float> %i.agi, i64 0
  br label %b3SolveSimplex2.exit.thread

b3SolveSimplex4.exit.thread829:                   ; preds = %bb.dp, %bb.dw, %bb.ed, %bb.ej, %bb.eq, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24217.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24262.i)
  br label %.thread811.sink.split

b3SolveSimplex4.exit.thread832:                   ; preds = %bb.fi, %bb.ew, %bb.fa, %bb.fe, %bb.fm
  %i.agl = phi float [ %i.afz, %bb.fi ], [ %i.aet, %bb.ew ], [ %i.afe, %bb.fa ], [ %i.afp, %bb.fe ], [ %i.age, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24217.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24262.i)
  br label %b3SolveSimplex2.exit.thread

b3SolveSimplex4.exit:                             ; preds = %bb.ev, %bb.ez, %bb.fd, %bb.fh, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24217.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24262.i)
  br label %.thread811.sink.split

b3SolveSimplex2.exit.thread806:                   ; preds = %bb.ax, %bb.az, %bb.bb
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1264.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.068.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1285.i)
  br label %b3SolveSimplex2.exit.thread

b3SolveSimplex2.exit.thread809:                   ; preds = %bb.bk, %bb.be, %bb.bh, %bb.bm
  %i.agm = phi float [ %i.sr, %bb.bk ], [ %i.rp, %bb.be ], [ %i.sd, %bb.bh ], [ %i.sv, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1264.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.068.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1285.i)
  br label %b3SolveSimplex2.exit.thread

b3SolveSimplex2.exit:                             ; preds = %bb.bd, %bb.bg, %bb.bj, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.047.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1264.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.068.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1285.i)
  br label %.thread811.sink.split

b3SolveSimplex2.exit.thread:                      ; preds = %bb.ao, %bb.am, %bb.ak, %b3SolveSimplex4.exit.thread832, %b3SolveSimplex4.exit.thread826, %b3SolveSimplex4.exit.thread, %b3SolveSimplex2.exit.thread809, %b3SolveSimplex2.exit.thread806, %.critedge533
  %i.agn = phi float [ %i.oi, %bb.ao ], [ 1.000000e+00, %bb.am ], [ 1.000000e+00, %bb.ak ], [ %i.agl, %b3SolveSimplex4.exit.thread832 ], [ %i.agk, %b3SolveSimplex4.exit.thread826 ], [ 1.000000e+00, %b3SolveSimplex4.exit.thread ], [ %i.agm, %b3SolveSimplex2.exit.thread809 ], [ 1.000000e+00, %b3SolveSimplex2.exit.thread806 ], [ 1.000000e+00, %.critedge533 ] ; 4 uses
  %i.ago = icmp slt i32 %.11895, %4
  %or.cond535 = select i1 %.not, i1 %i.ago, i1 false
  br i1 %or.cond535, label %bb.fn, label %bb.fs

bb.fn:                                            ; preds = %b3SolveSimplex2.exit.thread
  %i.agp = sext i32 %.11895 to i64                ; 2 uses
  %i.agq = getelementptr inbounds [196 x i8], ptr %3, i64 %i.agp ; 2 uses
  %i.agr = mul nsw i64 %i.agp, 196
  %i.ags = add i64 %i.agr, %i.lp, !nosanitize !11 ; 3 uses
  %i.agt = icmp ne i64 %i.ags, 0, !nosanitize !11
  %i.agu = icmp uge i64 %i.ags, %i.lp, !nosanitize !11
  %i.agv = icmp slt i32 %.11895, 0
  %i.agw = xor i1 %i.agv, %i.agu
  %i.agx = and i1 %i.agt, %i.agw, !nosanitize !11
  br i1 %i.agx, label %bb.fp, label %bb.fo, !prof !12, !nosanitize !11

bb.fo:                                            ; preds = %bb.fn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %i.lp, i64 %i.ags) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fp:                                            ; preds = %bb.fn
  %i.agy = ptrtoint ptr %i.agq to i64, !nosanitize !11 ; 2 uses
  %i.agz = and i64 %i.agy, 3, !nosanitize !11
  %i.aha = icmp eq i64 %i.agz, 0, !nosanitize !11
  br i1 %i.aha, label %bb.fr, label %bb.fq, !prof !12, !nosanitize !11

bb.fq:                                            ; preds = %bb.fp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @27, i64 %i.agy) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.agq, ptr noundef nonnull align 8 dereferenceable(196) %5, i64 196, i1 false), !tbaa.struct !54
  %i.ahb = add nsw i32 %.11895, 1                 ; 2 uses
  store i32 %.04691891, ptr %i.nf, align 4, !tbaa !57
  store i32 %i.ahb, ptr %i.ng, align 4, !tbaa !58
  br label %bb.fs

bb.fs:                                            ; preds = %b3SolveSimplex2.exit.thread, %bb.fr
  %.2 = phi i32 [ %i.ahb, %bb.fr ], [ %.11895, %b3SolveSimplex2.exit.thread ] ; 6 uses
  %i.ahc = load i32, ptr %i.ba, align 8, !tbaa !23 ; 8 uses
  switch i32 %i.ahc, label %bb.gd [
    i32 4, label %bb.ft
    i32 1, label %bb.fu
    i32 2, label %bb.fv
    i32 3, label %bb.fy
  ]
end_hunk_2
