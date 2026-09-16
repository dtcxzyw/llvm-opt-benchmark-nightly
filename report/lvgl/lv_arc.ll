Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_arc?download=true
inline.NumInlined: 65
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_draw_arc_dsc_t = type { %struct.lv_draw_dsc_base_t, %struct.lv_color_t, i32, i32, i32, %struct.lv_point_t, ptr, i16, i8, i8 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_draw_rect_dsc_t = type { %struct.lv_draw_dsc_base_t, i32, ptr, ptr, %struct.lv_color_t, i8, i8, i8, i8, i8, i8, i8, %struct.lv_color_t, %struct.lv_grad_dsc_t, ptr, %struct.lv_color_t, i32, i8, %struct.lv_color_t, i32, i32, %struct.lv_color_t, i32, i32, i32, i32 }
%struct.lv_grad_dsc_t = type { [2 x %struct.lv_grad_stop_t], i8, i8, %union.anon, ptr }
%struct.lv_grad_stop_t = type { %struct.lv_color_t, i8, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.lv_point_t, %struct.lv_point_t, %struct.lv_point_t, %struct.lv_point_t }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [7 x i8] c"lv_arc\00", align 1
@lv_arc_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_arc_constructor, ptr null, ptr @lv_arc_event, ptr null, ptr @.str, i32 0, i32 0, i8 1, i8 8, i8 0, [5 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define internal void @lv_arc_constructor(ptr nofree readnone captures(none) %0, ptr noundef initializes((72, 104), (108, 120)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> <i32 0, i32 135, i32 270, i32 135>, ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  store <4 x i32> <i32 45, i32 -32768, i32 0, i32 100>, ptr %i.b, align 8, !tbaa !8
  %i.f = and i8 %i.e, -16
  %i.g = or disjoint i8 %i.f, 8
  store i8 %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 720, ptr %i.h, align 4, !tbaa !18
  %i.i = tail call i32 @lv_tick_get() #8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.i, ptr %i.j, align 8, !tbaa !19
  %i.k = load i32, ptr %i.c, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %i.k, ptr %i.l, align 4, !tbaa !21
  %i.m = load i8, ptr %i.d, align 8
  %i.n = and i8 %i.m, -17
  store i8 %i.n, ptr %i.d, align 8
  tail call void @lv_obj_add_flag(ptr noundef %1, i32 noundef 2) #8
  tail call void @lv_obj_remove_flag(ptr noundef %1, i32 noundef 784) #8
  tail call void @lv_obj_set_ext_click_area(ptr noundef %1, i32 noundef 13) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_arc_event(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.lv_point_t, align 8         ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.lv_draw_arc_dsc_t, align 8  ; 16 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 4 uses
  %5 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 6 uses
  %6 = alloca %struct.lv_point_t, align 8         ; 8 uses
  %7 = alloca %struct.lv_point_t, align 8         ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %8 = alloca %struct.lv_point_t, align 4         ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %struct.lv_area_t, align 4          ; 7 uses
  %i.d = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_arc_class, ptr noundef %1) #8
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @lv_event_get_code(ptr noundef %1) #8 ; 3 uses
  %i.f = tail call ptr @lv_event_get_current_target(ptr noundef %1) #8 ; 44 uses
  %i.g = icmp eq i32 %i.e, 2
  br i1 %i.g, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @lv_indev_active() #8      ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @lv_indev_get_type(ptr noundef nonnull %i.h) #8
  %.not289 = icmp eq i32 %i.j, 1
  br i1 %.not289, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @lv_indev_get_point(ptr noundef nonnull %i.h, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call fastcc void @get_center(ptr noundef %i.f, ptr noundef %7, ptr noundef %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.l = load <2 x i32>, ptr %7, align 8, !tbaa !8
  %i.m = load <2 x i32>, ptr %6, align 8, !tbaa !8
  %i.n = sub nsw <2 x i32> %i.m, %i.l
  store <2 x i32> %i.n, ptr %6, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 8 uses
  %i.p = load i8, ptr %i.o, align 8               ; 2 uses
  %i.q = and i8 %i.p, 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 131072, i8 noundef zeroext 76) #8
  %i.t = ptrtoint ptr %i.s to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.t to i32 ; 3 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !8
  %i.v = sub nsw i32 %i.u, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.w = call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %i.f, i32 noundef 65536) #8
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = sdiv i32 %i.v, 4
  %. = call i32 @llvm.smax.i32(i32 %i.x, i32 %.sroa.0.0.extract.trunc.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %..pn = phi i32 [ %., %bb.g ], [ %.sroa.0.0.extract.trunc.i, %bb.f ]
  %storemerge = sub nsw i32 %i.v, %..pn
  %spec.select = call i32 @llvm.smax.i32(i32 %storemerge, i32 1) ; 3 uses
  store i32 %spec.select, ptr %i.b, align 4, !tbaa !8
  %i.y = load i32, ptr %6, align 8, !tbaa !23     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.y
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !24  ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.aa
  %i.ac = add nuw nsw i32 %i.ab, %i.z
  %i.ad = mul nuw nsw i32 %spec.select, %spec.select
  %i.ae = icmp samesign ugt i32 %i.ac, %i.ad
  %.pre346 = load i8, ptr %i.o, align 8           ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = or i8 %.pre346, 1
  store i8 %i.af, ptr %i.o, align 8
  %i.ag = call i32 @lv_tick_get() #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !19
  %.pre345 = load i8, ptr %i.o, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  %i.ai = phi i8 [ %.pre346, %bb.h ], [ %.pre345, %bb.i ], [ %i.p, %bb.e ]
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.ab, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !25 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 84 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = call zeroext i16 @lv_atan2(i32 noundef %i.an, i32 noundef %i.al) #8
  %i.au = zext i16 %i.at to i32                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !27
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.ay = add i32 %i.aw, %i.ax                    ; 4 uses
  %i.az = sub i32 %i.au, %i.ay
  %smax343 = call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.ba = add i32 %i.ay, %smax343
  %i.bb = add i32 %i.ba, 359
  %i.bc = sub i32 %i.bb, %i.au
  %.fr355 = freeze i32 %i.bc                      ; 2 uses
  %i.bd = urem i32 %.fr355, 360
  %i.be = sub nuw i32 %.fr355, %i.bd
  %i.bf = add i32 %i.be, %i.au                    ; 2 uses
  %i.bg = sub i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = icmp slt i32 %i.aq, %i.as
  %i.bi = add nsw i32 %i.aq, 360
  %spec.select298 = select i1 %i.bh, i32 %i.bi, i32 %i.aq ; 3 uses
  %10 = add i32 %i.bf, 359
  %i.bj = call i32 @llvm.smin.i32(i32 %i.bg, i32 359)
  %i.bk = add i32 %i.bj, %i.ay
  %i.bl = sub i32 %10, %i.bk
  %.fr356 = freeze i32 %i.bl                      ; 2 uses
  %i.bm = urem i32 %.fr356, 360
  %.neg357 = sub i32 %i.bm, %.fr356
  %i.bn = add i32 %.neg357, %i.bg                 ; 3 uses
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !8
  %i.bp = mul i32 %i.bo, 628
  %i.bq = udiv i32 %i.bp, 100
  %i.br = call i32 @lv_dpx(i32 noundef 20) #8
  %i.bs = mul nsw i32 %i.br, 360
  %i.bt = udiv i32 %i.bs, %i.bq
  %i.bu = load i8, ptr %i.o, align 8
  %i.bv = call fastcc zeroext i1 @lv_arc_angle_within_bg_bounds(ptr noundef nonnull %i.f, i32 noundef %i.bn, i32 noundef %i.bt)
  br i1 %i.bv, label %bb.l, label %bb.ab

bb.l:                                             ; preds = %.preheader.preheader
  %i.bw = load i32, ptr %i.ar, align 4, !tbaa !26 ; 2 uses
  %i.bx = sub nsw i32 %spec.select298, %i.bw      ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !21
  %i.ca = sub nsw i32 %i.bz, %i.bw                ; 3 uses
  %i.cb = sub nsw i32 %i.bn, %i.ca
  %i.cc = call i32 @llvm.abs.i32(i32 %i.cb, i1 true) ; 2 uses
  %i.cd = icmp samesign ult i32 %i.cc, 281        ; 2 uses
  %i.ce = load i8, ptr %i.o, align 8              ; 6 uses
  br i1 %i.cd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = and i8 %i.ce, 8
  %.not292 = icmp eq i8 %i.cf, 0
  %.299 = select i1 %.not292, i32 %i.bx, i32 0
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cg = and i8 %i.ce, 16
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = and i8 %i.ce, 8
  %.not291 = icmp eq i8 %i.ci, 0
  %i.cj = sub nsw i32 0, %i.bx
  %spec.select314 = select i1 %.not291, i32 %i.bx, i32 %i.cj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.n
  %.2 = phi i32 [ %.299, %bb.m ], [ %i.bn, %bb.n ], [ %spec.select314, %bb.o ] ; 2 uses
  %i.ck = and i8 %i.bu, 8
  %cond = icmp eq i8 %i.ck, 0
  %i.cl = and i8 %i.ce, 24                        ; 2 uses
  br i1 %cond, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond301 = icmp ne i8 %i.cl, 0
  %brmerge = or i1 %i.cd, %or.cond301
  br i1 %brmerge, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = or disjoint i8 %i.ce, 8
  br label %.sink.split

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
  %.0256 = phi i32 [ %i.fm, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.fn = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 76) #8
  %i.fo = ptrtoint ptr %i.fn to i64
  %.sroa.0.0.extract.trunc.i326 = trunc i64 %i.fo to i32 ; 2 uses
  %i.fp = load i32, ptr %i.c, align 4, !tbaa !8
  %i.fq = add i32 %.0256, %.sroa.0.0.extract.trunc.i326
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
  %11 = add i32 %i.gv, 359
  %i.gx = call i32 @llvm.smin.i32(i32 %i.gw, i32 359)
  %i.gy = add i32 %i.gx, %i.go
  %i.gz = sub i32 %11, %i.gy
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
  %i.hi = shl nsw i32 %.0256, 1
  %i.hj = add nsw i32 %i.hi, %.sroa.0.0.extract.trunc.i326 ; 2 uses
  call void @lv_area_increase(ptr noundef nonnull %9, i32 noundef %i.hj, i32 noundef %i.hj) #8
  %i.hk = load ptr, ptr %i.fi, align 8, !tbaa !46
  %i.hl = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %9, ptr noundef %i.hk, i32 noundef 32767) #8
  %i.hm = zext i1 %i.hl to i8
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader342.preheader, %bb.aq
  %.sink = phi i8 [ %i.hm, %bb.aq ], [ 0, %.preheader342.preheader ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i8 %.sink, ptr %i.hn, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.critedge

bb.as:                                            ; preds = %bb.af
  %i.ho = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.hp = ptrtoint ptr %i.ho to i64
  %.sroa.0.0.extract.trunc.i327 = trunc i64 %i.hp to i32
  %i.hq = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.hr = ptrtoint ptr %i.hq to i64
  %.sroa.0.0.extract.trunc.i328 = trunc i64 %i.hr to i32
  %i.hs = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.ht = ptrtoint ptr %i.hs to i64
  %.sroa.0.0.extract.trunc.i329 = trunc i64 %i.ht to i32
  %i.hu = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 25) #8
  %i.hv = ptrtoint ptr %i.hu to i64
  %.sroa.0.0.extract.trunc.i330 = trunc i64 %i.hv to i32
  %i.hw = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i327, i32 %.sroa.0.0.extract.trunc.i328)
  %i.hx = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i329, i32 %.sroa.0.0.extract.trunc.i330)
  %.313 = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 %i.hx)
  %i.hy = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 26) #8
  %i.hz = ptrtoint ptr %i.hy to i64
  %.sroa.0.0.extract.trunc.i331 = trunc i64 %i.hz to i32
  %i.ia = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 27) #8
  %i.ib = ptrtoint ptr %i.ia to i64
  %.sroa.0.0.extract.trunc.i332 = trunc i64 %i.ib to i32
  %i.ic = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 24) #8
  %i.id = ptrtoint ptr %i.ic to i64
  %.sroa.0.0.extract.trunc.i333 = trunc i64 %i.id to i32
  %i.ie = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 25) #8
  %i.if = ptrtoint ptr %i.ie to i64
  %.sroa.0.0.extract.trunc.i334 = trunc i64 %i.if to i32
  %i.ig = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i331, i32 %.sroa.0.0.extract.trunc.i332)
  %i.ih = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i333, i32 %.sroa.0.0.extract.trunc.i334)
  %i.ii = tail call i32 @llvm.smax.i32(i32 %i.ig, i32 %i.ih)
  %i.ij = tail call fastcc i32 @knob_get_extra_size(ptr noundef %i.f)
  %reass.sub = sub i32 %i.ij, %.313
  %i.ik = add i32 %reass.sub, 2
  %i.il = add i32 %i.ik, %i.ii
  %i.im = tail call ptr @lv_event_get_param(ptr noundef %1) #8 ; 4 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !8
  %i.io = tail call i32 @llvm.smax.i32(i32 %i.in, i32 %i.il) ; 2 uses
  store i32 %i.io, ptr %i.im, align 4, !tbaa !8
  %i.ip = tail call i32 @lv_obj_calculate_ext_draw_size(ptr noundef %i.f, i32 noundef 131072) #8
  %i.iq = icmp sgt i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ir = load i32, ptr %i.im, align 4, !tbaa !8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.is = tail call i32 @lv_obj_calculate_ext_draw_size(ptr noundef %i.f, i32 noundef 131072) #8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.it = phi i32 [ %i.ir, %bb.at ], [ %i.is, %bb.au ]
  store i32 %i.it, ptr %i.im, align 4, !tbaa !8
  br label %.critedge

bb.aw:                                            ; preds = %bb.af
  %i.iu = tail call ptr @lv_event_get_current_target(ptr noundef %1) #8 ; 13 uses
  %i.iv = tail call ptr @lv_event_get_layer(ptr noundef %1) #8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call fastcc void @get_center(ptr noundef %i.iu, ptr noundef %2, ptr noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.iw = load i32, ptr %i.a, align 4, !tbaa !8   ; 4 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %3) #8
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.iv, ptr %i.iy, align 8, !tbaa !53
  call void @lv_obj_init_draw_arc_dsc(ptr noundef %i.iu, i32 noundef 0, ptr noundef nonnull %3) #8
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ja = load i64, ptr %2, align 8
  store i64 %i.ja, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 84
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !27
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.jf = load <2 x i32>, ptr %i.jb, align 4, !tbaa !8
  %i.jg = insertelement <2 x i32> poison, i32 %i.jd, i64 0
  %i.jh = shufflevector <2 x i32> %i.jg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ji = add nsw <2 x i32> %i.jf, %i.jh
  store <2 x i32> %i.ji, ptr %i.je, align 8, !tbaa !8
  %i.jj = trunc i32 %i.iw to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i16 %i.jj, ptr %i.jk, align 8, !tbaa !54
  call void @lv_draw_arc(ptr noundef %i.iv, ptr noundef nonnull %3) #8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jl = call ptr @lv_obj_get_style_prop(ptr noundef %i.iu, i32 noundef 131072, i8 noundef zeroext 26) #8
  %i.jm = ptrtoint ptr %i.jl to i64
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.jm to i32
  %i.jn = call ptr @lv_obj_get_style_prop(ptr noundef %i.iu, i32 noundef 131072, i8 noundef zeroext 27) #8
  %i.jo = ptrtoint ptr %i.jn to i64
  %.sroa.0.0.extract.trunc.i20.i.i = trunc i64 %i.jo to i32
  %i.jp = call ptr @lv_obj_get_style_prop(ptr noundef %i.iu, i32 noundef 131072, i8 noundef zeroext 24) #8
  %i.jq = ptrtoint ptr %i.jp to i64
  %.sroa.0.0.extract.trunc.i21.i.i = trunc i64 %i.jq to i32
  %i.jr = call ptr @lv_obj_get_style_prop(ptr noundef %i.iu, i32 noundef 131072, i8 noundef zeroext 25) #8
  %i.js = ptrtoint ptr %i.jr to i64
  %.sroa.0.0.extract.trunc.i22.i.i = trunc i64 %i.js to i32
  %i.jt = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i.i, i32 %.sroa.0.0.extract.trunc.i20.i.i)
  %i.ju = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i21.i.i, i32 %.sroa.0.0.extract.trunc.i22.i.i)
  %..i.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %i.ju)
  %i.jv = sub nsw i32 %i.iw, %..i.i               ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %bb.az, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ay
  %.val.pre.i = load i32, ptr %2, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val24.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %lv_arc_draw.exit

bb.az:                                            ; preds = %bb.ay
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %3) #8
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.iv, ptr %i.jx, align 8, !tbaa !53
  call void @lv_obj_init_draw_arc_dsc(ptr noundef %i.iu, i32 noundef 131072, ptr noundef nonnull %3) #8
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.jz = load i64, ptr %2, align 8               ; 3 uses
  store i64 %i.jz, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iu, i64 76
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !27
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ke = load <2 x i32>, ptr %i.ka, align 4, !tbaa !8
  %i.kf = insertelement <2 x i32> poison, i32 %i.kc, i64 0
  %i.kg = shufflevector <2 x i32> %i.kf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kh = add nsw <2 x i32> %i.ke, %i.kg
  store <2 x i32> %i.kh, ptr %i.kd, align 8, !tbaa !8
  %i.ki = trunc i32 %i.jv to i16
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i16 %i.ki, ptr %i.kj, align 8, !tbaa !54
  call void @lv_draw_arc(ptr noundef %i.iv, ptr noundef nonnull %3) #8
  %i.kk = trunc i64 %i.jz to i32
  %i.kl = lshr i64 %i.jz, 32
  %i.km = trunc nuw i64 %i.kl to i32
  br label %lv_arc_draw.exit

lv_arc_draw.exit:                                 ; preds = %._crit_edge.i, %bb.az
  %.val24.i = phi i32 [ %.val24.pre.i, %._crit_edge.i ], [ %i.km, %bb.az ]
  %.val.i = phi i32 [ %.val.pre.i, %._crit_edge.i ], [ %i.kk, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call fastcc void @get_knob_area(ptr noundef %i.iu, i32 %.val.i, i32 %.val24.i, i32 noundef %i.iw, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %5) #8
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.iv, ptr %i.kn, align 8, !tbaa !57
  call void @lv_obj_init_draw_rect_dsc(ptr noundef %i.iu, i32 noundef 196608, ptr noundef nonnull %5) #8
  call void @lv_draw_rect(ptr noundef %i.iv, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
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
end_hunk_0
begin_hunk_1_@lv_arc_set_bg_start_angle:bb.a
  %i.j = add nsw i32 %i.g, 360
  %.031 = select i1 %i.i, i32 %i.j, i32 %i.g      ; 3 uses
  %i.k = icmp slt i32 %i.h, 0
  %i.l = add nsw i32 %i.h, 360
  %.0 = select i1 %i.k, i32 %i.l, i32 %i.h        ; 3 uses
  %i.m = add i32 %.0, -181
  %i.n = sub i32 %i.m, %.031
  %i.o = icmp ult i32 %i.n, -361
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %.0, %.031
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @inv_arc_area(ptr noundef %0, i32 noundef %i.f, i32 noundef %spec.select, i32 noundef 0)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = icmp slt i32 %.031, %.0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @inv_arc_area(ptr noundef %0, i32 noundef %spec.select, i32 noundef %i.f, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.c
  store i32 %spec.select, ptr %i.e, align 4, !tbaa !26
  tail call fastcc void @value_update(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @value_update(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 6 uses
  %i.c = icmp eq i32 %i.b, -32768
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 5 uses
  %i.h = icmp slt i32 %i.e, %i.g
  %i.i = add nsw i32 %i.e, 360
  %spec.select = select i1 %i.h, i32 %i.i, i32 %i.e ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i8, ptr %i.j, align 8
  %i.l = lshr i8 %i.k, 1
  %i.m = and i8 %i.l, 3
  switch i8 %i.m, label %default.unreachable58 [
    i8 1, label %bb.c
    i8 2, label %bb.f
    i8 0, label %bb.g
    i8 3, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %spec.select, %i.g
  %i.o = sdiv i32 %i.n, 2                         ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28   ; 2 uses
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = sdiv i32 %i.t, 2                         ; 3 uses
  %i.v = icmp slt i32 %i.b, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef %i.q, i32 noundef %i.u, i32 noundef %i.g, i32 noundef %i.o) #8 ; 2 uses
  tail call void @lv_arc_set_start_angle(ptr noundef nonnull %0, i32 noundef %i.w)
  tail call void @lv_arc_set_end_angle(ptr noundef nonnull %0, i32 noundef %i.o)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.x = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef %i.u, i32 noundef %i.s, i32 noundef %i.o, i32 noundef %spec.select) #8 ; 2 uses
  tail call void @lv_arc_set_start_angle(ptr noundef nonnull %0, i32 noundef %i.o)
  tail call void @lv_arc_set_end_angle(ptr noundef nonnull %0, i32 noundef %i.x)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i32, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %spec.select, i32 noundef %i.g) #8 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !25
  tail call void @lv_arc_set_end_angle(ptr noundef nonnull %0, i32 noundef %i.ad)
  tail call void @lv_arc_set_start_angle(ptr noundef nonnull %0, i32 noundef %i.ac)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = tail call i32 @lv_map(i32 noundef %i.b, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.g, i32 noundef %spec.select) #8 ; 2 uses
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !26
  tail call void @lv_arc_set_end_angle(ptr noundef nonnull %0, i32 noundef %i.ai)
  tail call void @lv_arc_set_start_angle(ptr noundef nonnull %0, i32 noundef %i.aj)
  br label %bb.h

default.unreachable58:                            ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.f
  %.0 = phi i32 [ %i.w, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ai, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.0, ptr %i.ak, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_arc_set_bg_end_angle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 360
  %i.b = add nsw i32 %1, -360
  %spec.select = select i1 %i.a, i32 %i.b, i32 %1 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %i.g = sub nsw i32 %i.d, %i.f                   ; 3 uses
  %i.h = sub nsw i32 %spec.select, %i.f           ; 3 uses
  %i.i = icmp slt i32 %i.g, 0
  %i.j = add nsw i32 %i.g, 360
  %.031 = select i1 %i.i, i32 %i.j, i32 %i.g      ; 3 uses
  %i.k = icmp slt i32 %i.h, 0
  %i.l = add nsw i32 %i.h, 360
  %.0 = select i1 %i.k, i32 %i.l, i32 %i.h        ; 3 uses
  %reass.sub = sub i32 %.0, %.031
  %i.m = add i32 %reass.sub, -181
  %i.n = icmp ult i32 %i.m, -361
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %.0, %.031
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @inv_arc_area(ptr noundef %0, i32 noundef %spec.select, i32 noundef %i.d, i32 noundef 0)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = icmp slt i32 %.031, %.0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @inv_arc_area(ptr noundef %0, i32 noundef %i.d, i32 noundef %spec.select, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.c
  store i32 %spec.select, ptr %i.c, align 8, !tbaa !25
  tail call fastcc void @value_update(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_arc_set_bg_angles(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_arc_set_bg_end_angle(ptr noundef %0, i32 noundef %2)
  tail call void @lv_arc_set_bg_start_angle(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_arc_set_rotation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.a = add nuw i32 %smax, 359
  %i.b = sub i32 %i.a, %1                         ; 2 uses
  %i.c = urem i32 %i.b, 360
  %i.d = sub nuw i32 %i.b, %i.c
  %.fr = freeze i32 %i.d
  %i.e = add i32 %1, %.fr                         ; 2 uses
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 359) ; 2 uses
  %i.g = urem i32 %i.f, 360
  %.neg = sub nsw i32 %i.g, %i.f
  %i.h = add i32 %.neg, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.h, ptr %i.i, align 8, !tbaa !27
  %i.j = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #8 ; 0 uses
  ret void

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader
}

; Function Attrs: nounwind uwtable
define void @lv_arc_set_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = trunc i32 %1 to i8                       ; 2 uses
  %i.e = load i8, ptr %i.c, align 8
  %i.f = shl i8 %i.d, 1
  %i.g = and i8 %i.f, 6
  %i.h = and i8 %i.e, -7
  %i.i = or disjoint i8 %i.h, %i.g
  store i8 %i.i, ptr %i.c, align 8
  store i32 -1, ptr %i.a, align 4, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26   ; 3 uses
  %i.n = and i8 %i.d, 3
  switch i8 %i.n, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.k, %i.m
  %i.p = add nsw i32 %i.k, 360
  %spec.select = select i1 %i.o, i32 %i.p, i32 %i.k
  %i.q = add nsw i32 %spec.select, %i.m
  %i.r = sdiv i32 %i.q, 2                         ; 2 uses
  tail call void @lv_arc_set_start_angle(ptr noundef nonnull %0, i32 noundef %i.r)
  tail call void @lv_arc_set_end_angle(ptr noundef nonnull %0, i32 noundef %i.r)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @lv_arc_set_end_angle(ptr noundef nonnull %0, i32 noundef %i.k)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @lv_arc_set_start_angle(ptr noundef nonnull %0, i32 noundef %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.s = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.b
  br i1 %i.t, label %lv_arc_set_value.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %..i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !29
  %i.y = tail call i32 @llvm.smax.i32(i32 %..i, i32 %i.x) ; 2 uses
  %i.z = icmp eq i32 %i.s, %i.y
  br i1 %i.z, label %lv_arc_set_value.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.a, align 4, !tbaa !30
  tail call fastcc void @value_update(ptr noundef nonnull %0)
  br label %lv_arc_set_value.exit

lv_arc_set_value.exit:                            ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_arc_set_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call i32 @llvm.smax.i32(i32 %., i32 %i.g) ; 2 uses
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %i.a, align 4, !tbaa !30
  tail call fastcc void @value_update(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_arc_set_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = icmp eq i32 %i.e, %2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %1, ptr %i.a, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %2, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = icmp slt i32 %i.i, %1
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %1) ; 2 uses
  %i.l = icmp sgt i32 %i.k, %2
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %simplifycfg.merge = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %2)
  store i32 %simplifycfg.merge, ptr %i.h, align 4, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call fastcc void @value_update(ptr noundef %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_arc_set_min_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, %1
  br i1 %i.e, label %lv_arc_set_range.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.c, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30   ; 2 uses
  %i.h = icmp slt i32 %i.g, %1
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %1) ; 2 uses
  %i.j = icmp sgt i32 %i.i, %i.b
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %simplifycfg.merge.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.b)
  store i32 %simplifycfg.merge.i, ptr %i.f, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @value_update(ptr noundef %0)
  br label %lv_arc_set_range.exit

lv_arc_set_range.exit:                            ; preds = %bb.b, %bb.e
end_hunk_1
begin_hunk_2_@get_center:bb.a
bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @lv_obj_get_width(ptr noundef %0) #8
  %i.q = sub i32 %i.p, %i.j
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = tail call i32 @lv_obj_get_height(ptr noundef %0) #8
  %i.s = sub i32 %i.r, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi i32 [ %i.q, %bb.b ], [ %i.s, %bb.c ]
  %i.u = sdiv i32 %i.t, 2                         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33
  %i.x = add i32 %i.u, %.sroa.0.0.extract.trunc.i
  %i.y = add i32 %i.x, %i.w
  store i32 %i.y, ptr %1, align 4, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = add i32 %i.u, %.sroa.0.0.extract.trunc.i27
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !24
  store i32 %i.u, ptr %2, align 4, !tbaa !8
  ret void
}

declare i32 @lv_trigo_sin(i16 noundef signext) local_unnamed_addr #2

declare void @lv_obj_align_to(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_arc_rotate_obj_to_angle(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lv_point_t, align 4         ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %.preheader23, label %bb.c

.preheader23:                                     ; preds = %bb.b, %.preheader23
  br label %.preheader23

bb.c:                                             ; preds = %bb.b
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call fastcc void @get_center(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.a)
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 76) #8
  %i.c = ptrtoint ptr %i.b to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.c to i32
  %.neg.neg = sdiv i32 %.sroa.0.0.extract.trunc.i, 2
  %i.d = load i32, ptr %i.a, align 4, !tbaa !8
  %i.e = add i32 %i.d, %2
  %.neg25 = sub i32 %.neg.neg, %i.e
  tail call void @lv_obj_align_to(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 9, i32 noundef 0, i32 noundef %.neg25) #8
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i8, ptr %i.h, align 8
  %i.j = lshr i8 %i.i, 1
  %i.k = and i8 %i.j, 3
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.d
    i8 2, label %bb.e
    i8 1, label %bb.f
    i8 3, label %get_angle.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20
  %i.n = add nsw i32 %i.m, %i.g
  br label %get_angle.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = add nsw i32 %i.p, %i.g
  br label %get_angle.exit

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26   ; 2 uses
  %i.v = icmp slt i32 %i.s, %i.u
  %i.w = add nsw i32 %i.s, 360
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31  ; 3 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  %i.ac = add nsw i32 %i.y, 360
  %.0.i = select i1 %i.ab, i32 %i.ac, i32 %i.y
  %i.ad = add nsw i32 %spec.select.i, %i.u
  %i.ae = sdiv i32 %i.ad, 2                       ; 3 uses
  %i.af = icmp slt i32 %i.aa, %i.ae
  %i.ag = icmp sgt i32 %.0.i, %i.ae
  %spec.select38.i = select i1 %i.ag, i32 %i.y, i32 %i.ae
  %.pn.i = select i1 %i.af, i32 %i.aa, i32 %spec.select38.i
  %.030.i = add nsw i32 %.pn.i, %i.g
  br label %get_angle.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

get_angle.exit:                                   ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.1.i = phi i32 [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %.030.i, %bb.f ], [ %i.g, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !33
  %i.aj = load i32, ptr %3, align 4, !tbaa !23
  %.neg21 = sub nsw i32 %i.aj, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24
  %.neg22 = sub nsw i32 %i.an, %i.al
  tail call void @lv_obj_set_style_transform_pivot_x(ptr noundef nonnull %1, i32 noundef %.neg21, i32 noundef 0) #8
  tail call void @lv_obj_set_style_transform_pivot_y(ptr noundef nonnull %1, i32 noundef %.neg22, i32 noundef 0) #8
  %i.ao = mul nsw i32 %.1.i, 10
  %i.ap = add nsw i32 %i.ao, 900
  tail call void @lv_obj_set_style_transform_rotation(ptr noundef nonnull %1, i32 noundef %i.ap, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

declare void @lv_obj_set_style_transform_pivot_x(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_transform_pivot_y(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_transform_rotation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_tick_get() local_unnamed_addr #2

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_remove_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_ext_click_area(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_indev_active() local_unnamed_addr #2

declare i32 @lv_indev_get_type(ptr noundef) local_unnamed_addr #2

declare void @lv_indev_get_point(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_has_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @lv_atan2(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_dpx(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @lv_arc_angle_within_bg_bounds(ptr nofree noundef captures(address_is_null) %0, i32 noundef range(i32 0, 360) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 5 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.j, label %.preheader41.preheader

.preheader41.preheader:                           ; preds = %bb.b
  %i.f = sub i32 %i.b, %i.d
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %i.g = add i32 %i.d, %smax
  %i.h = add i32 %i.g, 359
  %i.i = sub i32 %i.h, %i.b
  %.fr = freeze i32 %i.i                          ; 2 uses
  %i.j = urem i32 %.fr, 360
  %i.k = sub nuw i32 %.fr, %i.j
  %i.l = add i32 %i.b, %i.k                       ; 2 uses
  %i.m = sub i32 %i.l, %i.d                       ; 2 uses
  %i.n = add i32 %i.l, 359
  %umin = tail call i32 @llvm.smin.i32(i32 %i.m, i32 359)
  %i.o = add i32 %i.d, %umin
  %i.p = sub i32 %i.n, %i.o
  %.fr46 = freeze i32 %i.p                        ; 2 uses
  %i.q = urem i32 %.fr46, 360
  %.neg = sub i32 %i.q, %.fr46
  %i.r = add i32 %.neg, %i.m                      ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %spec.store.select = select i1 %i.s, i32 360, i32 %i.r ; 4 uses
  %.not36 = icmp samesign ugt i32 %1, %spec.store.select
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader41.preheader
  %i.t = lshr i32 %spec.store.select, 1
  %i.u = icmp samesign ult i32 %1, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, -25
  %masksel = select i1 %i.u, i8 8, i8 0
  %i.y = or disjoint i8 %i.x, %masksel
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = or disjoint i8 %i.y, 16
  store i8 %i.aa, ptr %i.z, align 8
  br label %bb.j

bb.d:                                             ; preds = %.preheader41.preheader
  %i.ab = sub nuw nsw i32 360, %spec.store.select
  %.not37 = icmp sgt i32 %i.ab, %2
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = or i8 %i.ad, 24
  store i8 %i.ae, ptr %i.ac, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.af = sub nuw nsw i32 360, %1
  %.not38 = icmp sgt i32 %i.af, %2
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = and i8 %i.ah, -25
  %i.aj = or disjoint i8 %i.ai, 8
  store i8 %i.aj, ptr %i.ag, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %spec.store.select, %2
  %.not39 = icmp sgt i32 %1, %i.ak
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, -25
  store i8 %i.an, ptr %i.al, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.b, %bb.i, %bb.g, %bb.e, %bb.c
  %.031 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.031
}

declare i32 @lv_tick_elaps(i32 noundef) local_unnamed_addr #2

declare i32 @lv_map(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_group(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_group_get_editing(ptr noundef) local_unnamed_addr #2

declare void @lv_group_set_editing(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_event_get_key(ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_rotary_diff(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_is_point_on(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @knob_get_extra_size(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 74) #8
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 99) #8
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 97) #8
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i20 = trunc i64 %i.d to i32
  %i.e = icmp sgt i32 %.sroa.0.0.extract.trunc.i20, 0
  %i.f = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 97) #8
  %i.g = ptrtoint ptr %i.f to i64
  %.sroa.0.0.extract.trunc.i21 = trunc i64 %i.g to i32 ; 2 uses
  %i.h = sub nsw i32 0, %.sroa.0.0.extract.trunc.i21
  %i.i = select i1 %i.e, i32 %.sroa.0.0.extract.trunc.i21, i32 %i.h
  %i.j = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 98) #8
  %i.k = ptrtoint ptr %i.j to i64
  %.sroa.0.0.extract.trunc.i23 = trunc i64 %i.k to i32
  %i.l = icmp sgt i32 %.sroa.0.0.extract.trunc.i23, 0
  %i.m = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 98) #8
  %i.n = ptrtoint ptr %i.m to i64
  %.sroa.0.0.extract.trunc.i24 = trunc i64 %i.n to i32 ; 2 uses
  %i.o = sub nsw i32 0, %.sroa.0.0.extract.trunc.i24
  %i.p = select i1 %i.l, i32 %.sroa.0.0.extract.trunc.i24, i32 %i.o
  %i.q = ptrtoint ptr %i.b to i64
  %.sroa.0.0.extract.trunc.i19 = trunc i64 %i.q to i32
  %i.r = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.r to i32
  %i.s = add nsw i32 %.sroa.0.0.extract.trunc.i19, %.sroa.0.0.extract.trunc.i
  %i.t = add nsw i32 %i.s, %i.i
  %i.u = add nsw i32 %i.t, %i.p
  %i.v = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 64) #8
  %i.w = ptrtoint ptr %i.v to i64
  %.sroa.0.0.extract.trunc.i26 = trunc i64 %i.w to i32
  %i.x = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 196608, i8 noundef zeroext 67) #8
  %i.y = ptrtoint ptr %i.x to i64
  %.sroa.0.0.extract.trunc.i27 = trunc i64 %i.y to i32
  %i.z = add nsw i32 %.sroa.0.0.extract.trunc.i27, %.sroa.0.0.extract.trunc.i26
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.z)
  ret i32 %i.aa
}

declare i32 @lv_obj_calculate_ext_draw_size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_arc_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_arc_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_arc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_knob_area(ptr noundef %0, i32 %.0.val, i32 %.4.val, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 76) #8
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 26) #8
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 27) #8
  %i.d = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 24) #8
  %i.e = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 25) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i8, ptr %i.h, align 8
  %i.j = lshr i8 %i.i, 1
  %i.k = and i8 %i.j, 3
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.b
    i8 2, label %bb.c
    i8 1, label %bb.d
    i8 3, label %lv_arc_get_knob_offset.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20
  %i.n = add nsw i32 %i.m, %i.g
  br label %lv_arc_get_knob_offset.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = add nsw i32 %i.p, %i.g
  br label %lv_arc_get_knob_offset.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26   ; 2 uses
  %i.v = icmp slt i32 %i.s, %i.u
  %i.w = add nsw i32 %i.s, 360
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31  ; 3 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  %i.ac = add nsw i32 %i.y, 360
  %.0.i = select i1 %i.ab, i32 %i.ac, i32 %i.y
  %i.ad = add nsw i32 %spec.select.i, %i.u
  %i.ae = sdiv i32 %i.ad, 2                       ; 3 uses
  %i.af = icmp slt i32 %i.aa, %i.ae
  %i.ag = icmp sgt i32 %.0.i, %i.ae
  %spec.select38.i = select i1 %i.ag, i32 %i.y, i32 %i.ae
  %.pn.i = select i1 %i.af, i32 %i.aa, i32 %spec.select38.i
  %.030.i = add nsw i32 %.pn.i, %i.g
  br label %lv_arc_get_knob_offset.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

lv_arc_get_knob_offset.exit:                      ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %i.q, %bb.c ], [ %.030.i, %bb.d ], [ %i.g, %bb.a ]
  %i.ah = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ah to i32
  %i.ai = sdiv i32 %.sroa.0.0.extract.trunc.i, 2  ; 5 uses
  %i.aj = ptrtoint ptr %i.b to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.aj to i32
  %i.ak = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i20.i = trunc i64 %i.ak to i32
  %i.al = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 %.sroa.0.0.extract.trunc.i20.i)
  %i.am = ptrtoint ptr %i.d to i64
  %.sroa.0.0.extract.trunc.i21.i = trunc i64 %i.am to i32
  %i.an = ptrtoint ptr %i.e to i64
  %.sroa.0.0.extract.trunc.i22.i = trunc i64 %i.an to i32
  %i.ao = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i21.i, i32 %.sroa.0.0.extract.trunc.i22.i)
  %..i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.ao)
  %i.ap = add i32 %i.ai, %..i
  %i.aq = sub i32 %1, %i.ap                       ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !32
  %i.at = trunc i32 %.1.i to i16
  %i.au = add i16 %i.as, %i.at                    ; 2 uses
  %i.av = add i16 %i.au, 90
  %i.aw = tail call i32 @lv_trigo_sin(i16 noundef signext %i.av) #8
  %i.ax = mul nsw i32 %i.aw, %i.aq
  %i.ay = ashr i32 %i.ax, 15
  %i.az = tail call i32 @lv_trigo_sin(i16 noundef signext %i.au) #8
  %i.ba = mul nsw i32 %i.az, %i.aq
  %i.bb = ashr i32 %i.ba, 15
  %i.bc = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 196608, i8 noundef zeroext 26) #8
  %i.bd = ptrtoint ptr %i.bc to i64
  %.sroa.0.0.extract.trunc.i37 = trunc i64 %i.bd to i32
  %i.be = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 196608, i8 noundef zeroext 27) #8
  %i.bf = ptrtoint ptr %i.be to i64
  %.sroa.0.0.extract.trunc.i38 = trunc i64 %i.bf to i32
  %i.bg = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 196608, i8 noundef zeroext 24) #8
  %i.bh = ptrtoint ptr %i.bg to i64
  %.sroa.0.0.extract.trunc.i39 = trunc i64 %i.bh to i32
  %i.bi = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 196608, i8 noundef zeroext 25) #8
  %i.bj = ptrtoint ptr %i.bi to i64
  %.sroa.0.0.extract.trunc.i40 = trunc i64 %i.bj to i32
  %i.bk = add nsw i32 %i.ay, %.0.val              ; 2 uses
  %i.bl = add i32 %i.ai, %.sroa.0.0.extract.trunc.i37
  %i.bm = sub i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %2, align 4, !tbaa !62
  %i.bn = add i32 %i.bk, %i.ai
  %i.bo = add i32 %i.bn, %.sroa.0.0.extract.trunc.i38
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !63
  %i.bq = add nsw i32 %i.bb, %.4.val              ; 2 uses
  %i.br = add i32 %i.ai, %.sroa.0.0.extract.trunc.i39
  %i.bs = sub i32 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !64
  %i.bu = add i32 %i.bq, %i.ai
  %i.bv = add i32 %i.bu, %.sroa.0.0.extract.trunc.i40
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !65
  ret void
}

declare void @lv_draw_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_rect_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_is_visible(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_arc_get_area(i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_user_data(ptr noundef) local_unnamed_addr #2

declare void @lv_subject_set_int(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS15_lv_obj_class_t", !9, i64 0}
!11 = !{!"p1 _ZTS9_lv_obj_t", !9, i64 0}
!12 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !9, i64 0}
!13 = !{!"p1 _ZTS15_lv_obj_style_t", !9, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!15 = !{!"short", !4, i64 0}
!16 = !{!"_lv_obj_t", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !9, i64 32, !14, i64 40, !5, i64 56, !15, i64 60, !15, i64 62, !15, i64 62, !15, i64 62, !15, i64 62, !15, i64 62, !15, i64 63, !15, i64 63, !15, i64 63, !15, i64 63, !15, i64 63, !15, i64 63, !15, i64 64}
!17 = !{!"_lv_arc_t", !16, i64 0, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 104, !5, i64 104, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !15, i64 120}
!18 = !{!17, !5, i64 108}
!19 = !{!17, !5, i64 112}
!20 = !{!17, !5, i64 80}
!21 = !{!17, !5, i64 116}
!22 = !{!"", !5, i64 0, !5, i64 4}
!23 = !{!22, !5, i64 0}
!24 = !{!22, !5, i64 4}
!25 = !{!17, !5, i64 88}
!26 = !{!17, !5, i64 84}
!27 = !{!17, !5, i64 72}
!28 = !{!17, !5, i64 100}
!29 = !{!17, !5, i64 96}
!30 = !{!17, !5, i64 92}
!31 = !{!17, !5, i64 76}
!32 = !{!17, !15, i64 120}
!33 = !{!16, !5, i64 40}
!34 = !{!16, !5, i64 44}
!35 = !{!16, !12, i64 16}
!36 = !{!"any p2 pointer", !9, i64 0}
!37 = !{!"p2 _ZTS9_lv_obj_t", !36, i64 0}
!38 = !{!"p1 _ZTS11_lv_group_t", !9, i64 0}
!39 = !{!"p1 omnipotent char", !9, i64 0}
!40 = !{!"_Bool", !4, i64 0}
!41 = !{!"_lv_array_t", !39, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !40, i64 20}
!42 = !{!"", !41, i64 0, !4, i64 24, !4, i64 24}
!43 = !{!"_lv_obj_spec_attr_t", !37, i64 0, !38, i64 8, !42, i64 16, !22, i64 48, !5, i64 56, !5, i64 60, !15, i64 64, !15, i64 66, !15, i64 66, !15, i64 66, !15, i64 66, !15, i64 67, !15, i64 67}
!44 = !{!43, !5, i64 56}
!45 = !{!"_lv_hit_test_info_t", !9, i64 0, !40, i64 8}
!46 = !{!45, !9, i64 0}
!47 = !{!45, !40, i64 8}
!48 = !{!"p1 _ZTS11_lv_layer_t", !9, i64 0}
!49 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!50 = !{!"long", !4, i64 0}
!51 = !{!"", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !48, i64 24, !15, i64 32, !15, i64 34, !49, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !50, i64 48, !9, i64 56}
!52 = !{!"", !51, i64 0, !49, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !22, i64 80, !9, i64 88, !15, i64 96, !4, i64 98, !4, i64 99}
!53 = !{!52, !48, i64 24}
!54 = !{!52, !15, i64 96}
!55 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !9, i64 48}
!56 = !{!"", !51, i64 0, !5, i64 64, !9, i64 72, !9, i64 80, !49, i64 88, !4, i64 91, !4, i64 92, !4, i64 93, !4, i64 94, !4, i64 95, !4, i64 96, !4, i64 97, !49, i64 98, !55, i64 104, !9, i64 160, !49, i64 168, !5, i64 172, !5, i64 176, !4, i64 176, !49, i64 177, !5, i64 180, !5, i64 184, !49, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204}
!57 = !{!56, !48, i64 24}
!58 = !{!"p1 _ZTS13_lv_subject_t", !9, i64 0}
!59 = !{!"_lv_observer_t", !58, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32, !5, i64 32, !5, i64 32}
!60 = !{!59, !9, i64 16}
!61 = !{!4, !4, i64 0}
!62 = !{!14, !5, i64 0}
!63 = !{!14, !5, i64 8}
!64 = !{!14, !5, i64 4}
!65 = !{!14, !5, i64 12}
end_hunk_2
