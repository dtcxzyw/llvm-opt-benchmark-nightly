Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mappergradproj?download=true
inline.NumInlined: 707
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2cv3reg14MapperGradProj9calculateERKNS_11_InputArrayES4_NS_3PtrINS0_3MapEEE:bb.a
  store double %i.gt, ptr %.sroa.34723.0..sroa_idx, align 8
  %.sroa.36724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 208
  store double %i.hc, ptr %.sroa.36724.0..sroa_idx, align 8
  %.sroa.38725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 216
  store double %i.lf, ptr %.sroa.38725.0..sroa_idx, align 8
  %.sroa.39726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 224
  store double %i.lo, ptr %.sroa.39726.0..sroa_idx, align 8
  %.sroa.40727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 232
  store double %i.lx, ptr %.sroa.40727.0..sroa_idx, align 8
  %.sroa.41728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 240
  store double %i.mh, ptr %.sroa.41728.0..sroa_idx, align 8
  %.sroa.42729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 248
  store double %i.mr, ptr %.sroa.42729.0..sroa_idx, align 8
  %.sroa.43730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 256
  store double %i.gt, ptr %.sroa.43730.0..sroa_idx, align 8
  %.sroa.46732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 264
  store double %i.ix, ptr %.sroa.46732.0..sroa_idx, align 8
  %.sroa.48733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 272
  store double %i.jg, ptr %.sroa.48733.0..sroa_idx, align 8
  %.sroa.50734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 280
  store double %i.lo, ptr %.sroa.50734.0..sroa_idx, align 8
  %.sroa.52735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 288
  store double %i.na, ptr %.sroa.52735.0..sroa_idx, align 8
  %.sroa.53736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 296
  store double %i.nj, ptr %.sroa.53736.0..sroa_idx, align 8
  %.sroa.54737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 304
  store double %i.mr, ptr %.sroa.54737.0..sroa_idx, align 8
  %.sroa.55738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 312
  store double %i.nt, ptr %.sroa.55738.0..sroa_idx, align 8
  %.sroa.56739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 320
  store double %i.hc, ptr %.sroa.56739.0..sroa_idx, align 8
  %.sroa.59741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 328
  store double %i.jg, ptr %.sroa.59741.0..sroa_idx, align 8
  %.sroa.62743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 336
  store double %i.kf, ptr %.sroa.62743.0..sroa_idx, align 8
  %.sroa.64744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 344
  store double %i.lx, ptr %.sroa.64744.0..sroa_idx, align 8
  %.sroa.66745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 352
  store double %i.nj, ptr %.sroa.66745.0..sroa_idx, align 8
  %.sroa.68746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 360
  store double %i.oc, ptr %.sroa.68746.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 368
  store double %i.oj, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 376
  store double %i.ot, ptr %.sroa.70.0..sroa_idx, align 8
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 384
  store double %i.hm, ptr %.sroa.71.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 392
  store double %i.hw, ptr %.sroa.73.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 400
  store double %i.km, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 408
  store double %i.mh, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 416
  store double %i.mr, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 424
  store double %i.oj, ptr %.sroa.81.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 432
  store double %i.pc, ptr %.sroa.83.0..sroa_idx, align 8
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 440
  store double %i.pl, ptr %.sroa.84.0..sroa_idx, align 8
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 448
  store double %i.hw, ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 456
  store double %i.jq, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.90.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 464
  store double %i.kw, ptr %.sroa.90.0..sroa_idx, align 8
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 472
  store double %i.mr, ptr %.sroa.92.0..sroa_idx, align 8
  %.sroa.95.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 480
  store double %i.nt, ptr %.sroa.95.0..sroa_idx, align 8
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 488
  store double %i.ot, ptr %.sroa.97.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 496
  store double %i.pl, ptr %.sroa.99.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 504
  store double %i.pu, ptr %.sroa.101.0..sroa_idx, align 8, !tbaa !39
  store double 1.000000e+00, ptr %6, align 8, !tbaa !102
  %i.tf = getelementptr inbounds nuw i8, ptr %6, i64 72
  store double 1.000000e+00, ptr %i.tf, align 8, !tbaa !102
  %i.tg = getelementptr inbounds nuw i8, ptr %6, i64 144
  store double 1.000000e+00, ptr %i.tg, align 8, !tbaa !102
  %i.th = getelementptr inbounds nuw i8, ptr %6, i64 216
  store double 1.000000e+00, ptr %i.th, align 8, !tbaa !102
  %i.ti = getelementptr inbounds nuw i8, ptr %6, i64 288
  store double 1.000000e+00, ptr %i.ti, align 8, !tbaa !102
  %i.tj = getelementptr inbounds nuw i8, ptr %6, i64 360
  store double 1.000000e+00, ptr %i.tj, align 8, !tbaa !102
  %i.tk = getelementptr inbounds nuw i8, ptr %6, i64 432
  store double 1.000000e+00, ptr %i.tk, align 8, !tbaa !102
  %i.tl = getelementptr inbounds nuw i8, ptr %6, i64 504
  store double 1.000000e+00, ptr %i.tl, align 8, !tbaa !102
  %i.tm = invoke noundef zeroext i1 @_ZN2cv8CholeskyEPdmiS0_mi(ptr noundef nonnull %5, i64 noundef 64, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(512) %6, i64 noundef 64, i32 noundef 8)
          to label %.noexc608 unwind label %bb.ml

.noexc608:                                        ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %i.tm, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.noexc608
  %i.tn = load <16 x double>, ptr %6, align 8     ; 8 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.to = load <16 x double>, ptr %.sroa.21.0..sroa_idx, align 8 ; 8 uses
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.tp = load <16 x double>, ptr %.sroa.37.0..sroa_idx, align 8 ; 8 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 384
  %i.tq = load <16 x double>, ptr %.sroa.53.0..sroa_idx, align 8 ; 8 uses
  %i.tr = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 7, i32 15>
  %i.ts = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 6, i32 14>
  %i.tt = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 5, i32 13>
  %i.tu = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 4, i32 12>
  %i.tv = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.tw = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.tx = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.ty = shufflevector <16 x double> %i.tn, <16 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.tz = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 7, i32 15>
  %i.ua = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 6, i32 14>
  %i.ub = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 5, i32 13>
  %i.uc = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 4, i32 12>
  %i.ud = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.ue = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.uf = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.ug = shufflevector <16 x double> %i.to, <16 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.uh = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 7, i32 15>
  %i.ui = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 6, i32 14>
  %i.uj = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 5, i32 13>
  %i.uk = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 4, i32 12>
  %i.ul = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.um = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.un = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.uo = shufflevector <16 x double> %i.tp, <16 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.up = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 7, i32 15>
  %i.uq = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 6, i32 14>
  %i.ur = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 5, i32 13>
  %i.us = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 4, i32 12>
  %i.ut = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.uu = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.uv = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.uw = shufflevector <16 x double> %i.tq, <16 x double> poison, <2 x i32> <i32 0, i32 8>
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.noexc608
  %i.ux = phi <2 x double> [ %i.tr, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.uy = phi <2 x double> [ %i.ts, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.uz = phi <2 x double> [ %i.tt, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.va = phi <2 x double> [ %i.tu, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vb = phi <2 x double> [ %i.tv, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vc = phi <2 x double> [ %i.tw, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vd = phi <2 x double> [ %i.tx, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.ve = phi <2 x double> [ %i.ty, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vf = phi <2 x double> [ %i.tz, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vg = phi <2 x double> [ %i.ua, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vh = phi <2 x double> [ %i.ub, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vi = phi <2 x double> [ %i.uc, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vj = phi <2 x double> [ %i.ud, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vk = phi <2 x double> [ %i.ue, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vl = phi <2 x double> [ %i.uf, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vm = phi <2 x double> [ %i.ug, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vn = phi <2 x double> [ %i.uh, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vo = phi <2 x double> [ %i.ui, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vp = phi <2 x double> [ %i.uj, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vq = phi <2 x double> [ %i.uk, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vr = phi <2 x double> [ %i.ul, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vs = phi <2 x double> [ %i.um, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vt = phi <2 x double> [ %i.un, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vu = phi <2 x double> [ %i.uo, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vv = phi <2 x double> [ %i.up, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vw = phi <2 x double> [ %i.uq, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vx = phi <2 x double> [ %i.ur, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vy = phi <2 x double> [ %i.us, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.vz = phi <2 x double> [ %i.ut, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.wa = phi <2 x double> [ %i.uu, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.wb = phi <2 x double> [ %i.uv, %bb.go ], [ zeroinitializer, %.noexc608 ]
  %i.wc = phi <2 x double> [ %i.uw, %bb.go ], [ zeroinitializer, %.noexc608 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !103
  %i.wd = insertelement <2 x double> poison, double %i.qe, i64 0
  %i.we = shufflevector <2 x double> %i.wd, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ve, <2 x double> %i.we, <2 x double> zeroinitializer)
  %i.wg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vm, <2 x double> %i.we, <2 x double> zeroinitializer)
  %i.wh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vu, <2 x double> %i.we, <2 x double> zeroinitializer)
  %i.wi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.we, <2 x double> zeroinitializer)
  call void @llvm.lifetime.start.p0(ptr nonnull %287) #18
  %i.wj = insertelement <2 x double> poison, double %i.qo, i64 0
  %i.wk = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vd, <2 x double> %i.wk, <2 x double> %i.wf)
  %i.wm = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.wn = shufflevector <2 x double> %i.wm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %i.wn, <2 x double> %i.wl)
  %i.wp = insertelement <2 x double> poison, double %i.ri, i64 0
  %i.wq = shufflevector <2 x double> %i.wp, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %i.wq, <2 x double> %i.wo)
  %i.ws = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.wt = shufflevector <2 x double> %i.ws, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.va, <2 x double> %i.wt, <2 x double> %i.wr)
  %i.wv = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.ww = shufflevector <2 x double> %i.wv, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uz, <2 x double> %i.ww, <2 x double> %i.wu)
  %i.wy = shufflevector <1 x double> %i.sl, <1 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uy, <2 x double> %i.wy, <2 x double> %i.wx)
  %i.xa = shufflevector <1 x double> %i.sx, <1 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ux, <2 x double> %i.xa, <2 x double> %i.wz) ; 2 uses
  %i.xc = fadd <2 x double> %i.xb, <double 1.000000e+00, double poison>
  %294 = shufflevector <2 x double> %i.xc, <2 x double> %i.xb, <2 x i32> <i32 0, i32 3>
  store <2 x double> %294, ptr %287, align 16, !tbaa !102
  %i.xd = getelementptr inbounds nuw i8, ptr %287, i64 16
  %i.xe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vl, <2 x double> %i.wk, <2 x double> %i.wg)
  %i.xf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %i.wn, <2 x double> %i.xe)
  %i.xg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> %i.wq, <2 x double> %i.xf)
  %i.xh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %i.wt, <2 x double> %i.xg)
  %i.xi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %i.ww, <2 x double> %i.xh)
  %i.xj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vg, <2 x double> %i.wy, <2 x double> %i.xi)
  %i.xk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.xa, <2 x double> %i.xj)
  store <2 x double> %i.xk, ptr %i.xd, align 16, !tbaa !102
  %i.xl = getelementptr inbounds nuw i8, ptr %287, i64 32
  %i.xm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vt, <2 x double> %i.wk, <2 x double> %i.wh)
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vs, <2 x double> %i.wn, <2 x double> %i.xm)
  %i.xo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vr, <2 x double> %i.wq, <2 x double> %i.xn)
  %i.xp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vq, <2 x double> %i.wt, <2 x double> %i.xo)
  %i.xq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vp, <2 x double> %i.ww, <2 x double> %i.xp)
  %i.xr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vo, <2 x double> %i.wy, <2 x double> %i.xq)
  %i.xs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vn, <2 x double> %i.xa, <2 x double> %i.xr) ; 2 uses
  %i.xt = fadd <2 x double> %i.xs, <double 1.000000e+00, double poison>
  %295 = shufflevector <2 x double> %i.xt, <2 x double> %i.xs, <2 x i32> <i32 0, i32 3>
  store <2 x double> %295, ptr %i.xl, align 16, !tbaa !102
  %i.xu = getelementptr inbounds nuw i8, ptr %287, i64 48
  %i.xv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wb, <2 x double> %i.wk, <2 x double> %i.wi)
  %i.xw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> %i.wn, <2 x double> %i.xv)
  %i.xx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vz, <2 x double> %i.wq, <2 x double> %i.xw)
  %i.xy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vy, <2 x double> %i.wt, <2 x double> %i.xx)
  %i.xz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vx, <2 x double> %i.ww, <2 x double> %i.xy)
  %i.ya = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vw, <2 x double> %i.wy, <2 x double> %i.xz)
  %i.yb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vv, <2 x double> %i.xa, <2 x double> %i.ya)
  store <2 x double> %i.yb, ptr %i.xu, align 16, !tbaa !102
  %i.yc = getelementptr inbounds nuw i8, ptr %287, i64 64
  store double 1.000000e+00, ptr %i.yc, align 16, !tbaa !102
  %i.yd = load ptr, ptr %4, align 8, !tbaa !20
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %bb.gq, label %bb.mo

bb.gq:                                            ; preds = %bb.gp
  %i.yf = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #20
          to label %bb.gr unwind label %bb.mm     ; 6 uses

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %288) #18
  %i.yg = getelementptr inbounds nuw i8, ptr %288, i64 16
  store i32 -1056833530, ptr %288, align 8, !tbaa !21
  %i.yh = getelementptr inbounds nuw i8, ptr %288, i64 8
  store ptr %287, ptr %i.yh, align 8, !tbaa !15
  store i64 12884901891, ptr %i.yg, align 8, !tbaa !38
  invoke void @_ZN2cv3reg9MapProjecC1ERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(24) %288)
          to label %bb.gs unwind label %bb.mn

bb.gs:                                            ; preds = %bb.gr
  store ptr %i.yf, ptr %0, align 8, !tbaa !20
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.yi, align 8, !tbaa !40
  %i.yj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.gx unwind label %bb.gt     ; 5 uses

bb.gt:                                            ; preds = %bb.gs
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0
  %i.ym = call ptr @__cxa_begin_catch(ptr %i.yl) #18 ; 0 uses
  %i.yn = load ptr, ptr %i.yf, align 8, !tbaa !11
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8
  call void %i.yp(ptr noundef nonnull align 8 dereferenceable(80) %i.yf) #18, !inline_history !0
  invoke void @__cxa_rethrow() #21
          to label %bb.gw unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.yq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body610 unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.yr = landingpad { ptr, i32 }
          catch ptr null
  %i.ys = extractvalue { ptr, i32 } %i.yr, 0
  call void @__clang_call_terminate(ptr %i.ys) #22
  unreachable

bb.gw:                                            ; preds = %bb.gt
  unreachable

bb.gx:                                            ; preds = %bb.gs
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store i32 1, ptr %i.yt, align 8, !tbaa !42
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yj, i64 12
  store i32 1, ptr %i.yu, align 4, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3reg9MapProjecELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.yj, align 8, !tbaa !11
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store ptr %i.yf, ptr %i.yv, align 8, !tbaa !46
  store ptr %i.yj, ptr %i.yi, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %288) #18
  br label %bb.ob

bb.gy:                                            ; preds = %bb.p
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %bb.os

bb.gz:                                            ; preds = %bb.q
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %.body
  %.pn309.pn = phi { ptr, i32 } [ %i.yx, %bb.gz ], [ %i.ab, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.or

bb.hb:                                            ; preds = %bb.s
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.body572
  %.pn312.pn = phi { ptr, i32 } [ %i.yy, %bb.hb ], [ %i.am, %.body572 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.oq

bb.hd:                                            ; preds = %bb.u
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %.body575
  %.pn315.pn = phi { ptr, i32 } [ %i.yz, %bb.hd ], [ %i.ax, %.body575 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.op

bb.hf:                                            ; preds = %bb.w
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.body578
  %.pn318.pn = phi { ptr, i32 } [ %i.za, %bb.hf ], [ %i.bi, %.body578 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.oo

bb.hh:                                            ; preds = %bb.y
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %.body581
  %.pn321.pn = phi { ptr, i32 } [ %i.zb, %bb.hh ], [ %i.bt, %.body581 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.on

bb.hj:                                            ; preds = %bb.aa
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.body584
  %.pn324.pn = phi { ptr, i32 } [ %i.zc, %bb.hj ], [ %i.ce, %.body584 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.om

bb.hl:                                            ; preds = %bb.ac
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %.body587
  %.pn327.pn = phi { ptr, i32 } [ %i.zd, %bb.hl ], [ %i.cp, %.body587 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.ol

bb.hn:                                            ; preds = %bb.ae
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %.body590
  %.pn330.pn = phi { ptr, i32 } [ %i.ze, %bb.hn ], [ %i.da, %.body590 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.ok

bb.hp:                                            ; preds = %bb.ag
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %.body593
  %.pn333.pn = phi { ptr, i32 } [ %i.zf, %bb.hp ], [ %i.dl, %.body593 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.oj

bb.hr:                                            ; preds = %bb.ai
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %.body596
  %.pn336.pn = phi { ptr, i32 } [ %i.zg, %bb.hr ], [ %i.dw, %.body596 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  br label %bb.oi

bb.ht:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit598
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hu:                                            ; preds = %.body599, %bb.ht
  %.pn339 = phi { ptr, i32 } [ %i.ee, %.body599 ], [ %i.zh, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %bb.oh
end_hunk_0
