Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_parse_txt_reply?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ares_parse_txt_reply(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
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
  store ptr null, ptr %i.a, align 8, !tbaa !11
  store ptr null, ptr %3, align 8, !tbaa !12
  %i.c = call i32 @ares_dns_parse(ptr noundef %0, i64 noundef %1, i32 noundef 0, ptr noundef nonnull %i.a) #3 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread82.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.e = call i64 @ares_dns_record_rr_cnt(ptr noundef %i.d, i32 noundef 1) #3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread82.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.h = call i64 @ares_dns_record_rr_cnt(ptr noundef %i.g, i32 noundef 1) #3
  %.not120 = icmp eq i64 %i.h, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %.preheader
  %.not121 = icmp eq i32 %2, 0                    ; 2 uses
  %4 = select i1 %.not121, i32 3, i32 4           ; 3 uses
  br i1 %.not121, label %.lr.ph105.split, label %.lr.ph105.split.us

.lr.ph105.split.us:                               ; preds = %.lr.ph105, %.loopexit.us
  %.043104.us = phi i64 [ %i.at, %.loopexit.us ], [ 0, %.lr.ph105 ] ; 2 uses
  %.044103.us = phi ptr [ %.3.ph.us, %.loopexit.us ], [ null, %.lr.ph105 ] ; 5 uses
  %.046102.us = phi ptr [ %.4.ph.us, %.loopexit.us ], [ null, %.lr.ph105 ] ; 6 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.j = call ptr @ares_dns_record_rr_get(ptr noundef %i.i, i32 noundef 1, i64 noundef %.043104.us) #3 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread82, label %bb.c

bb.c:                                             ; preds = %.lr.ph105.split.us
  %i.l = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.j) #3
  %.not61.us = icmp eq i32 %i.l, 1
  br i1 %.not61.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.j) #3
  %.not62.us = icmp eq i32 %i.m, 3
  br i1 %.not62.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = call i32 @ares_dns_rr_get_type(ptr noundef nonnull %i.j) #3
  %.not63.us = icmp eq i32 %i.n, 16
  br i1 %.not63.us, label %bb.f, label %.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.o = call i64 @ares_dns_rr_get_abin_cnt(ptr noundef nonnull %i.j, i32 noundef 1601) #3 ; 3 uses
  %.not123 = icmp eq i64 %i.o, 0
  br i1 %.not123, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.p = call ptr @ares_malloc_data(i32 noundef %4) #3 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us.preheader
  %.not64.us111.peel = icmp eq ptr %.044103.us, null
  br i1 %.not64.us111.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %.044103.us, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.248.us112.peel = phi ptr [ %.046102.us, %bb.h ], [ %i.p, %bb.g ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 1, ptr %i.r, align 8, !tbaa !18
  %i.s = call ptr @ares_dns_rr_get_abin(ptr noundef nonnull %i.j, i32 noundef 1601, i64 noundef 0, ptr noundef nonnull %i.b) #3
  %i.t = load i64, ptr %i.b, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  %i.v = call ptr @ares_malloc(i64 noundef %i.u) #3 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !20
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.s, i64 %i.y, i1 false)
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !21
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %exitcond.peel.not = icmp eq i64 %i.o, 1
  br i1 %exitcond.peel.not, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.j, %bb.l
  %.04298.us108 = phi i64 [ %i.as, %bb.l ], [ 1, %bb.j ] ; 2 uses
  %.14597.us109 = phi ptr [ %i.ae, %bb.l ], [ %i.p, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.ae = call ptr @ares_malloc_data(i32 noundef %4) #3 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph.us
  store ptr %i.ae, ptr %.14597.us109, align 8, !tbaa !17
  %i.ag = call ptr @ares_dns_rr_get_abin(ptr noundef nonnull %i.j, i32 noundef 1601, i64 noundef %.04298.us108, ptr noundef nonnull %i.b) #3
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  %i.aj = call ptr @ares_malloc(i64 noundef %i.ai) #3 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !20
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load i64, ptr %i.b, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ag, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !21
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %i.as = add nuw i64 %.04298.us108, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.o
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !8

.loopexit.us:                                     ; preds = %bb.l, %bb.j, %bb.f, %bb.e, %bb.d
  %.4.ph.us = phi ptr [ %.046102.us, %bb.d ], [ %.046102.us, %bb.e ], [ %.046102.us, %bb.f ], [ %.248.us112.peel, %bb.j ], [ %.248.us112.peel, %bb.l ] ; 2 uses
  %.3.ph.us = phi ptr [ %.044103.us, %bb.d ], [ %.044103.us, %bb.e ], [ %.044103.us, %bb.f ], [ %i.p, %bb.j ], [ %i.ae, %bb.l ]
  %i.at = add nuw i64 %.043104.us, 1              ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.av = call i64 @ares_dns_record_rr_cnt(ptr noundef %i.au, i32 noundef 1) #3
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph105.split.us, label %._crit_edge

.lr.ph105.split:                                  ; preds = %.lr.ph105, %.loopexit
  %.043104 = phi i64 [ %i.bt, %.loopexit ], [ 0, %.lr.ph105 ] ; 2 uses
  %.044103 = phi ptr [ %.3.ph, %.loopexit ], [ null, %.lr.ph105 ] ; 4 uses
  %.046102 = phi ptr [ %.4.ph, %.loopexit ], [ null, %.lr.ph105 ] ; 5 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ay = call ptr @ares_dns_record_rr_get(ptr noundef %i.ax, i32 noundef 1, i64 noundef %.043104) #3 ; 6 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread82, label %bb.m

bb.m:                                             ; preds = %.lr.ph105.split
  %i.ba = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.ay) #3
  %.not61 = icmp eq i32 %i.ba, 1
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = call i32 @ares_dns_rr_get_class(ptr noundef nonnull %i.ay) #3
  %.not62 = icmp eq i32 %i.bb, 3
  br i1 %.not62, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = call i32 @ares_dns_rr_get_type(ptr noundef nonnull %i.ay) #3
  %.not63 = icmp eq i32 %i.bc, 16
  br i1 %.not63, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bd = call i64 @ares_dns_rr_get_abin_cnt(ptr noundef nonnull %i.ay, i32 noundef 1601) #3 ; 2 uses
  %.not122 = icmp eq i64 %i.bd, 0
  br i1 %.not122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.t
  %.04298.us = phi i64 [ %i.bs, %bb.t ], [ 0, %bb.p ] ; 2 uses
  %.14597.us = phi ptr [ %i.be, %bb.t ], [ %.044103, %bb.p ] ; 2 uses
  %.14796.us = phi ptr [ %.248.us, %bb.t ], [ %.046102, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.be = call ptr @ares_malloc_data(i32 noundef %4) #3 ; 7 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %.not64.us = icmp eq ptr %.14597.us, null
  br i1 %.not64.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.be, ptr %.14597.us, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.248.us = phi ptr [ %.14796.us, %bb.r ], [ %i.be, %bb.q ] ; 3 uses
  %i.bg = call ptr @ares_dns_rr_get_abin(ptr noundef nonnull %i.ay, i32 noundef 1601, i64 noundef %.04298.us, ptr noundef nonnull %i.b) #3
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bi = add i64 %i.bh, 1
  %i.bj = call ptr @ares_malloc(i64 noundef %i.bi) #3 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !20
  %i.bl = icmp eq ptr %i.bj, null
  br i1 %i.bl, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bg, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  store i8 0, ptr %i.bp, align 1, !tbaa !21
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  %i.bs = add nuw i64 %.04298.us, 1               ; 2 uses
  %exitcond137.not = icmp eq i64 %i.bs, %i.bd
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %.lr.ph.us.preheader, %bb.i, %bb.k, %.lr.ph.us, %.lr.ph, %bb.s
  %.us-phi = phi ptr [ %.248.us112.peel, %bb.k ], [ %.14796.us, %.lr.ph ], [ %.248.us, %bb.s ], [ %.248.us112.peel, %.lr.ph.us ], [ %.046102.us, %.lr.ph.us.preheader ], [ %.248.us112.peel, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %.thread82

.loopexit:                                        ; preds = %bb.t, %bb.p, %bb.n, %bb.o
  %.4.ph = phi ptr [ %.046102, %bb.n ], [ %.046102, %bb.o ], [ %.046102, %bb.p ], [ %.248.us, %bb.t ] ; 2 uses
  %.3.ph = phi ptr [ %.044103, %bb.n ], [ %.044103, %bb.o ], [ %.044103, %bb.p ], [ %i.be, %bb.t ]
  %i.bt = add nuw i64 %.043104, 1                 ; 2 uses
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.bv = call i64 @ares_dns_record_rr_cnt(ptr noundef %i.bu, i32 noundef 1) #3
  %i.bw = icmp ult i64 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph105.split, label %._crit_edge

.thread82:                                        ; preds = %.lr.ph105.split.us, %.lr.ph105.split, %.thread
  %.588 = phi ptr [ %.us-phi, %.thread ], [ %.046102, %.lr.ph105.split ], [ %.046102.us, %.lr.ph105.split.us ] ; 2 uses
  %.45487 = phi i32 [ 15, %.thread ], [ 10, %.lr.ph105.split ], [ 10, %.lr.ph105.split.us ] ; 2 uses
  %.not66 = icmp eq ptr %.588, null
  br i1 %.not66, label %.thread82.thread, label %bb.u

bb.u:                                             ; preds = %.thread82
  call void @ares_free_data(ptr noundef nonnull %.588) #3
  br label %.thread82.thread

._crit_edge:                                      ; preds = %.loopexit.us, %.loopexit, %.preheader
  %.046.lcssa = phi ptr [ null, %.preheader ], [ %.4.ph, %.loopexit ], [ %.4.ph.us, %.loopexit.us ]
  store ptr %.046.lcssa, ptr %3, align 8, !tbaa !12
  br label %.thread82.thread

.thread82.thread:                                 ; preds = %bb.a, %bb.b, %.thread82, %bb.u, %._crit_edge
  %.45486 = phi i32 [ %.45487, %.thread82 ], [ %.45487, %bb.u ], [ 0, %._crit_edge ], [ %i.c, %bb.a ], [ 1, %bb.b ]
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @ares_dns_record_destroy(ptr noundef %i.bx) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.45486
}

; Function Attrs: nounwind uwtable
define i32 @ares_parse_txt_reply_ext(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !23}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS15ares_dns_record", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"p1 _ZTS12ares_txt_ext", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"ares_txt_ext", !13, i64 0, !14, i64 8, !15, i64 16, !4, i64 24}
!17 = !{!16, !13, i64 0}
!18 = !{!16, !4, i64 24}
!19 = !{!15, !15, i64 0}
!20 = !{!16, !14, i64 8}
!21 = !{!4, !4, i64 0}
!22 = !{!16, !15, i64 16}
!23 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
