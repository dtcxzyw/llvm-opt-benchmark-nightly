begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @ares_parse_txt_reply(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = tail call fastcc i32 @ares_parse_txt_reply_int(ptr noundef %0, i64 noundef %i.b, i32 noundef 0, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 10, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ares_parse_txt_reply_int(ptr noundef %0, i64 noundef range(i64 0, 2147483648) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !12
  store ptr null, ptr %3, align 8, !tbaa !15
  %i.c = call i32 @ares_dns_parse(ptr noundef %0, i64 noundef %1, i32 noundef 0, ptr noundef nonnull %i.a) #3 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread83.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = call i64 @ares_dns_record_rr_cnt(ptr noundef %i.d, i32 noundef 1) #3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread83.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.h = call i64 @ares_dns_record_rr_cnt(ptr noundef %i.g, i32 noundef 1) #3
  %.not121 = icmp eq i64 %i.h, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader
  %.not122 = icmp eq i32 %2, 0                    ; 2 uses
  %i.i = select i1 %.not122, i32 3, i32 4         ; 3 uses
  br i1 %.not122, label %.lr.ph106.split, label %.lr.ph106.split.us

.lr.ph106.split.us:                               ; preds = %.lr.ph106, %.loopexit.us
  %.046105.us = phi ptr [ %.450.ph.us, %.loopexit.us ], [ null, %.lr.ph106 ] ; 6 uses
  %.051104.us = phi i64 [ %4, %.loopexit.us ], [ 0, %.lr.ph106 ] ; 2 uses
  %.052103.us = phi ptr [ %.355.ph.us, %.loopexit.us ], [ null, %.lr.ph106 ] ; 5 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.k = call ptr @ares_dns_record_rr_get(ptr noundef %i.j, i32 noundef 1, i64 noundef %.051104.us) #3 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread83, label %bb.c

bb.c:                                             ; preds = %.lr.ph106.split.us
  %i.m = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.k) #3
  %.not61.us = icmp eq i32 %i.m, 1
  br i1 %.not61.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.k) #3
  %.not62.us = icmp eq i32 %i.n, 3
  br i1 %.not62.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = call i32 @ares_dns_rr_get_type(ptr noundef nonnull %i.k) #3
  %.not63.us = icmp eq i32 %i.o, 16
  br i1 %.not63.us, label %bb.f, label %.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.p = call i64 @ares_dns_rr_get_abin_cnt(ptr noundef nonnull %i.k, i32 noundef 1601) #3 ; 3 uses
  %.not124 = icmp eq i64 %i.p, 0
  br i1 %.not124, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.q = call ptr @ares_malloc_data(i32 noundef %i.i) #3 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us.preheader
  %.not64.us111.peel = icmp eq ptr %.052103.us, null
  br i1 %.not64.us111.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.q, ptr %.052103.us, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.248.us112.peel = phi ptr [ %.046105.us, %bb.h ], [ %i.q, %bb.g ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i8 1, ptr %i.s, align 8, !tbaa !21
  %i.t = call ptr @ares_dns_rr_get_abin(ptr noundef nonnull %i.k, i32 noundef 1601, i64 noundef 0, ptr noundef nonnull %i.b) #3
  %i.u = load i64, ptr %i.b, align 8, !tbaa !22
  %i.v = add i64 %i.u, 1
  %i.w = call ptr @ares_malloc(i64 noundef %i.v) #3 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !23
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.b, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.t, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !24
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %exitcond.peel.not = icmp eq i64 %i.p, 1
  br i1 %exitcond.peel.not, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.j, %bb.l
  %.04599.us108 = phi i64 [ %i.at, %bb.l ], [ 1, %bb.j ] ; 2 uses
  %.15397.us110 = phi ptr [ %i.af, %bb.l ], [ %i.q, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.af = call ptr @ares_malloc_data(i32 noundef %i.i) #3 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph.us
  store ptr %i.af, ptr %.15397.us110, align 8, !tbaa !16
  %i.ah = call ptr @ares_dns_rr_get_abin(ptr noundef nonnull %i.k, i32 noundef 1601, i64 noundef %.04599.us108, ptr noundef nonnull %i.b) #3
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !22
  %i.aj = add i64 %i.ai, 1
  %i.ak = call ptr @ares_malloc(i64 noundef %i.aj) #3 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !23
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.b, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.ah, i64 %i.an, i1 false)
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !23
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !24
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %i.at = add nuw i64 %.04599.us108, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.p
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !26

.loopexit.us:                                     ; preds = %bb.l, %bb.j, %bb.f, %bb.e, %bb.d
  %.355.ph.us = phi ptr [ %.052103.us, %bb.d ], [ %.052103.us, %bb.e ], [ %.052103.us, %bb.f ], [ %i.q, %bb.j ], [ %i.af, %bb.l ]
  %.450.ph.us = phi ptr [ %.046105.us, %bb.d ], [ %.046105.us, %bb.e ], [ %.046105.us, %bb.f ], [ %.248.us112.peel, %bb.j ], [ %.248.us112.peel, %bb.l ] ; 2 uses
  %4 = add nuw i64 %.051104.us, 1                 ; 2 uses
  %5 = load ptr, ptr %i.a, align 8, !tbaa !12
  %6 = call i64 @ares_dns_record_rr_cnt(ptr noundef %5, i32 noundef 1) #3
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %.lr.ph106.split.us, label %._crit_edge, !llvm.loop !29

.lr.ph106.split:                                  ; preds = %.lr.ph106, %.loopexit
  %.046105 = phi ptr [ %.450.ph, %.loopexit ], [ null, %.lr.ph106 ] ; 5 uses
  %.051104 = phi i64 [ %i.bq, %.loopexit ], [ 0, %.lr.ph106 ] ; 2 uses
  %.052103 = phi ptr [ %.355.ph, %.loopexit ], [ null, %.lr.ph106 ] ; 4 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.av = call ptr @ares_dns_record_rr_get(ptr noundef %i.au, i32 noundef 1, i64 noundef %.051104) #3 ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread83, label %bb.m

bb.m:                                             ; preds = %.lr.ph106.split
  %i.ax = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.av) #3
  %.not61 = icmp eq i32 %i.ax, 1
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.av) #3
  %.not62 = icmp eq i32 %i.ay, 3
  br i1 %.not62, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = call i32 @ares_dns_rr_get_type(ptr noundef nonnull %i.av) #3
  %.not63 = icmp eq i32 %i.az, 16
  br i1 %.not63, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ba = call i64 @ares_dns_rr_get_abin_cnt(ptr noundef nonnull %i.av, i32 noundef 1601) #3 ; 2 uses
  %.not123 = icmp eq i64 %i.ba, 0
  br i1 %.not123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.t
  %.04599.us = phi i64 [ %i.bp, %bb.t ], [ 0, %bb.p ] ; 2 uses
  %.14798.us = phi ptr [ %.248.us, %bb.t ], [ %.046105, %bb.p ] ; 2 uses
  %.15397.us = phi ptr [ %i.bb, %bb.t ], [ %.052103, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.bb = call ptr @ares_malloc_data(i32 noundef %i.i) #3 ; 7 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %.not64.us = icmp eq ptr %.15397.us, null
  br i1 %.not64.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bb, ptr %.15397.us, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.248.us = phi ptr [ %.14798.us, %bb.r ], [ %i.bb, %bb.q ] ; 3 uses
  %i.bd = call ptr @ares_dns_rr_get_abin(ptr noundef nonnull %i.av, i32 noundef 1601, i64 noundef %.04599.us, ptr noundef nonnull %i.b) #3
  %i.be = load i64, ptr %i.b, align 8, !tbaa !22
  %i.bf = add i64 %i.be, 1
  %i.bg = call ptr @ares_malloc(i64 noundef %i.bf) #3 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !23
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.bd, i64 %i.bj, i1 false)
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !24
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %i.bp = add nuw i64 %.04599.us, 1               ; 2 uses
  %exitcond138.not = icmp eq i64 %i.bp, %i.ba
  br i1 %exitcond138.not, label %.loopexit, label %.lr.ph, !llvm.loop !30

.thread:                                          ; preds = %.lr.ph.us.preheader, %bb.i, %bb.k, %.lr.ph.us, %.lr.ph, %bb.s
  %.us-phi = phi ptr [ %.248.us112.peel, %bb.k ], [ %.14798.us, %.lr.ph ], [ %.248.us, %bb.s ], [ %.248.us112.peel, %.lr.ph.us ], [ %.046105.us, %.lr.ph.us.preheader ], [ %.248.us112.peel, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %.thread83

.loopexit:                                        ; preds = %bb.t, %bb.p, %bb.n, %bb.o
  %.355.ph = phi ptr [ %.052103, %bb.n ], [ %.052103, %bb.o ], [ %.052103, %bb.p ], [ %i.bb, %bb.t ]
  %.450.ph = phi ptr [ %.046105, %bb.n ], [ %.046105, %bb.o ], [ %.046105, %bb.p ], [ %.248.us, %bb.t ] ; 2 uses
  %i.bq = add nuw i64 %.051104, 1                 ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bs = call i64 @ares_dns_record_rr_cnt(ptr noundef %i.br, i32 noundef 1) #3
  %i.bt = icmp ult i64 %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph106.split, label %._crit_edge, !llvm.loop !29

.thread83:                                        ; preds = %.lr.ph106.split.us, %.lr.ph106.split, %.thread
  %.489 = phi i32 [ 15, %.thread ], [ 10, %.lr.ph106.split ], [ 10, %.lr.ph106.split.us ] ; 2 uses
  %.587 = phi ptr [ %.us-phi, %.thread ], [ %.046105, %.lr.ph106.split ], [ %.046105.us, %.lr.ph106.split.us ] ; 2 uses
  %.not66 = icmp eq ptr %.587, null
  br i1 %.not66, label %.thread83.thread, label %bb.u

bb.u:                                             ; preds = %.thread83
  call void @ares_free_data(ptr noundef nonnull %.587) #3
  br label %.thread83.thread

._crit_edge:                                      ; preds = %.loopexit.us, %.loopexit, %.preheader
  %.046.lcssa = phi ptr [ null, %.preheader ], [ %.450.ph, %.loopexit ], [ %.450.ph.us, %.loopexit.us ]
  store ptr %.046.lcssa, ptr %3, align 8, !tbaa !15
  br label %.thread83.thread

.thread83.thread:                                 ; preds = %bb.a, %bb.b, %.thread83, %bb.u, %._crit_edge
  %.488 = phi i32 [ %.489, %.thread83 ], [ %.489, %bb.u ], [ 0, %._crit_edge ], [ %i.c, %bb.a ], [ 1, %bb.b ]
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @ares_dns_record_destroy(ptr noundef %i.bu) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.488
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ares_parse_txt_reply_ext(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = tail call fastcc i32 @ares_parse_txt_reply_int(ptr noundef %0, i64 noundef %i.b, i32 noundef 1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 10, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ares_dns_parse(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ares_dns_record_rr_cnt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_dns_record_rr_get(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ares_dns_rr_get_class(ptr noundef) local_unnamed_addr #2

declare i32 @ares_dns_rr_get_type(ptr noundef) local_unnamed_addr #2

declare i64 @ares_dns_rr_get_abin_cnt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ares_malloc_data(i32 noundef) local_unnamed_addr #2

declare ptr @ares_dns_rr_get_abin(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ares_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ares_free_data(ptr noundef) local_unnamed_addr #2

declare void @ares_dns_record_destroy(ptr noundef) local_unnamed_addr #2

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
!13 = !{!"p1 _ZTS15ares_dns_record", !14, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"ares_txt_ext", !18, i64 0, !19, i64 8, !20, i64 16, !10, i64 24}
!18 = !{!"p1 _ZTS12ares_txt_ext", !14, i64 0}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!"long", !10, i64 0}
!21 = !{!17, !10, i64 24}
!22 = !{!20, !20, i64 0}
!23 = !{!17, !19, i64 8}
!24 = !{!10, !10, i64 0}
!25 = !{!17, !20, i64 16}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.peeled.count", i32 1}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
end_hunk_0
