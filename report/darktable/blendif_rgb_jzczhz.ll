Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_rgb_jzczhz?download=true
inline.NumInlined: 66
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_blendif_combine_channels:bb.a
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, 5.000000e-01
  %i.sy = fmul reassoc nsz arcp contract afn float %i.st, 0.000000e+00
  %i.sz = fadd reassoc nsz arcp contract afn float %i.sx, %i.sy ; 2 uses
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sv, 3.524000e+00
  %i.tb = fmul reassoc nsz arcp contract afn float %i.su, f0x40822279
  %i.tc = fsub reassoc nsz arcp contract afn float %i.ta, %i.tb
  %i.td = fmul reassoc nsz arcp contract afn float %i.st, 5.427080e-01
  %i.te = fadd reassoc nsz arcp contract afn float %i.tc, %i.td ; 2 uses
  %i.tf = fmul reassoc nsz arcp contract afn float %i.sv, 1.990760e-01
  %i.tg = fmul reassoc nsz arcp contract afn float %i.su, f0x3F8C63E9
  %i.th = fadd reassoc nsz arcp contract afn float %i.tg, %i.tf
  %i.ti = fmul reassoc nsz arcp contract afn float %i.st, f0xBFA5DF3B
  %i.tj = fadd reassoc nsz arcp contract afn float %i.th, %i.ti ; 2 uses
  %i.tk = fmul reassoc nsz arcp contract afn float %i.sz, 4.400000e-01
  %i.tl = fmul reassoc nsz arcp contract afn float %i.sz, 5.600000e-01
  %i.tm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.tl
  %i.tn = fdiv reassoc nsz arcp contract afn float %i.tk, %i.tm
  %i.to = fadd reassoc nsz arcp contract afn float %i.tn, -1.629550e-11
  %i.tp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.to, float 0.000000e+00) ; 6 uses
  %i.tq = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.tj, float %i.te)
  %i.tr = fmul reassoc nsz arcp contract afn float %i.tq, f0x3E22F983 ; 3 uses
  %i.ts = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.te, float noundef %i.tj) #16 ; 6 uses
  %i.tt = fcmp reassoc nsz arcp contract afn oge float %i.tr, 0.000000e+00
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tr, 1.000000e+00
  %i.tv = select reassoc nsz arcp contract afn i1 %i.tt, float %i.tr, float %i.tu ; 6 uses
  %i.tw = fcmp reassoc nsz arcp contract afn ugt float %i.tp, %.pre38.i
  br i1 %i.tw, label %bb.bg, label %_blendif_compute_factor.exit.i95

bb.bg:                                            ; preds = %bb.bf
  %i.tx = load float, ptr %i.qo, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.ty = fcmp reassoc nsz arcp contract afn olt float %i.tp, %i.tx
  br i1 %i.ty, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tz = fsub reassoc nsz arcp contract afn float %i.tp, %.pre38.i
  %i.ua = load float, ptr %i.qs, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, %i.tz
  br label %_blendif_compute_factor.exit.i95

bb.bi:                                            ; preds = %bb.bg
  %i.uc = load float, ptr %i.qp, align 4, !tbaa !34, !alias.scope !175, !noalias !176 ; 2 uses
  %i.ud = fcmp reassoc nsz arcp contract afn ugt float %i.tp, %i.uc
  br i1 %i.ud, label %bb.bj, label %_blendif_compute_factor.exit.i95

bb.bj:                                            ; preds = %bb.bi
  %i.ue = load float, ptr %i.qq, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.uf = fcmp reassoc nsz arcp contract afn olt float %i.tp, %i.ue
  br i1 %i.uf, label %bb.bk, label %_blendif_compute_factor.exit.i95

bb.bk:                                            ; preds = %bb.bj
  %i.ug = fsub reassoc nsz arcp contract afn float %i.tp, %i.uc
  %i.uh = load float, ptr %i.qr, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.ui = fmul reassoc nsz arcp contract afn float %i.uh, %i.ug
  %i.uj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ui
  br label %_blendif_compute_factor.exit.i95

_blendif_compute_factor.exit.i95:                 ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %.0.i.i96 = phi nsz float [ 1.000000e+00, %bb.bi ], [ %i.ub, %bb.bh ], [ 0.000000e+00, %bb.bf ], [ %i.uj, %bb.bk ], [ 0.000000e+00, %bb.bj ] ; 2 uses
  %i.uk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.i96
  %i.ul = select reassoc nsz arcp contract afn i1 %.not.i.i94, float %.0.i.i96, float %i.uk
  %i.um = fcmp reassoc nsz arcp contract afn ugt float %i.ts, %i.qu
  br i1 %i.um, label %bb.bl, label %_blendif_compute_factor.exit.1.i

bb.bl:                                            ; preds = %_blendif_compute_factor.exit.i95
  %i.un = load float, ptr %i.qv, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.uo = fcmp reassoc nsz arcp contract afn olt float %i.ts, %i.un
  br i1 %i.uo, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.up = load float, ptr %i.qw, align 4, !tbaa !34, !alias.scope !175, !noalias !176 ; 2 uses
  %i.uq = fcmp reassoc nsz arcp contract afn ugt float %i.ts, %i.up
  br i1 %i.uq, label %bb.bn, label %_blendif_compute_factor.exit.1.i

bb.bn:                                            ; preds = %bb.bm
  %i.ur = load float, ptr %i.qx, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.us = fcmp reassoc nsz arcp contract afn olt float %i.ts, %i.ur
  br i1 %i.us, label %bb.bo, label %_blendif_compute_factor.exit.1.i

bb.bo:                                            ; preds = %bb.bn
  %i.ut = fsub reassoc nsz arcp contract afn float %i.ts, %i.up
  %i.uu = load float, ptr %i.qy, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.uv = fmul reassoc nsz arcp contract afn float %i.uu, %i.ut
  %i.uw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.uv
  br label %_blendif_compute_factor.exit.1.i

bb.bp:                                            ; preds = %bb.bl
  %i.ux = fsub reassoc nsz arcp contract afn float %i.ts, %i.qu
  %i.uy = load float, ptr %i.qz, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uy, %i.ux
  br label %_blendif_compute_factor.exit.1.i

_blendif_compute_factor.exit.1.i:                 ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %_blendif_compute_factor.exit.i95
  %.0.i.1.i = phi nsz float [ 1.000000e+00, %bb.bm ], [ %i.uz, %bb.bp ], [ 0.000000e+00, %_blendif_compute_factor.exit.i95 ], [ %i.uw, %bb.bo ], [ 0.000000e+00, %bb.bn ] ; 2 uses
  %i.va = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.1.i
  %i.vb = select reassoc nsz arcp contract afn i1 %.not.i.1.i, float %.0.i.1.i, float %i.va
  %i.vc = fmul reassoc nsz arcp contract afn float %i.vb, %i.ul
  %i.vd = fcmp reassoc nsz arcp contract afn ugt float %i.tv, %i.rb
  br i1 %i.vd, label %bb.bq, label %_blendif_compute_factor.exit.2.i

bb.bq:                                            ; preds = %_blendif_compute_factor.exit.1.i
  %i.ve = load float, ptr %i.rc, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.vf = fcmp reassoc nsz arcp contract afn olt float %i.tv, %i.ve
  br i1 %i.vf, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.vg = load float, ptr %i.rd, align 4, !tbaa !34, !alias.scope !175, !noalias !176 ; 2 uses
  %i.vh = fcmp reassoc nsz arcp contract afn ugt float %i.tv, %i.vg
  br i1 %i.vh, label %bb.bs, label %_blendif_compute_factor.exit.2.i

bb.bs:                                            ; preds = %bb.br
  %i.vi = load float, ptr %i.re, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.vj = fcmp reassoc nsz arcp contract afn olt float %i.tv, %i.vi
  br i1 %i.vj, label %bb.bt, label %_blendif_compute_factor.exit.2.i

bb.bt:                                            ; preds = %bb.bs
  %i.vk = fsub reassoc nsz arcp contract afn float %i.tv, %i.vg
  %i.vl = load float, ptr %i.rf, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vl, %i.vk
  %i.vn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.vm
  br label %_blendif_compute_factor.exit.2.i

bb.bu:                                            ; preds = %bb.bq
  %i.vo = fsub reassoc nsz arcp contract afn float %i.tv, %i.rb
  %i.vp = load float, ptr %i.rg, align 4, !tbaa !34, !alias.scope !175, !noalias !176
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vp, %i.vo
  br label %_blendif_compute_factor.exit.2.i

_blendif_compute_factor.exit.2.i:                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %_blendif_compute_factor.exit.1.i
  %.0.i.2.i = phi nsz float [ 1.000000e+00, %bb.br ], [ %i.vq, %bb.bu ], [ 0.000000e+00, %_blendif_compute_factor.exit.1.i ], [ %i.vn, %bb.bt ], [ 0.000000e+00, %bb.bs ] ; 2 uses
  %i.vr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.2.i
  %i.vs = select reassoc nsz arcp contract afn i1 %.not.i.2.i, float %.0.i.2.i, float %i.vr
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02336.i ; 2 uses
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !34, !alias.scope !171, !noalias !179
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vc, %i.vu
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, %i.vs
  store float %i.vw, ptr %i.vt, align 4, !tbaa !34, !alias.scope !171, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7, !noalias !177
  %i.vx = add nuw i64 %.02336.i, 1                ; 2 uses
  %i.vy = add i64 %.02237.i, 4
  %exitcond.not.i97 = icmp eq i64 %i.vx, %2
  br i1 %exitcond.not.i97, label %_blendif_jzczhz.exit, label %bb.bf

bb.bv:                                            ; preds = %bb.bd
  %i.vz = load i32, ptr %5, align 64, !tbaa !180
  %i.wa = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.wb = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.vz, ptr noundef nonnull %i.wa, i32 noundef 1) #7
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1032
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !182
  %i.we = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str, i32 noundef 63) #7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1032
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !182
  %i.wh = getelementptr inbounds nuw i8, ptr %5, i64 516
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !183
  %i.wj = tail call ptr @cmsCreateTransform(ptr noundef %i.wd, i32 noundef 4456604, ptr noundef %i.wg, i32 noundef 4849820, i32 noundef %i.wi, i32 noundef 0) #7 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %4, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %.not.i98 = icmp eq i64 %2, 0
  br i1 %.not.i98, label %_blendif_jzczhz_lab.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.bv
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.wm = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.wn = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.wo = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.wp = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.wq = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.wr = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.wt = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.wu = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.wv = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.ww = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.wx = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.wy = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.wz = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.xa = getelementptr inbounds nuw i8, ptr %4, i64 252
  %i.xb = getelementptr inbounds nuw i8, ptr %4, i64 260
  %i.xc = getelementptr inbounds nuw i8, ptr %4, i64 256
  %.not.i.i103 = icmp eq i32 %i.py, 0
  %.not.i.1.i106 = icmp eq i32 %i.pz, 0
  %.not.i.2.i109 = icmp eq i32 %i.qa, 0
  br label %bb.bw

bb.bw:                                            ; preds = %_blendif_compute_factor.exit.2.i107, %.lr.ph.i99
  %.01849.i = phi i64 [ 0, %.lr.ph.i99 ], [ %i.adb, %_blendif_compute_factor.exit.2.i107 ] ; 2 uses
  %.01948.i = phi i64 [ 0, %.lr.ph.i99 ], [ %i.ada, %_blendif_compute_factor.exit.2.i107 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7, !noalias !186
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01849.i
  call void @cmsDoTransform(ptr noundef %i.wj, ptr noundef %i.xd, ptr noundef nonnull %i.a, i32 noundef 1) #7, !noalias !187
  %i.xe = load float, ptr %i.a, align 16, !tbaa !34, !noalias !186
  %i.xf = fmul reassoc nsz arcp contract afn float %i.xe, 8.620690e-03
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, f0x3E0D3DCB ; 6 uses
  %i.xh = load <2 x float>, ptr %i.wl, align 4, !tbaa !34, !noalias !186
  %i.xi = fmul reassoc nsz arcp contract afn <2 x float> %i.xh, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.xj = insertelement <2 x float> poison, float %i.xg, i64 0
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xl = fadd reassoc nsz arcp contract afn <2 x float> %i.xk, %i.xi
  %i.xm = fsub reassoc nsz arcp contract afn <2 x float> %i.xk, %i.xi
  %i.xn = shufflevector <2 x float> %i.xl, <2 x float> %i.xm, <2 x i32> <i32 0, i32 3> ; 5 uses
  %6 = fcmp reassoc nsz arcp contract afn ogt float %i.xg, f0x3E53DCB1
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xg, %i.xg
  %i.xp = fmul reassoc nsz arcp contract afn <2 x float> %i.xn, %i.xn
  %7 = fmul reassoc nsz arcp contract afn float %i.xo, %i.xg
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xg, f0x3E038026
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %i.xn, splat (float f0x3E038026)
  %9 = fadd reassoc nsz arcp contract afn float %i.xq, f0xBC911AA6
  %10 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.xn, splat (float f0x3E53DCB1)
  %11 = fmul reassoc nsz arcp contract afn <2 x float> %i.xp, %i.xn
  %i.xr = fadd reassoc nsz arcp contract afn <2 x float> %8, splat (float f0xBC911AA6)
  %12 = select reassoc nsz arcp contract afn i1 %6, float %7, float %9 ; 3 uses
  %i.xs = select <2 x i1> %10, <2 x float> %11, <2 x float> %i.xr ; 4 uses
  %i.xt = extractelement <2 x float> %i.xs, i64 0
  %i.xu = fmul reassoc nsz arcp contract afn float %12, 2.303930e-02
  %i.xv = fmul reassoc nsz arcp contract afn <2 x float> %i.xs, <float f0x3F6BDEB5, float f0x3D556AA4> ; 2 uses
  %i.xw = extractelement <2 x float> %i.xv, i64 0
  %i.xx = fsub reassoc nsz arcp contract afn float %i.xw, %i.xu
  %i.xy = extractelement <2 x float> %i.xv, i64 1
  %i.xz = fadd reassoc nsz arcp contract afn float %i.xx, %i.xy ; 2 uses
  %.reass38.i = fmul reassoc nsz arcp contract afn float %i.xt, f0xBC937A4A
  %.reass37.i = fmul reassoc nsz arcp contract afn float %12, f0x3F2AA3C6
  %i.ya = fmul reassoc nsz arcp contract afn <2 x float> %i.xs, <float f0x3C4247BE, float f0x3C3B638A> ; 2 uses
  %i.yb = fadd reassoc nsz arcp contract afn float %.reass38.i, %.reass37.i
  %i.yc = fmul reassoc nsz arcp contract afn float %12, 2.048300e-02
  %i.yd = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.ye = insertelement <2 x float> %i.yd, float %i.yb, i64 1 ; 2 uses
  %i.yf = fsub reassoc nsz arcp contract afn <2 x float> %i.ya, %i.ye
  %i.yg = fadd reassoc nsz arcp contract afn <2 x float> %i.ya, %i.ye
  %i.yh = shufflevector <2 x float> %i.yf, <2 x float> %i.yg, <2 x i32> <i32 0, i32 3>
  %i.yi = fmul reassoc nsz arcp contract afn float %i.xz, 1.150000e+00
  %i.yj = shufflevector <2 x float> %i.xs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yk = insertelement <2 x float> %i.yj, float %i.xz, i64 1
  %i.yl = fmul reassoc nsz arcp contract afn <2 x float> %i.yk, <float f0x3F8C6BE4, float f0x3EAE147A>
  %i.ym = fadd reassoc nsz arcp contract afn <2 x float> %i.yh, %i.yl ; 4 uses
  %i.yn = extractelement <2 x float> %i.ym, i64 0
  %i.yo = fmul reassoc nsz arcp contract afn float %i.yn, f0x3E199998
  %i.yp = fsub reassoc nsz arcp contract afn float %i.yi, %i.yo ; 2 uses
  %i.yq = insertelement <2 x float> poison, float %i.yp, i64 0
  %i.yr = shufflevector <2 x float> %i.yq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ys = fmul reassoc nsz arcp contract afn <2 x float> %i.yr, <float -2.015100e-05, float f0x382DF9B4>
  %i.yt = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yu = fmul reassoc nsz arcp contract afn <2 x float> %i.yt, <float f0x38EB0462, float f0x387344EC>
  %i.yv = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yw = fmul reassoc nsz arcp contract afn <2 x float> %i.yv, <float 5.310080e-06, float 1.464800e-06>
  %i.yx = fadd reassoc nsz arcp contract afn <2 x float> %i.ys, %i.yw
  %i.yy = fadd reassoc nsz arcp contract afn <2 x float> %i.yx, %i.yu
  %.reass47.i = fmul reassoc nsz arcp contract afn float %i.yp, -1.660080e-06
  %i.yz = fmul reassoc nsz arcp contract afn <2 x float> %i.ym, <float f0x388C30BE, float 2.648000e-05> ; 2 uses
  %i.za = extractelement <2 x float> %i.yz, i64 0
  %i.zb = fadd reassoc nsz arcp contract afn float %.reass47.i, %i.za
  %i.zc = extractelement <2 x float> %i.yz, i64 1
  %i.zd = fadd reassoc nsz arcp contract afn float %i.zb, %i.zc
  %i.ze = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.yy, <2 x float> zeroinitializer)
  %i.zf = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ze, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.zg = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.zf, splat (float f0x4196D000)
  %i.zh = fadd reassoc nsz arcp contract afn <2 x float> %i.zg, splat (float f0x3F560000)
  %i.zi = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.zf, splat (float 1.868750e+01)
  %i.zj = fadd reassoc nsz arcp contract afn <2 x float> %i.zi, splat (float 1.000000e+00)
  %i.zk = fdiv reassoc nsz arcp contract afn <2 x float> %i.zh, %i.zj
  %i.zl = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.zk, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.zm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.zd, float 0.000000e+00)
  %i.zn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zm, float f0x3E232000) ; 2 uses
  %i.zo = fmul reassoc nnan nsz arcp contract afn float %i.zn, f0x4196D000
  %i.zp = fadd reassoc nsz arcp contract afn float %i.zo, f0x3F560000
  %i.zq = fmul reassoc nnan nsz arcp contract afn float %i.zn, 1.868750e+01
  %i.zr = fadd reassoc nsz arcp contract afn float %i.zq, 1.000000e+00
  %i.zs = fdiv reassoc nsz arcp contract afn float %i.zp, %i.zr
  %i.zt = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zs, float f0x430608CD) ; 3 uses
  %i.zu = extractelement <2 x float> %i.zl, i64 0 ; 3 uses
  %i.zv = extractelement <2 x float> %i.zl, i64 1 ; 3 uses
  %i.zw = fadd reassoc nsz arcp contract afn float %i.zu, %i.zv
  %i.zx = fmul reassoc nsz arcp contract afn float %i.zw, 5.000000e-01
  %i.zy = fmul reassoc nsz arcp contract afn float %i.zt, 0.000000e+00
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zx, %i.zy ; 2 uses
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zv, 3.524000e+00
  %i.aab = fmul reassoc nsz arcp contract afn float %i.zu, f0x40822279
  %i.aac = fsub reassoc nsz arcp contract afn float %i.aaa, %i.aab
  %i.aad = fmul reassoc nsz arcp contract afn float %i.zt, 5.427080e-01
  %i.aae = fadd reassoc nsz arcp contract afn float %i.aac, %i.aad ; 2 uses
  %i.aaf = fmul reassoc nsz arcp contract afn float %i.zv, 1.990760e-01
  %i.aag = fmul reassoc nsz arcp contract afn float %i.zu, f0x3F8C63E9
  %i.aah = fadd reassoc nsz arcp contract afn float %i.aag, %i.aaf
  %i.aai = fmul reassoc nsz arcp contract afn float %i.zt, f0xBFA5DF3B
  %i.aaj = fadd reassoc nsz arcp contract afn float %i.aah, %i.aai ; 2 uses
  %i.aak = fmul reassoc nsz arcp contract afn float %i.zz, 4.400000e-01
  %i.aal = fmul reassoc nsz arcp contract afn float %i.zz, 5.600000e-01
  %i.aam = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aal
  %i.aan = fdiv reassoc nsz arcp contract afn float %i.aak, %i.aam
  %i.aao = fadd reassoc nsz arcp contract afn float %i.aan, -1.629550e-11
  %i.aap = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aao, float 0.000000e+00) ; 6 uses
  %i.aaq = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.aaj, float %i.aae)
  %i.aar = fmul reassoc nsz arcp contract afn float %i.aaq, f0x3E22F983 ; 3 uses
  %i.aas = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aae, float noundef %i.aaj) #16 ; 6 uses
  %i.aat = fcmp reassoc nsz arcp contract afn oge float %i.aar, 0.000000e+00
  %i.aau = fadd reassoc nsz arcp contract afn float %i.aar, 1.000000e+00
  %i.aav = select reassoc nsz arcp contract afn i1 %i.aat, float %i.aar, float %i.aau ; 6 uses
  %i.aaw = load float, ptr %i.wk, align 4, !tbaa !34, !alias.scope !188, !noalias !189 ; 2 uses
  %i.aax = fcmp reassoc nsz arcp contract afn ugt float %i.aap, %i.aaw
  br i1 %i.aax, label %bb.bx, label %_blendif_compute_factor.exit.i101

bb.bx:                                            ; preds = %bb.bw
  %i.aay = load float, ptr %i.wm, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.aaz = fcmp reassoc nsz arcp contract afn olt float %i.aap, %i.aay
  br i1 %i.aaz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.aba = fsub reassoc nsz arcp contract afn float %i.aap, %i.aaw
  %i.abb = load float, ptr %i.wq, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.abc = fmul reassoc nsz arcp contract afn float %i.abb, %i.aba
  br label %_blendif_compute_factor.exit.i101

bb.bz:                                            ; preds = %bb.bx
  %i.abd = load float, ptr %i.wn, align 4, !tbaa !34, !alias.scope !188, !noalias !189 ; 2 uses
  %i.abe = fcmp reassoc nsz arcp contract afn ugt float %i.aap, %i.abd
  br i1 %i.abe, label %bb.ca, label %_blendif_compute_factor.exit.i101

bb.ca:                                            ; preds = %bb.bz
  %i.abf = load float, ptr %i.wo, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.abg = fcmp reassoc nsz arcp contract afn olt float %i.aap, %i.abf
  br i1 %i.abg, label %bb.cb, label %_blendif_compute_factor.exit.i101

bb.cb:                                            ; preds = %bb.ca
  %i.abh = fsub reassoc nsz arcp contract afn float %i.aap, %i.abd
  %i.abi = load float, ptr %i.wp, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.abj = fmul reassoc nsz arcp contract afn float %i.abi, %i.abh
  %i.abk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abj
  br label %_blendif_compute_factor.exit.i101

_blendif_compute_factor.exit.i101:                ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw
  %.0.i.i102 = phi nsz float [ 1.000000e+00, %bb.bz ], [ %i.abc, %bb.by ], [ 0.000000e+00, %bb.bw ], [ %i.abk, %bb.cb ], [ 0.000000e+00, %bb.ca ] ; 2 uses
  %i.abl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.i102
  %i.abm = select reassoc nsz arcp contract afn i1 %.not.i.i103, float %.0.i.i102, float %i.abl
  %i.abn = load float, ptr %i.wr, align 4, !tbaa !34, !alias.scope !188, !noalias !189 ; 2 uses
  %i.abo = fcmp reassoc nsz arcp contract afn ugt float %i.aas, %i.abn
  br i1 %i.abo, label %bb.cc, label %_blendif_compute_factor.exit.1.i104

bb.cc:                                            ; preds = %_blendif_compute_factor.exit.i101
  %i.abp = load float, ptr %i.ws, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.abq = fcmp reassoc nsz arcp contract afn olt float %i.aas, %i.abp
  br i1 %i.abq, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.abr = load float, ptr %i.wt, align 4, !tbaa !34, !alias.scope !188, !noalias !189 ; 2 uses
  %i.abs = fcmp reassoc nsz arcp contract afn ugt float %i.aas, %i.abr
  br i1 %i.abs, label %bb.ce, label %_blendif_compute_factor.exit.1.i104

bb.ce:                                            ; preds = %bb.cd
  %i.abt = load float, ptr %i.wu, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.abu = fcmp reassoc nsz arcp contract afn olt float %i.aas, %i.abt
  br i1 %i.abu, label %bb.cf, label %_blendif_compute_factor.exit.1.i104

bb.cf:                                            ; preds = %bb.ce
  %i.abv = fsub reassoc nsz arcp contract afn float %i.aas, %i.abr
  %i.abw = load float, ptr %i.wv, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.abx = fmul reassoc nsz arcp contract afn float %i.abw, %i.abv
  %i.aby = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abx
  br label %_blendif_compute_factor.exit.1.i104

bb.cg:                                            ; preds = %bb.cc
  %i.abz = fsub reassoc nsz arcp contract afn float %i.aas, %i.abn
  %i.aca = load float, ptr %i.ww, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.acb = fmul reassoc nsz arcp contract afn float %i.aca, %i.abz
  br label %_blendif_compute_factor.exit.1.i104

_blendif_compute_factor.exit.1.i104:              ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %_blendif_compute_factor.exit.i101
  %.0.i.1.i105 = phi nsz float [ 1.000000e+00, %bb.cd ], [ %i.acb, %bb.cg ], [ 0.000000e+00, %_blendif_compute_factor.exit.i101 ], [ %i.aby, %bb.cf ], [ 0.000000e+00, %bb.ce ] ; 2 uses
  %i.acc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.1.i105
  %i.acd = select reassoc nsz arcp contract afn i1 %.not.i.1.i106, float %.0.i.1.i105, float %i.acc
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, %i.abm
  %i.acf = load float, ptr %i.wx, align 4, !tbaa !34, !alias.scope !188, !noalias !189 ; 2 uses
  %i.acg = fcmp reassoc nsz arcp contract afn ugt float %i.aav, %i.acf
  br i1 %i.acg, label %bb.ch, label %_blendif_compute_factor.exit.2.i107

bb.ch:                                            ; preds = %_blendif_compute_factor.exit.1.i104
  %i.ach = load float, ptr %i.wy, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.aci = fcmp reassoc nsz arcp contract afn olt float %i.aav, %i.ach
  br i1 %i.aci, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.acj = load float, ptr %i.wz, align 4, !tbaa !34, !alias.scope !188, !noalias !189 ; 2 uses
  %i.ack = fcmp reassoc nsz arcp contract afn ugt float %i.aav, %i.acj
  br i1 %i.ack, label %bb.cj, label %_blendif_compute_factor.exit.2.i107

bb.cj:                                            ; preds = %bb.ci
  %i.acl = load float, ptr %i.xa, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.acm = fcmp reassoc nsz arcp contract afn olt float %i.aav, %i.acl
  br i1 %i.acm, label %bb.ck, label %_blendif_compute_factor.exit.2.i107

bb.ck:                                            ; preds = %bb.cj
  %i.acn = fsub reassoc nsz arcp contract afn float %i.aav, %i.acj
  %i.aco = load float, ptr %i.xb, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.acp = fmul reassoc nsz arcp contract afn float %i.aco, %i.acn
  %i.acq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.acp
  br label %_blendif_compute_factor.exit.2.i107

bb.cl:                                            ; preds = %bb.ch
  %i.acr = fsub reassoc nsz arcp contract afn float %i.aav, %i.acf
  %i.acs = load float, ptr %i.xc, align 4, !tbaa !34, !alias.scope !188, !noalias !189
  %i.act = fmul reassoc nsz arcp contract afn float %i.acs, %i.acr
  br label %_blendif_compute_factor.exit.2.i107

_blendif_compute_factor.exit.2.i107:              ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %_blendif_compute_factor.exit.1.i104
  %.0.i.2.i108 = phi nsz float [ 1.000000e+00, %bb.ci ], [ %i.act, %bb.cl ], [ 0.000000e+00, %_blendif_compute_factor.exit.1.i104 ], [ %i.acq, %bb.ck ], [ 0.000000e+00, %bb.cj ] ; 2 uses
  %i.acu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.2.i108
  %i.acv = select reassoc nsz arcp contract afn i1 %.not.i.2.i109, float %.0.i.2.i108, float %i.acu
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01948.i ; 2 uses
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !34, !alias.scope !184, !noalias !190
  %i.acy = fmul reassoc nsz arcp contract afn float %i.ace, %i.acx
  %i.acz = fmul reassoc nsz arcp contract afn float %i.acy, %i.acv
  store float %i.acz, ptr %i.acw, align 4, !tbaa !34, !alias.scope !184, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7, !noalias !186
  %i.ada = add nuw i64 %.01948.i, 1               ; 2 uses
end_hunk_0
