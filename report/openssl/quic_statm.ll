Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_statm?download=true
inline.NumInlined: 32
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_statm_update_rtt(ptr nofree noundef captures(none) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.010.0.copyload11 = load i64, ptr %i.a, align 8, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0 = phi i64 [ %.sroa.010.0.copyload11, %bb.b ], [ %2, %bb.c ] ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %.not40 = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not40, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.010.0, ptr %i.d, align 8, !tbaa !9
  store i64 %.sroa.010.0, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = lshr i64 %.sroa.010.0, 1
  store i64 %i.f, ptr %i.e, align 8, !tbaa !9
  store i8 1, ptr %i.b, align 8, !tbaa !12
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = icmp ult i64 %.sroa.010.0, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %.sroa.010.0, ptr %i.d, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = phi i64 [ %.sroa.010.0, %bb.g ], [ %i.g, %bb.f ]
  %.sroa.03.0.i = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 %1)
  %.not45 = icmp ult i64 %.sroa.010.0, %.sroa.03.0.i
  %..i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.010.0, i64 %1)
  %.sroa.021.0 = select i1 %.not45, i64 %.sroa.010.0, i64 %..i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 range(i64 3, 8) 3) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %..i9.i = sub nsw i64 %i.o, %.sroa.021.0
  %.sroa.06.0.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %..i9.i, i1 true)
  %i.p = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 %.sroa.06.0.i)
  %i.q = lshr i64 %i.p, 2
  %i.r = select i1 %i.m, i64 4611686018427387903, i64 %i.q
  store i64 %i.r, ptr %i.j, align 8, !tbaa !9
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 range(i64 3, 8) 7) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 %.sroa.021.0)
  %i.w = lshr i64 %i.v, 3
  %i.x = select i1 %i.t, i64 2305843009213693951, i64 %i.w
  store i64 %i.x, ptr %0, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @ossl_statm_init(ptr nofree noundef writeonly captures(none) initializes((0, 33)) %0) local_unnamed_addr #1 {
bb.a:
  store i64 333000000, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 166500000, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !12
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ossl_statm_destroy(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_statm_get_rtt_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  store i64 %i.c, ptr %i.a, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  store i64 %i.f, ptr %i.d, align 8, !tbaa !9
  %i.g = load i64, ptr %0, align 8, !tbaa !9
  store i64 %i.g, ptr %1, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  store i64 %i.j, ptr %i.h, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"", !8, i64 0}
!11 = !{!"ossl_statm_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!12 = !{!11, !4, i64 32}
end_hunk_0
