Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pvq?download=true
inline.NumInlined: 46
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@pvq_encode_band:bb.a
  %i.wn = ashr i32 %i.wm, 15
  %i.wo = sitofp i16 %i.ty to float
  %i.wp = fmul nnan nsz float %i.wo, f0x38000000
  %i.wq = sitofp i16 %i.ur to float
  %i.wr = fmul nnan nsz float %i.wq, f0x38000000
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.5611.i = phi i32 [ %i.td, %bb.ac ], [ %i.tg, %bb.ad ], [ %.4610.i175420, %bb.ae ] ; 4 uses
  %.0596.i = phi float [ f0x3F7FFE00, %bb.ac ], [ 0.000000e+00, %bb.ad ], [ %i.wp, %bb.ae ] ; 5 uses
  %.0595.i = phi float [ 0.000000e+00, %bb.ac ], [ f0x3F7FFE00, %bb.ad ], [ %i.wr, %bb.ae ] ; 3 uses
  %.0568.i = phi i32 [ -16384, %bb.ac ], [ 16384, %bb.ad ], [ %i.wn, %bb.ae ] ; 4 uses
  br i1 %i.jy, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ws = and i32 %.2.i, -16385
  %.not659.i = icmp eq i32 %i.ws, 0               ; 2 uses
  %.neg296 = select i1 %.not659.i, i32 0, i32 -8  ; 2 uses
  %i.wt = add i32 %.neg296, %i.tb
  %i.wu = icmp sgt i32 %.2.i, 8192                ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 34092 ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !34
  %.neg206 = sub i32 %.neg296, %i.ta
  %i.wx = add i32 %.neg206, %i.ww
  store i32 %i.wx, ptr %i.wv, align 4, !tbaa !34
  %i.wy = select i1 %i.wu, ptr %.0612.i174422, ptr %4 ; 5 uses
  %i.wz = select i1 %i.wu, ptr %4, ptr %.0612.i174422 ; 4 uses
  br i1 %.not659.i, label %.thread188, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.xa = load float, ptr %i.wy, align 4, !tbaa !35
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !35
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !35
  %i.xf = load float, ptr %i.wz, align 4, !tbaa !35
  %i.xg = fneg nsz float %i.xf
  %i.xh = fmul nsz float %i.xe, %i.xg
  %i.xi = tail call nsz float @llvm.fmuladd.f32(float %i.xa, float %i.xc, float %i.xh)
  %i.xj = fcmp nsz olt float %i.xi, 0.000000e+00  ; 2 uses
  %i.xk = zext i1 %i.xj to i32
  tail call void @ff_opus_rc_put_raw(ptr noundef nonnull %2, i32 noundef %i.xk, i32 noundef 1) #11
  %i.xl = select i1 %i.xj, i32 2, i32 0
  br label %.thread188

.thread188:                                       ; preds = %bb.ah, %bb.ag
  %.0567.i = phi i32 [ %i.xl, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %.neg660.i = add nsw i32 %.0567.i, -1
  %i.xm = sub nsw i32 1, %.0567.i
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !26
  %i.xp = tail call i32 %i.xo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %i.wy, ptr noundef null, i32 noundef 2, i32 noundef %i.wt, i32 noundef %.2616.i172426, ptr noundef %.1620.i, i32 noundef %.0618.i171428, ptr noundef %11, i32 noundef %12, float noundef %13, ptr noundef %14, i32 noundef %.4610.i175420) #11, !inline_history !5 ; 2 uses
  %i.xq = sitofp nsz i32 %.neg660.i to float
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !35
  %i.xt = fmul nsz float %i.xs, %i.xq
  store float %i.xt, ptr %i.wz, align 4, !tbaa !35
  %i.xu = sitofp nsz i32 %i.xm to float
  %i.xv = load float, ptr %i.wy, align 4, !tbaa !35
  %i.xw = fmul nsz float %i.xv, %i.xu
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  store float %i.xw, ptr %i.xx, align 4, !tbaa !35
  %i.xy = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.xz = load <2 x float>, ptr %4, align 4, !tbaa !35
  %i.ya = insertelement <2 x float> poison, float %.0596.i, i64 0
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = fmul nsz <2 x float> %i.yb, %i.xz
  store <2 x float> %i.yc, ptr %4, align 4, !tbaa !35
  %i.yd = getelementptr inbounds nuw i8, ptr %.0612.i174422, i64 4 ; 3 uses
  %i.ye = load <2 x float>, ptr %.0612.i174422, align 4, !tbaa !35
  %i.yf = insertelement <2 x float> poison, float %.0595.i, i64 0
  %i.yg = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yh = fmul nsz <2 x float> %i.yg, %i.ye       ; 2 uses
  store <2 x float> %i.yh, ptr %.0612.i174422, align 4, !tbaa !35
  %i.yi = load float, ptr %4, align 4, !tbaa !35  ; 2 uses
  %i.yj = extractelement <2 x float> %i.yh, i64 0
  %i.yk = fsub nsz float %i.yi, %i.yj
  store float %i.yk, ptr %4, align 4, !tbaa !35
  %i.yl = load float, ptr %.0612.i174422, align 4, !tbaa !35
  %i.ym = fadd nsz float %i.yi, %i.yl
  store float %i.ym, ptr %.0612.i174422, align 4, !tbaa !35
  %i.yn = load float, ptr %i.xy, align 4, !tbaa !35 ; 2 uses
  %i.yo = load float, ptr %i.yd, align 4, !tbaa !35
  %i.yp = fsub nsz float %i.yn, %i.yo
  store float %i.yp, ptr %i.xy, align 4, !tbaa !35
  %i.yq = load float, ptr %i.yd, align 4, !tbaa !35
  %i.yr = fadd nsz float %i.yn, %i.yq
  store float %i.yr, ptr %i.yd, align 4, !tbaa !35
  br i1 %.1584.i, label %quant_band_template.exit, label %.lr.ph290.preheader

bb.ai:                                            ; preds = %bb.af
  %i.ys = icmp slt i32 %.0590.i, 2
  %or.cond27.i = or i1 %i.f, %i.ys
  %i.yt = and i32 %.2.i, 16383
  %.not655.i = icmp eq i32 %i.yt, 0
  %or.cond.i = select i1 %or.cond27.i, i1 true, i1 %.not655.i
  br i1 %or.cond.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.yu = icmp sgt i32 %.2.i, 8192
  br i1 %i.yu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.yv = sub nsw i32 4, %.0618.i171428
  %i.yw = ashr i32 %.0568.i, %i.yv
  %i.yx = sub nsw i32 %.0568.i, %i.yw
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.yy = shl i32 %.0613.i173424, 3
  %i.yz = sub nsw i32 5, %.0618.i171428
  %i.za = ashr i32 %i.yy, %i.yz
  %i.zb = add nsw i32 %.0568.i, %i.za
  %spec.select666.i = tail call i32 @llvm.smin.i32(i32 %i.zb, i32 0)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %.1569.i = phi i32 [ %.0568.i, %bb.ai ], [ %i.yx, %bb.ak ], [ %spec.select666.i, %bb.al ]
  %i.zc = sub nsw i32 %i.tb, %.1569.i             ; 2 uses
  %i.zd = sdiv i32 %i.zc, 2
  %i.ze = icmp slt i32 %i.zc, -1
  %..i = tail call i32 @llvm.smin.i32(i32 %i.zd, i32 %i.tb)
  %.0.i22 = select i1 %i.ze, i32 0, i32 %..i      ; 5 uses
  %i.zf = sub nsw i32 %i.tb, %.0.i22              ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 34092 ; 4 uses
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !34
  %i.zi = sub nsw i32 %i.zh, %i.ta                ; 3 uses
  store i32 %i.zi, ptr %i.zg, align 4, !tbaa !34
  %i.zj = icmp eq ptr %.1620.i, null
  %or.cond29.i = or i1 %i.f, %i.zj
  %i.zk = sext i32 %.0613.i173424 to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %.1620.i, i64 %i.zk
  %.0566.i = select i1 %or.cond29.i, ptr null, ptr %i.zl ; 2 uses
  %i.zm = add nsw i32 %12, 1
  %.0565.i = select i1 %i.f, ptr %11, ptr null    ; 2 uses
  %.0564.i = select i1 %i.f, i32 0, i32 %i.zm     ; 4 uses
  %.not656.i = icmp slt i32 %.0.i22, %i.zf
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !26 ; 2 uses
  br i1 %.not656.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.zp = fmul nsz float %13, %.0596.i
  %i.zq = select nsz i1 %i.f, float 1.000000e+00, float %i.zp
  %i.zr = tail call i32 %i.zo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef %.0613.i173424, i32 noundef %.0.i22, i32 noundef %.2616.i172426, ptr noundef %.1620.i, i32 noundef %.0618.i171428, ptr noundef %.0565.i, i32 noundef %.0564.i, float noundef %i.zq, ptr noundef %14, i32 noundef %.5611.i) #11, !inline_history !5
  %i.zs = load i32, ptr %i.zg, align 4, !tbaa !34
  %.neg658.i = sub i32 %i.zs, %i.zi
  %i.zt = add i32 %.neg658.i, %.0.i22             ; 2 uses
  %i.zu = icmp sgt i32 %i.zt, 24
  %i.zv = icmp ne i32 %.2.i, 0
  %or.cond31.i = select i1 %i.zu, i1 %i.zv, i1 false
  %i.zw = add nsw i32 %i.zt, -24
  %i.zx = select i1 %or.cond31.i, i32 %i.zw, i32 0
  %.0570.i = add nsw i32 %i.zx, %i.zf
  %i.zy = load ptr, ptr %i.zn, align 8, !tbaa !26
  %i.zz = fmul nsz float %13, %.0595.i
  %i.aaa = ashr i32 %.5611.i, %.2616.i172426
  %i.aab = tail call i32 %i.zy(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %.0612.i174422, ptr noundef null, i32 noundef %.0613.i173424, i32 noundef %.0570.i, i32 noundef %.2616.i172426, ptr noundef %.0566.i, i32 noundef %.0618.i171428, ptr noundef null, i32 noundef %.0564.i, float noundef %i.zz, ptr noundef null, i32 noundef %i.aaa) #11, !inline_history !5
  %i.aac = ashr i32 %.0590.i, 1
  %i.aad = select i1 %i.f, i32 0, i32 %i.aac
  %i.aae = shl i32 %i.aab, %i.aad
  %i.aaf = or i32 %i.aae, %i.zr
  br label %celt_alg_quant.exit

bb.ao:                                            ; preds = %bb.am
  %i.aag = fmul nsz float %13, %.0595.i
  %i.aah = ashr i32 %.5611.i, %.2616.i172426
  %i.aai = tail call i32 %i.zo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %.0612.i174422, ptr noundef null, i32 noundef %.0613.i173424, i32 noundef %i.zf, i32 noundef %.2616.i172426, ptr noundef %.0566.i, i32 noundef %.0618.i171428, ptr noundef null, i32 noundef %.0564.i, float noundef %i.aag, ptr noundef null, i32 noundef %i.aah) #11, !inline_history !5
  %i.aaj = ashr i32 %.0590.i, 1
  %i.aak = select i1 %i.f, i32 0, i32 %i.aaj
  %i.aal = shl i32 %i.aai, %i.aak
  %i.aam = load i32, ptr %i.zg, align 4, !tbaa !34
  %.neg657.i = sub i32 %i.aam, %i.zi
  %i.aan = add i32 %.neg657.i, %i.zf              ; 2 uses
  %i.aao = icmp sgt i32 %i.aan, 24
  %i.aap = icmp ne i32 %.2.i, 16384
  %or.cond33.i = select i1 %i.aao, i1 %i.aap, i1 false
  %i.aaq = add nsw i32 %i.aan, -24
  %i.aar = select i1 %or.cond33.i, i32 %i.aaq, i32 0
  %.0571.i = add nsw i32 %i.aar, %.0.i22
  %i.aas = load ptr, ptr %i.zn, align 8, !tbaa !26
  %i.aat = fmul nsz float %13, %.0596.i
  %i.aau = select nsz i1 %i.f, float 1.000000e+00, float %i.aat
  %i.aav = tail call i32 %i.aas(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef %.0613.i173424, i32 noundef %.0571.i, i32 noundef %.2616.i172426, ptr noundef %.1620.i, i32 noundef %.0618.i171428, ptr noundef %.0565.i, i32 noundef %.0564.i, float noundef %i.aau, ptr noundef %14, i32 noundef %.5611.i) #11, !inline_history !5
  %i.aaw = or i32 %i.aav, %i.aal
  br label %celt_alg_quant.exit

.thread:                                          ; preds = %..thread_crit_edge, %bb.n
  %i.aax = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.gj, %bb.n ]
  %i.aay = zext i8 %i.aax to i32                  ; 2 uses
  %i.aaz = add nsw i32 %7, -1                     ; 8 uses
  %i.aba = add nuw nsw i32 %i.aay, 1
  %i.abb = lshr i32 %i.aba, 1                     ; 3 uses
  %i.abc = zext nneg i32 %i.abb to i64
  %i.abd = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !41
  %i.abf = zext i8 %i.abe to i32
  %.not22.i = icmp sgt i32 %i.aaz, %i.abf         ; 2 uses
  %..019.i = select i1 %.not22.i, i32 %i.abb, i32 0 ; 2 uses
  %.0..i = select i1 %.not22.i, i32 %i.aay, i32 %i.abb ; 2 uses
  %i.abg = add nuw nsw i32 %.0..i, %..019.i
  %i.abh = add nuw nsw i32 %i.abg, 1
  %i.abi = lshr i32 %i.abh, 1                     ; 3 uses
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !41
  %i.abm = zext i8 %i.abl to i32
  %.not22.1.i = icmp sgt i32 %i.aaz, %i.abm       ; 2 uses
  %..019.1.i = select i1 %.not22.1.i, i32 %i.abi, i32 %..019.i ; 2 uses
  %.0..1.i = select i1 %.not22.1.i, i32 %.0..i, i32 %i.abi ; 2 uses
  %i.abn = add nuw nsw i32 %.0..1.i, %..019.1.i
  %i.abo = add nuw nsw i32 %i.abn, 1
  %i.abp = lshr i32 %i.abo, 1                     ; 3 uses
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.abq
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !41
  %i.abt = zext i8 %i.abs to i32
  %.not22.2.i = icmp sgt i32 %i.aaz, %i.abt       ; 2 uses
  %..019.2.i = select i1 %.not22.2.i, i32 %i.abp, i32 %..019.1.i ; 2 uses
  %.0..2.i = select i1 %.not22.2.i, i32 %.0..1.i, i32 %i.abp ; 2 uses
  %i.abu = add nuw nsw i32 %.0..2.i, %..019.2.i
  %i.abv = add nuw nsw i32 %i.abu, 1
  %i.abw = lshr i32 %i.abv, 1                     ; 3 uses
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !41
  %i.aca = zext i8 %i.abz to i32
  %.not22.3.i = icmp sgt i32 %i.aaz, %i.aca       ; 2 uses
  %..019.3.i = select i1 %.not22.3.i, i32 %i.abw, i32 %..019.2.i ; 2 uses
  %.0..3.i = select i1 %.not22.3.i, i32 %.0..2.i, i32 %i.abw ; 2 uses
  %i.acb = add nuw nsw i32 %.0..3.i, %..019.3.i
  %i.acc = add nuw nsw i32 %i.acb, 1
  %i.acd = lshr i32 %i.acc, 1                     ; 3 uses
  %i.ace = zext nneg i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !41
  %i.ach = zext i8 %i.acg to i32
  %.not22.4.i = icmp sgt i32 %i.aaz, %i.ach       ; 2 uses
  %..019.4.i = select i1 %.not22.4.i, i32 %i.acd, i32 %..019.3.i ; 2 uses
  %.0..4.i = select i1 %.not22.4.i, i32 %.0..3.i, i32 %i.acd ; 2 uses
  %i.aci = add nuw nsw i32 %.0..4.i, %..019.4.i
  %i.acj = add nuw nsw i32 %i.aci, 1
  %i.ack = lshr i32 %i.acj, 1                     ; 3 uses
  %i.acl = zext nneg i32 %i.ack to i64
  %i.acm = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.acl
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !41
  %i.aco = zext i8 %i.acn to i32
  %.not22.5.i = icmp sgt i32 %i.aaz, %i.aco       ; 2 uses
  %..019.5.i = select i1 %.not22.5.i, i32 %i.ack, i32 %..019.4.i ; 3 uses
  %i.acp = icmp eq i32 %..019.5.i, 0
  br i1 %i.acp, label %celt_bits2pulses.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.acq = zext nneg i32 %..019.5.i to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.acq
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !41
  %i.act = zext i8 %i.acs to i32
  br label %celt_bits2pulses.exit

celt_bits2pulses.exit:                            ; preds = %.thread, %bb.ap
  %i.acu = phi i32 [ %i.act, %bb.ap ], [ -1, %.thread ]
  %.0..5.i = select i1 %.not22.5.i, i32 %.0..4.i, i32 %i.ack ; 2 uses
  %i.acv = sub nsw i32 %i.aaz, %i.acu
  %i.acw = zext nneg i32 %.0..5.i to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !41
  %i.acz = zext i8 %i.acy to i32
  %i.ada = sub nsw i32 %i.acz, %i.aaz
  %.not.i94 = icmp sgt i32 %i.acv, %i.ada
  %i.adb = select i1 %.not.i94, i32 %.0..5.i, i32 %..019.5.i ; 4 uses
  %i.adc = icmp eq i32 %i.adb, 0
  br i1 %i.adc, label %celt_pulses2bits.exit.thread, label %celt_pulses2bits.exit

celt_pulses2bits.exit:                            ; preds = %celt_bits2pulses.exit
  %i.add = zext nneg i32 %i.adb to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !41
  %i.adg = zext i8 %i.adf to i32
  %.neg731 = xor i32 %i.adg, -1
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 34092 ; 5 uses
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !34 ; 4 uses
  %i.adj = add i32 %i.adi, %.neg731               ; 2 uses
  store i32 %i.adj, ptr %i.adh, align 4, !tbaa !34
  %i.adk = icmp slt i32 %i.adj, 0
  br i1 %i.adk, label %.lr.ph246.preheader, label %._crit_edge247

.lr.ph246.preheader:                              ; preds = %celt_pulses2bits.exit
  store i32 %i.adi, ptr %i.adh, align 4, !tbaa !34
  %i.adl = add nsw i32 %i.adb, -1                 ; 2 uses
  %i.adm = icmp eq i32 %i.adl, 0
  br i1 %i.adm, label %celt_pulses2bits.exit.thread, label %celt_pulses2bits.exit95

.lr.ph246:                                        ; preds = %celt_pulses2bits.exit95
  store i32 %i.adi, ptr %i.adh, align 4, !tbaa !34
  %i.adn = add nsw i32 %i.adp, -1                 ; 2 uses
  %i.ado = icmp eq i32 %i.adn, 0
  br i1 %i.ado, label %celt_pulses2bits.exit.thread, label %celt_pulses2bits.exit95, !llvm.loop !6

celt_pulses2bits.exit95:                          ; preds = %.lr.ph246.preheader, %.lr.ph246
  %i.adp = phi i32 [ %i.adn, %.lr.ph246 ], [ %i.adl, %.lr.ph246.preheader ] ; 3 uses
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.adq
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !41
  %i.adt = zext i8 %i.ads to i32
  %.neg732 = xor i32 %i.adt, -1
  %i.adu = add i32 %i.adi, %.neg732               ; 2 uses
  store i32 %i.adu, ptr %i.adh, align 4, !tbaa !34
  %i.adv = icmp slt i32 %i.adu, 0
  br i1 %i.adv, label %.lr.ph246, label %._crit_edge247, !llvm.loop !6

._crit_edge247:                                   ; preds = %celt_pulses2bits.exit95, %celt_pulses2bits.exit
  %.0563.i.lcssa = phi i32 [ %i.adb, %celt_pulses2bits.exit ], [ %i.adp, %celt_pulses2bits.exit95 ] ; 4 uses
  %i.adw = icmp ult i32 %.0563.i.lcssa, 8
  br i1 %i.adw, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge247
  %i.adx = and i32 %.0563.i.lcssa, 7
  %i.ady = or disjoint i32 %i.adx, 8
  %i.adz = lshr i32 %.0563.i.lcssa, 3
  %i.aea = add nsw i32 %i.adz, -1
  %i.aeb = shl i32 %i.ady, %i.aea
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge247
  %i.aec = phi i32 [ %i.aeb, %bb.aq ], [ %.0563.i.lcssa, %._crit_edge247 ] ; 6 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 34064
  %i.aee = load i32, ptr %i.aed, align 16, !tbaa !52 ; 2 uses
  tail call fastcc void @celt_exp_rotation(ptr noundef %4, i32 noundef %6, i32 noundef %.0590.i, i32 noundef %i.aec, i32 noundef %i.aee, i32 noundef 1)
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.aeg = load ptr, ptr %i.aef, align 16, !tbaa !27
  %i.aeh = tail call nsz float %i.aeg(ptr noundef %4, ptr noundef %0, i32 noundef %i.aec, i32 noundef %6) #11, !inline_history !84
  %i.aei = tail call nsz float @llvm.sqrt.f32(float %i.aeh)
  %i.aej = fdiv nsz float %13, %i.aei             ; 2 uses
  %.06376.i.i.i = add i32 %6, -1                  ; 2 uses
  %i.aek = icmp sgt i32 %.06376.i.i.i, -1
  br i1 %i.aek, label %.lr.ph.preheader.i.i.i, label %celt_encode_pulses.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ar
  %i.ael = zext nneg i32 %.06376.i.i.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.ael, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.078.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.aer, %.lr.ph.i.i.i ] ; 3 uses
  %.06277.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.afh, %.lr.ph.i.i.i ]
  %i.aem = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.aen = sub i32 %6, %i.aem                     ; 4 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.i
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !36 ; 2 uses
  %i.aeq = tail call i32 @llvm.abs.i32(i32 %i.aep, i1 true)
  %i.aer = add nuw nsw i32 %i.aeq, %.078.i.i.i    ; 2 uses
  %i.aes = add nuw nsw i32 %i.aer, 1              ; 2 uses
  %..i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aen, i32 %i.aes)
  %.75.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.aen, i32 %i.aes)
  %.pn.i.i.i = zext nneg i32 %..i.i.i to i64
  %.in.i.i.i = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %.pn.i.i.i
  %i.aet = load ptr, ptr %.in.i.i.i, align 8, !tbaa !54
  %i.aeu = zext i32 %.75.i.i.i to i64
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %i.aeu
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !36
  %i.aex = tail call i32 @llvm.umin.i32(i32 %i.aen, i32 %.078.i.i.i)
  %i.aey = zext nneg i32 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.aey
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !54
  %i.afb = tail call i32 @llvm.umax.i32(i32 %i.aen, i32 %.078.i.i.i)
  %i.afc = zext i32 %i.afb to i64
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %i.afc
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !36
  %isneg.i.i.i = icmp slt i32 %i.aep, 0
  %i.aff = select i1 %isneg.i.i.i, i32 %i.aew, i32 0
  %i.afg = add i32 %i.aff, %.06277.i.i.i
  %i.afh = add i32 %i.afg, %i.afe                 ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 0
  br i1 %.not.i.i.i, label %celt_encode_pulses.exit.i, label %.lr.ph.i.i.i, !llvm.loop !85

celt_encode_pulses.exit.i:                        ; preds = %.lr.ph.i.i.i, %bb.ar
  %.062.lcssa.i.i.i = phi i32 [ 0, %bb.ar ], [ %i.afh, %.lr.ph.i.i.i ]
  %i.afi = tail call i32 @llvm.umin.i32(i32 %6, i32 %i.aec)
  %i.afj = zext i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.afj
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !54
  %i.afm = tail call i32 @llvm.umax.i32(i32 %6, i32 %i.aec)
  %i.afn = zext i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %i.afn
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !36
  %i.afq = add i32 %i.aec, 1                      ; 2 uses
  %i.afr = tail call i32 @llvm.umin.i32(i32 %6, i32 %i.afq)
  %i.afs = zext i32 %i.afr to i64
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.afs
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !54
  %i.afv = tail call i32 @llvm.umax.i32(i32 %6, i32 %i.afq)
  %i.afw = zext i32 %i.afv to i64
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !36
  %i.afz = add i32 %i.afy, %i.afp
  tail call void @ff_opus_rc_enc_uint(ptr noundef %2, i32 noundef %.062.lcssa.i.i.i, i32 noundef %i.afz) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.aga = icmp sgt i32 %6, 0
  br i1 %i.aga, label %.lr.ph.preheader.i.i, label %celt_normalize_residual.exit.i

.lr.ph.preheader.i.i:                             ; preds = %celt_encode_pulses.exit.i
  %wide.trip.count.i.i = zext nneg i32 %6 to i64  ; 3 uses
  %min.iters.check523 = icmp ult i32 %6, 8
  br i1 %min.iters.check523, label %.lr.ph.i.i.preheader, label %vector.ph524

vector.ph524:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec525 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aej, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph524
  %index527 = phi i64 [ 0, %vector.ph524 ], [ %index.next530, %vector.body526 ] ; 3 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index527 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  %wide.load528 = load <4 x i32>, ptr %i.agb, align 4, !tbaa !36, !alias.scope !118, !noalias !119
  %wide.load529 = load <4 x i32>, ptr %i.agc, align 4, !tbaa !36, !alias.scope !118, !noalias !119
  %i.agd = sitofp nsz <4 x i32> %wide.load528 to <4 x float>
  %i.age = sitofp nsz <4 x i32> %wide.load529 to <4 x float>
  %i.agf = fmul nsz <4 x float> %broadcast.splat, %i.agd
  %i.agg = fmul nsz <4 x float> %broadcast.splat, %i.age
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index527 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  store <4 x float> %i.agf, ptr %i.agh, align 4, !tbaa !35, !alias.scope !119, !noalias !118
  store <4 x float> %i.agg, ptr %i.agi, align 4, !tbaa !35, !alias.scope !119, !noalias !118
  %index.next530 = add nuw i64 %index527, 8       ; 2 uses
  %i.agj = icmp eq i64 %index.next530, %n.vec525
  br i1 %i.agj, label %middle.block531, label %vector.body526, !llvm.loop !89

middle.block531:                                  ; preds = %vector.body526
  %cmp.n532 = icmp eq i64 %n.vec525, %wide.trip.count.i.i
  br i1 %cmp.n532, label %celt_normalize_residual.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block531
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec525, %middle.block531 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i
end_hunk_0
begin_hunk_1_@pvq_decode_band:bb.a
  %i.oi = mul nsw i32 %i.nw, -2597
  %i.oj = add nsw i32 %i.oi, 16384
  %i.ok = ashr i32 %i.oj, 15
  %i.ol = add nsw i32 %i.ok, 7932
  %i.om = mul nsw i32 %i.ol, %i.nw
  %i.on = add nsw i32 %i.om, 16384
  %i.oo = ashr i32 %i.on, 15
  %i.op = sub nsw i32 %i.oa, %i.oo
  %i.oq = add nsw i32 %i.op, %i.oh
  %i.or = mul nsw i32 %i.oq, %i.na
  %i.os = add nsw i32 %i.or, 16384
  %i.ot = ashr i32 %i.os, 15
  %i.ou = sitofp i16 %i.me to float
  %i.ov = fmul nnan nsz float %i.ou, f0x38000000
  %i.ow = sitofp i16 %i.mx to float
  %i.ox = fmul nnan nsz float %i.ow, f0x38000000
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.5611.i = phi i32 [ %i.lj, %bb.aj ], [ %i.lm, %bb.ak ], [ %.4610.i147, %bb.al ] ; 4 uses
  %.0596.i = phi float [ f0x3F7FFE00, %bb.aj ], [ 0.000000e+00, %bb.ak ], [ %i.ov, %bb.al ] ; 5 uses
  %.0595.i = phi float [ 0.000000e+00, %bb.aj ], [ f0x3F7FFE00, %bb.ak ], [ %i.ox, %bb.al ] ; 3 uses
  %.0568.i = phi i32 [ -16384, %bb.aj ], [ 16384, %bb.ak ], [ %i.ot, %bb.al ] ; 4 uses
  br i1 %i.he, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.oy = and i32 %.2.i, -16385
  %.not659.i = icmp eq i32 %i.oy, 0               ; 2 uses
  %.neg263 = select i1 %.not659.i, i32 0, i32 -8  ; 2 uses
  %i.oz = add i32 %.neg263, %i.lh
  %i.pa = icmp sgt i32 %.2.i, 8192                ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 34092 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !34
  %.neg179 = sub i32 %.neg263, %i.lg
  %i.pd = add i32 %.neg179, %i.pc
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !34
  %i.pe = select i1 %i.pa, ptr %.0612.i146, ptr %4 ; 3 uses
  %i.pf = select i1 %i.pa, ptr %4, ptr %.0612.i146 ; 2 uses
  br i1 %.not659.i, label %.thread158, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pg = tail call i32 @ff_opus_rc_get_raw(ptr noundef nonnull %2, i32 noundef 1) #11
  %i.ph = shl nsw i32 %i.pg, 1
  br label %.thread158

.thread158:                                       ; preds = %bb.ao, %bb.an
  %.0567.i = phi i32 [ 0, %bb.an ], [ %i.ph, %bb.ao ] ; 2 uses
  %.neg660.i = add nsw i32 %.0567.i, -1
  %i.pi = sub nsw i32 1, %.0567.i
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !26
  %i.pl = tail call i32 %i.pk(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %i.pe, ptr noundef null, i32 noundef 2, i32 noundef %i.oz, i32 noundef %.2616.i144, ptr noundef %.1620.i, i32 noundef %.0618.i143, ptr noundef %11, i32 noundef %12, float noundef %13, ptr noundef %14, i32 noundef %.4610.i147) #11, !inline_history !5 ; 2 uses
  %i.pm = sitofp nsz i32 %.neg660.i to float
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.po = load float, ptr %i.pn, align 4, !tbaa !35
  %i.pp = fmul nsz float %i.po, %i.pm
  store float %i.pp, ptr %i.pf, align 4, !tbaa !35
  %i.pq = sitofp nsz i32 %i.pi to float
  %i.pr = load float, ptr %i.pe, align 4, !tbaa !35
  %i.ps = fmul nsz float %i.pr, %i.pq
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  store float %i.ps, ptr %i.pt, align 4, !tbaa !35
  %i.pu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.pv = load <2 x float>, ptr %4, align 4, !tbaa !35
  %i.pw = insertelement <2 x float> poison, float %.0596.i, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = fmul nsz <2 x float> %i.px, %i.pv
  store <2 x float> %i.py, ptr %4, align 4, !tbaa !35
  %i.pz = getelementptr inbounds nuw i8, ptr %.0612.i146, i64 4 ; 3 uses
  %i.qa = load <2 x float>, ptr %.0612.i146, align 4, !tbaa !35
  %i.qb = insertelement <2 x float> poison, float %.0595.i, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qd = fmul nsz <2 x float> %i.qc, %i.qa       ; 2 uses
  store <2 x float> %i.qd, ptr %.0612.i146, align 4, !tbaa !35
  %i.qe = load float, ptr %4, align 4, !tbaa !35  ; 2 uses
  %i.qf = extractelement <2 x float> %i.qd, i64 0
  %i.qg = fsub nsz float %i.qe, %i.qf
  store float %i.qg, ptr %4, align 4, !tbaa !35
  %i.qh = load float, ptr %.0612.i146, align 4, !tbaa !35
  %i.qi = fadd nsz float %i.qe, %i.qh
  store float %i.qi, ptr %.0612.i146, align 4, !tbaa !35
  %i.qj = load float, ptr %i.pu, align 4, !tbaa !35 ; 2 uses
  %i.qk = load float, ptr %i.pz, align 4, !tbaa !35
  %i.ql = fsub nsz float %i.qj, %i.qk
  store float %i.ql, ptr %i.pu, align 4, !tbaa !35
  %i.qm = load float, ptr %i.pz, align 4, !tbaa !35
  %i.qn = fadd nsz float %i.qj, %i.qm
  store float %i.qn, ptr %i.pz, align 4, !tbaa !35
  br i1 %.1584.i, label %quant_band_template.exit, label %.lr.ph257.preheader

bb.ap:                                            ; preds = %bb.am
  %i.qo = icmp slt i32 %.0590.i, 2
  %or.cond27.i = or i1 %i.f, %i.qo
  %i.qp = and i32 %.2.i, 16383
  %.not655.i = icmp eq i32 %i.qp, 0
  %or.cond.i = select i1 %or.cond27.i, i1 true, i1 %.not655.i
  br i1 %or.cond.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qq = icmp sgt i32 %.2.i, 8192
  br i1 %i.qq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.qr = sub nsw i32 4, %.0618.i143
  %i.qs = ashr i32 %.0568.i, %i.qr
  %i.qt = sub nsw i32 %.0568.i, %i.qs
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.qu = shl i32 %.0613.i145, 3
  %i.qv = sub nsw i32 5, %.0618.i143
  %i.qw = ashr i32 %i.qu, %i.qv
  %i.qx = add nsw i32 %.0568.i, %i.qw
  %spec.select666.i = tail call i32 @llvm.smin.i32(i32 %i.qx, i32 0)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %.1569.i = phi i32 [ %.0568.i, %bb.ap ], [ %i.qt, %bb.ar ], [ %spec.select666.i, %bb.as ]
  %i.qy = sub nsw i32 %i.lh, %.1569.i             ; 2 uses
  %i.qz = sdiv i32 %i.qy, 2
  %i.ra = icmp slt i32 %i.qy, -1
  %..i = tail call i32 @llvm.smin.i32(i32 %i.qz, i32 %i.lh)
  %.0.i22 = select i1 %i.ra, i32 0, i32 %..i      ; 5 uses
  %i.rb = sub nsw i32 %i.lh, %.0.i22              ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 34092 ; 4 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !34
  %i.re = sub nsw i32 %i.rd, %i.lg                ; 3 uses
  store i32 %i.re, ptr %i.rc, align 4, !tbaa !34
  %i.rf = icmp eq ptr %.1620.i, null
  %or.cond29.i = or i1 %i.f, %i.rf
  %i.rg = sext i32 %.0613.i145 to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %.1620.i, i64 %i.rg
  %.0566.i = select i1 %or.cond29.i, ptr null, ptr %i.rh ; 2 uses
  %i.ri = add nsw i32 %12, 1
  %.0565.i = select i1 %i.f, ptr %11, ptr null    ; 2 uses
  %.0564.i = select i1 %i.f, i32 0, i32 %i.ri     ; 4 uses
  %.not656.i = icmp slt i32 %.0.i22, %i.rb
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !26 ; 2 uses
  br i1 %.not656.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rl = fmul nsz float %13, %.0596.i
  %i.rm = select nsz i1 %i.f, float 1.000000e+00, float %i.rl
  %i.rn = tail call i32 %i.rk(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef %.0613.i145, i32 noundef %.0.i22, i32 noundef %.2616.i144, ptr noundef %.1620.i, i32 noundef %.0618.i143, ptr noundef %.0565.i, i32 noundef %.0564.i, float noundef %i.rm, ptr noundef %14, i32 noundef %.5611.i) #11, !inline_history !5
  %i.ro = load i32, ptr %i.rc, align 4, !tbaa !34
  %.neg658.i = sub i32 %i.ro, %i.re
  %i.rp = add i32 %.neg658.i, %.0.i22             ; 2 uses
  %i.rq = icmp sgt i32 %i.rp, 24
  %i.rr = icmp ne i32 %.2.i, 0
  %or.cond31.i = select i1 %i.rq, i1 %i.rr, i1 false
  %i.rs = add nsw i32 %i.rp, -24
  %i.rt = select i1 %or.cond31.i, i32 %i.rs, i32 0
  %.0570.i = add nsw i32 %i.rt, %i.rb
  %i.ru = load ptr, ptr %i.rj, align 8, !tbaa !26
  %i.rv = fmul nsz float %13, %.0595.i
  %i.rw = ashr i32 %.5611.i, %.2616.i144
  %i.rx = tail call i32 %i.ru(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %.0612.i146, ptr noundef null, i32 noundef %.0613.i145, i32 noundef %.0570.i, i32 noundef %.2616.i144, ptr noundef %.0566.i, i32 noundef %.0618.i143, ptr noundef null, i32 noundef %.0564.i, float noundef %i.rv, ptr noundef null, i32 noundef %i.rw) #11, !inline_history !5
  %i.ry = ashr i32 %.0590.i, 1
  %i.rz = select i1 %i.f, i32 0, i32 %i.ry
  %i.sa = shl i32 %i.rx, %i.rz
  %i.sb = or i32 %i.sa, %i.rn
  br label %celt_alg_unquant.exit

bb.av:                                            ; preds = %bb.at
  %i.sc = fmul nsz float %13, %.0595.i
  %i.sd = ashr i32 %.5611.i, %.2616.i144
  %i.se = tail call i32 %i.rk(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %.0612.i146, ptr noundef null, i32 noundef %.0613.i145, i32 noundef %i.rb, i32 noundef %.2616.i144, ptr noundef %.0566.i, i32 noundef %.0618.i143, ptr noundef null, i32 noundef %.0564.i, float noundef %i.sc, ptr noundef null, i32 noundef %i.sd) #11, !inline_history !5
  %i.sf = ashr i32 %.0590.i, 1
  %i.sg = select i1 %i.f, i32 0, i32 %i.sf
  %i.sh = shl i32 %i.se, %i.sg
  %i.si = load i32, ptr %i.rc, align 4, !tbaa !34
  %.neg657.i = sub i32 %i.si, %i.re
  %i.sj = add i32 %.neg657.i, %i.rb               ; 2 uses
  %i.sk = icmp sgt i32 %i.sj, 24
  %i.sl = icmp ne i32 %.2.i, 16384
  %or.cond33.i = select i1 %i.sk, i1 %i.sl, i1 false
  %i.sm = add nsw i32 %i.sj, -24
  %i.sn = select i1 %or.cond33.i, i32 %i.sm, i32 0
  %.0571.i = add nsw i32 %i.sn, %.0.i22
  %i.so = load ptr, ptr %i.rj, align 8, !tbaa !26
  %i.sp = fmul nsz float %13, %.0596.i
  %i.sq = select nsz i1 %i.f, float 1.000000e+00, float %i.sp
  %i.sr = tail call i32 %i.so(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef %.0613.i145, i32 noundef %.0571.i, i32 noundef %.2616.i144, ptr noundef %.1620.i, i32 noundef %.0618.i143, ptr noundef %.0565.i, i32 noundef %.0564.i, float noundef %i.sq, ptr noundef %14, i32 noundef %.5611.i) #11, !inline_history !5
  %i.ss = or i32 %i.sr, %i.sh
  br label %celt_alg_unquant.exit

.thread:                                          ; preds = %..thread_crit_edge, %bb.s
  %i.st = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.ge, %bb.s ]
  %i.su = zext i8 %i.st to i32                    ; 2 uses
  %i.sv = add nsw i32 %7, -1                      ; 8 uses
  %i.sw = add nuw nsw i32 %i.su, 1
  %i.sx = lshr i32 %i.sw, 1                       ; 3 uses
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !41
  %i.tb = zext i8 %i.ta to i32
  %.not22.i = icmp sgt i32 %i.sv, %i.tb           ; 2 uses
  %..019.i = select i1 %.not22.i, i32 %i.sx, i32 0 ; 2 uses
  %.0..i = select i1 %.not22.i, i32 %i.su, i32 %i.sx ; 2 uses
  %i.tc = add nuw nsw i32 %.0..i, %..019.i
  %i.td = add nuw nsw i32 %i.tc, 1
  %i.te = lshr i32 %i.td, 1                       ; 3 uses
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !41
  %i.ti = zext i8 %i.th to i32
  %.not22.1.i = icmp sgt i32 %i.sv, %i.ti         ; 2 uses
  %..019.1.i = select i1 %.not22.1.i, i32 %i.te, i32 %..019.i ; 2 uses
  %.0..1.i = select i1 %.not22.1.i, i32 %.0..i, i32 %i.te ; 2 uses
  %i.tj = add nuw nsw i32 %.0..1.i, %..019.1.i
  %i.tk = add nuw nsw i32 %i.tj, 1
  %i.tl = lshr i32 %i.tk, 1                       ; 3 uses
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !41
  %i.tp = zext i8 %i.to to i32
  %.not22.2.i = icmp sgt i32 %i.sv, %i.tp         ; 2 uses
  %..019.2.i = select i1 %.not22.2.i, i32 %i.tl, i32 %..019.1.i ; 2 uses
  %.0..2.i = select i1 %.not22.2.i, i32 %.0..1.i, i32 %i.tl ; 2 uses
  %i.tq = add nuw nsw i32 %.0..2.i, %..019.2.i
  %i.tr = add nuw nsw i32 %i.tq, 1
  %i.ts = lshr i32 %i.tr, 1                       ; 3 uses
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !41
  %i.tw = zext i8 %i.tv to i32
  %.not22.3.i = icmp sgt i32 %i.sv, %i.tw         ; 2 uses
  %..019.3.i = select i1 %.not22.3.i, i32 %i.ts, i32 %..019.2.i ; 2 uses
  %.0..3.i = select i1 %.not22.3.i, i32 %.0..2.i, i32 %i.ts ; 2 uses
  %i.tx = add nuw nsw i32 %.0..3.i, %..019.3.i
  %i.ty = add nuw nsw i32 %i.tx, 1
  %i.tz = lshr i32 %i.ty, 1                       ; 3 uses
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !41
  %i.ud = zext i8 %i.uc to i32
  %.not22.4.i = icmp sgt i32 %i.sv, %i.ud         ; 2 uses
  %..019.4.i = select i1 %.not22.4.i, i32 %i.tz, i32 %..019.3.i ; 2 uses
  %.0..4.i = select i1 %.not22.4.i, i32 %.0..3.i, i32 %i.tz ; 2 uses
  %i.ue = add nuw nsw i32 %.0..4.i, %..019.4.i
  %i.uf = add nuw nsw i32 %i.ue, 1
  %i.ug = lshr i32 %i.uf, 1                       ; 3 uses
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !41
  %i.uk = zext i8 %i.uj to i32
  %.not22.5.i = icmp sgt i32 %i.sv, %i.uk         ; 2 uses
  %..019.5.i = select i1 %.not22.5.i, i32 %i.ug, i32 %..019.4.i ; 3 uses
  %i.ul = icmp eq i32 %..019.5.i, 0
  br i1 %i.ul, label %celt_bits2pulses.exit, label %bb.aw

bb.aw:                                            ; preds = %.thread
  %i.um = zext nneg i32 %..019.5.i to i64
  %i.un = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !41
  %i.up = zext i8 %i.uo to i32
  br label %celt_bits2pulses.exit

celt_bits2pulses.exit:                            ; preds = %.thread, %bb.aw
  %i.uq = phi i32 [ %i.up, %bb.aw ], [ -1, %.thread ]
  %.0..5.i = select i1 %.not22.5.i, i32 %.0..4.i, i32 %i.ug ; 2 uses
  %i.ur = sub nsw i32 %i.sv, %i.uq
  %i.us = zext nneg i32 %.0..5.i to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !41
  %i.uv = zext i8 %i.uu to i32
  %i.uw = sub nsw i32 %i.uv, %i.sv
  %.not.i66 = icmp sgt i32 %i.ur, %i.uw
  %i.ux = select i1 %.not.i66, i32 %.0..5.i, i32 %..019.5.i ; 4 uses
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %celt_pulses2bits.exit.thread, label %celt_pulses2bits.exit

celt_pulses2bits.exit:                            ; preds = %celt_bits2pulses.exit
  %i.uz = zext nneg i32 %i.ux to i64
  %i.va = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !41
  %i.vc = zext i8 %i.vb to i32
  %.neg588 = xor i32 %i.vc, -1
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 34092 ; 5 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !34 ; 4 uses
  %i.vf = add i32 %i.ve, %.neg588                 ; 2 uses
  store i32 %i.vf, ptr %i.vd, align 4, !tbaa !34
  %i.vg = icmp slt i32 %i.vf, 0
  br i1 %i.vg, label %.lr.ph215.preheader, label %._crit_edge216

.lr.ph215.preheader:                              ; preds = %celt_pulses2bits.exit
  store i32 %i.ve, ptr %i.vd, align 4, !tbaa !34
  %i.vh = add nsw i32 %i.ux, -1                   ; 2 uses
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %celt_pulses2bits.exit.thread, label %celt_pulses2bits.exit67

.lr.ph215:                                        ; preds = %celt_pulses2bits.exit67
  store i32 %i.ve, ptr %i.vd, align 4, !tbaa !34
  %i.vj = add nsw i32 %i.vl, -1                   ; 2 uses
  %i.vk = icmp eq i32 %i.vj, 0
  br i1 %i.vk, label %celt_pulses2bits.exit.thread, label %celt_pulses2bits.exit67, !llvm.loop !6

celt_pulses2bits.exit67:                          ; preds = %.lr.ph215.preheader, %.lr.ph215
  %i.vl = phi i32 [ %i.vj, %.lr.ph215 ], [ %i.vh, %.lr.ph215.preheader ] ; 3 uses
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !41
  %i.vp = zext i8 %i.vo to i32
  %.neg589 = xor i32 %i.vp, -1
  %i.vq = add i32 %i.ve, %.neg589                 ; 2 uses
  store i32 %i.vq, ptr %i.vd, align 4, !tbaa !34
  %i.vr = icmp slt i32 %i.vq, 0
  br i1 %i.vr, label %.lr.ph215, label %._crit_edge216, !llvm.loop !6

._crit_edge216:                                   ; preds = %celt_pulses2bits.exit67, %celt_pulses2bits.exit
  %.0563.i.lcssa = phi i32 [ %i.ux, %celt_pulses2bits.exit ], [ %i.vl, %celt_pulses2bits.exit67 ] ; 4 uses
  %i.vs = icmp ult i32 %.0563.i.lcssa, 8
  br i1 %i.vs, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge216
  %i.vt = and i32 %.0563.i.lcssa, 7
  %i.vu = or disjoint i32 %i.vt, 8
  %i.vv = lshr i32 %.0563.i.lcssa, 3
  %i.vw = add nsw i32 %i.vv, -1
  %i.vx = shl i32 %i.vu, %i.vw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge216
  %i.vy = phi i32 [ %i.vx, %bb.ax ], [ %.0563.i.lcssa, %._crit_edge216 ] ; 6 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 34064
  %i.wa = load i32, ptr %i.vz, align 16, !tbaa !52
  %i.wb = tail call i32 @llvm.umin.i32(i32 %6, i32 %i.vy)
  %i.wc = zext i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.wc
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !54
  %i.wf = tail call i32 @llvm.umax.i32(i32 %6, i32 %i.vy)
  %i.wg = zext i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !36
  %i.wj = add i32 %i.vy, 1                        ; 2 uses
  %i.wk = tail call i32 @llvm.umin.i32(i32 %6, i32 %i.wj)
  %i.wl = zext i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.wl
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !54
  %i.wo = tail call i32 @llvm.umax.i32(i32 %6, i32 %i.wj)
  %i.wp = zext i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !36
  %i.ws = add i32 %i.wr, %i.wi
  %i.wt = tail call i32 @ff_opus_rc_dec_uint(ptr noundef %2, i32 noundef %i.ws) #11 ; 2 uses
  %i.wu = icmp ugt i32 %6, 2
  br i1 %i.wu, label %.lr.ph.preheader.i.i.i, label %celt_decode_pulses.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.wv = zext i32 %6 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bf, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.wv, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bf ] ; 9 uses
  %.0101137.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %.1102.i.i.i, %bb.bf ] ; 3 uses
  %.0103136.i.i.i = phi ptr [ %0, %.lr.ph.preheader.i.i.i ], [ %.1104.i.i.i, %bb.bf ] ; 2 uses
  %.0105135.i.i.i = phi i32 [ %i.wt, %.lr.ph.preheader.i.i.i ], [ %.1106.i.i.i, %bb.bf ] ; 6 uses
  %.0107134.i.i.i = phi i32 [ %i.vy, %.lr.ph.preheader.i.i.i ], [ %.5.i.i.i, %bb.bf ] ; 8 uses
  %i.ww = zext i32 %.0107134.i.i.i to i64         ; 2 uses
  %.not121.i.i.i = icmp ugt i64 %indvars.iv.i.i.i, %i.ww
  br i1 %.not121.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %indvars.iv.i.i.i
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !54 ; 3 uses
  %i.wz = add i32 %.0107134.i.i.i, 1
  %i.xa = zext i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !36 ; 2 uses
  %.not126.i.i.i = icmp ult i32 %.0105135.i.i.i, %i.xc ; 2 uses
  %i.xd = select i1 %.not126.i.i.i, i32 0, i32 %i.xc
  %i.xe = sub i32 %.0105135.i.i.i, %i.xd          ; 4 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %indvars.iv.i.i.i
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !36
  %i.xh = icmp ugt i32 %i.xg, %i.xe
  br i1 %i.xh, label %.preheader.preheader.i.i.i, label %.preheader127.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.az
  %i.xi = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.1108.i.i.i = phi i32 [ %i.xj, %.preheader.i.i.i ], [ %i.xi, %.preheader.preheader.i.i.i ]
  %i.xj = add i32 %.1108.i.i.i, -1                ; 3 uses
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.xk
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !54
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %indvars.iv.i.i.i
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !36 ; 2 uses
  %i.xp = icmp ugt i32 %i.xo, %i.xe
  br i1 %i.xp, label %.preheader.i.i.i, label %.loopexit.i.i.i, !llvm.loop !130

.preheader127.i.i.i:                              ; preds = %bb.az, %.preheader127.i.i.i
  %.2109.i.i.i = phi i32 [ %i.xr, %.preheader127.i.i.i ], [ %.0107134.i.i.i, %bb.az ] ; 3 uses
  %.pn.i.i.i = zext i32 %.2109.i.i.i to i64
  %.0.in.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.pn.i.i.i
  %.0.i.i.i = load i32, ptr %.0.in.i.i.i, align 4, !tbaa !36 ; 2 uses
  %i.xq = icmp ugt i32 %.0.i.i.i, %i.xe
  %i.xr = add i32 %.2109.i.i.i, -1
  br i1 %i.xq, label %.preheader127.i.i.i, label %.loopexit.i.i.i, !llvm.loop !131

.loopexit.i.i.i:                                  ; preds = %.preheader127.i.i.i, %.preheader.i.i.i
  %.3.i.i.i = phi i32 [ %i.xj, %.preheader.i.i.i ], [ %.2109.i.i.i, %.preheader127.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.xo, %.preheader.i.i.i ], [ %.0.i.i.i, %.preheader127.i.i.i ]
  %i.xs = sub i32 %i.xe, %.1.i.i.i
  %i.xt = sub i32 %.0107134.i.i.i, %.3.i.i.i      ; 2 uses
  %.neg125.i.i.i = sub i32 0, %i.xt
  %i.xu = select i1 %.not126.i.i.i, i32 %i.xt, i32 %.neg125.i.i.i ; 3 uses
  %i.xv = mul nsw i32 %i.xu, %i.xu
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = add i64 %.0101137.i.i.i, %i.xw
  br label %bb.bf

bb.ba:                                            ; preds = %.lr.ph.i.i.i
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.ww
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !54
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv.i.i.i
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !36 ; 2 uses
  %i.yc = add nuw i32 %.0107134.i.i.i, 1
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_pvq_u_row, i64 %i.yd
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !54
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv.i.i.i
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !36 ; 2 uses
  %.not122.i.i.i = icmp ule i32 %i.yb, %.0105135.i.i.i
  %i.yi = icmp ult i32 %.0105135.i.i.i, %i.yh     ; 3 uses
  %or.cond.i.i.i = select i1 %.not122.i.i.i, i1 %i.yi, i1 false
  br i1 %or.cond.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yj = sub nuw i32 %.0105135.i.i.i, %i.yb
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.yk = select i1 %i.yi, i32 0, i32 %i.yh
  %i.yl = sub i32 %.0105135.i.i.i, %i.yk          ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %.4.i.i.i = phi i32 [ %.0107134.i.i.i, %bb.bc ], [ %i.ym, %bb.bd ]
  %i.ym = add i32 %.4.i.i.i, -1                   ; 4 uses
end_hunk_1
