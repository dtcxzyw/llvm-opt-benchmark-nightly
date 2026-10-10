Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_table?download=true
inline.NumInlined: 52
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_table_get_cell_user_data:bb.a

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
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
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.d, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !63
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
  %i.o = load i16, ptr %i.n, align 4, !tbaa !64   ; 2 uses
  store i16 0, ptr %i.n, align 4, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 62 ; 8 uses
  %i.q = load i32, ptr %i.p, align 2
  %i.r = or i32 %i.q, 8
  store i32 %i.r, ptr %i.p, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %4) #8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.b, ptr %i.s, align 8, !tbaa !71
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %6) #8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.b, ptr %i.t, align 8, !tbaa !76
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %6) #8
  store i16 %i.o, ptr %i.n, align 4, !tbaa !64
  %i.u = load i32, ptr %i.p, align 2
  %i.v = and i32 %i.u, -9
  store i32 %i.v, ptr %i.p, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = call i32 @lv_obj_get_scroll_y(ptr noundef nonnull %i.a) #8
  %i.z = xor i32 %i.y, -1
  %i.aa = add i32 %.sroa.0.0.extract.trunc.i174, %.sroa.0.0.extract.trunc.i
  %i.ab = add i32 %i.aa, %i.x
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !45
  store i32 0, ptr %3, align 16, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !43
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
  %i.cf = load i32, ptr %i.ad, align 4, !tbaa !45 ; 3 uses
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ap, align 4, !tbaa !44
  %i.ch = add i32 %i.cf, %i.ce
  store i32 %i.ch, ptr %i.ad, align 4, !tbaa !45
  %i.ci = load i32, ptr %i.aq, align 4, !tbaa !45
  %.not = icmp slt i32 %i.cf, %i.ci
  br i1 %.not, label %bb.d, label %._crit_edge224

bb.d:                                             ; preds = %bb.c
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !35
  %i.ck = add i32 %i.ax, %i.cj
  store i32 %i.ck, ptr %3, align 16, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !36
  %i.cm = add i32 %i.at, %i.cl
  store i32 %i.cm, ptr %i.ae, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cn = load i32, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
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
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27 ; 2 uses
  %.not159 = icmp eq ptr %i.cu, null
  br i1 %.not159, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !39
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
  %i.db = load i32, ptr %3, align 16, !tbaa !42   ; 2 uses
  %i.dc = add nsw i32 %i.db, -1                   ; 5 uses
  store i32 %i.dc, ptr %i.ae, align 8, !tbaa !43
  %i.dd = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cy
  %i.df = load i32, ptr %i.de, align 4, !tbaa !24
  %i.dg = sub i32 %i.db, %i.df                    ; 3 uses
  store i32 %i.dg, ptr %3, align 16, !tbaa !42
  br i1 %i.da, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.j
  %i.dh = load i32, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %i.di = add nsw i32 %i.dh, 1                    ; 5 uses
  store i32 %i.di, ptr %3, align 16, !tbaa !42
  %i.dj = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cy
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !24
  %i.dm = add i32 %i.dl, %i.dh                    ; 3 uses
  store i32 %i.dm, ptr %i.ae, align 8, !tbaa !43
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
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !27 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %._crit_edge.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.dy = load i32, ptr %i.dw, align 8, !tbaa !39
  %i.dz = and i32 %i.dy, 1
  %.not160.us = icmp eq i32 %i.dz, 0
  br i1 %.not160.us, label %._crit_edge.loopexit.split.loop.exit280, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24
  %i.ed = sub nsw i32 %i.dr, %i.ec                ; 3 uses
  store i32 %i.ed, ptr %3, align 16, !tbaa !42
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %lftr.wideiv236 = trunc i64 %indvars.iv.next234 to i32
  %exitcond237.not = icmp eq i32 %i.dq, %lftr.wideiv236
  br i1 %exitcond237.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !60

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.ee = phi i32 [ %i.dm, %.lr.ph.split.preheader ], [ %i.eq, %bb.o ] ; 3 uses
  %13 = add nuw nsw i64 %indvars.iv, %i.dn        ; 3 uses
  %i.ef = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.eg = add i32 %.1144214, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !27 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %._crit_edge.loopexit266.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  %i.el = load i32, ptr %i.ej, align 8, !tbaa !39
  %i.em = and i32 %i.el, 1
  %.not160 = icmp eq i32 %i.em, 0
  br i1 %.not160, label %._crit_edge.loopexit266.split.loop.exit270, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %13
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !24
  %i.eq = add nsw i32 %i.ee, %i.ep                ; 3 uses
  store i32 %i.eq, ptr %i.ae, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.do, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !60

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
  %i.et = load i32, ptr %i.ad, align 4, !tbaa !45 ; 4 uses
  %i.eu = load i32, ptr %i.bb, align 4, !tbaa !44
  %i.ev = icmp slt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.am, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 %i.es, ptr %8, align 4, !tbaa !42
  %i.ew = load i32, ptr %i.ap, align 4, !tbaa !44 ; 3 uses
  store i32 %i.ew, ptr %i.bc, align 4, !tbaa !44
  store i32 %i.er, ptr %i.bd, align 4, !tbaa !43
  store i32 %i.et, ptr %i.be, align 4, !tbaa !45
  %i.ex = load i8, ptr %i.bf, align 8             ; 4 uses
  %i.ey = and i8 %i.ex, 4
  %.not161 = icmp eq i8 %i.ey, 0
  br i1 %.not161, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ez = load i32, ptr %i.c, align 8, !tbaa !36
  %i.fa = add nsw i32 %i.ez, %.sroa.0.0.extract.trunc.i176
  %i.fb = icmp sgt i32 %i.es, %i.fa
  br i1 %i.fb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fc = load i32, ptr %i.bg, align 4, !tbaa !77
  %.neg = sdiv i32 %i.fc, -2
  %i.fd = add i32 %.neg, %i.es
  store i32 %i.fd, ptr %8, align 4, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.fe = and i8 %i.ex, 2
  %.not162 = icmp eq i8 %i.fe, 0
  br i1 %.not162, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ff = load i32, ptr %i.w, align 4, !tbaa !37
  %i.fg = add nsw i32 %i.ff, %.sroa.0.0.extract.trunc.i174
  %i.fh = icmp sgt i32 %i.ew, %i.fg
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fi = load i32, ptr %i.bg, align 4, !tbaa !77
  %.neg163 = sdiv i32 %i.fi, -2
  %i.fj = add i32 %.neg163, %i.ew
  store i32 %i.fj, ptr %i.bc, align 4, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.fk = and i8 %i.ex, 8
  %.not164 = icmp eq i8 %i.fk, 0
  br i1 %.not164, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = load i32, ptr %i.au, align 8, !tbaa !35
  %i.fm = add i32 %i.fl, %i.av
  %i.fn = icmp slt i32 %i.er, %i.fm
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = load i32, ptr %i.bg, align 4, !tbaa !77 ; 2 uses
  %i.fp = sdiv i32 %i.fo, 2
  %i.fq = and i32 %i.fo, 1
  %i.fr = add nsw i32 %i.fq, %i.er
  %i.fs = add i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.bd, align 4, !tbaa !43
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.ft = and i8 %i.ex, 1
  %.not165 = icmp eq i8 %i.ft, 0
  br i1 %.not165, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = load i32, ptr %i.bh, align 4, !tbaa !78
  %i.fv = add i32 %i.fu, %i.bi
  %i.fw = icmp slt i32 %i.et, %i.fv
  br i1 %i.fw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fx = load i32, ptr %i.bg, align 4, !tbaa !77 ; 2 uses
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = and i32 %i.fx, 1
  %i.ga = add nsw i32 %i.fz, %i.et
  %i.gb = add i32 %i.ga, %i.fy
  store i32 %i.gb, ptr %i.be, align 4, !tbaa !45
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
  %i.gh = load i16, ptr %i.n, align 4, !tbaa !64  ; 3 uses
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
  store i16 %i.go, ptr %i.n, align 4, !tbaa !64
  %i.gp = load i32, ptr %i.p, align 2
  %i.gq = or i32 %i.gp, 8
  store i32 %i.gq, ptr %i.p, align 2
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %5) #8
  store ptr %i.b, ptr %i.bl, align 8, !tbaa !71
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %7) #8
  store ptr %i.b, ptr %i.bm, align 8, !tbaa !76
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %5) #8
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %i.a, i32 noundef 327680, ptr noundef nonnull %7) #8
  store i16 %i.o, ptr %i.n, align 4, !tbaa !64
  %i.gr = load i32, ptr %i.p, align 2
  %i.gs = and i32 %i.gr, -9
  store i32 %i.gs, ptr %i.p, align 2
  br label %bb.af

bb.af:                                            ; preds = %.thread187, %.thread185
  store i32 %i.cp, ptr %i.bn, align 4, !tbaa !79
  store i32 %.0148211, ptr %i.bo, align 8, !tbaa !80
  store i32 %i.cp, ptr %i.bp, align 4, !tbaa !81
  store i32 %.0148211, ptr %i.bq, align 8, !tbaa !82
  call void @lv_draw_rect(ptr noundef %i.b, ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  %i.gt = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.cs
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !27
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
  store i32 %i.hm, ptr %i.bv, align 8, !tbaa !43
  br i1 %.0142, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.br, align 4, !tbaa !45
  %i.hn = load i16, ptr %i.bw, align 2
  %i.ho = or i16 %i.hn, 8
  store i16 %i.ho, ptr %i.bw, align 2
  %i.hp = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.cs
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.bx, align 8, !tbaa !83
  call void @lv_text_get_size_attributes(ptr noundef nonnull %2, ptr noundef nonnull %i.hs, ptr noundef %i.ht, ptr noundef nonnull %9) #8
  br label %bb.ai

.critedge:                                        ; preds = %bb.ag
  %i.hu = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.cs
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.bx, align 8, !tbaa !83
  call void @lv_text_get_size_attributes(ptr noundef nonnull %2, ptr noundef nonnull %i.hx, ptr noundef %i.hy, ptr noundef nonnull %9) #8
  %i.hz = load i32, ptr %i.ap, align 4, !tbaa !44
  %i.ia = add nsw i32 %i.hz, %i.co                ; 2 uses
  %i.ib = load i32, ptr %i.by, align 4, !tbaa !34 ; 2 uses
  %.neg173 = sdiv i32 %i.ib, -2
  %i.ic = add i32 %.neg173, %i.ia
  store i32 %i.ic, ptr %i.bt, align 4, !tbaa !44
  %i.id = sdiv i32 %i.ib, 2
  %i.ie = add nsw i32 %i.id, %i.ia
  store i32 %i.ie, ptr %i.bu, align 4, !tbaa !45
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.if = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %1, ptr noundef nonnull %3) #8
  br i1 %i.if, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !63
  %i.ig = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.cs
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store ptr %i.ij, ptr %i.bz, align 8, !tbaa !84
  call void @lv_draw_label(ptr noundef %i.b, ptr noundef nonnull %7, ptr noundef nonnull %10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !63
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.pre = load i32, ptr %i.ay, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %bb.al
  %i.ik = phi i32 [ %i.cq, %._crit_edge ], [ %.pre, %bb.al ] ; 2 uses
  %.pn = add i32 %.1144214, 1
  %.2145 = add i32 %.pn, %.0141.lcssa             ; 2 uses
  %i.il = add i32 %.lcssa, 1                      ; 2 uses
  %i.im = icmp ult i32 %i.il, %i.ik
  br i1 %i.im, label %bb.h, label %._crit_edge218.loopexit, !llvm.loop !61

._crit_edge218.loopexit:                          ; preds = %bb.am
  %.pre243 = load i32, ptr %i.al, align 4, !tbaa !21
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %._crit_edge218.loopexit, %bb.g
  %i.in = phi i32 [ %i.cb, %bb.g ], [ %.pre243, %._crit_edge218.loopexit ] ; 2 uses
  %.1144.lcssa = phi i32 [ %.0143221, %bb.g ], [ %.2145, %._crit_edge218.loopexit ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.io = zext i32 %i.in to i64
  %i.ip = icmp samesign ult i64 %indvars.iv.next239, %i.io
  br i1 %i.ip, label %bb.c, label %._crit_edge224, !llvm.loop !62

._crit_edge224:                                   ; preds = %._crit_edge218, %bb.c, %bb.b
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !24
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = mul i32 %i.e, %1                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.g, align 4
  store i32 %3, ptr %9, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %4, ptr %i.h, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !45
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.x = zext i32 %.05983 to i64                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24   ; 3 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !43
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread.loopexit.split.loop.exit92, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !39
  %i.al = and i32 %i.ak, 1
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.thread.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !24
  %i.ap = add nsw i32 %i.ad, %i.ao                ; 3 uses
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !43
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
  %i.ar = load i32, ptr %i.u, align 8, !tbaa !39
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
  store i32 %i.ay, ptr %i.n, align 4, !tbaa !43
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  call void @lv_text_get_size_attributes(ptr noundef nonnull %10, ptr noundef nonnull %i.ba, ptr noundef %2, ptr noundef nonnull %9) #8
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !34
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
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !20  ; 2 uses
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
  store i32 0, ptr %3, align 4, !tbaa !42
  %.not88 = icmp eq i32 %2, 0
  br i1 %.not88, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 8 uses
  %wide.trip.count = zext i32 %2 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = getelementptr i8, ptr %3, i64 4
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %bound0 = icmp ult ptr %3, %i.e
  %bound1 = icmp ult ptr %i.b, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi105 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !24, !alias.scope !100
  %wide.load106 = load <4 x i32>, ptr %i.g, align 4, !tbaa !24, !alias.scope !100
  %i.h = add <4 x i32> %vec.phi, %wide.load       ; 2 uses
  %i.i = add <4 x i32> %vec.phi105, %wide.load106 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.k, ptr %3, align 4, !tbaa !42, !alias.scope !101, !noalias !100
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph133 = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.k, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = phi i32 [ %i.o, %scalar.ph.prol ], [ %.ph133, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = add nsw i32 %i.l, %i.n                   ; 3 uses
  store i32 %i.o, ptr %3, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !91

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph133, %scalar.ph.preheader ], [ %i.o, %scalar.ph.prol ]
  %i.p = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = add i32 %i.s, -1                         ; 2 uses
  %i.u = icmp ult i32 %2, %i.t
  br i1 %i.u, label %.lr.ph80, label %.thread

.lr.ph80:                                         ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = mul i32 %i.s, %1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = zext i32 %2 to i64
  %i.aa = sub nuw i32 %i.t, %2
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = phi i32 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.ae = add nsw i32 %i.ab, %i.ad                ; 2 uses
  store i32 %i.ae, ptr %3, align 4, !tbaa !42
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.ai = add nsw i32 %i.ae, %i.ah                ; 2 uses
  store i32 %i.ai, ptr %3, align 4, !tbaa !42
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = add nsw i32 %i.ai, %i.al                ; 2 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !42
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = add nsw i32 %i.am, %i.ap                ; 2 uses
  store i32 %i.aq, ptr %3, align 4, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !92

bb.b:                                             ; preds = %.lr.ph80, %bb.d
  %indvars.iv91 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next92, %bb.d ] ; 3 uses
  %.06279 = phi i32 [ 0, %.lr.ph80 ], [ %i.be, %bb.d ] ; 3 uses
  %i.ar = trunc nuw i64 %indvars.iv91 to i32
  %i.as = add i32 %i.x, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !39
  %i.ay = and i32 %i.ax, 1
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv91
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.z
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %i.be = add nsw i32 %i.bd, %.06279              ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32
  %exitcond94.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond94.not, label %.thread, label %bb.b, !llvm.loop !93

.thread:                                          ; preds = %bb.d, %bb.b, %bb.c, %.preheader
  %.062.lcssa = phi i32 [ 0, %.preheader ], [ %.06279, %bb.c ], [ %.06279, %bb.b ], [ %i.be, %bb.d ] ; 2 uses
  %i.bf = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp eq i64 %i.bh, 1
  %i.bj = tail call i32 @lv_obj_get_scroll_x(ptr noundef nonnull %0) #8 ; 2 uses
  %i.bk = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.bl = add nsw i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %3, align 4, !tbaa !42
  %i.bm = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #8
  %i.bn = load i32, ptr %3, align 4, !tbaa !42
  %i.bo = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.bp = ptrtoint ptr %i.bo to i64
  %.sroa.0.0.extract.trunc.i69 = trunc i64 %i.bp to i32
  %i.bq = add i32 %i.bn, %.sroa.0.0.extract.trunc.i69
  %i.br = sub i32 %i.bm, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = zext i32 %2 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %i.by = add i32 %i.bx, %.062.lcssa
  %i.bz = sub i32 %i.br, %i.by
  store i32 %i.bz, ptr %3, align 4, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.ca = sub nsw i32 %i.bk, %i.bj
  store i32 %i.ca, ptr %3, align 4, !tbaa !42
  %i.cb = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.cc = ptrtoint ptr %i.cb to i64
  %.sroa.0.0.extract.trunc.i70 = trunc i64 %i.cc to i32
  %i.cd = load i32, ptr %3, align 4, !tbaa !42
  %i.ce = add nsw i32 %i.cd, %.sroa.0.0.extract.trunc.i70 ; 2 uses
  store i32 %i.ce, ptr %3, align 4, !tbaa !42
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !22
  %i.ch = zext i32 %2 to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !24
  %i.ck = add i32 %.062.lcssa, -1
  %i.cl = add i32 %i.ck, %i.ce
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 12 uses
  store i32 0, ptr %i.co, align 4, !tbaa !44
  %.not89 = icmp eq i32 %1, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23 ; 8 uses
  %wide.trip.count98 = zext i32 %1 to i64         ; 9 uses
  %min.iters.check113 = icmp ult i32 %1, 8
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph86
  %i.cr = getelementptr i8, ptr %3, i64 8
  %i.cs = shl nuw nsw i64 %wide.trip.count98, 2
  %i.ct = getelementptr i8, ptr %i.cq, i64 %i.cs
  %bound0115 = icmp ult ptr %i.co, %i.ct
  %bound1116 = icmp ult ptr %i.cq, %i.cr
  %found.conflict117 = and i1 %bound0115, %bound1116
  br i1 %found.conflict117, label %scalar.ph112.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %wide.trip.count98, 4294967288 ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %vec.phi122 = phi <4 x i32> [ zeroinitializer, %vector.ph118 ], [ %i.cw, %vector.body120 ]
  %vec.phi123 = phi <4 x i32> [ zeroinitializer, %vector.ph118 ], [ %i.cx, %vector.body120 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index121 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load124 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !24, !alias.scope !103
  %wide.load125 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !24, !alias.scope !103
  %i.cw = add <4 x i32> %vec.phi122, %wide.load124 ; 2 uses
  %i.cx = add <4 x i32> %vec.phi123, %wide.load125 ; 2 uses
  %index.next126 = add nuw i64 %index121, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.cy, label %middle.block127, label %vector.body120, !llvm.loop !96

middle.block127:                                  ; preds = %vector.body120
  %bin.rdx128 = add <4 x i32> %i.cx, %i.cw
  %i.cz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx128) ; 2 uses
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !44, !alias.scope !104, !noalias !103
  %cmp.n129 = icmp eq i64 %n.vec119, %wide.trip.count98
  br i1 %cmp.n129, label %._crit_edge, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck114, %.lr.ph86, %middle.block127
  %indvars.iv95.ph = phi i64 [ 0, %vector.memcheck114 ], [ 0, %.lr.ph86 ], [ %n.vec119, %middle.block127 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck114 ], [ 0, %.lr.ph86 ], [ %i.cz, %middle.block127 ] ; 2 uses
  %xtraiter136 = and i64 %wide.trip.count98, 3    ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol

scalar.ph112.prol:                                ; preds = %scalar.ph112.preheader, %scalar.ph112.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %scalar.ph112.prol ], [ %indvars.iv95.ph, %scalar.ph112.preheader ] ; 2 uses
  %i.da = phi i32 [ %i.dd, %scalar.ph112.prol ], [ %.ph, %scalar.ph112.preheader ]
  %prol.iter138 = phi i64 [ %prol.iter138.next, %scalar.ph112.prol ], [ 0, %scalar.ph112.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !24
  %i.dd = add nsw i32 %i.da, %i.dc                ; 3 uses
  store i32 %i.dd, ptr %i.co, align 4, !tbaa !44
  %indvars.iv.next96.prol = add nuw nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol, !llvm.loop !98

scalar.ph112.prol.loopexit:                       ; preds = %scalar.ph112.prol, %scalar.ph112.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph112.preheader ], [ %indvars.iv.next96.prol, %scalar.ph112.prol ]
  %.unr139 = phi i32 [ %.ph, %scalar.ph112.preheader ], [ %i.dd, %scalar.ph112.prol ]
  %i.de = sub nsw i64 %indvars.iv95.ph, %wide.trip.count98
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge, label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %scalar.ph112 ], [ %indvars.iv95.unr, %scalar.ph112.prol.loopexit ] ; 5 uses
  %i.dg = phi i32 [ %i.dv, %scalar.ph112 ], [ %.unr139, %scalar.ph112.prol.loopexit ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !24
  %i.dj = add nsw i32 %i.dg, %i.di                ; 2 uses
  store i32 %i.dj, ptr %i.co, align 4, !tbaa !44
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !24
  %i.dn = add nsw i32 %i.dj, %i.dm                ; 2 uses
  store i32 %i.dn, ptr %i.co, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !24
  %i.dr = add nsw i32 %i.dn, %i.dq                ; 2 uses
  store i32 %i.dr, ptr %i.co, align 4, !tbaa !44
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !24
  %i.dv = add nsw i32 %i.dr, %i.du                ; 2 uses
  store i32 %i.dv, ptr %i.co, align 4, !tbaa !44
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count98
  br i1 %exitcond99.not.3, label %._crit_edge, label %scalar.ph112, !llvm.loop !99

._crit_edge:                                      ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112, %middle.block127, %bb.g
  %.pre-phi = phi i64 [ 0, %bb.g ], [ %wide.trip.count98, %middle.block127 ], [ %wide.trip.count98, %scalar.ph112 ], [ %wide.trip.count98, %scalar.ph112.prol.loopexit ]
  %i.dw = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.dx = ptrtoint ptr %i.dw to i64
  %.sroa.0.0.extract.trunc.i71 = trunc i64 %i.dx to i32
  %i.dy = load i32, ptr %i.co, align 4, !tbaa !44
  %i.dz = add nsw i32 %i.dy, %.sroa.0.0.extract.trunc.i71
  store i32 %i.dz, ptr %i.co, align 4, !tbaa !44
  %i.ea = tail call i32 @lv_obj_get_scroll_y(ptr noundef nonnull %0) #8
  %i.eb = load i32, ptr %i.co, align 4, !tbaa !44
  %i.ec = sub nsw i32 %i.eb, %i.ea                ; 2 uses
  store i32 %i.ec, ptr %i.co, align 4, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.pre-phi
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !24
  %i.eh = add i32 %i.ec, -1
  %i.ei = add i32 %i.eh, %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !45
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
