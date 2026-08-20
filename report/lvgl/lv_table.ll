inline.NumInlined: 52
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_table_get_cell_user_data:bb.a

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %i.p, %bb.e ], [ null, %bb.d ]
  ret ptr %.1
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare ptr @lv_indev_active() local_unnamed_addr #2

declare ptr @lv_indev_get_scroll_obj(ptr noundef) local_unnamed_addr #2

declare i32 @lv_indev_get_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_main(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_area_t, align 4          ; 8 uses
  %2 = alloca %struct.lv_point_t, align 4         ; 5 uses
  %3 = alloca %struct.lv_area_t, align 16         ; 13 uses
  %4 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 8 uses
  %5 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 9 uses
  %6 = alloca %struct.lv_draw_label_dsc_t, align 8 ; 7 uses
  %7 = alloca %struct.lv_draw_label_dsc_t, align 8 ; 12 uses
  %8 = alloca %struct.lv_area_t, align 4          ; 8 uses
  %9 = alloca %struct.lv_text_attributes_t, align 8 ; 8 uses
  %10 = alloca %struct.lv_area_t, align 16        ; 7 uses
  %11 = alloca %struct.lv_area_t, align 4         ; 4 uses
  %i.a = tail call ptr @lv_event_get_current_target(ptr noundef %0) #8 ; 29 uses
  %i.b = tail call ptr @lv_event_get_layer(ptr noundef %0) #8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 6 uses
  %i.e = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  br i1 %i.e, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.f = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.g = ptrtoint ptr %i.f to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.g to i32 ; 3 uses
  %i.h = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.i = ptrtoint ptr %i.h to i64
  %.sroa.0.0.extract.trunc.i174 = trunc i64 %i.i to i32 ; 2 uses
  %i.j = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 0, i8 noundef zeroext 25) #8
  %i.k = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.l = ptrtoint ptr %i.k to i64
  %.sroa.0.0.extract.trunc.i176 = trunc i64 %i.l to i32 ; 2 uses
  %i.m = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 6 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !61   ; 2 uses
  store i16 0, ptr %i.n, align 4, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 62 ; 8 uses
  %i.q = load i32, ptr %i.p, align 2
  %i.r = or i32 %i.q, 8
  store i32 %i.r, ptr %i.p, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %4) #8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.b, ptr %i.s, align 8, !tbaa !62
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %6) #8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.b, ptr %i.t, align 8, !tbaa !69
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %6) #8
  store i16 %i.o, ptr %i.n, align 4, !tbaa !61
  %i.u = load i32, ptr %i.p, align 2
  %i.v = and i32 %i.u, -9
  store i32 %i.v, ptr %i.p, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !44
  %i.y = call i32 @lv_obj_get_scroll_y(ptr noundef nonnull %i.a) #8
  %i.z = xor i32 %i.y, -1
  %i.aa = add i32 %.sroa.0.0.extract.trunc.i174, %.sroa.0.0.extract.trunc.i
  %i.ab = add i32 %i.aa, %i.x
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !59
  store i32 0, ptr %3, align 16, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !57
  %i.af = call i32 @lv_obj_get_scroll_x(ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.ag = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 0, i8 noundef zeroext -127) #8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %.not226 = icmp eq i32 %i.am, 0
  br i1 %.not226, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.b
  %i.an = ptrtoint ptr %i.m to i64
  %.sroa.0.0.extract.trunc.i177 = trunc i64 %i.an to i32
  %i.ao = ptrtoint ptr %i.j to i64
  %.sroa.0.0.extract.trunc.i175 = trunc i64 %i.ao to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ar = xor i32 %i.af, -1
  %i.as = add i32 %.sroa.0.0.extract.trunc.i176, %.sroa.0.0.extract.trunc.i
  %i.at = add i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.av = xor i32 %.sroa.0.0.extract.trunc.i177, -1 ; 2 uses
  %i.aw = add i32 %i.af, %.sroa.0.0.extract.trunc.i
  %i.ax = sub i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 172 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bi = xor i32 %.sroa.0.0.extract.trunc.i175, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 142 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph223, %._crit_edge218
  %i.cb = phi i32 [ %i.am, %.lr.ph223 ], [ %i.in, %._crit_edge218 ]
  %indvars.iv238 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next239, %._crit_edge218 ] ; 4 uses
  %.0143221 = phi i32 [ 0, %.lr.ph223 ], [ %.1144.lcssa, %._crit_edge218 ] ; 2 uses
  %i.cc = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv238
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !24 ; 2 uses
  %i.cf = load i32, ptr %i.ad, align 4, !tbaa !59 ; 3 uses
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ap, align 4, !tbaa !58
  %i.ch = add i32 %i.cf, %i.ce
  store i32 %i.ch, ptr %i.ad, align 4, !tbaa !59
  %i.ci = load i32, ptr %i.aq, align 4, !tbaa !59
  %.not = icmp slt i32 %i.cf, %i.ci
  br i1 %.not, label %bb.d, label %._crit_edge224

bb.d:                                             ; preds = %bb.c
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !41
  %i.ck = add i32 %i.ax, %i.cj
  store i32 %i.ck, ptr %3, align 16, !tbaa !56
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !42
  %i.cm = add i32 %i.at, %i.cl
  store i32 %i.cm, ptr %i.ae, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cn = load i32, ptr %i.ay, align 8, !tbaa !8  ; 2 uses
  %.not227 = icmp eq i32 %i.cn, 0
  br i1 %.not227, label %._crit_edge218, label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.g
  %i.co = sdiv i32 %i.ce, 2
  %i.cp = trunc nuw i64 %indvars.iv238 to i32     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph217, %bb.am
  %i.cq = phi i32 [ %i.cn, %.lr.ph217 ], [ %i.ik, %bb.am ] ; 2 uses
  %.1144214 = phi i32 [ %.0143221, %.lr.ph217 ], [ %.2145, %bb.am ] ; 4 uses
  %.0148211 = phi i32 [ 0, %.lr.ph217 ], [ %i.il, %bb.am ] ; 11 uses
  %i.cr = load ptr, ptr %i.az, align 8, !tbaa !25 ; 3 uses
  %i.cs = zext i32 %.1144214 to i64               ; 5 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %.not159 = icmp eq ptr %i.cu, null
  br i1 %.not159, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !46
  %i.cw = and i32 %i.cv, 2
  %i.cx = icmp eq i32 %i.cw, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0142 = phi i1 [ %i.cx, %bb.i ], [ true, %bb.h ]
  %i.cy = zext i32 %.0148211 to i64               ; 2 uses
  %i.cz = add i32 %i.cq, -1                       ; 5 uses
  %i.da = icmp ult i32 %.0148211, %i.cz           ; 2 uses
  br i1 %i.aj, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.db = load i32, ptr %3, align 16, !tbaa !56   ; 2 uses
  %i.dc = add nsw i32 %i.db, -1                   ; 5 uses
  store i32 %i.dc, ptr %i.ae, align 8, !tbaa !57
  %i.dd = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cy
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24
  %i.dg = sub i32 %i.db, %i.df                    ; 3 uses
  store i32 %i.dg, ptr %3, align 16, !tbaa !56
  br i1 %i.da, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.j
  %i.dh = load i32, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.di = add nsw i32 %i.dh, 1                    ; 5 uses
  store i32 %i.di, ptr %3, align 16, !tbaa !56
  %i.dj = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cy
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !24
  %i.dm = add i32 %i.dl, %i.dh                    ; 3 uses
  store i32 %i.dm, ptr %i.ae, align 8, !tbaa !57
  br i1 %i.da, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.dn = zext i32 %.0148211 to i64
  %i.do = sub nuw i32 %i.cz, %.0148211            ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.k
  %i.dp = zext i32 %.0148211 to i64
  %i.dq = sub nuw i32 %i.cz, %.0148211            ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.m
  %indvars.iv233 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next234, %bb.m ] ; 3 uses
  %i.dr = phi i32 [ %i.dg, %.lr.ph.split.us.preheader ], [ %i.ed, %bb.m ] ; 3 uses
  %12 = add nuw nsw i64 %indvars.iv233, %i.dp     ; 3 uses
  %i.ds = trunc nuw i64 %indvars.iv233 to i32     ; 3 uses
  %i.dt = add i32 %.1144214, %i.ds
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !26 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %._crit_edge.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.dy = load i32, ptr %i.dw, align 8, !tbaa !46
  %i.dz = and i32 %i.dy, 1
  %.not160.us = icmp eq i32 %i.dz, 0
  br i1 %.not160.us, label %._crit_edge.loopexit.split.loop.exit280, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24
  %i.ed = sub nsw i32 %i.dr, %i.ec                ; 3 uses
  store i32 %i.ed, ptr %3, align 16, !tbaa !56
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %lftr.wideiv236 = trunc i64 %indvars.iv.next234 to i32
  %exitcond237.not = icmp eq i32 %i.dq, %lftr.wideiv236
  br i1 %exitcond237.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !74

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.ee = phi i32 [ %i.dm, %.lr.ph.split.preheader ], [ %i.eq, %bb.o ] ; 3 uses
  %13 = add nuw nsw i64 %indvars.iv, %i.dn        ; 3 uses
  %i.ef = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.eg = add i32 %.1144214, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !26 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %._crit_edge.loopexit266.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  %i.el = load i32, ptr %i.ej, align 8, !tbaa !46
  %i.em = and i32 %i.el, 1
  %.not160 = icmp eq i32 %i.em, 0
  br i1 %.not160, label %._crit_edge.loopexit266.split.loop.exit270, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %13
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !24
  %i.eq = add nsw i32 %i.ee, %i.ep                ; 3 uses
  store i32 %i.eq, ptr %i.ae, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.do, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !74

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph.split.us
  %14 = trunc nuw i64 %12 to i32
  br label %._crit_edge

._crit_edge.loopexit.split.loop.exit280:          ; preds = %bb.l
  %15 = trunc nuw i64 %12 to i32
  br label %._crit_edge

._crit_edge.loopexit266.split.loop.exit:          ; preds = %.lr.ph.split
  %16 = trunc nuw i64 %13 to i32
  br label %._crit_edge

._crit_edge.loopexit266.split.loop.exit270:       ; preds = %bb.n
  %17 = trunc nuw i64 %13 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %bb.m, %._crit_edge.loopexit266.split.loop.exit, %._crit_edge.loopexit266.split.loop.exit270, %._crit_edge.loopexit.split.loop.exit, %._crit_edge.loopexit.split.loop.exit280, %.thread, %bb.k
  %i.er = phi i32 [ %i.dc, %bb.k ], [ %i.dm, %.thread ], [ %i.dc, %._crit_edge.loopexit.split.loop.exit ], [ %i.dc, %bb.m ], [ %i.dc, %._crit_edge.loopexit.split.loop.exit280 ], [ %i.ee, %._crit_edge.loopexit266.split.loop.exit270 ], [ %i.ee, %._crit_edge.loopexit266.split.loop.exit ], [ %i.eq, %bb.o ] ; 3 uses
  %i.es = phi i32 [ %i.dg, %bb.k ], [ %i.di, %.thread ], [ %i.dr, %._crit_edge.loopexit.split.loop.exit ], [ %i.ed, %bb.m ], [ %i.dr, %._crit_edge.loopexit.split.loop.exit280 ], [ %i.di, %._crit_edge.loopexit266.split.loop.exit270 ], [ %i.di, %._crit_edge.loopexit266.split.loop.exit ], [ %i.di, %bb.o ] ; 3 uses
  %.0141.lcssa = phi i32 [ 0, %bb.k ], [ 0, %.thread ], [ %i.ds, %._crit_edge.loopexit.split.loop.exit ], [ %i.dq, %bb.m ], [ %i.ds, %._crit_edge.loopexit.split.loop.exit280 ], [ %i.ef, %._crit_edge.loopexit266.split.loop.exit270 ], [ %i.ef, %._crit_edge.loopexit266.split.loop.exit ], [ %i.do, %bb.o ]
  %.lcssa = phi i32 [ %.0148211, %bb.k ], [ %.0148211, %.thread ], [ %14, %._crit_edge.loopexit.split.loop.exit ], [ %i.cz, %bb.m ], [ %15, %._crit_edge.loopexit.split.loop.exit280 ], [ %17, %._crit_edge.loopexit266.split.loop.exit270 ], [ %16, %._crit_edge.loopexit266.split.loop.exit ], [ %i.cz, %bb.o ]
  %i.et = load i32, ptr %i.ad, align 4, !tbaa !59 ; 4 uses
  %i.eu = load i32, ptr %i.bb, align 4, !tbaa !58
  %i.ev = icmp slt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.am, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 %i.es, ptr %8, align 4, !tbaa !56
  %i.ew = load i32, ptr %i.ap, align 4, !tbaa !58 ; 3 uses
  store i32 %i.ew, ptr %i.bc, align 4, !tbaa !58
  store i32 %i.er, ptr %i.bd, align 4, !tbaa !57
  store i32 %i.et, ptr %i.be, align 4, !tbaa !59
  %i.ex = load i8, ptr %i.bf, align 8             ; 4 uses
  %i.ey = and i8 %i.ex, 4
  %.not161 = icmp eq i8 %i.ey, 0
  br i1 %.not161, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ez = load i32, ptr %i.c, align 8, !tbaa !42
  %i.fa = add nsw i32 %i.ez, %.sroa.0.0.extract.trunc.i176
  %i.fb = icmp sgt i32 %i.es, %i.fa
  br i1 %i.fb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fc = load i32, ptr %i.bg, align 4, !tbaa !75
  %.neg = sdiv i32 %i.fc, -2
  %i.fd = add i32 %.neg, %i.es
  store i32 %i.fd, ptr %8, align 4, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.fe = and i8 %i.ex, 2
  %.not162 = icmp eq i8 %i.fe, 0
  br i1 %.not162, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ff = load i32, ptr %i.w, align 4, !tbaa !44
  %i.fg = add nsw i32 %i.ff, %.sroa.0.0.extract.trunc.i174
  %i.fh = icmp sgt i32 %i.ew, %i.fg
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fi = load i32, ptr %i.bg, align 4, !tbaa !75
  %.neg163 = sdiv i32 %i.fi, -2
  %i.fj = add i32 %.neg163, %i.ew
  store i32 %i.fj, ptr %i.bc, align 4, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.fk = and i8 %i.ex, 8
  %.not164 = icmp eq i8 %i.fk, 0
  br i1 %.not164, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = load i32, ptr %i.au, align 8, !tbaa !41
  %i.fm = add i32 %i.fl, %i.av
  %i.fn = icmp slt i32 %i.er, %i.fm
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = load i32, ptr %i.bg, align 4, !tbaa !75 ; 2 uses
  %i.fp = sdiv i32 %i.fo, 2
  %i.fq = and i32 %i.fo, 1
  %i.fr = add nsw i32 %i.fq, %i.er
  %i.fs = add i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.bd, align 4, !tbaa !57
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.ft = and i8 %i.ex, 1
  %.not165 = icmp eq i8 %i.ft, 0
  br i1 %.not165, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = load i32, ptr %i.bh, align 4, !tbaa !76
  %i.fv = add i32 %i.fu, %i.bi
  %i.fw = icmp slt i32 %i.et, %i.fv
  br i1 %i.fw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fx = load i32, ptr %i.bg, align 4, !tbaa !75 ; 2 uses
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = and i32 %i.fx, 1
  %i.ga = add nsw i32 %i.fz, %i.et
  %i.gb = add i32 %i.ga, %i.fy
  store i32 %i.gb, ptr %i.be, align 4, !tbaa !59
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.gc = load i32, ptr %i.bj, align 4, !tbaa !28
  %i.gd = zext i32 %i.gc to i64
  %i.ge = icmp eq i64 %indvars.iv238, %i.gd
  br i1 %i.ge, label %bb.ac, label %.thread185

bb.ac:                                            ; preds = %bb.ab
  %i.gf = load i32, ptr %i.bk, align 8, !tbaa !29
  %i.gg = icmp eq i32 %.0148211, %i.gf
  br i1 %i.gg, label %bb.ad, label %.thread185

bb.ad:                                            ; preds = %bb.ac
  %i.gh = load i16, ptr %i.n, align 4, !tbaa !61  ; 3 uses
  %i.gi = and i16 %i.gh, 384
  %or.cond.not = icmp eq i16 %i.gi, 128
  %.0 = select i1 %or.cond.not, i32 128, i32 0
  %.1228 = and i16 %i.gh, 24
  %.1 = zext nneg i16 %.1228 to i32
  %.2 = or disjoint i32 %.0, %.1                  ; 3 uses
  %i.gj = and i16 %i.gh, 32
  %.not170 = icmp eq i16 %i.gj, 0
  %i.gk = or disjoint i32 %.2, 32
  br i1 %.not170, label %bb.ae, label %.thread187

bb.ae:                                            ; preds = %bb.ad
  %i.gl = icmp eq i32 %.2, 0
  br i1 %i.gl, label %.thread185, label %.thread187

.thread185:                                       ; preds = %bb.ac, %bb.ab, %bb.ae
  %i.gm = call ptr @lv_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 208) #8 ; 0 uses
  %i.gn = call ptr @lv_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %6, i64 noundef 160) #8 ; 0 uses
  br label %bb.af

.thread187:                                       ; preds = %bb.ad, %bb.ae
  %.3189 = phi i32 [ %.2, %bb.ae ], [ %i.gk, %bb.ad ]
  %i.go = trunc nuw nsw i32 %.3189 to i16
  store i16 %i.go, ptr %i.n, align 4, !tbaa !61
  %i.gp = load i32, ptr %i.p, align 2
  %i.gq = or i32 %i.gp, 8
  store i32 %i.gq, ptr %i.p, align 2
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %5) #8
  store ptr %i.b, ptr %i.bl, align 8, !tbaa !62
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %7) #8
  store ptr %i.b, ptr %i.bm, align 8, !tbaa !69
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %5) #8
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %7) #8
  store i16 %i.o, ptr %i.n, align 4, !tbaa !61
  %i.gr = load i32, ptr %i.p, align 2
  %i.gs = and i32 %i.gr, -9
  store i32 %i.gs, ptr %i.p, align 2
  br label %bb.af

bb.af:                                            ; preds = %.thread187, %.thread185
  store i32 %i.cp, ptr %i.bn, align 4, !tbaa !77
  store i32 %.0148211, ptr %i.bo, align 8, !tbaa !78
  store i32 %i.cp, ptr %i.bp, align 4, !tbaa !79
  store i32 %.0148211, ptr %i.bq, align 8, !tbaa !80
  call void @lv_draw_rect(ptr noundef %i.b, ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  %i.gt = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.cs
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !26
  %.not171 = icmp eq ptr %i.gv, null
  br i1 %.not171, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gw = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 327680, i8 noundef zeroext 26) #8
  %i.gx = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 327680, i8 noundef zeroext 27) #8
  %i.gy = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 327680, i8 noundef zeroext 24) #8
  %i.gz = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.a, i32 noundef 327680, i8 noundef zeroext 25) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  store i64 0, ptr %i.ca, align 8
  %i.ha = load <2 x i32>, ptr %i.bs, align 4, !tbaa !24
  %i.hb = shufflevector <2 x i32> %i.ha, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.hb, ptr %9, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.hc = insertelement <4 x ptr> poison, ptr %i.gw, i64 0
  %i.hd = insertelement <4 x ptr> %i.hc, ptr %i.gy, i64 1
  %i.he = insertelement <4 x ptr> %i.hd, ptr %i.gx, i64 2
  %i.hf = insertelement <4 x ptr> %i.he, ptr %i.gz, i64 3
  %i.hg = ptrtoint <4 x ptr> %i.hf to <4 x i64>
  %i.hh = trunc <4 x i64> %i.hg to <4 x i32>      ; 2 uses
  %i.hi = load <4 x i32>, ptr %3, align 16, !tbaa !24 ; 2 uses
  %i.hj = add nsw <4 x i32> %i.hi, %i.hh
  %i.hk = sub nsw <4 x i32> %i.hi, %i.hh
  %i.hl = shufflevector <4 x i32> %i.hj, <4 x i32> %i.hk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.hl, ptr %10, align 16, !tbaa !24
  %i.hm = call i32 @lv_area_get_width(ptr noundef nonnull %10) #8
  store i32 %i.hm, ptr %i.bv, align 8, !tbaa !57
  br i1 %.0142, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.br, align 4, !tbaa !59
  %i.hn = load i16, ptr %i.bw, align 2
  %i.ho = or i16 %i.hn, 8
  store i16 %i.ho, ptr %i.bw, align 2
  %i.hp = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.cs
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !26
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.bx, align 8, !tbaa !81
  call void @lv_text_get_size_attributes(ptr noundef nonnull %2, ptr noundef nonnull %i.hs, ptr noundef %i.ht, ptr noundef nonnull %9) #8
  br label %bb.ai

.critedge:                                        ; preds = %bb.ag
  %i.hu = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.cs
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !26
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.bx, align 8, !tbaa !81
  call void @lv_text_get_size_attributes(ptr noundef nonnull %2, ptr noundef nonnull %i.hx, ptr noundef %i.hy, ptr noundef nonnull %9) #8
  %i.hz = load i32, ptr %i.ap, align 4, !tbaa !58
  %i.ia = add nsw i32 %i.hz, %i.co                ; 2 uses
  %i.ib = load i32, ptr %i.by, align 4, !tbaa !40 ; 2 uses
  %.neg173 = sdiv i32 %i.ib, -2
  %i.ic = add i32 %.neg173, %i.ia
  store i32 %i.ic, ptr %i.bt, align 4, !tbaa !58
  %i.id = sdiv i32 %i.ib, 2
  %i.ie = add nsw i32 %i.id, %i.ia
  store i32 %i.ie, ptr %i.bu, align 4, !tbaa !59
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.if = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %1, ptr noundef nonnull %3) #8
  br i1 %i.if, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !60
  %i.ig = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.cs
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !26
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store ptr %i.ij, ptr %i.bz, align 8, !tbaa !82
  call void @lv_draw_label(ptr noundef %i.b, ptr noundef nonnull %7, ptr noundef nonnull %10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !60
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.pre = load i32, ptr %i.ay, align 8, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.al
  %i.ik = phi i32 [ %i.cq, %._crit_edge ], [ %.pre, %bb.al ] ; 2 uses
  %.pn = add i32 %.1144214, 1
  %.2145 = add i32 %.pn, %.0141.lcssa             ; 2 uses
  %i.il = add i32 %.lcssa, 1                      ; 2 uses
  %i.im = icmp ult i32 %i.il, %i.ik
  br i1 %i.im, label %bb.h, label %._crit_edge218.loopexit, !llvm.loop !83

._crit_edge218.loopexit:                          ; preds = %bb.am
  %.pre243 = load i32, ptr %i.al, align 4, !tbaa !21
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %._crit_edge218.loopexit, %bb.g
  %i.in = phi i32 [ %i.cb, %bb.g ], [ %.pre243, %._crit_edge218.loopexit ] ; 2 uses
  %.1144.lcssa = phi i32 [ %.0143221, %bb.g ], [ %.2145, %._crit_edge218.loopexit ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.io = zext i32 %i.in to i64
  %i.ip = icmp samesign ult i64 %indvars.iv.next239, %i.io
  br i1 %i.ip, label %bb.c, label %._crit_edge224, !llvm.loop !84

._crit_edge224:                                   ; preds = %._crit_edge218, %bb.c, %bb.b
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %._crit_edge224
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

declare void @lv_indev_get_point(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_x(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_y(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @lv_draw_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_rect_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_label_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size_attributes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_row_height(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.lv_text_attributes_t, align 4 ; 8 uses
  %10 = alloca %struct.lv_point_t, align 4        ; 4 uses
  %i.a = tail call i32 @lv_font_get_line_height(ptr noundef %2) #8
  %i.b = add i32 %8, %7                           ; 4 uses
  %i.c = add i32 %i.b, %i.a                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = mul i32 %i.e, %1                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.g, align 4
  store i32 %3, ptr %9, align 4, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %4, ptr %i.h, align 4, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !59
  %i.j = add i32 %i.e, %i.f
  %i.k = icmp ult i32 %i.f, %i.j
  br i1 %i.k, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.o = add i32 %6, %5
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %bb.i
  %i.q = phi i32 [ %i.e, %.lr.ph84 ], [ %i.bg, %bb.i ]
  %.05983 = phi i32 [ 0, %.lr.ph84 ], [ %i.bf, %bb.i ] ; 7 uses
  %.06182 = phi i32 [ %i.f, %.lr.ph84 ], [ %i.be, %bb.i ] ; 6 uses
  %.06481 = phi i32 [ %i.c, %.lr.ph84 ], [ %.266, %bb.i ] ; 4 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.s = zext i32 %.06182 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.x = zext i32 %.05983 to i64                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24   ; 3 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !57
  %i.aa = add i32 %i.q, -1                        ; 3 uses
  %i.ab = icmp ult i32 %.05983, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ac = sub nuw i32 %i.aa, %.05983              ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ad = phi i32 [ %i.z, %.lr.ph.preheader ], [ %i.ap, %bb.e ] ; 3 uses
  %11 = add nuw nsw i64 %indvars.iv, %i.x         ; 3 uses
  %i.ae = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.af = add i32 %.06182, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread.loopexit.split.loop.exit92, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !46
  %i.al = and i32 %i.ak, 1
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.thread.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !24
  %i.ap = add nsw i32 %i.ad, %i.ao                ; 3 uses
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !85

.thread.loopexit.split.loop.exit:                 ; preds = %bb.d
  %12 = trunc nuw i64 %11 to i32
  br label %.thread

.thread.loopexit.split.loop.exit92:               ; preds = %.lr.ph
  %13 = trunc nuw i64 %11 to i32
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.loopexit.split.loop.exit, %.thread.loopexit.split.loop.exit92, %bb.c
  %i.aq = phi i32 [ %i.z, %bb.c ], [ %i.ad, %.thread.loopexit.split.loop.exit92 ], [ %i.ad, %.thread.loopexit.split.loop.exit ], [ %i.ap, %bb.e ]
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.ae, %.thread.loopexit.split.loop.exit92 ], [ %i.ae, %.thread.loopexit.split.loop.exit ], [ %i.ac, %bb.e ]
  %.lcssa = phi i32 [ %.05983, %bb.c ], [ %13, %.thread.loopexit.split.loop.exit92 ], [ %12, %.thread.loopexit.split.loop.exit ], [ %i.aa, %bb.e ]
  %i.ar = load i32, ptr %i.u, align 8, !tbaa !46
  %i.as = and i32 %i.ar, 2
  %.not69 = icmp eq i32 %i.as, 0
  br i1 %.not69, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.at = call i32 @lv_font_get_line_height(ptr noundef %2) #8
  %i.au = add i32 %i.b, %i.at
  %i.av = icmp sgt i32 %i.au, %.06481
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aw = call i32 @lv_font_get_line_height(ptr noundef %2) #8
  %i.ax = add i32 %i.b, %i.aw
  br label %bb.i

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ay = sub i32 %i.aq, %i.o
  store i32 %i.ay, ptr %i.n, align 4, !tbaa !57
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  call void @lv_text_get_size_attributes(ptr noundef nonnull %10, ptr noundef nonnull %i.ba, ptr noundef %2, ptr noundef nonnull %9) #8
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !40
  %i.bc = add i32 %i.b, %i.bb
  %..064 = call i32 @llvm.smax.i32(i32 %i.bc, i32 %.06481)
  %i.bd = add i32 %.0.lcssa, %.06182
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.b
  %.266 = phi i32 [ %.06481, %bb.b ], [ %..064, %bb.h ], [ %i.ax, %bb.g ], [ %.06481, %bb.f ] ; 2 uses
  %.263 = phi i32 [ %.06182, %bb.b ], [ %i.bd, %bb.h ], [ %.06182, %bb.g ], [ %.06182, %bb.f ]
  %.2 = phi i32 [ %.05983, %bb.b ], [ %.lcssa, %bb.h ], [ %.05983, %bb.g ], [ %.05983, %bb.f ]
  %i.be = add i32 %.263, 1                        ; 2 uses
  %i.bf = add i32 %.2, 1
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %i.bh = add i32 %i.bg, %i.f
  %i.bi = icmp ult i32 %i.be, %i.bh
  br i1 %i.bi, label %bb.b, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.064.lcssa = phi i32 [ %i.c, %bb.a ], [ %.266, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret i32 %.064.lcssa
}

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

declare i32 @lv_font_get_line_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_cell_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !56
  %.not88 = icmp eq i32 %2, 0
  br i1 %.not88, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 8 uses
  %wide.trip.count = zext i32 %2 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %3, i64 4
  %i.c = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep104 = getelementptr i8, ptr %i.b, i64 %i.c
  %bound0 = icmp ult ptr %3, %scevgep104
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi105 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !24, !alias.scope !87
  %wide.load106 = load <4 x i32>, ptr %i.e, align 4, !tbaa !24, !alias.scope !87
  %i.f = add <4 x i32> %vec.phi, %wide.load       ; 2 uses
  %i.g = add <4 x i32> %vec.phi105, %wide.load106 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.i, ptr %3, align 4, !tbaa !56, !alias.scope !91, !noalias !87
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph130 = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.i, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.j = phi i32 [ %i.m, %scalar.ph.prol ], [ %.ph130, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = add nsw i32 %i.j, %i.l                   ; 3 uses
  store i32 %i.m, ptr %3, align 4, !tbaa !56
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph130, %scalar.ph.preheader ], [ %i.m, %scalar.ph.prol ]
  %i.n = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.o = icmp ugt i64 %i.n, -4
  br i1 %i.o, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = icmp ult i32 %2, %i.r
  br i1 %i.s, label %.lr.ph80, label %.thread

.lr.ph80:                                         ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = mul i32 %i.q, %1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = zext i32 %2 to i64
  %i.y = sub nuw i32 %i.r, %2
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.z = phi i32 [ %i.ao, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !24
  %i.ac = add nsw i32 %i.z, %i.ab                 ; 2 uses
  store i32 %i.ac, ptr %3, align 4, !tbaa !56
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.ag = add nsw i32 %i.ac, %i.af                ; 2 uses
  store i32 %i.ag, ptr %3, align 4, !tbaa !56
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !24
  %i.ak = add nsw i32 %i.ag, %i.aj                ; 2 uses
  store i32 %i.ak, ptr %3, align 4, !tbaa !56
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24
  %i.ao = add nsw i32 %i.ak, %i.an                ; 2 uses
  store i32 %i.ao, ptr %3, align 4, !tbaa !56
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !95

bb.b:                                             ; preds = %.lr.ph80, %bb.d
  %indvars.iv91 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next92, %bb.d ] ; 3 uses
  %.06279 = phi i32 [ 0, %.lr.ph80 ], [ %i.bc, %bb.d ] ; 3 uses
  %i.ap = trunc nuw i64 %indvars.iv91 to i32
  %i.aq = add i32 %i.v, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = load i32, ptr %i.at, align 8, !tbaa !46
  %i.aw = and i32 %i.av, 1
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv91
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.x
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !24
  %i.bc = add nsw i32 %i.bb, %.06279              ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32
  %exitcond94.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond94.not, label %.thread, label %bb.b, !llvm.loop !96

.thread:                                          ; preds = %bb.d, %bb.b, %bb.c, %.preheader
  %.062.lcssa = phi i32 [ 0, %.preheader ], [ %.06279, %bb.c ], [ %.06279, %bb.b ], [ %i.bc, %bb.d ] ; 2 uses
  %i.bd = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = icmp eq i64 %i.bf, 1
  %i.bh = tail call i32 @lv_obj_get_scroll_x(ptr noundef nonnull %0) #8 ; 2 uses
  %i.bi = load i32, ptr %3, align 4, !tbaa !56    ; 2 uses
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.bj = add nsw i32 %i.bi, %i.bh
  store i32 %i.bj, ptr %3, align 4, !tbaa !56
  %i.bk = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #8
  %i.bl = load i32, ptr %3, align 4, !tbaa !56
  %i.bm = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.bn = ptrtoint ptr %i.bm to i64
  %.sroa.0.0.extract.trunc.i69 = trunc i64 %i.bn to i32
  %i.bo = add i32 %i.bl, %.sroa.0.0.extract.trunc.i69
  %i.bp = sub i32 %i.bk, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.bt = zext i32 %2 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24
  %i.bw = add i32 %i.bv, %.062.lcssa
  %i.bx = sub i32 %i.bp, %i.bw
  store i32 %i.bx, ptr %3, align 4, !tbaa !56
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.by = sub nsw i32 %i.bi, %i.bh
  store i32 %i.by, ptr %3, align 4, !tbaa !56
  %i.bz = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.ca = ptrtoint ptr %i.bz to i64
  %.sroa.0.0.extract.trunc.i70 = trunc i64 %i.ca to i32
  %i.cb = load i32, ptr %3, align 4, !tbaa !56
  %i.cc = add nsw i32 %i.cb, %.sroa.0.0.extract.trunc.i70 ; 2 uses
  store i32 %i.cc, ptr %3, align 4, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = zext i32 %2 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !24
  %i.ci = add i32 %.062.lcssa, -1
  %i.cj = add i32 %i.ci, %i.cc
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 12 uses
  store i32 0, ptr %i.cm, align 4, !tbaa !58
  %.not89 = icmp eq i32 %1, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !23 ; 8 uses
  %wide.trip.count98 = zext i32 %1 to i64         ; 9 uses
  %min.iters.check114 = icmp ult i32 %1, 8
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph86
  %scevgep108 = getelementptr i8, ptr %3, i64 8
  %i.cp = shl nuw nsw i64 %wide.trip.count98, 2
  %scevgep109 = getelementptr i8, ptr %i.co, i64 %i.cp
  %bound0110 = icmp ult ptr %i.cm, %scevgep109
  %bound1111 = icmp ult ptr %i.co, %scevgep108
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck107
  %n.vec116 = and i64 %wide.trip.count98, 4294967288 ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %vec.phi119 = phi <4 x i32> [ zeroinitializer, %vector.ph115 ], [ %i.cs, %vector.body117 ]
  %vec.phi120 = phi <4 x i32> [ zeroinitializer, %vector.ph115 ], [ %i.ct, %vector.body117 ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index118 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load121 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !24, !alias.scope !97
  %wide.load122 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !24, !alias.scope !97
  %i.cs = add <4 x i32> %vec.phi119, %wide.load121 ; 2 uses
  %i.ct = add <4 x i32> %vec.phi120, %wide.load122 ; 2 uses
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.cu, label %middle.block124, label %vector.body117, !llvm.loop !100

middle.block124:                                  ; preds = %vector.body117
  %bin.rdx125 = add <4 x i32> %i.ct, %i.cs
  %i.cv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx125) ; 2 uses
  store i32 %i.cv, ptr %i.cm, align 4, !tbaa !58, !alias.scope !101, !noalias !97
  %cmp.n126 = icmp eq i64 %n.vec116, %wide.trip.count98
  br i1 %cmp.n126, label %._crit_edge, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.memcheck107, %.lr.ph86, %middle.block124
  %indvars.iv95.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %.lr.ph86 ], [ %n.vec116, %middle.block124 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck107 ], [ 0, %.lr.ph86 ], [ %i.cv, %middle.block124 ] ; 2 uses
  %xtraiter133 = and i64 %wide.trip.count98, 3    ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %scalar.ph113.prol.loopexit, label %scalar.ph113.prol

scalar.ph113.prol:                                ; preds = %scalar.ph113.preheader, %scalar.ph113.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %scalar.ph113.prol ], [ %indvars.iv95.ph, %scalar.ph113.preheader ] ; 2 uses
  %i.cw = phi i32 [ %i.cz, %scalar.ph113.prol ], [ %.ph, %scalar.ph113.preheader ]
  %prol.iter135 = phi i64 [ %prol.iter135.next, %scalar.ph113.prol ], [ 0, %scalar.ph113.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv95.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !24
  %i.cz = add nsw i32 %i.cw, %i.cy                ; 3 uses
  store i32 %i.cz, ptr %i.cm, align 4, !tbaa !58
  %indvars.iv.next96.prol = add nuw nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %scalar.ph113.prol.loopexit, label %scalar.ph113.prol, !llvm.loop !103

scalar.ph113.prol.loopexit:                       ; preds = %scalar.ph113.prol, %scalar.ph113.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph113.preheader ], [ %indvars.iv.next96.prol, %scalar.ph113.prol ]
  %.unr136 = phi i32 [ %.ph, %scalar.ph113.preheader ], [ %i.cz, %scalar.ph113.prol ]
  %i.da = sub nsw i64 %indvars.iv95.ph, %wide.trip.count98
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge, label %scalar.ph113

scalar.ph113:                                     ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %scalar.ph113 ], [ %indvars.iv95.unr, %scalar.ph113.prol.loopexit ] ; 5 uses
  %i.dc = phi i32 [ %i.dr, %scalar.ph113 ], [ %.unr136, %scalar.ph113.prol.loopexit ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv95
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !24
  %i.df = add nsw i32 %i.dc, %i.de                ; 2 uses
  store i32 %i.df, ptr %i.cm, align 4, !tbaa !58
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv95
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !24
  %i.dj = add nsw i32 %i.df, %i.di                ; 2 uses
  store i32 %i.dj, ptr %i.cm, align 4, !tbaa !58
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv95
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !24
  %i.dn = add nsw i32 %i.dj, %i.dm                ; 2 uses
  store i32 %i.dn, ptr %i.cm, align 4, !tbaa !58
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv95
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !24
  %i.dr = add nsw i32 %i.dn, %i.dq                ; 2 uses
  store i32 %i.dr, ptr %i.cm, align 4, !tbaa !58
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count98
  br i1 %exitcond99.not.3, label %._crit_edge, label %scalar.ph113, !llvm.loop !104

._crit_edge:                                      ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113, %middle.block124, %bb.g
  %.pre-phi = phi i64 [ 0, %bb.g ], [ %wide.trip.count98, %middle.block124 ], [ %wide.trip.count98, %scalar.ph113 ], [ %wide.trip.count98, %scalar.ph113.prol.loopexit ]
  %i.ds = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.dt = ptrtoint ptr %i.ds to i64
  %.sroa.0.0.extract.trunc.i71 = trunc i64 %i.dt to i32
  %i.du = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.dv = add nsw i32 %i.du, %.sroa.0.0.extract.trunc.i71
  store i32 %i.dv, ptr %i.cm, align 4, !tbaa !58
  %i.dw = tail call i32 @lv_obj_get_scroll_y(ptr noundef nonnull %0) #8
  %i.dx = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.dy = sub nsw i32 %i.dx, %i.dw                ; 2 uses
  store i32 %i.dy, ptr %i.cm, align 4, !tbaa !58
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.pre-phi
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24
  %i.ed = add i32 %i.dy, -1
  %i.ee = add i32 %i.ed, %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !59
  ret void
}

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #2

declare i64 @lv_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @lv_strcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_scroll_by_bounded(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7
end_hunk_0
