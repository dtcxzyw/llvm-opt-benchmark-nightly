inline.NumInlined: 25
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE = comdat any

@_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE = constant ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE, align 8
@_ZN4absl12lts_2024011613hash_internalL9kHashSaltE = internal constant [5 x i64] [i64 2611923443488327891, i64 1376283091369227076, i64 -6626703657320631856, i64 589684135938649225, i64 4983270260364809079], align 16

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not9 = icmp ult i64 %2, 1024
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i64 [ %i.i, %.lr.ph ], [ %2, %bb.a ]
  %.0711 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0810 = phi i64 [ %i.h, %.lr.ph ], [ %0, %bb.a ]
  %i.a = tail call noundef i32 @_ZN4absl12lts_2024011613hash_internal10CityHash32EPKcm(ptr noundef %.0711, i64 noundef 1024)
  %i.b = zext i32 %i.a to i64
  %i.c = add i64 %.0810, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw i128 %i.d, 11376068507788127593  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64                   ; 2 uses
  %i.i = add i64 %.012, -1024                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0711, i64 1024 ; 2 uses
  %.not = icmp ult i64 %i.i, 1024
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.08.lcssa = phi i64 [ %0, %bb.a ], [ %i.h, %.lr.ph ] ; 2 uses
  %.07.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %.lr.ph ] ; 6 uses
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.i, %.lr.ph ] ; 8 uses
  %i.k = icmp samesign ugt i64 %.0.lcssa, 8
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.l = tail call noundef i32 @_ZN4absl12lts_2024011613hash_internal10CityHash32EPKcm(ptr noundef %.07.lcssa, i64 noundef %.0.lcssa), !inline_history !10
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.c:                                             ; preds = %._crit_edge
  %i.n = icmp samesign ugt i64 %.0.lcssa, 3
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i = load i32, ptr %.07.lcssa, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.07.lcssa, i64 %.0.lcssa
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %.0.copyload.i7.i = load i32, ptr %i.p, align 1
  %i.q = zext i32 %.0.copyload.i7.i to i64
  %i.r = shl nuw nsw i64 %.0.lcssa, 3
  %i.s = add nsw i64 %i.r, -32
  %i.t = shl nuw i64 %i.q, %i.s
  %i.u = zext i32 %.0.copyload.i.i to i64
  %i.v = or i64 %i.t, %i.u
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %.0.lcssa, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi4EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %.07.lcssa, align 1, !tbaa !11
  %i.x = lshr i64 %.0.lcssa, 1                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07.lcssa, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = add nsw i64 %.0.lcssa, -1               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.lcssa, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = zext i8 %i.w to i32
  %i.ae = zext i8 %i.z to i32
  %i.af = shl nuw nsw i64 %i.x, 3
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ae, %i.ag
  %i.ai = or i32 %i.ah, %i.ad
  %i.aj = zext i8 %i.ac to i32
  %.tr.i = trunc nuw nsw i64 %i.aa to i32
  %i.ak = shl nuw nsw i32 %.tr.i, 3
  %i.al = shl nuw nsw i32 %i.aj, %i.ak
  %i.am = or i32 %i.ai, %i.al
  %i.an = zext nneg i32 %i.am to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.0.i = phi i64 [ %i.m, %bb.b ], [ %i.v, %bb.d ], [ %i.an, %bb.f ]
  %i.ao = add i64 %.0.i, %.08.lcssa
  %i.ap = zext i64 %i.ao to i128
  %i.aq = mul nuw i128 %i.ap, 11376068507788127593 ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = xor i128 %i.ar, %i.aq
  %i.at = trunc i128 %i.as to i64
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi4EE.exit

_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi4EE.exit: ; preds = %bb.e, %bb.g
  %.016.i = phi i64 [ %.08.lcssa, %bb.e ], [ %i.at, %bb.g ]
  ret i64 %.016.i
}

declare noundef i32 @_ZN4absl12lts_2024011613hash_internal10CityHash32EPKcm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not9 = icmp ult i64 %2, 1024
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i64 [ %i.h, %.lr.ph ], [ %2, %bb.a ]
  %.0711 = phi ptr [ %i.i, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0810 = phi i64 [ %i.g, %.lr.ph ], [ %0, %bb.a ]
  %i.a = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal12LowLevelHashEPKvmmPKm(ptr noundef %.0711, i64 noundef 1024, i64 noundef ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull @_ZN4absl12lts_2024011613hash_internalL9kHashSaltE)
  %i.b = add i64 %i.a, %.0810
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw i128 %i.c, 11376068507788127593  ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64                   ; 2 uses
  %i.h = add i64 %.012, -1024                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0711, i64 1024 ; 2 uses
  %.not = icmp ult i64 %i.h, 1024
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.08.lcssa = phi i64 [ %0, %bb.a ], [ %i.g, %.lr.ph ]
  %.07.lcssa = phi ptr [ %1, %bb.a ], [ %i.i, %.lr.ph ]
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.h, %.lr.ph ]
  %i.j = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %.08.lcssa, ptr noundef %.07.lcssa, i64 noundef %.0.lcssa)
  ret i64 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal12LowLevelHashEPKvmmPKm(ptr noundef %1, i64 noundef %2, i64 noundef ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull @_ZN4absl12lts_2024011613hash_internalL9kHashSaltE)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 8
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i = load i64, ptr %1, align 1    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.0.copyload.i4.i = load i64, ptr %i.g, align 1
  %i.h = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i.i, i64 %.0.copyload.i.i, i64 11)
  %i.i = add i64 %0, -7070675565921424023         ; 2 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = xor i64 %.0.copyload.i4.i, %i.i
  %i.l = zext i64 %i.k to i128
  %i.m = zext i64 %i.j to i128
  %i.n = mul nuw i128 %i.l, %i.m                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n
  %i.q = trunc i128 %i.p to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i64 %2, 3
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i32 = load i32, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %.0.copyload.i7.i = load i32, ptr %i.t, align 1
  %i.u = zext i32 %.0.copyload.i7.i to i64
  %i.v = shl nuw nsw i64 %2, 3
  %i.w = add nsw i64 %i.v, -32
  %i.x = shl nuw i64 %i.u, %i.w
  %i.y = zext i32 %.0.copyload.i.i32 to i64
  %i.z = or i64 %i.x, %i.y
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %1, align 1, !tbaa !11
  %i.ab = lshr i64 %2, 1                          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = add nsw i64 %2, -1                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.aa to i32
  %i.ai = zext i8 %i.ad to i32
  %i.aj = shl nuw nsw i64 %i.ab, 3
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ai, %i.ak
  %i.am = or i32 %i.al, %i.ah
  %i.an = zext i8 %i.ag to i32
  %.tr.i = trunc nuw nsw i64 %i.ae to i32
  %i.ao = shl nuw nsw i32 %.tr.i, 3
  %i.ap = shl nuw nsw i32 %i.an, %i.ao
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %.030 = phi i64 [ %i.d, %bb.d ], [ %i.z, %bb.h ], [ %i.ar, %bb.j ]
  %i.as = add i64 %.030, %0
  %i.at = zext i64 %i.as to i128
  %i.au = mul nuw i128 %i.at, 11376068507788127593 ; 2 uses
  %i.av = lshr i128 %i.au, 64
  %i.aw = xor i128 %i.av, %i.au
  %i.ax = trunc i128 %i.aw to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.f, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ %i.ax, %bb.k ], [ %i.q, %bb.f ], [ %0, %bb.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal12LowLevelHashEPKvmmPKm(ptr noundef %0, i64 noundef %1, i64 noundef ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull @_ZN4absl12lts_2024011613hash_internalL9kHashSaltE)
  ret i64 %i.a
}

declare noundef i64 @_ZN4absl12lts_2024011613hash_internal12LowLevelHashEPKvmmPKm(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{null}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !9}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
