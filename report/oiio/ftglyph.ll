inline.NumInlined: 13
inline.NumDeleted: 2
begin_hunk_0_@ft_svg_glyph_transform:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ft_svg_glyph_prepare(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = call ptr @ft_mem_alloc(ptr noundef %i.c, i64 noundef 128, ptr noundef nonnull %i.a) #5 ; 8 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  store ptr %i.g, ptr %i.d, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !tbaa.struct !75
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.o = load <2 x i16>, ptr %i.m, align 8, !tbaa !35
  store <2 x i16> %i.o, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = load i16, ptr %i.p, align 4, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i16 %i.q, ptr %i.r, align 4, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !79
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !80
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 1398163232, ptr %i.w, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.y, ptr %i.z, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.d, ptr %i.aa, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @FT_Glyph_Copy(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !90
  %i.f = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = load i64, ptr %i.e, align 8, !tbaa !92
  %i.i = call ptr @ft_mem_alloc(ptr noundef %i.g, i64 noundef %i.h, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %ft_new_glyph.exit

ft_new_glyph.exit:                                ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !82
  store i32 %i.r, ptr %i.n, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %.not26 = icmp eq ptr %i.t, null
  br i1 %.not26, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #5 ; 2 uses
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96   ; 2 uses
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %FT_Done_Glyph.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.z(ptr noundef nonnull %i.i) #5, !inline_history !97
  br label %FT_Done_Glyph.exit

FT_Done_Glyph.exit:                               ; preds = %bb.f, %bb.g
  call void @ft_mem_free(ptr noundef %i.w, ptr noundef nonnull %i.i) #5
  br label %bb.h

.thread:                                          ; preds = %bb.d, %bb.e
  store ptr %i.i, ptr %1, align 8, !tbaa !90
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
  %i.d = tail call ptr @FT_Lookup_Renderer(ptr noundef nonnull %0, i32 noundef %1, ptr noundef null) #5
  %.fr = freeze ptr %i.d                          ; 2 uses
  %.not = icmp eq ptr %.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %.fr, i64 40
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
  %i.e = tail call ptr @FT_Lookup_Renderer(ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef null) #5
  %.fr.i = freeze ptr %i.e                        ; 2 uses
  %.not.i = icmp eq ptr %.fr.i, null
  %i.f = getelementptr inbounds nuw i8, ptr %.fr.i, i64 40
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
  store ptr null, ptr %1, align 8, !tbaa !90
  br label %FT_New_Glyph.exit.thread

bb.m:                                             ; preds = %bb.k
  store ptr %i.j, ptr %1, align 8, !tbaa !90
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
end_hunk_0
