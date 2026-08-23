Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cf-dns?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
begin_hunk_0_@cf_dns_cntrl:bb.a
  ret i32 0
}

declare zeroext i1 @Curl_cf_def_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #1

declare i32 @Curl_cf_def_query(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @Curl_cf_dns_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.d = icmp eq ptr %3, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.g = icmp eq ptr %3, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i1 [ true, %bb.b ], [ %i.g, %bb.c ]
  %i.i = call fastcc i32 @cf_dns_create(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %i.h, i1 noundef zeroext false) ; 2 uses
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !113
  tail call void @Curl_conn_cf_add(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %i.j) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ %i.i, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cf_dns_create(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !113
  %i.b = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !81
  %i.c = tail call ptr %i.b(i64 noundef 1, i64 noundef 32) #3, !inline_history !114 ; 8 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !113
  br label %cf_dns_ctx_destroy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @Curl_peer_link(ptr noundef nonnull %i.d, ptr noundef %2) #3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %3, ptr %i.e, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 %4, ptr %i.f, align 1, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2
  %i.i = select i1 %5, i8 8, i8 0
  %i.j = and i8 %i.h, -13
  %i.k = select i1 %6, i8 4, i8 0
  %i.l = or disjoint i8 %i.k, %i.i
  %i.m = or disjoint i8 %i.l, %i.j
  store i8 %i.m, ptr %i.g, align 2
  %.not25.i = icmp eq ptr %1, null
  br i1 %.not25.i, label %cf_dns_ctx_create.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.o = load i64, ptr %i.n, align 1
  %i.p = and i64 %i.o, 536870912
  %.not26.i = icmp eq i64 %i.p, 0
  br i1 %.not26.i, label %cf_dns_ctx_create.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %.not27.i = icmp eq ptr %i.r, null
  br i1 %.not27.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !76
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.w = icmp sgt i32 %i.v, 0
  %or.cond.i = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond.i, label %bb.g, label %cf_dns_ctx_create.exit

bb.f:                                             ; preds = %bb.d
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !76
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.g, label %cf_dns_ctx_create.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !92
  %i.ab = zext i16 %i.aa to i32
  %i.ac = zext i8 %4 to i32
  %i.ad = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ad) #3
  br label %cf_dns_ctx_create.exit

cf_dns_ctx_create.exit:                           ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %i.ae = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_dns, ptr noundef nonnull %i.c) #3 ; 2 uses
  %.not14 = icmp eq i32 %i.ae, 0                  ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = select i1 %.not14, ptr %i.af, ptr null
  store ptr %i.ag, ptr %0, align 8, !tbaa !113
  br i1 %.not14, label %cf_dns_ctx_destroy.exit, label %bb.h

bb.h:                                             ; preds = %cf_dns_ctx_create.exit
  call void @Curl_peer_unlink(ptr noundef nonnull %i.d) #3
  call void @Curl_dns_entry_unlink(ptr noundef %1, ptr noundef nonnull %i.c) #3
  %i.ah = load ptr, ptr @Curl_cfree, align 8, !tbaa !81
  call void %i.ah(ptr noundef nonnull %i.c) #3, !inline_history !82
  br label %cf_dns_ctx_destroy.exit

cf_dns_ctx_destroy.exit:                          ; preds = %bb.h, %.thread, %cf_dns_ctx_create.exit
  %.020 = phi i32 [ 0, %cf_dns_ctx_create.exit ], [ 27, %.thread ], [ %i.ae, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.020
}

declare void @Curl_conn_cf_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @Curl_cf_dns_insert_after(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call fastcc i32 @cf_dns_create(ptr noundef %i.a, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %2, i8 noundef zeroext %4, i1 noundef zeroext false, i1 noundef zeroext %5) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !113
  tail call void @Curl_conn_cf_insert_after(ptr noundef %0, ptr noundef %i.c) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %i.b
}

declare void @Curl_conn_cf_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @Curl_conn_dns_result(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %.not13.i = icmp eq ptr %i.d, null
  br i1 %.not13.i, label %cf_dns_result.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.0914.i = phi ptr [ %i.p, %bb.e ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.0914.i, align 8, !tbaa !78
  %i.f = icmp eq ptr %i.e, @Curl_cft_dns
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0914.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = tail call zeroext i1 @Curl_peer_same_destination(ptr noundef %i.j, ptr noundef %2) #3
  br i1 %i.k, label %bb.c, label %cf_dns_result.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !96
  %.not10.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !95   ; 3 uses
  br i1 %.not10.i, label %bb.d, label %cf_dns_result.exit

bb.d:                                             ; preds = %bb.c
  %.not11.i = icmp eq i32 %i.n, 0
  br i1 %.not11.i, label %cf_dns_result.exit, label %3

3:                                                ; preds = %bb.d
  br label %cf_dns_result.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0914.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %cf_dns_result.exit, label %.lr.ph.i, !llvm.loop !115

cf_dns_result.exit:                               ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d, %3
  %.1.i = phi i32 [ 0, %bb.b ], [ %i.n, %3 ], [ 81, %bb.d ], [ 2, %bb.a ], [ %i.n, %bb.c ], [ 2, %bb.e ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @Curl_cf_dns_get_ai(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %cf_dns_get_nth_ai.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %cf_dns_get_nth_ai.exit.thread23
  %.01828 = phi ptr [ %i.ad, %cf_dns_get_nth_ai.exit.thread23 ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.01828, align 8, !tbaa !78
  %i.b = icmp eq ptr %i.a, @Curl_cft_dns
  br i1 %i.b, label %bb.b, label %cf_dns_get_nth_ai.exit.thread23

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01828, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = tail call zeroext i1 @Curl_peer_same_destination(ptr noundef %i.f, ptr noundef %2) #3
  br i1 %i.g, label %bb.c, label %cf_dns_get_nth_ai.exit.thread23

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.01828, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !95
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %bb.d, label %cf_dns_get_nth_ai.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 4 uses
  %.018.val = load ptr, ptr %i.h, align 8, !tbaa !8 ; 2 uses
  switch i32 %3, label %bb.h [
    i32 2, label %bb.f
    i32 10, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.018.val, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !93
  %i.o = and i8 %i.n, 1
  %.not.i = icmp eq i8 %i.o, 0
  %.not161.i = icmp eq ptr %i.l, null
  %or.cond.i = or i1 %.not161.i, %.not.i
  br i1 %or.cond.i, label %cf_dns_get_nth_ai.exit.thread, label %.lr.ph.i.preheader

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.018.val, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !93
  %i.r = and i8 %i.q, 2
  %.not15.i = icmp eq i8 %i.r, 0
  %.not161.old.i = icmp eq ptr %i.l, null
  %or.cond6.i = or i1 %.not161.old.i, %.not15.i
  br i1 %or.cond6.i, label %cf_dns_get_nth_ai.exit.thread, label %.lr.ph.i.preheader

bb.h:                                             ; preds = %bb.e
  %.not161.old.old.i = icmp eq ptr %i.l, null
  br i1 %.not161.old.old.i, label %cf_dns_get_nth_ai.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h, %bb.g, %bb.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.k
  %.03.i = phi i32 [ %.1.i, %bb.k ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.0142.i = phi ptr [ %i.y, %bb.k ], [ %i.l, %.lr.ph.i.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0142.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !117
  %i.u = icmp eq i32 %i.t, %3
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.v = icmp eq i32 %.03.i, %4
  br i1 %i.v, label %cf_dns_get_nth_ai.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %.03.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %.1.i = phi i32 [ %i.w, %bb.j ], [ %.03.i, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0142.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !120  ; 2 uses
  %.not16.i = icmp eq ptr %i.y, null
  br i1 %.not16.i, label %cf_dns_get_nth_ai.exit.thread, label %.lr.ph.i, !llvm.loop !121

bb.l:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !97
  %i.ab = tail call ptr @Curl_resolv_get_ai(ptr noundef %1, i32 noundef %i.aa, i32 noundef %3, i32 noundef %4) #3
  br label %cf_dns_get_nth_ai.exit.thread

cf_dns_get_nth_ai.exit.thread23:                  ; preds = %bb.b, %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.01828, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %cf_dns_get_nth_ai.exit.thread, label %.lr.ph, !llvm.loop !122

cf_dns_get_nth_ai.exit.thread:                    ; preds = %cf_dns_get_nth_ai.exit.thread23, %bb.i, %bb.k, %bb.a, %bb.l, %bb.c, %bb.f, %bb.g, %bb.h
  %.3 = phi ptr [ null, %bb.c ], [ null, %bb.k ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.g ], [ %i.ab, %bb.l ], [ null, %bb.a ], [ %.0142.i, %bb.i ], [ null, %cf_dns_get_nth_ai.exit.thread23 ]
  ret ptr %.3
}

declare zeroext i1 @Curl_peer_same_destination(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Curl_resolv_get_ai(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @Curl_conn_dns_get_ai(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = tail call ptr @Curl_cf_dns_get_ai(ptr noundef %i.f, ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %4)
  ret ptr %i.g
}

declare void @Curl_trc_cf_infof(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @Curl_peer_unlink(ptr noundef) local_unnamed_addr #1

declare void @Curl_dns_entry_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Curl_resolv_take_result(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_pgrsTime(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Curl_conn_cf_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_resolv_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @Curl_timeleft_ms(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @Curl_is_ipv4addr(ptr noundef) local_unnamed_addr #1

declare i32 @Curl_resolv(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @curlx_ptimediff_ms(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Curl_pgrs_now(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @Curl_host_is_ipnum(ptr noundef) local_unnamed_addr #1

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cf_dns_report_addr(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef range(i32 2, 11) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  tail call void @curlx_dyn_reset(ptr noundef nonnull %1) #3
  %.not32 = icmp eq ptr %4, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.034 = phi ptr [ %.1, %bb.g ], [ @.str.14, %bb.a ] ; 2 uses
  %.02133 = phi ptr [ %i.o, %bb.g ], [ %4, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02133, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !117
  %i.d = icmp eq i32 %i.c, %3
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  call void @Curl_printable_address(ptr noundef nonnull %.02133, ptr noundef nonnull %i.a, i64 noundef 46) #3
  %i.e = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef %.034, ptr noundef nonnull %i.a) #3
  %.not29 = icmp eq i32 %i.e, 0
  br i1 %.not29, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.g = load i64, ptr %i.f, align 1
  %i.h = and i64 %i.g, 536870912
  %.not30 = icmp eq i64 %i.h, 0
  br i1 %.not30, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_0
