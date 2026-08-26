Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_refr?download=true
inline.NumInlined: 30
inline.NumDeleted: 24
begin_hunk_0_@lv_obj_refr:bb.a
bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !69
  call void @lv_obj_get_transformed_area(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #8
  %i.aa = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  br i1 %i.aa, label %bb.l, label %.critedge28.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !69
  call void @lv_area_increase(ptr noundef nonnull %7, i32 noundef 5, i32 noundef 5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %layer_get_area.exit

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %6, ptr noundef nonnull %i.ab, ptr noundef nonnull %8) #8
  br i1 %i.ac, label %bb.n, label %.critedge26.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %layer_get_area.exit

.critedge.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.thread

.critedge26.i:                                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.thread

.critedge28.i:                                    ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.thread

.thread:                                          ; preds = %.critedge26.i, %.critedge28.i, %bb.i, %.critedge.i
  store i8 %i.g, ptr %i.f, align 1, !tbaa !84
  store i32 %i.i, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.aa

layer_get_area.exit:                              ; preds = %bb.n, %bb.l
  %i.ad = call i32 @lv_area_get_height(ptr noundef nonnull %7) #8
  %i.ae = call i32 @lv_area_get_height(ptr noundef nonnull %7) #8
  %i.af = icmp eq i32 %i.v, 1
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %layer_get_area.exit
  %i.ag = call i32 @lv_area_get_width(ptr noundef nonnull %7) #8
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 100
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !79
  %i.ak = call zeroext i8 @lv_color_format_get_size(i32 noundef %i.aj) #8
  %i.al = sdiv i32 24576, %i.ag                   ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.al to i16
  %.rhs.trunc = zext i8 %i.ak to i16
  %i.am = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.am to i32
  %i.an = ashr i32 %i.al, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %layer_get_area.exit
  %.073 = phi i32 [ %i.an, %bb.o ], [ %i.ae, %layer_get_area.exit ]
  %.072 = phi i32 [ %.sext, %bb.o ], [ %i.ad, %layer_get_area.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !74 ; 2 uses
  %i.au = load <2 x i32>, ptr %7, align 8, !tbaa !57
  store <2 x i32> %i.au, ptr %9, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !76 ; 2 uses
  %i.ay = icmp slt i32 %i.at, %i.ax
  br i1 %i.ay, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.p
  %i.az = add i32 %.072, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = add i32 %.073, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 108
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 100
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 121 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph110, %bb.y
  %i.bo = phi i32 [ %i.at, %.lr.ph110 ], [ %i.eq, %bb.y ]
  %i.bp = phi i32 [ %i.ax, %.lr.ph110 ], [ %i.er, %bb.y ]
  %i.bq = add i32 %i.az, %i.bo
  %spec.store.select = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bp)
  store i32 %spec.store.select, ptr %i.av, align 4
  %i.br = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 121) #8 ; 2 uses
  %.not86 = icmp eq ptr %i.br, null
  br i1 %.not86, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bs = call zeroext i1 @lv_area_is_on(ptr noundef nonnull %9, ptr noundef nonnull %i.ba) #8
  br i1 %i.bs, label %alpha_test_area_on_obj.exit, label %.critedge

alpha_test_area_on_obj.exit:                      ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 8, !tbaa !109
  store ptr %9, ptr %i.bb, align 8, !tbaa !111
  %i.bt = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 26, ptr noundef nonnull %2) #8 ; 0 uses
  %i.bu = load i32, ptr %2, align 8, !tbaa !109
  %.not104 = icmp eq i32 %i.bu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.not104, label %bb.s, label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %alpha_test_area_on_obj.exit
  %i.bv = load i32, ptr %i.as, align 4, !tbaa !74
  %i.bw = add i32 %i.bc, %i.bv
  %i.bx = load i32, ptr %i.aw, align 4, !tbaa !76
  %spec.store.select89 = call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.bx)
  store i32 %spec.store.select89, ptr %i.av, align 4
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %alpha_test_area_on_obj.exit
  %i.by = phi i32 [ 16, %.critedge ], [ 18, %alpha_test_area_on_obj.exit ]
  %i.bz = call ptr @lv_draw_layer_create(ptr noundef nonnull %0, i32 noundef %i.by, ptr noundef nonnull %9) #8 ; 3 uses
  call void @lv_obj_redraw(ptr noundef %i.bz, ptr noundef nonnull %1)
  %i.ca = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -102) #8
  %i.cb = ptrtoint ptr %i.ca to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.cb to i32 ; 4 uses
  %i.cc = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -101) #8
  %i.cd = ptrtoint ptr %i.cc to i64
  %.sroa.0.0.extract.trunc.i90 = trunc i64 %i.cd to i32 ; 4 uses
  %i.ce = and i32 %.sroa.0.0.extract.trunc.i, 1610612736
  %i.cf = icmp eq i32 %i.ce, 536870912
  br i1 %i.cf, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cg = and i32 %.sroa.0.0.extract.trunc.i, -1610612737 ; 4 uses
  %.not87 = icmp eq i32 %i.cg, 536870911
  br i1 %.not87, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp sgt i32 %i.cg, 268435455
  %i.ci = sub nsw i32 268435455, %i.cg
  %i.cj = select i1 %i.ch, i32 %i.ci, i32 %i.cg
  %i.ck = call i32 @lv_area_get_width(ptr noundef nonnull %i.ba) #8
  %i.cl = mul nsw i32 %i.ck, %i.cj
  %i.cm = sdiv i32 %i.cl, 100
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.0 = phi i32 [ %i.cm, %bb.u ], [ %.sroa.0.0.extract.trunc.i, %bb.t ], [ %.sroa.0.0.extract.trunc.i, %bb.s ]
  %i.cn = and i32 %.sroa.0.0.extract.trunc.i90, 1610612736
  %i.co = icmp eq i32 %i.cn, 536870912
  br i1 %i.co, label %bb.w, label %.preheader107

bb.w:                                             ; preds = %bb.v
  %i.cp = and i32 %.sroa.0.0.extract.trunc.i90, -1610612737 ; 4 uses
  %.not88 = icmp eq i32 %i.cp, 536870911
  br i1 %.not88, label %.preheader107, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp sgt i32 %i.cp, 268435455
  %i.cr = sub nsw i32 268435455, %i.cp
  %i.cs = select i1 %i.cq, i32 %i.cr, i32 %i.cp
  %i.ct = call i32 @lv_area_get_height(ptr noundef nonnull %i.ba) #8
  %i.cu = mul nsw i32 %i.ct, %i.cs
  %i.cv = sdiv i32 %i.cu, 100
  br label %.preheader107

.preheader107:                                    ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.10.0 = phi i32 [ %i.cv, %bb.x ], [ %.sroa.0.0.extract.trunc.i90, %bb.w ], [ %.sroa.0.0.extract.trunc.i90, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @lv_draw_image_dsc_init(ptr noundef nonnull %10) #8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cx = load <2 x i32>, ptr %i.ba, align 8, !tbaa !57
  %i.cy = insertelement <2 x i32> poison, i32 %.sroa.0.0, i64 0
  %i.cz = insertelement <2 x i32> %i.cy, i32 %.sroa.10.0, i64 1
  %i.da = add nsw <2 x i32> %i.cx, %i.cz
  %i.db = load <2 x i32>, ptr %i.cw, align 8, !tbaa !57
  %i.dc = sub <2 x i32> %i.da, %i.db
  store <2 x i32> %i.dc, ptr %i.bd, align 4, !tbaa !57
  store i8 %i.d, ptr %i.be, align 8, !tbaa !112
  %i.dd = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -100) #8
  %i.de = ptrtoint ptr %i.dd to i64
  %.sroa.0.0.extract.trunc.i91 = trunc i64 %i.de to i32 ; 5 uses
  %i.df = add i32 %.sroa.0.0.extract.trunc.i91, 3599
  %smin = call i32 @llvm.smin.i32(i32 %.sroa.0.0.extract.trunc.i91, i32 3600)
  %i.dg = sub i32 %i.df, %smin
  %.fr = freeze i32 %i.dg                         ; 2 uses
  %i.dh = urem i32 %.fr, 3600
  %i.di = sub nuw i32 %.fr, %i.dh                 ; 3 uses
  %i.dj = sub i32 %.sroa.0.0.extract.trunc.i91, %i.di ; 3 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.preheader, label %bb.y

.lr.ph.preheader:                                 ; preds = %.preheader107
  %i.dl = call i32 @llvm.umax.i32(i32 %i.dj, i32 -3600)
  %i.dm = add nsw i32 %i.dl, 3599
  %i.dn = add i32 %i.dm, %i.di
  %i.do = sub i32 %i.dn, %.sroa.0.0.extract.trunc.i91
  %.fr121 = freeze i32 %i.do                      ; 2 uses
  %11 = urem i32 %.fr121, 3600
  %12 = sub nuw i32 %.fr121, %11
  %i.dp = add i32 %12, 3600
  %i.dq = add i32 %i.dp, %.sroa.0.0.extract.trunc.i91
  %i.dr = sub i32 %i.dq, %i.di
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.preheader, %.preheader107
  %storemerge = phi i32 [ %i.dr, %.lr.ph.preheader ], [ %i.dj, %.preheader107 ]
  store i32 %storemerge, ptr %i.bf, align 8, !tbaa !113
  %i.ds = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -104) #8
  %i.dt = ptrtoint ptr %i.ds to i64
  %.sroa.0.0.extract.trunc.i92 = trunc i64 %i.dt to i32
  store i32 %.sroa.0.0.extract.trunc.i92, ptr %i.bg, align 4, !tbaa !114
  %i.du = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -103) #8
  %i.dv = ptrtoint ptr %i.du to i64
  %.sroa.0.0.extract.trunc.i93 = trunc i64 %i.dv to i32
  store i32 %.sroa.0.0.extract.trunc.i93, ptr %i.bh, align 8, !tbaa !115
  %i.dw = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -99) #8
  %i.dx = ptrtoint ptr %i.dw to i64
  %.sroa.0.0.extract.trunc.i94 = trunc i64 %i.dx to i32
  store i32 %.sroa.0.0.extract.trunc.i94, ptr %i.bi, align 4, !tbaa !116
  %i.dy = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -98) #8
  %i.dz = ptrtoint ptr %i.dy to i64
  %.sroa.0.0.extract.trunc.i95 = trunc i64 %i.dz to i32
  store i32 %.sroa.0.0.extract.trunc.i95, ptr %i.bj, align 8, !tbaa !117
  %i.ea = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 122) #8
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = load i8, ptr %i.bk, align 1
  %i.ee = and i8 %i.ec, 15
  %i.ef = and i8 %i.ed, -16
  %i.eg = or disjoint i8 %i.ee, %i.ef             ; 2 uses
  store i8 %i.eg, ptr %i.bk, align 1
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !31
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %i.ej = load i16, ptr %i.ei, align 8
  %i.ek = trunc i16 %i.ej to i8
  %i.el = shl i8 %i.ek, 4
  %i.em = and i8 %i.el, 16
  %i.en = and i8 %i.eg, -17
  %i.eo = or disjoint i8 %i.em, %i.en
  store i8 %i.eo, ptr %i.bk, align 1
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !69
  store ptr %i.bz, ptr %i.bn, align 8, !tbaa !104
  call void @lv_draw_layer(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %9) #8
  %i.ep = load i32, ptr %i.av, align 4, !tbaa !76 ; 2 uses
  %i.eq = add nsw i32 %i.ep, 1                    ; 2 uses
  store i32 %i.eq, ptr %i.as, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.er = load i32, ptr %i.aw, align 4, !tbaa !76 ; 2 uses
  %i.es = icmp slt i32 %i.ep, %i.er
  br i1 %i.es, label %bb.q, label %._crit_edge111, !llvm.loop !119

._crit_edge111:                                   ; preds = %bb.y, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge111, %bb.h
  store i8 %i.g, ptr %i.f, align 1, !tbaa !84
  store i32 %i.i, ptr %i.h, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread, %bb.d, %bb.c
  ret void
}

declare void @lv_draw_mask_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_image_dsc_init(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_layer_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_mask_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_layer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @lv_inv_area(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 4          ; 9 uses
  %3 = alloca %struct.lv_area_t, align 4          ; 12 uses
  %.not = icmp eq ptr %0, null
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.0.sroa.gep38 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.0.sroa.gep40 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.0.sroa.gep41 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.0.sroa.gep43 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.0.sroa.gep44 = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lv_display_get_default() #8 ; 2 uses
  %.not35 = icmp eq ptr %i.a, null
  br i1 %.not35, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.03147 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ] ; 14 uses
  %i.b = tail call zeroext i1 @lv_display_is_invalidation_enabled(ptr noundef nonnull %.03147) #8
  br i1 %i.b, label %bb.c, label %bb.o

bb.c:                                             ; preds = %.thread
  %i.c = getelementptr inbounds nuw i8, ptr %.03147, i64 96
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 1024
  %.not36 = icmp eq i16 %i.e, 0
  br i1 %.not36, label %bb.d, label %.preheader48

.preheader48:                                     ; preds = %bb.c, %.preheader48
  br label %.preheader48

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.03147, i64 648
  store i32 0, ptr %i.g, align 8, !tbaa !55
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !tbaa !73
  store i32 0, ptr %.0.sroa.gep, align 4, !tbaa !74
  %i.h = tail call i32 @lv_display_get_horizontal_resolution(ptr noundef nonnull %.03147) #8
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %.0.sroa.gep40, align 4, !tbaa !75
  %i.j = tail call i32 @lv_display_get_vertical_resolution(ptr noundef nonnull %.03147) #8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %.0.sroa.gep43, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.l = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  br i1 %i.l, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.03147, i64 100
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79
  %i.o = icmp eq i32 %i.n, 7
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %3, align 4, !tbaa !73
  %i.q = and i32 %i.p, -8
  store i32 %i.q, ptr %3, align 4, !tbaa !73
  %i.r = load i32, ptr %.0.sroa.gep41, align 4, !tbaa !75
  %i.s = or i32 %i.r, 7
  store i32 %i.s, ptr %.0.sroa.gep41, align 4, !tbaa !75
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.03147, i64 92
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03147, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !69
  %i.x = getelementptr inbounds nuw i8, ptr %.03147, i64 648
  store i32 1, ptr %i.x, align 8, !tbaa !55
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.i
  %i.y = call i32 @lv_display_send_event(ptr noundef nonnull %.03147, i32 noundef 54, ptr noundef nonnull %3) #8
  %.not37 = icmp eq i32 %i.y, 1
  br i1 %.not37, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.03147, i64 648 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !55
  %.not53 = icmp eq i32 %i.aa, 0
  br i1 %.not53, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.03147, i64 104
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.ac = add i16 %.02952, 1                      ; 2 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !55  ; 3 uses
  %i.af = icmp ugt i32 %i.ae, %i.ad
  br i1 %i.af, label %bb.m, label %._crit_edge, !llvm.loop !120

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.02952 = phi i16 [ 0, %.lr.ph ], [ %i.ac, %bb.l ] ; 2 uses
  %i.ag = zext i16 %.02952 to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = call zeroext i1 @lv_area_is_in(ptr noundef nonnull %3, ptr noundef nonnull %i.ah, i32 noundef 0) #8
  br i1 %i.ai, label %.loopexit, label %bb.l

._crit_edge:                                      ; preds = %bb.l
  %i.aj = icmp samesign ugt i32 %i.ae, 31
  br i1 %i.aj, label %bb.n, label %._crit_edge.thread

bb.n:                                             ; preds = %._crit_edge
end_hunk_0
