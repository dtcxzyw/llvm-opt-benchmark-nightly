Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/TextureTransform?download=true
inline.NumInlined: 493
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0469.2819, i64 36
  %i.sn = load i32, ptr %i.sm, align 4
  %i.so = icmp eq i32 %i.sn, %.0207667
  br i1 %i.so, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %.preheader, !llvm.loop !34

.loopexit570:                                     ; preds = %.preheader, %.preheader.preheader
  %.sroa.0469.2.lcssa = phi ptr [ %.sroa.0469.2817, %.preheader.preheader ], [ %.sroa.0469.2, %.preheader ]
  %.pre725 = load ptr, ptr %i.jp, align 8
  %i.sp = icmp eq ptr %.sroa.0469.2.lcssa, %.pre725
  br i1 %i.sp, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %bb.cu

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph821, %.loopexit570
  call void @_ZdaPv(ptr noundef nonnull %i.sj) #18
  %i.sq = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.sr = zext i32 %i.sq to i64
  %i.ss = mul nuw nsw i64 %i.sr, 12               ; 2 uses
  %i.st = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ss) #19
          to label %bb.cr unwind label %.loopexit.split-lp ; 2 uses

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit
  %i.su = icmp eq i32 %i.sq, 0
  br i1 %i.su, label %.sink.split792, label %.sink.split792.sink.split

bb.cs:                                            ; preds = %bb.cq
  %i.sv = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.sw = zext i32 %i.sv to i64
  %i.sx = mul nuw nsw i64 %i.sw, 12               ; 2 uses
  %i.sy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sx) #19
          to label %bb.ct unwind label %.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.sz = icmp eq i32 %i.sv, 0
  br i1 %i.sz, label %.sink.split792, label %.sink.split792.sink.split

.sink.split792.sink.split:                        ; preds = %bb.ct, %bb.cr
  %.sink800 = phi i64 [ %i.ss, %bb.cr ], [ %i.sx, %bb.ct ]
  %.sink794 = phi ptr [ %i.st, %bb.cr ], [ %i.sy, %bb.ct ] ; 2 uses
  %i.ta = add nsw i64 %.sink800, -12              ; 2 uses
  %i.tb = urem i64 %i.ta, 12
  %i.tc = sub nuw nsw i64 %i.ta, %i.tb
  %i.td = add nsw i64 %i.tc, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sink794, i8 0, i64 %i.td, i1 false)
  br label %.sink.split792

.sink.split792:                                   ; preds = %.sink.split792.sink.split, %bb.ct, %bb.cr
  %.sink = phi ptr [ %i.st, %bb.cr ], [ %i.sy, %bb.ct ], [ %.sink794, %.sink.split792.sink.split ] ; 2 uses
  store ptr %.sink, ptr %i.si, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %.sink.split792, %.loopexit570
  %i.te = phi ptr [ %i.sj, %.loopexit570 ], [ %.sink, %.sink.split792 ] ; 9 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 16 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 36
  %i.th = load i32, ptr %i.tg, align 4
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8            ; 2 uses
  %.not241 = icmp eq ptr %i.te, %i.tk
  br i1 %.not241, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tl = load i32, ptr %i.ra, align 4
  %i.tm = zext i32 %i.tl to i64
  %i.tn = mul nuw nsw i64 %i.tm, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.te, ptr align 4 %i.tk, i64 %i.tn, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.to = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.tp = zext i32 %i.to to i64
  %.idx = mul nuw nsw i64 %i.tp, 12               ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 %.idx
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 24
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 28
  %i.tt = load <2 x float>, ptr %i.tf, align 8    ; 2 uses
  %i.tu = load <2 x float>, ptr %i.tr, align 8    ; 4 uses
  %i.tv = load float, ptr %i.ts, align 4
  %i.tw = shufflevector <2 x float> %i.tt, <2 x float> %i.tu, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %.fr846 = freeze <4 x float> %i.tw
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 32
  %.pre726 = load float, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.tx = fcmp olt float %.pre726, f0x3C0EFA35
  %i.ty = fcmp une <4 x float> %.fr846, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.tz = bitcast <4 x i1> %i.ty to i4
  %i.ua = icmp eq i4 %i.tz, 0
  %op.rdx = select i1 %i.ua, i1 %i.tx, i1 false
  br i1 %op.rdx, label %.loopexit, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread: ; preds = %bb.cw
  %i.ub = load i32, ptr %i.f, align 4
  %i.uc = add i32 %i.ub, 1
  store i32 %i.uc, ptr %i.f, align 4
  %i.ud = fcmp ogt float %.pre726, f0x3C0EFA35
  br i1 %i.ud, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.ue = call noundef float @cosf(float noundef %.pre726) #17
  %i.uf = call noundef float @sinf(float noundef %.pre726) #17 ; 2 uses
  %i.ug = fneg float %i.uf
  %i.uh = load <2 x float>, ptr %i.tf, align 8
  br label %bb.cz

bb.cy:                                            ; preds = %bb.dc
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cz:                                            ; preds = %bb.cx, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %.sroa.23454.0 = phi float [ %i.ue, %bb.cx ], [ 1.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.18.0 = phi float [ %i.uf, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %.sroa.8449.0 = phi float [ %i.ug, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %i.uj = phi <2 x float> [ %i.uh, %bb.cx ], [ %i.tt, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.uk = fadd <2 x float> %i.uj, zeroinitializer ; 4 uses
  %i.ul = fmul float %i.tv, 0.000000e+00
  %i.um = extractelement <2 x float> %i.tu, i64 0
  %i.un = call float @llvm.fmuladd.f32(float %i.um, float 0.000000e+00, float 0.000000e+00)
  %i.uo = insertelement <2 x float> %i.tu, float %i.un, i64 1
  %i.up = fadd <2 x float> %i.uo, zeroinitializer ; 4 uses
  %i.uq = insertelement <2 x float> %i.tu, float %i.ul, i64 0
  %i.ur = fadd <2 x float> %i.uq, zeroinitializer ; 4 uses
  %i.us = extractelement <2 x float> %i.ur, i64 0
  %i.ut = call float @llvm.fabs.f32(float %i.us)  ; 2 uses
  %i.uu = insertelement <2 x float> poison, float %.sroa.18.0, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = fmul <2 x float> %i.ur, %i.uv           ; 2 uses
  %i.ux = insertelement <2 x float> poison, float %.sroa.23454.0, i64 0
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.up, <2 x float> %i.uw)
  %i.va = fadd <2 x float> %i.uz, zeroinitializer ; 3 uses
  %i.vb = fmul <2 x float> %i.ur, %i.uy           ; 2 uses
  %i.vc = insertelement <2 x float> poison, float %.sroa.8449.0, i64 0
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ve = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> %i.up, <2 x float> %i.vb)
  %i.vf = fadd <2 x float> %i.ve, zeroinitializer ; 3 uses
  %i.vg = extractelement <2 x float> %i.ur, i64 1
  %i.vh = fmul float %i.vg, 0.000000e+00
  %i.vi = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.vj = insertelement <2 x float> %i.vi, float %i.vh, i64 1
  %i.vk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.up, <2 x float> zeroinitializer, <2 x float> %i.vj)
  %i.vl = fadd <2 x float> %i.vk, splat (float 5.000000e-01) ; 3 uses
  %i.vm = extractelement <2 x float> %i.up, i64 1 ; 3 uses
  %i.vn = extractelement <2 x float> %i.uw, i64 0
  %i.vo = call float @llvm.fmuladd.f32(float %.sroa.23454.0, float %i.vm, float %i.vn)
  %i.vp = fadd float %i.vo, 0.000000e+00          ; 3 uses
  %i.vq = extractelement <2 x float> %i.vb, i64 0
  %i.vr = call float @llvm.fmuladd.f32(float %.sroa.8449.0, float %i.vm, float %i.vq)
  %i.vs = fadd float %i.vr, 0.000000e+00          ; 3 uses
  %i.vt = call float @llvm.fmuladd.f32(float %i.vm, float 0.000000e+00, float %i.ut)
  %i.vu = fadd float %i.vt, 1.000000e+00          ; 3 uses
  %i.vv = fmul <2 x float> %i.vf, zeroinitializer
  %i.vw = fadd <2 x float> %i.va, %i.vv
  %i.vx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> zeroinitializer, <2 x float> %i.vw) ; 3 uses
  %i.vy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.va, <2 x float> zeroinitializer, <2 x float> %i.vf)
  %i.vz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> zeroinitializer, <2 x float> %i.vy) ; 3 uses
  %i.wa = fmul <2 x float> %i.vf, splat (float -5.000000e-01)
  %i.wb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.va, <2 x float> splat (float -5.000000e-01), <2 x float> %i.wa)
  %i.wc = fadd <2 x float> %i.vl, %i.wb           ; 3 uses
  %i.wd = fmul float %i.vs, 0.000000e+00
  %i.we = fadd float %i.vp, %i.wd
  %i.wf = call float @llvm.fmuladd.f32(float %i.vu, float 0.000000e+00, float %i.we) ; 3 uses
  %i.wg = call float @llvm.fmuladd.f32(float %i.vp, float 0.000000e+00, float %i.vs)
  %i.wh = call float @llvm.fmuladd.f32(float %i.vu, float 0.000000e+00, float %i.wg) ; 3 uses
  %i.wi = fmul float %i.vs, -5.000000e-01
  %i.wj = call float @llvm.fmuladd.f32(float %i.vp, float -5.000000e-01, float %i.wi)
  %i.wk = fadd float %i.vu, %i.wj                 ; 3 uses
  %i.wl = fmul <2 x float> %i.vz, zeroinitializer
  %i.wm = fadd <2 x float> %i.vx, %i.wl
  %i.wn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vx, <2 x float> zeroinitializer, <2 x float> %i.vz)
  %i.wo = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wp = fmul <2 x float> %i.wo, %i.vz
  %i.wq = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wq, <2 x float> %i.vx, <2 x float> %i.wp)
  %i.ws = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wc, <2 x float> zeroinitializer, <2 x float> %i.wm) ; 3 uses
  %i.wt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wc, <2 x float> zeroinitializer, <2 x float> %i.wn) ; 3 uses
  %i.wu = fadd <2 x float> %i.wc, %i.wr           ; 3 uses
  %i.wv = fmul float %i.wh, 0.000000e+00
  %i.ww = fadd float %i.wf, %i.wv
  %i.wx = call float @llvm.fmuladd.f32(float %i.wk, float 0.000000e+00, float %i.ww) ; 2 uses
  %i.wy = call float @llvm.fmuladd.f32(float %i.wf, float 0.000000e+00, float %i.wh)
  %i.wz = call float @llvm.fmuladd.f32(float %i.wk, float 0.000000e+00, float %i.wy) ; 2 uses
  %i.xa = extractelement <2 x float> %i.uk, i64 1
  %i.xb = fmul float %i.xa, %i.wh
  %i.xc = extractelement <2 x float> %i.uk, i64 0
  %i.xd = call float @llvm.fmuladd.f32(float %i.xc, float %i.wf, float %i.xb)
  %i.xe = fadd float %i.wk, %i.xd                 ; 2 uses
  %.not243662 = icmp eq i32 %i.to, 0
  br i1 %.not243662, label %.loopexit, label %.lr.ph665.preheader

.lr.ph665.preheader:                              ; preds = %bb.cz
  %i.xf = add nsw i64 %.idx, -12                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.xf, 48
  br i1 %min.iters.check, label %.lr.ph665.preheader847, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph665.preheader
  %i.xg = udiv i64 %i.xf, 12
  %i.xh = add nuw nsw i64 %i.xg, 1                ; 2 uses
  %i.xi = and i64 %i.xh, 3                        ; 2 uses
  %i.xj = icmp eq i64 %i.xi, 0
  %i.xk = select i1 %i.xj, i64 4, i64 %i.xi
  %n.vec = sub nsw i64 %i.xh, %i.xk               ; 2 uses
  %3 = mul i64 %n.vec, 12
  %4 = getelementptr i8, ptr %i.te, i64 %3
  %broadcast.splat = shufflevector <2 x float> %i.wt, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat823 = shufflevector <2 x float> %i.ws, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat825 = shufflevector <2 x float> %i.wu, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat827 = shufflevector <2 x float> %i.wt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat829 = shufflevector <2 x float> %i.ws, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat831 = shufflevector <2 x float> %i.wu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert832 = insertelement <4 x float> poison, float %i.wz, i64 0
  %broadcast.splat833 = shufflevector <4 x float> %broadcast.splatinsert832, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert834 = insertelement <4 x float> poison, float %i.wx, i64 0
  %broadcast.splat835 = shufflevector <4 x float> %broadcast.splatinsert834, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert836 = insertelement <4 x float> poison, float %i.xe, i64 0
  %broadcast.splat837 = shufflevector <4 x float> %broadcast.splatinsert836, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.xl = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.te, i64 %i.xl ; 3 uses
  %i.xm = getelementptr i8, ptr %i.te, i64 %i.xl  ; 2 uses
  %next.gep838 = getelementptr i8, ptr %i.xm, i64 12
  %i.xn = getelementptr i8, ptr %i.te, i64 %i.xl  ; 2 uses
  %next.gep839 = getelementptr i8, ptr %i.xn, i64 24
  %i.xo = getelementptr i8, ptr %i.te, i64 %i.xl  ; 2 uses
  %next.gep840 = getelementptr i8, ptr %i.xo, i64 36
  %i.xp = load float, ptr %next.gep, align 4
  %i.xq = load float, ptr %next.gep838, align 4
  %i.xr = load float, ptr %next.gep839, align 4
  %i.xs = load float, ptr %next.gep840, align 4
  %i.xt = insertelement <4 x float> poison, float %i.xp, i64 0
  %i.xu = insertelement <4 x float> %i.xt, float %i.xq, i64 1
  %i.xv = insertelement <4 x float> %i.xu, float %i.xr, i64 2
  %i.xw = insertelement <4 x float> %i.xv, float %i.xs, i64 3 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.xy = getelementptr i8, ptr %i.xm, i64 16
  %i.xz = getelementptr i8, ptr %i.xn, i64 28
  %i.ya = getelementptr i8, ptr %i.xo, i64 40
  %i.yb = load float, ptr %i.xx, align 4
  %i.yc = load float, ptr %i.xy, align 4
  %i.yd = load float, ptr %i.xz, align 4
  %i.ye = load float, ptr %i.ya, align 4
  %i.yf = insertelement <4 x float> poison, float %i.yb, i64 0
  %i.yg = insertelement <4 x float> %i.yf, float %i.yc, i64 1
  %i.yh = insertelement <4 x float> %i.yg, float %i.yd, i64 2
  %i.yi = insertelement <4 x float> %i.yh, float %i.ye, i64 3 ; 3 uses
  %i.yj = fmul <4 x float> %broadcast.splat, %i.yi
  %i.yk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat823, <4 x float> %i.xw, <4 x float> %i.yj)
  %i.yl = fadd <4 x float> %broadcast.splat825, %i.yk
  %i.ym = fmul <4 x float> %broadcast.splat827, %i.yi
  %i.yn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat829, <4 x float> %i.xw, <4 x float> %i.ym)
  %i.yo = fadd <4 x float> %broadcast.splat831, %i.yn
  %i.yp = fmul <4 x float> %broadcast.splat833, %i.yi
  %i.yq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat835, <4 x float> %i.xw, <4 x float> %i.yp)
  %i.yr = fadd <4 x float> %broadcast.splat837, %i.yq ; 2 uses
  %i.ys = fdiv <4 x float> %i.yl, %i.yr
  %i.yt = fdiv <4 x float> %i.yo, %i.yr
  %i.yu = shufflevector <4 x float> %i.ys, <4 x float> %i.yt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.yu, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.yv = icmp eq i64 %index.next, %n.vec
  br i1 %i.yv, label %.lr.ph665.preheader847, label %vector.body, !llvm.loop !35

.lr.ph665.preheader847:                           ; preds = %vector.body, %.lr.ph665.preheader
  %.0205663.ph = phi ptr [ %i.te, %.lr.ph665.preheader ], [ %4, %vector.body ]
  br label %.lr.ph665

.lr.ph665:                                        ; preds = %.lr.ph665.preheader847, %.lr.ph665
  %.0205663 = phi ptr [ %i.zn, %.lr.ph665 ], [ %.0205663.ph, %.lr.ph665.preheader847 ] ; 5 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.0205663, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %.0205663, i64 4
  %i.yy = load float, ptr %i.yx, align 4          ; 2 uses
  %i.yz = load float, ptr %.0205663, align 4      ; 2 uses
  %i.za = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.zb = shufflevector <2 x float> %i.za, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zc = fmul <2 x float> %i.wt, %i.zb
  %i.zd = insertelement <2 x float> poison, float %i.yz, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ws, <2 x float> %i.ze, <2 x float> %i.zc)
  %i.zg = fadd <2 x float> %i.wu, %i.zf
  %i.zh = fmul float %i.wz, %i.yy
  %i.zi = call float @llvm.fmuladd.f32(float %i.wx, float %i.yz, float %i.zh)
  %i.zj = fadd float %i.xe, %i.zi
  %i.zk = insertelement <2 x float> poison, float %i.zj, i64 0
  %i.zl = shufflevector <2 x float> %i.zk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zm = fdiv <2 x float> %i.zg, %i.zl
  store <2 x float> %i.zm, ptr %.0205663, align 4
  store float 0.000000e+00, ptr %i.yw, align 4
  %i.zn = getelementptr inbounds nuw i8, ptr %.0205663, i64 12 ; 2 uses
  %.not243 = icmp eq ptr %i.zn, %i.tq
  br i1 %.not243, label %.loopexit, label %.lr.ph665, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph665, %bb.cw, %bb.cz
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0207667, ptr %i.a, align 4
  %.sroa.08.012.i339 = load ptr, ptr %i.zo, align 8 ; 2 uses
  %.not1113.i340 = icmp eq ptr %.sroa.08.012.i339, %i.zo
  br i1 %.not1113.i340, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348, label %.lr.ph.i341

.lr.ph.i341thread-pre-split:                      ; preds = %.noexc347
  %.pr559 = load i32, ptr %i.a, align 4
  br label %.lr.ph.i341

.lr.ph.i341:                                      ; preds = %.loopexit, %.lr.ph.i341thread-pre-split
  %i.zp = phi i32 [ %.pr559, %.lr.ph.i341thread-pre-split ], [ %.0207667, %.loopexit ] ; 2 uses
  %.sroa.08.014.i342 = phi ptr [ %.sroa.08.0.i344, %.lr.ph.i341thread-pre-split ], [ %.sroa.08.012.i339, %.loopexit ] ; 5 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8            ; 2 uses
  %.not.i343 = icmp eq ptr %i.zr, null
  br i1 %.not.i343, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i341
  store i32 %i.zp, ptr %i.zr, align 4
  br label %.noexc347

bb.db:                                            ; preds = %.lr.ph.i341
  %.not7.i346 = icmp eq i32 %i.zp, 0
  br i1 %.not7.i346, label %bb.dc, label %.noexc347

bb.dc:                                            ; preds = %bb.db
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 32
  %i.zv = load i32, ptr %i.zu, align 8
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 36
  %i.zx = load i32, ptr %i.zw, align 4
  %i.zy = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.zt, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %i.zv, i32 noundef %i.zx, i32 noundef 4)
          to label %.noexc347 unwind label %bb.cy ; 0 uses

.noexc347:                                        ; preds = %bb.dc, %bb.db, %bb.da
  %.sroa.08.0.i344 = load ptr, ptr %.sroa.08.014.i342, align 8 ; 2 uses
  %.not11.i345 = icmp eq ptr %.sroa.08.0.i344, %i.zo
  br i1 %.not11.i345, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348, label %.lr.ph.i341thread-pre-split, !llvm.loop !0

_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348: ; preds = %.noexc347, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348, %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit
  %i.zz = add i32 %.0207667, 1                    ; 2 uses
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = load i64, ptr %i.kb, align 8
  %i.aac = icmp ugt i64 %i.aab, %i.aaa
  br i1 %i.aac, label %bb.ch, label %._crit_edge672, !llvm.loop !37

bb.de:                                            ; preds = %.loopexit571, %.loopexit.split-lp, %bb.cy
  %.pn246 = phi { ptr, i32 } [ %i.ui, %bb.cy ], [ %lpad.loopexit, %.loopexit571 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  br label %bb.df

.critedge678:                                     ; preds = %._crit_edge672, %.loopexit583, %.critedge
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %i.aad = load i32, ptr %i.l, align 8
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = icmp samesign ult i64 %indvars.iv.next721, %i.aae
  br i1 %i.aaf, label %bb.aq, label %._crit_edge677, !llvm.loop !38

bb.df:                                            ; preds = %bb.cf, %bb.cg, %bb.de, %bb.bz
  %.pn249 = phi { ptr, i32 } [ %i.qs, %bb.bz ], [ %.pn246, %bb.de ], [ %i.qy, %bb.cg ], [ %i.qx, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.dp

bb.dg:                                            ; preds = %._crit_edge677
  br i1 %i.jl, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aag = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.aag, 0
  br i1 %.not, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aah = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN6Assimp6Logger4infoIJRA31_KcRjRA23_S2_S5_RA13_S2_S5_RA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aah, ptr noundef nonnull align 1 dereferenceable(31) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(23) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(13) @.str.22, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(2) @.str.23)
          to label %bb.dn unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %bb.dl, %bb.dj, %bb.di, %._crit_edge677
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dh
  %i.aaj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dm unwind label %bb.dk

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aaj, ptr noundef nonnull @.str.24)
          to label %bb.dn unwind label %bb.dk

bb.dn:                                            ; preds = %bb.dj, %bb.dm, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %.not4.i.i.i = icmp eq ptr %.sroa.0545.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i349

.lr.ph.i.i.i349:                                  ; preds = %bb.dn, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aap, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i ], [ %.sroa.0545.0, %bb.dn ] ; 4 uses
  %i.aak = load ptr, ptr %.05.i.i.i, align 8      ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.aak, %.05.i.i.i
  br i1 %.not8.i.i.i.i.i.i, label %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i349, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.aal, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i ], [ %i.aak, %.lr.ph.i.i.i349 ] ; 3 uses
  %i.aal = load ptr, ptr %.09.i.i.i.i.i.i, align 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.aan = load ptr, ptr %i.aam, align 8          ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aan, %i.aam
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aao, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aan, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aao = load ptr, ptr %.09.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i.i.i, i64 noundef 40) #18
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aao, %i.aam
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i, i64 noundef 80) #18
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aal, %.05.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !39

_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i: ; preds = %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.i.i349
  %i.aap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i350 = icmp eq ptr %i.aap, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i350, label %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i349, !llvm.loop !40

_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i, %bb.dn
  %.not.i.i1.i = icmp eq ptr %.sroa.0545.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aaq = ptrtoint ptr %.sroa.0545.0 to i64
  %i.aar = sub i64 %.sroa.20.0, %i.aaq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0545.0, i64 noundef %i.aar) #18
  br label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.do
  ret void

bb.dp:                                            ; preds = %.loopexit577, %.loopexit.split-lp578, %bb.df, %bb.dk
  %.pn256.pn = phi { ptr, i32 } [ %i.aai, %bb.dk ], [ %.pn249, %bb.df ], [ %lpad.loopexit579, %.loopexit577 ], [ %lpad.loopexit.split-lp580, %.loopexit.split-lp578 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZN6Assimp17STransformVecInfoD2Ev.exit291
  %.pn268.pn.pn = phi { ptr, i32 } [ %.pn268.pn, %_ZN6Assimp17STransformVecInfoD2Ev.exit291 ], [ %.pn256.pn, %bb.dp ]
  %.not4.i.i.i351 = icmp eq ptr %.sroa.0545.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i351, label %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i367, label %.lr.ph.i.i.i352

.lr.ph.i.i.i352:                                  ; preds = %bb.dq, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363
  %.05.i.i.i353 = phi ptr [ %i.aax, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363 ], [ %.sroa.0545.0, %bb.dq ] ; 4 uses
  %i.aas = load ptr, ptr %.05.i.i.i353, align 8   ; 2 uses
  %.not8.i.i.i.i.i.i354 = icmp eq ptr %i.aas, %.05.i.i.i353
  br i1 %.not8.i.i.i.i.i.i354, label %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363, label %.lr.ph.i.i.i.i.i.i355

.lr.ph.i.i.i.i.i.i355:                            ; preds = %.lr.ph.i.i.i352, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361
  %.09.i.i.i.i.i.i356 = phi ptr [ %i.aat, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361 ], [ %i.aas, %.lr.ph.i.i.i352 ] ; 3 uses
end_hunk_0
