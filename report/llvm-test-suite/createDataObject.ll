begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@createDataObject.name = internal global [17 x i8] c"createDataObject\00", align 16
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failure\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid object type to create\00", align 1
@switch.table.createDataObject = private unnamed_addr constant [3 x i16] [i16 144, i16 200, i16 408], align 8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @createDataObject(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #5 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @errorMessage(ptr noundef nonnull @.str, i8 noundef signext 0) #6
  tail call void @errorMessage(ptr noundef nonnull @createDataObject.name, i8 noundef signext 1) #6
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 3
  br i1 %i.c, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @errorMessage(ptr noundef nonnull @.str.1, i8 noundef signext 0) #6
  tail call void @errorMessage(ptr noundef nonnull @createDataObject.name, i8 noundef signext 1) #6
  tail call void @free(ptr noundef nonnull %i.a) #6
  br label %.loopexit

switch.lookup:                                    ; preds = %bb.c
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.createDataObject, i64 %i.d
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64      ; 2 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !8
  %i.e = tail call noalias ptr @malloc(i64 noundef %switch.ext) #5 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.e, label %.preheader26.preheader

.preheader26.preheader:                           ; preds = %switch.lookup
  store float f0xFF7FFFFF, ptr %i.e, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float f0xFF7FFFFF, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store float f0xFF7FFFFF, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store float f0xFF7FFFFF, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store float f0xFF7FFFFF, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store float f0xFF7FFFFF, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store float f0xFF7FFFFF, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store float f0xFF7FFFFF, ptr %i.n, align 8, !tbaa !12
  %scevgep = getelementptr i8, ptr %i.e, i64 64
  %i.o = add nsw i64 %switch.ext, -64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.o, i1 false), !tbaa !12
  br label %.loopexit

bb.e:                                             ; preds = %switch.lookup
  tail call void @errorMessage(ptr noundef nonnull @.str, i8 noundef signext 0) #6
  tail call void @errorMessage(ptr noundef nonnull @createDataObject.name, i8 noundef signext 1) #6
  tail call void @free(ptr noundef nonnull %i.a) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader26.preheader, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.d ], [ %i.a, %.preheader26.preheader ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare void @errorMessage(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"DataObject", !5, i64 0, !10, i64 8}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!6, !6, i64 0}
end_hunk_0
