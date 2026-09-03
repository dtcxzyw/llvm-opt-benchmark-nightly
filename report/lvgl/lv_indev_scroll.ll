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
  %.070114 = phi i32 [ 256, %bb.ac ], [ %8, %bb.ad ]
  %.071113 = phi i32 [ 256, %bb.ac ], [ %i.cy, %bb.ad ]
  %.072112 = phi ptr [ %.0, %bb.ac ], [ %i.cz, %bb.ad ] ; 4 uses
  %i.cs = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.072112, i32 noundef 0, i8 noundef zeroext -100) #6
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = add i16 %.069115, %i.cu                 ; 3 uses
  %i.cw = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.072112, i32 noundef 0, i8 noundef zeroext -104) #6
  %2 = ptrtoint ptr %i.cw to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %2 to i32
  %3 = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 1)
  %4 = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %.072112, i32 noundef 0, i8 noundef zeroext -103) #6
  %i.cx = ptrtoint ptr %4 to i64
  %.sroa.0.0.extract.trunc.i.i78 = trunc i64 %i.cx to i32
  %5 = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i78, i32 1)
  %sext116 = shl i32 %.070114, 16
  %6 = ashr exact i32 %sext116, 16
  %7 = mul nsw i32 %3, %6
  %8 = lshr i32 %7, 8                             ; 2 uses
  %sext117 = shl i32 %.071113, 16
  %9 = ashr exact i32 %sext117, 16
  %10 = mul nsw i32 %5, %9
  %i.cy = lshr i32 %10, 8                         ; 2 uses
  %i.cz = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.072112) #6 ; 2 uses
  %.not75 = icmp eq ptr %i.cz, null
  br i1 %.not75, label %bb.ae, label %bb.ad, !llvm.loop !54

bb.ae:                                            ; preds = %bb.ad
  %i.da = trunc i32 %8 to i16                     ; 2 uses
  %i.db = trunc i32 %i.cy to i16                  ; 2 uses
  %i.dc = icmp ne i16 %i.cv, 0
  %i.dd = icmp ne i16 %i.da, 256
  %or.cond = select i1 %i.dc, i1 true, i1 %i.dd
  %i.de = icmp ne i16 %i.db, 256
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.de
  br i1 %or.cond5, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %spec.store.select14 = tail call i16 @llvm.umax.i16(i16 %i.db, i16 1)
  %11 = sext i16 %spec.store.select14 to i32
  %spec.store.select = tail call i16 @llvm.umax.i16(i16 %i.da, i16 1)
  %12 = sext i16 %spec.store.select to i32
  %i.df = sub i16 0, %i.cv
  %13 = sdiv i32 65536, %12
  %14 = sdiv i32 65536, %11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store i64 0, ptr %1, align 8
  %i.dg = sext i16 %i.df to i32
  %sext = shl i32 %13, 16
  %15 = ashr exact i32 %sext, 16
  %sext76 = shl i32 %14, 16
  %16 = ashr exact i32 %sext76, 16
  call void @lv_point_transform(ptr noundef nonnull %i.e, i32 noundef %i.dg, i32 noundef %15, i32 noundef %16, ptr noundef nonnull %1, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.di = load i16, ptr %i.dh, align 4
  %i.dj = and i16 %i.di, 15
  %i.dk = icmp eq i16 %i.dj, 3
  br i1 %i.dk, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  %i.dl = call i32 @lv_obj_get_scroll_right(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.dm = call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.dn = load i32, ptr %i.e, align 8, !tbaa !55  ; 11 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %elastic_diff.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dp = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0, i32 noundef 32) #6
  br i1 %i.dp, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = icmp sgt i32 %i.dn, 0
  %i.dr = select i1 %i.dq, i32 %i.dm, i32 %i.dl   ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 1
  br i1 %i.ds, label %elastic_diff.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.dr, i32 %i.dn)
  br label %elastic_diff.exit

bb.al:                                            ; preds = %bb.ai
  %i.dt = call i32 @lv_obj_get_scroll_snap_x(ptr noundef nonnull %.0) #6
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dv = or i32 %i.dm, %i.dl
  %or.cond.not.i = icmp sgt i32 %i.dv, -1
  br i1 %or.cond.not.i, label %elastic_diff.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dw = icmp slt i32 %i.dn, 0
  %i.dx = add nsw i32 %i.dn, -2
  %spec.select38.i = select i1 %i.dw, i32 %i.dx, i32 %i.dn ; 3 uses
  %i.dy = icmp sgt i32 %spec.select38.i, 0
  %i.dz = add nuw nsw i32 %spec.select38.i, 2
  %.235.i = select i1 %i.dy, i32 %i.dz, i32 %spec.select38.i
  %i.ea = sdiv i32 %.235.i, 4
  br label %elastic_diff.exit

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call fastcc void @has_more_snap_points(ptr noundef nonnull %.0, i32 noundef 3, ptr noundef %i.c, ptr noundef %i.d)
  %i.eb = load i8, ptr %i.c, align 1, !tbaa !39, !range !40, !noundef !41
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = load i8, ptr %i.d, align 1, !range !40
  %i.ee = trunc nuw i8 %i.ed to i1
  %or.cond3.i = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %or.cond3.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = icmp slt i32 %i.dn, 0
  %i.eg = add nsw i32 %i.dn, -2
  %spec.select39.i = select i1 %i.ef, i32 %i.eg, i32 %i.dn ; 3 uses
  %i.eh = icmp sgt i32 %spec.select39.i, 0
  %i.ei = add nuw nsw i32 %spec.select39.i, 2
  %.4.i = select i1 %i.eh, i32 %i.ei, i32 %spec.select39.i
  %i.ej = sdiv i32 %.4.i, 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i = phi i32 [ %i.ej, %bb.ap ], [ %i.dn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %elastic_diff.exit

bb.ar:                                            ; preds = %bb.ag
  %i.ek = call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.el = call i32 @lv_obj_get_scroll_bottom(ptr noundef nonnull %.0) #6 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.en = load i32, ptr %i.em, align 4, !tbaa !56 ; 11 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %elastic_diff.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ep = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0, i32 noundef 32) #6
  br i1 %i.ep, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eq = icmp sgt i32 %i.en, 0
  %i.er = select i1 %i.eq, i32 %i.ek, i32 %i.el   ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %elastic_diff.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %spec.select.i79 = call i32 @llvm.smin.i32(i32 %i.er, i32 %i.en)
  br label %elastic_diff.exit

bb.av:                                            ; preds = %bb.as
  %i.et = call i32 @lv_obj_get_scroll_snap_y(ptr noundef nonnull %.0) #6
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ev = or i32 %i.el, %i.ek
  %or.cond.not.i85 = icmp sgt i32 %i.ev, -1
  br i1 %or.cond.not.i85, label %elastic_diff.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ew = icmp slt i32 %i.en, 0
  %i.ex = add nsw i32 %i.en, -2
  %spec.select38.i86 = select i1 %i.ew, i32 %i.ex, i32 %i.en ; 3 uses
  %i.ey = icmp sgt i32 %spec.select38.i86, 0
  %i.ez = add nuw nsw i32 %spec.select38.i86, 2
  %.235.i87 = select i1 %i.ey, i32 %i.ez, i32 %spec.select38.i86
  %i.fa = sdiv i32 %.235.i87, 4
  br label %elastic_diff.exit

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call fastcc void @has_more_snap_points(ptr noundef nonnull %.0, i32 noundef 12, ptr noundef %i.a, ptr noundef %i.b)
  %i.fb = load i8, ptr %i.a, align 1, !tbaa !39, !range !40, !noundef !41
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i8, ptr %i.b, align 1, !range !40
  %i.fe = trunc nuw i8 %i.fd to i1
  %or.cond3.i81 = select i1 %i.fc, i1 %i.fe, i1 false
  br i1 %or.cond3.i81, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = icmp slt i32 %i.en, 0
  %i.fg = add nsw i32 %i.en, -2
  %spec.select39.i82 = select i1 %i.ff, i32 %i.fg, i32 %i.en ; 3 uses
  %i.fh = icmp sgt i32 %spec.select39.i82, 0
  %i.fi = add nuw nsw i32 %spec.select39.i82, 2
  %.4.i83 = select i1 %i.fh, i32 %i.fi, i32 %spec.select39.i82
  %i.fj = sdiv i32 %.4.i83, 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i84 = phi i32 [ %i.fj, %bb.az ], [ %i.en, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %elastic_diff.exit

elastic_diff.exit:                                ; preds = %bb.ba, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %.099 = phi i32 [ %.0.i, %bb.aq ], [ 0, %bb.ah ], [ %i.dn, %bb.am ], [ %spec.select.i, %bb.ak ], [ 0, %bb.aj ], [ %i.ea, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ba ] ; 3 uses
  %.098 = phi i32 [ 0, %bb.aq ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.at ], [ %spec.select.i79, %bb.au ], [ %i.en, %bb.aw ], [ %i.fa, %bb.ax ], [ %.0.i84, %bb.ba ] ; 3 uses
  %i.fk = call i32 @lv_obj_get_scroll_dir(ptr noundef nonnull %.0) #6 ; 4 uses
  %i.fl = and i32 %i.fk, 1
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = icmp sgt i32 %.099, 0
  %or.cond7 = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond7, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %elastic_diff.exit
  %i.fo = and i32 %i.fk, 2
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = call i32 @llvm.smax.i32(i32 %.099, i32 0)
  %spec.select = select i1 %i.fp, i32 %i.fq, i32 %.099
  br label %.thread

.thread:                                          ; preds = %bb.bb, %elastic_diff.exit
  %.2101 = phi i32 [ 0, %elastic_diff.exit ], [ %spec.select, %bb.bb ]
  %i.fr = and i32 %i.fk, 4
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = icmp sgt i32 %.098, 0
  %or.cond11 = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond11, label %.thread106, label %bb.bc

bb.bc:                                            ; preds = %.thread
  %i.fu = and i32 %i.fk, 8
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = call i32 @llvm.smax.i32(i32 %.098, i32 0)
  %spec.select109 = select i1 %i.fv, i32 %i.fw, i32 %.098
  br label %.thread106

.thread106:                                       ; preds = %bb.bc, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ %spec.select109, %bb.bc ]
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ga = load <2 x i32>, ptr %i.fx, align 4, !tbaa !42 ; 3 uses
  %i.gb = insertelement <2 x i32> poison, i32 %.2101, i64 0
  %i.gc = insertelement <2 x i32> %i.gb, i32 %.2, i64 1 ; 2 uses
  %i.gd = add nsw <2 x i32> %i.ga, %i.gc          ; 2 uses
  %i.ge = load <2 x i32>, ptr %i.fy, align 8, !tbaa !42 ; 3 uses
  %i.gf = icmp slt <2 x i32> %i.gd, %i.ge
  %i.gg = sub nsw <2 x i32> %i.ge, %i.ga
  %i.gh = select <2 x i1> %i.gf, <2 x i32> %i.gg, <2 x i32> %i.gc
  %i.gi = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gd, <2 x i32> %i.ge)
  %i.gj = load <2 x i32>, ptr %i.fz, align 8, !tbaa !42 ; 2 uses
  %i.gk = icmp sgt <2 x i32> %i.gi, %i.gj
  %i.gl = sub nsw <2 x i32> %i.gj, %i.ga
  %i.gm = select <2 x i1> %i.gk, <2 x i32> %i.gl, <2 x i32> %i.gh ; 3 uses
  %i.gn = extractelement <2 x i32> %i.gm, i64 0
  %i.go = extractelement <2 x i32> %i.gm, i64 1
  %i.gp = call i32 @lv_obj_scroll_by_raw(ptr noundef nonnull %.0, i32 noundef %i.gn, i32 noundef %i.go) #6 ; 0 uses
end_hunk_0
begin_hunk_1_@find_snap_point_x:bb.a
  %or.cond = or i1 %.not, %.not51
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = sub nsw i32 %i.ak, %.0                  ; 2 uses
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = tail call i32 @llvm.abs.i32(i32 %.04653, i1 true)
  %i.ao = icmp samesign ult i32 %i.am, %i.an
  %spec.select = select i1 %i.ao, i32 %i.al, i32 %.04653
  %i.ap = freeze i32 %spec.select
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.d, %bb.c
  %.5 = phi i32 [ %.04653, %bb.d ], [ %.04653, %bb.c ], [ %.04653, %bb.e ], [ %i.ap, %bb.j ], [ %.04653, %bb.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.k
  %i.aq = icmp eq i32 %.5, 536870911
  %i.ar = sub nsw i32 0, %.5
  br i1 %i.aq, label %._crit_edge.thread, label %bb.l

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.a
  %.048 = phi i32 [ 536870911, %bb.a ], [ 536870911, %._crit_edge.thread ], [ %i.ar, %._crit_edge ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define void @lv_indev_scroll_get_snap_dist(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = tail call fastcc i32 @find_snap_point_x(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.d, i32 noundef 0)
  store i32 %i.e, ptr %1, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = tail call fastcc i32 @find_snap_point_y(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.i, i32 noundef 0)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @has_more_snap_points(ptr noundef nonnull %0, i32 noundef range(i32 3, 13) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %3) unnamed_addr #0 {
bb.a:
  store i8 1, ptr %2, align 1, !tbaa !39
  store i8 1, ptr %3, align 1, !tbaa !39
  %i.a = icmp eq i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lv_obj_get_scroll_snap_x(ptr noundef nonnull %0) #6
  switch i32 %i.b, label %bb.f [
    i32 3, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #6
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.d to i32 ; 2 uses
  %i.e = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #6
  %i.f = ptrtoint ptr %i.e to i64
  %.sroa.0.0.extract.trunc.i50 = trunc i64 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = tail call i32 @lv_area_get_width(ptr noundef nonnull %i.g) #6
  %i.j = add i32 %.sroa.0.0.extract.trunc.i50, %.sroa.0.0.extract.trunc.i
  %i.k = sub i32 %i.i, %i.j
  %i.l = sdiv i32 %i.k, 2
  %i.m = add i32 %i.h, %.sroa.0.0.extract.trunc.i
  %i.n = add i32 %i.m, %i.l
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  %i.q = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #6
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i51 = trunc i64 %i.r to i32
  %i.s = add nsw i32 %i.p, %.sroa.0.0.extract.trunc.i51
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !36
  %i.v = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #6
  %i.w = ptrtoint ptr %i.v to i64
  %.sroa.0.0.extract.trunc.i52 = trunc i64 %i.w to i32
  %i.x = sub nsw i32 %i.u, %.sroa.0.0.extract.trunc.i52
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = add nsw i32 %.0, 1
  %i.z = tail call fastcc i32 @find_snap_point_x(ptr noundef nonnull %0, i32 noundef %i.y, i32 noundef 536870911, i32 noundef 0)
  %i.aa = icmp eq i32 %i.z, 536870911
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %3, align 1, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = add nsw i32 %.0, -1
  %i.ac = tail call fastcc i32 @find_snap_point_x(ptr noundef nonnull %0, i32 noundef -536870911, i32 noundef %i.ab, i32 noundef 0)
  %i.ad = icmp eq i32 %i.ac, 536870911
  br i1 %i.ad, label %.sink.split, label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.ae = tail call i32 @lv_obj_get_scroll_snap_y(ptr noundef nonnull %0) #6
  switch i32 %i.ae, label %bb.m [
    i32 3, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #6
  %i.ag = ptrtoint ptr %i.af to i64
  %.sroa.0.0.extract.trunc.i53 = trunc i64 %i.ag to i32 ; 2 uses
  %i.ah = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 25) #6
  %i.ai = ptrtoint ptr %i.ah to i64
  %.sroa.0.0.extract.trunc.i54 = trunc i64 %i.ai to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29
  %i.am = tail call i32 @lv_area_get_height(ptr noundef nonnull %i.aj) #6
  %i.an = add i32 %.sroa.0.0.extract.trunc.i54, %.sroa.0.0.extract.trunc.i53
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = sdiv i32 %i.ao, 2
  %i.aq = add i32 %i.al, %.sroa.0.0.extract.trunc.i53
  %i.ar = add i32 %i.aq, %i.ap
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !29
  %i.au = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #6
  %i.av = ptrtoint ptr %i.au to i64
  %.sroa.0.0.extract.trunc.i55 = trunc i64 %i.av to i32
  %i.aw = add nsw i32 %i.at, %.sroa.0.0.extract.trunc.i55
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !31
  %i.az = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 25) #6
  %i.ba = ptrtoint ptr %i.az to i64
  %.sroa.0.0.extract.trunc.i56 = trunc i64 %i.ba to i32
  %i.bb = sub nsw i32 %i.ay, %.sroa.0.0.extract.trunc.i56
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.j
  %.049 = phi i32 [ 0, %bb.i ], [ %i.ar, %bb.j ], [ %i.aw, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bc = add nsw i32 %.049, 1
  %i.bd = tail call fastcc i32 @find_snap_point_y(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef 536870911, i32 noundef 0)
  %i.be = icmp eq i32 %i.bd, 536870911
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %3, align 1, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = add nsw i32 %.049, -1
  %i.bg = tail call fastcc i32 @find_snap_point_y(ptr noundef nonnull %0, i32 noundef -536870911, i32 noundef %i.bf, i32 noundef 0)
  %i.bh = icmp eq i32 %i.bg, 536870911
  br i1 %i.bh, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.h
  store i8 0, ptr %2, align 1, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o, %bb.h
  ret void
}

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_child_count(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_has_flag_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !38}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13_lv_display_t", !9, i64 0}
!11 = !{!"p1 _ZTS11_lv_timer_t", !9, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"", !6, i64 0, !6, i64 4}
!14 = !{!"p1 _ZTS9_lv_obj_t", !9, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!16 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !5, i64 32, !5, i64 96, !5, i64 128, !13, i64 132, !13, i64 140, !13, i64 148, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !15, i64 192, !13, i64 208, !6, i64 216, !5, i64 220, !13, i64 224, !6, i64 232, !5, i64 236, !5, i64 236, !5, i64 237, !5, i64 237, !5, i64 237}
!17 = !{!"p1 _ZTS11_lv_group_t", !9, i64 0}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"_Bool", !5, i64 0}
!20 = !{!"_lv_array_t", !18, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !19, i64 20}
!21 = !{!"", !20, i64 0, !5, i64 24, !5, i64 24}
!22 = !{!"p1 _ZTS10_lv_anim_t", !9, i64 0}
!23 = !{!"_lv_indev_t", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 28, !5, i64 28, !5, i64 28, !5, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !9, i64 48, !9, i64 56, !10, i64 64, !11, i64 72, !5, i64 80, !5, i64 81, !5, i64 82, !5, i64 83, !12, i64 84, !12, i64 86, !6, i64 88, !16, i64 96, !13, i64 336, !14, i64 344, !17, i64 352, !9, i64 360, !21, i64 368, !22, i64 400, !9, i64 408}
!24 = !{!23, !14, i64 264}
!25 = !{!"p1 _ZTS15_lv_obj_class_t", !9, i64 0}
!26 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !9, i64 0}
!27 = !{!"p1 _ZTS15_lv_obj_style_t", !9, i64 0}
!28 = !{!"_lv_obj_t", !25, i64 0, !14, i64 8, !26, i64 16, !27, i64 24, !9, i64 32, !15, i64 40, !6, i64 56, !12, i64 60, !12, i64 62, !12, i64 62, !12, i64 62, !12, i64 62, !12, i64 62, !12, i64 63, !12, i64 63, !12, i64 63, !12, i64 63, !12, i64 63, !12, i64 63, !12, i64 64}
!29 = !{!28, !6, i64 44}
!30 = !{!23, !6, i64 292}
!31 = !{!28, !6, i64 52}
!32 = !{!23, !6, i64 300}
!33 = !{!28, !6, i64 40}
!34 = !{!23, !6, i64 288}
!35 = !{!23, !6, i64 296}
!36 = !{!28, !6, i64 48}
!37 = !{!23, !14, i64 256}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!19, !19, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!6, !6, i64 0}
!43 = !{!13, !6, i64 0}
!44 = !{!13, !6, i64 4}
!45 = !{!23, !6, i64 228}
!46 = !{!23, !6, i64 232}
!47 = !{!23, !5, i64 81}
!48 = !{!28, !26, i64 16}
!49 = !{!"any p2 pointer", !9, i64 0}
!50 = !{!"p2 _ZTS9_lv_obj_t", !49, i64 0}
!51 = !{!"_lv_obj_spec_attr_t", !50, i64 0, !17, i64 8, !21, i64 16, !13, i64 48, !6, i64 56, !6, i64 60, !12, i64 64, !12, i64 66, !12, i64 66, !12, i64 66, !12, i64 66, !12, i64 67, !12, i64 67}
!52 = !{!51, !50, i64 0}
!53 = !{!14, !14, i64 0}
!54 = distinct !{!54, !38}
!55 = !{!23, !6, i64 120}
!56 = !{!23, !6, i64 124}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38}
!59 = !{!23, !5, i64 80}
!60 = !{!23, !6, i64 240}
!61 = !{!23, !6, i64 236}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !38}
end_hunk_1
