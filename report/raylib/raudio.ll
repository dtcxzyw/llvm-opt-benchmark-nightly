Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@inverse_mdct:bb.a
  %i.sf = getelementptr inbounds [4 x i8], ptr %.0104107.i, i64 %i.oh
  %i.sg = getelementptr inbounds [4 x i8], ptr %.0108.i, i64 %i.oh
  %i.sh = add nsw i32 %.0105106.i, -1
  %i.si = icmp samesign ugt i32 %.0105106.i, 1
  br i1 %i.si, label %bb.s, label %imdct_step3_inner_s_loop.exit.loopexit

imdct_step3_inner_s_loop.exit.loopexit:           ; preds = %bb.s
  %i.sj = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.oj
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -8
  %i.sk = add nsw i32 %.0395455, -1
  %i.sl = icmp sgt i32 %.0395455, 1
  br i1 %i.sl, label %.lr.ph.i421, label %.loopexit

._crit_edge462:                                   ; preds = %.loopexit, %.preheader
  %i.sm = sext i32 %i.im to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.sm ; 2 uses
  %i.so = shl nsw i32 %i.ip, 4
  %i.sp = sext i32 %i.so to i64
  %.neg.i = mul nsw i64 %i.sp, -4
  %i.sq = getelementptr inbounds i8, ptr %i.sn, i64 %.neg.i
  %i.sr = icmp sgt i32 %i.ip, 0
  br i1 %i.sr, label %.lr.ph.i422, label %imdct_step3_inner_s_loop_ld654.exit

.lr.ph.i422:                                      ; preds = %._crit_edge462
  %i.ss = sext i32 %i.c to i64
  %i.st = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ss
  %i.su = load float, ptr %i.st, align 4          ; 2 uses
  %i.sv = fneg float %i.su
  %i.sw = insertelement <2 x float> poison, float %i.su, i64 0
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sy = insertelement <2 x float> %i.sx, float %i.sv, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i422
  %.075.i = phi ptr [ %i.sn, %.lr.ph.i422 ], [ %i.wd, %bb.t ] ; 13 uses
  %i.sz = getelementptr inbounds i8, ptr %.075.i, i64 -4
  %i.ta = getelementptr inbounds i8, ptr %.075.i, i64 -36
  %i.tb = getelementptr inbounds i8, ptr %.075.i, i64 -8
  %i.tc = getelementptr inbounds i8, ptr %.075.i, i64 -40
  %i.td = getelementptr inbounds i8, ptr %.075.i, i64 -12 ; 2 uses
  %i.te = getelementptr inbounds i8, ptr %.075.i, i64 -44 ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %.075.i, i64 -20
  %i.tg = getelementptr inbounds i8, ptr %.075.i, i64 -52
  %i.th = getelementptr inbounds i8, ptr %.075.i, i64 -24
  %i.ti = getelementptr inbounds i8, ptr %.075.i, i64 -56
  %i.tj = getelementptr inbounds i8, ptr %.075.i, i64 -28 ; 2 uses
  %i.tk = getelementptr inbounds i8, ptr %.075.i, i64 -60 ; 2 uses
  %i.tl = load <2 x float>, ptr %i.sz, align 4    ; 2 uses
  %i.tm = load <2 x float>, ptr %i.ta, align 4    ; 2 uses
  %i.tn = fsub <2 x float> %i.tl, %i.tm           ; 2 uses
  %i.to = load <2 x float>, ptr %i.td, align 4    ; 2 uses
  %i.tp = load float, ptr %i.tb, align 4
  %i.tq = load <2 x float>, ptr %i.te, align 4    ; 2 uses
  %i.tr = load float, ptr %i.tc, align 4
  %i.ts = load <2 x float>, ptr %i.tj, align 4    ; 2 uses
  %i.tt = load float, ptr %i.th, align 4
  %i.tu = load <2 x float>, ptr %i.tk, align 4    ; 2 uses
  %i.tv = load float, ptr %i.ti, align 4
  %i.tw = shufflevector <2 x float> %i.to, <2 x float> %i.ts, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tx = shufflevector <2 x float> %i.tq, <2 x float> %i.tu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ty = fsub <4 x float> %i.tw, %i.tx           ; 4 uses
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ua = shufflevector <4 x float> %i.ty, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ub = fadd <2 x float> %i.tz, %i.ua
  %i.uc = fsub <2 x float> %i.tz, %i.ua
  %i.ud = shufflevector <2 x float> %i.ub, <2 x float> %i.uc, <2 x i32> <i32 0, i32 3>
  %i.ue = fmul <2 x float> %i.sx, %i.ud           ; 2 uses
  %i.uf = load <2 x float>, ptr %i.tf, align 4    ; 2 uses
  %i.ug = load <2 x float>, ptr %i.tg, align 4    ; 2 uses
  %i.uh = fsub <2 x float> %i.uf, %i.ug
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.uj = shufflevector <4 x float> %i.ty, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.uk = shufflevector <4 x float> %i.ty, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ul = fsub <2 x float> %i.uj, %i.uk
  %i.um = fadd <2 x float> %i.uj, %i.uk
  %i.un = shufflevector <2 x float> %i.ul, <2 x float> %i.um, <2 x i32> <i32 0, i32 3>
  %i.uo = fmul <2 x float> %i.sy, %i.un           ; 2 uses
  %i.up = fadd <2 x float> %i.tl, %i.tm           ; 2 uses
  %i.uq = shufflevector <2 x float> %i.to, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ur = insertelement <2 x float> %i.uq, float %i.tp, i64 0
  %i.us = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ut = insertelement <2 x float> %i.us, float %i.tr, i64 0
  %i.uu = fadd <2 x float> %i.ur, %i.ut           ; 2 uses
  %i.uv = fadd <2 x float> %i.uf, %i.ug           ; 2 uses
  %i.uw = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ux = insertelement <2 x float> %i.uw, float %i.tt, i64 0
  %i.uy = shufflevector <2 x float> %i.tu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uz = insertelement <2 x float> %i.uy, float %i.tv, i64 0
  %i.va = fadd <2 x float> %i.ux, %i.uz           ; 2 uses
  %i.vb = fsub <2 x float> %i.uu, %i.va
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.vd = fsub <2 x float> %i.up, %i.uv
  %i.ve = shufflevector <2 x float> %i.vd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.vf = fadd <2 x float> %i.up, %i.uv
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.vh = fadd <2 x float> %i.uu, %i.va
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.vj = fsub <4 x float> %i.vg, %i.vi
  %i.vk = fadd <4 x float> %i.vg, %i.vi
  %i.vl = shufflevector <4 x float> %i.vj, <4 x float> %i.vk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.vl, ptr %i.td, align 4
  %i.vm = fadd <4 x float> %i.ve, %i.vc
  %i.vn = fsub <4 x float> %i.ve, %i.vc
  %i.vo = shufflevector <4 x float> %i.vm, <4 x float> %i.vn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.vo, ptr %i.tj, align 4
  %i.vp = fsub <2 x float> %i.ue, %i.uo
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.vr = fadd <2 x float> %i.tn, %i.ui           ; 2 uses
  %i.vs = fsub <2 x float> %i.tn, %i.ui           ; 2 uses
  %i.vt = shufflevector <2 x float> %i.vr, <2 x float> %i.vs, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.vu = shufflevector <2 x float> %i.vs, <2 x float> %i.vr, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.vv = fadd <2 x float> %i.ue, %i.uo
  %i.vw = shufflevector <2 x float> %i.vv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.vx = fsub <4 x float> %i.vu, %i.vw
  %i.vy = fadd <4 x float> %i.vu, %i.vw
  %i.vz = shufflevector <4 x float> %i.vx, <4 x float> %i.vy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.vz, ptr %i.te, align 4
  %i.wa = fadd <4 x float> %i.vt, %i.vq
  %i.wb = fsub <4 x float> %i.vt, %i.vq
  %i.wc = shufflevector <4 x float> %i.wa, <4 x float> %i.wb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.wc, ptr %i.tk, align 4
  %i.wd = getelementptr inbounds i8, ptr %.075.i, i64 -64 ; 2 uses
  %i.we = icmp ugt ptr %i.wd, %i.sq
  br i1 %i.we, label %bb.t, label %imdct_step3_inner_s_loop_ld654.exit

imdct_step3_inner_s_loop_ld654.exit:              ; preds = %bb.t, %._crit_edge462
  %i.wf = add nsw i32 %i.a, -4
  %i.wg = sext i32 %i.wf to i64                   ; 2 uses
  %.0391463 = getelementptr i8, ptr %i.ej, i64 -16 ; 2 uses
  %.not412464 = icmp ult ptr %.0391463, %i.t
  br i1 %.not412464, label %._crit_edge470, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %imdct_step3_inner_s_loop_ld654.exit
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 1480
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.v
  %i.wk = load ptr, ptr %i.wj, align 8
  br label %.lr.ph469

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.0391468 = phi ptr [ %.0391, %.lr.ph469 ], [ %.0391463, %.lr.ph469.preheader ] ; 3 uses
  %.0390467 = phi ptr [ %i.xm, %.lr.ph469 ], [ %i.wh, %.lr.ph469.preheader ] ; 5 uses
  %.pn417466 = phi ptr [ %.0391468, %.lr.ph469 ], [ %i.ej, %.lr.ph469.preheader ] ; 3 uses
  %.0392465 = phi ptr [ %i.xn, %.lr.ph469 ], [ %i.wk, %.lr.ph469.preheader ] ; 3 uses
  %i.wl = load i16, ptr %.0392465, align 2
  %i.wm = zext i16 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wm ; 4 uses
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = getelementptr inbounds nuw i8, ptr %.0390467, i64 12
  store float %i.wo, ptr %i.wp, align 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wr = load float, ptr %i.wq, align 4
  %i.ws = getelementptr inbounds nuw i8, ptr %.0390467, i64 8
  store float %i.wr, ptr %i.ws, align 4
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wu = load float, ptr %i.wt, align 4
  %i.wv = getelementptr i8, ptr %.pn417466, i64 -4
  store float %i.wu, ptr %i.wv, align 4
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  %i.wx = load float, ptr %i.ww, align 4
  %i.wy = getelementptr i8, ptr %.pn417466, i64 -8
  store float %i.wx, ptr %i.wy, align 4
  %i.wz = getelementptr inbounds nuw i8, ptr %.0392465, i64 2
  %i.xa = load i16, ptr %i.wz, align 2
  %i.xb = zext i16 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xb ; 4 uses
  %i.xd = load float, ptr %i.xc, align 4
  %i.xe = getelementptr inbounds nuw i8, ptr %.0390467, i64 4
  store float %i.xd, ptr %i.xe, align 4
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %i.xg = load float, ptr %i.xf, align 4
  store float %i.xg, ptr %.0390467, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xi = load float, ptr %i.xh, align 4
  %i.xj = getelementptr i8, ptr %.pn417466, i64 -12
  store float %i.xi, ptr %i.xj, align 4
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xc, i64 12
  %i.xl = load float, ptr %i.xk, align 4
  store float %i.xl, ptr %.0391468, align 4
  %i.xm = getelementptr inbounds i8, ptr %.0390467, i64 -16
  %i.xn = getelementptr inbounds nuw i8, ptr %.0392465, i64 4
  %.0391 = getelementptr i8, ptr %.0391468, i64 -16 ; 2 uses
  %.not412 = icmp ult ptr %.0391, %i.t
  br i1 %.not412, label %._crit_edge470, label %.lr.ph469

._crit_edge470:                                   ; preds = %.lr.ph469, %imdct_step3_inner_s_loop_ld654.exit
  %.0385471 = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.xo = icmp ult ptr %i.t, %.0385471
  br i1 %i.xo, label %.lr.ph477.preheader, label %._crit_edge478

.lr.ph477.preheader:                              ; preds = %._crit_edge470
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 1448
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.v
  %i.xr = load ptr, ptr %i.xq, align 8
  br label %.lr.ph477

.lr.ph477:                                        ; preds = %.lr.ph477.preheader, %.lr.ph477
  %.0385475 = phi ptr [ %.0385, %.lr.ph477 ], [ %.0385471, %.lr.ph477.preheader ] ; 4 uses
  %.pn416474 = phi ptr [ %.0385475, %.lr.ph477 ], [ %i.z, %.lr.ph477.preheader ] ; 2 uses
  %.0386473 = phi ptr [ %i.za, %.lr.ph477 ], [ %i.t, %.lr.ph477.preheader ] ; 4 uses
  %.0387472 = phi ptr [ %i.yz, %.lr.ph477 ], [ %i.xr, %.lr.ph477.preheader ] ; 3 uses
  %i.xs = getelementptr inbounds i8, ptr %.pn416474, i64 -8 ; 2 uses
  %i.xt = load <2 x float>, ptr %.0386473, align 4 ; 2 uses
  %i.xu = load <2 x float>, ptr %i.xs, align 4    ; 2 uses
  %i.xv = fsub <2 x float> %i.xt, %i.xu           ; 2 uses
  %i.xw = fadd <2 x float> %i.xt, %i.xu           ; 3 uses
  %i.xx = shufflevector <2 x float> %i.xv, <2 x float> %i.xw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %4 = load <2 x float>, ptr %.0387472, align 4   ; 2 uses
  %i.xy = fneg <2 x float> %i.xx
  %i.xz = shufflevector <2 x float> %i.xw, <2 x float> %i.xy, <2 x i32> <i32 1, i32 2>
  %i.ya = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = fmul <2 x float> %i.xz, %i.ya
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %i.xx, <2 x float> %i.yb) ; 3 uses
  %i.yd = shufflevector <2 x float> %i.xw, <2 x float> %i.xv, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ye = fadd <2 x float> %i.yd, %i.yc
  store <2 x float> %i.ye, ptr %.0386473, align 4
  %i.yf = shufflevector <2 x float> %i.yd, <2 x float> %i.yc, <2 x i32> <i32 0, i32 3>
  %i.yg = shufflevector <2 x float> %i.yc, <2 x float> %i.yd, <2 x i32> <i32 0, i32 3>
  %i.yh = fsub <2 x float> %i.yf, %i.yg
  store <2 x float> %i.yh, ptr %i.xs, align 4
  %i.yi = getelementptr inbounds nuw i8, ptr %.0386473, i64 8 ; 2 uses
  %i.yj = getelementptr inbounds i8, ptr %.pn416474, i64 -12
  %i.yk = getelementptr inbounds nuw i8, ptr %.0387472, i64 8
  %i.yl = load <2 x float>, ptr %i.yi, align 4    ; 2 uses
  %i.ym = load <2 x float>, ptr %.0385475, align 4 ; 2 uses
  %i.yn = fsub <2 x float> %i.yl, %i.ym           ; 2 uses
  %i.yo = fadd <2 x float> %i.yl, %i.ym           ; 3 uses
  %i.yp = shufflevector <2 x float> %i.yn, <2 x float> %i.yo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %6 = load <2 x float>, ptr %i.yk, align 4       ; 2 uses
  %i.yq = fneg <2 x float> %i.yp
  %i.yr = shufflevector <2 x float> %i.yo, <2 x float> %i.yq, <2 x i32> <i32 1, i32 2>
  %i.ys = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = fmul <2 x float> %i.yr, %i.ys
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.yp, <2 x float> %i.yt) ; 3 uses
  %i.yv = shufflevector <2 x float> %i.yo, <2 x float> %i.yn, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.yw = fadd <2 x float> %i.yv, %i.yu
  store <2 x float> %i.yw, ptr %i.yi, align 4
  %foldExtExtBinop = fsub <2 x float> %i.yv, %i.yu
  %i.yx = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.yx, ptr %.0385475, align 4
  %foldExtExtBinop532 = fsub <2 x float> %i.yu, %i.yv
  %i.yy = extractelement <2 x float> %foldExtExtBinop532, i64 1
  store float %i.yy, ptr %i.yj, align 4
  %i.yz = getelementptr inbounds nuw i8, ptr %.0387472, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %.0386473, i64 16 ; 2 uses
  %.0385 = getelementptr inbounds i8, ptr %.0385475, i64 -16 ; 2 uses
  %i.zb = icmp ult ptr %i.za, %.0385
  br i1 %i.zb, label %.lr.ph477, label %._crit_edge478

._crit_edge478:                                   ; preds = %.lr.ph477, %._crit_edge470
  %.0379479 = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %.not413480 = icmp ult ptr %.0379479, %i.t
  br i1 %.not413480, label %._crit_edge490, label %.lr.ph489.preheader

.lr.ph489.preheader:                              ; preds = %._crit_edge478
  %i.zc = sext i32 %1 to i64
  %i.zd = getelementptr [4 x i8], ptr %0, i64 %i.zc
  %i.ze = getelementptr inbounds [4 x i8], ptr %0, i64 %i.wg
  %i.zf = getelementptr inbounds nuw i8, ptr %2, i64 1432
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.v
  %i.zh = load ptr, ptr %i.zg, align 8
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.zh, i64 %i.y
  br label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %.lr.ph489
  %.0379487 = phi ptr [ %.0379, %.lr.ph489 ], [ %.0379479, %.lr.ph489.preheader ] ; 3 uses
  %.pn414486 = phi ptr [ %.0379487, %.lr.ph489 ], [ %i.z, %.lr.ph489.preheader ] ; 7 uses
  %.pn485 = phi ptr [ %.0380, %.lr.ph489 ], [ %i.zi, %.lr.ph489.preheader ] ; 8 uses
  %.pn415484 = phi ptr [ %.0381, %.lr.ph489 ], [ %i.zd, %.lr.ph489.preheader ] ; 4 uses
  %.0382483 = phi ptr [ %i.acg, %.lr.ph489 ], [ %i.aa, %.lr.ph489.preheader ] ; 5 uses
  %.0383482 = phi ptr [ %i.ach, %.lr.ph489 ], [ %i.ze, %.lr.ph489.preheader ] ; 5 uses
  %.0384481 = phi ptr [ %i.acf, %.lr.ph489 ], [ %0, %.lr.ph489.preheader ] ; 5 uses
  %.0381 = getelementptr i8, ptr %.pn415484, i64 -16 ; 2 uses
  %.0380 = getelementptr inbounds i8, ptr %.pn485, i64 -32 ; 2 uses
  %i.zj = getelementptr inbounds i8, ptr %.pn414486, i64 -8
  %i.zk = load float, ptr %i.zj, align 4          ; 2 uses
  %i.zl = getelementptr inbounds i8, ptr %.pn485, i64 -4
  %i.zm = load float, ptr %i.zl, align 4          ; 2 uses
  %i.zn = getelementptr inbounds i8, ptr %.pn414486, i64 -4
  %i.zo = load float, ptr %i.zn, align 4          ; 2 uses
  %i.zp = getelementptr inbounds i8, ptr %.pn485, i64 -8
  %i.zq = load float, ptr %i.zp, align 4          ; 2 uses
  %i.zr = fneg float %i.zq
  %i.zs = fmul float %i.zo, %i.zr
  %i.zt = call float @llvm.fmuladd.f32(float %i.zk, float %i.zm, float %i.zs) ; 2 uses
  %i.zu = fneg float %i.zk
  %i.zv = fneg float %i.zm
  %i.zw = fmul float %i.zo, %i.zv
  %i.zx = call float @llvm.fmuladd.f32(float %i.zu, float %i.zq, float %i.zw) ; 2 uses
  store float %i.zt, ptr %.0384481, align 4
  %i.zy = fneg float %i.zt
  %i.zz = getelementptr inbounds nuw i8, ptr %.0383482, i64 12
  store float %i.zy, ptr %i.zz, align 4
  store float %i.zx, ptr %.0382483, align 4
  %i.aaa = getelementptr i8, ptr %.pn415484, i64 -4
  store float %i.zx, ptr %i.aaa, align 4
  %i.aab = getelementptr inbounds i8, ptr %.pn414486, i64 -16
  %i.aac = load float, ptr %i.aab, align 4        ; 2 uses
  %i.aad = getelementptr inbounds i8, ptr %.pn485, i64 -12
  %i.aae = load float, ptr %i.aad, align 4        ; 2 uses
  %i.aaf = getelementptr inbounds i8, ptr %.pn414486, i64 -12
  %i.aag = load float, ptr %i.aaf, align 4        ; 2 uses
  %i.aah = getelementptr inbounds i8, ptr %.pn485, i64 -16
  %i.aai = load float, ptr %i.aah, align 4        ; 2 uses
  %i.aaj = fneg float %i.aai
  %i.aak = fmul float %i.aag, %i.aaj
  %i.aal = call float @llvm.fmuladd.f32(float %i.aac, float %i.aae, float %i.aak) ; 2 uses
  %i.aam = fneg float %i.aac
  %i.aan = fneg float %i.aae
  %i.aao = fmul float %i.aag, %i.aan
  %i.aap = call float @llvm.fmuladd.f32(float %i.aam, float %i.aai, float %i.aao) ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0384481, i64 4
  store float %i.aal, ptr %i.aaq, align 4
  %i.aar = fneg float %i.aal
  %i.aas = getelementptr inbounds nuw i8, ptr %.0383482, i64 8
  store float %i.aar, ptr %i.aas, align 4
  %i.aat = getelementptr inbounds nuw i8, ptr %.0382483, i64 4
  store float %i.aap, ptr %i.aat, align 4
  %i.aau = getelementptr i8, ptr %.pn415484, i64 -8
  store float %i.aap, ptr %i.aau, align 4
  %i.aav = getelementptr inbounds i8, ptr %.pn414486, i64 -24
  %i.aaw = load float, ptr %i.aav, align 4        ; 2 uses
  %i.aax = getelementptr inbounds i8, ptr %.pn485, i64 -20
  %i.aay = load float, ptr %i.aax, align 4        ; 2 uses
  %i.aaz = getelementptr inbounds i8, ptr %.pn414486, i64 -20
  %i.aba = load float, ptr %i.aaz, align 4        ; 2 uses
  %i.abb = getelementptr inbounds i8, ptr %.pn485, i64 -24
  %i.abc = load float, ptr %i.abb, align 4        ; 2 uses
  %i.abd = fneg float %i.abc
  %i.abe = fmul float %i.aba, %i.abd
  %i.abf = call float @llvm.fmuladd.f32(float %i.aaw, float %i.aay, float %i.abe) ; 2 uses
  %i.abg = fneg float %i.aaw
  %i.abh = fneg float %i.aay
  %i.abi = fmul float %i.aba, %i.abh
  %i.abj = call float @llvm.fmuladd.f32(float %i.abg, float %i.abc, float %i.abi) ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.0384481, i64 8
  store float %i.abf, ptr %i.abk, align 4
  %i.abl = fneg float %i.abf
  %i.abm = getelementptr inbounds nuw i8, ptr %.0383482, i64 4
  store float %i.abl, ptr %i.abm, align 4
  %i.abn = getelementptr inbounds nuw i8, ptr %.0382483, i64 8
  store float %i.abj, ptr %i.abn, align 4
  %i.abo = getelementptr i8, ptr %.pn415484, i64 -12
  store float %i.abj, ptr %i.abo, align 4
  %i.abp = load float, ptr %.0379487, align 4     ; 2 uses
  %i.abq = getelementptr inbounds i8, ptr %.pn485, i64 -28
  %i.abr = load float, ptr %i.abq, align 4        ; 2 uses
  %i.abs = getelementptr inbounds i8, ptr %.pn414486, i64 -28
  %i.abt = load float, ptr %i.abs, align 4        ; 2 uses
  %i.abu = load float, ptr %.0380, align 4        ; 2 uses
  %i.abv = fneg float %i.abu
  %i.abw = fmul float %i.abt, %i.abv
  %i.abx = call float @llvm.fmuladd.f32(float %i.abp, float %i.abr, float %i.abw) ; 2 uses
  %i.aby = fneg float %i.abp
  %i.abz = fneg float %i.abr
  %i.aca = fmul float %i.abt, %i.abz
  %i.acb = call float @llvm.fmuladd.f32(float %i.aby, float %i.abu, float %i.aca) ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.0384481, i64 12
  store float %i.abx, ptr %i.acc, align 4
  %i.acd = fneg float %i.abx
  store float %i.acd, ptr %.0383482, align 4
  %i.ace = getelementptr inbounds nuw i8, ptr %.0382483, i64 12
  store float %i.acb, ptr %i.ace, align 4
  store float %i.acb, ptr %.0381, align 4
  %i.acf = getelementptr inbounds nuw i8, ptr %.0384481, i64 16
  %i.acg = getelementptr inbounds nuw i8, ptr %.0382483, i64 16
  %i.ach = getelementptr inbounds i8, ptr %.0383482, i64 -16
  %.0379 = getelementptr inbounds i8, ptr %.0379487, i64 -32 ; 2 uses
  %.not413 = icmp ult ptr %.0379, %i.t
  br i1 %.not413, label %._crit_edge490, label %.lr.ph489

._crit_edge490:                                   ; preds = %.lr.ph489, %._crit_edge478
  store i32 %i.e, ptr %i.d, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #66

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc ptr @setup_temp_malloc(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #67 {
bb.a:
  %i.a = add nsw i32 %1, 7
  %i.b = and i32 %i.a, -8                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub nsw i32 %i.f, %i.b                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.e, align 4
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %i.k
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = sext i32 %i.b to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #74
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.n, %bb.d ], [ %i.l, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @codebook_decode_deinterleave_repeat(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, i32 noundef range(i32 -1073741824, 1073741824) %6, i32 noundef %7) unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %4, align 4                ; 2 uses
  %i.b = load i32, ptr %5, align 4                ; 2 uses
  %i.c = load i32, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %.preheader128

.preheader128:                                    ; preds = %bb.a
  %i.g = icmp sgt i32 %7, 0
  br i1 %i.g, label %.lr.ph146, label %._crit_edge

.lr.ph146:                                        ; preds = %.preheader128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = mul nsw i32 %6, %3                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
end_hunk_0
