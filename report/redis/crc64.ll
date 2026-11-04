Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/crc64?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc64_table = internal global [8 x [256 x i64]] zeroinitializer, align 16, !guid !13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef i64 @_crc64(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !15 {
bb.a:
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.019.lcssa = phi i64 [ %0, %bb.a ], [ %.2.7, %.lr.ph ]
  %i.a = tail call noundef i64 @llvm.bitreverse.i64(i64 %.019.lcssa)
  ret i64 %i.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01726 = phi i64 [ %i.ar, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.01925 = phi i64 [ %.2.7, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01726
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16    ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 7 uses
  %i.e = and i64 %.01925, -9223372036854775808    ; 2 uses
  %i.f = and i32 %i.d, 1
  %.not20 = icmp eq i32 %i.f, 0
  %.not21 = icmp eq i64 %i.e, 0
  %i.g = zext i1 %.not21 to i64
  %.018 = select i1 %.not20, i64 %i.e, i64 %i.g
  %i.h = shl i64 %.01925, 1                       ; 2 uses
  %.not22 = icmp eq i64 %.018, 0
  %i.i = xor i64 %i.h, -5939172356000238167
  %.2 = select i1 %.not22, i64 %i.h, i64 %i.i     ; 2 uses
  %i.j = and i64 %.2, -9223372036854775808        ; 2 uses
  %i.k = and i32 %i.d, 2
  %.not20.1 = icmp eq i32 %i.k, 0
  %.not21.1 = icmp eq i64 %i.j, 0
  %i.l = zext i1 %.not21.1 to i64
  %.018.1 = select i1 %.not20.1, i64 %i.j, i64 %i.l
  %i.m = shl i64 %.2, 1                           ; 2 uses
  %.not22.1 = icmp eq i64 %.018.1, 0
  %i.n = xor i64 %i.m, -5939172356000238167
  %.2.1 = select i1 %.not22.1, i64 %i.m, i64 %i.n ; 2 uses
  %i.o = and i64 %.2.1, -9223372036854775808      ; 2 uses
  %i.p = and i32 %i.d, 4
  %.not20.2 = icmp eq i32 %i.p, 0
  %.not21.2 = icmp eq i64 %i.o, 0
  %i.q = zext i1 %.not21.2 to i64
  %.018.2 = select i1 %.not20.2, i64 %i.o, i64 %i.q
  %i.r = shl i64 %.2.1, 1                         ; 2 uses
  %.not22.2 = icmp eq i64 %.018.2, 0
  %i.s = xor i64 %i.r, -5939172356000238167
  %.2.2 = select i1 %.not22.2, i64 %i.r, i64 %i.s ; 2 uses
  %i.t = and i64 %.2.2, -9223372036854775808      ; 2 uses
  %i.u = and i32 %i.d, 8
  %.not20.3 = icmp eq i32 %i.u, 0
  %.not21.3 = icmp eq i64 %i.t, 0
  %i.v = zext i1 %.not21.3 to i64
  %.018.3 = select i1 %.not20.3, i64 %i.t, i64 %i.v
  %i.w = shl i64 %.2.2, 1                         ; 2 uses
  %.not22.3 = icmp eq i64 %.018.3, 0
  %i.x = xor i64 %i.w, -5939172356000238167
  %.2.3 = select i1 %.not22.3, i64 %i.w, i64 %i.x ; 2 uses
  %i.y = and i64 %.2.3, -9223372036854775808      ; 2 uses
  %i.z = and i32 %i.d, 16
  %.not20.4 = icmp eq i32 %i.z, 0
  %.not21.4 = icmp eq i64 %i.y, 0
  %i.aa = zext i1 %.not21.4 to i64
  %.018.4 = select i1 %.not20.4, i64 %i.y, i64 %i.aa
  %i.ab = shl i64 %.2.3, 1                        ; 2 uses
  %.not22.4 = icmp eq i64 %.018.4, 0
  %i.ac = xor i64 %i.ab, -5939172356000238167
  %.2.4 = select i1 %.not22.4, i64 %i.ab, i64 %i.ac ; 2 uses
  %i.ad = and i64 %.2.4, -9223372036854775808     ; 2 uses
  %i.ae = and i32 %i.d, 32
  %.not20.5 = icmp eq i32 %i.ae, 0
  %.not21.5 = icmp eq i64 %i.ad, 0
  %i.af = zext i1 %.not21.5 to i64
  %.018.5 = select i1 %.not20.5, i64 %i.ad, i64 %i.af
  %i.ag = shl i64 %.2.4, 1                        ; 2 uses
  %.not22.5 = icmp eq i64 %.018.5, 0
  %i.ah = xor i64 %i.ag, -5939172356000238167
  %.2.5 = select i1 %.not22.5, i64 %i.ag, i64 %i.ah ; 2 uses
  %i.ai = and i64 %.2.5, -9223372036854775808     ; 2 uses
  %i.aj = and i32 %i.d, 64
  %.not20.6 = icmp eq i32 %i.aj, 0
  %.not21.6 = icmp eq i64 %i.ai, 0
  %i.ak = zext i1 %.not21.6 to i64
  %.018.6 = select i1 %.not20.6, i64 %i.ai, i64 %i.ak
  %i.al = shl i64 %.2.5, 1                        ; 2 uses
  %.not22.6 = icmp eq i64 %.018.6, 0
  %i.am = xor i64 %i.al, -5939172356000238167
  %.2.6 = select i1 %.not22.6, i64 %i.al, i64 %i.am ; 2 uses
  %i.an = and i64 %.2.6, -9223372036854775808     ; 2 uses
  %.not21.7 = icmp eq i64 %i.an, 0
  %i.ao = zext i1 %.not21.7 to i64
  %.not20.728 = icmp slt i8 %i.c, 0
  %.018.7 = select i1 %.not20.728, i64 %i.ao, i64 %i.an
  %i.ap = shl i64 %.2.6, 1                        ; 2 uses
  %.not22.7 = icmp eq i64 %.018.7, 0
  %i.aq = xor i64 %i.ap, -5939172356000238167
  %.2.7 = select i1 %.not22.7, i64 %i.ap, i64 %i.aq ; 2 uses
  %i.ar = add nuw i64 %.01726, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14
}

; Function Attrs: nounwind uwtable
define dso_local void @crc64_init() local_unnamed_addr #1 !guid !18 {
bb.a:
  tail call void @crcspeed64native_init(ptr noundef nonnull @_crc64, ptr noundef nonnull @crc64_table) #4
  ret void
}

declare void @crcspeed64native_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @crc64(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !guid !19 {
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
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i64 -5641558525922049497}
!14 = distinct !{!14, !17}
!15 = !{i64 -2443274043609286375}
!16 = !{!10, !10, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i64 2237202181096343936}
!19 = !{i64 8702721365179818308}
end_hunk_0
