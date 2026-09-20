Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/zutil?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"stream end\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"file error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"buffer error\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"incompatible version\00", align 1
@zng_z_errmsg = constant [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.2], align 16
@zng_vstring = local_unnamed_addr constant [15 x i8] c" zlib-ng 2.3.3\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"2.3.3\00", align 1
@.src = private unnamed_addr constant [46 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/zutil.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 12, [16 x i8] c"'unsigned long'\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 100, i32 12 } }
@2 = private unnamed_addr constant { i16, i16, [34 x i8] } { i16 0, i16 12, [34 x i8] c"'uintptr_t' (aka 'unsigned long')\00" }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 128, i32 42 }, ptr @2 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 128, i32 24 }, ptr @2 }
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 129, i32 33 }, ptr @2 }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 131, i32 20 }, ptr @2 }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 134, i32 31 }, ptr @0 }
@.src.10 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@8 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 135, i32 12 }, { ptr, i32, i32 } { ptr @.src.10, i32 44, i32 28 }, i32 1 }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 146, i32 50 }, ptr @0 }
@10 = private unnamed_addr constant { i16, i16, [9 x i8] } { i16 -1, i16 0, [9 x i8] c"'void *'\00" }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 147, i32 22 }, ptr @10, i8 3, i8 0 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zlibng_version() local_unnamed_addr #0 !func_sanitize !15 {
bb.a:
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @zng_zlibCompileFlags() local_unnamed_addr #0 !func_sanitize !16 {
bb.a:
  ret i64 169
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @zng_zError(i32 noundef %0) local_unnamed_addr #3 !func_sanitize !17 {
bb.a:
  %i.a = add i32 %0, -3
  %or.cond = icmp ult i32 %i.a, -9
  %i.b = sub nsw i32 2, %0
  %narrow = select i1 %or.cond, i32 9, i32 %i.b
  %i.c = zext i32 %narrow to i64                  ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = add i64 %i.d, ptrtoint (ptr @zng_z_errmsg to i64), !nosanitize !12 ; 2 uses
  %.not = icmp ult i64 %i.e, ptrtoint (ptr @zng_z_errmsg to i64), !nosanitize !12
  br i1 %.not, label %bb.b, label %bb.c, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @1, i64 ptrtoint (ptr @zng_z_errmsg to i64), i64 %i.e) #8, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @zng_z_errmsg, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  ret ptr %i.g
}

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @zng_zcalloc(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 !func_sanitize !20 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = zext i32 %2 to i64
  %i.c = mul nuw i64 %i.b, %i.a
  %i.d = call noalias noundef ptr @malloc(i64 noundef range(i64 0, -8589934590) %i.c) #9
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @zng_zcfree(ptr nofree noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 !func_sanitize !21 {
bb.a:
  call void @free(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @zng_alloc_aligned(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !func_sanitize !22 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 5 uses
  %i.b = add i32 %0, 8
  %i.c = add i32 %i.b, %1
  %i.d = zext i32 %i.c to i64
  %i.e = call noalias noundef ptr @malloc(i64 noundef range(i64 0, -8589934590) %i.d) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64                 ; 5 uses
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %bb.c, label %bb.d, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_divrem_overflow(ptr nonnull @3, i64 %i.f, i64 0) #8, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = urem i64 %i.f, %i.a                      ; 2 uses
  %i.h = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.a, i64 %i.g), !nosanitize !12 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 0, !nosanitize !12
  %i.j = extractvalue { i64, i1 } %i.h, 1, !nosanitize !12
  br i1 %i.j, label %2, label %3, !prof !13, !nosanitize !12

2:                                                ; preds = %bb.d
  call void @__ubsan_handle_sub_overflow(ptr nonnull @4, i64 %i.a, i64 %i.g) #10, !nosanitize !12
  br label %3, !nosanitize !12

3:                                                ; preds = %2, %bb.d
  %4 = and i64 %i.i, 4294967295                   ; 3 uses
  %5 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 %4), !nosanitize !12 ; 2 uses
  %6 = extractvalue { i64, i1 } %5, 0, !nosanitize !12 ; 3 uses
  %7 = extractvalue { i64, i1 } %5, 1, !nosanitize !12
  br i1 %7, label %bb.e, label %bb.f, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %3
  call void @__ubsan_handle_add_overflow(ptr nonnull @5, i64 %i.f, i64 %4) #10, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %3
  %i.k = icmp samesign ult i64 %4, 8
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %i.a), !nosanitize !12 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0, !nosanitize !12 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.l, 1, !nosanitize !12
  br i1 %i.n, label %bb.h, label %bb.i, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_add_overflow(ptr nonnull @6, i64 %6, i64 %i.a) #10, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.0 = phi i64 [ %6, %bb.f ], [ %i.m, %bb.h ], [ %i.m, %bb.g ] ; 3 uses
  %i.o = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.0, i64 8), !nosanitize !12 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0, !nosanitize !12 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.o, 1, !nosanitize !12
  br i1 %i.q, label %bb.j, label %bb.k, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_sub_overflow(ptr nonnull @7, i64 %.0, i64 8) #10, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = inttoptr i64 %i.p to ptr
  %.not16 = icmp eq i64 %i.p, 0
  br i1 %.not16, label %bb.l, label %bb.m, !prof !13, !nosanitize !12

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @8) #8, !nosanitize !12
  br label %bb.m, !nosanitize !12

bb.m:                                             ; preds = %bb.k, %bb.l
  store i64 %i.f, ptr %i.r, align 1
  %i.s = inttoptr i64 %.0 to ptr
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.012 = phi ptr [ %i.s, %bb.m ], [ null, %bb.a ]
  ret ptr %.012
}

; Function Attrs: uwtable
declare void @__ubsan_handle_divrem_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zng_free_aligned(ptr noundef %0) local_unnamed_addr #3 !func_sanitize !23 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.a, i64 8), !nosanitize !12 ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 0, !nosanitize !12 ; 4 uses
  %i.d = extractvalue { i64, i1 } %i.b, 1, !nosanitize !12
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_sub_overflow(ptr nonnull @9, i64 %i.a, i64 8) #10, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = inttoptr i64 %i.c to ptr
  %i.f = icmp ne i64 %i.c, 0
  %i.g = and i64 %i.c, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  %i.i = and i1 %i.h, %i.f, !nosanitize !12
  br i1 %i.i, label %bb.f, label %bb.e, !prof !24, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @11, i64 %i.c) #8, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !25
  call void @free(ptr noundef %i.j) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { uwtable }
attributes #3 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nomerge nounwind }

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
!14 = !{!"any pointer", !8, i64 0}
!15 = !{i32 -1056584962, i32 2019579504}
!16 = !{i32 -1056584962, i32 -1856772511}
!17 = !{i32 -1056584962, i32 259509603}
!18 = !{!"p1 omnipotent char", !14, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i32 -1056584962, i32 40217930}
!21 = !{i32 -1056584962, i32 -1886282236}
!22 = !{i32 -1056584962, i32 1395432674}
!23 = !{i32 -1056584962, i32 1413295203}
!24 = !{!"branch_weights", i32 1048575, i32 1}
!25 = !{!14, !14, i64 0}
end_hunk_0
