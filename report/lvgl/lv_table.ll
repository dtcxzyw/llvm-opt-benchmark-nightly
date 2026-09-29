Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_table?download=true
inline.NumInlined: 52
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_table_set_cell_ctrl:bb.a
  %i.h = mul i32 %i.g, %1
  %i.i = add i32 %i.h, %2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = zext i32 %i.i to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @lv_malloc(i64 noundef 25) #8 ; 5 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.p, ptr %i.r, align 8, !tbaa !27
  %.not37 = icmp eq ptr %i.p, null
  br i1 %.not37, label %.preheader38, label %bb.h

.preheader38:                                     ; preds = %bb.g, %.preheader38
  br label %.preheader38

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.p, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !41
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.l
  %.pre39 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.u = phi ptr [ %.pre39, %bb.h ], [ %i.n, %bb.f ] ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !39
  %i.w = or i32 %i.v, %3
  store i32 %i.w, ptr %i.u, align 8, !tbaa !39
  tail call fastcc void @refr_cell_size(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_table_clear_cell_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not32 = icmp ult i32 %2, %i.b
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %2, 1
  tail call void @lv_table_set_column_count(ptr noundef nonnull %0, i32 noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %.not33 = icmp ult i32 %1, %i.e
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add i32 %1, 1
  tail call void @lv_table_set_row_count(ptr noundef nonnull %0, i32 noundef %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = load i32, ptr %i.a, align 8, !tbaa !20
  %i.h = mul i32 %i.g, %1
  %i.i = add i32 %i.h, %2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = zext i32 %i.i to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @lv_malloc(i64 noundef 25) #8 ; 5 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.p, ptr %i.r, align 8, !tbaa !27
  %.not34 = icmp eq ptr %i.p, null
  br i1 %.not34, label %.preheader35, label %bb.h

.preheader35:                                     ; preds = %bb.g, %.preheader35
  br label %.preheader35

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.p, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !41
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.l
  %.pre36 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.u = phi ptr [ %.pre36, %bb.h ], [ %i.n, %bb.f ] ; 2 uses
  %i.v = xor i32 %3, -1
  %i.w = load i32, ptr %i.u, align 8, !tbaa !39
  %i.x = and i32 %i.w, %i.v
  store i32 %i.x, ptr %i.u, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_table_set_cell_user_data(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = zext i16 %2 to i32                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %.not32 = icmp ugt i32 %i.c, %i.a
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i32 %i.a, 1
  tail call void @lv_table_set_column_count(ptr noundef nonnull %0, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = zext i16 %1 to i32                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %.not33 = icmp ugt i32 %i.g, %i.e
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i32 %i.e, 1
  tail call void @lv_table_set_row_count(ptr noundef nonnull %0, i32 noundef %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.b, align 8, !tbaa !20
  %i.j = mul i32 %i.i, %i.e
  %i.k = add i32 %i.j, %i.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = zext i32 %i.k to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @lv_malloc(i64 noundef 25) #8 ; 5 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.n
  store ptr %i.r, ptr %i.t, align 8, !tbaa !27
  %.not34 = icmp eq ptr %i.r, null
  br i1 %.not34, label %.preheader35, label %bb.h

.preheader35:                                     ; preds = %bb.g, %.preheader35
  br label %.preheader35

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.r, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %i.v, align 8, !tbaa !41
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.n
  %.pre36 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.w = phi ptr [ %.pre36, %bb.h ], [ %i.p, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %3, ptr %i.x, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_table_set_selected_cell(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21   ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = zext i16 %2 to i32                       ; 3 uses
  %.not24 = icmp eq i32 %i.h, %i.i
  br i1 %.not24, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = zext i16 %1 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = zext i16 %1 to i32                       ; 2 uses
  %.not25 = icmp eq i32 %i.k, %i.l
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.l, %bb.e ] ; 2 uses
  %.not26 = icmp ugt i32 %i.b, %i.i
  %i.m = add nsw i32 %i.b, -1
  %3 = select i1 %.not26, i32 %i.i, i32 %i.m
  store i32 %3, ptr %i.g, align 8, !tbaa !29
  %.not27 = icmp ugt i32 %i.e, %.pre-phi
  %i.n = add nsw i32 %i.e, -1
  %4 = select i1 %.not27, i32 %.pre-phi, i32 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %4, ptr %i.o, align 4, !tbaa !28
  %i.p = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #8 ; 0 uses
  tail call fastcc void @scroll_to_selected_cell(ptr noundef nonnull %0)
  %i.q = tail call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 35, ptr noundef null) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.c
  ret void
}

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scroll_to_selected_cell(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_area_t, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  call fastcc void @get_cell_area(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.d, ptr noundef %1)
  %i.e = load i32, ptr %1, align 4, !tbaa !42     ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub nsw i32 0, %i.e
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #8
  %i.k = icmp sgt i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #8
  %i.m = sub nsw i32 %i.l, %i.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i32 [ %i.m, %bb.d ], [ %i.g, %bb.b ]
  tail call void @lv_obj_scroll_by_bounded(ptr noundef nonnull %0, i32 noundef %.sink, i32 noundef 0, i1 noundef zeroext true) #8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44   ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i32 0, %i.o
  br label %.sink.split16

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45   ; 2 uses
  %i.t = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #8
  %i.u = icmp sgt i32 %i.s, %i.t
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #8
  %i.w = sub nsw i32 %i.v, %i.s
  br label %.sink.split16

.sink.split16:                                    ; preds = %bb.f, %bb.h
  %.sink17 = phi i32 [ %i.w, %bb.h ], [ %i.q, %bb.f ]
  tail call void @lv_obj_scroll_by_bounded(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.sink17, i1 noundef zeroext true) #8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split16, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @lv_table_get_cell_value(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %.not17 = icmp ult i32 %1, %i.b
  br i1 %.not17, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not18 = icmp ult i32 %2, %i.d
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = mul i32 %i.d, %1
  %i.f = add i32 %i.e, %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %spec.select = select i1 %i.l, ptr @.str.1, ptr %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ @.str.1, %bb.c ], [ @.str.1, %bb.b ], [ %spec.select, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_table_get_row_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @lv_table_get_column_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @lv_table_get_column_width(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %.not8 = icmp ult i32 %1, %i.b
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @lv_table_has_cell_ctrl(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %.not19 = icmp ult i32 %1, %i.b
  br i1 %.not19, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not20 = icmp ult i32 %2, %i.d
  br i1 %.not20, label %bb.d, label %bb.f

end_hunk_0
