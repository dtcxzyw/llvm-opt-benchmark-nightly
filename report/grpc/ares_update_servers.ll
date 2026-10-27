Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_update_servers?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
begin_hunk_0_@ares_set_servers:bb.a
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ares_llist_create(ptr noundef nonnull @ares_free) #9 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not32.i = icmp eq ptr %1, null
  br i1 %.not32.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.02333.i = phi ptr [ %i.p, %bb.i ], [ %1, %.preheader.i ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02333.i, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  switch i32 %i.e, label %bb.i [
    i32 2, label %bb.c
    i32 10, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.f = tail call ptr @ares_malloc_zero(i64 noundef 44) #9 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !37
  switch i32 %i.h, label %bb.g [
    i32 2, label %bb.e
    i32 10, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %.02333.i, i64 12
  %i.k = load i32, ptr %i.j, align 4
  store i32 %i.k, ptr %i.i, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %.02333.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.n = tail call ptr @ares_llist_insert_last(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #9
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ares_free(ptr noundef nonnull %i.f) #9
  br label %.sink.split

bb.i:                                             ; preds = %bb.g, %.lr.ph.i
  %i.p = load ptr, ptr %.02333.i, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.i, %.preheader.i
  tail call void @ares_channel_lock(ptr noundef nonnull %0) #9
  %i.q = tail call i32 @ares_servers_update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 1)
  tail call void @ares_channel_unlock(ptr noundef nonnull %0) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.h, %bb.b, %.loopexit
  %.0.ph = phi i32 [ %i.q, %.loopexit ], [ 15, %bb.h ], [ 15, %bb.b ], [ 15, %bb.c ]
  tail call void @ares_llist_destroy(ptr noundef %i.b) #9
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 16) i32 @ares_set_servers_ports(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ares_llist_create(ptr noundef nonnull @ares_free) #9 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not36.i = icmp eq ptr %1, null
  br i1 %.not36.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.02737.i = phi ptr [ %i.x, %bb.i ], [ %1, %.preheader.i ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02737.i, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !56
  switch i32 %i.e, label %bb.i [
    i32 2, label %bb.c
    i32 10, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.f = tail call ptr @ares_malloc_zero(i64 noundef 44) #9 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !37
  switch i32 %i.h, label %bb.g [
    i32 2, label %bb.e
    i32 10, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %.02737.i, i64 12
  %i.k = load i32, ptr %i.j, align 4
  store i32 %i.k, ptr %i.i, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %.02737.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.02737.i, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !79
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 %i.p, ptr %i.q, align 4, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.02737.i, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !80
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 %i.t, ptr %i.u, align 2, !tbaa !17
  %i.v = tail call ptr @ares_llist_insert_last(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #9
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ares_free(ptr noundef nonnull %i.f) #9
  br label %.sink.split

bb.i:                                             ; preds = %bb.g, %.lr.ph.i
  %i.x = load ptr, ptr %.02737.i, align 8, !tbaa !55 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.i, %.preheader.i
  tail call void @ares_channel_lock(ptr noundef nonnull %0) #9
  %i.y = tail call i32 @ares_servers_update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 1)
  tail call void @ares_channel_unlock(ptr noundef nonnull %0) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.h, %bb.b, %.loopexit
  %.0.ph = phi i32 [ %i.y, %.loopexit ], [ 15, %bb.h ], [ 15, %bb.b ], [ 15, %bb.c ]
  tail call void @ares_llist_destroy(ptr noundef %i.b) #9
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ares_set_servers_csv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @set_servers_csv(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @set_servers_csv(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @ares_strlen(ptr noundef %1) #9
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ares_channel_lock(ptr noundef nonnull %0) #9
  %i.e = tail call i32 @ares_servers_update(ptr noundef nonnull %0, ptr noundef null, i32 noundef 1)
  tail call void @ares_channel_unlock(ptr noundef nonnull %0) #9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = call i32 @ares_sconfig_append_fromstr(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @ares_llist_destroy(ptr noundef %i.g) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @ares_channel_lock(ptr noundef nonnull %0) #9
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.i = call i32 @ares_servers_update(ptr noundef nonnull %0, ptr noundef %i.h, i32 noundef 1)
  call void @ares_channel_unlock(ptr noundef nonnull %0) #9
  call void @ares_llist_destroy(ptr noundef %i.h) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.c ], [ %i.f, %bb.e ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ares_set_servers_ports_csv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @set_servers_csv(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define ptr @ares_get_servers_csv(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @ares_channel_lock(ptr noundef %0) #9
  %i.a = tail call ptr @ares_buf_create() #9      ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = tail call ptr @ares_slist_node_first(ptr noundef %i.d) #9 ; 2 uses
  %.not26 = icmp eq ptr %i.e, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.01727 = phi ptr [ %i.j, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = tail call ptr @ares_slist_node_val(ptr noundef nonnull %.01727) #9
  %i.g = tail call i64 @ares_buf_len(ptr noundef nonnull %i.a) #9
  %.not22 = icmp eq i64 %i.g, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = tail call i32 @ares_buf_append_byte(ptr noundef nonnull %i.a, i8 noundef zeroext 44) #9
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.i = tail call i32 @ares_get_server_addr(ptr noundef %i.f, ptr noundef nonnull %i.a)
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @ares_slist_node_next(ptr noundef nonnull %.01727) #9 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.k = tail call ptr @ares_buf_finish_str(ptr noundef nonnull %i.a, ptr noundef null) #9
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.a, %._crit_edge
  %.019 = phi ptr [ null, %bb.a ], [ null, %._crit_edge ], [ %i.a, %bb.c ], [ %i.a, %bb.d ]
  %.018 = phi ptr [ null, %bb.a ], [ %i.k, %._crit_edge ], [ null, %bb.c ], [ null, %bb.d ]
  tail call void @ares_channel_unlock(ptr noundef %0) #9
  tail call void @ares_buf_destroy(ptr noundef %.019) #9
  ret ptr %.018
}

declare ptr @ares_buf_create() local_unnamed_addr #3

declare i64 @ares_buf_len(ptr noundef) local_unnamed_addr #3

declare ptr @ares_buf_finish_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ares_set_server_state_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %1, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %2, ptr %i.c, align 8, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @ares_str_isnum(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @ares_uri_parse_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ares_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ares_uri_get_scheme(ptr noundef) local_unnamed_addr #3

declare ptr @ares_uri_get_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @ares_dns_pton(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i16 @ares_uri_get_port(ptr noundef) local_unnamed_addr #3

declare ptr @ares_uri_get_query_key(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ares_uri_destroy(ptr noundef) local_unnamed_addr #3

declare i64 @ares_buf_consume_whitespace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ares_buf_begins_with(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ares_buf_consume(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ares_buf_tag(ptr noundef) local_unnamed_addr #3

declare i64 @ares_buf_consume_until_charset(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ares_buf_tag_fetch_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ares_buf_tag_rollback(ptr noundef) local_unnamed_addr #3

declare i64 @ares_buf_consume_charset(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ares_llist_node_prev(ptr noundef) local_unnamed_addr #3

declare ptr @ares_slist_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ares_destroy_server(ptr noundef) local_unnamed_addr #3

declare void @ares_slist_node_destroy(ptr noundef) local_unnamed_addr #3

declare i64 @ares_slist_len(ptr noundef) local_unnamed_addr #3

declare ptr @ares_slist_node_last(ptr noundef) local_unnamed_addr #3

declare ptr @ares_uri_create() local_unnamed_addr #3

declare i32 @ares_uri_set_scheme(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @ares_uri_set_host(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ares_uri_set_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare i32 @ares_uri_set_query_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ares_uri_write_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"ares_addr", !6, i64 0, !5, i64 4}
!10 = !{!9, !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS10ares_llist", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"", !9, i64 0, !15, i64 20, !15, i64 22, !5, i64 24, !6, i64 40}
!17 = !{!16, !15, i64 22}
!18 = !{!16, !15, i64 20}
!19 = !{!"long", !5, i64 0}
!20 = !{!"any p2 pointer", !12, i64 0}
!21 = !{!"p2 omnipotent char", !20, i64 0}
!22 = !{!"p1 _ZTS8apattern", !12, i64 0}
!23 = !{!"p1 omnipotent char", !12, i64 0}
!24 = !{!"p1 _ZTS17ares_thread_mutex", !12, i64 0}
!25 = !{!"p1 _ZTS16ares_thread_cond", !12, i64 0}
!26 = !{!"p1 _ZTS10ares_slist", !12, i64 0}
!27 = !{!"p1 _ZTS15ares_rand_state", !12, i64 0}
!28 = !{!"p1 _ZTS16ares_htable_szvp", !12, i64 0}
!29 = !{!"p1 _ZTS16ares_htable_asvp", !12, i64 0}
!30 = !{!"ares_socket_functions_ex", !6, i64 0, !6, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80}
end_hunk_0
