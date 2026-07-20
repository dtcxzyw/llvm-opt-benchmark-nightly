inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc64_table = internal global [8 x [256 x i64]] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef i64 @_crc64(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi i64 [ %0, %bb.a ], [ %.2.7, %.lr.ph ]
  %i.a = tail call noundef i64 @llvm.bitreverse.i64(i64 %.017.lcssa)
  ret i64 %i.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01726 = phi i64 [ %.2.7, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01825 = phi i64 [ %i.aq, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01825
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13    ; 3 uses
  %i.d = zext i8 %i.c to i32                      ; 6 uses
  %i.e = and i64 %.01726, -9223372036854775808    ; 2 uses
  %.not20 = trunc i8 %i.c to i1
  %.not21 = icmp eq i64 %i.e, 0
  %i.f = zext i1 %.not21 to i64
  %.019 = select i1 %.not20, i64 %i.f, i64 %i.e
  %i.g = shl i64 %.01726, 1                       ; 2 uses
  %.not22 = icmp eq i64 %.019, 0
  %i.h = xor i64 %i.g, -5939172356000238167
  %.2 = select i1 %.not22, i64 %i.g, i64 %i.h     ; 2 uses
  %i.i = and i64 %.2, -9223372036854775808        ; 2 uses
  %i.j = and i32 %i.d, 2
  %.not20.1 = icmp eq i32 %i.j, 0
  %.not21.1 = icmp eq i64 %i.i, 0
  %i.k = zext i1 %.not21.1 to i64
  %.019.1 = select i1 %.not20.1, i64 %i.i, i64 %i.k
  %i.l = shl i64 %.2, 1                           ; 2 uses
  %.not22.1 = icmp eq i64 %.019.1, 0
  %i.m = xor i64 %i.l, -5939172356000238167
  %.2.1 = select i1 %.not22.1, i64 %i.l, i64 %i.m ; 2 uses
  %i.n = and i64 %.2.1, -9223372036854775808      ; 2 uses
  %i.o = and i32 %i.d, 4
  %.not20.2 = icmp eq i32 %i.o, 0
  %.not21.2 = icmp eq i64 %i.n, 0
  %i.p = zext i1 %.not21.2 to i64
  %.019.2 = select i1 %.not20.2, i64 %i.n, i64 %i.p
  %i.q = shl i64 %.2.1, 1                         ; 2 uses
  %.not22.2 = icmp eq i64 %.019.2, 0
  %i.r = xor i64 %i.q, -5939172356000238167
  %.2.2 = select i1 %.not22.2, i64 %i.q, i64 %i.r ; 2 uses
  %i.s = and i64 %.2.2, -9223372036854775808      ; 2 uses
  %i.t = and i32 %i.d, 8
  %.not20.3 = icmp eq i32 %i.t, 0
  %.not21.3 = icmp eq i64 %i.s, 0
  %i.u = zext i1 %.not21.3 to i64
  %.019.3 = select i1 %.not20.3, i64 %i.s, i64 %i.u
  %i.v = shl i64 %.2.2, 1                         ; 2 uses
  %.not22.3 = icmp eq i64 %.019.3, 0
  %i.w = xor i64 %i.v, -5939172356000238167
  %.2.3 = select i1 %.not22.3, i64 %i.v, i64 %i.w ; 2 uses
  %i.x = and i64 %.2.3, -9223372036854775808      ; 2 uses
  %i.y = and i32 %i.d, 16
  %.not20.4 = icmp eq i32 %i.y, 0
  %.not21.4 = icmp eq i64 %i.x, 0
  %i.z = zext i1 %.not21.4 to i64
  %.019.4 = select i1 %.not20.4, i64 %i.x, i64 %i.z
  %i.aa = shl i64 %.2.3, 1                        ; 2 uses
  %.not22.4 = icmp eq i64 %.019.4, 0
  %i.ab = xor i64 %i.aa, -5939172356000238167
  %.2.4 = select i1 %.not22.4, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ac = and i64 %.2.4, -9223372036854775808     ; 2 uses
  %i.ad = and i32 %i.d, 32
  %.not20.5 = icmp eq i32 %i.ad, 0
  %.not21.5 = icmp eq i64 %i.ac, 0
  %i.ae = zext i1 %.not21.5 to i64
  %.019.5 = select i1 %.not20.5, i64 %i.ac, i64 %i.ae
  %i.af = shl i64 %.2.4, 1                        ; 2 uses
  %.not22.5 = icmp eq i64 %.019.5, 0
  %i.ag = xor i64 %i.af, -5939172356000238167
  %.2.5 = select i1 %.not22.5, i64 %i.af, i64 %i.ag ; 2 uses
  %i.ah = and i64 %.2.5, -9223372036854775808     ; 2 uses
  %i.ai = and i32 %i.d, 64
  %.not20.6 = icmp eq i32 %i.ai, 0
  %.not21.6 = icmp eq i64 %i.ah, 0
  %i.aj = zext i1 %.not21.6 to i64
  %.019.6 = select i1 %.not20.6, i64 %i.ah, i64 %i.aj
  %i.ak = shl i64 %.2.5, 1                        ; 2 uses
  %.not22.6 = icmp eq i64 %.019.6, 0
  %i.al = xor i64 %i.ak, -5939172356000238167
  %.2.6 = select i1 %.not22.6, i64 %i.ak, i64 %i.al ; 2 uses
  %i.am = and i64 %.2.6, -9223372036854775808     ; 2 uses
  %.not21.7 = icmp eq i64 %i.am, 0
  %i.an = zext i1 %.not21.7 to i64
  %.not20.728 = icmp slt i8 %i.c, 0
  %.019.7 = select i1 %.not20.728, i64 %i.an, i64 %i.am
  %i.ao = shl i64 %.2.6, 1                        ; 2 uses
  %.not22.7 = icmp eq i64 %.019.7, 0
  %i.ap = xor i64 %i.ao, -5939172356000238167
  %.2.7 = select i1 %.not22.7, i64 %i.ao, i64 %i.ap ; 2 uses
  %i.aq = add nuw i64 %.01825, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14
}

; Function Attrs: nounwind uwtable
define dso_local void @crc64_init() local_unnamed_addr #1 {
bb.a:
  tail call void @crcspeed64native_init(ptr noundef nonnull @_crc64, ptr noundef nonnull @crc64_table) #4
  ret void
}

declare void @crcspeed64native_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @crc64(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @crcspeed64native(ptr noundef nonnull @crc64_table, i64 noundef %0, ptr noundef %1, i64 noundef %2) #4
  ret i64 %i.a
}

declare i64 @crcspeed64native(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bitreverse.i64(i64) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
