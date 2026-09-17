Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_refr?download=true
inline.NumInlined: 30
inline.NumDeleted: 24
begin_hunk_0_@lv_obj_redraw:bb.a
  %i.an = call i32 @lv_area_get_height(ptr noundef nonnull %i.k) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = phi i32 [ %i.am, %bb.j ], [ %i.an, %bb.k ]
  %i.ap = ashr i32 %i.ao, 1
  %i.aq = call i32 @llvm.smin.i32(i32 %.sroa.0.0.extract.trunc.i, i32 %i.ap) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !59
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !63
  %reass.sub = sub i32 %i.as, %i.aq
  %i.at = add i32 %reass.sub, 1
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !61
  %i.av = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %i.a) #8
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = call ptr @lv_draw_layer_create(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %8) #8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count = zext i32 %i.p to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !74
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78
  call void @lv_obj_refr(ptr noundef %i.aw, ptr noundef %i.bb)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.o, label %bb.n, !llvm.loop !113

bb.o:                                             ; preds = %bb.n
  %i.bc = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 31, ptr noundef %i.aw) #8 ; 0 uses
  %i.bd = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 32, ptr noundef %i.aw) #8 ; 0 uses
  %i.be = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 33, ptr noundef %i.aw) #8 ; 0 uses
  call void @lv_draw_mask_rect(ptr noundef %i.aw, ptr noundef nonnull %6) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.aw, ptr %i.bf, align 8, !tbaa !83
  call void @lv_draw_layer(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !59
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !61
  %i.bi = add i32 %i.aq, -1
  %i.bj = add i32 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !63
  %i.bl = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %i.a) #8
  br i1 %i.bl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bm = call ptr @lv_draw_layer_create(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %9) #8 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count133 = zext i32 %i.p to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.r
  %indvars.iv129 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next130, %bb.r ] ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv129
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !78
  call void @lv_obj_refr(ptr noundef %i.bm, ptr noundef %i.br)
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count133
  br i1 %exitcond134.not, label %bb.s, label %bb.r, !llvm.loop !114

bb.s:                                             ; preds = %bb.r
  %i.bs = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 31, ptr noundef %i.bm) #8 ; 0 uses
  %i.bt = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 32, ptr noundef %i.bm) #8 ; 0 uses
  %i.bu = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 33, ptr noundef %i.bm) #8 ; 0 uses
  call void @lv_draw_mask_rect(ptr noundef %i.bm, ptr noundef nonnull %6) #8
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.bm, ptr %i.bv, align 8, !tbaa !83
  call void @lv_draw_layer(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %9) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !59
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !61
  %i.by = add nsw i32 %i.bx, %i.aq
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !63
  %i.cb = sub nsw i32 %i.ca, %i.aq
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !63
  %i.cc = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %i.a) #8
  br i1 %i.cc, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !59
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count139 = zext i32 %i.p to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.v
  %indvars.iv135 = phi i64 [ 0, %bb.u ], [ %indvars.iv.next136, %bb.v ] ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv135
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !78
  call void @lv_obj_refr(ptr noundef nonnull %0, ptr noundef %i.ch)
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count139
  br i1 %exitcond140.not, label %bb.w, label %bb.v, !llvm.loop !115

bb.w:                                             ; preds = %bb.v
  %i.ci = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 31, ptr noundef nonnull %0) #8 ; 0 uses
  %i.cj = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull %0) #8 ; 0 uses
  %i.ck = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 33, ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.x, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @lv_obj_get_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_ext_draw_size(ptr noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_has_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_child_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_obj_refr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._lv_cover_check_info_t, align 8 ; 6 uses
  %3 = alloca %struct.lv_area_t, align 4          ; 6 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 7 uses
  %5 = alloca %struct.lv_area_t, align 4          ; 8 uses
  %6 = alloca %struct.lv_area_t, align 4          ; 5 uses
  %7 = alloca %struct.lv_area_t, align 8          ; 13 uses
  %8 = alloca %struct.lv_area_t, align 4          ; 9 uses
  %9 = alloca %struct.lv_area_t, align 8          ; 10 uses
  %10 = alloca %struct._lv_draw_image_dsc_t, align 8 ; 15 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not84 = icmp eq ptr %1, null
  br i1 %.not84, label %.preheader106, label %bb.c

.preheader106:                                    ; preds = %bb.b, %.preheader106
  br label %.preheader106

bb.c:                                             ; preds = %bb.b
  %i.a = tail call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %1, i32 noundef 1) #8
  br i1 %i.a, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 113) #8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i8                     ; 2 uses
  %i.e = icmp ult i8 %i.d, 3
  br i1 %i.e, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !68    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 112) #8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i8                     ; 2 uses
  %i.m = icmp ult i8 %i.l, -3
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %11 = tail call i8 @llvm.umulh.i8(i8 %i.g, i8 %i.l)
  store i8 %11, ptr %i.f, align 1, !tbaa !68
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = load i32, ptr %i.h, align 4
  %i.o = tail call i32 @lv_obj_style_apply_recolor(ptr noundef nonnull %1, i32 noundef 0, i32 %i.n) #8
  store i32 %i.o, ptr %i.h, align 4
  %i.p = tail call i32 @lv_obj_get_layer_type(ptr noundef nonnull %1) #8 ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @lv_obj_redraw(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.r = tail call i32 @lv_obj_get_ext_draw_size(ptr noundef nonnull %1) #8 ; 2 uses
  call void @lv_obj_get_coords(ptr noundef nonnull %1, ptr noundef nonnull %8) #8
  call void @lv_area_increase(ptr noundef nonnull %8, i32 noundef %i.r, i32 noundef %i.r) #8
  switch i32 %i.p, label %.thread [
    i32 2, label %bb.j
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !59
  call void @lv_obj_get_transformed_area(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 0) #8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %3, ptr noundef nonnull %i.s, ptr noundef nonnull %4) #8
  br i1 %i.t, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !59
  call void @lv_obj_get_transformed_area(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #8
  %i.u = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  br i1 %i.u, label %bb.l, label %.critedge28.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !59
  call void @lv_area_increase(ptr noundef nonnull %7, i32 noundef 5, i32 noundef 5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %layer_get_area.exit

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %6, ptr noundef nonnull %i.v, ptr noundef nonnull %8) #8
  br i1 %i.w, label %bb.n, label %.critedge26.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %layer_get_area.exit

.critedge.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.thread

.critedge26.i:                                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.thread

.critedge28.i:                                    ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.thread

.thread:                                          ; preds = %.critedge26.i, %.critedge28.i, %bb.i, %.critedge.i
  store i8 %i.g, ptr %i.f, align 1, !tbaa !68
  store i32 %i.i, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.aa

layer_get_area.exit:                              ; preds = %bb.n, %bb.l
  %i.x = call i32 @lv_area_get_height(ptr noundef nonnull %7) #8
  %i.y = call i32 @lv_area_get_height(ptr noundef nonnull %7) #8
  %i.z = icmp eq i32 %i.p, 1
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %layer_get_area.exit
  %i.aa = call i32 @lv_area_get_width(ptr noundef nonnull %7) #8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 100
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64
  %i.ae = call zeroext i8 @lv_color_format_get_size(i32 noundef %i.ad) #8
  %i.af = sdiv i32 24576, %i.aa                   ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.af to i16
  %.rhs.trunc = zext i8 %i.ae to i16
  %i.ag = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.ag to i32
  %i.ah = ashr i32 %i.af, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %layer_get_area.exit
  %.073 = phi i32 [ %.sext, %bb.o ], [ %i.x, %layer_get_area.exit ]
  %.072 = phi i32 [ %i.ah, %bb.o ], [ %i.y, %layer_get_area.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !61 ; 2 uses
  %i.ao = load <2 x i32>, ptr %7, align 8, !tbaa !51
  store <2 x i32> %i.ao, ptr %9, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63 ; 2 uses
  %i.as = icmp slt i32 %i.an, %i.ar
  br i1 %i.as, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.p
  %i.at = add i32 %.073, -1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = add i32 %.072, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 108
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 121 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph110, %bb.y
  %i.bi = phi i32 [ %i.an, %.lr.ph110 ], [ %i.em, %bb.y ]
  %i.bj = phi i32 [ %i.ar, %.lr.ph110 ], [ %i.en, %bb.y ]
  %i.bk = add i32 %i.at, %i.bi
  %spec.store.select = call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bj)
  store i32 %spec.store.select, ptr %i.ap, align 4
  %i.bl = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext 121) #8 ; 2 uses
  %.not86 = icmp eq ptr %i.bl, null
  br i1 %.not86, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bm = call zeroext i1 @lv_area_is_on(ptr noundef nonnull %9, ptr noundef nonnull %i.au) #8
  br i1 %i.bm, label %alpha_test_area_on_obj.exit, label %.critedge

alpha_test_area_on_obj.exit:                      ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 8, !tbaa !85
  store ptr %9, ptr %i.av, align 8, !tbaa !86
  %i.bn = call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 26, ptr noundef nonnull %2) #8 ; 0 uses
  %i.bo = load i32, ptr %2, align 8, !tbaa !85
  %.not104 = icmp eq i32 %i.bo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.not104, label %bb.s, label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %alpha_test_area_on_obj.exit
  %i.bp = load i32, ptr %i.am, align 4, !tbaa !61
  %i.bq = add i32 %i.aw, %i.bp
  %i.br = load i32, ptr %i.aq, align 4, !tbaa !63
  %spec.store.select89 = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.br)
  store i32 %spec.store.select89, ptr %i.ap, align 4
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %alpha_test_area_on_obj.exit
  %i.bs = phi i32 [ 16, %.critedge ], [ 18, %alpha_test_area_on_obj.exit ]
  %i.bt = call ptr @lv_draw_layer_create(ptr noundef nonnull %0, i32 noundef %i.bs, ptr noundef nonnull %9) #8 ; 3 uses
  call void @lv_obj_redraw(ptr noundef %i.bt, ptr noundef nonnull %1)
  %i.bu = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -102) #8
  %i.bv = ptrtoint ptr %i.bu to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bv to i32 ; 4 uses
  %i.bw = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext -101) #8
  %i.bx = ptrtoint ptr %i.bw to i64
  %.sroa.0.0.extract.trunc.i90 = trunc i64 %i.bx to i32 ; 4 uses
  %i.by = and i32 %.sroa.0.0.extract.trunc.i, 1610612736
  %i.bz = icmp eq i32 %i.by, 536870912
  br i1 %i.bz, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ca = and i32 %.sroa.0.0.extract.trunc.i, -1610612737 ; 4 uses
  %.not87 = icmp eq i32 %i.ca, 536870911
  br i1 %.not87, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp sgt i32 %i.ca, 268435455
  %i.cc = sub nsw i32 268435455, %i.ca
  %i.cd = select i1 %i.cb, i32 %i.cc, i32 %i.ca
  %i.ce = call i32 @lv_area_get_width(ptr noundef nonnull %i.au) #8
  %i.cf = mul nsw i32 %i.ce, %i.cd
  %i.cg = sdiv i32 %i.cf, 100
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
end_hunk_0
begin_hunk_1_@refr_configured_layer:bb.a

bb.h:                                             ; preds = %bb.g
  %i.ae = call ptr @lv_refr_get_top_obj(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ad)
  %.pre36.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre36 = phi ptr [ %.pre36.pre, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %.0 = phi ptr [ %i.ae, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.af = icmp eq ptr %i.aa, null                 ; 3 uses
  %i.ag = icmp eq ptr %.0, null                   ; 3 uses
  %or.cond = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = call ptr @lv_display_get_layer_bottom(ptr noundef %.pre36) #8
  call fastcc void @refr_obj_and_children(ptr noundef nonnull %0, ptr noundef %i.ah)
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %.pre, %bb.j ], [ %.pre36, %bb.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 844
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, 1
  %.not32 = icmp eq i8 %i.al, 0
  br i1 %.not32, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 808
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.025 = phi ptr [ %i.an, %bb.m ], [ %i.aa, %bb.l ]
  call fastcc void @refr_obj_and_children(ptr noundef nonnull %0, ptr noundef %.025)
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 824
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %.not34 = icmp eq ptr %i.aq, null
  br i1 %.not34, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.select = select i1 %i.ag, ptr %i.aq, ptr %.0
  br label %.sink.split

bb.p:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 824
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 2 uses
  %.not33 = icmp eq ptr %i.as, null
  br i1 %.not33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.select35 = select i1 %i.ag, ptr %i.as, ptr %.0
  call fastcc void @refr_obj_and_children(ptr noundef nonnull %0, ptr noundef nonnull %spec.select35)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.af, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 808
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s, %bb.o
  %spec.select.sink = phi ptr [ %spec.select, %bb.o ], [ %i.av, %bb.s ], [ %i.aa, %bb.r ]
  call fastcc void @refr_obj_and_children(ptr noundef nonnull %0, ptr noundef %spec.select.sink)
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.n
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  %i.ax = call ptr @lv_display_get_layer_top(ptr noundef %i.aw) #8
  call fastcc void @refr_obj_and_children(ptr noundef nonnull %0, ptr noundef %i.ax)
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  %i.az = call ptr @lv_display_get_layer_sys(ptr noundef %i.ay) #8
  call fastcc void @refr_obj_and_children(ptr noundef nonnull %0, ptr noundef %i.az)
  ret void
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_layer_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_dispatch_wait_for_request() local_unnamed_addr #2

declare void @lv_draw_dispatch() local_unnamed_addr #2

declare void @lv_draw_unit_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_buf_reshape(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_layer_reset(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_color_format_has_alpha(i32 noundef) local_unnamed_addr #2

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_buf_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_display_get_screen_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @refr_obj_and_children(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 40), align 8, !tbaa !44
  %i.c = tail call ptr @lv_display_get_screen_active(ptr noundef %i.b) #8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.02936 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %i.e = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.02936) #8 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread50, label %.lr.ph43.preheader

.thread50:                                        ; preds = %.thread
  tail call void @lv_obj_refr(ptr noundef %0, ptr noundef nonnull %.02936)
  br label %.loopexit

.lr.ph43.preheader:                               ; preds = %.thread
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = tail call i32 @lv_obj_get_style_recolor_recursive(ptr noundef nonnull %i.e, i32 noundef 0) #8
  store i32 %i.g, ptr %i.f, align 4
  tail call void @lv_obj_refr(ptr noundef %0, ptr noundef nonnull %.02936)
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge
  %.03041 = phi ptr [ %.03140, %._crit_edge ], [ %.02936, %.lr.ph43.preheader ]
  %.03140 = phi ptr [ %i.r, %._crit_edge ], [ %i.e, %.lr.ph43.preheader ] ; 7 uses
  %i.h = tail call i32 @lv_obj_get_child_count(ptr noundef nonnull %.03140) #8 ; 2 uses
  %.not44 = icmp eq i32 %i.h, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph43
  %i.i = getelementptr inbounds nuw i8, ptr %.03140, i64 16
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.02837 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.f ]
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  br i1 %.02837, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %i.m, %.03041
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @lv_obj_refr(ptr noundef %0, ptr noundef %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i1 [ true, %bb.e ], [ %i.n, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.f, %.lr.ph43
  %i.o = tail call i32 @lv_obj_send_event(ptr noundef nonnull %.03140, i32 noundef 31, ptr noundef %0) #8 ; 0 uses
  %i.p = tail call i32 @lv_obj_send_event(ptr noundef nonnull %.03140, i32 noundef 32, ptr noundef %0) #8 ; 0 uses
  %i.q = tail call i32 @lv_obj_send_event(ptr noundef nonnull %.03140, i32 noundef 33, ptr noundef %0) #8 ; 0 uses
  %i.r = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.03140) #8 ; 2 uses
  %.not34 = icmp eq ptr %i.r, null
  br i1 %.not34, label %.loopexit, label %.lr.ph43, !llvm.loop !142

.loopexit:                                        ; preds = %._crit_edge, %.thread50, %bb.b
  ret void
}

declare ptr @lv_display_get_layer_bottom(ptr noundef) local_unnamed_addr #2

declare ptr @lv_display_get_layer_top(ptr noundef) local_unnamed_addr #2

declare ptr @lv_display_get_layer_sys(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_parent(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_style_recolor_recursive(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_get_transformed_area(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !28}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS14_lv_draw_buf_t", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"", !7, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 4, !7, i64 6, !7, i64 8, !7, i64 10}
!15 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !10, i64 0}
!16 = !{!"_lv_draw_buf_t", !14, i64 0, !7, i64 12, !12, i64 16, !10, i64 24, !15, i64 32}
!17 = !{!"p1 _ZTS11_lv_layer_t", !10, i64 0}
!18 = !{!"any p2 pointer", !10, i64 0}
!19 = !{!"p2 _ZTS9_lv_obj_t", !18, i64 0}
!20 = !{!"p1 _ZTS9_lv_obj_t", !10, i64 0}
!21 = !{!"_Bool", !6, i64 0}
!22 = !{!"_lv_array_t", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !21, i64 20}
!23 = !{!"", !22, i64 0, !6, i64 24, !6, i64 24}
!24 = !{!"p1 _ZTS11_lv_theme_t", !10, i64 0}
!25 = !{!"p1 _ZTS11_lv_timer_t", !10, i64 0}
!26 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!27 = !{!"_lv_display_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !10, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 96, !7, i64 97, !7, i64 97, !7, i64 100, !6, i64 104, !6, i64 616, !7, i64 648, !7, i64 652, !13, i64 656, !16, i64 680, !16, i64 720, !17, i64 760, !10, i64 768, !10, i64 776, !19, i64 784, !20, i64 792, !20, i64 800, !20, i64 808, !20, i64 816, !20, i64 824, !20, i64 832, !7, i64 840, !6, i64 844, !6, i64 844, !10, i64 848, !10, i64 856, !23, i64 864, !7, i64 896, !7, i64 896, !24, i64 904, !25, i64 912, !7, i64 920, !26, i64 924, !7, i64 940}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"p1 _ZTS13_lv_display_t", !10, i64 0}
!30 = !{!"p1 _ZTS11_lv_group_t", !10, i64 0}
!31 = !{!"p1 _ZTS11_lv_indev_t", !10, i64 0}
!32 = !{!"p1 _ZTS11_lv_event_t", !10, i64 0}
!33 = !{!"", !13, i64 0, !21, i64 24, !6, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !21, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !10, i64 56, !10, i64 64}
!34 = !{!"", !21, i64 0, !21, i64 1, !21, i64 2, !25, i64 8, !13, i64 16}
!35 = !{!"", !7, i64 0, !6, i64 4, !10, i64 8, !10, i64 16}
!36 = !{!"_lv_draw_buf_handlers_t", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!37 = !{!"p1 _ZTS11_lv_cache_t", !10, i64 0}
!38 = !{!"p1 _ZTS15_lv_draw_unit_t", !10, i64 0}
!39 = !{!"", !38, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !21, i64 24}
!40 = !{!"long", !6, i64 0}
!41 = !{!"", !10, i64 0, !40, i64 8, !40, i64 16, !13, i64 24}
!42 = !{!"p1 _ZTS14_snippet_stack", !10, i64 0}
!43 = !{!"_lv_global_t", !10, i64 0, !21, i64 8, !21, i64 9, !13, i64 16, !29, i64 40, !29, i64 48, !13, i64 56, !21, i64 80, !7, i64 84, !7, i64 88, !12, i64 96, !13, i64 104, !30, i64 128, !13, i64 136, !31, i64 160, !20, i64 168, !7, i64 176, !10, i64 184, !21, i64 192, !7, i64 196, !7, i64 200, !32, i64 208, !7, i64 216, !33, i64 224, !34, i64 296, !35, i64 336, !36, i64 360, !36, i64 416, !36, i64 472, !13, i64 528, !37, i64 552, !37, i64 560, !39, i64 568, !13, i64 600, !6, i64 624, !10, i64 816, !10, i64 824, !10, i64 832, !41, i64 840, !13, i64 888, !42, i64 912, !10, i64 920, !7, i64 928, !6, i64 932}
!44 = !{!43, !29, i64 40}
!45 = !{!27, !11, i64 56}
!46 = !{!16, !12, i64 16}
!47 = !{!16, !7, i64 12}
!48 = !{!27, !20, i64 808}
!49 = !{!27, !20, i64 824}
!50 = !{!27, !7, i64 648}
!51 = !{!7, !7, i64 0}
!52 = !{!27, !7, i64 92}
!53 = !{!27, !10, i64 72}
!54 = !{!27, !7, i64 80}
!55 = !{!27, !7, i64 84}
!56 = !{!27, !11, i64 32}
!57 = !{!27, !11, i64 40}
!58 = !{!27, !11, i64 48}
!59 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51}
!60 = !{!26, !7, i64 0}
!61 = !{!26, !7, i64 4}
!62 = !{!26, !7, i64 8}
!63 = !{!26, !7, i64 12}
!64 = !{!27, !7, i64 100}
!65 = !{!"p1 _ZTS15_lv_draw_task_t", !10, i64 0}
!66 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!67 = !{!"_lv_layer_t", !11, i64 0, !65, i64 8, !17, i64 16, !17, i64 24, !10, i64 32, !26, i64 40, !26, i64 56, !26, i64 72, !7, i64 88, !66, i64 92, !7, i64 96, !21, i64 100, !6, i64 101}
!68 = !{!67, !6, i64 101}
!69 = !{!"p1 _ZTS15_lv_obj_class_t", !10, i64 0}
!70 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !10, i64 0}
!71 = !{!"p1 _ZTS15_lv_obj_style_t", !10, i64 0}
!72 = !{!"short", !6, i64 0}
!73 = !{!"_lv_obj_t", !69, i64 0, !20, i64 8, !70, i64 16, !71, i64 24, !10, i64 32, !26, i64 40, !7, i64 56, !72, i64 60, !72, i64 62, !72, i64 62, !72, i64 62, !72, i64 62, !72, i64 62, !72, i64 63, !72, i64 63, !72, i64 63, !72, i64 63, !72, i64 63, !72, i64 63, !72, i64 64}
!74 = !{!73, !70, i64 16}
!75 = !{!"", !7, i64 0, !7, i64 4}
!76 = !{!"_lv_obj_spec_attr_t", !19, i64 0, !30, i64 8, !23, i64 16, !75, i64 48, !7, i64 56, !7, i64 60, !72, i64 64, !72, i64 66, !72, i64 66, !72, i64 66, !72, i64 66, !72, i64 67, !72, i64 67}
!77 = !{!76, !19, i64 0}
!78 = !{!20, !20, i64 0}
!79 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!80 = !{!"", !20, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !17, i64 24, !72, i64 32, !72, i64 34, !79, i64 36, !6, i64 39, !7, i64 40, !7, i64 42, !40, i64 48, !10, i64 56}
!81 = !{!"p1 _ZTS20_lv_draw_image_sup_t", !10, i64 0}
!82 = !{!"_lv_draw_image_dsc_t", !80, i64 0, !10, i64 64, !14, i64 72, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !75, i64 108, !79, i64 116, !6, i64 119, !6, i64 120, !7, i64 121, !72, i64 121, !72, i64 121, !10, i64 128, !81, i64 136, !26, i64 144, !10, i64 160}
!83 = !{!82, !10, i64 64}
!84 = !{!"_lv_cover_check_info_t", !7, i64 0, !10, i64 8}
!85 = !{!84, !7, i64 0}
!86 = !{!84, !10, i64 8}
!87 = !{!27, !17, i64 760}
!88 = !{!67, !11, i64 0}
!89 = !{!67, !7, i64 40}
!90 = !{!67, !7, i64 44}
!91 = !{!67, !65, i64 8}
!92 = distinct !{!92, !28}
!93 = !{!27, !25, i64 912}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
!96 = distinct !{null, null}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !28}
!99 = distinct !{!99, !28}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28}
!102 = distinct !{!102, !28}
!103 = distinct !{!103, !28}
!104 = distinct !{!104, !28}
!105 = distinct !{!105, !28}
!106 = !{!"_lv_timer_t", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!107 = !{!106, !10, i64 16}
!108 = !{!27, !20, i64 816}
!109 = !{!27, !20, i64 800}
!110 = !{!27, !20, i64 792}
!111 = !{!6, !6, i64 0}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !28}
!115 = distinct !{!115, !28}
!116 = !{!"_lv_draw_mask_rect_dsc_t", !80, i64 0, !26, i64 64, !7, i64 80, !7, i64 84}
!117 = !{!116, !7, i64 80}
!118 = distinct !{!118, !28}
!119 = !{!82, !6, i64 120}
!120 = !{!82, !7, i64 88}
!121 = !{!82, !7, i64 92}
!122 = !{!82, !7, i64 96}
!123 = !{!82, !7, i64 100}
!124 = !{!82, !7, i64 104}
!125 = !{!82, !10, i64 160}
!126 = distinct !{!126, !28}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, !28}
!129 = distinct !{!129, !28}
!130 = distinct !{!130, !28}
!131 = !{!67, !7, i64 88}
!132 = !{!67, !21, i64 100}
!133 = !{!67, !7, i64 96}
!134 = !{!67, !7, i64 48}
!135 = !{!67, !7, i64 52}
!136 = !{!67, !17, i64 24}
!137 = !{!27, !10, i64 776}
!138 = distinct !{!138, !28}
!139 = distinct !{null}
!140 = !{!27, !10, i64 64}
!141 = distinct !{!141, !28}
!142 = distinct !{!142, !28}
end_hunk_1
