Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_arclabel?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_draw_letter_dsc_t = type { %struct.lv_draw_dsc_base_t, i32, ptr, %struct.lv_color_t, i32, i32, i32, i32, i32, %struct.lv_point_t, i8, i8, i8, i32, %struct.lv_color_t }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [9 x i8] c"arclabel\00", align 1
@lv_arclabel_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_arclabel_constructor, ptr null, ptr @lv_arclabel_event, ptr null, ptr @.str, i32 0, i32 0, i8 2, i8 8, i8 0, [5 x i8] zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Arced Text\00", align 1

; Function Attrs: nounwind uwtable
define internal void @lv_arclabel_constructor(ptr nofree readnone captures(none) %0, ptr noundef initializes((88, 96), (112, 116)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 0, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 360, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, -31
  %i.g = or disjoint i8 %i.f, 24                  ; 3 uses
  store i8 %i.g, ptr %i.d, align 4
  %i.h = and i8 %i.e, 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %lv_arclabel_set_text_static.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not13.i = icmp eq ptr %i.k, null
  br i1 %.not13.i, label %lv_arclabel_set_text_static.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lv_free(ptr noundef nonnull %i.k) #6
  %.pre = load i8, ptr %i.d, align 4
  br label %lv_arclabel_set_text_static.exit

lv_arclabel_set_text_static.exit:                 ; preds = %bb.a, %bb.b, %bb.c
  %i.l = phi i8 [ %i.g, %bb.a ], [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.d, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @.str.1, ptr %i.n, align 8, !tbaa !23
  %i.o = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %1) #6 ; 0 uses
  tail call void @lv_obj_remove_flag(ptr noundef nonnull %1, i32 noundef 786) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_arclabel_event(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.lv_area_t, align 4          ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.lv_color_t, align 4         ; 5 uses
  %4 = alloca %struct.lv_point_t, align 4         ; 6 uses
  %5 = alloca %struct.lv_draw_letter_dsc_t, align 8 ; 10 uses
  %i.i = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_arclabel_class, ptr noundef %1) #6
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @lv_event_get_code(ptr noundef %1) #6
  %i.k = icmp eq i32 %i.j, 29
  br i1 %i.k, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @lv_event_get_current_target(ptr noundef %1) #6 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %i.n, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @lv_obj_get_content_coords(ptr noundef %i.l, ptr noundef nonnull %2) #6
  %i.o = call ptr @lv_event_get_layer(ptr noundef %1) #6 ; 2 uses
  %i.p = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 77) #6 ; 2 uses
  %i.q = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 92) #6
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.r to i24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 101
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  %i.u = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 84) #6
  %i.v = ptrtoint ptr %i.u to i64
  %6 = trunc i64 %i.v to i8
  %7 = call i8 @llvm.umulh.i8(i8 %i.t, i8 %6)
  %i.w = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 102) #6
  %i.x = ptrtoint ptr %i.w to i64
  %.sroa.0.0.extract.trunc.i93.i = trunc i64 %i.x to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.y = call fastcc i32 @arclabel_calc_arc_text_total_angle(ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.ac = mul i32 %i.aa, 46080
  %i.ad = sdiv i32 %i.ac, 804
  %i.ae = sdiv i32 %i.ad, %i.ab                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28
  switch i32 %i.ag, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = sub nsw i32 %i.ae, %i.y
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ao = sub nsw i32 %i.an, %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.085.i = phi i32 [ 0, %bb.c ], [ %i.ae, %bb.d ], [ %i.al, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21
  %i.ar = mul i32 %i.ab, 67                       ; 2 uses
  %i.as = mul i32 %i.aq, %i.ar
  %i.at = sdiv i32 %i.as, 15
  %i.au = ashr i32 %i.at, 8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 0, ptr %i.f, align 4, !tbaa !25
  %.not99.i = icmp eq ptr %i.n, null
  br i1 %.not99.i, label %arclabel_draw_main.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.av = mul i32 %.085.i, %i.ar
  %i.aw = sdiv i32 %i.av, 15
  %i.ax = ashr i32 %i.aw, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 124 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.bk = phi ptr [ %i.n, %.lr.ph.i ], [ %i.bo, %.critedge.i ]
  %.065105.i = phi i32 [ %i.ax, %.lr.ph.i ], [ %.4.i, %.critedge.i ]
  %.067104.i = phi i32 [ 0, %.lr.ph.i ], [ %.168.i9, %.critedge.i ]
  %.072103.i = phi i32 [ 0, %.lr.ph.i ], [ %.173.i12, %.critedge.i ]
  %.077102.i = phi i32 [ 0, %.lr.ph.i ], [ %.380.i, %.critedge.i ]
  %.081101.i = phi i1 [ false, %.lr.ph.i ], [ %.384.i, %.critedge.i ]
  %.086100.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.187.i, %.critedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i32 0, ptr %i.g, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store i32 -1, ptr %i.h, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %3, align 4
  %i.bl = load i8, ptr %i.ay, align 4
  %i.bm = and i8 %i.bl, 2
  %.not88.i = icmp eq i8 %i.bm, 0
  br i1 %.not88.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = call fastcc ptr @recolor_cmd_get_next(ptr noundef %.086100.i, ptr noundef %i.a, ptr noundef %i.h, ptr noundef nonnull %3)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !25
  %.pre106.i = load ptr, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = phi ptr [ %.pre106.i, %bb.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bp = phi i32 [ %.pre.i, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %.187.i = phi ptr [ %i.bn, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.bq = load i32, ptr %i.d, align 4
  %i.br = load i8, ptr %i.c, align 1, !range !44
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = load i32, ptr %i.b, align 4             ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.r, %bb.j
  %.182.ph.i = phi i1 [ %.081101.i, %bb.j ], [ true, %bb.r ] ; 6 uses
  %.178.ph.i = phi i32 [ %.077102.i, %bb.j ], [ %.279.i, %bb.r ] ; 2 uses
  %.173.ph.i = phi i32 [ %.072103.i, %bb.j ], [ %.173.i19, %bb.r ] ; 2 uses
  %.168.ph.i = phi i32 [ %.067104.i, %bb.j ], [ %.168.i20, %bb.r ] ; 2 uses
  %.166.ph.i = phi i32 [ %.065105.i, %bb.j ], [ %.166.i21, %bb.r ] ; 2 uses
  %i.bu = load i32, ptr %i.g, align 4, !tbaa !25
  %i.bv = icmp ult i32 %i.bu, %i.bp
  br i1 %i.bv, label %.lr.ph, label %.critedge.i

.lr.ph:                                           ; preds = %.outer.i, %.split.i
  %.166.i21 = phi i32 [ %.2.i, %.split.i ], [ %.166.ph.i, %.outer.i ] ; 7 uses
  %.168.i20 = phi i32 [ %i.ch, %.split.i ], [ %.168.ph.i, %.outer.i ] ; 6 uses
  %.173.i19 = phi i32 [ %i.eb, %.split.i ], [ %.173.ph.i, %.outer.i ] ; 8 uses
  %.178.i18 = phi i32 [ %.279.i, %.split.i ], [ %.178.ph.i, %.outer.i ] ; 6 uses
  %i.bw = load i8, ptr %i.ay, align 4
  %i.bx = and i8 %i.bw, 12
  %i.by = icmp eq i8 %i.bx, 0
  %i.bz = icmp sle i32 %.166.i21, %i.au
  %i.ca = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %i.ca, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.lr.ph
  br i1 %.182.ph.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cb = icmp sgt i32 %.178.i18, 2
  br i1 %i.cb, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 46, ptr %i.e, align 4, !tbaa !25
  %.not89.i = icmp eq i32 %.178.i18, 2
  %i.cc = select i1 %.not89.i, i32 0, i32 46      ; 2 uses
  store i32 %i.cc, ptr %i.f, align 4, !tbaa !25
  %i.cd = add nsw i32 %.178.i18, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @lv_text_encoded_letter_next_2(ptr noundef %i.bo, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6
  %.pre107.i = load i32, ptr %i.e, align 4, !tbaa !25
  %.pre108.i = load i32, ptr %i.f, align 4, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = phi i32 [ %i.cc, %bb.m ], [ %.pre108.i, %bb.n ]
  %i.cf = phi i32 [ 46, %bb.m ], [ %.pre107.i, %bb.n ]
  %.279.i = phi i32 [ %i.cd, %bb.m ], [ %.178.i18, %bb.n ] ; 5 uses
  %i.cg = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.p, i32 noundef %i.cf, i32 noundef %i.ce) #6
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %.not90.i = icmp eq i32 %.173.i19, 0
  br i1 %.not90.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not91.i = icmp ult i32 %.173.i19, %i.bq
  br i1 %.not91.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load i8, ptr %i.ay, align 4
  %i.cj = and i8 %i.ci, 12
  %i.ck = icmp eq i8 %i.cj, 0
  %or.cond.i = or i1 %.182.ph.i, %i.ck
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bs, label %.outer.i, label %.critedge.i, !llvm.loop !36

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.cl = add i32 %.168.i20, %.sroa.0.0.extract.trunc.i93.i
  %i.cm = add i32 %i.cl, %i.ch
  %i.cn = sdiv i32 %i.cm, 2
  %i.co = add nsw i32 %i.cn, %.166.i21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.2.i = phi i32 [ %i.co, %bb.s ], [ %.166.i21, %bb.o ] ; 5 uses
  %i.cp = load i32, ptr %i.az, align 8, !tbaa !20
  %i.cq = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = sub nsw i32 %i.au, %.2.i
  %i.ct = select i1 %i.cr, i32 %.2.i, i32 %i.cs
  %i.cu = mul i32 %i.ct, 46080
  %i.cv = sdiv i32 %i.cu, 804
  %i.cw = sdiv i32 %i.cv, %i.bt
  %i.cx = add nsw i32 %i.cw, %i.cp                ; 2 uses
  %i.cy = trunc i32 %i.cx to i16                  ; 2 uses
  %i.cz = call i32 @lv_trigo_cos(i16 noundef signext %i.cy) #6
  %i.da = mul nsw i32 %i.cz, %i.bt
  %i.db = sdiv i32 %i.da, 32767
  %i.dc = call i32 @lv_trigo_sin(i16 noundef signext %i.cy) #6
  %i.dd = mul nsw i32 %i.dc, %i.bt
  %i.de = sdiv i32 %i.dd, 32767
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.df = call i32 @lv_area_get_width(ptr noundef nonnull %2) #6
  %i.dg = sdiv i32 %i.df, 2
  %i.dh = load i32, ptr %2, align 4, !tbaa !45
  %i.di = load i32, ptr %i.bb, align 8, !tbaa !30
  %i.dj = add i32 %i.dh, %i.db
  %i.dk = add i32 %i.dj, %i.dg
  %i.dl = add i32 %i.dk, %i.di
  store i32 %i.dl, ptr %4, align 4, !tbaa !46
  %i.dm = call i32 @lv_area_get_height(ptr noundef nonnull %2) #6
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.dp = load i32, ptr %i.be, align 4, !tbaa !31
  %i.dq = add i32 %i.do, %i.de
  %i.dr = add i32 %i.dq, %i.dn
  %i.ds = add i32 %i.dr, %i.dp
  store i32 %i.ds, ptr %i.bc, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @lv_draw_letter_dsc_init(ptr noundef nonnull %5) #6
  store ptr %i.p, ptr %i.bf, align 8, !tbaa !53
  %i.dt = load i8, ptr %i.ay, align 4
  %i.du = and i8 %i.dt, 2
  %.not92.i = icmp eq i8 %i.du, 0
  br i1 %.not92.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bg, ptr noundef nonnull align 4 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !54
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %i.bg, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i8 %7, ptr %i.bh, align 8, !tbaa !55
  %i.dv = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.dw = icmp eq i32 %i.dv, 0
  %i.dx = mul i32 %i.cx, 10
  %..i = select i1 %i.dw, i32 900, i32 -900
  %i.dy = add i32 %..i, %i.dx
  store i32 %i.dy, ptr %i.bi, align 4, !tbaa !56
  %i.dz = load i32, ptr %i.e, align 4, !tbaa !25  ; 2 uses
  store i32 %i.dz, ptr %i.bj, align 8, !tbaa !57
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.split.thread.i, label %.split.i

.split.thread.i:                                  ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %.critedge.i

.split.i:                                         ; preds = %bb.w
  call void @lv_draw_letter(ptr noundef %i.o, ptr noundef nonnull %5, ptr noundef nonnull %4) #6
  %i.eb = add i32 %.173.i19, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ec = load i32, ptr %i.g, align 4, !tbaa !25
  %i.ed = icmp ult i32 %i.ec, %i.bp
  br i1 %i.ed, label %.lr.ph, label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %.outer.i, %.split.i, %.lr.ph, %bb.l, %.split.thread.i
  %.173.i12 = phi i32 [ %.173.i19, %.split.thread.i ], [ %.173.i19, %bb.l ], [ %i.eb, %.split.i ], [ %.173.i19, %.lr.ph ], [ %.173.ph.i, %.outer.i ], [ %.173.i19, %bb.r ]
  %.168.i9 = phi i32 [ %.168.i20, %.split.thread.i ], [ %.168.i20, %bb.l ], [ %i.ch, %.split.i ], [ %.168.i20, %.lr.ph ], [ %.168.ph.i, %.outer.i ], [ %.168.i20, %bb.r ]
  %.384.i = phi i1 [ %.182.ph.i, %.split.thread.i ], [ true, %bb.l ], [ %.182.ph.i, %.split.i ], [ %.182.ph.i, %.lr.ph ], [ %.182.ph.i, %.outer.i ], [ false, %bb.r ]
  %.380.i = phi i32 [ %.279.i, %.split.thread.i ], [ %.178.i18, %bb.l ], [ %.279.i, %.split.i ], [ %.178.i18, %.lr.ph ], [ %.178.ph.i, %.outer.i ], [ %.279.i, %bb.r ]
  %.4.i = phi i32 [ %.2.i, %.split.thread.i ], [ %.166.i21, %bb.l ], [ %.2.i, %.split.i ], [ %.166.i21, %.lr.ph ], [ %.166.ph.i, %.outer.i ], [ %.166.i21, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %.not.i = icmp eq ptr %.187.i, null
  br i1 %.not.i, label %arclabel_draw_main.exit, label %bb.h, !llvm.loop !37

arclabel_draw_main.exit:                          ; preds = %.critedge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %arclabel_draw_main.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_arclabel_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_arclabel_class, ptr noundef %0) #6 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #6
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_arclabel_set_text(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.c ], [ %1, %bb.b ]    ; 3 uses
  %i.d = tail call i64 @lv_strlen(ptr noundef %.0) #6
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 4 uses
  %i.h = icmp eq ptr %i.g, %.0
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @lv_realloc(ptr noundef %i.g, i64 noundef %i.e) #6 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !23
  %.not31 = icmp eq ptr %i.m, null
  br i1 %.not31, label %.preheader32, label %bb.l

.preheader32:                                     ; preds = %bb.f, %.preheader32
  br label %.preheader32

bb.g:                                             ; preds = %bb.e, %bb.d
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @lv_free(ptr noundef nonnull %i.g) #6
  store ptr null, ptr %i.f, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.r = tail call ptr @lv_malloc(i64 noundef %i.e) #6 ; 3 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !23
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %.preheader33, label %bb.k

.preheader33:                                     ; preds = %bb.j, %.preheader33
  br label %.preheader33

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @lv_strcpy(ptr noundef nonnull %i.r, ptr noundef %.0) #6 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, -2
  store i8 %i.v, ptr %i.t, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %i.w = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #6 ; 0 uses
  ret void
}

declare i64 @lv_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @lv_strcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_arclabel_set_text_fmt(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %.preheader17, label %bb.c

.preheader17:                                     ; preds = %bb.b, %.preheader17
  br label %.preheader17

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @lv_free(ptr noundef nonnull %i.b) #6
  store ptr null, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.va_start.p0(ptr nonnull %2)
end_hunk_0
begin_hunk_1_@recolor_cmd_get_next:bb.a
    i8 68, label %bb.l
    i8 67, label %bb.l
    i8 66, label %bb.l
    i8 65, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4
  %i.ai = add nsw i8 %.fr133.4, -97
  %or.cond13.4 = icmp ult i8 %i.ai, 6
  br i1 %or.cond13.4, label %bb.m, label %.thread168

.thread168:                                       ; preds = %.lr.ph.split.4, %bb.l
  %i.aj = add nsw i8 %.fr133.4, -65
  %or.cond16.4 = icmp ult i8 %i.aj, 6
  %i.ak = add nsw i8 %.fr133.4, -55
  %spec.select132.4 = select i1 %or.cond16.4, i8 %i.ak, i8 %i.ah
  br label %.lr.ph.split.5

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i8 %.fr133.4, -87
  br label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %bb.m, %.thread168
  %.092.4 = phi i8 [ %i.al, %bb.m ], [ %spec.select132.4, %.thread168 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %.fr133.5 = freeze i8 %i.an                     ; 6 uses
  %i.ao = add i8 %.fr133.5, -48                   ; 2 uses
  %or.cond4.5 = icmp ult i8 %i.ao, 10
  br i1 %or.cond4.5, label %.thread170, label %switch.early.test.5

switch.early.test.5:                              ; preds = %.lr.ph.split.5
  switch i8 %.fr133.5, label %.thread130 [
    i8 102, label %bb.n
    i8 101, label %bb.n
    i8 100, label %bb.n
    i8 99, label %bb.n
    i8 98, label %bb.n
    i8 97, label %bb.n
    i8 70, label %bb.n
    i8 69, label %bb.n
    i8 68, label %bb.n
    i8 67, label %bb.n
    i8 66, label %bb.n
    i8 65, label %bb.n
  ]

bb.n:                                             ; preds = %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5
  %i.ap = add nsw i8 %.fr133.5, -97
  %or.cond13.5 = icmp ult i8 %i.ap, 6
  br i1 %or.cond13.5, label %bb.o, label %.thread170

.thread170:                                       ; preds = %.lr.ph.split.5, %bb.n
  %i.aq = add nsw i8 %.fr133.5, -65
  %or.cond16.5 = icmp ult i8 %i.aq, 6
  %i.ar = add nsw i8 %.fr133.5, -55
  %spec.select132.5 = select i1 %or.cond16.5, i8 %i.ar, i8 %i.ao
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i8 %.fr133.5, -87
  br label %bb.p

.thread130:                                       ; preds = %bb.c, %switch.early.test, %switch.early.test.1, %switch.early.test.2, %switch.early.test.3, %switch.early.test.4, %switch.early.test.5
  %.093135 = phi i32 [ 5, %switch.early.test.5 ], [ 0, %switch.early.test ], [ 1, %switch.early.test.1 ], [ 2, %switch.early.test.2 ], [ 3, %switch.early.test.3 ], [ 4, %switch.early.test.4 ], [ 0, %bb.c ] ; 2 uses
  %i.at = zext nneg i32 %.093135 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.at
  br label %bb.r

bb.p:                                             ; preds = %bb.o, %.thread170
  %.092.5 = phi i8 [ %i.as, %bb.o ], [ %spec.select132.5, %.thread170 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !33
  %i.ax = icmp eq i8 %i.aw, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.az = icmp ne ptr %3, null
  %or.cond18 = and i1 %i.az, %i.ax
  br i1 %or.cond18, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = shl i8 %.092.4, 4
  %i.bb = or i8 %i.ba, %.092.5
  %i.bc = shl i8 %.092.2, 4
  %i.bd = or i8 %i.bc, %.092.3
  %i.be = shl i8 %.092, 4
  %i.bf = or i8 %i.be, %.092.1
  %i.bg = tail call i24 @lv_color_make(i8 noundef zeroext %i.bf, i8 noundef zeroext %i.bd, i8 noundef zeroext %i.bb) #6
  store i24 %i.bg, ptr %3, align 1
  br label %bb.r

bb.r:                                             ; preds = %.thread130, %bb.q, %bb.p
  %.093136 = phi i32 [ %.093135, %.thread130 ], [ 6, %bb.q ], [ 6, %bb.p ] ; 2 uses
  %i.bh = phi ptr [ %i.au, %.thread130 ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bi = sub nuw nsw i32 -2, %.093136
  %i.bj = zext i32 %i.bi to i64
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.bj ; 4 uses
  %.0986 = add nsw i32 %.093136, 1                ; 2 uses
  %.not7 = icmp eq i32 %.0986, -1
  br i1 %.not7, label %.critedge20, label %.lr.ph

bb.s:                                             ; preds = %bb.t
  %.098 = add i32 %.0989, 1                       ; 2 uses
  %.not = icmp eq i32 %.098, -1
  br i1 %.not, label %.critedge20, label %.lr.ph, !llvm.loop !62

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.0989 = phi i32 [ %.098, %bb.s ], [ %.0986, %bb.r ] ; 3 uses
  %.01018 = phi ptr [ %i.bl, %bb.s ], [ %i.bh, %bb.r ] ; 3 uses
  %i.bk = load i8, ptr %.01018, align 1, !tbaa !33 ; 2 uses
  %.not118 = icmp eq i8 %i.bk, 0
  br i1 %.not118, label %.lr.ph143.preheader, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.01018, i64 1 ; 2 uses
  %.not119 = icmp eq i8 %i.bk, 32
  br i1 %.not119, label %.lr.ph143.preheader, label %bb.s, !llvm.loop !62

.lr.ph143.preheader:                              ; preds = %.lr.ph, %bb.t, %bb.b
  %.199181 = phi i32 [ 0, %bb.b ], [ %.0989, %bb.t ], [ %.0989, %.lr.ph ] ; 2 uses
  %.2103179 = phi ptr [ %0, %bb.b ], [ %.01018, %.lr.ph ], [ %i.bl, %bb.t ] ; 5 uses
  %narrow = xor i32 %.199181, -1
  %i.bm = zext i32 %narrow to i64
  %scevgep155 = getelementptr i8, ptr %.2103179, i64 %i.bm
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.u
  %.2100141 = phi i32 [ %i.bp, %bb.u ], [ %.199181, %.lr.ph143.preheader ] ; 3 uses
  %.3104140 = phi ptr [ %i.bo, %bb.u ], [ %.2103179, %.lr.ph143.preheader ] ; 4 uses
  %i.bn = load i8, ptr %.3104140, align 1, !tbaa !33
  switch i8 %i.bn, label %bb.u [
    i8 0, label %.critedge20
    i8 35, label %.critedge20
  ]

bb.u:                                             ; preds = %.lr.ph143
  %i.bo = getelementptr inbounds nuw i8, ptr %.3104140, i64 1
  %i.bp = add nuw i32 %.2100141, 1                ; 2 uses
  %.not120 = icmp eq i32 %i.bp, -1
  br i1 %.not120, label %.critedge20, label %.lr.ph143, !llvm.loop !63

.critedge20:                                      ; preds = %bb.s, %.lr.ph143, %.lr.ph143, %bb.u, %bb.r
  %.2103180 = phi ptr [ %scevgep, %bb.r ], [ %.2103179, %.lr.ph143 ], [ %.2103179, %bb.u ], [ %.2103179, %.lr.ph143 ], [ %scevgep, %bb.s ] ; 2 uses
  %.3104.lcssa = phi ptr [ %scevgep, %bb.r ], [ %.3104140, %.lr.ph143 ], [ %.3104140, %.lr.ph143 ], [ %scevgep155, %bb.u ], [ %scevgep, %bb.s ] ; 3 uses
  %.2100.lcssa = phi i32 [ -1, %bb.r ], [ %.2100141, %.lr.ph143 ], [ %.2100141, %.lr.ph143 ], [ -1, %bb.u ], [ -1, %bb.s ]
  store ptr %.2103180, ptr %1, align 8, !tbaa !24
  %i.bq = ptrtoint ptr %.3104.lcssa to i64
  %i.br = ptrtoint ptr %.2103180 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  store i32 %i.bt, ptr %2, align 4, !tbaa !25
  %i.bu = load i8, ptr %.3104.lcssa, align 1, !tbaa !33 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.critedge20
  %i.bw = icmp eq i8 %i.bu, 35
  %or.cond126 = and i1 %i.c, %i.bw                ; 2 uses
  %i.bx = zext i1 %or.cond126 to i32
  %.3 = add i32 %.2100.lcssa, %i.bx
  %.not123 = icmp eq i32 %.3, -1
  br i1 %.not123, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.4.idx = zext i1 %or.cond126 to i64
  %.4 = getelementptr inbounds nuw i8, ptr %.3104.lcssa, i64 %.4.idx ; 2 uses
  %i.by = load i8, ptr %.4, align 1, !tbaa !33
  %.not124 = icmp eq i8 %i.by, 0
  %spec.select = select i1 %.not124, ptr null, ptr %.4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.critedge20, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %.critedge20 ], [ null, %bb.v ], [ %spec.select, %bb.w ]
  ret ptr %.2
}

declare void @lv_text_encoded_letter_next_2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @lv_font_get_glyph_width(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_trigo_cos(i16 noundef signext) local_unnamed_addr #2

declare i32 @lv_trigo_sin(i16 noundef signext) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_letter_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_letter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i24 @lv_color_make(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_pct_to_px(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS15_lv_obj_class_t", !8, i64 0}
!10 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!11 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !8, i64 0}
!12 = !{!"p1 _ZTS15_lv_obj_style_t", !8, i64 0}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!"short", !4, i64 0}
!15 = !{!"_lv_obj_t", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !8, i64 32, !13, i64 40, !5, i64 56, !14, i64 60, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 64}
!16 = !{!"p1 omnipotent char", !8, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4}
!18 = !{!"_Bool", !4, i64 0}
!19 = !{!"_lv_arclabel_t", !15, i64 0, !16, i64 72, !4, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !17, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !4, i64 124, !4, i64 124, !4, i64 124, !18, i64 124}
!20 = !{!19, !5, i64 88}
!21 = !{!19, !5, i64 92}
!22 = !{!19, !5, i64 112}
!23 = !{!19, !16, i64 72}
!24 = !{!16, !16, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!18, !18, i64 0}
!27 = !{!19, !5, i64 96}
!28 = !{!19, !5, i64 120}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!19, !5, i64 104}
!31 = !{!19, !5, i64 108}
!32 = !{!"p1 _ZTS10_lv_font_t", !8, i64 0}
!33 = !{!4, !4, i64 0}
!34 = !{!19, !5, i64 100}
!35 = !{!19, !5, i64 116}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = !{!"p1 _ZTS14_lv_draw_buf_t", !8, i64 0}
!39 = !{!"p1 _ZTS15_lv_draw_task_t", !8, i64 0}
!40 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!41 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!42 = !{!"_lv_layer_t", !38, i64 0, !39, i64 8, !40, i64 16, !40, i64 24, !8, i64 32, !13, i64 40, !13, i64 56, !13, i64 72, !5, i64 88, !41, i64 92, !5, i64 96, !18, i64 100, !4, i64 101}
!43 = !{!42, !4, i64 101}
!44 = !{i8 0, i8 2}
!45 = !{!13, !5, i64 0}
!46 = !{!17, !5, i64 0}
!47 = !{!13, !5, i64 4}
!48 = !{!17, !5, i64 4}
!49 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!50 = !{!"long", !4, i64 0}
!51 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !40, i64 24, !14, i64 32, !14, i64 34, !49, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !50, i64 48, !8, i64 56}
!52 = !{!"", !51, i64 0, !5, i64 64, !32, i64 72, !49, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !17, i64 104, !4, i64 112, !5, i64 113, !5, i64 113, !4, i64 114, !5, i64 116, !49, i64 120}
!53 = !{!52, !32, i64 72}
!54 = !{i64 0, i64 1, !33, i64 1, i64 1, !33, i64 2, i64 1, !33}
!55 = !{!52, !4, i64 112}
!56 = !{!52, !5, i64 84}
!57 = !{!52, !5, i64 64}
!58 = distinct !{!58, !29}
!59 = !{!"_lv_font_t", !8, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 32, !4, i64 32, !4, i64 33, !4, i64 34, !8, i64 40, !32, i64 48, !8, i64 56}
!60 = !{!59, !5, i64 24}
!61 = !{!59, !5, i64 28}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
end_hunk_1
