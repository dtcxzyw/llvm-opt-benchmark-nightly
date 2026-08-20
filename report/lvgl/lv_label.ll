inline.NumInlined: 72
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_draw_label_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_point_t, ptr, %struct.lv_color_t, i32, i32, i32, i32, i32, i32, i32, %struct.lv_color_t, %struct.lv_color_t, i32, i32, i32, i8, i8, i16, ptr, %struct.lv_color_t, i32 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_text_attributes_t = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._lv_anim_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union._lv_anim_path_para_t, i32, i32, i32, i8 }
%union._lv_anim_path_para_t = type { %struct.lv_anim_bezier3_para_t }
%struct.lv_anim_bezier3_para_t = type { i16, i16, i16, i16 }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [9 x i8] c"lv_label\00", align 1
@lv_label_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_label_constructor, ptr @lv_label_destructor, ptr @lv_label_event, ptr null, ptr @.str, i32 1073741823, i32 1073741823, i8 -128, i8 8, i8 0, [5 x i8] zeroinitializer }, align 8
@lv_text_encoded_get_byte_id = external local_unnamed_addr constant ptr, align 8
@lv_text_encoded_prev = external local_unnamed_addr constant ptr, align 8
@lv_text_encoded_get_char_id = external local_unnamed_addr constant ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@lv_text_get_encoded_length = external local_unnamed_addr constant ptr, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Text\00", align 1

; Function Attrs: nounwind uwtable
define internal void @lv_label_constructor(ptr nofree readnone captures(none) %0, ptr noundef initializes((72, 80), (84, 88)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -1, ptr %i.d, align 4, !tbaa !21
  %i.e = and i16 %i.c, -64
  store i16 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 116
  tail call void @lv_point_set(ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 0) #6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 65535>, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 65535, ptr %i.h, align 8, !tbaa !23
  tail call void @lv_obj_remove_flag(ptr noundef %1, i32 noundef 2) #6
  tail call void @lv_label_set_long_mode(ptr noundef %1, i32 noundef 0)
  tail call void @lv_label_set_text(ptr noundef %1, ptr noundef nonnull @.str.2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_label_destructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 16
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  tail call void @lv_free(ptr noundef %i.e) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.f, align 8, !tbaa !8
  %i.g = tail call ptr @lv_obj_get_display(ptr noundef nonnull %1) #6
  %i.h = tail call i32 @lv_display_remove_event_cb_with_user_data(ptr noundef %i.g, ptr noundef nonnull @update_layout_completed_cb, ptr noundef nonnull %1) #6 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_label_event(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 4          ; 15 uses
  %3 = alloca %struct.lv_draw_label_dsc_t, align 8 ; 27 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 6 uses
  %5 = alloca %struct.lv_text_attributes_t, align 4 ; 7 uses
  %i.a = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_label_class, ptr noundef %1) #6
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %lv_label_mark_need_refr_text.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lv_event_get_code(ptr noundef %1) #6 ; 2 uses
  %i.c = tail call ptr @lv_event_get_current_target(ptr noundef %1) #6 ; 29 uses
  %i.d = and i32 %i.b, -2
  %or.cond = icmp eq i32 %i.d, 50
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %lv_label_mark_need_refr_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 4 uses
  %i.i = load i16, ptr %i.h, align 4
  %i.j = or i16 %i.i, 128
  store i16 %i.j, ptr %i.h, align 4
  %i.k = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.l = tail call zeroext i1 @lv_obj_refresh_self_size(ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.m = load i16, ptr %i.h, align 4              ; 2 uses
  %i.n = and i16 %i.m, 256
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %bb.e, label %lv_label_mark_need_refr_text.exit

bb.e:                                             ; preds = %bb.d
  %i.o = or disjoint i16 %i.m, 256
  store i16 %i.o, ptr %i.h, align 4
  %i.p = tail call ptr @lv_obj_get_display(ptr noundef nonnull %i.c) #6
  tail call void @lv_display_add_event_cb(ptr noundef %i.p, ptr noundef nonnull @update_layout_completed_cb, i32 noundef 66, ptr noundef nonnull %i.c) #6
  br label %lv_label_mark_need_refr_text.exit

bb.f:                                             ; preds = %bb.b
  switch i32 %i.b, label %lv_label_mark_need_refr_text.exit [
    i32 27, label %bb.g
    i32 53, label %bb.h
    i32 29, label %bb.ad
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 77) #6
  %i.r = tail call i32 @lv_font_get_line_height(ptr noundef %i.q) #6
  %i.s = sdiv i32 %i.r, 4
  tail call void @lv_event_set_ext_draw_size(ptr noundef %1, i32 noundef %i.s) #6
  br label %lv_label_mark_need_refr_text.exit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 6 uses
  %i.u = load i16, ptr %i.t, align 4
  %i.v = and i16 %i.u, 128
  %.not65 = icmp eq i16 %i.v, 0
  br i1 %.not65, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 77) #6
  %i.x = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 102) #6
  %i.y = ptrtoint ptr %i.x to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.y to i32
  %i.z = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 103) #6
  %i.aa = ptrtoint ptr %i.z to i64
  %.sroa.0.0.extract.trunc.i69 = trunc i64 %i.aa to i32
  %i.ab = load i16, ptr %i.t, align 4             ; 2 uses
  %i.ac = lshr i16 %i.ab, 2
  %i.ad = and i16 %i.ac, 8
  %i.ae = lshr i16 %i.ab, 6
  %i.af = and i16 %i.ae, 1
  %.180 = or disjoint i16 %i.ad, %i.af
  %.1 = zext nneg i16 %.180 to i32
  %i.ag = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 1) #6
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 1073741823
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 62
  %i.al = load i32, ptr %i.ak, align 2
  %i.am = and i32 %i.al, 2048
  %.not68 = icmp eq i32 %i.am, 0
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = tail call i32 @lv_obj_get_content_width(ptr noundef nonnull %i.c) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ %i.an, %bb.k ], [ 536870911, %bb.j ] ; 2 uses
  %i.ao = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 9) #6
  %i.ap = ptrtoint ptr %i.ao to i64
  %.sroa.0.0.extract.trunc.i71 = trunc i64 %i.ap to i32
  %i.aq = icmp slt i32 %.0, %.sroa.0.0.extract.trunc.i71
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 9) #6
  %i.as = ptrtoint ptr %i.ar to i64
  %.sroa.0.0.extract.trunc.i72 = trunc i64 %i.as to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.at = phi i32 [ %.sroa.0.0.extract.trunc.i72, %bb.m ], [ %.0, %bb.l ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 7 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21 ; 5 uses
  %.not.i73 = icmp eq i32 %i.av, -1               ; 2 uses
  br i1 %.not.i73, label %lv_label_revert_dots.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i16, ptr %i.t, align 4
  %i.ax = and i16 %i.aw, 16
  %.not12.i = icmp eq i16 %i.ax, 0
  br i1 %.not12.i, label %.preheader.i, label %lv_label_revert_dots.exit

.preheader.i:                                     ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.ba = load i8, ptr %i.ay, align 4, !tbaa !24  ; 2 uses
  %.not13.i = icmp eq i8 %i.ba, 0
  br i1 %.not13.i, label %lv_label_revert_dots.exit, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bc = zext i32 %i.av to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 %i.ba, ptr %i.bd, align 1, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !24  ; 2 uses
  %.not13.1.i = icmp eq i8 %i.bf, 0
  br i1 %.not13.1.i, label %lv_label_revert_dots.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bh = load i32, ptr %i.au, align 4, !tbaa !21
  %i.bi = add i32 %i.bh, 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 82
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !24  ; 2 uses
  %.not13.2.i = icmp eq i8 %i.bm, 0
  br i1 %.not13.2.i, label %lv_label_revert_dots.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bo = load i32, ptr %i.au, align 4, !tbaa !21
  %i.bp = add i32 %i.bo, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  store i8 %i.bm, ptr %i.br, align 1, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 83
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !24  ; 2 uses
  %.not13.3.i = icmp eq i8 %i.bt, 0
  br i1 %.not13.3.i, label %lv_label_revert_dots.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bv = load i32, ptr %i.au, align 4, !tbaa !21
  %i.bw = add i32 %i.bv, 3
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !24
  br label %lv_label_revert_dots.exit

lv_label_revert_dots.exit:                        ; preds = %bb.n, %bb.o, %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.s
  store i32 -1, ptr %i.au, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store i32 %.sroa.0.0.extract.trunc.i, ptr %5, align 4, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.0.0.extract.trunc.i69, ptr %i.bz, align 4, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.1, ptr %i.ca, align 4, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.at, ptr %i.cb, align 4, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 6 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8
  call void @lv_text_get_size_attributes(ptr noundef nonnull %i.cc, ptr noundef %i.ce, ptr noundef %i.w, ptr noundef nonnull %5) #6
  %i.cf = load i32, ptr %i.au, align 4, !tbaa !21
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.t, label %.preheader.i74

.preheader.i74:                                   ; preds = %lv_label_revert_dots.exit, %.preheader.i74
  br label %.preheader.i74

bb.t:                                             ; preds = %lv_label_revert_dots.exit
  br i1 %.not.i73, label %lv_label_set_dots.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.av, ptr %i.au, align 4, !tbaa !21
  %i.ch = load i16, ptr %i.t, align 4
  %i.ci = and i16 %i.ch, 16
  %.not20.i = icmp eq i16 %i.ci, 0
  br i1 %.not20.i, label %bb.v, label %lv_label_set_dots.exit

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cl = zext i32 %i.av to i64                   ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %i.cn = call ptr @lv_strncpy(ptr noundef nonnull %i.cj, ptr noundef %i.cm, i64 noundef 4) #6 ; 0 uses
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !8  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cl ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %.not21.i = icmp eq i8 %i.cq, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 46, ptr %i.cp, align 1, !tbaa !24
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !8  ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cl
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !24
  %.not21.1.i = icmp eq i8 %i.ct, 0
  br i1 %.not21.1.i, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 46, ptr %i.cs, align 1, !tbaa !24
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !8  ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cl
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !24
  %.not21.2.i = icmp eq i8 %i.cw, 0
  br i1 %.not21.2.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 46, ptr %i.cv, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %i.cd, align 8, !tbaa !8
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.cx = phi ptr [ %.pre.i, %bb.y ], [ %i.co, %bb.v ], [ %i.cr, %bb.w ], [ %i.cu, %bb.x ]
  %.0.lcssa.i = phi i32 [ 3, %bb.y ], [ 0, %bb.v ], [ 1, %bb.w ], [ 2, %bb.x ]
  %i.cy = add i32 %.0.lcssa.i, %i.av
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !24
  br label %lv_label_set_dots.exit

lv_label_set_dots.exit:                           ; preds = %bb.t, %bb.u, %.critedge.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !29
  %i.dd = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 11) #6
  %i.de = ptrtoint ptr %i.dd to i64
  %.sroa.0.0.extract.trunc.i76 = trunc i64 %i.de to i32
  %i.df = icmp slt i32 %i.dc, %.sroa.0.0.extract.trunc.i76
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %lv_label_set_dots.exit
  %i.dg = load i32, ptr %i.db, align 8, !tbaa !29
  br label %bb.ab

bb.aa:                                            ; preds = %lv_label_set_dots.exit
  %i.dh = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.c, i32 noundef 0, i8 noundef zeroext 11) #6
  %i.di = ptrtoint ptr %i.dh to i64
  %.sroa.0.0.extract.trunc.i77 = trunc i64 %i.di to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dj = phi i32 [ %i.dg, %bb.z ], [ %.sroa.0.0.extract.trunc.i77, %bb.aa ]
  store i32 %i.dj, ptr %i.db, align 8, !tbaa !29
  %i.dk = load i16, ptr %i.t, align 4
  %i.dl = and i16 %i.dk, -129
  store i16 %i.dl, ptr %i.t, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.h
  %i.dm = call ptr @lv_event_get_param(ptr noundef %1) #6 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.do = load <2 x i32>, ptr %i.dm, align 4, !tbaa !22
  %i.dp = load <2 x i32>, ptr %i.dn, align 4, !tbaa !22
  %i.dq = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.do, <2 x i32> %i.dp)
  store <2 x i32> %i.dq, ptr %i.dm, align 4, !tbaa !22
  br label %lv_label_mark_need_refr_text.exit

bb.ad:                                            ; preds = %bb.f
  %i.dr = tail call ptr @lv_event_get_current_target(ptr noundef %1) #6 ; 22 uses
  %i.ds = tail call ptr @lv_event_get_layer(ptr noundef %1) #6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @lv_obj_get_content_coords(ptr noundef %i.dr, ptr noundef nonnull %2) #6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 124 ; 6 uses
  %i.du = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.dv = lshr i16 %i.du, 2
  %i.dw = and i16 %i.dv, 8
  %i.dx = lshr i16 %i.du, 6
  %i.dy = and i16 %i.dx, 1
  %.113.i.i = or disjoint i16 %i.dw, %i.dy        ; 3 uses
  %i.dz = call ptr @lv_obj_get_style_prop(ptr noundef %i.dr, i32 noundef 0, i8 noundef zeroext 1) #6
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = icmp eq i64 %i.eb, 1073741823
  br i1 %i.ec, label %bb.ae, label %get_label_flags.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ed = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.dr, i32 noundef 0, i8 noundef zeroext 9) #6
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = icmp eq i64 %i.ef, 536870911
  br i1 %i.eg, label %bb.af, label %get_label_flags.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 62
  %i.ei = load i32, ptr %i.eh, align 2
  %i.ej = trunc i32 %i.ei to i16
  %i.ek = lshr i16 %i.ej, 10
  %i.el = and i16 %i.ek, 2
  %i.em = or disjoint i16 %i.el, %.113.i.i
  %i.en = xor i16 %i.em, 2
  br label %get_label_flags.exit.i

get_label_flags.exit.i:                           ; preds = %bb.af, %bb.ae, %bb.ad
  %.2.i.i = phi i16 [ %i.en, %bb.af ], [ %.113.i.i, %bb.ad ], [ %.113.i.i, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %3) #6
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !30
  %i.er = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 142 ; 4 uses
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = shl i16 %i.er, 5
  %i.ev = and i16 %i.eu, 512
  %i.ew = and i16 %i.et, -513
  %i.ex = or disjoint i16 %i.ew, %i.ev
  store i16 %i.ex, ptr %i.es, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dr, i64 116 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 120 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.fc = load <2 x i32>, ptr %i.ey, align 4, !tbaa !22
  store <2 x i32> %i.fc, ptr %i.ez, align 4, !tbaa !22
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dr, i64 128 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8
  store i64 %i.ff, ptr %i.fd, align 8
  %i.fg = and i16 %i.er, 15
  %.not.i78 = icmp eq i16 %i.fg, 3
  br i1 %.not.i78, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %get_label_flags.exit.i
  %i.fh = call i32 @lv_area_get_height(ptr noundef nonnull %2) #6
  %i.fi = icmp sgt i32 %i.fh, 1023
  br i1 %i.fi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !38
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %get_label_flags.exit.i
  %i.fl = load i16, ptr %i.es, align 2
  %i.fm = shl nuw nsw i16 %.2.i.i, 3
  %i.fn = and i16 %i.fl, -249
  %i.fo = add nuw nsw i16 %i.fn, %i.fm
  store i16 %i.fo, ptr %i.es, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ds, ptr %i.fp, align 8, !tbaa !39
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %i.dr, i32 noundef 0, ptr noundef nonnull %3) #6
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 4 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !22
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.aj, label %lv_label_get_text_selection_end.exit.i

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.fq, align 4, !tbaa !22
  br label %lv_label_get_text_selection_end.exit.i

lv_label_get_text_selection_end.exit.i:           ; preds = %bb.aj, %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dr, i64 100
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !40 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !23 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !42
  %i.fz = icmp ne i32 %i.fu, 65535
  %i.ga = icmp ne i32 %i.fx, 65535
  %or.cond.i = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %lv_label_get_text_selection_end.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.gc = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.dr, i32 noundef 262144, i8 noundef zeroext 92) #6
  %i.gd = call ptr @lv_obj_style_apply_color_filter(ptr noundef nonnull %i.dr, i32 noundef 262144, ptr %i.gc) #6
  %i.ge = ptrtoint ptr %i.gd to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %i.ge to i24
  store i24 %.sroa.01.0.extract.trunc.i.i, ptr %i.gb, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 123
  %i.gg = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.dr, i32 noundef 262144, i8 noundef zeroext 73) #6
  %i.gh = ptrtoint ptr %i.gg to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.gh to i24
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %i.gf, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %lv_label_get_text_selection_end.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.gj = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.dr, i32 noundef 0, i8 noundef zeroext 109) #6
  %i.gk = ptrtoint ptr %i.gj to i64
  %.sroa.0.0.extract.trunc.i71.i = trunc i64 %i.gk to i24
  store i24 %.sroa.0.0.extract.trunc.i71.i, ptr %i.gi, align 8
  %i.gl = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.dr, i32 noundef 0, i8 noundef zeroext 108) #6
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = trunc i64 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 141
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !43
  %i.gp = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.dr, i32 noundef 0, i8 noundef zeroext 107) #6
  %i.gq = ptrtoint ptr %i.gp to i64
  %.sroa.0.0.extract.trunc.i72.i = trunc i64 %i.gq to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 %.sroa.0.0.extract.trunc.i72.i, ptr %i.gr, align 4, !tbaa !44
  %i.gs = load i16, ptr %i.dt, align 4
  %i.gt = and i16 %i.gs, 14
  %switch.i = icmp eq i16 %i.gt, 2
  br i1 %switch.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gu = load i32, ptr %i.fq, align 4, !tbaa !45
end_hunk_0
begin_hunk_1_@update_layout_completed_cb:bb.a
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !73
  store i32 %i.jl, ptr %i.jh, align 8, !tbaa !73
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jm = getelementptr inbounds nuw i8, ptr %i.gf, i64 100
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.jo = load <2 x i32>, ptr %i.jm, align 4, !tbaa !22
  store <2 x i32> %i.jo, ptr %i.jn, align 4, !tbaa !22
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !76
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !76
  br label %overwrite_anim_property.exit155.i

bb.bp:                                            ; preds = %bb.bh
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !77
  %i.ju = icmp slt i32 %i.iq, %i.jt
  br i1 %i.ju, label %bb.bq, label %overwrite_anim_property.exit155.i

bb.bq:                                            ; preds = %bb.bp
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i32 %i.iq, ptr %i.jv, align 8, !tbaa !73
  br label %overwrite_anim_property.exit155.i

overwrite_anim_property.exit155.i:                ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bl, %bb.bi
  %i.jw = call ptr @lv_anim_start(ptr noundef nonnull %5) #6 ; 0 uses
  br label %bb.bs

bb.br:                                            ; preds = %bb.be
  %i.jx = call zeroext i1 @lv_anim_delete(ptr noundef nonnull %i.b, ptr noundef nonnull @set_ofs_y_anim) #6 ; 0 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.jy, align 8, !tbaa !58
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %overwrite_anim_property.exit155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.cb

bb.bt:                                            ; preds = %lv_label_revert_dots.exit.i
  %i.jz = lshr i64 %i.bt, 32
  %i.ka = trunc nuw i64 %i.jz to i32
  %i.kb = call i32 @lv_area_get_height(ptr noundef nonnull %1) #6
  %i.kc = icmp slt i32 %i.kb, %i.ka
  br i1 %i.kc, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !60
  %i.kf = call i32 @lv_font_get_line_height(ptr noundef %i.n) #6
  %i.kg = icmp sgt i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.kh = load ptr, ptr @lv_text_get_encoded_length, align 8, !tbaa !62
  %i.ki = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.kj = call i32 %i.kh(ptr noundef %i.ki) #6, !inline_history !78
  %i.kk = icmp ugt i32 %i.kj, 3
  br i1 %i.kk, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.kl = call i32 @lv_area_get_width(ptr noundef nonnull %1) #6
  %i.km = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.n, i32 noundef 46, i32 noundef 46) #6
  %i.kn = zext i16 %i.km to i32
  %i.ko = load i32, ptr %2, align 4, !tbaa !25
  %i.kp = add nsw i32 %i.ko, %i.kn
  %.neg.i = mul i32 %i.kp, -3
  %i.kq = add i32 %.neg.i, %i.kl
  store i32 %i.kq, ptr %6, align 4, !tbaa !61
  %i.kr = call i32 @lv_area_get_height(ptr noundef nonnull %1) #6 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.kt = call i32 @lv_font_get_line_height(ptr noundef %i.n) #6
  %i.ku = load i32, ptr %i.q, align 4, !tbaa !26
  %i.kv = add nsw i32 %i.ku, %i.kt
  %i.kw = srem i32 %i.kr, %i.kv                   ; 3 uses
  %i.kx = call i32 @lv_font_get_line_height(ptr noundef %i.n) #6
  %.not.i = icmp slt i32 %i.kw, %i.kx
  br i1 %.not.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ky = sub i32 %i.kr, %i.kw
  %i.kz = call i32 @lv_font_get_line_height(ptr noundef %i.n) #6
  %i.la = add nsw i32 %i.ky, %i.kz
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.lb = load i32, ptr %i.q, align 4, !tbaa !26
  %i.lc = add i32 %i.kw, %i.lb
  %i.ld = sub i32 %i.kr, %i.lc
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %storemerge.i = phi i32 [ %i.ld, %bb.by ], [ %i.la, %bb.bx ]
  store i32 %storemerge.i, ptr %i.ks, align 4, !tbaa !60
  %i.le = call i32 @lv_label_get_letter_on(ptr noundef nonnull %i.b, ptr noundef nonnull %6, i1 zeroext poison)
  %i.lf = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.lg = call i64 @lv_strlen(ptr noundef %i.lf) #6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.lh = load ptr, ptr @lv_text_encoded_get_byte_id, align 8, !tbaa !62
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.lj = call i32 %i.lh(ptr noundef %i.li, i32 noundef %i.le) #6, !inline_history !78 ; 3 uses
  store i32 %i.lj, ptr %i.a, align 4, !tbaa !22
  %i.lk = add i32 %i.lj, 3
  %i.ll = zext i32 %i.lk to i64
  %i.lm = icmp ult i64 %i.lg, %i.ll
  br i1 %i.lm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bz
  %i.ln = load ptr, ptr @lv_text_encoded_prev, align 8, !tbaa !62
  %i.lo = trunc nuw i64 %i.lg to i32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.lr.ph.i
  %i.lp = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.lq = call i32 %i.ln(ptr noundef %i.lp, ptr noundef nonnull %i.a) #6, !inline_history !78 ; 0 uses
  %i.lr = load i32, ptr %i.a, align 4, !tbaa !22  ; 2 uses
  %i.ls = add i32 %i.lr, 3
  %i.lt = icmp ugt i32 %i.ls, %i.lo
  br i1 %i.lt, label %bb.ca, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.ca, %bb.bz
  %.lcssa.i = phi i32 [ %i.lj, %bb.bz ], [ %i.lr, %bb.ca ]
  call fastcc void @lv_label_set_dots(ptr noundef nonnull %i.b, i32 noundef %.lcssa.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.an, %lv_label_revert_dots.exit.i
  %i.lu = call i32 @lv_obj_invalidate(ptr noundef nonnull %i.b) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %lv_label_refr_text.exit

lv_label_refr_text.exit:                          ; preds = %bb.cb, %bb.b, %bb.a
  ret void
}

declare ptr @lv_event_get_user_data(ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size_attributes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @lv_anim_speed_clamped(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_repeat_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_reverse_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_repeat_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_anim_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_anim_resolve_speed(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_reverse_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lv_label_set_dots(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, -1
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.a, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.e = load i16, ptr %i.d, align 4
  %i.f = and i16 %i.e, 16
  %.not20 = icmp eq i16 %i.f, 0
  br i1 %.not20, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = zext i32 %1 to i64                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = tail call ptr @lv_strncpy(ptr noundef nonnull %i.g, ptr noundef %i.k, i64 noundef 4) #6 ; 0 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %.not21 = icmp eq i8 %i.o, 0
  br i1 %.not21, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 46, ptr %i.n, align 1, !tbaa !24
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %.not21.1 = icmp eq i8 %i.r, 0
  br i1 %.not21.1, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 46, ptr %i.q, align 1, !tbaa !24
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %.not21.2 = icmp eq i8 %i.u, 0
  br i1 %.not21.2, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 46, ptr %i.t, align 1, !tbaa !24
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.v = phi ptr [ %.pre, %bb.g ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.s, %bb.f ]
  %.0.lcssa = phi i32 [ 3, %bb.g ], [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ]
  %i.w = add i32 %.0.lcssa, %1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  store i8 0, ptr %i.y, align 1, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %.critedge, %bb.c
  ret void
}

declare ptr @lv_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare void @lv_event_set_ext_draw_size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_label_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_scroll_top(ptr noundef) local_unnamed_addr #2

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_style_apply_color_filter(ptr noundef, i32 noundef, ptr) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @lv_strcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

declare void @lv_display_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = !{!9, !18, i64 72}
!9 = !{!"_lv_label_t", !10, i64 0, !18, i64 72, !6, i64 80, !5, i64 84, !19, i64 88, !5, i64 100, !5, i64 104, !20, i64 108, !20, i64 116, !5, i64 124, !6, i64 124, !6, i64 124, !6, i64 124, !6, i64 124, !6, i64 125, !20, i64 128}
!10 = !{!"_lv_obj_t", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !12, i64 32, !16, i64 40, !5, i64 56, !17, i64 60, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 64}
!11 = !{!"p1 _ZTS15_lv_obj_class_t", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS9_lv_obj_t", !12, i64 0}
!14 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !12, i64 0}
!15 = !{!"p1 _ZTS15_lv_obj_style_t", !12, i64 0}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!17 = !{!"short", !6, i64 0}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!"_lv_draw_label_hint_t", !5, i64 0, !5, i64 4, !5, i64 8}
!20 = !{!"", !5, i64 0, !5, i64 4}
!21 = !{!9, !5, i64 84}
!22 = !{!5, !5, i64 0}
!23 = !{!9, !5, i64 104}
!24 = !{!6, !6, i64 0}
!25 = !{!16, !5, i64 0}
!26 = !{!16, !5, i64 4}
!27 = !{!16, !5, i64 12}
!28 = !{!16, !5, i64 8}
!29 = !{!9, !5, i64 112}
!30 = !{!31, !18, i64 64}
!31 = !{!"", !32, i64 0, !18, i64 64, !20, i64 72, !36, i64 80, !34, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !34, i64 120, !34, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !6, i64 140, !6, i64 141, !5, i64 142, !5, i64 142, !6, i64 143, !6, i64 143, !6, i64 143, !37, i64 144, !34, i64 152, !5, i64 156}
!32 = !{!"", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !33, i64 24, !17, i64 32, !17, i64 34, !34, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !35, i64 48, !12, i64 56}
!33 = !{!"p1 _ZTS11_lv_layer_t", !12, i64 0}
!34 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!35 = !{!"long", !6, i64 0}
!36 = !{!"p1 _ZTS10_lv_font_t", !12, i64 0}
!37 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !12, i64 0}
!38 = !{!31, !37, i64 144}
!39 = !{!31, !33, i64 24}
!40 = !{!9, !5, i64 100}
!41 = !{!31, !5, i64 112}
!42 = !{!31, !5, i64 116}
!43 = !{!31, !6, i64 141}
!44 = !{!31, !5, i64 156}
!45 = !{!31, !5, i64 132}
!46 = !{!10, !5, i64 52}
!47 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22}
!48 = !{!31, !6, i64 39}
!49 = !{!50, !5, i64 84}
!50 = !{!"_lv_layer_t", !51, i64 0, !52, i64 8, !33, i64 16, !33, i64 24, !12, i64 32, !16, i64 40, !16, i64 56, !16, i64 72, !5, i64 88, !53, i64 92, !5, i64 96, !54, i64 100, !6, i64 101}
!51 = !{!"p1 _ZTS14_lv_draw_buf_t", !12, i64 0}
!52 = !{!"p1 _ZTS15_lv_draw_task_t", !12, i64 0}
!53 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!54 = !{!"_Bool", !6, i64 0}
!55 = !{!9, !5, i64 116}
!56 = !{!31, !36, i64 80}
!57 = !{!31, !5, i64 100}
!58 = !{!9, !5, i64 120}
!59 = !{!31, !5, i64 104}
!60 = !{!20, !5, i64 4}
!61 = !{!20, !5, i64 0}
!62 = !{!12, !12, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = !{!67, !12, i64 24}
!67 = !{!"_lv_observer_t", !68, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 32, !5, i64 32}
!68 = !{!"p1 _ZTS13_lv_subject_t", !12, i64 0}
!69 = !{!67, !12, i64 16}
!70 = !{!9, !5, i64 88}
!71 = !{!72, !5, i64 92}
!72 = !{!"_lv_anim_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !6, i64 128, !6, i64 128, !6, i64 128, !6, i64 128}
!73 = !{!72, !5, i64 88}
!74 = !{!72, !5, i64 72}
!75 = !{!72, !5, i64 80}
!76 = !{!72, !12, i64 32}
!77 = !{!72, !5, i64 84}
!78 = distinct !{null}
!79 = distinct !{!79, !64}
end_hunk_1
