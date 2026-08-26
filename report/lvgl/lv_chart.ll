Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_chart?download=true
inline.NumInlined: 74
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_chart_event:bb.a
    i8 4, label %bb.h
    i8 5, label %lv_chart_get_series_next.exit.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33
  %i.y = add i32 %i.x, -1
  %i.z = mul i32 %i.y, %i.n
  %i.aa = lshr i32 %i.k, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = udiv i32 %i.ab, %i.k
  br label %get_index_from_x.exit

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.af = mul i32 %i.ae, %i.n
  %i.ag = udiv i32 %i.af, %i.k
  br label %get_index_from_x.exit

lv_chart_get_series_next.exit.i:                  ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ai = call ptr @lv_ll_get_head(ptr noundef nonnull %i.ah) #8 ; 4 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %get_index_from_x.exit, label %.preheader.i

.preheader.i:                                     ; preds = %lv_chart_get_series_next.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 164 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !33
  %.not72.i = icmp eq i32 %i.ak, 0
  br i1 %.not72.i, label %get_index_from_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 4 uses
  %.05670.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select67.i, %bb.i ]
  %.05769.i = phi i32 [ 2147483647, %.lr.ph.i ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = load i8, ptr %i.am, align 8
  %i.as = lshr i8 %i.ar, 3
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.au
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = call i32 @lv_map(i32 noundef %i.aq, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef 0, i32 noundef %i.k) #8
  %i.ba = icmp sgt i32 %i.n, %i.az
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = load i8, ptr %i.am, align 8
  %i.bf = lshr i8 %i.be, 3
  %i.bg = and i8 %i.bf, 1
  %i.bh = zext nneg i8 %i.bg to i64               ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bh
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = call i32 @lv_map(i32 noundef %i.bd, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef 0, i32 noundef %i.k) #8 ; 2 uses
  %i.bn = sub nsw i32 %i.n, %i.bm
  %.neg.i = sub nsw i32 %i.bm, %i.n
  %i.bo = select i1 %i.ba, i32 %i.bn, i32 %.neg.i ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %.05769.i
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bo, i32 %.05769.i)
  %i.bq = trunc nuw i64 %indvars.iv.i to i32
  %spec.select67.i = select i1 %i.bp, i32 %i.bq, i32 %.05670.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = load i32, ptr %i.aj, align 4, !tbaa !33
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %bb.i, label %get_index_from_x.exit, !llvm.loop !34

get_index_from_x.exit:                            ; preds = %bb.i, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %lv_chart_get_series_next.exit.i, %.preheader.i
  %.161.i = phi i32 [ 0, %bb.c ], [ %i.s, %bb.e ], [ %i.ac, %bb.g ], [ %i.ag, %bb.h ], [ 0, %lv_chart_get_series_next.exit.i ], [ 0, %bb.f ], [ 0, %.preheader.i ], [ %spec.select67.i, %bb.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !35
  %.not54 = icmp eq i32 %.161.i, %i.bv
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %get_index_from_x.exit
  call fastcc void @invalidate_point(ptr noundef nonnull %i.c, i32 noundef %.161.i)
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !35
  call fastcc void @invalidate_point(ptr noundef nonnull %i.c, i32 noundef %i.bw)
  store i32 %.161.i, ptr %i.bu, align 8, !tbaa !35
  %i.bx = call i32 @lv_obj_send_event(ptr noundef nonnull %i.c, i32 noundef 35, ptr noundef null) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %get_index_from_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.bd

bb.l:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !35
  tail call fastcc void @invalidate_point(ptr noundef %i.c, i32 noundef %i.bz)
  store i32 2147483647, ptr %i.by, align 8, !tbaa !35
  br label %bb.bd

bb.m:                                             ; preds = %bb.b
  %i.ca = tail call ptr @lv_event_get_layer(ptr noundef %1) #8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @lv_obj_get_coords(ptr noundef %i.c, ptr noundef nonnull %10) #8
  %i.cb = call i32 @lv_obj_get_ext_draw_size(ptr noundef %i.c) #8 ; 2 uses
  call void @lv_area_increase(ptr noundef nonnull %10, i32 noundef %i.cb, i32 noundef %i.cb) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 72 ; 4 uses
  %i.cd = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %i.cc) #8
  br i1 %i.cd, label %bb.n, label %bb.bc

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.cc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !36
  %i.ce = call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.cf = ptrtoint ptr %i.ce to i64
  %.sroa.0.0.extract.trunc.i.i55 = trunc i64 %i.cf to i32 ; 2 uses
  %i.cg = call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.ch = ptrtoint ptr %i.cg to i64
  %.sroa.0.0.extract.trunc.i80.i = trunc i64 %i.ch to i32
  %i.ci = add nsw i32 %.sroa.0.0.extract.trunc.i80.i, %.sroa.0.0.extract.trunc.i.i55
  %i.cj = call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.ck = call i32 @lv_obj_get_content_width(ptr noundef %i.c) #8
  %i.cl = call i32 @lv_obj_get_content_height(ptr noundef %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %8) #8
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ca, ptr %i.cm, align 8, !tbaa !37
  call void @lv_obj_init_draw_line_dsc(ptr noundef %i.c, i32 noundef 0, ptr noundef nonnull %8) #8
  %i.cn = call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 58) #8
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = trunc i64 %i.co to i8                   ; 2 uses
  %i.cq = call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.cr = ptrtoint ptr %i.cq to i64
  %.sroa.0.0.extract.trunc.i82.i = trunc i64 %i.cr to i32 ; 2 uses
  %i.cs = call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 60) #8
  %i.ct = ptrtoint ptr %i.cs to i64
  %.sroa.0.0.extract.trunc.i83.i = trunc i64 %i.ct to i32 ; 4 uses
  %i.cu = call i32 @lv_obj_get_scroll_left(ptr noundef %i.c) #8
  %i.cv = call i32 @lv_obj_get_scroll_top(ptr noundef %i.c) #8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 156 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !42 ; 4 uses
  %i.cy = icmp ugt i32 %i.cx, 1
  br i1 %i.cy, label %bb.o, label %.loopexit89.i

bb.o:                                             ; preds = %bb.n
  %i.cz = ptrtoint ptr %i.cj to i64
  %.sroa.0.0.extract.trunc.i81.i = trunc i64 %i.cz to i32
  %i.da = add nsw i32 %.sroa.0.0.extract.trunc.i81.i, %.sroa.0.0.extract.trunc.i.i55
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !43
  %i.de = load i32, ptr %i.db, align 8, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 %i.de, ptr %i.df, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !45
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !46
  %i.dj = icmp ugt i8 %i.cp, 2
  %i.dk = icmp sgt i32 %.sroa.0.0.extract.trunc.i82.i, 0
  %or.cond.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.dl = and i32 %.sroa.0.0.extract.trunc.i83.i, 2
  %.not.i57 = icmp eq i32 %i.dl, 0
  br i1 %.not.i57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = icmp eq i64 %i.do, 0
  %spec.select.i58 = zext i1 %i.dp to i16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.067.i = phi i16 [ 0, %bb.p ], [ %spec.select.i58, %bb.q ] ; 2 uses
  %i.dq = and i32 %.sroa.0.0.extract.trunc.i83.i, 1
  %.not73.i = icmp eq i32 %i.dq, 0
  br i1 %.not73.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 25) #8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = sext i1 %i.du to i32
  %spec.select77.i = add i32 %i.cx, %i.dv
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.o
  %.069.i = phi i32 [ %i.cx, %bb.o ], [ %spec.select77.i, %bb.s ], [ %i.cx, %bb.r ]
  %.168.i = phi i16 [ 0, %bb.o ], [ %.067.i, %bb.s ], [ %.067.i, %bb.r ] ; 2 uses
  %sext.i = shl i32 %.069.i, 16
  %i.dw = ashr exact i32 %sext.i, 16              ; 2 uses
  %i.dx = zext nneg i16 %.168.i to i32            ; 2 uses
  %i.dy = icmp sgt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.i56, label %.loopexit89.i

.lr.ph.i56:                                       ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.ea = sub i32 %i.da, %i.cv
  %i.eb = add i32 %i.ea, %i.dd
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i56
  %i.ee = phi i32 [ %i.dx, %.lr.ph.i56 ], [ %i.el, %bb.u ] ; 2 uses
  %.06990.i = phi i16 [ %.168.i, %.lr.ph.i56 ], [ %i.ek, %bb.u ]
  %i.ef = mul nsw i32 %i.ee, %i.cl
  %i.eg = load i32, ptr %i.cw, align 4, !tbaa !42
  %i.eh = add i32 %i.eg, -1
  %i.ei = udiv i32 %i.ef, %i.eh
  %i.ej = add nsw i32 %i.eb, %i.ei                ; 2 uses
  store i32 %i.ej, ptr %i.dz, align 4, !tbaa !47
  store i32 %i.ej, ptr %i.ec, align 4, !tbaa !48
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !49
  call void @lv_draw_line(ptr noundef nonnull %i.ca, ptr noundef nonnull %8) #8
  %i.ek = add i16 %.06990.i, 1                    ; 2 uses
  %i.el = sext i16 %i.ek to i32                   ; 2 uses
  %i.em = icmp sgt i32 %i.dw, %i.el
  br i1 %i.em, label %bb.u, label %.loopexit89.i, !llvm.loop !50

.loopexit89.i:                                    ; preds = %bb.u, %bb.t, %bb.n
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !51 ; 4 uses
  %i.ep = icmp ugt i32 %i.eo, 1
  br i1 %i.ep, label %bb.v, label %draw_div_lines.exit

bb.v:                                             ; preds = %.loopexit89.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !30
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.et = load i32, ptr %i.es, align 4, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 68
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !52
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 76
  store i32 %i.ex, ptr %i.ez, align 4, !tbaa !48
  %i.fa = icmp ugt i8 %i.cp, 2
  %i.fb = icmp sgt i32 %.sroa.0.0.extract.trunc.i82.i, 0
  %or.cond3.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond3.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.fc = and i32 %.sroa.0.0.extract.trunc.i83.i, 4
  %.not74.i = icmp eq i32 %i.fc, 0
  br i1 %.not74.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fd = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = and i64 %i.fe, 4294967295
  %i.fg = icmp eq i64 %i.ff, 0
  %spec.select78.i = zext i1 %i.fg to i16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2.i = phi i16 [ 0, %bb.w ], [ %spec.select78.i, %bb.x ] ; 2 uses
  %i.fh = and i32 %.sroa.0.0.extract.trunc.i83.i, 8
  %.not75.i = icmp eq i32 %i.fh, 0
  br i1 %.not75.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = icmp eq i64 %i.fk, 0
  %i.fm = sext i1 %i.fl to i32
  %spec.select79.i = add i32 %i.eo, %i.fm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.v
  %.170.i = phi i32 [ %i.eo, %bb.v ], [ %spec.select79.i, %bb.z ], [ %i.eo, %bb.y ]
  %.3.i = phi i16 [ 0, %bb.v ], [ %.2.i, %bb.z ], [ %.2.i, %bb.y ] ; 2 uses
  %sext76.i = shl i32 %.170.i, 16
  %i.fn = ashr exact i32 %sext76.i, 16            ; 2 uses
  %i.fo = zext nneg i16 %.3.i to i32              ; 2 uses
  %i.fp = icmp sgt i32 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph92.i, label %draw_div_lines.exit

.lr.ph92.i:                                       ; preds = %bb.aa
  %i.fq = sub i32 %i.ci, %i.cu
  %i.fr = add i32 %i.fq, %i.er
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph92.i
  %i.ft = phi i32 [ %i.fo, %.lr.ph92.i ], [ %i.ga, %bb.ab ] ; 2 uses
  %.17091.i = phi i16 [ %.3.i, %.lr.ph92.i ], [ %i.fz, %bb.ab ]
  %i.fu = mul nsw i32 %i.ft, %i.ck
  %i.fv = load i32, ptr %i.en, align 8, !tbaa !51
  %i.fw = add i32 %i.fv, -1
  %i.fx = udiv i32 %i.fu, %i.fw
  %i.fy = add nsw i32 %i.fr, %i.fx                ; 2 uses
  store i32 %i.fy, ptr %i.eu, align 8, !tbaa !44
  store i32 %i.fy, ptr %i.ey, align 8, !tbaa !46
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !49
  call void @lv_draw_line(ptr noundef nonnull %i.ca, ptr noundef nonnull %8) #8
  %i.fz = add i16 %.17091.i, 1                    ; 2 uses
  %i.ga = sext i16 %i.fz to i32                   ; 2 uses
  %i.gb = icmp sgt i32 %i.fn, %i.ga
  br i1 %i.gb, label %bb.ab, label %draw_div_lines.exit, !llvm.loop !53

draw_div_lines.exit:                              ; preds = %bb.ab, %.loopexit89.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.gd = call zeroext i1 @lv_ll_is_empty(ptr noundef nonnull %i.gc) #8
  br i1 %i.gd, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %draw_div_lines.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.gf = load i8, ptr %i.ge, align 8
  %i.gg = and i8 %i.gf, 15
  switch i8 %i.gg, label %bb.ai [
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
    i8 4, label %bb.ag
    i8 5, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @draw_series_line(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ca)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  call fastcc void @draw_series_line(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ca)
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac
  call fastcc void @draw_series_bar(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ca)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac
  call fastcc void @draw_series_stacked(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ca)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  call fastcc void @draw_series_scatter(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ca)
  br label %bb.ai

bb.ai:                                            ; preds = %draw_div_lines.exit, %bb.ae, %bb.ag, %bb.ah, %bb.af, %bb.ad, %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.gi = call zeroext i1 @lv_ll_is_empty(ptr noundef nonnull %i.gh) #8
  br i1 %i.gi, label %draw_cursors.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %2) #8
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ca, ptr %i.gj, align 8, !tbaa !37
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %i.c, i32 noundef 393216, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %3) #8
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ca, ptr %i.gk, align 8, !tbaa !54
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %i.c, i32 noundef 393216, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.gl = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 393216, i8 noundef zeroext 1) #8 ; 2 uses
  %i.gm = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 393216, i8 noundef zeroext 1) #8 ; 2 uses
  %i.gn = insertelement <2 x ptr> poison, ptr %i.gl, i64 0
  %i.go = insertelement <2 x ptr> %i.gn, ptr %i.gm, i64 1
  %i.gp = ptrtoint <2 x ptr> %i.go to <2 x i64>
  %i.gq = trunc <2 x i64> %i.gp to <2 x i32>
  %i.gr = sdiv <2 x i32> %i.gq, splat (i32 2)
  %i.gs = shufflevector <2 x i32> %i.gr, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gt = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.gh) #8 ; 2 uses
  %.not6069.i = icmp eq ptr %i.gt, null
  br i1 %.not6069.i, label %._crit_edge.i, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.aj
  %i.gu = ptrtoint ptr %i.gl to i64
  %.sroa.0.0.extract.trunc.i.i60 = trunc i64 %i.gu to i32
  %i.gv = ptrtoint ptr %i.gm to i64
  %.sroa.0.0.extract.trunc.i68.i = trunc i64 %i.gv to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 98
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ha = add i32 %.sroa.0.0.extract.trunc.i.i60, -2
  %i.hb = icmp ult i32 %i.ha, -3
  %i.hc = add i32 %.sroa.0.0.extract.trunc.i68.i, -2
  %i.hd = icmp ult i32 %i.hc, -3
  %i.he = select i1 %i.hb, i1 %i.hd, i1 false     ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 76 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bb, %.lr.ph.i61
  %.05870.i = phi ptr [ %i.gt, %.lr.ph.i61 ], [ %i.jh, %bb.bb ] ; 7 uses
  %i.hp = call ptr @lv_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef 112) #8 ; 0 uses
  %i.hq = call ptr @lv_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 208) #8 ; 0 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.05870.i, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.gw, ptr noundef nonnull align 4 dereferenceable(3) %i.hr, i64 3, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.gx, ptr noundef nonnull align 4 dereferenceable(3) %i.hr, i64 3, i1 false), !tbaa.struct !57
  %i.hs = getelementptr inbounds nuw i8, ptr %.05870.i, i64 28
  %i.ht = load i8, ptr %i.hs, align 4
  %i.hu = and i8 %i.ht, 1
  %.not61.i = icmp eq i8 %i.hu, 0
  br i1 %.not61.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hv = load <2 x i32>, ptr %.05870.i, align 8, !tbaa !8
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.hw = getelementptr inbounds nuw i8, ptr %.05870.i, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !59 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 2147483647
  br i1 %i.hy, label %bb.bb, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.hz = getelementptr inbounds nuw i8, ptr %.05870.i, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !62
  call void @lv_chart_get_point_pos_by_id(ptr noundef nonnull %i.c, ptr noundef %i.ia, i32 noundef %i.hx, ptr noundef nonnull %6)
  %i.ib = load <2 x i32>, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.ic = phi <2 x i32> [ %i.hv, %bb.al ], [ %i.ib, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.id = load <2 x i32>, ptr %i.gy, align 8, !tbaa !8
  %i.ie = load i32, ptr %i.gy, align 8, !tbaa !30
  %i.if = add nsw <2 x i32> %i.id, %i.ic          ; 5 uses
  %i.ig = shufflevector <2 x i32> %i.if, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ih = sub nsw <4 x i32> %i.ig, %i.gs
  %i.ii = add nsw <4 x i32> %i.ig, %i.gs
  %i.ij = shufflevector <4 x i32> %i.ih, <4 x i32> %i.ii, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ij, ptr %7, align 16, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %.05870.i, i64 24 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !63 ; 3 uses
  %i.im = and i32 %i.il, 3
  %.not62.i = icmp eq i32 %i.im, 0
  br i1 %.not62.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.in = and i32 %i.il, 1
  %.not63.i = icmp eq i32 %i.in, 0
  %i.io = extractelement <2 x i32> %i.if, i64 0   ; 2 uses
  %spec.select.i63 = select i1 %.not63.i, i32 %i.io, i32 %i.ie
  store i32 %spec.select.i63, ptr %i.hf, align 8, !tbaa !44
  %i.ip = extractelement <2 x i32> %i.if, i64 1   ; 2 uses
  store i32 %i.ip, ptr %i.hg, align 4, !tbaa !47
  %i.iq = and i32 %i.il, 2
  %.not64.i = icmp eq i32 %i.iq, 0
  br i1 %.not64.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ir = load i32, ptr %i.hh, align 8, !tbaa !45
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.is = phi i32 [ %i.ir, %bb.aq ], [ %i.io, %bb.ap ]
  store i32 %i.is, ptr %i.hi, align 8, !tbaa !46
  store i32 %i.ip, ptr %i.hj, align 4, !tbaa !48
  store i32 0, ptr %i.hk, align 8, !tbaa !64
  store i32 0, ptr %i.hl, align 8, !tbaa !65
  call void @lv_draw_line(ptr noundef %i.ca, ptr noundef nonnull %4) #8
  br i1 %i.he, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @lv_draw_rect(ptr noundef %i.ca, ptr noundef nonnull %5, ptr noundef nonnull %7) #8
  br label %bb.at

end_hunk_0
begin_hunk_1_@lv_chart_get_update_mode:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i8, ptr %i.a, align 8
  %i.c = lshr i8 %i.b, 4
  %i.d = and i8 %i.c, 3
  %i.e = zext nneg i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_chart_get_hor_div_line_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_chart_get_ver_div_line_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_chart_get_x_start_point(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define void @lv_chart_get_point_pos_by_id(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not159 = icmp eq ptr %1, null
  br i1 %.not159, label %.preheader177, label %bb.c

.preheader177:                                    ; preds = %bb.b, %.preheader177
  br label %.preheader177

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %.not160 = icmp ult i32 %2, %i.b
  br i1 %.not160, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !81
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @lv_obj_get_content_width(ptr noundef nonnull %0) #8 ; 7 uses
  %i.e = tail call i32 @lv_obj_get_content_height(ptr noundef nonnull %0) #8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 15
  switch i8 %i.h, label %bb.v [
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 5, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.i = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = mul i32 %i.d, %2
  %i.l = add i32 %i.i, -1
  %i.m = udiv i32 %i.k, %i.l
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %storemerge167 = phi i32 [ %i.m, %bb.g ], [ 0, %bb.f ]
  store i32 %storemerge167, ptr %3, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = getelementptr i8, ptr %1, i64 24
  %.val171 = load i8, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = lshr i8 %.val171, 4
  %i.v = and i8 %i.u, 1
  %i.w = zext nneg i8 %i.v to i64                 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.w
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = tail call i32 @lv_map(i32 noundef %i.r, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef 0, i32 noundef %i.e) #8
  %i.ad = sub nsw i32 %i.e, %i.ac
  br label %bb.w

bb.i:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25
  %i.af = zext i32 %2 to i64                      ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = lshr i8 %i.ak, 3
  %i.am = and i8 %i.al, 1
  %i.an = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = tail call i32 @lv_map(i32 noundef %i.ah, i32 noundef %i.ap, i32 noundef %i.as, i32 noundef 0, i32 noundef %i.d) #8
  store i32 %i.at, ptr %3, align 4, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.af
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %.val170 = load i8, ptr %i.aj, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = lshr i8 %.val170, 4
  %i.ba = and i8 %i.az, 1
  %i.bb = zext nneg i8 %i.ba to i64               ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bb
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = tail call i32 @lv_map(i32 noundef %i.ax, i32 noundef %i.bd, i32 noundef %i.bg, i32 noundef 0, i32 noundef %i.e) #8
  %i.bi = sub nsw i32 %i.e, %i.bh
  br label %bb.w

bb.j:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bk = tail call i32 @lv_ll_get_len(ptr noundef nonnull %i.bj) #8 ; 4 uses
  %i.bl = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 327680, i8 noundef zeroext 30) #8
  %i.bm = ptrtoint ptr %i.bl to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bm to i32
  %i.bn = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.bo = ptrtoint ptr %i.bn to i64
  %.sroa.0.0.extract.trunc.i172 = trunc i64 %i.bo to i32 ; 2 uses
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !33  ; 3 uses
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  %i.br = mul i32 %i.bq, %.sroa.0.0.extract.trunc.i172
  %i.bs = sub i32 %i.d, %i.br
  %i.bt = udiv i32 %i.bs, %i.bp                   ; 3 uses
  %i.bu = icmp ugt i32 %i.bp, 1
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = sub nsw i32 %i.d, %i.bt
  %i.bw = mul i32 %i.bv, %2
  %i.bx = udiv i32 %i.bw, %i.bq
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %storemerge163 = phi i32 [ %i.bx, %bb.k ], [ 0, %bb.j ]
  store i32 %storemerge163, ptr %3, align 4, !tbaa !31
  %i.by = tail call ptr @lv_ll_get_head(ptr noundef nonnull %i.bj) #8 ; 3 uses
  %.not164183 = icmp eq ptr %i.by, null
  %i.bz = icmp eq ptr %i.by, %1
  %or.cond184 = or i1 %.not164183, %i.bz
  br i1 %or.cond184, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.l, %.lr.ph188
  %.0148186 = phi ptr [ %i.cb, %.lr.ph188 ], [ %i.by, %bb.l ]
  %.0149185 = phi i32 [ %i.ca, %.lr.ph188 ], [ 0, %bb.l ]
  %i.ca = add i32 %.0149185, 1                    ; 2 uses
  %i.cb = tail call ptr @lv_ll_get_next(ptr noundef nonnull %i.bj, ptr noundef nonnull %.0148186) #8 ; 3 uses
  %.not164 = icmp eq ptr %i.cb, null
  %i.cc = icmp eq ptr %i.cb, %1
  %or.cond = or i1 %.not164, %i.cc
  br i1 %or.cond, label %._crit_edge189.loopexit, label %.lr.ph188, !llvm.loop !82

._crit_edge189.loopexit:                          ; preds = %.lr.ph188
  %i.cd = mul i32 %i.ca, %i.bt
  br label %._crit_edge189

._crit_edge189:                                   ; preds = %._crit_edge189.loopexit, %bb.l
  %.0150.lcssa = phi i32 [ 0, %bb.l ], [ %i.cd, %._crit_edge189.loopexit ]
  %i.ce = add nsw i32 %i.d, %.sroa.0.0.extract.trunc.i172
  %i.cf = mul i32 %i.ce, %2
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ch = udiv i32 %i.cf, %i.cg                   ; 2 uses
  %.not165 = icmp eq i32 %i.bk, 0
  br i1 %.not165, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge189
  %i.ci = udiv i32 %.0150.lcssa, %i.bk
  %i.cj = add i32 %i.ci, %i.ch
  %i.ck = add i32 %i.bk, -1
  %i.cl = mul i32 %i.ck, %.sroa.0.0.extract.trunc.i
  %i.cm = sub i32 %i.bt, %i.cl
  %i.cn = udiv i32 %i.cm, %i.bk
  %i.co = sdiv i32 %i.cn, 2
  %i.cp = add nsw i32 %i.cj, %i.co
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge189, %bb.m
  %storemerge166 = phi i32 [ %i.cp, %bb.m ], [ %i.ch, %._crit_edge189 ]
  store i32 %storemerge166, ptr %3, align 4, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cs = zext i32 %2 to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = getelementptr i8, ptr %1, i64 24
  %.val169 = load i8, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cx = lshr i8 %.val169, 4
  %i.cy = and i8 %i.cx, 1
  %i.cz = zext nneg i8 %i.cy to i64               ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cz
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8
  %i.df = tail call i32 @lv_map(i32 noundef %i.cu, i32 noundef %i.db, i32 noundef %i.de, i32 noundef 0, i32 noundef %i.e) #8
  %i.dg = sub nsw i32 %i.e, %i.df
  br label %bb.w

bb.o:                                             ; preds = %bb.e
  %i.dh = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.di = ptrtoint ptr %i.dh to i64
  %.sroa.0.0.extract.trunc.i173 = trunc i64 %i.di to i32
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !33  ; 3 uses
  %i.dk = add i32 %i.dj, -1                       ; 2 uses
  %i.dl = mul i32 %i.dk, %.sroa.0.0.extract.trunc.i173
  %i.dm = sub i32 %i.d, %i.dl
  %i.dn = udiv i32 %i.dm, %i.dj                   ; 2 uses
  %i.do = icmp ugt i32 %i.dj, 1
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = sub nsw i32 %i.d, %i.dn
  %i.dq = mul i32 %i.dp, %2
  %i.dr = udiv i32 %i.dq, %i.dk
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %storemerge = phi i32 [ %i.dr, %bb.p ], [ 0, %bb.o ]
  %i.ds = sdiv i32 %i.dn, 2
  %i.dt = add nsw i32 %storemerge, %i.ds
  store i32 %i.dt, ptr %3, align 4, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dv = tail call ptr @lv_ll_get_head(ptr noundef nonnull %i.du) #8 ; 2 uses
  %.not161178 = icmp eq ptr %i.dv, null
  br i1 %.not161178, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.u
  %.0150180 = phi i32 [ %.2, %bb.u ], [ 0, %bb.q ] ; 2 uses
  %.0151179 = phi ptr [ %i.er, %bb.u ], [ %i.dv, %bb.q ] ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0151179, i64 24
  %i.dx = load i8, ptr %i.dw, align 8
  %i.dy = and i8 %i.dx, 1
  %.not162 = icmp eq i8 %i.dy, 0
  br i1 %.not162, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.lr.ph
  %i.dz = load i8, ptr %i.f, align 8
  %i.ea = and i8 %i.dz, 48
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %.0151179, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !70
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ee = phi i32 [ %i.ed, %bb.s ], [ 0, %bb.r ]
  %i.ef = add i32 %i.ee, %2
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !33
  %i.eh = urem i32 %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.0151179, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ek = sext i32 %i.eh to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8  ; 2 uses
  %i.en = add i32 %i.em, -1
  %or.cond168 = icmp ult i32 %i.en, 2147483646    ; 2 uses
  %i.eo = icmp eq ptr %.0151179, %1
  %i.ep = select i1 %or.cond168, i32 %i.em, i32 0
  %.1 = add nuw nsw i32 %i.ep, %.0150180          ; 2 uses
  %i.eq = and i1 %i.eo, %or.cond168
  br i1 %i.eq, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph
  %.2 = phi i32 [ %.0150180, %.lr.ph ], [ %.1, %bb.t ] ; 2 uses
  %i.er = tail call ptr @lv_ll_get_next(ptr noundef nonnull %i.du, ptr noundef nonnull %.0151179) #8 ; 2 uses
  %.not161 = icmp eq ptr %i.er, null
  br i1 %.not161, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.u, %bb.t, %bb.q
  %.3 = phi i32 [ 0, %bb.q ], [ %.1, %bb.t ], [ %.2, %bb.u ]
  %i.es = getelementptr i8, ptr %1, i64 24
  %.val = load i8, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eu = lshr i8 %.val, 4
  %i.ev = and i8 %i.eu, 1
  %i.ew = zext nneg i8 %i.ev to i64               ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ew
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !8
  %i.fc = tail call i32 @lv_map(i32 noundef %.3, i32 noundef %i.ey, i32 noundef %i.fb, i32 noundef 0, i32 noundef %i.e) #8
  %i.fd = sub nsw i32 %i.e, %i.fc
  br label %bb.w

bb.v:                                             ; preds = %bb.e
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %bb.i, %._crit_edge, %bb.v, %bb.n, %bb.h
  %.sink = phi i32 [ %i.bi, %bb.i ], [ %i.fd, %._crit_edge ], [ 0, %bb.v ], [ %i.dg, %bb.n ], [ %i.ad, %bb.h ]
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sink, ptr %i.fe, align 4, !tbaa !81
  %i.ff = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.fg = ptrtoint ptr %i.ff to i64
  %.sroa.0.0.extract.trunc.i174 = trunc i64 %i.fg to i32 ; 2 uses
  %i.fh = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.fi = ptrtoint ptr %i.fh to i64
  %.sroa.0.0.extract.trunc.i175 = trunc i64 %i.fi to i32
  %i.fj = load i32, ptr %3, align 4, !tbaa !31
  %i.fk = add i32 %i.fj, %.sroa.0.0.extract.trunc.i174
  %i.fl = add i32 %i.fk, %.sroa.0.0.extract.trunc.i175
  store i32 %i.fl, ptr %3, align 4, !tbaa !31
  %i.fm = tail call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %0) #8
  %i.fn = load i32, ptr %3, align 4, !tbaa !31
  %i.fo = sub nsw i32 %i.fn, %i.fm
  store i32 %i.fo, ptr %3, align 4, !tbaa !31
  %i.fp = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.fq = ptrtoint ptr %i.fp to i64
  %.sroa.0.0.extract.trunc.i176 = trunc i64 %i.fq to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !81
  %i.ft = add i32 %i.fs, %.sroa.0.0.extract.trunc.i174
  %i.fu = add i32 %i.ft, %.sroa.0.0.extract.trunc.i176
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !81
  %i.fv = tail call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %0) #8
  %i.fw = load i32, ptr %i.fr, align 4, !tbaa !81
  %i.fx = sub nsw i32 %i.fw, %i.fv
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !81
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.d
  ret void
}

declare i32 @lv_obj_get_content_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_content_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_map(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_ll_get_len(ptr noundef) local_unnamed_addr #2

declare ptr @lv_ll_get_head(ptr noundef) local_unnamed_addr #2

declare ptr @lv_ll_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_left(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_top(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @lv_chart_add_series(ptr noundef %0, i24 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = tail call ptr @lv_ll_ins_tail(ptr noundef nonnull %i.a) #8 ; 13 uses
  %.not46 = icmp eq ptr %i.b, null
  br i1 %.not46, label %.preheader52, label %bb.c

.preheader52:                                     ; preds = %bb.b, %.preheader52
  br label %.preheader52

bb.c:                                             ; preds = %bb.b
  tail call void @lv_memset(ptr noundef nonnull %i.b, i8 noundef zeroext 0, i64 noundef 32) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call ptr @lv_malloc(i64 noundef %i.f) #8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  %.not47 = icmp eq ptr %i.g, null
  br i1 %.not47, label %.preheader53, label %bb.d

.preheader53:                                     ; preds = %bb.c, %.preheader53
  br label %.preheader53

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load i8, ptr %i.i, align 8
  %i.k = and i8 %i.j, 15
  %i.l = icmp eq i8 %i.k, 5
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.c, align 4, !tbaa !33
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = tail call ptr @lv_malloc(i64 noundef %i.o) #8 ; 3 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !25
  %.not48 = icmp eq ptr %i.p, null
  br i1 %.not48, label %.preheader54, label %bb.f

.preheader54:                                     ; preds = %bb.e, %.preheader54
  br label %.preheader54

.thread:                                          ; preds = %bb.d
  store ptr null, ptr %i.b, align 8, !tbaa !25
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.q = icmp eq ptr %.pre, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @lv_free(ptr noundef nonnull %i.p) #8
  store ptr null, ptr %i.b, align 8, !tbaa !25
  tail call void @lv_ll_remove(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  tail call void @lv_free(ptr noundef nonnull %i.b) #8
  br label %.loopexit

bb.h:                                             ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.g, %.thread ], [ %.pre, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i24 %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = trunc i32 %2 to i8                       ; 2 uses
  %i.x = shl i8 %i.w, 1
  %i.y = and i8 %i.x, 8
  %i.z = and i8 %i.v, -30
  %i.aa = shl i8 %i.w, 4
  %i.ab = and i8 %i.aa, 16
  %i.ac = or disjoint i8 %i.ab, %i.y
  %i.ad = or disjoint i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.u, align 8
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !33
  %.not57 = icmp eq i32 %i.ae, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.056 = phi ptr [ %i.af, %.lr.ph ], [ %i.r, %bb.h ] ; 2 uses
  %.04155 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %bb.h ]
  store i32 2147483647, ptr %.056, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %.056, i64 4
  %i.ag = add nuw i32 %.04155, 1                  ; 2 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !33
  %i.ai = icmp ult i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.042 = phi ptr [ null, %bb.g ], [ %i.b, %bb.h ], [ %i.b, %.lr.ph ]
  ret ptr %.042
}

declare ptr @lv_ll_ins_tail(ptr noundef) local_unnamed_addr #2

declare void @lv_ll_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @lv_chart_remove_series(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %.preheader20, label %bb.c

end_hunk_1
begin_hunk_2_@draw_series_line:bb.a
  br i1 %i.eu, label %bb.n, label %._crit_edge.loopexit, !llvm.loop !104

._crit_edge.loopexit:                             ; preds = %bb.n, %bb.z
  %.0138.lcssa.ph = phi i32 [ %i.es, %bb.z ], [ %.0138189, %bb.n ]
  %i.ev = add i32 %.0138.lcssa.ph, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.0138.lcssa = phi i32 [ -1, %bb.m ], [ %i.ev, %._crit_edge.loopexit ]
  call void @lv_draw_line(ptr noundef %1, ptr noundef nonnull %2) #8
  %.pre204 = load i32, ptr %i.ac, align 4, !tbaa !49 ; 4 uses
  br i1 %.not, label %bb.aa, label %.sink.split218

bb.aa:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.by, ptr noundef nonnull align 8 dereferenceable(3) %i.ch, i64 3, i1 false), !tbaa.struct !57
  store i32 %.pre204, ptr %i.bz, align 4, !tbaa !66
  br i1 %or.cond, label %bb.ab, label %.sink.split218

bb.ab:                                            ; preds = %bb.aa
  store i32 %.0138.lcssa, ptr %i.cc, align 8, !tbaa !65
  %i.ew = load i32, ptr %i.bq, align 8, !tbaa !96 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph195.preheader, label %.sink.split218

.lr.ph195.preheader:                              ; preds = %bb.ab
  %i.ey = zext nneg i32 %i.ew to i64
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.ad
  %indvars.iv = phi i64 [ %i.ey, %.lr.ph195.preheader ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !81
  %i.fc = icmp eq i32 %i.fb, 2147483647
  br i1 %i.fc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph195
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.fd = load <2 x i32>, ptr %i.ez, align 4, !tbaa !8
  %i.fe = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ff = sub nsw <4 x i32> %i.fe, %i.an
  %i.fg = add nsw <4 x i32> %i.fe, %i.an
  %i.fh = shufflevector <4 x i32> %i.ff, <4 x i32> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.fh, ptr %4, align 16, !tbaa !8
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %i.fi = load i32, ptr %i.cc, align 8, !tbaa !65
  %i.fj = add i32 %i.fi, -1
  store i32 %i.fj, ptr %i.cc, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph195, %bb.ac
  %i.fk = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.fk, label %.lr.ph195, label %.loopexit.loopexit, !llvm.loop !105

.loopexit.loopexit:                               ; preds = %bb.ad
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !49
  br label %.sink.split218

.sink.split218:                                   ; preds = %._crit_edge, %bb.aa, %bb.ab, %.loopexit.loopexit, %bb.j
  %.sink220 = phi i32 [ %i.cg, %bb.j ], [ %.pre, %.loopexit.loopexit ], [ %.pre204, %bb.ab ], [ %.pre204, %bb.aa ], [ %.pre204, %._crit_edge ]
  %i.fl = add i32 %.sink220, -1
  store i32 %i.fl, ptr %i.ac, align 4, !tbaa !49
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split218, %bb.j
  %i.fm = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.d, ptr noundef nonnull %.0152197) #8 ; 2 uses
  %.not163 = icmp eq ptr %i.fm, null
  br i1 %.not163, label %._crit_edge201, label %bb.i, !llvm.loop !106

._crit_edge201:                                   ; preds = %bb.ae, %bb.h
  call void @lv_free(ptr noundef nonnull %i.bg) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.g, %._crit_edge201
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_series_bar(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 4          ; 7 uses
  %3 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.c = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8 ; 2 uses
  %i.d = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = tail call i32 @lv_ll_get_len(ptr noundef nonnull %i.e) #8 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.h to i32
  %i.i = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.j = ptrtoint ptr %i.i to i64
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %i.j to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 2 uses
  %i.m = add i32 %i.l, -1
  %i.n = mul i32 %i.m, %.sroa.0.0.extract.trunc.i85
  %i.o = sub i32 %i.c, %i.n
  %i.p = udiv i32 %i.o, %i.l                      ; 2 uses
  %i.q = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 327680, i8 noundef zeroext 30) #8
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i86 = trunc i64 %i.r to i32 ; 2 uses
  %i.s = add i32 %i.f, -1
  %i.t = mul i32 %i.s, %.sroa.0.0.extract.trunc.i86
  %i.u = sub i32 %i.p, %i.t
  %i.v = udiv i32 %i.u, %i.f
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1) ; 2 uses
  %i.w = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.x = ptrtoint ptr %i.w to i64
  %.sroa.0.0.extract.trunc.i87 = trunc i64 %i.x to i32 ; 2 uses
  %i.y = tail call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %0) #8
  %i.z = sub i32 %.sroa.0.0.extract.trunc.i, %i.y
  %i.aa = add nsw i32 %i.z, %.sroa.0.0.extract.trunc.i87
  %i.ab = tail call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %3) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.ac, align 8, !tbaa !54
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %3) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 115 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, -16
  store i8 %i.af, ptr %i.ad, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 94
  store i8 -1, ptr %i.ag, align 2, !tbaa !107
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !108
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.am, ptr %i.an, align 4, !tbaa !89
  %i.ao = load i32, ptr %i.k, align 4, !tbaa !33  ; 2 uses
  %.not99 = icmp eq i32 %i.ao, 0
  br i1 %.not99, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.b
  %i.ap = ptrtoint ptr %i.b to i64
  %.sroa.0.0.extract.trunc.i84 = trunc i64 %i.ap to i32
  %i.aq = sub nsw i32 %i.c, %i.p
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = add nsw i32 %spec.store.select, %.sroa.0.0.extract.trunc.i86
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 98
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = add i32 %i.d, %.sroa.0.0.extract.trunc.i84
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = add i32 %i.bc, %.sroa.0.0.extract.trunc.i87
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph97, %._crit_edge
  %i.bf = phi i32 [ %i.ao, %.lr.ph97 ], [ %i.dh, %._crit_edge ] ; 2 uses
  %.07895 = phi i32 [ 0, %.lr.ph97 ], [ %i.dg, %._crit_edge ] ; 4 uses
  %i.bg = icmp ult i32 %i.bf, 2
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bh = load i32, ptr %i.ah, align 8, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bi = mul i32 %.07895, %i.aq
  %i.bj = add i32 %i.bf, -1
  %i.bk = udiv i32 %i.bi, %i.bj
  %i.bl = load i32, ptr %i.ah, align 8, !tbaa !30
  %i.bm = add i32 %i.bl, %i.bk
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi i32 [ %i.bh, %bb.d ], [ %i.bm, %bb.e ]
  store i32 %.07895, ptr %i.ar, align 8, !tbaa !65
  store i32 0, ptr %i.as, align 4, !tbaa !66
  %i.bn = call ptr @lv_ll_get_head(ptr noundef nonnull %i.e) #8 ; 2 uses
  %.not91 = icmp eq ptr %i.bn, null
  br i1 %.not91, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.0 = add i32 %i.aa, %.pn
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %.07693 = phi ptr [ %i.df, %.thread ], [ %i.bn, %.lr.ph.preheader ] ; 5 uses
  %.192 = phi i32 [ %.2, %.thread ], [ %.0, %.lr.ph.preheader ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.07693, i64 24 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8
  %i.bq = and i8 %i.bp, 1
  %.not81 = icmp eq i8 %i.bq, 0
  br i1 %.not81, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.br = load i8, ptr %i.au, align 8
  %i.bs = and i8 %i.br, 48
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %.07693, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bw = phi i32 [ %i.bv, %bb.h ], [ 0, %bb.g ]
  store i32 %.192, ptr %2, align 4, !tbaa !90
  %i.bx = add nsw i32 %.192, %spec.store.select   ; 2 uses
  %i.by = add nsw i32 %i.bx, -1
  store i32 %i.by, ptr %i.av, align 4, !tbaa !91
  %i.bz = add nsw i32 %i.aw, %.192
  %i.ca = load i32, ptr %i.ax, align 8, !tbaa !103
  %.not82 = icmp sgt i32 %i.bx, %i.ca
  br i1 %.not82, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %i.at, align 8, !tbaa !97
  %i.cc = icmp sgt i32 %.192, %i.cb
  br i1 %i.cc, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.07693, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.ay, ptr noundef nonnull align 8 dereferenceable(3) %i.cd, i64 3, i1 false), !tbaa.struct !57
  %i.ce = add i32 %i.bw, %.07895
  %i.cf = load i32, ptr %i.k, align 4, !tbaa !33
  %i.cg = urem i32 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.07693, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !21
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = load i8, ptr %i.bo, align 8
  %i.cn = lshr i8 %i.cm, 4
  %i.co = and i8 %i.cn, 1
  %i.cp = zext nneg i8 %i.co to i64               ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8  ; 2 uses
  %i.cs = sub nsw i32 %i.cl, %i.cr
  %i.ct = mul nsw i32 %i.cs, %i.d
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cp
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = sub nsw i32 %i.cv, %i.cr
  %i.cx = sdiv i32 %i.ct, %i.cw
  %i.cy = load i32, ptr %i.bb, align 4, !tbaa !43
  %i.cz = add i32 %i.ab, %i.cx
  %i.da = sub i32 %i.be, %i.cz
  %i.db = add i32 %i.da, %i.cy
  store i32 %i.db, ptr %i.bd, align 4, !tbaa !88
  %i.dc = load i32, ptr %i.ck, align 4, !tbaa !8
  %.not83 = icmp eq i32 %i.dc, 2147483647
  br i1 %.not83, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @lv_draw_rect(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2) #8
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.k, %bb.l, %bb.i
  %i.dd = load i32, ptr %i.as, align 4, !tbaa !66
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.as, align 4, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.lr.ph
  %.2 = phi i32 [ %.192, %.lr.ph ], [ %i.bz, %.thread.sink.split ]
  %i.df = call ptr @lv_ll_get_next(ptr noundef nonnull %i.e, ptr noundef nonnull %.07693) #8 ; 2 uses
  %.not = icmp eq ptr %i.df, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %.thread, %bb.j, %bb.f
  %i.dg = add nuw i32 %.07895, 1                  ; 2 uses
  %i.dh = load i32, ptr %i.k, align 4, !tbaa !33  ; 2 uses
  %i.di = icmp ult i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.c, label %._crit_edge98, !llvm.loop !110

._crit_edge98:                                    ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_series_stacked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 12 uses
  %3 = alloca %struct.lv_area_t, align 4          ; 7 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 8 uses
  %5 = alloca %struct.lv_area_t, align 4          ; 6 uses
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 25) #8
  %i.c = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8 ; 2 uses
  %i.d = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.f = tail call i32 @lv_ll_get_len(ptr noundef nonnull %i.e) #8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.h to i32
  %i.i = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.j = ptrtoint ptr %i.i to i64
  %.sroa.0.0.extract.trunc.i112 = trunc i64 %i.j to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 2 uses
  %i.m = add i32 %i.l, -1
  %i.n = mul i32 %i.m, %.sroa.0.0.extract.trunc.i112
  %i.o = sub i32 %i.c, %i.n
  %i.p = udiv i32 %i.o, %i.l                      ; 2 uses
  %i.q = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i113 = trunc i64 %i.r to i32 ; 2 uses
  %i.s = tail call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %0) #8
  %i.t = sub i32 %.sroa.0.0.extract.trunc.i, %i.s
  %i.u = add nsw i32 %i.t, %.sroa.0.0.extract.trunc.i113
  %i.v = tail call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %2) #8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %1, ptr %i.w, align 8, !tbaa !54
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %2) #8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 115 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, -16
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 94
  store i8 -1, ptr %i.aa, align 2, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !33
  %.not137 = icmp eq i32 %i.ad, 0
  br i1 %.not137, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.b
  %i.ae = ptrtoint ptr %i.b to i64
  %.sroa.0.0.extract.trunc.i111 = trunc i64 %i.ae to i32
  %i.af = add i32 %.sroa.0.0.extract.trunc.i111, %.sroa.0.0.extract.trunc.i113
  %.neg136 = sub i32 %i.v, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.al = sub nsw i32 %i.c, %i.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.neg117 = add i32 %.neg136, 1                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 98
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph133, %bb.t
  %.0100131 = phi i32 [ 0, %.lr.ph133 ], [ %i.ee, %bb.t ] ; 5 uses
  store i32 %.0100131, ptr %i.ag, align 8, !tbaa !65
  store i32 0, ptr %i.ah, align 4, !tbaa !66
  %i.av = call ptr @lv_ll_get_head(ptr noundef nonnull %i.e) #8 ; 2 uses
  %.not120 = icmp eq ptr %i.av, null
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %.093122 = phi ptr [ %i.bp, %bb.g ], [ %i.av, %bb.c ] ; 4 uses
  %.095121 = phi i32 [ %.2, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.093122, i64 24
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = and i8 %i.ax, 1
  %.not109 = icmp eq i8 %i.ay, 0
  br i1 %.not109, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.az = load i8, ptr %i.ai, align 8
  %i.ba = and i8 %i.az, 48
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.093122, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.be = phi i32 [ %i.bd, %bb.e ], [ 0, %bb.d ]
  %i.bf = add i32 %i.be, %.0100131
  %i.bg = load i32, ptr %i.k, align 4, !tbaa !33
  %i.bh = urem i32 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.093122, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8  ; 2 uses
  %i.bn = add i32 %i.bm, -2147483647
  %or.cond110 = icmp ult i32 %i.bn, -2147483646
  %i.bo = select i1 %or.cond110, i32 0, i32 %i.bm
  %spec.select = add nuw nsw i32 %i.bo, %.095121
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.2 = phi i32 [ %.095121, %.lr.ph ], [ %spec.select, %bb.f ] ; 2 uses
  %i.bp = call ptr @lv_ll_get_next(ptr noundef nonnull %i.e, ptr noundef nonnull %.093122) #8 ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.095.lcssa = phi i32 [ 0, %bb.c ], [ %.2, %bb.g ]
  %i.bq = call ptr @lv_ll_get_head(ptr noundef nonnull %i.e) #8
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %.val = load i8, ptr %i.br, align 8
  %i.bs = lshr i8 %.val, 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = zext nneg i8 %i.bt to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bu
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = call i32 @lv_map(i32 noundef %.095.lcssa, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef 0, i32 noundef %i.d) #8 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 1
  %.pre138 = load i32, ptr %i.k, align 4, !tbaa !33 ; 4 uses
  br i1 %i.ca, label %bb.t, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.cb = icmp ult i32 %.pre138, 2
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.am, align 8, !tbaa !30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cd = mul i32 %.0100131, %i.al
  %i.ce = add i32 %.pre138, -1
  %i.cf = udiv i32 %i.cd, %i.ce
  %i.cg = load i32, ptr %i.am, align 8, !tbaa !30
  %i.ch = add i32 %i.cg, %i.cf
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi i32 [ %i.ch, %bb.j ], [ %i.cc, %bb.i ]
  %storemerge = add i32 %i.u, %.pn                ; 3 uses
  store i32 %storemerge, ptr %4, align 4, !tbaa !90
  %i.ci = add nsw i32 %storemerge, %i.p           ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.an, align 4, !tbaa !91
  %i.ck = load i32, ptr %3, align 4, !tbaa !90
  %.not105 = icmp sgt i32 %i.ci, %i.ck
  br i1 %.not105, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.cl = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.cm = icmp sgt i32 %storemerge, %i.cl
  br i1 %i.cm, label %._crit_edge134, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load i32, ptr %i.ao, align 4, !tbaa !52 ; 3 uses
  %i.co = load i32, ptr %i.ap, align 8, !tbaa !108
  %i.cp = add nsw i32 %i.co, %i.cn
  store i32 %i.cp, ptr %i.aq, align 4, !tbaa !89
  %i.cq = sub i32 %.neg117, %i.bz
  %i.cr = add i32 %i.cq, %i.cn
  store i32 %i.cr, ptr %i.ar, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !36
  %i.cs = call ptr @lv_ll_get_head(ptr noundef nonnull %i.e) #8 ; 2 uses
  %.not106123 = icmp eq ptr %i.cs, null
  br i1 %.not106123, label %._crit_edge130, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %bb.m
  %i.ct = add nsw i32 %i.cn, 1
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %bb.s
  %.1126 = phi ptr [ %i.ec, %bb.s ], [ %i.cs, %.lr.ph129.preheader ] ; 5 uses
  %.093126 = phi i32 [ %.1, %bb.s ], [ 0, %.lr.ph129.preheader ] ; 3 uses
  %.099124 = phi i32 [ %.194, %bb.s ], [ %i.ct, %.lr.ph129.preheader ] ; 3 uses
  %i.cu = load i8, ptr %i.ai, align 8
  %i.cv = and i8 %i.cu, 48
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph129
  %i.cx = getelementptr inbounds nuw i8, ptr %.1126, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !70
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph129, %bb.n
  %i.cz = phi i32 [ %i.cy, %bb.n ], [ 0, %.lr.ph129 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.1126, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.as, ptr noundef nonnull align 8 dereferenceable(3) %i.da, i64 3, i1 false), !tbaa.struct !57
  %i.db = add i32 %i.cz, %.0100131
  %i.dc = load i32, ptr %i.k, align 4, !tbaa !33
  %i.dd = urem i32 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.1126, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21
  %i.dg = sext i32 %i.dd to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8  ; 2 uses
  %i.dj = add i32 %i.di, -2147483647
  %or.cond = icmp ult i32 %i.dj, -2147483646
  br i1 %or.cond, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.1126, i64 24
  %i.dl = load i8, ptr %i.dk, align 8             ; 2 uses
  %i.dm = and i8 %i.dl, 1
  %.not107 = icmp eq i8 %i.dm, 0
  br i1 %.not107, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dn = add nuw nsw i32 %i.di, %.093126         ; 3 uses
  %i.do = lshr i8 %i.dl, 4
  %i.dp = and i8 %i.do, 1
  %i.dq = zext nneg i8 %i.dp to i64               ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.dq
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %i.dv = call i32 @lv_map(i32 noundef %i.dn, i32 noundef %i.ds, i32 noundef %i.du, i32 noundef 0, i32 noundef %i.d) #8
  %i.dw = add nsw i32 %.099124, -1
  store i32 %i.dw, ptr %i.at, align 4, !tbaa !89
  %i.dx = load i32, ptr %i.ao, align 4, !tbaa !52
  %i.dy = sub i32 %.neg117, %i.dv
  %i.dz = add i32 %i.dy, %i.dx                    ; 3 uses
  store i32 %i.dz, ptr %i.au, align 4, !tbaa !88
  %i.ea = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %i.ab, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @lv_draw_rect(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o, %bb.p
  %.194 = phi i32 [ %.099124, %bb.o ], [ %.099124, %bb.p ], [ %i.dz, %bb.r ], [ %i.dz, %bb.q ]
  %.1 = phi i32 [ %.093126, %bb.o ], [ %.093126, %bb.p ], [ %i.dn, %bb.r ], [ %i.dn, %bb.q ]
  %i.eb = load i32, ptr %i.ah, align 4, !tbaa !66
  %storemerge108 = add i32 %i.eb, 1
  store i32 %storemerge108, ptr %i.ah, align 4, !tbaa !66
  %i.ec = call ptr @lv_ll_get_next(ptr noundef nonnull %i.e, ptr noundef nonnull %.1126) #8 ; 2 uses
  %.not106 = icmp eq ptr %i.ec, null
  br i1 %.not106, label %._crit_edge130, label %.lr.ph129, !llvm.loop !112

._crit_edge130:                                   ; preds = %bb.s, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pre = load i32, ptr %i.k, align 4, !tbaa !33
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge130, %._crit_edge, %bb.k
  %i.ed = phi i32 [ %.pre, %._crit_edge130 ], [ %.pre138, %._crit_edge ], [ %.pre138, %bb.k ]
  %i.ee = add nuw i32 %.0100131, 1                ; 2 uses
  %i.ef = icmp ult i32 %i.ee, %i.ed
  br i1 %i.ef, label %bb.c, label %._crit_edge134, !llvm.loop !113

._crit_edge134:                                   ; preds = %bb.t, %bb.l, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %._crit_edge134
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_series_scatter(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 16 uses
  %3 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 11 uses
  %4 = alloca %struct.lv_area_t, align 16         ; 4 uses
  %5 = alloca %struct.lv_area_t, align 16         ; 11 uses
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.b = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.b to i32 ; 2 uses
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i118 = trunc i64 %i.d to i32
  %i.e = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.f = ptrtoint ptr %i.e to i64
  %.sroa.0.0.extract.trunc.i119 = trunc i64 %i.f to i32
  %i.g = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8 ; 3 uses
  %i.h = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = tail call i32 @lv_obj_get_scroll_left(ptr noundef %0) #8
  %i.l = add i32 %.sroa.0.0.extract.trunc.i118, %.sroa.0.0.extract.trunc.i
  %i.m = add i32 %i.l, %i.j
  %i.n = sub i32 %i.m, %i.k                       ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43
  %i.q = tail call i32 @lv_obj_get_scroll_top(ptr noundef %0) #8
  %i.r = add i32 %.sroa.0.0.extract.trunc.i119, %.sroa.0.0.extract.trunc.i
  %i.s = add i32 %i.r, %i.p
  %i.t = sub i32 %i.s, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %2) #8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %1, ptr %i.u, align 8, !tbaa !37
  call void @lv_obj_init_draw_line_dsc(ptr noundef %0, i32 noundef 327680, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %3) #8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.v, align 8, !tbaa !54
  call void @lv_obj_init_draw_rect_dsc(ptr noundef %0, i32 noundef 131072, ptr noundef nonnull %3) #8
  %i.w = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 1) #8 ; 2 uses
  %i.x = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 2) #8 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.x, i64 1
  %6 = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = ptrtoint <4 x ptr> %6 to <4 x i64>
  %i.ab = ptrtoint ptr %i.w to i64
  %.sroa.0.0.extract.trunc.i121 = trunc i64 %i.y to i32
  %8 = trunc <4 x i64> %7 to <4 x i32>
  %.sroa.0.0.extract.trunc.i120 = trunc i64 %i.ab to i32
  %9 = sdiv <4 x i32> %8, splat (i32 2)           ; 5 uses
  %i.ac = extractelement <4 x i32> %9, i64 0      ; 3 uses
  %i.ad = extractelement <4 x i32> %9, i64 1      ; 3 uses
  %i.ae = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = icmp sgt i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 109 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = or i8 %i.ak, 4
  store i8 %i.al, ptr %i.aj, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.am = icmp eq i32 %i.ag, 1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 109 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = or i8 %i.ao, 4
  store i8 %i.ap, ptr %i.an, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ar = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.aq) #8 ; 2 uses
  %.not129 = icmp eq ptr %i.ar, null
  br i1 %.not129, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 98
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 4 uses
  %i.bc = add i32 %i.t, %i.h                      ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = add i32 %.sroa.0.0.extract.trunc.i120, -2
  %i.bh = icmp ult i32 %i.bg, -3
  %i.bi = add i32 %.sroa.0.0.extract.trunc.i121, -2
  %i.bj = icmp ult i32 %i.bi, -3
  %or.cond = and i1 %i.bh, %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph132, %bb.y
  %.0108130 = phi ptr [ %i.ar, %.lr.ph132 ], [ %i.he, %bb.y ] ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108130, i64 24 ; 7 uses
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = and i8 %i.br, 1
  %.not111 = icmp eq i8 %i.bs, 0
  br i1 %.not111, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %.0108130, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.as, ptr noundef nonnull align 8 dereferenceable(3) %i.bt, i64 3, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.at, ptr noundef nonnull align 8 dereferenceable(3) %i.bt, i64 3, i1 false), !tbaa.struct !57
  %i.bu = load i8, ptr %i.au, align 8
  %i.bv = and i8 %i.bu, 48
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.0108130, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.h ], [ 0, %bb.g ]  ; 5 uses
  store i32 %i.n, ptr %i.av, align 8, !tbaa !44
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %.0108130, i64 8 ; 7 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.cc = sext i32 %i.bz to i64                   ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %.not112 = icmp eq i32 %i.ce, 10
  br i1 %.not112, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %.0108130, align 8, !tbaa !25
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cc
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = load i8, ptr %i.bq, align 8
  %i.cj = lshr i8 %i.ci, 3
  %i.ck = and i8 %i.cj, 1
  %i.cl = zext nneg i8 %i.ck to i64               ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.cl
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = call i32 @lv_map(i32 noundef %i.ch, i32 noundef %i.cn, i32 noundef %i.cp, i32 noundef 0, i32 noundef %i.g) #8
  %i.cr = add nsw i32 %i.cq, %i.n
  store i32 %i.cr, ptr %i.aw, align 8, !tbaa !46
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cc
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = load i8, ptr %i.bq, align 8
  %i.cw = lshr i8 %i.cv, 4
  %i.cx = and i8 %i.cw, 1
  %i.cy = zext nneg i8 %i.cx to i64               ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cy
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = call i32 @lv_map(i32 noundef %i.cu, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef 0, i32 noundef %i.h) #8
  %i.de = sub i32 %i.bc, %i.dd
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 -536870911, ptr %i.aw, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge = phi i32 [ %i.de, %bb.j ], [ -536870911, %bb.k ] ; 2 uses
  store i32 %storemerge, ptr %i.bb, align 4, !tbaa !48
  %i.df = load i32, ptr %i.bd, align 4, !tbaa !33 ; 3 uses
  %.not134 = icmp eq i32 %i.df, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.dg = load i32, ptr %i.aw, align 8, !tbaa !46
  store i32 %i.dg, ptr %i.av, align 8, !tbaa !44
  store i32 %storemerge, ptr %i.be, align 4, !tbaa !47
  %i.dh = urem i32 %i.bz, %i.df                   ; 2 uses
  %i.di = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.dj = sext i32 %i.dh to i64                   ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8  ; 2 uses
  %.not113.peel = icmp eq i32 %i.dl, 2147483647
  br i1 %.not113.peel, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.preheader
  %i.dm = load i8, ptr %i.bq, align 8
  %i.dn = lshr i8 %i.dm, 4
  %i.do = and i8 %i.dn, 1
  %i.dp = zext nneg i8 %i.do to i64               ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.dp
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = call i32 @lv_map(i32 noundef %i.dl, i32 noundef %i.dr, i32 noundef %i.dt, i32 noundef 0, i32 noundef %i.h) #8
  %i.dv = sub i32 %i.bc, %i.du
  store i32 %i.dv, ptr %i.bb, align 4, !tbaa !48
  %i.dw = load ptr, ptr %.0108130, align 8, !tbaa !25
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dj
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = load i8, ptr %i.bq, align 8
  %i.ea = lshr i8 %i.dz, 3
  %i.eb = and i8 %i.ea, 1
  %i.ec = zext nneg i8 %i.eb to i64               ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ec
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  %i.eh = call i32 @lv_map(i32 noundef %i.dy, i32 noundef %i.ee, i32 noundef %i.eg, i32 noundef 0, i32 noundef %i.g) #8
  %i.ei = add nsw i32 %i.eh, %i.n                 ; 3 uses
  store i32 %i.ei, ptr %i.aw, align 8, !tbaa !46
  %i.ej = load i32, ptr %i.bd, align 4, !tbaa !33 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.el = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.dj
  %i.en = load i32, ptr %i.em, align 4, !tbaa !8
  %.not117.peel = icmp eq i32 %i.en, 2147483647
  br i1 %.not117.peel, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.eo = sub nsw i32 %i.ei, %i.ac
  store i32 %i.eo, ptr %5, align 16, !tbaa !90
  %i.ep = add nsw i32 %i.ei, %i.ac
  store i32 %i.ep, ptr %i.bl, align 8, !tbaa !91
  %i.eq = load i32, ptr %i.bb, align 4, !tbaa !48 ; 2 uses
  %i.er = sub nsw i32 %i.eq, %i.ad
  store i32 %i.er, ptr %i.bm, align 4, !tbaa !88
  %i.es = add nsw i32 %i.eq, %i.ad
  store i32 %i.es, ptr %i.bn, align 4, !tbaa !89
  store i32 0, ptr %i.bk, align 8, !tbaa !65
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pre = load i32, ptr %i.bd, align 4, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %.lr.ph.preheader
  %i.et = phi i32 [ %.pre, %bb.o ], [ %i.df, %.lr.ph.preheader ], [ %i.ej, %bb.m ] ; 2 uses
  %.2.peel = phi i32 [ %i.bz, %bb.o ], [ %i.dh, %.lr.ph.preheader ], [ %i.bz, %bb.m ]
  %i.eu = icmp ugt i32 %i.et, 1
  br i1 %i.eu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.x
  %i.ev = phi i32 [ %i.gx, %bb.x ], [ %i.et, %bb.p ] ; 2 uses
  %.0128 = phi i32 [ %i.ey, %bb.x ], [ %.2.peel, %bb.p ]
  %.0109125 = phi i32 [ %i.gy, %bb.x ], [ 1, %bb.p ] ; 5 uses
  %i.ew = load <2 x i32>, ptr %i.aw, align 8, !tbaa !8
  store <2 x i32> %i.ew, ptr %i.av, align 8, !tbaa !8
  %i.ex = add i32 %.0109125, %i.bz
  %i.ey = urem i32 %i.ex, %i.ev                   ; 2 uses
  %i.ez = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.fa = sext i32 %i.ey to i64                   ; 4 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !8  ; 2 uses
  %.not113 = icmp eq i32 %i.fc, 2147483647
  br i1 %.not113, label %bb.x, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.fd = load i8, ptr %i.bq, align 8
  %i.fe = lshr i8 %i.fd, 4
  %i.ff = and i8 %i.fe, 1
  %i.fg = zext nneg i8 %i.ff to i64               ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !8
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.fg
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !8
  %i.fl = call i32 @lv_map(i32 noundef %i.fc, i32 noundef %i.fi, i32 noundef %i.fk, i32 noundef 0, i32 noundef %i.h) #8
  %i.fm = sub i32 %i.bc, %i.fl
  store i32 %i.fm, ptr %i.bb, align 4, !tbaa !48
  %i.fn = load ptr, ptr %.0108130, align 8, !tbaa !25
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fa
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8
  %i.fq = load i8, ptr %i.bq, align 8
  %i.fr = lshr i8 %i.fq, 3
  %i.fs = and i8 %i.fr, 1
  %i.ft = zext nneg i8 %i.fs to i64               ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ft
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !8
  %i.fy = call i32 @lv_map(i32 noundef %i.fp, i32 noundef %i.fv, i32 noundef %i.fx, i32 noundef 0, i32 noundef %i.g) #8
  %i.fz = add nsw i32 %i.fy, %i.n
  store i32 %i.fz, ptr %i.aw, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ga = load <2 x i32>, ptr %i.av, align 8, !tbaa !8
  %i.gb = shufflevector <2 x i32> %i.ga, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gc = sub nsw <4 x i32> %i.gb, %10
  %i.gd = add nsw <4 x i32> %i.gb, %10
  %i.ge = shufflevector <4 x i32> %i.gc, <4 x i32> %i.gd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ge, ptr %4, align 16, !tbaa !8
  %i.gf = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %i.gg = sext i32 %.0128 to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !8
  %.not115 = icmp eq i32 %i.gi, 2147483647
  br i1 %.not115, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.fa
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !8
  %.not116 = icmp eq i32 %i.gk, 2147483647
  br i1 %.not116, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gl = add i32 %.0109125, -1                   ; 2 uses
  store i32 %i.gl, ptr %i.bf, align 8, !tbaa !64
  call void @lv_draw_line(ptr noundef %1, ptr noundef nonnull %2) #8
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.gl, ptr %i.bk, align 8, !tbaa !65
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.r, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.gm = load i32, ptr %i.bd, align 4, !tbaa !33 ; 3 uses
  %i.gn = add i32 %i.gm, -1
  %i.go = icmp eq i32 %.0109125, %i.gn
  br i1 %i.go, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gp = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.fa
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !8
  %.not117 = icmp eq i32 %i.gr, 2147483647
  br i1 %.not117, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.gs = load <2 x i32>, ptr %i.aw, align 8, !tbaa !8
  %i.gt = shufflevector <2 x i32> %i.gs, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gu = sub nsw <4 x i32> %i.gt, %9
  %i.gv = add nsw <4 x i32> %i.gt, %9
  %i.gw = shufflevector <4 x i32> %i.gu, <4 x i32> %i.gv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.gw, ptr %5, align 16, !tbaa !8
  store i32 %.0109125, ptr %i.bk, align 8, !tbaa !65
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pre137 = load i32, ptr %i.bd, align 4, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.u, %bb.w, %bb.v
  %i.gx = phi i32 [ %i.ev, %.lr.ph ], [ %i.gm, %bb.u ], [ %.pre137, %bb.w ], [ %i.gm, %bb.v ] ; 2 uses
  %i.gy = add nuw i32 %.0109125, 1                ; 2 uses
  %i.gz = icmp ult i32 %i.gy, %i.gx
  br i1 %i.gz, label %.lr.ph, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.x, %bb.n, %bb.p, %bb.l
  %i.ha = load i32, ptr %i.bo, align 4, !tbaa !49
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr %i.bo, align 4, !tbaa !49
  %i.hc = load i32, ptr %i.bp, align 4, !tbaa !66
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.bp, align 4, !tbaa !66
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %._crit_edge
  %i.he = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.aq, ptr noundef nonnull %.0108130) #8 ; 2 uses
  %.not = icmp eq ptr %i.he, null
  br i1 %.not, label %._crit_edge133, label %bb.f, !llvm.loop !116

._crit_edge133:                                   ; preds = %bb.y, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

declare void @lv_draw_line_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_line_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_line(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_rect_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !20, i64 80}
!10 = !{!"_lv_chart_t", !11, i64 0, !19, i64 72, !19, i64 96, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 168}
!11 = !{!"_lv_obj_t", !12, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !13, i64 32, !17, i64 40, !5, i64 56, !18, i64 60, !18, i64 62, !18, i64 62, !18, i64 62, !18, i64 62, !18, i64 62, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 64}
!12 = !{!"p1 _ZTS15_lv_obj_class_t", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS9_lv_obj_t", !13, i64 0}
!15 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !13, i64 0}
!16 = !{!"p1 _ZTS15_lv_obj_style_t", !13, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!18 = !{!"short", !6, i64 0}
!19 = !{!"", !5, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"_lv_chart_series_t", !23, i64 0, !23, i64 8, !24, i64 16, !5, i64 20, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24}
!23 = !{!"p1 int", !13, i64 0}
!24 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!25 = !{!22, !23, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!10, !20, i64 104}
!29 = distinct !{!29, !27}
!30 = !{!11, !5, i64 40}
!31 = !{!32, !5, i64 0}
!32 = !{!"", !5, i64 0, !5, i64 4}
!33 = !{!10, !5, i64 164}
!34 = distinct !{!34, !27}
!35 = !{!10, !5, i64 152}
!36 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8}
!37 = !{!38, !40, i64 24}
!38 = !{!"", !39, i64 0, !32, i64 64, !32, i64 72, !13, i64 80, !5, i64 88, !24, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !6, i64 109, !6, i64 109, !6, i64 109}
!39 = !{!"", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !40, i64 24, !18, i64 32, !18, i64 34, !24, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !41, i64 48, !13, i64 56}
!40 = !{!"p1 _ZTS11_lv_layer_t", !13, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!10, !5, i64 156}
!43 = !{!11, !5, i64 44}
!44 = !{!38, !5, i64 64}
!45 = !{!11, !5, i64 48}
!46 = !{!38, !5, i64 72}
!47 = !{!38, !5, i64 68}
!48 = !{!38, !5, i64 76}
!49 = !{!38, !5, i64 12}
!50 = distinct !{!50, !27}
!51 = !{!10, !5, i64 160}
!52 = !{!11, !5, i64 52}
!53 = distinct !{!53, !27}
!54 = !{!55, !40, i64 24}
!55 = !{!"", !39, i64 0, !5, i64 64, !13, i64 72, !13, i64 80, !24, i64 88, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 97, !24, i64 98, !56, i64 104, !13, i64 160, !24, i64 168, !5, i64 172, !5, i64 176, !6, i64 176, !24, i64 177, !5, i64 180, !5, i64 184, !24, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204}
!56 = !{!"", !6, i64 0, !6, i64 10, !5, i64 11, !5, i64 11, !6, i64 12, !13, i64 48}
!57 = !{i64 0, i64 1, !58, i64 1, i64 1, !58, i64 2, i64 1, !58}
!58 = !{!6, !6, i64 0}
!59 = !{!60, !5, i64 8}
!60 = !{!"_lv_chart_cursor_t", !32, i64 0, !5, i64 8, !24, i64 12, !61, i64 16, !5, i64 24, !5, i64 28}
!61 = !{!"p1 _ZTS18_lv_chart_series_t", !13, i64 0}
!62 = !{!60, !61, i64 16}
!63 = !{!60, !5, i64 24}
!64 = !{!38, !5, i64 16}
!65 = !{!55, !5, i64 16}
!66 = !{!55, !5, i64 12}
!67 = distinct !{!67, !27}
!68 = distinct !{!68, !27}
!69 = distinct !{!69, !27}
!70 = !{!22, !5, i64 20}
!71 = distinct !{!71, !27}
!72 = !{!23, !23, i64 0}
!73 = distinct !{!73, !27, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_2
