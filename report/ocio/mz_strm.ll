Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/mz_strm?download=true
inline.NumInlined: 40
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mz_stream_vtbl_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mz_stream_raw_vtbl = internal global %struct.mz_stream_vtbl_s { ptr @mz_stream_raw_open, ptr @mz_stream_raw_is_open, ptr @mz_stream_raw_read, ptr @mz_stream_raw_write, ptr @mz_stream_raw_tell, ptr @mz_stream_raw_seek, ptr @mz_stream_raw_close, ptr @mz_stream_raw_error, ptr @mz_stream_raw_create, ptr @mz_stream_raw_delete, ptr @mz_stream_raw_get_prop_int64, ptr @mz_stream_raw_set_prop_int64 }, align 8

; Function Attrs: nounwind uwtable
define i32 @mz_stream_open(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.c, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @mz_stream_is_open(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_stream_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %mz_stream_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %mz_stream_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %mz_stream_is_open.exit.thread, label %mz_stream_is_open.exit

mz_stream_is_open.exit:                           ; preds = %bb.d
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #12, !inline_history !23
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.e, label %mz_stream_is_open.exit.thread

bb.e:                                             ; preds = %mz_stream_is_open.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #12
  br label %mz_stream_is_open.exit.thread

mz_stream_is_open.exit.thread:                    ; preds = %bb.d, %mz_stream_is_open.exit, %bb.a, %bb.b, %bb.c, %bb.e
  %.0 = phi i32 [ -102, %bb.a ], [ %i.j, %bb.e ], [ -102, %bb.c ], [ -102, %bb.b ], [ -1, %mz_stream_is_open.exit ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @mz_stream_read_uint8(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  store i8 0, ptr %1, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_read_value.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %.not11.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i, label %mz_stream_read_value.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not12.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i, label %.thread.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %.thread.thread.i, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.d
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !0
  %.not13.i.i = icmp eq i32 %i.g, 0
  %.pr.pre30.i = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not13.i.i, label %mz_stream_read.exit.i, label %.thread.i

mz_stream_read.exit.i:                            ; preds = %mz_stream_is_open.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.pr.pre30.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = call i32 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #12, !inline_history !1
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.preheader.i.preheader, label %mz_stream_read.exit..thread_crit_edge.i

.preheader.i.preheader:                           ; preds = %mz_stream_read.exit.i
  %i.l = load i8, ptr %i.a, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i8 %i.l, ptr %1, align 1, !tbaa !24
  br label %bb.e

mz_stream_read.exit..thread_crit_edge.i:          ; preds = %mz_stream_read.exit.i
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !19
  br label %.thread.i

.thread.i:                                        ; preds = %mz_stream_read.exit..thread_crit_edge.i, %mz_stream_is_open.exit.i.i
  %.pr.i = phi ptr [ %.pr.pre.i, %mz_stream_read.exit..thread_crit_edge.i ], [ %.pr.pre30.i, %mz_stream_is_open.exit.i.i ] ; 2 uses
  %.not9.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not9.i.i, label %mz_stream_read_value.exit.thread, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.d, %bb.c
  %.pr38.i = phi ptr [ %.pr.i, %.thread.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.pr38.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i, label %mz_stream_read_value.exit.thread, label %mz_stream_error.exit.i

mz_stream_error.exit.i:                           ; preds = %.thread.thread.i
  %i.o = call i32 %i.n(ptr noundef nonnull %0) #12, !inline_history !2
  %.fr.i = freeze i32 %i.o
  %.not.i = icmp eq i32 %.fr.i, 0
  %spec.select.i = select i1 %.not.i, i32 -101, i32 -1
  br label %mz_stream_read_value.exit.thread

mz_stream_read_value.exit.thread:                 ; preds = %bb.a, %bb.b, %mz_stream_error.exit.i, %.thread.thread.i, %.thread.i
  %.013.i.ph = phi i32 [ -1, %.thread.i ], [ -1, %.thread.thread.i ], [ %spec.select.i, %mz_stream_error.exit.i ], [ -1, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %mz_stream_read_value.exit.thread, %.preheader.i.preheader
  %.013.i7 = phi i32 [ %.013.i.ph, %mz_stream_read_value.exit.thread ], [ 0, %.preheader.i.preheader ]
  ret i32 %.013.i7
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @mz_stream_read_uint16(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  store i16 0, ptr %1, align 2, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_read_value.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %.not11.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i, label %mz_stream_read_value.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not12.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i, label %.thread.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %.thread.thread.i, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.d
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !0
  %.not13.i.i = icmp eq i32 %i.g, 0
  %.pr.pre30.i = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not13.i.i, label %mz_stream_read.exit.i, label %.thread.i

mz_stream_read.exit.i:                            ; preds = %mz_stream_is_open.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.pr.pre30.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = call i32 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 2) #12, !inline_history !1
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %.preheader.i.preheader, label %mz_stream_read.exit..thread_crit_edge.i

.preheader.i.preheader:                           ; preds = %mz_stream_read.exit.i
  %i.l = load i8, ptr %i.a, align 1, !tbaa !24
  %i.m = zext i8 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i16
  %i.q = shl nuw i16 %i.p, 8
  %i.r = or disjoint i16 %i.q, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i16 %i.r, ptr %1, align 2, !tbaa !44
  br label %bb.e

mz_stream_read.exit..thread_crit_edge.i:          ; preds = %mz_stream_read.exit.i
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !19
  br label %.thread.i

.thread.i:                                        ; preds = %mz_stream_read.exit..thread_crit_edge.i, %mz_stream_is_open.exit.i.i
  %.pr.i = phi ptr [ %.pr.pre.i, %mz_stream_read.exit..thread_crit_edge.i ], [ %.pr.pre30.i, %mz_stream_is_open.exit.i.i ] ; 2 uses
  %.not9.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not9.i.i, label %mz_stream_read_value.exit.thread, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.d, %bb.c
  %.pr38.i = phi ptr [ %.pr.i, %.thread.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.pr38.i, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i, label %mz_stream_read_value.exit.thread, label %mz_stream_error.exit.i

mz_stream_error.exit.i:                           ; preds = %.thread.thread.i
  %i.u = call i32 %i.t(ptr noundef nonnull %0) #12, !inline_history !2
  %.fr.i = freeze i32 %i.u
  %.not.i = icmp eq i32 %.fr.i, 0
  %spec.select.i = select i1 %.not.i, i32 -101, i32 -1
  br label %mz_stream_read_value.exit.thread

mz_stream_read_value.exit.thread:                 ; preds = %bb.a, %bb.b, %mz_stream_error.exit.i, %.thread.thread.i, %.thread.i
  %.013.i.ph = phi i32 [ -1, %.thread.i ], [ -1, %.thread.thread.i ], [ %spec.select.i, %mz_stream_error.exit.i ], [ -1, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %mz_stream_read_value.exit.thread, %.preheader.i.preheader
  %.013.i7 = phi i32 [ %.013.i.ph, %mz_stream_read_value.exit.thread ], [ 0, %.preheader.i.preheader ]
  ret i32 %.013.i7
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @mz_stream_read_uint32(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  store i32 0, ptr %1, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_read_value.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %.not11.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i, label %mz_stream_read_value.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not12.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i, label %.thread.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %.thread.thread.i, label %mz_stream_is_open.exit.i.i

mz_stream_is_open.exit.i.i:                       ; preds = %bb.d
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #12, !inline_history !0
  %.not13.i.i = icmp eq i32 %i.g, 0
  %.pr.pre30.i = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not13.i.i, label %mz_stream_read.exit.i, label %.thread.i

mz_stream_read.exit.i:                            ; preds = %mz_stream_is_open.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.pr.pre30.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = call i32 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4) #12, !inline_history !1
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %.preheader.i.preheader, label %mz_stream_read.exit..thread_crit_edge.i

.preheader.i.preheader:                           ; preds = %mz_stream_read.exit.i
  %i.l = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %i.l, ptr %1, align 4, !tbaa !45
  br label %bb.e

mz_stream_read.exit..thread_crit_edge.i:          ; preds = %mz_stream_read.exit.i
  %.pr.pre.i = load ptr, ptr %0, align 8, !tbaa !19
  br label %.thread.i

.thread.i:                                        ; preds = %mz_stream_read.exit..thread_crit_edge.i, %mz_stream_is_open.exit.i.i
  %.pr.i = phi ptr [ %.pr.pre.i, %mz_stream_read.exit..thread_crit_edge.i ], [ %.pr.pre30.i, %mz_stream_is_open.exit.i.i ] ; 2 uses
  %.not9.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not9.i.i, label %mz_stream_read_value.exit.thread, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.d, %bb.c
  %.pr38.i = phi ptr [ %.pr.i, %.thread.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.pr38.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i, label %mz_stream_read_value.exit.thread, label %mz_stream_error.exit.i

mz_stream_error.exit.i:                           ; preds = %.thread.thread.i
  %i.o = call i32 %i.n(ptr noundef nonnull %0) #12, !inline_history !2
  %.fr.i = freeze i32 %i.o
  %.not.i = icmp eq i32 %.fr.i, 0
  %spec.select.i = select i1 %.not.i, i32 -101, i32 -1
  br label %mz_stream_read_value.exit.thread

mz_stream_read_value.exit.thread:                 ; preds = %bb.a, %bb.b, %mz_stream_error.exit.i, %.thread.thread.i, %.thread.i
  %.013.i.ph = phi i32 [ -1, %.thread.i ], [ -1, %.thread.thread.i ], [ %spec.select.i, %mz_stream_error.exit.i ], [ -1, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %mz_stream_read_value.exit.thread, %.preheader.i.preheader
  %.013.i7 = phi i32 [ %.013.i.ph, %mz_stream_read_value.exit.thread ], [ 0, %.preheader.i.preheader ]
  ret i32 %.013.i7
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @mz_stream_read_int64(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %1, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_stream_read_value.exit, label %bb.b

end_hunk_0
