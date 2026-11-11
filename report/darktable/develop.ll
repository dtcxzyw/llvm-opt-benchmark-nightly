Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/develop?download=true
inline.NumInlined: 181
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_dev_zoom_move:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !62 ; 3 uses
  %.not25.i.i303 = icmp eq ptr %i.eh, null
  br i1 %.not25.i.i303, label %dt_dev_get_processed_size.exit.i298, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 156 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !183
  %.not26.i.i304 = icmp eq i32 %i.ej, 0
  br i1 %.not26.i.i304, label %dt_dev_get_processed_size.exit.i298, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 152
  %i.el = load float, ptr %i.ek, align 8, !tbaa !199
  %i.em = load <2 x i32>, ptr %i.ei, align 4, !tbaa !171
  %i.en = sitofp reassoc nsz arcp contract afn <2 x i32> %i.em to <2 x float>
  %i.eo = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul reassoc nsz arcp contract afn <2 x float> %i.ep, %i.en
  %i.er = fptosi <2 x float> %i.eq to <2 x i32>
  br label %dt_dev_get_processed_size.exit.i298

dt_dev_get_processed_size.exit.i298:              ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.es = phi <2 x i32> [ %i.ee, %bb.am ], [ zeroinitializer, %bb.an ], [ zeroinitializer, %bb.ao ], [ %i.er, %bb.ap ]
  switch i32 %.0, label %bb.ar [
    i32 0, label %bb.aq
    i32 2, label %dt_dev_get_zoom_scale.exit305
  ]

bb.aq:                                            ; preds = %dt_dev_get_processed_size.exit.i298
  %i.et = load <2 x i32>, ptr %i.bm, align 8, !tbaa !171
  %i.eu = sitofp reassoc nsz arcp contract afn <2 x i32> %i.et to <2 x float>
  %i.ev = sitofp reassoc nsz arcp contract afn <2 x i32> %i.es to <2 x float>
  %i.ew = fdiv reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ev ; 2 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 0
  %i.ey = extractelement <2 x float> %i.ew, i64 1
  %i.ez = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ex, float %i.ey)
  br label %dt_dev_get_zoom_scale.exit305

bb.ar:                                            ; preds = %dt_dev_get_processed_size.exit.i298
  %i.fa = load float, ptr %i.t, align 4, !tbaa !200
  br label %dt_dev_get_zoom_scale.exit305

dt_dev_get_zoom_scale.exit305:                    ; preds = %dt_dev_get_processed_size.exit.i298, %bb.aq, %bb.ar
  %.0.i301 = phi nsz float [ %i.fa, %bb.ar ], [ %i.ez, %bb.aq ], [ 1.000000e+00, %dt_dev_get_processed_size.exit.i298 ] ; 2 uses
  %i.fb = fcmp reassoc nsz arcp contract afn une float %.0.i301, 0.000000e+00
  %spec.store.select.i302 = select i1 %i.fb, float %.0.i301, float 1.000000e+00
  br label %bb.bn

bb.as:                                            ; preds = %bb.aj
  %i.fc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cj
  br label %bb.bn

bb.at:                                            ; preds = %bb.t
  switch i32 %1, label %bb.bl [
    i32 6, label %bb.au
    i32 7, label %bb.bj
    i32 8, label %bb.bk
  ]

bb.au:                                            ; preds = %bb.at
  br i1 %.not23.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 156 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !183
  %.not24.i.i308 = icmp eq i32 %i.fe, 0
  br i1 %.not24.i.i308, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ff = load <2 x i32>, ptr %i.fd, align 4, !tbaa !171
  br label %dt_dev_get_zoom_scale.exit316

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !198
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.fi = load ptr, ptr %i.fh, align 16, !tbaa !62 ; 3 uses
  %.not25.i.i314 = icmp eq ptr %i.fi, null
  br i1 %.not25.i.i314, label %dt_dev_get_zoom_scale.exit316, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 156 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !183
  %.not26.i.i315 = icmp eq i32 %i.fk, 0
  br i1 %.not26.i.i315, label %dt_dev_get_zoom_scale.exit316, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 152
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !199
  %i.fn = load <2 x i32>, ptr %i.fj, align 4, !tbaa !171
  %i.fo = sitofp reassoc nsz arcp contract afn <2 x i32> %i.fn to <2 x float>
  %i.fp = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fo
  %i.fs = fptosi <2 x float> %i.fr to <2 x i32>
  br label %dt_dev_get_zoom_scale.exit316

dt_dev_get_zoom_scale.exit316:                    ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az
  %i.ft = phi <2 x i32> [ %i.ff, %bb.aw ], [ zeroinitializer, %bb.ax ], [ zeroinitializer, %bb.ay ], [ %i.fs, %bb.az ]
  %i.fu = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ft to <2 x float> ; 2 uses
  %foldExtExtBinop395 = fdiv reassoc nsz arcp contract afn <2 x float> %i.bo, %i.fu
  %i.fv = extractelement <2 x float> %foldExtExtBinop395, i64 0
  %foldExtExtBinop397 = fdiv reassoc nsz arcp contract afn <2 x float> %i.bo, %i.fu
  %i.fw = extractelement <2 x float> %foldExtExtBinop397, i64 1
  %i.fx = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fv, float %i.fw) ; 2 uses
  %i.fy = fcmp reassoc nsz arcp contract afn une float %i.fx, 0.000000e+00
  %spec.store.select.i313 = select i1 %i.fy, float %i.fx, float 1.000000e+00 ; 2 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %spec.store.select.i, %i.cj ; 10 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %spec.store.select.i313, %i.cj ; 12 uses
  %.not.i317 = icmp eq i32 %3, 0                  ; 2 uses
  %i.gb = fcmp reassoc nsz arcp contract afn oge float %i.fz, 2.000000e+00
  %i.gc = select reassoc nsz arcp contract afn i1 %i.gb, float 2.000000e+00, float 1.100000e+00
  %i.gd = fcmp reassoc nsz arcp contract afn ogt float %i.fz, 2.000000e+00 ; 4 uses
  %i.ge = select reassoc nsz arcp contract afn i1 %i.gd, float 2.000000e+00, float 1.100000e+00
  %i.gf = fmul reassoc nsz arcp contract afn float %i.gc, %i.fz
  %i.gg = fdiv reassoc nsz arcp contract afn float %i.fz, %i.ge
  %i.gh = select reassoc nsz arcp contract afn i1 %.not.i317, float %i.gg, float %i.gf ; 4 uses
  %i.gi = fcmp reassoc nsz arcp contract afn ogt float %i.ga, 2.000000e+00
  %i.gj = fsub reassoc nsz arcp contract afn float %i.gh, %i.ga
  %i.gk = fsub reassoc nsz arcp contract afn float %i.fz, %i.ga
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gj, %i.gk
  %i.gm = fcmp reassoc nsz arcp contract afn uge float %i.gl, 0.000000e+00
  %or.cond.i = or i1 %i.gi, %i.gm
  br i1 %or.cond.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %dt_dev_get_zoom_scale.exit316
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gh, -1.000000e+00
  %i.go = fadd reassoc nsz arcp contract afn float %i.fz, -1.000000e+00
  %i.gp = fmul reassoc nsz arcp contract afn float %i.gn, %i.go
  %i.gq = fcmp reassoc nsz arcp contract afn olt float %i.gp, 0.000000e+00
  br i1 %i.gq, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gh, -2.000000e+00
  %i.gs = fadd reassoc nsz arcp contract afn float %i.fz, -2.000000e+00
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gr, %i.gs
  %i.gu = fcmp reassoc nsz arcp contract afn olt float %i.gt, 0.000000e+00
  %spec.store.select.i319 = select i1 %i.gu, float 2.000000e+00, float %i.gh
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %dt_dev_get_zoom_scale.exit316
  %.0.i318 = phi nsz float [ %i.ga, %dt_dev_get_zoom_scale.exit316 ], [ %spec.store.select.i319, %bb.bb ], [ 1.000000e+00, %bb.ba ] ; 4 uses
  %i.gv = fmul reassoc nsz arcp contract afn float %i.ga, 5.000000e-01 ; 2 uses
  %i.gw = fcmp reassoc nsz arcp contract afn olt float %i.gv, 1.000000e+00
  %i.gx = select reassoc nsz arcp contract afn i1 %i.gw, float %i.gv, float 1.000000e+00 ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ugt float %i.ga, 1.000000e+00
  %i.gz = fcmp reassoc nsz arcp contract afn ole float %i.ga, 2.000000e+00
  %..i.i = zext i1 %i.gz to i32
  %.0.i.i = select i1 %i.gy, i32 %..i.i, i32 2
  %.not33.i.i = icmp eq i32 %6, 0                 ; 5 uses
  switch i32 %.0.i.i, label %default.unreachable [
    i32 2, label %bb.bd
    i32 1, label %bb.be
    i32 0, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.fz, 1.000000e+00
  %i.hb = select reassoc nsz arcp contract afn i1 %i.ha, float 2.000000e+00, float 1.000000e+00
  %i.hc = or i1 %.not33.i.i, %i.gd
  %i.hd = select reassoc nsz arcp contract afn i1 %i.hc, float 1.600000e+01, float %i.hb
  %i.he = fcmp reassoc nsz arcp contract afn olt float %i.fz, %i.ga
  %i.hf = or i1 %.not33.i.i, %i.he
  %i.hg = select reassoc nsz arcp contract afn i1 %i.hf, float %i.gx, float %i.ga
  br label %_calculate_new_scroll_zoom_tscale.exit

bb.be:                                            ; preds = %bb.bc
  %i.hh = or i1 %.not33.i.i, %i.gd
  %i.hi = select reassoc nsz arcp contract afn i1 %i.hh, float 1.600000e+01, float 2.000000e+00
  %i.hj = fcmp reassoc nsz arcp contract afn olt float %i.fz, %i.ga
  %i.hk = or i1 %.not33.i.i, %i.hj
  %i.hl = select reassoc nsz arcp contract afn i1 %i.hk, float %i.gx, float %i.ga
  br label %_calculate_new_scroll_zoom_tscale.exit

bb.bf:                                            ; preds = %bb.bc
  %i.hm = or i1 %.not33.i.i, %i.gd
  %i.hn = select reassoc nsz arcp contract afn i1 %i.hm, float 1.600000e+01, float %i.ga
  br label %_calculate_new_scroll_zoom_tscale.exit

default.unreachable:                              ; preds = %bb.bc
  unreachable

_calculate_new_scroll_zoom_tscale.exit:           ; preds = %bb.bd, %bb.be, %bb.bf
  %.029.i = phi nsz float [ %i.hd, %bb.bd ], [ %i.hi, %bb.be ], [ %i.hn, %bb.bf ] ; 2 uses
  %.sink.i.i = phi float [ %i.hg, %bb.bd ], [ %i.hl, %bb.be ], [ %i.gx, %bb.bf ] ; 2 uses
  %i.ho = fcmp reassoc nsz arcp contract afn olt float %.0.i318, %.029.i
  %i.hp = select reassoc nsz arcp contract afn i1 %i.ho, float %.0.i318, float %.029.i
  %i.hq = fcmp reassoc nsz arcp contract afn ogt float %.0.i318, %.sink.i.i
  %i.hr = select reassoc nsz arcp contract afn i1 %i.hq, float %.0.i318, float %.sink.i.i
  %i.hs = select reassoc nsz arcp contract afn i1 %.not.i317, float %i.hr, float %i.hp ; 5 uses
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hs, 1.999900e+00
  br i1 %i.ht, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_calculate_new_scroll_zoom_tscale.exit
  %i.hu = fdiv reassoc nsz arcp contract afn float %i.hs, %i.cj
  br label %bb.bi

bb.bh:                                            ; preds = %_calculate_new_scroll_zoom_tscale.exit
  %spec.select273 = zext i1 %i.ck to i32
  %i.hv = fcmp reassoc nsz arcp contract afn ogt float %i.hs, 3.999900e+00
  %i.hw = select i1 %i.ck, i32 2, i32 1
  %.2233 = select i1 %i.hv, i32 %i.hw, i32 %spec.select273
  %i.hx = fcmp reassoc nsz arcp contract afn ogt float %i.hs, f0x40FFFF2E
  %7 = zext i1 %i.hx to i32
  %.3234 = add nuw nsw i32 %.2233, %7
  %i.hy = fpext reassoc nsz arcp contract afn float %i.hs to double
  %i.hz = fcmp reassoc nsz arcp contract afn ogt double %i.hy, 1.599990e+01
  %i.ia = zext i1 %i.hz to i32
  %spec.select278 = add nuw nsw i32 %.3234, %i.ia
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.4235 = phi i32 [ 0, %bb.bg ], [ %spec.select278, %bb.bh ]
  %.0220 = phi nsz float [ %i.hu, %bb.bg ], [ 1.000000e+00, %bb.bh ] ; 3 uses
  %.1 = phi i32 [ 3, %bb.bg ], [ 2, %bb.bh ]
  %i.ib = fadd reassoc nsz arcp contract afn float %.0220, -1.000000e+00
  %i.ic = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ib)
  %i.id = fcmp reassoc nsz arcp contract afn olt float %i.ic, 1.000000e-03
  %spec.select274 = select i1 %i.id, i32 2, i32 %.1
  %i.ie = fsub reassoc nsz arcp contract afn float %.0220, %spec.store.select.i313
  %i.if = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ie)
  %i.ig = fcmp reassoc nsz arcp contract afn olt float %i.if, 1.000000e-03
  %.3 = select i1 %i.ig, i32 0, i32 %spec.select274
  br label %bb.bn

bb.bj:                                            ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 2188
  store i32 %i.w, ptr %i.ih, align 4, !tbaa !292
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 2192
  store i32 %i.y, ptr %i.ii, align 16, !tbaa !293
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 2196
  store <2 x float> %i.at, ptr %i.ij, align 4, !tbaa !116
  br label %bb.bn

bb.bk:                                            ; preds = %bb.at
  %i.ik = getelementptr inbounds nuw i8, ptr %i.g, i64 2188
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !292
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 2192
  %i.in = load i32, ptr %i.im, align 16, !tbaa !293
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 2196
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !116
  br label %bb.bn

bb.bl:                                            ; preds = %bb.at
  %i.iq = icmp eq i32 %1, 3
  %i.ir = icmp ne i32 %6, 0
  %or.cond8 = and i1 %i.iq, %i.ir
  br i1 %or.cond8, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.is = call reassoc nsz arcp contract afn float @dt_dev_get_zoom_scale(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %i.it = fmul reassoc nsz arcp contract afn float %spec.store.select.i, %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.iu = fmul reassoc nsz arcp contract afn float %i.is, %i.cj
  call fastcc void @_zoom_constraint_bounds(i32 noundef 1, float noundef %i.it, float noundef %i.iu, ptr noundef %i.b, ptr noundef %i.c)
  %i.iv = fmul reassoc nsz arcp contract afn float %2, %i.cj ; 3 uses
  %i.iw = load float, ptr %i.c, align 4, !tbaa !116 ; 2 uses
  %i.ix = fcmp reassoc nsz arcp contract afn ogt float %i.iv, %i.iw
  %i.iy = load float, ptr %i.b, align 4           ; 2 uses
  %i.iz = fcmp reassoc nsz arcp contract afn olt float %i.iv, %i.iy
  %i.ja = select reassoc nsz arcp contract afn i1 %i.iz, float %i.iy, float %i.iv
  %i.jb = select reassoc nsz arcp contract afn i1 %i.ix, float %i.iw, float %i.ja
  %i.jc = fdiv reassoc nsz arcp contract afn float %i.jb, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.bn

bb.bn:                                            ; preds = %dt_dev_get_zoom_scale.exit305, %bb.as, %bb.r, %bb.s, %bb.bj, %bb.bl, %bb.bm, %bb.bk, %bb.bi
  %.5236 = phi i32 [ %3, %bb.bl ], [ %i.co, %bb.s ], [ %.4235, %bb.bi ], [ %3, %bb.bj ], [ %i.in, %bb.bk ], [ %3, %bb.bm ], [ 0, %bb.r ], [ %.0231, %bb.as ], [ %.0231, %dt_dev_get_zoom_scale.exit305 ] ; 2 uses
  %.1221 = phi nsz float [ %2, %bb.bl ], [ %2, %bb.s ], [ %.0220, %bb.bi ], [ %i.u, %bb.bj ], [ %i.u, %bb.bk ], [ %i.jc, %bb.bm ], [ %2, %bb.r ], [ %i.fc, %bb.as ], [ %spec.store.select.i302, %dt_dev_get_zoom_scale.exit305 ] ; 2 uses
  %.4 = phi i32 [ %1, %bb.bl ], [ 2, %bb.s ], [ %.3, %bb.bi ], [ 0, %bb.bj ], [ %i.il, %bb.bk ], [ 3, %bb.bm ], [ 2, %bb.r ], [ %.0, %bb.as ], [ %.0, %dt_dev_get_zoom_scale.exit305 ] ; 3 uses
  %i.jd = phi <2 x float> [ %i.at, %bb.bl ], [ %i.at, %bb.s ], [ %i.at, %bb.bi ], [ %i.at, %bb.bj ], [ %i.ip, %bb.bk ], [ %i.at, %bb.bm ], [ %i.at, %bb.r ], [ %i.at, %bb.as ], [ %i.at, %dt_dev_get_zoom_scale.exit305 ]
  store i32 %.5236, ptr %i.x, align 8, !tbaa !209
  store float %.1221, ptr %i.t, align 4, !tbaa !200
  store i32 %.4, ptr %i.v, align 4, !tbaa !208
  br label %bb.bo

bb.bo:                                            ; preds = %bb.p, %dt_dev_get_zoom_scale.exit, %bb.bn
  %i.je = phi float [ %.1221, %bb.bn ], [ %i.u, %dt_dev_get_zoom_scale.exit ], [ %i.u, %bb.p ]
  %i.jf = phi i32 [ %.5236, %bb.bn ], [ %i.y, %dt_dev_get_zoom_scale.exit ], [ %i.y, %bb.p ]
  %i.jg = phi i32 [ %.4, %bb.bn ], [ %i.w, %dt_dev_get_zoom_scale.exit ], [ %i.w, %bb.p ]
  %.0230 = phi i32 [ %i.y, %bb.bn ], [ %i.y, %dt_dev_get_zoom_scale.exit ], [ %spec.select, %bb.p ]
  %.5 = phi i32 [ %.4, %bb.bn ], [ %1, %dt_dev_get_zoom_scale.exit ], [ 5, %bb.p ] ; 2 uses
  %i.jh = phi <2 x float> [ %i.jd, %bb.bn ], [ %i.bx, %dt_dev_get_zoom_scale.exit ], [ %i.cf, %bb.p ] ; 2 uses
  %i.ji = icmp ne i32 %.5, 0
  %i.jj = icmp ne <2 x i32> %i.aq, zeroinitializer ; 2 uses
  %i.jk = extractelement <2 x i1> %i.jj, i64 0
  %or.cond11 = select i1 %i.ji, i1 %i.jk, i1 false
  %i.jl = extractelement <2 x i1> %i.jj, i64 1
  %or.cond14 = select i1 %or.cond11, i1 %i.jl, i1 false
  br i1 %or.cond14, label %bb.bp, label %bb.cg

bb.bp:                                            ; preds = %bb.bo
  %i.jm = shl nuw i32 1, %i.jf
  %i.jn = load ptr, ptr %i.p, align 8, !tbaa !197 ; 2 uses
  %.not23.i.i321 = icmp eq ptr %i.jn, null
  br i1 %.not23.i.i321, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 156 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !183
  %.not24.i.i322 = icmp eq i32 %i.jp, 0
  br i1 %.not24.i.i322, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jq = load <2 x i32>, ptr %i.jo, align 4, !tbaa !171
  br label %dt_dev_get_processed_size.exit.i323

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %i.jr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !198
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 96
  %i.jt = load ptr, ptr %i.js, align 16, !tbaa !62 ; 3 uses
  %.not25.i.i328 = icmp eq ptr %i.jt, null
  br i1 %.not25.i.i328, label %dt_dev_get_processed_size.exit.i323, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 156 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !183
  %.not26.i.i329 = icmp eq i32 %i.jv, 0
  br i1 %.not26.i.i329, label %dt_dev_get_processed_size.exit.i323, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 152
  %i.jx = load float, ptr %i.jw, align 8, !tbaa !199
  %i.jy = load <2 x i32>, ptr %i.ju, align 4, !tbaa !171
  %i.jz = sitofp reassoc nsz arcp contract afn <2 x i32> %i.jy to <2 x float>
  %i.ka = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul reassoc nsz arcp contract afn <2 x float> %i.kb, %i.jz
  %i.kd = fptosi <2 x float> %i.kc to <2 x i32>
  br label %dt_dev_get_processed_size.exit.i323

dt_dev_get_processed_size.exit.i323:              ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %i.ke = phi <2 x i32> [ %i.jq, %bb.br ], [ zeroinitializer, %bb.bs ], [ zeroinitializer, %bb.bt ], [ %i.kd, %bb.bu ]
  %i.kf = load <2 x i32>, ptr %i.bm, align 8, !tbaa !171
  %i.kg = sitofp reassoc nsz arcp contract afn <2 x i32> %i.kf to <2 x float> ; 5 uses
  %i.kh = extractelement <2 x float> %i.kg, i64 0
  %i.ki = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ke to <2 x float> ; 2 uses
  %foldExtExtBinop399 = fdiv reassoc nsz arcp contract afn <2 x float> %i.kg, %i.ki
  %i.kj = extractelement <2 x float> %foldExtExtBinop399, i64 0 ; 2 uses
  %i.kk = extractelement <2 x float> %i.kg, i64 1
  %foldExtExtBinop401 = fdiv reassoc nsz arcp contract afn <2 x float> %i.kg, %i.ki
  %i.kl = extractelement <2 x float> %foldExtExtBinop401, i64 1 ; 2 uses
  switch i32 %i.jg, label %dt_dev_get_zoom_scale.exit330 [
    i32 0, label %bb.bv
    i32 1, label %bb.bw
    i32 2, label %bb.bx
  ]

bb.bv:                                            ; preds = %dt_dev_get_processed_size.exit.i323
  %i.km = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kj, float %i.kl)
  br label %dt_dev_get_zoom_scale.exit330

bb.bw:                                            ; preds = %dt_dev_get_processed_size.exit.i323
  %i.kn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kj, float %i.kl)
  br label %dt_dev_get_zoom_scale.exit330

bb.bx:                                            ; preds = %dt_dev_get_processed_size.exit.i323
  %i.ko = sitofp reassoc nsz arcp contract afn i32 %i.jm to float
  br label %dt_dev_get_zoom_scale.exit330

dt_dev_get_zoom_scale.exit330:                    ; preds = %dt_dev_get_processed_size.exit.i323, %bb.bv, %bb.bw, %bb.bx
  %.0.i326 = phi nsz float [ %i.ko, %bb.bx ], [ %i.km, %bb.bv ], [ %i.kn, %bb.bw ], [ %i.je, %dt_dev_get_processed_size.exit.i323 ] ; 2 uses
  %i.kp = fcmp reassoc nsz arcp contract afn une float %.0.i326, 0.000000e+00
  %spec.store.select.i327 = select i1 %i.kp, float %.0.i326, float 1.000000e+00 ; 3 uses
  %i.kq = extractelement <2 x float> %i.ar, i64 0
  %i.kr = fmul reassoc nsz arcp contract afn float %spec.store.select.i327, %i.kq
  %i.ks = fdiv reassoc nsz arcp contract afn float %i.kh, %i.kr ; 2 uses
  %i.kt = extractelement <2 x float> %i.ar, i64 1
  %i.ku = fmul reassoc nsz arcp contract afn float %spec.store.select.i327, %i.kt
  %i.kv = fdiv reassoc nsz arcp contract afn float %i.kk, %i.ku ; 2 uses
  %i.kw = fcmp reassoc nsz arcp contract afn oge float %4, 0.000000e+00
  %i.kx = fcmp reassoc nsz arcp contract afn oge float %5, 0.000000e+00
  %or.cond17 = and i1 %i.kw, %i.kx
  br i1 %or.cond17, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %dt_dev_get_zoom_scale.exit330
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !210
  %i.la = sitofp reassoc nsz arcp contract afn i32 %i.kz to float
  %i.lb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.kg, splat (float -5.000000e-01)
  %i.lc = fadd reassoc nsz arcp contract afn <2 x float> %i.lb, %i.bx
  %i.ld = insertelement <2 x float> poison, float %i.la, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fsub reassoc nsz arcp contract afn <2 x float> %i.lc, %i.le
  %i.lg = fdiv reassoc nsz arcp contract afn <2 x float> %i.lf, %i.ar ; 2 uses
  %i.lh = insertelement <2 x float> poison, float %spec.store.select.i, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = fdiv reassoc nsz arcp contract afn <2 x float> %i.lg, %i.li
  %i.lk = insertelement <2 x float> poison, float %spec.store.select.i327, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fdiv reassoc nsz arcp contract afn <2 x float> %i.lg, %i.ll
  %i.ln = fsub reassoc nsz arcp contract afn <2 x float> %i.jh, %i.lm
  %i.lo = fadd reassoc nsz arcp contract afn <2 x float> %i.ln, %i.lj
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %dt_dev_get_zoom_scale.exit330
  %i.lp = phi <2 x float> [ %i.lo, %bb.by ], [ %i.jh, %dt_dev_get_zoom_scale.exit330 ] ; 2 uses
  %i.lq = fcmp reassoc nsz arcp contract afn ogt float %i.ks, 1.000000e+00
  br i1 %i.lq, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lr = extractelement <2 x float> %i.lp, i64 0
  %i.ls = fpext reassoc nsz arcp contract afn float %i.lr to double ; 3 uses
end_hunk_0
