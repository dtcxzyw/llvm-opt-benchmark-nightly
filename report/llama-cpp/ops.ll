Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 261
begin_hunk_0_@_ZL29ggml_compute_forward_rope_fltItEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
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

bb.y:                                             ; preds = %bb.w
  %i.cd = icmp eq i32 %i.y, 0
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6158, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.106) #17
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.v
  %.not251 = icmp eq ptr %i.g, null
  br i1 %.not251, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !29
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6163, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.107) #17
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.ci = ashr exact i32 %i.l, 1
  %i.cj = sext i32 %i.ci to i64
  %.not252 = icmp slt i64 %i.ch, %i.cj
  br i1 %.not252, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6164, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108) #17
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.0229 = phi ptr [ %i.cl, %bb.af ], [ null, %bb.aa ] ; 6 uses
  %i.cm = select i1 %2, float 1.000000e+00, float -1.000000e+00 ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !36
  %i.cp = icmp sgt i64 %i.ao, 0
  br i1 %i.cp, label %.preheader297.lr.ph, label %._crit_edge.split

.preheader297.lr.ph:                              ; preds = %bb.ag
  %i.cq = icmp sgt i64 %i.am, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = add i64 %i.ai, 16
  %i.ct = sext i32 %i.az to i64
  %i.cu = mul i64 %i.cs, %i.ct
  %.idx = shl i64 %i.am, 3
  %.idx255 = mul i64 %i.am, 12
  %i.cv = add nsw i32 %.sroa.8.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.cw = add nsw i32 %i.cv, %.sroa.11.0.copyload ; 3 uses
  %i.cx = add nsw i32 %i.cw, %.sroa.15.0.copyload
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %.not.i256 = icmp slt i64 %i.ai, %i.cy
  %i.cz = icmp sgt i64 %i.ai, 0                   ; 3 uses
  %.not98.i = icmp eq ptr %.0229, null            ; 3 uses
  %i.da = fcmp une float %.0.copyload154, 0.000000e+00 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.dc = fdiv float 1.000000e+00, %.0.copyload157 ; 3 uses
  %i.dd = mul nsw i32 %.sroa.0.0.copyload, 3
  %i.de = mul nsw i32 %.sroa.11.0.copyload, 3
  %i.df = mul nsw i32 %.sroa.8.0.copyload, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.di = ashr exact i32 %i.l, 1
  %i.dj = sext i32 %i.di to i64                   ; 6 uses
  %i.dk = zext nneg i32 %i.y to i64               ; 7 uses
  %i.dl = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.dm = icmp sgt i64 %i.ak, 0
  %or.cond363 = select i1 %i.cq, i1 %i.dm, i1 false
  br i1 %or.cond363, label %.preheader297.us.preheader, label %._crit_edge.split

.preheader297.us.preheader:                       ; preds = %.preheader297.lr.ph
  %i.dn = add nsw i32 %i.l, -2
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %i.ai, 1
  %i.dq = trunc i64 %i.ak to i32
  %brmerge = select i1 %i.bx, i1 true, i1 %i.dp
  %i.dr = add nsw i64 %i.dk, %i.do
  %i.ds = add nsw i64 %i.be, %i.dk
  %i.dt = shl nsw i64 %i.ds, 1                    ; 2 uses
  %i.du = shl nsw i64 %i.dj, 1                    ; 2 uses
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
  %lcmp.mod451 = trunc i64 %i.eb to i1
  %i.ek = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.cm, i64 1
  %xtraiter452 = and i64 %i.eb, 3                 ; 3 uses
  %i.em = icmp ult i64 %i.ai, 7
  %unroll_iter455 = and i64 %i.eb, -4
  %i.en = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.cm, i64 1
  %i.ep = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.cm, i64 1
  %i.er = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.cm, i64 1
  %i.et = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.cm, i64 1
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  %lcmp.mod454 = icmp ne i64 %xtraiter452, 0
  %i.ev = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.cm, i64 1
  %i.ex = add nsw i64 %i.ai, -1
  %i.ey = lshr i64 %i.ex, 1
  %i.ez = add nuw i64 %i.ey, 1                    ; 2 uses
  %min.iters.check416 = icmp ult i64 %i.ai, 15
  %i.fa = add nsw i64 %i.dy, -1
  %diff.check418 = icmp ult i64 %i.fa, 15
  %n.vec426 = and i64 %i.ez, -8                   ; 3 uses
  %i.fb = shl i64 %n.vec426, 1
  %cmp.n440 = icmp eq i64 %i.ez, %n.vec426
  %i.fc = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fd = lshr exact i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 2 uses
  %min.iters.check384 = icmp ult i64 %i.fc, 14
  %diff.check = icmp ult i64 %i.du, 16
  %n.vec392 = and i64 %i.fe, -8                   ; 3 uses
  %i.ff = shl i64 %n.vec392, 1
  %cmp.n405 = icmp eq i64 %i.fe, %n.vec392
  %i.fg = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 1
  %i.fi = add nuw i64 %i.fh, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 14
  %n.vec = and i64 %i.fi, -8                      ; 3 uses
  %i.fj = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br label %.preheader297.us

.preheader297.us:                                 ; preds = %.preheader297.us.preheader, %._crit_edge319.split.us.us
  %.0226327.us = phi i64 [ %i.adr, %._crit_edge319.split.us.us ], [ 0, %.preheader297.us.preheader ] ; 7 uses
  %.0227326.us = phi i64 [ %.2.lcssa.us.us, %._crit_edge319.split.us.us ], [ -1, %.preheader297.us.preheader ]
  %.0230325.us = phi i32 [ %.lcssa, %._crit_edge319.split.us.us ], [ 0, %.preheader297.us.preheader ]
  %i.fk = mul i64 %i.dv, %.0226327.us             ; 3 uses
  %i.fl = add i64 %i.dy, %i.fk
  %i.fm = sub i64 %i.fk, %i.ec
  %i.fn = mul i64 %i.dv, %.0226327.us             ; 3 uses
  %i.fo = add i64 %i.du, %i.fn
  %i.fp = sub i64 %i.fn, %i.ed
  %i.fq = mul i64 %i.ag, %.0226327.us
  %i.fr = mul i64 %i.aw, %.0226327.us
  %i.fs = mul i64 %.0226327.us, %i.ag
  %i.ft = mul i64 %.0226327.us, %i.aw
  br label %.preheader296.us.us

.preheader296.us.us:                              ; preds = %._crit_edge.us.us, %.preheader297.us
  %.0225318.us.us = phi i64 [ 0, %.preheader297.us ], [ %i.adq, %._crit_edge.us.us ] ; 14 uses
  %.1228317.us.us = phi i64 [ %.0227326.us, %.preheader297.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ]
  %.1231316.us.us = phi i32 [ %.0230325.us, %.preheader297.us ], [ %.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.fu = mul i64 %i.dw, %.0225318.us.us          ; 3 uses
  %i.fv = add i64 %i.fl, %i.fu
  %i.fw = add i64 %i.fm, %i.fu
  %i.fx = add i64 %i.fk, %i.fu
  %i.fy = mul i64 %i.dw, %.0225318.us.us          ; 3 uses
  %i.fz = add i64 %i.fo, %i.fy
  %i.ga = add i64 %i.fp, %i.fy
  %i.gb = add i64 %i.fn, %i.fy
  %i.gc = mul i64 %i.ae, %.0225318.us.us
  %i.gd = mul i64 %i.au, %.0225318.us.us
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0225318.us.us ; 4 uses
  %i.gf = getelementptr [4 x i8], ptr %i.ge, i64 %i.am
  %i.gg = getelementptr i8, ptr %i.ge, i64 %.idx
  %i.gh = getelementptr i8, ptr %i.ge, i64 %.idx255
  %i.gi = mul i64 %.0225318.us.us, %i.ae
  %i.gj = mul i64 %.0225318.us.us, %i.au
  %i.gk = add i32 %.1231316.us.us, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, %.preheader296.us.us
  %.0224310.us.us = phi i64 [ 0, %.preheader296.us.us ], [ %i.adp, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 5 uses
  %.2309.us.us = phi i64 [ %.1228317.us.us, %.preheader296.us.us ], [ %.4.us.us, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %.2232308.us.us = phi i32 [ %.1231316.us.us, %.preheader296.us.us ], [ %i.gl, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %i.gl = add nsw i32 %.2232308.us.us, 1          ; 2 uses
  %i.gm = icmp slt i32 %.2232308.us.us, %i.bp
  br i1 %i.gm, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not253.us.us = icmp slt i32 %.2232308.us.us, %i.br
  br i1 %.not253.us.us, label %bb.aj, label %._crit_edge.us.us

bb.aj:                                            ; preds = %bb.ai
  %i.gn = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.cu ; 17 uses
  %.not254.us.us = icmp eq i64 %.2309.us.us, %.0225318.us.us
  br i1 %.not254.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gp = load i32, ptr %i.ge, align 4, !tbaa !50 ; 2 uses
  br i1 %.not250, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gq = load i32, ptr %i.gf, align 4, !tbaa !50
  %i.gr = load i32, ptr %i.gg, align 4, !tbaa !50
  %i.gs = load i32, ptr %i.gh, align 4, !tbaa !50
  %i.gt = sitofp i32 %i.gp to float               ; 2 uses
  %i.gu = sitofp i32 %i.gq to float               ; 2 uses
  %i.gv = sitofp i32 %i.gr to float               ; 2 uses
  %i.gw = sitofp i32 %i.gs to float               ; 2 uses
  br i1 %.not.i256, label %.split.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.al
  br i1 %i.cz, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i257.us.us:                                ; preds = %.preheader.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us
  %.085107.i.us.us = phi i64 [ %i.iw, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ 0, %.preheader.i.us.us ] ; 4 uses
  %.086106.i.us.us = phi float [ %i.iv, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.gw, %.preheader.i.us.us ] ; 10 uses
  %.087105.i.us.us = phi float [ %i.it, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.gv, %.preheader.i.us.us ] ; 9 uses
  %.089104.i.us.us = phi float [ %i.iu, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.gu, %.preheader.i.us.us ] ; 9 uses
  %.091103.i.us.us = phi float [ %i.is, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.gt, %.preheader.i.us.us ] ; 9 uses
  %.pre110.i.us.us = lshr exact i64 %.085107.i.us.us, 1 ; 2 uses
  br i1 %.not98.i, label %._crit_edge109.i.us.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i257.us.us
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %.pre110.i.us.us
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !42
  br label %._crit_edge109.i.us.us

._crit_edge109.i.us.us:                           ; preds = %bb.am, %.lr.ph.i257.us.us
  %i.gz = phi float [ %i.gy, %bb.am ], [ 1.000000e+00, %.lr.ph.i257.us.us ]
  %i.ha = srem i64 %.pre110.i.us.us, %i.cy        ; 2 uses
  %i.hb = trunc nuw nsw i64 %i.ha to i32          ; 10 uses
  br i1 %i.bx, label %bb.at, label %bb.an

bb.an:                                            ; preds = %._crit_edge109.i.us.us
  br i1 %i.bv, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.hc = urem i32 %i.hb, 3
  switch i32 %i.hc, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hd = icmp sgt i32 %i.dd, %i.hb
  br i1 %i.hd, label %bb.az, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.he = icmp sgt i32 %i.de, %i.hb
  br i1 %i.he, label %bb.az, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hf = icmp sgt i32 %i.df, %i.hb
  br i1 %i.hf, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br label %bb.az

bb.at:                                            ; preds = %._crit_edge109.i.us.us
  %i.hg = icmp eq i64 %i.ha, 0
  br i1 %i.hg, label %.thread.us.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hh = icmp eq i32 %.sroa.0.0.copyload, %i.hb
  br i1 %i.hh, label %.thread.us.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hi = icmp eq i32 %i.cv, %i.hb
  br i1 %i.hi, label %.thread.us.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hj = icmp eq i32 %i.cw, %i.hb
  %spec.select.i.us.us = select i1 %i.hj, float %i.gw, float %.086106.i.us.us
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.an
  %.1.i288.us.us = phi float [ %.086106.i.us.us, %bb.an ], [ %spec.select.i.us.us, %bb.aw ], [ %.086106.i.us.us, %bb.av ], [ %.086106.i.us.us, %bb.au ], [ %.086106.i.us.us, %bb.at ] ; 5 uses
  %.188.i286.us.us = phi float [ %.087105.i.us.us, %bb.an ], [ %.087105.i.us.us, %bb.aw ], [ %i.gv, %bb.av ], [ %.087105.i.us.us, %bb.au ], [ %.087105.i.us.us, %bb.at ] ; 4 uses
  %.190.i285.us.us = phi float [ %.089104.i.us.us, %bb.an ], [ %.089104.i.us.us, %bb.aw ], [ %.089104.i.us.us, %bb.av ], [ %i.gu, %bb.au ], [ %.089104.i.us.us, %bb.at ] ; 4 uses
  %.192.i283.us.us = phi float [ %.091103.i.us.us, %bb.an ], [ %.091103.i.us.us, %bb.aw ], [ %.091103.i.us.us, %bb.av ], [ %.091103.i.us.us, %bb.au ], [ %i.gt, %bb.at ] ; 4 uses
  %.not99.i.us.us = icmp sle i32 %.sroa.0.0.copyload, %i.hb
  %i.hk = icmp sgt i32 %i.cv, %i.hb               ; 2 uses
  %or.cond.i.us.us = and i1 %i.hk, %.not99.i.us.us
  br i1 %or.cond.i.us.us, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread.us.us
  %i.hl = icmp sgt i32 %i.cw, %i.hb               ; 2 uses
  br i1 %i.hk, label %._crit_edge108.i.us.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %spec.select122.i.us.us = select i1 %i.hl, float %.188.i286.us.us, float %.1.i288.us.us
  br label %bb.az

._crit_edge108.i.us.us:                           ; preds = %bb.ax
  %i.hm = select i1 %i.hl, float %.192.i283.us.us, float %.1.i288.us.us
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge108.i.us.us, %bb.ay, %.thread.us.us, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.i289.us.us = phi float [ %.1.i288.us.us, %bb.ay ], [ %.086106.i.us.us, %bb.ar ], [ %.086106.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.086106.i.us.us, %bb.ap ], [ %.1.i288.us.us, %.thread.us.us ], [ %.1.i288.us.us, %._crit_edge108.i.us.us ]
  %.188.i287.us.us = phi float [ %.188.i286.us.us, %bb.ay ], [ %.087105.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.087105.i.us.us, %bb.as ], [ %.087105.i.us.us, %bb.ap ], [ %.188.i286.us.us, %.thread.us.us ], [ %.188.i286.us.us, %._crit_edge108.i.us.us ]
  %.190.i284.us.us = phi float [ %.190.i285.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.089104.i.us.us, %bb.aq ], [ %.089104.i.us.us, %bb.as ], [ %.089104.i.us.us, %bb.ap ], [ %.190.i285.us.us, %.thread.us.us ], [ %.190.i285.us.us, %._crit_edge108.i.us.us ]
  %.192.i282.us.us = phi float [ %.192.i283.us.us, %bb.ay ], [ %.091103.i.us.us, %bb.ar ], [ %.091103.i.us.us, %bb.aq ], [ %.091103.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.192.i283.us.us, %.thread.us.us ], [ %.192.i283.us.us, %._crit_edge108.i.us.us ]
  %.0.i.us.us = phi float [ %spec.select122.i.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.190.i285.us.us, %.thread.us.us ], [ %i.hm, %._crit_edge108.i.us.us ]
  %i.hn = fdiv float %.0.i.us.us, %i.gz           ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.085107.i.us.us ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = fmul float %.0.copyload157, %i.hn       ; 2 uses
  br i1 %i.da, label %bb.ba, label %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us

bb.ba:                                            ; preds = %bb.az
  %i.hr = load float, ptr %i.a, align 4, !tbaa !42 ; 2 uses
  %i.hs = load float, ptr %i.db, align 4, !tbaa !42
  %i.ht = trunc i64 %.085107.i.us.us to i32
  %i.hu = ashr exact i32 %i.ht, 1
  %i.hv = sitofp i32 %i.hu to float
  %i.hw = fsub float %i.hv, %i.hr
  %i.hx = fsub float %i.hs, %i.hr                 ; 2 uses
  %i.hy = fcmp olt float %i.hx, 1.000000e-03
  %i.hz = select i1 %i.hy, float 1.000000e-03, float %i.hx
  %i.ia = fdiv float %i.hw, %i.hz                 ; 2 uses
  %i.ib = fcmp olt float %i.ia, 0.000000e+00
  %i.ic = select i1 %i.ib, float 0.000000e+00, float %i.ia ; 2 uses
  %i.id = fcmp ogt float %i.ic, 1.000000e+00
  %i.ie = select i1 %i.id, float 1.000000e+00, float %i.ic
  %i.if = fsub float 1.000000e+00, %i.ie
  %i.ig = fmul float %.0.copyload154, %i.if       ; 2 uses
  %i.ih = fsub float 1.000000e+00, %i.ig
  %i.ii = fmul float %i.hn, %i.ig
  %i.ij = call float @llvm.fmuladd.f32(float %i.hq, float %i.ih, float %i.ii)
  %i.ik = call float @logf(float noundef %i.dc) #18
  %i.il = call float @llvm.fmuladd.f32(float %i.ik, float 1.000000e-01, float 1.000000e+00)
  %i.im = fmul float %.0.copyload151, %i.il
  br label %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us

_ZL9rope_yarnffPflffS_S_.exit.i258.us.us:         ; preds = %bb.ba, %bb.az
  %.019.i.i.us.us = phi float [ %i.ij, %bb.ba ], [ %i.hq, %bb.az ] ; 2 uses
  %.0.i.i.us.us = phi float [ %i.im, %bb.ba ], [ %.0.copyload151, %bb.az ] ; 2 uses
  %i.in = call float @cosf(float noundef %.019.i.i.us.us) #18
  %i.io = fmul float %.0.i.i.us.us, %i.in
  store float %i.io, ptr %i.ho, align 4, !tbaa !42
  %i.ip = call float @sinf(float noundef %.019.i.i.us.us) #18
  %i.iq = fmul float %.0.i.i.us.us, %i.ip
  %i.ir = fmul float %i.cm, %i.iq
  store float %i.ir, ptr %i.hp, align 4, !tbaa !42
  %i.is = fmul float %i.bu, %.192.i282.us.us
  %i.it = fmul float %i.bu, %.188.i287.us.us
  %i.iu = fmul float %i.bu, %.190.i284.us.us
  %i.iv = fmul float %i.bu, %.1.i289.us.us
  %i.iw = add nuw nsw i64 %.085107.i.us.us, 2     ; 2 uses
  %i.ix = icmp slt i64 %i.iw, %i.ai
  br i1 %i.ix, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, !llvm.loop !4

bb.bb:                                            ; preds = %bb.ak
  %i.iy = sitofp i32 %i.gp to float               ; 6 uses
  br i1 %i.cz, label %.lr.ph.i.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.bb
  br i1 %i.da, label %.lr.ph.split.us.i.us.us, label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %.lr.ph.i.us.us
  br i1 %.not98.i, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader

_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader:  ; preds = %.lr.ph.split.i.us.us
  br i1 %i.ee, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader: ; preds = %.lr.ph.split.i.us.us
end_hunk_0
begin_hunk_1_@_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !30 ; 4 uses
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
  %i.az = load i32, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !35 ; 2 uses
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

bb.y:                                             ; preds = %bb.w
  %i.cd = icmp eq i32 %i.y, 0
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6158, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.106) #17
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.v
  %.not251 = icmp eq ptr %i.g, null
  br i1 %.not251, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !29
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6163, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.107) #17
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.ci = ashr exact i32 %i.l, 1
  %i.cj = sext i32 %i.ci to i64
  %.not252 = icmp slt i64 %i.ch, %i.cj
  br i1 %.not252, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6164, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108) #17
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.0229 = phi ptr [ %i.cl, %bb.af ], [ null, %bb.aa ] ; 6 uses
  %i.cm = select i1 %2, float 1.000000e+00, float -1.000000e+00 ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !36
  %i.cp = icmp sgt i64 %i.ao, 0
  br i1 %i.cp, label %.preheader293.lr.ph, label %._crit_edge.split

.preheader293.lr.ph:                              ; preds = %bb.ag
  %i.cq = icmp sgt i64 %i.am, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = add i64 %i.ai, 16                       ; 4 uses
  %i.ct = sext i32 %i.az to i64                   ; 4 uses
  %i.cu = mul i64 %i.cs, %i.ct
  %.idx = shl i64 %i.am, 3
  %.idx255 = mul i64 %i.am, 12
  %i.cv = add nsw i32 %.sroa.8.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.cw = add nsw i32 %i.cv, %.sroa.11.0.copyload ; 3 uses
  %i.cx = add nsw i32 %i.cw, %.sroa.15.0.copyload
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %.not.i256 = icmp slt i64 %i.ai, %i.cy
  %i.cz = icmp sgt i64 %i.ai, 0                   ; 3 uses
  %.not98.i = icmp eq ptr %.0229, null            ; 3 uses
  %i.da = fcmp une float %.0.copyload154, 0.000000e+00 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.dc = fdiv float 1.000000e+00, %.0.copyload157 ; 3 uses
  %i.dd = mul nsw i32 %.sroa.0.0.copyload, 3
  %i.de = mul nsw i32 %.sroa.11.0.copyload, 3
  %i.df = mul nsw i32 %.sroa.8.0.copyload, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.di = ashr exact i32 %i.l, 1
  %i.dj = sext i32 %i.di to i64                   ; 5 uses
  %i.dk = zext nneg i32 %i.y to i64               ; 8 uses
  %i.dl = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.dm = icmp sgt i64 %i.ak, 0
  %or.cond359 = select i1 %i.cq, i1 %i.dm, i1 false
  br i1 %or.cond359, label %.preheader293.us.preheader, label %._crit_edge.split

.preheader293.us.preheader:                       ; preds = %.preheader293.lr.ph
  %i.dn = add nsw i32 %i.l, -2
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %i.ai, 1
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
  %i.dz = shl nsw i64 %i.dj, 2                    ; 2 uses
  %i.ea = add nsw i64 %i.dy, %i.dz
  %3 = shl nuw nsw i64 %i.dk, 2                   ; 3 uses
  %4 = add nsw i64 %i.ea, %3
  %i.eb = add nsw i64 %4, 4                       ; 2 uses
  %i.ec = add nsw i64 %i.dz, %3                   ; 2 uses
  %i.ed = add nsw i64 %i.dy, %3
  %i.ee = add nsw i64 %i.ed, 4                    ; 2 uses
  %i.ef = mul i64 %i.cs, %i.ct
  %i.eg = add i64 %i.ef, %i.dx
  %i.eh = shl i64 %i.eg, 2
  %i.ei = add i64 %i.ai, -1
  %i.ej = lshr i64 %i.ei, 1                       ; 2 uses
  %i.ek = shl i64 %i.ej, 2                        ; 2 uses
  %5 = shl nsw i64 %i.be, 2                       ; 3 uses
  %6 = add i64 %i.ek, %5
  %i.el = add i64 %6, 4                           ; 2 uses
  %i.em = add i64 %i.ek, 4                        ; 2 uses
  %i.en = mul i64 %i.cs, %i.ct
  %i.eo = shl i64 %i.en, 2
  %i.ep = shl i64 %i.ej, 3
  %i.eq = add i64 %i.ai, -1                       ; 2 uses
  %i.er = lshr i64 %i.eq, 1                       ; 2 uses
  %i.es = add nuw i64 %i.er, 1                    ; 4 uses
  %i.et = icmp eq i64 %i.er, 0
  %unroll_iter = and i64 %i.es, -2
  %i.eu = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.cm, i64 1
  %i.ew = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.cm, i64 1
  %i.ey = and i64 %i.eq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ey, 0
  %lcmp.mod542 = trunc i64 %i.es to i1
  %i.ez = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.cm, i64 1
  %xtraiter543 = and i64 %i.es, 3                 ; 3 uses
  %i.fb = icmp ult i64 %i.ai, 7
  %unroll_iter546 = and i64 %i.es, -4
  %i.fc = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.cm, i64 1
  %i.fe = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.cm, i64 1
  %i.fg = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.cm, i64 1
  %i.fi = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.cm, i64 1
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  %lcmp.mod545 = icmp ne i64 %xtraiter543, 0
  %i.fk = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.cm, i64 1
  %i.fm = add nsw i64 %i.ai, -1
  %i.fn = lshr i64 %i.fm, 1
  %i.fo = add nuw i64 %i.fn, 1                    ; 2 uses
  %min.iters.check489 = icmp ult i64 %i.ai, 31
  %n.vec519 = and i64 %i.fo, -8                   ; 3 uses
  %i.fp = shl i64 %n.vec519, 1
  %cmp.n529 = icmp eq i64 %i.fo, %n.vec519
  %i.fq = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fr = lshr exact i64 %i.fq, 1
  %i.fs = add nuw i64 %i.fr, 1                    ; 2 uses
  %min.iters.check413 = icmp ult i64 %i.fq, 30
  %n.vec443 = and i64 %i.fs, -8                   ; 3 uses
  %i.ft = shl i64 %n.vec443, 1
  %cmp.n452 = icmp eq i64 %i.fs, %n.vec443
  %i.fu = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fv = lshr exact i64 %i.fu, 1
  %i.fw = add nuw i64 %i.fv, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fu, 14
  %n.vec = and i64 %i.fw, -8                      ; 3 uses
  %i.fx = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br label %.preheader293.us

.preheader293.us:                                 ; preds = %.preheader293.us.preheader, %._crit_edge315.split.us.us
  %.0226323.us = phi i64 [ %i.wd, %._crit_edge315.split.us.us ], [ 0, %.preheader293.us.preheader ] ; 9 uses
  %.0227322.us = phi i64 [ %.2.lcssa.us.us, %._crit_edge315.split.us.us ], [ -1, %.preheader293.us.preheader ]
  %.0230321.us = phi i32 [ %.lcssa, %._crit_edge315.split.us.us ], [ 0, %.preheader293.us.preheader ]
  %i.fy = mul i64 %i.ag, %.0226323.us             ; 3 uses
  %i.fz = mul i64 %i.aw, %.0226323.us             ; 3 uses
  %i.ga = mul i64 %i.ag, %.0226323.us             ; 3 uses
  %i.gb = mul i64 %i.aw, %.0226323.us             ; 3 uses
  %i.gc = mul i64 %i.ag, %.0226323.us
  %i.gd = mul i64 %i.aw, %.0226323.us
  %i.ge = mul i64 %.0226323.us, %i.ag
  %i.gf = mul i64 %.0226323.us, %i.aw
  br label %.preheader292.us.us

.preheader292.us.us:                              ; preds = %._crit_edge.us.us, %.preheader293.us
  %.0225314.us.us = phi i64 [ 0, %.preheader293.us ], [ %i.wc, %._crit_edge.us.us ] ; 16 uses
  %.1228313.us.us = phi i64 [ %.0227322.us, %.preheader293.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ]
  %.1231312.us.us = phi i32 [ %.0230321.us, %.preheader293.us ], [ %.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.gg = mul i64 %i.ae, %.0225314.us.us          ; 3 uses
  %i.gh = mul i64 %i.au, %.0225314.us.us          ; 3 uses
  %i.gi = mul i64 %i.ae, %.0225314.us.us          ; 3 uses
  %i.gj = mul i64 %i.au, %.0225314.us.us          ; 3 uses
  %i.gk = mul i64 %i.ae, %.0225314.us.us
  %i.gl = mul i64 %i.au, %.0225314.us.us
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0225314.us.us ; 4 uses
  %i.gn = getelementptr [4 x i8], ptr %i.gm, i64 %i.am
  %i.go = getelementptr i8, ptr %i.gm, i64 %.idx
  %i.gp = getelementptr i8, ptr %i.gm, i64 %.idx255
  %i.gq = mul i64 %.0225314.us.us, %i.ae
  %i.gr = mul i64 %.0225314.us.us, %i.au
  %i.gs = add i32 %.1231312.us.us, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, %.preheader292.us.us
  %.0224306.us.us = phi i64 [ 0, %.preheader292.us.us ], [ %i.wb, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %.2305.us.us = phi i64 [ %.1228313.us.us, %.preheader292.us.us ], [ %.4.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %.2232304.us.us = phi i32 [ %.1231312.us.us, %.preheader292.us.us ], [ %i.gt, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %i.gt = add nsw i32 %.2232304.us.us, 1          ; 2 uses
  %i.gu = icmp slt i32 %.2232304.us.us, %i.bp
  br i1 %i.gu, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not253.us.us = icmp slt i32 %.2232304.us.us, %i.br
  br i1 %.not253.us.us, label %bb.aj, label %._crit_edge.us.us

bb.aj:                                            ; preds = %bb.ai
  %i.gv = load ptr, ptr %i.cr, align 8, !tbaa !47 ; 4 uses
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %i.cu ; 22 uses
  %.not254.us.us = icmp eq i64 %.2305.us.us, %.0225314.us.us
  br i1 %.not254.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gx = load i32, ptr %i.gm, align 4, !tbaa !50 ; 2 uses
  br i1 %.not250, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gy = load i32, ptr %i.gn, align 4, !tbaa !50
  %i.gz = load i32, ptr %i.go, align 4, !tbaa !50
  %i.ha = load i32, ptr %i.gp, align 4, !tbaa !50
  %i.hb = sitofp i32 %i.gx to float               ; 2 uses
  %i.hc = sitofp i32 %i.gy to float               ; 2 uses
  %i.hd = sitofp i32 %i.gz to float               ; 2 uses
  %i.he = sitofp i32 %i.ha to float               ; 2 uses
  br i1 %.not.i256, label %.split.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.al
  br i1 %i.cz, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i257.us.us:                                ; preds = %.preheader.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us
  %.085107.i.us.us = phi i64 [ %i.je, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ 0, %.preheader.i.us.us ] ; 4 uses
  %.086106.i.us.us = phi float [ %i.jd, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.he, %.preheader.i.us.us ] ; 10 uses
  %.087105.i.us.us = phi float [ %i.jb, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hd, %.preheader.i.us.us ] ; 9 uses
  %.089104.i.us.us = phi float [ %i.jc, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hc, %.preheader.i.us.us ] ; 9 uses
  %.091103.i.us.us = phi float [ %i.ja, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hb, %.preheader.i.us.us ] ; 9 uses
  %.pre110.i.us.us = lshr exact i64 %.085107.i.us.us, 1 ; 2 uses
  br i1 %.not98.i, label %._crit_edge109.i.us.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i257.us.us
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %.pre110.i.us.us
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !42
  br label %._crit_edge109.i.us.us

._crit_edge109.i.us.us:                           ; preds = %bb.am, %.lr.ph.i257.us.us
  %i.hh = phi float [ %i.hg, %bb.am ], [ 1.000000e+00, %.lr.ph.i257.us.us ]
  %i.hi = srem i64 %.pre110.i.us.us, %i.cy        ; 2 uses
  %i.hj = trunc nuw nsw i64 %i.hi to i32          ; 10 uses
  br i1 %i.bx, label %bb.at, label %bb.an

bb.an:                                            ; preds = %._crit_edge109.i.us.us
  br i1 %i.bv, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.hk = urem i32 %i.hj, 3
  switch i32 %i.hk, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hl = icmp sgt i32 %i.dd, %i.hj
  br i1 %i.hl, label %bb.az, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.hm = icmp sgt i32 %i.de, %i.hj
  br i1 %i.hm, label %bb.az, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hn = icmp sgt i32 %i.df, %i.hj
  br i1 %i.hn, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br label %bb.az

bb.at:                                            ; preds = %._crit_edge109.i.us.us
  %i.ho = icmp eq i64 %i.hi, 0
  br i1 %i.ho, label %.thread.us.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = icmp eq i32 %.sroa.0.0.copyload, %i.hj
  br i1 %i.hp, label %.thread.us.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hq = icmp eq i32 %i.cv, %i.hj
  br i1 %i.hq, label %.thread.us.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hr = icmp eq i32 %i.cw, %i.hj
  %spec.select.i.us.us = select i1 %i.hr, float %i.he, float %.086106.i.us.us
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.an
  %.1.i284.us.us = phi float [ %.086106.i.us.us, %bb.an ], [ %spec.select.i.us.us, %bb.aw ], [ %.086106.i.us.us, %bb.av ], [ %.086106.i.us.us, %bb.au ], [ %.086106.i.us.us, %bb.at ] ; 5 uses
  %.188.i282.us.us = phi float [ %.087105.i.us.us, %bb.an ], [ %.087105.i.us.us, %bb.aw ], [ %i.hd, %bb.av ], [ %.087105.i.us.us, %bb.au ], [ %.087105.i.us.us, %bb.at ] ; 4 uses
  %.190.i281.us.us = phi float [ %.089104.i.us.us, %bb.an ], [ %.089104.i.us.us, %bb.aw ], [ %.089104.i.us.us, %bb.av ], [ %i.hc, %bb.au ], [ %.089104.i.us.us, %bb.at ] ; 4 uses
  %.192.i279.us.us = phi float [ %.091103.i.us.us, %bb.an ], [ %.091103.i.us.us, %bb.aw ], [ %.091103.i.us.us, %bb.av ], [ %.091103.i.us.us, %bb.au ], [ %i.hb, %bb.at ] ; 4 uses
  %.not99.i.us.us = icmp sle i32 %.sroa.0.0.copyload, %i.hj
  %i.hs = icmp sgt i32 %i.cv, %i.hj               ; 2 uses
  %or.cond.i.us.us = and i1 %i.hs, %.not99.i.us.us
  br i1 %or.cond.i.us.us, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread.us.us
  %i.ht = icmp sgt i32 %i.cw, %i.hj               ; 2 uses
  br i1 %i.hs, label %._crit_edge108.i.us.us, label %bb.ay

end_hunk_1
begin_hunk_2_@_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = fmul float %.0.copyload157, %i.kr       ; 2 uses
  %i.kv = call float @cosf(float noundef %i.ku) #18
  %i.kw = call float @sinf(float noundef %i.ku) #18
  %i.kx = fmul float %.0.copyload151, %i.kw
  %i.ky = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.kz = insertelement <2 x float> %i.ky, float %i.kx, i64 1
  %i.la = fmul <2 x float> %i.ff, %i.kz
  store <2 x float> %i.la, ptr %i.kt, align 4, !tbaa !42
  %i.lb = fmul float %i.bu, %i.kr                 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.025.us26.i.us.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = fmul float %.0.copyload157, %i.lb       ; 2 uses
  %i.lf = call float @cosf(float noundef %i.le) #18
  %i.lg = call float @sinf(float noundef %i.le) #18
  %i.lh = fmul float %.0.copyload151, %i.lg
  %i.li = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.lh, i64 1
  %i.lk = fmul <2 x float> %i.fh, %i.lj
  store <2 x float> %i.lk, ptr %i.ld, align 4, !tbaa !42
  %i.ll = fmul float %i.bu, %i.lb                 ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.025.us26.i.us.us
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = fmul float %.0.copyload157, %i.ll       ; 2 uses
  %i.lp = call float @cosf(float noundef %i.lo) #18
  %i.lq = call float @sinf(float noundef %i.lo) #18
  %i.lr = fmul float %.0.copyload151, %i.lq
  %i.ls = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.lr, i64 1
  %i.lu = fmul <2 x float> %i.fj, %i.lt
  store <2 x float> %i.lu, ptr %i.ln, align 4, !tbaa !42
  %i.lv = fmul float %i.bu, %i.ll                 ; 2 uses
  %i.lw = add nuw nsw i64 %.025.us26.i.us.us, 8   ; 2 uses
  %niter547.next.3 = add i64 %niter547, 4         ; 2 uses
  %niter547.ncmp.3.not = icmp eq i64 %niter547.next.3, %unroll_iter546
  br i1 %niter547.ncmp.3.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us, !llvm.loop !5

.lr.ph.split.us.i.us.us:                          ; preds = %.lr.ph.i.us.us
  br i1 %.not98.i, label %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us, label %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us

_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us:         ; preds = %.lr.ph.split.us.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us
  %.025.us.i.us.us = phi i64 [ %i.ng, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us ], [ 0, %.lr.ph.split.us.i.us.us ] ; 4 uses
  %.02224.us.i.us.us = phi float [ %i.nf, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us ], [ %i.jg, %.lr.ph.split.us.i.us.us ] ; 2 uses
  %i.lx = lshr exact i64 %.025.us.i.us.us, 1
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.lx
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !42
  %i.ma = fdiv float %.02224.us.i.us.us, %i.lz    ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.025.us.i.us.us ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = fmul float %.0.copyload157, %i.ma
  %i.me = load float, ptr %i.a, align 4, !tbaa !42 ; 2 uses
  %i.mf = load float, ptr %i.db, align 4, !tbaa !42
  %i.mg = trunc i64 %.025.us.i.us.us to i32
  %i.mh = ashr exact i32 %i.mg, 1
  %i.mi = sitofp i32 %i.mh to float
  %i.mj = fsub float %i.mi, %i.me
  %i.mk = fsub float %i.mf, %i.me                 ; 2 uses
  %i.ml = fcmp olt float %i.mk, 1.000000e-03
  %i.mm = select i1 %i.ml, float 1.000000e-03, float %i.mk
  %i.mn = fdiv float %i.mj, %i.mm                 ; 2 uses
  %i.mo = fcmp olt float %i.mn, 0.000000e+00
  %i.mp = select i1 %i.mo, float 0.000000e+00, float %i.mn ; 2 uses
  %i.mq = fcmp ogt float %i.mp, 1.000000e+00
  %i.mr = select i1 %i.mq, float 1.000000e+00, float %i.mp
  %i.ms = fsub float 1.000000e+00, %i.mr
  %i.mt = fmul float %.0.copyload154, %i.ms       ; 2 uses
  %i.mu = fsub float 1.000000e+00, %i.mt
  %i.mv = fmul float %i.ma, %i.mt
  %i.mw = call float @llvm.fmuladd.f32(float %i.md, float %i.mu, float %i.mv) ; 2 uses
  %i.mx = call float @logf(float noundef %i.dc) #18
  %i.my = call float @llvm.fmuladd.f32(float %i.mx, float 1.000000e-01, float 1.000000e+00)
  %i.mz = fmul float %.0.copyload151, %i.my       ; 2 uses
  %i.na = call float @cosf(float noundef %i.mw) #18
  %i.nb = fmul float %i.na, %i.mz
  store float %i.nb, ptr %i.mb, align 4, !tbaa !42
  %i.nc = call float @sinf(float noundef %i.mw) #18
  %i.nd = fmul float %i.mz, %i.nc
  %i.ne = fmul float %i.cm, %i.nd
  store float %i.ne, ptr %i.mc, align 4, !tbaa !42
  %i.nf = fmul float %i.bu, %.02224.us.i.us.us
  %i.ng = add nuw nsw i64 %.025.us.i.us.us, 2     ; 2 uses
  %i.nh = icmp slt i64 %i.ng, %i.ai
  br i1 %i.nh, label %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, !llvm.loop !5

_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us:      ; preds = %.lr.ph.split.us.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us
  %.025.us.us.i.us.us = phi i64 [ %i.on, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us ], [ 0, %.lr.ph.split.us.i.us.us ] ; 3 uses
  %.02224.us.us.i.us.us = phi float [ %i.om, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us ], [ %i.jg, %.lr.ph.split.us.i.us.us ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.025.us.us.i.us.us ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nk = fmul float %.0.copyload157, %.02224.us.us.i.us.us
  %i.nl = load float, ptr %i.a, align 4, !tbaa !42 ; 2 uses
  %i.nm = load float, ptr %i.db, align 4, !tbaa !42
  %i.nn = trunc i64 %.025.us.us.i.us.us to i32
  %i.no = ashr exact i32 %i.nn, 1
  %i.np = sitofp i32 %i.no to float
  %i.nq = fsub float %i.np, %i.nl
  %i.nr = fsub float %i.nm, %i.nl                 ; 2 uses
  %i.ns = fcmp olt float %i.nr, 1.000000e-03
  %i.nt = select i1 %i.ns, float 1.000000e-03, float %i.nr
  %i.nu = fdiv float %i.nq, %i.nt                 ; 2 uses
  %i.nv = fcmp olt float %i.nu, 0.000000e+00
  %i.nw = select i1 %i.nv, float 0.000000e+00, float %i.nu ; 2 uses
  %i.nx = fcmp ogt float %i.nw, 1.000000e+00
  %i.ny = select i1 %i.nx, float 1.000000e+00, float %i.nw
  %i.nz = fsub float 1.000000e+00, %i.ny
  %i.oa = fmul float %.0.copyload154, %i.nz       ; 2 uses
  %i.ob = fsub float 1.000000e+00, %i.oa
  %i.oc = fmul float %.02224.us.us.i.us.us, %i.oa
  %i.od = call float @llvm.fmuladd.f32(float %i.nk, float %i.ob, float %i.oc) ; 2 uses
  %i.oe = call float @logf(float noundef %i.dc) #18
  %i.of = call float @llvm.fmuladd.f32(float %i.oe, float 1.000000e-01, float 1.000000e+00)
  %i.og = fmul float %.0.copyload151, %i.of       ; 2 uses
  %i.oh = call float @cosf(float noundef %i.od) #18
  %i.oi = fmul float %i.oh, %i.og
  store float %i.oi, ptr %i.ni, align 4, !tbaa !42
  %i.oj = call float @sinf(float noundef %i.od) #18
  %i.ok = fmul float %i.og, %i.oj
  %i.ol = fmul float %i.cm, %i.ok
  store float %i.ol, ptr %i.nj, align 4, !tbaa !42
  %i.om = fmul float %i.bu, %.02224.us.us.i.us.us
  %i.on = add nuw nsw i64 %.025.us.us.i.us.us, 2  ; 2 uses
  %i.oo = icmp slt i64 %i.on, %i.ai
  br i1 %i.oo, label %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, !llvm.loop !5

_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa: ; preds = %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us
  br i1 %lcmp.mod544.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader: ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader
  %.025.us26.i.us.us.epil.init = phi i64 [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ], [ %i.lw, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa ]
  %.02224.us27.i.us.us.epil.init = phi float [ %i.jg, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.preheader ], [ %i.lv, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod545)
  br label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil

_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil:  ; preds = %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader
  %.025.us26.i.us.us.epil = phi i64 [ %i.oy, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil ], [ %.025.us26.i.us.us.epil.init, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader ] ; 2 uses
  %.02224.us27.i.us.us.epil = phi float [ %i.ox, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil ], [ %.02224.us27.i.us.us.epil.init, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil ], [ 0, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil.preheader ]
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.025.us26.i.us.us.epil
  %i.oq = fmul float %.0.copyload157, %.02224.us27.i.us.us.epil ; 2 uses
  %i.or = call float @cosf(float noundef %i.oq) #18
  %i.os = call float @sinf(float noundef %i.oq) #18
  %i.ot = fmul float %.0.copyload151, %i.os
  %i.ou = insertelement <2 x float> poison, float %i.or, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.ot, i64 1
  %i.ow = fmul <2 x float> %i.fl, %i.ov
  store <2 x float> %i.ow, ptr %i.op, align 4, !tbaa !42
  %i.ox = fmul float %i.bu, %.02224.us27.i.us.us.epil
  %i.oy = add nuw nsw i64 %.025.us26.i.us.us.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter543
  br i1 %epil.iter.cmp.not, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil, !llvm.loop !924

_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa: ; preds = %_ZL9rope_yarnffPflffS_S_.exit.i.us.us
  br i1 %lcmp.mod.not.not, label %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader: ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader
  %.025.i.us.us.epil.init = phi i64 [ 0, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ], [ %i.ki, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa ] ; 2 uses
  %.02224.i.us.us.epil.init = phi float [ %i.jg, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.preheader ], [ %i.kh, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod542)
  %i.oz = lshr exact i64 %.025.i.us.us.epil.init, 1
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %i.oz
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !42
  %i.pc = fdiv float %.02224.i.us.us.epil.init, %i.pb
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.025.i.us.us.epil.init
  %i.pe = fmul float %.0.copyload157, %i.pc       ; 2 uses
  %i.pf = call float @cosf(float noundef %i.pe) #18
  %i.pg = call float @sinf(float noundef %i.pe) #18
  %i.ph = fmul float %.0.copyload151, %i.pg
  %i.pi = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pj = insertelement <2 x float> %i.pi, float %i.ph, i64 1
  %i.pk = fmul <2 x float> %i.fa, %i.pj
  store <2 x float> %i.pk, ptr %i.pd, align 4, !tbaa !42
  br label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us: ; preds = %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i.us.us.epil.preheader, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit540.unr-lcssa, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us.loopexit539.unr-lcssa, %_ZL9rope_yarnffPflffS_S_.exit.us28.i.us.us.epil, %_ZL9rope_yarnffPflffS_S_.exit.us.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.us.us.i.us.us, %bb.bb, %.preheader.i.us.us, %bb.aj
  %i.pl = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 8 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 %i.ge
  %i.pn = getelementptr i8, ptr %i.pm, i64 %i.gq
  %i.po = mul i64 %.0224306.us.us, %i.ac          ; 8 uses
  %i.pp = getelementptr i8, ptr %i.pn, i64 %i.po  ; 7 uses
  %i.pq = load ptr, ptr %i.dh, align 8, !tbaa !36 ; 8 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 %i.gf
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.gr
  %i.pt = mul i64 %.0224306.us.us, %i.as          ; 8 uses
  %i.pu = getelementptr i8, ptr %i.ps, i64 %i.pt  ; 9 uses
  switch i32 %i.n, label %.split319.us [
    i32 0, label %bb.be
    i32 2, label %bb.bd
    i32 8, label %bb.bd
    i32 40, label %bb.bd
    i32 24, label %bb.bc
  ]

bb.bc:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  br i1 %i.cz, label %.lr.ph.i263.us.us.preheader, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us

.lr.ph.i263.us.us.preheader:                      ; preds = %bb.bc
  br i1 %min.iters.check489, label %.lr.ph.i263.us.us.preheader536, label %vector.memcheck490

vector.memcheck490:                               ; preds = %.lr.ph.i263.us.us.preheader
  %i.pv = getelementptr i8, ptr %i.pq, i64 %i.em
  %i.pw = getelementptr i8, ptr %i.pv, i64 %i.fz
  %i.px = getelementptr i8, ptr %i.pw, i64 %i.gh
  %i.py = getelementptr i8, ptr %i.px, i64 %i.pt  ; 4 uses
  %i.pz = getelementptr i8, ptr %i.pq, i64 %5
  %i.qa = getelementptr i8, ptr %i.pz, i64 %i.fz
  %i.qb = getelementptr i8, ptr %i.qa, i64 %i.gh
  %i.qc = getelementptr i8, ptr %i.qb, i64 %i.pt  ; 4 uses
  %i.qd = getelementptr i8, ptr %i.pq, i64 %i.el
  %i.qe = getelementptr i8, ptr %i.qd, i64 %i.fz
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.gh
  %i.qg = getelementptr i8, ptr %i.qf, i64 %i.pt  ; 4 uses
  %i.qh = getelementptr i8, ptr %i.gv, i64 %i.eo
  %i.qi = getelementptr i8, ptr %i.qh, i64 %i.ep
  %i.qj = getelementptr i8, ptr %i.qi, i64 8      ; 2 uses
  %i.qk = getelementptr i8, ptr %i.pl, i64 %i.em
  %i.ql = getelementptr i8, ptr %i.qk, i64 %i.fy
  %i.qm = getelementptr i8, ptr %i.ql, i64 %i.gg
  %i.qn = getelementptr i8, ptr %i.qm, i64 %i.po  ; 2 uses
  %i.qo = getelementptr i8, ptr %i.pl, i64 %5
  %i.qp = getelementptr i8, ptr %i.qo, i64 %i.fy
  %i.qq = getelementptr i8, ptr %i.qp, i64 %i.gg
  %i.qr = getelementptr i8, ptr %i.qq, i64 %i.po  ; 2 uses
  %i.qs = getelementptr i8, ptr %i.pl, i64 %i.el
  %i.qt = getelementptr i8, ptr %i.qs, i64 %i.fy
  %i.qu = getelementptr i8, ptr %i.qt, i64 %i.gg
  %i.qv = getelementptr i8, ptr %i.qu, i64 %i.po  ; 2 uses
  %bound0491 = icmp ult ptr %i.pu, %i.qg
  %bound1492 = icmp ult ptr %i.qc, %i.py
  %found.conflict493 = and i1 %bound0491, %bound1492
  %bound0494 = icmp ult ptr %i.pu, %i.qj
  %bound1495 = icmp ult ptr %i.gw, %i.py
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %found.conflict493, %found.conflict496
  %bound0498 = icmp ult ptr %i.pu, %i.qn
  %bound1499 = icmp ult ptr %i.pp, %i.py
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  %bound0502 = icmp ult ptr %i.pu, %i.qv
  %bound1503 = icmp ult ptr %i.qr, %i.py
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx501, %found.conflict504
  %bound0506 = icmp ult ptr %i.qc, %i.qj
  %bound1507 = icmp ult ptr %i.gw, %i.qg
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %i.qc, %i.qn
  %bound1511 = icmp ult ptr %i.pp, %i.qg
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %i.qc, %i.qv
  %bound1515 = icmp ult ptr %i.qr, %i.qg
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  br i1 %conflict.rdx517, label %.lr.ph.i263.us.us.preheader536, label %vector.body520

vector.body520:                                   ; preds = %vector.memcheck490, %vector.body520
  %index521 = phi i64 [ %index.next527, %vector.body520 ], [ 0, %vector.memcheck490 ] ; 4 uses
  %.idx531 = shl nuw i64 %index521, 3
  %i.qw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx531
  %wide.vec522 = load <16 x float>, ptr %i.qw, align 4, !tbaa !42, !alias.scope !951 ; 2 uses
  %strided.vec523 = shufflevector <16 x float> %wide.vec522, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec524 = shufflevector <16 x float> %wide.vec522, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %index521 ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %index521 ; 2 uses
  %wide.load525 = load <8 x float>, ptr %i.qx, align 4, !tbaa !42, !alias.scope !952 ; 2 uses
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.be
  %wide.load526 = load <8 x float>, ptr %i.qz, align 4, !tbaa !42, !alias.scope !953 ; 2 uses
  %i.ra = fneg <8 x float> %strided.vec524
  %i.rb = fmul <8 x float> %wide.load526, %i.ra
  %i.rc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load525, <8 x float> %strided.vec523, <8 x float> %i.rb)
  store <8 x float> %i.rc, ptr %i.qy, align 4, !tbaa !42, !alias.scope !954, !noalias !955
  %i.rd = fmul <8 x float> %strided.vec523, %wide.load526
  %i.re = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load525, <8 x float> %strided.vec524, <8 x float> %i.rd)
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.qy, i64 %i.be
  store <8 x float> %i.re, ptr %i.rf, align 4, !tbaa !42, !alias.scope !956, !noalias !957
  %index.next527 = add nuw i64 %index521, 8       ; 2 uses
  %i.rg = icmp eq i64 %index.next527, %n.vec519
  br i1 %i.rg, label %middle.block528, label %vector.body520, !llvm.loop !931

middle.block528:                                  ; preds = %vector.body520
  br i1 %cmp.n529, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %.lr.ph.i263.us.us.preheader536

.lr.ph.i263.us.us.preheader536:                   ; preds = %vector.memcheck490, %.lr.ph.i263.us.us.preheader, %middle.block528
  %.026.i264.us.us.ph = phi i64 [ 0, %vector.memcheck490 ], [ 0, %.lr.ph.i263.us.us.preheader ], [ %i.fp, %middle.block528 ]
  br label %.lr.ph.i263.us.us

.lr.ph.i263.us.us:                                ; preds = %.lr.ph.i263.us.us.preheader536, %.lr.ph.i263.us.us
  %.026.i264.us.us = phi i64 [ %i.rx, %.lr.ph.i263.us.us ], [ %.026.i264.us.us.ph, %.lr.ph.i263.us.us.preheader536 ] ; 3 uses
  %i.rh = lshr exact i64 %.026.i264.us.us, 1      ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.026.i264.us.us ; 2 uses
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !42 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !42 ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.rh ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.rh ; 2 uses
  %i.ro = load float, ptr %i.rm, align 4, !tbaa !42 ; 2 uses
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.be
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !42 ; 2 uses
  %i.rr = fneg float %i.rl
  %i.rs = fmul float %i.rq, %i.rr
  %i.rt = call float @llvm.fmuladd.f32(float %i.ro, float %i.rj, float %i.rs)
  store float %i.rt, ptr %i.rn, align 4, !tbaa !42
  %i.ru = fmul float %i.rj, %i.rq
  %i.rv = call float @llvm.fmuladd.f32(float %i.ro, float %i.rl, float %i.ru)
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.be
  store float %i.rv, ptr %i.rw, align 4, !tbaa !42
  %i.rx = add nuw nsw i64 %.026.i264.us.us, 2     ; 2 uses
  %i.ry = icmp slt i64 %i.rx, %i.ai
  br i1 %i.ry, label %.lr.ph.i263.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, !llvm.loop !932

bb.bd:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  %i.rz = getelementptr [4 x i8], ptr %i.pp, i64 %i.dk ; 4 uses
  %i.sa = getelementptr [4 x i8], ptr %i.pu, i64 %i.dk ; 6 uses
  br i1 %i.dl, label %.lr.ph.i260.us.us.preheader, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us

.lr.ph.i260.us.us.preheader:                      ; preds = %bb.bd
  br i1 %min.iters.check413, label %.lr.ph.i260.us.us.preheader534, label %vector.memcheck414

vector.memcheck414:                               ; preds = %.lr.ph.i260.us.us.preheader
  %i.sb = getelementptr i8, ptr %i.pq, i64 %i.ee
  %i.sc = getelementptr i8, ptr %i.sb, i64 %i.gb
  %i.sd = getelementptr i8, ptr %i.sc, i64 %i.gj
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.pt  ; 4 uses
  %i.sf = getelementptr i8, ptr %i.pq, i64 %i.ec
  %i.sg = getelementptr i8, ptr %i.sf, i64 %i.gb
  %i.sh = getelementptr i8, ptr %i.sg, i64 %i.gj
  %i.si = getelementptr i8, ptr %i.sh, i64 %i.pt  ; 4 uses
  %i.sj = getelementptr i8, ptr %i.pq, i64 %i.eb
  %i.sk = getelementptr i8, ptr %i.sj, i64 %i.gb
  %i.sl = getelementptr i8, ptr %i.sk, i64 %i.gj
  %i.sm = getelementptr i8, ptr %i.sl, i64 %i.pt  ; 4 uses
  %i.sn = getelementptr i8, ptr %i.gv, i64 %i.eh
  %i.so = getelementptr i8, ptr %i.sn, i64 8      ; 2 uses
  %i.sp = getelementptr i8, ptr %i.pl, i64 %i.ee
  %i.sq = getelementptr i8, ptr %i.sp, i64 %i.ga
  %i.sr = getelementptr i8, ptr %i.sq, i64 %i.gi
  %i.ss = getelementptr i8, ptr %i.sr, i64 %i.po  ; 2 uses
  %i.st = getelementptr i8, ptr %i.pl, i64 %i.ec
  %i.su = getelementptr i8, ptr %i.st, i64 %i.ga
  %i.sv = getelementptr i8, ptr %i.su, i64 %i.gi
  %i.sw = getelementptr i8, ptr %i.sv, i64 %i.po  ; 2 uses
  %i.sx = getelementptr i8, ptr %i.pl, i64 %i.eb
  %i.sy = getelementptr i8, ptr %i.sx, i64 %i.ga
  %i.sz = getelementptr i8, ptr %i.sy, i64 %i.gi
  %i.ta = getelementptr i8, ptr %i.sz, i64 %i.po  ; 2 uses
  %bound0415 = icmp ult ptr %i.sa, %i.sm
  %bound1416 = icmp ult ptr %i.si, %i.se
  %found.conflict417 = and i1 %bound0415, %bound1416
  %bound0418 = icmp ult ptr %i.sa, %i.so
  %bound1419 = icmp ult ptr %i.gw, %i.se
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %found.conflict417, %found.conflict420
  %bound0422 = icmp ult ptr %i.sa, %i.ss
  %bound1423 = icmp ult ptr %i.rz, %i.se
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %i.sa, %i.ta
  %bound1427 = icmp ult ptr %i.sw, %i.se
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  %bound0430 = icmp ult ptr %i.si, %i.so
  %bound1431 = icmp ult ptr %i.gw, %i.sm
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %conflict.rdx429, %found.conflict432
  %bound0434 = icmp ult ptr %i.si, %i.ss
  %bound1435 = icmp ult ptr %i.rz, %i.sm
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx437 = or i1 %conflict.rdx433, %found.conflict436
  %bound0438 = icmp ult ptr %i.si, %i.ta
  %bound1439 = icmp ult ptr %i.sw, %i.sm
  %found.conflict440 = and i1 %bound0438, %bound1439
  %conflict.rdx441 = or i1 %conflict.rdx437, %found.conflict440
  br i1 %conflict.rdx441, label %.lr.ph.i260.us.us.preheader534, label %vector.body444

vector.body444:                                   ; preds = %vector.memcheck414, %vector.body444
  %index445 = phi i64 [ %index.next450, %vector.body444 ], [ 0, %vector.memcheck414 ] ; 4 uses
  %.idx532 = shl nuw i64 %index445, 3
  %i.tb = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx532
  %wide.vec446 = load <16 x float>, ptr %i.tb, align 4, !tbaa !42, !alias.scope !958 ; 2 uses
  %strided.vec447 = shufflevector <16 x float> %wide.vec446, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec448 = shufflevector <16 x float> %wide.vec446, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %index445 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %index445 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.tc, align 4, !tbaa !42, !alias.scope !959 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.dj
  %wide.load449 = load <8 x float>, ptr %i.te, align 4, !tbaa !42, !alias.scope !960 ; 2 uses
  %i.tf = fneg <8 x float> %strided.vec448
  %i.tg = fmul <8 x float> %wide.load449, %i.tf
  %i.th = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %strided.vec447, <8 x float> %i.tg)
  store <8 x float> %i.th, ptr %i.td, align 4, !tbaa !42, !alias.scope !961, !noalias !962
  %i.ti = fmul <8 x float> %strided.vec447, %wide.load449
  %i.tj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %strided.vec448, <8 x float> %i.ti)
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.dj
  store <8 x float> %i.tj, ptr %i.tk, align 4, !tbaa !42, !alias.scope !963, !noalias !964
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.tl, label %middle.block451, label %vector.body444, !llvm.loop !939

middle.block451:                                  ; preds = %vector.body444
  br i1 %cmp.n452, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, label %.lr.ph.i260.us.us.preheader534

.lr.ph.i260.us.us.preheader534:                   ; preds = %vector.memcheck414, %.lr.ph.i260.us.us.preheader, %middle.block451
  %.026.i261.us.us.ph = phi i64 [ 0, %vector.memcheck414 ], [ 0, %.lr.ph.i260.us.us.preheader ], [ %i.ft, %middle.block451 ]
  br label %.lr.ph.i260.us.us

.lr.ph.i260.us.us:                                ; preds = %.lr.ph.i260.us.us.preheader534, %.lr.ph.i260.us.us
  %.026.i261.us.us = phi i64 [ %i.uc, %.lr.ph.i260.us.us ], [ %.026.i261.us.us.ph, %.lr.ph.i260.us.us.preheader534 ] ; 3 uses
  %i.tm = lshr exact i64 %.026.i261.us.us, 1      ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.026.i261.us.us ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !42 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !42 ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.tm ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.tm ; 2 uses
  %i.tt = load float, ptr %i.tr, align 4, !tbaa !42 ; 2 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.dj
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !42 ; 2 uses
  %i.tw = fneg float %i.tq
  %i.tx = fmul float %i.tv, %i.tw
  %i.ty = call float @llvm.fmuladd.f32(float %i.tt, float %i.to, float %i.tx)
  store float %i.ty, ptr %i.ts, align 4, !tbaa !42
  %i.tz = fmul float %i.to, %i.tv
  %i.ua = call float @llvm.fmuladd.f32(float %i.tt, float %i.tq, float %i.tz)
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.dj
  store float %i.ua, ptr %i.ub, align 4, !tbaa !42
  %i.uc = add nuw nsw i64 %.026.i261.us.us, 2     ; 2 uses
  %i.ud = icmp slt i64 %i.uc, %i.be
  br i1 %i.ud, label %.lr.ph.i260.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, !llvm.loop !940

bb.be:                                            ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  %i.ue = getelementptr [4 x i8], ptr %i.pp, i64 %i.dk ; 3 uses
  %i.uf = getelementptr [4 x i8], ptr %i.pu, i64 %i.dk ; 4 uses
  br i1 %i.dl, label %.lr.ph.i259.us.us.preheader, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us

.lr.ph.i259.us.us.preheader:                      ; preds = %bb.be
  br i1 %min.iters.check, label %.lr.ph.i259.us.us.preheader533, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i259.us.us.preheader
  %i.ug = getelementptr i8, ptr %i.pq, i64 %i.dt
  %i.uh = getelementptr i8, ptr %i.ug, i64 %i.gd
  %i.ui = getelementptr i8, ptr %i.uh, i64 %i.gl
  %i.uj = getelementptr i8, ptr %i.ui, i64 %i.pt  ; 2 uses
  %i.uk = getelementptr i8, ptr %i.gv, i64 %i.dw
  %i.ul = getelementptr i8, ptr %i.pl, i64 %i.dt
  %i.um = getelementptr i8, ptr %i.ul, i64 %i.gc
  %i.un = getelementptr i8, ptr %i.um, i64 %i.gk
  %i.uo = getelementptr i8, ptr %i.un, i64 %i.po
  %bound0 = icmp ult ptr %i.uf, %i.uk
  %bound1 = icmp ult ptr %i.gw, %i.uj
  %found.conflict = and i1 %bound0, %bound1
  %bound0371 = icmp ult ptr %i.uf, %i.uo
  %bound1372 = icmp ult ptr %i.ue, %i.uj
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx = or i1 %found.conflict, %found.conflict373
  br i1 %conflict.rdx, label %.lr.ph.i259.us.us.preheader533, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.up = shl nuw i64 %index, 1                   ; 3 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.up
  %wide.vec = load <16 x float>, ptr %i.uq, align 4, !tbaa !42, !alias.scope !965 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec374 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.up
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.up
  %wide.vec375 = load <16 x float>, ptr %i.ur, align 4, !tbaa !42, !alias.scope !966 ; 2 uses
  %strided.vec376 = shufflevector <16 x float> %wide.vec375, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec377 = shufflevector <16 x float> %wide.vec375, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ut = fneg <8 x float> %strided.vec374
  %i.uu = fmul <8 x float> %strided.vec377, %i.ut
  %i.uv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec376, <8 x float> %strided.vec, <8 x float> %i.uu)
  %i.uw = fmul <8 x float> %strided.vec, %strided.vec377
  %i.ux = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec376, <8 x float> %strided.vec374, <8 x float> %i.uw)
  %interleaved.vec = shufflevector <8 x float> %i.uv, <8 x float> %i.ux, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.us, align 4, !tbaa !42, !alias.scope !967, !noalias !968
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.uy = icmp eq i64 %index.next, %n.vec
  br i1 %i.uy, label %middle.block, label %vector.body, !llvm.loop !945

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, label %.lr.ph.i259.us.us.preheader533

.lr.ph.i259.us.us.preheader533:                   ; preds = %vector.memcheck, %.lr.ph.i259.us.us.preheader, %middle.block
  %.026.i.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i259.us.us.preheader ], [ %i.fx, %middle.block ]
  br label %.lr.ph.i259.us.us

.lr.ph.i259.us.us:                                ; preds = %.lr.ph.i259.us.us.preheader533, %.lr.ph.i259.us.us
  %.026.i.us.us = phi i64 [ %i.vo, %.lr.ph.i259.us.us ], [ %.026.i.us.us.ph, %.lr.ph.i259.us.us.preheader533 ] ; 4 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.026.i.us.us ; 2 uses
  %i.va = load float, ptr %i.uz, align 4, !tbaa !42 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !42 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %.026.i.us.us ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %.026.i.us.us ; 2 uses
  %i.vf = load float, ptr %i.vd, align 4, !tbaa !42 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !42 ; 2 uses
  %i.vi = fneg float %i.vc
  %i.vj = fmul float %i.vh, %i.vi
  %i.vk = call float @llvm.fmuladd.f32(float %i.vf, float %i.va, float %i.vj)
  store float %i.vk, ptr %i.ve, align 4, !tbaa !42
  %i.vl = fmul float %i.va, %i.vh
  %i.vm = call float @llvm.fmuladd.f32(float %i.vf, float %i.vc, float %i.vl)
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  store float %i.vm, ptr %i.vn, align 4, !tbaa !42
  %i.vo = add nuw nsw i64 %.026.i.us.us, 2        ; 2 uses
  %i.vp = icmp slt i64 %i.vo, %i.be
  br i1 %i.vp, label %.lr.ph.i259.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, !llvm.loop !946

_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us:   ; preds = %.lr.ph.i260.us.us, %.lr.ph.i259.us.us, %middle.block451, %middle.block, %bb.be, %bb.bd
  br i1 %brmerge, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, %bb.bg
  %.0303.us.us = phi i64 [ %i.vz, %bb.bg ], [ 0, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us ] ; 4 uses
  %i.vq = icmp eq i64 %.0303.us.us, %i.dk
  br i1 %i.vq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.us.us
  %i.vr = shl i64 %.0303.us.us, 2
  %i.vs = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.vr ; 2 uses
  %i.vt = shl i64 %.0303.us.us, 2
  %i.vu = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.vt ; 2 uses
  %i.vv = load float, ptr %i.vs, align 4, !tbaa !42
  store float %i.vv, ptr %i.vu, align 4, !tbaa !42
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !42
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  store float %i.vx, ptr %i.vy, align 4, !tbaa !42
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.us.us, %bb.bf
  %.1.us.us = phi i64 [ %.0303.us.us, %bb.bf ], [ %i.dr, %.lr.ph.us.us ]
  %i.vz = add nsw i64 %.1.us.us, 2                ; 2 uses
  %i.wa = icmp slt i64 %i.vz, %i.ai
  br i1 %i.wa, label %.lr.ph.us.us, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, !llvm.loop !947

_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us: ; preds = %.lr.ph.i263.us.us, %bb.bg, %middle.block528, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us, %bb.bc, %bb.ah
  %.4.us.us = phi i64 [ %.2305.us.us, %bb.ah ], [ %.0225314.us.us, %bb.bc ], [ %.0225314.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.us.us ], [ %.0225314.us.us, %middle.block528 ], [ %.0225314.us.us, %bb.bg ], [ %.0225314.us.us, %.lr.ph.i263.us.us ] ; 2 uses
  %i.wb = add nuw nsw i64 %.0224306.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.wb, %i.ak
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.ah, !llvm.loop !948

._crit_edge.us.us:                                ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, %bb.ai
  %.lcssa = phi i32 [ %i.gs, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %i.gt, %bb.ai ] ; 2 uses
  %.2.lcssa.us.us = phi i64 [ %.4.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ], [ %.2305.us.us, %bb.ai ] ; 2 uses
  %i.wc = add nuw nsw i64 %.0225314.us.us, 1      ; 2 uses
  %exitcond336.not = icmp eq i64 %i.wc, %i.am
  br i1 %exitcond336.not, label %._crit_edge315.split.us.us, label %.preheader292.us.us, !llvm.loop !949

._crit_edge315.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.wd = add nuw nsw i64 %.0226323.us, 1         ; 2 uses
  %exitcond337.not = icmp eq i64 %i.wd, %i.ao
  br i1 %exitcond337.not, label %._crit_edge.split, label %.preheader293.us, !llvm.loop !950

default.unreachable:                              ; preds = %bb.ao
  unreachable

._crit_edge.split:                                ; preds = %._crit_edge315.split.us.us, %.preheader293.lr.ph, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.split.us:                                        ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6003, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110) #17
  unreachable

.split319.us:                                     ; preds = %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6218, ptr noundef nonnull @.str.109) #17
  unreachable
}

end_hunk_2
begin_hunk_3_@ggml_compute_forward_abs
declare void @ggml_compute_forward_abs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_sgn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_neg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_step(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_tanh(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_elu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_relu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_sigmoid(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_hardswish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_hardsigmoid(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_exp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_floor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_ceil(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_round(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_trunc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_xielu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_expm1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_compute_forward_softplus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @erff(float noundef) local_unnamed_addr #8

declare void @ggml_vec_silu_f32(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_glu(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ggml_get_glu_op(ptr noundef %1)
  switch i32 %i.a, label %bb.jd [
    i32 0, label %bb.b
    i32 1, label %bb.aw
    i32 2, label %bb.cl
    i32 3, label %bb.dy
    i32 4, label %bb.es
    i32 5, label %bb.ge
    i32 6, label %bb.hq
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 17 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  switch i32 %i.d, label %bb.av [
    i32 0, label %bb.c
    i32 1, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null              ; 4 uses
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %i.q = phi i64 [ %i.n, %bb.d ], [ %i.j, %.thread.i.i ] ; 4 uses
  %i.r = phi ptr [ %i.l, %bb.d ], [ %i.h, %.thread.i.i ] ; 3 uses
  %i.s = phi i64 [ %i.p, %bb.d ], [ %i.j, %.thread.i.i ] ; 4 uses
  %i.t = tail call zeroext i1 @ggml_is_contiguous_1(ptr noundef nonnull %i.c)
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2903, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.171) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = tail call zeroext i1 @ggml_is_contiguous_1(ptr noundef nonnull %1)
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2904, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.172) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call zeroext i1 @ggml_is_contiguous_1(ptr noundef nonnull %i.f)
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2907, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.173) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i32, ptr %i.c, align 8, !tbaa !29
  %i.x = load i32, ptr %i.f, align 8, !tbaa !29
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2908, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.174) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ad = sdiv i64 %i.ac, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = phi i64 [ %i.aa, %bb.n ], [ %i.ad, %bb.o ] ; 7 uses
  %i.af = load i32, ptr %0, align 8, !tbaa !34
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %.in.i.i, align 4, !tbaa !35 ; 2 uses
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = tail call i64 @ggml_nrows(ptr noundef nonnull %i.c) ; 2 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !30 ; 3 uses
  %sext.i.i = shl i64 %i.ae, 32
  %i.am = ashr exact i64 %sext.i.i, 32
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2917, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86) #17
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ao = tail call i64 @ggml_nrows(ptr noundef nonnull %1)
  %sext63.i.i = shl i64 %i.ai, 32
  %i.ap = ashr exact i64 %sext63.i.i, 32
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2918, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.175) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ar = add i32 %i.ag, -1
  %i.as = add i32 %i.ar, %i.aj
  %i.at = sdiv i32 %i.as, %i.ag                   ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.af                ; 3 uses
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.aj) ; 2 uses
  %i.ax = icmp slt i32 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZL26ggml_compute_forward_regluPK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !50
  %.not64.i.i = icmp ne i32 %i.az, 0              ; 2 uses
  %i.ba = select i1 %.not.i.i, i1 %.not64.i.i, i1 false
  %.060.idx.i.i = select i1 %i.ba, i64 %i.al, i64 0 ; 2 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.h, i64 %.060.idx.i.i
  %i.bb = xor i1 %.not64.i.i, true
  %i.bc = select i1 %.not.i.i, i1 %i.bb, i1 false
  %.0.idx.i.i = select i1 %i.bc, i64 %i.al, i64 0 ; 2 uses
  %invariant.gep69.i.i = getelementptr [4 x i8], ptr %i.r, i64 %.0.idx.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !30 ; 4 uses
  %i.bh = icmp sgt i32 %i.ah, 0
  %wide.trip.count.i.i.i = and i64 %i.ae, 2147483647 ; 7 uses
  br i1 %i.bh, label %.lr.ph.preheader.i.preheader.i.i, label %_ZL26ggml_compute_forward_regluPK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.preheader.i.preheader.i.i:                 ; preds = %.lr.ph.i.i
  %i.bi = sext i32 %i.au to i64                   ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.aw to i64    ; 2 uses
  %i.bj = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %i.bk = mul i64 %i.s, %i.bj
  %i.bl = shl i64 %.0.idx.i.i, 2                  ; 2 uses
  %i.bm = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 3 uses
  %i.bn = getelementptr i8, ptr %i.r, i64 %i.bk
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bm
  %i.bp = mul i64 %i.s, %i.bi
  %i.bq = getelementptr i8, ptr %i.r, i64 %i.bp
  %scevgep345 = getelementptr i8, ptr %i.bq, i64 %i.bl
  %i.br = mul i64 %i.q, %i.bj
  %i.bs = shl i64 %.060.idx.i.i, 2                ; 2 uses
  %i.bt = getelementptr i8, ptr %i.h, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs
  %scevgep346 = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bv = mul i64 %i.q, %i.bi
  %i.bw = getelementptr i8, ptr %i.h, i64 %i.bv
  %scevgep347 = getelementptr i8, ptr %i.bw, i64 %i.bs
  %i.bx = mul i64 %i.bg, %i.bj
  %i.by = getelementptr i8, ptr %i.be, i64 %i.bx
  %scevgep348 = getelementptr i8, ptr %i.by, i64 %i.bm ; 2 uses
  %i.bz = mul i64 %i.bg, %i.bi
  %scevgep349 = getelementptr i8, ptr %i.be, i64 %i.bz ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i.i, 8
  %bound0 = icmp ult ptr %scevgep349, %scevgep346
  %bound1 = icmp ult ptr %scevgep347, %scevgep348
  %found.conflict = and i1 %bound0, %bound1
  %i.ca = or i64 %i.q, %i.bg
  %i.cb = icmp slt i64 %i.ca, 0
  %i.cc = or i1 %found.conflict, %i.cb
  %bound0351 = icmp ult ptr %scevgep349, %scevgep
  %bound1352 = icmp ult ptr %scevgep345, %scevgep348
  %found.conflict353 = and i1 %bound0351, %bound1352
  %stride.check354 = icmp slt i64 %i.s, 0
  %i.cd = or i1 %found.conflict353, %stride.check354
  %conflict.rdx = or i1 %i.cc, %i.cd
  %min.iters.check355 = icmp samesign ult i64 %wide.trip.count.i.i.i, 32
  %i.ce = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i.i.i, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  %n.vec365 = and i64 %i.ae, 2147483640           ; 3 uses
  %cmp.n371 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec365
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, %.lr.ph.preheader.i.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bi, %.lr.ph.preheader.i.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i ] ; 4 uses
  %i.cf = mul i64 %indvars.iv.i.i, %i.q
  %i.cg = mul i64 %indvars.iv.i.i, %i.s
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.cf ; 7 uses
  %gep70.i.i = getelementptr i8, ptr %invariant.gep69.i.i, i64 %i.cg ; 7 uses
  %i.ch = mul i64 %indvars.iv.i.i, %i.bg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ch ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check355, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %index ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %wide.load = load <8 x float>, ptr %i.cj, align 4, !tbaa !42, !alias.scope !1699 ; 2 uses
  %wide.load356 = load <8 x float>, ptr %i.ck, align 4, !tbaa !42, !alias.scope !1699 ; 2 uses
  %wide.load357 = load <8 x float>, ptr %i.cl, align 4, !tbaa !42, !alias.scope !1699 ; 2 uses
  %wide.load358 = load <8 x float>, ptr %i.cm, align 4, !tbaa !42, !alias.scope !1699 ; 2 uses
  %i.cn = fcmp ogt <8 x float> %wide.load, zeroinitializer ; 2 uses
  %i.co = fcmp ogt <8 x float> %wide.load356, zeroinitializer ; 2 uses
  %i.cp = fcmp ogt <8 x float> %wide.load357, zeroinitializer ; 2 uses
  %i.cq = fcmp ogt <8 x float> %wide.load358, zeroinitializer ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %gep70.i.i, i64 %index ; 4 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 32
  %i.ct = getelementptr i8, ptr %i.cr, i64 64
  %i.cu = getelementptr i8, ptr %i.cr, i64 96
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.cr, <8 x i1> %i.cn, <8 x float> poison), !tbaa !42, !alias.scope !1700
  %wide.masked.load359 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.cs, <8 x i1> %i.co, <8 x float> poison), !tbaa !42, !alias.scope !1700
  %wide.masked.load360 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ct, <8 x i1> %i.cp, <8 x float> poison), !tbaa !42, !alias.scope !1700
  %wide.masked.load361 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.cu, <8 x i1> %i.cq, <8 x float> poison), !tbaa !42, !alias.scope !1700
  %i.cv = fmul <8 x float> %wide.load, %wide.masked.load
  %i.cw = fmul <8 x float> %wide.load356, %wide.masked.load359
  %i.cx = fmul <8 x float> %wide.load357, %wide.masked.load360
  %i.cy = fmul <8 x float> %wide.load358, %wide.masked.load361
  %predphi = select <8 x i1> %i.cn, <8 x float> %i.cv, <8 x float> zeroinitializer
  %predphi362 = select <8 x i1> %i.co, <8 x float> %i.cw, <8 x float> zeroinitializer
  %predphi363 = select <8 x i1> %i.cp, <8 x float> %i.cx, <8 x float> zeroinitializer
  %predphi364 = select <8 x i1> %i.cq, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  store <8 x float> %predphi, ptr %i.cz, align 4, !tbaa !42, !alias.scope !1701, !noalias !1702
  store <8 x float> %predphi362, ptr %i.da, align 4, !tbaa !42, !alias.scope !1701, !noalias !1702
  store <8 x float> %predphi363, ptr %i.db, align 4, !tbaa !42, !alias.scope !1701, !noalias !1702
  store <8 x float> %predphi364, ptr %i.dc, align 4, !tbaa !42, !alias.scope !1701, !noalias !1702
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !1671

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index366 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next370, %vec.epilog.vector.body ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %index366
  %wide.load367 = load <8 x float>, ptr %i.de, align 4, !tbaa !42, !alias.scope !1699 ; 2 uses
  %i.df = fcmp ogt <8 x float> %wide.load367, zeroinitializer ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %gep70.i.i, i64 %index366
  %wide.masked.load368 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.dg, <8 x i1> %i.df, <8 x float> poison), !tbaa !42, !alias.scope !1700
  %i.dh = fmul <8 x float> %wide.load367, %wide.masked.load368
  %predphi369 = select <8 x i1> %i.df, <8 x float> %i.dh, <8 x float> zeroinitializer
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index366
  store <8 x float> %predphi369, ptr %i.di, align 4, !tbaa !42, !alias.scope !1701, !noalias !1702
  %index.next370 = add nuw i64 %index366, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next370, %n.vec365
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1672

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n371, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec365, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %bb.v
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %bb.v ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.v ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.i.i.i.prol
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !42 ; 2 uses
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.i.i.i.prol
  %i.do = load float, ptr %i.dn, align 4, !tbaa !42
  %i.dp = fmul float %i.dl, %i.do
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.prol
  %i.dq = phi float [ %i.dp, %bb.u ], [ 0.000000e+00, %.lr.ph.i.i.i.prol ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i.prol
  store float %i.dq, ptr %i.dr, align 4, !tbaa !42
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1673

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %bb.v, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %bb.v ]
  %i.ds = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.aa
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %bb.aa ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.i.i.i
  %i.dv = load float, ptr %i.du, align 4, !tbaa !42 ; 2 uses
  %i.dw = fcmp ogt float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.w, label %.lr.ph.i.i.i.1

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.i.i.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !42
  %i.dz = fmul float %i.dv, %i.dy
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.w, %.lr.ph.i.i.i
  %i.ea = phi float [ %i.dz, %bb.w ], [ 0.000000e+00, %.lr.ph.i.i.i ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i
  store float %i.ea, ptr %i.eb, align 4, !tbaa !42
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.next.i.i.i
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !42 ; 2 uses
  %i.ee = fcmp ogt float %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.x, label %.lr.ph.i.i.i.2

bb.x:                                             ; preds = %.lr.ph.i.i.i.1
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.next.i.i.i
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !42
  %i.eh = fmul float %i.ed, %i.eg
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.x, %.lr.ph.i.i.i.1
  %i.ei = phi float [ %i.eh, %bb.x ], [ 0.000000e+00, %.lr.ph.i.i.i.1 ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i
  store float %i.ei, ptr %i.ej, align 4, !tbaa !42
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.el = load float, ptr %i.ek, align 4, !tbaa !42 ; 2 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.y, label %.lr.ph.i.i.i.3

bb.y:                                             ; preds = %.lr.ph.i.i.i.2
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.eo = load float, ptr %i.en, align 4, !tbaa !42
  %i.ep = fmul float %i.el, %i.eo
  br label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.y, %.lr.ph.i.i.i.2
  %i.eq = phi float [ %i.ep, %bb.y ], [ 0.000000e+00, %.lr.ph.i.i.i.2 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i.1
  store float %i.eq, ptr %i.er, align 4, !tbaa !42
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %gep.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.et = load float, ptr %i.es, align 4, !tbaa !42 ; 2 uses
  %i.eu = fcmp ogt float %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i.3
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %gep70.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !42
  %i.ex = fmul float %i.et, %i.ew
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.i.3
  %i.ey = phi float [ %i.ex, %bb.z ], [ 0.000000e+00, %.lr.ph.i.i.i.3 ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i.i.2
  store float %i.ey, ptr %i.ez, align 4, !tbaa !42
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1674

_ZL18ggml_vec_reglu_f32iPfPKfS1_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.aa, %vec.epilog.middle.block, %middle.block
end_hunk_3
begin_hunk_4_@llvm.fmuladd.v16f32
!755 = !{!735}
!756 = !{!733, !734, !735}
!757 = distinct !{!757, !37}
!758 = distinct !{!758, !37}
!759 = distinct !{!759, !37, !43, !44}
!760 = distinct !{!760, !37, !43, !44}
!761 = distinct !{!761, !37, !43}
!762 = distinct !{!762, !37, !43, !44}
!763 = distinct !{!763, !37, !43, !44}
!764 = distinct !{!764, !37, !44, !43}
!765 = distinct !{!765, !37}
!766 = distinct !{!766, !37, !43, !44}
!767 = distinct !{!767, !37, !43, !44}
!768 = distinct !{!768, !37, !43}
!769 = distinct !{!769, !37, !43, !44}
!770 = distinct !{!770, !37, !43, !44}
!771 = distinct !{!771, !38}
!772 = distinct !{!772, !37, !43}
!773 = distinct !{!773, !37}
!774 = distinct !{!774, !37, !43, !44}
!775 = distinct !{!775, !37, !43, !44}
!776 = distinct !{!776, !38}
!777 = distinct !{!777, !37, !43}
!778 = distinct !{!778, !37}
!779 = distinct !{null}
!780 = distinct !{!780, !37}
!781 = distinct !{!781, !37}
!782 = distinct !{!782, !37}
!783 = distinct !{!783, !37, !43, !44}
!784 = distinct !{!784, !37, !43, !44}
!785 = distinct !{!785, !38}
!786 = distinct !{!786, !37, !43}
!787 = distinct !{!787, !37}
!788 = distinct !{!788, !37}
!789 = distinct !{!789, !37}
!790 = distinct !{null}
!791 = distinct !{!791, !37}
!792 = distinct !{!792, !37}
!793 = distinct !{!793, !37}
!794 = distinct !{null}
!795 = distinct !{!795, !37}
!796 = distinct !{!796, !37}
!797 = distinct !{!797, !37}
!798 = distinct !{null}
!799 = distinct !{!799, !37}
!800 = distinct !{!800, !37}
!801 = distinct !{!801, !37}
!802 = distinct !{null}
!803 = distinct !{!803, !37}
!804 = distinct !{!804, !38}
!805 = distinct !{!805, !37}
!806 = distinct !{!806, !37}
!807 = distinct !{!807, !38}
!808 = distinct !{!808, i1 false, !"LVerDomain"}
!809 = distinct !{!809, !808}
!810 = distinct !{!810, !808}
!811 = distinct !{!811, !37, !43, !44}
!812 = distinct !{!812, !37, !43, !44}
!813 = distinct !{!813, !38}
!814 = distinct !{!814, !37, !43}
!815 = distinct !{!815, !37}
!816 = distinct !{!816, i1 false, !"LVerDomain"}
!817 = distinct !{!817, !816}
!818 = distinct !{!818, !816}
!819 = distinct !{!819, !37, !43, !44}
!820 = distinct !{!820, !37, !43, !44}
!821 = distinct !{!821, !38}
!822 = distinct !{!822, !37, !43}
!823 = !{!809}
!824 = !{!810}
!825 = !{!817}
!826 = !{!818}
!827 = distinct !{!827, !37, !57}
!828 = distinct !{!828, !37}
!829 = distinct !{!829, !37}
!830 = distinct !{!830, i1 false, !"LVerDomain"}
!831 = distinct !{!831, !830}
!832 = distinct !{!832, !830}
!833 = distinct !{!833, !37, !43, !44}
!834 = distinct !{!834, !38}
!835 = distinct !{!835, !37, !43}
!836 = !{!831}
!837 = !{!832}
!838 = distinct !{!838, !37}
!839 = distinct !{!839, !37}
!840 = distinct !{!840, !37}
!841 = distinct !{!841, !37}
!842 = distinct !{!842, !37}
!843 = distinct !{!843, !37, !43, !44}
!844 = distinct !{!844, !37, !43, !44}
!845 = distinct !{!845, !38}
!846 = distinct !{!846, !37, !43}
!847 = distinct !{!847, !37, !43, !44}
!848 = distinct !{!848, !37, !43, !44}
!849 = distinct !{!849, !37, !44, !43}
!850 = distinct !{!850, i1 false, !"LVerDomain"}
!851 = distinct !{!851, !850}
!852 = distinct !{!852, !850}
!853 = distinct !{!853, !37, !43, !44}
!854 = distinct !{!854, !37, !43, !44}
!855 = distinct !{!855, !38}
!856 = distinct !{!856, !37}
!857 = distinct !{!857, !37, !43}
!858 = distinct !{!858, !38}
!859 = distinct !{!859, !37, !43, !44}
!860 = distinct !{!860, !37, !44, !43}
!861 = distinct !{!861, !37, !43, !44}
!862 = distinct !{!862, !37, !43, !44}
!863 = distinct !{!863, !37, !44, !43}
!864 = distinct !{!864, !37}
!865 = !{!851}
!866 = !{!852}
!867 = distinct !{!867, !37, !43, !44}
!868 = distinct !{!868, !37, !43, !44}
!869 = distinct !{!869, !38}
!870 = distinct !{!870, !37, !43}
!871 = distinct !{!871, !37, !43, !44}
!872 = distinct !{!872, !37, !43, !44}
!873 = distinct !{!873, !37, !44, !43}
!874 = distinct !{!874, i1 false, !"LVerDomain"}
!875 = distinct !{!875, !874}
!876 = distinct !{!876, !874}
!877 = distinct !{!877, !37, !43, !44}
!878 = distinct !{!878, !37, !43, !44}
!879 = distinct !{!879, !38}
!880 = distinct !{!880, !37, !43}
!881 = distinct !{!881, !37, !43, !44}
!882 = distinct !{!882, !37, !43, !44}
!883 = distinct !{!883, !37, !44, !43}
!884 = distinct !{!884, !37}
!885 = distinct !{!885, !37, !43, !44}
!886 = distinct !{!886, !37, !43, !44}
!887 = distinct !{!887, !37, !44, !43}
!888 = !{!875}
!889 = !{!876}
!890 = distinct !{!890, i1 false, !"LVerDomain"}
!891 = distinct !{!891, !890}
!892 = distinct !{!892, !890}
!893 = distinct !{!893, !37, !43, !44}
!894 = distinct !{!894, !37, !43, !44}
!895 = distinct !{!895, !38}
!896 = distinct !{!896, !37}
!897 = distinct !{!897, !37, !43}
!898 = distinct !{!898, i1 false, !"LVerDomain"}
!899 = distinct !{!899, !898}
!900 = distinct !{!900, !898}
!901 = distinct !{!901, !37, !43, !44}
!902 = distinct !{!902, !37}
!903 = distinct !{!903, !37, !43}
!904 = !{!891}
!905 = !{!892}
!906 = !{!899}
!907 = !{!900}
!908 = distinct !{!908, !38}
!909 = distinct !{!909, !37, !43, !44}
!910 = distinct !{!910, !37, !43}
!911 = distinct !{!911, !37, !43, !44}
!912 = distinct !{!912, !37, !43}
!913 = distinct !{!913, i1 false, !"LVerDomain"}
!914 = distinct !{!914, !913}
!915 = distinct !{!915, !913}
!916 = distinct !{!916, !37, !43, !44}
!917 = distinct !{!917, !37, !43}
!918 = distinct !{!918, !37}
!919 = distinct !{!919, !37}
!920 = distinct !{!920, !37}
!921 = distinct !{!921, !37}
!922 = !{!914}
!923 = !{!915}
!924 = distinct !{!924, !38}
!925 = distinct !{!925, i1 false, !"LVerDomain"}
!926 = distinct !{!926, !925}
!927 = distinct !{!927, !925}
!928 = distinct !{!928, !925}
!929 = distinct !{!929, !925}
!930 = distinct !{!930, !925}
!931 = distinct !{!931, !37, !43, !44}
!932 = distinct !{!932, !37, !43}
!933 = distinct !{!933, i1 false, !"LVerDomain"}
!934 = distinct !{!934, !933}
!935 = distinct !{!935, !933}
!936 = distinct !{!936, !933}
!937 = distinct !{!937, !933}
!938 = distinct !{!938, !933}
!939 = distinct !{!939, !37, !43, !44}
!940 = distinct !{!940, !37, !43}
!941 = distinct !{!941, i1 false, !"LVerDomain"}
!942 = distinct !{!942, !941}
!943 = distinct !{!943, !941}
!944 = distinct !{!944, !941}
!945 = distinct !{!945, !37, !43, !44}
!946 = distinct !{!946, !37, !43}
!947 = distinct !{!947, !37}
!948 = distinct !{!948, !37}
!949 = distinct !{!949, !37}
!950 = distinct !{!950, !37}
!951 = !{!926}
!952 = !{!927}
!953 = !{!928}
!954 = !{!929}
!955 = !{!930, !926, !927, !928}
!956 = !{!930}
!957 = !{!926, !927, !928}
!958 = !{!934}
!959 = !{!935}
!960 = !{!936}
!961 = !{!937}
!962 = !{!938, !934, !935, !936}
!963 = !{!938}
!964 = !{!934, !935, !936}
!965 = !{!942}
!966 = !{!943}
!967 = !{!944}
!968 = !{!942, !943}
!969 = distinct !{!969, !37}
!970 = distinct !{!970, i1 false, !"LVerDomain"}
!971 = distinct !{!971, !970}
!972 = distinct !{!972, !970}
!973 = distinct !{!973, !37, !43, !44}
!974 = distinct !{!974, !37, !43, !44}
!975 = distinct !{!975, !38}
!976 = distinct !{!976, !37}
!977 = distinct !{!977, !37, !43}
!978 = distinct !{!978, !37, !43, !44}
!979 = distinct !{!979, !37}
!980 = distinct !{!980, !37, !43}
!981 = distinct !{!981, !37}
!982 = distinct !{!982, !37}
!983 = distinct !{!983, !37}
!984 = distinct !{!984, !37}
!985 = distinct !{!985, i1 false, !"LVerDomain"}
!986 = distinct !{!986, !985}
!987 = distinct !{!987, !985}
!988 = distinct !{!988, !37, !43, !44}
!989 = distinct !{!989, !37, !43, !44}
!990 = distinct !{!990, !38}
!991 = distinct !{!991, !37}
!992 = distinct !{!992, !37, !43}
!993 = distinct !{!993, i1 false, !"LVerDomain"}
!994 = distinct !{!994, !993}
!995 = distinct !{!995, !993}
!996 = distinct !{!996, !37, !43, !44}
!997 = distinct !{!997, !37, !43, !44}
!998 = distinct !{!998, !38}
!999 = distinct !{!999, !37}
!1000 = distinct !{!1000, !37, !43}
!1001 = distinct !{!1001, !37}
!1002 = distinct !{!1002, !37}
!1003 = distinct !{!1003, !37}
!1004 = !{!971}
!1005 = !{!972}
!1006 = !{!986}
!1007 = !{!987}
!1008 = !{!994}
!1009 = !{!995}
!1010 = distinct !{!1010, i1 false, !"LVerDomain"}
!1011 = distinct !{!1011, !1010}
!1012 = distinct !{!1012, !1010}
!1013 = distinct !{!1013, !37, !43, !44}
!1014 = distinct !{!1014, !37, !43}
!1015 = distinct !{!1015, !37}
!1016 = distinct !{!1016, i1 false, !"LVerDomain"}
!1017 = distinct !{!1017, !1016}
!1018 = distinct !{!1018, !1016}
!1019 = distinct !{!1019, !37, !43, !44}
!1020 = distinct !{!1020, !37, !43, !44}
!1021 = distinct !{!1021, !38}
!1022 = distinct !{!1022, !37, !43}
!1023 = distinct !{!1023, !37}
!1024 = distinct !{!1024, !37}
!1025 = distinct !{!1025, !37}
!1026 = distinct !{!1026, !37}
!1027 = distinct !{!1027, !37}
!1028 = distinct !{!1028, !37}
!1029 = distinct !{!1029, !37}
!1030 = distinct !{!1030, i1 false, !"LVerDomain"}
!1031 = distinct !{!1031, !1030}
!1032 = distinct !{!1032, !1030}
!1033 = distinct !{!1033, !37, !43, !44}
!1034 = distinct !{!1034, !37, !43, !44}
!1035 = distinct !{!1035, !38}
!1036 = distinct !{!1036, !37}
!1037 = distinct !{!1037, !37}
!1038 = distinct !{!1038, !37, !43}
!1039 = !{!1011}
!1040 = !{!1012}
!1041 = !{!1017}
!1042 = !{!1018}
!1043 = !{!1031}
!1044 = !{!1032}
!1045 = distinct !{!1045, !37}
!1046 = distinct !{!1046, !37}
!1047 = distinct !{!1047, !37}
!1048 = distinct !{!1048, !37}
!1049 = distinct !{!1049, !37}
!1050 = distinct !{!1050, !37}
!1051 = distinct !{!1051, !38}
!1052 = distinct !{!1052, !38}
!1053 = distinct !{!1053, !38}
!1054 = distinct !{!1054, !37}
!1055 = distinct !{!1055, !37}
!1056 = distinct !{!1056, !37}
!1057 = distinct !{!1057, !37}
!1058 = distinct !{!1058, !37}
!1059 = distinct !{!1059, i1 false, !"LVerDomain"}
!1060 = distinct !{!1060, !1059}
!1061 = distinct !{!1061, !1059}
!1062 = distinct !{!1062, !37, !43, !44}
!1063 = distinct !{!1063, !37}
!1064 = distinct !{!1064, !37}
!1065 = distinct !{!1065, !37, !43}
!1066 = distinct !{!1066, !37}
!1067 = distinct !{!1067, !37}
!1068 = distinct !{!1068, !37}
!1069 = distinct !{!1069, !37}
!1070 = distinct !{!1070, !37}
!1071 = distinct !{!1071, i1 false, !"LVerDomain"}
!1072 = distinct !{!1072, !1071}
!1073 = distinct !{!1073, !1071}
!1074 = distinct !{!1074, !37, !43, !44}
!1075 = distinct !{!1075, !37, !43, !44}
!1076 = distinct !{!1076, !38}
!1077 = distinct !{!1077, !37}
!1078 = distinct !{!1078, !37}
!1079 = distinct !{!1079, !37, !43}
!1080 = !{!1060}
!1081 = !{!1061}
!1082 = !{!1072}
!1083 = !{!1073}
!1084 = distinct !{!1084, !37}
!1085 = distinct !{!1085, !38}
!1086 = distinct !{!1086, !37}
!1087 = distinct !{!1087, !37}
!1088 = distinct !{!1088, !37}
!1089 = distinct !{!1089, !37}
!1090 = distinct !{!1090, !37}
!1091 = distinct !{!1091, !37}
!1092 = distinct !{!1092, !37}
!1093 = distinct !{!1093, !37}
!1094 = distinct !{!1094, !37, !43, !44}
!1095 = distinct !{!1095, !37, !43, !44}
!1096 = distinct !{!1096, !38}
!1097 = distinct !{!1097, !37, !43, !44}
!1098 = distinct !{!1098, !37, !43, !44}
!1099 = distinct !{!1099, !38}
!1100 = distinct !{!1100, !37, !43}
!1101 = distinct !{!1101, !37}
!1102 = distinct !{!1102, !37, !43}
!1103 = distinct !{!1103, !37}
!1104 = distinct !{!1104, !37}
!1105 = distinct !{!1105, !37, !43, !44}
!1106 = distinct !{!1106, !37, !43, !44}
!1107 = distinct !{!1107, !38}
!1108 = distinct !{!1108, !37, !43}
!1109 = distinct !{!1109, !37}
!1110 = distinct !{!1110, !37}
!1111 = distinct !{!1111, i1 false, !"LVerDomain"}
!1112 = distinct !{!1112, !1111}
!1113 = distinct !{!1113, !1111}
!1114 = distinct !{!1114, !37, !43, !44}
!1115 = distinct !{!1115, !37, !43, !44}
!1116 = distinct !{!1116, !38}
!1117 = distinct !{!1117, !37}
!1118 = distinct !{!1118, !37, !43}
!1119 = !{!1112}
!1120 = !{!1113}
!1121 = distinct !{!1121, !37, !43, !44}
!1122 = distinct !{!1122, !37, !43, !44}
!1123 = distinct !{!1123, !38}
!1124 = distinct !{!1124, !37, !43, !44}
!1125 = distinct !{!1125, !37, !43, !44}
!1126 = distinct !{!1126, !38}
!1127 = distinct !{!1127, !37, !43}
!1128 = distinct !{!1128, !37}
!1129 = distinct !{!1129, !37, !43}
!1130 = distinct !{!1130, !37}
!1131 = distinct !{!1131, !37, !43, !44}
!1132 = distinct !{!1132, !37, !43, !44}
!1133 = distinct !{!1133, !38}
!1134 = distinct !{!1134, !37, !43}
!1135 = distinct !{!1135, !37, !43, !44}
!1136 = distinct !{!1136, !37, !43, !44}
!1137 = distinct !{!1137, !38}
!1138 = distinct !{!1138, !37, !43}
!1139 = distinct !{!1139, !37}
!1140 = distinct !{!1140, !37}
!1141 = distinct !{!1141, !37}
!1142 = distinct !{!1142, !37, !43, !44}
!1143 = distinct !{!1143, !37, !43, !44}
!1144 = distinct !{!1144, !38}
!1145 = distinct !{!1145, !37, !43}
!1146 = distinct !{!1146, !37, !43, !44}
!1147 = distinct !{!1147, !37, !43, !44}
!1148 = distinct !{!1148, !38}
!1149 = distinct !{!1149, !37, !43}
!1150 = distinct !{!1150, !37}
!1151 = distinct !{!1151, i1 false, !"LVerDomain"}
!1152 = distinct !{!1152, !1151}
!1153 = distinct !{!1153, !1151}
!1154 = distinct !{!1154, !37, !43, !44}
!1155 = distinct !{!1155, !37, !43, !44}
!1156 = distinct !{!1156, !38}
!1157 = distinct !{!1157, !37}
!1158 = distinct !{!1158, !37, !43}
!1159 = !{!1152}
!1160 = !{!1153}
!1161 = distinct !{!1161, !37}
!1162 = distinct !{!1162, !37, !43, !44}
!1163 = distinct !{!1163, !37, !43, !44}
!1164 = distinct !{!1164, !38}
end_hunk_4
begin_hunk_5_@llvm.fmuladd.v16f32
!1502 = distinct !{!1502, i1 true, !"_ZL16ggml_vec_mad_f16iPtPKtf"}
!1503 = distinct !{!1503, !1502, !"_ZL16ggml_vec_mad_f16iPtPKtf: argument 0"}
!1504 = distinct !{!1504, !1502, !"_ZL16ggml_vec_mad_f16iPtPKtf: argument 1"}
!1505 = distinct !{!1505, !37}
!1506 = distinct !{!1506, !37, !43, !44}
!1507 = distinct !{!1507, !37, !44, !43}
!1508 = distinct !{!1508, !37, !43, !44}
!1509 = distinct !{!1509, !37, !43, !44}
!1510 = distinct !{!1510, !37, !44, !43}
!1511 = distinct !{!1511, i1 true, !"_ZL16ggml_vec_mad_f32iPfPKff"}
!1512 = distinct !{!1512, !1511, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 0"}
!1513 = distinct !{!1513, !1511, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 1"}
!1514 = distinct !{!1514, !37, !43, !44}
!1515 = distinct !{!1515, !37, !43, !44}
!1516 = distinct !{!1516, !37, !44, !43}
!1517 = distinct !{!1517, i1 true, !"_ZL16ggml_vec_mad_f32iPfPKff"}
!1518 = distinct !{!1518, !1517, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 0"}
!1519 = distinct !{!1519, !1517, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 1"}
!1520 = distinct !{!1520, !37, !43, !44}
!1521 = distinct !{!1521, !37, !43, !44}
!1522 = distinct !{!1522, !37, !44, !43}
!1523 = distinct !{!1523, !37}
!1524 = distinct !{!1524, !37}
!1525 = distinct !{!1525, !38}
!1526 = distinct !{!1526, !37, !43, !44}
!1527 = distinct !{!1527, !37, !43, !44}
!1528 = distinct !{!1528, !37, !44, !43}
!1529 = distinct !{!1529, !37, !43, !44}
!1530 = distinct !{!1530, !37, !43, !44}
!1531 = distinct !{!1531, !37, !44, !43}
!1532 = distinct !{!1532, !37}
!1533 = !{!45, !24, i64 16}
!1534 = !{!45, !21, i64 8}
!1535 = !{!1503}
!1536 = !{!1504}
!1537 = !{!1503, !1504}
!1538 = !{!1512}
!1539 = !{!1513}
!1540 = !{!1518}
!1541 = !{!1519}
!1542 = distinct !{!1542, !37}
!1543 = distinct !{!1543, !37}
!1544 = distinct !{!1544, !37, !43, !44}
!1545 = distinct !{!1545, !37, !43, !44}
!1546 = distinct !{!1546, !37, !44, !43}
!1547 = distinct !{!1547, !37, !43, !44}
!1548 = distinct !{!1548, !37, !43, !44}
!1549 = distinct !{!1549, !37, !44, !43}
!1550 = distinct !{!1550, !37, !43, !44}
!1551 = distinct !{!1551, !37, !43, !44}
!1552 = distinct !{!1552, !37}
!1553 = distinct !{!1553, !37, !43, !44}
!1554 = distinct !{!1554, !37, !44, !43}
!1555 = distinct !{!1555, !37, !43, !44}
!1556 = distinct !{!1556, !37, !43, !44}
!1557 = distinct !{!1557, !37, !44, !43}
!1558 = distinct !{!1558, !37, !44, !43}
!1559 = distinct !{!1559, !37, !43, !44}
!1560 = distinct !{!1560, !37, !43, !44}
!1561 = distinct !{!1561, !37, !44, !43}
!1562 = distinct !{!1562, i1 false, !"LVerDomain"}
!1563 = distinct !{!1563, !1562}
!1564 = distinct !{!1564, !1562}
!1565 = distinct !{!1565, !37, !43, !44}
!1566 = distinct !{!1566, !37, !43, !44}
!1567 = distinct !{!1567, !38}
!1568 = distinct !{!1568, !37, !43}
!1569 = distinct !{!1569, !37, !43, !44}
!1570 = distinct !{!1570, !37, !43, !44}
!1571 = distinct !{!1571, !37, !44, !43}
!1572 = distinct !{!1572, i1 true, !"_ZL16ggml_vec_mad_f32iPfPKff"}
!1573 = distinct !{!1573, !1572, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 0"}
!1574 = distinct !{!1574, !1572, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 1"}
!1575 = distinct !{!1575, !37, !43, !44}
!1576 = distinct !{!1576, !37, !43, !44}
!1577 = distinct !{!1577, !37, !44, !43}
!1578 = distinct !{!1578, !37}
!1579 = distinct !{!1579, i1 true, !"_ZL16ggml_vec_mad_f32iPfPKff"}
!1580 = distinct !{!1580, !1579, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 0"}
!1581 = distinct !{!1581, !1579, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 1"}
!1582 = distinct !{!1582, !37, !43, !44}
!1583 = distinct !{!1583, !37, !43, !44}
!1584 = distinct !{!1584, !37, !44, !43}
!1585 = distinct !{!1585, !37}
!1586 = distinct !{!1586, i1 true, !"_ZL16ggml_vec_mad_f32iPfPKff"}
!1587 = distinct !{!1587, !1586, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 0"}
!1588 = distinct !{!1588, !1586, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 1"}
!1589 = distinct !{!1589, !37, !43, !44}
!1590 = distinct !{!1590, !37, !43, !44}
!1591 = distinct !{!1591, !37, !44, !43}
!1592 = distinct !{!1592, !37}
!1593 = distinct !{!1593, !37}
!1594 = distinct !{!1594, i1 true, !"_ZL16ggml_vec_mad_f32iPfPKff"}
!1595 = distinct !{!1595, !1594, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 0"}
!1596 = distinct !{!1596, !1594, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 1"}
!1597 = distinct !{!1597, !37, !43, !44}
!1598 = distinct !{!1598, !37, !43, !44}
!1599 = distinct !{!1599, !37, !44, !43}
!1600 = distinct !{!1600, !37}
!1601 = !{!1563}
!1602 = !{!1564}
!1603 = !{!1573}
!1604 = !{!1574}
!1605 = !{!1580}
!1606 = !{!1581}
!1607 = !{!1587}
!1608 = !{!1588}
!1609 = !{!1595}
!1610 = !{!1596}
!1611 = distinct !{!1611, !37}
!1612 = distinct !{!1612, !38}
!1613 = distinct !{!1613, !37}
!1614 = distinct !{!1614, !37}
!1615 = distinct !{!1615, !37}
!1616 = distinct !{!1616, !38}
!1617 = distinct !{!1617, !37}
!1618 = distinct !{!1618, !37, !43, !44}
!1619 = distinct !{!1619, !37, !43, !44}
!1620 = distinct !{!1620, !38}
!1621 = distinct !{!1621, !37, !43}
!1622 = distinct !{!1622, !37}
!1623 = distinct !{!1623, !37}
!1624 = distinct !{!1624, !37}
!1625 = distinct !{!1625, !37}
!1626 = distinct !{!1626, !37}
!1627 = distinct !{!1627, !37}
!1628 = distinct !{!1628, !37, !43, !44}
!1629 = distinct !{!1629, !37, !43, !44}
!1630 = distinct !{!1630, !38}
!1631 = distinct !{!1631, !37}
!1632 = distinct !{!1632, !37, !43}
!1633 = distinct !{!1633, !38}
!1634 = distinct !{!1634, !37}
!1635 = distinct !{!1635, !37}
!1636 = distinct !{!1636, !37}
!1637 = distinct !{!1637, !37}
!1638 = distinct !{!1638, !37, !43, !44}
!1639 = distinct !{!1639, !37, !43, !44}
!1640 = distinct !{!1640, !38}
!1641 = distinct !{!1641, !37, !43}
!1642 = distinct !{!1642, !37}
!1643 = distinct !{!1643, !37}
!1644 = distinct !{!1644, !37, !43, !44}
!1645 = distinct !{!1645, !37, !43, !44}
!1646 = distinct !{!1646, !38}
!1647 = distinct !{!1647, !37}
!1648 = distinct !{!1648, !37}
!1649 = distinct !{!1649, !37, !43}
!1650 = distinct !{!1650, !37}
!1651 = distinct !{!1651, !37}
!1652 = distinct !{!1652, !37}
!1653 = distinct !{!1653, !38}
!1654 = distinct !{!1654, !37}
!1655 = distinct !{!1655, !37}
!1656 = distinct !{!1656, !37}
!1657 = distinct !{!1657, !37}
!1658 = distinct !{!1658, !37}
!1659 = distinct !{!1659, !37}
!1660 = distinct !{!1660, !37}
!1661 = distinct !{!1661, !37}
!1662 = distinct !{!1662, !38}
!1663 = distinct !{!1663, !37}
!1664 = distinct !{!1664, !37}
!1665 = distinct !{!1665, !37}
!1666 = distinct !{!1666, !37}
!1667 = distinct !{!1667, i1 false, !"LVerDomain"}
!1668 = distinct !{!1668, !1667}
!1669 = distinct !{!1669, !1667}
!1670 = distinct !{!1670, !1667}
!1671 = distinct !{!1671, !37, !43, !44}
!1672 = distinct !{!1672, !37, !43, !44}
!1673 = distinct !{!1673, !38}
!1674 = distinct !{!1674, !37, !43}
!1675 = distinct !{!1675, !37}
!1676 = distinct !{!1676, !37}
!1677 = distinct !{!1677, !37}
!1678 = distinct !{!1678, !37}
!1679 = distinct !{!1679, !37}
!1680 = distinct !{!1680, !37}
!1681 = distinct !{!1681, !37}
!1682 = distinct !{!1682, !37}
!1683 = distinct !{!1683, !37}
!1684 = distinct !{!1684, !37}
!1685 = distinct !{!1685, !37}
!1686 = distinct !{!1686, !37}
!1687 = distinct !{!1687, !37}
!1688 = distinct !{!1688, !37}
!1689 = distinct !{!1689, !37}
!1690 = distinct !{!1690, !37}
!1691 = distinct !{!1691, !37}
!1692 = distinct !{!1692, !37}
!1693 = distinct !{!1693, !37}
!1694 = distinct !{!1694, !37}
!1695 = distinct !{!1695, !37}
!1696 = distinct !{!1696, !37}
!1697 = distinct !{!1697, !37}
!1698 = distinct !{!1698, !37}
!1699 = !{!1668}
!1700 = !{!1669}
!1701 = !{!1670}
!1702 = !{!1668, !1669}
!1703 = distinct !{!1703, !37}
!1704 = distinct !{!1704, i1 false, !"LVerDomain"}
!1705 = distinct !{!1705, !1704}
!1706 = distinct !{!1706, !1704}
!1707 = distinct !{!1707, !37, !43, !44}
!1708 = distinct !{!1708, !37, !43, !44}
!1709 = distinct !{!1709, !38}
!1710 = distinct !{!1710, !37}
!1711 = distinct !{!1711, !37, !43}
!1712 = !{!1705}
!1713 = !{!1706}
!1714 = distinct !{!1714, !37}
!1715 = distinct !{!1715, !37}
!1716 = distinct !{!1716, !37}
!1717 = distinct !{!1717, !38}
!1718 = distinct !{!1718, !37}
!1719 = distinct !{!1719, !37}
!1720 = distinct !{!1720, !37}
!1721 = distinct !{!1721, i1 false, !"LVerDomain"}
!1722 = distinct !{!1722, !1721}
!1723 = distinct !{!1723, !1721}
!1724 = distinct !{!1724, !1721}
!1725 = distinct !{!1725, !1721}
!1726 = distinct !{!1726, !37, !43, !44}
!1727 = distinct !{!1727, !37, !43}
!1728 = distinct !{!1728, !37}
!1729 = distinct !{!1729, !37}
!1730 = distinct !{!1730, !37}
!1731 = distinct !{!1731, i1 false, !"LVerDomain"}
!1732 = distinct !{!1732, !1731}
!1733 = distinct !{!1733, !1731}
!1734 = distinct !{!1734, !1731}
!1735 = distinct !{!1735, !1731}
!1736 = distinct !{!1736, !37, !43, !44}
!1737 = distinct !{!1737, !37, !43}
!1738 = !{!1722}
!1739 = !{!1723}
!1740 = !{!1724}
!1741 = !{!1725, !1722, !1723}
!1742 = !{!1725}
!1743 = !{!1722, !1723}
!1744 = !{!1732}
!1745 = !{!1733}
!1746 = !{!1734}
!1747 = !{!1735, !1732, !1733}
!1748 = !{!1735}
!1749 = !{!1732, !1733}
!1750 = distinct !{!1750, !37}
!1751 = distinct !{!1751, i1 false, !"LVerDomain"}
!1752 = distinct !{!1752, !1751}
!1753 = distinct !{!1753, !1751}
!1754 = distinct !{!1754, !1751}
!1755 = distinct !{!1755, !1751}
!1756 = distinct !{!1756, !37, !43, !44}
!1757 = distinct !{!1757, !37, !43}
!1758 = distinct !{!1758, !37}
!1759 = distinct !{!1759, !37}
!1760 = distinct !{!1760, !37}
!1761 = distinct !{!1761, i1 false, !"LVerDomain"}
!1762 = distinct !{!1762, !1761}
!1763 = distinct !{!1763, !1761}
!1764 = distinct !{!1764, !1761}
!1765 = distinct !{!1765, !1761}
!1766 = distinct !{!1766, !37, !43, !44}
!1767 = distinct !{!1767, !37, !43}
!1768 = !{!1752}
!1769 = !{!1753}
!1770 = !{!1754}
!1771 = !{!1755, !1752, !1753}
!1772 = !{!1755}
!1773 = !{!1752, !1753}
!1774 = !{!1762}
!1775 = !{!1763}
!1776 = !{!1764}
!1777 = !{!1765, !1762, !1763}
!1778 = !{!1765}
!1779 = !{!1762, !1763}
!1780 = distinct !{!1780, !37}
!1781 = distinct !{!1781, !38}
!1782 = distinct !{!1782, !37}
!1783 = distinct !{!1783, !37}
!1784 = distinct !{!1784, !37, !43, !44}
!1785 = distinct !{!1785, !37, !43, !44}
!1786 = distinct !{!1786, !37, !44, !43}
!1787 = distinct !{!1787, !37}
!1788 = distinct !{!1788, i1 false, !"LVerDomain"}
!1789 = distinct !{!1789, !1788}
!1790 = distinct !{!1790, !1788}
!1791 = distinct !{!1791, !37, !43, !44}
!1792 = distinct !{!1792, !37, !43, !44}
!1793 = distinct !{!1793, !38}
!1794 = distinct !{!1794, !37, !43}
!1795 = distinct !{!1795, !37}
!1796 = distinct !{!1796, i1 true, !"_ZL16ggml_vec_mad_f32iPfPKff"}
!1797 = distinct !{!1797, !1796, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 0"}
!1798 = distinct !{!1798, !1796, !"_ZL16ggml_vec_mad_f32iPfPKff: argument 1"}
!1799 = distinct !{!1799, !37, !43, !44}
!1800 = distinct !{!1800, !37, !43, !44}
!1801 = distinct !{!1801, !37, !44, !43}
!1802 = distinct !{!1802, !37}
!1803 = distinct !{!1803, !37}
!1804 = distinct !{!1804, !37}
!1805 = distinct !{!1805, !37}
!1806 = distinct !{!1806, !37}
!1807 = distinct !{!1807, !38}
!1808 = distinct !{!1808, !38}
!1809 = distinct !{!1809, !37}
!1810 = !{!1789}
!1811 = !{!1790}
!1812 = !{!1797}
!1813 = !{!1798}
!1814 = distinct !{!1814, !37}
!1815 = distinct !{!1815, !37}
!1816 = distinct !{!1816, !38}
!1817 = distinct !{!1817, !37}
!1818 = distinct !{!1818, !38}
!1819 = distinct !{!1819, !37}
!1820 = distinct !{!1820, !37}
!1821 = distinct !{!1821, !38}
!1822 = distinct !{!1822, !37}
!1823 = distinct !{!1823, !37}
!1824 = distinct !{!1824, !37}
!1825 = distinct !{!1825, !37}
!1826 = distinct !{!1826, !37}
!1827 = distinct !{!1827, !37}
!1828 = distinct !{!1828, !37, !43, !44}
!1829 = distinct !{!1829, !37, !44, !43}
!1830 = distinct !{!1830, !37, !43, !44}
!1831 = distinct !{!1831, !37, !43, !44}
!1832 = distinct !{!1832, !37, !44, !43}
!1833 = distinct !{!1833, i1 false, !"LVerDomain"}
!1834 = distinct !{!1834, !1833}
!1835 = distinct !{!1835, !1833}
!1836 = distinct !{!1836, !37, !43, !44}
!1837 = distinct !{!1837, !37, !43, !44}
!1838 = distinct !{!1838, !38}
!1839 = distinct !{!1839, !37, !43}
!1840 = distinct !{!1840, !38}
!1841 = distinct !{!1841, !37}
!1842 = distinct !{!1842, !38}
!1843 = !{!1834}
!1844 = !{!1835}
!1845 = distinct !{!1845, !37, !43, !44}
!1846 = distinct !{!1846, !37, !44, !43}
!1847 = distinct !{!1847, !37, !43, !44}
!1848 = distinct !{!1848, !37, !43, !44}
!1849 = distinct !{!1849, !37, !44, !43}
!1850 = distinct !{!1850, i1 false, !"LVerDomain"}
!1851 = distinct !{!1851, !1850}
!1852 = distinct !{!1852, !1850}
!1853 = distinct !{!1853, !37, !43, !44}
!1854 = distinct !{!1854, !37, !43, !44}
!1855 = distinct !{!1855, !38}
!1856 = distinct !{!1856, !37, !43}
!1857 = distinct !{!1857, !37, !43, !44}
!1858 = distinct !{!1858, !37, !43, !44}
!1859 = distinct !{!1859, !37, !44, !43}
!1860 = distinct !{!1860, !37}
!1861 = !{!1851}
!1862 = !{!1852}
!1863 = distinct !{!1863, !37}
!1864 = distinct !{!1864, !37}
!1865 = distinct !{!1865, i1 false, !"LVerDomain"}
!1866 = distinct !{!1866, !1865}
!1867 = distinct !{!1867, !1865}
!1868 = distinct !{!1868, !37, !43, !44}
!1869 = distinct !{!1869, !37, !43, !44}
!1870 = distinct !{!1870, !38}
!1871 = distinct !{!1871, !37}
!1872 = distinct !{!1872, !37, !43}
!1873 = !{!1866}
!1874 = !{!1867}
!1875 = distinct !{!1875, !37, !43, !44}
!1876 = distinct !{!1876, !37, !43, !44}
!1877 = distinct !{!1877, !38}
!1878 = distinct !{!1878, !37, !43}
!1879 = distinct !{!1879, !37, !43, !44}
!1880 = distinct !{!1880, !37, !43, !44}
!1881 = distinct !{!1881, !37, !44, !43}
!1882 = distinct !{!1882, !37}
!1883 = distinct !{!1883, !37}
!1884 = distinct !{!1884, !37}
!1885 = distinct !{!1885, !38}
!1886 = distinct !{!1886, !37}
!1887 = distinct !{!1887, !37}
!1888 = distinct !{!1888, !37}
!1889 = distinct !{!1889, !37}
!1890 = distinct !{!1890, !37}
!1891 = distinct !{!1891, !37}
!1892 = distinct !{!1892, !37}
!1893 = distinct !{!1893, !38}
end_hunk_5
