Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_indev_scroll?download=true
inline.NumInlined: 30
inline.NumDeleted: 12
begin_hunk_0_@lv_indev_scroll_handler:bb.a
  br i1 %i.m, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @lv_indev_find_scroll_obj(ptr noundef nonnull %0) ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.be, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !24   ; 22 uses
  %i.q = tail call zeroext i1 @lv_obj_has_flag(ptr noundef %i.p, i32 noundef 128) #6
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @lv_area_set(ptr noundef nonnull %i.r, i32 noundef -536870911, i32 noundef -536870911, i32 noundef 536870911, i32 noundef 536870911) #6
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.s = tail call i32 @lv_obj_get_scroll_snap_y(ptr noundef %i.p) #6
  switch i32 %i.s, label %bb.k [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = add nsw i32 %i.u, 1
  %i.w = tail call fastcc i32 @find_snap_point_y(ptr noundef %i.p, i32 noundef %i.v, i32 noundef 536870911, i32 noundef 0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %i.w, ptr %i.x, align 4, !tbaa !30
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29
  %i.z = add nsw i32 %i.y, -1
  %i.aa = tail call fastcc i32 @find_snap_point_y(ptr noundef %i.p, i32 noundef -536870911, i32 noundef %i.z, i32 noundef 0)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 52 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = tail call fastcc i32 @find_snap_point_y(ptr noundef %i.p, i32 noundef %i.ac, i32 noundef 536870911, i32 noundef 0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !30
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ag = tail call fastcc i32 @find_snap_point_y(ptr noundef %i.p, i32 noundef -536870911, i32 noundef %i.af, i32 noundef 0)
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = tail call i32 @lv_area_get_height(ptr noundef nonnull %i.ah) #6
  %i.al = sdiv i32 %i.ak, 2
  %i.am = add nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = add nsw i32 %i.am, 1
  %i.ao = tail call fastcc i32 @find_snap_point_y(ptr noundef %i.p, i32 noundef %i.an, i32 noundef 536870911, i32 noundef 0)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !30
  %i.aq = add nsw i32 %i.am, -1
  %i.ar = tail call fastcc i32 @find_snap_point_y(ptr noundef %i.p, i32 noundef -536870911, i32 noundef %i.aq, i32 noundef 0)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 -536870911, ptr %i.as, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i = phi i32 [ 536870911, %bb.k ], [ %i.ar, %bb.j ], [ %i.ag, %bb.i ], [ %i.aa, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 %.sink.i, ptr %i.at, align 4, !tbaa !32
  %i.au = tail call i32 @lv_obj_get_scroll_snap_x(ptr noundef %i.p) #6
  switch i32 %i.au, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !33
  %i.ax = tail call fastcc i32 @find_snap_point_x(ptr noundef %i.p, i32 noundef %i.aw, i32 noundef 536870911, i32 noundef 0)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !34
  %i.az = load i32, ptr %i.av, align 8, !tbaa !33
  %i.ba = tail call fastcc i32 @find_snap_point_x(ptr noundef %i.p, i32 noundef -536870911, i32 noundef %i.az, i32 noundef 0)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !35
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !36
  %i.be = tail call fastcc i32 @find_snap_point_x(ptr noundef %i.p, i32 noundef %i.bd, i32 noundef 536870911, i32 noundef 0)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !34
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !36
  %i.bh = tail call fastcc i32 @find_snap_point_x(ptr noundef %i.p, i32 noundef -536870911, i32 noundef %i.bg, i32 noundef 0)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !35
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !33
  %i.bl = tail call i32 @lv_area_get_width(ptr noundef nonnull %i.bj) #6
  %i.bm = sdiv i32 %i.bl, 2
  %i.bn = add nsw i32 %i.bm, %i.bk                ; 2 uses
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = tail call fastcc i32 @find_snap_point_x(ptr noundef %i.p, i32 noundef %i.bo, i32 noundef 536870911, i32 noundef 0)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !34
  %i.br = add nsw i32 %i.bn, -1
  %i.bs = tail call fastcc i32 @find_snap_point_x(ptr noundef %i.p, i32 noundef -536870911, i32 noundef %i.br, i32 noundef 0)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !35
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 -536870911, ptr %i.bu, align 8, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 536870911, ptr %i.bv, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !34 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 536870911
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 -536870911, ptr %i.bw, align 8, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bz = phi i32 [ -536870911, %bb.r ], [ %i.bx, %bb.q ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !30 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 536870911
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 -536870911, ptr %i.ca, align 4, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = phi i32 [ -536870911, %bb.t ], [ %i.cb, %bb.s ]
  %i.ce = icmp eq i32 %i.bz, 0
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 -536870911, ptr %i.bw, align 8, !tbaa !34
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !35
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 536870911, ptr %i.cf, align 8, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ci = icmp eq i32 %i.cd, 0
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 -536870911, ptr %i.ca, align 4, !tbaa !30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ab, label %init_scroll_limits.exit

bb.ab:                                            ; preds = %bb.aa
  store i32 536870911, ptr %i.cj, align 4, !tbaa !32
  br label %init_scroll_limits.exit

init_scroll_limits.exit:                          ; preds = %bb.aa, %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37
  tail call void @lv_obj_remove_state(ptr noundef %i.cn, i32 noundef 128) #6
  %i.co = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.n, i32 noundef 12, ptr noundef null) #6 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = and i8 %i.cq, 2
  %.not = icmp eq i8 %i.cr, 0
  br i1 %.not, label %bb.ac, label %bb.be

bb.ac:                                            ; preds = %init_scroll_limits.exit, %bb.c
  %.0 = phi ptr [ %i.n, %init_scroll_limits.exit ], [ %i.l, %bb.c ] ; 13 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ad
  %.069115 = phi i16 [ 0, %bb.ac ], [ %i.cv, %bb.ad ]
  %.070114 = phi i32 [ 256, %bb.ac ], [ %7, %bb.ad ]
  %.071113 = phi i32 [ 256, %bb.ac ], [ %i.db, %bb.ad ]
  %.072112 = phi ptr [ %.0, %bb.ac ], [ %i.dc, %bb.ad ] ; 4 uses
  %i.cs = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.072112, i32 noundef 0, i8 noundef zeroext -100) #6
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = add i16 %.069115, %i.cu                 ; 3 uses
  %i.cw = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.072112, i32 noundef 0, i8 noundef zeroext -104) #6
  %i.cx = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.072112, i32 noundef 0, i8 noundef zeroext -103) #6
  %sext116 = shl i32 %.070114, 16
  %sext117 = shl i32 %.071113, 16
  %i.cy = ptrtoint ptr %i.cx to i64
  %2 = ptrtoint ptr %i.cw to i64
  %.sroa.0.0.extract.trunc.i.i78 = trunc i64 %i.cy to i32
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %2 to i32
  %3 = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i78, i32 1)
  %i.cz = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 1)
  %i.da = ashr exact i32 %sext117, 16
  %4 = ashr exact i32 %sext116, 16
  %5 = mul nsw i32 %3, %i.da
  %6 = mul nsw i32 %i.cz, %4
  %7 = lshr i32 %6, 8                             ; 2 uses
  %i.db = lshr i32 %5, 8                          ; 2 uses
  %i.dc = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.072112) #6 ; 2 uses
  %.not75 = icmp eq ptr %i.dc, null
  br i1 %.not75, label %bb.ae, label %bb.ad, !llvm.loop !54

bb.ae:                                            ; preds = %bb.ad
  %i.dd = trunc i32 %7 to i16                     ; 2 uses
  %i.de = trunc i32 %i.db to i16                  ; 2 uses
  %i.df = icmp ne i16 %i.cv, 0
  %i.dg = icmp ne i16 %i.dd, 256
  %or.cond = select i1 %i.df, i1 true, i1 %i.dg
  %i.dh = icmp ne i16 %i.de, 256
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.dh
  br i1 %or.cond5, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.di = insertelement <2 x i16> poison, i16 %i.dd, i64 0
  %i.dj = insertelement <2 x i16> %i.di, i16 %i.de, i64 1
  %i.dk = tail call <2 x i16> @llvm.umax.v2i16(<2 x i16> %i.dj, <2 x i16> splat (i16 1))
  %i.dl = sub i16 0, %i.cv
  %i.dm = sext <2 x i16> %i.dk to <2 x i32>
  %i.dn = sdiv <2 x i32> splat (i32 65536), %i.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store i64 0, ptr %1, align 8
  %i.do = sext i16 %i.dl to i32
  %i.dp = shl <2 x i32> %i.dn, splat (i32 16)
  %i.dq = ashr exact <2 x i32> %i.dp, splat (i32 16) ; 2 uses
  %i.dr = extractelement <2 x i32> %i.dq, i64 0
  %i.ds = extractelement <2 x i32> %i.dq, i64 1
  call void @lv_point_transform(ptr noundef nonnull %i.e, i32 noundef %i.do, i32 noundef %i.dr, i32 noundef %i.ds, ptr noundef nonnull %1, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.du = load i16, ptr %i.dt, align 4
  %i.dv = and i16 %i.du, 15
  %i.dw = icmp eq i16 %i.dv, 3
  br i1 %i.dw, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  %i.dx = call i32 @lv_obj_get_scroll_right(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.dy = call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.dz = load i32, ptr %i.e, align 8, !tbaa !55  ; 11 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %elastic_diff.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0, i32 noundef 32) #6
  br i1 %i.eb, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = icmp sgt i32 %i.dz, 0
  %i.ed = select i1 %i.ec, i32 %i.dy, i32 %i.dx   ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %elastic_diff.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.ed, i32 %i.dz)
  br label %elastic_diff.exit

bb.al:                                            ; preds = %bb.ai
  %i.ef = call i32 @lv_obj_get_scroll_snap_x(ptr noundef nonnull %.0) #6
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.eh = or i32 %i.dy, %i.dx
  %or.cond.not.i = icmp sgt i32 %i.eh, -1
  br i1 %or.cond.not.i, label %elastic_diff.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = icmp slt i32 %i.dz, 0
  %i.ej = add nsw i32 %i.dz, -2
  %spec.select38.i = select i1 %i.ei, i32 %i.ej, i32 %i.dz ; 3 uses
  %i.ek = icmp sgt i32 %spec.select38.i, 0
  %i.el = add nuw nsw i32 %spec.select38.i, 2
  %.235.i = select i1 %i.ek, i32 %i.el, i32 %spec.select38.i
  %i.em = sdiv i32 %.235.i, 4
  br label %elastic_diff.exit

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call fastcc void @has_more_snap_points(ptr noundef nonnull %.0, i32 noundef 3, ptr noundef %i.c, ptr noundef %i.d)
  %i.en = load i8, ptr %i.c, align 1, !tbaa !39, !range !40, !noundef !41
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = load i8, ptr %i.d, align 1, !range !40
  %i.eq = trunc nuw i8 %i.ep to i1
  %or.cond3.i = select i1 %i.eo, i1 %i.eq, i1 false
  br i1 %or.cond3.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = icmp slt i32 %i.dz, 0
  %i.es = add nsw i32 %i.dz, -2
  %spec.select39.i = select i1 %i.er, i32 %i.es, i32 %i.dz ; 3 uses
  %i.et = icmp sgt i32 %spec.select39.i, 0
  %i.eu = add nuw nsw i32 %spec.select39.i, 2
  %.4.i = select i1 %i.et, i32 %i.eu, i32 %spec.select39.i
  %i.ev = sdiv i32 %.4.i, 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i = phi i32 [ %i.ev, %bb.ap ], [ %i.dz, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %elastic_diff.exit

bb.ar:                                            ; preds = %bb.ag
  %i.ew = call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.ex = call i32 @lv_obj_get_scroll_bottom(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !56 ; 11 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %elastic_diff.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fb = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0, i32 noundef 32) #6
  br i1 %i.fb, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fc = icmp sgt i32 %i.ez, 0
  %i.fd = select i1 %i.fc, i32 %i.ew, i32 %i.ex   ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 1
  br i1 %i.fe, label %elastic_diff.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %spec.select.i79 = call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.ez)
  br label %elastic_diff.exit

bb.av:                                            ; preds = %bb.as
  %i.ff = call i32 @lv_obj_get_scroll_snap_y(ptr noundef nonnull %.0) #6
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fh = or i32 %i.ex, %i.ew
  %or.cond.not.i85 = icmp sgt i32 %i.fh, -1
  br i1 %or.cond.not.i85, label %elastic_diff.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = icmp slt i32 %i.ez, 0
  %i.fj = add nsw i32 %i.ez, -2
  %spec.select38.i86 = select i1 %i.fi, i32 %i.fj, i32 %i.ez ; 3 uses
  %i.fk = icmp sgt i32 %spec.select38.i86, 0
  %i.fl = add nuw nsw i32 %spec.select38.i86, 2
  %.235.i87 = select i1 %i.fk, i32 %i.fl, i32 %spec.select38.i86
  %i.fm = sdiv i32 %.235.i87, 4
  br label %elastic_diff.exit

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call fastcc void @has_more_snap_points(ptr noundef nonnull %.0, i32 noundef 12, ptr noundef %i.a, ptr noundef %i.b)
  %i.fn = load i8, ptr %i.a, align 1, !tbaa !39, !range !40, !noundef !41
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = load i8, ptr %i.b, align 1, !range !40
  %i.fq = trunc nuw i8 %i.fp to i1
  %or.cond3.i81 = select i1 %i.fo, i1 %i.fq, i1 false
  br i1 %or.cond3.i81, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fr = icmp slt i32 %i.ez, 0
  %i.fs = add nsw i32 %i.ez, -2
  %spec.select39.i82 = select i1 %i.fr, i32 %i.fs, i32 %i.ez ; 3 uses
  %i.ft = icmp sgt i32 %spec.select39.i82, 0
  %i.fu = add nuw nsw i32 %spec.select39.i82, 2
  %.4.i83 = select i1 %i.ft, i32 %i.fu, i32 %spec.select39.i82
  %i.fv = sdiv i32 %.4.i83, 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i84 = phi i32 [ %i.fv, %bb.az ], [ %i.ez, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %elastic_diff.exit

elastic_diff.exit:                                ; preds = %bb.ba, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %.099 = phi i32 [ %.0.i, %bb.aq ], [ 0, %bb.ah ], [ %i.dz, %bb.am ], [ %spec.select.i, %bb.ak ], [ 0, %bb.aj ], [ %i.em, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ba ] ; 3 uses
  %.098 = phi i32 [ 0, %bb.aq ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.at ], [ %spec.select.i79, %bb.au ], [ %i.ez, %bb.aw ], [ %i.fm, %bb.ax ], [ %.0.i84, %bb.ba ] ; 3 uses
  %i.fw = call i32 @lv_obj_get_scroll_dir(ptr noundef nonnull %.0) #6 ; 4 uses
  %i.fx = and i32 %i.fw, 1
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = icmp sgt i32 %.099, 0
  %or.cond7 = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %or.cond7, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %elastic_diff.exit
  %i.ga = and i32 %i.fw, 2
  %i.gb = icmp eq i32 %i.ga, 0
  %i.gc = call i32 @llvm.smax.i32(i32 %.099, i32 0)
  %spec.select = select i1 %i.gb, i32 %i.gc, i32 %.099
  br label %.thread

.thread:                                          ; preds = %bb.bb, %elastic_diff.exit
  %.2101 = phi i32 [ 0, %elastic_diff.exit ], [ %spec.select, %bb.bb ]
  %i.gd = and i32 %i.fw, 4
  %i.ge = icmp eq i32 %i.gd, 0
  %i.gf = icmp sgt i32 %.098, 0
  %or.cond11 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond11, label %.thread106, label %bb.bc

bb.bc:                                            ; preds = %.thread
  %i.gg = and i32 %i.fw, 8
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = call i32 @llvm.smax.i32(i32 %.098, i32 0)
  %spec.select109 = select i1 %i.gh, i32 %i.gi, i32 %.098
end_hunk_0
