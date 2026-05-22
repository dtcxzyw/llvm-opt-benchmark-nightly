begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_FromUTF8(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyTokenizer_tok_new() #5 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyTokenizer_translate_newlines(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.a) #5 ; 7 uses
  %i.d = getelementptr i8, ptr %i.a, i64 2832
  store ptr %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 2752
  store i32 2, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr i8, ptr %i.a, i64 2816
  store ptr null, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr i8, ptr %i.a, i64 2824
  store ptr %i.c, ptr %i.h, align 8, !tbaa !19
  %i.i = tail call ptr @_PyTokenizer_new_string(ptr noundef nonnull @.str, i64 noundef 5, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.j = getelementptr i8, ptr %i.a, i64 2760
  store ptr %i.i, ptr %i.j, align 8, !tbaa !20
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.l, align 8, !tbaa !22
  store ptr %i.c, ptr %i.a, align 8, !tbaa !23
  %i.m = getelementptr i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr i8, ptr %i.a, i64 2848
  store ptr @tok_underflow_string, ptr %i.n, align 8, !tbaa !25
  br label %bb.e

.sink.split:                                      ; preds = %bb.c, %bb.b
  tail call void @_PyTokenizer_Free(ptr noundef nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.d
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.a ], [ null, %.sink.split ]
  ret ptr %.0
}

declare ptr @_PyTokenizer_tok_new() local_unnamed_addr #1

declare ptr @_PyTokenizer_translate_newlines(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyTokenizer_Free(ptr noundef) local_unnamed_addr #1

declare ptr @_PyTokenizer_new_string(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @tok_underflow_string(ptr noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 10) #6 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) ; 2 uses
  %strchr = getelementptr inbounds i8, ptr %i.b, i64 %strlen
  %i.e = icmp eq i64 %strlen, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 64
  store i32 11, ptr %i.f, align 8, !tbaa !26
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %strchr, %bb.c ]
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  br i1 %i.i, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr %0, align 8, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.l = getelementptr i8, ptr %0, i64 2776
  store ptr %i.k, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr i8, ptr %0, i64 512        ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !29
  %i.p = getelementptr i8, ptr %0, i64 524
  store i32 0, ptr %i.p, align 4, !tbaa !30
  store ptr %.0, ptr %i.a, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %.016 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.d ]
  ret i32 %.016
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 2832}
!12 = !{!"tok_state", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !8, i64 64, !15, i64 72, !8, i64 80, !8, i64 84, !9, i64 88, !8, i64 488, !8, i64 492, !13, i64 496, !13, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !9, i64 532, !9, i64 732, !9, i64 1532, !16, i64 2336, !16, i64 2344, !9, i64 2352, !8, i64 2752, !8, i64 2756, !13, i64 2760, !8, i64 2768, !13, i64 2776, !13, i64 2784, !16, i64 2792, !16, i64 2800, !16, i64 2808, !13, i64 2816, !13, i64 2824, !13, i64 2832, !8, i64 2840, !8, i64 2844, !14, i64 2848, !8, i64 2856, !9, i64 2864, !8, i64 18464, !8, i64 18468, !8, i64 18472, !8, i64 18476}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!16 = !{!"p1 _ZTS7_object", !14, i64 0}
!17 = !{!12, !8, i64 2752}
!18 = !{!12, !13, i64 2816}
!19 = !{!12, !13, i64 2824}
!20 = !{!12, !13, i64 2760}
!21 = !{!12, !13, i64 16}
!22 = !{!12, !13, i64 8}
!23 = !{!12, !13, i64 0}
!24 = !{!12, !13, i64 48}
!25 = !{!12, !14, i64 2848}
!26 = !{!12, !8, i64 64}
!27 = !{!12, !13, i64 56}
!28 = !{!12, !13, i64 2776}
!29 = !{!12, !8, i64 512}
!30 = !{!12, !8, i64 524}
end_hunk_0
