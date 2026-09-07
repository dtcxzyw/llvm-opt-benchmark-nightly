Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_al88?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_al88:bb.a

bb.v:                                             ; preds = %bb.u
  %i.em = xor i16 %.sroa.412.0.insert.ext.i, 255
  %i.en = xor i8 %i.eb, -1
  %i.eo = zext i8 %i.en to i16
  %i.ep = mul nuw i16 %i.em, %i.eo
  %i.eq = xor i16 %i.ep, -1
  %i.er = lshr i16 %i.eq, 8                       ; 2 uses
  %i.es = trunc nuw i16 %i.er to i8
  store i8 %i.es, ptr %i.v, align 2, !tbaa !13
  %narrow.i141.i = mul nuw i16 %.sroa.412.0.insert.ext.i, 255
  %i.et = udiv i16 %narrow.i141.i, %i.er
  %i.eu = trunc i16 %i.et to i8
  store i8 %i.eu, ptr %i.w, align 1, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ev = load i16, ptr %i.dy, align 1            ; 4 uses
  %i.ew = load i16, ptr %i.t, align 2
  %i.ex = icmp eq i16 %i.ev, %i.ew
  %i.ey = load i16, ptr %5, align 2
  %i.ez = icmp eq i16 %.sroa.011.0.insert.insert.i, %i.ey
  %or.cond180.i = select i1 %i.ex, i1 %i.ez, i1 false
  br i1 %or.cond180.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %.sroa.011.0.insert.insert.i, ptr %5, align 2
  store i16 %i.ev, ptr %i.t, align 2
  %i.fa = load i8, ptr %i.w, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i142.i = zext i8 %i.fa to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i143.i = and i16 %i.ev, -256
  %narrow.i57.i144.i = mul nuw i16 %.sroa.6.0.insert.ext44.i142.i, %.sroa.011.0.insert.ext.i
  %i.fb = and i16 %i.ev, 255
  %i.fc = xor i16 %.sroa.6.0.insert.ext44.i142.i, 255
  %narrow5.i58.i145.i = mul nuw i16 %i.fc, %i.fb
  %i.fd = add i16 %narrow5.i58.i145.i, %narrow.i57.i144.i
  %i.fe = lshr i16 %i.fd, 8
  %.sroa.03.0.insert.insert.i59.i146.i = or disjoint i16 %i.fe, %.sroa.4.0.extract.shift.i56.i143.i
  store i16 %.sroa.03.0.insert.insert.i59.i146.i, ptr %i.u, align 2
  %i.ff = load i8, ptr %i.v, align 2, !tbaa !13
  store i8 %i.ff, ptr %i.dp, align 1, !tbaa !22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fg = load i16, ptr %i.u, align 2
  br label %.sink.split.i147.i

.sink.split.i147.i:                               ; preds = %bb.y, %bb.t, %bb.q, %bb.p
  %.sink.i148.i = phi i16 [ %i.fg, %bb.y ], [ %.sroa.03.0.insert.insert.i.i153.i, %bb.t ], [ %.sroa.011.0.insert.insert.i, %bb.q ], [ %.sroa.011.0.insert.insert.i, %bb.p ]
  store i16 %.sink.i148.i, ptr %i.dy, align 1
  br label %lv_color_16a_16a_mix.exit154.i

lv_color_16a_16a_mix.exit154.i:                   ; preds = %.sink.split.i147.i, %bb.r
  %indvars.iv.next250.i = add nuw nsw i64 %indvars.iv249.i, 1 ; 2 uses
  %exitcond253.not.i = icmp eq i64 %indvars.iv.next250.i, %wide.trip.count252.i
  br i1 %exitcond253.not.i, label %._crit_edge216.i, label %bb.p, !llvm.loop !62

._crit_edge216.i:                                 ; preds = %lv_color_16a_16a_mix.exit154.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.2220.i, i64 %i.dq
  %i.fi = getelementptr inbounds nuw i8, ptr %.2122219.i, i64 %i.dr
  %i.fj = getelementptr inbounds i8, ptr %.0135217.i, i64 %i.ds
  %i.fk = add nuw nsw i32 %.2127218.i, 1          ; 2 uses
  %exitcond254.not.i = icmp eq i32 %i.fk, %i.f
  br i1 %exitcond254.not.i, label %rgb565_image_blend.exit, label %.preheader195.i, !llvm.loop !63

.preheader198.i:                                  ; preds = %._crit_edge210.i, %.preheader198.preheader.i
  %.3214.i = phi ptr [ %i.hc, %._crit_edge210.i ], [ %i.i, %.preheader198.preheader.i ] ; 2 uses
  %.3123213.i = phi ptr [ %i.hd, %._crit_edge210.i ], [ %i.m, %.preheader198.preheader.i ] ; 2 uses
  %.3128212.i = phi i32 [ %i.hf, %._crit_edge210.i ], [ 0, %.preheader198.preheader.i ]
  %.1136211.i = phi ptr [ %i.he, %._crit_edge210.i ], [ %i.q, %.preheader198.preheader.i ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %lv_color_16a_16a_mix.exit169.i, %.preheader198.i
  %indvars.iv243.i = phi i64 [ 0, %.preheader198.i ], [ %indvars.iv.next244.i, %lv_color_16a_16a_mix.exit169.i ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.3123213.i, i64 %indvars.iv243.i
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = call zeroext i8 @lv_color16_luminance(i16 %i.fm) #6
  %i.fo = getelementptr inbounds nuw i8, ptr %.1136211.i, i64 %indvars.iv243.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = zext i8 %i.fp to i16
  %i.fr = mul nuw i16 %i.fq, %i.ak                ; 4 uses
  %.sroa.410.0.insert.shift.i = and i16 %i.fr, -256
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.3214.i, i64 %indvars.iv243.i ; 4 uses
  %.sroa.09.0.insert.ext.i = zext i8 %i.fn to i16 ; 3 uses
  %.sroa.09.0.insert.insert.i = or disjoint i16 %.sroa.410.0.insert.shift.i, %.sroa.09.0.insert.ext.i ; 4 uses
  %.sroa.6.0.extract.shift.i.i = lshr i16 %i.fr, 8 ; 5 uses
  %i.ft = icmp ugt i16 %i.fr, -769
  br i1 %i.ft, label %.sink.split.i162.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !20  ; 4 uses
  %i.fw = icmp ult i8 %i.fv, 3
  br i1 %i.fw, label %.sink.split.i162.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fx = icmp ult i16 %i.fr, 768
  br i1 %i.fx, label %lv_color_16a_16a_mix.exit169.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fy = icmp eq i8 %i.fv, -1
  br i1 %i.fy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fz = load i16, ptr %i.fs, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i165.i = and i16 %i.fz, -256
  %narrow.i.i166.i = mul nuw i16 %.sroa.6.0.extract.shift.i.i, %.sroa.09.0.insert.ext.i
  %i.ga = and i16 %i.fz, 255
  %i.gb = xor i16 %.sroa.6.0.extract.shift.i.i, 255
  %narrow5.i.i167.i = mul nuw i16 %i.ga, %i.gb
  %i.gc = add i16 %narrow5.i.i167.i, %narrow.i.i166.i
  %i.gd = lshr i16 %i.gc, 8
  %.sroa.03.0.insert.insert.i.i168.i = or disjoint i16 %i.gd, %.sroa.4.0.extract.shift.i.i165.i
  br label %.sink.split.i162.i

bb.ae:                                            ; preds = %bb.ac
  %i.ge = load i8, ptr %i.dg, align 1, !tbaa !21
  %.not.i155.i = icmp eq i8 %i.fv, %i.ge
  %i.gf = load i8, ptr %i.dh, align 1
  %i.gg = zext i8 %i.gf to i16
  %.not54.i164.i = icmp eq i16 %.sroa.6.0.extract.shift.i.i, %i.gg
  %or.cond183.i = select i1 %.not.i155.i, i1 %.not54.i164.i, i1 false
  br i1 %or.cond183.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gh = xor i16 %.sroa.6.0.extract.shift.i.i, 255
  %i.gi = xor i8 %i.fv, -1
  %i.gj = zext i8 %i.gi to i16
  %i.gk = mul nuw i16 %i.gh, %i.gj
  %i.gl = xor i16 %i.gk, -1
  %i.gm = lshr i16 %i.gl, 8                       ; 2 uses
  %i.gn = trunc nuw i16 %i.gm to i8
  store i8 %i.gn, ptr %i.v, align 2, !tbaa !13
  %narrow.i156.i = mul nuw i16 %.sroa.6.0.extract.shift.i.i, 255
  %i.go = udiv i16 %narrow.i156.i, %i.gm
  %i.gp = trunc i16 %i.go to i8
  store i8 %i.gp, ptr %i.w, align 1, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gq = load i16, ptr %i.fs, align 1            ; 4 uses
  %i.gr = load i16, ptr %i.t, align 2
  %i.gs = icmp eq i16 %i.gq, %i.gr
  %i.gt = load i16, ptr %5, align 2
  %i.gu = icmp eq i16 %.sroa.09.0.insert.insert.i, %i.gt
  %or.cond185.i = select i1 %i.gs, i1 %i.gu, i1 false
  br i1 %or.cond185.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i16 %.sroa.09.0.insert.insert.i, ptr %5, align 2
  store i16 %i.gq, ptr %i.t, align 2
  %i.gv = load i8, ptr %i.w, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i157.i = zext i8 %i.gv to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i158.i = and i16 %i.gq, -256
  %narrow.i57.i159.i = mul nuw i16 %.sroa.6.0.insert.ext44.i157.i, %.sroa.09.0.insert.ext.i
  %i.gw = and i16 %i.gq, 255
  %i.gx = xor i16 %.sroa.6.0.insert.ext44.i157.i, 255
  %narrow5.i58.i160.i = mul nuw i16 %i.gx, %i.gw
  %i.gy = add i16 %narrow5.i58.i160.i, %narrow.i57.i159.i
  %i.gz = lshr i16 %i.gy, 8
  %.sroa.03.0.insert.insert.i59.i161.i = or disjoint i16 %i.gz, %.sroa.4.0.extract.shift.i56.i158.i
  store i16 %.sroa.03.0.insert.insert.i59.i161.i, ptr %i.u, align 2
  %i.ha = load i8, ptr %i.v, align 2, !tbaa !13
  store i8 %i.ha, ptr %i.di, align 1, !tbaa !22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hb = load i16, ptr %i.u, align 2
  br label %.sink.split.i162.i

.sink.split.i162.i:                               ; preds = %bb.ai, %bb.ad, %bb.aa, %bb.z
  %.sink.i163.i = phi i16 [ %i.hb, %bb.ai ], [ %.sroa.03.0.insert.insert.i.i168.i, %bb.ad ], [ %.sroa.09.0.insert.insert.i, %bb.aa ], [ %.sroa.09.0.insert.insert.i, %bb.z ]
  store i16 %.sink.i163.i, ptr %i.fs, align 1
  br label %lv_color_16a_16a_mix.exit169.i

lv_color_16a_16a_mix.exit169.i:                   ; preds = %.sink.split.i162.i, %bb.ab
  %indvars.iv.next244.i = add nuw nsw i64 %indvars.iv243.i, 1 ; 2 uses
  %exitcond247.not.i = icmp eq i64 %indvars.iv.next244.i, %wide.trip.count246.i
  br i1 %exitcond247.not.i, label %._crit_edge210.i, label %bb.z, !llvm.loop !64

._crit_edge210.i:                                 ; preds = %lv_color_16a_16a_mix.exit169.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.3214.i, i64 %i.dj
  %i.hd = getelementptr inbounds nuw i8, ptr %.3123213.i, i64 %i.dk
  %i.he = getelementptr inbounds i8, ptr %.1136211.i, i64 %i.dl
  %i.hf = add nuw nsw i32 %.3128212.i, 1          ; 2 uses
  %exitcond248.not.i = icmp eq i32 %i.hf, %i.f
  br i1 %exitcond248.not.i, label %rgb565_image_blend.exit, label %.preheader198.i, !llvm.loop !65

.preheader201.i:                                  ; preds = %._crit_edge.i, %.preheader201.preheader.i
  %.4208.i = phi ptr [ %i.jn, %._crit_edge.i ], [ %i.i, %.preheader201.preheader.i ] ; 2 uses
  %.4124207.i = phi ptr [ %i.jo, %._crit_edge.i ], [ %i.m, %.preheader201.preheader.i ] ; 2 uses
  %.4129206.i = phi i32 [ %i.jp, %._crit_edge.i ], [ 0, %.preheader201.preheader.i ]
  %.2137205.i = phi ptr [ %.3138.i, %._crit_edge.i ], [ %i.q, %.preheader201.preheader.i ] ; 3 uses
  %i.hg = icmp eq ptr %.2137205.i, null           ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %blend_non_normal_pixel.exit.i, %.preheader201.i
  %indvars.iv.i = phi i64 [ 0, %.preheader201.i ], [ %indvars.iv.next.i, %blend_non_normal_pixel.exit.i ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.4124207.i, i64 %indvars.iv.i
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = call zeroext i8 @lv_color16_luminance(i16 %i.hi) #6 ; 2 uses
  br i1 %i.hg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hk = getelementptr inbounds nuw i8, ptr %.2137205.i, i64 %indvars.iv.i
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !15
  %i.hm = zext i8 %i.hl to i16
  %i.hn = mul nuw i16 %i.hm, %i.ac
  %i.ho = lshr i16 %i.hn, 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.4.0.i = phi i16 [ %i.ho, %bb.ak ], [ %i.ac, %bb.aj ] ; 8 uses
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.4208.i, i64 %indvars.iv.i ; 8 uses
  %i.hq = load i32, ptr %i.x, align 4, !tbaa !33
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.hj to i16  ; 3 uses
  switch i32 %i.hq, label %blend_non_normal_pixel.exit.i [
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
    i32 4, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.al
  %i.hr = load i8, ptr %i.hp, align 1, !tbaa !34
  %narrow.i = call i8 @llvm.uadd.sat.i8(i8 %i.hj, i8 %i.hr)
  %spec.select24.i.i = zext i8 %narrow.i to i16
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.hs = load i8, ptr %i.hp, align 1, !tbaa !34
  %i.ht = zext i8 %i.hs to i16
  %i.hu = sub nsw i16 %i.ht, %.sroa.0.0.insert.ext.i
  %spec.select2223.i.i = call i16 @llvm.smax.i16(i16 %i.hu, i16 0)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.hv = load i8, ptr %i.hp, align 1, !tbaa !34
  %i.hw = zext i8 %i.hv to i16
  %i.hx = mul nuw i16 %i.hw, %.sroa.0.0.insert.ext.i
  %i.hy = lshr i16 %i.hx, 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.hz = load i8, ptr %i.hp, align 1, !tbaa !34
  %i.ia = zext i8 %i.hz to i16
  %i.ib = sub nsw i16 %i.ia, %.sroa.0.0.insert.ext.i
  %i.ic = call i16 @llvm.abs.i16(i16 %i.ib, i1 true)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.0.0.i.i = phi i16 [ %spec.select24.i.i, %bb.am ], [ %spec.select2223.i.i, %bb.an ], [ %i.hy, %bb.ao ], [ %i.ic, %bb.ap ] ; 3 uses
  %.sroa.0.0.insert.insert.i.i = add nuw nsw i16 %.sroa.0.0.i.i, %.sroa.4.0.insert.shift.i ; 4 uses
  %i.id = icmp samesign ugt i16 %.sroa.4.0.i, 252
  br i1 %i.id, label %.sink.split.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !20  ; 4 uses
  %i.ig = icmp ult i8 %i.if, 3
  br i1 %i.ig, label %.sink.split.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ih = icmp samesign ult i16 %.sroa.4.0.i, 3
  br i1 %i.ih, label %blend_non_normal_pixel.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ii = icmp eq i8 %i.if, -1
  br i1 %i.ii, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ij = load i16, ptr %i.hp, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i = and i16 %i.ij, -256
  %narrow.i.i.i.i = mul nuw i16 %.sroa.0.0.i.i, %.sroa.4.0.i
  %i.ik = and i16 %i.ij, 255
  %i.il = xor i16 %.sroa.4.0.i, 255
  %narrow5.i.i.i.i = mul nuw i16 %i.ik, %i.il
  %i.im = add i16 %narrow5.i.i.i.i, %narrow.i.i.i.i
  %i.in = lshr i16 %i.im, 8
  %.sroa.03.0.insert.insert.i.i.i.i = or disjoint i16 %i.in, %.sroa.4.0.extract.shift.i.i.i.i
  br label %.sink.split.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.io = load i8, ptr %i.ad, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.if, %i.io
  %i.ip = load i8, ptr %i.ae, align 1
  %i.iq = zext i8 %i.ip to i16
  %.not54.i.i.i = icmp eq i16 %.sroa.4.0.i, %i.iq
  %or.cond188.i = select i1 %.not.i.i.i, i1 %.not54.i.i.i, i1 false
  br i1 %or.cond188.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ir = xor i16 %.sroa.4.0.i, 255
  %i.is = xor i8 %i.if, -1
  %i.it = zext i8 %i.is to i16
  %i.iu = mul nuw i16 %i.ir, %i.it
  %i.iv = xor i16 %i.iu, -1
  %i.iw = lshr i16 %i.iv, 8                       ; 2 uses
  %i.ix = trunc nuw i16 %i.iw to i8
  store i8 %i.ix, ptr %i.v, align 2, !tbaa !13
  %narrow.i.i170.i = mul nuw i16 %.sroa.4.0.i, 255
  %i.iy = udiv i16 %narrow.i.i170.i, %i.iw
  %i.iz = trunc i16 %i.iy to i8
  store i8 %i.iz, ptr %i.w, align 1, !tbaa !14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ja = load i16, ptr %i.hp, align 1            ; 4 uses
  %i.jb = load i16, ptr %i.t, align 2
  %i.jc = icmp eq i16 %i.ja, %i.jb
  %i.jd = load i16, ptr %5, align 2
  %i.je = icmp eq i16 %.sroa.0.0.insert.insert.i.i, %i.jd
  %or.cond190.i = select i1 %i.jc, i1 %i.je, i1 false
  br i1 %or.cond190.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i16 %.sroa.0.0.insert.insert.i.i, ptr %5, align 2
  store i16 %i.ja, ptr %i.t, align 2
  %i.jf = load i8, ptr %i.w, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i.i.i = zext i8 %i.jf to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i.i = and i16 %i.ja, -256
  %narrow.i57.i.i.i = mul nuw i16 %.sroa.0.0.i.i, %.sroa.6.0.insert.ext44.i.i.i
  %i.jg = and i16 %i.ja, 255
  %i.jh = xor i16 %.sroa.6.0.insert.ext44.i.i.i, 255
  %narrow5.i58.i.i.i = mul nuw i16 %i.jh, %i.jg
  %i.ji = add i16 %narrow5.i58.i.i.i, %narrow.i57.i.i.i
  %i.jj = lshr i16 %i.ji, 8
  %.sroa.03.0.insert.insert.i59.i.i.i = or disjoint i16 %i.jj, %.sroa.4.0.extract.shift.i56.i.i.i
  store i16 %.sroa.03.0.insert.insert.i59.i.i.i, ptr %i.u, align 2
  %i.jk = load i8, ptr %i.v, align 2, !tbaa !13
  store i8 %i.jk, ptr %i.af, align 1, !tbaa !22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jl = load i16, ptr %i.u, align 2
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.az, %bb.au, %bb.ar, %bb.aq
  %.sink.i.i.i = phi i16 [ %i.jl, %bb.az ], [ %.sroa.03.0.insert.insert.i.i.i.i, %bb.au ], [ %.sroa.0.0.insert.insert.i.i, %bb.ar ], [ %.sroa.0.0.insert.insert.i.i, %bb.aq ]
  store i16 %.sink.i.i.i, ptr %i.hp, align 1
  br label %blend_non_normal_pixel.exit.i

blend_non_normal_pixel.exit.i:                    ; preds = %.sink.split.i.i.i, %bb.as, %bb.al
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !66

._crit_edge.i:                                    ; preds = %blend_non_normal_pixel.exit.i
  %i.jm = getelementptr inbounds i8, ptr %.2137205.i, i64 %i.ag
  %.3138.i = select i1 %i.hg, ptr null, ptr %i.jm
  %i.jn = getelementptr inbounds nuw i8, ptr %.4208.i, i64 %i.ah
  %i.jo = getelementptr inbounds nuw i8, ptr %.4124207.i, i64 %i.ai
  %i.jp = add nuw nsw i32 %.4129206.i, 1          ; 2 uses
  %exitcond242.not.i = icmp eq i32 %i.jp, %i.f
  br i1 %exitcond242.not.i, label %rgb565_image_blend.exit, label %.preheader201.i, !llvm.loop !67

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i, %._crit_edge210.i, %._crit_edge216.i, %._crit_edge222.split.i, %._crit_edge222.split.us.us.i, %._crit_edge231.i, %.preheader202.i, %.preheader201.lr.ph.i, %.preheader191.i, %.preheader.lr.ph.i, %.preheader193.i, %.preheader192.lr.ph.i, %.preheader199.i, %.preheader198.lr.ph.i, %.preheader196.i, %.preheader195.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.jv

bb.ba:                                            ; preds = %bb.a
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext 3)
  br label %bb.jv

bb.bb:                                            ; preds = %bb.a
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext 4)
  br label %bb.jv

bb.bc:                                            ; preds = %bb.a
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !24 ; 10 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !25 ; 10 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !26  ; 5 uses
  %i.jw = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !28 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !29 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !30 ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !31 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @lv_memset(ptr noundef nonnull %4, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.kh, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.ki, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 11 uses
  store i8 -1, ptr %i.kj, align 2, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 11 uses
  store i8 -1, ptr %i.kk, align 1, !tbaa !14
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !33
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.bd, label %.preheader247.i

.preheader247.i:                                  ; preds = %bb.bc
  %i.ko = icmp sgt i32 %i.jt, 0
  br i1 %i.ko, label %.preheader246.lr.ph.i, label %argb8888_image_blend.exit

.preheader246.lr.ph.i:                            ; preds = %.preheader247.i
  %i.kp = icmp sgt i32 %i.jr, 0
  %i.kq = zext i8 %i.jv to i32
  %i.kr = zext i8 %i.jv to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.kv = sext i32 %i.kg to i64
  %i.kw = zext i32 %i.jy to i64
  %i.kx = zext i32 %i.kc to i64
  br i1 %i.kp, label %.preheader246.preheader.i, label %argb8888_image_blend.exit

.preheader246.preheader.i:                        ; preds = %.preheader246.lr.ph.i
  %wide.trip.count.i8 = zext nneg i32 %i.jr to i64
  br label %.preheader246.i

bb.bd:                                            ; preds = %bb.bc
  %i.ky = icmp eq ptr %i.ke, null                 ; 2 uses
  %i.kz = zext i8 %i.jv to i32                    ; 2 uses
  %i.la = icmp ugt i8 %i.jv, -4                   ; 2 uses
  %or.cond.i34 = select i1 %i.ky, i1 %i.la, i1 false
  br i1 %or.cond.i34, label %.preheader236.i, label %bb.bo
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_al88:bb.a
  store i16 %.sroa.015.0.insert.insert.i, ptr %4, align 2
  store i16 %i.qs, ptr %i.kh, align 2
  %i.qx = load i8, ptr %i.kk, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i179.i = zext i8 %i.qx to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i181.i = and i16 %i.qs, -256
  %narrow.i57.i182.i = mul nuw i16 %.sroa.6.0.insert.ext44.i179.i, %.sroa.015.0.insert.ext.i
  %i.qy = and i16 %i.qs, 255
  %i.qz = xor i16 %.sroa.6.0.insert.ext44.i179.i, 255
  %narrow5.i58.i183.i = mul nuw i16 %i.qz, %i.qy
  %i.ra = add i16 %narrow5.i58.i183.i, %narrow.i57.i182.i
  %i.rb = lshr i16 %i.ra, 8
  %.sroa.03.0.insert.insert.i59.i184.i = or disjoint i16 %i.rb, %.sroa.4.0.extract.shift.i56.i181.i
  store i16 %.sroa.03.0.insert.insert.i59.i184.i, ptr %i.ki, align 2
  %i.rc = load i8, ptr %i.kj, align 2, !tbaa !13
  store i8 %i.rc, ptr %i.pg, align 1, !tbaa !22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.rd = load i16, ptr %i.ki, align 2
  br label %.sink.split.i185.i

.sink.split.i185.i:                               ; preds = %bb.cj, %bb.ce, %bb.cb, %bb.ca
  %.sink.i186.i = phi i16 [ %i.rd, %bb.cj ], [ %.sroa.03.0.insert.insert.i.i191.i, %bb.ce ], [ %.sroa.015.0.insert.insert.i, %bb.cb ], [ %.sroa.015.0.insert.insert.i, %bb.ca ]
  store i16 %.sink.i186.i, ptr %i.pu, align 1
  br label %lv_color_16a_16a_mix.exit192.i

lv_color_16a_16a_mix.exit192.i:                   ; preds = %.sink.split.i185.i, %bb.cc
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next290.i, %wide.trip.count292.i
  br i1 %exitcond293.not.i, label %._crit_edge261.i, label %bb.ca, !llvm.loop !72

._crit_edge261.i:                                 ; preds = %lv_color_16a_16a_mix.exit192.i
  %i.re = getelementptr inbounds nuw i8, ptr %.2265.i, i64 %i.ph
  %i.rf = getelementptr inbounds nuw i8, ptr %.2138264.i, i64 %i.pi
  %i.rg = getelementptr inbounds i8, ptr %.0141263.i, i64 %i.pj
  %i.rh = add nuw nsw i32 %.2147262.i, 1          ; 2 uses
  %exitcond294.not.i = icmp eq i32 %i.rh, %i.jt
  br i1 %exitcond294.not.i, label %argb8888_image_blend.exit, label %.preheader240.i, !llvm.loop !73

bb.ck:                                            ; preds = %bb.bz
  %or.cond11.i = select i1 %i.pb, i1 %i.mz, i1 false
  %i.ri = icmp sgt i32 %i.jt, 0
  %or.cond276.i = select i1 %or.cond11.i, i1 %i.ri, i1 false
  br i1 %or.cond276.i, label %.preheader243.lr.ph.i, label %argb8888_image_blend.exit

.preheader243.lr.ph.i:                            ; preds = %bb.ck
  %i.rj = icmp sgt i32 %i.jr, 0
  %i.rk = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.rl = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.rm = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.rn = zext i32 %i.jy to i64
  %i.ro = zext i32 %i.kc to i64
  %i.rp = sext i32 %i.kg to i64
  br i1 %i.rj, label %.preheader243.preheader.i, label %argb8888_image_blend.exit

.preheader243.preheader.i:                        ; preds = %.preheader243.lr.ph.i
  %wide.trip.count286.i = zext nneg i32 %i.jr to i64
  br label %.preheader243.i

.preheader243.i:                                  ; preds = %._crit_edge255.i, %.preheader243.preheader.i
  %.3259.i = phi ptr [ %i.tl, %._crit_edge255.i ], [ %i.jw, %.preheader243.preheader.i ] ; 2 uses
  %.3139258.i = phi ptr [ %i.tm, %._crit_edge255.i ], [ %i.ka, %.preheader243.preheader.i ] ; 2 uses
  %.1142257.i = phi ptr [ %i.tn, %._crit_edge255.i ], [ %i.ke, %.preheader243.preheader.i ] ; 2 uses
  %.3148256.i = phi i32 [ %i.to, %._crit_edge255.i ], [ 0, %.preheader243.preheader.i ]
  br label %bb.cl

bb.cl:                                            ; preds = %lv_color_16a_16a_mix.exit209.i, %.preheader243.i
  %indvars.iv283.i = phi i64 [ 0, %.preheader243.i ], [ %indvars.iv.next284.i, %lv_color_16a_16a_mix.exit209.i ] ; 4 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.3139258.i, i64 %indvars.iv283.i ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 1
  %i.rs = call zeroext i8 @lv_color32_luminance(i32 %i.rr) #6
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 3
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !120
  %i.rv = zext i8 %i.ru to i32
  %i.rw = getelementptr inbounds nuw i8, ptr %.1142257.i, i64 %indvars.iv283.i
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !15
  %i.ry = zext i8 %i.rx to i32
  %i.rz = mul nuw nsw i32 %i.rv, %i.kz
  %i.sa = mul nuw nsw i32 %i.rz, %i.ry            ; 3 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %.3259.i, i64 %indvars.iv283.i ; 4 uses
  %sh.diff.i = lshr i32 %i.sa, 8
  %tr.sh.diff.i = trunc nuw i32 %sh.diff.i to i16 ; 2 uses
  %.sroa.414.0.insert.shift.i37 = and i16 %tr.sh.diff.i, -256
  %.sroa.013.0.insert.ext.i38 = zext i8 %i.rs to i16 ; 3 uses
  %.sroa.013.0.insert.insert.i39 = or disjoint i16 %.sroa.414.0.insert.shift.i37, %.sroa.013.0.insert.ext.i38 ; 4 uses
  %.sroa.6.0.extract.shift.i193.i = lshr i16 %tr.sh.diff.i, 8 ; 5 uses
  %i.sc = icmp samesign ugt i32 %i.sa, 16580607
  br i1 %i.sc, label %.sink.split.i202.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !20  ; 4 uses
  %i.sf = icmp ult i8 %i.se, 3
  br i1 %i.sf, label %.sink.split.i202.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sg = icmp samesign ult i32 %i.sa, 196608
  br i1 %i.sg, label %lv_color_16a_16a_mix.exit209.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sh = icmp eq i8 %i.se, -1
  br i1 %i.sh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.si = load i16, ptr %i.sb, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i205.i = and i16 %i.si, -256
  %narrow.i.i206.i = mul nuw i16 %.sroa.6.0.extract.shift.i193.i, %.sroa.013.0.insert.ext.i38
  %i.sj = and i16 %i.si, 255
  %i.sk = xor i16 %.sroa.6.0.extract.shift.i193.i, 255
  %narrow5.i.i207.i = mul nuw i16 %i.sj, %i.sk
  %i.sl = add i16 %narrow5.i.i207.i, %narrow.i.i206.i
  %i.sm = lshr i16 %i.sl, 8
  %.sroa.03.0.insert.insert.i.i208.i = or disjoint i16 %i.sm, %.sroa.4.0.extract.shift.i.i205.i
  br label %.sink.split.i202.i

bb.cq:                                            ; preds = %bb.co
  %i.sn = load i8, ptr %i.rk, align 1, !tbaa !21
  %.not.i194.i = icmp eq i8 %i.se, %i.sn
  %i.so = load i8, ptr %i.rl, align 1
  %i.sp = zext i8 %i.so to i16
  %.not54.i204.i = icmp eq i16 %.sroa.6.0.extract.shift.i193.i, %i.sp
  %or.cond228.i = select i1 %.not.i194.i, i1 %.not54.i204.i, i1 false
  br i1 %or.cond228.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.sq = xor i16 %.sroa.6.0.extract.shift.i193.i, 255
  %i.sr = xor i8 %i.se, -1
  %i.ss = zext i8 %i.sr to i16
  %i.st = mul nuw i16 %i.sq, %i.ss
  %i.su = xor i16 %i.st, -1
  %i.sv = lshr i16 %i.su, 8                       ; 2 uses
  %i.sw = trunc nuw i16 %i.sv to i8
  store i8 %i.sw, ptr %i.kj, align 2, !tbaa !13
  %narrow.i195.i = mul nuw i16 %.sroa.6.0.extract.shift.i193.i, 255
  %i.sx = udiv i16 %narrow.i195.i, %i.sv
  %i.sy = trunc i16 %i.sx to i8
  store i8 %i.sy, ptr %i.kk, align 1, !tbaa !14
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.sz = load i16, ptr %i.sb, align 1            ; 4 uses
  %i.ta = load i16, ptr %i.kh, align 2
  %i.tb = icmp eq i16 %i.sz, %i.ta
  %i.tc = load i16, ptr %4, align 2
  %i.td = icmp eq i16 %.sroa.013.0.insert.insert.i39, %i.tc
  %or.cond230.i = select i1 %i.tb, i1 %i.td, i1 false
  br i1 %or.cond230.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i16 %.sroa.013.0.insert.insert.i39, ptr %4, align 2
  store i16 %i.sz, ptr %i.kh, align 2
  %i.te = load i8, ptr %i.kk, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i196.i = zext i8 %i.te to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i198.i = and i16 %i.sz, -256
  %narrow.i57.i199.i = mul nuw i16 %.sroa.6.0.insert.ext44.i196.i, %.sroa.013.0.insert.ext.i38
  %i.tf = and i16 %i.sz, 255
  %i.tg = xor i16 %.sroa.6.0.insert.ext44.i196.i, 255
  %narrow5.i58.i200.i = mul nuw i16 %i.tg, %i.tf
  %i.th = add i16 %narrow5.i58.i200.i, %narrow.i57.i199.i
  %i.ti = lshr i16 %i.th, 8
  %.sroa.03.0.insert.insert.i59.i201.i = or disjoint i16 %i.ti, %.sroa.4.0.extract.shift.i56.i198.i
  store i16 %.sroa.03.0.insert.insert.i59.i201.i, ptr %i.ki, align 2
  %i.tj = load i8, ptr %i.kj, align 2, !tbaa !13
  store i8 %i.tj, ptr %i.rm, align 1, !tbaa !22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.tk = load i16, ptr %i.ki, align 2
  br label %.sink.split.i202.i

.sink.split.i202.i:                               ; preds = %bb.cu, %bb.cp, %bb.cm, %bb.cl
  %.sink.i203.i = phi i16 [ %i.tk, %bb.cu ], [ %.sroa.03.0.insert.insert.i.i208.i, %bb.cp ], [ %.sroa.013.0.insert.insert.i39, %bb.cm ], [ %.sroa.013.0.insert.insert.i39, %bb.cl ]
  store i16 %.sink.i203.i, ptr %i.sb, align 1
  br label %lv_color_16a_16a_mix.exit209.i

lv_color_16a_16a_mix.exit209.i:                   ; preds = %.sink.split.i202.i, %bb.cn
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %exitcond287.not.i = icmp eq i64 %indvars.iv.next284.i, %wide.trip.count286.i
  br i1 %exitcond287.not.i, label %._crit_edge255.i, label %bb.cl, !llvm.loop !74

._crit_edge255.i:                                 ; preds = %lv_color_16a_16a_mix.exit209.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.3259.i, i64 %i.rn
  %i.tm = getelementptr inbounds nuw i8, ptr %.3139258.i, i64 %i.ro
  %i.tn = getelementptr inbounds i8, ptr %.1142257.i, i64 %i.rp
  %i.to = add nuw nsw i32 %.3148256.i, 1          ; 2 uses
  %exitcond288.not.i = icmp eq i32 %i.to, %i.jt
  br i1 %exitcond288.not.i, label %argb8888_image_blend.exit, label %.preheader243.i, !llvm.loop !75

.preheader246.i:                                  ; preds = %._crit_edge.i27, %.preheader246.preheader.i
  %.4253.i = phi ptr [ %i.we, %._crit_edge.i27 ], [ %i.jw, %.preheader246.preheader.i ] ; 2 uses
  %.4140252.i = phi ptr [ %i.wf, %._crit_edge.i27 ], [ %i.ka, %.preheader246.preheader.i ] ; 2 uses
  %.2143251.i = phi ptr [ %.3144.i, %._crit_edge.i27 ], [ %i.ke, %.preheader246.preheader.i ] ; 3 uses
  %.4149250.i = phi i32 [ %i.wg, %._crit_edge.i27 ], [ 0, %.preheader246.preheader.i ]
  %i.tp = icmp eq ptr %.2143251.i, null           ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %blend_non_normal_pixel.exit.i24, %.preheader246.i
  %indvars.iv.i9 = phi i64 [ 0, %.preheader246.i ], [ %indvars.iv.next.i25, %blend_non_normal_pixel.exit.i24 ] ; 4 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.4140252.i, i64 %indvars.iv.i9 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 1
  %i.ts = call zeroext i8 @lv_color32_luminance(i32 %i.tr) #6 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 3
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !120 ; 2 uses
  br i1 %i.tp, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.tv = zext i8 %i.tu to i16
  %i.tw = mul nuw i16 %i.tv, %i.kr
  %i.tx = lshr i16 %i.tw, 8
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.ty = zext i8 %i.tu to i32
  %i.tz = getelementptr inbounds nuw i8, ptr %.2143251.i, i64 %indvars.iv.i9
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !15
  %i.ub = zext i8 %i.ua to i32
  %i.uc = mul nuw nsw i32 %i.ty, %i.kq
  %i.ud = mul nuw nsw i32 %i.uc, %i.ub
  %i.ue = lshr i32 %i.ud, 16
  %i.uf = trunc nuw nsw i32 %i.ue to i16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.4.0.i10 = phi i16 [ %i.tx, %bb.cw ], [ %i.uf, %bb.cx ] ; 8 uses
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr %.4253.i, i64 %indvars.iv.i9 ; 8 uses
  %i.uh = load i32, ptr %i.kl, align 4, !tbaa !33
  %.sroa.4.0.insert.shift.i11 = shl nuw i16 %.sroa.4.0.i10, 8
  %.sroa.0.0.insert.ext.i12 = zext i8 %i.ts to i16 ; 3 uses
  switch i32 %i.uh, label %blend_non_normal_pixel.exit.i24 [
    i32 1, label %bb.cz
    i32 2, label %bb.da
    i32 3, label %bb.db
    i32 4, label %bb.dc
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.ui = load i8, ptr %i.ug, align 1, !tbaa !34
  %narrow.i33 = call i8 @llvm.uadd.sat.i8(i8 %i.ts, i8 %i.ui)
  %spec.select24.i.i34 = zext i8 %narrow.i33 to i16
  br label %bb.dd

bb.da:                                            ; preds = %bb.cy
  %i.uj = load i8, ptr %i.ug, align 1, !tbaa !34
  %i.uk = zext i8 %i.uj to i16
  %i.ul = sub nsw i16 %i.uk, %.sroa.0.0.insert.ext.i12
  %spec.select2223.i.i32 = call i16 @llvm.smax.i16(i16 %i.ul, i16 0)
  br label %bb.dd

bb.db:                                            ; preds = %bb.cy
  %i.um = load i8, ptr %i.ug, align 1, !tbaa !34
  %i.un = zext i8 %i.um to i16
  %i.uo = mul nuw i16 %i.un, %.sroa.0.0.insert.ext.i12
  %i.up = lshr i16 %i.uo, 8
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.uq = load i8, ptr %i.ug, align 1, !tbaa !34
  %i.ur = zext i8 %i.uq to i16
  %i.us = sub nsw i16 %i.ur, %.sroa.0.0.insert.ext.i12
  %i.ut = call i16 @llvm.abs.i16(i16 %i.us, i1 true)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz
  %.sroa.0.0.i.i13 = phi i16 [ %spec.select24.i.i34, %bb.cz ], [ %spec.select2223.i.i32, %bb.da ], [ %i.up, %bb.db ], [ %i.ut, %bb.dc ] ; 3 uses
  %.sroa.0.0.insert.insert.i.i14 = add nuw nsw i16 %.sroa.0.0.i.i13, %.sroa.4.0.insert.shift.i11 ; 4 uses
  %i.uu = icmp ugt i16 %.sroa.4.0.i10, 252
  br i1 %i.uu, label %.sink.split.i.i.i22, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !20  ; 4 uses
  %i.ux = icmp ult i8 %i.uw, 3
  br i1 %i.ux, label %.sink.split.i.i.i22, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.uy = icmp samesign ult i16 %.sroa.4.0.i10, 3
  br i1 %i.uy, label %blend_non_normal_pixel.exit.i24, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.uz = icmp eq i8 %i.uw, -1
  br i1 %i.uz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.va = load i16, ptr %i.ug, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i28 = and i16 %i.va, -256
  %narrow.i.i.i.i29 = mul nuw i16 %.sroa.0.0.i.i13, %.sroa.4.0.i10
  %i.vb = and i16 %i.va, 255
  %i.vc = xor i16 %.sroa.4.0.i10, 255
  %narrow5.i.i.i.i30 = mul nuw i16 %i.vb, %i.vc
  %i.vd = add i16 %narrow5.i.i.i.i30, %narrow.i.i.i.i29
  %i.ve = lshr i16 %i.vd, 8
  %.sroa.03.0.insert.insert.i.i.i.i31 = or disjoint i16 %i.ve, %.sroa.4.0.extract.shift.i.i.i.i28
  br label %.sink.split.i.i.i22

bb.di:                                            ; preds = %bb.dg
  %i.vf = load i8, ptr %i.ks, align 1, !tbaa !21
  %.not.i.i.i15 = icmp eq i8 %i.uw, %i.vf
  %i.vg = load i8, ptr %i.kt, align 1
  %i.vh = zext i8 %i.vg to i16
  %.not54.i.i.i16 = icmp eq i16 %.sroa.4.0.i10, %i.vh
  %or.cond233.i = select i1 %.not.i.i.i15, i1 %.not54.i.i.i16, i1 false
  br i1 %or.cond233.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vi = xor i16 %.sroa.4.0.i10, 255
  %i.vj = xor i8 %i.uw, -1
  %i.vk = zext i8 %i.vj to i16
  %i.vl = mul nuw i16 %i.vi, %i.vk
  %i.vm = xor i16 %i.vl, -1
  %i.vn = lshr i16 %i.vm, 8                       ; 2 uses
  %i.vo = trunc nuw i16 %i.vn to i8
  store i8 %i.vo, ptr %i.kj, align 2, !tbaa !13
  %narrow.i.i210.i = mul nuw i16 %.sroa.4.0.i10, 255
  %i.vp = udiv i16 %narrow.i.i210.i, %i.vn
  %i.vq = trunc i16 %i.vp to i8
  store i8 %i.vq, ptr %i.kk, align 1, !tbaa !14
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.vr = load i16, ptr %i.ug, align 1            ; 4 uses
  %i.vs = load i16, ptr %i.kh, align 2
  %i.vt = icmp eq i16 %i.vr, %i.vs
  %i.vu = load i16, ptr %4, align 2
  %i.vv = icmp eq i16 %.sroa.0.0.insert.insert.i.i14, %i.vu
  %or.cond235.i = select i1 %i.vt, i1 %i.vv, i1 false
  br i1 %or.cond235.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i16 %.sroa.0.0.insert.insert.i.i14, ptr %4, align 2
  store i16 %i.vr, ptr %i.kh, align 2
  %i.vw = load i8, ptr %i.kk, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i.i.i17 = zext i8 %i.vw to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i.i18 = and i16 %i.vr, -256
  %narrow.i57.i.i.i19 = mul nuw i16 %.sroa.0.0.i.i13, %.sroa.6.0.insert.ext44.i.i.i17
  %i.vx = and i16 %i.vr, 255
  %i.vy = xor i16 %.sroa.6.0.insert.ext44.i.i.i17, 255
  %narrow5.i58.i.i.i20 = mul nuw i16 %i.vy, %i.vx
  %i.vz = add i16 %narrow5.i58.i.i.i20, %narrow.i57.i.i.i19
  %i.wa = lshr i16 %i.vz, 8
  %.sroa.03.0.insert.insert.i59.i.i.i21 = or disjoint i16 %i.wa, %.sroa.4.0.extract.shift.i56.i.i.i18
  store i16 %.sroa.03.0.insert.insert.i59.i.i.i21, ptr %i.ki, align 2
  %i.wb = load i8, ptr %i.kj, align 2, !tbaa !13
  store i8 %i.wb, ptr %i.ku, align 1, !tbaa !22
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.wc = load i16, ptr %i.ki, align 2
  br label %.sink.split.i.i.i22

.sink.split.i.i.i22:                              ; preds = %bb.dm, %bb.dh, %bb.de, %bb.dd
  %.sink.i.i.i23 = phi i16 [ %i.wc, %bb.dm ], [ %.sroa.03.0.insert.insert.i.i.i.i31, %bb.dh ], [ %.sroa.0.0.insert.insert.i.i14, %bb.de ], [ %.sroa.0.0.insert.insert.i.i14, %bb.dd ]
  store i16 %.sink.i.i.i23, ptr %i.ug, align 1
  br label %blend_non_normal_pixel.exit.i24

blend_non_normal_pixel.exit.i24:                  ; preds = %.sink.split.i.i.i22, %bb.df, %bb.cy
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i9, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i8
  br i1 %exitcond.not.i26, label %._crit_edge.i27, label %bb.cv, !llvm.loop !76

._crit_edge.i27:                                  ; preds = %blend_non_normal_pixel.exit.i24
  %i.wd = getelementptr inbounds i8, ptr %.2143251.i, i64 %i.kv
  %.3144.i = select i1 %i.tp, ptr null, ptr %i.wd
  %i.we = getelementptr inbounds nuw i8, ptr %.4253.i, i64 %i.kw
  %i.wf = getelementptr inbounds nuw i8, ptr %.4140252.i, i64 %i.kx
  %i.wg = add nuw nsw i32 %.4149250.i, 1          ; 2 uses
  %exitcond282.not.i = icmp eq i32 %i.wg, %i.jt
  br i1 %exitcond282.not.i, label %argb8888_image_blend.exit, label %.preheader246.i, !llvm.loop !77

argb8888_image_blend.exit:                        ; preds = %._crit_edge.i27, %._crit_edge255.i, %._crit_edge261.i, %._crit_edge267.i, %._crit_edge272.i, %.preheader247.i, %.preheader246.lr.ph.i, %.preheader236.i, %.preheader.lr.ph.i41, %.preheader238.i, %.preheader237.lr.ph.i, %.preheader241.i, %.preheader240.lr.ph.i, %bb.ck, %.preheader243.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.jv

bb.dn:                                            ; preds = %bb.a
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !24 ; 14 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !25 ; 12 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wm = load i8, ptr %i.wl, align 8, !tbaa !26
  %.fr243.i = freeze i8 %i.wm                     ; 6 uses
  %i.wn = load ptr, ptr %0, align 8, !tbaa !27    ; 8 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !28 ; 5 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !29 ; 8 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !30 ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !31 ; 5 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @lv_memset(ptr noundef nonnull %3, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.wy = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.wy, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.wz = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.wz, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !33
  %i.xc = icmp eq i32 %i.xb, 0
  br i1 %i.xc, label %bb.do, label %.preheader209.i

.preheader209.i:                                  ; preds = %bb.dn
  %i.xd = icmp sgt i32 %i.wk, 0
  br i1 %i.xd, label %.preheader208.lr.ph.i, label %l8_image_blend.exit

.preheader208.lr.ph.i:                            ; preds = %.preheader209.i
  %i.xe = icmp sgt i32 %i.wi, 0
  %i.xf = zext i8 %.fr243.i to i16                ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.xh = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.xi = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.xj = sext i32 %i.wx to i64
  %i.xk = zext i32 %i.wp to i64
  %i.xl = zext i32 %i.wt to i64
  br i1 %i.xe, label %.preheader208.preheader.i, label %l8_image_blend.exit

.preheader208.preheader.i:                        ; preds = %.preheader208.lr.ph.i
  %wide.trip.count.i58 = zext nneg i32 %i.wi to i64
  br label %.preheader208.i

bb.do:                                            ; preds = %bb.dn
  %i.xm = icmp eq ptr %i.wv, null                 ; 2 uses
  %i.xn = zext i8 %.fr243.i to i16                ; 5 uses
  %i.xo = icmp ugt i8 %.fr243.i, -4               ; 2 uses
  %or.cond.i84 = and i1 %i.xo, %i.xm
  br i1 %or.cond.i84, label %.preheader198.i110, label %bb.dp

.preheader198.i110:                               ; preds = %bb.do
  %i.xp = icmp sgt i32 %i.wk, 0
  br i1 %i.xp, label %.preheader.lr.ph.i111, label %l8_image_blend.exit

.preheader.lr.ph.i111:                            ; preds = %.preheader198.i110
  %i.xq = icmp sgt i32 %i.wi, 0
  %i.xr = zext i32 %i.wp to i64                   ; 2 uses
  %i.xs = zext i32 %i.wt to i64                   ; 2 uses
  br i1 %i.xq, label %.preheader.preheader.i112, label %l8_image_blend.exit

.preheader.preheader.i112:                        ; preds = %.preheader.lr.ph.i111
  %wide.trip.count278.i = zext nneg i32 %i.wi to i64 ; 10 uses
  %i.xt = add nsw i32 %i.wk, -1
  %i.xu = zext i32 %i.xt to i64                   ; 2 uses
  %i.xv = mul nuw i64 %i.xr, %i.xu
  %i.xw = shl nuw nsw i64 %wide.trip.count278.i, 1
  %i.xx = getelementptr i8, ptr %i.wn, i64 %i.xv
  %scevgep583 = getelementptr i8, ptr %i.xx, i64 %i.xw
  %i.xy = mul nuw i64 %i.xs, %i.xu
  %i.xz = getelementptr i8, ptr %i.wr, i64 %i.xy
  %scevgep584.a = getelementptr i8, ptr %i.xz, i64 %wide.trip.count278.i
  %min.iters.check589 = icmp ult i32 %i.wi, 4
  %bound0585 = icmp ult ptr %i.wn, %scevgep584.a
  %bound1586 = icmp ult ptr %i.wr, %scevgep583
  %found.conflict587 = and i1 %bound0585, %bound1586
  %min.iters.check590 = icmp ult i32 %i.wi, 16
  %i.ya = and i64 %wide.trip.count278.i, 12
  %n.vec592 = and i64 %wide.trip.count278.i, 2147483632 ; 4 uses
  %cmp.n600 = icmp eq i64 %n.vec592, %wide.trip.count278.i
  %min.epilog.iters.check = icmp eq i64 %i.ya, 0
  %n.vec601 = and i64 %wide.trip.count278.i, 2147483644 ; 3 uses
  %cmp.n606 = icmp eq i64 %n.vec601, %wide.trip.count278.i
  %xtraiter659.a = and i64 %wide.trip.count278.i, 3 ; 2 uses
  %lcmp.mod660.not.a = icmp eq i64 %xtraiter659.a, 0
  br label %iter.check

end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_al88:bb.a
  %narrow.i57.i151.i = mul nuw i16 %.sroa.6.0.insert.ext44.i149.i, %.sroa.014.0.insert.ext.i
  %i.aea = and i16 %i.adv, 255
  %i.aeb = xor i16 %.sroa.6.0.insert.ext44.i149.i, 255
  %narrow5.i58.i152.i = mul nuw i16 %i.aea, %i.aeb
  %i.aec = add i16 %narrow5.i58.i152.i, %narrow.i57.i151.i
  %i.aed = lshr i16 %i.aec, 8
  %.sroa.03.0.insert.insert.i59.i153.i = or disjoint i16 %i.aed, %.sroa.4.0.extract.shift.i56.i150.i
  store i16 %.sroa.03.0.insert.insert.i59.i153.i, ptr %i.wz, align 2
  store i8 %i.adt, ptr %i.ack, align 1, !tbaa !22
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.aee = load i16, ptr %i.wz, align 2
  br label %.sink.split.i154.i

.sink.split.i154.i:                               ; preds = %bb.ei, %bb.ed, %bb.ea, %bb.dz
  %i.aef = phi i8 [ %i.adt, %bb.ei ], [ %i.acq, %bb.ed ], [ %i.acq, %bb.ea ], [ %i.acq, %bb.dz ]
  %i.aeg = phi i8 [ %i.adu, %bb.ei ], [ %i.acr, %bb.ed ], [ %i.acr, %bb.ea ], [ %i.acr, %bb.dz ]
  %.sink.i155.i = phi i16 [ %i.aee, %bb.ei ], [ %.sroa.03.0.insert.insert.i.i160.i, %bb.ed ], [ %.sroa.014.0.insert.insert.i, %bb.ea ], [ %.sroa.014.0.insert.insert.i, %bb.dz ]
  store i16 %.sink.i155.i, ptr %i.acw, align 1
  br label %lv_color_16a_16a_mix.exit161.i

lv_color_16a_16a_mix.exit161.i:                   ; preds = %.sink.split.i154.i, %bb.eb
  %i.aeh = phi i8 [ %i.acq, %bb.eb ], [ %i.aef, %.sink.split.i154.i ] ; 2 uses
  %i.aei = phi i8 [ %i.acr, %bb.eb ], [ %i.aeg, %.sink.split.i154.i ] ; 2 uses
  %indvars.iv.next258.i = add nuw nsw i64 %indvars.iv257.i, 1 ; 2 uses
  %exitcond261.not.i = icmp eq i64 %indvars.iv.next258.i, %wide.trip.count260.i
  br i1 %exitcond261.not.i, label %._crit_edge223.i, label %bb.dz, !llvm.loop !88

._crit_edge223.i:                                 ; preds = %lv_color_16a_16a_mix.exit161.i
  %i.aej = getelementptr inbounds nuw i8, ptr %.2227.i, i64 %i.acl
  %i.aek = getelementptr inbounds nuw i8, ptr %.2127226.i, i64 %i.acm
  %i.ael = getelementptr inbounds i8, ptr %.0140224.i, i64 %i.acn
  %i.aem = add nuw nsw i32 %.2132225.i, 1         ; 2 uses
  %exitcond262.not.i = icmp eq i32 %i.aem, %i.wk
  br i1 %exitcond262.not.i, label %l8_image_blend.exit, label %.preheader202.i90, !llvm.loop !89

bb.ej:                                            ; preds = %bb.dy
  %or.cond11.i87 = and i1 %i.zj, %i.acf
  %i.aen = icmp sgt i32 %i.wk, 0
  %or.cond242.i = select i1 %or.cond11.i87, i1 %i.aen, i1 false
  br i1 %or.cond242.i, label %.preheader205.lr.ph.i, label %l8_image_blend.exit

.preheader205.lr.ph.i:                            ; preds = %bb.ej
  %i.aeo = icmp sgt i32 %i.wi, 0
  %i.aep = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.aeq = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.aer = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.aes = zext i32 %i.wp to i64
  %i.aet = zext i32 %i.wt to i64
  %i.aeu = sext i32 %i.wx to i64
  br i1 %i.aeo, label %.preheader205.preheader.i, label %l8_image_blend.exit

.preheader205.preheader.i:                        ; preds = %.preheader205.lr.ph.i
  %wide.trip.count254.i = zext nneg i32 %i.wi to i64
  br label %.preheader205.i

.preheader205.i:                                  ; preds = %._crit_edge217.i, %.preheader205.preheader.i
  %i.aev = phi i8 [ %i.agr, %._crit_edge217.i ], [ -1, %.preheader205.preheader.i ]
  %i.aew = phi i8 [ %i.ags, %._crit_edge217.i ], [ -1, %.preheader205.preheader.i ]
  %.3221.i = phi ptr [ %i.agt, %._crit_edge217.i ], [ %i.wn, %.preheader205.preheader.i ] ; 2 uses
  %.3128220.i = phi ptr [ %i.agu, %._crit_edge217.i ], [ %i.wr, %.preheader205.preheader.i ] ; 2 uses
  %.3133219.i = phi i32 [ %i.agw, %._crit_edge217.i ], [ 0, %.preheader205.preheader.i ]
  %.1141218.i = phi ptr [ %i.agv, %._crit_edge217.i ], [ %i.wv, %.preheader205.preheader.i ] ; 2 uses
  br label %bb.ek

bb.ek:                                            ; preds = %lv_color_16a_16a_mix.exit176.i, %.preheader205.i
  %i.aex = phi i8 [ %i.aev, %.preheader205.i ], [ %i.agr, %lv_color_16a_16a_mix.exit176.i ] ; 5 uses
  %i.aey = phi i8 [ %i.aew, %.preheader205.i ], [ %i.ags, %lv_color_16a_16a_mix.exit176.i ] ; 5 uses
  %indvars.iv251.i = phi i64 [ 0, %.preheader205.i ], [ %indvars.iv.next252.i, %lv_color_16a_16a_mix.exit176.i ] ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.3128220.i, i64 %indvars.iv251.i
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !15
  %i.afb = getelementptr inbounds nuw i8, ptr %.1141218.i, i64 %indvars.iv251.i
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !15
  %i.afd = zext i8 %i.afc to i16
  %i.afe = mul nuw i16 %i.afd, %i.xn              ; 4 uses
  %.sroa.413.0.insert.shift.i = and i16 %i.afe, -256
  %i.aff = getelementptr inbounds nuw [2 x i8], ptr %.3221.i, i64 %indvars.iv251.i ; 4 uses
  %.sroa.012.0.insert.ext.i = zext i8 %i.afa to i16 ; 3 uses
  %.sroa.012.0.insert.insert.i = or disjoint i16 %.sroa.413.0.insert.shift.i, %.sroa.012.0.insert.ext.i ; 4 uses
  %.sroa.6.0.extract.shift.i.i88 = lshr i16 %i.afe, 8 ; 5 uses
  %i.afg = icmp ugt i16 %i.afe, -769
  br i1 %i.afg, label %.sink.split.i169.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 1
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !20 ; 4 uses
  %i.afj = icmp ult i8 %i.afi, 3
  br i1 %i.afj, label %.sink.split.i169.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.afk = icmp ult i16 %i.afe, 768
  br i1 %i.afk, label %lv_color_16a_16a_mix.exit176.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.afl = icmp eq i8 %i.afi, -1
  br i1 %i.afl, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.afm = load i16, ptr %i.aff, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i172.i = and i16 %i.afm, -256
  %narrow.i.i173.i = mul nuw i16 %.sroa.6.0.extract.shift.i.i88, %.sroa.012.0.insert.ext.i
  %i.afn = and i16 %i.afm, 255
  %i.afo = xor i16 %.sroa.6.0.extract.shift.i.i88, 255
  %narrow5.i.i174.i = mul nuw i16 %i.afn, %i.afo
  %i.afp = add i16 %narrow5.i.i174.i, %narrow.i.i173.i
  %i.afq = lshr i16 %i.afp, 8
  %.sroa.03.0.insert.insert.i.i175.i = or disjoint i16 %i.afq, %.sroa.4.0.extract.shift.i.i172.i
  br label %.sink.split.i169.i

bb.ep:                                            ; preds = %bb.en
  %i.afr = load i8, ptr %i.aep, align 1, !tbaa !21
  %.not.i162.i = icmp eq i8 %i.afi, %i.afr
  %i.afs = load i8, ptr %i.aeq, align 1
  %i.aft = zext i8 %i.afs to i16
  %.not54.i171.i = icmp eq i16 %.sroa.6.0.extract.shift.i.i88, %i.aft
  %or.cond190.i89 = select i1 %.not.i162.i, i1 %.not54.i171.i, i1 false
  br i1 %or.cond190.i89, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.afu = xor i16 %.sroa.6.0.extract.shift.i.i88, 255
  %i.afv = xor i8 %i.afi, -1
  %i.afw = zext i8 %i.afv to i16
  %i.afx = mul nuw i16 %i.afu, %i.afw
  %i.afy = xor i16 %i.afx, -1
  %i.afz = lshr i16 %i.afy, 8                     ; 2 uses
  %i.aga = trunc nuw i16 %i.afz to i8
  %narrow.i163.i = mul nuw i16 %.sroa.6.0.extract.shift.i.i88, 255
  %i.agb = udiv i16 %narrow.i163.i, %i.afz
  %i.agc = trunc i16 %i.agb to i8
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.agd = phi i8 [ %i.aex, %bb.ep ], [ %i.aga, %bb.eq ] ; 2 uses
  %i.age = phi i8 [ %i.aey, %bb.ep ], [ %i.agc, %bb.eq ] ; 2 uses
  %i.agf = load i16, ptr %i.aff, align 1          ; 4 uses
  %i.agg = load i16, ptr %i.wy, align 2
  %i.agh = icmp eq i16 %i.agf, %i.agg
  %i.agi = load i16, ptr %3, align 2
  %i.agj = icmp eq i16 %.sroa.012.0.insert.insert.i, %i.agi
  %or.cond192.i = select i1 %i.agh, i1 %i.agj, i1 false
  br i1 %or.cond192.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  store i16 %.sroa.012.0.insert.insert.i, ptr %3, align 2
  store i16 %i.agf, ptr %i.wy, align 2
  %.sroa.6.0.insert.ext44.i164.i = zext i8 %i.age to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i165.i = and i16 %i.agf, -256
  %narrow.i57.i166.i = mul nuw i16 %.sroa.6.0.insert.ext44.i164.i, %.sroa.012.0.insert.ext.i
  %i.agk = and i16 %i.agf, 255
  %i.agl = xor i16 %.sroa.6.0.insert.ext44.i164.i, 255
  %narrow5.i58.i167.i = mul nuw i16 %i.agk, %i.agl
  %i.agm = add i16 %narrow5.i58.i167.i, %narrow.i57.i166.i
  %i.agn = lshr i16 %i.agm, 8
  %.sroa.03.0.insert.insert.i59.i168.i = or disjoint i16 %i.agn, %.sroa.4.0.extract.shift.i56.i165.i
  store i16 %.sroa.03.0.insert.insert.i59.i168.i, ptr %i.wz, align 2
  store i8 %i.agd, ptr %i.aer, align 1, !tbaa !22
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.ago = load i16, ptr %i.wz, align 2
  br label %.sink.split.i169.i

.sink.split.i169.i:                               ; preds = %bb.et, %bb.eo, %bb.el, %bb.ek
  %i.agp = phi i8 [ %i.agd, %bb.et ], [ %i.aex, %bb.eo ], [ %i.aex, %bb.el ], [ %i.aex, %bb.ek ]
  %i.agq = phi i8 [ %i.age, %bb.et ], [ %i.aey, %bb.eo ], [ %i.aey, %bb.el ], [ %i.aey, %bb.ek ]
  %.sink.i170.i = phi i16 [ %i.ago, %bb.et ], [ %.sroa.03.0.insert.insert.i.i175.i, %bb.eo ], [ %.sroa.012.0.insert.insert.i, %bb.el ], [ %.sroa.012.0.insert.insert.i, %bb.ek ]
  store i16 %.sink.i170.i, ptr %i.aff, align 1
  br label %lv_color_16a_16a_mix.exit176.i

lv_color_16a_16a_mix.exit176.i:                   ; preds = %.sink.split.i169.i, %bb.em
  %i.agr = phi i8 [ %i.aex, %bb.em ], [ %i.agp, %.sink.split.i169.i ] ; 2 uses
  %i.ags = phi i8 [ %i.aey, %bb.em ], [ %i.agq, %.sink.split.i169.i ] ; 2 uses
  %indvars.iv.next252.i = add nuw nsw i64 %indvars.iv251.i, 1 ; 2 uses
  %exitcond255.not.i = icmp eq i64 %indvars.iv.next252.i, %wide.trip.count254.i
  br i1 %exitcond255.not.i, label %._crit_edge217.i, label %bb.ek, !llvm.loop !90

._crit_edge217.i:                                 ; preds = %lv_color_16a_16a_mix.exit176.i
  %i.agt = getelementptr inbounds nuw i8, ptr %.3221.i, i64 %i.aes
  %i.agu = getelementptr inbounds nuw i8, ptr %.3128220.i, i64 %i.aet
  %i.agv = getelementptr inbounds i8, ptr %.1141218.i, i64 %i.aeu
  %i.agw = add nuw nsw i32 %.3133219.i, 1         ; 2 uses
  %exitcond256.not.i = icmp eq i32 %i.agw, %i.wk
  br i1 %exitcond256.not.i, label %l8_image_blend.exit, label %.preheader205.i, !llvm.loop !91

.preheader208.i:                                  ; preds = %._crit_edge.i77, %.preheader208.preheader.i
  %i.agx = phi i8 [ %i.aji, %._crit_edge.i77 ], [ -1, %.preheader208.preheader.i ]
  %i.agy = phi i8 [ %i.ajj, %._crit_edge.i77 ], [ -1, %.preheader208.preheader.i ]
  %.4215.i = phi ptr [ %i.ajl, %._crit_edge.i77 ], [ %i.wn, %.preheader208.preheader.i ] ; 2 uses
  %.4129214.i = phi ptr [ %i.ajm, %._crit_edge.i77 ], [ %i.wr, %.preheader208.preheader.i ] ; 2 uses
  %.4134213.i = phi i32 [ %i.ajn, %._crit_edge.i77 ], [ 0, %.preheader208.preheader.i ]
  %.2142212.i = phi ptr [ %.3143.i, %._crit_edge.i77 ], [ %i.wv, %.preheader208.preheader.i ] ; 3 uses
  %i.agz = icmp eq ptr %.2142212.i, null          ; 2 uses
  br label %bb.eu

bb.eu:                                            ; preds = %blend_non_normal_pixel.exit.i74, %.preheader208.i
  %i.aha = phi i8 [ %i.agx, %.preheader208.i ], [ %i.aji, %blend_non_normal_pixel.exit.i74 ] ; 6 uses
  %i.ahb = phi i8 [ %i.agy, %.preheader208.i ], [ %i.ajj, %blend_non_normal_pixel.exit.i74 ] ; 6 uses
  %indvars.iv.i59 = phi i64 [ 0, %.preheader208.i ], [ %indvars.iv.next.i75, %blend_non_normal_pixel.exit.i74 ] ; 4 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.4129214.i, i64 %indvars.iv.i59
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !15 ; 2 uses
  br i1 %i.agz, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ahe = getelementptr inbounds nuw i8, ptr %.2142212.i, i64 %indvars.iv.i59
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !15
  %i.ahg = zext i8 %i.ahf to i16
  %i.ahh = mul nuw i16 %i.ahg, %i.xf
  %i.ahi = lshr i16 %i.ahh, 8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.sroa.4.0.i60 = phi i16 [ %i.ahi, %bb.ev ], [ %i.xf, %bb.eu ] ; 8 uses
  %i.ahj = getelementptr inbounds nuw [2 x i8], ptr %.4215.i, i64 %indvars.iv.i59 ; 8 uses
  %i.ahk = load i32, ptr %i.xa, align 4, !tbaa !33
  %.sroa.4.0.insert.shift.i61 = shl nuw i16 %.sroa.4.0.i60, 8
  %.sroa.0.0.insert.ext.i62 = zext i8 %i.ahd to i16 ; 3 uses
  switch i32 %i.ahk, label %blend_non_normal_pixel.exit.i74 [
    i32 1, label %bb.ex
    i32 2, label %bb.ey
    i32 3, label %bb.ez
    i32 4, label %bb.fa
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.ahl = load i8, ptr %i.ahj, align 1, !tbaa !34
  %narrow.i84 = call i8 @llvm.uadd.sat.i8(i8 %i.ahd, i8 %i.ahl)
  %spec.select24.i.i85 = zext i8 %narrow.i84 to i16
  br label %bb.fb

bb.ey:                                            ; preds = %bb.ew
  %i.ahm = load i8, ptr %i.ahj, align 1, !tbaa !34
  %i.ahn = zext i8 %i.ahm to i16
  %i.aho = sub nsw i16 %i.ahn, %.sroa.0.0.insert.ext.i62
  %spec.select2223.i.i82 = call i16 @llvm.smax.i16(i16 %i.aho, i16 0)
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ew
  %i.ahp = load i8, ptr %i.ahj, align 1, !tbaa !34
  %i.ahq = zext i8 %i.ahp to i16
  %i.ahr = mul nuw i16 %i.ahq, %.sroa.0.0.insert.ext.i62
  %i.ahs = lshr i16 %i.ahr, 8
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ew
  %i.aht = load i8, ptr %i.ahj, align 1, !tbaa !34
  %i.ahu = zext i8 %i.aht to i16
  %i.ahv = sub nsw i16 %i.ahu, %.sroa.0.0.insert.ext.i62
  %i.ahw = call i16 @llvm.abs.i16(i16 %i.ahv, i1 true)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex
  %.sroa.0.0.i.i63 = phi i16 [ %spec.select24.i.i85, %bb.ex ], [ %spec.select2223.i.i82, %bb.ey ], [ %i.ahs, %bb.ez ], [ %i.ahw, %bb.fa ] ; 3 uses
  %.sroa.0.0.insert.insert.i.i64 = add nuw nsw i16 %.sroa.0.0.i.i63, %.sroa.4.0.insert.shift.i61 ; 4 uses
  %i.ahx = icmp samesign ugt i16 %.sroa.4.0.i60, 252
  br i1 %i.ahx, label %.sink.split.i.i.i72, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahj, i64 1
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !20 ; 4 uses
  %i.aia = icmp ult i8 %i.ahz, 3
  br i1 %i.aia, label %.sink.split.i.i.i72, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aib = icmp samesign ult i16 %.sroa.4.0.i60, 3
  br i1 %i.aib, label %blend_non_normal_pixel.exit.i74, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aic = icmp eq i8 %i.ahz, -1
  br i1 %i.aic, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aid = load i16, ptr %i.ahj, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i78 = and i16 %i.aid, -256
  %narrow.i.i.i.i79 = mul nuw i16 %.sroa.0.0.i.i63, %.sroa.4.0.i60
  %i.aie = and i16 %i.aid, 255
  %i.aif = xor i16 %.sroa.4.0.i60, 255
  %narrow5.i.i.i.i80 = mul nuw i16 %i.aie, %i.aif
  %i.aig = add i16 %narrow5.i.i.i.i80, %narrow.i.i.i.i79
  %i.aih = lshr i16 %i.aig, 8
  %.sroa.03.0.insert.insert.i.i.i.i81 = or disjoint i16 %i.aih, %.sroa.4.0.extract.shift.i.i.i.i78
  br label %.sink.split.i.i.i72

bb.fg:                                            ; preds = %bb.fe
  %i.aii = load i8, ptr %i.xg, align 1, !tbaa !21
  %.not.i.i.i65 = icmp eq i8 %i.ahz, %i.aii
  %i.aij = load i8, ptr %i.xh, align 1
  %i.aik = zext i8 %i.aij to i16
  %.not54.i.i.i66 = icmp eq i16 %.sroa.4.0.i60, %i.aik
  %or.cond195.i = select i1 %.not.i.i.i65, i1 %.not54.i.i.i66, i1 false
  br i1 %or.cond195.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ail = xor i16 %.sroa.4.0.i60, 255
  %i.aim = xor i8 %i.ahz, -1
  %i.ain = zext i8 %i.aim to i16
  %i.aio = mul nuw i16 %i.ail, %i.ain
  %i.aip = xor i16 %i.aio, -1
  %i.aiq = lshr i16 %i.aip, 8                     ; 2 uses
  %i.air = trunc nuw i16 %i.aiq to i8
  %narrow.i.i177.i = mul nuw i16 %.sroa.4.0.i60, 255
  %i.ais = udiv i16 %narrow.i.i177.i, %i.aiq
  %i.ait = trunc i16 %i.ais to i8
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.aiu = phi i8 [ %i.aha, %bb.fg ], [ %i.air, %bb.fh ] ; 2 uses
  %i.aiv = phi i8 [ %i.ahb, %bb.fg ], [ %i.ait, %bb.fh ] ; 2 uses
  %i.aiw = load i16, ptr %i.ahj, align 1          ; 4 uses
  %i.aix = load i16, ptr %i.wy, align 2
  %i.aiy = icmp eq i16 %i.aiw, %i.aix
  %i.aiz = load i16, ptr %3, align 2
  %i.aja = icmp eq i16 %.sroa.0.0.insert.insert.i.i64, %i.aiz
  %or.cond197.i = select i1 %i.aiy, i1 %i.aja, i1 false
  br i1 %or.cond197.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store i16 %.sroa.0.0.insert.insert.i.i64, ptr %3, align 2
  store i16 %i.aiw, ptr %i.wy, align 2
  %.sroa.6.0.insert.ext44.i.i.i67 = zext i8 %i.aiv to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i.i68 = and i16 %i.aiw, -256
  %narrow.i57.i.i.i69 = mul nuw i16 %.sroa.0.0.i.i63, %.sroa.6.0.insert.ext44.i.i.i67
  %i.ajb = and i16 %i.aiw, 255
  %i.ajc = xor i16 %.sroa.6.0.insert.ext44.i.i.i67, 255
  %narrow5.i58.i.i.i70 = mul nuw i16 %i.ajb, %i.ajc
  %i.ajd = add i16 %narrow5.i58.i.i.i70, %narrow.i57.i.i.i69
  %i.aje = lshr i16 %i.ajd, 8
  %.sroa.03.0.insert.insert.i59.i.i.i71 = or disjoint i16 %i.aje, %.sroa.4.0.extract.shift.i56.i.i.i68
  store i16 %.sroa.03.0.insert.insert.i59.i.i.i71, ptr %i.wz, align 2
  store i8 %i.aiu, ptr %i.xi, align 1, !tbaa !22
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ajf = load i16, ptr %i.wz, align 2
  br label %.sink.split.i.i.i72

.sink.split.i.i.i72:                              ; preds = %bb.fk, %bb.ff, %bb.fc, %bb.fb
  %i.ajg = phi i8 [ %i.aiu, %bb.fk ], [ %i.aha, %bb.ff ], [ %i.aha, %bb.fc ], [ %i.aha, %bb.fb ]
  %i.ajh = phi i8 [ %i.aiv, %bb.fk ], [ %i.ahb, %bb.ff ], [ %i.ahb, %bb.fc ], [ %i.ahb, %bb.fb ]
  %.sink.i.i.i73 = phi i16 [ %i.ajf, %bb.fk ], [ %.sroa.03.0.insert.insert.i.i.i.i81, %bb.ff ], [ %.sroa.0.0.insert.insert.i.i64, %bb.fc ], [ %.sroa.0.0.insert.insert.i.i64, %bb.fb ]
  store i16 %.sink.i.i.i73, ptr %i.ahj, align 1
  br label %blend_non_normal_pixel.exit.i74

blend_non_normal_pixel.exit.i74:                  ; preds = %.sink.split.i.i.i72, %bb.fd, %bb.ew
  %i.aji = phi i8 [ %i.aha, %bb.ew ], [ %i.aha, %bb.fd ], [ %i.ajg, %.sink.split.i.i.i72 ] ; 2 uses
  %i.ajj = phi i8 [ %i.ahb, %bb.ew ], [ %i.ahb, %bb.fd ], [ %i.ajh, %.sink.split.i.i.i72 ] ; 2 uses
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %wide.trip.count.i58
  br i1 %exitcond.not.i76, label %._crit_edge.i77, label %bb.eu, !llvm.loop !92

._crit_edge.i77:                                  ; preds = %blend_non_normal_pixel.exit.i74
  %i.ajk = getelementptr inbounds i8, ptr %.2142212.i, i64 %i.xj
  %.3143.i = select i1 %i.agz, ptr null, ptr %i.ajk
  %i.ajl = getelementptr inbounds nuw i8, ptr %.4215.i, i64 %i.xk
  %i.ajm = getelementptr inbounds nuw i8, ptr %.4129214.i, i64 %i.xl
  %i.ajn = add nuw nsw i32 %.4134213.i, 1         ; 2 uses
  %exitcond250.not.i = icmp eq i32 %i.ajn, %i.wk
  br i1 %exitcond250.not.i, label %l8_image_blend.exit, label %.preheader208.i, !llvm.loop !93

l8_image_blend.exit:                              ; preds = %._crit_edge.i77, %._crit_edge217.i, %._crit_edge223.i, %._crit_edge229.split.i, %._crit_edge229.split.us.us.i, %._crit_edge238.i, %.preheader209.i, %.preheader208.lr.ph.i, %.preheader198.i110, %.preheader.lr.ph.i111, %.preheader200.i, %.preheader199.lr.ph.i, %.preheader203.i, %.preheader202.lr.ph.i, %bb.ej, %.preheader205.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.jv

bb.fl:                                            ; preds = %bb.a
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ajp = load i32, ptr %i.ajo, align 8, !tbaa !24 ; 10 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !25 ; 10 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ajt = load i8, ptr %i.ajs, align 8, !tbaa !26 ; 5 uses
  %i.aju = load ptr, ptr %0, align 8, !tbaa !27   ; 5 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !28 ; 5 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !29 ; 5 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aka = load i32, ptr %i.ajz, align 8, !tbaa !30 ; 5 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !31 ; 5 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ake = load i32, ptr %i.akd, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.akf = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.akf, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.akg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.akg, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !33
  %i.akj = icmp eq i32 %i.aki, 0
  br i1 %i.akj, label %bb.fm, label %.preheader237.i114

.preheader237.i114:                               ; preds = %bb.fl
  %i.akk = icmp sgt i32 %i.ajr, 0
  br i1 %i.akk, label %.preheader236.lr.ph.i, label %al88_image_blend.exit

.preheader236.lr.ph.i:                            ; preds = %.preheader237.i114
  %i.akl = icmp sgt i32 %i.ajp, 0
  %i.akm = zext i8 %i.ajt to i32
  %i.akn = zext i8 %i.ajt to i16
  %i.ako = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.akp = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.akq = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.akr = sext i32 %i.ake to i64
  %i.aks = zext i32 %i.ajw to i64
  %i.akt = zext i32 %i.aka to i64
  br i1 %i.akl, label %.preheader236.preheader.i, label %al88_image_blend.exit

.preheader236.preheader.i:                        ; preds = %.preheader236.lr.ph.i
  %wide.trip.count.i115 = zext nneg i32 %i.ajp to i64
  br label %.preheader236.i116

bb.fm:                                            ; preds = %bb.fl
  %i.aku = icmp eq ptr %i.akc, null               ; 2 uses
  %i.akv = zext i8 %i.ajt to i32                  ; 2 uses
  %i.akw = icmp ugt i8 %i.ajt, -4                 ; 2 uses
  %or.cond.i145 = select i1 %i.aku, i1 %i.akw, i1 false
  br i1 %or.cond.i145, label %.preheader226.i, label %bb.fx

.preheader226.i:                                  ; preds = %bb.fm
  %i.akx = icmp sgt i32 %i.ajr, 0
  br i1 %i.akx, label %.preheader.lr.ph.i164, label %al88_image_blend.exit

.preheader.lr.ph.i164:                            ; preds = %.preheader226.i
  %i.aky = icmp sgt i32 %i.ajp, 0
  %i.akz = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ala = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.alb = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.alc = zext i32 %i.ajw to i64
  %i.ald = zext i32 %i.aka to i64
  br i1 %i.aky, label %.preheader.preheader.i165, label %al88_image_blend.exit

.preheader.preheader.i165:                        ; preds = %.preheader.lr.ph.i164
  %wide.trip.count294.i = zext nneg i32 %i.ajp to i64
  br label %.preheader.i166

.preheader.i166:                                  ; preds = %._crit_edge262.i, %.preheader.preheader.i165
  %i.ale = phi i8 [ %i.amx, %._crit_edge262.i ], [ -1, %.preheader.preheader.i165 ]
  %i.alf = phi i8 [ %i.amy, %._crit_edge262.i ], [ -1, %.preheader.preheader.i165 ]
  %.0265.i = phi ptr [ %i.amz, %._crit_edge262.i ], [ %i.aju, %.preheader.preheader.i165 ] ; 2 uses
  %.0124264.i = phi ptr [ %i.ana, %._crit_edge262.i ], [ %i.ajy, %.preheader.preheader.i165 ] ; 2 uses
  %.0129263.i = phi i32 [ %i.anb, %._crit_edge262.i ], [ 0, %.preheader.preheader.i165 ]
  br label %bb.fn

bb.fn:                                            ; preds = %lv_color_16a_16a_mix.exit.i178, %.preheader.i166
  %i.alg = phi i8 [ %i.ale, %.preheader.i166 ], [ %i.amx, %lv_color_16a_16a_mix.exit.i178 ] ; 5 uses
  %i.alh = phi i8 [ %i.alf, %.preheader.i166 ], [ %i.amy, %lv_color_16a_16a_mix.exit.i178 ] ; 5 uses
  %indvars.iv291.i = phi i64 [ 0, %.preheader.i166 ], [ %indvars.iv.next292.i, %lv_color_16a_16a_mix.exit.i178 ] ; 3 uses
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %.0124264.i, i64 %indvars.iv291.i
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %.0265.i, i64 %indvars.iv291.i ; 4 uses
  %i.alk = load i16, ptr %i.ali, align 1          ; 9 uses
  %.sroa.6.0.extract.shift.i.i167 = lshr i16 %i.alk, 8 ; 5 uses
  %i.all = icmp ugt i16 %i.alk, -769
end_hunk_2
begin_hunk_3_@lv_draw_sw_blend_image_to_al88:bb.a
  %.sroa.03.0.insert.insert.i59.i174.i = or disjoint i16 %i.arj, %.sroa.4.0.extract.shift.i56.i171.i
  store i16 %.sroa.03.0.insert.insert.i59.i174.i, ptr %i.akg, align 2
  store i8 %i.aqz, ptr %i.apn, align 1, !tbaa !22
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ark = load i16, ptr %i.akg, align 2
  br label %.sink.split.i175.i

.sink.split.i175.i:                               ; preds = %bb.gs, %bb.gn, %bb.gk, %bb.gj
  %i.arl = phi i8 [ %i.aqz, %bb.gs ], [ %i.apt, %bb.gn ], [ %i.apt, %bb.gk ], [ %i.apt, %bb.gj ]
  %i.arm = phi i8 [ %i.ara, %bb.gs ], [ %i.apu, %bb.gn ], [ %i.apu, %bb.gk ], [ %i.apu, %bb.gj ]
  %.sink.i176.i = phi i16 [ %i.ark, %bb.gs ], [ %.sroa.03.0.insert.insert.i.i181.i, %bb.gn ], [ %.sroa.015.0.insert.insert.i158, %bb.gk ], [ %.sroa.015.0.insert.insert.i158, %bb.gj ]
  store i16 %.sink.i176.i, ptr %i.aqb, align 1
  br label %lv_color_16a_16a_mix.exit182.i

lv_color_16a_16a_mix.exit182.i:                   ; preds = %.sink.split.i175.i, %bb.gl
  %i.arn = phi i8 [ %i.apt, %bb.gl ], [ %i.arl, %.sink.split.i175.i ] ; 2 uses
  %i.aro = phi i8 [ %i.apu, %bb.gl ], [ %i.arm, %.sink.split.i175.i ] ; 2 uses
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %exitcond283.not.i = icmp eq i64 %indvars.iv.next280.i, %wide.trip.count282.i
  br i1 %exitcond283.not.i, label %._crit_edge251.i, label %bb.gj, !llvm.loop !98

._crit_edge251.i:                                 ; preds = %lv_color_16a_16a_mix.exit182.i
  %i.arp = getelementptr inbounds nuw i8, ptr %.2255.i, i64 %i.apo
  %i.arq = getelementptr inbounds nuw i8, ptr %.2126254.i, i64 %i.app
  %i.arr = getelementptr inbounds i8, ptr %.0139252.i, i64 %i.apq
  %i.ars = add nuw nsw i32 %.2131253.i, 1         ; 2 uses
  %exitcond284.not.i = icmp eq i32 %i.ars, %i.ajr
  br i1 %exitcond284.not.i, label %al88_image_blend.exit, label %.preheader230.i, !llvm.loop !99

bb.gt:                                            ; preds = %bb.gi
  %or.cond11.i148 = select i1 %i.api, i1 %i.anc, i1 false
  %i.art = icmp sgt i32 %i.ajr, 0
  %or.cond266.i = select i1 %or.cond11.i148, i1 %i.art, i1 false
  br i1 %or.cond266.i, label %.preheader233.lr.ph.i, label %al88_image_blend.exit

.preheader233.lr.ph.i:                            ; preds = %bb.gt
  %i.aru = icmp sgt i32 %i.ajp, 0
  %i.arv = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.arw = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.arx = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ary = zext i32 %i.ajw to i64
  %i.arz = zext i32 %i.aka to i64
  %i.asa = sext i32 %i.ake to i64
  br i1 %i.aru, label %.preheader233.preheader.i, label %al88_image_blend.exit

.preheader233.preheader.i:                        ; preds = %.preheader233.lr.ph.i
  %wide.trip.count276.i = zext nneg i32 %i.ajp to i64
  br label %.preheader233.i

.preheader233.i:                                  ; preds = %._crit_edge245.i, %.preheader233.preheader.i
  %i.asb = phi i8 [ %i.aty, %._crit_edge245.i ], [ -1, %.preheader233.preheader.i ]
  %i.asc = phi i8 [ %i.atz, %._crit_edge245.i ], [ -1, %.preheader233.preheader.i ]
  %.3249.i = phi ptr [ %i.aua, %._crit_edge245.i ], [ %i.aju, %.preheader233.preheader.i ] ; 2 uses
  %.3127248.i = phi ptr [ %i.aub, %._crit_edge245.i ], [ %i.ajy, %.preheader233.preheader.i ] ; 2 uses
  %.3132247.i = phi i32 [ %i.aud, %._crit_edge245.i ], [ 0, %.preheader233.preheader.i ]
  %.1140246.i = phi ptr [ %i.auc, %._crit_edge245.i ], [ %i.akc, %.preheader233.preheader.i ] ; 2 uses
  br label %bb.gu

bb.gu:                                            ; preds = %lv_color_16a_16a_mix.exit199.i, %.preheader233.i
  %i.asd = phi i8 [ %i.asb, %.preheader233.i ], [ %i.aty, %lv_color_16a_16a_mix.exit199.i ] ; 5 uses
  %i.ase = phi i8 [ %i.asc, %.preheader233.i ], [ %i.atz, %lv_color_16a_16a_mix.exit199.i ] ; 5 uses
  %indvars.iv273.i = phi i64 [ 0, %.preheader233.i ], [ %indvars.iv.next274.i, %lv_color_16a_16a_mix.exit199.i ] ; 4 uses
  %i.asf = getelementptr inbounds nuw [2 x i8], ptr %.3127248.i, i64 %indvars.iv273.i ; 2 uses
  %.sroa.013.0.copyload.i = load i8, ptr %i.asf, align 1, !tbaa !15
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.asf, i64 1
  %.sroa.414.0.copyload.i = load i8, ptr %.sroa.414.0..sroa_idx.i, align 1, !tbaa !15
  %i.asg = zext i8 %.sroa.414.0.copyload.i to i32
  %i.ash = getelementptr inbounds nuw i8, ptr %.1140246.i, i64 %indvars.iv273.i
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !15
  %i.asj = zext i8 %i.asi to i32
  %i.ask = mul nuw nsw i32 %i.asg, %i.akv
  %i.asl = mul nuw nsw i32 %i.ask, %i.asj         ; 3 uses
  %i.asm = getelementptr inbounds nuw [2 x i8], ptr %.3249.i, i64 %indvars.iv273.i ; 4 uses
  %sh.diff.i149 = lshr i32 %i.asl, 8
  %tr.sh.diff.i150 = trunc nuw i32 %sh.diff.i149 to i16 ; 2 uses
  %.sroa.414.0.insert.shift.i151 = and i16 %tr.sh.diff.i150, -256
  %.sroa.013.0.insert.ext.i152 = zext i8 %.sroa.013.0.copyload.i to i16 ; 3 uses
  %.sroa.013.0.insert.insert.i153 = or disjoint i16 %.sroa.414.0.insert.shift.i151, %.sroa.013.0.insert.ext.i152 ; 4 uses
  %.sroa.6.0.extract.shift.i183.i = lshr i16 %tr.sh.diff.i150, 8 ; 5 uses
  %i.asn = icmp samesign ugt i32 %i.asl, 16580607
  br i1 %i.asn, label %.sink.split.i192.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asm, i64 1
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !20 ; 4 uses
  %i.asq = icmp ult i8 %i.asp, 3
  br i1 %i.asq, label %.sink.split.i192.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.asr = icmp samesign ult i32 %i.asl, 196608
  br i1 %i.asr, label %lv_color_16a_16a_mix.exit199.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ass = icmp eq i8 %i.asp, -1
  br i1 %i.ass, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.ast = load i16, ptr %i.asm, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i195.i = and i16 %i.ast, -256
  %narrow.i.i196.i = mul nuw i16 %.sroa.6.0.extract.shift.i183.i, %.sroa.013.0.insert.ext.i152
  %i.asu = and i16 %i.ast, 255
  %i.asv = xor i16 %.sroa.6.0.extract.shift.i183.i, 255
  %narrow5.i.i197.i = mul nuw i16 %i.asu, %i.asv
  %i.asw = add i16 %narrow5.i.i197.i, %narrow.i.i196.i
  %i.asx = lshr i16 %i.asw, 8
  %.sroa.03.0.insert.insert.i.i198.i = or disjoint i16 %i.asx, %.sroa.4.0.extract.shift.i.i195.i
  br label %.sink.split.i192.i

bb.gz:                                            ; preds = %bb.gx
  %i.asy = load i8, ptr %i.arv, align 1, !tbaa !21
  %.not.i184.i = icmp eq i8 %i.asp, %i.asy
  %i.asz = load i8, ptr %i.arw, align 1
  %i.ata = zext i8 %i.asz to i16
  %.not54.i194.i = icmp eq i16 %.sroa.6.0.extract.shift.i183.i, %i.ata
  %or.cond218.i154 = select i1 %.not.i184.i, i1 %.not54.i194.i, i1 false
  br i1 %or.cond218.i154, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.atb = xor i16 %.sroa.6.0.extract.shift.i183.i, 255
  %i.atc = xor i8 %i.asp, -1
  %i.atd = zext i8 %i.atc to i16
  %i.ate = mul nuw i16 %i.atb, %i.atd
  %i.atf = xor i16 %i.ate, -1
  %i.atg = lshr i16 %i.atf, 8                     ; 2 uses
  %i.ath = trunc nuw i16 %i.atg to i8
  %narrow.i185.i = mul nuw i16 %.sroa.6.0.extract.shift.i183.i, 255
  %i.ati = udiv i16 %narrow.i185.i, %i.atg
  %i.atj = trunc i16 %i.ati to i8
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.atk = phi i8 [ %i.asd, %bb.gz ], [ %i.ath, %bb.ha ] ; 2 uses
  %i.atl = phi i8 [ %i.ase, %bb.gz ], [ %i.atj, %bb.ha ] ; 2 uses
  %i.atm = load i16, ptr %i.asm, align 1          ; 4 uses
  %i.atn = load i16, ptr %i.akf, align 2
  %i.ato = icmp eq i16 %i.atm, %i.atn
  %i.atp = load i16, ptr %2, align 2
  %i.atq = icmp eq i16 %.sroa.013.0.insert.insert.i153, %i.atp
  %or.cond220.i155 = select i1 %i.ato, i1 %i.atq, i1 false
  br i1 %or.cond220.i155, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  store i16 %.sroa.013.0.insert.insert.i153, ptr %2, align 2
  store i16 %i.atm, ptr %i.akf, align 2
  %.sroa.6.0.insert.ext44.i186.i = zext i8 %i.atl to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i188.i = and i16 %i.atm, -256
  %narrow.i57.i189.i = mul nuw i16 %.sroa.6.0.insert.ext44.i186.i, %.sroa.013.0.insert.ext.i152
  %i.atr = and i16 %i.atm, 255
  %i.ats = xor i16 %.sroa.6.0.insert.ext44.i186.i, 255
  %narrow5.i58.i190.i = mul nuw i16 %i.atr, %i.ats
  %i.att = add i16 %narrow5.i58.i190.i, %narrow.i57.i189.i
  %i.atu = lshr i16 %i.att, 8
  %.sroa.03.0.insert.insert.i59.i191.i = or disjoint i16 %i.atu, %.sroa.4.0.extract.shift.i56.i188.i
  store i16 %.sroa.03.0.insert.insert.i59.i191.i, ptr %i.akg, align 2
  store i8 %i.atk, ptr %i.arx, align 1, !tbaa !22
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.atv = load i16, ptr %i.akg, align 2
  br label %.sink.split.i192.i

.sink.split.i192.i:                               ; preds = %bb.hd, %bb.gy, %bb.gv, %bb.gu
  %i.atw = phi i8 [ %i.atk, %bb.hd ], [ %i.asd, %bb.gy ], [ %i.asd, %bb.gv ], [ %i.asd, %bb.gu ]
  %i.atx = phi i8 [ %i.atl, %bb.hd ], [ %i.ase, %bb.gy ], [ %i.ase, %bb.gv ], [ %i.ase, %bb.gu ]
  %.sink.i193.i = phi i16 [ %i.atv, %bb.hd ], [ %.sroa.03.0.insert.insert.i.i198.i, %bb.gy ], [ %.sroa.013.0.insert.insert.i153, %bb.gv ], [ %.sroa.013.0.insert.insert.i153, %bb.gu ]
  store i16 %.sink.i193.i, ptr %i.asm, align 1
  br label %lv_color_16a_16a_mix.exit199.i

lv_color_16a_16a_mix.exit199.i:                   ; preds = %.sink.split.i192.i, %bb.gw
  %i.aty = phi i8 [ %i.asd, %bb.gw ], [ %i.atw, %.sink.split.i192.i ] ; 2 uses
  %i.atz = phi i8 [ %i.ase, %bb.gw ], [ %i.atx, %.sink.split.i192.i ] ; 2 uses
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %exitcond277.not.i = icmp eq i64 %indvars.iv.next274.i, %wide.trip.count276.i
  br i1 %exitcond277.not.i, label %._crit_edge245.i, label %bb.gu, !llvm.loop !100

._crit_edge245.i:                                 ; preds = %lv_color_16a_16a_mix.exit199.i
  %i.aua = getelementptr inbounds nuw i8, ptr %.3249.i, i64 %i.ary
  %i.aub = getelementptr inbounds nuw i8, ptr %.3127248.i, i64 %i.arz
  %i.auc = getelementptr inbounds i8, ptr %.1140246.i, i64 %i.asa
  %i.aud = add nuw nsw i32 %.3132247.i, 1         ; 2 uses
  %exitcond278.not.i = icmp eq i32 %i.aud, %i.ajr
  br i1 %exitcond278.not.i, label %al88_image_blend.exit, label %.preheader233.i, !llvm.loop !101

.preheader236.i116:                               ; preds = %._crit_edge.i137, %.preheader236.preheader.i
  %i.aue = phi i8 [ %i.awu, %._crit_edge.i137 ], [ -1, %.preheader236.preheader.i ]
  %i.auf = phi i8 [ %i.awv, %._crit_edge.i137 ], [ -1, %.preheader236.preheader.i ]
  %.4243.i = phi ptr [ %i.awx, %._crit_edge.i137 ], [ %i.aju, %.preheader236.preheader.i ] ; 2 uses
  %.4128242.i = phi ptr [ %i.awy, %._crit_edge.i137 ], [ %i.ajy, %.preheader236.preheader.i ] ; 2 uses
  %.4133241.i = phi i32 [ %i.awz, %._crit_edge.i137 ], [ 0, %.preheader236.preheader.i ]
  %.2141240.i = phi ptr [ %.3142.i, %._crit_edge.i137 ], [ %i.akc, %.preheader236.preheader.i ] ; 3 uses
  %i.aug = icmp eq ptr %.2141240.i, null          ; 2 uses
  br label %bb.he

bb.he:                                            ; preds = %blend_non_normal_pixel.exit.i134, %.preheader236.i116
  %i.auh = phi i8 [ %i.aue, %.preheader236.i116 ], [ %i.awu, %blend_non_normal_pixel.exit.i134 ] ; 6 uses
  %i.aui = phi i8 [ %i.auf, %.preheader236.i116 ], [ %i.awv, %blend_non_normal_pixel.exit.i134 ] ; 6 uses
  %indvars.iv.i117 = phi i64 [ 0, %.preheader236.i116 ], [ %indvars.iv.next.i135, %blend_non_normal_pixel.exit.i134 ] ; 4 uses
  %i.auj = getelementptr inbounds nuw [2 x i8], ptr %.4128242.i, i64 %indvars.iv.i117 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.auj, align 1, !tbaa !15 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.auj, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !15 ; 2 uses
  br i1 %i.aug, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.auk = zext i8 %.sroa.4.0.copyload.i to i16
  %i.aul = mul nuw i16 %i.auk, %i.akn
  %i.aum = lshr i16 %i.aul, 8
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.aun = zext i8 %.sroa.4.0.copyload.i to i32
  %i.auo = getelementptr inbounds nuw i8, ptr %.2141240.i, i64 %indvars.iv.i117
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !15
  %i.auq = zext i8 %i.aup to i32
  %i.aur = mul nuw nsw i32 %i.aun, %i.akm
  %i.aus = mul nuw nsw i32 %i.aur, %i.auq
  %i.aut = lshr i32 %i.aus, 16
  %i.auu = trunc nuw nsw i32 %i.aut to i16
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.sroa.4.0.i118 = phi i16 [ %i.aum, %bb.hf ], [ %i.auu, %bb.hg ] ; 8 uses
  %i.auv = getelementptr inbounds nuw [2 x i8], ptr %.4243.i, i64 %indvars.iv.i117 ; 8 uses
  %i.auw = load i32, ptr %i.akh, align 4, !tbaa !33
  %.sroa.4.0.insert.shift.i119 = shl nuw i16 %.sroa.4.0.i118, 8
  %.sroa.0.0.insert.ext.i120 = zext i8 %.sroa.0.0.copyload.i to i16 ; 3 uses
  switch i32 %i.auw, label %blend_non_normal_pixel.exit.i134 [
    i32 1, label %bb.hi
    i32 2, label %bb.hj
    i32 3, label %bb.hk
    i32 4, label %bb.hl
  ]

bb.hi:                                            ; preds = %bb.hh
  %i.aux = load i8, ptr %i.auv, align 1, !tbaa !34
  %narrow.i146 = call i8 @llvm.uadd.sat.i8(i8 %.sroa.0.0.copyload.i, i8 %i.aux)
  %spec.select24.i.i147 = zext i8 %narrow.i146 to i16
  br label %bb.hm

bb.hj:                                            ; preds = %bb.hh
  %i.auy = load i8, ptr %i.auv, align 1, !tbaa !34
  %i.auz = zext i8 %i.auy to i16
  %i.ava = sub nsw i16 %i.auz, %.sroa.0.0.insert.ext.i120
  %spec.select2223.i.i143 = call i16 @llvm.smax.i16(i16 %i.ava, i16 0)
  br label %bb.hm

bb.hk:                                            ; preds = %bb.hh
  %i.avb = load i8, ptr %i.auv, align 1, !tbaa !34
  %i.avc = zext i8 %i.avb to i16
  %i.avd = mul nuw i16 %i.avc, %.sroa.0.0.insert.ext.i120
  %i.ave = lshr i16 %i.avd, 8
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hh
  %i.avf = load i8, ptr %i.auv, align 1, !tbaa !34
  %i.avg = zext i8 %i.avf to i16
  %i.avh = sub nsw i16 %i.avg, %.sroa.0.0.insert.ext.i120
  %i.avi = call i16 @llvm.abs.i16(i16 %i.avh, i1 true)
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk, %bb.hj, %bb.hi
  %.sroa.0.0.i.i121 = phi i16 [ %spec.select24.i.i147, %bb.hi ], [ %spec.select2223.i.i143, %bb.hj ], [ %i.ave, %bb.hk ], [ %i.avi, %bb.hl ] ; 3 uses
  %.sroa.0.0.insert.insert.i.i122 = add nuw nsw i16 %.sroa.0.0.i.i121, %.sroa.4.0.insert.shift.i119 ; 4 uses
  %i.avj = icmp ugt i16 %.sroa.4.0.i118, 252
  br i1 %i.avj, label %.sink.split.i.i.i132, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.avk = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !20 ; 4 uses
  %i.avm = icmp ult i8 %i.avl, 3
  br i1 %i.avm, label %.sink.split.i.i.i132, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.avn = icmp samesign ult i16 %.sroa.4.0.i118, 3
  br i1 %i.avn, label %blend_non_normal_pixel.exit.i134, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.avo = icmp eq i8 %i.avl, -1
  br i1 %i.avo, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.avp = load i16, ptr %i.auv, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i139 = and i16 %i.avp, -256
  %narrow.i.i.i.i140 = mul nuw i16 %.sroa.0.0.i.i121, %.sroa.4.0.i118
  %i.avq = and i16 %i.avp, 255
  %i.avr = xor i16 %.sroa.4.0.i118, 255
  %narrow5.i.i.i.i141 = mul nuw i16 %i.avq, %i.avr
  %i.avs = add i16 %narrow5.i.i.i.i141, %narrow.i.i.i.i140
  %i.avt = lshr i16 %i.avs, 8
  %.sroa.03.0.insert.insert.i.i.i.i142 = or disjoint i16 %i.avt, %.sroa.4.0.extract.shift.i.i.i.i139
  br label %.sink.split.i.i.i132

bb.hr:                                            ; preds = %bb.hp
  %i.avu = load i8, ptr %i.ako, align 1, !tbaa !21
  %.not.i.i.i123 = icmp eq i8 %i.avl, %i.avu
  %i.avv = load i8, ptr %i.akp, align 1
  %i.avw = zext i8 %i.avv to i16
  %.not54.i.i.i124 = icmp eq i16 %.sroa.4.0.i118, %i.avw
  %or.cond223.i125 = select i1 %.not.i.i.i123, i1 %.not54.i.i.i124, i1 false
  br i1 %or.cond223.i125, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.avx = xor i16 %.sroa.4.0.i118, 255
  %i.avy = xor i8 %i.avl, -1
  %i.avz = zext i8 %i.avy to i16
  %i.awa = mul nuw i16 %i.avx, %i.avz
  %i.awb = xor i16 %i.awa, -1
  %i.awc = lshr i16 %i.awb, 8                     ; 2 uses
  %i.awd = trunc nuw i16 %i.awc to i8
  %narrow.i.i200.i = mul nuw i16 %.sroa.4.0.i118, 255
  %i.awe = udiv i16 %narrow.i.i200.i, %i.awc
  %i.awf = trunc i16 %i.awe to i8
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.awg = phi i8 [ %i.auh, %bb.hr ], [ %i.awd, %bb.hs ] ; 2 uses
  %i.awh = phi i8 [ %i.aui, %bb.hr ], [ %i.awf, %bb.hs ] ; 2 uses
  %i.awi = load i16, ptr %i.auv, align 1          ; 4 uses
  %i.awj = load i16, ptr %i.akf, align 2
  %i.awk = icmp eq i16 %i.awi, %i.awj
  %i.awl = load i16, ptr %2, align 2
  %i.awm = icmp eq i16 %.sroa.0.0.insert.insert.i.i122, %i.awl
  %or.cond225.i126 = select i1 %i.awk, i1 %i.awm, i1 false
  br i1 %or.cond225.i126, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store i16 %.sroa.0.0.insert.insert.i.i122, ptr %2, align 2
  store i16 %i.awi, ptr %i.akf, align 2
  %.sroa.6.0.insert.ext44.i.i.i127 = zext i8 %i.awh to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i.i128 = and i16 %i.awi, -256
  %narrow.i57.i.i.i129 = mul nuw i16 %.sroa.0.0.i.i121, %.sroa.6.0.insert.ext44.i.i.i127
  %i.awn = and i16 %i.awi, 255
  %i.awo = xor i16 %.sroa.6.0.insert.ext44.i.i.i127, 255
  %narrow5.i58.i.i.i130 = mul nuw i16 %i.awn, %i.awo
  %i.awp = add i16 %narrow5.i58.i.i.i130, %narrow.i57.i.i.i129
  %i.awq = lshr i16 %i.awp, 8
  %.sroa.03.0.insert.insert.i59.i.i.i131 = or disjoint i16 %i.awq, %.sroa.4.0.extract.shift.i56.i.i.i128
  store i16 %.sroa.03.0.insert.insert.i59.i.i.i131, ptr %i.akg, align 2
  store i8 %i.awg, ptr %i.akq, align 1, !tbaa !22
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.awr = load i16, ptr %i.akg, align 2
  br label %.sink.split.i.i.i132

.sink.split.i.i.i132:                             ; preds = %bb.hv, %bb.hq, %bb.hn, %bb.hm
  %i.aws = phi i8 [ %i.awg, %bb.hv ], [ %i.auh, %bb.hq ], [ %i.auh, %bb.hn ], [ %i.auh, %bb.hm ]
  %i.awt = phi i8 [ %i.awh, %bb.hv ], [ %i.aui, %bb.hq ], [ %i.aui, %bb.hn ], [ %i.aui, %bb.hm ]
  %.sink.i.i.i133 = phi i16 [ %i.awr, %bb.hv ], [ %.sroa.03.0.insert.insert.i.i.i.i142, %bb.hq ], [ %.sroa.0.0.insert.insert.i.i122, %bb.hn ], [ %.sroa.0.0.insert.insert.i.i122, %bb.hm ]
  store i16 %.sink.i.i.i133, ptr %i.auv, align 1
  br label %blend_non_normal_pixel.exit.i134

blend_non_normal_pixel.exit.i134:                 ; preds = %.sink.split.i.i.i132, %bb.ho, %bb.hh
  %i.awu = phi i8 [ %i.auh, %bb.hh ], [ %i.auh, %bb.ho ], [ %i.aws, %.sink.split.i.i.i132 ] ; 2 uses
  %i.awv = phi i8 [ %i.aui, %bb.hh ], [ %i.aui, %bb.ho ], [ %i.awt, %.sink.split.i.i.i132 ] ; 2 uses
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i117, 1 ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %indvars.iv.next.i135, %wide.trip.count.i115
  br i1 %exitcond.not.i136, label %._crit_edge.i137, label %bb.he, !llvm.loop !102

._crit_edge.i137:                                 ; preds = %blend_non_normal_pixel.exit.i134
  %i.aww = getelementptr inbounds i8, ptr %.2141240.i, i64 %i.akr
  %.3142.i = select i1 %i.aug, ptr null, ptr %i.aww
  %i.awx = getelementptr inbounds nuw i8, ptr %.4243.i, i64 %i.aks
  %i.awy = getelementptr inbounds nuw i8, ptr %.4128242.i, i64 %i.akt
  %i.awz = add nuw nsw i32 %.4133241.i, 1         ; 2 uses
  %exitcond272.not.i138 = icmp eq i32 %i.awz, %i.ajr
  br i1 %exitcond272.not.i138, label %al88_image_blend.exit, label %.preheader236.i116, !llvm.loop !103

al88_image_blend.exit:                            ; preds = %._crit_edge.i137, %._crit_edge245.i, %._crit_edge251.i, %._crit_edge257.i, %._crit_edge262.i, %.preheader237.i114, %.preheader236.lr.ph.i, %.preheader226.i, %.preheader.lr.ph.i164, %.preheader228.i, %.preheader227.lr.ph.i, %.preheader231.i, %.preheader230.lr.ph.i, %bb.gt, %.preheader233.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.jv

bb.hw:                                            ; preds = %bb.a
  %i.axa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.axb = load i32, ptr %i.axa, align 8, !tbaa !24 ; 11 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !25 ; 11 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.axf = load i8, ptr %i.axe, align 8, !tbaa !26
  %.fr246.i = freeze i8 %i.axf                    ; 7 uses
  %i.axg = load ptr, ptr %0, align 8, !tbaa !27   ; 8 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axi = load i32, ptr %i.axh, align 8, !tbaa !28 ; 5 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !29 ; 8 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.axm = load i32, ptr %i.axl, align 8, !tbaa !30 ; 5 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !31 ; 5 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.axq = load i32, ptr %i.axp, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @lv_memset(ptr noundef nonnull %1, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.axr, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.axs = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.axs, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.axt = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.axu = load i32, ptr %i.axt, align 4, !tbaa !33
  %i.axv = icmp eq i32 %i.axu, 0
  br i1 %i.axv, label %bb.hx, label %i1_image_blend.exit

bb.hx:                                            ; preds = %bb.hw
  %i.axw = icmp eq ptr %i.axo, null               ; 2 uses
  %i.axx = zext i8 %.fr246.i to i32               ; 2 uses
  %i.axy = icmp ugt i8 %.fr246.i, -4              ; 2 uses
  %or.cond.i183 = and i1 %i.axy, %i.axw
  br i1 %or.cond.i183, label %.preheader202.i264, label %bb.hy

.preheader202.i264:                               ; preds = %bb.hx
  %i.axz = icmp sgt i32 %i.axd, 0
  br i1 %i.axz, label %.preheader.lr.ph.i265, label %i1_image_blend.exit

.preheader.lr.ph.i265:                            ; preds = %.preheader202.i264
  %i.aya = icmp sgt i32 %i.axb, 0
  %i.ayb = zext i32 %i.axi to i64                 ; 2 uses
  %i.ayc = zext i32 %i.axm to i64                 ; 2 uses
  br i1 %i.aya, label %.preheader.preheader.i266, label %i1_image_blend.exit

.preheader.preheader.i266:                        ; preds = %.preheader.lr.ph.i265
  %wide.trip.count281.i = zext nneg i32 %i.axb to i64 ; 7 uses
  %i.ayd = add nsw i32 %i.axd, -1
  %i.aye = zext i32 %i.ayd to i64                 ; 2 uses
  %i.ayf = mul nuw i64 %i.ayb, %i.aye
  %i.ayg = shl nuw nsw i64 %wide.trip.count281.i, 1
  %i.ayh = getelementptr i8, ptr %i.axg, i64 %i.ayf
  %scevgep = getelementptr i8, ptr %i.ayh, i64 %i.ayg
  %i.ayi = add nsw i64 %wide.trip.count281.i, -1
  %i.ayj = lshr i64 %i.ayi, 3
  %i.ayk = mul nuw i64 %i.ayc, %i.aye
  %i.ayl = getelementptr i8, ptr %i.axk, i64 %i.ayj
  %i.aym = getelementptr i8, ptr %i.ayl, i64 %i.ayk
  %scevgep581 = getelementptr i8, ptr %i.aym, i64 1
  %min.iters.check = icmp ult i32 %i.axb, 8
  %bound0 = icmp ult ptr %i.axg, %scevgep581
  %bound1 = icmp ult ptr %i.axk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count281.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count281.i
  %xtraiter = and i64 %wide.trip.count281.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ayn = add nsw i64 %wide.trip.count281.i, -1
  br label %.preheader.i267

.preheader.i267:                                  ; preds = %._crit_edge242.i, %.preheader.preheader.i266
  %.0245.i = phi ptr [ %i.bab, %._crit_edge242.i ], [ %i.axg, %.preheader.preheader.i266 ] ; 5 uses
  %.0125244.i = phi ptr [ %i.bac, %._crit_edge242.i ], [ %i.axk, %.preheader.preheader.i266 ] ; 5 uses
  %.0130243.i = phi i32 [ %i.bad, %._crit_edge242.i ], [ 0, %.preheader.preheader.i266 ]
  %brmerge686 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge686, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i267, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i267 ] ; 3 uses
  %vec.ind = phi <8 x i8> [ %vec.ind.next, %vector.body ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %.preheader.i267 ] ; 2 uses
  %i.ayo = lshr exact i64 %index, 3
  %i.ayp = and i64 %i.ayo, 536870911
  %i.ayq = getelementptr inbounds nuw i8, ptr %.0125244.i, i64 %i.ayp
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !15, !alias.scope !124
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ayr, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ays = and <8 x i8> %vec.ind, splat (i8 7)
  %i.ayt = xor <8 x i8> %i.ays, splat (i8 7)
end_hunk_3
begin_hunk_4_@rgb888_image_blend:bb.a
  store i8 %i.ev, ptr %i.de, align 1, !tbaa !22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ew = load i16, ptr %i.s, align 2
  br label %.sink.split.i176.us

bb.v:                                             ; preds = %bb.p
  %i.ex = load i16, ptr %i.dr, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i179.us = and i16 %i.ex, -256
  %narrow.i.i180.us = mul nuw i16 %.sroa.416.0.insert.ext.us, %.sroa.015.0.insert.ext.us
  %i.ey = and i16 %i.ex, 255
  %i.ez = xor i16 %.sroa.416.0.insert.ext.us, 255
  %narrow5.i.i181.us = mul nuw i16 %i.ey, %i.ez
  %i.fa = add i16 %narrow5.i.i181.us, %narrow.i.i180.us
  %i.fb = lshr i16 %i.fa, 8
  %.sroa.03.0.insert.insert.i.i182.us = or disjoint i16 %i.fb, %.sroa.4.0.extract.shift.i.i179.us
  br label %.sink.split.i176.us

.sink.split.i176.us:                              ; preds = %bb.v, %bb.u, %bb.n, %bb.m
  %.sink.i177.us = phi i16 [ %i.ew, %bb.u ], [ %.sroa.03.0.insert.insert.i.i182.us, %bb.v ], [ %.sroa.015.0.insert.insert.us, %bb.n ], [ %.sroa.015.0.insert.insert.us, %bb.m ]
  store i16 %.sink.i177.us, ptr %i.dr, align 1
  br label %lv_color_16a_16a_mix.exit183.us

lv_color_16a_16a_mix.exit183.us:                  ; preds = %.sink.split.i176.us, %bb.o
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, %i.dm
  %exitcond367.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count366
  br i1 %exitcond367.not, label %._crit_edge271.us, label %bb.m, !llvm.loop !130

._crit_edge271.us:                                ; preds = %lv_color_16a_16a_mix.exit183.us
  %i.fc = getelementptr inbounds nuw i8, ptr %.4275.us, i64 %i.df ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.4143274.us, i64 %i.dg ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.0162272.us, i64 %i.dh ; 2 uses
  %i.ff = add nuw nsw i32 %.2149273.us, 1         ; 2 uses
  %exitcond368.not = icmp eq i32 %i.ff, %i.d
  br i1 %exitcond368.not, label %.loopexit223, label %.preheader221.us, !llvm.loop !131

.loopexit223:                                     ; preds = %._crit_edge271.us, %.preheader221.preheader, %.loopexit226
  %.1163 = phi ptr [ %i.o, %.loopexit226 ], [ %scevgep356, %.preheader221.preheader ], [ %i.fe, %._crit_edge271.us ] ; 2 uses
  %.5144 = phi ptr [ %.3142, %.loopexit226 ], [ %scevgep355, %.preheader221.preheader ], [ %i.fd, %._crit_edge271.us ]
  %.5 = phi ptr [ %.3, %.loopexit226 ], [ %scevgep354, %.preheader221.preheader ], [ %i.fc, %._crit_edge271.us ]
  %i.fg = icmp ne ptr %.1163, null
  %or.cond11 = and i1 %i.fg, %i.ax
  %or.cond293 = select i1 %or.cond11, i1 %i.al, i1 false
  br i1 %or.cond293, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit223
  %i.fh = icmp sgt i32 %i.b, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.fl = zext i32 %i.i to i64
  %i.fm = sext i32 %i.m to i64
  %i.fn = sext i32 %i.q to i64
  br i1 %i.fh, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fo = zext nneg i8 %1 to i64
  %wide.trip.count378 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge285
  %.6289 = phi ptr [ %i.hh, %._crit_edge285 ], [ %.5, %.preheader.preheader ] ; 2 uses
  %.6145288 = phi ptr [ %i.hi, %._crit_edge285 ], [ %.5144, %.preheader.preheader ] ; 2 uses
  %.3150287 = phi i32 [ %i.hk, %._crit_edge285 ], [ 0, %.preheader.preheader ]
  %.2164286 = phi ptr [ %i.hj, %._crit_edge285 ], [ %.1163, %.preheader.preheader ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.preheader, %lv_color_16a_16a_mix.exit198
  %indvars.iv371 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next372, %lv_color_16a_16a_mix.exit198 ] ; 2 uses
  %indvars.iv369 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next370, %lv_color_16a_16a_mix.exit198 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.6145288, i64 %indvars.iv371
  %i.fq = call zeroext i8 @lv_color24_luminance(ptr noundef %i.fp) #6
  %i.fr = getelementptr inbounds nuw i8, ptr %.2164286, i64 %indvars.iv369
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !15
  %i.ft = zext i8 %i.fs to i16
  %i.fu = mul nuw i16 %i.ft, %i.aj                ; 4 uses
  %.sroa.413.0.insert.shift = and i16 %i.fu, -256
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.6289, i64 %indvars.iv369 ; 6 uses
  %.sroa.012.0.insert.ext = zext i8 %i.fq to i16  ; 3 uses
  %.sroa.012.0.insert.insert = or disjoint i16 %.sroa.413.0.insert.shift, %.sroa.012.0.insert.ext ; 4 uses
  %.sroa.6.0.extract.shift.i = lshr i16 %i.fu, 8  ; 5 uses
  %i.fw = icmp ugt i16 %i.fu, -769
  br i1 %i.fw, label %.sink.split.i191, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !20  ; 4 uses
  %i.fz = icmp ult i8 %i.fy, 3
  br i1 %i.fz, label %.sink.split.i191, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = icmp ult i16 %i.fu, 768
  br i1 %i.ga, label %lv_color_16a_16a_mix.exit198, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gb = icmp eq i8 %i.fy, -1
  br i1 %i.gb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gc = load i16, ptr %i.fv, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i194 = and i16 %i.gc, -256
  %narrow.i.i195 = mul nuw i16 %.sroa.6.0.extract.shift.i, %.sroa.012.0.insert.ext
  %i.gd = and i16 %i.gc, 255
  %i.ge = xor i16 %.sroa.6.0.extract.shift.i, 255
  %narrow5.i.i196 = mul nuw i16 %i.gd, %i.ge
  %i.gf = add i16 %narrow5.i.i196, %narrow.i.i195
  %i.gg = lshr i16 %i.gf, 8
  %.sroa.03.0.insert.insert.i.i197 = or disjoint i16 %i.gg, %.sroa.4.0.extract.shift.i.i194
  br label %.sink.split.i191

bb.ab:                                            ; preds = %bb.z
  %i.gh = load i8, ptr %i.fi, align 1, !tbaa !21
  %.not.i184 = icmp eq i8 %i.fy, %i.gh
  %i.gi = load i8, ptr %i.fj, align 1
  %i.gj = zext i8 %i.gi to i16
  %.not54.i193 = icmp eq i16 %.sroa.6.0.extract.shift.i, %i.gj
  %or.cond212 = select i1 %.not.i184, i1 %.not54.i193, i1 false
  br i1 %or.cond212, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = xor i16 %.sroa.6.0.extract.shift.i, 255
  %i.gl = xor i8 %i.fy, -1
  %i.gm = zext i8 %i.gl to i16
  %i.gn = mul nuw i16 %i.gk, %i.gm
  %i.go = xor i16 %i.gn, -1
  %i.gp = lshr i16 %i.go, 8                       ; 2 uses
  %i.gq = trunc nuw i16 %i.gp to i8
  store i8 %i.gq, ptr %i.t, align 2, !tbaa !13
  %narrow.i185 = mul nuw i16 %.sroa.6.0.extract.shift.i, 255
  %i.gr = udiv i16 %narrow.i185, %i.gp
  %i.gs = trunc i16 %i.gr to i8
  store i8 %i.gs, ptr %i.u, align 1, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.gt = load i16, ptr %i.fv, align 1
  %i.gu = load i16, ptr %i.r, align 2
  %i.gv = icmp eq i16 %i.gt, %i.gu
  %i.gw = load i16, ptr %2, align 2
  %i.gx = icmp eq i16 %.sroa.012.0.insert.insert, %i.gw
  %or.cond214 = select i1 %i.gv, i1 %i.gx, i1 false
  br i1 %or.cond214, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i16 %.sroa.012.0.insert.insert, ptr %2, align 2
  %i.gy = load i16, ptr %i.fv, align 1
  store i16 %i.gy, ptr %i.r, align 2
  %i.gz = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i186 = zext i8 %i.gz to i16 ; 2 uses
  %i.ha = load i16, ptr %i.fv, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i56.i187 = and i16 %i.ha, -256
  %narrow.i57.i188 = mul nuw i16 %.sroa.6.0.insert.ext44.i186, %.sroa.012.0.insert.ext
  %i.hb = and i16 %i.ha, 255
  %i.hc = xor i16 %.sroa.6.0.insert.ext44.i186, 255
  %narrow5.i58.i189 = mul nuw i16 %i.hb, %i.hc
  %i.hd = add i16 %narrow5.i58.i189, %narrow.i57.i188
  %i.he = lshr i16 %i.hd, 8
  %.sroa.03.0.insert.insert.i59.i190 = or disjoint i16 %i.he, %.sroa.4.0.extract.shift.i56.i187
  store i16 %.sroa.03.0.insert.insert.i59.i190, ptr %i.s, align 2
  %i.hf = load i8, ptr %i.t, align 2, !tbaa !13
  store i8 %i.hf, ptr %i.fk, align 1, !tbaa !22
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.hg = load i16, ptr %i.s, align 2
  br label %.sink.split.i191

.sink.split.i191:                                 ; preds = %bb.af, %bb.aa, %bb.x, %bb.w
  %.sink.i192 = phi i16 [ %i.hg, %bb.af ], [ %.sroa.03.0.insert.insert.i.i197, %bb.aa ], [ %.sroa.012.0.insert.insert, %bb.x ], [ %.sroa.012.0.insert.insert, %bb.w ]
  store i16 %.sink.i192, ptr %i.fv, align 1
  br label %lv_color_16a_16a_mix.exit198

lv_color_16a_16a_mix.exit198:                     ; preds = %bb.y, %.sink.split.i191
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, %i.fo
  %exitcond379.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count378
  br i1 %exitcond379.not, label %._crit_edge285, label %bb.w, !llvm.loop !132

._crit_edge285:                                   ; preds = %lv_color_16a_16a_mix.exit198
  %i.hh = getelementptr inbounds nuw i8, ptr %.6289, i64 %i.fl
  %i.hi = getelementptr inbounds i8, ptr %.6145288, i64 %i.fm
  %i.hj = getelementptr inbounds i8, ptr %.2164286, i64 %i.fn
  %i.hk = add nuw nsw i32 %.3150287, 1            ; 2 uses
  %exitcond380.not = icmp eq i32 %i.hk, %i.d
  br i1 %exitcond380.not, label %.loopexit, label %.preheader, !llvm.loop !133

.preheader230:                                    ; preds = %.preheader230.preheader, %._crit_edge
  %.7238 = phi ptr [ %i.jr, %._crit_edge ], [ %i.g, %.preheader230.preheader ] ; 2 uses
  %.7146237 = phi ptr [ %i.js, %._crit_edge ], [ %i.k, %.preheader230.preheader ] ; 2 uses
  %.4151236 = phi i32 [ %i.jt, %._crit_edge ], [ 0, %.preheader230.preheader ]
  %.3165235 = phi ptr [ %.4166, %._crit_edge ], [ %i.o, %.preheader230.preheader ] ; 3 uses
  %i.hl = icmp eq ptr %.3165235, null             ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader230, %blend_non_normal_pixel.exit
  %indvars.iv315 = phi i64 [ 0, %.preheader230 ], [ %indvars.iv.next316, %blend_non_normal_pixel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader230 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.7146237, i64 %indvars.iv
  %i.hn = call zeroext i8 @lv_color24_luminance(ptr noundef %i.hm) #6 ; 2 uses
  br i1 %i.hl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %.3165235, i64 %indvars.iv315
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !15
  %i.hq = zext i8 %i.hp to i16
  %i.hr = mul nuw i16 %i.hq, %i.aa
  %i.hs = lshr i16 %i.hr, 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.sroa.4.0 = phi i16 [ %i.hs, %bb.ah ], [ %i.aa, %bb.ag ] ; 8 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.7238, i64 %indvars.iv315 ; 8 uses
  %i.hu = load i32, ptr %i.v, align 4, !tbaa !33
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0, 8
  %.sroa.0.0.insert.ext = zext i8 %i.hn to i16    ; 3 uses
  switch i32 %i.hu, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.hv = load i8, ptr %i.ht, align 1, !tbaa !34
  %narrow = call i8 @llvm.uadd.sat.i8(i8 %i.hn, i8 %i.hv)
  %spec.select24.i = zext i8 %narrow to i16
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.hw = load i8, ptr %i.ht, align 1, !tbaa !34
  %i.hx = zext i8 %i.hw to i16
  %i.hy = sub nsw i16 %i.hx, %.sroa.0.0.insert.ext
  %spec.select2223.i = call i16 @llvm.smax.i16(i16 %i.hy, i16 0)
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.hz = load i8, ptr %i.ht, align 1, !tbaa !34
  %i.ia = zext i8 %i.hz to i16
  %i.ib = mul nuw i16 %i.ia, %.sroa.0.0.insert.ext
  %i.ic = lshr i16 %i.ib, 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.id = load i8, ptr %i.ht, align 1, !tbaa !34
  %i.ie = zext i8 %i.id to i16
  %i.if = sub nsw i16 %i.ie, %.sroa.0.0.insert.ext
  %i.ig = call i16 @llvm.abs.i16(i16 %i.if, i1 true)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.0.0.i = phi i16 [ %spec.select24.i, %bb.aj ], [ %spec.select2223.i, %bb.ak ], [ %i.ic, %bb.al ], [ %i.ig, %bb.am ] ; 3 uses
  %.sroa.0.0.insert.insert.i = add nuw nsw i16 %.sroa.0.0.i, %.sroa.4.0.insert.shift ; 4 uses
  %i.ih = icmp samesign ugt i16 %.sroa.4.0, 252
  br i1 %i.ih, label %.sink.split.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !20  ; 4 uses
  %i.ik = icmp ult i8 %i.ij, 3
  br i1 %i.ik, label %.sink.split.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.il = icmp samesign ult i16 %.sroa.4.0, 3
  br i1 %i.il, label %blend_non_normal_pixel.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.im = icmp eq i8 %i.ij, -1
  br i1 %i.im, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.in = load i16, ptr %i.ht, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = and i16 %i.in, -256
  %narrow.i.i.i = mul nuw i16 %.sroa.0.0.i, %.sroa.4.0
  %i.io = and i16 %i.in, 255
  %i.ip = xor i16 %.sroa.4.0, 255
  %narrow5.i.i.i = mul nuw i16 %i.io, %i.ip
  %i.iq = add i16 %narrow5.i.i.i, %narrow.i.i.i
  %i.ir = lshr i16 %i.iq, 8
  %.sroa.03.0.insert.insert.i.i.i = or disjoint i16 %i.ir, %.sroa.4.0.extract.shift.i.i.i
  br label %.sink.split.i.i

bb.as:                                            ; preds = %bb.aq
  %i.is = load i8, ptr %i.ab, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.ij, %i.is
  %i.it = load i8, ptr %i.ac, align 1
  %i.iu = zext i8 %i.it to i16
  %.not54.i.i = icmp eq i16 %.sroa.4.0, %i.iu
  %or.cond217 = select i1 %.not.i.i, i1 %.not54.i.i, i1 false
  br i1 %or.cond217, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iv = xor i16 %.sroa.4.0, 255
  %i.iw = xor i8 %i.ij, -1
  %i.ix = zext i8 %i.iw to i16
  %i.iy = mul nuw i16 %i.iv, %i.ix
  %i.iz = xor i16 %i.iy, -1
  %i.ja = lshr i16 %i.iz, 8                       ; 2 uses
  %i.jb = trunc nuw i16 %i.ja to i8
  store i8 %i.jb, ptr %i.t, align 2, !tbaa !13
  %narrow.i.i199 = mul nuw i16 %.sroa.4.0, 255
  %i.jc = udiv i16 %narrow.i.i199, %i.ja
  %i.jd = trunc i16 %i.jc to i8
  store i8 %i.jd, ptr %i.u, align 1, !tbaa !14
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.je = load i16, ptr %i.ht, align 1            ; 4 uses
  %i.jf = load i16, ptr %i.r, align 2
  %i.jg = icmp eq i16 %i.je, %i.jf
  %i.jh = load i16, ptr %2, align 2
  %i.ji = icmp eq i16 %.sroa.0.0.insert.insert.i, %i.jh
  %or.cond219 = select i1 %i.jg, i1 %i.ji, i1 false
  br i1 %or.cond219, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i16 %.sroa.0.0.insert.insert.i, ptr %2, align 2
  store i16 %i.je, ptr %i.r, align 2
  %i.jj = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i.i = zext i8 %i.jj to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i = and i16 %i.je, -256
  %narrow.i57.i.i = mul nuw i16 %.sroa.0.0.i, %.sroa.6.0.insert.ext44.i.i
  %i.jk = and i16 %i.je, 255
  %i.jl = xor i16 %.sroa.6.0.insert.ext44.i.i, 255
  %narrow5.i58.i.i = mul nuw i16 %i.jk, %i.jl
  %i.jm = add i16 %narrow5.i58.i.i, %narrow.i57.i.i
  %i.jn = lshr i16 %i.jm, 8
  %.sroa.03.0.insert.insert.i59.i.i = or disjoint i16 %i.jn, %.sroa.4.0.extract.shift.i56.i.i
  store i16 %.sroa.03.0.insert.insert.i59.i.i, ptr %i.s, align 2
  %i.jo = load i8, ptr %i.t, align 2, !tbaa !13
  store i8 %i.jo, ptr %i.ad, align 1, !tbaa !22
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.jp = load i16, ptr %i.s, align 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aw, %bb.ar, %bb.ao, %bb.an
  %.sink.i.i = phi i16 [ %i.jp, %bb.aw ], [ %.sroa.03.0.insert.insert.i.i.i, %bb.ar ], [ %.sroa.0.0.insert.insert.i, %bb.ao ], [ %.sroa.0.0.insert.insert.i, %bb.an ]
  store i16 %.sink.i.i, ptr %i.ht, align 1
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.ai, %bb.ap, %.sink.split.i.i
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ah
  %exitcond.not = icmp eq i64 %indvars.iv.next316, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag, !llvm.loop !134

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.jq = getelementptr inbounds i8, ptr %.3165235, i64 %i.ae
  %.4166 = select i1 %i.hl, ptr null, ptr %i.jq
  %i.jr = getelementptr inbounds nuw i8, ptr %.7238, i64 %i.af
  %i.js = getelementptr inbounds i8, ptr %.7146237, i64 %i.ag
  %i.jt = add nuw nsw i32 %.4151236, 1            ; 2 uses
  %exitcond320.not = icmp eq i32 %i.jt, %i.d
  br i1 %exitcond320.not, label %.loopexit, label %.preheader230, !llvm.loop !135

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge285, %.preheader227.lr.ph, %.preheader224.lr.ph, %.preheader231, %.preheader230.lr.ph, %.preheader.lr.ph, %.loopexit223
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

declare zeroext i8 @lv_color16_luminance(i16) local_unnamed_addr #2

declare zeroext i8 @lv_color24_luminance(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @lv_color32_luminance(i32) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"", !4, i64 0, !4, i64 1}
!12 = !{!"", !11, i64 0, !11, i64 2, !11, i64 4, !4, i64 6, !4, i64 7}
!13 = !{!12, !4, i64 6}
!14 = !{!12, !4, i64 7}
!15 = !{!4, !4, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"branch_weights", i32 4, i32 12}
!20 = !{!11, !4, i64 1}
!21 = !{!12, !4, i64 3}
!22 = !{!12, !4, i64 5}
!23 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!24 = !{!23, !5, i64 8}
!25 = !{!23, !5, i64 12}
!26 = !{!23, !4, i64 56}
!27 = !{!23, !8, i64 0}
!28 = !{!23, !5, i64 16}
!29 = !{!23, !8, i64 40}
!30 = !{!23, !5, i64 48}
!31 = !{!23, !9, i64 24}
!32 = !{!23, !5, i64 32}
!33 = !{!23, !5, i64 60}
!34 = !{!11, !4, i64 0}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16, !17, !18}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16, !18, !17}
!39 = distinct !{!39, !16, !18, !17}
!40 = distinct !{!40, !16, !17, !18}
!41 = distinct !{!41, !16, !18, !17}
!42 = distinct !{!42, !16, !17, !18}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!50 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !49, i64 36, !4, i64 39, !10, i64 40}
!51 = !{!50, !5, i64 8}
!52 = !{!50, !5, i64 12}
!53 = !{!50, !4, i64 39}
!54 = !{!50, !9, i64 24}
!55 = !{!50, !5, i64 32}
!56 = !{!50, !5, i64 16}
!57 = !{!50, !8, i64 0}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !16, !18, !17}
!82 = distinct !{!82, !16, !18, !17}
!83 = distinct !{!83, !123}
!84 = distinct !{!84, !16, !18}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !16, !18, !17}
!108 = distinct !{!108, !16, !18}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = !{!23, !5, i64 52}
!119 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!120 = !{!119, !4, i64 3}
!121 = !{!79}
!122 = !{!80}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!105}
!125 = !{!106}
!126 = distinct !{!126, !16}
!127 = distinct !{!127, !16}
!128 = distinct !{!128, !16}
!129 = distinct !{!129, !16}
!130 = distinct !{!130, !16}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, !16}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !16}
!135 = distinct !{!135, !16}
end_hunk_4
