Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/cts?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/cipher_extra/cts.c\00", align 1

; Function Attrs: nounwind uwtable
define range(i64 17, 1) i64 @CRYPTO_cts128_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 31) #4
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.not34 = icmp eq ptr %1, null
  br i1 %.not34, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 32) #4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %.not35 = icmp eq ptr %3, null
  br i1 %.not35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 33) #4
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %.not36 = icmp eq ptr %4, null
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 34) #4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp ult i64 %2, 17
  br i1 %i.b, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.c = and i64 %2, 15                           ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %spec.store.select = select i1 %i.d, i64 16, i64 %i.c ; 5 uses
  %i.e = sub nuw i64 %2, %spec.store.select       ; 3 uses
  tail call void %5(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.e, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 2 uses
  %i.h = sub nuw nsw i64 16, %spec.store.select
  %i.i = getelementptr i8, ptr %i.a, i64 %spec.store.select
  call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.h, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.f, i64 range(i64 0, 33) %spec.store.select, i1 false)
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.j, i64 range(i64 0, 33) %spec.store.select, i1 false)
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, i64 noundef 16, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 16) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i64 [ %2, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.1 = phi i64 [ %.0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.1
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i64 17, 1) i64 @CRYPTO_cts128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 71) #4
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not39 = icmp eq ptr %1, null
  br i1 %.not39, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 72) #4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 73) #4
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %.not41 = icmp eq ptr %4, null
  br i1 %.not41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 74) #4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp ult i64 %2, 17
  br i1 %i.b, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.c = and i64 %2, 15                           ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %spec.store.select = select i1 %i.d, i64 16, i64 %i.c ; 2 uses
  %i.e = add nuw nsw i64 %spec.store.select, 16   ; 3 uses
  %.not42 = icmp eq i64 %2, %i.e
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.f = sub i64 %2, %i.e                         ; 3 uses
  tail call void %5(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.032 = phi ptr [ %i.h, %bb.k ], [ %1, %bb.j ]
  %.031 = phi ptr [ %i.g, %bb.k ], [ %0, %bb.j ]  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void %5(ptr noundef nonnull %.031, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull %3, ptr noundef nonnull %i.i, i32 noundef 0) #4
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.j, i64 range(i64 0, 33) %spec.store.select, i1 false)
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.032, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 range(i64 0, 33) %i.e, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.0 = phi i64 [ %2, %bb.l ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.f, %bb.d, %bb.b
  %.1 = phi i64 [ %.0, %bb.m ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
end_hunk_0
