Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftglyph?download=true
inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0_@ft_svg_glyph_transform:bb.a

; Function Attrs: nounwind uwtable
define internal i32 @ft_svg_glyph_prepare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !29
  %i.b = load ptr, ptr %0, align 8, !tbaa !28
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = call ptr @ft_mem_alloc(ptr noundef %i.c, i64 noundef 128, ptr noundef nonnull %i.a) #5 ; 8 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  store ptr %i.g, ptr %i.d, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !tbaa.struct !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.o = load <2 x i16>, ptr %i.m, align 8, !tbaa !32
  store <2 x i16> %i.o, ptr %i.n, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = load i16, ptr %i.p, align 4, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i16 %i.q, ptr %i.r, align 4, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 1398163232, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.y, ptr %i.z, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.d, ptr %i.aa, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_Copy(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.f = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = load i64, ptr %i.e, align 8, !tbaa !63
  %i.i = call ptr @ft_mem_alloc(ptr noundef %i.g, i64 noundef %i.h, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %ft_new_glyph.exit

ft_new_glyph.exit:                                ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !58
  store i32 %i.r, ptr %i.n, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94   ; 2 uses
  %.not26 = icmp eq ptr %i.t, null
  br i1 %.not26, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #5 ; 2 uses
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %FT_Done_Glyph.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.z(ptr noundef nonnull %i.i) #5, !inline_history !66
  br label %FT_Done_Glyph.exit

FT_Done_Glyph.exit:                               ; preds = %bb.f, %bb.g
  call void @ft_mem_free(ptr noundef %i.w, ptr noundef nonnull %i.i) #5
  br label %bb.h

.thread:                                          ; preds = %bb.d, %bb.e
  store ptr %i.i, ptr %1, align 8, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %ft_new_glyph.exit, %bb.a, %bb.b, %FT_Done_Glyph.exit, %.thread
  %.1 = phi i32 [ %i.j, %ft_new_glyph.exit ], [ %i.u, %FT_Done_Glyph.exit ], [ 0, %.thread ], [ 6, %bb.a ], [ 6, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define void @FT_Done_Glyph(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
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
define i32 @FT_New_Glyph(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
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

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.e
  %.1.ph = phi ptr [ %i.e, %bb.e ], [ @ft_bitmap_glyph_class, %bb.b ], [ @ft_svg_glyph_class, %bb.d ], [ @ft_outline_glyph_class, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.g = load i64, ptr %.1.ph, align 8, !tbaa !63
  %i.h = call ptr @ft_mem_alloc(ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a) #5 ; 4 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.g, label %ft_new_glyph.exit

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.1.ph, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %.1.ph, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.l, ptr %i.m, align 8, !tbaa !58
  store ptr %i.h, ptr %2, align 8, !tbaa !61
  br label %ft_new_glyph.exit

ft_new_glyph.exit:                                ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.a, %ft_new_glyph.exit
  %.014 = phi i32 [ %i.i, %ft_new_glyph.exit ], [ 6, %bb.a ], [ 18, %bb.e ]
  ret i32 %.014
}

declare hidden ptr @FT_Lookup_Renderer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @FT_Get_Glyph(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_New_Glyph.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %FT_New_Glyph.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !67     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25   ; 2 uses
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
  %i.g = phi ptr [ %i.f, %bb.g ], [ @ft_bitmap_glyph_class, %bb.d ], [ @ft_svg_glyph_class, %bb.f ], [ @ft_outline_glyph_class, %bb.e ] ; 6 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.i = load i64, ptr %i.g, align 8, !tbaa !63
  %i.j = call ptr @ft_mem_alloc(ptr noundef %i.h, i64 noundef %i.i, ptr noundef nonnull %i.a) #5 ; 10 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.i, label %FT_New_Glyph.exit

FT_New_Glyph.exit:                                ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %FT_New_Glyph.exit.thread

bb.i:                                             ; preds = %bb.h
  store ptr %i.b, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.l, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !95   ; 2 uses
  %i.r = add i64 %i.q, -2097152
  %or.cond = icmp ult i64 %i.r, -4194303
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !96   ; 2 uses
  %i.u = add i64 %i.t, -2097152
  %or.cond25 = icmp ult i64 %i.u, -4194303
  br i1 %or.cond25, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = shl nsw i64 %i.q, 10
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !97
  %i.x = shl nsw i64 %i.t, 10
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.x, ptr %i.y, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99
  %i.ab = call i32 %i.aa(ptr noundef nonnull %i.j, ptr noundef nonnull %0) #5 ; 2 uses
  %.not24 = icmp eq i32 %i.ab, 0
  br i1 %.not24, label %bb.m, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.k
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !28
  %.pre42 = load ptr, ptr %i.l, align 8, !tbaa !59
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.j, %bb.i
  %i.ac = phi ptr [ %.pre42, %..thread_crit_edge ], [ %i.g, %bb.i ], [ %i.g, %bb.j ]
  %i.ad = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.i ], [ %i.b, %bb.j ]
  %.040 = phi i32 [ %i.ab, %..thread_crit_edge ], [ 6, %bb.i ], [ 6, %bb.j ]
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %.not9.i = icmp eq ptr %i.ag, null
  br i1 %.not9.i, label %FT_Done_Glyph.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  call void %i.ag(ptr noundef nonnull %i.j) #5, !inline_history !66
  br label %FT_Done_Glyph.exit

FT_Done_Glyph.exit:                               ; preds = %.thread, %bb.l
  call void @ft_mem_free(ptr noundef %i.ae, ptr noundef nonnull %i.j) #5
  store ptr null, ptr %1, align 8, !tbaa !61
  br label %FT_New_Glyph.exit.thread

bb.m:                                             ; preds = %bb.k
  store ptr %i.j, ptr %1, align 8, !tbaa !61
  br label %FT_New_Glyph.exit.thread

FT_New_Glyph.exit.thread:                         ; preds = %bb.g, %bb.c, %FT_New_Glyph.exit, %bb.m, %FT_Done_Glyph.exit, %bb.b, %bb.a
  %.016 = phi i32 [ 6, %bb.b ], [ 37, %bb.a ], [ %i.k, %FT_New_Glyph.exit ], [ %.040, %FT_Done_Glyph.exit ], [ 0, %bb.m ], [ 18, %bb.g ], [ 6, %bb.c ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 0, 19) i32 @FT_Glyph_Transform(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef nonnull %2) #5
  %i.f = and i32 %1, -3
  %or.cond = icmp eq i32 %i.f, 1
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load <2 x i64>, ptr %2, align 8, !tbaa !51
  %i.h = and <2 x i64> %i.g, splat (i64 -64)
  store <2 x i64> %i.h, ptr %2, align 8, !tbaa !51
  %i.i = load <2 x i64>, ptr %i.a, align 8, !tbaa !51
  %i.j = add <2 x i64> %i.i, splat (i64 63)
  %i.k = and <2 x i64> %i.j, splat (i64 -64)
  store <2 x i64> %i.k, ptr %i.a, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = and i32 %1, -2
  %or.cond3 = icmp eq i32 %i.l, 2
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load <2 x i64>, ptr %2, align 8, !tbaa !51
  %i.n = ashr <2 x i64> %i.m, splat (i64 6)
  store <2 x i64> %i.n, ptr %2, align 8, !tbaa !51
  %i.o = load <2 x i64>, ptr %i.a, align 8, !tbaa !51
  %i.p = ashr <2 x i64> %i.o, splat (i64 6)
  store <2 x i64> %i.p, ptr %i.a, align 8, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_To_Bitmap(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.FT_GlyphSlotRec_, align 8   ; 11 uses
  %5 = alloca %struct.FT_Slot_InternalRec_, align 8 ; 4 uses
  %6 = alloca %struct.FT_Vector_, align 16        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !61     ; 9 uses
  %.not56 = icmp eq ptr %i.b, null
  br i1 %.not56, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !28   ; 5 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %i.d, @ft_bitmap_glyph_class
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %.not57 = icmp eq ptr %i.j, null
  br i1 %.not57, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.k, i8 0, i64 288, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 296
  store ptr %5, ptr %i.l, align 8, !tbaa !102
  store ptr %i.e, ptr %4, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i32 %i.n, ptr %i.o, align 8, !tbaa !25
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.q = call ptr @ft_mem_alloc(ptr noundef %i.p, i64 noundef 88, ptr noundef nonnull %i.a) #5 ; 10 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.g, label %ft_new_glyph.exit

ft_new_glyph.exit:                                ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread

bb.g:                                             ; preds = %bb.f
  store ptr %i.e, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr @ft_bitmap_glyph_class, ptr %i.s, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 1651078259, ptr %i.t, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.u = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.u, label %bb.h, label %FT_Glyph_Transform.exit

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %.not15.i = icmp eq ptr %i.v, null
  br i1 %.not15.i, label %FT_Glyph_Transform.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %.not16.i = icmp eq ptr %i.x, null
  br i1 %.not16.i, label %FT_Glyph_Transform.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.x(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %2) #5, !inline_history !103
  br label %FT_Glyph_Transform.exit

FT_Glyph_Transform.exit:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.z = call i32 %i.y(ptr noundef nonnull %i.b, ptr noundef nonnull %4) #5 ; 2 uses
  %.not59 = icmp eq i32 %i.z, 0
  br i1 %.not59, label %bb.k, label %bb.l

bb.k:                                             ; preds = %FT_Glyph_Transform.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.ab = call i32 @FT_Render_Glyph_Internal(ptr noundef %i.aa, ptr noundef nonnull %4, i32 noundef %1) #5 ; 2 uses
  %7 = icmp eq i32 %i.ab, 0                       ; 2 uses
  %.not76 = xor i1 %7, true
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %FT_Glyph_Transform.exit
  %.0 = phi i1 [ false, %FT_Glyph_Transform.exit ], [ %7, %bb.k ]
  %8 = phi i1 [ true, %FT_Glyph_Transform.exit ], [ %.not76, %bb.k ]
  %.0.a = phi i32 [ %i.z, %FT_Glyph_Transform.exit ], [ %i.ab, %bb.k ] ; 2 uses
  %i.ac = icmp eq ptr %i.d, @ft_svg_glyph_class
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  call void @ft_mem_free(ptr noundef %i.ad, ptr noundef %i.af) #5
  store ptr null, ptr %i.ae, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = icmp eq i8 %3, 0                        ; 2 uses
  %or.cond3 = and i1 %i.u, %i.ag
  br i1 %or.cond3, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.ah = load <2 x i64>, ptr %2, align 8, !tbaa !51
  %i.ai = sub nsw <2 x i64> zeroinitializer, %i.ah
  store <2 x i64> %i.ai, ptr %6, align 16, !tbaa !51
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %.not15.i64 = icmp eq ptr %i.aj, null
  br i1 %.not15.i64, label %FT_Glyph_Transform.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68 ; 2 uses
  %.not16.i65 = icmp eq ptr %i.al, null
  br i1 %.not16.i65, label %FT_Glyph_Transform.exit67, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void %i.al(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %6) #5, !inline_history !103
  br label %FT_Glyph_Transform.exit67

FT_Glyph_Transform.exit67:                        ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.r

bb.r:                                             ; preds = %FT_Glyph_Transform.exit67, %bb.n
  br i1 %.0, label %bb.s, label %9

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ao = load <2 x i32>, ptr %i.am, align 8, !tbaa !29
  store <2 x i32> %i.ao, ptr %i.an, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !tbaa.struct !106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !56
  br i1 %i.ag, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @FT_Done_Glyph(ptr noundef nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %i.q, ptr %0, align 8, !tbaa !61
  br label %.thread

9:                                                ; preds = %bb.r
  br i1 %8, label %bb.v, label %.thread

bb.v:                                             ; preds = %9
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65 ; 2 uses
  %.not9.i = icmp eq ptr %i.ax, null
  br i1 %.not9.i, label %FT_Done_Glyph.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void %i.ax(ptr noundef nonnull %i.q) #5, !inline_history !66
  br label %FT_Done_Glyph.exit

FT_Done_Glyph.exit:                               ; preds = %bb.v, %bb.w
  call void @ft_mem_free(ptr noundef %i.au, ptr noundef nonnull %i.q) #5
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %ft_new_glyph.exit, %bb.u, %bb.d, %FT_Done_Glyph.exit, %9
  %.175 = phi i32 [ %.0.a, %9 ], [ %.0.a, %FT_Done_Glyph.exit ], [ 6, %bb.a ], [ 6, %bb.b ], [ 6, %bb.c ], [ 6, %bb.e ], [ 0, %bb.u ], [ %i.r, %ft_new_glyph.exit ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare hidden i32 @FT_Render_Glyph_Internal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Bitmap_Init(ptr noundef) local_unnamed_addr #3

declare i32 @FT_Bitmap_Copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FT_Bitmap_Done(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FT_Outline_New(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FT_Outline_Copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FT_Outline_Done(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @FT_Matrix_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14FT_LibraryRec_", !8, i64 0}
!10 = !{!"p1 _ZTS11FT_FaceRec_", !8, i64 0}
!11 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !8, i64 0}
!12 = !{!"FT_Generic_", !8, i64 0, !8, i64 8}
!13 = !{!"long", !4, i64 0}
!14 = !{!"FT_Glyph_Metrics_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!15 = !{!"FT_Vector_", !13, i64 0, !13, i64 8}
!16 = !{!"p1 omnipotent char", !8, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"FT_Bitmap_", !5, i64 0, !5, i64 4, !5, i64 8, !16, i64 16, !17, i64 24, !4, i64 26, !4, i64 27, !8, i64 32}
!19 = !{!"p1 _ZTS10FT_Vector_", !8, i64 0}
!20 = !{!"p1 short", !8, i64 0}
!21 = !{!"FT_Outline_", !17, i64 0, !17, i64 2, !19, i64 8, !16, i64 16, !20, i64 24, !5, i64 32}
!22 = !{!"p1 _ZTS15FT_SubGlyphRec_", !8, i64 0}
!23 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !8, i64 0}
!24 = !{!"FT_GlyphSlotRec_", !9, i64 0, !10, i64 8, !11, i64 16, !5, i64 24, !12, i64 32, !14, i64 48, !13, i64 112, !13, i64 120, !15, i64 128, !5, i64 144, !18, i64 152, !5, i64 192, !5, i64 196, !21, i64 200, !5, i64 240, !22, i64 248, !8, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !8, i64 288, !23, i64 296}
!25 = !{!24, !5, i64 144}
!26 = !{!"p1 _ZTS15FT_Glyph_Class_", !8, i64 0}
!27 = !{!"FT_GlyphRec_", !9, i64 0, !26, i64 8, !5, i64 16, !15, i64 24}
!28 = !{!27, !9, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!15, !13, i64 0}
!31 = !{!15, !13, i64 8}
!32 = !{!17, !17, i64 0}
!33 = !{!16, !16, i64 0}
!34 = !{!"p1 _ZTS13FT_MemoryRec_", !8, i64 0}
!35 = !{!"p1 _ZTS15FT_ListNodeRec_", !8, i64 0}
!36 = !{!"FT_ListRec_", !35, i64 0, !35, i64 8}
!37 = !{!"p1 _ZTS15FT_RendererRec_", !8, i64 0}
!38 = !{!"p1 _ZTS13FT_ModuleRec_", !8, i64 0}
!39 = !{!"FT_LibraryRec_", !34, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !36, i64 280, !37, i64 296, !38, i64 304, !4, i64 312, !4, i64 344, !5, i64 392}
!40 = !{!39, !34, i64 0}
!41 = !{!24, !8, i64 288}
!42 = !{!"FT_Size_Metrics_", !17, i64 0, !17, i64 2, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!43 = !{!"FT_Matrix_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!44 = !{!"FT_SVG_DocumentRec_", !16, i64 0, !13, i64 8, !42, i64 16, !17, i64 72, !17, i64 74, !17, i64 76, !43, i64 80, !15, i64 112}
!45 = !{!44, !13, i64 8}
!46 = !{!"FT_SvgGlyphRec_", !27, i64 0, !16, i64 40, !13, i64 48, !5, i64 56, !42, i64 64, !17, i64 120, !17, i64 122, !17, i64 124, !43, i64 128, !15, i64 160}
!47 = !{!46, !16, i64 40}
!48 = !{!46, !13, i64 48}
!49 = !{!24, !5, i64 24}
!50 = !{!46, !5, i64 56}
!51 = !{!13, !13, i64 0}
!52 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 8, i64 8, !51, i64 16, i64 8, !51, i64 24, i64 8, !51, i64 32, i64 8, !51, i64 40, i64 8, !51, i64 48, i64 8, !51}
!53 = !{!44, !17, i64 76}
!54 = !{!46, !17, i64 124}
!55 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !51, i64 24, i64 8, !51}
!56 = !{i64 0, i64 8, !51, i64 8, i64 8, !51}
!57 = !{!44, !16, i64 0}
!58 = !{!27, !5, i64 16}
!59 = !{!27, !26, i64 8}
!60 = !{!"p1 _ZTS12FT_GlyphRec_", !8, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"FT_Glyph_Class_", !13, i64 0, !5, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!63 = !{!62, !13, i64 0}
!64 = !{!62, !5, i64 8}
!65 = !{!62, !8, i64 24}
!66 = !{ptr @FT_Done_Glyph}
!67 = !{!24, !9, i64 0}
!68 = !{!62, !8, i64 40}
!69 = !{!"FT_BitmapGlyphRec_", !27, i64 0, !5, i64 40, !5, i64 44, !18, i64 48}
!70 = !{!69, !5, i64 40}
!71 = !{!"FT_BBox_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!72 = !{!71, !13, i64 0}
!73 = !{!69, !5, i64 52}
!74 = !{!71, !13, i64 16}
!75 = !{!69, !5, i64 44}
!76 = !{!71, !13, i64 24}
!77 = !{!69, !5, i64 48}
!78 = !{!71, !13, i64 8}
!79 = !{!21, !17, i64 2}
!80 = !{!21, !17, i64 0}
!81 = !{!"FT_OutlineGlyphRec_", !27, i64 0, !21, i64 40}
!82 = !{!81, !17, i64 42}
!83 = !{!81, !17, i64 40}
!84 = !{!19, !19, i64 0}
!85 = !{!20, !20, i64 0}
!86 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 8, i64 8, !84, i64 16, i64 8, !33, i64 24, i64 8, !85, i64 32, i64 4, !29}
!87 = !{!24, !5, i64 232}
!88 = !{!43, !13, i64 0}
!89 = !{!43, !13, i64 24}
!90 = !{!46, !13, i64 160}
!91 = !{!43, !13, i64 8}
!92 = !{!46, !13, i64 168}
!93 = !{!43, !13, i64 16}
!94 = !{!62, !8, i64 32}
!95 = !{!24, !13, i64 128}
!96 = !{!24, !13, i64 136}
!97 = !{!27, !13, i64 24}
!98 = !{!27, !13, i64 32}
!99 = !{!62, !8, i64 16}
!100 = !{!62, !8, i64 48}
!101 = !{!62, !8, i64 56}
!102 = !{!24, !23, i64 296}
!103 = !{ptr @FT_Glyph_Transform}
!104 = !{!4, !4, i64 0}
!105 = !{!8, !8, i64 0}
!106 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 16, i64 8, !33, i64 24, i64 2, !32, i64 26, i64 1, !104, i64 27, i64 1, !104, i64 32, i64 8, !105}
end_hunk_0
