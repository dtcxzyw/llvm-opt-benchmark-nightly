Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_canvas?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_color32_t = type { i8, i8, i8, i8 }

@lv_image_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [10 x i8] c"lv_canvas\00", align 1
@lv_canvas_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_image_class, ptr @lv_canvas_constructor, ptr @lv_canvas_destructor, ptr null, ptr null, ptr @.str, i32 0, i32 0, i8 0, i8 11, i8 0, [5 x i8] zeroinitializer }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @lv_canvas_constructor(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_canvas_destructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lv_image_cache_drop(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_canvas_create(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_canvas_class, ptr noundef %0) #5 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #5
  ret ptr %i.a
}

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_canvas_set_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %.preheader24, label %bb.c

.preheader24:                                     ; preds = %bb.b, %.preheader24
  br label %.preheader24

bb.c:                                             ; preds = %bb.b
  %i.a = tail call i32 @lv_draw_buf_width_to_stride(i32 noundef %2, i32 noundef %4) #5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = mul i32 %i.a, %3
  %i.d = tail call i32 @lv_draw_buf_init(ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.a, ptr noundef nonnull %1, i32 noundef %i.c) #5 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !24
  %i.f = tail call ptr @lv_image_get_src(ptr noundef nonnull %0) #5 ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lv_image_cache_drop(ptr noundef nonnull %i.f) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @lv_image_set_src(ptr noundef nonnull %0, ptr noundef %i.g) #5
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @lv_image_cache_drop(ptr noundef %i.h) #5
  ret void
}

declare i32 @lv_draw_buf_width_to_stride(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_draw_buf_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_image_get_src(ptr noundef) local_unnamed_addr #2

declare void @lv_image_cache_drop(ptr noundef) local_unnamed_addr #2

declare void @lv_image_set_src(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_canvas_set_draw_buf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %.preheader17, label %bb.c

.preheader17:                                     ; preds = %bb.b, %.preheader17
  br label %.preheader17

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.c, align 8, !tbaa !24
  %i.d = tail call ptr @lv_image_get_src(ptr noundef nonnull %0) #5 ; 2 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lv_image_cache_drop(ptr noundef nonnull %i.d) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @lv_image_set_src(ptr noundef nonnull %0, ptr noundef nonnull %1) #5
  tail call void @lv_image_cache_drop(ptr noundef nonnull %1) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_canvas_set_px(ptr noundef %0, i32 noundef %1, i32 noundef %2, i24 %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i24 %3 to i8   ; 4 uses
  %.sroa.8.0.extract.shift = lshr i24 %3, 8       ; 2 uses
  %.sroa.8.0.extract.trunc = trunc i24 %.sroa.8.0.extract.shift to i8 ; 3 uses
  %.sroa.12.0.extract.shift = lshr i24 %3, 16
  %.sroa.12.0.extract.trunc = trunc nuw i24 %.sroa.12.0.extract.shift to i8 ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8
  %5 = lshr i64 %i.d, 8                           ; 2 uses
  %6 = trunc i64 %5 to i32
  %i.e = and i32 %6, 255                          ; 3 uses
  %i.f = tail call ptr @lv_draw_buf_goto_xy(ptr noundef nonnull %i.b, i32 noundef %1, i32 noundef %2) #5 ; 20 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.e, -7
  %or.cond = icmp ult i32 %i.h, 4
  br i1 %or.cond, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  switch i32 %i.e, label %default.unreachable [
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %.critedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = and i32 %1, 7
  %i.j = xor i32 %i.i, 7
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = shl i32 %1, 1
  %i.l = and i32 %i.k, 6
  %i.m = xor i32 %i.l, 6
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.n = shl i32 %1, 2
  %i.o = and i32 %i.n, 4
  %i.p = xor i32 %i.o, 4
  br label %bb.i

.critedge:                                        ; preds = %bb.e
  store i8 %.sroa.0.0.extract.trunc, ptr %i.f, align 1, !tbaa !25
  br label %bb.s

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.083 = phi i32 [ %i.j, %bb.f ], [ %i.m, %bb.g ], [ %i.p, %bb.h ] ; 2 uses
  %i.q = tail call zeroext i8 @lv_color_format_get_bpp(i32 noundef %i.e) #5
  %i.r = zext nneg i8 %i.q to i32
  %notmask = shl nsw i32 -1, %i.r
  %i.s = and i32 %notmask, 255
  %i.t = xor i32 %i.s, 255                        ; 2 uses
  %i.u = zext i24 %3 to i32
  %i.v = and i32 %i.t, %i.u
  %i.w = load i8, ptr %i.f, align 1, !tbaa !25
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.t, %.083
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %i.z, %i.x
  %i.ab = shl nuw nsw i32 %i.v, %.083
  %i.ac = or i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.f, align 1, !tbaa !25
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %trunc = trunc i64 %5 to i8
  switch i8 %trunc, label %bb.r [
    i8 6, label %bb.k
    i8 14, label %bb.l
    i8 18, label %bb.m
    i8 15, label %bb.n
    i8 17, label %bb.o
    i8 16, label %bb.p
    i8 21, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call zeroext i8 @lv_color_luminance(i24 %3) #5
  store i8 %i.ae, ptr %i.f, align 1, !tbaa !25
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  store i8 %4, ptr %i.f, align 1, !tbaa !25
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %tr.sh.diff = trunc nuw i24 %.sroa.8.0.extract.shift to i16
  %i.af = and i16 %tr.sh.diff, -2048
  %sh.diff88 = lshr i24 %3, 5
  %i.ag = trunc i24 %sh.diff88 to i16
  %7 = and i16 %i.ag, 2016
  %8 = or disjoint i16 %i.af, %7
  %9 = lshr i24 %3, 3
  %10 = trunc i24 %9 to i16
  %11 = and i16 %10, 31
  %i.ah = or disjoint i16 %8, %11
  store i16 %i.ah, ptr %i.f, align 2
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %.sroa.12.0.extract.trunc, ptr %i.ai, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %.sroa.8.0.extract.trunc, ptr %i.aj, align 1, !tbaa !25
  store i8 %.sroa.0.0.extract.trunc, ptr %i.f, align 1, !tbaa !25
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %.sroa.12.0.extract.trunc, ptr %i.ak, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %.sroa.8.0.extract.trunc, ptr %i.al, align 1, !tbaa !25
  store i8 %.sroa.0.0.extract.trunc, ptr %i.f, align 1, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 -1, ptr %i.am, align 1, !tbaa !25
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %.sroa.12.0.extract.trunc, ptr %i.an, align 1, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %.sroa.8.0.extract.trunc, ptr %i.ao, align 1, !tbaa !28
  store i8 %.sroa.0.0.extract.trunc, ptr %i.f, align 1, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 %4, ptr %i.ap, align 1, !tbaa !30
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.aq = tail call zeroext i8 @lv_color_luminance(i24 %3) #5
  store i8 %i.aq, ptr %i.f, align 1, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 -1, ptr %i.ar, align 1, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.p, %bb.n, %bb.l
  %i.as = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.c, %.critedge, %bb.b
  ret void
}

declare ptr @lv_draw_buf_goto_xy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @lv_color_format_get_bpp(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @lv_color_luminance(i24) local_unnamed_addr #2

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_canvas_set_palette(ptr noundef %0, i8 noundef zeroext %1, i32 %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lv_draw_buf_set_palette(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i32 %2) #5
  %i.d = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

declare void @lv_draw_buf_set_palette(ptr noundef, i8 noundef zeroext, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @lv_canvas_get_draw_buf(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define i32 @lv_canvas_get_px(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.lv_color32_t, align 4       ; 20 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @lv_draw_buf_goto_xy(ptr noundef nonnull %i.b, i32 noundef %1, i32 noundef %2) #5 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.b, align 4
  %i.g = lshr i64 %i.f, 8
  %trunc = trunc i64 %i.g to i8
  switch i8 %trunc, label %bb.j [
    i8 16, label %bb.e
    i8 15, label %bb.f
    i8 17, label %bb.f
    i8 18, label %bb.g
    i8 14, label %bb.h
    i8 6, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.d, align 1
  store i32 %i.h, ptr %3, align 4
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !28
  %i.o = load i8, ptr %i.d, align 1, !tbaa !25
  store i8 %i.o, ptr %3, align 4, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 -1, ptr %i.p, align 1, !tbaa !30
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.q = load i16, ptr %i.d, align 2              ; 3 uses
  %i.r = lshr i16 %i.q, 11
  %narrow = mul nuw i16 %i.r, 2106
  %i.s = lshr i16 %narrow, 8
  %i.t = trunc nuw i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.t, ptr %i.u, align 2, !tbaa !27
  %i.v = lshr i16 %i.q, 5
  %i.w = and i16 %i.v, 63
  %narrow23 = mul nuw i16 %i.w, 1037
  %i.x = lshr i16 %narrow23, 8
  %i.y = trunc nuw i16 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !28
  %i.aa = and i16 %i.q, 31
  %narrow24 = mul nuw i16 %i.aa, 2106
  %i.ab = lshr i16 %narrow24, 8
  %i.ac = trunc nuw i16 %i.ab to i8
  store i8 %i.ac, ptr %3, align 4, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 -1, ptr %i.ad, align 1, !tbaa !30
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ae = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 89) #5
  %i.af = ptrtoint ptr %i.ae to i64               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.af to i8
  %.sroa.4.0.extract.shift25 = lshr i64 %i.af, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift25 to i8
  %.sroa.5.0.extract.shift26 = lshr i64 %i.af, 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift26 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %.sroa.5.0.extract.trunc, ptr %i.ag, align 2, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.ah, align 1, !tbaa !28
  store i8 %.sroa.0.0.extract.trunc, ptr %3, align 4, !tbaa !29
  %i.ai = load i8, ptr %i.d, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !30
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.d, align 1, !tbaa !25   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ak, ptr %i.al, align 2, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !28
  store i8 %i.ak, ptr %3, align 4, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 3
end_hunk_0
begin_hunk_1_@lv_canvas_fill_bg:bb.a
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv230
  store i32 %.0, ptr %i.an, align 4, !tbaa !32
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.ao = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = and i64 %i.ap, 65535
  %i.ar = icmp samesign ult i64 %indvars.iv.next231, %i.aq
  br i1 %i.ar, label %.lr.ph181, label %._crit_edge182, !llvm.loop !44

._crit_edge182:                                   ; preds = %.lr.ph181, %.lr.ph185
  %i.as = phi i64 [ %i.aj, %.lr.ph185 ], [ %i.ao, %.lr.ph181 ] ; 2 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.at = lshr i64 %i.as, 48
  %i.au = icmp samesign ult i64 %indvars.iv.next234, %i.at
  br i1 %i.au, label %.lr.ph185, label %.loopexit, !llvm.loop !45

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %._crit_edge176
  %i.av = phi i64 [ %i.i, %.lr.ph178.preheader ], [ %i.bh, %._crit_edge176 ] ; 2 uses
  %indvars.iv227 = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next228, %._crit_edge176 ] ; 2 uses
  %i.aw = mul nuw nsw i64 %indvars.iv227, %i.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aw
  %i.ay = and i64 %i.av, 281470681743360
  %.not202 = icmp eq i64 %i.ay, 0
  br i1 %.not202, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph178, %.lr.ph175
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %.lr.ph175 ], [ 0, %.lr.ph178 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv224 ; 3 uses
  store i8 %.sroa.099.0.extract.trunc, ptr %i.az, align 1, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %.sroa.7.0.extract.trunc, ptr %i.ba, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %.sroa.8.0.extract.trunc, ptr %i.bb, align 1, !tbaa !25
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 3 ; 2 uses
  %i.bc = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = and i64 %i.bd, 65535
  %i.bf = mul nuw nsw i64 %i.be, 3
  %i.bg = icmp samesign ult i64 %indvars.iv.next225, %i.bf
  br i1 %i.bg, label %.lr.ph175, label %._crit_edge176, !llvm.loop !46

._crit_edge176:                                   ; preds = %.lr.ph175, %.lr.ph178
  %i.bh = phi i64 [ %i.av, %.lr.ph178 ], [ %i.bc, %.lr.ph175 ] ; 2 uses
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.bi = lshr i64 %i.bh, 48
  %i.bj = icmp samesign ult i64 %indvars.iv.next228, %i.bi
  br i1 %i.bj, label %.lr.ph178, label %.loopexit, !llvm.loop !47

bb.f:                                             ; preds = %bb.c
  %i.bk = tail call zeroext i8 @lv_color_luminance(i24 %1) #5
  %i.bl = load i64, ptr %i.b, align 8             ; 2 uses
  %.not199 = icmp ult i64 %i.bl, 281474976710656
  br i1 %.not199, label %.loopexit, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %bb.f
  %i.bm = zext nneg i32 %i.f to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %._crit_edge169
  %i.bn = phi i64 [ %i.bl, %.lr.ph172.preheader ], [ %i.bw, %._crit_edge169 ] ; 2 uses
  %indvars.iv221 = phi i64 [ 0, %.lr.ph172.preheader ], [ %indvars.iv.next222, %._crit_edge169 ] ; 2 uses
  %i.bo = mul nuw nsw i64 %indvars.iv221, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bo
  %i.bq = and i64 %i.bn, 281470681743360
  %.not200 = icmp eq i64 %i.bq, 0
  br i1 %.not200, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph172, %.lr.ph168
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph168 ], [ 0, %.lr.ph172 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv218
  store i8 %i.bk, ptr %i.br, align 1, !tbaa !25
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.bs = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bt = lshr i64 %i.bs, 32
  %i.bu = and i64 %i.bt, 65535
  %i.bv = icmp samesign ult i64 %indvars.iv.next219, %i.bu
  br i1 %i.bv, label %.lr.ph168, label %._crit_edge169, !llvm.loop !48

._crit_edge169:                                   ; preds = %.lr.ph168, %.lr.ph172
  %i.bw = phi i64 [ %i.bn, %.lr.ph172 ], [ %i.bs, %.lr.ph168 ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.bx = lshr i64 %i.bw, 48
  %i.by = icmp samesign ult i64 %indvars.iv.next222, %i.bx
  br i1 %i.by, label %.lr.ph172, label %.loopexit, !llvm.loop !49

bb.g:                                             ; preds = %bb.c
  %i.bz = tail call zeroext i8 @lv_color_luminance(i24 %1) #5
  %i.ca = load i64, ptr %i.b, align 8             ; 2 uses
  %.not197 = icmp ult i64 %i.ca, 281474976710656
  br i1 %.not197, label %.loopexit, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %bb.g
  %i.cb = zext nneg i32 %i.f to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %._crit_edge
  %i.cc = phi i64 [ %i.ca, %.lr.ph165.preheader ], [ %i.cl, %._crit_edge ] ; 2 uses
  %indvars.iv215 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next216, %._crit_edge ] ; 2 uses
  %i.cd = mul nuw nsw i64 %indvars.iv215, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cd
  %i.cf = and i64 %i.cc, 281470681743360
  %.not198 = icmp eq i64 %i.cf, 0
  br i1 %.not198, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph165, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph165 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  store i8 %i.bz, ptr %i.cg, align 1, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store i8 -1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = and i64 %i.ci, 65535
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph165
  %i.cl = phi i64 [ %i.cc, %.lr.ph165 ], [ %i.ch, %.lr.ph ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.cm = lshr i64 %i.cl, 48
  %i.cn = icmp samesign ult i64 %indvars.iv.next216, %i.cm
  br i1 %i.cn, label %.lr.ph165, label %.loopexit, !llvm.loop !51

.preheader154:                                    ; preds = %.preheader155, %._crit_edge195
  %i.co = phi i64 [ %i.cw, %._crit_edge195 ], [ %i.i, %.preheader155 ] ; 2 uses
  %.5150196 = phi i32 [ %i.cx, %._crit_edge195 ], [ 0, %.preheader155 ] ; 2 uses
  %i.cp = and i64 %i.co, 281470681743360
  %.not208 = icmp eq i64 %i.cp, 0
  br i1 %.not208, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %.preheader154, %.lr.ph194
  %.5193 = phi i32 [ %i.cq, %.lr.ph194 ], [ 0, %.preheader154 ] ; 2 uses
  tail call void @lv_canvas_set_px(ptr noundef nonnull %0, i32 noundef %.5193, i32 noundef %.5150196, i24 %1, i8 noundef zeroext %2)
  %i.cq = add nuw nsw i32 %.5193, 1               ; 2 uses
  %i.cr = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 65535
  %i.cv = icmp samesign ult i32 %i.cq, %i.cu
  br i1 %i.cv, label %.lr.ph194, label %._crit_edge195, !llvm.loop !52

._crit_edge195:                                   ; preds = %.lr.ph194, %.preheader154
  %i.cw = phi i64 [ %i.co, %.preheader154 ], [ %i.cr, %.lr.ph194 ] ; 2 uses
  %i.cx = add nuw nsw i32 %.5150196, 1            ; 2 uses
  %i.cy = lshr i64 %i.cw, 48
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = icmp samesign ult i32 %i.cx, %i.cz
  br i1 %i.da, label %.preheader154, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge169, %._crit_edge176, %._crit_edge182, %._crit_edge189, %._crit_edge195, %bb.g, %bb.f, %.preheader158, %bb.e, %bb.d, %.preheader155
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @lv_draw_buf_flush_cache(ptr noundef %i.db, ptr noundef null) #5
  %i.dc = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %.loopexit
  ret void
}

declare zeroext i16 @lv_color_to_u16(i24) local_unnamed_addr #2

declare i32 @lv_color_to_u32(i24) local_unnamed_addr #2

declare void @lv_draw_buf_flush_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_canvas_init_layer(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not32 = icmp eq ptr %1, null
  br i1 %.not32, label %.preheader33, label %bb.c

.preheader33:                                     ; preds = %bb.b, %.preheader33
  br label %.preheader33

bb.c:                                             ; preds = %bb.b
  tail call void @lv_layer_init(ptr noundef nonnull %1) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %i.b, align 4              ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = and i32 %i.f, 65535
  %i.h = add nsw i32 %i.g, -1                     ; 3 uses
  %i.i = lshr i64 %i.d, 48
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = add nsw i32 %i.j, -1                     ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !56
  %i.l = load i64, ptr %i.b, align 4
  %2 = lshr i64 %i.l, 8
  %3 = trunc i64 %2 to i32
  %i.m = and i32 %3, 255
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.m, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.o, align 8, !tbaa !32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.k, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.p, align 8, !tbaa !32
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %.sroa.6.0..sroa_idx3, align 4, !tbaa !32
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.h, ptr %.sroa.7.0..sroa_idx7, align 8, !tbaa !32
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.k, ptr %.sroa.8.0..sroa_idx11, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.q, align 8, !tbaa !32
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 0, ptr %.sroa.6.0..sroa_idx5, align 4, !tbaa !32
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.h, ptr %.sroa.7.0..sroa_idx9, align 8, !tbaa !32
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %i.k, ptr %.sroa.8.0..sroa_idx13, align 4, !tbaa !32
  tail call void @lv_draw_unit_send_event(ptr noundef null, i32 noundef 44, ptr noundef nonnull %1) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

declare void @lv_layer_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_unit_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_canvas_finish_layer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lv_draw_unit_send_event(ptr noundef null, i32 noundef 45, ptr noundef nonnull %1) #5
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 1, ptr %i.d, align 4, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.f
  tail call void @lv_draw_dispatch_wait_for_request() #5
  %i.e = tail call ptr @lv_obj_get_display(ptr noundef %0) #5
  %i.f = tail call zeroext i1 @lv_draw_dispatch_layer(ptr noundef %i.e, ptr noundef nonnull %1) #5
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lv_draw_wait_for_finish() #5
  tail call void @lv_draw_dispatch_request() #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.g, label %bb.d, !llvm.loop !58

bb.g:                                             ; preds = %bb.f
  tail call void @lv_draw_unit_send_event(ptr noundef null, i32 noundef 47, ptr noundef nonnull %1) #5
  tail call void @lv_draw_unit_send_event(ptr noundef null, i32 noundef 45, ptr noundef nonnull %1) #5
  %i.g = tail call i32 @lv_obj_invalidate(ptr noundef %0) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

declare void @lv_draw_dispatch_wait_for_request() local_unnamed_addr #2

declare zeroext i1 @lv_draw_dispatch_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_display(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_wait_for_finish() local_unnamed_addr #2

declare void @lv_draw_dispatch_request() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -2147483644, -2147483648) i32 @lv_canvas_buf_size(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %2 to i32
  %i.b = mul nsw i32 %0, %i.a
  %i.c = add nsw i32 %i.b, 7
  %i.d = ashr i32 %i.c, 3
  %i.e = zext i8 %3 to i32                        ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = add nsw i32 %i.f, %i.d
  %i.h = sub nsw i32 0, %i.e
  %i.i = and i32 %i.g, %i.h
  %i.j = mul nsw i32 %i.i, %1
  %i.k = add nsw i32 %i.j, 4
  ret i32 %i.k
}

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!16 = !{!"", !5, i64 0, !5, i64 4}
!17 = !{!"_lv_image_t", !15, i64 0, !8, i64 72, !8, i64 80, !16, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !16, i64 116, !5, i64 124, !5, i64 124, !5, i64 124, !5, i64 125, !5, i64 125}
!18 = !{!"p1 _ZTS14_lv_draw_buf_t", !8, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!20 = !{!"p1 omnipotent char", !8, i64 0}
!21 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !8, i64 0}
!22 = !{!"_lv_draw_buf_t", !19, i64 0, !5, i64 12, !20, i64 16, !8, i64 24, !21, i64 32}
!23 = !{!"_lv_canvas_t", !17, i64 0, !18, i64 128, !22, i64 136}
!24 = !{!23, !18, i64 128}
!25 = !{!4, !4, i64 0}
!26 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!27 = !{!26, !4, i64 2}
!28 = !{!26, !4, i64 1}
!29 = !{!26, !4, i64 0}
!30 = !{!26, !4, i64 3}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!5, !5, i64 0}
!33 = !{!"p1 _ZTS15_lv_draw_task_t", !8, i64 0}
!34 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!35 = !{!"_Bool", !4, i64 0}
!36 = !{!"_lv_layer_t", !18, i64 0, !33, i64 8, !34, i64 16, !34, i64 24, !8, i64 32, !13, i64 40, !13, i64 56, !13, i64 72, !5, i64 88, !26, i64 92, !5, i64 96, !35, i64 100, !4, i64 101}
!37 = !{!22, !21, i64 32}
!38 = !{!"", !4, i64 0, !4, i64 1}
!39 = !{!38, !4, i64 0}
!40 = !{!38, !4, i64 1}
!41 = !{!22, !8, i64 24}
!42 = distinct !{!42, !31}
!43 = distinct !{!43, !31}
!44 = distinct !{!44, !31}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
!47 = distinct !{!47, !31}
!48 = distinct !{!48, !31}
!49 = distinct !{!49, !31}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
!52 = distinct !{!52, !31}
!53 = distinct !{!53, !31}
!54 = !{!22, !20, i64 16}
!55 = !{!14, !14, i64 0}
!56 = !{!36, !18, i64 0}
!57 = !{!36, !5, i64 96}
!58 = distinct !{!58, !31}
!59 = !{!36, !33, i64 8}
!60 = !{!36, !35, i64 100}
end_hunk_1
