Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/bit_util?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN5arrow8bit_utilL17kPrecedingBitmaskE = internal unnamed_addr constant [8 x i8] c"\00\01\03\07\0F\1F?\7F", align 1
@_ZN5arrow8bit_utilL16kTrailingBitmaskE = internal unnamed_addr constant [8 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %2, %1                       ; 2 uses
  %i.c = sext i1 %3 to i8
  %i.d = sdiv i64 %1, 8                           ; 4 uses
  %i.e = sdiv i64 %i.b, 8                         ; 3 uses
  %i.f = srem i64 %1, 8
  %4 = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.f
  %5 = load i8, ptr %4, align 1, !tbaa !8         ; 3 uses
  %i.g = srem i64 %i.b, 8                         ; 3 uses
  %i.h = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL16kTrailingBitmaskE, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8     ; 2 uses
  %i.j = icmp eq i64 %i.e, %i.d
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.g, 0
  %i.l = select i1 %i.k, i8 0, i8 %i.i
  %i.m = or i8 %i.l, %5
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.d ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = and i8 %i.o, %5
  %6 = xor i8 %5, -1
  %i.q = select i1 %3, i8 %6, i8 0
  %i.r = or i8 %i.p, %i.q
  store i8 %i.r, ptr %i.n, align 1, !tbaa !8
  %reass.sub = sub nsw i64 %i.e, %i.d             ; 2 uses
  %i.s = icmp sgt i64 %reass.sub, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.u = add nsw i64 %reass.sub, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 %i.c, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = icmp eq i64 %i.g, 0
  br i1 %i.v, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c
  %.sink = phi i64 [ %i.d, %bb.c ], [ %i.e, %bb.f ]
  %.sink51 = phi i8 [ %i.m, %bb.c ], [ %i.i, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.sink ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = and i8 %i.x, %.sink51
  %i.z = xor i8 %.sink51, -1
  %i.aa = select i1 %3, i8 %i.z, i8 0
  %i.ab = or i8 %i.y, %i.aa
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8bit_util9SetBitmapEPhll(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN5arrow8bit_util13SetBitmapImplILb1EEEvPhll.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN5arrow8bit_util7RoundUpEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i64 %1, -1
  %i.d = sdiv i64 %i.c, 8
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add i64 %i.e, 8
  br label %_ZN5arrow8bit_util7RoundUpEll.exit.i

_ZN5arrow8bit_util7RoundUpEll.exit.i:             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.h = sub nsw i64 %i.g, %1                     ; 2 uses
  %sext.i = shl i64 %i.h, 32                      ; 2 uses
  %i.i = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.j = icmp slt i64 %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5arrow8bit_util7RoundUpEll.exit.i
  %sext36.i = sub i64 34359738368, %sext.i
  %i.k = ashr exact i64 %sext36.i, 32
  %i.l = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.k ; 2 uses
  %3 = load i8, ptr %i.l, align 1, !tbaa !8
  %i.m = getelementptr i8, ptr %i.l, i64 %2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = xor i8 %i.n, %3
  %i.p = sdiv i64 %1, 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = or i8 %i.r, %i.o
  store i8 %i.s, ptr %i.q, align 1, !tbaa !8
  br label %_ZN5arrow8bit_util13SetBitmapImplILb1EEEvPhll.exit

bb.e:                                             ; preds = %_ZN5arrow8bit_util7RoundUpEll.exit.i
  %i.t = trunc i64 %i.h to i32
  %i.u = sub nsw i32 8, %i.t                      ; 2 uses
  %i.v = sdiv i64 %1, 8
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = icmp ult i32 %i.u, 8
  %.neg.i = sext i1 %i.y to i32
  %i.z = and i32 %i.u, 7
  %.neg37.i = shl nsw i32 %.neg.i, %i.z
  %.neg38.i = trunc nsw i32 %.neg37.i to i8
  %i.aa = or i8 %i.x, %.neg38.i
  store i8 %i.aa, ptr %i.w, align 1, !tbaa !8
  %i.ab = add nsw i64 %i.i, %1                    ; 2 uses
  %i.ac = sub nsw i64 %2, %i.i                    ; 3 uses
  %i.ad = sdiv i64 %i.ab, 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = lshr i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 -1, i64 %i.af, i1 false)
  %i.ag = and i64 %i.ac, 7                        ; 2 uses
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %_ZN5arrow8bit_util13SetBitmapImplILb1EEEvPhll.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = and i64 %i.ac, -8
  %i.ai = add nsw i64 %i.ah, %i.ab
  %i.aj = trunc nuw nsw i64 %i.ag to i8
  %i.ak = sdiv i64 %i.ai, 8
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %notmask.i = shl nsw i8 -1, %i.aj
  %i.an = xor i8 %notmask.i, -1
  %i.ao = or i8 %i.am, %i.an
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !8
  br label %_ZN5arrow8bit_util13SetBitmapImplILb1EEEvPhll.exit

_ZN5arrow8bit_util13SetBitmapImplILb1EEEvPhll.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8bit_util11ClearBitmapEPhll(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN5arrow8bit_util7RoundUpEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i64 %1, -1
  %i.d = sdiv i64 %i.c, 8
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add i64 %i.e, 8
  br label %_ZN5arrow8bit_util7RoundUpEll.exit.i

_ZN5arrow8bit_util7RoundUpEll.exit.i:             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.h = sub nsw i64 %i.g, %1                     ; 2 uses
  %sext.i = shl i64 %i.h, 32                      ; 2 uses
  %i.i = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.j = icmp slt i64 %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5arrow8bit_util7RoundUpEll.exit.i
  %sext36.i = sub i64 34359738368, %sext.i
  %i.k = ashr exact i64 %sext36.i, 32
  %i.l = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.k ; 2 uses
  %3 = load i8, ptr %i.l, align 1, !tbaa !8
  %i.m = getelementptr i8, ptr %i.l, i64 %2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = sdiv i64 %1, 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %4 = xor i8 %3, %i.n
  %i.r = xor i8 %4, -1
  %i.s = and i8 %i.q, %i.r
  store i8 %i.s, ptr %i.p, align 1, !tbaa !8
  br label %_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit

bb.e:                                             ; preds = %_ZN5arrow8bit_util7RoundUpEll.exit.i
  %i.t = trunc i64 %i.h to i32
  %i.u = sub nsw i32 8, %i.t                      ; 2 uses
  %i.v = sdiv i64 %1, 8
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = icmp ult i32 %i.u, 8
  %i.z = zext i1 %i.y to i32
  %i.aa = and i32 %i.u, 7
  %i.ab = shl nuw nsw i32 %i.z, %i.aa
  %i.ac = trunc nuw i32 %i.ab to i8
  %i.ad = add i8 %i.ac, -1
  %i.ae = and i8 %i.x, %i.ad
  store i8 %i.ae, ptr %i.w, align 1, !tbaa !8
  %i.af = add nsw i64 %i.i, %1                    ; 2 uses
  %i.ag = sub nsw i64 %2, %i.i                    ; 3 uses
  %i.ah = sdiv i64 %i.af, 8
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = lshr i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 0, i64 %i.aj, i1 false)
  %i.ak = and i64 %i.ag, 7                        ; 2 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = and i64 %i.ag, -8
  %i.am = add nsw i64 %i.al, %i.af
  %i.an = trunc nuw nsw i64 %i.ak to i8
  %i.ao = sdiv i64 %i.am, 8
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.neg.i = shl nsw i8 -1, %i.an
  %i.ar = and i8 %i.aq, %.neg.i
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !8
  br label %_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit

_ZN5arrow8bit_util13SetBitmapImplILb0EEEvPhll.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
