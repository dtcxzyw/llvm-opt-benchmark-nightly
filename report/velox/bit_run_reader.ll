inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN5arrow8bit_utilL8kBitmaskE = internal unnamed_addr constant [8 x i8] c"\01\02\04\08\10 @\80", align 1

@_ZN5arrow8internal12BitRunReaderC1EPKhll = unnamed_addr alias void (ptr, ptr, i64, i64), ptr @_ZN5arrow8internal12BitRunReaderC2EPKhll

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow8internal12BitRunReaderC2EPKhll(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(33) initializes((0, 32)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i64 %2, 8
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = srem i64 %2, 8                           ; 2 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = add nsw i64 %i.d, %3                     ; 7 uses
  store i64 %i.f, ptr %i.e, align 8, !tbaa !14
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i64 %2, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = trunc i64 %2 to i8
  %i.m = and i8 %i.l, 7
  %i.n = lshr i8 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = and i8 %i.n, 1
  %i.q = xor i8 %i.p, 1                           ; 2 uses
  store i8 %i.q, ptr %i.o, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !16
  %i.s = icmp sgt i64 %i.f, 63
  br i1 %i.s, label %_ZN5arrow8internal12BitRunReader8LoadWordEl.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.t = ashr i64 %i.f, 3
  %i.u = and i64 %i.f, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i64
  %i.x = add nsw i64 %i.t, %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 1 %i.b, i64 %i.x, i1 false)
  %i.y = add nsw i64 %i.f, -1                     ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = trunc i64 %i.y to i8
  %i.ad = and i8 %i.ac, 7
  %i.ae = lshr i8 %i.ab, %i.ad
  %i.af = or i8 %i.ae, -2
  %.neg.i = add nsw i8 %i.af, 1
  %i.ag = sdiv i64 %i.f, 8
  %i.ah = getelementptr inbounds i8, ptr %i.r, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17  ; 2 uses
  %i.aj = xor i8 %.neg.i, %i.ai
  %i.ak = srem i64 %i.f, 8
  %i.al = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = and i8 %i.aj, %i.am
  %i.ao = xor i8 %i.an, %i.ai
  store i8 %i.ao, ptr %i.ah, align 1, !tbaa !17
  %.pre = load i8, ptr %i.o, align 8, !tbaa !18, !range !20
  br label %_ZN5arrow8internal12BitRunReader8LoadWordEl.exit

_ZN5arrow8internal12BitRunReader8LoadWordEl.exit: ; preds = %bb.c, %bb.d
  %.pre9.in = phi ptr [ %i.r, %bb.d ], [ %i.b, %bb.c ]
  %i.ap = phi i8 [ %.pre, %bb.d ], [ %i.q, %bb.c ]
  %.pre9 = load i64, ptr %.pre9.in, align 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %spec.select = xor i64 %.pre9, %i.ar
  %i.as = load i64, ptr %i.c, align 8, !tbaa !13
  %notmask.i = shl nsw i64 -1, %i.as
  %i.at = and i64 %notmask.i, %spec.select
  store i64 %i.at, ptr %i.r, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow8internal12BitRunReader8LoadWordEl.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN5arrow8internal12BitRunReaderE", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !12, i64 32}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!8, !11, i64 8}
!14 = !{!8, !11, i64 16}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!8, !11, i64 24}
!17 = !{!5, !5, i64 0}
!18 = !{!8, !12, i64 32}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{i8 0, i8 2}
end_hunk_0
