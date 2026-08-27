Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_refr?download=true
inline.NumInlined: 30
inline.NumDeleted: 24
begin_hunk_0_@lv_obj_refr:bb.a
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !76 ; 2 uses
  %i.ay = icmp slt i32 %i.at, %i.ax
  br i1 %i.ay, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.p
  %i.az = add i32 %.073, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = add i32 %.072, -1
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
  %i.bo = phi i32 [ %i.at, %.lr.ph110 ], [ %i.es, %bb.y ]
  %i.bp = phi i32 [ %i.ax, %.lr.ph110 ], [ %i.et, %bb.y ]
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
  %i.dp = urem i32 %.fr121, 3600
  %i.dq = sub nuw i32 %.fr121, %i.dp
  %i.dr = add i32 %i.dq, 3600
  %i.ds = add i32 %i.dr, %.sroa.0.0.extract.trunc.i91
  %i.dt = sub i32 %i.ds, %i.di
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.preheader, %.preheader107
  %storemerge = phi i32 [ %i.dt, %.lr.ph.preheader ], [ %i.dj, %.preheader107 ]
  store i32 %storemerge, ptr %i.bf, align 8, !tbaa !113
  %i.du = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -104) #8
  %i.dv = ptrtoint ptr %i.du to i64
  %.sroa.0.0.extract.trunc.i92 = trunc i64 %i.dv to i32
  store i32 %.sroa.0.0.extract.trunc.i92, ptr %i.bg, align 4, !tbaa !114
  %i.dw = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -103) #8
  %i.dx = ptrtoint ptr %i.dw to i64
  %.sroa.0.0.extract.trunc.i93 = trunc i64 %i.dx to i32
  store i32 %.sroa.0.0.extract.trunc.i93, ptr %i.bh, align 8, !tbaa !115
  %i.dy = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -99) #8
  %i.dz = ptrtoint ptr %i.dy to i64
  %.sroa.0.0.extract.trunc.i94 = trunc i64 %i.dz to i32
  store i32 %.sroa.0.0.extract.trunc.i94, ptr %i.bi, align 4, !tbaa !116
  %i.ea = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -98) #8
  %i.eb = ptrtoint ptr %i.ea to i64
  %.sroa.0.0.extract.trunc.i95 = trunc i64 %i.eb to i32
  store i32 %.sroa.0.0.extract.trunc.i95, ptr %i.bj, align 8, !tbaa !117
  %i.ec = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 122) #8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = load i8, ptr %i.bk, align 1
  %i.eg = and i8 %i.ee, 15
  %i.eh = and i8 %i.ef, -16
  %i.ei = or disjoint i8 %i.eg, %i.eh             ; 2 uses
  store i8 %i.ei, ptr %i.bk, align 1
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !31
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  %i.el = load i16, ptr %i.ek, align 8
  %i.em = trunc i16 %i.el to i8
  %i.en = shl i8 %i.em, 4
  %i.eo = and i8 %i.en, 16
  %i.ep = and i8 %i.ei, -17
  %i.eq = or disjoint i8 %i.eo, %i.ep
  store i8 %i.eq, ptr %i.bk, align 1
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !69
  store ptr %i.bz, ptr %i.bn, align 8, !tbaa !104
  call void @lv_draw_layer(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %9) #8
  %i.er = load i32, ptr %i.av, align 4, !tbaa !76 ; 2 uses
  %i.es = add nsw i32 %i.er, 1                    ; 2 uses
  store i32 %i.es, ptr %i.as, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.et = load i32, ptr %i.aw, align 4, !tbaa !76 ; 2 uses
  %i.eu = icmp slt i32 %i.er, %i.et
  br i1 %i.eu, label %bb.q, label %._crit_edge111, !llvm.loop !119

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
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.n, %._crit_edge
  %i.ak = phi i32 [ 0, %bb.n ], [ %i.ae, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.n ], [ %.0.sroa.gep38, %._crit_edge ], [ %.0.sroa.gep38, %.preheader ]
  %.0.sroa.phi39 = phi ptr [ %.0.sroa.gep40, %bb.n ], [ %.0.sroa.gep41, %._crit_edge ], [ %.0.sroa.gep41, %.preheader ]
  %.0.sroa.phi42 = phi ptr [ %.0.sroa.gep43, %bb.n ], [ %.0.sroa.gep44, %._crit_edge ], [ %.0.sroa.gep44, %.preheader ]
  %.0 = phi ptr [ %2, %bb.n ], [ %3, %._crit_edge ], [ %3, %.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.03147, i64 104
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 4 uses
  %i.ao = load i32, ptr %.0, align 4, !tbaa !73
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !73
  %i.ap = load i32, ptr %.0.sroa.phi, align 4, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !74
  %i.ar = load i32, ptr %.0.sroa.phi39, align 4, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !75
  %i.at = load i32, ptr %.0.sroa.phi42, align 4, !tbaa !76
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.at, ptr %i.au, align 4, !tbaa !76
  %i.av = add nuw nsw i32 %i.ak, 1
  store i32 %i.av, ptr %i.z, align 8, !tbaa !55
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.j, %._crit_edge.thread
  %i.aw = call i32 @lv_display_send_event(ptr noundef nonnull %.03147, i32 noundef 57, ptr noundef null) #8 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.loopexit.sink.split, %bb.k, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ 1, %.loopexit.sink.split ], [ 0, %bb.k ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.b, %.loopexit, %bb.e
  %.3 = phi i32 [ 1, %bb.e ], [ %.2, %.loopexit ], [ 0, %bb.b ], [ 0, %.thread ]
  ret i32 %.3
}

declare ptr @lv_display_get_default() local_unnamed_addr #2

declare zeroext i1 @lv_display_is_invalidation_enabled(ptr noundef) local_unnamed_addr #2

declare i32 @lv_display_get_horizontal_resolution(ptr noundef) local_unnamed_addr #2

declare i32 @lv_display_get_vertical_resolution(ptr noundef) local_unnamed_addr #2

declare i32 @lv_display_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_is_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_refr_get_disp_refreshing() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !31
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_refr_set_disp_refreshing(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !31
end_hunk_0
