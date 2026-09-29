Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_cjk_hints_detect_features:bb.a
  %i.dq = icmp eq i16 %i.da, %i.dg
  %i.dr = icmp eq i16 %i.cy, %i.do
  %or.cond173.us.us.i = and i1 %i.dq, %i.dr
  br i1 %or.cond173.us.us.i, label %..loopexit_crit_edge.us.us.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 48
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !273 ; 2 uses
  %.not167.us.us.i = icmp sgt i64 %i.dt, %i.dc
  %.not168.us.us.i = icmp sgt i64 %i.dd, %i.dt
  %or.cond174.us.us.i = select i1 %.not167.us.us.i, i1 %.not168.us.us.i, i1 false
  br i1 %or.cond174.us.us.i, label %bb.ab, label %..loopexit_crit_edge.us.us.i

bb.ab:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.de, align 8, !tbaa !521
  %i.dv = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !521
  %i.dx = mul nsw i64 %i.dw, 3
  %.not169.us.us.i = icmp slt i64 %i.du, %i.dx
  br i1 %.not169.us.us.i, label %.split.us.us.i, label %.preheader175.us.us.i

.preheader175.us.us.i:                            ; preds = %bb.ab, %bb.ad
  %.0184.us.us.i = phi ptr [ %i.ed, %bb.ad ], [ %i.ad, %bb.ab ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0184.us.us.i, i64 32 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !150 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %.1185.us.us.i
  br i1 %i.ea, label %.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %.preheader175.us.us.i
  %i.eb = icmp eq ptr %i.dz, %i.dk
  br i1 %i.eb, label %.sink.split.i, label %bb.ad

.sink.split.i:                                    ; preds = %bb.ac, %.preheader175.us.us.i
  %.sink.i = phi ptr [ %.1136188.us.i, %bb.ac ], [ %i.cu, %.preheader175.us.us.i ]
  store ptr null, ptr %i.dy, align 8, !tbaa !150
  %i.ec = getelementptr inbounds nuw i8, ptr %.0184.us.us.i, i64 40
  store ptr %.sink.i, ptr %i.ec, align 8, !tbaa !274
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %.0184.us.us.i, i64 80 ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.ah
  br i1 %i.ee, label %.preheader175.us.us.i, label %..loopexit_crit_edge.us.us.i, !llvm.loop !510

..loopexit_crit_edge.us.us.i:                     ; preds = %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 80 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.ah
  br i1 %i.eg, label %bb.v, label %..loopexit177_crit_edge.split.us.us.i, !llvm.loop !511

.split.us.us.i:                                   ; preds = %bb.ab
  store ptr null, ptr %i.cv, align 8, !tbaa !150
  store ptr null, ptr %i.ct, align 8, !tbaa !150
  br label %..loopexit177_crit_edge.split.us.us.i

..loopexit177_crit_edge.split.us.us.i:            ; preds = %..loopexit_crit_edge.us.us.i, %.split.us.us.i, %bb.u, %bb.t, %bb.s, %.lr.ph.split.us.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.1136188.us.i, i64 80 ; 2 uses
  %i.ei = icmp ult ptr %i.eh, %i.ah
  br i1 %i.ei, label %.lr.ph.split.us.i, label %.lr.ph192.i, !llvm.loop !512

.lr.ph192.i:                                      ; preds = %..loopexit177_crit_edge.split.us.us.i, %bb.ai
  %.2191.i = phi ptr [ %i.ew, %bb.ai ], [ %i.ad, %..loopexit177_crit_edge.split.us.us.i ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2191.i, i64 32 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !150 ; 3 uses
  %.not159.i = icmp eq ptr %i.ek, null
  br i1 %.not159.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph192.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !150
  %.not160.i = icmp eq ptr %i.em, %.2191.i
  br i1 %.not160.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.ej, align 8, !tbaa !150
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !273 ; 2 uses
  %i.ep = icmp slt i64 %i.eo, %i.as
  br i1 %i.ep, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %.2191.i, i64 48
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !273
  %i.es = shl nsw i64 %i.eo, 2
  %i.et = icmp slt i64 %i.er, %i.es
  br i1 %i.et, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !150
  %i.ev = getelementptr inbounds nuw i8, ptr %.2191.i, i64 40
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !274
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %.lr.ph192.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.2191.i, i64 80 ; 2 uses
  %i.ex = icmp ult ptr %i.ew, %i.ah
  br i1 %i.ex, label %.lr.ph192.i, label %af_cjk_hints_link_segments.exit, !llvm.loop !513

af_cjk_hints_link_segments.exit:                  ; preds = %bb.ai, %bb.e
  %i.ey = load ptr, ptr %0, align 8, !tbaa !129
  %i.ez = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.fa = getelementptr inbounds nuw [896 x i8], ptr %i.ez, i64 %i.c
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !148 ; 4 uses
  %.not.i11 = icmp eq ptr %i.fb, null
  br i1 %.not.i11, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %af_cjk_hints_link_segments.exit
  %i.fc = load i32, ptr %i.d, align 8, !tbaa !149
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [80 x i8], ptr %i.fb, i64 %i.fd
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %af_cjk_hints_link_segments.exit
  %i.ff = phi ptr [ %i.fe, %bb.aj ], [ null, %af_cjk_hints_link_segments.exit ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i32 0, ptr %i.fg, align 8, !tbaa !107
  %i.fh = load i64, ptr %.in.i, align 8, !tbaa !76 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 496
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !252 ; 2 uses
  %i.fk = mul i64 %i.fj, %i.fh                    ; 2 uses
  %i.fl = ashr i64 %i.fk, 63
  %i.fm = add i64 %i.fk, 32768
  %i.fn = add i64 %i.fm, %i.fl
  %i.fo = icmp sgt i64 %i.fn, 1114111
  br i1 %i.fo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fp = tail call i64 @FT_DivFix(i64 noundef 16, i64 noundef %i.fh) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0179.i = phi i64 [ %i.fp, %bb.al ], [ %i.fj, %bb.ak ] ; 3 uses
  %i.fq = icmp ult ptr %i.fb, %i.ff
  br i1 %i.fq, label %.preheader257.lr.ph.i, label %._crit_edge262.i

.preheader257.lr.ph.i:                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %.preheader257.i

.preheader257.i:                                  ; preds = %.thread242.i, %.preheader257.lr.ph.i
  %.0180261.i = phi ptr [ %i.fb, %.preheader257.lr.ph.i ], [ %i.hy, %.thread242.i ] ; 14 uses
  %i.fs = load i32, ptr %i.fg, align 8, !tbaa !107 ; 2 uses
  %.not268.i = icmp eq i32 %i.fs, 0
  br i1 %.not268.i, label %.preheader257.i.._crit_edge.thread.i_crit_edge, label %.lr.ph.i18

.preheader257.i.._crit_edge.thread.i_crit_edge:   ; preds = %.preheader257.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !272
  br label %._crit_edge.thread.i

.lr.ph.i18:                                       ; preds = %.preheader257.i
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !106
  %i.fu = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !272 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 2
  %i.fx = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 32
  %wide.trip.count.i = zext i32 %i.fs to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.av, %.lr.ph.i18
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i18 ], [ %indvars.iv.next.i, %bb.av ] ; 2 uses
  %.0171259.i = phi i64 [ 65535, %.lr.ph.i18 ], [ %.3174.i, %bb.av ] ; 4 uses
  %.0175258.i = phi ptr [ null, %.lr.ph.i18 ], [ %.3178.i, %bb.av ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [88 x i8], ptr %i.ft, i64 %indvars.iv.i ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 25
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !196
  %.not225.i = icmp eq i8 %i.ga, %i.fv
  br i1 %.not225.i, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.gb = load i16, ptr %i.fw, align 2, !tbaa !151
  %i.gc = sext i16 %i.gb to i64
  %i.gd = load i16, ptr %i.fy, align 8, !tbaa !198
  %i.ge = sext i16 %i.gd to i64
  %i.gf = sub nsw i64 %i.gc, %i.ge
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.gf, i1 true) ; 3 uses
  %i.gg = icmp slt i64 %spec.select.i, %.0179.i
  %i.gh = icmp slt i64 %spec.select.i, %.0171259.i
  %or.cond231.i = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %or.cond231.i, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %i.fx, align 8, !tbaa !150 ; 2 uses
  %.not226.i = icmp eq ptr %i.gi, null
  br i1 %.not226.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  br label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i, %bb.aq
  %.0165.i = phi ptr [ %i.gk, %bb.aq ], [ %i.gv, %select.unfold.i ] ; 2 uses
  %.0162.i = phi i64 [ 0, %bb.aq ], [ %.2164.ph.i, %select.unfold.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0165.i, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !150 ; 2 uses
  %.not227.i = icmp eq ptr %i.gn, null
  br i1 %.not227.i, label %select.unfold.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.go = load i16, ptr %i.gl, align 2, !tbaa !151 ; 2 uses
  %i.gp = sext i16 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !151 ; 2 uses
  %i.gs = sext i16 %i.gr to i64                   ; 2 uses
  %2 = icmp sgt i16 %i.go, %i.gr
  %3 = sub nsw i64 %i.gp, %i.gs
  %i.gt = sub nsw i64 %i.gs, %i.gp
  %4 = select i1 %2, i64 %3, i64 %i.gt            ; 3 uses
  %.not228.i = icmp slt i64 %4, %.0179.i
  br i1 %.not228.i, label %select.unfold.i, label %bb.at

select.unfold.i:                                  ; preds = %bb.as, %bb.ar
  %.2164.ph.i = phi i64 [ %.0162.i, %bb.ar ], [ %4, %bb.as ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0165.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !119 ; 2 uses
  %.not229.i = icmp eq ptr %i.gv, %i.gk
  br i1 %.not229.i, label %bb.at, label %bb.ar, !llvm.loop !514

bb.at:                                            ; preds = %select.unfold.i, %bb.as
  %.2164239.i = phi i64 [ %.2164.ph.i, %select.unfold.i ], [ %4, %bb.as ]
  %.not230.i = icmp slt i64 %.2164239.i, %.0179.i
  br i1 %.not230.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.ap
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ao, %bb.an
  %.3178.i = phi ptr [ %.0175258.i, %bb.ao ], [ %.0175258.i, %bb.an ], [ %i.fy, %bb.au ], [ %.0175258.i, %bb.at ] ; 4 uses
  %.3174.i = phi i64 [ %.0171259.i, %bb.ao ], [ %.0171259.i, %bb.an ], [ %spec.select.i, %bb.au ], [ %.0171259.i, %bb.at ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i19, label %bb.an, !llvm.loop !515

._crit_edge.i19:                                  ; preds = %bb.av
  %.not223.i = icmp eq ptr %.3178.i, null
  br i1 %.not223.i, label %._crit_edge.thread.i, label %bb.aw

._crit_edge.thread.i:                             ; preds = %.preheader257.i.._crit_edge.thread.i_crit_edge, %._crit_edge.i19
  %i.gw = phi i8 [ %.pre, %.preheader257.i.._crit_edge.thread.i_crit_edge ], [ %i.fv, %._crit_edge.i19 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.gx = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 2 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !151
  %i.gz = sext i16 %i.gy to i32
  %i.ha = sext i8 %i.gw to i32
  %i.hb = call fastcc i32 @af_axis_hints_new_edge(ptr noundef nonnull %i.d, i32 noundef %i.gz, i32 noundef %i.ha, i8 noundef zeroext 0, ptr noundef %i.ey, ptr noundef %i.a) ; 2 uses
  %.not224.i = icmp eq i32 %i.hb, 0
  br i1 %.not224.i, label %select.unfold240.i, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i19
  %i.hc = getelementptr inbounds nuw i8, ptr %.3178.i, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !110
  %i.he = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 24
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !119
  %i.hf = getelementptr inbounds nuw i8, ptr %.3178.i, i64 80 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !281
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store ptr %.0180261.i, ptr %i.hh, align 8, !tbaa !119
  store ptr %.0180261.i, ptr %i.hf, align 8, !tbaa !281
  br label %.thread242.i

select.unfold240.i:                               ; preds = %._crit_edge.thread.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 1
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !269 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hj, i8 0, i64 72, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  store ptr %.0180261.i, ptr %i.hk, align 8, !tbaa !110
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 80
  store ptr %.0180261.i, ptr %i.hl, align 8, !tbaa !281
  %i.hm = load i8, ptr %i.hi, align 1, !tbaa !272
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 25
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !196
  %i.ho = load i16, ptr %i.gx, align 2, !tbaa !151 ; 2 uses
  store i16 %i.ho, ptr %i.hj, align 8, !tbaa !198
  %i.hp = sext i16 %i.ho to i64
  %i.hq = mul i64 %i.fh, %i.hp                    ; 2 uses
  %i.hr = ashr i64 %i.hq, 63
  %i.hs = add i64 %i.hq, 32768
  %i.ht = add i64 %i.hs, %i.hr
  %i.hu = ashr i64 %i.ht, 16                      ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !112
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i64 %i.hu, ptr %i.hw, align 8, !tbaa !111
  %i.hx = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 24
  store ptr %.0180261.i, ptr %i.hx, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread242.i

bb.ax:                                            ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %af_cjk_hints_compute_edges.exit

.thread242.i:                                     ; preds = %select.unfold240.i, %bb.aw
  %i.hy = getelementptr inbounds nuw i8, ptr %.0180261.i, i64 80 ; 2 uses
  %i.hz = icmp ult ptr %i.hy, %i.ff
  br i1 %i.hz, label %.preheader257.i, label %._crit_edge262.i, !llvm.loop !516

._crit_edge262.i:                                 ; preds = %.thread242.i, %bb.am
  %i.ia = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !106 ; 4 uses
  %.not212.i = icmp eq ptr %i.ib, null
  br i1 %.not212.i, label %af_cjk_hints_compute_edges.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge262.i
  %i.ic = load i32, ptr %i.fg, align 8, !tbaa !107 ; 2 uses
  %i.id = zext i32 %i.ic to i64
  %.idx.i14 = mul nuw nsw i64 %i.id, 88
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx.i14 ; 2 uses
  %.not294.i = icmp eq i32 %i.ic, 0
  br i1 %.not294.i, label %af_cjk_hints_compute_edges.exit, label %.lr.ph265.i

.lr.ph265.i:                                      ; preds = %bb.ay, %.loopexit256.i
  %.0160263.i = phi ptr [ %i.ik, %.loopexit256.i ], [ %i.ib, %bb.ay ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0160263.i, i64 72
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !110 ; 3 uses
  %.not221.i = icmp eq ptr %i.ig, null
  br i1 %.not221.i, label %.loopexit256.i, label %.preheader255.i

.preheader255.i:                                  ; preds = %.lr.ph265.i, %.preheader255.i
  %.1181.i = phi ptr [ %i.ij, %.preheader255.i ], [ %i.ig, %.lr.ph265.i ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.1181.i, i64 16
  store ptr %.0160263.i, ptr %i.ih, align 8, !tbaa !202
  %i.ii = getelementptr inbounds nuw i8, ptr %.1181.i, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !119 ; 2 uses
  %.not222.i = icmp eq ptr %i.ij, %i.ig
  br i1 %.not222.i, label %.loopexit256.i, label %.preheader255.i, !llvm.loop !517

.loopexit256.i:                                   ; preds = %.preheader255.i, %.lr.ph265.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.0160263.i, i64 88 ; 2 uses
  %i.il = icmp ult ptr %i.ik, %i.ie
  br i1 %i.il, label %.lr.ph265.i, label %.lr.ph267.i, !llvm.loop !518

.lr.ph267.i:                                      ; preds = %.loopexit256.i, %bb.bk
  %.1161266.i = phi ptr [ %i.ki, %bb.bk ], [ %i.ib, %.loopexit256.i ] ; 9 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.1161266.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !110 ; 3 uses
  %.not213.i = icmp eq ptr %i.in, null
  br i1 %.not213.i, label %.loopexit.i, label %.preheader.i15

.preheader.i15:                                   ; preds = %.lr.ph267.i
  %i.io = getelementptr inbounds nuw i8, ptr %.1161266.i, i64 48 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.1161266.i, i64 56 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.bh, %.preheader.i15
  %.2182.i = phi ptr [ %i.jy, %bb.bh ], [ %i.in, %.preheader.i15 ] ; 6 uses
  %.0157.i = phi i32 [ %.1158.i, %bb.bh ], [ 0, %.preheader.i15 ]
  %.0154.i = phi i32 [ %.1155.i, %bb.bh ], [ 0, %.preheader.i15 ]
  %i.iq = load i8, ptr %.2182.i, align 8, !tbaa !265
  %i.ir = and i8 %i.iq, 1                         ; 2 uses
  %i.is = zext nneg i8 %i.ir to i32
  %.1158.i = add nuw nsw i32 %.0157.i, %i.is      ; 3 uses
  %i.it = xor i8 %i.ir, 1
  %i.iu = zext nneg i8 %i.it to i32
  %.1155.i = add nuw nsw i32 %.0154.i, %i.iu      ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.2182.i, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !274 ; 3 uses
  %.not215.i = icmp eq ptr %i.iw, null
  br i1 %.not215.i, label %.thread246.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !202
  %i.iz = icmp ne ptr %i.iy, %.1161266.i          ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.2182.i, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !150 ; 2 uses
  %i.jc = icmp ne ptr %i.jb, null
  %or.cond.i16 = select i1 %i.jc, i1 true, i1 %i.iz
  br i1 %or.cond.i16, label %bb.bb, label %bb.bh

.thread246.i:                                     ; preds = %bb.az
  %i.jd = getelementptr inbounds nuw i8, ptr %.2182.i, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !150 ; 2 uses
  %.not251.i = icmp eq ptr %i.je, null
  br i1 %.not251.i, label %bb.bh, label %.thread248.i

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.iz, label %bb.bc, label %.thread248.i

bb.bc:                                            ; preds = %bb.bb
  br label %.thread248.i

.thread248.i:                                     ; preds = %bb.bc, %bb.bb, %.thread246.i
  %i.jf = phi i1 [ true, %bb.bc ], [ false, %bb.bb ], [ false, %.thread246.i ]
  %.0153.in.i = phi ptr [ %i.ip, %bb.bc ], [ %i.io, %bb.bb ], [ %i.io, %.thread246.i ]
  %.0152.i = phi ptr [ %i.iw, %bb.bc ], [ %i.jb, %bb.bb ], [ %i.je, %.thread246.i ] ; 2 uses
  %.0153.i = load ptr, ptr %.0153.in.i, align 8, !tbaa !269 ; 3 uses
  %.not216.i = icmp eq ptr %.0153.i, null
  br i1 %.not216.i, label %.sink.split.i17, label %bb.bd

bb.bd:                                            ; preds = %.thread248.i
  %i.jg = load i16, ptr %.1161266.i, align 8, !tbaa !198
  %i.jh = sext i16 %i.jg to i64
  %i.ji = load i16, ptr %.0153.i, align 8, !tbaa !198
  %i.jj = sext i16 %i.ji to i64
  %i.jk = sub nsw i64 %i.jh, %i.jj
  %spec.select232.i = tail call i64 @llvm.abs.i64(i64 %i.jk, i1 true)
  %i.jl = getelementptr inbounds nuw i8, ptr %.2182.i, i64 2
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !151 ; 2 uses
  %i.jn = sext i16 %i.jm to i64                   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0152.i, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !151 ; 2 uses
  %i.jq = sext i16 %i.jp to i64                   ; 2 uses
  %5 = icmp sgt i16 %i.jm, %i.jp
  %6 = sub nsw i64 %i.jn, %i.jq
  %i.jr = sub nsw i64 %i.jq, %i.jn
  %7 = select i1 %5, i64 %6, i64 %i.jr
  %8 = icmp slt i64 %7, %spec.select232.i
  br i1 %8, label %.sink.split.i17, label %bb.be

.sink.split.i17:                                  ; preds = %bb.bd, %.thread248.i
  %i.js = getelementptr inbounds nuw i8, ptr %.0152.i, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !202
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i17, %bb.bd
  %.2.i = phi ptr [ %.0153.i, %bb.bd ], [ %i.jt, %.sink.split.i17 ] ; 3 uses
  br i1 %i.jf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store ptr %.2.i, ptr %i.ip, align 8, !tbaa !282
  %i.ju = getelementptr inbounds nuw i8, ptr %.2.i, i64 24 ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !194
  %i.jw = or i8 %i.jv, 2
  store i8 %i.jw, ptr %i.ju, align 8, !tbaa !194
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  store ptr %.2.i, ptr %i.io, align 8, !tbaa !283
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.thread246.i, %bb.ba
  %i.jx = getelementptr inbounds nuw i8, ptr %.2182.i, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !119 ; 2 uses
  %.not217.i = icmp eq ptr %i.jy, %i.in
  br i1 %.not217.i, label %.loopexit.loopexit.i, label %bb.az, !llvm.loop !519

.loopexit.loopexit.i:                             ; preds = %bb.bh
  %i.jz = icmp samesign uge i32 %.1158.i, %.1155.i
  %i.ka = icmp ne i32 %.1158.i, 0
  %i.kb = select i1 %i.ka, i1 %i.jz, i1 false
  %i.kc = zext i1 %i.kb to i8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph267.i
  %.2159.i = phi i8 [ 0, %.lr.ph267.i ], [ %i.kc, %.loopexit.loopexit.i ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.1161266.i, i64 24
  store i8 %.2159.i, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.1161266.i, i64 56 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !282
  %.not219.i = icmp eq ptr %i.kf, null
  br i1 %.not219.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.1161266.i, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !283
  %.not220.i = icmp eq ptr %i.kh, null
  br i1 %.not220.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr null, ptr %i.ke, align 8, !tbaa !282
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %.loopexit.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.1161266.i, i64 88 ; 2 uses
  %i.kj = icmp ult ptr %i.ki, %i.ie
  br i1 %i.kj, label %.lr.ph267.i, label %af_cjk_hints_compute_edges.exit, !llvm.loop !520

af_cjk_hints_compute_edges.exit:                  ; preds = %bb.bk, %bb.b, %bb.ay, %._crit_edge262.i, %bb.ax, %af_cjk_hints_compute_segments.exit
  %.0 = phi i32 [ %i.ac, %af_cjk_hints_compute_segments.exit ], [ 0, %bb.ay ], [ %i.hb, %bb.ax ], [ %i.j, %bb.b ], [ 0, %._crit_edge262.i ], [ 0, %bb.bk ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @af_cjk_hints_compute_blue_edges(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = getelementptr inbounds nuw [896 x i8], ptr %i.k, i64 %i.b ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !276  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !45
  %i.p = udiv i32 %i.o, 40
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul i64 %i.m, %i.q                       ; 2 uses
  %i.s = ashr i64 %i.r, 63
  %i.t = add i64 %i.r, 32768
  %i.u = add i64 %i.t, %i.s
  %i.v = ashr i64 %i.u, 16
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.v, i64 32)
  %i.w = icmp ult ptr %i.e, %i.j
  br i1 %i.w, label %.preheader.lr.ph, label %._crit_edge76

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 428
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86   ; 2 uses
  %.not77 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br i1 %.not77, label %._crit_edge76, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i32 %i.y to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.i
  %.06075.us = phi ptr [ %i.bf, %bb.i ], [ %i.e, %.preheader.us.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.06075.us, i64 25
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.05474.us = phi i64 [ %spec.store.select, %.preheader.us ], [ %.3.us, %bb.g ] ; 4 uses
  %.05573.us = phi ptr [ null, %.preheader.us ], [ %.358.us, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %indvars.iv ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !280 ; 2 uses
  %i.af = and i32 %i.ae, 1
  %.not70.us = icmp eq i32 %i.af, 0
  br i1 %.not70.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !196
  %i.ah = sext i8 %i.ag to i32
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !197
  %i.aj = icmp eq i32 %i.ai, %i.ah
  %i.ak = and i32 %i.ae, 2
  %i.al = icmp eq i32 %i.ak, 0
  %.not71.us = xor i1 %i.al, %i.aj
  br i1 %.not71.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i16, ptr %.06075.us, align 8, !tbaa !198
  %i.an = sext i16 %i.am to i64                   ; 3 uses
  %i.ao = load i64, ptr %i.ac, align 8, !tbaa !278 ; 2 uses
  %i.ap = sub nsw i64 %i.an, %i.ao
  %i.aq = tail call i64 @llvm.abs.i64(i64 %i.ap, i1 true)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !279 ; 2 uses
  %i.at = sub nsw i64 %i.an, %i.as
  %i.au = tail call i64 @llvm.abs.i64(i64 %i.at, i1 true)
  %i.av = icmp samesign ugt i64 %i.aq, %i.au      ; 2 uses
  %.0.us = select i1 %i.av, ptr %i.ar, ptr %i.ac
  %i.aw = select i1 %i.av, i64 %i.as, i64 %i.ao
  %i.ax = sub nsw i64 %i.an, %i.aw
  %.053.us = tail call i64 @llvm.abs.i64(i64 %i.ax, i1 true)
  %i.ay = mul i64 %.053.us, %i.m                  ; 2 uses
  %i.az = ashr i64 %i.ay, 63
  %i.ba = add i64 %i.ay, 32768
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = ashr i64 %i.bb, 16                      ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %.05474.us
  %.156.us = select i1 %i.bd, ptr %.0.us, ptr %.05573.us
  %.1.us = tail call i64 @llvm.smin.i64(i64 %i.bc, i64 %.05474.us)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.358.us = phi ptr [ %.05573.us, %bb.d ], [ %.156.us, %bb.f ], [ %.05573.us, %bb.e ] ; 3 uses
  %.3.us = phi i64 [ %.05474.us, %bb.d ], [ %.1.us, %bb.f ], [ %.05474.us, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !522

bb.h:                                             ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw i8, ptr %.06075.us, i64 40
  store ptr %.358.us, ptr %i.be, align 8, !tbaa !201
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.06075.us, i64 88 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.j
  br i1 %i.bg, label %.preheader.us, label %._crit_edge76, !llvm.loop !523

._crit_edge.us:                                   ; preds = %bb.g
  %.not69.us = icmp eq ptr %.358.us, null
  br i1 %.not69.us, label %bb.i, label %bb.h

._crit_edge76:                                    ; preds = %bb.i, %.preheader.lr.ph, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_cjk_hint_edges(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 14 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
