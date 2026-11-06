Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bf_ecb?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"blowfish(ptr)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @BF_options() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define void @BF_ecb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %0, align 1, !tbaa !8
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw i32 %i.d, 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.b, align 1, !tbaa !8
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 16
  %i.j = or disjoint i32 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.f, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = or disjoint i32 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.k, align 1, !tbaa !8
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r
  store i32 %i.s, ptr %i.a, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.p, align 1, !tbaa !8
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw i32 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.t, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = or disjoint i32 %i.ab, %i.af
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !9
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef %2) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @BF_decrypt(ptr noundef nonnull %i.a, ptr noundef %2) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.al = load i32, ptr %i.a, align 4, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = call i32 @llvm.bswap.i32(i32 %i.al)
  store i32 %4, ptr %1, align 1, !tbaa !8
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !9
  %5 = call i32 @llvm.bswap.i32(i32 %i.an)
  store i32 %5, ptr %i.am, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @BF_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BF_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
end_hunk_0
