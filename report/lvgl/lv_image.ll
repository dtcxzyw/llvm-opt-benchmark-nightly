Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_image?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0_@lv_image_set_src:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !23
  %.not71 = icmp eq i32 %i.cq, 256
  br i1 %.not71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread
  call void @lv_obj_refresh_ext_draw_size(ptr noundef nonnull %0) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.k, %bb.x, %reset_image_attributes.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %reset_image_attributes.exit
  ret void
}

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

declare i32 @lv_image_src_get_type(ptr noundef) local_unnamed_addr #2

declare i32 @lv_image_decoder_get_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare ptr @lv_strdup(ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size_attributes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_align(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i16, ptr %i.a, align 4
  %i.c = lshr i16 %i.b, 8
  %i.d = and i16 %i.c, 15
  switch i16 %i.d, label %bb.l [
    i16 11, label %bb.b
    i16 13, label %bb.e
    i16 14, label %bb.h
    i16 12, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %.not55 = icmp eq i32 %i.h, 0
  br i1 %.not55, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.i = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.j = shl nsw i32 %i.i, 8
  %i.k = load i32, ptr %i.e, align 8, !tbaa !19
  %i.l = sdiv i32 %i.j, %i.k
  %i.m = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5
  %i.n = shl nsw i32 %i.m, 8
  %i.o = load i32, ptr %i.g, align 4, !tbaa !20
  %i.p = sdiv i32 %i.n, %i.o
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.p)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19
  %.not52 = icmp eq i32 %i.r, 0
  br i1 %.not52, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %.not53 = icmp eq i32 %i.t, 0
  br i1 %.not53, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.u = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.v = shl nsw i32 %i.u, 8
  %i.w = load i32, ptr %i.q, align 8, !tbaa !19
  %i.x = sdiv i32 %i.v, %i.w
  %i.y = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5
  %i.z = shl nsw i32 %i.y, 8
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !20
  %i.ab = sdiv i32 %i.z, %i.aa
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.ab) ; 2 uses
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef %i.ac)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  %.not51 = icmp eq i32 %i.ag, 0
  br i1 %.not51, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.ah = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.ai = shl nsw i32 %i.ah, 8
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !19
  %i.ak = sdiv i32 %i.ai, %i.aj
  %i.al = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5
  %i.am = shl nsw i32 %i.al, 8
  %i.an = load i32, ptr %i.af, align 4, !tbaa !20
  %i.ao = sdiv i32 %i.am, %i.an
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ao) ; 2 uses
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef %i.ap, i32 noundef %i.ap)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef 256, i32 noundef 256)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.k, %bb.h, %bb.i, %bb.j, %bb.b, %bb.c, %bb.d
  ret void
}

declare void @lv_obj_refresh_ext_draw_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_image_set_offset_x(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %1, ptr %i.a, align 8, !tbaa !55
  %i.b = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_image_set_offset_y(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %1, ptr %i.a, align 4, !tbaa !56
  %i.b = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_image_set_rotation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 16         ; 10 uses
  %3 = alloca %struct.lv_point_t, align 4         ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 3840
  %i.d = icmp samesign ugt i16 %i.c, 2560
  br i1 %i.d, label %.loopexit, label %.preheader40.preheader

.preheader40.preheader:                           ; preds = %bb.b
  %i.e = tail call i32 @llvm.smax.i32(i32 %1, i32 3599) ; 2 uses
  %i.f = urem i32 %i.e, 3600
  %i.g = sub nuw nsw i32 %i.e, %i.f               ; 3 uses
  %i.h = sub i32 %1, %i.g
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %i.i = add nuw i32 %smax, %i.g                  ; 2 uses
  %4 = icmp ne i32 %i.i, %1
  %umin = zext i1 %4 to i32                       ; 2 uses
  %i.j = add i32 %1, %umin
  %i.k = sub i32 %i.i, %i.j
  %5 = udiv i32 %i.k, 3600
  %6 = add nuw nsw i32 %5, %umin
  %7 = mul i32 %6, 3600
  %i.l = add i32 %1, %7
  %i.m = sub i32 %i.l, %i.g
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader40.preheader, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %i.m, %.preheader40.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = icmp eq i32 %.2, %i.o
  br i1 %i.p, label %bb.c, label %lv_image_get_pivot.exit

lv_image_get_pivot.exit:                          ; preds = %.loopexit
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.q = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5 ; 2 uses
  %i.r = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !19
  %i.w = tail call i32 @lv_pct_to_px(i32 noundef %i.t, i32 noundef %i.v) #5
  store i32 %i.w, ptr %3, align 4, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load i32, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !20
  %i.ab = tail call i32 @lv_pct_to_px(i32 noundef %i.y, i32 noundef %i.aa) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !27
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = trunc i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !23
  %i.aj = trunc i32 %i.ai to i16
  call void @lv_image_buf_get_transformed_area(ptr noundef nonnull %2, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.ad, i16 noundef zeroext %i.ag, i16 noundef zeroext %i.aj, ptr noundef nonnull %3) #5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load <2 x i32>, ptr %i.ak, align 8, !tbaa !28
  %i.am = shufflevector <2 x i32> %i.al, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.an = load <4 x i32>, ptr %2, align 16, !tbaa !28
  %i.ao = add nsw <4 x i32> %i.an, %i.am
  store <4 x i32> %i.ao, ptr %2, align 16, !tbaa !28
  %i.ap = call i32 @lv_obj_invalidate_area(ptr noundef nonnull %0, ptr noundef nonnull %2) #5 ; 0 uses
  store i32 %.2, ptr %i.n, align 8, !tbaa !21
  %i.aq = call ptr @lv_obj_get_display(ptr noundef nonnull %0) #5 ; 2 uses
  call void @lv_display_enable_invalidation(ptr noundef %i.aq, i1 noundef zeroext false) #5
  call void @lv_obj_refresh_ext_draw_size(ptr noundef nonnull %0) #5
  call void @lv_display_enable_invalidation(ptr noundef %i.aq, i1 noundef zeroext true) #5
  %i.ar = load i32, ptr %i.n, align 8, !tbaa !21
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.at = trunc i32 %i.as to i16
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !23
  %i.av = trunc i32 %i.au to i16
  call void @lv_image_buf_get_transformed_area(ptr noundef nonnull %2, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.ar, i16 noundef zeroext %i.at, i16 noundef zeroext %i.av, ptr noundef nonnull %3) #5
  %i.aw = load <2 x i32>, ptr %i.ak, align 8, !tbaa !28
  %i.ax = shufflevector <2 x i32> %i.aw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = load <4 x i32>, ptr %2, align 16, !tbaa !28
  %i.az = add nsw <4 x i32> %i.ay, %i.ax
  store <4 x i32> %i.az, ptr %2, align 16, !tbaa !28
  %i.ba = call i32 @lv_obj_invalidate_area(ptr noundef nonnull %0, ptr noundef nonnull %2) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %lv_image_get_pivot.exit
  ret void
}

declare void @lv_obj_update_layout(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_image_get_pivot(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = tail call i32 @lv_pct_to_px(i32 noundef %i.b, i32 noundef %i.d) #5
  store i32 %i.e, ptr %1, align 4, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = tail call i32 @lv_pct_to_px(i32 noundef %i.g, i32 noundef %i.i) #5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !27
  ret void
}

declare void @lv_image_buf_get_transformed_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_display(ptr noundef) local_unnamed_addr #2

declare void @lv_display_enable_invalidation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_image_set_pivot(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lv_area_t, align 16         ; 10 uses
  %4 = alloca %struct.lv_point_t, align 4         ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 3840
  %i.d = icmp samesign ugt i16 %i.c, 2560         ; 2 uses
  %spec.select = select i1 %i.d, i32 0, i32 %2    ; 2 uses
  %spec.select40 = select i1 %i.d, i32 0, i32 %1  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = icmp eq i32 %i.f, %spec.select40
  br i1 %i.g, label %bb.c, label %lv_image_get_pivot.exit43

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26
  %i.j = icmp eq i32 %i.i, %spec.select
  br i1 %i.j, label %bb.d, label %lv_image_get_pivot.exit43

lv_image_get_pivot.exit43:                        ; preds = %bb.c, %bb.b
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.k = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5 ; 2 uses
  %i.l = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.m = load i32, ptr %i.e, align 4, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19
  %i.p = tail call i32 @lv_pct_to_px(i32 noundef %i.m, i32 noundef %i.o) #5
  store i32 %i.p, ptr %4, align 4, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %i.u = tail call i32 @lv_pct_to_px(i32 noundef %i.r, i32 noundef %i.t) #5
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.ad = trunc i32 %i.ac to i16
  call void @lv_image_buf_get_transformed_area(ptr noundef nonnull %3, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.x, i16 noundef zeroext %i.aa, i16 noundef zeroext %i.ad, ptr noundef nonnull %4) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 8, !tbaa !28
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ah = load <4 x i32>, ptr %3, align 16, !tbaa !28
  %i.ai = add nsw <4 x i32> %i.ah, %i.ag
  store <4 x i32> %i.ai, ptr %3, align 16, !tbaa !28
  %i.aj = call i32 @lv_obj_invalidate_area(ptr noundef nonnull %0, ptr noundef nonnull %3) #5 ; 0 uses
  call void @lv_point_set(ptr noundef nonnull %i.e, i32 noundef %spec.select40, i32 noundef %spec.select) #5
  %i.ak = call ptr @lv_obj_get_display(ptr noundef nonnull %0) #5 ; 2 uses
  call void @lv_display_enable_invalidation(ptr noundef %i.ak, i1 noundef zeroext false) #5
  call void @lv_obj_refresh_ext_draw_size(ptr noundef nonnull %0) #5
  call void @lv_display_enable_invalidation(ptr noundef %i.ak, i1 noundef zeroext true) #5
  %i.al = load i32, ptr %i.e, align 4, !tbaa !24
  %i.am = load i32, ptr %i.n, align 8, !tbaa !19
  %i.an = call i32 @lv_pct_to_px(i32 noundef %i.al, i32 noundef %i.am) #5
  store i32 %i.an, ptr %4, align 4, !tbaa !25
  %i.ao = load i32, ptr %i.q, align 8, !tbaa !26
  %i.ap = load i32, ptr %i.s, align 4, !tbaa !20
  %i.aq = call i32 @lv_pct_to_px(i32 noundef %i.ao, i32 noundef %i.ap) #5
  store i32 %i.aq, ptr %i.v, align 4, !tbaa !27
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !21
  %i.as = load i32, ptr %i.y, align 4, !tbaa !22
  %i.at = trunc i32 %i.as to i16
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.av = trunc i32 %i.au to i16
  call void @lv_image_buf_get_transformed_area(ptr noundef nonnull %3, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.ar, i16 noundef zeroext %i.at, i16 noundef zeroext %i.av, ptr noundef nonnull %4) #5
  %i.aw = load <2 x i32>, ptr %i.ae, align 8, !tbaa !28
  %i.ax = shufflevector <2 x i32> %i.aw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = load <4 x i32>, ptr %3, align 16, !tbaa !28
  %i.az = add nsw <4 x i32> %i.ay, %i.ax
  store <4 x i32> %i.az, ptr %3, align 16, !tbaa !28
  %i.ba = call i32 @lv_obj_invalidate_area(ptr noundef nonnull %0, ptr noundef nonnull %3) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.d

end_hunk_0
