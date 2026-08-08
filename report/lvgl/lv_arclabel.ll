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
  store i32 0, ptr %i.a, align 8, !tbaa !8
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
  %i.e = alloca i32, align 4                      ; 24 uses
  %i.f = alloca i32, align 4                      ; 23 uses
  %i.g = alloca i32, align 4                      ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.lv_color_t, align 4         ; 5 uses
  %4 = alloca %struct.lv_point_t, align 4         ; 6 uses
  %5 = alloca %struct.lv_draw_letter_dsc_t, align 8 ; 10 uses
  %i.i = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_arclabel_class, ptr noundef %1) #6
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @lv_event_get_code(ptr noundef %1) #6
  %i.k = icmp eq i32 %i.j, 29
  br i1 %i.k, label %bb.c, label %bb.as

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @lv_event_get_current_target(ptr noundef %1) #6 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %i.n, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @lv_obj_get_content_coords(ptr noundef %i.l, ptr noundef nonnull %2) #6
  %i.o = call ptr @lv_event_get_layer(ptr noundef %1) #6 ; 2 uses
  %i.p = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 77) #6 ; 9 uses
  %i.q = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 92) #6
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.r to i24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 101
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = zext i8 %i.t to i16
  %i.v = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 84) #6
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc i64 %i.w to i16
  %i.y = and i16 %i.x, 255
  %i.z = mul nuw i16 %i.y, %i.u
  %i.aa = lshr i16 %i.z, 8
  %i.ab = trunc nuw i16 %i.aa to i8
  %i.ac = call ptr @lv_obj_get_style_prop(ptr noundef %i.l, i32 noundef 0, i8 noundef zeroext 102) #6
  %i.ad = ptrtoint ptr %i.ac to i64
  %.sroa.0.0.extract.trunc.i93.i = trunc i64 %i.ad to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 0, ptr %i.c, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.ae = call fastcc i32 @arclabel_calc_arc_text_total_angle(ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !33
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !31  ; 2 uses
  %i.ai = mul i32 %i.ag, 46080
  %i.aj = sdiv i32 %i.ai, 804
  %i.ak = sdiv i32 %i.aj, %i.ah                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !34
  switch i32 %i.am, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %i.ap = sub nsw i32 %i.ak, %i.ae
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = sdiv i32 %i.aq, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  %i.au = sub nsw i32 %i.at, %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.065.i = phi i32 [ 0, %bb.c ], [ %i.ak, %bb.d ], [ %i.ar, %bb.e ], [ %i.au, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  %i.ax = mul i32 %i.ah, 67                       ; 2 uses
  %i.ay = mul i32 %i.aw, %i.ax
  %i.az = sdiv i32 %i.ay, 15
  %i.ba = ashr i32 %i.az, 8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 0, ptr %i.f, align 4, !tbaa !31
  %.not99.i = icmp eq ptr %i.n, null
  br i1 %.not99.i, label %arclabel_draw_main.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bb = mul i32 %.065.i, %i.ax
  %i.bc = sdiv i32 %i.bb, 15
  %i.bd = ashr i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 124 ; 10 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.bq = phi ptr [ %i.n, %.lr.ph.i ], [ %i.bu, %.critedge.i ]
  %.0105.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.1.i, %.critedge.i ]
  %.066104.i = phi i1 [ false, %.lr.ph.i ], [ %.3.i, %.critedge.i ]
  %.068103.i = phi i32 [ 0, %.lr.ph.i ], [ %.371.i, %.critedge.i ]
  %.074102.i = phi i32 [ 0, %.lr.ph.i ], [ %.175.ph.i, %.critedge.i ]
  %.078101.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.482.i, %.critedge.i ]
  %.083100.i = phi i32 [ 0, %.lr.ph.i ], [ %.184.ph.i, %.critedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i32 0, ptr %i.g, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store i32 -1, ptr %i.h, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %3, align 4
  %i.br = load i8, ptr %i.be, align 4
  %i.bs = and i8 %i.br, 2
  %.not88.i = icmp eq i8 %i.bs, 0
  br i1 %.not88.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = call fastcc ptr @recolor_cmd_get_next(ptr noundef %.0105.i, ptr noundef %i.a, ptr noundef %i.h, ptr noundef nonnull %3)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !31
  %.pre106.i = load ptr, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = phi ptr [ %.pre106.i, %bb.i ], [ %i.bq, %bb.h ] ; 7 uses
  %i.bv = phi i32 [ %.pre.i, %bb.i ], [ -1, %bb.h ] ; 4 uses
  %.1.i = phi ptr [ %i.bt, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.bw = load i32, ptr %i.d, align 4
  %i.bx = load i8, ptr %i.c, align 1, !range !35
  %.fr196 = freeze i8 %i.bx
  %i.by = trunc i8 %.fr196 to i1                  ; 2 uses
  %i.bz = load i32, ptr %i.b, align 4             ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.j
  %.184.ph.i = phi i32 [ %i.fj, %.split.i ], [ %.083100.i, %bb.j ] ; 2 uses
  %.179.ph.i = phi i32 [ %.280.i, %.split.i ], [ %.078101.i, %bb.j ] ; 23 uses
  %.175.ph.i = phi i32 [ %i.gw, %.split.i ], [ %.074102.i, %bb.j ] ; 4 uses
  %.169.ph.i = phi i32 [ %.270.i6, %.split.i ], [ %.068103.i, %bb.j ] ; 40 uses
  %.167.ph.i = phi i1 [ %.167.i9, %.split.i ], [ %.066104.i, %bb.j ] ; 26 uses
  %i.ca = icmp sle i32 %.179.ph.i, %i.ba
  %.fr = freeze i1 %i.ca                          ; 3 uses
  %.not90.i = icmp eq i32 %.175.ph.i, 0
  br i1 %.not90.i, label %.outer.i.split.us, label %.outer.i.split

.outer.i.split.us:                                ; preds = %.outer.i
  %i.cb = load i32, ptr %i.g, align 4, !tbaa !31
  %i.cc = icmp ult i32 %i.cb, %i.bv
  br i1 %i.cc, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.outer.i.split.us
  %i.cd = load i8, ptr %i.be, align 4
  %i.ce = and i8 %i.cd, 12
  %i.cf = icmp eq i8 %i.ce, 0
  %i.cg = or i1 %i.cf, %.fr
  br i1 %i.cg, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  br i1 %.167.ph.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @lv_text_encoded_letter_next_2(ptr noundef %i.bu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6
  %.pre107.i.us = load i32, ptr %i.e, align 4, !tbaa !31
  %.pre108.i.us = load i32, ptr %i.f, align 4, !tbaa !31
  br label %.loopexit.i.split.us

bb.n:                                             ; preds = %bb.l
  %i.ch = icmp sgt i32 %.169.ph.i, 2
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 46, ptr %i.e, align 4, !tbaa !31
  %.not89.i.us = icmp eq i32 %.169.ph.i, 2
  %i.ci = select i1 %.not89.i.us, i32 0, i32 46   ; 2 uses
  store i32 %i.ci, ptr %i.f, align 4, !tbaa !31
  %i.cj = add nsw i32 %.169.ph.i, 1
  br label %.loopexit.i.split.us

.loopexit.i.split.us:                             ; preds = %bb.o, %bb.m
  %i.ck = phi i32 [ %i.ci, %bb.o ], [ %.pre108.i.us, %bb.m ]
  %i.cl = phi i32 [ 46, %bb.o ], [ %.pre107.i.us, %bb.m ]
  %.270.i.us = phi i32 [ %i.cj, %bb.o ], [ %.169.ph.i, %bb.m ]
  %i.cm = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.p, i32 noundef %i.cl, i32 noundef %i.ck) #6
  %i.cn = zext i16 %i.cm to i32
  br label %bb.ao

.outer.i.split:                                   ; preds = %.outer.i
  %.not91.i = icmp ult i32 %.175.ph.i, %i.bw
  %.not91.i.fr = freeze i1 %.not91.i
  %i.co = load i32, ptr %i.g, align 4, !tbaa !31
  %i.cp = icmp ult i32 %i.co, %i.bv               ; 5 uses
  br i1 %.not91.i.fr, label %.outer.i.split.split.us, label %.outer.i.split.split

.outer.i.split.split.us:                          ; preds = %.outer.i.split
  br i1 %i.cp, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %.outer.i.split.split.us
  %i.cq = load i8, ptr %i.be, align 4
  %i.cr = and i8 %i.cq, 12
  %i.cs = icmp eq i8 %i.cr, 0
  %i.ct = or i1 %i.cs, %.fr
  br i1 %i.ct, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  br i1 %.167.ph.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @lv_text_encoded_letter_next_2(ptr noundef %i.bu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6
  %.pre107.i.us25 = load i32, ptr %i.e, align 4, !tbaa !31
  %.pre108.i.us26 = load i32, ptr %i.f, align 4, !tbaa !31
  br label %.split.us

bb.s:                                             ; preds = %bb.q
  %i.cu = icmp sgt i32 %.169.ph.i, 2
  br i1 %i.cu, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 46, ptr %i.e, align 4, !tbaa !31
  %.not89.i.us27 = icmp eq i32 %.169.ph.i, 2
  %i.cv = select i1 %.not89.i.us27, i32 0, i32 46 ; 2 uses
  store i32 %i.cv, ptr %i.f, align 4, !tbaa !31
  %i.cw = add nsw i32 %.169.ph.i, 1
  br label %.split.us

.split.us:                                        ; preds = %bb.t, %bb.r
  %i.cx = phi i32 [ %i.cv, %bb.t ], [ %.pre108.i.us26, %bb.r ]
  %i.cy = phi i32 [ 46, %bb.t ], [ %.pre107.i.us25, %bb.r ]
  %.270.i.us28 = phi i32 [ %i.cw, %bb.t ], [ %.169.ph.i, %bb.r ]
  %i.cz = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.p, i32 noundef %i.cy, i32 noundef %i.cx) #6
  br label %.split

.outer.i.split.split:                             ; preds = %.outer.i.split
  br i1 %.fr, label %.outer.i.split.split.split.us, label %.outer.i.split.split.split

.outer.i.split.split.split.us:                    ; preds = %.outer.i.split.split
  br i1 %i.by, label %.outer.i.split.split.split.us.split.us, label %.outer.i.split.split.split.us.split, !llvm.loop !36

.outer.i.split.split.split.us.split.us:           ; preds = %.outer.i.split.split.split.us
  br i1 %i.cp, label %.lr.ph180.preheader, label %.critedge.i

.lr.ph180.preheader:                              ; preds = %.outer.i.split.split.split.us.split.us
  br i1 %.167.ph.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph180.preheader
  call void @lv_text_encoded_letter_next_2(ptr noundef %i.bu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6
  %.pre107.i.us45.us.peel = load i32, ptr %i.e, align 4, !tbaa !31
  %.pre108.i.us46.us.peel = load i32, ptr %i.f, align 4, !tbaa !31
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph180.preheader
  %i.da = icmp sgt i32 %.169.ph.i, 2
  br i1 %i.da, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 46, ptr %i.e, align 4, !tbaa !31
  %.not89.i.us47.us.peel = icmp eq i32 %.169.ph.i, 2
  %i.db = select i1 %.not89.i.us47.us.peel, i32 0, i32 46 ; 2 uses
  store i32 %i.db, ptr %i.f, align 4, !tbaa !31
  %i.dc = add nsw i32 %.169.ph.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.dd = phi i32 [ %i.db, %bb.w ], [ %.pre108.i.us46.us.peel, %bb.u ]
  %i.de = phi i32 [ 46, %bb.w ], [ %.pre107.i.us45.us.peel, %bb.u ]
  %.270.i.us48.us.peel = phi i32 [ %i.dc, %bb.w ], [ %.169.ph.i, %bb.u ] ; 5 uses
  %i.df = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.p, i32 noundef %i.de, i32 noundef %i.dd) #6
  %i.dg = load i8, ptr %i.be, align 4
  %i.dh = and i8 %i.dg, 12
  %i.di = icmp eq i8 %i.dh, 0
  %or.cond.i.us.us.peel = or i1 %.167.ph.i, %i.di
  br i1 %or.cond.i.us.us.peel, label %.split, label %select.unfold.i.us42.us.peel

select.unfold.i.us42.us.peel:                     ; preds = %bb.x
  %i.dj = load i32, ptr %i.g, align 4, !tbaa !31
  %i.dk = icmp uge i32 %i.dj, %i.bv
  %i.dl = icmp sgt i32 %.270.i.us48.us.peel, 2
  %or.cond = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond, label %.critedge.i, label %.split.loopexit.loopexit

.outer.i.split.split.split.us.split:              ; preds = %.outer.i.split.split.split.us
  br i1 %i.cp, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %.outer.i.split.split.split.us.split
end_hunk_0
begin_hunk_1_@lv_arclabel_get_radius:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_arclabel_get_center_offset_x(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_arclabel_get_center_offset_y(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_arclabel_get_text_vertical_align(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_arclabel_get_text_horizontal_align(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 4) i32 @lv_arclabel_get_overflow(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i8, ptr %i.a, align 4
  %i.c = lshr i8 %i.b, 2
  %i.d = and i8 %i.c, 3
  %i.e = zext nneg i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @lv_arclabel_get_end_overlap(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 16
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 -2670999, 2671000) i32 @lv_arclabel_get_text_angle(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @arclabel_calc_arc_text_total_angle(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2670999, 2671000) i32 @arclabel_calc_arc_text_total_angle(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 17 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @lv_obj_get_content_coords(ptr noundef %0, ptr noundef nonnull %4) #6
  %i.h = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 77) #6 ; 6 uses
  %i.i = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 102) #6
  %i.j = ptrtoint ptr %i.i to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !60   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56   ; 2 uses
  %i.q = icmp eq i32 %i.p, 1073741823
  %spec.store.select = select i1 %i.q, i32 536871012, i32 %i.p ; 4 uses
  %i.r = and i32 %spec.store.select, 1610612736
  %i.s = icmp ne i32 %i.r, 536870912
  %i.t = and i32 %spec.store.select, -1610612737
  %.not = icmp eq i32 %i.t, 536870911
  %or.cond = or i1 %i.s, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = call i32 @lv_area_get_width(ptr noundef nonnull %4) #6
  %i.v = call i32 @lv_area_get_height(ptr noundef nonnull %4) #6
  %i.w = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.v)
  %i.x = call i32 @lv_pct_to_px(i32 noundef %spec.store.select, i32 noundef %i.w) #6
  %i.y = sdiv i32 %i.x, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.040 = phi i32 [ %i.y, %bb.b ], [ %spec.store.select, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  switch i32 %i.aa, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i32 %i.l, %i.n
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ac = sdiv i32 %i.l, 2
  %i.ad = sub nsw i32 %i.ac, %i.n
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ae = sub nsw i32 0, %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ %i.ab, %bb.d ], [ %i.ad, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !22
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = sub nsw i32 0, %.0
  %i.aj = select i1 %i.ah, i32 %i.ai, i32 %.0
  %i.ak = add nsw i32 %i.aj, %.040                ; 3 uses
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ak, ptr %1, align 4, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ao = load i8, ptr %i.an, align 4             ; 3 uses
  %i.ap = and i8 %i.ao, 2
  %.not43 = icmp eq i8 %i.ap, 0                   ; 2 uses
  %i.aq = lshr i8 %i.ao, 2
  %i.ar = and i8 %i.aq, 3                         ; 2 uses
  %i.as = and i8 %i.ao, 16
  %.not44 = icmp eq i8 %i.as, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %i.g, ptr %i.a, align 8, !tbaa !24
  %i.at = mul i32 %i.ak, 67
  %i.au = mul i32 %i.at, %i.am
  %i.av = sdiv i32 %i.au, 15
  %i.aw = ashr i32 %i.av, 8                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4, !tbaa !31
  %i.ax = icmp eq i8 %i.ar, 1                     ; 2 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = call zeroext i16 @lv_font_get_glyph_width(ptr noundef nonnull %i.h, i32 noundef 46, i32 noundef 46) #6
  %i.az = zext i16 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.az, 3
  %i.bb = shl nsw i32 %.sroa.0.0.extract.trunc.i, 1
  %i.bc = add nsw i32 %i.ba, %i.bb                ; 2 uses
  %i.bd = call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.aw)
  %.069.i = sub nsw i32 %i.aw, %i.bd
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi i32 [ %i.bc, %bb.j ], [ 0, %bb.i ]
  %.170.i = phi i32 [ %.069.i, %bb.j ], [ %i.aw, %bb.i ] ; 6 uses
  %.not177.i = icmp eq ptr %i.g, null
  br i1 %.not177.i, label %._crit_edge.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %bb.k
  br i1 %.not44, label %.lr.ph186.split.i, label %.lr.ph186.split.us.i

.lr.ph186.split.us.i:                             ; preds = %.lr.ph186.i
  br i1 %.not43, label %.lr.ph.us.i, label %.lr.ph186.split.us.split.us.i

.lr.ph186.split.us.split.us.i:                    ; preds = %.lr.ph186.split.us.i, %.thread.us.us.i
  %.0185.us.us.i = phi ptr [ %i.bf, %.thread.us.us.i ], [ %i.g, %.lr.ph186.split.us.i ]
  %.055184.us.us.i = phi i32 [ %.156.lcssa.us.us.i, %.thread.us.us.i ], [ 0, %.lr.ph186.split.us.i ] ; 3 uses
  %.059183.us.us.i = phi i32 [ %.160.lcssa.us.us.i, %.thread.us.us.i ], [ 0, %.lr.ph186.split.us.i ] ; 3 uses
  %.071181.us.us.i = phi i1 [ %.374.us.us.i, %.thread.us.us.i ], [ false, %.lr.ph186.split.us.i ] ; 3 uses
  %.076180.us.us.i = phi i32 [ %.379.us.us.i, %.thread.us.us.i ], [ 0, %.lr.ph186.split.us.i ] ; 2 uses
  %.080179.us.us.i = phi i32 [ %.383.us.us.i, %.thread.us.us.i ], [ 0, %.lr.ph186.split.us.i ] ; 2 uses
  %.084178.us.us.i = phi i32 [ %.488.us.us.i, %.thread.us.us.i ], [ 0, %.lr.ph186.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 -1, ptr %i.e, align 4, !tbaa !31
  %i.bf = call fastcc ptr @recolor_cmd_get_next(ptr noundef %.0185.us.us.i, ptr noundef %i.a, ptr noundef %i.e, ptr noundef null) ; 2 uses
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !31  ; 2 uses
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !31
  %i.bi = icmp ult i32 %i.bh, %i.bg
  br i1 %i.bi, label %.lr.ph.us.us.i, label %.thread.us.us.i

.thread.us.us.i:                                  ; preds = %bb.o, %bb.m, %bb.l, %.lr.ph.us.us.i, %.lr.ph186.split.us.split.us.i
  %.160.lcssa.us.us.i = phi i32 [ %.059183.us.us.i, %.lr.ph.us.us.i ], [ %.059183.us.us.i, %.lr.ph186.split.us.split.us.i ], [ %i.br, %bb.l ], [ %.160109.us166.us.us.i, %bb.o ], [ %i.br, %bb.m ]
  %.156.lcssa.us.us.i = phi i32 [ %.055184.us.us.i, %.lr.ph.us.us.i ], [ %.055184.us.us.i, %.lr.ph186.split.us.split.us.i ], [ %i.by, %bb.l ], [ %.156110.us165.us.us.i, %bb.o ], [ %i.by, %bb.m ] ; 2 uses
  %.488.us.us.i = phi i32 [ %.084178.us.us.i, %.lr.ph.us.us.i ], [ %.084178.us.us.i, %.lr.ph186.split.us.split.us.i ], [ %.286.us.us.us.i, %bb.l ], [ %.286.us.us.us.i, %bb.m ], [ %.286.us.us.us.i, %bb.o ] ; 2 uses
  %.383.us.us.i = phi i32 [ %.080179.us.us.i, %.lr.ph.us.us.i ], [ %.080179.us.us.i, %.lr.ph186.split.us.split.us.i ], [ %.185105.us168.us.us.i, %bb.l ], [ %.185105.us168.us.us.i, %bb.m ], [ %.185105.us168.us.us.i, %bb.o ] ; 2 uses
  %.379.us.us.i = phi i32 [ %.076180.us.us.i, %.lr.ph.us.us.i ], [ %.076180.us.us.i, %.lr.ph186.split.us.split.us.i ], [ %.156110.us165.us.us.i, %bb.l ], [ %.156110.us165.us.us.i, %bb.m ], [ %.156110.us165.us.us.i, %bb.o ] ; 2 uses
  %.374.us.us.i = phi i1 [ true, %.lr.ph.us.us.i ], [ %.071181.us.us.i, %.lr.ph186.split.us.split.us.i ], [ true, %bb.l ], [ %.071181.us.us.i, %bb.o ], [ %.071181.us.us.i, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %.not.us.us.i = icmp eq ptr %i.bf, null
  br i1 %.not.us.us.i, label %._crit_edge.i, label %.lr.ph186.split.us.split.us.i, !llvm.loop !61

.lr.ph.us.us.i:                                   ; preds = %.lr.ph186.split.us.split.us.i
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = icmp sgt i32 %.084178.us.us.i, %.170.i
  br i1 %i.bk, label %.thread.us.us.i, label %.lr.ph169.us.us.i

bb.l:                                             ; preds = %bb.m
  %i.bl = icmp sgt i32 %.286.us.us.us.i, %.170.i
  br i1 %i.bl, label %.thread.us.us.i, label %.lr.ph169.us.us.i

bb.m:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !31
  %i.bn = icmp ult i32 %i.bm, %i.bg
  br i1 %i.bn, label %bb.l, label %.thread.us.us.i

.lr.ph169.us.us.i:                                ; preds = %.lr.ph.us.us.i, %bb.l
  %.185105.us168.us.us.i = phi i32 [ %.286.us.us.us.i, %bb.l ], [ %.084178.us.us.i, %.lr.ph.us.us.i ] ; 5 uses
  %.160109.us166.us.us.i = phi i32 [ %i.br, %bb.l ], [ %.059183.us.us.i, %.lr.ph.us.us.i ] ; 2 uses
  %.156110.us165.us.us.i = phi i32 [ %i.by, %bb.l ], [ %.055184.us.us.i, %.lr.ph.us.us.i ] ; 6 uses
  call void @lv_text_encoded_letter_next_2(ptr noundef %i.bj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !31
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !31
  %i.bq = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.h, i32 noundef %i.bo, i32 noundef %i.bp) #6
  %i.br = zext i16 %i.bq to i32                   ; 4 uses
  %.not95.us.us.us.i = icmp eq i32 %.156110.us165.us.us.i, 0
  br i1 %.not95.us.us.us.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph169.us.us.i
  %i.bs = add i32 %.160109.us166.us.us.i, %.sroa.0.0.extract.trunc.i
  %i.bt = add i32 %i.bs, %i.br
  %i.bu = sdiv i32 %i.bt, 2
  %i.bv = add nsw i32 %i.bu, %.185105.us168.us.us.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph169.us.us.i
  %.286.us.us.us.i = phi i32 [ %i.bv, %bb.n ], [ %.185105.us168.us.us.i, %.lr.ph169.us.us.i ] ; 5 uses
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !31
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = add i32 %.156110.us165.us.us.i, 1       ; 3 uses
  br i1 %i.bx, label %.thread.us.us.i, label %bb.m

.thread.us.i:                                     ; preds = %bb.s, %bb.q, %bb.p, %.lr.ph.us.i
  %.156.lcssa.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.cm, %bb.p ], [ %.156110.us165.us.i, %bb.s ], [ %i.cm, %bb.q ]
  %.488.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.286.us.us.i, %bb.p ], [ %.286.us.us.i, %bb.q ], [ %.286.us.us.i, %bb.s ]
  %.383.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.185105.us168.us.i, %bb.p ], [ %.185105.us168.us.i, %bb.q ], [ %.185105.us168.us.i, %bb.s ]
  %.379.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.156110.us165.us.i, %bb.p ], [ %.156110.us165.us.i, %bb.q ], [ %.156110.us165.us.i, %bb.s ]
  %.374.us.i = phi i1 [ true, %.lr.ph.us.i ], [ true, %bb.p ], [ false, %bb.s ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %._crit_edge.i

.lr.ph.us.i:                                      ; preds = %.lr.ph186.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.bz = icmp slt i32 %.170.i, 0
  br i1 %i.bz, label %.thread.us.i, label %.lr.ph169.us.i

bb.p:                                             ; preds = %bb.q
  %i.ca = icmp sgt i32 %.286.us.us.i, %.170.i
  br i1 %i.ca, label %.thread.us.i, label %.lr.ph169.us.i

bb.q:                                             ; preds = %bb.s
  %i.cb = load i32, ptr %i.d, align 4, !tbaa !31
  %.not201.i = icmp eq i32 %i.cb, -1
  br i1 %.not201.i, label %.thread.us.i, label %bb.p

.lr.ph169.us.i:                                   ; preds = %.lr.ph.us.i, %bb.p
  %.185105.us168.us.i = phi i32 [ %.286.us.us.i, %bb.p ], [ 0, %.lr.ph.us.i ] ; 5 uses
  %.160109.us166.us.i = phi i32 [ %i.cf, %bb.p ], [ 0, %.lr.ph.us.i ]
  %.156110.us165.us.i = phi i32 [ %i.cm, %bb.p ], [ 0, %.lr.ph.us.i ] ; 6 uses
  call void @lv_text_encoded_letter_next_2(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !31
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !31
  %i.ce = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.h, i32 noundef %i.cc, i32 noundef %i.cd) #6
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %.not95.us.us.i = icmp eq i32 %.156110.us165.us.i, 0
  br i1 %.not95.us.us.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph169.us.i
  %i.cg = add i32 %.160109.us166.us.i, %.sroa.0.0.extract.trunc.i
  %i.ch = add i32 %i.cg, %i.cf
  %i.ci = sdiv i32 %i.ch, 2
  %i.cj = add nsw i32 %i.ci, %.185105.us168.us.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph169.us.i
  %.286.us.us.i = phi i32 [ %i.cj, %bb.r ], [ %.185105.us168.us.i, %.lr.ph169.us.i ] ; 5 uses
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !31
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = add i32 %.156110.us165.us.i, 1          ; 3 uses
  br i1 %i.cl, label %.thread.us.i, label %bb.q

.lr.ph186.split.i:                                ; preds = %.lr.ph186.i, %.thread.i
  %.0185.i = phi ptr [ %.1211.i, %.thread.i ], [ %i.g, %.lr.ph186.i ]
  %.055184.i = phi i32 [ %.156.lcssa.i, %.thread.i ], [ 0, %.lr.ph186.i ] ; 3 uses
  %.059183.i = phi i32 [ %.160.lcssa.i, %.thread.i ], [ 0, %.lr.ph186.i ] ; 4 uses
  %.064182.i = phi i32 [ %.468.i, %.thread.i ], [ 0, %.lr.ph186.i ] ; 4 uses
  %.071181.i = phi i1 [ %.374.i, %.thread.i ], [ false, %.lr.ph186.i ] ; 3 uses
  %.076180.i = phi i32 [ %.379.i, %.thread.i ], [ 0, %.lr.ph186.i ] ; 2 uses
  %.080179.i = phi i32 [ %.383.i, %.thread.i ], [ 0, %.lr.ph186.i ] ; 2 uses
  %.084178.i = phi i32 [ %.488.i, %.thread.i ], [ 0, %.lr.ph186.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 -1, ptr %i.e, align 4, !tbaa !31
  br i1 %.not43, label %.lr.ph.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph186.split.i
  %i.cn = call fastcc ptr @recolor_cmd_get_next(ptr noundef %.0185.i, ptr noundef %i.a, ptr noundef %i.e, ptr noundef null) ; 2 uses
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !31 ; 2 uses
  %.pre203.i = load i32, ptr %i.d, align 4, !tbaa !31
  %i.co = icmp ult i32 %.pre203.i, %.pre.i
  br i1 %i.co, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph186.split.i
  %.1212.i = phi ptr [ %i.cn, %bb.t ], [ null, %.lr.ph186.split.i ] ; 4 uses
  %i.cp = phi i32 [ %.pre.i, %bb.t ], [ -1, %.lr.ph186.split.i ]
  %i.cq = load ptr, ptr %i.a, align 8
  %i.cr = add i32 %.059183.i, %.sroa.0.0.extract.trunc.i
  %i.cs = add i32 %i.cr, %.064182.i
  %i.ct = sdiv i32 %i.cs, 2
  %i.cu = add nsw i32 %.084178.i, %i.ct
  %i.cv = icmp sgt i32 %i.cu, %.170.i
  br i1 %i.cv, label %.thread.i, label %.lr.ph157.i

bb.u:                                             ; preds = %bb.x
  %i.cw = load i32, ptr %i.d, align 4, !tbaa !31
  %i.cx = icmp ult i32 %i.cw, %i.cp
  br i1 %i.cx, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.cy = add i32 %i.dg, %.sroa.0.0.extract.trunc.i
  %i.cz = add i32 %i.cy, %.266.i
  %i.da = sdiv i32 %i.cz, 2
  %i.db = add nsw i32 %i.da, %.286.i
  %i.dc = icmp sgt i32 %i.db, %.170.i
  br i1 %i.dc, label %.thread.i, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %.lr.ph.i, %bb.v
  %.185105156.i = phi i32 [ %.286.i, %bb.v ], [ %.084178.i, %.lr.ph.i ] ; 5 uses
end_hunk_1
