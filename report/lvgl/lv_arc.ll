Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_arc?download=true
inline.NumInlined: 65
inline.NumDeleted: 16
begin_hunk_0_@lv_arc_event:bb.a

bb.s:                                             ; preds = %bb.p
  %or.cond304 = icmp eq i8 %i.cl, 8
  %i.cn = icmp samesign ult i32 %i.cc, 80
  %or.cond305 = select i1 %or.cond304, i1 %i.cn, i1 false
  br i1 %or.cond305, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = and i8 %i.ce, -25
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.t
  %.sink359 = phi i8 [ %i.co, %bb.t ], [ %i.cm, %bb.r ]
  %.3.ph = phi i32 [ %i.bx, %bb.t ], [ 0, %bb.r ]
  store i8 %.sink359, ptr %i.o, align 8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q, %bb.s
  %.3 = phi i32 [ %.2, %bb.s ], [ %.2, %bb.q ], [ %.3.ph, %.sink.split ]
  %i.cp = sub nsw i32 %.3, %i.ca                  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !19
  %i.cs = call i32 @lv_tick_elaps(i32 noundef %i.cr) #8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !18
  %i.cv = mul i32 %i.cu, %i.cs
  %i.cw = udiv i32 %i.cv, 1000                    ; 3 uses
  %i.cx = icmp sgt i32 %i.cp, %i.cw
  %i.cy = sub nsw i32 0, %i.cw
  %spec.select306 = call i32 @llvm.smax.i32(i32 %i.cp, i32 %i.cy)
  %.0258 = select i1 %i.cx, i32 %i.cw, i32 %spec.select306
  %i.cz = load i32, ptr %i.ar, align 4, !tbaa !26 ; 3 uses
  %i.da = sub nsw i32 %spec.select298, %i.cz
  %i.db = shl nsw i32 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 100 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !28 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !29 ; 2 uses
  %i.dg = sub nsw i32 %i.dd, %i.df
  %i.dh = sdiv i32 %i.db, %i.dg
  %i.di = add nsw i32 %i.dh, 4
  %i.dj = sdiv i32 %i.di, 16
  %i.dk = add i32 %i.cz, %i.ca
  %i.dl = add i32 %i.dk, %.0258
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !30
  %i.dp = call i32 @lv_map(i32 noundef %i.dm, i32 noundef %i.cz, i32 noundef %spec.select298, i32 noundef %i.df, i32 noundef %i.dd) #8 ; 2 uses
  %i.dq = load i8, ptr %i.o, align 8
  %i.dr = and i8 %i.dq, 6
  %i.ds = icmp eq i8 %i.dr, 4
  br i1 %i.ds, label %bb.v, label %lv_arc_get_value.exit

bb.v:                                             ; preds = %bb.u
  %i.dt = load i32, ptr %i.dc, align 4, !tbaa !28
  %i.du = sub i32 %i.dt, %i.dp
  %i.dv = load i32, ptr %i.de, align 8, !tbaa !29
  %i.dw = add nsw i32 %i.du, %i.dv
  br label %lv_arc_get_value.exit

lv_arc_get_value.exit:                            ; preds = %bb.u, %bb.v
  %.0257 = phi i32 [ %i.dw, %bb.v ], [ %i.dp, %bb.u ] ; 5 uses
  %i.dx = load i32, ptr %i.dn, align 4, !tbaa !30
  %.not295 = icmp eq i32 %.0257, %i.dx
  br i1 %.not295, label %bb.y, label %bb.w

bb.w:                                             ; preds = %lv_arc_get_value.exit
  %i.dy = call i32 @lv_tick_get() #8
  store i32 %i.dy, ptr %i.cq, align 8, !tbaa !19
  call void @lv_arc_set_value(ptr noundef nonnull %i.f, i32 noundef %.0257)
  %.not296 = icmp eq i32 %.0257, %i.do
  br i1 %.not296, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 35, ptr noundef null) #8
  %.not297 = icmp eq i32 %i.dz, 1
  br i1 %.not297, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.w, %bb.x, %lv_arc_get_value.exit
  %i.ea = load i32, ptr %i.de, align 8, !tbaa !29
  %i.eb = icmp eq i32 %.0257, %i.ea
  br i1 %i.eb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = load i32, ptr %i.dc, align 4, !tbaa !28
  %i.ed = icmp eq i32 %.0257, %i.ec
  br i1 %i.ed, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ee = call i32 @lv_tick_get() #8
  store i32 %i.ee, ptr %i.cq, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader.preheader, %bb.z, %bb.aa, %bb.x, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.critedge

bb.ac:                                            ; preds = %bb.b
  %i.ef = and i32 %i.e, -9
  %or.cond7 = icmp eq i32 %i.ef, 3
  br i1 %or.cond7, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 8
  %i.ei = and i8 %i.eh, -2
  store i8 %i.ei, ptr %i.eg, align 8
  %i.ej = tail call ptr @lv_obj_get_group(ptr noundef %i.f) #8 ; 2 uses
  %i.ek = tail call zeroext i1 @lv_group_get_editing(ptr noundef %i.ej) #8
  %i.el = tail call ptr @lv_indev_active() #8
  %i.em = tail call i32 @lv_indev_get_type(ptr noundef %i.el) #8
  %i.en = icmp eq i32 %i.em, 4
  %or.cond13 = select i1 %i.en, i1 %i.ek, i1 false
  br i1 %or.cond13, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  tail call void @lv_group_set_editing(ptr noundef %i.ej, i1 noundef zeroext false) #8
  br label %.critedge

bb.af:                                            ; preds = %bb.ac
  switch i32 %i.e, label %.critedge [
    i32 17, label %bb.ag
    i32 18, label %bb.ak
    i32 22, label %bb.an
    i32 27, label %bb.as
    i32 29, label %bb.aw
  ]

bb.ag:                                            ; preds = %bb.af
  %i.eo = tail call i32 @lv_event_get_key(ptr noundef %1) #8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !30 ; 2 uses
  %i.er = and i32 %i.eo, -3
  %or.cond9 = icmp eq i32 %i.er, 17
  br i1 %or.cond9, label %.sink.split360, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.eo, label %bb.ai [
    i32 20, label %.sink.split360
    i32 18, label %.sink.split360
  ]

.sink.split360:                                   ; preds = %bb.ah, %bb.ah, %bb.ag
  %.sink362 = phi i32 [ 1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ah ]
  %i.es = add nsw i32 %i.eq, %.sink362
  tail call void @lv_arc_set_value(ptr noundef nonnull %i.f, i32 noundef %i.es)
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split360, %bb.ah
  %i.et = load i32, ptr %i.ep, align 4, !tbaa !30
  %.not287 = icmp eq i32 %i.eq, %i.et
  br i1 %.not287, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 35, ptr noundef null) #8 ; 0 uses
  br label %.critedge

bb.ak:                                            ; preds = %bb.af
  %i.ev = tail call i32 @lv_event_get_rotary_diff(ptr noundef %1) #8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !30 ; 3 uses
  %i.ey = icmp eq i32 %i.ev, 0
  br i1 %i.ey, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = add nsw i32 %i.ex, %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !28
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !29
  %i.fe = tail call i32 @llvm.smax.i32(i32 %..i, i32 %i.fd) ; 2 uses
  %i.ff = icmp eq i32 %i.ex, %i.fe
  br i1 %i.ff, label %.critedge, label %lv_arc_set_value.exit

lv_arc_set_value.exit:                            ; preds = %bb.al
  store i32 %i.fe, ptr %i.ew, align 4, !tbaa !30
  tail call fastcc void @value_update(ptr noundef %i.f)
  %.pre = load i32, ptr %i.ew, align 4, !tbaa !30
  %i.fg = icmp eq i32 %i.ex, %.pre
  br i1 %i.fg, label %.critedge, label %bb.am

bb.am:                                            ; preds = %lv_arc_set_value.exit
  %i.fh = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 35, ptr noundef null) #8 ; 0 uses
  br label %.critedge

bb.an:                                            ; preds = %bb.af
  %i.fi = tail call ptr @lv_event_get_param(ptr noundef %1) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call fastcc void @get_center(ptr noundef %i.f, ptr noundef %8, ptr noundef %i.c)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !35 ; 2 uses
  %.not284 = icmp eq ptr %i.fk, null
  br i1 %.not284, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !44
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0256.a = phi i32 [ %i.fm, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.fn = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 76) #8
  %i.fo = ptrtoint ptr %i.fn to i64
  %.sroa.0.0.extract.trunc.i326 = trunc i64 %i.fo to i32 ; 2 uses
  %i.fp = load i32, ptr %i.c, align 4, !tbaa !8
  %i.fq = add i32 %.0256.a, %.sroa.0.0.extract.trunc.i326
  %i.fr = sub i32 %i.fp, %i.fq                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.fs = load i32, ptr %8, align 4, !tbaa !23    ; 3 uses
  %i.ft = sub nsw i32 %i.fs, %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !24 ; 3 uses
  %i.fw = sub nsw i32 %i.fv, %i.fr
  %i.fx = add nsw i32 %i.fs, %i.fr
  %i.fy = add nsw i32 %i.fv, %i.fr
  call void @lv_area_set(ptr noundef nonnull %9, i32 noundef %i.ft, i32 noundef %i.fw, i32 noundef %i.fx, i32 noundef %i.fy) #8
  %i.fz = load ptr, ptr %i.fi, align 8, !tbaa !46
  %i.ga = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %9, ptr noundef %i.fz, i32 noundef 32767) #8
  br i1 %i.ga, label %.critedge312, label %.preheader342.preheader

.critedge312:                                     ; preds = %bb.ap
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i8 0, ptr %i.gb, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.critedge

.preheader342.preheader:                          ; preds = %bb.ap
  %i.gc = load ptr, ptr %i.fi, align 8, !tbaa !46 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !24
  %i.gf = sub nsw i32 %i.ge, %i.fv
  %i.gg = load i32, ptr %i.gc, align 4, !tbaa !23
  %i.gh = sub nsw i32 %i.gg, %i.fs
  %i.gi = call zeroext i16 @lv_atan2(i32 noundef %i.gf, i32 noundef %i.gh) #8
  %i.gj = zext i16 %i.gi to i32                   ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !26
  %i.go = add i32 %i.gl, %i.gn                    ; 4 uses
  %i.gp = sub i32 %i.gj, %i.go
  %smax = call i32 @llvm.smax.i32(i32 %i.gp, i32 0)
  %i.gq = add i32 %i.go, %smax
  %i.gr = add i32 %i.gq, 359
  %i.gs = sub i32 %i.gr, %i.gj
  %.fr = freeze i32 %i.gs                         ; 2 uses
  %i.gt = urem i32 %.fr, 360
  %i.gu = sub nuw i32 %.fr, %i.gt
  %i.gv = add i32 %i.gu, %i.gj                    ; 2 uses
  %i.gw = sub i32 %i.gv, %i.go                    ; 2 uses
  %i.gx = call i32 @llvm.usub.sat.i32(i32 359, i32 %i.gw)
  %i.gy = add i32 %i.gv, %i.gx
  %i.gz = sub i32 %i.gy, %i.go
  %.fr354 = freeze i32 %i.gz                      ; 2 uses
  %i.ha = urem i32 %.fr354, 360
  %.neg = sub i32 %i.ha, %.fr354
  %i.hb = add i32 %.neg, %i.gw
  %i.hc = mul i32 %i.fr, 628
  %i.hd = udiv i32 %i.hc, 100
  %i.he = call i32 @lv_dpx(i32 noundef 20) #8
  %i.hf = mul nsw i32 %i.he, 360
  %i.hg = udiv i32 %i.hf, %i.hd
  %i.hh = call fastcc zeroext i1 @lv_arc_angle_within_bg_bounds(ptr noundef nonnull %i.f, i32 noundef %i.hb, i32 noundef %i.hg)
  br i1 %i.hh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.preheader342.preheader
  %10 = shl nsw i32 %.0256.a, 1
  %i.hi = add nsw i32 %10, %.sroa.0.0.extract.trunc.i326 ; 2 uses
  call void @lv_area_increase(ptr noundef nonnull %9, i32 noundef %i.hi, i32 noundef %i.hi) #8
  %i.hj = load ptr, ptr %i.fi, align 8, !tbaa !46
  %i.hk = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %9, ptr noundef %i.hj, i32 noundef 32767) #8
  %i.hl = zext i1 %i.hk to i8
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader342.preheader, %bb.aq
  %.sink = phi i8 [ %i.hl, %bb.aq ], [ 0, %.preheader342.preheader ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i8 %.sink, ptr %i.hm, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.critedge

bb.as:                                            ; preds = %bb.af
  %i.hn = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.ho = ptrtoint ptr %i.hn to i64
  %.sroa.0.0.extract.trunc.i327 = trunc i64 %i.ho to i32
  %i.hp = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.hq = ptrtoint ptr %i.hp to i64
  %.sroa.0.0.extract.trunc.i328 = trunc i64 %i.hq to i32
  %i.hr = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.hs = ptrtoint ptr %i.hr to i64
  %.sroa.0.0.extract.trunc.i329 = trunc i64 %i.hs to i32
  %i.ht = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 25) #8
  %i.hu = ptrtoint ptr %i.ht to i64
  %.sroa.0.0.extract.trunc.i330 = trunc i64 %i.hu to i32
  %i.hv = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i327, i32 %.sroa.0.0.extract.trunc.i328)
  %i.hw = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i329, i32 %.sroa.0.0.extract.trunc.i330)
  %.313 = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 %i.hw)
  %i.hx = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 26) #8
  %i.hy = ptrtoint ptr %i.hx to i64
  %.sroa.0.0.extract.trunc.i331 = trunc i64 %i.hy to i32
  %i.hz = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 27) #8
  %i.ia = ptrtoint ptr %i.hz to i64
  %.sroa.0.0.extract.trunc.i332 = trunc i64 %i.ia to i32
  %i.ib = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 24) #8
  %i.ic = ptrtoint ptr %i.ib to i64
  %.sroa.0.0.extract.trunc.i333 = trunc i64 %i.ic to i32
  %i.id = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 25) #8
  %i.ie = ptrtoint ptr %i.id to i64
  %.sroa.0.0.extract.trunc.i334 = trunc i64 %i.ie to i32
  %i.if = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i331, i32 %.sroa.0.0.extract.trunc.i332)
  %i.ig = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i333, i32 %.sroa.0.0.extract.trunc.i334)
  %i.ih = tail call i32 @llvm.smax.i32(i32 %i.if, i32 %i.ig)
  %i.ii = tail call fastcc i32 @knob_get_extra_size(ptr noundef %i.f)
  %reass.sub = sub i32 %i.ii, %.313
  %i.ij = add i32 %reass.sub, 2
  %i.ik = add i32 %i.ij, %i.ih
  %i.il = tail call ptr @lv_event_get_param(ptr noundef %1) #8 ; 4 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !8
  %i.in = tail call i32 @llvm.smax.i32(i32 %i.im, i32 %i.ik) ; 2 uses
  store i32 %i.in, ptr %i.il, align 4, !tbaa !8
  %i.io = tail call i32 @lv_obj_calculate_ext_draw_size(ptr noundef %i.f, i32 noundef 131072) #8
  %i.ip = icmp sgt i32 %i.in, %i.io
  br i1 %i.ip, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.iq = load i32, ptr %i.il, align 4, !tbaa !8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ir = tail call i32 @lv_obj_calculate_ext_draw_size(ptr noundef %i.f, i32 noundef 131072) #8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.is = phi i32 [ %i.iq, %bb.at ], [ %i.ir, %bb.au ]
  store i32 %i.is, ptr %i.il, align 4, !tbaa !8
  br label %.critedge

bb.aw:                                            ; preds = %bb.af
  %i.it = tail call ptr @lv_event_get_current_target(ptr noundef %1) #8 ; 13 uses
  %i.iu = tail call ptr @lv_event_get_layer(ptr noundef %1) #8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call fastcc void @get_center(ptr noundef %i.it, ptr noundef %2, ptr noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.iv = load i32, ptr %i.a, align 4, !tbaa !8   ; 4 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %3) #8
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.iu, ptr %i.ix, align 8, !tbaa !53
  call void @lv_obj_init_draw_arc_dsc(ptr noundef %i.it, i32 noundef 0, ptr noundef nonnull %3) #8
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.iz = load i64, ptr %2, align 8
  store i64 %i.iz, ptr %i.iy, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 84
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !27
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.je = load <2 x i32>, ptr %i.ja, align 4, !tbaa !8
  %i.jf = insertelement <2 x i32> poison, i32 %i.jc, i64 0
  %i.jg = shufflevector <2 x i32> %i.jf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jh = add nsw <2 x i32> %i.je, %i.jg
  store <2 x i32> %i.jh, ptr %i.jd, align 8, !tbaa !8
  %i.ji = trunc i32 %i.iv to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i16 %i.ji, ptr %i.jj, align 8, !tbaa !54
  call void @lv_draw_arc(ptr noundef %i.iu, ptr noundef nonnull %3) #8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jk = call ptr @lv_obj_get_style_prop(ptr noundef %i.it, i32 noundef 131072, i8 noundef zeroext 26) #8
  %i.jl = ptrtoint ptr %i.jk to i64
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.jl to i32
  %i.jm = call ptr @lv_obj_get_style_prop(ptr noundef %i.it, i32 noundef 131072, i8 noundef zeroext 27) #8
  %i.jn = ptrtoint ptr %i.jm to i64
  %.sroa.0.0.extract.trunc.i20.i.i = trunc i64 %i.jn to i32
  %i.jo = call ptr @lv_obj_get_style_prop(ptr noundef %i.it, i32 noundef 131072, i8 noundef zeroext 24) #8
  %i.jp = ptrtoint ptr %i.jo to i64
  %.sroa.0.0.extract.trunc.i21.i.i = trunc i64 %i.jp to i32
  %i.jq = call ptr @lv_obj_get_style_prop(ptr noundef %i.it, i32 noundef 131072, i8 noundef zeroext 25) #8
  %i.jr = ptrtoint ptr %i.jq to i64
  %.sroa.0.0.extract.trunc.i22.i.i = trunc i64 %i.jr to i32
  %i.js = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i.i, i32 %.sroa.0.0.extract.trunc.i20.i.i)
  %i.jt = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i21.i.i, i32 %.sroa.0.0.extract.trunc.i22.i.i)
  %..i.i = call i32 @llvm.smax.i32(i32 %i.js, i32 %i.jt)
  %i.ju = sub nsw i32 %i.iv, %..i.i               ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %bb.az, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ay
  %.val.pre.i = load i32, ptr %2, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val24.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %lv_arc_draw.exit

bb.az:                                            ; preds = %bb.ay
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %3) #8
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.iu, ptr %i.jw, align 8, !tbaa !53
  call void @lv_obj_init_draw_arc_dsc(ptr noundef %i.it, i32 noundef 131072, ptr noundef nonnull %3) #8
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.jy = load i64, ptr %2, align 8               ; 3 uses
  store i64 %i.jy, ptr %i.jx, align 8, !tbaa !8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.it, i64 76
  %i.ka = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !27
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.kd = load <2 x i32>, ptr %i.jz, align 4, !tbaa !8
  %i.ke = insertelement <2 x i32> poison, i32 %i.kb, i64 0
  %i.kf = shufflevector <2 x i32> %i.ke, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kg = add nsw <2 x i32> %i.kd, %i.kf
  store <2 x i32> %i.kg, ptr %i.kc, align 8, !tbaa !8
  %i.kh = trunc i32 %i.ju to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i16 %i.kh, ptr %i.ki, align 8, !tbaa !54
  call void @lv_draw_arc(ptr noundef %i.iu, ptr noundef nonnull %3) #8
  %i.kj = trunc i64 %i.jy to i32
  %i.kk = lshr i64 %i.jy, 32
  %i.kl = trunc nuw i64 %i.kk to i32
  br label %lv_arc_draw.exit

lv_arc_draw.exit:                                 ; preds = %._crit_edge.i, %bb.az
  %.val24.i = phi i32 [ %.val24.pre.i, %._crit_edge.i ], [ %i.kl, %bb.az ]
  %.val.i = phi i32 [ %.val.pre.i, %._crit_edge.i ], [ %i.kj, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call fastcc void @get_knob_area(ptr noundef %i.it, i32 %.val.i, i32 %.val24.i, i32 noundef %i.iv, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %5) #8
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.iu, ptr %i.km, align 8, !tbaa !57
  call void @lv_obj_init_draw_rect_dsc(ptr noundef %i.it, i32 noundef 196608, ptr noundef nonnull %5) #8
  call void @lv_draw_rect(ptr noundef %i.iu, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.ak, %bb.am, %bb.aj, %bb.ar, %lv_arc_set_value.exit, %bb.ai, %bb.ab, %.critedge312, %bb.af, %bb.ad, %bb.ae, %bb.av, %lv_arc_draw.exit, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_arc_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_arc_class, ptr noundef %0) #8 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_arc_set_start_angle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
end_hunk_0
