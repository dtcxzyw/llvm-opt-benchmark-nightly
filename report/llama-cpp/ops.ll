Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@_ZL29ggml_compute_forward_rope_fltItEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  br i1 %or.cond359, label %.preheader297.us.preheader, label %._crit_edge.split

.preheader297.us.preheader:                       ; preds = %.preheader297.lr.ph
  %i.dn = add nsw i32 %i.l, -2
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %i.ai, 1
  %i.dq = trunc i64 %i.ak to i32
  %brmerge = select i1 %i.bx, i1 true, i1 %i.dp
  %i.dr = add nsw i64 %i.dk, %i.do
  %i.ds = add nsw i64 %i.be, %i.dk
  %i.dt = shl nsw i64 %i.ds, 1                    ; 2 uses
  %i.du = shl nuw nsw i64 %i.dj, 1
  %i.dv = sub i64 %i.aw, %i.ag                    ; 2 uses
  %i.dw = sub i64 %i.au, %i.ae                    ; 2 uses
  %i.dx = sub i64 %i.as, %i.ac                    ; 2 uses
  %i.dy = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.dz = add i64 %i.ai, -1                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 1                       ; 2 uses
  %i.eb = add nuw i64 %i.ea, 1                    ; 4 uses
  %i.ec = shl nsw i64 %i.be, 1
  %i.ed = shl nsw i64 %i.dj, 1
  %i.ee = icmp eq i64 %i.ea, 0
  %unroll_iter = and i64 %i.eb, -2
  %i.ef = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.cm, i64 1
  %i.eh = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.cm, i64 1
  %i.ej = and i64 %i.dz, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ej, 0
  %lcmp.mod433 = trunc i64 %i.eb to i1
  %i.ek = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.cm, i64 1
  %xtraiter434 = and i64 %i.eb, 3                 ; 3 uses
  %i.em = icmp ult i64 %i.ai, 7
  %unroll_iter437 = and i64 %i.eb, -4
  %i.en = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.cm, i64 1
  %i.ep = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.cm, i64 1
  %i.er = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.cm, i64 1
  %i.et = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.cm, i64 1
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  %lcmp.mod436 = icmp ne i64 %xtraiter434, 0
  %i.ev = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.cm, i64 1
  %i.ex = add nsw i64 %i.ai, -1
  %i.ey = lshr i64 %i.ex, 1
  %i.ez = add nuw i64 %i.ey, 1                    ; 2 uses
  %min.iters.check406 = icmp ult i64 %i.ai, 15
  %i.fa = add nsw i64 %i.dy, -1
  %diff.check398 = icmp ult i64 %i.fa, 15
  %n.vec408 = and i64 %i.ez, -8                   ; 3 uses
  %i.fb = shl i64 %n.vec408, 1
  %cmp.n422 = icmp eq i64 %i.ez, %n.vec408
  %i.fc = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fd = lshr exact i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 2 uses
  %min.iters.check380 = icmp ult i64 %i.fc, 14
  %diff.check = icmp ult i32 %i.di, 8
  %n.vec382 = and i64 %i.fe, -8                   ; 3 uses
  %i.ff = shl i64 %n.vec382, 1
  %cmp.n395 = icmp eq i64 %i.fe, %n.vec382
  %i.fg = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 1
  %i.fi = add nuw i64 %i.fh, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 14
  %n.vec = and i64 %i.fi, -8                      ; 3 uses
  %i.fj = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br label %.preheader297.us

.preheader297.us:                                 ; preds = %.preheader297.us.preheader, %._crit_edge316.split.us.us
  %.0226324.us = phi i64 [ %i.adr, %._crit_edge316.split.us.us ], [ 0, %.preheader297.us.preheader ] ; 7 uses
  %.0227323.us = phi i64 [ %.2.lcssa.us.us, %._crit_edge316.split.us.us ], [ -1, %.preheader297.us.preheader ]
  %.0230322.us = phi i32 [ %.lcssa, %._crit_edge316.split.us.us ], [ 0, %.preheader297.us.preheader ]
  %i.fk = mul i64 %i.dv, %.0226324.us             ; 3 uses
  %i.fl = sub i64 %i.fk, %i.ec
  %i.fm = add i64 %i.dy, %i.fk
  %i.fn = mul i64 %i.dv, %.0226324.us             ; 3 uses
  %i.fo = sub i64 %i.fn, %i.ed
  %i.fp = add i64 %i.du, %i.fn
  %i.fq = mul i64 %i.aw, %.0226324.us
  %i.fr = mul i64 %i.ag, %.0226324.us
  %i.fs = mul i64 %.0226324.us, %i.ag
  %i.ft = mul i64 %.0226324.us, %i.aw
  br label %.preheader296.us.us

.preheader296.us.us:                              ; preds = %._crit_edge.us.us, %.preheader297.us
  %.0225315.us.us = phi i64 [ 0, %.preheader297.us ], [ %i.adq, %._crit_edge.us.us ] ; 14 uses
  %.1228314.us.us = phi i64 [ %.0227323.us, %.preheader297.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ]
  %.1231313.us.us = phi i32 [ %.0230322.us, %.preheader297.us ], [ %.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.fu = mul i64 %i.dw, %.0225315.us.us          ; 3 uses
  %i.fv = add i64 %i.fl, %i.fu
  %i.fw = add i64 %i.fk, %i.fu
  %i.fx = add i64 %i.fm, %i.fu
  %i.fy = mul i64 %i.dw, %.0225315.us.us          ; 3 uses
  %i.fz = add i64 %i.fo, %i.fy
  %i.ga = add i64 %i.fn, %i.fy
  %i.gb = add i64 %i.fp, %i.fy
  %i.gc = mul i64 %i.au, %.0225315.us.us
  %i.gd = mul i64 %i.ae, %.0225315.us.us
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0225315.us.us ; 4 uses
  %i.gf = getelementptr [4 x i8], ptr %i.ge, i64 %i.am
  %i.gg = getelementptr i8, ptr %i.ge, i64 %.idx
  %i.gh = getelementptr i8, ptr %i.ge, i64 %.idx255
  %i.gi = mul i64 %.0225315.us.us, %i.ae
  %i.gj = mul i64 %.0225315.us.us, %i.au
  %i.gk = add i32 %.1231313.us.us, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, %.preheader296.us.us
  %.0224307.us.us = phi i64 [ 0, %.preheader296.us.us ], [ %i.adp, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 7 uses
  %.2306.us.us = phi i64 [ %.1228314.us.us, %.preheader296.us.us ], [ %.4.us.us, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %.2232305.us.us = phi i32 [ %.1231313.us.us, %.preheader296.us.us ], [ %i.gv, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %i.gl = mul i64 %i.dx, %.0224307.us.us          ; 3 uses
  %i.gm = add i64 %i.fv, %i.gl
  %i.gn = add i64 %i.fw, %i.gl
  %i.go = add i64 %i.fx, %i.gl
  %i.gp = mul i64 %i.dx, %.0224307.us.us          ; 3 uses
  %i.gq = add i64 %i.fz, %i.gp
  %i.gr = add i64 %i.ga, %i.gp
  %i.gs = add i64 %i.gb, %i.gp
  %i.gt = mul i64 %i.as, %.0224307.us.us
  %i.gu = mul i64 %i.ac, %.0224307.us.us
  %i.gv = add nsw i32 %.2232305.us.us, 1          ; 2 uses
  %i.gw = icmp slt i32 %.2232305.us.us, %i.bp
  br i1 %i.gw, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not253.us.us = icmp slt i32 %.2232305.us.us, %i.br
  br i1 %.not253.us.us, label %bb.aj, label %._crit_edge.us.us

bb.aj:                                            ; preds = %bb.ai
  %i.gx = load ptr, ptr %i.cr, align 8, !tbaa !48
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.cu ; 17 uses
  %.not254.us.us = icmp eq i64 %.2306.us.us, %.0225315.us.us
  br i1 %.not254.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load i32, ptr %i.ge, align 4, !tbaa !51 ; 2 uses
  br i1 %.not250, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ha = load i32, ptr %i.gf, align 4, !tbaa !51
  %i.hb = load i32, ptr %i.gg, align 4, !tbaa !51
  %i.hc = load i32, ptr %i.gh, align 4, !tbaa !51
  %i.hd = sitofp i32 %i.gz to float               ; 2 uses
  %i.he = sitofp i32 %i.ha to float               ; 2 uses
  %i.hf = sitofp i32 %i.hb to float               ; 2 uses
  %i.hg = sitofp i32 %i.hc to float               ; 2 uses
  br i1 %.not.i256, label %.split.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.al
  br i1 %i.cz, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i257.us.us:                                ; preds = %.preheader.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us
  %.085107.i.us.us = phi i64 [ %i.jg, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ 0, %.preheader.i.us.us ] ; 4 uses
  %.086106.i.us.us = phi float [ %i.jf, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hg, %.preheader.i.us.us ] ; 10 uses
  %.087105.i.us.us = phi float [ %i.jd, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hf, %.preheader.i.us.us ] ; 9 uses
  %.089104.i.us.us = phi float [ %i.je, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.he, %.preheader.i.us.us ] ; 9 uses
  %.091103.i.us.us = phi float [ %i.jc, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hd, %.preheader.i.us.us ] ; 9 uses
  %.pre110.i.us.us = lshr exact i64 %.085107.i.us.us, 1 ; 2 uses
  br i1 %.not98.i, label %._crit_edge109.i.us.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i257.us.us
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %.pre110.i.us.us
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !43
  br label %._crit_edge109.i.us.us

._crit_edge109.i.us.us:                           ; preds = %bb.am, %.lr.ph.i257.us.us
  %i.hj = phi float [ %i.hi, %bb.am ], [ 1.000000e+00, %.lr.ph.i257.us.us ]
  %i.hk = srem i64 %.pre110.i.us.us, %i.cy        ; 2 uses
  %i.hl = trunc nuw nsw i64 %i.hk to i32          ; 10 uses
  br i1 %i.bx, label %bb.at, label %bb.an

bb.an:                                            ; preds = %._crit_edge109.i.us.us
  br i1 %i.bv, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.hm = urem i32 %i.hl, 3
  switch i32 %i.hm, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hn = icmp sgt i32 %i.dd, %i.hl
  br i1 %i.hn, label %bb.az, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.ho = icmp sgt i32 %i.de, %i.hl
  br i1 %i.ho, label %bb.az, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hp = icmp sgt i32 %i.df, %i.hl
  br i1 %i.hp, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br label %bb.az

bb.at:                                            ; preds = %._crit_edge109.i.us.us
  %i.hq = icmp eq i64 %i.hk, 0
  br i1 %i.hq, label %.thread.us.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hr = icmp eq i32 %.sroa.0.0.copyload, %i.hl
  br i1 %i.hr, label %.thread.us.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hs = icmp eq i32 %i.cv, %i.hl
  br i1 %i.hs, label %.thread.us.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ht = icmp eq i32 %i.cw, %i.hl
  %spec.select.i.us.us = select i1 %i.ht, float %i.hg, float %.086106.i.us.us
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.an
  %.1.i288.us.us = phi float [ %.086106.i.us.us, %bb.an ], [ %spec.select.i.us.us, %bb.aw ], [ %.086106.i.us.us, %bb.av ], [ %.086106.i.us.us, %bb.au ], [ %.086106.i.us.us, %bb.at ] ; 5 uses
  %.188.i286.us.us = phi float [ %.087105.i.us.us, %bb.an ], [ %.087105.i.us.us, %bb.aw ], [ %i.hf, %bb.av ], [ %.087105.i.us.us, %bb.au ], [ %.087105.i.us.us, %bb.at ] ; 4 uses
  %.190.i285.us.us = phi float [ %.089104.i.us.us, %bb.an ], [ %.089104.i.us.us, %bb.aw ], [ %.089104.i.us.us, %bb.av ], [ %i.he, %bb.au ], [ %.089104.i.us.us, %bb.at ] ; 4 uses
  %.192.i283.us.us = phi float [ %.091103.i.us.us, %bb.an ], [ %.091103.i.us.us, %bb.aw ], [ %.091103.i.us.us, %bb.av ], [ %.091103.i.us.us, %bb.au ], [ %i.hd, %bb.at ] ; 4 uses
  %.not99.i.us.us = icmp sle i32 %.sroa.0.0.copyload, %i.hl
  %i.hu = icmp sgt i32 %i.cv, %i.hl               ; 2 uses
  %or.cond.i.us.us = and i1 %i.hu, %.not99.i.us.us
  br i1 %or.cond.i.us.us, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread.us.us
  %i.hv = icmp sgt i32 %i.cw, %i.hl               ; 2 uses
  br i1 %i.hu, label %._crit_edge108.i.us.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %spec.select122.i.us.us = select i1 %i.hv, float %.188.i286.us.us, float %.1.i288.us.us
  br label %bb.az

._crit_edge108.i.us.us:                           ; preds = %bb.ax
  %i.hw = select i1 %i.hv, float %.192.i283.us.us, float %.1.i288.us.us
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge108.i.us.us, %bb.ay, %.thread.us.us, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.i289.us.us = phi float [ %.1.i288.us.us, %bb.ay ], [ %.086106.i.us.us, %bb.ar ], [ %.086106.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.086106.i.us.us, %bb.ap ], [ %.1.i288.us.us, %.thread.us.us ], [ %.1.i288.us.us, %._crit_edge108.i.us.us ]
  %.188.i287.us.us = phi float [ %.188.i286.us.us, %bb.ay ], [ %.087105.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.087105.i.us.us, %bb.as ], [ %.087105.i.us.us, %bb.ap ], [ %.188.i286.us.us, %.thread.us.us ], [ %.188.i286.us.us, %._crit_edge108.i.us.us ]
  %.190.i284.us.us = phi float [ %.190.i285.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.089104.i.us.us, %bb.aq ], [ %.089104.i.us.us, %bb.as ], [ %.089104.i.us.us, %bb.ap ], [ %.190.i285.us.us, %.thread.us.us ], [ %.190.i285.us.us, %._crit_edge108.i.us.us ]
  %.192.i282.us.us = phi float [ %.192.i283.us.us, %bb.ay ], [ %.091103.i.us.us, %bb.ar ], [ %.091103.i.us.us, %bb.aq ], [ %.091103.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.192.i283.us.us, %.thread.us.us ], [ %.192.i283.us.us, %._crit_edge108.i.us.us ]
  %.0.i.us.us = phi float [ %spec.select122.i.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.190.i285.us.us, %.thread.us.us ], [ %i.hw, %._crit_edge108.i.us.us ]
  %i.hx = fdiv float %.0.i.us.us, %i.hj           ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.085107.i.us.us ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = fmul float %.0.copyload157, %i.hx       ; 2 uses
  br i1 %i.da, label %bb.ba, label %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us

bb.ba:                                            ; preds = %bb.az
  %i.ib = load float, ptr %i.a, align 4, !tbaa !43 ; 2 uses
  %i.ic = load float, ptr %i.db, align 4, !tbaa !43
  %i.id = trunc i64 %.085107.i.us.us to i32
  %i.ie = ashr exact i32 %i.id, 1
  %i.if = sitofp i32 %i.ie to float
  %i.ig = fsub float %i.if, %i.ib
  %i.ih = fsub float %i.ic, %i.ib                 ; 2 uses
  %i.ii = fcmp olt float %i.ih, 1.000000e-03
  %i.ij = select i1 %i.ii, float 1.000000e-03, float %i.ih
  %i.ik = fdiv float %i.ig, %i.ij                 ; 2 uses
  %i.il = fcmp olt float %i.ik, 0.000000e+00
  %i.im = select i1 %i.il, float 0.000000e+00, float %i.ik ; 2 uses
  %i.in = fcmp ogt float %i.im, 1.000000e+00
  %i.io = select i1 %i.in, float 1.000000e+00, float %i.im
  %i.ip = fsub float 1.000000e+00, %i.io
  %i.iq = fmul float %.0.copyload154, %i.ip       ; 2 uses
  %i.ir = fsub float 1.000000e+00, %i.iq
  %i.is = fmul float %i.hx, %i.iq
  %i.it = call float @llvm.fmuladd.f32(float %i.ia, float %i.ir, float %i.is)
  %i.iu = call float @logf(float noundef %i.dc) #18
  %i.iv = call float @llvm.fmuladd.f32(float %i.iu, float 1.000000e-01, float 1.000000e+00)
  %i.iw = fmul float %.0.copyload151, %i.iv
  br label %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us

_ZL9rope_yarnffPflffS_S_.exit.i258.us.us:         ; preds = %bb.ba, %bb.az
  %.019.i.i.us.us = phi float [ %i.it, %bb.ba ], [ %i.ia, %bb.az ] ; 2 uses
  %.0.i.i.us.us = phi float [ %i.iw, %bb.ba ], [ %.0.copyload151, %bb.az ] ; 2 uses
  %i.ix = call float @cosf(float noundef %.019.i.i.us.us) #18
  %i.iy = fmul float %.0.i.i.us.us, %i.ix
  store float %i.iy, ptr %i.hy, align 4, !tbaa !43
  %i.iz = call float @sinf(float noundef %.019.i.i.us.us) #18
  %i.ja = fmul float %.0.i.i.us.us, %i.iz
  %i.jb = fmul float %i.cm, %i.ja
  store float %i.jb, ptr %i.hz, align 4, !tbaa !43
  %i.jc = fmul float %i.bu, %.192.i282.us.us
  %i.jd = fmul float %i.bu, %.188.i287.us.us
  %i.je = fmul float %i.bu, %.190.i284.us.us
  %i.jf = fmul float %i.bu, %.1.i289.us.us
  %i.jg = add nuw nsw i64 %.085107.i.us.us, 2     ; 2 uses
  %i.jh = icmp slt i64 %i.jg, %i.ai
  br i1 %i.jh, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, !llvm.loop !5

bb.bb:                                            ; preds = %bb.ak
  %i.ji = sitofp i32 %i.gz to float               ; 6 uses
  br i1 %i.cz, label %.lr.ph.i.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.bb
  br i1 %i.da, label %.lr.ph.split.us.i.us.us, label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %.lr.ph.i.us.us
  br i1 %.not98.i, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader

_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader:  ; preds = %.lr.ph.split.i.us.us
  br i1 %i.ee, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader: ; preds = %.lr.ph.split.i.us.us
  br i1 %i.em, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us

_ZL9rope_yarnffPflffS_S_.exit.i.us.us:            ; preds = %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us
  %.025.i.us.us = phi i64 [ %i.kk, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ] ; 4 uses
  %.02224.i.us.us = phi float [ %i.kj, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us ], [ %i.ji, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ]
  %i.jj = lshr exact i64 %.025.i.us.us, 1
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !43
  %i.jm = fdiv float %.02224.i.us.us, %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.025.i.us.us
  %i.jo = fmul float %.0.copyload157, %i.jm       ; 2 uses
  %i.jp = call float @cosf(float noundef %i.jo) #18
  %i.jq = call float @sinf(float noundef %i.jo) #18
  %i.jr = fmul float %.0.copyload151, %i.jq
  %i.js = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jr, i64 1
  %i.ju = fmul <2 x float> %i.eg, %i.jt
  store <2 x float> %i.ju, ptr %i.jn, align 4, !tbaa !43
  %i.jv = fmul float %i.bu, %.02224.i.us.us       ; 2 uses
  %i.jw = or disjoint i64 %.025.i.us.us, 2        ; 2 uses
  %i.jx = lshr exact i64 %i.jw, 1
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.jx
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !43
  %i.ka = fdiv float %i.jv, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.jw
  %i.kc = fmul float %.0.copyload157, %i.ka       ; 2 uses
  %i.kd = call float @cosf(float noundef %i.kc) #18
  %i.ke = call float @sinf(float noundef %i.kc) #18
  %i.kf = fmul float %.0.copyload151, %i.ke
  %i.kg = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %i.kf, i64 1
  %i.ki = fmul <2 x float> %i.ei, %i.kh
  store <2 x float> %i.ki, ptr %i.kb, align 4, !tbaa !43
  %i.kj = fmul float %i.bu, %i.jv                 ; 2 uses
  %i.kk = add nuw nsw i64 %.025.i.us.us, 4        ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit431.unr-lcssa, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us, !llvm.loop !6

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us:       ; preds = %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us
  %.025.us26.i.us.us = phi i64 [ %i.ly, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ] ; 5 uses
  %.02224.us27.i.us.us = phi float [ %i.lx, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us ], [ %i.ji, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ] ; 2 uses
  %niter438 = phi i64 [ %niter438.next.3, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.025.us26.i.us.us
  %i.km = fmul float %.0.copyload157, %.02224.us27.i.us.us ; 2 uses
  %i.kn = call float @cosf(float noundef %i.km) #18
  %i.ko = call float @sinf(float noundef %i.km) #18
  %i.kp = fmul float %.0.copyload151, %i.ko
  %i.kq = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kr = insertelement <2 x float> %i.kq, float %i.kp, i64 1
  %i.ks = fmul <2 x float> %i.eo, %i.kr
  store <2 x float> %i.ks, ptr %i.kl, align 4, !tbaa !43
  %i.kt = fmul float %i.bu, %.02224.us27.i.us.us  ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.025.us26.i.us.us
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = fmul float %.0.copyload157, %i.kt       ; 2 uses
  %i.kx = call float @cosf(float noundef %i.kw) #18
  %i.ky = call float @sinf(float noundef %i.kw) #18
  %i.kz = fmul float %.0.copyload151, %i.ky
  %i.la = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.lb = insertelement <2 x float> %i.la, float %i.kz, i64 1
  %i.lc = fmul <2 x float> %i.eq, %i.lb
  store <2 x float> %i.lc, ptr %i.kv, align 4, !tbaa !43
  %i.ld = fmul float %i.bu, %i.kt                 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.025.us26.i.us.us
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = fmul float %.0.copyload157, %i.ld       ; 2 uses
  %i.lh = call float @cosf(float noundef %i.lg) #18
  %i.li = call float @sinf(float noundef %i.lg) #18
  %i.lj = fmul float %.0.copyload151, %i.li
  %i.lk = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.ll = insertelement <2 x float> %i.lk, float %i.lj, i64 1
  %i.lm = fmul <2 x float> %i.es, %i.ll
  store <2 x float> %i.lm, ptr %i.lf, align 4, !tbaa !43
  %i.ln = fmul float %i.bu, %i.ld                 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.025.us26.i.us.us
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = fmul float %.0.copyload157, %i.ln       ; 2 uses
  %i.lr = call float @cosf(float noundef %i.lq) #18
  %i.ls = call float @sinf(float noundef %i.lq) #18
  %i.lt = fmul float %.0.copyload151, %i.ls
  %i.lu = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lv = insertelement <2 x float> %i.lu, float %i.lt, i64 1
  %i.lw = fmul <2 x float> %i.eu, %i.lv
  store <2 x float> %i.lw, ptr %i.lp, align 4, !tbaa !43
  %i.lx = fmul float %i.bu, %i.ln                 ; 2 uses
  %i.ly = add nuw nsw i64 %.025.us26.i.us.us, 8   ; 2 uses
  %niter438.next.3 = add i64 %niter438, 4         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL29ggml_compute_forward_rope_fltItEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a

bb.be:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  %i.yx = getelementptr [2 x i8], ptr %i.ps, i64 %i.dk ; 3 uses
  %i.yy = getelementptr [2 x i8], ptr %i.py, i64 %i.dk ; 3 uses
  br i1 %i.dl, label %.lr.ph.i259.us.us.preheader, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us

.lr.ph.i259.us.us.preheader:                      ; preds = %bb.be
  br i1 %min.iters.check, label %.lr.ph.i259.us.us.preheader424, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i259.us.us.preheader
  %i.yz = getelementptr i8, ptr %i.pt, i64 %i.dt
  %i.za = getelementptr i8, ptr %i.yz, i64 %i.fq
  %i.zb = getelementptr i8, ptr %i.za, i64 %i.gc
  %scevgep = getelementptr i8, ptr %i.zb, i64 %i.gt
  %i.zc = getelementptr i8, ptr %i.pn, i64 %i.dt
  %i.zd = getelementptr i8, ptr %i.zc, i64 %i.fr
  %i.ze = getelementptr i8, ptr %i.zd, i64 %i.gd
  %scevgep366 = getelementptr i8, ptr %i.ze, i64 %i.gu
  %bound0 = icmp ult ptr %i.yy, %scevgep366
  %bound1 = icmp ult ptr %i.yx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i259.us.us.preheader424, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.zf = shl nuw i64 %index, 1                   ; 3 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.zf
  %wide.vec = load <16 x float>, ptr %i.zg, align 4, !tbaa !43 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec367 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %i.yx, i64 %i.zf
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.yy, i64 %i.zf
  %wide.vec368 = load <16 x i16>, ptr %i.zh, align 2, !tbaa !41, !alias.scope !921 ; 2 uses
  %strided.vec369 = shufflevector <16 x i16> %wide.vec368, <16 x i16> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec370 = shufflevector <16 x i16> %wide.vec368, <16 x i16> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.zj = zext <8 x i16> %strided.vec369 to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, <8 x i64> %i.zj
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43 ; 2 uses
  %i.zk = zext <8 x i16> %strided.vec370 to <8 x i64>
  %wide.gep371 = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, <8 x i64> %i.zk
  %wide.masked.gather372 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep371, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43 ; 2 uses
  %i.zl = fneg <8 x float> %strided.vec367
  %i.zm = fmul <8 x float> %wide.masked.gather372, %i.zl
  %i.zn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %strided.vec, <8 x float> %i.zm) ; 2 uses
  %i.zo = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.zn)
  %i.zp = fmul <8 x float> %i.zo, splat (float f0x77800000)
  %i.zq = fmul <8 x float> %i.zp, splat (float f0x08800000)
  %i.zr = bitcast <8 x float> %i.zn to <8 x i32>  ; 2 uses
  %i.zs = shl <8 x i32> %i.zr, splat (i32 1)      ; 2 uses
  %i.zt = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.zs, <8 x i32> splat (i32 1895825408))
  %i.zu = lshr exact <8 x i32> %i.zt, splat (i32 1)
  %i.zv = and <8 x i32> %i.zu, splat (i32 2139095040)
  %i.zw = add nuw <8 x i32> %i.zv, splat (i32 125829120)
  %i.zx = bitcast <8 x i32> %i.zw to <8 x float>
  %i.zy = fadd <8 x float> %i.zq, %i.zx
  %i.zz = bitcast <8 x float> %i.zy to <8 x i32>  ; 2 uses
  %i.aaa = lshr <8 x i32> %i.zz, splat (i32 13)
  %i.aab = and <8 x i32> %i.aaa, splat (i32 31744)
  %i.aac = and <8 x i32> %i.zz, splat (i32 4095)
  %i.aad = add nuw nsw <8 x i32> %i.aab, %i.aac
  %i.aae = lshr <8 x i32> %i.zr, splat (i32 16)
  %i.aaf = and <8 x i32> %i.aae, splat (i32 32768)
  %i.aag = icmp ugt <8 x i32> %i.zs, splat (i32 -16777216)
  %i.aah = select <8 x i1> %i.aag, <8 x i32> splat (i32 32256), <8 x i32> %i.aad
  %i.aai = or <8 x i32> %i.aah, %i.aaf
  %i.aaj = fmul <8 x float> %strided.vec, %wide.masked.gather372
  %i.aak = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %strided.vec367, <8 x float> %i.aaj) ; 2 uses
  %i.aal = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aak)
  %i.aam = fmul <8 x float> %i.aal, splat (float f0x77800000)
  %i.aan = fmul <8 x float> %i.aam, splat (float f0x08800000)
  %i.aao = bitcast <8 x float> %i.aak to <8 x i32> ; 2 uses
  %i.aap = shl <8 x i32> %i.aao, splat (i32 1)    ; 2 uses
  %i.aaq = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.aap, <8 x i32> splat (i32 1895825408))
  %i.aar = lshr exact <8 x i32> %i.aaq, splat (i32 1)
  %i.aas = and <8 x i32> %i.aar, splat (i32 2139095040)
  %i.aat = add nuw <8 x i32> %i.aas, splat (i32 125829120)
  %i.aau = bitcast <8 x i32> %i.aat to <8 x float>
  %i.aav = fadd <8 x float> %i.aan, %i.aau
  %i.aaw = bitcast <8 x float> %i.aav to <8 x i32> ; 2 uses
  %i.aax = lshr <8 x i32> %i.aaw, splat (i32 13)
  %i.aay = and <8 x i32> %i.aax, splat (i32 31744)
  %i.aaz = and <8 x i32> %i.aaw, splat (i32 4095)
  %i.aba = add nuw nsw <8 x i32> %i.aay, %i.aaz
  %i.abb = lshr <8 x i32> %i.aao, splat (i32 16)
  %i.abc = and <8 x i32> %i.abb, splat (i32 32768)
  %i.abd = icmp ugt <8 x i32> %i.aap, splat (i32 -16777216)
  %i.abe = select <8 x i1> %i.abd, <8 x i32> splat (i32 32256), <8 x i32> %i.aba
  %i.abf = or <8 x i32> %i.abe, %i.abc
  %i.abg = shufflevector <8 x i32> %i.aai, <8 x i32> %i.abf, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc nuw <16 x i32> %i.abg to <16 x i16>
  store <16 x i16> %interleaved.vec, ptr %i.zi, align 2, !tbaa !41, !alias.scope !922, !noalias !921
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abh = icmp eq i64 %index.next, %n.vec
  br i1 %i.abh, label %middle.block, label %vector.body, !llvm.loop !915

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us, label %.lr.ph.i259.us.us.preheader424

.lr.ph.i259.us.us.preheader424:                   ; preds = %vector.memcheck, %.lr.ph.i259.us.us.preheader, %middle.block
  %.027.i.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i259.us.us.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph.i259.us.us

.lr.ph.i259.us.us:                                ; preds = %.lr.ph.i259.us.us.preheader424, %.lr.ph.i259.us.us
  %.027.i.us.us = phi i64 [ %i.adc, %.lr.ph.i259.us.us ], [ %.027.i.us.us.ph, %.lr.ph.i259.us.us.preheader424 ] ; 4 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.027.i.us.us ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.yx, i64 %.027.i.us.us ; 2 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.yy, i64 %.027.i.us.us
  %i.abm = load i16, ptr %i.abk, align 2, !tbaa !41
  %i.abn = zext i16 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.abn
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !43
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abk, i64 2
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !41
  %i.abs = zext i16 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.abs
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !43
  %i.abv = load float, ptr %i.abj, align 4, !tbaa !43
  %i.abw = load <2 x float>, ptr %i.abi, align 4, !tbaa !43 ; 2 uses
  %i.abx = fneg float %i.abv
  %i.aby = insertelement <2 x float> poison, float %i.abu, i64 0
  %i.abz = shufflevector <2 x float> %i.aby, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aca = shufflevector <2 x float> %i.abw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acb = insertelement <2 x float> %i.aca, float %i.abx, i64 0
  %i.acc = fmul <2 x float> %i.abz, %i.acb
  %i.acd = insertelement <2 x float> poison, float %i.abp, i64 0
  %i.ace = shufflevector <2 x float> %i.acd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ace, <2 x float> %i.abw, <2 x float> %i.acc) ; 2 uses
  %i.acg = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.acf)
  %i.ach = fmul <2 x float> %i.acg, splat (float f0x77800000)
  %i.aci = fmul <2 x float> %i.ach, splat (float f0x08800000)
  %i.acj = bitcast <2 x float> %i.acf to <2 x i32> ; 2 uses
  %i.ack = shl <2 x i32> %i.acj, splat (i32 1)    ; 2 uses
  %i.acl = call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.ack, <2 x i32> splat (i32 1895825408))
  %i.acm = lshr exact <2 x i32> %i.acl, splat (i32 1)
  %i.acn = and <2 x i32> %i.acm, splat (i32 2139095040)
  %i.aco = add nuw <2 x i32> %i.acn, splat (i32 125829120)
  %i.acp = bitcast <2 x i32> %i.aco to <2 x float>
  %i.acq = fadd <2 x float> %i.aci, %i.acp
  %i.acr = bitcast <2 x float> %i.acq to <2 x i32> ; 2 uses
  %i.acs = lshr <2 x i32> %i.acr, splat (i32 13)
  %i.act = and <2 x i32> %i.acs, splat (i32 31744)
  %i.acu = and <2 x i32> %i.acr, splat (i32 4095)
  %i.acv = add nuw nsw <2 x i32> %i.act, %i.acu
  %i.acw = lshr <2 x i32> %i.acj, splat (i32 16)
  %i.acx = and <2 x i32> %i.acw, splat (i32 32768)
  %i.acy = icmp ugt <2 x i32> %i.ack, splat (i32 -16777216)
  %i.acz = select <2 x i1> %i.acy, <2 x i32> splat (i32 32256), <2 x i32> %i.acv
  %i.ada = or <2 x i32> %i.acz, %i.acx
  %i.adb = trunc nuw <2 x i32> %i.ada to <2 x i16>
  store <2 x i16> %i.adb, ptr %i.abl, align 2, !tbaa !41
  %i.adc = add nuw nsw i64 %.027.i.us.us, 2       ; 2 uses
  %i.add = icmp slt i64 %i.adc, %i.be
  br i1 %i.add, label %.lr.ph.i259.us.us, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us, !llvm.loop !916

_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us:   ; preds = %.lr.ph.i260.us.us, %.lr.ph.i259.us.us, %middle.block394, %middle.block, %bb.be, %bb.bd
  br i1 %brmerge, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us, %bb.bg
  %.0304.us.us = phi i64 [ %i.adn, %bb.bg ], [ 0, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us ] ; 4 uses
  %i.ade = icmp eq i64 %.0304.us.us, %i.dk
  br i1 %i.ade, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.us.us
  %i.adf = shl i64 %.0304.us.us, 1
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.adf ; 2 uses
  %i.adh = shl i64 %.0304.us.us, 1
  %i.adi = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.adh ; 2 uses
  %i.adj = load i16, ptr %i.adg, align 2, !tbaa !41
  store i16 %i.adj, ptr %i.adi, align 2, !tbaa !41
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 2
  %i.adl = load i16, ptr %i.adk, align 2, !tbaa !41
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adi, i64 2
  store i16 %i.adl, ptr %i.adm, align 2, !tbaa !41
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.us.us, %bb.bf
  %.1.us.us = phi i64 [ %.0304.us.us, %bb.bf ], [ %i.dr, %.lr.ph.us.us ]
  %i.adn = add nsw i64 %.1.us.us, 2               ; 2 uses
  %i.ado = icmp slt i64 %i.adn, %i.ai
  br i1 %i.ado, label %.lr.ph.us.us, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, !llvm.loop !917

_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us: ; preds = %.lr.ph.i265.us.us, %bb.bg, %middle.block421, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us, %bb.bc, %bb.ah
  %.4.us.us = phi i64 [ %.2306.us.us, %bb.ah ], [ %.0225315.us.us, %bb.bc ], [ %.0225315.us.us, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.us.us ], [ %.0225315.us.us, %middle.block421 ], [ %.0225315.us.us, %bb.bg ], [ %.0225315.us.us, %.lr.ph.i265.us.us ] ; 2 uses
  %i.adp = add nuw nsw i64 %.0224307.us.us, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.adp, %i.ak
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.ah, !llvm.loop !918

._crit_edge.us.us:                                ; preds = %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, %bb.ai
  %.lcssa = phi i32 [ %i.gk, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %i.gv, %bb.ai ] ; 2 uses
  %.2.lcssa.us.us = phi i64 [ %.4.us.us, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %.2306.us.us, %bb.ai ] ; 2 uses
  %i.adq = add nuw nsw i64 %.0225315.us.us, 1     ; 2 uses
  %exitcond336.not = icmp eq i64 %i.adq, %i.am
  br i1 %exitcond336.not, label %._crit_edge316.split.us.us, label %.preheader296.us.us, !llvm.loop !919

._crit_edge316.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.adr = add nuw nsw i64 %.0226324.us, 1        ; 2 uses
  %exitcond337.not = icmp eq i64 %i.adr, %i.ao
  br i1 %exitcond337.not, label %._crit_edge.split, label %.preheader297.us, !llvm.loop !920

default.unreachable:                              ; preds = %bb.ao
  unreachable

._crit_edge.split:                                ; preds = %._crit_edge316.split.us.us, %.preheader297.lr.ph, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.split.us:                                        ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6003, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110) #17
  unreachable

.split320.us:                                     ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6218, ptr noundef nonnull @.str.109) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 4 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !30
  %switch = icmp ult i32 %i.h, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6091, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.e, align 8, !tbaa !30
  %i.j = icmp eq i32 %i.i, 26
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6092, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload160 = load float, ptr %i.q, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.0.copyload157 = load float, ptr %i.r, align 4 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.0.copyload154 = load float, ptr %i.s, align 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  %.0.copyload151 = load float, ptr %i.t, align 4 ; 20 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.0.copyload148 = load float, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 124
  %.0.copyload = load float, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 140
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31 ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !31 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31 ; 4 uses
  %i.ax = icmp eq i64 %i.aq, %i.aa
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6118, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ay = icmp eq i64 %i.aa, 4
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6119, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.98) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !36 ; 2 uses
  %i.bc = tail call i64 @ggml_nrows(ptr noundef nonnull %1)
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = sext i32 %i.l to i64                    ; 14 uses
  %.not248 = icmp slt i64 %i.ai, %i.be
  br i1 %.not248, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6126, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.99) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %i.l, 1
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6127, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.100) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.y, -1
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6129, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.101) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %i.y, 1
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6130, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.102) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bk = add nsw i32 %i.y, %i.l
  %i.bl = sext i32 %i.bk to i64
  %.not249 = icmp slt i64 %i.ai, %i.bl
  br i1 %.not249, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6131, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.103) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bm = add i32 %i.bb, -1
  %i.bn = add i32 %i.bm, %i.bd
  %i.bo = sdiv i32 %i.bn, %i.bb                   ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.az                ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.bo
  %i.br = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bd)
  %i.bs = sitofp i32 %i.l to float
  %i.bt = fdiv float -2.000000e+00, %i.bs
  %i.bu = tail call float @powf(float noundef %.0.copyload160, float noundef %i.bt) #18 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @ggml_rope_yarn_corr_dims(i32 noundef %i.l, i32 noundef %i.p, float noundef %.0.copyload160, float noundef %.0.copyload148, float noundef %.0.copyload, ptr noundef nonnull %i.a)
  %i.bv = icmp eq i32 %i.n, 40
  %i.bw = and i32 %i.n, 8
  %.not250 = icmp eq i32 %i.bw, 0                 ; 2 uses
  %i.bx = icmp eq i32 %i.n, 24                    ; 3 uses
  br i1 %.not250, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = icmp sgt i32 %.sroa.0.0.copyload, 0
  %i.bz = icmp sgt i32 %.sroa.8.0.copyload, 0
  %or.cond = select i1 %i.by, i1 true, i1 %i.bz
  %i.ca = icmp sgt i32 %.sroa.11.0.copyload, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ca
  br i1 %or.cond5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6153, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104) #17
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  br i1 %i.bx, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cb = sdiv i64 %i.ai, 2
  %i.cc = icmp eq i64 %i.cb, %i.be
  br i1 %i.cc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6157, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.105) #17
  unreachable

end_hunk_1
begin_hunk_2_@_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  %i.dq = trunc i64 %i.ak to i32
  %brmerge = select i1 %i.bx, i1 true, i1 %i.dp
  %i.dr = add nsw i64 %i.dk, %i.do
  %i.ds = add nsw i64 %i.be, %i.dk
  %i.dt = shl nsw i64 %i.ds, 2                    ; 2 uses
  %i.du = mul i64 %i.cs, %i.ct
  %i.dv = add i64 %i.du, %i.be
  %i.dw = shl i64 %i.dv, 2
  %i.dx = add nsw i64 %i.be, -2                   ; 2 uses
  %i.dy = shl nsw i64 %i.dx, 1                    ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dk, 2                ; 3 uses
  %i.ea = add nsw i64 %i.dy, %i.dz
  %i.eb = add nsw i64 %i.ea, 4                    ; 2 uses
  %i.ec = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  %i.ed = add nuw nsw i64 %i.ec, %i.dz            ; 2 uses
  %i.ee = add nsw i64 %i.dy, %i.ec
  %i.ef = add nsw i64 %i.ee, %i.dz
  %i.eg = add nsw i64 %i.ef, 4                    ; 2 uses
  %i.eh = mul i64 %i.cs, %i.ct
  %i.ei = add i64 %i.eh, %i.dx
  %i.ej = shl i64 %i.ei, 2
  %i.ek = add i64 %i.ai, -1
  %i.el = lshr i64 %i.ek, 1                       ; 2 uses
  %i.em = shl i64 %i.el, 2                        ; 2 uses
  %i.en = add i64 %i.em, 4                        ; 2 uses
  %i.eo = shl nsw i64 %i.be, 2                    ; 3 uses
  %i.ep = add i64 %i.em, %i.eo
  %i.eq = add i64 %i.ep, 4                        ; 2 uses
  %i.er = mul i64 %i.cs, %i.ct
  %i.es = shl i64 %i.er, 2
  %i.et = shl i64 %i.el, 3
  %i.eu = add i64 %i.ai, -1                       ; 2 uses
  %i.ev = lshr i64 %i.eu, 1                       ; 2 uses
  %i.ew = add nuw i64 %i.ev, 1                    ; 4 uses
  %i.ex = icmp eq i64 %i.ev, 0
  %unroll_iter = and i64 %i.ew, -2
  %i.ey = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.cm, i64 1
  %i.fa = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.cm, i64 1
  %i.fc = and i64 %i.eu, 2
  %lcmp.mod.not.not = icmp eq i64 %i.fc, 0
  %lcmp.mod481 = trunc i64 %i.ew to i1
  %i.fd = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.cm, i64 1
  %xtraiter482 = and i64 %i.ew, 3                 ; 3 uses
  %i.ff = icmp ult i64 %i.ai, 7
  %unroll_iter485 = and i64 %i.ew, -4
  %i.fg = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.cm, i64 1
  %i.fi = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.cm, i64 1
  %i.fk = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.cm, i64 1
  %i.fm = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.cm, i64 1
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  %lcmp.mod484 = icmp ne i64 %xtraiter482, 0
  %i.fo = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.cm, i64 1
  %i.fq = add nsw i64 %i.ai, -1
  %i.fr = lshr i64 %i.fq, 1
  %i.fs = add nuw i64 %i.fr, 1                    ; 2 uses
  %min.iters.check456 = icmp ult i64 %i.ai, 31
  %n.vec458 = and i64 %i.fs, -8                   ; 3 uses
  %i.ft = shl i64 %n.vec458, 1
  %cmp.n468 = icmp eq i64 %i.fs, %n.vec458
  %i.fu = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fv = lshr exact i64 %i.fu, 1
  %i.fw = add nuw i64 %i.fv, 1                    ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.fu, 30
  %n.vec409 = and i64 %i.fw, -8                   ; 3 uses
  %i.fx = shl i64 %n.vec409, 1
  %cmp.n418 = icmp eq i64 %i.fw, %n.vec409
  %i.fy = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fz = lshr exact i64 %i.fy, 1
  %i.ga = add nuw i64 %i.fz, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fy, 14
  %n.vec = and i64 %i.ga, -8                      ; 3 uses
  %i.gb = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br label %.preheader293.us

.preheader293.us:                                 ; preds = %.preheader293.us.preheader, %._crit_edge312.split.us.us
  %.0226320.us = phi i64 [ %i.vw, %._crit_edge312.split.us.us ], [ 0, %.preheader293.us.preheader ] ; 9 uses
  %.0227319.us = phi i64 [ %.2.lcssa.us.us, %._crit_edge312.split.us.us ], [ -1, %.preheader293.us.preheader ]
  %.0230318.us = phi i32 [ %.lcssa, %._crit_edge312.split.us.us ], [ 0, %.preheader293.us.preheader ]
  %i.gc = mul i64 %i.aw, %.0226320.us             ; 3 uses
  %i.gd = mul i64 %i.ag, %.0226320.us             ; 3 uses
  %i.ge = mul i64 %i.aw, %.0226320.us             ; 3 uses
  %i.gf = mul i64 %i.ag, %.0226320.us             ; 3 uses
  %i.gg = mul i64 %i.aw, %.0226320.us
  %i.gh = mul i64 %i.ag, %.0226320.us
  %i.gi = mul i64 %.0226320.us, %i.ag
  %i.gj = mul i64 %.0226320.us, %i.aw
  br label %.preheader292.us.us

.preheader292.us.us:                              ; preds = %._crit_edge.us.us, %.preheader293.us
  %.0225311.us.us = phi i64 [ 0, %.preheader293.us ], [ %i.vv, %._crit_edge.us.us ] ; 16 uses
  %.1228310.us.us = phi i64 [ %.0227319.us, %.preheader293.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ]
  %.1231309.us.us = phi i32 [ %.0230318.us, %.preheader293.us ], [ %.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.gk = mul i64 %i.au, %.0225311.us.us          ; 3 uses
  %i.gl = mul i64 %i.ae, %.0225311.us.us          ; 3 uses
  %i.gm = mul i64 %i.au, %.0225311.us.us          ; 3 uses
  %i.gn = mul i64 %i.ae, %.0225311.us.us          ; 3 uses
  %i.go = mul i64 %i.au, %.0225311.us.us
  %i.gp = mul i64 %i.ae, %.0225311.us.us
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0225311.us.us ; 4 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.am
  %i.gs = getelementptr i8, ptr %i.gq, i64 %.idx
  %i.gt = getelementptr i8, ptr %i.gq, i64 %.idx255
  %i.gu = mul i64 %.0225311.us.us, %i.ae
  %i.gv = mul i64 %.0225311.us.us, %i.au
  %i.gw = add i32 %.1231309.us.us, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, %.preheader292.us.us
  %.0224303.us.us = phi i64 [ 0, %.preheader292.us.us ], [ %i.vu, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 9 uses
  %.2302.us.us = phi i64 [ %.1228310.us.us, %.preheader292.us.us ], [ %.4.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %.2232301.us.us = phi i32 [ %.1231309.us.us, %.preheader292.us.us ], [ %i.hd, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %i.gx = mul i64 %i.as, %.0224303.us.us          ; 3 uses
  %i.gy = mul i64 %i.ac, %.0224303.us.us          ; 3 uses
  %i.gz = mul i64 %i.as, %.0224303.us.us          ; 3 uses
  %i.ha = mul i64 %i.ac, %.0224303.us.us          ; 3 uses
  %i.hb = mul i64 %i.as, %.0224303.us.us
  %i.hc = mul i64 %i.ac, %.0224303.us.us
  %i.hd = add nsw i32 %.2232301.us.us, 1          ; 2 uses
  %i.he = icmp slt i32 %.2232301.us.us, %i.bp
  br i1 %i.he, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not253.us.us = icmp slt i32 %.2232301.us.us, %i.br
  br i1 %.not253.us.us, label %bb.aj, label %._crit_edge.us.us

bb.aj:                                            ; preds = %bb.ai
  %i.hf = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 4 uses
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %i.cu ; 22 uses
  %.not254.us.us = icmp eq i64 %.2302.us.us, %.0225311.us.us
  br i1 %.not254.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hh = load i32, ptr %i.gq, align 4, !tbaa !51 ; 2 uses
  br i1 %.not250, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hi = load i32, ptr %i.gr, align 4, !tbaa !51
  %i.hj = load i32, ptr %i.gs, align 4, !tbaa !51
  %i.hk = load i32, ptr %i.gt, align 4, !tbaa !51
  %i.hl = sitofp i32 %i.hh to float               ; 2 uses
  %i.hm = sitofp i32 %i.hi to float               ; 2 uses
  %i.hn = sitofp i32 %i.hj to float               ; 2 uses
  %i.ho = sitofp i32 %i.hk to float               ; 2 uses
  br i1 %.not.i256, label %.split.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.al
  br i1 %i.cz, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i257.us.us:                                ; preds = %.preheader.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us
  %.085107.i.us.us = phi i64 [ %i.jo, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ 0, %.preheader.i.us.us ] ; 4 uses
  %.086106.i.us.us = phi float [ %i.jn, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.ho, %.preheader.i.us.us ] ; 10 uses
  %.087105.i.us.us = phi float [ %i.jl, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hn, %.preheader.i.us.us ] ; 9 uses
  %.089104.i.us.us = phi float [ %i.jm, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hm, %.preheader.i.us.us ] ; 9 uses
  %.091103.i.us.us = phi float [ %i.jk, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hl, %.preheader.i.us.us ] ; 9 uses
  %.pre110.i.us.us = lshr exact i64 %.085107.i.us.us, 1 ; 2 uses
  br i1 %.not98.i, label %._crit_edge109.i.us.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i257.us.us
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %.pre110.i.us.us
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !43
  br label %._crit_edge109.i.us.us

._crit_edge109.i.us.us:                           ; preds = %bb.am, %.lr.ph.i257.us.us
  %i.hr = phi float [ %i.hq, %bb.am ], [ 1.000000e+00, %.lr.ph.i257.us.us ]
  %i.hs = srem i64 %.pre110.i.us.us, %i.cy        ; 2 uses
  %i.ht = trunc nuw nsw i64 %i.hs to i32          ; 10 uses
  br i1 %i.bx, label %bb.at, label %bb.an

bb.an:                                            ; preds = %._crit_edge109.i.us.us
  br i1 %i.bv, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.hu = urem i32 %i.ht, 3
  switch i32 %i.hu, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hv = icmp sgt i32 %i.dd, %i.ht
  br i1 %i.hv, label %bb.az, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.hw = icmp sgt i32 %i.de, %i.ht
  br i1 %i.hw, label %bb.az, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hx = icmp sgt i32 %i.df, %i.ht
  br i1 %i.hx, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br label %bb.az

bb.at:                                            ; preds = %._crit_edge109.i.us.us
  %i.hy = icmp eq i64 %i.hs, 0
  br i1 %i.hy, label %.thread.us.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hz = icmp eq i32 %.sroa.0.0.copyload, %i.ht
  br i1 %i.hz, label %.thread.us.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ia = icmp eq i32 %i.cv, %i.ht
  br i1 %i.ia, label %.thread.us.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ib = icmp eq i32 %i.cw, %i.ht
  %spec.select.i.us.us = select i1 %i.ib, float %i.ho, float %.086106.i.us.us
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.an
  %.1.i284.us.us = phi float [ %.086106.i.us.us, %bb.an ], [ %spec.select.i.us.us, %bb.aw ], [ %.086106.i.us.us, %bb.av ], [ %.086106.i.us.us, %bb.au ], [ %.086106.i.us.us, %bb.at ] ; 5 uses
  %.188.i282.us.us = phi float [ %.087105.i.us.us, %bb.an ], [ %.087105.i.us.us, %bb.aw ], [ %i.hn, %bb.av ], [ %.087105.i.us.us, %bb.au ], [ %.087105.i.us.us, %bb.at ] ; 4 uses
  %.190.i281.us.us = phi float [ %.089104.i.us.us, %bb.an ], [ %.089104.i.us.us, %bb.aw ], [ %.089104.i.us.us, %bb.av ], [ %i.hm, %bb.au ], [ %.089104.i.us.us, %bb.at ] ; 4 uses
  %.192.i279.us.us = phi float [ %.091103.i.us.us, %bb.an ], [ %.091103.i.us.us, %bb.aw ], [ %.091103.i.us.us, %bb.av ], [ %.091103.i.us.us, %bb.au ], [ %i.hl, %bb.at ] ; 4 uses
  %.not99.i.us.us = icmp sle i32 %.sroa.0.0.copyload, %i.ht
  %i.ic = icmp sgt i32 %i.cv, %i.ht               ; 2 uses
  %or.cond.i.us.us = and i1 %i.ic, %.not99.i.us.us
  br i1 %or.cond.i.us.us, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread.us.us
  %i.id = icmp sgt i32 %i.cw, %i.ht               ; 2 uses
  br i1 %i.ic, label %._crit_edge108.i.us.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %spec.select122.i.us.us = select i1 %i.id, float %.188.i282.us.us, float %.1.i284.us.us
  br label %bb.az

._crit_edge108.i.us.us:                           ; preds = %bb.ax
  %i.ie = select i1 %i.id, float %.192.i279.us.us, float %.1.i284.us.us
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge108.i.us.us, %bb.ay, %.thread.us.us, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.i285.us.us = phi float [ %.1.i284.us.us, %bb.ay ], [ %.086106.i.us.us, %bb.ar ], [ %.086106.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.086106.i.us.us, %bb.ap ], [ %.1.i284.us.us, %.thread.us.us ], [ %.1.i284.us.us, %._crit_edge108.i.us.us ]
  %.188.i283.us.us = phi float [ %.188.i282.us.us, %bb.ay ], [ %.087105.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.087105.i.us.us, %bb.as ], [ %.087105.i.us.us, %bb.ap ], [ %.188.i282.us.us, %.thread.us.us ], [ %.188.i282.us.us, %._crit_edge108.i.us.us ]
  %.190.i280.us.us = phi float [ %.190.i281.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.089104.i.us.us, %bb.aq ], [ %.089104.i.us.us, %bb.as ], [ %.089104.i.us.us, %bb.ap ], [ %.190.i281.us.us, %.thread.us.us ], [ %.190.i281.us.us, %._crit_edge108.i.us.us ]
  %.192.i278.us.us = phi float [ %.192.i279.us.us, %bb.ay ], [ %.091103.i.us.us, %bb.ar ], [ %.091103.i.us.us, %bb.aq ], [ %.091103.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.192.i279.us.us, %.thread.us.us ], [ %.192.i279.us.us, %._crit_edge108.i.us.us ]
  %.0.i.us.us = phi float [ %spec.select122.i.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.190.i281.us.us, %.thread.us.us ], [ %i.ie, %._crit_edge108.i.us.us ]
  %i.if = fdiv float %.0.i.us.us, %i.hr           ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.085107.i.us.us ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ii = fmul float %.0.copyload157, %i.if       ; 2 uses
  br i1 %i.da, label %bb.ba, label %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us

bb.ba:                                            ; preds = %bb.az
  %i.ij = load float, ptr %i.a, align 4, !tbaa !43 ; 2 uses
  %i.ik = load float, ptr %i.db, align 4, !tbaa !43
  %i.il = trunc i64 %.085107.i.us.us to i32
  %i.im = ashr exact i32 %i.il, 1
  %i.in = sitofp i32 %i.im to float
  %i.io = fsub float %i.in, %i.ij
  %i.ip = fsub float %i.ik, %i.ij                 ; 2 uses
  %i.iq = fcmp olt float %i.ip, 1.000000e-03
  %i.ir = select i1 %i.iq, float 1.000000e-03, float %i.ip
  %i.is = fdiv float %i.io, %i.ir                 ; 2 uses
  %i.it = fcmp olt float %i.is, 0.000000e+00
  %i.iu = select i1 %i.it, float 0.000000e+00, float %i.is ; 2 uses
  %i.iv = fcmp ogt float %i.iu, 1.000000e+00
  %i.iw = select i1 %i.iv, float 1.000000e+00, float %i.iu
  %i.ix = fsub float 1.000000e+00, %i.iw
  %i.iy = fmul float %.0.copyload154, %i.ix       ; 2 uses
  %i.iz = fsub float 1.000000e+00, %i.iy
  %i.ja = fmul float %i.if, %i.iy
  %i.jb = call float @llvm.fmuladd.f32(float %i.ii, float %i.iz, float %i.ja)
  %i.jc = call float @logf(float noundef %i.dc) #18
  %i.jd = call float @llvm.fmuladd.f32(float %i.jc, float 1.000000e-01, float 1.000000e+00)
  %i.je = fmul float %.0.copyload151, %i.jd
  br label %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us

_ZL9rope_yarnffPflffS_S_.exit.i258.us.us:         ; preds = %bb.ba, %bb.az
  %.019.i.i.us.us = phi float [ %i.jb, %bb.ba ], [ %i.ii, %bb.az ] ; 2 uses
  %.0.i.i.us.us = phi float [ %i.je, %bb.ba ], [ %.0.copyload151, %bb.az ] ; 2 uses
  %i.jf = call float @cosf(float noundef %.019.i.i.us.us) #18
  %i.jg = fmul float %.0.i.i.us.us, %i.jf
  store float %i.jg, ptr %i.ig, align 4, !tbaa !43
  %i.jh = call float @sinf(float noundef %.019.i.i.us.us) #18
  %i.ji = fmul float %.0.i.i.us.us, %i.jh
  %i.jj = fmul float %i.cm, %i.ji
  store float %i.jj, ptr %i.ih, align 4, !tbaa !43
  %i.jk = fmul float %i.bu, %.192.i278.us.us
  %i.jl = fmul float %i.bu, %.188.i283.us.us
  %i.jm = fmul float %i.bu, %.190.i280.us.us
  %i.jn = fmul float %i.bu, %.1.i285.us.us
  %i.jo = add nuw nsw i64 %.085107.i.us.us, 2     ; 2 uses
  %i.jp = icmp slt i64 %i.jo, %i.ai
  br i1 %i.jp, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, !llvm.loop !5

bb.bb:                                            ; preds = %bb.ak
  %i.jq = sitofp i32 %i.hh to float               ; 6 uses
  br i1 %i.cz, label %.lr.ph.i.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.bb
  br i1 %i.da, label %.lr.ph.split.us.i.us.us, label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %.lr.ph.i.us.us
  br i1 %.not98.i, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader

_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader:  ; preds = %.lr.ph.split.i.us.us
  br i1 %i.ex, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader: ; preds = %.lr.ph.split.i.us.us
  br i1 %i.ff, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us

_ZL9rope_yarnffPflffS_S_.exit.i.us.us:            ; preds = %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us
  %.025.i.us.us = phi i64 [ %i.ks, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ] ; 4 uses
  %.02224.i.us.us = phi float [ %i.kr, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us ], [ %i.jq, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ]
  %i.jr = lshr exact i64 %.025.i.us.us, 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !43
  %i.ju = fdiv float %.02224.i.us.us, %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.025.i.us.us
  %i.jw = fmul float %.0.copyload157, %i.ju       ; 2 uses
  %i.jx = call float @cosf(float noundef %i.jw) #18
  %i.jy = call float @sinf(float noundef %i.jw) #18
  %i.jz = fmul float %.0.copyload151, %i.jy
  %i.ka = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kb = insertelement <2 x float> %i.ka, float %i.jz, i64 1
  %i.kc = fmul <2 x float> %i.ez, %i.kb
  store <2 x float> %i.kc, ptr %i.jv, align 4, !tbaa !43
  %i.kd = fmul float %i.bu, %.02224.i.us.us       ; 2 uses
  %i.ke = or disjoint i64 %.025.i.us.us, 2        ; 2 uses
  %i.kf = lshr exact i64 %i.ke, 1
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.kf
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !43
  %i.ki = fdiv float %i.kd, %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ke
  %i.kk = fmul float %.0.copyload157, %i.ki       ; 2 uses
  %i.kl = call float @cosf(float noundef %i.kk) #18
  %i.km = call float @sinf(float noundef %i.kk) #18
  %i.kn = fmul float %.0.copyload151, %i.km
  %i.ko = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.kn, i64 1
  %i.kq = fmul <2 x float> %i.fb, %i.kp
  store <2 x float> %i.kq, ptr %i.kj, align 4, !tbaa !43
  %i.kr = fmul float %i.bu, %i.kd                 ; 2 uses
  %i.ks = add nuw nsw i64 %.025.i.us.us, 4        ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit479.unr-lcssa, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us, !llvm.loop !6

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us:       ; preds = %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us
  %.025.us26.i.us.us = phi i64 [ %i.mg, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ] ; 5 uses
  %.02224.us27.i.us.us = phi float [ %i.mf, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us ], [ %i.jq, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ] ; 2 uses
  %niter486 = phi i64 [ %niter486.next.3, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.025.us26.i.us.us
  %i.ku = fmul float %.0.copyload157, %.02224.us27.i.us.us ; 2 uses
  %i.kv = call float @cosf(float noundef %i.ku) #18
  %i.kw = call float @sinf(float noundef %i.ku) #18
  %i.kx = fmul float %.0.copyload151, %i.kw
  %i.ky = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.kz = insertelement <2 x float> %i.ky, float %i.kx, i64 1
  %i.la = fmul <2 x float> %i.fh, %i.kz
  store <2 x float> %i.la, ptr %i.kt, align 4, !tbaa !43
  %i.lb = fmul float %i.bu, %.02224.us27.i.us.us  ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.025.us26.i.us.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = fmul float %.0.copyload157, %i.lb       ; 2 uses
  %i.lf = call float @cosf(float noundef %i.le) #18
  %i.lg = call float @sinf(float noundef %i.le) #18
  %i.lh = fmul float %.0.copyload151, %i.lg
  %i.li = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.lh, i64 1
  %i.lk = fmul <2 x float> %i.fj, %i.lj
  store <2 x float> %i.lk, ptr %i.ld, align 4, !tbaa !43
  %i.ll = fmul float %i.bu, %i.lb                 ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.025.us26.i.us.us
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = fmul float %.0.copyload157, %i.ll       ; 2 uses
  %i.lp = call float @cosf(float noundef %i.lo) #18
  %i.lq = call float @sinf(float noundef %i.lo) #18
  %i.lr = fmul float %.0.copyload151, %i.lq
  %i.ls = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.lr, i64 1
  %i.lu = fmul <2 x float> %i.fl, %i.lt
  store <2 x float> %i.lu, ptr %i.ln, align 4, !tbaa !43
  %i.lv = fmul float %i.bu, %i.ll                 ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.025.us26.i.us.us
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = fmul float %.0.copyload157, %i.lv       ; 2 uses
  %i.lz = call float @cosf(float noundef %i.ly) #18
  %i.ma = call float @sinf(float noundef %i.ly) #18
  %i.mb = fmul float %.0.copyload151, %i.ma
  %i.mc = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.md = insertelement <2 x float> %i.mc, float %i.mb, i64 1
  %i.me = fmul <2 x float> %i.fn, %i.md
  store <2 x float> %i.me, ptr %i.lx, align 4, !tbaa !43
  %i.mf = fmul float %i.bu, %i.lv                 ; 2 uses
  %i.mg = add nuw nsw i64 %.025.us26.i.us.us, 8   ; 2 uses
  %niter486.next.3 = add i64 %niter486, 4         ; 2 uses
end_hunk_2
begin_hunk_3_@_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  %bound0390 = icmp ult ptr %i.sd, %scevgep378
  %bound1391 = icmp ult ptr %i.sc, %scevgep372
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %conflict.rdx389, %found.conflict392
  %bound0394 = icmp ult ptr %scevgep373, %scevgep375
  %bound1395 = icmp ult ptr %i.hg, %scevgep374
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  %bound0398 = icmp ult ptr %scevgep373, %scevgep377
  %bound1399 = icmp ult ptr %scevgep376, %scevgep374
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx397, %found.conflict400
  %bound0402 = icmp ult ptr %scevgep373, %scevgep378
  %bound1403 = icmp ult ptr %i.sc, %scevgep374
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  br i1 %conflict.rdx405, label %.lr.ph.i260.us.us.preheader473, label %vector.body410

vector.body410:                                   ; preds = %vector.memcheck371, %vector.body410
  %index411 = phi i64 [ %index.next416, %vector.body410 ], [ 0, %vector.memcheck371 ] ; 4 uses
  %.idx471 = shl nuw i64 %index411, 3
  %i.sx = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx471
  %wide.vec412 = load <16 x float>, ptr %i.sx, align 4, !tbaa !43, !alias.scope !957 ; 2 uses
  %strided.vec413 = shufflevector <16 x float> %wide.vec412, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec414 = shufflevector <16 x float> %wide.vec412, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %index411 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %index411 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.sy, align 4, !tbaa !43, !alias.scope !958 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.dj
  %wide.load415 = load <8 x float>, ptr %i.ta, align 4, !tbaa !43, !alias.scope !959 ; 2 uses
  %i.tb = fneg <8 x float> %strided.vec414
  %i.tc = fmul <8 x float> %wide.load415, %i.tb
  %i.td = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %strided.vec413, <8 x float> %i.tc)
  store <8 x float> %i.td, ptr %i.sz, align 4, !tbaa !43, !alias.scope !960, !noalias !961
  %i.te = fmul <8 x float> %strided.vec413, %wide.load415
  %i.tf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %strided.vec414, <8 x float> %i.te)
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.dj
  store <8 x float> %i.tf, ptr %i.tg, align 4, !tbaa !43, !alias.scope !962, !noalias !963
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.th = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.th, label %middle.block417, label %vector.body410, !llvm.loop !938

middle.block417:                                  ; preds = %vector.body410
  br i1 %cmp.n418, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, label %.lr.ph.i260.us.us.preheader473

.lr.ph.i260.us.us.preheader473:                   ; preds = %vector.memcheck371, %.lr.ph.i260.us.us.preheader, %middle.block417
  %.026.i261.us.us.ph = phi i64 [ 0, %vector.memcheck371 ], [ 0, %.lr.ph.i260.us.us.preheader ], [ %i.fx, %middle.block417 ]
  br label %.lr.ph.i260.us.us

.lr.ph.i260.us.us:                                ; preds = %.lr.ph.i260.us.us.preheader473, %.lr.ph.i260.us.us
  %.026.i261.us.us = phi i64 [ %i.ty, %.lr.ph.i260.us.us ], [ %.026.i261.us.us.ph, %.lr.ph.i260.us.us.preheader473 ] ; 3 uses
  %i.ti = lshr exact i64 %.026.i261.us.us, 1      ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.026.i261.us.us ; 2 uses
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !43 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !43 ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.ti ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.ti ; 2 uses
  %i.tp = load float, ptr %i.tn, align 4, !tbaa !43 ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.dj
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !43 ; 2 uses
  %i.ts = fneg float %i.tm
  %i.tt = fmul float %i.tr, %i.ts
  %i.tu = call float @llvm.fmuladd.f32(float %i.tp, float %i.tk, float %i.tt)
  store float %i.tu, ptr %i.to, align 4, !tbaa !43
  %i.tv = fmul float %i.tk, %i.tr
  %i.tw = call float @llvm.fmuladd.f32(float %i.tp, float %i.tm, float %i.tv)
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.dj
  store float %i.tw, ptr %i.tx, align 4, !tbaa !43
  %i.ty = add nuw nsw i64 %.026.i261.us.us, 2     ; 2 uses
  %i.tz = icmp slt i64 %i.ty, %i.be
  br i1 %i.tz, label %.lr.ph.i260.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, !llvm.loop !939

bb.be:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  %i.ua = getelementptr [4 x i8], ptr %i.pz, i64 %i.dk ; 3 uses
  %i.ub = getelementptr [4 x i8], ptr %i.qe, i64 %i.dk ; 4 uses
  br i1 %i.dl, label %.lr.ph.i259.us.us.preheader, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us

.lr.ph.i259.us.us.preheader:                      ; preds = %bb.be
  br i1 %min.iters.check, label %.lr.ph.i259.us.us.preheader472, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i259.us.us.preheader
  %i.uc = getelementptr i8, ptr %i.qa, i64 %i.dt
  %i.ud = getelementptr i8, ptr %i.uc, i64 %i.gg
  %i.ue = getelementptr i8, ptr %i.ud, i64 %i.go
  %scevgep = getelementptr i8, ptr %i.ue, i64 %i.hb ; 2 uses
  %scevgep362 = getelementptr i8, ptr %i.hf, i64 %i.dw
  %i.uf = getelementptr i8, ptr %i.pv, i64 %i.dt
  %i.ug = getelementptr i8, ptr %i.uf, i64 %i.gh
  %i.uh = getelementptr i8, ptr %i.ug, i64 %i.gp
  %scevgep363 = getelementptr i8, ptr %i.uh, i64 %i.hc
  %bound0 = icmp ult ptr %i.ub, %scevgep362
  %bound1 = icmp ult ptr %i.hg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0364 = icmp ult ptr %i.ub, %scevgep363
  %bound1365 = icmp ult ptr %i.ua, %scevgep
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx = or i1 %found.conflict, %found.conflict366
  br i1 %conflict.rdx, label %.lr.ph.i259.us.us.preheader472, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ui = shl nuw i64 %index, 1                   ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ui
  %wide.vec = load <16 x float>, ptr %i.uj, align 4, !tbaa !43, !alias.scope !964 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec367 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.ui
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.ui
  %wide.vec368 = load <16 x float>, ptr %i.uk, align 4, !tbaa !43, !alias.scope !965 ; 2 uses
  %strided.vec369 = shufflevector <16 x float> %wide.vec368, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec370 = shufflevector <16 x float> %wide.vec368, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.um = fneg <8 x float> %strided.vec367
  %i.un = fmul <8 x float> %strided.vec370, %i.um
  %i.uo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec369, <8 x float> %strided.vec, <8 x float> %i.un)
  %i.up = fmul <8 x float> %strided.vec, %strided.vec370
  %i.uq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec369, <8 x float> %strided.vec367, <8 x float> %i.up)
  %interleaved.vec = shufflevector <8 x float> %i.uo, <8 x float> %i.uq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ul, align 4, !tbaa !43, !alias.scope !966, !noalias !967
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ur = icmp eq i64 %index.next, %n.vec
  br i1 %i.ur, label %middle.block, label %vector.body, !llvm.loop !944

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, label %.lr.ph.i259.us.us.preheader472

.lr.ph.i259.us.us.preheader472:                   ; preds = %vector.memcheck, %.lr.ph.i259.us.us.preheader, %middle.block
  %.026.i.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i259.us.us.preheader ], [ %i.gb, %middle.block ]
  br label %.lr.ph.i259.us.us

.lr.ph.i259.us.us:                                ; preds = %.lr.ph.i259.us.us.preheader472, %.lr.ph.i259.us.us
  %.026.i.us.us = phi i64 [ %i.vh, %.lr.ph.i259.us.us ], [ %.026.i.us.us.ph, %.lr.ph.i259.us.us.preheader472 ] ; 4 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.026.i.us.us ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !43 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !43 ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %.026.i.us.us ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %.026.i.us.us ; 2 uses
  %i.uy = load float, ptr %i.uw, align 4, !tbaa !43 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.va = load float, ptr %i.uz, align 4, !tbaa !43 ; 2 uses
  %i.vb = fneg float %i.uv
  %i.vc = fmul float %i.va, %i.vb
  %i.vd = call float @llvm.fmuladd.f32(float %i.uy, float %i.ut, float %i.vc)
  store float %i.vd, ptr %i.ux, align 4, !tbaa !43
  %i.ve = fmul float %i.ut, %i.va
  %i.vf = call float @llvm.fmuladd.f32(float %i.uy, float %i.uv, float %i.ve)
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  store float %i.vf, ptr %i.vg, align 4, !tbaa !43
  %i.vh = add nuw nsw i64 %.026.i.us.us, 2        ; 2 uses
  %i.vi = icmp slt i64 %i.vh, %i.be
  br i1 %i.vi, label %.lr.ph.i259.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, !llvm.loop !945

_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us:   ; preds = %.lr.ph.i260.us.us, %.lr.ph.i259.us.us, %middle.block417, %middle.block, %bb.be, %bb.bd
  br i1 %brmerge, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, %bb.bg
  %.0300.us.us = phi i64 [ %i.vs, %bb.bg ], [ 0, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us ] ; 4 uses
  %i.vj = icmp eq i64 %.0300.us.us, %i.dk
  br i1 %i.vj, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.us.us
  %i.vk = shl i64 %.0300.us.us, 2
  %i.vl = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.vk ; 2 uses
  %i.vm = shl i64 %.0300.us.us, 2
  %i.vn = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.vm ; 2 uses
  %i.vo = load float, ptr %i.vl, align 4, !tbaa !43
  store float %i.vo, ptr %i.vn, align 4, !tbaa !43
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !43
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  store float %i.vq, ptr %i.vr, align 4, !tbaa !43
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.us.us, %bb.bf
  %.1.us.us = phi i64 [ %.0300.us.us, %bb.bf ], [ %i.dr, %.lr.ph.us.us ]
  %i.vs = add nsw i64 %.1.us.us, 2                ; 2 uses
  %i.vt = icmp slt i64 %i.vs, %i.ai
  br i1 %i.vt, label %.lr.ph.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, !llvm.loop !946

_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us: ; preds = %.lr.ph.i263.us.us, %bb.bg, %middle.block467, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, %bb.bc, %bb.ah
  %.4.us.us = phi i64 [ %.2302.us.us, %bb.ah ], [ %.0225311.us.us, %bb.bc ], [ %.0225311.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us ], [ %.0225311.us.us, %middle.block467 ], [ %.0225311.us.us, %bb.bg ], [ %.0225311.us.us, %.lr.ph.i263.us.us ] ; 2 uses
  %i.vu = add nuw nsw i64 %.0224303.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.vu, %i.ak
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.ah, !llvm.loop !947

._crit_edge.us.us:                                ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, %bb.ai
  %.lcssa = phi i32 [ %i.gw, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %i.hd, %bb.ai ] ; 2 uses
  %.2.lcssa.us.us = phi i64 [ %.4.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %.2302.us.us, %bb.ai ] ; 2 uses
  %i.vv = add nuw nsw i64 %.0225311.us.us, 1      ; 2 uses
  %exitcond332.not = icmp eq i64 %i.vv, %i.am
  br i1 %exitcond332.not, label %._crit_edge312.split.us.us, label %.preheader292.us.us, !llvm.loop !948

._crit_edge312.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.vw = add nuw nsw i64 %.0226320.us, 1         ; 2 uses
  %exitcond333.not = icmp eq i64 %i.vw, %i.ao
  br i1 %exitcond333.not, label %._crit_edge.split, label %.preheader293.us, !llvm.loop !949

default.unreachable:                              ; preds = %bb.ao
  unreachable

._crit_edge.split:                                ; preds = %._crit_edge312.split.us.us, %.preheader293.lr.ph, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.split.us:                                        ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6003, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110) #17
  unreachable

.split316.us:                                     ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6218, ptr noundef nonnull @.str.109) #17
  unreachable
}

declare void @ggml_rope_yarn_corr_dims(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rope_back(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  switch i32 %i.c, label %bb.d [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL29ggml_compute_forward_rope_fltItEvPK19ggml_compute_paramsP11ggml_tensorb(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6281, ptr noundef nonnull @.str.2) #17
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_conv_transpose_1d(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 15 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  switch i32 %i.e, label %bb.z [
    i32 1, label %bb.b
    i32 0, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6296, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %1, align 8, !tbaa !30
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6297, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31   ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36 ; 2 uses
  %i.ak = mul i64 %i.q, %i.m                      ; 3 uses
  %i.al = mul i64 %i.ak, %i.o                     ; 2 uses
  %i.am = icmp eq i64 %i.s, 2
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6306, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq i64 %i.ao, 4
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6307, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp eq i32 %i.ah, 0
  br i1 %i.aq, label %bb.k, label %._crit_edge211.i

._crit_edge211.i:                                 ; preds = %bb.j
  %.pre.i = shl i64 %i.al, 32
  %.pre212.i = ashr exact i64 %.pre.i, 31
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 0, i64 %i.au, i1 false)
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 3 uses
  %i.aw = icmp sgt i64 %i.q, 0
  %i.ax = icmp sgt i64 %i.o, 0
  %or.cond.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %.preheader.lr.ph.split.i, label %._crit_edge172.split.i

.preheader.lr.ph.split.i:                         ; preds = %bb.k
  %i.ay = icmp sgt i64 %i.m, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  br i1 %i.ay, label %.preheader.i.preheader, label %._crit_edge172.split.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i
  %i.bb = mul i64 %i.o, %i.m
  %i.bc = shl nuw i64 %i.m, 1                     ; 2 uses
  %i.bd = add nsw i64 %i.o, -1
  %i.be = mul i64 %i.u, %i.bd
  %i.bf = getelementptr i8, ptr %i.ba, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bc
  %min.iters.check141 = icmp ugt i64 %i.m, 7
  %ident.check132.not = icmp eq i64 %i.q, 1
  %or.cond = select i1 %min.iters.check141, i1 %ident.check132.not, i1 false
  %i.bh = or i64 %i.u, %i.bc
  %i.bi = icmp slt i64 %i.bh, 0
  %min.iters.check143 = icmp ult i64 %i.m, 64
  %i.bj = and i64 %i.m, 56
  %n.vec145 = and i64 %i.m, 9223372036854775744   ; 4 uses
  %cmp.n154 = icmp eq i64 %i.m, %n.vec145
  %min.epilog.iters.check159 = icmp eq i64 %i.bj, 0
  %n.vec161 = and i64 %i.m, 9223372036854775800   ; 3 uses
  %cmp.n167 = icmp eq i64 %i.m, %n.vec161
  %xtraiter188 = and i64 %i.m, 7                  ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge170.i
  %.0159171.i = phi i64 [ %i.bw, %._crit_edge170.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.bk = add i64 %i.bb, %.0159171.i
  %i.bl = shl i64 %i.bk, 1
  %scevgep134 = getelementptr i8, ptr %i.av, i64 %i.bl
  %i.bm = mul i64 %i.w, %.0159171.i
  %scevgep135 = getelementptr i8, ptr %i.bg, i64 %i.bm
  %invariant.gep166.i = getelementptr [2 x i8], ptr %i.av, i64 %.0159171.i ; 2 uses
  %i.bn = mul i64 %.0159171.i, %i.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bn ; 2 uses
  %bound0136 = icmp ult ptr %invariant.gep166.i, %scevgep135
  %bound1137 = icmp ult ptr %i.bo, %scevgep134
  %found.conflict138 = and i1 %bound0136, %bound1137
  %i.bp = or i1 %found.conflict138, %i.bi
  br label %iter.check156

._crit_edge172.split.i:                           ; preds = %._crit_edge170.i, %.preheader.lr.ph.split.i, %bb.k
  %sext.i = shl i64 %i.al, 32
  %i.bq = ashr exact i64 %sext.i, 31              ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.av, i64 %i.bq
  %i.bs = icmp sgt i64 %i.aa, 0
end_hunk_3
