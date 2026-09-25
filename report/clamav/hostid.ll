Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/hostid?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@hostid = global [37 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [37 x i8] c"5b585e8f-3be5-11e3-bf0b-18037319526c\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"HostID is valid: %s\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @is_valid_hostid() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @hostid) #6
  %.not = icmp eq i64 %i.a, 36
  br i1 %.not, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.a
  %0 = load <36 x i8>, ptr @hostid, align 16, !tbaa !8
  %1 = icmp eq <36 x i8> %0, splat (i8 45)        ; 4 uses
  %i.b = bitcast <36 x i1> %1 to i36
  %i.c = tail call range(i36 0, 37) i36 @llvm.ctpop.i36(i36 %i.b)
  %.not16 = icmp eq i36 %i.c, 4
  br i1 %.not16, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @hostid, i64 8), align 8, !tbaa !8
  %i.e = icmp eq i8 %i.d, 45
  %i.f = extractelement <36 x i1> %1, i64 13
  %or.cond.not22 = and i1 %i.e, %i.f
  %i.g = extractelement <36 x i1> %1, i64 18
  %or.cond5.not19 = and i1 %or.cond.not22, %i.g
  %i.h = extractelement <36 x i1> %1, i64 23
  %or.cond8.not = and i1 %or.cond5.not19, %i.h
  %. = zext i1 %or.cond8.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.preheader, %bb.a
  %.015 = phi i32 [ 0, %.preheader.preheader ], [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.015
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias ptr @get_hostid(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @hostid, align 16
  %i.b = xor i32 %i.a, 1701736302
  %i.c = load i8, ptr getelementptr (i8, ptr @hostid, i64 4), align 4
  %i.d = zext i8 %i.c to i32
  %i.e = or i32 %i.b, %i.d
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @is_valid_hostid()
  %.not1 = icmp eq i32 %i.h, 0
  br i1 %.not1, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @hostid) #7 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %hostid.sink = phi ptr [ @hostid, %bb.c ], [ @.str.1, %bb.b ]
  %i.j = tail call noalias ptr @strdup(ptr noundef nonnull %hostid.sink) #7
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @logg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i36 @llvm.ctpop.i36(i36) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!8 = !{!4, !4, i64 0}
end_hunk_0
