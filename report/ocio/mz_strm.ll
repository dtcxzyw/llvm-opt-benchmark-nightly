Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/mz_strm?download=true
inline.NumInlined: 40
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mz_stream_read_uint64:bb.a
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  %i.x = add i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 24
  %i.ac = add i64 %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = add i64 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 40
  %i.am = add i64 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !24
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 48
  %i.ar = add i64 %i.aq, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw i64 %i.au, 56
  %i.aw = add i64 %i.av, %i.ar
  store i64 %i.aw, ptr %1, align 8, !tbaa !27
  br label %mz_stream_read_value.exit

.thread.i:                                        ; preds = %mz_stream_read.exit..thread_crit_edge.i, %mz_stream_is_open.exit.i.i
  %.pr.i = phi ptr [ %.pr.pre.i, %mz_stream_read.exit..thread_crit_edge.i ], [ %.pr.pre30.i, %mz_stream_is_open.exit.i.i ] ; 2 uses
  %.not9.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not9.i.i, label %mz_stream_read_value.exit, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.d, %bb.c
  %.pr38.i = phi ptr [ %.pr.i, %.thread.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr38.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i, label %mz_stream_read_value.exit, label %mz_stream_error.exit.i

mz_stream_error.exit.i:                           ; preds = %.thread.thread.i
  %i.az = call i32 %i.ay(ptr noundef nonnull %0) #12, !inline_history !2
  %.fr.i = freeze i32 %i.az
  %.not.i = icmp eq i32 %.fr.i, 0
  %spec.select.i = select i1 %.not.i, i32 -101, i32 -1
  br label %mz_stream_read_value.exit

mz_stream_read_value.exit:                        ; preds = %bb.a, %bb.b, %.thread.i, %.thread.thread.i, %mz_stream_error.exit.i, %.preheader.i
  %.013.i = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %spec.select.i, %mz_stream_error.exit.i ], [ -1, %.thread.thread.i ], [ -1, %.thread.i ], [ 0, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.013.i
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %mz_stream_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_stream_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not14 = icmp eq ptr %i.b, null
  br i1 %.not14, label %mz_stream_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %mz_stream_is_open.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %mz_stream_is_open.exit.thread, label %mz_stream_is_open.exit

mz_stream_is_open.exit:                           ; preds = %bb.e
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !23
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.f, label %mz_stream_is_open.exit.thread

bb.f:                                             ; preds = %mz_stream_is_open.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #12
  br label %mz_stream_is_open.exit.thread

mz_stream_is_open.exit.thread:                    ; preds = %bb.e, %mz_stream_is_open.exit, %bb.b, %bb.c, %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.a ], [ -102, %bb.b ], [ %i.k, %bb.f ], [ -102, %bb.d ], [ -102, %bb.c ], [ -1, %mz_stream_is_open.exit ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_write_uint8(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
.loopexit.i:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 %1, ptr %i.a, align 1, !tbaa !24
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_write_value.exit, label %bb.a

bb.a:                                             ; preds = %.loopexit.i
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %mz_stream_write_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not15.i.i = icmp eq ptr %i.d, null
  br i1 %.not15.i.i, label %mz_stream_write_value.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %mz_stream_write_value.exit, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.c
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !3
  %.not16.i.i = icmp eq i32 %i.g, 0
  br i1 %.not16.i.i, label %bb.d, label %mz_stream_write_value.exit

bb.d:                                             ; preds = %mz_stream_is_open.exit.i.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = call i32 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #12, !inline_history !4
  %i.l = icmp ne i32 %i.k, 1
  %i.m = sext i1 %i.l to i32
  br label %mz_stream_write_value.exit

mz_stream_write_value.exit:                       ; preds = %.loopexit.i, %bb.a, %bb.b, %bb.c, %mz_stream_is_open.exit.i.i, %bb.d
  %.0.i.i = phi i32 [ -1, %bb.c ], [ -1, %.loopexit.i ], [ %i.m, %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %mz_stream_is_open.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
.loopexit.i:
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = trunc i16 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !24
  %i.c = lshr i16 %1, 8
  %i.d = trunc nuw i16 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !24
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_write_value.exit, label %bb.a

bb.a:                                             ; preds = %.loopexit.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not14.i.i = icmp eq ptr %i.f, null
  br i1 %.not14.i.i, label %mz_stream_write_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %.not15.i.i = icmp eq ptr %i.h, null
  br i1 %.not15.i.i, label %mz_stream_write_value.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %mz_stream_write_value.exit, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.c
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0) #12, !inline_history !3
  %.not16.i.i = icmp eq i32 %i.k, 0
  br i1 %.not16.i.i, label %bb.d, label %mz_stream_write_value.exit

bb.d:                                             ; preds = %mz_stream_is_open.exit.i.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = call i32 %i.n(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 2) #12, !inline_history !4
  %i.p = icmp ne i32 %i.o, 2
  %i.q = sext i1 %i.p to i32
  br label %mz_stream_write_value.exit

mz_stream_write_value.exit:                       ; preds = %.loopexit.i, %bb.a, %bb.b, %bb.c, %mz_stream_is_open.exit.i.i, %bb.d
  %.0.i.i = phi i32 [ -1, %bb.c ], [ -1, %.loopexit.i ], [ %i.q, %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %mz_stream_is_open.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
.loopexit.i:
  %i.a = alloca [8 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %2 = trunc i32 %1 to i8
  store i8 %2, ptr %i.a, align 1, !tbaa !24
  %3 = lshr i32 %1, 8
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %4, ptr %5, align 1, !tbaa !24
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !24
  %9 = lshr i32 %1, 24
  %10 = trunc nuw i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %10, ptr %11, align 1, !tbaa !24
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_write_value.exit, label %bb.a

bb.a:                                             ; preds = %.loopexit.i
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %mz_stream_write_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not15.i.i = icmp eq ptr %i.d, null
  br i1 %.not15.i.i, label %mz_stream_write_value.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %mz_stream_write_value.exit, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.c
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !3
  %.not16.i.i = icmp eq i32 %i.g, 0
  br i1 %.not16.i.i, label %bb.d, label %mz_stream_write_value.exit

bb.d:                                             ; preds = %mz_stream_is_open.exit.i.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = call i32 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4) #12, !inline_history !4
  %i.l = icmp ne i32 %i.k, 4
  %i.m = sext i1 %i.l to i32
  br label %mz_stream_write_value.exit

mz_stream_write_value.exit:                       ; preds = %.loopexit.i, %bb.a, %bb.b, %bb.c, %mz_stream_is_open.exit.i.i, %bb.d
  %.0.i.i = phi i32 [ -1, %bb.c ], [ -1, %.loopexit.i ], [ %i.m, %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %mz_stream_is_open.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
.loopexit.i:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %2 = trunc i64 %1 to i8
  store i8 %2, ptr %i.a, align 1, !tbaa !24
  %3 = lshr i64 %1, 8
  %4 = trunc i64 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %4, ptr %5, align 1, !tbaa !24
  %6 = lshr i64 %1, 16
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !24
  %9 = lshr i64 %1, 24
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %10, ptr %11, align 1, !tbaa !24
  %12 = lshr i64 %1, 32
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %13, ptr %14, align 1, !tbaa !24
  %15 = lshr i64 %1, 40
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %16, ptr %17, align 1, !tbaa !24
  %18 = lshr i64 %1, 48
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %19, ptr %20, align 1, !tbaa !24
  %21 = lshr i64 %1, 56
  %22 = trunc nuw i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %22, ptr %23, align 1, !tbaa !24
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_write_value.exit, label %bb.a

bb.a:                                             ; preds = %.loopexit.i
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %mz_stream_write_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not15.i.i = icmp eq ptr %i.d, null
  br i1 %.not15.i.i, label %mz_stream_write_value.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %mz_stream_write_value.exit, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.c
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !3
  %.not16.i.i = icmp eq i32 %i.g, 0
  br i1 %.not16.i.i, label %bb.d, label %mz_stream_write_value.exit

bb.d:                                             ; preds = %mz_stream_is_open.exit.i.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = call i32 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 8) #12, !inline_history !4
  %i.l = icmp ne i32 %i.k, 8
  %i.m = sext i1 %i.l to i32
  br label %mz_stream_write_value.exit

mz_stream_write_value.exit:                       ; preds = %.loopexit.i, %bb.a, %bb.b, %bb.c, %mz_stream_is_open.exit.i.i, %bb.d
  %.0.i.i = phi i32 [ -1, %bb.c ], [ -1, %.loopexit.i ], [ %i.m, %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %mz_stream_is_open.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_write_uint64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
.loopexit.i:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %2 = trunc i64 %1 to i8
  store i8 %2, ptr %i.a, align 1, !tbaa !24
  %3 = lshr i64 %1, 8
  %4 = trunc i64 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %4, ptr %5, align 1, !tbaa !24
  %6 = lshr i64 %1, 16
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !24
  %9 = lshr i64 %1, 24
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %10, ptr %11, align 1, !tbaa !24
  %12 = lshr i64 %1, 32
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %13, ptr %14, align 1, !tbaa !24
  %15 = lshr i64 %1, 40
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %16, ptr %17, align 1, !tbaa !24
  %18 = lshr i64 %1, 48
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %19, ptr %20, align 1, !tbaa !24
  %21 = lshr i64 %1, 56
  %22 = trunc nuw i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %22, ptr %23, align 1, !tbaa !24
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_write_value.exit, label %bb.a

bb.a:                                             ; preds = %.loopexit.i
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %mz_stream_write_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not15.i.i = icmp eq ptr %i.d, null
  br i1 %.not15.i.i, label %mz_stream_write_value.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %mz_stream_write_value.exit, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.c
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !3
  %.not16.i.i = icmp eq i32 %i.g, 0
  br i1 %.not16.i.i, label %bb.d, label %mz_stream_write_value.exit

bb.d:                                             ; preds = %mz_stream_is_open.exit.i.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = call i32 %i.j(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 8) #12, !inline_history !4
  %i.l = icmp ne i32 %i.k, 8
  %i.m = sext i1 %i.l to i32
  br label %mz_stream_write_value.exit

mz_stream_write_value.exit:                       ; preds = %.loopexit.i, %bb.a, %bb.b, %bb.c, %mz_stream_is_open.exit.i.i, %bb.d
  %.0.i.i = phi i32 [ -1, %bb.c ], [ -1, %.loopexit.i ], [ %i.m, %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %mz_stream_is_open.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.i.preheader, label %mz_stream_copy_stream.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.not.i2 = icmp eq ptr %1, null
  br i1 %.not.i2, label %mz_stream_copy_stream.exit, label %.lr.ph.i.preheader.split

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.split
  %i.c = tail call i32 @llvm.umin.i32(i32 %2, i32 16384)
  %i.d = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %.not11.i.us = icmp eq ptr %i.d, null
  br i1 %.not11.i.us, label %mz_stream_copy_stream.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not12.i.us = icmp eq ptr %i.f, null
  br i1 %.not12.i.us, label %mz_stream_copy_stream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i3.us = icmp eq ptr %i.h, null
  br i1 %.not10.i.i3.us, label %mz_stream_copy_stream.exit, label %mz_stream_is_open.exit.i4.us

mz_stream_is_open.exit.i4.us:                     ; preds = %bb.c
  %i.i = tail call i32 %i.h(ptr noundef nonnull %1) #12, !inline_history !46
  %.not13.i.us = icmp eq i32 %i.i, 0
  br i1 %.not13.i.us, label %mz_stream_read.exit.us, label %mz_stream_copy_stream.exit

mz_stream_read.exit.us:                           ; preds = %mz_stream_is_open.exit.i4.us
  %i.j = load ptr, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = call i32 %i.l(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.c) #12, !inline_history !47 ; 0 uses
  br label %mz_stream_copy_stream.exit

bb.d:                                             ; preds = %mz_stream_write.exit
  %i.n = sub nsw i32 %.022.i, %i.z                ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %mz_stream_copy_stream.exit, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %bb.d
  %.022.i = phi i32 [ %i.n, %bb.d ], [ %2, %.lr.ph.i.preheader.split ] ; 2 uses
  %i.p = call i32 @llvm.umin.i32(i32 %.022.i, i32 16384)
  %i.q = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %.not11.i = icmp eq ptr %i.q, null
  br i1 %.not11.i, label %mz_stream_copy_stream.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %.not12.i = icmp eq ptr %i.s, null
  br i1 %.not12.i, label %mz_stream_copy_stream.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i3 = icmp eq ptr %i.u, null
  br i1 %.not10.i.i3, label %mz_stream_copy_stream.exit, label %mz_stream_is_open.exit.i4

mz_stream_is_open.exit.i4:                        ; preds = %bb.f
  %i.v = call i32 %i.u(ptr noundef nonnull %1) #12, !inline_history !46
  %.not13.i = icmp eq i32 %i.v, 0
  br i1 %.not13.i, label %mz_stream_read.exit, label %mz_stream_copy_stream.exit

mz_stream_read.exit:                              ; preds = %mz_stream_is_open.exit.i4
  %i.w = load ptr, ptr %1, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = call i32 %i.y(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.p) #12, !inline_history !47 ; 4 uses
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %mz_stream_copy_stream.exit, label %bb.g

bb.g:                                             ; preds = %mz_stream_read.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %.not14.i = icmp eq ptr %i.ab, null
  br i1 %.not14.i, label %mz_stream_copy_stream.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  %.not15.i = icmp eq ptr %i.ad, null
  br i1 %.not15.i, label %mz_stream_copy_stream.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.af, null
  br i1 %.not10.i.i, label %mz_stream_copy_stream.exit, label %mz_stream_is_open.exit.i

mz_stream_is_open.exit.i:                         ; preds = %bb.i
  %i.ag = call i32 %i.af(ptr noundef nonnull %0) #12, !inline_history !48
  %.not16.i = icmp eq i32 %i.ag, 0
  br i1 %.not16.i, label %mz_stream_write.exit, label %mz_stream_copy_stream.exit

mz_stream_write.exit:                             ; preds = %mz_stream_is_open.exit.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ak = call i32 %i.aj(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.z) #12, !inline_history !49
  %i.al = icmp eq i32 %i.ak, %i.z
  br i1 %i.al, label %bb.d, label %mz_stream_copy_stream.exit

mz_stream_copy_stream.exit:                       ; preds = %bb.i, %bb.h, %bb.g, %mz_stream_is_open.exit.i, %bb.f, %mz_stream_is_open.exit.i4, %.lr.ph.i, %bb.e, %bb.d, %mz_stream_read.exit, %mz_stream_write.exit, %.lr.ph.i.preheader, %.lr.ph.i.us, %bb.b, %bb.c, %mz_stream_is_open.exit.i4.us, %mz_stream_read.exit.us, %bb.a
  %.018.i = phi i32 [ 0, %bb.a ], [ -1, %.lr.ph.i.preheader ], [ -1, %bb.c ], [ -1, %mz_stream_is_open.exit.i4.us ], [ -1, %mz_stream_read.exit.us ], [ -1, %.lr.ph.i.us ], [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %mz_stream_is_open.exit.i ], [ -1, %bb.f ], [ -1, %mz_stream_is_open.exit.i4 ], [ -1, %.lr.ph.i ], [ -1, %bb.e ], [ 0, %bb.d ], [ -1, %mz_stream_read.exit ], [ -1, %mz_stream_write.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.018.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_copy_stream(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @mz_stream_write, ptr %1
  %.not20 = icmp eq ptr %3, null
  %spec.store.select2 = select i1 %.not20, ptr @mz_stream_read, ptr %3
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.c
  %i.c = sub nsw i32 %.022, %i.f                  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.022 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 2 uses
  %i.e = call i32 @llvm.umin.i32(i32 %.022, i32 16384)
  %i.f = call i32 %spec.store.select2(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.e) #12 ; 4 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = call i32 %spec.store.select(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.f) #12
  %.not21 = icmp eq i32 %i.h, %i.f
  br i1 %.not21, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.018 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %bb.c ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_copy_to_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not.i7 = icmp eq ptr %1, null
end_hunk_0
