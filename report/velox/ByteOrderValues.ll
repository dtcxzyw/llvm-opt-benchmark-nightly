inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4geos2io15ByteOrderValues6getIntEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4geos2io15ByteOrderValues11getUnsignedEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.d = lshr <4 x i32> %i.c, <i32 24, i32 16, i32 8, i32 0>
  %i.e = trunc <4 x i32> %i.d to <4 x i8>
  %i.f = bitcast <4 x i8> %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ %i.f, %bb.b ], [ %0, %bb.a ]
  store i32 %storemerge, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues11putUnsignedEjPhi(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.d = lshr <4 x i32> %i.c, <i32 24, i32 16, i32 8, i32 0>
  %i.e = trunc <4 x i32> %i.d to <4 x i8>
  %i.f = bitcast <4 x i8> %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ %i.f, %bb.b ], [ %0, %bb.a ]
  store i32 %storemerge, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4geos2io15ByteOrderValues7getLongEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load <8 x i8>, ptr %0, align 1, !tbaa !7
  %i.c = zext <8 x i8> %i.b to <8 x i64>
  %i.d = shl nuw <8 x i64> %i.c, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %i.e = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues7putLongElPhi(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %0, 56
  %i.c = trunc nuw i64 %i.b to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !7
  %i.d = lshr i64 %0, 48
  %i.e = trunc i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !7
  %i.g = lshr i64 %0, 40
  %i.h = trunc i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !7
  %i.j = lshr i64 %0, 32
  %i.k = trunc i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !7
  %i.m = lshr i64 %0, 24
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.n, ptr %i.o, align 1, !tbaa !7
  %i.p = lshr i64 %0, 16
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !7
  %i.s = lshr i64 %0, 8
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.t, ptr %i.u, align 1, !tbaa !7
  %i.v = trunc i64 %0 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %0, ptr %1, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos2io15ByteOrderValues9getDoubleEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load <8 x i8>, ptr %0, align 1, !tbaa !7
  %i.c = zext <8 x i8> %i.b to <8 x i64>
  %i.d = shl nuw <8 x i64> %i.c, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %i.e = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.d)
  br label %_ZN4geos2io15ByteOrderValues7getLongEPKhi.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 1
  br label %_ZN4geos2io15ByteOrderValues7getLongEPKhi.exit

_ZN4geos2io15ByteOrderValues7getLongEPKhi.exit:   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = bitcast i64 %.0.i to double
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast double %0 to i64                 ; 8 uses
  %i.c = lshr i64 %i.b, 56
  %i.d = trunc nuw i64 %i.c to i8
  store i8 %i.d, ptr %1, align 1, !tbaa !7
  %i.e = lshr i64 %i.b, 48
  %i.f = trunc i64 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !7
  %i.h = lshr i64 %i.b, 40
  %i.i = trunc i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !7
  %i.k = lshr i64 %i.b, 32
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !7
  %i.n = lshr i64 %i.b, 24
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.o, ptr %i.p, align 1, !tbaa !7
  %i.q = lshr i64 %i.b, 16
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.r, ptr %i.s, align 1, !tbaa !7
  %i.t = lshr i64 %i.b, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.u, ptr %i.v, align 1, !tbaa !7
  %i.w = trunc i64 %i.b to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.w, ptr %i.x, align 1, !tbaa !7
  br label %_ZN4geos2io15ByteOrderValues7putLongElPhi.exit

bb.c:                                             ; preds = %bb.a
  store double %0, ptr %1, align 1
  br label %_ZN4geos2io15ByteOrderValues7putLongElPhi.exit

_ZN4geos2io15ByteOrderValues7putLongElPhi.exit:   ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
end_hunk_0
