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
  store i32 720, ptr %i.h, align 4, !tbaa !9
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
  %i.y = load i32, ptr %6, align 8, !tbaa !22     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.y
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !24  ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.aa
  %i.ac = add nuw nsw i32 %i.ab, %i.z
  %i.ad = mul nuw nsw i32 %spec.select, %spec.select
  %i.ae = icmp samesign ugt i32 %i.ac, %i.ad
  %.pre348 = load i8, ptr %i.o, align 8           ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = or i8 %.pre348, 1
  store i8 %i.af, ptr %i.o, align 8
  %i.ag = call i32 @lv_tick_get() #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !19
  %.pre347 = load i8, ptr %i.o, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  %i.ai = phi i8 [ %.pre348, %bb.h ], [ %.pre347, %bb.i ], [ %i.p, %bb.e ]
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %6, align 8, !tbaa !22    ; 2 uses
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
  %i.au = zext i16 %i.at to i32                   ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !27
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.ay = add i32 %i.aw, %i.ax                    ; 4 uses
  %i.az = sub i32 %i.au, %i.ay
  %smax344 = call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.ba = add i32 %i.ay, %smax344                 ; 2 uses
  %10 = icmp ne i32 %i.ba, %i.au
  %umin345 = zext i1 %10 to i32                   ; 2 uses
  %i.bb = add nuw nsw i32 %umin345, %i.au
  %i.bc = sub i32 %i.ba, %i.bb
  %11 = udiv i32 %i.bc, 360
  %12 = add nuw nsw i32 %11, %umin345
  %13 = mul i32 %12, 360
  %i.bd = add i32 %13, %i.au                      ; 2 uses
  %i.be = sub i32 %i.bd, %i.ay                    ; 2 uses
  %i.bf = icmp slt i32 %i.aq, %i.as
  %i.bg = add nsw i32 %i.aq, 360
  %spec.select298 = select i1 %i.bf, i32 %i.bg, i32 %i.aq ; 3 uses
  %i.bh = call i32 @llvm.usub.sat.i32(i32 359, i32 %i.be)
  %i.bi = add i32 %i.bd, %i.bh
  %i.bj = sub i32 %i.bi, %i.ay
  %.fr356 = freeze i32 %i.bj                      ; 2 uses
  %i.bk = urem i32 %.fr356, 360
  %.neg357 = sub i32 %i.bk, %.fr356
  %i.bl = add i32 %.neg357, %i.be                 ; 3 uses
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !8
  %i.bn = mul i32 %i.bm, 628
  %i.bo = udiv i32 %i.bn, 100
  %i.bp = call i32 @lv_dpx(i32 noundef 20) #8
  %i.bq = mul nsw i32 %i.bp, 360
  %i.br = udiv i32 %i.bq, %i.bo
  %i.bs = load i8, ptr %i.o, align 8
  %i.bt = call fastcc zeroext i1 @lv_arc_angle_within_bg_bounds(ptr noundef nonnull %i.f, i32 noundef %i.bl, i32 noundef %i.br)
  br i1 %i.bt, label %bb.l, label %bb.ab

bb.l:                                             ; preds = %.preheader.preheader
  %i.bu = load i32, ptr %i.ar, align 4, !tbaa !26 ; 2 uses
  %i.bv = sub nsw i32 %spec.select298, %i.bu      ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21
  %i.by = sub nsw i32 %i.bx, %i.bu                ; 3 uses
  %i.bz = sub nsw i32 %i.bl, %i.by
  %i.ca = call i32 @llvm.abs.i32(i32 %i.bz, i1 true) ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, 281        ; 2 uses
  %i.cc = load i8, ptr %i.o, align 8              ; 6 uses
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = and i8 %i.cc, 8
  %.not292 = icmp eq i8 %i.cd, 0
  %.299 = select i1 %.not292, i32 %i.bv, i32 0
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ce = and i8 %i.cc, 16
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = and i8 %i.cc, 8
  %.not291 = icmp eq i8 %i.cg, 0
  %i.ch = sub nsw i32 0, %i.bv
  %spec.select314 = select i1 %.not291, i32 %i.bv, i32 %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.n
  %.2258 = phi i32 [ %.299, %bb.m ], [ %i.bl, %bb.n ], [ %spec.select314, %bb.o ] ; 2 uses
  %i.ci = and i8 %i.bs, 8
  %cond = icmp eq i8 %i.ci, 0
  %i.cj = and i8 %i.cc, 24                        ; 2 uses
  br i1 %cond, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond301 = icmp ne i8 %i.cj, 0
  %brmerge = or i1 %i.cb, %or.cond301
  br i1 %brmerge, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = or disjoint i8 %i.cc, 8
  br label %.sink.split

bb.s:                                             ; preds = %bb.p
  %or.cond304 = icmp eq i8 %i.cj, 8
  %i.cl = icmp samesign ult i32 %i.ca, 80
  %or.cond305 = select i1 %or.cond304, i1 %i.cl, i1 false
  br i1 %or.cond305, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = and i8 %i.cc, -25
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.t
  %.sink359 = phi i8 [ %i.cm, %bb.t ], [ %i.ck, %bb.r ]
  %.3259.ph = phi i32 [ %i.bv, %bb.t ], [ 0, %bb.r ]
  store i8 %.sink359, ptr %i.o, align 8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q, %bb.s
  %.3259 = phi i32 [ %.2258, %bb.s ], [ %.2258, %bb.q ], [ %.3259.ph, %.sink.split ]
  %i.cn = sub nsw i32 %.3259, %i.by               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !19
  %i.cq = call i32 @lv_tick_elaps(i32 noundef %i.cp) #8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !9
  %i.ct = mul i32 %i.cs, %i.cq
  %i.cu = udiv i32 %i.ct, 1000                    ; 3 uses
  %i.cv = icmp sgt i32 %i.cn, %i.cu
  %i.cw = sub nsw i32 0, %i.cu
  %spec.select306 = call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.cw)
  %.0261 = select i1 %i.cv, i32 %i.cu, i32 %spec.select306
  %i.cx = load i32, ptr %i.ar, align 4, !tbaa !26 ; 3 uses
  %i.cy = sub nsw i32 %spec.select298, %i.cx
  %i.cz = shl nsw i32 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 100 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !28 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !29 ; 2 uses
  %i.de = sub nsw i32 %i.db, %i.dd
  %i.df = sdiv i32 %i.cz, %i.de
  %i.dg = add nsw i32 %i.df, 4
  %i.dh = sdiv i32 %i.dg, 16
  %i.di = add i32 %i.cx, %i.by
  %i.dj = add i32 %i.di, %.0261
  %i.dk = add i32 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !30
  %i.dn = call i32 @lv_map(i32 noundef %i.dk, i32 noundef %i.cx, i32 noundef %spec.select298, i32 noundef %i.dd, i32 noundef %i.db) #8 ; 2 uses
  %i.do = load i8, ptr %i.o, align 8
  %i.dp = and i8 %i.do, 6
  %i.dq = icmp eq i8 %i.dp, 4
  br i1 %i.dq, label %bb.v, label %lv_arc_get_value.exit

bb.v:                                             ; preds = %bb.u
  %i.dr = load i32, ptr %i.da, align 4, !tbaa !28
  %i.ds = sub i32 %i.dr, %i.dn
  %i.dt = load i32, ptr %i.dc, align 8, !tbaa !29
  %i.du = add nsw i32 %i.ds, %i.dt
  br label %lv_arc_get_value.exit

lv_arc_get_value.exit:                            ; preds = %bb.u, %bb.v
  %.0262 = phi i32 [ %i.du, %bb.v ], [ %i.dn, %bb.u ] ; 5 uses
  %i.dv = load i32, ptr %i.dl, align 4, !tbaa !30
  %.not295 = icmp eq i32 %.0262, %i.dv
  br i1 %.not295, label %bb.y, label %bb.w

bb.w:                                             ; preds = %lv_arc_get_value.exit
  %i.dw = call i32 @lv_tick_get() #8
  store i32 %i.dw, ptr %i.co, align 8, !tbaa !19
  call void @lv_arc_set_value(ptr noundef nonnull %i.f, i32 noundef %.0262)
  %.not296 = icmp eq i32 %.0262, %i.dm
  br i1 %.not296, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 35, ptr noundef null) #8
  %.not297 = icmp eq i32 %i.dx, 1
  br i1 %.not297, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.w, %bb.x, %lv_arc_get_value.exit
  %i.dy = load i32, ptr %i.dc, align 8, !tbaa !29
  %i.dz = icmp eq i32 %.0262, %i.dy
  br i1 %i.dz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load i32, ptr %i.da, align 4, !tbaa !28
  %i.eb = icmp eq i32 %.0262, %i.ea
  br i1 %i.eb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ec = call i32 @lv_tick_get() #8
  store i32 %i.ec, ptr %i.co, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader.preheader, %bb.z, %bb.aa, %bb.x, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.critedge

bb.ac:                                            ; preds = %bb.b
  %i.ed = and i32 %i.e, -9
  %or.cond7 = icmp eq i32 %i.ed, 3
  br i1 %or.cond7, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8
  %i.eg = and i8 %i.ef, -2
  store i8 %i.eg, ptr %i.ee, align 8
  %i.eh = tail call ptr @lv_obj_get_group(ptr noundef %i.f) #8 ; 2 uses
  %i.ei = tail call zeroext i1 @lv_group_get_editing(ptr noundef %i.eh) #8
  %i.ej = tail call ptr @lv_indev_active() #8
  %i.ek = tail call i32 @lv_indev_get_type(ptr noundef %i.ej) #8
  %i.el = icmp eq i32 %i.ek, 4
  %or.cond13 = select i1 %i.el, i1 %i.ei, i1 false
  br i1 %or.cond13, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  tail call void @lv_group_set_editing(ptr noundef %i.eh, i1 noundef zeroext false) #8
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
  %i.em = tail call i32 @lv_event_get_key(ptr noundef %1) #8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !30 ; 2 uses
  %i.ep = and i32 %i.em, -3
  %or.cond9 = icmp eq i32 %i.ep, 17
  br i1 %or.cond9, label %.sink.split360, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.em, label %bb.ai [
    i32 20, label %.sink.split360
    i32 18, label %.sink.split360
  ]

.sink.split360:                                   ; preds = %bb.ah, %bb.ah, %bb.ag
  %.sink362 = phi i32 [ 1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ah ]
  %i.eq = add nsw i32 %i.eo, %.sink362
  tail call void @lv_arc_set_value(ptr noundef nonnull %i.f, i32 noundef %i.eq)
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split360, %bb.ah
  %i.er = load i32, ptr %i.en, align 4, !tbaa !30
  %.not287 = icmp eq i32 %i.eo, %i.er
  br i1 %.not287, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 35, ptr noundef null) #8 ; 0 uses
  br label %.critedge

bb.ak:                                            ; preds = %bb.af
  %i.et = tail call i32 @lv_event_get_rotary_diff(ptr noundef %1) #8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !30 ; 3 uses
  %i.ew = icmp eq i32 %i.et, 0
  br i1 %i.ew, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = add nsw i32 %i.ev, %i.et
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !28
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !29
  %i.fc = tail call i32 @llvm.smax.i32(i32 %..i, i32 %i.fb) ; 2 uses
  %i.fd = icmp eq i32 %i.ev, %i.fc
  br i1 %i.fd, label %.critedge, label %lv_arc_set_value.exit

lv_arc_set_value.exit:                            ; preds = %bb.al
  store i32 %i.fc, ptr %i.eu, align 4, !tbaa !30
  tail call fastcc void @value_update(ptr noundef %i.f)
  %.pre = load i32, ptr %i.eu, align 4, !tbaa !30
  %i.fe = icmp eq i32 %i.ev, %.pre
  br i1 %i.fe, label %.critedge, label %bb.am

bb.am:                                            ; preds = %lv_arc_set_value.exit
  %i.ff = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 35, ptr noundef null) #8 ; 0 uses
  br label %.critedge

bb.an:                                            ; preds = %bb.af
  %i.fg = tail call ptr @lv_event_get_param(ptr noundef %1) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call fastcc void @get_center(ptr noundef %i.f, ptr noundef %8, ptr noundef %i.c)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !31 ; 2 uses
  %.not284 = icmp eq ptr %i.fi, null
  br i1 %.not284, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0263 = phi i32 [ %i.fk, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.fl = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 76) #8
  %i.fm = ptrtoint ptr %i.fl to i64
  %.sroa.0.0.extract.trunc.i326 = trunc i64 %i.fm to i32 ; 2 uses
  %i.fn = load i32, ptr %i.c, align 4, !tbaa !8
  %i.fo = add i32 %.0263, %.sroa.0.0.extract.trunc.i326
  %i.fp = sub i32 %i.fn, %i.fo                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.fq = load i32, ptr %8, align 4, !tbaa !22    ; 3 uses
  %i.fr = sub nsw i32 %i.fq, %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !24 ; 3 uses
  %i.fu = sub nsw i32 %i.ft, %i.fp
  %i.fv = add nsw i32 %i.fq, %i.fp
  %i.fw = add nsw i32 %i.ft, %i.fp
  call void @lv_area_set(ptr noundef nonnull %9, i32 noundef %i.fr, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef %i.fw) #8
  %i.fx = load ptr, ptr %i.fg, align 8, !tbaa !41
  %i.fy = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %9, ptr noundef %i.fx, i32 noundef 32767) #8
  br i1 %i.fy, label %.critedge312, label %.preheader342.preheader

.critedge312:                                     ; preds = %bb.ap
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i8 0, ptr %i.fz, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.critedge

.preheader342.preheader:                          ; preds = %bb.ap
  %i.ga = load ptr, ptr %i.fg, align 8, !tbaa !41 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !24
  %i.gd = sub nsw i32 %i.gc, %i.ft
  %i.ge = load i32, ptr %i.ga, align 4, !tbaa !22
  %i.gf = sub nsw i32 %i.ge, %i.fq
  %i.gg = call zeroext i16 @lv_atan2(i32 noundef %i.gd, i32 noundef %i.gf) #8
  %i.gh = zext i16 %i.gg to i32                   ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !26
  %i.gm = add i32 %i.gj, %i.gl                    ; 4 uses
  %i.gn = sub i32 %i.gh, %i.gm
  %smax = call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.go = add i32 %i.gm, %smax                    ; 2 uses
  %14 = icmp ne i32 %i.go, %i.gh
  %umin = zext i1 %14 to i32                      ; 2 uses
  %i.gp = add nuw nsw i32 %umin, %i.gh
  %i.gq = sub i32 %i.go, %i.gp
  %15 = udiv i32 %i.gq, 360
  %16 = add nuw nsw i32 %15, %umin
  %17 = mul i32 %16, 360
  %i.gr = add i32 %17, %i.gh                      ; 2 uses
  %i.gs = sub i32 %i.gr, %i.gm                    ; 2 uses
  %i.gt = call i32 @llvm.usub.sat.i32(i32 359, i32 %i.gs)
  %i.gu = add i32 %i.gr, %i.gt
  %i.gv = sub i32 %i.gu, %i.gm
  %.fr.a = freeze i32 %i.gv                       ; 2 uses
  %i.gw = urem i32 %.fr.a, 360
  %.neg = sub i32 %i.gw, %.fr.a
  %i.gx = add i32 %.neg, %i.gs
  %i.gy = mul i32 %i.fp, 628
  %i.gz = udiv i32 %i.gy, 100
  %i.ha = call i32 @lv_dpx(i32 noundef 20) #8
  %i.hb = mul nsw i32 %i.ha, 360
  %i.hc = udiv i32 %i.hb, %i.gz
  %i.hd = call fastcc zeroext i1 @lv_arc_angle_within_bg_bounds(ptr noundef nonnull %i.f, i32 noundef %i.gx, i32 noundef %i.hc)
  br i1 %i.hd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.preheader342.preheader
  %i.he = shl nsw i32 %.0263, 1
  %i.hf = add nsw i32 %i.he, %.sroa.0.0.extract.trunc.i326 ; 2 uses
  call void @lv_area_increase(ptr noundef nonnull %9, i32 noundef %i.hf, i32 noundef %i.hf) #8
  %i.hg = load ptr, ptr %i.fg, align 8, !tbaa !41
  %i.hh = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %9, ptr noundef %i.hg, i32 noundef 32767) #8
  %i.hi = zext i1 %i.hh to i8
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader342.preheader, %bb.aq
  %.sink = phi i8 [ %i.hi, %bb.aq ], [ 0, %.preheader342.preheader ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i8 %.sink, ptr %i.hj, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.critedge

bb.as:                                            ; preds = %bb.af
  %i.hk = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.hl = ptrtoint ptr %i.hk to i64
  %.sroa.0.0.extract.trunc.i327 = trunc i64 %i.hl to i32
  %i.hm = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.hn = ptrtoint ptr %i.hm to i64
  %.sroa.0.0.extract.trunc.i328 = trunc i64 %i.hn to i32
  %i.ho = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.hp = ptrtoint ptr %i.ho to i64
  %.sroa.0.0.extract.trunc.i329 = trunc i64 %i.hp to i32
  %i.hq = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 0, i8 noundef zeroext 25) #8
  %i.hr = ptrtoint ptr %i.hq to i64
  %.sroa.0.0.extract.trunc.i330 = trunc i64 %i.hr to i32
  %i.hs = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i327, i32 %.sroa.0.0.extract.trunc.i328)
  %i.ht = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i329, i32 %.sroa.0.0.extract.trunc.i330)
  %.313 = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 %i.ht)
  %i.hu = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 26) #8
  %i.hv = ptrtoint ptr %i.hu to i64
  %.sroa.0.0.extract.trunc.i331 = trunc i64 %i.hv to i32
  %i.hw = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 27) #8
  %i.hx = ptrtoint ptr %i.hw to i64
  %.sroa.0.0.extract.trunc.i332 = trunc i64 %i.hx to i32
  %i.hy = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 24) #8
  %i.hz = ptrtoint ptr %i.hy to i64
  %.sroa.0.0.extract.trunc.i333 = trunc i64 %i.hz to i32
  %i.ia = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.f, i32 noundef 196608, i8 noundef zeroext 25) #8
  %i.ib = ptrtoint ptr %i.ia to i64
  %.sroa.0.0.extract.trunc.i334 = trunc i64 %i.ib to i32
  %i.ic = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i331, i32 %.sroa.0.0.extract.trunc.i332)
  %i.id = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i333, i32 %.sroa.0.0.extract.trunc.i334)
  %i.ie = tail call i32 @llvm.smax.i32(i32 %i.ic, i32 %i.id)
  %i.if = tail call fastcc i32 @knob_get_extra_size(ptr noundef %i.f)
  %reass.sub = sub i32 %i.if, %.313
  %i.ig = add i32 %reass.sub, 2
  %i.ih = add i32 %i.ig, %i.ie
  %i.ii = tail call ptr @lv_event_get_param(ptr noundef %1) #8 ; 4 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !8
  %i.ik = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 %i.ih) ; 2 uses
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !8
  %i.il = tail call i32 @lv_obj_calculate_ext_draw_size(ptr noundef %i.f, i32 noundef 131072) #8
  %i.im = icmp sgt i32 %i.ik, %i.il
  br i1 %i.im, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.in = load i32, ptr %i.ii, align 4, !tbaa !8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.io = tail call i32 @lv_obj_calculate_ext_draw_size(ptr noundef %i.f, i32 noundef 131072) #8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ip = phi i32 [ %i.in, %bb.at ], [ %i.io, %bb.au ]
  store i32 %i.ip, ptr %i.ii, align 4, !tbaa !8
  br label %.critedge

bb.aw:                                            ; preds = %bb.af
  %i.iq = tail call ptr @lv_event_get_current_target(ptr noundef %1) #8 ; 13 uses
  %i.ir = tail call ptr @lv_event_get_layer(ptr noundef %1) #8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call fastcc void @get_center(ptr noundef %i.iq, ptr noundef %2, ptr noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.is = load i32, ptr %i.a, align 4, !tbaa !8   ; 4 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %3) #8
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ir, ptr %i.iu, align 8, !tbaa !44
  call void @lv_obj_init_draw_arc_dsc(ptr noundef %i.iq, i32 noundef 0, ptr noundef nonnull %3) #8
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.iw = load i64, ptr %2, align 8
  store i64 %i.iw, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 84
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !27
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.jb = load <2 x i32>, ptr %i.ix, align 4, !tbaa !8
  %i.jc = insertelement <2 x i32> poison, i32 %i.iz, i64 0
  %i.jd = shufflevector <2 x i32> %i.jc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.je = add nsw <2 x i32> %i.jb, %i.jd
  store <2 x i32> %i.je, ptr %i.ja, align 8, !tbaa !8
  %i.jf = trunc i32 %i.is to i16
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i16 %i.jf, ptr %i.jg, align 8, !tbaa !50
  call void @lv_draw_arc(ptr noundef %i.ir, ptr noundef nonnull %3) #8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jh = call ptr @lv_obj_get_style_prop(ptr noundef %i.iq, i32 noundef 131072, i8 noundef zeroext 26) #8
  %i.ji = ptrtoint ptr %i.jh to i64
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.ji to i32
  %i.jj = call ptr @lv_obj_get_style_prop(ptr noundef %i.iq, i32 noundef 131072, i8 noundef zeroext 27) #8
  %i.jk = ptrtoint ptr %i.jj to i64
  %.sroa.0.0.extract.trunc.i20.i.i = trunc i64 %i.jk to i32
  %i.jl = call ptr @lv_obj_get_style_prop(ptr noundef %i.iq, i32 noundef 131072, i8 noundef zeroext 24) #8
  %i.jm = ptrtoint ptr %i.jl to i64
  %.sroa.0.0.extract.trunc.i21.i.i = trunc i64 %i.jm to i32
  %i.jn = call ptr @lv_obj_get_style_prop(ptr noundef %i.iq, i32 noundef 131072, i8 noundef zeroext 25) #8
  %i.jo = ptrtoint ptr %i.jn to i64
  %.sroa.0.0.extract.trunc.i22.i.i = trunc i64 %i.jo to i32
  %i.jp = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i.i, i32 %.sroa.0.0.extract.trunc.i20.i.i)
  %i.jq = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i21.i.i, i32 %.sroa.0.0.extract.trunc.i22.i.i)
  %..i.i = call i32 @llvm.smax.i32(i32 %i.jp, i32 %i.jq)
  %i.jr = sub nsw i32 %i.is, %..i.i               ; 2 uses
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %bb.az, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ay
  %.val.pre.i = load i32, ptr %2, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val24.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %lv_arc_draw.exit

bb.az:                                            ; preds = %bb.ay
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %3) #8
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ir, ptr %i.jt, align 8, !tbaa !44
  call void @lv_obj_init_draw_arc_dsc(ptr noundef %i.iq, i32 noundef 131072, ptr noundef nonnull %3) #8
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.jv = load i64, ptr %2, align 8               ; 3 uses
  store i64 %i.jv, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iq, i64 76
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iq, i64 72
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !27
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ka = load <2 x i32>, ptr %i.jw, align 4, !tbaa !8
  %i.kb = insertelement <2 x i32> poison, i32 %i.jy, i64 0
  %i.kc = shufflevector <2 x i32> %i.kb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kd = add nsw <2 x i32> %i.ka, %i.kc
  store <2 x i32> %i.kd, ptr %i.jz, align 8, !tbaa !8
  %i.ke = trunc i32 %i.jr to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i16 %i.ke, ptr %i.kf, align 8, !tbaa !50
  call void @lv_draw_arc(ptr noundef %i.ir, ptr noundef nonnull %3) #8
  %i.kg = trunc i64 %i.jv to i32
  %i.kh = lshr i64 %i.jv, 32
  %i.ki = trunc nuw i64 %i.kh to i32
  br label %lv_arc_draw.exit

lv_arc_draw.exit:                                 ; preds = %._crit_edge.i, %bb.az
  %.val24.i = phi i32 [ %.val24.pre.i, %._crit_edge.i ], [ %i.ki, %bb.az ]
  %.val.i = phi i32 [ %.val.pre.i, %._crit_edge.i ], [ %i.kg, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call fastcc void @get_knob_area(ptr noundef %i.iq, i32 %.val.i, i32 %.val24.i, i32 noundef %i.is, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %5) #8
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ir, ptr %i.kj, align 8, !tbaa !51
  call void @lv_obj_init_draw_rect_dsc(ptr noundef %i.iq, i32 noundef 196608, ptr noundef nonnull %5) #8
  call void @lv_draw_rect(ptr noundef %i.ir, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
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
end_hunk_0
begin_hunk_1_@lv_arc_set_bg_start_angle:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 3 uses
  %i.g = sub nsw i32 %i.d, %i.f                   ; 3 uses
  %i.h = sub nsw i32 %i.d, %spec.select           ; 3 uses
  %i.i = icmp slt i32 %i.g, 0
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
  %.lobit = lshr i32 %1, 31                       ; 2 uses
  %i.a = add i32 %1, %.lobit
  %i.b = sub i32 %smax, %i.a
  %2 = udiv i32 %i.b, 360
  %3 = add nuw nsw i32 %.lobit, %2
  %4 = mul i32 %3, 360
  %i.c = add i32 %1, %4                           ; 2 uses
  %i.d = tail call i32 @llvm.umax.i32(i32 %i.c, i32 359) ; 2 uses
  %i.e = urem i32 %i.d, 360
  %.neg = sub i32 %i.e, %i.d
  %i.f = add i32 %.neg, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.f, ptr %i.g, align 8, !tbaa !27
  %i.h = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #8 ; 0 uses
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
end_hunk_1
begin_hunk_2_@get_center:bb.a
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 27) #8
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i26 = trunc i64 %i.d to i32
  %i.e = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.f = ptrtoint ptr %i.e to i64
  %.sroa.0.0.extract.trunc.i27 = trunc i64 %i.f to i32 ; 2 uses
  %i.g = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 25) #8
  %i.h = ptrtoint ptr %i.g to i64
  %.sroa.0.0.extract.trunc.i28 = trunc i64 %i.h to i32
  %i.i = tail call i32 @lv_obj_get_width(ptr noundef %0) #8
  %i.j = add i32 %.sroa.0.0.extract.trunc.i26, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.k = sub i32 %i.i, %i.j
  %i.l = tail call i32 @lv_obj_get_height(ptr noundef %0) #8
  %i.m = add i32 %.sroa.0.0.extract.trunc.i28, %.sroa.0.0.extract.trunc.i27 ; 2 uses
  %i.n = sub i32 %i.l, %i.m
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

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
  %i.w = load i32, ptr %i.v, align 8, !tbaa !60
  %i.x = add i32 %i.u, %.sroa.0.0.extract.trunc.i
  %i.y = add i32 %i.x, %i.w
  store i32 %i.y, ptr %1, align 4, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !61
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54  ; 3 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  %i.ac = add nsw i32 %i.y, 360
  %.029.i = select i1 %i.ab, i32 %i.ac, i32 %i.y
  %i.ad = add nsw i32 %spec.select.i, %i.u
  %i.ae = sdiv i32 %i.ad, 2                       ; 3 uses
  %i.af = icmp slt i32 %i.aa, %i.ae
  %i.ag = icmp sgt i32 %.029.i, %i.ae
  %spec.select38.i = select i1 %i.ag, i32 %i.y, i32 %i.ae
  %.pn.i = select i1 %i.af, i32 %i.aa, i32 %spec.select38.i
  %.0.i = add nsw i32 %.pn.i, %i.g
  br label %get_angle.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

get_angle.exit:                                   ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.1.i = phi i32 [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %.0.i, %bb.f ], [ %i.g, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !60
  %i.aj = load i32, ptr %3, align 4, !tbaa !22
  %.neg21 = sub nsw i32 %i.aj, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !61
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 5 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.j, label %.preheader41.preheader

.preheader41.preheader:                           ; preds = %bb.b
  %i.f = sub i32 %i.b, %i.d
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %i.g = add i32 %i.d, %smax                      ; 2 uses
  %3 = icmp ne i32 %i.g, %i.b
  %umin = zext i1 %3 to i32                       ; 2 uses
  %i.h = add i32 %i.b, %umin
  %i.i = sub i32 %i.g, %i.h
  %4 = udiv i32 %i.i, 360
  %5 = add nuw nsw i32 %4, %umin
  %6 = mul i32 %5, 360
  %i.j = add i32 %i.b, %6                         ; 2 uses
  %i.k = sub i32 %i.j, %i.d                       ; 2 uses
  %i.l = add i32 %i.j, 359
  %umin42 = tail call i32 @llvm.umin.i32(i32 %i.k, i32 359)
  %i.m = add i32 %i.d, %umin42
  %i.n = sub i32 %i.l, %i.m
  %.fr.a = freeze i32 %i.n                        ; 2 uses
  %i.o = urem i32 %.fr.a, 360
  %.neg = sub i32 %i.o, %.fr.a
  %i.p = add i32 %.neg, %i.k                      ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %spec.store.select = select i1 %i.q, i32 360, i32 %i.p ; 4 uses
  %.not36 = icmp samesign ugt i32 %1, %spec.store.select
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader41.preheader
  %i.r = lshr i32 %spec.store.select, 1
  %i.s = icmp samesign ult i32 %1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, -25
  %masksel = select i1 %i.s, i8 8, i8 0
  %i.w = or disjoint i8 %i.v, %masksel
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = or disjoint i8 %i.w, 16
  store i8 %i.y, ptr %i.x, align 8
  br label %bb.j

bb.d:                                             ; preds = %.preheader41.preheader
  %i.z = sub nuw nsw i32 360, %spec.store.select
  %.not37 = icmp sgt i32 %i.z, %2
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = or i8 %i.ab, 24
  store i8 %i.ac, ptr %i.aa, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ad = sub nuw nsw i32 360, %1
  %.not38 = icmp sgt i32 %i.ad, %2
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = and i8 %i.af, -25
  %i.ah = or disjoint i8 %i.ag, 8
  store i8 %i.ah, ptr %i.ae, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ai = add nsw i32 %spec.store.select, %2
  %.not39 = icmp sgt i32 %1, %i.ai
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, -25
  store i8 %i.al, ptr %i.aj, align 8
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54  ; 3 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  %i.ac = add nsw i32 %i.y, 360
  %.029.i = select i1 %i.ab, i32 %i.ac, i32 %i.y
  %i.ad = add nsw i32 %spec.select.i, %i.u
  %i.ae = sdiv i32 %i.ad, 2                       ; 3 uses
  %i.af = icmp slt i32 %i.aa, %i.ae
  %i.ag = icmp sgt i32 %.029.i, %i.ae
  %spec.select38.i = select i1 %i.ag, i32 %i.y, i32 %i.ae
  %.pn.i = select i1 %i.af, i32 %i.aa, i32 %spec.select38.i
  %.0.i = add nsw i32 %.pn.i, %i.g
  br label %lv_arc_get_knob_offset.exit
end_hunk_2
