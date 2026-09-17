Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_span?download=true
inline.NumInlined: 76
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%struct.lv_snippet_t = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.lv_draw_label_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_point_t, ptr, %struct.lv_color_t, i32, i32, i32, i32, i32, i32, i32, %struct.lv_color_t, %struct.lv_color_t, i32, i32, i32, i8, i8, i16, ptr, %struct.lv_color_t, i32 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._lv_span_coords_t = type { %struct.lv_area_t, %struct.lv_area_t, %struct.lv_area_t }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [8 x i8] c"lv_span\00", align 1
@lv_spangroup_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_spangroup_constructor, ptr @lv_spangroup_destructor, ptr @lv_spangroup_event, ptr null, ptr @.str, i32 1073741823, i32 1073741823, i8 -128, i8 7, i8 0, [5 x i8] zeroinitializer }, align 8
@lv_global = external local_unnamed_addr global %struct._lv_global_t, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lv_text_encoded_next = external local_unnamed_addr constant ptr, align 8
@lv_text_encoded_prev = external local_unnamed_addr constant ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define internal void @lv_spangroup_constructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @lv_ll_init(ptr noundef nonnull %i.a, i32 noundef 40) #10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.b, align 8, !tbaa !8
  %i.e = and i8 %i.d, -4
  %i.f = or disjoint i8 %i.e, 2
  store i8 %i.f, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_spangroup_destructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.b = tail call ptr @lv_ll_get_head(ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not14 = icmp eq ptr %i.b, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015 = phi ptr [ %i.i, %bb.d ], [ %i.b, %bb.a ] ; 6 uses
  tail call void @lv_ll_remove(ptr noundef nonnull %i.a, ptr noundef nonnull %.015) #10
  %i.c = load ptr, ptr %.015, align 8, !tbaa !14  ; 2 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.015, i64 24
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @lv_free(ptr noundef nonnull %i.c) #10
  store ptr null, ptr %.015, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.015, i64 8
  tail call void @lv_style_reset(ptr noundef nonnull %i.h) #10
  tail call void @lv_free(ptr noundef nonnull %.015) #10
  %i.i = tail call ptr @lv_ll_get_head(ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_spangroup_event(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.lv_text_attributes_t, align 4 ; 9 uses
  %3 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %4 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %5 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %6 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %7 = alloca %struct.lv_text_attributes_t, align 4 ; 7 uses
  %8 = alloca %union.lv_style_value_t, align 8    ; 4 uses
  %9 = alloca %struct.lv_text_attributes_t, align 4 ; 8 uses
  %10 = alloca %union.lv_style_value_t, align 8   ; 4 uses
  %11 = alloca %union.lv_style_value_t, align 8   ; 4 uses
  %12 = alloca %struct.lv_area_t, align 4         ; 10 uses
  %13 = alloca %struct.lv_area_t, align 4         ; 7 uses
  %14 = alloca %struct.lv_snippet_t, align 8      ; 11 uses
  %15 = alloca %struct.lv_draw_label_dsc_t, align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %16 = alloca %struct.lv_area_t, align 4         ; 15 uses
  %i.c = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_spangroup_class, ptr noundef %1) #10
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.cm

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @lv_event_get_code(ptr noundef %1) #10
  %i.e = tail call ptr @lv_event_get_current_target(ptr noundef %1) #10 ; 25 uses
  switch i32 %i.d, label %bb.cm [
    i32 29, label %bb.c
    i32 51, label %bb.bv
    i32 50, label %bb.bw
    i32 53, label %bb.bx
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @lv_event_get_current_target(ptr noundef %1) #10 ; 16 uses
  %i.g = tail call ptr @lv_event_get_layer(ptr noundef %1) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @lv_obj_get_content_coords(ptr noundef %i.f, ptr noundef nonnull %12) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 5 uses
  %i.i = call ptr @lv_ll_get_head(ptr noundef nonnull %i.h) #10
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %draw_main.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 4 uses
  %i.l = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %i.k) #10
  br i1 %i.l, label %bb.e, label %bb.bu

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !70
  %i.m = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 103) #10
  %i.n = ptrtoint ptr %i.m to i64
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.n to i32 ; 4 uses
  %i.o = call i32 @lv_area_get_width(ptr noundef nonnull %12) #10 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25   ; 3 uses
  %i.r = and i32 %i.q, 1610612736
  %i.s = icmp ne i32 %i.r, 536870912
  %i.t = and i32 %i.q, -1610612737
  %.not.i.i.i = icmp eq i32 %i.t, 536870911
  %or.cond.i.i.i = or i1 %i.s, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %convert_indent_pct.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 1) #10
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 1073741823
  br i1 %i.x, label %convert_indent_pct.exit.i.i, label %lv_spangroup_get_mode.exit.i.i.i

lv_spangroup_get_mode.exit.i.i.i:                 ; preds = %bb.f
  %i.y = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 2) #10 ; 0 uses
  %i.z = load i32, ptr %i.p, align 4, !tbaa !25
  %i.aa = and i32 %i.z, -1610612737               ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 268435455
  %i.ac = sub nsw i32 268435455, %i.aa
  %i.ad = select i1 %i.ab, i32 %i.ac, i32 %i.aa
  %i.ae = mul nsw i32 %i.ad, %i.o
  %i.af = sdiv i32 %i.ae, 100
  br label %convert_indent_pct.exit.i.i

convert_indent_pct.exit.i.i:                      ; preds = %lv_spangroup_get_mode.exit.i.i.i, %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.q, %bb.e ], [ %i.af, %lv_spangroup_get_mode.exit.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.ag = sub nsw i32 %i.o, %.0.i.i.i
  %i.ah = call zeroext i8 @lv_obj_get_style_opa_recursive(ptr noundef nonnull %i.f, i32 noundef 0) #10 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !71
  %i.ak = load i32, ptr %12, align 4, !tbaa !26
  %i.al = add nsw i32 %i.ak, %.0.i.i.i
  %i.am = call ptr @lv_ll_get_head(ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  %spec.select334.i.i = select i1 %i.ao, ptr @.str.1, ptr %i.an
  %i.ap = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 101) #10
  %i.aq = ptrtoint ptr %i.ap to i64
  %.sroa.0.0.extract.trunc.i225.i.i = trunc i64 %i.aq to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @lv_memset(ptr noundef nonnull %14, i8 noundef zeroext 0, i64 noundef 40) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %15) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 36 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ax = load ptr, ptr @lv_text_encoded_prev, align 8
  %i.ay = load ptr, ptr @lv_text_encoded_next, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 28
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bi = icmp eq i32 %.sroa.0.0.extract.trunc.i225.i.i, 2
  %i.bj = zext i1 %i.bi to i32
  %i.bk = and i32 %.sroa.0.0.extract.trunc.i225.i.i, -2
  %or.cond11.i.i = icmp eq i32 %i.bk, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 140 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.bo = icmp ult i8 %i.ah, -3
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 92
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 142 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.bt, %convert_indent_pct.exit.i.i
  %.0294.i.i = phi ptr [ %spec.select334.i.i, %convert_indent_pct.exit.i.i ], [ %.1295.ph.i.i, %bb.bt ]
  %.0205.i.i = phi i32 [ %i.ag, %convert_indent_pct.exit.i.i ], [ %i.o, %bb.bt ]
  %.sroa.8.0.i.i = phi i32 [ %i.aj, %convert_indent_pct.exit.i.i ], [ %i.he, %bb.bt ]
  %.sroa.0120.0.i.i = phi i32 [ %i.al, %convert_indent_pct.exit.i.i ], [ %i.mu, %bb.bt ]
  %.0202.i.i = phi ptr [ %i.am, %convert_indent_pct.exit.i.i ], [ %.2204.i.i, %bb.bt ] ; 2 uses
  %.0198.i.i = phi i32 [ 0, %convert_indent_pct.exit.i.i ], [ %.3201.i.i, %bb.bt ]
  %.0196.i.i = phi i32 [ %.0.i.i.i, %convert_indent_pct.exit.i.i ], [ 0, %bb.bt ]
  %.not.i.i = icmp eq ptr %.0202.i.i, null
  br i1 %.not.i.i, label %.thread322.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 912), align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2560
  store i32 0, ptr %i.ce, align 8, !tbaa !73
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %span_text_check.exit226.i.i, %bb.h
  %.1295.ph.i.i = phi ptr [ %spec.select335.i.i, %span_text_check.exit226.i.i ], [ %.0294.i.i, %bb.h ] ; 4 uses
  %.1206.ph.i.i = phi i32 [ %.1206.lcssa.i.i, %span_text_check.exit226.i.i ], [ %.0205.i.i, %bb.h ] ; 2 uses
  %.1203.ph.i.i = phi ptr [ %i.ck, %span_text_check.exit226.i.i ], [ %.0202.i.i, %bb.h ] ; 5 uses
  %.1199.ph.i.i = phi i32 [ 0, %span_text_check.exit226.i.i ], [ %.0198.i.i, %bb.h ] ; 3 uses
  %.0188.ph.i.i = phi i32 [ %.0188.lcssa.i.i, %span_text_check.exit226.i.i ], [ 0, %bb.h ] ; 2 uses
  %.0184.ph.i.i = phi i32 [ %.0184.lcssa.i.i, %span_text_check.exit226.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.cf = zext i32 %.1199.ph.i.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.1295.ph.i.i, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !45
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.outer.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.1203.ph.i.i, i64 8 ; 2 uses
  br label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.af, %.outer.i.i
  %.1206.lcssa.i.i = phi i32 [ %.1206.ph.i.i, %.outer.i.i ], [ %i.fx, %bb.af ]
  %.1199.lcssa.i.i = phi i32 [ %.1199.ph.i.i, %.outer.i.i ], [ %i.fh, %bb.af ]
  %.0188.lcssa.i.i = phi i32 [ %.0188.ph.i.i, %.outer.i.i ], [ %.1189.i.i, %bb.af ] ; 2 uses
  %.0184.lcssa.i.i = phi i32 [ %.0184.ph.i.i, %.outer.i.i ], [ %.1185.i.i, %bb.af ] ; 2 uses
  %i.ck = call ptr @lv_ll_get_next(ptr noundef nonnull %i.h, ptr noundef nonnull %.1203.ph.i.i) #10 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.loopexit342.i.i, label %span_text_check.exit226.i.i

span_text_check.exit226.i.i:                      ; preds = %._crit_edge.i.i
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  %spec.select335.i.i = select i1 %i.cn, ptr @.str.1, ptr %i.cm
  br label %.outer.i.i

bb.i:                                             ; preds = %bb.af, %.lr.ph.i.i
  %i.co = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.ga, %bb.af ] ; 6 uses
  %.0184363.i.i = phi i32 [ %.0184.ph.i.i, %.lr.ph.i.i ], [ %.1185.i.i, %bb.af ] ; 3 uses
  %.0188361.i.i = phi i32 [ %.0188.ph.i.i, %.lr.ph.i.i ], [ %.1189.i.i, %bb.af ] ; 4 uses
  %.1199359.i.i = phi i32 [ %.1199.ph.i.i, %.lr.ph.i.i ], [ %i.fh, %bb.af ] ; 5 uses
  %.1206358.i.i = phi i32 [ %.1206.ph.i.i, %.lr.ph.i.i ], [ %i.fx, %bb.af ] ; 3 uses
  %i.cp = icmp eq i32 %.1199359.i.i, 0
  br i1 %i.cp, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  store ptr %.1203.ph.i.i, ptr %14, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.cq = call i32 @lv_style_get_prop(ptr noundef nonnull %i.cj, i8 noundef zeroext 77, ptr noundef nonnull %11) #10
  %.not.i227.i.i = icmp eq i32 %i.cq, 1
  br i1 %.not.i227.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 77) #10
  br label %lv_span_get_style_text_font.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %11, align 8, !tbaa !45
  br label %lv_span_get_style_text_font.exit.i.i

lv_span_get_style_text_font.exit.i.i:             ; preds = %bb.l, %bb.k
  %.0.i228.i.i = phi ptr [ %i.cr, %bb.k ], [ %i.cs, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  store ptr %.0.i228.i.i, ptr %i.ar, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.ct = call i32 @lv_style_get_prop(ptr noundef nonnull %i.cj, i8 noundef zeroext 102, ptr noundef nonnull %10) #10
  %.not.i229.i.i = icmp eq i32 %i.ct, 1
  br i1 %.not.i229.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %lv_span_get_style_text_font.exit.i.i
  %i.cu = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 102) #10
  %i.cv = ptrtoint ptr %i.cu to i64
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %i.cv to i32
  br label %lv_span_get_style_text_letter_space.exit.i.i

bb.n:                                             ; preds = %lv_span_get_style_text_font.exit.i.i
  %i.cw = load i32, ptr %10, align 8, !tbaa !45
  br label %lv_span_get_style_text_letter_space.exit.i.i

lv_span_get_style_text_letter_space.exit.i.i:     ; preds = %bb.n, %bb.m
  %.0.i230.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i, %bb.m ], [ %i.cw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  store i32 %.0.i230.i.i, ptr %i.as, align 4, !tbaa !51
  %i.cx = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.cy = call i32 @lv_font_get_line_height(ptr noundef %i.cx) #10
  %i.cz = add nsw i32 %i.cy, %.sroa.0.0.extract.trunc.i.i.i
  store i32 %i.cz, ptr %i.at, align 8, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %lv_span_get_style_text_letter_space.exit.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.da = load i8, ptr %i.co, align 1, !tbaa !45
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %lv_text_get_snippet.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load i32, ptr %i.as, align 4, !tbaa !51
  %i.dd = load ptr, ptr %i.ar, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store i32 0, ptr %i.au, align 4
  store i32 %i.dc, ptr %9, align 4, !tbaa !26
  store i32 %.1206358.i.i, ptr %i.av, align 4, !tbaa !53
  store i32 0, ptr %i.aw, align 4, !tbaa !54
  %i.de = call i32 @lv_text_get_next_line(ptr noundef nonnull %i.co, i32 noundef -1, ptr noundef %i.dd, ptr noundef nonnull %i.a, ptr noundef nonnull %9) #10 ; 9 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !45
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.q, label %lv_text_get_snippet.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !8
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !53
  %.not.i232.i.i = icmp sgt i32 %i.dj, %i.dk
  br i1 %.not.i232.i.i, label %lv_text_get_snippet.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not24.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not24.i.i.i, label %lv_text_get_snippet.exit.thread303.i.i, label %bb.s

lv_text_get_snippet.exit.thread303.i.i:           ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %lv_text_get_snippet.exit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.dl = add i32 %i.de, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !45  ; 2 uses
  %switch.selectcmp.case1.i.i.i = icmp eq i8 %i.do, 10
  %switch.selectcmp.case2.i.i.i = icmp eq i8 %i.do, 13
  %switch.selectcmp.i.i.i = or i1 %switch.selectcmp.case1.i.i.i, %switch.selectcmp.case2.i.i.i
  br label %lv_text_get_snippet.exit.i.i

lv_text_get_snippet.exit.i.i:                     ; preds = %bb.s, %bb.q, %bb.p
  %.0.i231.i.i = phi i1 [ %switch.selectcmp.i.i.i, %bb.s ], [ true, %bb.p ], [ true, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.dp = icmp ne i32 %i.de, 0
  %or.cond13.i.i = and i1 %i.dp, %.0.i231.i.i
  br i1 %or.cond13.i.i, label %bb.t, label %lv_text_get_snippet.exit.thread.i.i

bb.t:                                             ; preds = %lv_text_get_snippet.exit.i.i
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 912), align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2560
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !73
  %.not221.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not221.i.i, label %lv_text_get_snippet.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !8
  %i.du = call ptr @lv_ll_get_next(ptr noundef nonnull %i.h, ptr noundef nonnull %.1203.ph.i.i) #10
  %i.dv = icmp eq ptr %i.du, null
  %i.dw = load i32, ptr %i.as, align 4
  %i.dx = select i1 %i.dv, i32 %i.dw, i32 0
  %.0183.i.i = sub nsw i32 %i.dt, %i.dx
  %i.dy = icmp slt i32 %.1206358.i.i, %.0183.i.i
  br i1 %i.dy, label %.thread316.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.de, ptr %i.b, align 4, !tbaa !8
  %i.dz = call i32 %i.ax(ptr noundef nonnull %i.co, ptr noundef nonnull %i.b) #10, !inline_history !67 ; 3 uses
  %i.ea = add i32 %i.de, %.1199359.i.i
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.1295.ph.i.i, i64 %i.eb
  %i.ed = call i32 %i.ay(ptr noundef %i.ec, ptr noundef null) #10, !inline_history !67 ; 4 uses
  switch i32 %i.dz, label %bb.w [
    i32 13, label %.thread313.i.i
    i32 10, label %.thread313.i.i
    i32 0, label %.thread313.i.i
end_hunk_0
begin_hunk_1_@lv_spangroup_event:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.hk = load i8, ptr %i.bd, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0192.i.i = phi i8 [ %i.hk, %bb.ao ], [ 0, %bb.an ]
  %i.hl = load i32, ptr %i.be, align 4, !tbaa !71
  %i.hm = icmp slt i32 %i.he, %i.hl
  br i1 %i.hm, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ap
  %wide.trip.count.i.i = zext i32 %i.gf to i64    ; 2 uses
  %.pre394.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 912), align 8, !tbaa !44
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ay, %.preheader.preheader.i.i
  %i.hn = phi ptr [ %.pre394.i.i, %.preheader.preheader.i.i ], [ %i.iq, %bb.ay ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ay ] ; 3 uses
  %.0179369.i.i = phi i32 [ %.0196.i.i, %.preheader.preheader.i.i ], [ %i.it, %bb.ay ] ; 2 uses
  %.1193368.i.i = phi i8 [ %.0192.i.i, %.preheader.preheader.i.i ], [ %.2194.i.i, %bb.ay ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.hn, i64 %indvars.iv.i.i ; 6 uses
  %i.hp = trunc i8 %.1193368.i.i to i1
  %i.hq = icmp eq i64 %indvars.iv.i.i, %i.gi
  %or.cond.i.i = and i1 %i.hq, %i.hp
  br i1 %or.cond.i.i, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %.preheader.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !55 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !51
  %i.hx = sub nsw i32 %i.o, %.0179369.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 28 ; 3 uses
  %i.hz = icmp eq ptr %i.hs, null
  br i1 %i.hz, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = load i8, ptr %i.hs, align 1, !tbaa !45
  %i.ib = icmp eq i8 %i.ia, 0
  br i1 %i.ib, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i32 0, ptr %i.hy, align 4, !tbaa !8
  br label %lv_text_get_snippet.exit261.i.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i32 0, ptr %i.bf, align 4
  store i32 %i.hw, ptr %7, align 4, !tbaa !26
  store i32 %i.hx, ptr %i.bg, align 4, !tbaa !53
  store i32 4, ptr %i.bh, align 4, !tbaa !54
  %i.ic = call i32 @lv_text_get_next_line(ptr noundef nonnull %i.hs, i32 noundef -1, ptr noundef %i.hu, ptr noundef nonnull %i.hy, ptr noundef nonnull %7) #10 ; 4 uses
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !45
  %i.ig = icmp eq i8 %i.if, 0
  %.pre393.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 912), align 8, !tbaa !44
  br i1 %i.ig, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.ih = load i32, ptr %i.hy, align 4, !tbaa !8
  %i.ii = load i32, ptr %i.bg, align 4, !tbaa !53
  %.not.i256.i.i = icmp sgt i32 %i.ih, %i.ii
  br i1 %.not.i256.i.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not24.i257.i.i = icmp eq i32 %i.ic, 0
  br i1 %.not24.i257.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ij = add i32 %i.ic, -1
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !45  ; 2 uses
  %switch.selectcmp.case1.i258.i.i = icmp eq i8 %i.im, 10
  %switch.selectcmp.case2.i259.i.i = icmp eq i8 %i.im, 13
  %switch.selectcmp.i260.i.i = or i1 %switch.selectcmp.case1.i258.i.i, %switch.selectcmp.case2.i259.i.i
  %i.in = zext i1 %switch.selectcmp.i260.i.i to i8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %.0.i254.i.i = phi i8 [ %i.in, %bb.aw ], [ 0, %bb.av ], [ 1, %bb.au ], [ 1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %lv_text_get_snippet.exit261.i.i

lv_text_get_snippet.exit261.i.i:                  ; preds = %bb.ax, %bb.as
  %i.io = phi ptr [ %i.hn, %bb.as ], [ %.pre393.i.i, %bb.ax ]
  %.0292.i.i = phi i32 [ 0, %bb.as ], [ %i.ic, %bb.ax ]
  %.1.i255.i.i = phi i8 [ 0, %bb.as ], [ %.0.i254.i.i, %bb.ax ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store i32 %.0292.i.i, ptr %i.ip, align 8, !tbaa !56
  br label %bb.ay

bb.ay:                                            ; preds = %lv_text_get_snippet.exit261.i.i, %.preheader.i.i
  %i.iq = phi ptr [ %i.io, %lv_text_get_snippet.exit261.i.i ], [ %i.hn, %.preheader.i.i ] ; 2 uses
  %.2194.i.i = phi i8 [ %.1.i255.i.i, %lv_text_get_snippet.exit261.i.i ], [ %.1193368.i.i, %.preheader.i.i ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ho, i64 28
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !57
  %i.it = add nsw i32 %i.is, %.0179369.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.az, label %.preheader.i.i, !llvm.loop !68

bb.az:                                            ; preds = %bb.ay
  %i.iu = getelementptr inbounds nuw [40 x i8], ptr %i.iq, i64 %i.gi
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 36
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !51
  %i.ix = sub nsw i32 %i.it, %i.iw
  %i.iy = call i32 @llvm.smin.i32(i32 %i.ix, i32 %i.o)
  %i.iz = sub nsw i32 %i.o, %i.iy
  %spec.select.i.i = lshr i32 %i.iz, %i.bj
  %i.ja = select i1 %or.cond11.i.i, i32 %spec.select.i.i, i32 0
  %.sroa.0120.1.i.i = add nsw i32 %i.ja, %.sroa.0120.0.i.i
  %i.jb = trunc i8 %.2194.i.i to i1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bs, %bb.az
  %indvars.iv388.i.i = phi i64 [ 0, %bb.az ], [ %indvars.iv.next389.i.i, %bb.bs ] ; 2 uses
  %.sroa.0120.2371.i.i = phi i32 [ %.sroa.0120.1.i.i, %bb.az ], [ %.sroa.0120.3.i.i, %bb.bs ] ; 4 uses
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 912), align 8, !tbaa !44
  %i.jd = getelementptr inbounds nuw [40 x i8], ptr %i.jc, i64 %indvars.iv388.i.i ; 10 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !55
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 32 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !52
  %i.ji = sub nsw i32 %i.he, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !50
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 28
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !75
  %.neg.i.i = sub i32 %i.jm, %.3187.i.i
  %i.jn = add i32 %.neg.i.i, %i.ji                ; 2 uses
  %i.jo = load ptr, ptr %i.jd, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = call i32 @lv_style_get_prop(ptr noundef nonnull %i.jp, i8 noundef zeroext 92, ptr noundef nonnull %6) #10
  %.not.i262.i.i = icmp eq i32 %i.jq, 1
  br i1 %.not.i262.i.i, label %._crit_edge.i.i.i, label %bb.bb

._crit_edge.i.i.i:                                ; preds = %bb.ba
  %.sroa.03.0.copyload.pre.i.i.i = load i24, ptr %6, align 8
  br label %lv_span_get_style_text_color.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.jr = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 92) #10
  %i.js = ptrtoint ptr %i.jr to i64
  %.sroa.0.0.extract.trunc.i.i263.i.i = trunc i64 %i.js to i24
  br label %lv_span_get_style_text_color.exit.i.i

lv_span_get_style_text_color.exit.i.i:            ; preds = %bb.bb, %._crit_edge.i.i.i
  %.sroa.03.0.copyload.i.i.i = phi i24 [ %.sroa.03.0.copyload.pre.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.0.0.extract.trunc.i.i263.i.i, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  store i24 %.sroa.03.0.copyload.i.i.i, ptr %i.bl, align 8
  %i.jt = load ptr, ptr %i.jd, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = call i32 @lv_style_get_prop(ptr noundef nonnull %i.ju, i8 noundef zeroext 84, ptr noundef nonnull %5) #10
  %.not.i264.i.i = icmp eq i32 %i.jv, 1
  br i1 %.not.i264.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %lv_span_get_style_text_color.exit.i.i
  %i.jw = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 84) #10
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = trunc i64 %i.jx to i8
  br label %lv_span_get_style_text_opa.exit.i.i

bb.bd:                                            ; preds = %lv_span_get_style_text_color.exit.i.i
  %i.jz = load i32, ptr %5, align 8, !tbaa !45
  %i.ka = trunc i32 %i.jz to i8
  br label %lv_span_get_style_text_opa.exit.i.i

lv_span_get_style_text_opa.exit.i.i:              ; preds = %bb.bd, %bb.bc
  %.0.i265.i.i = phi i8 [ %i.jy, %bb.bc ], [ %i.ka, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  store i8 %.0.i265.i.i, ptr %i.bm, align 4, !tbaa !81
  %i.kb = load ptr, ptr %i.jd, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = call i32 @lv_style_get_prop(ptr noundef nonnull %i.kc, i8 noundef zeroext 77, ptr noundef nonnull %4) #10
  %.not.i266.i.i = icmp eq i32 %i.kd, 1
  br i1 %.not.i266.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %lv_span_get_style_text_opa.exit.i.i
  %i.ke = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 77) #10
  br label %lv_span_get_style_text_font.exit268.i.i

bb.bf:                                            ; preds = %lv_span_get_style_text_opa.exit.i.i
  %i.kf = load ptr, ptr %4, align 8, !tbaa !45
  br label %lv_span_get_style_text_font.exit268.i.i

lv_span_get_style_text_font.exit268.i.i:          ; preds = %bb.bf, %bb.be
  %.0.i267.i.i = phi ptr [ %i.ke, %bb.be ], [ %i.kf, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store ptr %.0.i267.i.i, ptr %i.bn, align 8, !tbaa !82
  br i1 %i.bo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %lv_span_get_style_text_font.exit268.i.i
  %i.kg = load i8, ptr %i.bm, align 4, !tbaa !81
  %17 = call i8 @llvm.umulh.i8(i8 %i.kg, i8 %i.ah)
  store i8 %17, ptr %i.bm, align 4, !tbaa !81
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %lv_span_get_style_text_font.exit268.i.i
  %i.kh = load i32, ptr %i.bp, align 4, !tbaa !53
  %i.ki = icmp sgt i32 %.sroa.0120.2371.i.i, %i.kh
  br i1 %i.ki, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !56
  store ptr %i.jf, ptr %i.bq, align 8, !tbaa !83
  store i32 %i.kk, ptr %i.br, align 8, !tbaa !84
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 36 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !51
  store i32 %i.km, ptr %i.bs, align 8, !tbaa !85
  store i32 %.sroa.0.0.extract.trunc.i.i.i, ptr %i.bt, align 4, !tbaa !86
  %i.kn = load ptr, ptr %i.jd, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = call i32 @lv_style_get_prop(ptr noundef nonnull %i.ko, i8 noundef zeroext 110, ptr noundef nonnull %3) #10
  %.not.i269.i.i = icmp eq i32 %i.kp, 1
  br i1 %.not.i269.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kq = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 110) #10
  %i.kr = ptrtoint ptr %i.kq to i64
  %.sroa.0.0.extract.trunc.i.i270.i.i = trunc i64 %i.kr to i32
  br label %lv_span_get_style_text_decor.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ks = load i32, ptr %3, align 8, !tbaa !45
  br label %lv_span_get_style_text_decor.exit.i.i

lv_span_get_style_text_decor.exit.i.i:            ; preds = %bb.bk, %bb.bj
  %.0.i271.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i270.i.i, %bb.bj ], [ %i.ks, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.kt = trunc i32 %.0.i271.i.i to i16
  %i.ku = load i16, ptr %i.bu, align 2
  %i.kv = and i16 %i.kt, 7
  %i.kw = and i16 %i.ku, -8
  %i.kx = or disjoint i16 %i.kw, %i.kv
  store i16 %i.kx, ptr %i.bu, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  store i32 %.sroa.0120.2371.i.i, ptr %16, align 4, !tbaa !26
  store i32 %i.jn, ptr %i.bv, align 4, !tbaa !71
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jd, i64 28 ; 7 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !57
  %i.la = add nsw i32 %i.kz, %.sroa.0120.2371.i.i
  store i32 %i.la, ptr %i.bw, align 4, !tbaa !53
  %i.lb = load i32, ptr %i.jg, align 8, !tbaa !52
  %i.lc = add nsw i32 %i.lb, %i.jn
  store i32 %i.lc, ptr %i.bx, align 4, !tbaa !54
  br i1 %i.jb, label %bb.bl, label %.sink.split.i.i

bb.bl:                                            ; preds = %lv_span_get_style_text_decor.exit.i.i
  %i.ld = load ptr, ptr %i.jj, align 8, !tbaa !50
  %i.le = call zeroext i16 @lv_font_get_glyph_width(ptr noundef %i.ld, i32 noundef 46, i32 noundef 46) #10
  %i.lf = zext i16 %i.le to i32
  %i.lg = mul nuw nsw i32 %i.lf, 3                ; 3 uses
  %i.lh = load i16, ptr %i.bu, align 2
  %i.li = and i16 %i.lh, -249
  %i.lj = or disjoint i16 %i.li, 32
  store i16 %i.lj, ptr %i.bu, align 2
  %i.lk = load i32, ptr %i.by, align 4, !tbaa !53
  %i.ll = load i32, ptr %16, align 4, !tbaa !26
  %i.lm = sub nsw i32 %i.lk, %i.ll                ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, %i.lg
  %i.lo = select i1 %i.ln, i32 %i.lg, i32 0
  %i.lp = sub nsw i32 %i.lm, %i.lo
  %i.lq = load ptr, ptr %i.je, align 8, !tbaa !55 ; 5 uses
  %i.lr = load ptr, ptr %i.jj, align 8, !tbaa !50
  %i.ls = load i32, ptr %i.kl, align 4, !tbaa !51
  %i.lt = icmp eq ptr %i.lq, null
  br i1 %i.lt, label %.critedge339.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lu = load i8, ptr %i.lq, align 1, !tbaa !45
  %i.lv = icmp eq i8 %i.lu, 0
  br i1 %i.lv, label %.critedge339.i.i, label %bb.bn

.critedge339.i.i:                                 ; preds = %bb.bm, %bb.bl
  store i32 0, ptr %i.ky, align 4, !tbaa !8
  %i.lw = load i32, ptr %16, align 4, !tbaa !26
  store i32 %i.lw, ptr %i.bw, align 4, !tbaa !53
  store i32 0, ptr %i.br, align 8, !tbaa !84
  br label %.sink.split.i.i

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 0, ptr %i.bz, align 4
  store i32 %i.ls, ptr %2, align 4, !tbaa !26
  store i32 %i.lp, ptr %i.ca, align 4, !tbaa !53
  store i32 4, ptr %i.cb, align 4, !tbaa !54
  %i.lx = call i32 @lv_text_get_next_line(ptr noundef nonnull %i.lq, i32 noundef -1, ptr noundef %i.lr, ptr noundef nonnull %i.ky, ptr noundef nonnull %2) #10 ; 5 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !45
  %i.mb = icmp eq i8 %i.ma, 0
  br i1 %i.mb, label %bb.bo, label %.critedge341.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.mc = load i32, ptr %i.ky, align 4, !tbaa !8
  %i.md = load i32, ptr %i.ca, align 4, !tbaa !53
  %.not.i274.i.i = icmp sgt i32 %i.mc, %i.md
  br i1 %.not.i274.i.i, label %.critedge341.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not24.i275.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not24.i275.i.i, label %.critedge340.i.i, label %lv_text_get_snippet.exit279.i.i

lv_text_get_snippet.exit279.i.i:                  ; preds = %bb.bp
  %i.me = add i32 %i.lx, -1
  %i.mf = zext i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.mi = load i32, ptr %16, align 4, !tbaa !26
  %i.mj = load i32, ptr %i.ky, align 4, !tbaa !57
  %i.mk = add nsw i32 %i.mj, %i.mi
  store i32 %i.mk, ptr %i.bw, align 4, !tbaa !53
  store i32 %i.lx, ptr %i.br, align 8, !tbaa !84
  call void @lv_draw_label(ptr noundef %i.g, ptr noundef nonnull %15, ptr noundef nonnull %16) #10
  switch i8 %i.mh, label %bb.br [
    i8 13, label %bb.bq
    i8 10, label %bb.bq
  ]

.critedge341.i.i:                                 ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ml = load i32, ptr %16, align 4, !tbaa !26
  %i.mm = load i32, ptr %i.ky, align 4, !tbaa !57
  %i.mn = add nsw i32 %i.mm, %i.ml
  store i32 %i.mn, ptr %i.bw, align 4, !tbaa !53
  store i32 %i.lx, ptr %i.br, align 8, !tbaa !84
  call void @lv_draw_label(ptr noundef %i.g, ptr noundef nonnull %15, ptr noundef nonnull %16) #10
  br label %bb.bq

bb.bq:                                            ; preds = %.critedge341.i.i, %lv_text_get_snippet.exit279.i.i, %lv_text_get_snippet.exit279.i.i
  store ptr @.str.4, ptr %i.bq, align 8, !tbaa !83
  store i32 -1, ptr %i.br, align 8, !tbaa !84
  %i.mo = load i32, ptr %i.bw, align 4, !tbaa !53 ; 2 uses
  store i32 %i.mo, ptr %16, align 4, !tbaa !26
  %i.mp = add nsw i32 %i.mo, %i.lg
  store i32 %i.mp, ptr %i.bw, align 4, !tbaa !53
  br label %.sink.split.i.i

.critedge340.i.i:                                 ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.mq = load i32, ptr %16, align 4, !tbaa !26
  %i.mr = load i32, ptr %i.ky, align 4, !tbaa !57
  %i.ms = add nsw i32 %i.mr, %i.mq
  store i32 %i.ms, ptr %i.bw, align 4, !tbaa !53
  store i32 0, ptr %i.br, align 8, !tbaa !84
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.critedge340.i.i, %bb.bq, %.critedge339.i.i, %lv_span_get_style_text_decor.exit.i.i
  call void @lv_draw_label(ptr noundef %i.g, ptr noundef nonnull %15, ptr noundef nonnull %16) #10
  br label %bb.br

bb.br:                                            ; preds = %.sink.split.i.i, %lv_text_get_snippet.exit279.i.i
  %i.mt = load i32, ptr %i.bw, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bh
  %.sroa.0120.3.i.i = phi i32 [ %i.mt, %bb.br ], [ %.sroa.0120.2371.i.i, %bb.bh ]
  %indvars.iv.next389.i.i = add nuw nsw i64 %indvars.iv388.i.i, 1 ; 2 uses
  %exitcond392.not.i.i = icmp eq i64 %indvars.iv.next389.i.i, %wide.trip.count.i.i
  br i1 %exitcond392.not.i.i, label %.loopexit.i.i, label %bb.ba, !llvm.loop !69

.loopexit.i.i:                                    ; preds = %bb.bs, %bb.ap
  br i1 %i.hj, label %.thread322.i.i, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i.i
  %i.mu = load i32, ptr %12, align 4, !tbaa !26
  %i.mv = load i32, ptr %i.cc, align 4, !tbaa !54
  %i.mw = add nsw i32 %i.mv, 1
  %i.mx = icmp sgt i32 %i.he, %i.mw
  br i1 %i.mx, label %.thread322.i.i, label %bb.g

.thread322.i.i:                                   ; preds = %bb.bt, %.loopexit.i.i, %.loopexit342.i.i, %bb.g
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %bb.bu

bb.bu:                                            ; preds = %.thread322.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  br label %draw_main.exit

draw_main.exit:                                   ; preds = %bb.c, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %bb.cm

bb.bv:                                            ; preds = %bb.b
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.mz = load i8, ptr %i.my, align 8
  %i.na = or i8 %i.mz, 2
  store i8 %i.na, ptr %i.my, align 8
  %i.nb = tail call i32 @lv_obj_invalidate(ptr noundef %i.e) #10 ; 0 uses
end_hunk_1
begin_hunk_2_@lv_spangroup_get_span_by_point:bb.a

bb.f:                                             ; preds = %bb.e
  %i.v = call zeroext i1 @lv_area_is_point_on(ptr noundef nonnull %i.n, ptr noundef nonnull %2, i32 noundef 0) #10
  br i1 %i.v, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.w = call ptr @lv_ll_get_next(ptr noundef nonnull %i.a, ptr noundef nonnull %.02641) #10 ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !104

.loopexit:                                        ; preds = %bb.g, %bb.c, %.thread
  %.02638 = phi ptr [ %.02641, %.thread ], [ null, %bb.c ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.h

bb.h:                                             ; preds = %lv_spangroup_get_indent.exit, %bb.b, %.loopexit
  %.3 = phi ptr [ %.02638, %.loopexit ], [ null, %bb.b ], [ null, %lv_spangroup_get_indent.exit ]
  ret ptr %.3
}

declare zeroext i1 @lv_area_is_point_on(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @lv_spangroup_bind_span_text(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq ptr %0, null
  br i1 %.not34, label %.preheader43, label %bb.c

.preheader43:                                     ; preds = %bb.b, %.preheader43
  br label %.preheader43

bb.c:                                             ; preds = %bb.b
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %.preheader44, label %bb.d

.preheader44:                                     ; preds = %bb.c, %.preheader44
  br label %.preheader44

bb.d:                                             ; preds = %bb.c
  %i.a = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 15                         ; 2 uses
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  switch i32 %i.d, label %bb.i [
    i32 2, label %bb.g
    i32 7, label %.fold.split
    i32 4, label %.fold.split
  ]

bb.f:                                             ; preds = %bb.d
  switch i32 %i.d, label %bb.i [
    i32 7, label %bb.g
    i32 4, label %bb.g
    i32 2, label %bb.g
    i32 3, label %bb.g
  ]

.fold.split:                                      ; preds = %bb.e, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.e, %.fold.split
  %.025 = phi ptr [ %3, %bb.f ], [ null, %.fold.split ], [ @.str.2, %bb.e ], [ %3, %bb.f ], [ %3, %bb.f ], [ %3, %bb.f ]
  %i.e = tail call ptr @lv_zalloc(i64 noundef 24) #10 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.preheader45, label %bb.h

.preheader45:                                     ; preds = %bb.g, %.preheader45
  br label %.preheader45

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %i.e, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.025, ptr %i.h, align 8, !tbaa !65
  %i.i = tail call ptr @lv_subject_add_observer_obj(ptr noundef nonnull %2, ptr noundef nonnull @span_text_observer_cb, ptr noundef nonnull %0, ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h
  %.1 = phi ptr [ %i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.1
}

declare ptr @lv_zalloc(i64 noundef) local_unnamed_addr #2

declare ptr @lv_subject_add_observer_obj(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @span_text_observer_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  tail call void @lv_spangroup_set_span_text(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 15
  switch i32 %i.n, label %bb.f [
    i32 2, label %bb.d
    i32 7, label %bb.e
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45
  tail call void (ptr, ptr, ptr, ...) @lv_spangroup_set_span_text_fmt(ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.d, i32 noundef %i.t)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  tail call void (ptr, ptr, ptr, ...) @lv_spangroup_set_span_text_fmt(ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull %i.d, ptr noundef %i.z)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  ret void
}

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @lv_ll_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_content_height(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_get_content_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @lv_obj_get_style_opa_recursive(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_label_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_style_get_prop(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @lv_text_get_next_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"", !9, i64 0, !5, i64 8, !4, i64 12}
!12 = !{!"", !5, i64 0, !5, i64 4}
!13 = !{!"_lv_span_t", !10, i64 0, !11, i64 8, !5, i64 24, !12, i64 28, !5, i64 36}
!14 = !{!13, !10, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"p1 _ZTS15_lv_obj_class_t", !9, i64 0}
!17 = !{!"p1 _ZTS9_lv_obj_t", !9, i64 0}
!18 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !9, i64 0}
!19 = !{!"p1 _ZTS15_lv_obj_style_t", !9, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!21 = !{!"short", !4, i64 0}
!22 = !{!"_lv_obj_t", !16, i64 0, !17, i64 8, !18, i64 16, !19, i64 24, !9, i64 32, !20, i64 40, !5, i64 56, !21, i64 60, !21, i64 62, !21, i64 62, !21, i64 62, !21, i64 62, !21, i64 62, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 64}
!23 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16}
!24 = !{!"_lv_spangroup_t", !22, i64 0, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !23, i64 88, !5, i64 112, !5, i64 112}
!25 = !{!24, !5, i64 76}
!26 = !{!20, !5, i64 0}
!27 = !{!"_Bool", !4, i64 0}
!28 = !{!"p1 _ZTS13_lv_display_t", !9, i64 0}
!29 = !{!"p1 _ZTS11_lv_group_t", !9, i64 0}
!30 = !{!"p1 _ZTS11_lv_indev_t", !9, i64 0}
!31 = !{!"p1 _ZTS11_lv_event_t", !9, i64 0}
!32 = !{!"", !23, i64 0, !27, i64 24, !4, i64 25, !27, i64 26, !27, i64 27, !5, i64 28, !27, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !9, i64 56, !9, i64 64}
!33 = !{!"p1 _ZTS11_lv_timer_t", !9, i64 0}
!34 = !{!"", !27, i64 0, !27, i64 1, !27, i64 2, !33, i64 8, !23, i64 16}
!35 = !{!"", !5, i64 0, !4, i64 4, !9, i64 8, !9, i64 16}
!36 = !{!"_lv_draw_buf_handlers_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!37 = !{!"p1 _ZTS11_lv_cache_t", !9, i64 0}
!38 = !{!"p1 _ZTS15_lv_draw_unit_t", !9, i64 0}
!39 = !{!"", !38, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !27, i64 24}
!40 = !{!"long", !4, i64 0}
!41 = !{!"", !9, i64 0, !40, i64 8, !40, i64 16, !23, i64 24}
!42 = !{!"p1 _ZTS14_snippet_stack", !9, i64 0}
!43 = !{!"_lv_global_t", !9, i64 0, !27, i64 8, !27, i64 9, !23, i64 16, !28, i64 40, !28, i64 48, !23, i64 56, !27, i64 80, !5, i64 84, !5, i64 88, !10, i64 96, !23, i64 104, !29, i64 128, !23, i64 136, !30, i64 160, !17, i64 168, !5, i64 176, !9, i64 184, !27, i64 192, !5, i64 196, !5, i64 200, !31, i64 208, !5, i64 216, !32, i64 224, !34, i64 296, !35, i64 336, !36, i64 360, !36, i64 416, !36, i64 472, !23, i64 528, !37, i64 552, !37, i64 560, !39, i64 568, !23, i64 600, !4, i64 624, !9, i64 816, !9, i64 824, !9, i64 832, !41, i64 840, !23, i64 888, !42, i64 912, !9, i64 920, !5, i64 928, !4, i64 932}
!44 = !{!43, !42, i64 912}
!45 = !{!4, !4, i64 0}
!46 = !{!"p1 _ZTS10_lv_span_t", !9, i64 0}
!47 = !{!"p1 _ZTS10_lv_font_t", !9, i64 0}
!48 = !{!"", !46, i64 0, !10, i64 8, !47, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!49 = !{!48, !46, i64 0}
!50 = !{!48, !47, i64 16}
!51 = !{!48, !5, i64 36}
!52 = !{!48, !5, i64 32}
!53 = !{!20, !5, i64 8}
!54 = !{!20, !5, i64 12}
!55 = !{!48, !10, i64 8}
!56 = !{!48, !5, i64 24}
!57 = !{!48, !5, i64 28}
!58 = !{!12, !5, i64 4}
!59 = !{!12, !5, i64 0}
!60 = !{!24, !5, i64 72}
!61 = !{!13, !5, i64 36}
!62 = !{!"p1 _ZTS13_lv_subject_t", !9, i64 0}
!63 = !{!"", !62, i64 0, !9, i64 8, !10, i64 16}
!64 = !{!63, !9, i64 8}
!65 = !{!63, !10, i64 16}
!66 = distinct !{!66, !15}
!67 = distinct !{null, null}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8}
!71 = !{!20, !5, i64 4}
!72 = !{!"_snippet_stack", !4, i64 0, !5, i64 2560}
!73 = !{!72, !5, i64 2560}
!74 = !{!"_lv_font_t", !9, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 32, !4, i64 32, !4, i64 33, !4, i64 34, !9, i64 40, !47, i64 48, !9, i64 56}
!75 = !{!74, !5, i64 28}
!76 = !{!"p1 _ZTS11_lv_layer_t", !9, i64 0}
!77 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!78 = !{!"", !17, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !76, i64 24, !21, i64 32, !21, i64 34, !77, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !40, i64 48, !9, i64 56}
!79 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !9, i64 0}
!80 = !{!"", !78, i64 0, !10, i64 64, !12, i64 72, !47, i64 80, !77, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !77, i64 120, !77, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !4, i64 140, !4, i64 141, !5, i64 142, !5, i64 142, !4, i64 143, !4, i64 143, !4, i64 143, !79, i64 144, !77, i64 152, !5, i64 156}
!81 = !{!80, !4, i64 140}
!82 = !{!80, !47, i64 80}
!83 = !{!80, !10, i64 64}
!84 = !{!80, !5, i64 128}
!85 = !{!80, !5, i64 96}
!86 = !{!80, !5, i64 92}
!87 = !{!24, !5, i64 84}
!88 = !{!24, !5, i64 80}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = !{!10, !10, i64 0}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = !{!13, !5, i64 32}
!98 = !{!"_lv_span_coords_t", !20, i64 0, !20, i64 16, !20, i64 32}
!99 = !{!98, !5, i64 0}
!100 = !{!98, !5, i64 12}
!101 = !{!13, !5, i64 28}
!102 = !{!98, !5, i64 16}
!103 = !{!98, !5, i64 28}
!104 = distinct !{!104, !15}
!105 = !{!63, !62, i64 0}
!106 = !{!"_lv_observer_t", !62, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32, !5, i64 32, !5, i64 32}
!107 = !{!106, !9, i64 24}
!108 = !{!106, !9, i64 16}
end_hunk_2
