Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cf-capsule?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_cftype = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"CAPSULE\00", align 1
@Curl_cft_capsule = hidden global %struct.Curl_cftype { ptr @.str, i32 0, i32 0, ptr @cf_capsule_destroy, ptr @cf_capsule_connect, ptr @cf_capsule_shutdown, ptr @cf_capsule_adjust_pollset, ptr @cf_capsule_data_pending, ptr @cf_capsule_send, ptr @cf_capsule_recv, ptr @cf_capsule_cntrl, ptr @Curl_cf_def_conn_is_alive, ptr @Curl_cf_def_conn_keep_alive, ptr @cf_capsule_query }, align 8
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"flush send buffer(%zu) -> EAGAIN\00", align 1
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define internal void @cf_capsule_destroy(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Curl_bufq_free(ptr noundef nonnull %i.b) #3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @Curl_bufq_free(ptr noundef nonnull %i.c) #3
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !14
  tail call void %i.d(ptr noundef nonnull %i.b) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_capsule_connect(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = tail call i32 %i.h(ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef %2) #3 ; 2 uses
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %2, align 1, !tbaa !16, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.a, align 4
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.a, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.i, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_capsule_shutdown(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 3
  %or.cond = icmp eq i8 %i.c, 1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @cf_capsule_flush(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %.not9 = icmp eq i32 %i.d, 0
  %i.e = zext i1 %.not9 to i8
  %i.f = icmp eq i32 %i.d, 81
  %spec.store.select = select i1 %i.f, i32 0, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ 1, %bb.a ]
  %.0 = phi i32 [ %spec.store.select, %bb.b ], [ 0, %bb.a ]
  store i8 %.sink, ptr %2, align 1, !tbaa !16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_capsule_adjust_pollset(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = tail call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.c) #3
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @Curl_conn_cf_get_socket(ptr noundef nonnull %0, ptr noundef %1) #3 ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @Curl_pollset_change(ptr noundef %1, ptr noundef %2, i32 noundef %i.e, i32 noundef 2, i32 noundef 0) #3
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @cf_capsule_data_pending(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.b) #3
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call zeroext i1 %i.h(ptr noundef nonnull %i.e, ptr noundef %1) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.i, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_capsule_send(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 zeroext %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  store i64 0, ptr %5, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = tail call zeroext i1 @Curl_bufq_is_full(ptr noundef nonnull %i.c) #3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @cf_capsule_flush(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @Curl_capsule_encap_udp_datagram(ptr noundef nonnull %i.c, ptr noundef %2, i64 noundef %3) #3 ; 2 uses
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc i32 @cf_capsule_flush(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  switch i32 %i.g, label %bb.f [
    i32 81, label %bb.e
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i64 %3, ptr %5, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.e, %bb.b ], [ 0, %bb.e ], [ %i.g, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_capsule_recv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i64 0, ptr %4, align 8, !tbaa !22
  %5 = tail call zeroext i1 @Curl_bufq_is_full(ptr noundef %i.d) #3
  br i1 %5, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.e = call zeroext i1 @Curl_bufq_is_full(ptr noundef %i.d) #3
  br i1 %i.e, label %bb.e, label %bb.c, !llvm.loop !28

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.f = load ptr, ptr %6, align 8, !tbaa !17
  %i.g = call i32 @Curl_cf_recv_bufq(ptr noundef %i.f, ptr noundef %1, ptr noundef %i.d, i64 noundef 0, ptr noundef nonnull %i.b) #3 ; 4 uses
  switch i32 %i.g, label %.loopexit [
    i32 81, label %bb.e
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !tbaa !22
  %.not13 = icmp eq i64 %i.h, 0
  br i1 %.not13, label %._crit_edge15, label %bb.b, !llvm.loop !28

._crit_edge15:                                    ; preds = %bb.d
  br label %bb.e, !llvm.loop !28

bb.e:                                             ; preds = %bb.b, %bb.c, %._crit_edge15, %bb.a
  %7 = phi i32 [ undef, %bb.a ], [ 0, %._crit_edge15 ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  store i32 %7, ptr %i.a, align 4
  %i.i = call i64 @Curl_capsule_process_udp_raw(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.d, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.a) #3
  store i64 %i.i, ptr %4, align 8, !tbaa !22
  %i.j = load i32, ptr %i.a, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e
  %.0 = phi i32 [ %i.j, %bb.e ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_capsule_cntrl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %cond = icmp eq i32 %2, 258
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @cf_capsule_flush(ptr noundef %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare zeroext i1 @Curl_cf_def_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @cf_capsule_query(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %cond = icmp eq i32 %2, 7
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = tail call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.c) #3
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !23
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.j, %bb.e ], [ 48, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @Curl_cf_capsule_insert_after(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !14
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 128) #3, !inline_history !31 ; 6 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %cf_capsule_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Curl_bufq_init2(ptr noundef nonnull %i.c, i64 noundef 16384, i64 noundef 4, i32 noundef 1) #3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  tail call void @Curl_bufq_init2(ptr noundef nonnull %i.d, i64 noundef 16384, i64 noundef 4, i32 noundef 1) #3
  %i.e = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_capsule, ptr noundef nonnull %i.c) #3 ; 2 uses
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @Curl_bufq_free(ptr noundef nonnull %i.c) #3
  call void @Curl_bufq_free(ptr noundef nonnull %i.d) #3
  %i.f = load ptr, ptr @Curl_cfree, align 8, !tbaa !14
  call void %i.f(ptr noundef nonnull %i.c) #3, !inline_history !31
  br label %cf_capsule_create.exit.thread

cf_capsule_create.exit.thread:                    ; preds = %bb.c, %bb.a
  %.03.i.ph = phi i32 [ 27, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @Curl_conn_cf_insert_after(ptr noundef %0, ptr noundef %i.g) #3
  br label %bb.e

bb.e:                                             ; preds = %cf_capsule_create.exit.thread, %bb.d
  %.03.i7 = phi i32 [ %.03.i.ph, %cf_capsule_create.exit.thread ], [ 0, %bb.d ]
  ret i32 %.03.i7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @Curl_conn_cf_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @Curl_bufq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cf_capsule_flush(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.e = tail call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.d) #3
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = call i32 @Curl_cf_send_bufq(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a) #3 ; 3 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.h, 81
  %i.j = icmp ne ptr %1, null
  %or.cond4 = and i1 %i.j, %i.i
  br i1 %or.cond4, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.l = load i64, ptr %i.k, align 1
  %i.m = and i64 %i.l, 536870912
  %.not25 = icmp eq i64 %i.m, 0
  br i1 %.not25, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92   ; 2 uses
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !94
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !95
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = call i64 @Curl_bufq_len(ptr noundef nonnull %i.d) #3
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i64 noundef %i.w) #3
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.x = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.d) #3
  %i.y = select i1 %i.x, i32 0, i32 81
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.d, %bb.a, %bb.i
  %.0 = phi i32 [ %i.y, %bb.i ], [ 0, %bb.a ], [ 81, %bb.d ], [ 81, %bb.f ], [ %i.h, %bb.c ], [ 81, %bb.g ], [ 81, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

declare zeroext i1 @Curl_bufq_is_empty(ptr noundef) local_unnamed_addr #1

declare i32 @Curl_cf_send_bufq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_trc_cf_infof(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @Curl_bufq_len(ptr noundef) local_unnamed_addr #1

declare i32 @Curl_conn_cf_get_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Curl_pollset_change(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @Curl_bufq_is_full(ptr noundef) local_unnamed_addr #1

declare i32 @Curl_capsule_encap_udp_datagram(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @Curl_cf_recv_bufq(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
