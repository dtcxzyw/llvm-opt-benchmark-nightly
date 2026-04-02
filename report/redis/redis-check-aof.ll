begin_hunk_0
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Cannot open file %s: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Cannot stat file: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Cannot read file: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"%s %s is valid\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"%s %s is empty\0A\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.e, label %bb.a, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = sext i8 %i.b to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = sext i8 %i.h to i32
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.1, i32 noundef %i.f, i32 noundef %i.i) #14 ; 0 uses
  %i.k = load i64, ptr @epos, align 8, !tbaa !14
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.k, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.b

bb.a:                                             ; preds = %.tail
end_hunk_1
begin_hunk_2
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.e = tail call i64 @ftello64(ptr noundef %0)
  store i64 %i.e, ptr @epos, align 8, !tbaa !14
  %i.f = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 128, ptr noundef %0)
end_hunk_2
begin_hunk_3

bb.c:                                             ; preds = %bb.b
  %i.i = sext i8 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.j = sext i8 %i.h to i32
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.3, i32 noundef %i.i, i32 noundef %i.j) #14 ; 0 uses
  %i.l = load i64, ptr @epos, align 8, !tbaa !14
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.l, ptr noundef nonnull %i.d) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %consumeNewline.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.o = call i64 @__isoc23_strtol(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c, i32 noundef 10) #14
  store i64 %i.o, ptr %2, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
end_hunk_3
begin_hunk_4
  br i1 %or.cond, label %bb.e, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.u = sext i8 %i.q to i32
  %i.v = sext i8 %i.s to i32
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.1, i32 noundef %i.u, i32 noundef %i.v) #14 ; 0 uses
  %i.x = load i64, ptr @epos, align 8, !tbaa !14
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.x, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %consumeNewline.exit

bb.e:                                             ; preds = %bb.d
end_hunk_4
begin_hunk_5

consumeNewline.exit:                              ; preds = %bb.e, %.tail.thread.i, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %.tail.thread.i ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.0
}

end_hunk_5
begin_hunk_6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.4, i64 noundef %2, i64 noundef %i.c) #14 ; 0 uses
  %i.e = load i64, ptr @epos, align 8, !tbaa !14
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.e, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_6
begin_hunk_7
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %1, align 8, !tbaa !18
  %i.e = call i32 @readLong(ptr noundef %0, i8 noundef signext 36, ptr noundef nonnull %i.c)
  %.not = icmp eq i32 %i.e, 0
end_hunk_7
begin_hunk_8
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.5, i64 noundef %i.f) #14 ; 0 uses
  %i.h = load i64, ptr @epos, align 8, !tbaa !14
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.h, ptr noundef nonnull %i.d) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %i.f, 2                  ; 4 uses
  %i.k = tail call noalias ptr @zmalloc(i64 noundef %i.j) #15 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !18
  %i.l = tail call i64 @ftello64(ptr noundef %0)
  store i64 %i.l, ptr @epos, align 8, !tbaa !14
end_hunk_8
begin_hunk_9
  br i1 %.not.i, label %readBytes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.4, i64 noundef %i.j, i64 noundef %i.m) #14 ; 0 uses
  %i.o = load i64, ptr @epos, align 8, !tbaa !14
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.o, ptr noundef nonnull %i.b) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.q = load ptr, ptr %1, align 8, !tbaa !18
  call void @zfree(ptr noundef %i.q) #14
  store ptr null, ptr %1, align 8, !tbaa !18
  br label %bb.g

end_hunk_9
begin_hunk_10
  br i1 %or.cond24, label %bb.f, label %readBytes.exit._crit_edge

readBytes.exit._crit_edge:                        ; preds = %readBytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.x = sext i8 %i.t to i32
  %i.y = sext i8 %i.v to i32
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.1, i32 noundef %i.x, i32 noundef %i.y) #14 ; 0 uses
  %i.aa = load i64, ptr @epos, align 8, !tbaa !14
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.aa, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ac = load ptr, ptr %1, align 8, !tbaa !18
  call void @zfree(ptr noundef %i.ac) #14
  store ptr null, ptr %1, align 8, !tbaa !18
  br label %bb.g

end_hunk_10
begin_hunk_11

bb.g:                                             ; preds = %bb.a, %bb.f, %readBytes.exit._crit_edge, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.f ], [ 0, %readBytes.exit._crit_edge ], [ 0, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret i32 %.0
}

end_hunk_11
begin_hunk_12
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.e = call range(i32 0, 2) i32 @readLong(ptr noundef %0, i8 noundef signext 42, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.preheader
end_hunk_12
begin_hunk_13

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18   ; 4 uses
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.6) #16
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.8) #16
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.f

end_hunk_13
begin_hunk_14
  br i1 %.not14.peel, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void @zfree(ptr noundef %i.h) #14
  %exitcond.peel.not = icmp eq i64 %i.f, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.lr.ph

end_hunk_14
begin_hunk_15
  br i1 %.not12, label %.loopexit, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef %1) #14 ; 0 uses
  %i.s = load i64, ptr @epos, align 8, !tbaa !14
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.s, ptr noundef nonnull %i.c) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.9, ptr noundef %1) #14 ; 0 uses
  %i.v = load i64, ptr @epos, align 8, !tbaa !14
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.v, ptr noundef nonnull %i.d) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %.lr.ph
  %.pre33 = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void @zfree(ptr noundef %.pre33) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit.sink.split:                             ; preds = %bb.h, %bb.g
  call void @zfree(ptr noundef %i.h) #14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %.loopexit.sink.split, %.preheader, %bb.f, %.lr.ph.preheader, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %.loopexit.sink.split ], [ 1, %.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.1
}

end_hunk_15
begin_hunk_16
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = tail call i64 @ftello64(ptr noundef %0)
  store i64 %i.c, ptr @epos, align 8, !tbaa !14
  %i.d = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef %0)
end_hunk_16
begin_hunk_17

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %1) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_17
begin_hunk_18
  br i1 %or.cond, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.h = tail call ptr @__errno_location() #18    ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = call i64 @__isoc23_strtol(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i32 noundef 10) #14
  %i.k = load i32, ptr %i.h, align 4, !tbaa !9
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.e, label %bb.f
end_hunk_18
begin_hunk_19

bb.f:                                             ; preds = %bb.e, %bb.d
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.g:                                             ; preds = %bb.e
end_hunk_19
begin_hunk_20

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %1, i64 noundef %i.n) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.j:                                             ; preds = %bb.h
end_hunk_20
begin_hunk_21
bb.k:                                             ; preds = %bb.j
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %1, i64 noundef %i.n, i64 noundef %i.o) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.s = call i32 @fileno(ptr noundef %0) #14
  %i.t = load i64, ptr @epos, align 8, !tbaa !14
  %i.u = call i32 @ftruncate64(i32 noundef %i.s, i64 noundef %i.t) #14
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr @to_timestamp, align 8, !tbaa !14
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %1, i64 noundef %i.w) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n
  %.1 = phi i32 [ %.0, %bb.n ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.1
}

end_hunk_21
begin_hunk_22
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  %i.e = alloca [2 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.f = tail call noalias ptr @fopen64(ptr noundef %1, ptr noundef nonnull @.str.17) ; 17 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #18
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #14
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %1, ptr noundef %i.j) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.l = tail call i32 @fileno(ptr noundef nonnull %i.f) #14
  %i.m = call i32 @fstat64(i32 noundef %i.l, ptr noundef nonnull %5) #14
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %0) ; 0 uses
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_22
begin_hunk_23
  br i1 %.not, label %._crit_edge.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 16, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !18
  %i.v = call i32 @redis_check_rdb_main(i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f) #14
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %puts68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %bb.j, %bb.g
end_hunk_23
begin_hunk_24
  br i1 %i.z, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aa = call i32 @feof(ptr noundef nonnull %i.f) #14
  %.not60 = icmp eq i32 %i.aa, 0
  br i1 %.not60, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.o:                                             ; preds = %bb.l
end_hunk_24
begin_hunk_25
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call ptr @__errno_location() #18
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !9
  %i.ag = call ptr @strerror(i32 noundef %i.af) #14
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %0, ptr noundef %i.ag) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.q:                                             ; preds = %bb.o
end_hunk_25
begin_hunk_26

.loopexit:                                        ; preds = %bb.t, %bb.m, %bb.u
  %i.an = phi i32 [ %.pre80.ph, %bb.u ], [ %.pre80.ph, %bb.m ], [ %.pre82, %bb.t ]
  %i.ao = call i32 @feof(ptr noundef nonnull %i.f) #14
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp ne i32 %i.an, 0
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
end_hunk_26
begin_hunk_27
  br i1 %or.cond69, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.d, ptr noundef nonnull align 1 dereferenceable(42) @.str.25, i64 42, i1 false)
  %i.as = load i64, ptr @epos, align 8, !tbaa !14
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @error, i64 noundef 1044, ptr noundef nonnull @.str.2, i64 noundef %i.as, ptr noundef nonnull %i.d) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %char061.pr = load i8, ptr @error, align 16
  br label %bb.w

end_hunk_27
begin_hunk_28

bb.ad:                                            ; preds = %bb.ac
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %0, i64 noundef %i.r, i64 noundef %i.au, i64 noundef %.1) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31) ; 0 uses
  %i.bg = load ptr, ptr @stdin, align 8, !tbaa !27
end_hunk_28
begin_hunk_29
  br i1 %i.bi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = call i32 @strncasecmp(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.32, i64 noundef 1) #16
  %.not66 = icmp eq i32 %i.bj, 0
  br i1 %.not66, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %puts67 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bk = call i32 @fileno(ptr noundef nonnull %i.f) #14
  %i.bl = call i32 @ftruncate64(i32 noundef %i.bk, i64 noundef %.1) #14
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.bo = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.am

bb.ak:                                            ; preds = %bb.ab
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %0) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.al:                                            ; preds = %bb.aa
end_hunk_29
begin_hunk_30

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.z, %bb.s, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.z ], [ 2, %bb.aj ], [ 0, %bb.al ], [ 3, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

end_hunk_30
begin_hunk_31
define dso_local range(i32 0, 2) i32 @fileIsRDB(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %i.b = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.36) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #18
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #14
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef %0, ptr noundef %i.f) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.h = tail call i32 @fileno(ptr noundef nonnull %i.b) #14
  %i.i = call i32 @fstat64(i32 noundef %i.h, ptr noundef nonnull %1) #14
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %0) ; 0 uses
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_31
begin_hunk_32
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.r = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 5, i64 noundef 1, ptr noundef nonnull %i.b)
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %2 = load i32, ptr %i.a, align 1
  %3 = xor i32 %2, 1229210962
  %4 = getelementptr i8, ptr %i.a, i64 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, 83
  %8 = or i32 %3, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %i.t = icmp eq i32 %10, 0
  br i1 %i.t, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.l

.critedge:                                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.g
end_hunk_32
begin_hunk_33

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.1
}

end_hunk_33
begin_hunk_34
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #18
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #14
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef %0, ptr noundef %i.f) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.h = tail call i32 @fileno(ptr noundef nonnull %i.b) #14
  %i.i = call i32 @fstat64(i32 noundef %i.h, ptr noundef nonnull %1) #14
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %0) ; 0 uses
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_34
begin_hunk_35
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.g
end_hunk_35
begin_hunk_36
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @feof(ptr noundef nonnull %i.b) #14
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef %0) ; 0 uses
  %i.u = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.k:                                             ; preds = %bb.h
end_hunk_36
begin_hunk_37

.loopexit:                                        ; preds = %bb.l, %bb.i
  %i.x = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ %.014.ph, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

end_hunk_37
begin_hunk_38
bb.a:
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.a = tail call ptr @aofLoadManifestFromFile(ptr noundef %1) #14 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  %spec.select = zext i1 %.not to i32             ; 2 uses
end_hunk_38
begin_hunk_39

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.j = tail call ptr @makePath(ptr noundef %0, ptr noundef %i.i) #14 ; 3 uses
  %i.k = icmp eq i32 %.1, 1
  %i.l = zext i1 %i.k to i32
  %i.m = tail call i32 @fileIsRDB(ptr noundef %i.j) ; 2 uses
end_hunk_39
begin_hunk_40
  unreachable

printAofStyle.exit:                               ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  tail call void @sdsfree(ptr noundef %i.j) #14
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %bb.i

end_hunk_40
begin_hunk_41
  br i1 %.not45, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %puts46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !32
  call void @listRewind(ptr noundef %i.y, ptr noundef nonnull %3) #14
  %i.z = call ptr @listNext(ptr noundef nonnull %3) #14 ; 2 uses
  %.not4751 = icmp eq ptr %i.z, null
  br i1 %.not4751, label %._crit_edge, label %.lr.ph

end_hunk_41
begin_hunk_42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 6 uses
  %i.ae = call ptr @makePath(ptr noundef %0, ptr noundef %i.ad) #14 ; 2 uses
  %i.af = add nuw nsw i32 %.13852, 1              ; 2 uses
  %i.ag = icmp eq i32 %i.af, %.1
  %i.ah = zext i1 %i.ag to i32
end_hunk_42
begin_hunk_43
  br label %printAofStyle.exit49

printAofStyle.exit49:                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  call void @sdsfree(ptr noundef %i.ae) #14
  %i.ao = call ptr @listNext(ptr noundef nonnull %3) #14 ; 2 uses
  %.not47 = icmp eq ptr %i.ao, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %printAofStyle.exit49, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i
  call void @aofManifestFree(ptr noundef nonnull %i.a) #14
  %puts48 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  ret void
}
end_hunk_43
begin_hunk_44
bb.a:
  %i.a = alloca [4097 x i8], align 16             ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = icmp slt i32 %0, 2
  br i1 %i.c, label %bb.q, label %bb.b

end_hunk_44
begin_hunk_45
  br i1 %i.k, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(10) @.str.57) #16
  %.not33 = icmp eq i32 %i.l, 0
  br i1 %.not33, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.tail.thread, %.tail
  %i.m = tail call ptr @getVersion() #14          ; 2 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %i.m) ; 0 uses
  tail call void @sdsfree(ptr noundef %i.m) #14
  tail call void @exit(i32 noundef 0) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(6) @.str.59) #16
  %.not31 = icmp eq i32 %i.q, 0
  br i1 %.not31, label %bb.e, label %bb.q

end_hunk_45
begin_hunk_46
bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(24) @.str.60) #16
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.w = tail call ptr @__errno_location() #18    ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.z = call i64 @__isoc23_strtol(ptr noundef %i.y, ptr noundef nonnull %i.b, i32 noundef 10) #14
  store i64 %i.z, ptr @to_timestamp, align 8, !tbaa !14
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !9
  %.not29 = icmp eq i32 %i.aa, 0
end_hunk_46
begin_hunk_47

bb.i:                                             ; preds = %bb.h, %bb.g
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.k

bb.k:                                             ; preds = %.tail.thread, %bb.j, %bb.e
  %.026 = phi i32 [ 0, %bb.j ], [ 1, %bb.e ], [ 0, %.tail.thread ] ; 3 uses
  %.0 = phi ptr [ %i.ae, %bb.j ], [ %i.s, %bb.e ], [ %i.e, %.tail.thread ] ; 7 uses
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #16 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 4096
  br i1 %i.ag, label %bb.l, label %bb.m

end_hunk_47
begin_hunk_48
bb.m:                                             ; preds = %bb.k
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %.0, i64 %i.ah, i1 false)
  %i.ai = call ptr @dirname(ptr noundef nonnull %i.a) #14
  %i.aj = call i32 @fileIsManifest(ptr noundef nonnull %.0)
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %getInputFileType.exit, label %getInputFileType.exit.thread
end_hunk_48
begin_hunk_49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %getInputFileType.exit.thread
  call void @exit(i32 noundef 0) #19
  unreachable

bb.q:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.a, %bb.l
  %i.al = load ptr, ptr %1, align 8, !tbaa !18
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef %i.al) ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable
}

end_hunk_49
begin_hunk_50

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

attributes #0 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_50
begin_hunk_51
attributes #11 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
end_hunk_51
