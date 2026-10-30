Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/uncompr?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zng_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i64 }

@.src = private unnamed_addr constant [48 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/uncompr.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 32, i32 11 }, ptr @0, i8 3, i8 0 }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 33, i32 9 }, ptr @0, i8 3, i8 0 }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 34, i32 16 }, ptr @0, i8 3, i8 0 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 35, i32 9 }, ptr @0, i8 3, i8 1 }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 56, i32 18 }, ptr @0 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 60, i32 17 }, ptr @0 }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 65, i32 23 }, ptr @0 }
@8 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 65, i32 5 }, ptr @0, i8 3, i8 1 }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 65, i32 16 }, ptr @0 }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 67, i32 9 }, ptr @0, i8 3, i8 1 }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 74, i32 39 }, ptr @0 }

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_uncompress2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !func_sanitize !15 {
bb.a:
  %4 = alloca %struct.zng_stream_s, align 8       ; 11 uses
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp ne ptr %3, null, !nosanitize !16
  %i.c = ptrtoint ptr %3 to i64, !nosanitize !16  ; 3 uses
  %i.d = and i64 %i.c, 7, !nosanitize !16
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !16     ; 2 uses
  %i.f = and i1 %i.b, %i.e, !nosanitize !16
  br i1 %i.f, label %bb.c, label %bb.b, !prof !17, !nosanitize !16

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1, i64 %i.c) #6, !nosanitize !16
  br label %bb.c, !nosanitize !16

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i64, ptr %3, align 8, !tbaa !13
  %i.h = icmp ne ptr %1, null, !nosanitize !16
  %i.i = ptrtoint ptr %1 to i64, !nosanitize !16  ; 5 uses
  %i.j = and i64 %i.i, 7, !nosanitize !16
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !16     ; 3 uses
  %i.l = and i1 %i.h, %i.k, !nosanitize !16
  br i1 %i.l, label %bb.e, label %bb.d, !prof !17, !nosanitize !16

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @2, i64 %i.i) #6, !nosanitize !16
  br label %bb.e, !nosanitize !16

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %.thread, label %bb.g, !prof !17, !nosanitize !16

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @3, i64 %i.i) #6, !nosanitize !16
  %i.n = load i64, ptr %1, align 8, !tbaa !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @4, i64 %i.i) #6, !nosanitize !16
  br label %.thread, !nosanitize !16

.thread:                                          ; preds = %bb.f, %bb.g
  %i.o = phi i64 [ %i.n, %bb.g ], [ %i.m, %bb.f ]
  store i64 0, ptr %1, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.e
  %.029.a = phi ptr [ %0, %.thread ], [ %i.a, %bb.e ] ; 2 uses
  %.0 = phi i64 [ %i.o, %.thread ], [ 1, %bb.e ]
  store ptr %2, ptr %4, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = call i32 @zng_inflateInit(ptr noundef nonnull %4) #6 ; 2 uses
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.i, label %bb.ag

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.029.a, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !25
  br label %bb.j

thread-pre-split:                                 ; preds = %bb.p
  %.pr = load i32, ptr %i.t, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %bb.i
  %i.u = phi i32 [ %.pr, %thread-pre-split ], [ 0, %bb.i ]
  %.026 = phi i64 [ %.127, %thread-pre-split ], [ %i.g, %bb.i ] ; 4 uses
  %.1 = phi i64 [ %.2, %thread-pre-split ], [ %.0, %bb.i ] ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = call i64 @llvm.umin.i64(i64 %.1, i64 4294967295) ; 3 uses
  %i.x = trunc nuw i64 %i.w to i32
  store i32 %i.x, ptr %i.t, align 8, !tbaa !25
  %i.y = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.1, i64 %i.w), !nosanitize !16 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 0, !nosanitize !16 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.y, 1, !nosanitize !16
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !26, !nosanitize !16

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_sub_overflow(ptr nonnull @5, i64 %.1, i64 %i.w) #7, !nosanitize !16
  br label %bb.m, !nosanitize !16

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.2 = phi i64 [ %.1, %bb.j ], [ %i.z, %bb.l ], [ %i.z, %bb.k ] ; 3 uses
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !23
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ad = call i64 @llvm.umin.i64(i64 %.026, i64 4294967295) ; 3 uses
  %i.ae = trunc nuw i64 %i.ad to i32
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !23
  %i.af = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.026, i64 %i.ad), !nosanitize !16 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 0, !nosanitize !16 ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.af, 1, !nosanitize !16
  br i1 %i.ah, label %bb.o, label %bb.p, !prof !26, !nosanitize !16

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_sub_overflow(ptr nonnull @6, i64 %.026, i64 %i.ad) #7, !nosanitize !16
  br label %bb.p, !nosanitize !16

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.127 = phi i64 [ %.026, %bb.m ], [ %i.ag, %bb.o ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ai = call i32 @zng_inflate(ptr noundef nonnull %4, i32 noundef 0) #6 ; 4 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %thread-pre-split, label %bb.q, !llvm.loop !14

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !23
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.127, i64 %i.al), !nosanitize !16 ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 0, !nosanitize !16 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.am, 1, !nosanitize !16
  br i1 %i.ao, label %bb.r, label %bb.s, !prof !26, !nosanitize !16

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_add_overflow(ptr nonnull @7, i64 %.127, i64 %i.al) #7, !nosanitize !16
  br label %bb.s, !nosanitize !16

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.e, label %bb.u, label %bb.t, !prof !17, !nosanitize !16

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @8, i64 %i.c) #6, !nosanitize !16
  br label %bb.u, !nosanitize !16

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ap = load i64, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.aq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ap, i64 %i.an), !nosanitize !16 ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 0, !nosanitize !16
  %i.as = extractvalue { i64, i1 } %i.aq, 1, !nosanitize !16
  br i1 %i.as, label %bb.v, label %bb.w, !prof !26, !nosanitize !16

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_sub_overflow(ptr nonnull @9, i64 %i.ap, i64 %i.an) #7, !nosanitize !16
  br label %bb.w, !nosanitize !16

bb.w:                                             ; preds = %bb.v, %bb.u
  store i64 %i.ar, ptr %3, align 8, !tbaa !13
  %.not33 = icmp eq ptr %.029.a, %i.a
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  br i1 %.not33, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.k, label %bb.z, label %bb.y, !prof !17, !nosanitize !16

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @10, i64 %i.i) #6, !nosanitize !16
  br label %bb.z, !nosanitize !16

bb.z:                                             ; preds = %bb.y, %bb.x
  store i64 %i.au, ptr %1, align 8, !tbaa !13
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp eq i32 %i.ai, -5
  %or.cond = and i1 %i.aw, %i.av
  %spec.select = select i1 %or.cond, i64 1, i64 %.2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3 = phi i64 [ %.2, %bb.z ], [ %spec.select, %bb.aa ] ; 2 uses
  %i.ax = call i32 @zng_inflateEnd(ptr noundef nonnull %4) #6 ; 0 uses
  switch i32 %i.ai, label %bb.af [
    i32 1, label %bb.ag
    i32 2, label %.fold.split
    i32 -5, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ay = load i32, ptr %i.t, align 8, !tbaa !25
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.3, i64 %i.az), !nosanitize !16 ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 0, !nosanitize !16
  %i.bc = extractvalue { i64, i1 } %i.ba, 1, !nosanitize !16
  br i1 %i.bc, label %bb.ad, label %bb.ae, !prof !26, !nosanitize !16

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_add_overflow(ptr nonnull @11, i64 %.3, i64 %i.az) #7, !nosanitize !16
  br label %bb.ae, !nosanitize !16

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not34 = icmp eq i64 %i.bb, 0
  br i1 %.not34, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ab, %bb.ae
  br label %bb.ag

.fold.split:                                      ; preds = %bb.ab
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.fold.split, %bb.ab, %bb.h
  %.028 = phi i32 [ %i.r, %bb.h ], [ 0, %bb.ab ], [ -3, %bb.ae ], [ %i.ai, %bb.af ], [ -3, %.fold.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

declare i32 @zng_inflateInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

declare i32 @zng_inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

declare i32 @zng_inflateEnd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_uncompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !func_sanitize !29 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !13
  %i.b = call i32 @zng_uncompress2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable }
attributes #3 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nomerge nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !27}
!15 = !{i32 -1056584962, i32 1526326350}
!16 = !{}
!17 = !{!"branch_weights", i32 1048575, i32 1}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"p1 _ZTS14internal_state", !18, i64 0}
!21 = !{!"zng_stream_s", !19, i64 0, !9, i64 8, !12, i64 16, !19, i64 24, !9, i64 32, !12, i64 40, !19, i64 48, !20, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !9, i64 88, !9, i64 92, !12, i64 96}
!22 = !{!21, !19, i64 0}
!23 = !{!21, !9, i64 8}
!24 = !{!21, !19, i64 24}
!25 = !{!21, !9, i64 32}
!26 = !{!"branch_weights", i32 1, i32 1048575}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!21, !12, i64 40}
!29 = !{i32 -1056584962, i32 -2084044688}
end_hunk_0
