inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0_@llvm.memcpy.p0.p0.i64

; Function Attrs: nounwind uwtable
define void @FT_Done_Glyph(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull %0) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef nonnull %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @FT_New_Glyph(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 1651078259, label %bb.f
    i32 1869968492, label %bb.c
    i32 1398163232, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = tail call ptr @FT_Lookup_Renderer(ptr noundef nonnull %0, i32 noundef %1, ptr noundef null) #5 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  %.1.ph = phi ptr [ @ft_bitmap_glyph_class, %bb.b ], [ @ft_svg_glyph_class, %bb.d ], [ @ft_outline_glyph_class, %bb.c ], [ %i.e, %bb.e ] ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %2, align 8, !tbaa !90
  %i.g = load i64, ptr %.1.ph, align 8, !tbaa !92
  %i.h = call ptr @ft_mem_alloc(ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a) #5 ; 4 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.g, label %ft_new_glyph.exit

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.1.ph, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %.1.ph, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.l, ptr %i.m, align 8, !tbaa !82
  store ptr %i.h, ptr %2, align 8, !tbaa !90
  br label %ft_new_glyph.exit

ft_new_glyph.exit:                                ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.a, %ft_new_glyph.exit
  %.0 = phi i32 [ %i.i, %ft_new_glyph.exit ], [ 6, %bb.a ], [ 18, %bb.e ]
  ret i32 %.0
}

declare hidden ptr @FT_Lookup_Renderer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @FT_Get_Glyph(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_New_Glyph.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %FT_New_Glyph.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !98     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not41 = icmp eq ptr %i.b, null
  br i1 %.not41, label %FT_New_Glyph.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.d, label %bb.g [
    i32 1651078259, label %bb.h
    i32 1869968492, label %bb.e
    i32 1398163232, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.e = tail call ptr @FT_Lookup_Renderer(ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef null) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br i1 %.not.i, label %FT_New_Glyph.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.g = phi ptr [ @ft_bitmap_glyph_class, %bb.d ], [ @ft_svg_glyph_class, %bb.f ], [ @ft_outline_glyph_class, %bb.e ], [ %i.f, %bb.g ] ; 6 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.i = load i64, ptr %i.g, align 8, !tbaa !92
  %i.j = call ptr @ft_mem_alloc(ptr noundef %i.h, i64 noundef %i.i, ptr noundef nonnull %i.a) #5 ; 10 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.i, label %FT_New_Glyph.exit

FT_New_Glyph.exit:                                ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %FT_New_Glyph.exit.thread

bb.i:                                             ; preds = %bb.h
  store ptr %i.b, ptr %i.j, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.l, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !99   ; 2 uses
  %i.r = add i64 %i.q, -2097152
  %or.cond = icmp ult i64 %i.r, -4194303
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %i.u = add i64 %i.t, -2097152
  %or.cond25 = icmp ult i64 %i.u, -4194303
  br i1 %or.cond25, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = shl nsw i64 %i.q, 10
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !101
  %i.x = shl nsw i64 %i.t, 10
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.x, ptr %i.y, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = call i32 %i.aa(ptr noundef nonnull %i.j, ptr noundef nonnull %0) #5 ; 2 uses
  %.not24 = icmp eq i32 %i.ab, 0
  br i1 %.not24, label %bb.m, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.k
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !7
  %.pre42 = load ptr, ptr %i.l, align 8, !tbaa !89
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.j, %bb.i
  %i.ac = phi ptr [ %.pre42, %..thread_crit_edge ], [ %i.g, %bb.i ], [ %i.g, %bb.j ]
  %i.ad = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.i ], [ %i.b, %bb.j ]
  %.040 = phi i32 [ %i.ab, %..thread_crit_edge ], [ 6, %bb.i ], [ 6, %bb.j ]
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !96 ; 2 uses
  %.not9.i = icmp eq ptr %i.ag, null
  br i1 %.not9.i, label %FT_Done_Glyph.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  call void %i.ag(ptr noundef nonnull %i.j) #5, !inline_history !97
  br label %FT_Done_Glyph.exit

FT_Done_Glyph.exit:                               ; preds = %.thread, %bb.l
  call void @ft_mem_free(ptr noundef %i.ae, ptr noundef nonnull %i.j) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %FT_Done_Glyph.exit
  %.sink = phi ptr [ null, %FT_Done_Glyph.exit ], [ %i.j, %bb.k ]
  %.016.ph = phi i32 [ %.040, %FT_Done_Glyph.exit ], [ 0, %bb.k ]
  store ptr %.sink, ptr %1, align 8, !tbaa !90
  br label %FT_New_Glyph.exit.thread

FT_New_Glyph.exit.thread:                         ; preds = %bb.m, %bb.g, %bb.c, %FT_New_Glyph.exit, %bb.b, %bb.a
  %.016 = phi i32 [ 6, %bb.b ], [ 37, %bb.a ], [ %i.k, %FT_New_Glyph.exit ], [ 18, %bb.g ], [ 6, %bb.c ], [ %.016.ph, %bb.m ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 0, 19) i32 @FT_Glyph_Transform(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #5
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @FT_Vector_Transform(ptr noundef nonnull %i.e, ptr noundef nonnull %1) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.1 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 18, %bb.c ]
  ret i32 %.1
}

declare void @FT_Vector_Transform(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @FT_Glyph_Get_CBox(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not33 = icmp eq ptr %0, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br i1 %.not33, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %2) #5
  %i.f = and i32 %1, -3
  %or.cond = icmp eq i32 %i.f, 1
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load <2 x i64>, ptr %2, align 8, !tbaa !76
  %i.h = and <2 x i64> %i.g, splat (i64 -64)
  store <2 x i64> %i.h, ptr %2, align 8, !tbaa !76
  %i.i = load <2 x i64>, ptr %i.a, align 8, !tbaa !76
  %i.j = add <2 x i64> %i.i, splat (i64 63)
  %i.k = and <2 x i64> %i.j, splat (i64 -64)
  store <2 x i64> %i.k, ptr %i.a, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = and i32 %1, -2
  %or.cond3 = icmp eq i32 %i.l, 2
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load <2 x i64>, ptr %2, align 8, !tbaa !76
  %i.n = ashr <2 x i64> %i.m, splat (i64 6)
  store <2 x i64> %i.n, ptr %2, align 8, !tbaa !76
  %i.o = load <2 x i64>, ptr %i.a, align 8, !tbaa !76
  %i.p = ashr <2 x i64> %i.o, splat (i64 6)
  store <2 x i64> %i.p, ptr %i.a, align 8, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_To_Bitmap(ptr noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.FT_GlyphSlotRec_, align 8   ; 10 uses
  %5 = alloca %struct.FT_Slot_InternalRec_, align 8 ; 4 uses
  %6 = alloca %struct.FT_Vector_, align 16        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !90     ; 9 uses
  %.not57 = icmp eq ptr %i.b, null
  br i1 %.not57, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %i.d, @ft_bitmap_glyph_class
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106
  %.not58 = icmp eq ptr %i.j, null
  br i1 %.not58, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.k, i8 0, i64 288, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 296
  store ptr %5, ptr %i.l, align 8, !tbaa !28
  store ptr %i.e, ptr %4, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i32 %i.n, ptr %i.o, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.q = call ptr @ft_mem_alloc(ptr noundef %i.p, i64 noundef 88, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.g, label %ft_new_glyph.exit

ft_new_glyph.exit:                                ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread

bb.g:                                             ; preds = %bb.f
  store ptr %i.e, ptr %i.q, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr @ft_bitmap_glyph_class, ptr %i.s, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 1651078259, ptr %i.t, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.u = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.u, label %bb.h, label %FT_Glyph_Transform.exit

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not15.i = icmp eq ptr %i.v, null
  br i1 %.not15.i, label %FT_Glyph_Transform.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %.not16.i = icmp eq ptr %i.x, null
  br i1 %.not16.i, label %FT_Glyph_Transform.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.x(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %2) #5, !inline_history !107
  br label %FT_Glyph_Transform.exit

FT_Glyph_Transform.exit:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !106
  %i.z = call i32 %i.y(ptr noundef nonnull %i.b, ptr noundef nonnull %4) #5 ; 2 uses
  %.not60 = icmp eq i32 %i.z, 0
  br i1 %.not60, label %bb.k, label %bb.l

bb.k:                                             ; preds = %FT_Glyph_Transform.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ab = call i32 @FT_Render_Glyph_Internal(ptr noundef %i.aa, ptr noundef nonnull %4, i32 noundef %1) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %FT_Glyph_Transform.exit
  %.0 = phi i32 [ %i.z, %FT_Glyph_Transform.exit ], [ %i.ab, %bb.k ] ; 2 uses
  %i.ac = icmp eq ptr %i.d, @ft_svg_glyph_class
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  call void @ft_mem_free(ptr noundef %i.ad, ptr noundef %i.af) #5
end_hunk_0
