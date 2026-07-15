inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@png_image_read_header:bb.a
  br label %bb.v

bb.v:                                             ; preds = %png_image_is_not_sRGB.exit.thread24, %bb.u, %bb.t
  %.0 = phi i32 [ %i.cc, %bb.u ], [ %i.bz, %bb.t ], [ 256, %png_image_is_not_sRGB.exit.thread24 ]
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %.0, i32 256)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %spec.store.select, ptr %i.cd, align 4, !tbaa !133
  ret i32 1
}

declare i32 @png_image_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @png_image_begin_read_from_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.16) ; 3 uses
  %.not23 = icmp eq ptr %i.d, null
  br i1 %.not23, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call fastcc i32 @png_image_read_init(ptr noundef %0)
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store ptr %i.d, ptr %i.h, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = or i8 %i.j, 2
  store i8 %i.k, ptr %i.i, align 8
  %i.l = tail call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_read_header, ptr noundef nonnull %0) #13
  br label %.critedge

bb.g:                                             ; preds = %bb.d
  %i.m = tail call ptr @__errno_location() #15
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = tail call ptr @strerror(i32 noundef %i.n) #13
  %i.p = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef %i.o) #13
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.q = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %.critedge

bb.i:                                             ; preds = %bb.c
  %i.r = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #13
  br label %.critedge

bb.j:                                             ; preds = %bb.b
  %i.s = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.a, %bb.h, %bb.j, %bb.i
  %.1 = phi i32 [ %i.s, %bb.j ], [ 0, %bb.a ], [ %i.r, %bb.i ], [ 0, %bb.h ], [ %i.p, %bb.g ], [ %i.l, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @png_image_begin_read_from_memory(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne i64 %2, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @png_image_read_init(ptr noundef %0)
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %1, ptr %i.h, align 8, !tbaa !134
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %2, ptr %i.i, align 8, !tbaa !135
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  store ptr %0, ptr %i.k, align 8, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  store ptr @png_image_memory_read, ptr %i.l, align 8, !tbaa !136
  %i.m = tail call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_read_header, ptr noundef nonnull %0) #13
  br label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.n = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #13
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.o = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.a, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %i.m, %bb.e ], [ %i.o, %bb.g ], [ %i.n, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @png_image_memory_read(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 3 uses
  %.not28 = icmp eq ptr %i.c, null
  br i1 %.not28, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !135  ; 2 uses
  %.not29 = icmp eq ptr %i.e, null
  %.not30 = icmp ult i64 %i.g, %2
  %or.cond = select i1 %.not29, i1 true, i1 %.not30
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.e, i64 %2, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  store ptr %i.h, ptr %i.d, align 8, !tbaa !134
  %i.i = sub nuw i64 %i.g, %2
  store i64 %i.i, ptr %i.f, align 8, !tbaa !135
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #14
  unreachable

.critedge:                                        ; preds = %bb.c, %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #14
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @png_image_finish_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.png_image_read_control, align 8 ; 11 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !119  ; 3 uses
  %i.f = and i32 %i.e, 8
  %.not52 = icmp eq i32 %i.f, 0                   ; 3 uses
  %i.g = and i32 %i.e, 3
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = select i1 %.not52, i32 %i.h, i32 1       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !137  ; 2 uses
  %i.l = udiv i32 2147483647, %i.i
  %.not53 = icmp ugt i32 %i.k, %i.l
  br i1 %.not53, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = mul i32 %i.i, %i.k                       ; 2 uses
  %i.n = icmp eq i32 %3, 0
  %spec.select = select i1 %i.n, i32 %i.m, i32 %3 ; 2 uses
  %.045 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true) ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !108
  %i.p = icmp eq ptr %i.o, null
  %i.q = icmp eq ptr %2, null
  %or.cond.not64 = or i1 %i.q, %i.p
  %.not54 = icmp ult i32 %.045, %i.m
  %or.cond59 = select i1 %or.cond.not64, i1 true, i1 %.not54
  br i1 %or.cond59, label %bb.m, label %6

6:                                                ; preds = %bb.d
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i32, ptr %7, align 8, !tbaa !138      ; 2 uses
  br i1 %.not52, label %bb.e, label %.thread

bb.e:                                             ; preds = %6
  %i.r = lshr i32 %i.e, 2
  %i.s = and i32 %i.r, 1
  %9 = add nuw nsw i32 %i.s, 1
  %10 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %9, i1 true)
  %11 = lshr i32 -1, %10
  %i.t = udiv i32 %11, %.045
  %.not56 = icmp ugt i32 %8, %i.t
  br i1 %.not56, label %bb.l, label %bb.f

.thread:                                          ; preds = %6
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.045, i32 %8)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %bb.l, label %.thread61

.thread61:                                        ; preds = %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !133
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.x, %i.w
  br i1 %or.cond3, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %.thread61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i8 0, i64 64, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.z, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %spec.select, ptr %i.aa, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.ab, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %1, ptr %i.ac, align 8, !tbaa !144
  br i1 %.not52, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_read_colormap, ptr noundef nonnull %5) #13
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_read_colormapped, ptr noundef nonnull %5) #13
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ah = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_read_direct, ptr noundef nonnull %5) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0 = phi i32 [ %i.ah, %bb.i ], [ 0, %bb.g ], [ %i.ag, %bb.h ]
  call void @png_image_free(ptr noundef nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

bb.k:                                             ; preds = %.thread61
  %i.ai = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #13
  br label %.critedge

bb.l:                                             ; preds = %.thread, %bb.e
  %i.aj = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %.critedge

bb.m:                                             ; preds = %bb.d
  %i.ak = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #13
  br label %.critedge

bb.n:                                             ; preds = %bb.c
  %i.al = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #13
  br label %.critedge

bb.o:                                             ; preds = %bb.b
  %i.am = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.o
  %.2 = phi i32 [ %i.ak, %bb.m ], [ %i.am, %bb.o ], [ %i.al, %bb.n ], [ %.0, %bb.j ], [ %i.ai, %bb.k ], [ %i.aj, %bb.l ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_image_read_colormap(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.png_color_16_struct, align 2 ; 5 uses
  %2 = alloca %struct.png_color_16_struct, align 2 ; 5 uses
  %3 = alloca %struct.png_color_16_struct, align 2 ; 5 uses
  %4 = alloca %struct.png_color_16_struct, align 2 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 42 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !119  ; 13 uses
  %i.f = and i32 %i.e, 4                          ; 2 uses
  %.not.not = icmp eq i32 %i.f, 0                 ; 16 uses
  %i.g = select i1 %.not.not, i32 1, i32 2        ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 623 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27    ; 3 uses
  %i.j = and i8 %i.i, 4
  %.not430 = icmp eq i8 %i.j, 0
  br i1 %.not430, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.l = load i16, ptr %i.k, align 8, !tbaa !118
  %.not431 = icmp ne i16 %i.l, 0
  %i.m = and i32 %i.e, 1
  %i.n = icmp eq i32 %i.m, 0
  %or.cond455 = select i1 %.not431, i1 %i.n, i1 false
  br i1 %or.cond455, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %.old = and i32 %i.e, 1
  %.old454 = icmp eq i32 %.old, 0
  br i1 %.old454, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c
  br i1 %.not.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144  ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.31) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !145
  %i.t = zext i8 %i.s to i32                      ; 4 uses
  %i.u = and i32 %i.e, 2
  %.not432 = icmp eq i32 %i.u, 0
  br i1 %.not432, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.p, align 1, !tbaa !147
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !148
  %i.z = zext i8 %i.y to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  %. = select i1 %.not.not, i32 255, i32 65535    ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.h
  %.0407 = phi i32 [ %i.t, %bb.g ], [ %i.z, %bb.h ], [ 0, %bb.d ], [ %., %bb.i ] ; 19 uses
  %.0405 = phi i32 [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ 0, %bb.d ], [ %., %bb.i ] ; 33 uses
  %.0403 = phi i32 [ %i.t, %bb.g ], [ %i.w, %bb.h ], [ 0, %bb.d ], [ %., %bb.i ] ; 15 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 624 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !33  ; 4 uses
  %i.ac = icmp eq i8 %i.ab, 16
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !132
  %i.af = and i32 %i.ae, 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink = phi i32 [ 45455, %bb.l ], [ 100000, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 728
  store i32 %.sink, ptr %i.ah, align 8, !tbaa !149
  switch i8 %i.i, label %bb.dg [
    i8 0, label %bb.n
    i8 4, label %bb.ai
    i8 2, label %bb.be
    i8 6, label %bb.be
    i8 3, label %bb.cn
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = icmp ult i8 %i.ab, 9
  br i1 %i.ai, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.aj = zext nneg i8 %i.ab to i32
  %i.ak = shl nuw nsw i32 1, %i.aj                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !133
  %i.an = icmp ugt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.32) #14
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ao = trunc i32 %i.ak to i8
  %.rhs.trunc = add i8 %i.ao, -1
  %i.ap = udiv i8 -1, %.rhs.trunc
  %.zext = zext i8 %i.ap to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !118
  %.not446 = icmp eq i16 %i.ar, 0
  br i1 %.not446, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  %i.at = load i16, ptr %i.as, align 8, !tbaa !150
  %i.au = and i32 %i.e, 1
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = select i1 %.not.not, i32 255, i32 65535
  %spec.select = select i1 %i.av, i32 %i.aw, i32 0
  %i.ax = zext i16 %i.at to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0424 = phi i32 [ 0, %bb.q ], [ %spec.select, %bb.r ]
  %.0416.shrunk = phi i32 [ 256, %bb.q ], [ %i.ax, %bb.r ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.w
  %.0413585 = phi i32 [ 0, %bb.s ], [ %i.ay, %bb.w ] ; 3 uses
  %.0414584 = phi i32 [ 0, %bb.s ], [ %i.az, %bb.w ] ; 4 uses
  %.not453 = icmp eq i32 %.0413585, %.0416.shrunk
  br i1 %.not453, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %.0413585, i32 noundef %.0414584, i32 noundef %.0414584, i32 noundef %.0414584, i32 noundef 255, i32 noundef 3)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %.0416.shrunk, i32 noundef %.0403, i32 noundef %.0405, i32 noundef %.0407, i32 noundef %.0424, i32 noundef %i.g)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ay = add nuw nsw i32 %.0413585, 1            ; 2 uses
  %i.az = add i32 %.0414584, %.zext
  %exitcond604.not = icmp eq i32 %i.ay, %i.ak
  br i1 %exitcond604.not, label %bb.x, label %bb.t, !llvm.loop !151

bb.x:                                             ; preds = %bb.w
  %i.ba = load i8, ptr %i.aa, align 8, !tbaa !33  ; 2 uses
  %i.bb = icmp ult i8 %i.ba, 8
  br i1 %i.bb, label %bb.y, label %.thread.thread535

bb.y:                                             ; preds = %bb.x
  tail call void @png_set_packing(ptr noundef nonnull %i.c) #13
  br label %.thread.thread535thread-pre-split

bb.z:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !133
  %i.be = icmp ult i32 %i.bd, 256
  br i1 %i.be, label %bb.aa, label %.preheader

bb.aa:                                            ; preds = %bb.z
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.33) #14
end_hunk_0
begin_hunk_1_@png_image_read_composite:bb.a
.lr.ph91:                                         ; preds = %bb.h
  %i.ba = zext nneg i32 %.078 to i64
  %i.bb = icmp samesign ult i64 %.079, %i.s
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %._crit_edge
  %.189 = phi i32 [ %.076, %.lr.ph91 ], [ %i.ew, %._crit_edge ] ; 2 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !175 ; 2 uses
  tail call void @png_read_row(ptr noundef %i.c, ptr noundef %i.bc, ptr noundef null)
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !173
  %i.be = zext i32 %.189 to i64
  %i.bf = mul nsw i64 %i.k, %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.s
  br i1 %i.bb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.079
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.07487 = phi ptr [ %i.eu, %.loopexit ], [ %i.bi, %.lr.ph.preheader ] ; 8 uses
  %.07585 = phi ptr [ %i.et, %.loopexit ], [ %i.bc, %.lr.ph.preheader ] ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.07585, i64 %i.t
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !46  ; 3 uses
  %.not = icmp eq i8 %i.bk, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph
  %.not82 = icmp eq i8 %i.bk, -1
  %i.bl = xor i8 %i.bk, -1
  %i.bm = zext i8 %i.bl to i32                    ; 3 uses
  br i1 %.not82, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.bn = load i8, ptr %.07585, align 1, !tbaa !46
  store i8 %i.bn, ptr %.07487, align 1, !tbaa !46
  br i1 %exitcond100.not, label %.loopexit, label %.preheader.split.us.1

.preheader.split.us.1:                            ; preds = %.preheader.split.us
  %i.bo = getelementptr inbounds nuw i8, ptr %.07585, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %.07487, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %.07585, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %.07487, i64 2
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !46
  br label %.loopexit

.preheader.split:                                 ; preds = %.preheader
  %i.bu = load i8, ptr %.07585, align 1, !tbaa !46
  %i.bv = zext i8 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bv, 65535
  %i.bx = load i8, ptr %.07487, align 1, !tbaa !46
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !153
  %i.cb = zext i16 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.cb, %i.bm
  %i.cd = add nuw nsw i32 %i.cc, %i.bw            ; 2 uses
  %i.ce = lshr i32 %i.cd, 15
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !153
  %i.ci = zext i16 %i.ch to i32
  %i.cj = and i32 %i.cd, 32767
  %i.ck = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.cf
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !46
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.cj, %i.cm
  %i.co = lshr i32 %i.cn, 12
  %i.cp = add nuw nsw i32 %i.co, %i.ci
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = trunc i32 %i.cq to i8
  store i8 %i.cr, ptr %.07487, align 1, !tbaa !46
  br i1 %exitcond.not, label %.loopexit, label %.preheader.split.1

.preheader.split.1:                               ; preds = %.preheader.split
  %i.cs = getelementptr inbounds nuw i8, ptr %.07585, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !46
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, 65535
  %i.cw = getelementptr inbounds nuw i8, ptr %.07487, i64 1 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !46
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !153
  %i.db = zext i16 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, %i.bm
  %i.dd = add nuw nsw i32 %i.dc, %i.cv            ; 2 uses
  %i.de = lshr i32 %i.dd, 15
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !153
  %i.di = zext i16 %i.dh to i32
  %i.dj = and i32 %i.dd, 32767
  %i.dk = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.df
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !46
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dj, %i.dm
  %i.do = lshr i32 %i.dn, 12
  %i.dp = add nuw nsw i32 %i.do, %i.di
  %i.dq = lshr i32 %i.dp, 8
  %i.dr = trunc i32 %i.dq to i8
  store i8 %i.dr, ptr %i.cw, align 1, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %.07585, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !46
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.du, 65535
  %i.dw = getelementptr inbounds nuw i8, ptr %.07487, i64 2 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !46
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !153
  %i.eb = zext i16 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.eb, %i.bm
  %i.ed = add nuw nsw i32 %i.ec, %i.dv            ; 2 uses
  %i.ee = lshr i32 %i.ed, 15
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !153
  %i.ei = zext i16 %i.eh to i32
  %i.ej = and i32 %i.ed, 32767
  %i.ek = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ef
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !46
  %i.em = zext i8 %i.el to i32
  %i.en = mul nuw nsw i32 %i.ej, %i.em
  %i.eo = lshr i32 %i.en, 12
  %i.ep = add nuw nsw i32 %i.eo, %i.ei
  %i.eq = lshr i32 %i.ep, 8
  %i.er = trunc i32 %i.eq to i8
  store i8 %i.er, ptr %i.dw, align 1, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split, %.preheader.split.1, %.preheader.split.us, %.preheader.split.us.1, %.lr.ph
  %i.es = getelementptr inbounds nuw i8, ptr %.07585, i64 %i.u
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %.07487, i64 %i.ba ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.bh
  br i1 %i.ev, label %.lr.ph, label %._crit_edge, !llvm.loop !200

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %i.ew = add i32 %.189, %.077                    ; 2 uses
  %i.ex = icmp ult i32 %i.ew, %i.g
  br i1 %i.ex, label %bb.i, label %.loopexit83, !llvm.loop !201

.loopexit83:                                      ; preds = %._crit_edge, %bb.h, %bb.f
  %i.ey = add nuw nsw i32 %.07392, 1              ; 2 uses
  %exitcond101.not = icmp eq i32 %i.ey, %.072
  br i1 %exitcond101.not, label %bb.j, label %bb.e, !llvm.loop !202

bb.j:                                             ; preds = %.loopexit83
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_image_read_background(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !138  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !137  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42   ; 2 uses
  %i.l = and i32 %i.k, 6291456
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.58) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = and i32 %i.k, 128
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.59) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = tail call zeroext i8 @png_get_channels(ptr noundef nonnull %i.c, ptr noundef %i.e) #13
  %.not197 = icmp eq i8 %i.o, 2
  br i1 %.not197, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.60) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !119
  %.fr236 = freeze i32 %i.q                       ; 4 uses
  %i.r = and i32 %.fr236, 1
  %i.s = and i32 %.fr236, 5
  %or.cond.not = icmp eq i32 %i.s, 1
  br i1 %or.cond.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.61) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 620 ; 4 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !41
  switch i8 %i.u, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.53) #14
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.j
  %.0173 = phi i32 [ 7, %bb.j ], [ 1, %bb.i ]     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.w = load i8, ptr %i.v, align 4, !tbaa !171
  switch i8 %i.w, label %bb.ap [
    i8 8, label %bb.m
    i8 16, label %bb.aa
  ]

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !173  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !174 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = zext i32 %i.i to i64                    ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.0234 = phi i32 [ 0, %bb.m ], [ %i.ev, %.loopexit ] ; 8 uses
  %i.ae = load i8, ptr %i.t, align 4, !tbaa !41
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ag = icmp samesign ugt i32 %.0234, 1
  %i.ah = sub nuw nsw i32 7, %.0234
  %i.ai = lshr i32 %i.ah, 1                       ; 2 uses
  %i.aj = select i1 %i.ag, i32 %i.ai, i32 3       ; 2 uses
  %notmask202 = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask202, -1
  %i.al = and i32 %.0234, 1                       ; 2 uses
  %i.am = add nuw nsw i32 %.0234, 1
  %i.an = lshr i32 %i.am, 1
  %i.ao = sub nsw i32 3, %i.an
  %i.ap = shl nuw nsw i32 %i.al, %i.ao
  %i.aq = and i32 %i.ap, 7                        ; 2 uses
  %i.ar = add i32 %i.i, %i.ak
  %i.as = sub i32 %i.ar, %i.aq
  %i.at = lshr i32 %i.as, %i.aj
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = shl nuw nsw i32 1, %i.ai
  %i.aw = xor i32 %i.al, 1
  %i.ax = lshr i32 %.0234, 1
  %i.ay = sub nsw i32 3, %i.ax
  %i.az = shl nuw nsw i32 %i.aw, %i.ay
  %i.ba = and i32 %i.az, 7
  %i.bb = icmp samesign ugt i32 %.0234, 2
  %i.bc = add nsw i32 %.0234, -1
  %i.bd = ashr i32 %i.bc, 1
  %i.be = lshr i32 8, %i.bd
  %i.bf = select i1 %i.bb, i32 %i.be, i32 8
  %i.bg = zext nneg i32 %i.aq to i64
  %i.bh = zext nneg i32 %i.av to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.0185 = phi i32 [ %i.ba, %bb.p ], [ 0, %bb.n ] ; 4 uses
  %.0184 = phi i32 [ %i.bf, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %.0183 = phi i64 [ %i.bh, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %.0182 = phi i64 [ %i.bg, %bb.p ], [ 0, %bb.n ] ; 4 uses
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !144 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.q
  %i.bk = icmp ult i32 %.0185, %i.g
  br i1 %i.bk, label %.lr.ph233.preheader, label %.loopexit

.lr.ph233.preheader:                              ; preds = %.preheader
  %i.bl = icmp samesign ult i64 %.0182, %i.ad
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %._crit_edge231
  %.1186232 = phi i32 [ %i.da, %._crit_edge231 ], [ %.0185, %.lr.ph233.preheader ] ; 2 uses
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !175 ; 2 uses
  %i.bn = zext i32 %.1186232 to i64
  %i.bo = mul nsw i64 %i.aa, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.y, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ad
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.bm, ptr noundef null)
  br i1 %i.bl, label %.lr.ph230.preheader, label %._crit_edge231

.lr.ph230.preheader:                              ; preds = %.lr.ph233
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.0182
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %bb.u
  %.0188228 = phi ptr [ %i.cx, %bb.u ], [ %i.bm, %.lr.ph230.preheader ] ; 3 uses
  %.0191227 = phi ptr [ %i.cy, %bb.u ], [ %i.br, %.lr.ph230.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0188228, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !46  ; 3 uses
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %.not205 = icmp eq i8 %i.bt, 0
  br i1 %.not205, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph230
  %i.bv = load i8, ptr %.0188228, align 1, !tbaa !46 ; 2 uses
  %.not206 = icmp eq i8 %i.bt, -1
  br i1 %.not206, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !153
  %i.bz = zext i16 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, %i.bu
  %i.cb = load i8, ptr %.0191227, align 1, !tbaa !46
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !153
  %i.cf = zext i16 %i.ce to i32
  %i.cg = xor i32 %i.bu, 255
  %i.ch = mul nuw nsw i32 %i.cg, %i.cf
  %i.ci = add nuw nsw i32 %i.ch, %i.ca            ; 2 uses
  %i.cj = lshr i32 %i.ci, 15
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !153
  %i.cn = zext i16 %i.cm to i32
  %i.co = and i32 %i.ci, 32767
  %i.cp = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ck
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !46
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.co, %i.cr
  %i.ct = lshr i32 %i.cs, 12
  %i.cu = add nuw nsw i32 %i.ct, %i.cn
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = trunc i32 %i.cv to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0192 = phi i8 [ %i.cw, %bb.s ], [ %i.bv, %bb.r ]
  store i8 %.0192, ptr %.0191227, align 1, !tbaa !46
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph230
  %i.cx = getelementptr inbounds nuw i8, ptr %.0188228, i64 2
  %i.cy = getelementptr inbounds nuw i8, ptr %.0191227, i64 %.0183 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.bq
  br i1 %i.cz, label %.lr.ph230, label %._crit_edge231, !llvm.loop !203

._crit_edge231:                                   ; preds = %bb.u, %.lr.ph233
  %i.da = add i32 %.1186232, %.0184               ; 2 uses
  %i.db = icmp ult i32 %i.da, %i.g
  br i1 %i.db, label %.lr.ph233, label %.loopexit, !llvm.loop !204

bb.v:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !145 ; 2 uses
  %i.de = icmp ult i32 %.0185, %i.g
  br i1 %i.de, label %.lr.ph226, label %.loopexit

.lr.ph226:                                        ; preds = %bb.v
  %i.df = zext i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !153
  %i.di = zext i16 %i.dh to i32
  %i.dj = icmp samesign ult i64 %.0182, %i.ad
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph226, %._crit_edge
  %.2224 = phi i32 [ %.0185, %.lr.ph226 ], [ %i.et, %._crit_edge ] ; 2 uses
  %i.dk = load ptr, ptr %i.ac, align 8, !tbaa !175 ; 2 uses
  %i.dl = zext i32 %.2224 to i64
  %i.dm = mul nsw i64 %i.aa, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.y, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ad
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.dk, ptr noundef null)
  br i1 %i.dj, label %.lr.ph223.preheader, label %._crit_edge

.lr.ph223.preheader:                              ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.0182
  br label %.lr.ph223

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %bb.z
  %.0189222 = phi ptr [ %i.er, %bb.z ], [ %i.dp, %.lr.ph223.preheader ] ; 2 uses
  %.0190221 = phi ptr [ %i.eq, %bb.z ], [ %i.dk, %.lr.ph223.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0190221, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !46  ; 3 uses
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %.not203 = icmp eq i8 %i.dr, 0
  br i1 %.not203, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph223
  %i.dt = load i8, ptr %.0190221, align 1, !tbaa !46 ; 2 uses
  %.not204 = icmp eq i8 %i.dr, -1
  br i1 %.not204, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !153
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, %i.ds
  %i.dz = xor i32 %i.ds, 255
  %i.ea = mul nuw nsw i32 %i.dz, %i.di
  %i.eb = add nuw nsw i32 %i.dy, %i.ea            ; 2 uses
  %i.ec = lshr i32 %i.eb, 15
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !153
  %i.eg = zext i16 %i.ef to i32
  %i.eh = and i32 %i.eb, 32767
  %i.ei = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ed
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !46
  %i.ek = zext i8 %i.ej to i32
  %i.el = mul nuw nsw i32 %i.eh, %i.ek
  %i.em = lshr i32 %i.el, 12
  %i.en = add nuw nsw i32 %i.em, %i.eg
  %i.eo = lshr i32 %i.en, 8
  %i.ep = trunc i32 %i.eo to i8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph223, %bb.x, %bb.y
  %storemerge = phi i8 [ %i.dt, %bb.x ], [ %i.ep, %bb.y ], [ %i.dd, %.lr.ph223 ]
  store i8 %storemerge, ptr %.0189222, align 1, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %.0190221, i64 2
  %i.er = getelementptr inbounds nuw i8, ptr %.0189222, i64 %.0183 ; 2 uses
  %i.es = icmp ult ptr %i.er, %i.do
  br i1 %i.es, label %.lr.ph223, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.z, %bb.w
  %i.et = add i32 %.2224, %.0184                  ; 2 uses
  %i.eu = icmp ult i32 %i.et, %i.g
  br i1 %i.eu, label %bb.w, label %.loopexit, !llvm.loop !206

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge231, %bb.v, %.preheader, %bb.o
  %i.ev = add nuw nsw i32 %.0234, 1               ; 2 uses
  %exitcond241.not = icmp eq i32 %i.ev, %.0173
  br i1 %exitcond241.not, label %.loopexit211, label %bb.n, !llvm.loop !207

bb.aa:                                            ; preds = %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !173 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !174
  %i.fa = sdiv i64 %i.ez, 2                       ; 2 uses
  %i.fb = trunc i32 %.fr236 to i1
  %i.fc = add nuw nsw i32 %i.r, 1                 ; 7 uses
  %i.fd = and i32 %.fr236, 33
  %or.cond208.not = icmp eq i32 %i.fd, 33         ; 2 uses
  %1 = mul i32 %i.fc, %i.i
  %i.fe = zext i32 %1 to i64                      ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fg = zext i1 %or.cond208.not to i64          ; 2 uses
  %i.fh = xor i1 %or.cond208.not, true
  %i.fi = zext i1 %i.fh to i64
  br i1 %i.fb, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.aa, %.loopexit212.us
  %.1219.us = phi i32 [ %i.gn, %.loopexit212.us ], [ 0, %bb.aa ] ; 8 uses
  %i.fj = load i8, ptr %i.t, align 4, !tbaa !41
  %i.fk = icmp eq i8 %i.fj, 1
  br i1 %i.fk, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.split.us
  %i.fl = icmp samesign ugt i32 %.1219.us, 1
  %i.fm = sub nuw nsw i32 7, %.1219.us
  %i.fn = lshr i32 %i.fm, 1                       ; 2 uses
  %i.fo = select i1 %i.fl, i32 %i.fn, i32 3       ; 2 uses
  %notmask.us = shl nsw i32 -1, %i.fo
  %i.fp = xor i32 %notmask.us, -1
  %i.fq = and i32 %.1219.us, 1                    ; 2 uses
  %i.fr = add nuw nsw i32 %.1219.us, 1
  %i.fs = lshr i32 %i.fr, 1
  %i.ft = sub nsw i32 3, %i.fs
  %i.fu = shl nuw nsw i32 %i.fq, %i.ft
  %i.fv = and i32 %i.fu, 7                        ; 2 uses
  %i.fw = add i32 %i.i, %i.fp
  %i.fx = sub i32 %i.fw, %i.fv
  %i.fy = lshr i32 %i.fx, %i.fo
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.loopexit212.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %2 = mul nuw nsw i32 %i.fv, %i.fc
  %i.ga = shl nuw nsw i32 %i.fc, %i.fn
  %i.gb = xor i32 %i.fq, 1
  %i.gc = lshr i32 %.1219.us, 1
  %i.gd = sub nsw i32 3, %i.gc
  %i.ge = shl nuw nsw i32 %i.gb, %i.gd
  %i.gf = and i32 %i.ge, 7
  %i.gg = icmp samesign ugt i32 %.1219.us, 2
  %i.gh = add nsw i32 %.1219.us, -1
  %i.gi = ashr i32 %i.gh, 1
  %i.gj = lshr i32 8, %i.gi
  %i.gk = select i1 %i.gg, i32 %i.gj, i32 8
  %i.gl = zext nneg i32 %2 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us
  %.0180.us = phi i64 [ %i.gl, %bb.ac ], [ 0, %.split.us ] ; 2 uses
  %.0179.us = phi i32 [ %i.ga, %bb.ac ], [ %i.fc, %.split.us ]
  %.0178.us = phi i32 [ %i.gk, %bb.ac ], [ 1, %.split.us ]
  %.0176.us = phi i32 [ %i.gf, %bb.ac ], [ 0, %.split.us ] ; 2 uses
  %i.gm = icmp ult i32 %.0176.us, %i.g
  br i1 %i.gm, label %.lr.ph218.us, label %.loopexit212.us

.loopexit212.us:                                  ; preds = %._crit_edge.split.us.us.us, %bb.ad, %bb.ab
  %i.gn = add nuw nsw i32 %.1219.us, 1            ; 2 uses
  %exitcond240.not = icmp eq i32 %i.gn, %.0173
  br i1 %exitcond240.not, label %.loopexit211, label %.split.us, !llvm.loop !208

.lr.ph218.us:                                     ; preds = %bb.ad
  %i.go = zext nneg i32 %.0179.us to i64
  %.pre242 = load ptr, ptr %i.ff, align 8, !tbaa !175
  %i.gp = icmp samesign ult i64 %.0180.us, %i.fe
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.split.us.us.us, %.lr.ph218.us
  %i.gq = phi ptr [ %.pre242, %.lr.ph218.us ], [ %i.gv, %._crit_edge.split.us.us.us ]
  %.1177216.us.us = phi i32 [ %.0176.us, %.lr.ph218.us ], [ %i.gx, %._crit_edge.split.us.us.us ] ; 2 uses
  %i.gr = zext i32 %.1177216.us.us to i64
  %i.gs = mul nsw i64 %i.fa, %i.gr
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.gs ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.fe
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.gq, ptr noundef null)
  %i.gv = load ptr, ptr %i.ff, align 8, !tbaa !175 ; 2 uses
  br i1 %i.gp, label %.lr.ph.us.us.preheader, label %._crit_edge.split.us.us.us

.lr.ph.us.us.preheader:                           ; preds = %bb.ae
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %.0180.us
  br label %.lr.ph.us.us

._crit_edge.split.us.us.us:                       ; preds = %bb.ah, %bb.ae
  %i.gx = add i32 %.1177216.us.us, %.0178.us      ; 2 uses
  %i.gy = icmp ult i32 %i.gx, %i.g
  br i1 %i.gy, label %bb.ae, label %.loopexit212.us, !llvm.loop !209

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.ah
  %.0174215.us.us.us = phi ptr [ %i.hl, %bb.ah ], [ %i.gw, %.lr.ph.us.us.preheader ] ; 3 uses
  %.0175214.us.us.us = phi ptr [ %i.hk, %bb.ah ], [ %i.gv, %.lr.ph.us.us.preheader ] ; 3 uses
  %i.gz = load i16, ptr %.0175214.us.us.us, align 2, !tbaa !153 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0175214.us.us.us, i64 2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !153 ; 3 uses
  switch i16 %i.hb, label %bb.ag [
    i16 0, label %bb.af
    i16 -1, label %bb.ah
  ]

bb.af:                                            ; preds = %.lr.ph.us.us
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.us.us
  %i.hc = zext i16 %i.hb to i32
  %i.hd = zext i16 %i.gz to i32
  %i.he = mul nuw i32 %i.hc, %i.hd
  %i.hf = add nuw i32 %i.he, 32767
  %i.hg = udiv i32 %i.hf, 65535
  %i.hh = trunc nuw i32 %i.hg to i16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph.us.us
  %.0172.us.us.us = phi i16 [ %i.hh, %bb.ag ], [ %i.gz, %.lr.ph.us.us ], [ 0, %bb.af ]
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.0174215.us.us.us, i64 %i.fg
  store i16 %.0172.us.us.us, ptr %i.hi, align 2, !tbaa !153
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.0174215.us.us.us, i64 %i.fi
  store i16 %i.hb, ptr %i.hj, align 2, !tbaa !153
  %i.hk = getelementptr inbounds nuw i8, ptr %.0175214.us.us.us, i64 4
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %.0174215.us.us.us, i64 %i.go ; 2 uses
  %i.hm = icmp ult ptr %i.hl, %i.gu
  br i1 %i.hm, label %.lr.ph.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !210

.split:                                           ; preds = %bb.aa, %.loopexit212
  %.1219 = phi i32 [ %i.jp, %.loopexit212 ], [ 0, %bb.aa ] ; 8 uses
  %i.hn = load i8, ptr %i.t, align 4, !tbaa !41
  %i.ho = icmp eq i8 %i.hn, 1
  br i1 %i.ho, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.split
  %i.hp = icmp samesign ugt i32 %.1219, 1
  %i.hq = sub nuw nsw i32 7, %.1219
  %i.hr = lshr i32 %i.hq, 1                       ; 2 uses
  %i.hs = select i1 %i.hp, i32 %i.hr, i32 3       ; 2 uses
  %notmask = shl nsw i32 -1, %i.hs
  %i.ht = xor i32 %notmask, -1
  %i.hu = and i32 %.1219, 1                       ; 2 uses
  %i.hv = add nuw nsw i32 %.1219, 1
  %i.hw = lshr i32 %i.hv, 1
  %i.hx = sub nsw i32 3, %i.hw
  %i.hy = shl nuw nsw i32 %i.hu, %i.hx
  %i.hz = and i32 %i.hy, 7                        ; 2 uses
  %i.ia = add i32 %i.i, %i.ht
  %i.ib = sub i32 %i.ia, %i.hz
  %i.ic = lshr i32 %i.ib, %i.hs
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %.loopexit212, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %3 = mul nuw nsw i32 %i.hz, %i.fc
  %i.ie = shl nuw nsw i32 %i.fc, %i.hr
  %i.if = xor i32 %i.hu, 1
  %i.ig = lshr i32 %.1219, 1
  %i.ih = sub nsw i32 3, %i.ig
  %i.ii = shl nuw nsw i32 %i.if, %i.ih
  %i.ij = and i32 %i.ii, 7
  %i.ik = icmp samesign ugt i32 %.1219, 2
  %i.il = add nsw i32 %.1219, -1
  %i.im = ashr i32 %i.il, 1
  %i.in = lshr i32 8, %i.im
  %i.io = select i1 %i.ik, i32 %i.in, i32 8
  %i.ip = zext nneg i32 %3 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.split, %bb.aj
  %.0180 = phi i64 [ %i.ip, %bb.aj ], [ 0, %.split ] ; 2 uses
  %.0179 = phi i32 [ %i.ie, %bb.aj ], [ %i.fc, %.split ]
  %.0178 = phi i32 [ %i.io, %bb.aj ], [ 1, %.split ]
  %.0176 = phi i32 [ %i.ij, %bb.aj ], [ 0, %.split ] ; 2 uses
  %i.iq = icmp ult i32 %.0176, %i.g
  br i1 %i.iq, label %.lr.ph218, label %.loopexit212

.lr.ph218:                                        ; preds = %bb.ak
  %i.ir = zext nneg i32 %.0179 to i64
  %.pre = load ptr, ptr %i.ff, align 8, !tbaa !175
  %i.is = icmp samesign ult i64 %.0180, %i.fe
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph218, %._crit_edge.split
  %i.it = phi ptr [ %.pre, %.lr.ph218 ], [ %i.iy, %._crit_edge.split ]
  %.1177216 = phi i32 [ %.0176, %.lr.ph218 ], [ %i.jn, %._crit_edge.split ] ; 2 uses
  %i.iu = zext i32 %.1177216 to i64
  %i.iv = mul nsw i64 %i.fa, %i.iu
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %i.fe
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.it, ptr noundef null)
  %i.iy = load ptr, ptr %i.ff, align 8, !tbaa !175 ; 2 uses
  br i1 %i.is, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.al
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %.0180
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %.0174215 = phi ptr [ %i.jl, %bb.ao ], [ %i.iz, %.lr.ph.preheader ] ; 2 uses
  %.0175214 = phi ptr [ %i.jk, %bb.ao ], [ %i.iy, %.lr.ph.preheader ] ; 3 uses
  %i.ja = load i16, ptr %.0175214, align 2, !tbaa !153 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0175214, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !153 ; 2 uses
  switch i16 %i.jc, label %bb.am [
    i16 0, label %bb.an
    i16 -1, label %bb.ao
  ]

bb.am:                                            ; preds = %.lr.ph
  %i.jd = zext i16 %i.jc to i32
  %i.je = zext i16 %i.ja to i32
  %i.jf = mul nuw i32 %i.jd, %i.je
  %i.jg = add nuw i32 %i.jf, 32767
  %i.jh = udiv i32 %i.jg, 65535
  %i.ji = trunc nuw i32 %i.jh to i16
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.am, %bb.an
  %.0172 = phi i16 [ %i.ji, %bb.am ], [ %i.ja, %.lr.ph ], [ 0, %bb.an ]
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %.0174215, i64 %i.fg
  store i16 %.0172, ptr %i.jj, align 2, !tbaa !153
  %i.jk = getelementptr inbounds nuw i8, ptr %.0175214, i64 4
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.0174215, i64 %i.ir ; 2 uses
  %i.jm = icmp ult ptr %i.jl, %i.ix
  br i1 %i.jm, label %.lr.ph, label %._crit_edge.split, !llvm.loop !210

._crit_edge.split:                                ; preds = %bb.ao, %bb.al
  %i.jn = add i32 %.1177216, %.0178               ; 2 uses
  %i.jo = icmp ult i32 %i.jn, %i.g
  br i1 %i.jo, label %bb.al, label %.loopexit212, !llvm.loop !209

.loopexit212:                                     ; preds = %._crit_edge.split, %bb.ak, %bb.ai
  %i.jp = add nuw nsw i32 %.1219, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.jp, %.0173
  br i1 %exitcond.not, label %.loopexit211, label %.split, !llvm.loop !208

bb.ap:                                            ; preds = %bb.l
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.62) #14
  unreachable

.loopexit211:                                     ; preds = %.loopexit212, %.loopexit212.us, %.loopexit
  ret i32 1
}

declare zeroext i8 @png_get_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 300}
!8 = !{!"png_struct_def", !5, i64 0, !9, i64 200, !10, i64 208, !11, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !5, i64 296, !5, i64 297, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !12, i64 320, !15, i64 432, !4, i64 440, !4, i64 444, !4, i64 448, !4, i64 452, !4, i64 456, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !4, i64 480, !4, i64 484, !4, i64 488, !4, i64 492, !4, i64 496, !4, i64 500, !4, i64 504, !4, i64 508, !4, i64 512, !4, i64 516, !4, i64 520, !11, i64 528, !4, i64 536, !4, i64 540, !4, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !11, i64 584, !4, i64 592, !4, i64 596, !16, i64 600, !17, i64 608, !4, i64 612, !17, i64 616, !5, i64 618, !5, i64 619, !5, i64 620, !5, i64 621, !5, i64 622, !5, i64 623, !5, i64 624, !5, i64 625, !5, i64 626, !5, i64 627, !5, i64 628, !5, i64 629, !5, i64 630, !5, i64 631, !5, i64 632, !17, i64 634, !5, i64 636, !4, i64 640, !18, i64 644, !18, i64 654, !9, i64 664, !4, i64 672, !4, i64 676, !19, i64 680, !4, i64 712, !4, i64 716, !4, i64 720, !4, i64 724, !4, i64 728, !13, i64 736, !20, i64 744, !13, i64 752, !13, i64 760, !20, i64 768, !20, i64 776, !22, i64 784, !22, i64 789, !13, i64 800, !18, i64 808, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !4, i64 896, !4, i64 900, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !4, i64 936, !4, i64 940, !13, i64 944, !13, i64 952, !4, i64 960, !5, i64 964, !4, i64 996, !9, i64 1000, !9, i64 1008, !4, i64 1016, !4, i64 1020, !13, i64 1024, !5, i64 1032, !5, i64 1033, !17, i64 1034, !17, i64 1036, !13, i64 1040, !4, i64 1048, !5, i64 1052, !9, i64 1056, !9, i64 1064, !9, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !5, i64 1112, !4, i64 1116, !4, i64 1120, !4, i64 1124, !11, i64 1128, !23, i64 1136, !11, i64 1168, !13, i64 1176, !11, i64 1184, !4, i64 1192, !4, i64 1196, !13, i64 1200, !5, i64 1208}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13__jmp_buf_tag", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"z_stream_s", !13, i64 0, !4, i64 8, !11, i64 16, !13, i64 24, !4, i64 32, !11, i64 40, !13, i64 48, !14, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !4, i64 88, !11, i64 96, !11, i64 104}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!15 = !{!"p1 _ZTS22png_compression_buffer", !9, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"png_color_16_struct", !5, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8}
!19 = !{!"png_xy", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!20 = !{!"p2 short", !21, i64 0}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"png_color_8_struct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!23 = !{!"png_unknown_chunk_t", !5, i64 0, !13, i64 8, !11, i64 16, !5, i64 24}
!24 = !{!8, !4, i64 1192}
!25 = !{!8, !4, i64 304}
!26 = !{!8, !4, i64 544}
!27 = !{!8, !5, i64 623}
!28 = !{!8, !4, i64 592}
!29 = !{!8, !4, i64 536}
!30 = !{!31, !4, i64 0}
!31 = !{!"png_row_info_struct", !4, i64 0, !11, i64 8, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19}
!32 = !{!31, !5, i64 16}
!33 = !{!8, !5, i64 624}
!34 = !{!31, !5, i64 17}
!35 = !{!8, !5, i64 627}
!36 = !{!31, !5, i64 18}
!37 = !{!8, !5, i64 626}
!38 = !{!31, !5, i64 19}
!39 = !{!31, !11, i64 8}
!40 = !{!8, !4, i64 540}
!41 = !{!8, !5, i64 620}
!42 = !{!8, !4, i64 308}
!43 = !{!8, !5, i64 621}
!44 = !{!8, !4, i64 508}
!45 = !{!8, !13, i64 560}
!46 = !{!5, !5, i64 0}
!47 = !{!8, !13, i64 552}
!48 = !{!8, !4, i64 1048}
!49 = !{!8, !5, i64 1052}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!8, !4, i64 612}
!54 = !{!8, !5, i64 631}
!55 = !{!8, !5, i64 630}
!56 = !{!8, !9, i64 824}
!57 = !{!13, !13, i64 0}
!58 = distinct !{!58, !51}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
!61 = !{!62}
!62 = distinct !{!62, !63, !"png_start_read_image: argument 0"}
!63 = distinct !{!63, !"png_start_read_image"}
!64 = !{!8, !4, i64 512}
!65 = !{!8, !4, i64 516}
!66 = distinct !{!66, !51}
!67 = distinct !{!67, !51}
!68 = !{!8, !17, i64 608}
!69 = distinct !{!69, !51}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 _ZTS14png_struct_def", !9, i64 0}
!72 = !{!8, !13, i64 1080}
!73 = !{!74}
!74 = distinct !{!74, !75, !"png_read_destroy: argument 0"}
!75 = distinct !{!75, !"png_read_destroy"}
!76 = !{!8, !13, i64 1200}
!77 = !{!8, !13, i64 1176}
!78 = !{!8, !13, i64 944}
!79 = !{!8, !13, i64 952}
!80 = !{!8, !4, i64 996}
!81 = !{!8, !16, i64 600}
!82 = !{!8, !13, i64 800}
!83 = !{!8, !13, i64 872}
!84 = !{!8, !13, i64 1144}
!85 = !{!8, !13, i64 1024}
!86 = !{!8, !13, i64 1040}
!87 = !{!88, !4, i64 4}
!88 = !{!"png_info_def", !4, i64 0, !4, i64 4, !4, i64 8, !11, i64 16, !16, i64 24, !17, i64 32, !17, i64 34, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !5, i64 52, !5, i64 53, !5, i64 54, !5, i64 55, !13, i64 56, !13, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !17, i64 84, !17, i64 86, !17, i64 88, !17, i64 90, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !89, i64 120, !90, i64 128, !22, i64 136, !13, i64 144, !18, i64 152, !18, i64 162, !4, i64 172, !4, i64 176, !5, i64 180, !4, i64 184, !4, i64 188, !5, i64 192, !4, i64 196, !13, i64 200, !91, i64 208, !13, i64 216, !4, i64 224, !4, i64 228, !13, i64 232, !92, i64 240, !5, i64 248, !5, i64 249, !4, i64 252, !93, i64 256, !4, i64 264, !94, i64 272, !4, i64 280, !5, i64 284, !13, i64 288, !13, i64 296, !92, i64 304, !19, i64 312, !4, i64 344, !4, i64 348}
!89 = !{!"p1 _ZTS15png_text_struct", !9, i64 0}
!90 = !{!"png_time_struct", !17, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6}
!91 = !{!"p1 short", !9, i64 0}
!92 = !{!"p2 omnipotent char", !21, i64 0}
!93 = !{!"p1 _ZTS19png_unknown_chunk_t", !9, i64 0}
!94 = !{!"p1 _ZTS15png_sPLT_struct", !9, i64 0}
!95 = !{!88, !4, i64 8}
!96 = !{!97}
!97 = distinct !{!97, !98, !"png_read_update_info: argument 0"}
!98 = distinct !{!98, !"png_read_update_info"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"png_read_update_info: argument 1"}
!101 = !{!88, !92, i64 304}
!102 = !{!88, !4, i64 252}
!103 = !{!88, !11, i64 16}
!104 = distinct !{!104, !51}
!105 = !{!106, !4, i64 8}
!106 = !{!"", !107, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !5, i64 36}
!107 = !{!"p1 _ZTS11png_control", !9, i64 0}
!108 = !{!106, !107, i64 0}
!109 = !{!110, !71, i64 0}
!110 = !{!"png_control", !71, i64 0, !111, i64 8, !9, i64 16, !13, i64 24, !11, i64 32, !4, i64 40, !4, i64 40}
!111 = !{!"p1 _ZTS12png_info_def", !9, i64 0}
!112 = !{!8, !9, i64 264}
!113 = !{!111, !111, i64 0}
!114 = !{!110, !111, i64 8}
!115 = !{!116}
!116 = distinct !{!116, !117, !"png_image_format: argument 0"}
!117 = distinct !{!117, !"png_image_format"}
!118 = !{!8, !17, i64 616}
!119 = !{!106, !4, i64 20}
!120 = !{!8, !4, i64 504}
!121 = !{!122}
!122 = distinct !{!122, !123, !"png_image_is_not_sRGB: argument 0"}
!123 = distinct !{!123, !"png_image_is_not_sRGB"}
!124 = !{!19, !4, i64 24}
!125 = !{!19, !4, i64 28}
!126 = !{!19, !4, i64 0}
!127 = !{!19, !4, i64 4}
!128 = !{!19, !4, i64 8}
!129 = !{!19, !4, i64 12}
!130 = !{!19, !4, i64 16}
!131 = !{!19, !4, i64 20}
!132 = !{!106, !4, i64 24}
!133 = !{!106, !4, i64 28}
!134 = !{!110, !13, i64 24}
!135 = !{!110, !11, i64 32}
!136 = !{!8, !9, i64 256}
!137 = !{!106, !4, i64 12}
!138 = !{!106, !4, i64 16}
!139 = !{!140, !9, i64 0}
!140 = !{!"", !9, i64 0, !9, i64 8, !4, i64 16, !9, i64 24, !16, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !4, i64 64, !4, i64 68, !4, i64 72}
!141 = !{!140, !9, i64 8}
!142 = !{!140, !4, i64 16}
!143 = !{!140, !9, i64 24}
!144 = !{!140, !16, i64 32}
!145 = !{!146, !5, i64 1}
!146 = !{!"png_color_struct", !5, i64 0, !5, i64 1, !5, i64 2}
!147 = !{!146, !5, i64 0}
!148 = !{!146, !5, i64 2}
!149 = !{!8, !4, i64 728}
!150 = !{!8, !17, i64 816}
!151 = distinct !{!151, !51}
!152 = distinct !{!152, !51}
!153 = !{!17, !17, i64 0}
!154 = !{!18, !5, i64 0}
!155 = distinct !{!155, !51}
!156 = distinct !{!156, !51}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !51}
!159 = !{!18, !17, i64 2}
!160 = !{!18, !17, i64 4}
!161 = !{!18, !17, i64 8}
!162 = !{!18, !17, i64 6}
!163 = distinct !{!163, !51}
!164 = !{!140, !4, i64 72}
!165 = !{!166}
!166 = distinct !{!166, !167, !"png_read_update_info: argument 0"}
!167 = distinct !{!167, !"png_read_update_info"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"png_read_update_info: argument 1"}
!170 = !{!88, !5, i64 37}
!171 = !{!88, !5, i64 36}
!172 = !{!8, !4, i64 716}
!173 = !{!140, !9, i64 48}
!174 = !{!140, !11, i64 56}
!175 = !{!140, !9, i64 40}
!176 = distinct !{!176, !51, !177}
!177 = !{!"llvm.loop.unswitch.partial.disable"}
!178 = distinct !{!178, !51}
!179 = !{!180}
!180 = distinct !{!180, !181, !"png_image_format: argument 0"}
!181 = distinct !{!181, !"png_image_format"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"png_read_update_info: argument 0"}
!184 = distinct !{!184, !"png_read_update_info"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"png_read_update_info: argument 1"}
!187 = distinct !{!187, !51, !177}
!188 = distinct !{!188, !51}
!189 = !{!140, !4, i64 64}
!190 = !{!140, !4, i64 68}
end_hunk_1
