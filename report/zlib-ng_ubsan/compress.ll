Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/compress?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zng_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i64 }

@.src = private unnamed_addr constant [49 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/compress.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 38, i32 12 }, ptr @0, i8 3, i8 0 }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 39, i32 5 }, ptr @0, i8 3, i8 1 }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 18 }, ptr @0 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 66, i32 5 }, ptr @0, i8 3, i8 1 }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 90, i32 7 }, ptr @0 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 91, i32 7 }, ptr @0 }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 92, i32 9 }, ptr @0 }
@8 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 92, i32 7 }, ptr @0 }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 93, i32 7 }, ptr @0 }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 94, i32 7 }, ptr @0 }

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_compress2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 !func_sanitize !15 {
bb.a:
  %5 = alloca %struct.zng_stream_s, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = icmp ne ptr %1, null, !nosanitize !12
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !12  ; 4 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 3 uses
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1, i64 %i.b) #6, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !18
  br i1 %i.d, label %bb.e, label %bb.d, !prof !16, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @2, i64 %i.b) #6, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 0, ptr %1, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = call i32 @zng_deflateInit(ptr noundef nonnull %5, i32 noundef %4) #6 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !24
  store ptr %2, ptr %5, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !26
  br label %bb.g

thread-pre-split:                                 ; preds = %bb.l
  %.pr = load i32, ptr %i.j, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %i.l = phi i32 [ %.pr, %thread-pre-split ], [ 0, %bb.f ]
  %.019 = phi i64 [ %.120, %thread-pre-split ], [ %3, %bb.f ] ; 3 uses
  %.0 = phi i64 [ %.1, %thread-pre-split ], [ %i.f, %bb.f ] ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = call i64 @llvm.umin.i64(i64 %.0, i64 4294967295) ; 3 uses
  %i.o = trunc nuw i64 %i.n to i32
  store i32 %i.o, ptr %i.j, align 8, !tbaa !24
  %i.p = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.0, i64 %i.n), !nosanitize !12 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 0, !nosanitize !12 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.p, 1, !nosanitize !12
  br i1 %i.r, label %bb.i, label %bb.j, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_sub_overflow(ptr nonnull @3, i64 %.0, i64 %i.n) #7, !nosanitize !12
  br label %bb.j, !nosanitize !12

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.1 = phi i64 [ %.0, %bb.g ], [ %i.q, %bb.i ], [ %i.q, %bb.h ]
  %i.s = load i32, ptr %i.k, align 8, !tbaa !26
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = call i64 @llvm.umin.i64(i64 %.019, i64 4294967295) ; 2 uses
  %i.v = trunc nuw i64 %i.u to i32
  store i32 %i.v, ptr %i.k, align 8, !tbaa !26
  %6 = sub nuw i64 %.019, %i.u
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.120 = phi i64 [ %.019, %bb.j ], [ %6, %bb.k ] ; 2 uses
  %.not23 = icmp eq i64 %.120, 0
  %i.w = select i1 %.not23, i32 4, i32 0
  %i.x = call i32 @zng_deflate(ptr noundef nonnull %5, i32 noundef %i.w) #6 ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %thread-pre-split, label %bb.m, !llvm.loop !14

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28
  br i1 %i.d, label %bb.o, label %bb.n, !prof !16, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @4, i64 %i.b) #6, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %bb.n, %bb.m
  store i64 %i.aa, ptr %1, align 8, !tbaa !18
  %i.ab = call i32 @zng_deflateEnd(ptr noundef nonnull %5) #6 ; 0 uses
  %i.ac = icmp eq i32 %i.x, 1
  %i.ad = select i1 %i.ac, i32 0, i32 %i.x
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.o
  %.018 = phi i32 [ %i.ad, %bb.o ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

declare i32 @zng_deflateInit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

declare i32 @zng_deflate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @zng_deflateEnd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_compress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !func_sanitize !29 {
bb.a:
  %i.a = call i32 @zng_compress2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef -1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zng_compressBound(i64 noundef %0) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %i.b), !nosanitize !12 ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0, !nosanitize !12 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1, !nosanitize !12
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_add_overflow(ptr nonnull @5, i64 %0, i64 %i.b) #7, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp ult i64 %0, 9
  %i.g = zext i1 %i.f to i64                      ; 2 uses
  %i.h = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.d, i64 %i.g), !nosanitize !12 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 0, !nosanitize !12 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.h, 1, !nosanitize !12
  br i1 %i.j, label %bb.d, label %bb.e, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_add_overflow(ptr nonnull @6, i64 %i.d, i64 %i.g) #7, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 7), !nosanitize !12 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0, !nosanitize !12
  %i.m = extractvalue { i64, i1 } %i.k, 1, !nosanitize !12
  br i1 %i.m, label %bb.f, label %bb.g, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_add_overflow(ptr nonnull @7, i64 %0, i64 7) #7, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = lshr i64 %i.l, 3                         ; 2 uses
  %i.o = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.i, i64 %i.n), !nosanitize !12 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0, !nosanitize !12 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.o, 1, !nosanitize !12
  br i1 %i.q, label %bb.h, label %bb.i, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_add_overflow(ptr nonnull @8, i64 %i.i, i64 %i.n) #7, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.r = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.p, i64 3), !nosanitize !12 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 0, !nosanitize !12 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.r, 1, !nosanitize !12
  br i1 %i.t, label %bb.j, label %bb.k, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_add_overflow(ptr nonnull @9, i64 %i.p, i64 3) #7, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.s, i64 6), !nosanitize !12 ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1, !nosanitize !12
  br i1 %i.v, label %bb.l, label %bb.m, !prof !13, !nosanitize !12

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_add_overflow(ptr nonnull @10, i64 %i.s, i64 6) #7, !nosanitize !12
  br label %bb.m, !nosanitize !12

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.w = extractvalue { i64, i1 } %i.u, 0, !nosanitize !12
  ret i64 %i.w
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

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
!12 = !{}
!13 = !{!"branch_weights", i32 1, i32 1048575}
!14 = distinct !{!14, !27}
!15 = !{i32 -1056584962, i32 1812014688}
!16 = !{!"branch_weights", i32 1048575, i32 1}
!17 = !{!"long", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"p1 _ZTS14internal_state", !19, i64 0}
!22 = !{!"zng_stream_s", !20, i64 0, !9, i64 8, !17, i64 16, !20, i64 24, !9, i64 32, !17, i64 40, !20, i64 48, !21, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !9, i64 88, !9, i64 92, !17, i64 96}
!23 = !{!22, !20, i64 24}
!24 = !{!22, !9, i64 32}
!25 = !{!22, !20, i64 0}
!26 = !{!22, !9, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!22, !17, i64 40}
!29 = !{i32 -1056584962, i32 -2084044688}
!30 = !{i32 -1056584962, i32 -1957182722}
end_hunk_0
