begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 9, 8) i32 @ares_parse_into_addrinfo(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store ptr null, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store ptr null, ptr %i.c, align 8, !tbaa !17
  %i.d = call i32 @ares_dns_record_query_get(ptr noundef %0, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #3 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.thread92

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @ares_dns_record_rr_cnt(ptr noundef %0, i32 noundef 1) #3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread92, label %.preheader

.preheader:                                       ; preds = %bb.b, %.thread100
  %.058119 = phi i64 [ %i.aa, %.thread100 ], [ 0, %bb.b ] ; 2 uses
  %.059118 = phi i32 [ %.261108, %.thread100 ], [ 0, %bb.b ] ; 4 uses
  %.062117 = phi i32 [ %.264107, %.thread100 ], [ 0, %bb.b ] ; 4 uses
  %.065116 = phi i32 [ %.267106, %.thread100 ], [ 0, %bb.b ] ; 4 uses
  %i.g = call ptr @ares_dns_record_rr_get_const(ptr noundef %0, i32 noundef 1, i64 noundef %.058119) #3 ; 9 uses
  %i.h = call i32 @ares_dns_rr_get_class(ptr noundef %i.g) #3
  %.not82 = icmp eq i32 %i.h, 1
  br i1 %.not82, label %bb.c, label %.thread100

bb.c:                                             ; preds = %.preheader
  %i.i = call i32 @ares_dns_rr_get_type(ptr noundef %i.g) #3
  switch i32 %i.i, label %.thread100 [
    i32 5, label %bb.d
    i32 1, label %bb.g
    i32 28, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @ares_dns_rr_get_str(ptr noundef %i.g, i32 noundef 501) #3
  store ptr %i.j, ptr %i.a, align 8, !tbaa !12
  %i.k = call ptr @ares_append_addrinfo_cname(ptr noundef nonnull %i.b) #3 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread92, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @ares_dns_rr_get_ttl(ptr noundef %i.g) #3
  store i32 %i.m, ptr %i.k, align 8, !tbaa !19
  %i.n = call ptr @ares_dns_rr_get_name(ptr noundef %i.g) #3
  %i.o = call ptr @ares_strdup(ptr noundef %i.n) #3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !21
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %.thread92, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = call ptr @ares_strdup(ptr noundef %i.r) #3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  %.not111 = icmp eq ptr %i.s, null
  br i1 %.not111, label %.thread92, label %.thread100

bb.g:                                             ; preds = %bb.c
  %i.u = call i32 @ares_dns_rr_get_ttl(ptr noundef %i.g) #3
  %i.v = call ptr @ares_dns_rr_get_addr(ptr noundef %i.g, i32 noundef 101) #3
  %i.w = call i32 @ares_append_ai_node(i32 noundef 2, i16 noundef zeroext %2, i32 noundef %i.u, ptr noundef %i.v, ptr noundef nonnull %i.c) #3 ; 2 uses
  %.not84 = icmp eq i32 %i.w, 0
  br i1 %.not84, label %.thread100, label %.thread92

bb.h:                                             ; preds = %bb.c
  %i.x = call i32 @ares_dns_rr_get_ttl(ptr noundef %i.g) #3
  %i.y = call ptr @ares_dns_rr_get_addr6(ptr noundef %i.g, i32 noundef 2801) #3
  %i.z = call i32 @ares_append_ai_node(i32 noundef 10, i16 noundef zeroext %2, i32 noundef %i.x, ptr noundef %i.y, ptr noundef nonnull %i.c) #3 ; 2 uses
  %.not83 = icmp eq i32 %i.z, 0
  br i1 %.not83, label %.thread100, label %.thread92

.thread100:                                       ; preds = %bb.f, %bb.h, %bb.g, %.preheader, %bb.c
  %.261108 = phi i32 [ %.059118, %bb.h ], [ %.059118, %.preheader ], [ %.059118, %bb.c ], [ 1, %bb.f ], [ %.059118, %bb.g ] ; 3 uses
  %.264107 = phi i32 [ 1, %bb.h ], [ %.062117, %.preheader ], [ %.062117, %bb.c ], [ %.062117, %bb.f ], [ %.062117, %bb.g ] ; 2 uses
  %.267106 = phi i32 [ %.065116, %bb.h ], [ %.065116, %.preheader ], [ %.065116, %bb.c ], [ %.065116, %bb.f ], [ 1, %bb.g ] ; 2 uses
  %i.aa = add nuw i64 %.058119, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.e
  br i1 %exitcond.not, label %4, label %.preheader, !llvm.loop !23

4:                                                ; preds = %.thread100
  %5 = icmp ne i32 %.267106, 0
  %6 = icmp ne i32 %.264107, 0
  %or.cond = select i1 %5, i1 true, i1 %6         ; 2 uses
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %4
  %.not78 = icmp ne i32 %.261108, 0
  %.not79 = icmp eq i32 %1, 0
  %or.cond87 = and i1 %.not79, %.not78
  br i1 %or.cond87, label %bb.j, label %.thread92

bb.j:                                             ; preds = %bb.i, %4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.af = call i32 @ares_strcaseeq(ptr noundef nonnull %i.ac, ptr noundef %i.ae) #3
  %.not80 = icmp eq i32 %i.af, 0
  br i1 %.not80, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ag = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.j ]
  call void @ares_free(ptr noundef %i.ag) #3
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ai = call ptr @ares_strdup(ptr noundef %i.ah) #3 ; 2 uses
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !25
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread92, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !17
  call void @ares_addrinfo_cat_nodes(ptr noundef nonnull %i.ak, ptr noundef %i.al) #3
  store ptr null, ptr %i.c, align 8, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.not81 = icmp eq i32 %.261108, 0
  br i1 %.not81, label %.thread92, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !15
  call void @ares_addrinfo_cat_cnames(ptr noundef nonnull %3, ptr noundef %i.am) #3
  store ptr null, ptr %i.b, align 8, !tbaa !15
  br label %.thread92

.thread92:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.g, %bb.h, %bb.l, %bb.i, %bb.b, %bb.o, %bb.p, %bb.a
  %.4 = phi i32 [ %i.d, %bb.a ], [ 1, %bb.b ], [ 15, %bb.l ], [ 1, %bb.i ], [ 0, %bb.p ], [ 0, %bb.o ], [ 15, %bb.d ], [ 15, %bb.e ], [ %i.w, %bb.g ], [ %i.z, %bb.h ], [ 15, %bb.f ]
  %.4.fr = freeze i32 %.4                         ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !15
  call void @ares_freeaddrinfo_cnames(ptr noundef %i.an) #3
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !17
  call void @ares_freeaddrinfo_nodes(ptr noundef %i.ao) #3
  %i.ap = icmp eq i32 %.4.fr, 8
  %spec.select = select i1 %i.ap, i32 10, i32 %.4.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ares_dns_record_query_get(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ares_dns_record_rr_cnt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_dns_record_rr_get_const(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_dns_rr_get_class(ptr noundef) local_unnamed_addr #2

declare i32 @ares_dns_rr_get_type(ptr noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_str(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_append_addrinfo_cname(ptr noundef) local_unnamed_addr #2

declare i32 @ares_dns_rr_get_ttl(ptr noundef) local_unnamed_addr #2

declare ptr @ares_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ares_append_ai_node(i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_addr6(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ares_strcaseeq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ares_free(ptr noundef) local_unnamed_addr #2

declare void @ares_addrinfo_cat_nodes(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ares_addrinfo_cat_cnames(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ares_freeaddrinfo_cnames(ptr noundef) local_unnamed_addr #2

declare void @ares_freeaddrinfo_nodes(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS19ares_addrinfo_cname", !14, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS18ares_addrinfo_node", !14, i64 0}
!19 = !{!20, !9, i64 0}
!20 = !{!"ares_addrinfo_cname", !9, i64 0, !13, i64 8, !13, i64 16, !16, i64 24}
!21 = !{!20, !13, i64 8}
!22 = !{!20, !13, i64 16}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !13, i64 16}
!26 = !{!"ares_addrinfo", !16, i64 0, !18, i64 8, !13, i64 16}
end_hunk_0
