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
  %i.w = trunc i64 %i.v to i8
  %i.x = call i8 @llvm.umulh.i8(i8 %i.t, i8 %i.w)
  %i.y = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 102) #6
  %i.z = ptrtoint ptr %i.y to i64
  %.sroa.0.0.extract.trunc.i93.i = trunc i64 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.aa = call fastcc i32 @arclabel_calc_arc_text_total_angle(ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !27
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.ae = mul i32 %i.ac, 46080
  %i.af = sdiv i32 %i.ae, 804
  %i.ag = sdiv i32 %i.af, %i.ad                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !28
  switch i32 %i.ai, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.al = sub nsw i32 %i.ag, %i.aa
  %i.am = add i32 %i.al, %i.ak
  %i.an = sdiv i32 %i.am, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21
  %i.aq = sub nsw i32 %i.ap, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.085.i = phi i32 [ 0, %bb.c ], [ %i.ag, %bb.d ], [ %i.an, %bb.e ], [ %i.aq, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = mul i32 %i.ad, 67                       ; 2 uses
  %i.au = mul i32 %i.as, %i.at
  %i.av = sdiv i32 %i.au, 15
  %i.aw = ashr i32 %i.av, 8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 0, ptr %i.f, align 4, !tbaa !25
  %.not99.i = icmp eq ptr %i.n, null
  br i1 %.not99.i, label %arclabel_draw_main.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ax = mul i32 %.085.i, %i.at
  %i.ay = sdiv i32 %i.ax, 15
  %i.az = ashr i32 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 124 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.bm = phi ptr [ %i.n, %.lr.ph.i ], [ %i.bq, %.critedge.i ]
  %.065105.i = phi i32 [ %i.az, %.lr.ph.i ], [ %.4.i, %.critedge.i ]
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
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %3, align 4, !tbaa !29
  %i.bn = load i8, ptr %i.ba, align 4
  %i.bo = and i8 %i.bn, 2
  %.not88.i = icmp eq i8 %i.bo, 0
  br i1 %.not88.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = call fastcc ptr @recolor_cmd_get_next(ptr noundef %.086100.i, ptr noundef %i.a, ptr noundef %i.h, ptr noundef nonnull %3)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !25
  %.pre106.i = load ptr, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bq = phi ptr [ %.pre106.i, %bb.i ], [ %i.bm, %bb.h ] ; 2 uses
  %i.br = phi i32 [ %.pre.i, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %.187.i = phi ptr [ %i.bp, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.bs = load i32, ptr %i.d, align 4
  %i.bt = load i8, ptr %i.c, align 1, !range !44
  %i.bu = trunc nuw i8 %i.bt to i1
  %6 = load i32, ptr %i.b, align 4                ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.r, %bb.j
  %.182.ph.i = phi i1 [ %.081101.i, %bb.j ], [ true, %bb.r ] ; 6 uses
  %.178.ph.i = phi i32 [ %.077102.i, %bb.j ], [ %.279.i, %bb.r ] ; 2 uses
  %.173.ph.i = phi i32 [ %.072103.i, %bb.j ], [ %.173.i19, %bb.r ] ; 2 uses
  %.168.ph.i = phi i32 [ %.067104.i, %bb.j ], [ %.168.i20, %bb.r ] ; 2 uses
  %.166.ph.i = phi i32 [ %.065105.i, %bb.j ], [ %.166.i21, %bb.r ] ; 2 uses
  %i.bv = load i32, ptr %i.g, align 4, !tbaa !25
  %i.bw = icmp ult i32 %i.bv, %i.br
  br i1 %i.bw, label %.lr.ph, label %.critedge.i

.lr.ph:                                           ; preds = %.outer.i, %.split.i
  %.166.i21 = phi i32 [ %.2.i, %.split.i ], [ %.166.ph.i, %.outer.i ] ; 7 uses
  %.168.i20 = phi i32 [ %i.ci, %.split.i ], [ %.168.ph.i, %.outer.i ] ; 6 uses
  %.173.i19 = phi i32 [ %i.ec, %.split.i ], [ %.173.ph.i, %.outer.i ] ; 8 uses
  %.178.i18 = phi i32 [ %.279.i, %.split.i ], [ %.178.ph.i, %.outer.i ] ; 6 uses
  %i.bx = load i8, ptr %i.ba, align 4
  %i.by = and i8 %i.bx, 12
  %i.bz = icmp eq i8 %i.by, 0
  %i.ca = icmp sle i32 %.166.i21, %i.aw
  %i.cb = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %i.cb, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.lr.ph
  br i1 %.182.ph.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cc = icmp sgt i32 %.178.i18, 2
  br i1 %i.cc, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 46, ptr %i.e, align 4, !tbaa !25
  %.not89.i = icmp eq i32 %.178.i18, 2
  %i.cd = select i1 %.not89.i, i32 0, i32 46      ; 2 uses
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !25
  %i.ce = add nsw i32 %.178.i18, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @lv_text_encoded_letter_next_2(ptr noundef %i.bq, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6
  %.pre107.i.a = load i32, ptr %i.e, align 4, !tbaa !25
  %.pre108.i = load i32, ptr %i.f, align 4, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cf = phi i32 [ %i.cd, %bb.m ], [ %.pre108.i, %bb.n ]
  %i.cg = phi i32 [ 46, %bb.m ], [ %.pre107.i.a, %bb.n ]
  %.279.i = phi i32 [ %i.ce, %bb.m ], [ %.178.i18, %bb.n ] ; 5 uses
  %i.ch = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.p, i32 noundef %i.cg, i32 noundef %i.cf) #6
  %i.ci = zext i16 %i.ch to i32                   ; 3 uses
  %.not90.i = icmp eq i32 %.173.i19, 0
  br i1 %.not90.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not91.i = icmp ult i32 %.173.i19, %i.bs
  br i1 %.not91.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load i8, ptr %i.ba, align 4
  %i.ck = and i8 %i.cj, 12
  %i.cl = icmp eq i8 %i.ck, 0
  %or.cond.i = or i1 %.182.ph.i, %i.cl
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bu, label %.outer.i, label %.critedge.i, !llvm.loop !36

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.cm = add i32 %.168.i20, %.sroa.0.0.extract.trunc.i93.i
  %i.cn = add i32 %i.cm, %i.ci
  %i.co = sdiv i32 %i.cn, 2
  %i.cp = add nsw i32 %i.co, %.166.i21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.2.i = phi i32 [ %i.cp, %bb.s ], [ %.166.i21, %bb.o ] ; 5 uses
  %i.cq = load i32, ptr %i.bb, align 8, !tbaa !20
  %i.cr = load i32, ptr %i.bc, align 8, !tbaa !22
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = sub nsw i32 %i.aw, %.2.i
  %i.cu = select i1 %i.cs, i32 %.2.i, i32 %i.ct
  %i.cv = mul i32 %i.cu, 46080
  %i.cw = sdiv i32 %i.cv, 804
  %i.cx = sdiv i32 %i.cw, %6
  %i.cy = add nsw i32 %i.cx, %i.cq                ; 2 uses
  %i.cz = trunc i32 %i.cy to i16                  ; 2 uses
  %i.da = call i32 @lv_trigo_cos(i16 noundef signext %i.cz) #6
  %i.db = mul nsw i32 %i.da, %6
  %i.dc = sdiv i32 %i.db, 32767
  %i.dd = call i32 @lv_trigo_sin(i16 noundef signext %i.cz) #6
  %i.de = mul nsw i32 %i.dd, %6
  %i.df = sdiv i32 %i.de, 32767
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.dg = call i32 @lv_area_get_width(ptr noundef nonnull %2) #6
  %i.dh = sdiv i32 %i.dg, 2
  %i.di = load i32, ptr %2, align 4, !tbaa !45
  %i.dj = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.dk = add i32 %i.di, %i.dc
  %i.dl = add i32 %i.dk, %i.dh
  %i.dm = add i32 %i.dl, %i.dj
  store i32 %i.dm, ptr %4, align 4, !tbaa !46
  %i.dn = call i32 @lv_area_get_height(ptr noundef nonnull %2) #6
  %i.do = sdiv i32 %i.dn, 2
  %i.dp = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.dq = load i32, ptr %i.bg, align 4, !tbaa !32
  %i.dr = add i32 %i.dp, %i.df
  %i.ds = add i32 %i.dr, %i.do
  %i.dt = add i32 %i.ds, %i.dq
  store i32 %i.dt, ptr %i.be, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @lv_draw_letter_dsc_init(ptr noundef nonnull %5) #6
  store ptr %i.p, ptr %i.bh, align 8, !tbaa !53
  %i.du = load i8, ptr %i.ba, align 4
  %i.dv = and i8 %i.du, 2
  %.not92.i = icmp eq i8 %i.dv, 0
  br i1 %.not92.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bi, ptr noundef nonnull align 4 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !54
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %i.bi, align 8, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i8 %i.x, ptr %i.bj, align 8, !tbaa !55
  %i.dw = load i32, ptr %i.bc, align 8, !tbaa !22
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = mul i32 %i.cy, 10
  %..i = select i1 %i.dx, i32 900, i32 -900
  %i.dz = add i32 %..i, %i.dy
  store i32 %i.dz, ptr %i.bk, align 4, !tbaa !56
  %i.ea = load i32, ptr %i.e, align 4, !tbaa !25  ; 2 uses
  store i32 %i.ea, ptr %i.bl, align 8, !tbaa !57
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %.split.thread.i, label %.split.i

.split.thread.i:                                  ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %.critedge.i

.split.i:                                         ; preds = %bb.w
  call void @lv_draw_letter(ptr noundef %i.o, ptr noundef nonnull %5, ptr noundef nonnull %4) #6
  %i.ec = add i32 %.173.i19, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ed = load i32, ptr %i.g, align 4, !tbaa !25
  %i.ee = icmp ult i32 %i.ed, %i.br
  br i1 %i.ee, label %.lr.ph, label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %.outer.i, %.split.i, %.lr.ph, %bb.l, %.split.thread.i
  %.173.i12 = phi i32 [ %.173.i19, %.split.thread.i ], [ %.173.i19, %bb.l ], [ %i.ec, %.split.i ], [ %.173.i19, %.lr.ph ], [ %.173.ph.i, %.outer.i ], [ %.173.i19, %bb.r ]
  %.168.i9 = phi i32 [ %.168.i20, %.split.thread.i ], [ %.168.i20, %bb.l ], [ %i.ci, %.split.i ], [ %.168.i20, %.lr.ph ], [ %.168.ph.i, %.outer.i ], [ %.168.i20, %bb.r ]
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
end_hunk_0
