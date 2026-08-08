inline.NumInlined: 445
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tng_output_file_endianness_get:bb.a
bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !144
  %i.g = sext i8 %i.f to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.014 = phi i32 [ %i.g, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205  ; 3 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %i.i, @tng_swap_byte_order_big_endian_64
  br i1 %i.j, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp eq ptr %i.i, @tng_swap_byte_order_little_endian_64
  br i1 %i.k, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.m = load i8, ptr %i.l, align 1, !tbaa !145
  %i.n = sext i8 %i.m to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.0 = phi i32 [ %i.n, %bb.h ], [ 0, %bb.f ], [ 1, %bb.g ]
  %.not19 = icmp eq i32 %.014, %.0
  %switch = icmp ult i32 %.014, 2
  %or.cond = and i1 %switch, %.not19
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %.014, ptr %1, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.c, %bb.j
  %.015 = phi i32 [ 1, %bb.g ], [ 0, %bb.j ], [ 1, %bb.i ], [ 1, %bb.c ]
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @tng_swap_byte_order_big_endian_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !144
  switch i8 %i.b, label %bb.d [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !20
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %i.d, ptr %1, align 4, !tbaa !20
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !20     ; 2 uses
  %i.f = tail call i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 16)
  store i32 %i.f, ptr %1, align 4, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @tng_swap_byte_order_little_endian_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !144
  switch i8 %i.b, label %bb.d [
    i8 1, label %bb.e
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !20     ; 2 uses
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 16711935
  %i.f = shl i32 %i.c, 8
  %i.g = and i32 %i.f, -16711936
  %i.h = or disjoint i32 %i.e, %i.g
  store i32 %i.h, ptr %1, align 4, !tbaa !20
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %1, align 4, !tbaa !20
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  store i32 %i.j, ptr %1, align 4, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @tng_swap_byte_order_big_endian_64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.b = load i8, ptr %i.a, align 1, !tbaa !145
  switch i8 %i.b, label %bb.f [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !40
  %i.d = tail call i64 @llvm.bswap.i64(i64 %i.c)
  store i64 %i.d, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 32)
  store i64 %i.f, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.h = lshr i64 %i.g, 16
  %i.i = and i64 %i.h, 281470681808895
  %i.j = shl i64 %i.g, 16
  %i.k = and i64 %i.j, -281470681808896
  %i.l = or disjoint i64 %i.i, %i.k
  store i64 %i.l, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.n = lshr i64 %i.m, 8
  %i.o = and i64 %i.n, 71777214294589695
  %i.p = shl i64 %i.m, 8
  %i.q = and i64 %i.p, -71777214294589696
  %i.r = or disjoint i64 %i.o, %i.q
  store i64 %i.r, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @tng_swap_byte_order_little_endian_64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.b = load i8, ptr %i.a, align 1, !tbaa !145
  switch i8 %i.b, label %bb.f [
    i8 1, label %bb.g
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !40
  %i.d = insertelement <4 x i64> poison, i64 %i.c, i64 0
  %i.e = shufflevector <4 x i64> %i.d, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.f = lshr <4 x i64> %i.e, <i64 24, i64 8, i64 8, i64 24>
  %i.g = shl <4 x i64> %i.e, <i64 24, i64 8, i64 8, i64 24>
  %i.h = shufflevector <4 x i64> %i.f, <4 x i64> %i.g, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.i = and <4 x i64> %i.h, <i64 1095216660735, i64 280375465148160, i64 71776119077928960, i64 -72057589759737856>
  %i.j = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.i)
  store i64 %i.j, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %1, align 8, !tbaa !40
  %i.l = insertelement <4 x i64> poison, i64 %i.k, i64 0
  %i.m = shufflevector <4 x i64> %i.l, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.n = lshr <4 x i64> %i.m, <i64 40, i64 24, i64 24, i64 40>
  %i.o = shl <4 x i64> %i.m, <i64 40, i64 24, i64 24, i64 40>
  %i.p = shufflevector <4 x i64> %i.n, <4 x i64> %i.o, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.q = and <4 x i64> %i.p, <i64 16711935, i64 4278255360, i64 71777214277877760, i64 -71777218572845056>
  %i.r = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.q)
  store i64 %i.r, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.s = load i64, ptr %1, align 8, !tbaa !40
  %2 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %3 = shufflevector <4 x i64> %2, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = lshr <4 x i64> %3, <i64 16, i64 16, i64 48, i64 48>
  %5 = shl <4 x i64> %3, <i64 16, i64 16, i64 48, i64 48>
  %6 = shufflevector <4 x i64> %4, <4 x i64> %5, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %7 = and <4 x i64> %6, <i64 4294901760, i64 281470681743360, i64 -1, i64 -1>
  %8 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %7)
  store i64 %8, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.t = load i64, ptr %1, align 8, !tbaa !40
  %i.u = tail call i64 @llvm.bswap.i64(i64 %i.t)
  store i64 %i.u, ptr %1, align 8, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @tng_output_file_endianness_set(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.c = tail call i64 @ftello64(ptr noundef %i.b)
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.d [
    i32 0, label %.sink.split
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink22 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %tng_swap_byte_order_little_endian_32.sink = phi ptr [ @tng_swap_byte_order_little_endian_32, %bb.c ], [ @tng_swap_byte_order_big_endian_32, %bb.b ]
  %tng_swap_byte_order_little_endian_64.sink = phi ptr [ @tng_swap_byte_order_little_endian_64, %bb.c ], [ @tng_swap_byte_order_big_endian_64, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !144
  %i.g = icmp eq i8 %i.f, %.sink22
  %spec.select16 = select i1 %i.g, ptr null, ptr %tng_swap_byte_order_little_endian_32.sink
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %spec.select16, ptr %i.h, align 8, !tbaa !204
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.j = load i8, ptr %i.i, align 1, !tbaa !145
  %i.k = icmp eq i8 %i.j, %.sink22
  %.tng_swap_byte_order_little_endian_64 = select i1 %i.k, ptr null, ptr %tng_swap_byte_order_little_endian_64.sink
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.tng_swap_byte_order_little_endian_64, ptr %i.l, align 8, !tbaa !205
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftello64(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @tng_first_program_name_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = add nsw i32 %2, -1                       ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = tail call ptr @strncpy(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.d) #27 ; 0 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28
  %i.i = zext i32 %i.c to i64
  %i.j = icmp ugt i64 %i.h, %i.i
  %. = zext i1 %i.j to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @tng_first_program_name_set(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = add i64 %i.a, 1
  %i.c = tail call noundef range(i64 0, 1025) i64 @llvm.umin.i64(i64 %i.b, i64 1024) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #28
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #27
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.c) #29 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !151
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 9164) #30 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %.thread
  %i.k = phi ptr [ %i.h, %.thread ], [ %i.e, %bb.b ]
  %i.l = tail call ptr @strncpy(ptr noundef nonnull %i.k, ptr noundef nonnull %1, i64 noundef %i.c) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ 2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @tng_last_program_name_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.c = add nsw i32 %2, -1                       ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = tail call ptr @strncpy(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.d) #27 ; 0 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28
  %i.i = zext i32 %i.c to i64
  %i.j = icmp ugt i64 %i.h, %i.i
  %. = zext i1 %i.j to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @tng_last_program_name_set(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = add i64 %i.a, 1
  %i.c = tail call noundef range(i64 0, 1025) i64 @llvm.umin.i64(i64 %i.b, i64 1024) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152  ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #28
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #27
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.c) #29 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !152
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 9211) #30 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %.thread
  %i.k = phi ptr [ %i.h, %.thread ], [ %i.e, %bb.b ]
  %i.l = tail call ptr @strncpy(ptr noundef nonnull %i.k, ptr noundef nonnull %1, i64 noundef %i.c) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ 2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @tng_first_user_name_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.c = add nsw i32 %2, -1                       ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = tail call ptr @strncpy(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.d) #27 ; 0 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28
  %i.i = zext i32 %i.c to i64
  %i.j = icmp ugt i64 %i.h, %i.i
  %. = zext i1 %i.j to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @tng_first_user_name_set(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
end_hunk_0
