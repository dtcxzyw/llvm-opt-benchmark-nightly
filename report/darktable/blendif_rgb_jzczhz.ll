inline.NumInlined: 66
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_blendif_combine_channels:bb.a
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sn, 1.868750e+01
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sq, 1.000000e+00
  %i.ss = fdiv reassoc nsz arcp contract afn float %i.sp, %i.sr
  %i.st = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ss, float f0x430608CD) ; 3 uses
  %i.su = extractelement <2 x float> %i.sl, i64 0 ; 3 uses
  %i.sv = extractelement <2 x float> %i.sl, i64 1 ; 3 uses
  %i.sw = fadd reassoc nsz arcp contract afn float %i.su, %i.sv
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
  %i.tx = load float, ptr %i.qo, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.ty = fcmp reassoc nsz arcp contract afn olt float %i.tp, %i.tx
  br i1 %i.ty, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tz = fsub reassoc nsz arcp contract afn float %i.tp, %.pre38.i
  %i.ua = load float, ptr %i.qs, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, %i.tz
  br label %_blendif_compute_factor.exit.i95

bb.bi:                                            ; preds = %bb.bg
  %i.uc = load float, ptr %i.qp, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.ud = fcmp reassoc nsz arcp contract afn ugt float %i.tp, %i.uc
  br i1 %i.ud, label %bb.bj, label %_blendif_compute_factor.exit.i95

bb.bj:                                            ; preds = %bb.bi
  %i.ue = load float, ptr %i.qq, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.uf = fcmp reassoc nsz arcp contract afn olt float %i.tp, %i.ue
  br i1 %i.uf, label %bb.bk, label %_blendif_compute_factor.exit.i95

bb.bk:                                            ; preds = %bb.bj
  %i.ug = fsub reassoc nsz arcp contract afn float %i.tp, %i.uc
  %i.uh = load float, ptr %i.qr, align 4, !tbaa !39, !alias.scope !166, !noalias !169
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
  %i.un = load float, ptr %i.qv, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.uo = fcmp reassoc nsz arcp contract afn olt float %i.ts, %i.un
  br i1 %i.uo, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.up = load float, ptr %i.qw, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.uq = fcmp reassoc nsz arcp contract afn ugt float %i.ts, %i.up
  br i1 %i.uq, label %bb.bn, label %_blendif_compute_factor.exit.1.i

bb.bn:                                            ; preds = %bb.bm
  %i.ur = load float, ptr %i.qx, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.us = fcmp reassoc nsz arcp contract afn olt float %i.ts, %i.ur
  br i1 %i.us, label %bb.bo, label %_blendif_compute_factor.exit.1.i

bb.bo:                                            ; preds = %bb.bn
  %i.ut = fsub reassoc nsz arcp contract afn float %i.ts, %i.up
  %i.uu = load float, ptr %i.qy, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.uv = fmul reassoc nsz arcp contract afn float %i.uu, %i.ut
  %i.uw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.uv
  br label %_blendif_compute_factor.exit.1.i

bb.bp:                                            ; preds = %bb.bl
  %i.ux = fsub reassoc nsz arcp contract afn float %i.ts, %i.qu
  %i.uy = load float, ptr %i.qz, align 4, !tbaa !39, !alias.scope !166, !noalias !169
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
  %i.ve = load float, ptr %i.rc, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vf = fcmp reassoc nsz arcp contract afn olt float %i.tv, %i.ve
  br i1 %i.vf, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.vg = load float, ptr %i.rd, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.vh = fcmp reassoc nsz arcp contract afn ugt float %i.tv, %i.vg
  br i1 %i.vh, label %bb.bs, label %_blendif_compute_factor.exit.2.i

bb.bs:                                            ; preds = %bb.br
  %i.vi = load float, ptr %i.re, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vj = fcmp reassoc nsz arcp contract afn olt float %i.tv, %i.vi
  br i1 %i.vj, label %bb.bt, label %_blendif_compute_factor.exit.2.i

bb.bt:                                            ; preds = %bb.bs
  %i.vk = fsub reassoc nsz arcp contract afn float %i.tv, %i.vg
  %i.vl = load float, ptr %i.rf, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vl, %i.vk
  %i.vn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.vm
  br label %_blendif_compute_factor.exit.2.i

bb.bu:                                            ; preds = %bb.bq
  %i.vo = fsub reassoc nsz arcp contract afn float %i.tv, %i.rb
  %i.vp = load float, ptr %i.rg, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vp, %i.vo
  br label %_blendif_compute_factor.exit.2.i

_blendif_compute_factor.exit.2.i:                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %_blendif_compute_factor.exit.1.i
  %.0.i.2.i = phi nsz float [ 1.000000e+00, %bb.br ], [ %i.vq, %bb.bu ], [ 0.000000e+00, %_blendif_compute_factor.exit.1.i ], [ %i.vn, %bb.bt ], [ 0.000000e+00, %bb.bs ] ; 2 uses
  %i.vr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.2.i
  %i.vs = select reassoc nsz arcp contract afn i1 %.not.i.2.i, float %.0.i.2.i, float %i.vr
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02336.i ; 2 uses
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !39, !alias.scope !156, !noalias !172
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vc, %i.vu
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, %i.vs
  store float %i.vw, ptr %i.vt, align 4, !tbaa !39, !alias.scope !156, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7, !noalias !170
  %i.vx = add nuw i64 %.02336.i, 1                ; 2 uses
  %i.vy = add i64 %.02237.i, 4
  %exitcond.not.i97 = icmp eq i64 %i.vx, %2
  br i1 %exitcond.not.i97, label %_blendif_jzczhz.exit, label %bb.bf

bb.bv:                                            ; preds = %bb.bd
  %i.vz = load i32, ptr %5, align 64, !tbaa !173
  %i.wa = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.wb = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.vz, ptr noundef nonnull %i.wa, i32 noundef 1) #7
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1032
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !174
  %i.we = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str, i32 noundef 63) #7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1032
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !174
  %i.wh = getelementptr inbounds nuw i8, ptr %5, i64 516
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !176
  %i.wj = tail call ptr @cmsCreateTransform(ptr noundef %i.wd, i32 noundef 4456604, ptr noundef %i.wg, i32 noundef 4849820, i32 noundef %i.wi, i32 noundef 0) #7 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %4, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
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
  %.01849.i = phi i64 [ 0, %.lr.ph.i99 ], [ %i.acr, %_blendif_compute_factor.exit.2.i107 ] ; 2 uses
  %.01948.i = phi i64 [ 0, %.lr.ph.i99 ], [ %i.acq, %_blendif_compute_factor.exit.2.i107 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7, !noalias !182
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01849.i
  call void @cmsDoTransform(ptr noundef %i.wj, ptr noundef %i.xd, ptr noundef nonnull %i.a, i32 noundef 1) #7, !noalias !185
  %i.xe = load float, ptr %i.a, align 16, !tbaa !39, !noalias !182
  %i.xf = fmul reassoc nsz arcp contract afn float %i.xe, 8.620690e-03
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, f0x3E0D3DCB ; 6 uses
  %6 = load <2 x float>, ptr %i.wl, align 4, !tbaa !39, !noalias !182
  %7 = fmul reassoc nsz arcp contract afn <2 x float> %6, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %8 = insertelement <2 x float> poison, float %i.xg, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %10 = fadd reassoc nsz arcp contract afn <2 x float> %9, %7
  %11 = fsub reassoc nsz arcp contract afn <2 x float> %9, %7
  %12 = shufflevector <2 x float> %10, <2 x float> %11, <2 x i32> <i32 0, i32 3> ; 5 uses
  %13 = fcmp reassoc nsz arcp contract afn ogt float %i.xg, f0x3E53DCB1
  %14 = fmul reassoc nsz arcp contract afn float %i.xg, %i.xg
  %15 = fmul reassoc nsz arcp contract afn <2 x float> %12, %12
  %16 = fmul reassoc nsz arcp contract afn float %14, %i.xg
  %17 = fmul reassoc nsz arcp contract afn float %i.xg, f0x3E038026
  %18 = fmul reassoc nsz arcp contract afn <2 x float> %12, splat (float f0x3E038026)
  %19 = fadd reassoc nsz arcp contract afn float %17, f0xBC911AA6
  %20 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %12, splat (float f0x3E53DCB1)
  %i.xh = fmul reassoc nsz arcp contract afn <2 x float> %15, %12
  %21 = fadd reassoc nsz arcp contract afn <2 x float> %18, splat (float f0xBC911AA6)
  %22 = select reassoc nsz arcp contract afn i1 %13, float %16, float %19 ; 3 uses
  %i.xi = select <2 x i1> %20, <2 x float> %i.xh, <2 x float> %21 ; 4 uses
  %i.xj = extractelement <2 x float> %i.xi, i64 0
  %i.xk = fmul reassoc nsz arcp contract afn float %22, 2.303930e-02
  %i.xl = fmul reassoc nsz arcp contract afn <2 x float> %i.xi, <float f0x3F6BDEB5, float f0x3D556AA4> ; 2 uses
  %i.xm = extractelement <2 x float> %i.xl, i64 0
  %i.xn = fsub reassoc nsz arcp contract afn float %i.xm, %i.xk
  %i.xo = extractelement <2 x float> %i.xl, i64 1
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xn, %i.xo ; 2 uses
  %.reass38.i = fmul reassoc nsz arcp contract afn float %i.xj, f0xBC937A4A
  %.reass37.i = fmul reassoc nsz arcp contract afn float %22, f0x3F2AA3C6
  %i.xq = fmul reassoc nsz arcp contract afn <2 x float> %i.xi, <float f0x3C4247BE, float f0x3C3B638A> ; 2 uses
  %i.xr = fadd reassoc nsz arcp contract afn float %.reass38.i, %.reass37.i
  %i.xs = fmul reassoc nsz arcp contract afn float %22, 2.048300e-02
  %i.xt = insertelement <2 x float> poison, float %i.xs, i64 0
  %i.xu = insertelement <2 x float> %i.xt, float %i.xr, i64 1 ; 2 uses
  %i.xv = fsub reassoc nsz arcp contract afn <2 x float> %i.xq, %i.xu
  %i.xw = fadd reassoc nsz arcp contract afn <2 x float> %i.xq, %i.xu
  %i.xx = shufflevector <2 x float> %i.xv, <2 x float> %i.xw, <2 x i32> <i32 0, i32 3>
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xp, 1.150000e+00
  %i.xz = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ya = insertelement <2 x float> %i.xz, float %i.xp, i64 1
  %i.yb = fmul reassoc nsz arcp contract afn <2 x float> %i.ya, <float f0x3F8C6BE4, float f0x3EAE147A>
  %i.yc = fadd reassoc nsz arcp contract afn <2 x float> %i.xx, %i.yb ; 4 uses
  %i.yd = extractelement <2 x float> %i.yc, i64 0
  %i.ye = fmul reassoc nsz arcp contract afn float %i.yd, f0x3E199998
  %i.yf = fsub reassoc nsz arcp contract afn float %i.xy, %i.ye ; 2 uses
  %.reass47.i = fmul reassoc nsz arcp contract afn float %i.yf, -1.660080e-06
  %i.yg = fmul reassoc nsz arcp contract afn <2 x float> %i.yc, <float f0x388C30BE, float 2.648000e-05> ; 2 uses
  %i.yh = extractelement <2 x float> %i.yg, i64 0
  %i.yi = fadd reassoc nsz arcp contract afn float %.reass47.i, %i.yh
  %i.yj = extractelement <2 x float> %i.yg, i64 1
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yi, %i.yj
  %i.yl = insertelement <2 x float> poison, float %i.yf, i64 0
  %i.ym = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yn = fmul reassoc nsz arcp contract afn <2 x float> %i.ym, <float -2.015100e-05, float f0x382DF9B4>
  %i.yo = shufflevector <2 x float> %i.yc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yp = fmul reassoc nsz arcp contract afn <2 x float> %i.yo, <float f0x38EB0462, float f0x387344EC>
  %i.yq = shufflevector <2 x float> %i.yc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yr = fmul reassoc nsz arcp contract afn <2 x float> %i.yq, <float 5.310080e-06, float 1.464800e-06>
  %i.ys = fadd reassoc nsz arcp contract afn <2 x float> %i.yn, %i.yr
  %i.yt = fadd reassoc nsz arcp contract afn <2 x float> %i.ys, %i.yp
  %i.yu = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.yt, <2 x float> zeroinitializer)
  %i.yv = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.yu, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.yw = fmul reassoc nsz arcp contract afn <2 x float> %i.yv, splat (float f0x4196D000)
  %i.yx = fadd reassoc nsz arcp contract afn <2 x float> %i.yw, splat (float f0x3F560000)
  %i.yy = fmul reassoc nsz arcp contract afn <2 x float> %i.yv, splat (float 1.868750e+01)
  %i.yz = fadd reassoc nsz arcp contract afn <2 x float> %i.yy, splat (float 1.000000e+00)
  %i.za = fdiv reassoc nsz arcp contract afn <2 x float> %i.yx, %i.yz
  %i.zb = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.za, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.zc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yk, float 0.000000e+00)
  %i.zd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zc, float f0x3E232000) ; 2 uses
  %i.ze = fmul reassoc nsz arcp contract afn float %i.zd, f0x4196D000
  %i.zf = fadd reassoc nsz arcp contract afn float %i.ze, f0x3F560000
  %i.zg = fmul reassoc nsz arcp contract afn float %i.zd, 1.868750e+01
  %i.zh = fadd reassoc nsz arcp contract afn float %i.zg, 1.000000e+00
  %i.zi = fdiv reassoc nsz arcp contract afn float %i.zf, %i.zh
  %i.zj = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zi, float f0x430608CD) ; 3 uses
  %i.zk = extractelement <2 x float> %i.zb, i64 0 ; 3 uses
  %i.zl = extractelement <2 x float> %i.zb, i64 1 ; 3 uses
  %i.zm = fadd reassoc nsz arcp contract afn float %i.zk, %i.zl
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zm, 5.000000e-01
  %i.zo = fmul reassoc nsz arcp contract afn float %i.zj, 0.000000e+00
  %i.zp = fadd reassoc nsz arcp contract afn float %i.zn, %i.zo ; 2 uses
  %i.zq = fmul reassoc nsz arcp contract afn float %i.zl, 3.524000e+00
  %i.zr = fmul reassoc nsz arcp contract afn float %i.zk, f0x40822279
  %i.zs = fsub reassoc nsz arcp contract afn float %i.zq, %i.zr
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zj, 5.427080e-01
  %i.zu = fadd reassoc nsz arcp contract afn float %i.zs, %i.zt ; 2 uses
  %i.zv = fmul reassoc nsz arcp contract afn float %i.zl, 1.990760e-01
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zk, f0x3F8C63E9
  %i.zx = fadd reassoc nsz arcp contract afn float %i.zw, %i.zv
  %i.zy = fmul reassoc nsz arcp contract afn float %i.zj, f0xBFA5DF3B
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zx, %i.zy ; 2 uses
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zp, 4.400000e-01
  %i.aab = fmul reassoc nsz arcp contract afn float %i.zp, 5.600000e-01
  %i.aac = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aab
  %i.aad = fdiv reassoc nsz arcp contract afn float %i.aaa, %i.aac
  %i.aae = fadd reassoc nsz arcp contract afn float %i.aad, -1.629550e-11
  %i.aaf = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aae, float 0.000000e+00) ; 6 uses
  %i.aag = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.zz, float %i.zu)
  %i.aah = fmul reassoc nsz arcp contract afn float %i.aag, f0x3E22F983 ; 3 uses
  %i.aai = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.zu, float noundef %i.zz) #16 ; 6 uses
  %i.aaj = fcmp reassoc nsz arcp contract afn oge float %i.aah, 0.000000e+00
  %i.aak = fadd reassoc nsz arcp contract afn float %i.aah, 1.000000e+00
  %i.aal = select reassoc nsz arcp contract afn i1 %i.aaj, float %i.aah, float %i.aak ; 6 uses
  %i.aam = load float, ptr %i.wk, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.aan = fcmp reassoc nsz arcp contract afn ugt float %i.aaf, %i.aam
  br i1 %i.aan, label %bb.bx, label %_blendif_compute_factor.exit.i101

bb.bx:                                            ; preds = %bb.bw
  %i.aao = load float, ptr %i.wm, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.aap = fcmp reassoc nsz arcp contract afn olt float %i.aaf, %i.aao
  br i1 %i.aap, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.aaq = fsub reassoc nsz arcp contract afn float %i.aaf, %i.aam
  %i.aar = load float, ptr %i.wq, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.aas = fmul reassoc nsz arcp contract afn float %i.aar, %i.aaq
  br label %_blendif_compute_factor.exit.i101

bb.bz:                                            ; preds = %bb.bx
  %i.aat = load float, ptr %i.wn, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.aau = fcmp reassoc nsz arcp contract afn ugt float %i.aaf, %i.aat
  br i1 %i.aau, label %bb.ca, label %_blendif_compute_factor.exit.i101

bb.ca:                                            ; preds = %bb.bz
  %i.aav = load float, ptr %i.wo, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.aaw = fcmp reassoc nsz arcp contract afn olt float %i.aaf, %i.aav
  br i1 %i.aaw, label %bb.cb, label %_blendif_compute_factor.exit.i101

bb.cb:                                            ; preds = %bb.ca
  %i.aax = fsub reassoc nsz arcp contract afn float %i.aaf, %i.aat
  %i.aay = load float, ptr %i.wp, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.aaz = fmul reassoc nsz arcp contract afn float %i.aay, %i.aax
  %i.aba = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aaz
  br label %_blendif_compute_factor.exit.i101

_blendif_compute_factor.exit.i101:                ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw
  %.0.i.i102 = phi nsz float [ 1.000000e+00, %bb.bz ], [ %i.aas, %bb.by ], [ 0.000000e+00, %bb.bw ], [ %i.aba, %bb.cb ], [ 0.000000e+00, %bb.ca ] ; 2 uses
  %i.abb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.i102
  %i.abc = select reassoc nsz arcp contract afn i1 %.not.i.i103, float %.0.i.i102, float %i.abb
  %i.abd = load float, ptr %i.wr, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.abe = fcmp reassoc nsz arcp contract afn ugt float %i.aai, %i.abd
  br i1 %i.abe, label %bb.cc, label %_blendif_compute_factor.exit.1.i104

bb.cc:                                            ; preds = %_blendif_compute_factor.exit.i101
  %i.abf = load float, ptr %i.ws, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abg = fcmp reassoc nsz arcp contract afn olt float %i.aai, %i.abf
  br i1 %i.abg, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.abh = load float, ptr %i.wt, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.abi = fcmp reassoc nsz arcp contract afn ugt float %i.aai, %i.abh
  br i1 %i.abi, label %bb.ce, label %_blendif_compute_factor.exit.1.i104

bb.ce:                                            ; preds = %bb.cd
  %i.abj = load float, ptr %i.wu, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abk = fcmp reassoc nsz arcp contract afn olt float %i.aai, %i.abj
  br i1 %i.abk, label %bb.cf, label %_blendif_compute_factor.exit.1.i104

bb.cf:                                            ; preds = %bb.ce
  %i.abl = fsub reassoc nsz arcp contract afn float %i.aai, %i.abh
  %i.abm = load float, ptr %i.wv, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abn = fmul reassoc nsz arcp contract afn float %i.abm, %i.abl
  %i.abo = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abn
  br label %_blendif_compute_factor.exit.1.i104

bb.cg:                                            ; preds = %bb.cc
  %i.abp = fsub reassoc nsz arcp contract afn float %i.aai, %i.abd
  %i.abq = load float, ptr %i.ww, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abq, %i.abp
  br label %_blendif_compute_factor.exit.1.i104

_blendif_compute_factor.exit.1.i104:              ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %_blendif_compute_factor.exit.i101
  %.0.i.1.i105 = phi nsz float [ 1.000000e+00, %bb.cd ], [ %i.abr, %bb.cg ], [ 0.000000e+00, %_blendif_compute_factor.exit.i101 ], [ %i.abo, %bb.cf ], [ 0.000000e+00, %bb.ce ] ; 2 uses
  %i.abs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.1.i105
  %i.abt = select reassoc nsz arcp contract afn i1 %.not.i.1.i106, float %.0.i.1.i105, float %i.abs
  %i.abu = fmul reassoc nsz arcp contract afn float %i.abt, %i.abc
  %i.abv = load float, ptr %i.wx, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.abw = fcmp reassoc nsz arcp contract afn ugt float %i.aal, %i.abv
  br i1 %i.abw, label %bb.ch, label %_blendif_compute_factor.exit.2.i107

bb.ch:                                            ; preds = %_blendif_compute_factor.exit.1.i104
  %i.abx = load float, ptr %i.wy, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.aby = fcmp reassoc nsz arcp contract afn olt float %i.aal, %i.abx
  br i1 %i.aby, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.abz = load float, ptr %i.wz, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.aca = fcmp reassoc nsz arcp contract afn ugt float %i.aal, %i.abz
  br i1 %i.aca, label %bb.cj, label %_blendif_compute_factor.exit.2.i107

bb.cj:                                            ; preds = %bb.ci
  %i.acb = load float, ptr %i.xa, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.acc = fcmp reassoc nsz arcp contract afn olt float %i.aal, %i.acb
  br i1 %i.acc, label %bb.ck, label %_blendif_compute_factor.exit.2.i107

bb.ck:                                            ; preds = %bb.cj
  %i.acd = fsub reassoc nsz arcp contract afn float %i.aal, %i.abz
  %i.ace = load float, ptr %i.xb, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, %i.acd
  %i.acg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.acf
  br label %_blendif_compute_factor.exit.2.i107

bb.cl:                                            ; preds = %bb.ch
  %i.ach = fsub reassoc nsz arcp contract afn float %i.aal, %i.abv
  %i.aci = load float, ptr %i.xc, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.acj = fmul reassoc nsz arcp contract afn float %i.aci, %i.ach
  br label %_blendif_compute_factor.exit.2.i107

_blendif_compute_factor.exit.2.i107:              ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %_blendif_compute_factor.exit.1.i104
  %.0.i.2.i108 = phi nsz float [ 1.000000e+00, %bb.ci ], [ %i.acj, %bb.cl ], [ 0.000000e+00, %_blendif_compute_factor.exit.1.i104 ], [ %i.acg, %bb.ck ], [ 0.000000e+00, %bb.cj ] ; 2 uses
  %i.ack = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.2.i108
  %i.acl = select reassoc nsz arcp contract afn i1 %.not.i.2.i109, float %.0.i.2.i108, float %i.ack
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01948.i ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !39, !alias.scope !177, !noalias !190
  %i.aco = fmul reassoc nsz arcp contract afn float %i.abu, %i.acn
  %i.acp = fmul reassoc nsz arcp contract afn float %i.aco, %i.acl
  store float %i.acp, ptr %i.acm, align 4, !tbaa !39, !alias.scope !177, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7, !noalias !182
  %i.acq = add nuw i64 %.01948.i, 1               ; 2 uses
  %i.acr = add i64 %.01849.i, 4
  %exitcond.not.i110 = icmp eq i64 %i.acq, %2
  br i1 %exitcond.not.i110, label %_blendif_jzczhz_lab.exit, label %bb.bw

_blendif_jzczhz_lab.exit:                         ; preds = %_blendif_compute_factor.exit.2.i107, %bb.bv
  call void @cmsDeleteTransform(ptr noundef %i.wj) #7
  br label %_blendif_jzczhz.exit

_blendif_jzczhz.exit:                             ; preds = %_blendif_compute_factor.exit.2.i, %_blendif_jzczhz_lab.exit, %bb.be, %_blendif_rgb_blue.exit
  ret void
}

end_hunk_0
