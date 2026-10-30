Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/unicode_fold2_key?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@onigenc_unicode_fold2_key.wordlist = internal unnamed_addr constant [59 x i16] [i16 101, i16 253, i16 76, i16 29, i16 24, i16 239, i16 96, i16 71, i16 92, i16 67, i16 4, i16 62, i16 8, i16 58, i16 234, i16 109, i16 164, i16 88, i16 84, i16 80, i16 214, i16 0, i16 54, i16 261, i16 50, i16 105, i16 121, i16 125, i16 257, i16 42, i16 38, i16 249, i16 46, i16 117, i16 12, i16 113, i16 244, i16 229, i16 224, i16 219, i16 209, i16 16, i16 204, i16 199, i16 194, i16 189, i16 184, i16 179, i16 174, i16 169, i16 20, i16 34, i16 159, i16 154, i16 149, i16 144, i16 139, i16 134, i16 129], align 16
@OnigUnicodeFolds2 = external global [0 x i32], align 4
@hash.asso_values = internal unnamed_addr constant [256 x i8] c":987654\102;\0F;\19;;;;;;\03;;;;;;;;;;;;10/.-,+*;;;;;;;;;\15;;;;;;;;;;;;;;;;\02;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(\14'&%\0E\05$\14\07\19\22\1D \10;\1F;;\02\01;\19\0F;\0E;;\1C;\02;;;\0B;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\18;\16;;\0B;;;;;\07;\00;;\10;\01;;\10;;;\0F;;;\06;;;;\00;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;", align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 -32768, 32768) i32 @onigenc_unicode_fold2_key(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @onig_codes_byte_at(ptr noundef %0, i32 noundef 5) #2
  %i.b = and i32 %i.a, 255
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @hash.asso_values, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i32
  %i.g = tail call i32 @onig_codes_byte_at(ptr noundef %0, i32 noundef 2) #2
  %i.h = and i32 %i.g, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @hash.asso_values, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = zext i8 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, %i.f               ; 2 uses
  %i.n = icmp samesign ult i32 %i.m, 59
  br i1 %i.n, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @onigenc_unicode_fold2_key.wordlist, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !14
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @OnigUnicodeFolds2, i64 %i.s
  %i.u = tail call i32 @onig_codes_cmp(ptr noundef %0, ptr noundef nonnull %i.t, i32 noundef 2) #2
  %.not = icmp eq i32 %i.u, 0
  %spec.select = select i1 %.not, i32 %i.r, i32 -1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.a
  %i.v = phi i32 [ %spec.select, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.v
}

declare i32 @onig_codes_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @onig_codes_byte_at(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_0
