Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_imagebutton?download=true
inline.NumInlined: 20
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct._lv_draw_image_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_image_header_t, i32, i32, i32, i32, i32, i32, %struct.lv_point_t, %struct.lv_color_t, i8, i8, i8, ptr, ptr, %struct.lv_area_t, ptr }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_image_header_t = type <{ i64, i32 }>
%struct.lv_point_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [15 x i8] c"lv_imagebutton\00", align 1
@lv_imagebutton_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_imagebutton_constructor, ptr null, ptr @lv_imagebutton_event, ptr null, ptr @.str, i32 1073741823, i32 1073741823, i8 -128, i8 31, i8 0, [5 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define internal void @lv_imagebutton_constructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @lv_memset(ptr noundef nonnull %i.a, i8 noundef zeroext 0, i64 noundef 144) #5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @lv_memset(ptr noundef nonnull %i.b, i8 noundef zeroext 0, i64 noundef 144) #5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @lv_memset(ptr noundef nonnull %i.c, i8 noundef zeroext 0, i64 noundef 144) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_imagebutton_event(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 16         ; 9 uses
  %3 = alloca %struct._lv_draw_image_dsc_t, align 8 ; 12 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 18 uses
  %5 = alloca %struct.lv_area_t, align 4          ; 4 uses
  %i.a = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_imagebutton_class, ptr noundef %1) #5
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lv_event_get_code(ptr noundef %1) #5
  %i.c = tail call ptr @lv_event_get_current_target(ptr noundef %1) #5 ; 9 uses
  switch i32 %i.b, label %bb.av [
    i32 11, label %bb.c
    i32 3, label %bb.c
    i32 1, label %bb.c
    i32 29, label %bb.d
    i32 26, label %bb.aa
    i32 53, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  tail call fastcc void @refr_image(ptr noundef %i.c)
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @lv_event_get_current_target(ptr noundef %1) #5 ; 12 uses
  %i.e = tail call ptr @lv_event_get_layer(ptr noundef %1) #5 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.e

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  br label %.preheader.i.i

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @lv_obj_get_state(ptr noundef nonnull %i.d) #5 ; 4 uses
  %i.g = and i32 %i.f, 512
  %.not8.i.i = icmp eq i32 %i.g, 0
  %i.h = and i32 %i.f, 4
  %.not9.i.i = icmp eq i32 %i.h, 0                ; 2 uses
  br i1 %.not8.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %..i.i = select i1 %.not9.i.i, i32 2, i32 5
  br label %get_state.exit.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = and i32 %i.f, 128
  %.not11.i.i = icmp eq i32 %i.i, 0
  %.13.i.i = select i1 %.not11.i.i, i32 3, i32 4
  br label %get_state.exit.i

bb.i:                                             ; preds = %bb.g
  %i.j = lshr i32 %i.f, 7
  %.lobit.i.i = and i32 %i.j, 1
  br label %get_state.exit.i

get_state.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i = phi i32 [ %..i.i, %bb.f ], [ %.lobit.i.i, %bb.i ], [ %.13.i.i, %bb.h ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 7 uses
  %i.l = zext nneg i32 %.0.i.i to i64             ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.s

bb.j:                                             ; preds = %get_state.exit.i
  switch i32 %.0.i.i, label %bb.s [
    i32 1, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 2, label %bb.p
    i32 5, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !11
  %.not19.i.i = icmp eq ptr %i.p, null
  br i1 %.not19.i.i, label %bb.s, label %suggest_state.exit.i

bb.l:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !11
  %.not18.i.i = icmp eq ptr %i.q, null
  br i1 %.not18.i.i, label %bb.s, label %suggest_state.exit.i

bb.m:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %.not15.i.i = icmp eq ptr %i.s, null
  br i1 %.not15.i.i, label %bb.n, label %suggest_state.exit.i

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %.not16.i.i = icmp eq ptr %i.u, null
  br i1 %.not16.i.i, label %bb.o, label %suggest_state.exit.i

bb.o:                                             ; preds = %bb.n
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !11
  %.not17.i.i = icmp eq ptr %i.v, null
  br i1 %.not17.i.i, label %bb.s, label %suggest_state.exit.i

bb.p:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !11
  %.not14.i.i = icmp eq ptr %i.w, null
  br i1 %.not14.i.i, label %bb.s, label %suggest_state.exit.i

bb.q:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %.not.i42.i = icmp eq ptr %i.y, null
  br i1 %.not.i42.i, label %bb.r, label %suggest_state.exit.i

bb.r:                                             ; preds = %bb.q
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !11
  %.not13.i.i = icmp eq ptr %i.z, null
  br i1 %.not13.i.i, label %bb.s, label %suggest_state.exit.i

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %get_state.exit.i
  br label %suggest_state.exit.i

suggest_state.exit.i:                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.0.i41.i = phi i64 [ %i.l, %bb.s ], [ 3, %bb.q ], [ 0, %bb.k ], [ 0, %bb.l ], [ 3, %bb.m ], [ 1, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.r ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.0.i41.i ; 3 uses
  %i.ac = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.d, i32 noundef 0, i8 noundef zeroext 4) #5
  %i.ad = ptrtoint ptr %i.ac to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ad to i32
  %i.ae = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.d, i32 noundef 0, i8 noundef zeroext 5) #5
  %i.af = ptrtoint ptr %i.ae to i64
  %.sroa.0.0.extract.trunc.i43.i = trunc i64 %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load <4 x i32>, ptr %i.ag, align 4, !tbaa !12
  store <4 x i32> %i.ak, ptr %2, align 16, !tbaa !12
  call void @lv_area_increase(ptr noundef nonnull %2, i32 noundef %.sroa.0.0.extract.trunc.i.i, i32 noundef %.sroa.0.0.extract.trunc.i43.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @lv_draw_image_dsc_init(ptr noundef nonnull %3) #5
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.e, ptr %i.al, align 8, !tbaa !23
  call void @lv_obj_init_draw_image_dsc(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %suggest_state.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %6 = getelementptr i8, ptr %i.ab, i64 12
  %7 = load i32, ptr %6, align 4
  %i.ao = and i32 %7, 65535                       ; 2 uses
  %i.ap = load i32, ptr %2, align 16, !tbaa !24   ; 2 uses
  store i32 %i.ap, ptr %4, align 4, !tbaa !24
  %i.aq = load i32, ptr %i.ah, align 4, !tbaa !25 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !25
  %i.as = add i32 %i.ap, -1
  %i.at = add i32 %i.as, %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !26
  %8 = load i64, ptr %i.an, align 8
  %i.av = lshr i64 %8, 48
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = add i32 %i.aq, -1
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !28
  call void @lv_draw_image(ptr noundef %i.e, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %suggest_state.exit.i
  %.038.i = phi i32 [ %i.ao, %bb.t ], [ 0, %suggest_state.exit.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.0.i41.i ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %.not39.i = icmp eq ptr %i.bd, null
  br i1 %.not39.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %9 = getelementptr i8, ptr %i.bc, i64 12
  %10 = load i32, ptr %9, align 4
  %i.bf = and i32 %10, 65535                      ; 2 uses
  %i.bg = load i32, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %reass.sub = sub i32 %i.bg, %i.bf
  %11 = add i32 %reass.sub, 1
  store i32 %11, ptr %4, align 4, !tbaa !24
  %i.bh = load i32, ptr %i.ah, align 4, !tbaa !25 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !26
  %12 = load i64, ptr %i.be, align 8
  %i.bk = lshr i64 %12, 48
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = add i32 %i.bh, -1
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.bd, ptr %i.bp, align 8, !tbaa !28
  call void @lv_draw_image(ptr noundef %i.e, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i = phi i32 [ %i.bf, %bb.v ], [ 0, %bb.u ]
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.0.i41.i ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !11
  %.not40.i = icmp eq ptr %i.br, null
  br i1 %.not40.i, label %draw_main.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %2, align 16, !tbaa !24
  %i.bt = add nsw i32 %i.bs, %.038.i
  store i32 %i.bt, ptr %4, align 4, !tbaa !24
  %i.bu = load i32, ptr %i.ai, align 8, !tbaa !26
  %i.bv = sub nsw i32 %i.bu, %.0.i
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !26
  %i.bx = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !25
  %i.bz = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 4 uses
  %i.cc = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %i.cb) #5
  br i1 %i.cc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.cb, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !29
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 121 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = or i8 %i.cg, 32
  store i8 %i.ch, ptr %i.cf, align 1
  call void @lv_draw_image(ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.cb, align 8, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %draw_main.exit

draw_main.exit:                                   ; preds = %bb.w, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.av

bb.aa:                                            ; preds = %bb.b
  %i.ci = tail call ptr @lv_event_get_param(ptr noundef %1) #5 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !31
  %.not37 = icmp eq i32 %i.cj, 2
  br i1 %.not37, label %bb.av, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.ci, align 8, !tbaa !31
  br label %bb.av

bb.ac:                                            ; preds = %bb.b
  %i.ck = tail call ptr @lv_event_get_self_size_info(ptr noundef %1) #5 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %.preheader.i, label %bb.ad

.preheader.i:                                     ; preds = %bb.ac, %.preheader.i
  br label %.preheader.i

bb.ad:                                            ; preds = %bb.ac
  %i.cl = tail call i32 @lv_obj_get_state(ptr noundef nonnull %i.c) #5 ; 4 uses
  %i.cm = and i32 %i.cl, 512
  %.not8.i = icmp eq i32 %i.cm, 0
  %i.cn = and i32 %i.cl, 4
  %.not9.i = icmp eq i32 %i.cn, 0                 ; 2 uses
  br i1 %.not8.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %..i = select i1 %.not9.i, i32 2, i32 5
  br label %get_state.exit

bb.af:                                            ; preds = %bb.ad
  br i1 %.not9.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = and i32 %i.cl, 128
  %.not11.i = icmp eq i32 %i.co, 0
  %.13.i = select i1 %.not11.i, i32 3, i32 4
  br label %get_state.exit

bb.ah:                                            ; preds = %bb.af
  %i.cp = lshr i32 %i.cl, 7
  %.lobit.i = and i32 %i.cp, 1
  br label %get_state.exit

get_state.exit:                                   ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i39 = phi i32 [ %..i, %bb.ae ], [ %.lobit.i, %bb.ah ], [ %.13.i, %bb.ag ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 7 uses
  %i.cr = zext nneg i32 %.0.i39 to i64            ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !11
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %get_state.exit
  switch i32 %.0.i39, label %bb.ar [
    i32 1, label %bb.aj
    i32 3, label %bb.ak
    i32 4, label %bb.al
    i32 2, label %bb.ao
    i32 5, label %bb.ap
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !11
  %.not19.i = icmp eq ptr %i.cv, null
  br i1 %.not19.i, label %bb.ar, label %suggest_state.exit

bb.ak:                                            ; preds = %bb.ai
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !11
  %.not18.i = icmp eq ptr %i.cw, null
  br i1 %.not18.i, label %bb.ar, label %suggest_state.exit

bb.al:                                            ; preds = %bb.ai
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !11
  %.not15.i = icmp eq ptr %i.cy, null
  br i1 %.not15.i, label %bb.am, label %suggest_state.exit

bb.am:                                            ; preds = %bb.al
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !11
  %.not16.i = icmp eq ptr %i.da, null
  br i1 %.not16.i, label %bb.an, label %suggest_state.exit

bb.an:                                            ; preds = %bb.am
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !11
  %.not17.i = icmp eq ptr %i.db, null
  br i1 %.not17.i, label %bb.ar, label %suggest_state.exit

bb.ao:                                            ; preds = %bb.ai
  %i.dc = load ptr, ptr %i.cq, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.dc, null
  br i1 %.not14.i, label %bb.ar, label %suggest_state.exit

bb.ap:                                            ; preds = %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !11
  %.not.i41 = icmp eq ptr %i.de, null
  br i1 %.not.i41, label %bb.aq, label %suggest_state.exit

bb.aq:                                            ; preds = %bb.ap
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !11
  %.not13.i = icmp eq ptr %i.df, null
  br i1 %.not13.i, label %bb.ar, label %suggest_state.exit

bb.ar:                                            ; preds = %bb.aq, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ai, %get_state.exit
  br label %suggest_state.exit

suggest_state.exit:                               ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.0.i40 = phi i64 [ %i.cr, %bb.ar ], [ 3, %bb.ap ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 3, %bb.al ], [ 1, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.aq ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.0.i40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !11
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.as, label %bb.av

bb.as:                                            ; preds = %suggest_state.exit
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.0.i40 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !11
  %.not36 = icmp eq ptr %i.dl, null
  br i1 %.not36, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.0.i40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !11
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dq = load i32, ptr %i.ck, align 4, !tbaa !32
  %i.dr = getelementptr i8, ptr %i.dk, i64 12
  %13 = load i32, ptr %i.dr, align 4
  %i.ds = and i32 %13, 65535
  %. = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 %i.ds)
  store i32 %., ptr %i.ck, align 4, !tbaa !32
  br label %bb.av

bb.av:                                            ; preds = %bb.c, %draw_main.exit, %bb.ab, %bb.aa, %bb.b, %bb.au, %bb.at, %bb.as, %suggest_state.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_imagebutton_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_imagebutton_class, ptr noundef %0) #5 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #5
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_imagebutton_set_src(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @lv_memset(ptr noundef nonnull %i.c, i8 noundef zeroext 0, i64 noundef 24) #5
  br label %update_src_info.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = tail call i32 @lv_image_decoder_get_info(ptr noundef nonnull %2, ptr noundef nonnull %i.d) #5
  %.not6.i = icmp eq i32 %i.e, 1
  br i1 %.not6.i, label %bb.e, label %update_src_info.exit

bb.e:                                             ; preds = %bb.d
  store ptr %2, ptr %i.c, align 8, !tbaa !11
  br label %update_src_info.exit

update_src_info.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b ; 3 uses
  %.not.i17 = icmp eq ptr %3, null
  br i1 %.not.i17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %update_src_info.exit
  tail call void @lv_memset(ptr noundef nonnull %i.g, i8 noundef zeroext 0, i64 noundef 24) #5
  br label %update_src_info.exit19

bb.g:                                             ; preds = %update_src_info.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = tail call i32 @lv_image_decoder_get_info(ptr noundef nonnull %3, ptr noundef nonnull %i.h) #5
  %.not6.i18 = icmp eq i32 %i.i, 1
  br i1 %.not6.i18, label %bb.h, label %update_src_info.exit19

bb.h:                                             ; preds = %bb.g
  store ptr %3, ptr %i.g, align 8, !tbaa !11
  br label %update_src_info.exit19

update_src_info.exit19:                           ; preds = %bb.f, %bb.g, %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.b ; 3 uses
  %.not.i20 = icmp eq ptr %4, null
  br i1 %.not.i20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %update_src_info.exit19
  tail call void @lv_memset(ptr noundef nonnull %i.k, i8 noundef zeroext 0, i64 noundef 24) #5
  br label %update_src_info.exit22

bb.j:                                             ; preds = %update_src_info.exit19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = tail call i32 @lv_image_decoder_get_info(ptr noundef nonnull %4, ptr noundef nonnull %i.l) #5
  %.not6.i21 = icmp eq i32 %i.m, 1
  br i1 %.not6.i21, label %bb.k, label %update_src_info.exit22

bb.k:                                             ; preds = %bb.j
  store ptr %4, ptr %i.k, align 8, !tbaa !11
  br label %update_src_info.exit22

update_src_info.exit22:                           ; preds = %bb.i, %bb.j, %bb.k
  tail call fastcc void @refr_image(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @refr_image(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @lv_obj_get_state(ptr noundef nonnull %0) #5 ; 4 uses
  %i.b = and i32 %i.a, 512
  %.not8.i = icmp eq i32 %i.b, 0
  %i.c = and i32 %i.a, 4
  %.not9.i = icmp eq i32 %i.c, 0                  ; 2 uses
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %..i = select i1 %.not9.i, i32 2, i32 5
  br label %get_state.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = and i32 %i.a, 128
  %.not11.i = icmp eq i32 %i.d, 0
  %.13.i = select i1 %.not11.i, i32 3, i32 4
  br label %get_state.exit

bb.f:                                             ; preds = %bb.d
  %i.e = lshr i32 %i.a, 7
  %.lobit.i = and i32 %i.e, 1
  br label %get_state.exit

get_state.exit:                                   ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %..i, %bb.c ], [ %.lobit.i, %bb.f ], [ %.13.i, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.g = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.p

bb.g:                                             ; preds = %get_state.exit
  switch i32 %.0.i, label %bb.p [
    i32 1, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 2, label %bb.m
    i32 5, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !11
  %.not19.i = icmp eq ptr %i.k, null
  br i1 %.not19.i, label %bb.p, label %suggest_state.exit

bb.i:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !11
  %.not18.i = icmp eq ptr %i.l, null
  br i1 %.not18.i, label %bb.p, label %suggest_state.exit

bb.j:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %.not15.i = icmp eq ptr %i.n, null
  br i1 %.not15.i, label %bb.k, label %suggest_state.exit

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11
  %.not16.i = icmp eq ptr %i.p, null
  br i1 %.not16.i, label %bb.l, label %suggest_state.exit

bb.l:                                             ; preds = %bb.k
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !11
  %.not17.i = icmp eq ptr %i.q, null
  br i1 %.not17.i, label %bb.p, label %suggest_state.exit

bb.m:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.r, null
  br i1 %.not14.i, label %bb.p, label %suggest_state.exit

bb.n:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %.not.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i11, label %bb.o, label %suggest_state.exit

bb.o:                                             ; preds = %bb.n
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !11
  %.not13.i = icmp eq ptr %i.u, null
  br i1 %.not13.i, label %bb.p, label %suggest_state.exit

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %get_state.exit
  br label %suggest_state.exit

end_hunk_0
