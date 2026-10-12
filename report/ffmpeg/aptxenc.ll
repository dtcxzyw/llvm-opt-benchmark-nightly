Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aptxenc?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@aptx_encode_frame:bb.a
  %i.sf = mul nsw i64 %i.se, 381799
  %i.sg = add nsw i64 %i.sb, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !52
  %i.sj = sext i32 %i.si to i64
  %i.sk = mul nsw i64 %i.sj, -828088
  %i.sl = add nsw i64 %i.sg, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.re, i64 28
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !52
  %i.so = sext i32 %i.sn to i64
  %i.sp = mul nsw i64 %i.so, 3962579
  %i.sq = add nsw i64 %i.sl, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !52
  %i.st = sext i32 %i.ss to i64
  %i.su = mul nsw i64 %i.st, 985888
  %i.sv = add nsw i64 %i.sq, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %i.re, i64 36
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !52
  %i.sy = sext i32 %i.sx to i64
  %i.sz = mul nsw i64 %i.sy, -226954
  %i.ta = add nsw i64 %i.sv, %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !52
  %i.td = sext i32 %i.tc to i64
  %i.te = mul nsw i64 %i.td, 39048
  %i.tf = add nsw i64 %i.ta, %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.re, i64 44
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !52
  %i.ti = sext i32 %i.th to i64
  %i.tj = mul nsw i64 %i.ti, 11990
  %i.tk = add nsw i64 %i.tf, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.re, i64 48
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !52
  %i.tn = sext i32 %i.tm to i64
  %i.to = mul nsw i64 %i.tn, -14203
  %i.tp = add nsw i64 %i.tk, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.re, i64 52
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !52
  %i.ts = sext i32 %i.tr to i64
  %i.tt = mul nsw i64 %i.ts, 4966
  %i.tu = add nsw i64 %i.tp, %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.re, i64 56
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !52
  %i.tx = sext i32 %i.tw to i64
  %i.ty = mul nsw i64 %i.tx, 973
  %i.tz = add nsw i64 %i.tu, %i.ty
  %i.ua = getelementptr inbounds nuw i8, ptr %i.re, i64 60
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !52
  %i.uc = sext i32 %i.ub to i64
  %i.ud = mul nsw i64 %i.uc, -1268
  %i.ue = add nsw i64 %i.tz, %i.ud                ; 2 uses
  %i.uf = add nsw i64 %i.ue, 4194304
  %i.ug = lshr i64 %i.uf, 23
  %i.uh = and i64 %i.ue, 16777215
  %i.ui = icmp eq i64 %i.uh, 4194304
  %.neg.i29.i.i.i = sext i1 %i.ui to i64
  %i.uj = add nsw i64 %i.ug, %.neg.i29.i.i.i
  %i.uk = trunc i64 %i.uj to i32
  %i.ul = tail call i32 @llvm.smax.i32(i32 %i.uk, i32 -8388608)
  %.0.i.i26.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ul, i32 8388607) ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.qn, i64 132 ; 4 uses
  %i.un = load i32, ptr %i.qp, align 8, !tbaa !52 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.qn, i64 136 ; 3 uses
  %i.up = load i32, ptr %i.um, align 4, !tbaa !57
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.uq
  store i32 %i.un, ptr %i.ur, align 4, !tbaa !52
  %i.us = load i32, ptr %i.um, align 4, !tbaa !57
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr [4 x i8], ptr %i.uo, i64 %i.ut
  %i.uv = getelementptr i8, ptr %i.uu, i64 64
  store i32 %i.un, ptr %i.uv, align 4, !tbaa !52
  %i.uw = load i32, ptr %i.um, align 4, !tbaa !57
  %i.ux = add nsw i32 %i.uw, 1
  %i.uy = and i32 %i.ux, 15                       ; 2 uses
  store i32 %i.uy, ptr %i.um, align 4, !tbaa !57
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.uz ; 16 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !52
  %i.vc = sext i32 %i.vb to i64
  %i.vd = mul nsw i64 %i.vc, -1268
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !52
  %i.vg = sext i32 %i.vf to i64
  %i.vh = mul nsw i64 %i.vg, 973
  %i.vi = add nsw i64 %i.vh, %i.vd
  %i.vj = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !52
  %i.vl = sext i32 %i.vk to i64
  %i.vm = mul nsw i64 %i.vl, 4966
  %i.vn = add nsw i64 %i.vi, %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !52
  %i.vq = sext i32 %i.vp to i64
  %i.vr = mul nsw i64 %i.vq, -14203
  %i.vs = add nsw i64 %i.vn, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !52
  %i.vv = sext i32 %i.vu to i64
  %i.vw = mul nsw i64 %i.vv, 11990
  %i.vx = add nsw i64 %i.vs, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.va, i64 20
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !52
  %i.wa = sext i32 %i.vz to i64
  %i.wb = mul nsw i64 %i.wa, 39048
  %i.wc = add nsw i64 %i.vx, %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !52
  %i.wf = sext i32 %i.we to i64
  %i.wg = mul nsw i64 %i.wf, -226954
  %i.wh = add nsw i64 %i.wc, %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.va, i64 28
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !52
  %i.wk = sext i32 %i.wj to i64
  %i.wl = mul nsw i64 %i.wk, 985888
  %i.wm = add nsw i64 %i.wh, %i.wl
  %i.wn = getelementptr inbounds nuw i8, ptr %i.va, i64 32
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !52
  %i.wp = sext i32 %i.wo to i64
  %i.wq = mul nsw i64 %i.wp, 3962579
  %i.wr = add nsw i64 %i.wm, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.va, i64 36
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !52
  %i.wu = sext i32 %i.wt to i64
  %i.wv = mul nsw i64 %i.wu, -828088
  %i.ww = add nsw i64 %i.wr, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.va, i64 40
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !52
  %i.wz = sext i32 %i.wy to i64
  %i.xa = mul nsw i64 %i.wz, 381799
  %i.xb = add nsw i64 %i.ww, %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.va, i64 44
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !52
  %i.xe = sext i32 %i.xd to i64
  %i.xf = mul nsw i64 %i.xe, -171156
  %i.xg = add nsw i64 %i.xb, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.va, i64 48
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !52
  %i.xj = sext i32 %i.xi to i64
  %i.xk = mul nsw i64 %i.xj, 61697
  %i.xl = add nsw i64 %i.xg, %i.xk
  %i.xm = getelementptr inbounds nuw i8, ptr %i.va, i64 52
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !52
  %i.xo = sext i32 %i.xn to i64
  %i.xp = mul nsw i64 %i.xo, -13592
  %i.xq = add nsw i64 %i.xl, %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %i.va, i64 56
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !52
  %i.xt = sext i32 %i.xs to i64
  %i.xu = mul nsw i64 %i.xt, -584
  %i.xv = add nsw i64 %i.xq, %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.va, i64 60
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !52
  %i.xy = sext i32 %i.xx to i64
  %i.xz = mul nsw i64 %i.xy, 1033
  %i.ya = add nsw i64 %i.xv, %i.xz                ; 2 uses
  %i.yb = add nsw i64 %i.ya, 4194304
  %i.yc = lshr i64 %i.yb, 23
  %i.yd = and i64 %i.ya, 16777215
  %i.ye = icmp eq i64 %i.yd, 4194304
  %.neg.i29.1.i.i.i = sext i1 %i.ye to i64
  %i.yf = add nsw i64 %i.yc, %.neg.i29.1.i.i.i
  %i.yg = trunc i64 %i.yf to i32
  %i.yh = tail call i32 @llvm.smax.i32(i32 %i.yg, i32 -8388608)
  %.0.i.i26.1.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.yh, i32 8388607) ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.qo ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yk = add nsw i32 %.0.i.i26.1.i.i.i, %.0.i.i26.i.i.i
  %i.yl = tail call i32 @llvm.smax.i32(i32 %i.yk, i32 -8388608)
  %.0.i14.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.yl, i32 8388607)
  store i32 %.0.i14.i.i.i.i, ptr %i.yi, align 8, !tbaa !52
  %i.ym = sub nsw i32 %.0.i.i26.i.i.i, %.0.i.i26.1.i.i.i
  %i.yn = tail call i32 @llvm.smax.i32(i32 %i.ym, i32 -8388608)
  %.0.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.yn, i32 8388607)
  store i32 %.0.i.i.i.i.i, ptr %i.yj, align 4, !tbaa !52
  br i1 %i.qm, label %aptx_qmf_convolution.exit24.i.i.i, label %aptx_qmf_tree_analysis.exit.i.i, !llvm.loop !38

aptx_qmf_tree_analysis.exit.i.i:                  ; preds = %aptx_qmf_convolution.exit24.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  tail call void @ff_aptx_generate_dither(ptr noundef nonnull %i.az) #6
  %i.yo = getelementptr inbounds nuw i8, ptr %i.az, i64 816
  %i.yp = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.az, i64 864
  %i.yr = sext i32 %i.ba to i64
  %i.ys = getelementptr inbounds [192 x i8], ptr @ff_aptx_quant_tables, i64 %i.yr
  br label %bb.d

bb.d:                                             ; preds = %aptx_quantize_difference.exit.i.i, %aptx_qmf_tree_analysis.exit.i.i
  %indvars.iv.i.i = phi i64 [ 0, %aptx_qmf_tree_analysis.exit.i.i ], [ %indvars.iv.next.i.i, %aptx_quantize_difference.exit.i.i ] ; 7 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !52
  %i.yv = getelementptr inbounds nuw [320 x i8], ptr %i.az, i64 %indvars.iv.i.i
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 1228
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !60
  %i.yy = sub nsw i32 %i.yu, %i.yx
  %i.yz = tail call i32 @llvm.smax.i32(i32 %i.yy, i32 -8388608)
  %.0.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.yz, i32 8388607) ; 2 uses
  %i.za = getelementptr inbounds nuw [12 x i8], ptr %i.yo, i64 %indvars.iv.i.i ; 3 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %indvars.iv.i.i
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !52
  %i.zd = getelementptr inbounds nuw [12 x i8], ptr %i.yq, i64 %indvars.iv.i.i
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !62 ; 2 uses
  %i.zf = getelementptr inbounds nuw [48 x i8], ptr %i.ys, i64 %indvars.iv.i.i ; 3 uses
  %i.zg = load ptr, ptr %i.zf, align 16, !tbaa !64 ; 2 uses
  %i.zh = tail call i32 @llvm.abs.i32(i32 %.0.i.i.i, i1 true)
  %i.zi = tail call i32 @llvm.umin.i32(i32 %i.zh, i32 8388607) ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %i.zk = load i32, ptr %i.zj, align 16, !tbaa !65
  %i.zl = ashr i32 %i.zk, 1                       ; 2 uses
  %i.zm = icmp sgt i32 %i.zl, 0
  br i1 %i.zm, label %.lr.ph.i.i.i, label %.aptx_bin_search.exit_crit_edge.i.i.i

.aptx_bin_search.exit_crit_edge.i.i.i:            ; preds = %bb.d
  %.pre.i.i.i = sext i32 %i.ze to i64
  br label %aptx_quantize_difference.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.zn = lshr i32 %i.zi, 4
  %i.zo = sext i32 %i.ze to i64                   ; 2 uses
  %i.zp = zext nneg i32 %i.zn to i64
  %i.zq = shl nuw nsw i64 %i.zp, 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.0.i4955.i.i.i = phi i32 [ %i.zl, %.lr.ph.i.i.i ], [ %i.zx, %bb.e ] ; 2 uses
  %.010.i54.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i, %bb.e ] ; 2 uses
  %i.zr = add nsw i32 %.010.i54.i.i.i, %.0.i4955.i.i.i ; 2 uses
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zg, i64 %i.zs
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !52
  %i.zv = sext i32 %i.zu to i64
  %i.zw = mul nsw i64 %i.zv, %i.zo
  %.not.i50.i.i.i = icmp sgt i64 %i.zw, %i.zq
  %spec.select.i.i.i.i = select i1 %.not.i50.i.i.i, i32 %.010.i54.i.i.i, i32 %i.zr ; 2 uses
  %i.zx = lshr i32 %.0.i4955.i.i.i, 1             ; 2 uses
  %.not.i18.i.i = icmp eq i32 %i.zx, 0
  br i1 %.not.i18.i.i, label %aptx_quantize_difference.exit.i.i, label %bb.e, !llvm.loop !39

aptx_quantize_difference.exit.i.i:                ; preds = %bb.e, %.aptx_bin_search.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %.aptx_bin_search.exit_crit_edge.i.i.i ], [ %i.zo, %bb.e ]
  %.010.i.lcssa.i.i.i = phi i32 [ 0, %.aptx_bin_search.exit_crit_edge.i.i.i ], [ %spec.select.i.i.i.i, %bb.e ] ; 4 uses
  %4 = sext i32 %i.zc to i64                      ; 3 uses
  %5 = mul nsw i64 %4, %4
  %6 = lshr i64 %5, 32
  %7 = trunc nuw i64 %6 to i32                    ; 2 uses
  %i.zy = add nuw nsw i32 %7, 64
  %8 = lshr i32 %i.zy, 7
  %i.zz = and i32 %7, 255
  %i.aaa = icmp eq i32 %i.zz, 64
  %.neg.i53.i.i.i = sext i1 %i.aaa to i32
  %i.aab = add nsw i32 %8, %.neg.i53.i.i.i
  %.0.i.i52.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.aab, i32 8388607)
  %i.aac = add nsw i32 %.0.i.i52.i.i.i, -8388608
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.aaf = load ptr, ptr %i.aae, align 16, !tbaa !66
  %i.aag = sext i32 %.010.i.lcssa.i.i.i to i64    ; 2 uses
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !52
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = mul nsw i64 %i.aaj, %i.aad             ; 2 uses
  %i.aal = add nsw i64 %i.aak, 4194304
  %i.aam = lshr i64 %i.aal, 23
  %i.aan = and i64 %i.aak, 16777215
  %i.aao = icmp eq i64 %i.aan, 4194304
  %.neg.i48.i.i.i = sext i1 %i.aao to i64
  %i.aap = add nsw i64 %i.aam, %.neg.i48.i.i.i
  %i.aaq = trunc i64 %i.aap to i32
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.zg, i64 %i.aag ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 4
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !52 ; 2 uses
  %i.aau = load i32, ptr %i.aar, align 4, !tbaa !52 ; 2 uses
  %i.aav = add nsw i32 %i.aau, %i.aat
  %i.aaw = sdiv i32 %i.aav, 2
  %i.aax = sub nsw i32 %i.aat, %i.aau
  %.lobit.neg.i.i.i = ashr i32 %.0.i.i.i, 31      ; 3 uses
  %i.aay = or i32 %.lobit.neg.i.i.i, 1
  %i.aaz = mul nsw i32 %i.aax, %i.aay
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = mul nsw i64 %i.aba, %4
  %i.abc = add nsw i32 %i.aaw, %i.aaq
  %i.abd = tail call i32 @llvm.smax.i32(i32 %i.abc, i32 -8388608)
  %.0.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.abd, i32 8388607)
  %i.abe = sext i32 %.0.i.i.i.i to i64
  %i.abf = shl nsw i64 %i.abe, 32
  %i.abg = add nsw i64 %i.abf, %i.abb             ; 2 uses
  %i.abh = add nsw i64 %i.abg, 2147483648
  %i.abi = lshr i64 %i.abh, 32
  %i.abj = and i64 %i.abg, 8589934591
  %i.abk = icmp eq i64 %i.abj, 2147483648
  %.neg.i.i16.i.i = sext i1 %i.abk to i64
  %i.abl = add nsw i64 %i.abi, %.neg.i.i16.i.i
  %i.abm = trunc i64 %i.abl to i32
  %i.abn = tail call i32 @llvm.smax.i32(i32 %i.abm, i32 -8388608)
  %.0.i.i.i17.i.i = tail call i32 @llvm.smin.i32(i32 %i.abn, i32 8388607)
  %i.abo = sext i32 %.0.i.i.i17.i.i to i64
  %i.abp = zext nneg i32 %i.zi to i64
  %i.abq = shl nuw nsw i64 %i.abp, 20
  %i.abr = mul nsw i64 %.pre-phi.i.i.i, %i.abo
  %i.abs = sub nsw i64 %i.abq, %i.abr             ; 3 uses
  %i.abt = add nsw i64 %i.abs, 4194304
  %i.abu = ashr i64 %i.abt, 23
  %i.abv = and i64 %i.abs, 16777215
  %i.abw = icmp eq i64 %i.abv, 4194304
  %.neg.i47.i.i.i = sext i1 %i.abw to i64
  %i.abx = add nsw i64 %i.abu, %.neg.i47.i.i.i
  %spec.select.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.abx, i1 true)
  %i.aby = trunc nuw i64 %spec.select.i.i.i to i32
  %i.abz = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  store i32 %i.aby, ptr %i.abz, align 4, !tbaa !67
  %i.aca = icmp slt i64 %i.abs, 0                 ; 2 uses
  %i.acb = add nsw i32 %.010.i.lcssa.i.i.i, -1    ; 2 uses
  %..i.i.i = select i1 %i.aca, i32 %i.acb, i32 %.010.i.lcssa.i.i.i
  %.44.i.i.i = select i1 %i.aca, i32 %.010.i.lcssa.i.i.i, i32 %i.acb
  %i.acc = xor i32 %..i.i.i, %.lobit.neg.i.i.i
  store i32 %i.acc, ptr %i.za, align 4, !tbaa !62
  %i.acd = xor i32 %.44.i.i.i, %.lobit.neg.i.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !68
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.not.i.i, label %aptx_encode_channel.exit.i, label %bb.d, !llvm.loop !40

aptx_encode_channel.exit.i:                       ; preds = %aptx_quantize_difference.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br i1 %i.ay, label %bb.c, label %bb.f, !llvm.loop !41

bb.f:                                             ; preds = %aptx_encode_channel.exit.i
  %i.acf = sext i32 %.03644 to i64
  %i.acg = getelementptr inbounds i8, ptr %i.ax, i64 %i.acf ; 8 uses
  %i.ach = load i32, ptr %i.v, align 4, !tbaa !71
  %i.aci = load i32, ptr %i.w, align 4, !tbaa !62
  %i.acj = load i32, ptr %i.x, align 4, !tbaa !62
  %i.ack = load i32, ptr %i.y, align 4, !tbaa !62
  %i.acl = load i32, ptr %i.z, align 4, !tbaa !62
  %i.acm = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.acn = load i32, ptr %i.ab, align 4, !tbaa !62
  %i.aco = load i32, ptr %i.ac, align 4, !tbaa !62
  %i.acp = load i32, ptr %i.ad, align 4, !tbaa !62
  %i.acq = load i32, ptr %i.ae, align 4, !tbaa !62
  %i.acr = xor i32 %i.aci, %i.ach
  %i.acs = xor i32 %i.acr, %i.acj
  %i.act = xor i32 %i.acs, %i.ack
  %i.acu = xor i32 %i.act, %i.acl
  %i.acv = xor i32 %i.acu, %i.acm
  %i.acw = xor i32 %i.acv, %i.acn
  %i.acx = xor i32 %i.acw, %i.aco
  %i.acy = xor i32 %i.acx, %i.acp
  %i.acz = xor i32 %i.acy, %i.acq
  %i.ada = load i32, ptr %i.u, align 4, !tbaa !52 ; 2 uses
  %i.adb = add nsw i32 %i.ada, 1
  %i.adc = and i32 %i.adb, 7
  store i32 %i.adc, ptr %i.u, align 4, !tbaa !52
  %i.add = trunc i32 %i.acz to i1
  %i.ade = icmp ne i32 %i.ada, 7
  %.not.i.i = xor i1 %i.ade, %i.add
  br i1 %.not.i.i, label %aptx_insert_sync.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !67
  %i.adf = load i32, ptr %i.af, align 4, !tbaa !67
  %i.adg = icmp slt i32 %i.adf, %.pre.i.i
  %spec.select.1.i.i = select i1 %i.adg, ptr %i.ad, ptr %i.ac ; 2 uses
  %i.adh = load i32, ptr %i.ag, align 4, !tbaa !67
  %i.adi = getelementptr inbounds nuw i8, ptr %spec.select.1.i.i, i64 8
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !67
  %i.adk = icmp slt i32 %i.adh, %i.adj
  %spec.select.2.i.i = select i1 %i.adk, ptr %i.ab, ptr %spec.select.1.i.i ; 2 uses
  %i.adl = load i32, ptr %i.ah, align 4, !tbaa !67 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %spec.select.2.i.i, i64 8
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !67 ; 2 uses
  %i.ado = icmp slt i32 %i.adl, %i.adn
  %spec.select.3.i.i = select i1 %i.ado, ptr %i.ae, ptr %spec.select.2.i.i
  %i.adp = tail call i32 @llvm.smin.i32(i32 %i.adl, i32 %i.adn)
  %i.adq = load i32, ptr %i.ai, align 4, !tbaa !67
  %i.adr = icmp slt i32 %i.adq, %i.adp
  %spec.select.i.1.i = select i1 %i.adr, ptr %i.x, ptr %spec.select.3.i.i ; 2 uses
  %i.ads = load i32, ptr %i.aj, align 4, !tbaa !67
  %i.adt = getelementptr inbounds nuw i8, ptr %spec.select.i.1.i, i64 8
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !67
  %i.adv = icmp slt i32 %i.ads, %i.adu
  %spec.select.1.i.1.i = select i1 %i.adv, ptr %i.y, ptr %spec.select.i.1.i ; 2 uses
  %i.adw = load i32, ptr %i.ak, align 4, !tbaa !67
  %i.adx = getelementptr inbounds nuw i8, ptr %spec.select.1.i.1.i, i64 8
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !67
  %i.adz = icmp slt i32 %i.adw, %i.ady
  %spec.select.2.i.1.i = select i1 %i.adz, ptr %i.w, ptr %spec.select.1.i.1.i ; 2 uses
  %i.aea = load i32, ptr %i.al, align 4, !tbaa !67
  %i.aeb = getelementptr inbounds nuw i8, ptr %spec.select.2.i.1.i, i64 8
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !67
  %i.aed = icmp slt i32 %i.aea, %i.aec
  %spec.select.3.i.1.i = select i1 %i.aed, ptr %i.z, ptr %spec.select.2.i.1.i ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %spec.select.3.i.1.i, i64 4
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !68
  store i32 %i.aef, ptr %spec.select.3.i.1.i, align 4, !tbaa !62
  br label %aptx_insert_sync.exit.i

aptx_insert_sync.exit.i:                          ; preds = %.preheader.i.i, %bb.f
  %i.aeg = load i32, ptr %i.e, align 4, !tbaa !55
  tail call void @ff_aptx_invert_quantize_and_prediction(ptr noundef nonnull %i.t, i32 noundef %i.aeg) #6
  %i.aeh = load i32, ptr %i.e, align 4, !tbaa !55
  %.not.i = icmp eq i32 %i.aeh, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %aptx_insert_sync.exit.i
  %i.aei = load i32, ptr %i.w, align 4, !tbaa !62
  %i.aej = trunc i32 %i.aei to i8
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acg, i64 2
  store i8 %i.aej, ptr %i.aek, align 1, !tbaa !51
  %i.ael = load i32, ptr %i.w, align 4, !tbaa !62
  %i.aem = load i32, ptr %i.x, align 4, !tbaa !62
  %i.aen = load i32, ptr %i.y, align 4, !tbaa !62
  %i.aeo = shl i32 %i.aen, 15
  %i.aep = shl i32 %i.aem, 9
  %i.aeq = and i32 %i.aep, 32256
  %i.aer = or disjoint i32 %i.aeo, %i.aeq
  %i.aes = and i32 %i.ael, 256
  %i.aet = or disjoint i32 %i.aer, %i.aes
  %i.aeu = lshr exact i32 %i.aet, 8
  %i.aev = trunc i32 %i.aeu to i8
  %i.aew = getelementptr inbounds nuw i8, ptr %i.acg, i64 1
  store i8 %i.aev, ptr %i.aew, align 1, !tbaa !51
  %i.aex = load i32, ptr %i.v, align 4, !tbaa !71
  %i.aey = load i32, ptr %i.w, align 4, !tbaa !62
  %i.aez = xor i32 %i.aey, %i.aex
  %i.afa = load i32, ptr %i.x, align 4, !tbaa !62
  %i.afb = xor i32 %i.aez, %i.afa
  %i.afc = load i32, ptr %i.y, align 4, !tbaa !62 ; 2 uses
  %i.afd = xor i32 %i.afb, %i.afc
  %i.afe = load i32, ptr %i.z, align 4, !tbaa !62 ; 2 uses
  %i.aff = xor i32 %i.afd, %i.afe
  %i.afg = and i32 %i.aff, 1
  %i.afh = and i32 %i.afe, 30
  %i.afi = or disjoint i32 %i.afg, %i.afh
  %i.afj = shl nuw nsw i32 %i.afi, 19
  %i.afk = shl i32 %i.afc, 15
  %i.afl = and i32 %i.afk, 458752
  %i.afm = or disjoint i32 %i.afj, %i.afl
  %i.afn = lshr exact i32 %i.afm, 16
  %i.afo = trunc nuw i32 %i.afn to i8
  store i8 %i.afo, ptr %i.acg, align 1, !tbaa !51
  br label %bb.i

bb.h:                                             ; preds = %aptx_insert_sync.exit.i
  %i.afp = load i32, ptr %i.v, align 4, !tbaa !71
  %i.afq = load i32, ptr %i.w, align 4, !tbaa !62 ; 2 uses
  %i.afr = xor i32 %i.afq, %i.afp
  %i.afs = load i32, ptr %i.x, align 4, !tbaa !62 ; 2 uses
  %i.aft = xor i32 %i.afr, %i.afs
  %i.afu = load i32, ptr %i.y, align 4, !tbaa !62 ; 2 uses
  %i.afv = xor i32 %i.aft, %i.afu
  %i.afw = load i32, ptr %i.z, align 4, !tbaa !62 ; 2 uses
  %i.afx = xor i32 %i.afv, %i.afw
  %i.afy = and i32 %i.afx, 1
  %i.afz = and i32 %i.afw, 6
  %i.aga = or disjoint i32 %i.afy, %i.afz
  %i.agb = shl nuw nsw i32 %i.aga, 13
  %i.agc = shl i32 %i.afu, 11
  %i.agd = and i32 %i.agc, 6144
  %i.age = or disjoint i32 %i.agb, %i.agd
  %i.agf = shl i32 %i.afs, 7
  %i.agg = and i32 %i.agf, 1920
  %i.agh = or disjoint i32 %i.age, %i.agg
  %i.agi = and i32 %i.afq, 127
  %i.agj = or disjoint i32 %i.agh, %i.agi
  %i.agk = trunc nuw i32 %i.agj to i16
  %i.agl = tail call i16 @llvm.bswap.i16(i16 %i.agk)
  store i16 %i.agl, ptr %i.acg, align 1, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.agm = load i32, ptr %i.e, align 4, !tbaa !55
  tail call void @ff_aptx_invert_quantize_and_prediction(ptr noundef nonnull %i.am, i32 noundef %i.agm) #6
  %i.agn = load i32, ptr %i.e, align 4, !tbaa !55
  %.not.1.i = icmp eq i32 %i.agn, 0
  br i1 %.not.1.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ago = load i32, ptr %i.ab, align 4, !tbaa !62
  %i.agp = trunc i32 %i.ago to i8
  %i.agq = getelementptr inbounds nuw i8, ptr %i.acg, i64 3
  %i.agr = getelementptr inbounds nuw i8, ptr %i.acg, i64 5
  store i8 %i.agp, ptr %i.agr, align 1, !tbaa !51
  %i.ags = load i32, ptr %i.ab, align 4, !tbaa !62
  %i.agt = load i32, ptr %i.ac, align 4, !tbaa !62
  %i.agu = load i32, ptr %i.ad, align 4, !tbaa !62
  %i.agv = shl i32 %i.agu, 15
  %i.agw = shl i32 %i.agt, 9
  %i.agx = and i32 %i.agw, 32256
  %i.agy = or disjoint i32 %i.agv, %i.agx
  %i.agz = and i32 %i.ags, 256
  %i.aha = or disjoint i32 %i.agy, %i.agz
  %i.ahb = lshr exact i32 %i.aha, 8
  %i.ahc = trunc i32 %i.ahb to i8
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  store i8 %i.ahc, ptr %i.ahd, align 1, !tbaa !51
  %i.ahe = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.ahf = load i32, ptr %i.ab, align 4, !tbaa !62
  %i.ahg = xor i32 %i.ahf, %i.ahe
  %i.ahh = load i32, ptr %i.ac, align 4, !tbaa !62
  %i.ahi = xor i32 %i.ahg, %i.ahh
  %i.ahj = load i32, ptr %i.ad, align 4, !tbaa !62 ; 2 uses
  %i.ahk = xor i32 %i.ahi, %i.ahj
  %i.ahl = load i32, ptr %i.ae, align 4, !tbaa !62 ; 2 uses
  %i.ahm = xor i32 %i.ahk, %i.ahl
  %i.ahn = and i32 %i.ahm, 1
  %i.aho = and i32 %i.ahl, 30
  %i.ahp = or disjoint i32 %i.ahn, %i.aho
  %i.ahq = shl nuw nsw i32 %i.ahp, 19
  %i.ahr = shl i32 %i.ahj, 15
  %i.ahs = and i32 %i.ahr, 458752
  %i.aht = or disjoint i32 %i.ahq, %i.ahs
  %i.ahu = lshr exact i32 %i.aht, 16
  %i.ahv = trunc nuw i32 %i.ahu to i8
  store i8 %i.ahv, ptr %i.agq, align 1, !tbaa !51
  br label %aptx_encode_samples.exit

bb.k:                                             ; preds = %bb.i
  %i.ahw = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.ahx = load i32, ptr %i.ab, align 4, !tbaa !62 ; 2 uses
  %i.ahy = xor i32 %i.ahx, %i.ahw
  %i.ahz = load i32, ptr %i.ac, align 4, !tbaa !62 ; 2 uses
  %i.aia = xor i32 %i.ahy, %i.ahz
  %i.aib = load i32, ptr %i.ad, align 4, !tbaa !62 ; 2 uses
  %i.aic = xor i32 %i.aia, %i.aib
  %i.aid = load i32, ptr %i.ae, align 4, !tbaa !62 ; 2 uses
  %i.aie = xor i32 %i.aic, %i.aid
  %i.aif = and i32 %i.aie, 1
  %i.aig = and i32 %i.aid, 6
  %i.aih = or disjoint i32 %i.aif, %i.aig
  %i.aii = shl nuw nsw i32 %i.aih, 13
  %i.aij = shl i32 %i.aib, 11
  %i.aik = and i32 %i.aij, 6144
  %i.ail = or disjoint i32 %i.aii, %i.aik
  %i.aim = shl i32 %i.ahz, 7
  %i.ain = and i32 %i.aim, 1920
  %i.aio = or disjoint i32 %i.ail, %i.ain
  %i.aip = and i32 %i.ahx, 127
  %i.aiq = or disjoint i32 %i.aio, %i.aip
  %i.air = trunc nuw i32 %i.aiq to i16
  %i.ais = tail call i16 @llvm.bswap.i16(i16 %i.air)
  %i.ait = getelementptr inbounds nuw i8, ptr %i.acg, i64 2
  store i16 %i.ais, ptr %i.ait, align 1, !tbaa !51
  br label %aptx_encode_samples.exit

aptx_encode_samples.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.aiu = load i32, ptr %i.i, align 4, !tbaa !44
  %i.aiv = add nsw i32 %i.aiu, %.03644            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.aiw = icmp slt i32 %i.aiv, %i.n
  br i1 %i.aiw, label %.preheader, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %aptx_encode_samples.exit, %.preheader41
  %i.aix = load i32, ptr %i.k, align 8, !tbaa !49
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @ff_af_queue_remove(ptr noundef nonnull %i.f, i32 noundef %i.aix, ptr noundef nonnull %i.aiy, ptr noundef nonnull %i.aiz) #6
  store i32 1, ptr %3, align 4, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.037 = phi i32 [ 0, %._crit_edge ], [ %i.g, %bb.a ], [ %i.p, %bb.b ]
  ret i32 %.037
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @aptx_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4400
  tail call void @ff_af_queue_close(ptr noundef nonnull %i.c) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ff_af_queue_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_aptx_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_af_queue_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_af_queue_remove(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_aptx_invert_quantize_and_prediction(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_aptx_generate_dither(ptr noundef) local_unnamed_addr #3

declare void @ff_af_queue_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 376}
!30 = !{!27, !12, i64 40}
!31 = !{!"p1 _ZTS9FramePool", !9, i64 0}
!32 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!33 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!34 = !{!"p1 _ZTS12AVBSFContext", !9, i64 0}
!35 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!36 = !{!"AVCodecInternal", !6, i64 0, !6, i64 4, !6, i64 8, !31, i64 16, !32, i64 24, !9, i64 32, !33, i64 40, !34, i64 48, !33, i64 56, !14, i64 64, !6, i64 72, !9, i64 80, !35, i64 88, !35, i64 96, !6, i64 104, !6, i64 108, !9, i64 112, !6, i64 120, !33, i64 128, !35, i64 136, !6, i64 144, !6, i64 148}
!37 = !{!36, !6, i64 8}
!38 = distinct !{!38, !58}
!39 = distinct !{!39, !58}
!40 = distinct !{!40, !58}
!41 = distinct !{!41, !58}
!42 = distinct !{!42, !58}
!43 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12}
!44 = !{!43, !6, i64 4}
!45 = !{!"p2 omnipotent char", !25, i64 0}
!46 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!47 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!48 = !{!"AVFrame", !5, i64 0, !5, i64 64, !45, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !46, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !47, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!49 = !{!48, !6, i64 112}
!50 = !{!14, !14, i64 0}
!51 = !{!5, !5, i64 0}
!52 = !{!6, !6, i64 0}
!53 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!54 = !{!53, !14, i64 24}
!55 = !{!43, !6, i64 0}
!56 = !{!"", !6, i64 0, !5, i64 4}
!57 = !{!56, !6, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !6, i64 112, !5, i64 116, !6, i64 308, !6, i64 312, !6, i64 316}
!60 = !{!59, !6, i64 316}
!61 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!62 = !{!61, !6, i64 0}
!63 = !{!"", !24, i64 0, !24, i64 8, !24, i64 16, !17, i64 24, !6, i64 32, !6, i64 36, !6, i64 40}
!64 = !{!63, !24, i64 0}
!65 = !{!63, !6, i64 32}
!66 = !{!63, !24, i64 16}
!67 = !{!61, !6, i64 8}
!68 = !{!61, !6, i64 4}
!69 = !{!"", !5, i64 0, !5, i64 264}
!70 = !{!"", !6, i64 0, !6, i64 4, !5, i64 8, !69, i64 24, !5, i64 816, !5, i64 864, !5, i64 912}
!71 = !{!70, !6, i64 4}
end_hunk_0
