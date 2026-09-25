Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/Xz?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XZ_SIG = local_unnamed_addr global [6 x i8] c"\FD7zXZ\00", align 1
@XZ_FOOTER_SIG = local_unnamed_addr global [2 x i8] c"YZ", align 1
@.str = private unnamed_addr constant [9 x i8] c"sha2-256\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i32 1, 0) i32 @Xz_WriteVarInt(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.07 = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.a = trunc i64 %.07 to i8                     ; 2 uses
  %i.b = or i8 %i.a, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.b, ptr %i.c, align 1, !tbaa !8
  %i.d = lshr i64 %.07, 7                         ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = trunc nuw nsw i64 %indvars.iv.next to i32
  store i8 %i.a, ptr %i.e, align 1, !tbaa !8
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Xz_Construct(ptr nofree noundef writeonly captures(none) initializes((0, 2), (8, 32)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %0, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Xz_Free(ptr nofree noundef captures(none) initializes((8, 24)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 65) i32 @XzFlags_GetCheckSize(i16 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = and i16 %0, 15                           ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i16 %i.a to i8
  %.lhs.trunc = add nsw i8 %i.c, -1
  %i.d = udiv i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.d to i32
  %i.e = shl nuw nsw i32 4, %.zext
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define void @XzCheck_Init(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !15
  switch i32 %1, label %bb.e [
    i32 1, label %bb.b
    i32 4, label %bb.c
    i32 10, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = tail call ptr @cl_hash_init(ptr noundef nonnull @.str) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @cl_hash_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @XzCheck_Update(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !15
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.b
    i32 4, label %bb.c
    i32 10, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16
  %i.d = tail call i32 @CrcUpdate(i32 noundef %i.c, ptr noundef %1, i64 noundef %2) #6
  store i32 %i.d, ptr %i.b, align 4, !tbaa !16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = tail call i64 @Crc64Update(i64 noundef %i.f, ptr noundef %1, i64 noundef %2) #6
  store i64 %i.g, ptr %i.e, align 8, !tbaa !17
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @cl_update_hash(ptr noundef nonnull %i.i, ptr noundef %1, i64 noundef %2) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @CrcUpdate(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @Crc64Update(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @cl_update_hash(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @XzCheck_Final(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !15
  switch i32 %i.a, label %.loopexit [
    i32 1, label %bb.b
    i32 4, label %.loopexit.loopexit
    i32 10, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16
  %i.d = xor i32 %i.c, -1
  store i32 %i.d, ptr %1, align 1, !tbaa !8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = xor i64 %i.f, -1
  store i64 %i.g, ptr %1, align 1, !tbaa !8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @cl_finish_hash(ptr noundef nonnull %i.i, ptr noundef %1) #6 ; 0 uses
  store ptr null, ptr %i.h, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.d, %bb.a, %bb.c
  %.015 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %.loopexit.loopexit ]
  ret i32 %.015
}

declare i32 @cl_finish_hash(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!9 = !{!"short", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"long long", !4, i64 0}
!13 = !{!"", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !12, i64 32}
!14 = !{!"", !5, i64 0, !5, i64 4, !12, i64 8, !11, i64 16}
!15 = !{!14, !5, i64 0}
!16 = !{!14, !5, i64 4}
!17 = !{!14, !12, i64 8}
!18 = !{!14, !11, i64 16}
!19 = !{!13, !9, i64 0}
!20 = !{!"", !11, i64 0, !11, i64 8}
!21 = !{!20, !11, i64 8}
!22 = !{!13, !11, i64 24}
end_hunk_0
